	.file	"dbisect.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function sturm
.LCPI0_0:
	.dword	0x4330000000000000              # double 4503599627370496
	.text
	.globl	sturm
	.p2align	5
	.type	sturm,@function
sturm:                                  # @sturm
# %bb.0:                                # %entry
	ori	$a4, $zero, 1
	blt	$a0, $a4, .LBB0_6
# %bb.1:                                # %for.body.preheader
	pcalau12i	$a4, %pc_hi20(.LCPI0_0)
	fld.d	$fa1, $a4, %pc_lo12(.LCPI0_0)
	move	$a4, $zero
	vldi	$vr3, -912
	movgr2fr.d	$fa2, $zero
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_2:                                # %if.else
                                        #   in Loop: Header=BB0_4 Depth=1
	fld.d	$fa3, $a2, 0
	fabs.d	$fa3, $fa3
	fmul.d	$fa3, $fa3, $fa1
.LBB0_3:                                # %if.end
                                        #   in Loop: Header=BB0_4 Depth=1
	fld.d	$fa4, $a1, 0
	fsub.d	$fa4, $fa4, $fa0
	fsub.d	$fa3, $fa4, $fa3
	fcmp.clt.d	$fcc0, $fa3, $fa2
	movcf2gr	$a5, $fcc0
	add.w	$a4, $a4, $a5
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, 8
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	beqz	$a0, .LBB0_7
.LBB0_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	fcmp.ceq.d	$fcc0, $fa3, $fa2
	bcnez	$fcc0, .LBB0_2
# %bb.5:                                # %if.then
                                        #   in Loop: Header=BB0_4 Depth=1
	fld.d	$fa4, $a3, 0
	fdiv.d	$fa3, $fa4, $fa3
	b	.LBB0_3
.LBB0_6:
	move	$a4, $zero
.LBB0_7:                                # %for.end
	move	$a0, $a4
	ret
.Lfunc_end0:
	.size	sturm, .Lfunc_end0-sturm
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function dbisect
.LCPI1_0:
	.dword	0xbff028f5c28f5c29              # double -1.01
.LCPI1_1:
	.dword	0x3ff028f5c28f5c29              # double 1.01
.LCPI1_2:
	.dword	0x3cb0000000000000              # double 2.2204460492503131E-16
.LCPI1_3:
	.dword	0x3cc0000000000000              # double 4.4408920985006262E-16
.LCPI1_4:
	.dword	0x4330000000000000              # double 4503599627370496
	.text
	.globl	dbisect
	.p2align	5
	.type	dbisect,@function
dbisect:                                # @dbisect
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
	fst.d	$fs0, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 88                   # 8-byte Folded Spill
	move	$fp, $a7
	move	$s5, $a5
	move	$s0, $a4
	move	$s1, $a3
	move	$s2, $a2
	move	$s3, $a1
	move	$s4, $a0
	ld.d	$s6, $sp, 176
	st.d	$zero, $a1, 0
	st.d	$zero, $a2, 0
	slli.d	$a0, $a3, 3
	addi.d	$a0, $a0, -8
	fldx.d	$fa2, $s4, $a0
	fldx.d	$fa3, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	fld.d	$fa4, $a0, %pc_lo12(.LCPI1_0)
	pcalau12i	$a0, %pc_hi20(.LCPI1_1)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI1_1)
	fabs.d	$fa3, $fa3
	fmadd.d	$fa5, $fa3, $fa4, $fa2
	ori	$a0, $zero, 2
	fmadd.d	$fa6, $fa3, $fa1, $fa2
	blt	$a3, $a0, .LBB1_3
# %bb.1:                                # %for.body.preheader
	addi.d	$a0, $s1, -2
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 3
	addi.w	$a1, $zero, -8
	.p2align	4, , 16
.LBB1_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	fldx.d	$fa2, $s3, $a0
	add.d	$a2, $s3, $a0
	fld.d	$fa3, $a2, 8
	fabs.d	$fa2, $fa2
	fldx.d	$fa4, $s4, $a0
	fabs.d	$fa3, $fa3
	fadd.d	$fa2, $fa2, $fa3
	fmul.d	$fa2, $fa2, $fa1
	fadd.d	$fa3, $fa4, $fa2
	fcmp.clt.d	$fcc0, $fa6, $fa3
	fsel	$fa6, $fa6, $fa3, $fcc0
	fsub.d	$fa2, $fa4, $fa2
	fcmp.clt.d	$fcc0, $fa2, $fa5
	addi.d	$a0, $a0, -8
	fsel	$fa5, $fa5, $fa2, $fcc0
	bne	$a0, $a1, .LBB1_2
