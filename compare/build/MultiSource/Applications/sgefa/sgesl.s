	.file	"sgesl.c"
	.text
	.globl	sgesl                           # -- Begin function sgesl
	.p2align	5
	.type	sgesl,@function
sgesl:                                  # @sgesl
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	st.d	$fp, $sp, 72                    # 8-byte Folded Spill
	st.d	$s0, $sp, 64                    # 8-byte Folded Spill
	st.d	$s1, $sp, 56                    # 8-byte Folded Spill
	st.d	$s2, $sp, 48                    # 8-byte Folded Spill
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	st.d	$s4, $sp, 32                    # 8-byte Folded Spill
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	st.d	$s7, $sp, 8                     # 8-byte Folded Spill
	ld.w	$a4, $a0, 0
	beqz	$a3, .LBB0_15
# %bb.1:                                # %for.cond49.preheader
	ori	$a3, $zero, 1
	blt	$a4, $a3, .LBB0_56
# %bb.2:                                # %for.body51.lr.ph
	move	$a3, $zero
	addi.d	$a0, $a0, 8
	movgr2fr.w	$fa0, $zero
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_3:                                # %for.end67
                                        #   in Loop: Header=BB0_4 Depth=1
	alsl.d	$a5, $a3, $a5, 2
	slli.d	$a6, $a3, 2
	fldx.s	$fa2, $a2, $a6
	fld.s	$fa3, $a5, 0
	fsub.s	$fa1, $fa2, $fa1
	fdiv.s	$fa1, $fa1, $fa3
	addi.d	$a3, $a3, 1
	fstx.s	$fa1, $a2, $a6
	beq	$a3, $a4, .LBB0_7
.LBB0_4:                                # %for.body51
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
	slli.d	$a5, $a3, 3
	ldx.d	$a5, $a0, $a5
	fmov.s	$fa1, $fa0
	beqz	$a3, .LBB0_3
# %bb.5:                                # %for.body62.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$a6, $a3
	move	$a7, $a2
	move	$t0, $a5
	fmov.s	$fa1, $fa0
	.p2align	4, , 16
.LBB0_6:                                # %for.body62
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa2, $t0, 0
	fld.s	$fa3, $a7, 0
	fmadd.s	$fa1, $fa2, $fa3, $fa1
	addi.d	$t0, $t0, 4
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, 4
	bnez	$a6, .LBB0_6
	b	.LBB0_3
.LBB0_7:                                # %for.end76
	ori	$a3, $zero, 1
	beq	$a4, $a3, .LBB0_56
# %bb.8:                                # %for.body83.lr.ph
	addi.w	$a5, $a4, -2
	alsl.d	$a1, $a5, $a1, 2
	bstrpick.d	$t0, $a5, 31, 0
	slli.d	$a5, $t0, 2
	addi.d	$a5, $a5, 4
	add.d	$a6, $a2, $a5
	movgr2fr.w	$fa0, $zero
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_9:                                # %for.inc116
                                        #   in Loop: Header=BB0_10 Depth=1
	addi.d	$t0, $a7, -1
	addi.d	$a1, $a1, -4
	addi.d	$a3, $a3, 1
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, -4
	blez	$a7, .LBB0_56
.LBB0_10:                               # %for.body83
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
	move	$a7, $t0
	addi.d	$t0, $t0, 1
	fmov.s	$fa1, $fa0
	bge	$t0, $a4, .LBB0_13
# %bb.11:                               # %for.body96.preheader
                                        #   in Loop: Header=BB0_10 Depth=1
	slli.d	$t0, $a7, 3
	ldx.d	$t0, $a0, $t0
	add.d	$t0, $t0, $a5
	move	$t1, $a6
	move	$t2, $a3
	fmov.s	$fa1, $fa0
	.p2align	4, , 16
.LBB0_12:                               # %for.body96
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa2, $t0, 0
	fld.s	$fa3, $t1, 0
	fmadd.s	$fa1, $fa2, $fa3, $fa1
	addi.w	$t2, $t2, -1
	addi.d	$t1, $t1, 4
	addi.d	$t0, $t0, 4
	bnez	$t2, .LBB0_12
.LBB0_13:                               # %for.end101
                                        #   in Loop: Header=BB0_10 Depth=1
	alsl.d	$t0, $a7, $a2, 2
	fld.s	$fa2, $t0, 0
	ld.w	$t1, $a1, 0
	fadd.s	$fa1, $fa1, $fa2
	bstrpick.d	$t2, $t1, 31, 0
	fst.s	$fa1, $t0, 0
	beq	$a7, $t2, .LBB0_9
