	.file	"orderedDitherKernel.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function orderedDitherKernel
.LCPI0_0:
	.dword	0x406fe00000000000              # double 255
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI0_1:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
	.dword	6                               # 0x6
	.dword	7                               # 0x7
.LCPI0_2:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI0_3:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.text
	.globl	orderedDitherKernel
	.p2align	5
	.type	orderedDitherKernel,@function
orderedDitherKernel:                    # @orderedDitherKernel
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	st.d	$s4, $sp, 0                     # 8-byte Folded Spill
	ori	$t0, $zero, 1
	bstrpick.d	$a7, $a1, 31, 0
	blt	$a0, $t0, .LBB0_27
# %bb.1:                                # %entry
	blt	$a1, $t0, .LBB0_27
# %bb.2:                                # %for.cond1.preheader.us.preheader
	move	$t1, $zero
	mul.d	$t0, $a7, $a0
	alsl.d	$t2, $t0, $a4, 2
	slli.d	$t3, $a0, 11
	slli.d	$t0, $a7, 2
	add.d	$t3, $a2, $t3
	alsl.d	$t3, $a7, $t3, 2
	addi.d	$t3, $t3, -2048
	sltu	$t3, $a4, $t3
	sltu	$t2, $a2, $t2
	and	$t3, $t3, $t2
	bstrpick.d	$t2, $a7, 30, 3
	slli.d	$t2, $t2, 3
	sltui	$t4, $a1, 8
	or	$t3, $t4, $t3
	andi	$t3, $t3, 1
	pcalau12i	$t4, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $t4, %pc_lo12(.LCPI0_0)
	ori	$t4, $zero, 0
	lu32i.d	$t4, -8192
	lu52i.d	$t4, $t4, 1030
	xvreplgr2vr.d	$xr1, $t4
	move	$t4, $a4
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_3:                                # %for.cond1.for.cond.cleanup3_crit_edge.us
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.d	$t1, $t1, 1
	add.d	$t4, $t4, $t0
	addi.d	$a2, $a2, 2047
	addi.d	$a2, $a2, 1
	beq	$t1, $a0, .LBB0_11
.LBB0_4:                                # %for.cond1.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
                                        #     Child Loop BB0_10 Depth 2
	beqz	$t3, .LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	move	$t6, $zero
	b	.LBB0_9
	.p2align	4, , 16
.LBB0_6:                                # %vector.body.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$t5, $a2
	move	$t6, $t4
	move	$t7, $t2
	.p2align	4, , 16
.LBB0_7:                                # %vector.body
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr2, $t5, 0
	xvpermi.q	$xr3, $xr2, 1
	vext2xv.d.w	$xr3, $xr3
	xvffint.d.l	$xr3, $xr3
	vext2xv.d.w	$xr2, $xr2
	xvffint.d.l	$xr2, $xr2
	xvfdiv.d	$xr3, $xr3, $xr1
	xvfdiv.d	$xr2, $xr2, $xr1
	xvfmul.d	$xr2, $xr2, $xr2
	xvfmul.d	$xr3, $xr3, $xr3
	xvfmul.d	$xr3, $xr3, $xr1
	xvfmul.d	$xr2, $xr2, $xr1
	xvftintrz.l.d	$xr2, $xr2
	xvpermi.d	$xr4, $xr2, 238
	xvpickev.w	$xr2, $xr4, $xr2
	xvftintrz.l.d	$xr3, $xr3
	xvpermi.d	$xr4, $xr3, 238
	xvpickev.w	$xr3, $xr4, $xr3
	xvpermi.q	$xr2, $xr3, 2
	xvst	$xr2, $t6, 0
	addi.d	$t7, $t7, -8
	addi.d	$t6, $t6, 32
	addi.d	$t5, $t5, 32
	bnez	$t7, .LBB0_7
# %bb.8:                                # %middle.block
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$t6, $t2
	beq	$t2, $a7, .LBB0_3
.LBB0_9:                                # %for.body4.us.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	slli.d	$t5, $t6, 2
	sub.d	$t6, $a7, $t6
	.p2align	4, , 16