.LBB1_3:                                # %for.end
	fadd.d	$fa1, $fa5, $fa6
	movgr2fr.d	$fs0, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI1_2)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI1_2)
	fcmp.clt.d	$fcc0, $fs0, $fa1
	xvst	$xr5, $sp, 48                   # 32-byte Folded Spill
	fneg.d	$fa1, $fa5
	xvst	$xr6, $sp, 16                   # 32-byte Folded Spill
	fsel	$fa1, $fa1, $fa6, $fcc0
	fmul.d	$fa1, $fa1, $fa2
	fcmp.cult.d	$fcc0, $fs0, $fa0
	fsel	$fs1, $fa1, $fa0, $fcc0
	vldi	$vr0, -996
	fmul.d	$fa0, $fa1, $fa0
	vldi	$vr1, -928
	fmadd.d	$fa0, $fs1, $fa1, $fa0
	fst.d	$fa0, $a6, 0
	addi.w	$a0, $s1, 1
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_35
# %bb.4:                                # %for.cond48.preheader
	bge	$s5, $s0, .LBB1_7
# %bb.5:                                # %for.end58.thread
	st.w	$zero, $fp, 0
.LBB1_6:                                # %for.end124
	fld.d	$fs1, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 96                   # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB1_7:                                # %for.body51.preheader
	sub.d	$a1, $s5, $s0
	addi.d	$a2, $a1, 1
	ori	$a3, $zero, 4
	move	$a1, $s5
	xvld	$xr6, $sp, 48                   # 32-byte Folded Reload
	xvld	$xr7, $sp, 16                   # 32-byte Folded Reload
	bltu	$a2, $a3, .LBB1_11
# %bb.8:                                # %vector.ph
	move	$a3, $a2
	bstrins.d	$a3, $zero, 1, 0
	sub.d	$a1, $s5, $a3
	xvreplve0.d	$xr0, $xr7
	xvreplve0.d	$xr1, $xr6
	slli.d	$a4, $s5, 3
	addi.d	$a5, $a4, -24
	add.d	$a4, $a0, $a5
	add.d	$a5, $s6, $a5
	move	$a6, $a3
	.p2align	4, , 16
.LBB1_9:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a5, 0
	xvst	$xr1, $a4, 0
	addi.d	$a6, $a6, -4
	addi.d	$a4, $a4, -32
	addi.d	$a5, $a5, -32
	bnez	$a6, .LBB1_9
# %bb.10:                               # %middle.block
	beq	$a2, $a3, .LBB1_13
.LBB1_11:                               # %for.body51.preheader125
	addi.d	$a2, $a1, 1
	alsl.d	$a3, $a1, $s6, 3
	alsl.d	$a1, $a1, $a0, 3
	.p2align	4, , 16
.LBB1_12:                               # %for.body51
                                        # =>This Inner Loop Header: Depth=1
	fst.d	$fa7, $a3, 0
	fst.d	$fa6, $a1, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, -8
	addi.d	$a1, $a1, -8
	blt	$s0, $a2, .LBB1_12
.LBB1_13:                               # %for.cond63.preheader.lr.ph
	move	$a1, $zero
	st.w	$zero, $fp, 0
	bstrpick.d	$a2, $s1, 31, 0
	alsl.d	$a3, $s0, $a0, 3
	addi.d	$a4, $s5, 1
	pcalau12i	$a5, %pc_hi20(.LCPI1_3)
	fld.d	$fa0, $a5, %pc_lo12(.LCPI1_3)
	alsl.d	$a5, $s5, $a0, 3
	vldi	$vr1, -928
	ori	$a6, $zero, 1
	b	.LBB1_16
	.p2align	4, , 16
.LBB1_14:                               # %while.cond.while.end_crit_edge
                                        #   in Loop: Header=BB1_16 Depth=1
	st.w	$a1, $fp, 0
.LBB1_15:                               # %while.end
                                        #   in Loop: Header=BB1_16 Depth=1
	alsl.d	$t0, $a7, $s6, 3
	fmul.d	$fa2, $fa3, $fa1
	fst.d	$fa2, $t0, 0
	addi.d	$s5, $a7, -1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, -8
	bge	$s0, $a7, .LBB1_6
.LBB1_16:                               # %for.cond63.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_17 Depth 2
                                        #     Child Loop BB1_23 Depth 2
                                        #       Child Loop BB1_27 Depth 3
	move	$a7, $s5
	move	$t0, $a5
	move	$t1, $a4
	.p2align	4, , 16
.LBB1_17:                               # %for.body66
                                        #   Parent Loop BB1_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $t0, 0
	fcmp.cule.d	$fcc0, $fa2, $fa6
	bceqz	$fcc0, .LBB1_20
# %bb.18:                               # %for.cond63
                                        #   in Loop: Header=BB1_17 Depth=2
	addi.d	$t1, $t1, -1
	addi.d	$t0, $t0, -8
	blt	$s0, $t1, .LBB1_17
# %bb.19:                               #   in Loop: Header=BB1_16 Depth=1
	fmov.d	$fa2, $fa6