# %bb.14:                               # %if.end107
                                        #   in Loop: Header=BB0_10 Depth=1
	slli.d	$t1, $t1, 2
	fldx.s	$fa2, $a2, $t1
	fstx.s	$fa1, $a2, $t1
	fst.s	$fa2, $t0, 0
	b	.LBB0_9
.LBB0_15:                               # %for.cond.preheader
	addi.d	$a5, $a4, -1
	ori	$a6, $zero, 2
	addi.w	$a3, $a5, 0
	blt	$a4, $a6, .LBB0_36
# %bb.16:                               # %for.body.lr.ph
	move	$a6, $zero
	addi.d	$a7, $a0, 8
	slli.d	$t0, $a4, 2
	alsl.d	$t1, $a4, $a2, 2
	addi.d	$t2, $a2, 36
	addi.d	$t3, $a2, 4
	ori	$t4, $zero, 1
	ori	$t5, $zero, 36
	ori	$t6, $zero, 4
	ori	$t7, $zero, 16
	ori	$t8, $zero, 4
	b	.LBB0_18
	.p2align	4, , 16
.LBB0_17:                               # %for.inc18
                                        #   in Loop: Header=BB0_18 Depth=1
	addi.d	$a6, $a6, 1
	addi.d	$a1, $a1, 4
	addi.d	$t4, $t4, 1
	addi.d	$t2, $t2, 4
	addi.d	$t5, $t5, 4
	addi.d	$a5, $a5, -1
	addi.d	$t3, $t3, 4
	addi.d	$t8, $t8, 4
	beq	$a6, $a3, .LBB0_36
.LBB0_18:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_29 Depth 2
                                        #     Child Loop BB0_33 Depth 2
                                        #     Child Loop BB0_25 Depth 2
	ld.wu	$s0, $a1, 0
	slli.d	$fp, $a6, 3
	ldx.d	$s1, $a7, $fp
	addi.w	$fp, $s0, 0
	slli.d	$s2, $fp, 2
	fldx.s	$fa0, $a2, $s2
	slli.d	$s2, $a6, 2
	beq	$a6, $s0, .LBB0_20
# %bb.19:                               # %if.then5
                                        #   in Loop: Header=BB0_18 Depth=1
	fldx.s	$fa1, $a2, $s2
	alsl.d	$fp, $fp, $a2, 2
	fst.s	$fa1, $fp, 0
	fstx.s	$fa0, $a2, $s2
.LBB0_20:                               # %iter.check
                                        #   in Loop: Header=BB0_18 Depth=1
	nor	$fp, $a6, $zero
	add.d	$s0, $fp, $a4
	alsl.d	$fp, $a6, $s1, 2
	bltu	$s0, $t6, .LBB0_23
# %bb.21:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_18 Depth=1
	addi.d	$s2, $s2, 4
	add.d	$s3, $a2, $s2
	add.d	$s4, $s1, $t0
	bgeu	$s3, $s4, .LBB0_26
# %bb.22:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_18 Depth=1
	add.d	$s2, $s1, $s2
	bgeu	$s2, $t1, .LBB0_26
.LBB0_23:                               #   in Loop: Header=BB0_18 Depth=1
	move	$s3, $t4
.LBB0_24:                               # %for.body15.preheader
                                        #   in Loop: Header=BB0_18 Depth=1
	alsl.d	$s0, $s3, $a2, 2
	sub.d	$s1, $a4, $s3
	addi.d	$fp, $fp, 4
	.p2align	4, , 16
.LBB0_25:                               # %for.body15
                                        #   Parent Loop BB0_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa1, $fp, 0
	fld.s	$fa2, $s0, 0
	fmadd.s	$fa1, $fa1, $fa0, $fa2
	fst.s	$fa1, $s0, 0
	addi.d	$s0, $s0, 4
	addi.d	$s1, $s1, -1
	addi.d	$fp, $fp, 4
	bnez	$s1, .LBB0_25
	b	.LBB0_17
	.p2align	4, , 16
.LBB0_26:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB0_18 Depth=1
	bgeu	$s0, $t7, .LBB0_28
# %bb.27:                               #   in Loop: Header=BB0_18 Depth=1
	move	$s2, $zero
	b	.LBB0_32
.LBB0_28:                               # %vector.ph
                                        #   in Loop: Header=BB0_18 Depth=1
	move	$s3, $a5
	bstrins.d	$s3, $zero, 3, 0
	move	$s2, $s0
	bstrins.d	$s2, $zero, 3, 0
	xvreplve0.w	$xr1, $xr0
	add.d	$s4, $s1, $t5
	move	$s5, $t2
	.p2align	4, , 16