.LBB0_10:                               # %for.body4.us
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$t7, $a2, $t5
	movgr2fr.w	$fa2, $t7
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa2, $fa2, $fa0
	fmul.d	$fa2, $fa2, $fa2
	fmul.d	$fa2, $fa2, $fa0
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$t7, $fa2
	stx.w	$t7, $t4, $t5
	addi.d	$t6, $t6, -1
	addi.d	$t5, $t5, 4
	bnez	$t6, .LBB0_10
	b	.LBB0_3
.LBB0_11:                               # %for.cond.cleanup
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB0_27
# %bb.12:                               # %for.cond23.preheader.us.preheader
	move	$a2, $zero
	ori	$t1, $zero, 256
	div.w	$a5, $t1, $a5
	sub.d	$t1, $a3, $a4
	sltui	$t2, $a1, 4
	sltui	$t1, $t1, 64
	or	$t1, $t2, $t1
	bstrpick.d	$t2, $a7, 30, 4
	slli.d	$t2, $t2, 4
	xvreplgr2vr.w	$xr0, $a5
	andi	$t3, $a7, 12
	bstrpick.d	$t4, $a7, 30, 2
	slli.d	$t4, $t4, 2
	vreplgr2vr.w	$vr1, $a5
	addi.d	$t5, $a3, 32
	addi.d	$t6, $a4, 32
	sub.d	$t7, $zero, $t4
	ori	$t8, $zero, 16
	move	$fp, $a3
	b	.LBB0_14
	.p2align	4, , 16
.LBB0_13:                               # %for.cond23.for.cond.cleanup26_crit_edge.us
                                        #   in Loop: Header=BB0_14 Depth=1
	addi.d	$a2, $a2, 1
	add.d	$t5, $t5, $t0
	add.d	$t6, $t6, $t0
	add.d	$fp, $fp, $t0
	add.d	$a4, $a4, $t0
	beq	$a2, $a0, .LBB0_27
.LBB0_14:                               # %iter.check
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_19 Depth 2
                                        #     Child Loop BB0_23 Depth 2
                                        #     Child Loop BB0_26 Depth 2
	beqz	$t1, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=1
	move	$s1, $zero
	b	.LBB0_25
	.p2align	4, , 16
.LBB0_16:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB0_14 Depth=1
	bgeu	$a1, $t8, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_14 Depth=1
	move	$s2, $zero
	b	.LBB0_22
	.p2align	4, , 16
.LBB0_18:                               # %vector.body196.preheader
                                        #   in Loop: Header=BB0_14 Depth=1
	move	$s0, $t6
	move	$s1, $t5
	move	$s2, $t2
	.p2align	4, , 16
.LBB0_19:                               # %vector.body196
                                        #   Parent Loop BB0_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr2, $s0, -32
	xvld	$xr3, $s0, 0
	xvdiv.w	$xr2, $xr2, $xr0
	xvdiv.w	$xr3, $xr3, $xr0
	xvst	$xr2, $s1, -32
	xvst	$xr3, $s1, 0
	addi.d	$s2, $s2, -16
	addi.d	$s1, $s1, 64
	addi.d	$s0, $s0, 64
	bnez	$s2, .LBB0_19
# %bb.20:                               # %middle.block201
                                        #   in Loop: Header=BB0_14 Depth=1
	beq	$t2, $a7, .LBB0_13
# %bb.21:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB0_14 Depth=1
	move	$s2, $t2
	move	$s1, $t2
	beqz	$t3, .LBB0_25
.LBB0_22:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB0_14 Depth=1
	add.d	$s0, $t7, $s2
	alsl.d	$s1, $s2, $fp, 2
	alsl.d	$s2, $s2, $a4, 2
	.p2align	4, , 16
.LBB0_23:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB0_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $s2, 0
	vdiv.w	$vr2, $vr2, $vr1
	vst	$vr2, $s1, 0
	addi.d	$s0, $s0, 4
	addi.d	$s1, $s1, 16
	addi.d	$s2, $s2, 16
	bnez	$s0, .LBB0_23
# %bb.24:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB0_14 Depth=1
	move	$s1, $t4
	beq	$t4, $a7, .LBB0_13