.LBB1_20:                               # %for.end77
                                        #   in Loop: Header=BB1_16 Depth=1
	slli.d	$t0, $a7, 3
	fldx.d	$fa3, $s6, $t0
	fcmp.clt.d	$fcc0, $fa3, $fa7
	fsel	$fa7, $fa7, $fa3, $fcc0
	fsub.d	$fa3, $fa7, $fa2
	fabs.d	$fa4, $fa2
	fabs.d	$fa5, $fa7
	fadd.d	$fa4, $fa4, $fa5
	fmadd.d	$fa4, $fa4, $fa0, $fs1
	fcmp.cule.d	$fcc0, $fa3, $fa4
	fadd.d	$fa3, $fa2, $fa7
	bceqz	$fcc0, .LBB1_23
	b	.LBB1_15
	.p2align	4, , 16
.LBB1_21:                               #   in Loop: Header=BB1_23 Depth=2
	fmov.d	$fa7, $fa3
.LBB1_22:                               # %if.end115
                                        #   in Loop: Header=BB1_23 Depth=2
	addi.d	$a1, $a1, 1
	fsub.d	$fa3, $fa7, $fa2
	fabs.d	$fa4, $fa2
	fabs.d	$fa5, $fa7
	fadd.d	$fa4, $fa4, $fa5
	fmadd.d	$fa4, $fa4, $fa0, $fs1
	fcmp.clt.d	$fcc0, $fa4, $fa3
	fadd.d	$fa3, $fa2, $fa7
	bceqz	$fcc0, .LBB1_14
.LBB1_23:                               # %while.body
                                        #   Parent Loop BB1_16 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_27 Depth 3
	fmul.d	$fa3, $fa3, $fa1
	move	$t0, $zero
	blt	$s1, $a6, .LBB1_29
# %bb.24:                               # %for.body.i.preheader
                                        #   in Loop: Header=BB1_23 Depth=2
	vldi	$vr4, -912
	move	$t1, $s4
	move	$t2, $s3
	move	$t3, $a2
	move	$t4, $s2
	b	.LBB1_27
	.p2align	4, , 16
.LBB1_25:                               # %if.else.i
                                        #   in Loop: Header=BB1_27 Depth=3
	fld.d	$fa4, $t2, 0
	pcalau12i	$t5, %pc_hi20(.LCPI1_4)
	fld.d	$fa5, $t5, %pc_lo12(.LCPI1_4)
	fabs.d	$fa4, $fa4
	fmul.d	$fa4, $fa4, $fa5
.LBB1_26:                               # %if.end.i
                                        #   in Loop: Header=BB1_27 Depth=3
	fld.d	$fa5, $t1, 0
	fsub.d	$fa5, $fa5, $fa3
	fsub.d	$fa4, $fa5, $fa4
	fcmp.clt.d	$fcc0, $fa4, $fs0
	movcf2gr	$t5, $fcc0
	add.w	$t0, $t0, $t5
	addi.d	$t4, $t4, 8
	addi.d	$t3, $t3, -1
	addi.d	$t2, $t2, 8
	addi.d	$t1, $t1, 8
	beqz	$t3, .LBB1_29
.LBB1_27:                               # %for.body.i
                                        #   Parent Loop BB1_16 Depth=1
                                        #     Parent Loop BB1_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fcmp.ceq.d	$fcc0, $fa4, $fs0
	bcnez	$fcc0, .LBB1_25
# %bb.28:                               # %if.then.i
                                        #   in Loop: Header=BB1_27 Depth=3
	fld.d	$fa5, $t4, 0
	fdiv.d	$fa4, $fa5, $fa4
	b	.LBB1_26
	.p2align	4, , 16
.LBB1_29:                               # %sturm.exit
                                        #   in Loop: Header=BB1_23 Depth=2
	bge	$t0, $a7, .LBB1_21
# %bb.30:                               # %if.then96
                                        #   in Loop: Header=BB1_23 Depth=2
	bge	$t0, $s0, .LBB1_32
# %bb.31:                               # %if.then99
                                        #   in Loop: Header=BB1_23 Depth=2
	fst.d	$fa3, $a3, 0
	b	.LBB1_34
	.p2align	4, , 16
.LBB1_32:                               # %if.else
                                        #   in Loop: Header=BB1_23 Depth=2
	slli.d	$t1, $t0, 3
	fldx.d	$fa2, $s6, $t1
	alsl.d	$t1, $t0, $a0, 3
	fcmp.cule.d	$fcc0, $fa2, $fa3
	fst.d	$fa3, $t1, 8
	bcnez	$fcc0, .LBB1_34
# %bb.33:                               # %if.then109
                                        #   in Loop: Header=BB1_23 Depth=2
	alsl.d	$t0, $t0, $s6, 3
	fst.d	$fa3, $t0, 0
.LBB1_34:                               # %if.end115
                                        #   in Loop: Header=BB1_23 Depth=2
	fmov.d	$fa2, $fa3
	b	.LBB1_22
.LBB1_35:                               # %if.then45
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 39
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	dbisect, .Lfunc_end1-dbisect
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"bisect: Couldn't allocate memory for wu"
	.size	.L.str, 40

	.section	".note.GNU-stack","",@progbits
	.addrsig