.LBB0_29:                               # %vector.body
                                        #   Parent Loop BB0_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr2, $s4, -32
	xvld	$xr3, $s4, 0
	xvld	$xr4, $s5, -32
	xvld	$xr5, $s5, 0
	xvfmadd.s	$xr2, $xr2, $xr1, $xr4
	xvfmadd.s	$xr3, $xr3, $xr1, $xr5
	xvst	$xr2, $s5, -32
	xvst	$xr3, $s5, 0
	addi.d	$s5, $s5, 64
	addi.d	$s3, $s3, -16
	addi.d	$s4, $s4, 64
	bnez	$s3, .LBB0_29
# %bb.30:                               # %middle.block
                                        #   in Loop: Header=BB0_18 Depth=1
	beq	$s0, $s2, .LBB0_17
# %bb.31:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB0_18 Depth=1
	andi	$s3, $s0, 12
	beqz	$s3, .LBB0_35
.LBB0_32:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB0_18 Depth=1
	move	$s6, $a5
	bstrins.d	$s6, $zero, 1, 0
	move	$s4, $s0
	bstrins.d	$s4, $zero, 1, 0
	add.d	$s3, $t4, $s4
	alsl.d	$fp, $s4, $fp, 2
	vreplvei.w	$vr1, $vr0, 0
	alsl.d	$s5, $s2, $t3, 2
	alsl.d	$s7, $s2, $t8, 2
	add.d	$s1, $s1, $s7
	sub.d	$s2, $s2, $s6
	.p2align	4, , 16
.LBB0_33:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB0_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $s1, 0
	vld	$vr3, $s5, 0
	vfmadd.s	$vr2, $vr2, $vr1, $vr3
	vst	$vr2, $s5, 0
	addi.d	$s5, $s5, 16
	addi.d	$s2, $s2, 4
	addi.d	$s1, $s1, 16
	bnez	$s2, .LBB0_33
# %bb.34:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB0_18 Depth=1
	beq	$s0, $s4, .LBB0_17
	b	.LBB0_24
.LBB0_35:                               #   in Loop: Header=BB0_18 Depth=1
	add.d	$s3, $t4, $s2
	alsl.d	$fp, $s2, $fp, 2
	b	.LBB0_24
.LBB0_36:                               # %for.cond22.preheader
	ori	$a1, $zero, 1
	blt	$a4, $a1, .LBB0_56
# %bb.37:                               # %for.body24.lr.ph
	addi.d	$a0, $a0, 8
	slli.d	$a1, $a3, 3
	ldx.d	$t1, $a0, $a1
	slli.d	$a1, $a3, 2
	fldx.s	$fa0, $t1, $a1
	fldx.s	$fa1, $a2, $a1
	fdiv.s	$fa0, $fa1, $fa0
	fstx.s	$fa0, $a2, $a1
	beqz	$a3, .LBB0_56
# %bb.38:                               # %iter.check191.preheader
	move	$a1, $zero
	alsl.d	$t0, $a3, $a2, 2
	addi.d	$a4, $a2, 32
	ori	$a5, $zero, 4
	ori	$a6, $zero, 16
	move	$a7, $a3
	b	.LBB0_40
	.p2align	4, , 16
.LBB0_39:                               # %for.inc46
                                        #   in Loop: Header=BB0_40 Depth=1
	addi.d	$a7, $a7, -1
	slli.d	$t0, $a7, 3
	ldx.d	$t1, $a0, $t0
	slli.d	$t2, $a7, 2
	fldx.s	$fa0, $t1, $t2
	fldx.s	$fa1, $a2, $t2
	alsl.d	$t0, $a7, $a2, 2
	fdiv.s	$fa0, $fa1, $fa0
	fstx.s	$fa0, $a2, $t2
	addi.d	$a1, $a1, 1
	beqz	$a7, .LBB0_56
.LBB0_40:                               # %iter.check191
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_49 Depth 2
                                        #     Child Loop BB0_53 Depth 2
                                        #     Child Loop BB0_45 Depth 2
	bltu	$a7, $a5, .LBB0_43
# %bb.41:                               # %vector.memcheck184
                                        #   in Loop: Header=BB0_40 Depth=1
	sub.d	$t2, $a3, $a1
	alsl.d	$t2, $t2, $t1, 2
	bgeu	$a2, $t2, .LBB0_46