.LBB0_25:                               # %for.body27.us.preheader
                                        #   in Loop: Header=BB0_14 Depth=1
	slli.d	$s0, $s1, 2
	sub.d	$s1, $a7, $s1
	.p2align	4, , 16
.LBB0_26:                               # %for.body27.us
                                        #   Parent Loop BB0_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$s2, $a4, $s0
	div.w	$s2, $s2, $a5
	stx.w	$s2, $fp, $s0
	addi.d	$s1, $s1, -1
	addi.d	$s0, $s0, 4
	bnez	$s1, .LBB0_26
	b	.LBB0_13
.LBB0_27:                               # %for.cond.cleanup20
	addi.d	$a2, $a6, -2
	ori	$a4, $zero, 6
	bltu	$a4, $a2, .LBB0_64
# %bb.28:                               # %for.cond.cleanup20
	slli.d	$a2, $a2, 2
	pcalau12i	$a4, %pc_hi20(.LJTI0_0)
	addi.d	$a4, $a4, %pc_lo12(.LJTI0_0)
	ldx.w	$a2, $a4, $a2
	add.d	$a2, $a4, $a2
	jr	$a2
.LBB0_29:                               # %for.cond47.preheader
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB0_64
# %bb.30:                               # %for.cond47.preheader
	blt	$a1, $a2, .LBB0_64
# %bb.31:                               # %for.cond52.preheader.us.preheader
	move	$a1, $zero
	slli.d	$a2, $a7, 2
	pcalau12i	$a4, %pc_hi20(.L__const.orderedDitherKernel.dither)
	addi.d	$a4, $a4, %pc_lo12(.L__const.orderedDitherKernel.dither)
	ori	$a5, $zero, 255
	.p2align	4, , 16
.LBB0_32:                               # %for.cond52.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_33 Depth 2
	move	$a6, $zero
	andi	$t0, $a1, 1
	alsl.d	$t0, $t0, $a4, 2
	move	$t1, $a3
	.p2align	4, , 16
.LBB0_33:                               # %for.body56.us
                                        #   Parent Loop BB0_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$t2, $a6, 1
	ld.w	$t3, $t1, 0
	slli.d	$t2, $t2, 3
	ldx.w	$t2, $t0, $t2
	slt	$t2, $t2, $t3
	maskeqz	$t2, $a5, $t2
	st.w	$t2, $t1, 0
	addi.d	$a6, $a6, 1
	addi.d	$t1, $t1, 4
	bne	$a7, $a6, .LBB0_33
# %bb.34:                               # %for.cond52.for.cond.cleanup55_crit_edge.us
                                        #   in Loop: Header=BB0_32 Depth=1
	addi.d	$a1, $a1, 1
	add.d	$a3, $a3, $a2
	bne	$a1, $a0, .LBB0_32
	b	.LBB0_64
.LBB0_35:                               # %for.cond127.preheader
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB0_64
# %bb.36:                               # %for.cond127.preheader
	blt	$a1, $a2, .LBB0_64
# %bb.37:                               # %for.cond133.preheader.us.preheader
	move	$a2, $zero
	sltui	$a1, $a1, 8
	addi.d	$a4, $a7, -5
	sltui	$a4, $a4, -4
	or	$a4, $a1, $a4
	slli.d	$a5, $a7, 2
	pcalau12i	$a1, %pc_hi20(.L__const.orderedDitherKernel.dither.2)
	addi.d	$a6, $a1, %pc_lo12(.L__const.orderedDitherKernel.dither.2)
	ori	$t0, $zero, 255
	.p2align	4, , 16
.LBB0_38:                               # %for.cond133.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_40 Depth 2
	andi	$a1, $a2, 3
	alsl.d	$a1, $a1, $a6, 2
	beqz	$a4, .LBB0_65
# %bb.39:                               # %for.body137.us.preheader
                                        #   in Loop: Header=BB0_38 Depth=1
	move	$t1, $zero
	move	$t2, $a3
	.p2align	4, , 16
.LBB0_40:                               # %for.body137.us
                                        #   Parent Loop BB0_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$t3, $t1, 3
	ld.w	$t4, $t2, 0
	slli.d	$t3, $t3, 4
	ldx.w	$t3, $a1, $t3
	slt	$t3, $t3, $t4
	maskeqz	$t3, $t0, $t3
	st.w	$t3, $t2, 0
	addi.d	$t1, $t1, 1
	addi.d	$t2, $t2, 4
	bne	$a7, $t1, .LBB0_40
# %bb.41:                               # %for.cond133.for.cond.cleanup136_crit_edge.us
                                        #   in Loop: Header=BB0_38 Depth=1
	addi.d	$a2, $a2, 1
	add.d	$a3, $a3, $a5
	bne	$a2, $a0, .LBB0_38
	b	.LBB0_64
.LBB0_42:                               # %for.cond85.preheader
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB0_64
# %bb.43:                               # %for.cond85.preheader
	blt	$a1, $a2, .LBB0_64
# %bb.44:                               # %for.cond91.preheader.us.preheader
	move	$a2, $zero
	bstrpick.d	$a4, $a7, 30, 3
	slli.d	$a4, $a4, 3
	slli.d	$a5, $a7, 2
	lu12i.w	$a6, -349526
	ori	$a6, $a6, 2731
	pcalau12i	$t0, %pc_hi20(.L__const.orderedDitherKernel.dither.1)
	addi.d	$t0, $t0, %pc_lo12(.L__const.orderedDitherKernel.dither.1)
	ori	$t1, $zero, 8
	ori	$t2, $zero, 255
	pcalau12i	$t3, %pc_hi20(.LCPI0_3)
	xvld	$xr0, $t3, %pc_lo12(.LCPI0_3)
	xvreplgr2vr.w	$xr1, $a6
	lu32i.d	$a6, 0
	xvrepli.w	$xr2, 3
	ori	$t3, $zero, 12
	xvrepli.w	$xr3, 255
	b	.LBB0_46
	.p2align	4, , 16
.LBB0_45:                               # %for.cond91.for.cond.cleanup94_crit_edge.us
                                        #   in Loop: Header=BB0_46 Depth=1
	addi.d	$a2, $a2, 1
	add.d	$a3, $a3, $a5
	beq	$a2, $a0, .LBB0_64
.LBB0_46:                               # %for.cond91.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_49 Depth 2
                                        #     Child Loop BB0_52 Depth 2
	mul.d	$t4, $a2, $a6
	srli.d	$t4, $t4, 33
	alsl.d	$t4, $t4, $t4, 1
	sub.w	$t4, $a2, $t4
	alsl.d	$t4, $t4, $t0, 2
	bgeu	$a1, $t1, .LBB0_48
# %bb.47:                               #   in Loop: Header=BB0_46 Depth=1
	move	$t5, $zero
	b	.LBB0_51
	.p2align	4, , 16
.LBB0_48:                               # %vector.body244.preheader
                                        #   in Loop: Header=BB0_46 Depth=1
	move	$t5, $a3
	move	$t6, $a4
	xvori.b	$xr4, $xr0, 0
	.p2align	4, , 16