# %bb.42:                               # %vector.memcheck184
                                        #   in Loop: Header=BB0_40 Depth=1
	bgeu	$t1, $t0, .LBB0_46
.LBB0_43:                               #   in Loop: Header=BB0_40 Depth=1
	move	$t2, $zero
	move	$t3, $t1
.LBB0_44:                               # %for.body37.preheader
                                        #   in Loop: Header=BB0_40 Depth=1
	alsl.d	$t1, $t2, $a2, 2
	.p2align	4, , 16
.LBB0_45:                               # %for.body37
                                        #   Parent Loop BB0_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $t3, 0
	fld.s	$fa1, $t0, 0
	fld.s	$fa2, $t1, 0
	fneg.s	$fa0, $fa0
	fmadd.s	$fa0, $fa0, $fa1, $fa2
	fst.s	$fa0, $t1, 0
	addi.d	$t2, $t2, 1
	addi.d	$t3, $t3, 4
	addi.d	$t1, $t1, 4
	bne	$a7, $t2, .LBB0_45
	b	.LBB0_39
	.p2align	4, , 16
.LBB0_46:                               # %vector.main.loop.iter.check193
                                        #   in Loop: Header=BB0_40 Depth=1
	bgeu	$a7, $a6, .LBB0_48
# %bb.47:                               #   in Loop: Header=BB0_40 Depth=1
	move	$t2, $zero
	b	.LBB0_52
.LBB0_48:                               # %vector.ph194
                                        #   in Loop: Header=BB0_40 Depth=1
	move	$t3, $a7
	bstrins.d	$t3, $zero, 3, 0
	move	$t2, $a7
	bstrins.d	$t2, $zero, 3, 0
	addi.d	$t4, $t1, 32
	move	$t5, $a4
	.p2align	4, , 16
.LBB0_49:                               # %vector.body197
                                        #   Parent Loop BB0_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $t0, 0
	xvld	$xr1, $t4, -32
	xvld	$xr2, $t4, 0
	xvreplve0.w	$xr0, $xr0
	xvld	$xr3, $t5, -32
	xvld	$xr4, $t5, 0
	xvbitrevi.w	$xr1, $xr1, 31
	xvbitrevi.w	$xr2, $xr2, 31
	xvfmadd.s	$xr1, $xr1, $xr0, $xr3
	xvfmadd.s	$xr0, $xr2, $xr0, $xr4
	xvst	$xr1, $t5, -32
	xvst	$xr0, $t5, 0
	addi.d	$t4, $t4, 64
	addi.d	$t3, $t3, -16
	addi.d	$t5, $t5, 64
	bnez	$t3, .LBB0_49
# %bb.50:                               # %middle.block207
                                        #   in Loop: Header=BB0_40 Depth=1
	beq	$a7, $t2, .LBB0_39
# %bb.51:                               # %vec.epilog.iter.check212
                                        #   in Loop: Header=BB0_40 Depth=1
	andi	$t3, $a7, 12
	beqz	$t3, .LBB0_55
.LBB0_52:                               # %vec.epilog.ph211
                                        #   in Loop: Header=BB0_40 Depth=1
	move	$t5, $t2
	move	$t2, $a7
	bstrins.d	$t2, $zero, 1, 0
	alsl.d	$t3, $t2, $t1, 2
	alsl.d	$t1, $t5, $t1, 2
	sub.d	$t4, $t5, $t2
	alsl.d	$t5, $t5, $a2, 2
	.p2align	4, , 16
.LBB0_53:                               # %vec.epilog.vector.body217
                                        #   Parent Loop BB0_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $t0, 0
	vld	$vr1, $t1, 0
	vld	$vr2, $t5, 0
	vreplvei.w	$vr0, $vr0, 0
	vbitrevi.w	$vr1, $vr1, 31
	vfmadd.s	$vr0, $vr1, $vr0, $vr2
	vst	$vr0, $t5, 0
	addi.d	$t1, $t1, 16
	addi.d	$t4, $t4, 4
	addi.d	$t5, $t5, 16
	bnez	$t4, .LBB0_53
# %bb.54:                               # %vec.epilog.middle.block226
                                        #   in Loop: Header=BB0_40 Depth=1
	beq	$a7, $t2, .LBB0_39
	b	.LBB0_44
.LBB0_55:                               #   in Loop: Header=BB0_40 Depth=1
	alsl.d	$t3, $t2, $t1, 2
	b	.LBB0_44
.LBB0_56:                               # %cleanup
	move	$a0, $zero
	ld.d	$s7, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end0:
	.size	sgesl, .Lfunc_end0-sgesl
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