.LBB0_49:                               # %vector.body244
                                        #   Parent Loop BB0_46 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvmuh.wu	$xr5, $xr4, $xr1
	xvsrli.w	$xr5, $xr5, 1
	xvori.b	$xr6, $xr4, 0
	xvmsub.w	$xr6, $xr5, $xr2
	xvld	$xr5, $t5, 0
	xvpermi.q	$xr7, $xr6, 1
	vpickve2gr.w	$t7, $vr7, 2
	bstrpick.d	$t7, $t7, 31, 0
	vinsgr2vr.d	$vr8, $t7, 0
	vpickve2gr.w	$t7, $vr7, 3
	bstrpick.d	$t7, $t7, 31, 0
	vinsgr2vr.d	$vr8, $t7, 1
	xvpermi.q	$xr8, $xr8, 2
	vpickve2gr.w	$t7, $vr7, 0
	bstrpick.d	$t7, $t7, 31, 0
	vinsgr2vr.d	$vr9, $t7, 0
	vpickve2gr.w	$t7, $vr7, 1
	bstrpick.d	$t7, $t7, 31, 0
	vinsgr2vr.d	$vr9, $t7, 1
	vpickve2gr.w	$t7, $vr6, 2
	bstrpick.d	$t7, $t7, 31, 0
	vinsgr2vr.d	$vr7, $t7, 0
	vpickve2gr.w	$t7, $vr6, 3
	bstrpick.d	$t7, $t7, 31, 0
	vinsgr2vr.d	$vr7, $t7, 1
	xvpermi.q	$xr7, $xr7, 2
	vpickve2gr.w	$t7, $vr6, 0
	bstrpick.d	$t7, $t7, 31, 0
	vinsgr2vr.d	$vr10, $t7, 0
	vpickve2gr.w	$t7, $vr6, 1
	bstrpick.d	$t7, $t7, 31, 0
	vinsgr2vr.d	$vr10, $t7, 1
	xvpickve2gr.d	$t7, $xr10, 0
	mul.d	$t7, $t7, $t3
	xvpickve2gr.d	$t8, $xr10, 1
	mul.d	$t8, $t8, $t3
	xvpickve2gr.d	$fp, $xr7, 2
	mul.d	$fp, $fp, $t3
	xvpickve2gr.d	$s0, $xr7, 3
	mul.d	$s0, $s0, $t3
	xvpickve2gr.d	$s1, $xr9, 0
	mul.d	$s1, $s1, $t3
	xvpickve2gr.d	$s2, $xr9, 1
	mul.d	$s2, $s2, $t3
	xvpickve2gr.d	$s3, $xr8, 2
	mul.d	$s3, $s3, $t3
	xvpickve2gr.d	$s4, $xr8, 3
	mul.d	$s4, $s4, $t3
	ldx.w	$t7, $t4, $t7
	ldx.w	$t8, $t4, $t8
	ldx.w	$fp, $t4, $fp
	ldx.w	$s0, $t4, $s0
	ldx.w	$s1, $t4, $s1
	ldx.w	$s2, $t4, $s2
	ldx.w	$s3, $t4, $s3
	ldx.w	$s4, $t4, $s4
	vinsgr2vr.w	$vr6, $t7, 0
	vinsgr2vr.w	$vr6, $t8, 1
	vinsgr2vr.w	$vr6, $fp, 2
	vinsgr2vr.w	$vr6, $s0, 3
	vinsgr2vr.w	$vr7, $s1, 0
	vinsgr2vr.w	$vr7, $s2, 1
	vinsgr2vr.w	$vr7, $s3, 2
	vinsgr2vr.w	$vr7, $s4, 3
	xvpermi.q	$xr6, $xr7, 2
	xvslt.w	$xr5, $xr6, $xr5
	xvand.v	$xr5, $xr5, $xr3
	xvst	$xr5, $t5, 0
	xvaddi.wu	$xr4, $xr4, 8
	addi.d	$t6, $t6, -8
	addi.d	$t5, $t5, 32
	bnez	$t6, .LBB0_49
# %bb.50:                               # %middle.block250
                                        #   in Loop: Header=BB0_46 Depth=1
	move	$t5, $a4
	beq	$a4, $a7, .LBB0_45
.LBB0_51:                               # %for.body95.us.preheader
                                        #   in Loop: Header=BB0_46 Depth=1
	slli.d	$t6, $t5, 2
	sub.d	$t7, $a7, $t5
	.p2align	4, , 16
.LBB0_52:                               # %for.body95.us
                                        #   Parent Loop BB0_46 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t8, $t5, 31, 0
	mul.d	$t8, $t8, $a6
	srli.d	$t8, $t8, 33
	alsl.d	$t8, $t8, $t8, 1
	sub.w	$t8, $t5, $t8
	ldx.w	$fp, $a3, $t6
	slli.d	$s0, $t8, 3
	alsl.d	$t8, $t8, $s0, 2
	ldx.w	$t8, $t4, $t8
	slt	$t8, $t8, $fp
	maskeqz	$t8, $t2, $t8
	stx.w	$t8, $a3, $t6
	addi.d	$t6, $t6, 4
	addi.d	$t7, $t7, -1
	addi.w	$t5, $t5, 1
	bnez	$t7, .LBB0_52
	b	.LBB0_45
.LBB0_53:                               # %for.cond169.preheader
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB0_64
# %bb.54:                               # %for.cond169.preheader
	blt	$a1, $a2, .LBB0_64
# %bb.55:                               # %for.cond175.preheader.us.preheader
	move	$a2, $zero
	sltui	$a1, $a1, 8
	addi.d	$a4, $a7, -9
	sltui	$a4, $a4, -8
	or	$a1, $a1, $a4
	andi	$a4, $a7, 8
	slli.d	$a5, $a7, 2
	pcalau12i	$a6, %pc_hi20(.L__const.orderedDitherKernel.dither.3)
	addi.d	$a6, $a6, %pc_lo12(.L__const.orderedDitherKernel.dither.3)
	pcalau12i	$t0, %pc_hi20(.LCPI0_1)
	xvld	$xr0, $t0, %pc_lo12(.LCPI0_1)
	pcalau12i	$t0, %pc_hi20(.LCPI0_2)
	xvld	$xr1, $t0, %pc_lo12(.LCPI0_2)
	ori	$t0, $zero, 255
	xvrepli.d	$xr2, 7
	xvrepli.w	$xr3, 255
	b	.LBB0_57
	.p2align	4, , 16
.LBB0_56:                               # %for.cond175.for.cond.cleanup178_crit_edge.us
                                        #   in Loop: Header=BB0_57 Depth=1
	addi.d	$a2, $a2, 1
	add.d	$a3, $a3, $a5
	beq	$a2, $a0, .LBB0_64
.LBB0_57:                               # %for.cond175.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_60 Depth 2
                                        #     Child Loop BB0_63 Depth 2
	andi	$t1, $a2, 7
	alsl.d	$t1, $t1, $a6, 2
	beqz	$a1, .LBB0_59
# %bb.58:                               #   in Loop: Header=BB0_57 Depth=1
	move	$t2, $zero
	b	.LBB0_62
	.p2align	4, , 16
.LBB0_59:                               # %vector.body217.preheader
                                        #   in Loop: Header=BB0_57 Depth=1
	move	$t2, $a3
	move	$t3, $a4
	xvori.b	$xr4, $xr1, 0
	xvori.b	$xr5, $xr0, 0
	.p2align	4, , 16
.LBB0_60:                               # %vector.body217
                                        #   Parent Loop BB0_57 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvand.v	$xr6, $xr5, $xr2
	xvand.v	$xr7, $xr4, $xr2
	xvld	$xr8, $t2, 0
	xvpickve2gr.d	$t4, $xr7, 0
	slli.d	$t4, $t4, 5
	xvpickve2gr.d	$t5, $xr7, 1
	slli.d	$t5, $t5, 5
	xvpickve2gr.d	$t6, $xr7, 2
	slli.d	$t6, $t6, 5
	xvpickve2gr.d	$t7, $xr7, 3
	slli.d	$t7, $t7, 5
	xvpickve2gr.d	$t8, $xr6, 0
	slli.d	$t8, $t8, 5
	xvpickve2gr.d	$fp, $xr6, 1
	slli.d	$fp, $fp, 5
	xvpickve2gr.d	$s0, $xr6, 2
	slli.d	$s0, $s0, 5
	xvpickve2gr.d	$s1, $xr6, 3
	slli.d	$s1, $s1, 5
	ldx.w	$t4, $t1, $t4
	ldx.w	$t5, $t1, $t5
	ldx.w	$t6, $t1, $t6
	ldx.w	$t7, $t1, $t7
	ldx.w	$t8, $t1, $t8
	ldx.w	$fp, $t1, $fp
	ldx.w	$s0, $t1, $s0
	ldx.w	$s1, $t1, $s1
	vinsgr2vr.w	$vr6, $t4, 0
	vinsgr2vr.w	$vr6, $t5, 1
	vinsgr2vr.w	$vr6, $t6, 2
	vinsgr2vr.w	$vr6, $t7, 3
	vinsgr2vr.w	$vr7, $t8, 0
	vinsgr2vr.w	$vr7, $fp, 1
	vinsgr2vr.w	$vr7, $s0, 2
	vinsgr2vr.w	$vr7, $s1, 3
	xvpermi.q	$xr6, $xr7, 2
	xvslt.w	$xr6, $xr6, $xr8
	xvand.v	$xr6, $xr6, $xr3
	xvst	$xr6, $t2, 0
	xvaddi.du	$xr4, $xr4, 8
	xvaddi.du	$xr5, $xr5, 8
	addi.d	$t3, $t3, -8
	addi.d	$t2, $t2, 32
	bnez	$t3, .LBB0_60
# %bb.61:                               # %middle.block221
                                        #   in Loop: Header=BB0_57 Depth=1
	move	$t2, $a4
	beq	$a4, $a7, .LBB0_56
.LBB0_62:                               # %for.body179.us.preheader
                                        #   in Loop: Header=BB0_57 Depth=1
	slli.d	$t3, $t2, 2
	.p2align	4, , 16
.LBB0_63:                               # %for.body179.us
                                        #   Parent Loop BB0_57 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$t4, $t2, 7
	ldx.w	$t5, $a3, $t3
	slli.d	$t4, $t4, 5
	ldx.w	$t4, $t1, $t4
	slt	$t4, $t4, $t5
	maskeqz	$t4, $t0, $t4
	stx.w	$t4, $a3, $t3
	addi.d	$t2, $t2, 1
	addi.d	$t3, $t3, 4
	bne	$a7, $t2, .LBB0_63
	b	.LBB0_56
.LBB0_64:                               # %if.end207
	ld.d	$s4, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB0_65:                               # %vector.body230.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	xvld	$xr0, $a0, %pc_lo12(.LCPI0_1)
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	xvld	$xr1, $a0, %pc_lo12(.LCPI0_2)
	xvrepli.d	$xr2, 3
	xvrepli.w	$xr3, 255
	.p2align	4, , 16
.LBB0_66:                               # %vector.body230
                                        # =>This Inner Loop Header: Depth=1
	xvand.v	$xr4, $xr0, $xr2
	xvand.v	$xr5, $xr1, $xr2
	xvld	$xr6, $a3, 0
	xvpickve2gr.d	$a0, $xr5, 0
	slli.d	$a0, $a0, 4
	xvpickve2gr.d	$a2, $xr5, 1
	slli.d	$a2, $a2, 4
	xvpickve2gr.d	$a4, $xr5, 2
	slli.d	$a4, $a4, 4
	xvpickve2gr.d	$a5, $xr5, 3
	slli.d	$a5, $a5, 4
	xvpickve2gr.d	$a6, $xr4, 0
	slli.d	$a6, $a6, 4
	xvpickve2gr.d	$a7, $xr4, 1
	slli.d	$a7, $a7, 4
	xvpickve2gr.d	$t0, $xr4, 2
	slli.d	$t0, $t0, 4
	xvpickve2gr.d	$t1, $xr4, 3
	slli.d	$t1, $t1, 4
	ldx.w	$a0, $a1, $a0
	ldx.w	$a2, $a1, $a2
	ldx.w	$a4, $a1, $a4
	ldx.w	$a5, $a1, $a5
	ldx.w	$a6, $a1, $a6
	ldx.w	$a7, $a1, $a7
	ldx.w	$t0, $a1, $t0
	ldx.w	$t1, $a1, $t1
	vinsgr2vr.w	$vr4, $a0, 0
	vinsgr2vr.w	$vr4, $a2, 1
	vinsgr2vr.w	$vr4, $a4, 2
	vinsgr2vr.w	$vr4, $a5, 3
	vinsgr2vr.w	$vr5, $a6, 0
	vinsgr2vr.w	$vr5, $a7, 1
	vinsgr2vr.w	$vr5, $t0, 2
	vinsgr2vr.w	$vr5, $t1, 3
	xvpermi.q	$xr4, $xr5, 2
	xvslt.w	$xr4, $xr4, $xr6
	xvand.v	$xr4, $xr4, $xr3
	xvst	$xr4, $a3, 0
	xvaddi.du	$xr1, $xr1, 8
	xvaddi.du	$xr0, $xr0, 8
	addi.d	$a3, $a3, 32
	b	.LBB0_66
.Lfunc_end0:
	.size	orderedDitherKernel, .Lfunc_end0-orderedDitherKernel
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_29-.LJTI0_0
	.word	.LBB0_42-.LJTI0_0
	.word	.LBB0_35-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_53-.LJTI0_0
                                        # -- End function
	.type	.L__const.orderedDitherKernel.dither,@object # @__const.orderedDitherKernel.dither
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	2, 0x0
.L__const.orderedDitherKernel.dither:
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	1                               # 0x1
	.size	.L__const.orderedDitherKernel.dither, 16

	.type	.L__const.orderedDitherKernel.dither.1,@object # @__const.orderedDitherKernel.dither.1
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.L__const.orderedDitherKernel.dither.1:
	.word	6                               # 0x6
	.word	8                               # 0x8
	.word	4                               # 0x4
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	3                               # 0x3
	.word	5                               # 0x5
	.word	2                               # 0x2
	.word	7                               # 0x7
	.size	.L__const.orderedDitherKernel.dither.1, 36

	.type	.L__const.orderedDitherKernel.dither.2,@object # @__const.orderedDitherKernel.dither.2
	.p2align	2, 0x0
.L__const.orderedDitherKernel.dither.2:
	.word	0                               # 0x0
	.word	8                               # 0x8
	.word	2                               # 0x2
	.word	10                              # 0xa
	.word	12                              # 0xc
	.word	4                               # 0x4
	.word	14                              # 0xe
	.word	6                               # 0x6
	.word	3                               # 0x3
	.word	11                              # 0xb
	.word	1                               # 0x1
	.word	9                               # 0x9
	.word	15                              # 0xf
	.word	7                               # 0x7
	.word	13                              # 0xd
	.word	5                               # 0x5
	.size	.L__const.orderedDitherKernel.dither.2, 64

	.type	.L__const.orderedDitherKernel.dither.3,@object # @__const.orderedDitherKernel.dither.3
	.p2align	2, 0x0
.L__const.orderedDitherKernel.dither.3:
	.word	0                               # 0x0
	.word	48                              # 0x30
	.word	12                              # 0xc
	.word	60                              # 0x3c
	.word	3                               # 0x3
	.word	51                              # 0x33
	.word	15                              # 0xf
	.word	63                              # 0x3f
	.word	32                              # 0x20
	.word	16                              # 0x10
	.word	44                              # 0x2c
	.word	28                              # 0x1c
	.word	35                              # 0x23
	.word	19                              # 0x13
	.word	47                              # 0x2f
	.word	31                              # 0x1f
	.word	8                               # 0x8
	.word	56                              # 0x38
	.word	4                               # 0x4
	.word	52                              # 0x34
	.word	11                              # 0xb
	.word	59                              # 0x3b
	.word	7                               # 0x7
	.word	55                              # 0x37
	.word	40                              # 0x28
	.word	24                              # 0x18
	.word	36                              # 0x24
	.word	20                              # 0x14
	.word	43                              # 0x2b
	.word	27                              # 0x1b
	.word	39                              # 0x27
	.word	23                              # 0x17
	.word	2                               # 0x2
	.word	50                              # 0x32
	.word	14                              # 0xe
	.word	62                              # 0x3e
	.word	1                               # 0x1
	.word	49                              # 0x31
	.word	13                              # 0xd
	.word	61                              # 0x3d
	.word	34                              # 0x22
	.word	18                              # 0x12
	.word	46                              # 0x2e
	.word	30                              # 0x1e
	.word	33                              # 0x21
	.word	17                              # 0x11
	.word	45                              # 0x2d
	.word	29                              # 0x1d
	.word	10                              # 0xa
	.word	58                              # 0x3a
	.word	6                               # 0x6
	.word	54                              # 0x36
	.word	9                               # 0x9
	.word	57                              # 0x39
	.word	5                               # 0x5
	.word	53                              # 0x35
	.word	42                              # 0x2a
	.word	26                              # 0x1a
	.word	38                              # 0x26
	.word	22                              # 0x16
	.word	41                              # 0x29
	.word	25                              # 0x19
	.word	37                              # 0x25
	.word	21                              # 0x15
	.size	.L__const.orderedDitherKernel.dither.3, 256

	.section	".note.GNU-stack","",@progbits
	.addrsig
