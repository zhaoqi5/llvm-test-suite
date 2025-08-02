	.file	"20060420-1.c"
	.text
	.globl	foo                             # -- Begin function foo
	.p2align	5
	.type	foo,@function
foo:                                    # @foo
# %bb.0:                                # %entry
	ori	$a5, $zero, 1
	blt	$a3, $a5, .LBB0_7
# %bb.1:                                # %land.rhs.lr.ph
	sub.d	$a4, $zero, $a0
	andi	$a4, $a4, 15
	move	$a6, $zero
	bge	$a5, $a2, .LBB0_8
# %bb.2:                                # %land.rhs.us.preheader
	move	$a5, $zero
	addi.d	$a7, $a1, 8
	addi.d	$t0, $a2, -1
	.p2align	4, , 16
.LBB0_3:                                # %land.rhs.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
	beq	$a6, $a4, .LBB0_20
# %bb.4:                                # %for.body.us
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$t2, $a1, 0
	slli.d	$t1, $a6, 2
	fldx.s	$fa0, $t2, $t1
	move	$t2, $t0
	move	$t3, $a7
	.p2align	4, , 16
.LBB0_5:                                # %for.body6.us
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t4, $t3, 0
	fldx.s	$fa1, $t4, $t1
	fadd.s	$fa0, $fa0, $fa1
	addi.d	$t2, $t2, -1
	addi.d	$t3, $t3, 8
	bnez	$t2, .LBB0_5
# %bb.6:                                # %for.cond3.for.end_crit_edge.us
                                        #   in Loop: Header=BB0_3 Depth=1
	fstx.s	$fa0, $a0, $t1
	addi.d	$a6, $a6, 1
	addi.w	$a5, $a5, 1
	bne	$a6, $a3, .LBB0_3
	b	.LBB0_11
.LBB0_7:
	move	$a5, $zero
	addi.w	$a4, $a3, -15
	addi.w	$a6, $a5, 0
	blt	$a6, $a4, .LBB0_12
	b	.LBB0_21
.LBB0_8:                                # %land.rhs.preheader
	move	$a5, $zero
	slli.d	$a4, $a4, 2
	slli.d	$a7, $a3, 2
	.p2align	4, , 16
.LBB0_9:                                # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	beq	$a4, $a6, .LBB0_11
# %bb.10:                               # %for.body
                                        #   in Loop: Header=BB0_9 Depth=1
	ld.d	$t0, $a1, 0
	fldx.s	$fa0, $t0, $a6
	fstx.s	$fa0, $a0, $a6
	addi.d	$a6, $a6, 4
	addi.w	$a5, $a5, 1
	bne	$a7, $a6, .LBB0_9
.LBB0_11:                               # %for.end16
	addi.w	$a4, $a3, -15
	addi.w	$a6, $a5, 0
	bge	$a6, $a4, .LBB0_21
.LBB0_12:                               # %for.body21.lr.ph
	ori	$a7, $zero, 1
	bstrpick.d	$a6, $a5, 31, 0
	bge	$a7, $a2, .LBB0_18
# %bb.13:                               # %for.body21.us.preheader
	addi.d	$a5, $a1, 8
	addi.d	$a7, $a2, -1
	.p2align	4, , 16
.LBB0_14:                               # %for.body21.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
	ld.d	$t1, $a1, 0
	alsl.d	$t2, $a6, $t1, 2
	slli.d	$t0, $a6, 2
	vldx	$vr3, $t1, $t0
	vld	$vr2, $t2, 16
	vld	$vr1, $t2, 32
	vld	$vr0, $t2, 48
	move	$t1, $a7
	move	$t2, $a5
	.p2align	4, , 16
.LBB0_15:                               # %for.body47.us
                                        #   Parent Loop BB0_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t3, $t2, 0
	alsl.d	$t4, $a6, $t3, 2
	vldx	$vr4, $t3, $t0
	vld	$vr5, $t4, 16
	vld	$vr6, $t4, 32
	vld	$vr7, $t4, 48
	vfadd.s	$vr3, $vr3, $vr4
	vfadd.s	$vr2, $vr2, $vr5
	vfadd.s	$vr1, $vr1, $vr6
	vfadd.s	$vr0, $vr0, $vr7
	addi.d	$t1, $t1, -1
	addi.d	$t2, $t2, 8
	bnez	$t1, .LBB0_15
# %bb.16:                               # %for.cond44.for.end82_crit_edge.us
                                        #   in Loop: Header=BB0_14 Depth=1
	alsl.d	$t1, $a6, $a0, 2
	vstx	$vr3, $a0, $t0
	vst	$vr2, $t1, 16
	vst	$vr1, $t1, 32
	addi.d	$a6, $a6, 16
	vst	$vr0, $t1, 48
	blt	$a6, $a4, .LBB0_14
# %bb.17:                               # %for.cond107.preheader.loopexit
	move	$a5, $a6
	b	.LBB0_21
.LBB0_18:                               # %for.body21.preheader
	slli.d	$a7, $a6, 2
	.p2align	4, , 16
.LBB0_19:                               # %for.body21
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t0, $a1, 0
	add.d	$t1, $t0, $a7
	xvldx	$xr0, $t0, $a7
	xvld	$xr1, $t1, 32
	add.d	$t0, $a0, $a7
	xvstx	$xr0, $a0, $a7
	xvst	$xr1, $t0, 32
	addi.d	$a6, $a6, 16
	addi.w	$a5, $a5, 16
	addi.d	$a7, $a7, 64
	blt	$a6, $a4, .LBB0_19
	b	.LBB0_21
.LBB0_20:                               # %for.end16.loopexit.split.loop.exit146
	move	$a5, $a6
	addi.w	$a4, $a3, -15
	addi.w	$a6, $a5, 0
	blt	$a6, $a4, .LBB0_12
.LBB0_21:                               # %for.cond107.preheader
	addi.w	$a4, $a5, 0
	bge	$a4, $a3, .LBB0_42
# %bb.22:                               # %for.body110.lr.ph
	ld.d	$a4, $a1, 0
	bstrpick.d	$a5, $a5, 31, 0
	ori	$a6, $zero, 1
	bstrpick.d	$a3, $a3, 31, 0
	bge	$a6, $a2, .LBB0_27
# %bb.23:                               # %for.body110.us.preheader
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, -1
	.p2align	4, , 16
.LBB0_24:                               # %for.body110.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_25 Depth 2
	slli.d	$a6, $a5, 2
	fldx.s	$fa0, $a4, $a6
	move	$a7, $a2
	move	$t0, $a1
	.p2align	4, , 16
.LBB0_25:                               # %for.body118.us
                                        #   Parent Loop BB0_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t1, $t0, 0
	fldx.s	$fa1, $t1, $a6
	fadd.s	$fa0, $fa0, $fa1
	addi.d	$a7, $a7, -1
	addi.d	$t0, $t0, 8
	bnez	$a7, .LBB0_25
# %bb.26:                               # %for.cond115.for.end126_crit_edge.us
                                        #   in Loop: Header=BB0_24 Depth=1
	addi.d	$a5, $a5, 1
	fstx.s	$fa0, $a0, $a6
	bne	$a5, $a3, .LBB0_24
	b	.LBB0_42
.LBB0_27:                               # %iter.check
	sub.d	$a1, $a3, $a5
	ori	$a2, $zero, 4
	bltu	$a1, $a2, .LBB0_31
# %bb.28:                               # %iter.check
	sub.d	$a2, $a0, $a4
	ori	$a6, $zero, 63
	bgeu	$a6, $a2, .LBB0_31
# %bb.29:                               # %vector.main.loop.iter.check
	ori	$a2, $zero, 16
	bgeu	$a1, $a2, .LBB0_32
# %bb.30:
	move	$a2, $zero
	b	.LBB0_36
.LBB0_31:
	move	$a6, $a5
	b	.LBB0_40
.LBB0_32:                               # %vector.ph
	move	$a2, $a1
	bstrins.d	$a2, $zero, 3, 0
	slli.d	$a6, $a5, 2
	addi.d	$a7, $a6, 32
	add.d	$a6, $a0, $a7
	add.d	$a7, $a4, $a7
	move	$t0, $a2
	.p2align	4, , 16
.LBB0_33:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a7, -32
	xvld	$xr1, $a7, 0
	xvst	$xr0, $a6, -32
	xvst	$xr1, $a6, 0
	addi.d	$t0, $t0, -16
	addi.d	$a6, $a6, 64
	addi.d	$a7, $a7, 64
	bnez	$t0, .LBB0_33
# %bb.34:                               # %middle.block
	beq	$a1, $a2, .LBB0_42
# %bb.35:                               # %vec.epilog.iter.check
	andi	$a6, $a1, 12
	beqz	$a6, .LBB0_39
.LBB0_36:                               # %vec.epilog.ph
	move	$a7, $a1
	bstrins.d	$a7, $zero, 1, 0
	add.d	$a6, $a7, $a5
	sub.d	$t0, $a2, $a7
	add.d	$a5, $a2, $a5
	alsl.d	$a2, $a5, $a0, 2
	alsl.d	$a5, $a5, $a4, 2
	.p2align	4, , 16
.LBB0_37:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, 0
	vst	$vr0, $a2, 0
	addi.d	$t0, $t0, 4
	addi.d	$a2, $a2, 16
	addi.d	$a5, $a5, 16
	bnez	$t0, .LBB0_37
# %bb.38:                               # %vec.epilog.middle.block
	bne	$a1, $a7, .LBB0_40
	b	.LBB0_42
.LBB0_39:
	add.d	$a6, $a2, $a5
.LBB0_40:                               # %for.body110.preheader
	alsl.d	$a0, $a6, $a0, 2
	alsl.d	$a1, $a6, $a4, 2
	sub.d	$a2, $a3, $a6
	.p2align	4, , 16
.LBB0_41:                               # %for.body110
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fst.s	$fa0, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB0_41
.LBB0_42:                               # %for.end131
	ret
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function main
.LCPI1_0:
	.word	0x00000000                      # float 0
	.word	0x41400000                      # float 12
	.word	0x41c00000                      # float 24
	.word	0x42100000                      # float 36
	.word	0x42400000                      # float 48
	.word	0x42700000                      # float 60
	.word	0x42900000                      # float 72
	.word	0x42a80000                      # float 84
.LCPI1_1:
	.word	0x00000000                      # float 0
	.word	0x41500000                      # float 13
	.word	0x41d00000                      # float 26
	.word	0x421c0000                      # float 39
	.word	0x42500000                      # float 52
	.word	0x42820000                      # float 65
	.word	0x429c0000                      # float 78
	.word	0x42b60000                      # float 91
.LCPI1_2:
	.word	0x42c00000                      # float 96
	.word	0x42d80000                      # float 108
	.word	0x42f00000                      # float 120
	.word	0x43040000                      # float 132
	.word	0x43100000                      # float 144
	.word	0x431c0000                      # float 156
	.word	0x43280000                      # float 168
	.word	0x43340000                      # float 180
.LCPI1_3:
	.word	0x42d00000                      # float 104
	.word	0x42ea0000                      # float 117
	.word	0x43020000                      # float 130
	.word	0x430f0000                      # float 143
	.word	0x431c0000                      # float 156
	.word	0x43290000                      # float 169
	.word	0x43360000                      # float 182
	.word	0x43430000                      # float 195
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI1_4:
	.word	0x42480000                      # float 50
.LCPI1_5:
	.word	0x42960000                      # float 75
.LCPI1_6:
	.word	0x42c80000                      # float 100
.LCPI1_7:
	.word	0x42fa0000                      # float 125
.LCPI1_8:
	.word	0x43160000                      # float 150
.LCPI1_9:
	.word	0x432f0000                      # float 175
.LCPI1_10:
	.word	0x43480000                      # float 200
.LCPI1_11:
	.word	0x43610000                      # float 225
.LCPI1_12:
	.word	0x437a0000                      # float 250
.LCPI1_13:
	.word	0x43898000                      # float 275
.LCPI1_14:
	.word	0x43960000                      # float 300
.LCPI1_15:
	.word	0x43a28000                      # float 325
.LCPI1_16:
	.word	0x43af0000                      # float 350
.LCPI1_17:
	.word	0x43bb8000                      # float 375
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(buffer)
	addi.d	$s0, $a0, %pc_lo12(buffer)
	sub.d	$a0, $zero, $s0
	andi	$s1, $a0, 60
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI1_0)
	pcalau12i	$a0, %pc_hi20(.LCPI1_1)
	xvld	$xr1, $a0, %pc_lo12(.LCPI1_1)
	pcalau12i	$a0, %pc_hi20(.LCPI1_2)
	xvld	$xr2, $a0, %pc_lo12(.LCPI1_2)
	add.d	$fp, $s0, $s1
	xvst	$xr0, $fp, 64
	xvst	$xr1, $fp, 128
	xvst	$xr2, $fp, 96
	pcalau12i	$a0, %pc_hi20(.LCPI1_3)
	xvld	$xr0, $a0, %pc_lo12(.LCPI1_3)
	addi.d	$a0, $fp, 64
	st.d	$a0, $sp, 0
	addi.d	$a0, $fp, 128
	st.d	$a0, $sp, 8
	xvst	$xr0, $fp, 160
	addi.d	$a1, $sp, 0
	ori	$a2, $zero, 2
	ori	$a3, $zero, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	fldx.s	$fa0, $s0, $s1
	movgr2fr.w	$fa1, $zero
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_17
# %bb.1:                                # %for.cond12
	fld.s	$fa0, $fp, 4
	vldi	$vr1, -1223
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_17
# %bb.2:                                # %for.cond12.1
	fld.s	$fa0, $fp, 8
	pcalau12i	$a0, %pc_hi20(.LCPI1_4)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI1_4)
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_17
# %bb.3:                                # %for.cond12.2
	fld.s	$fa0, $fp, 12
	pcalau12i	$a0, %pc_hi20(.LCPI1_5)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI1_5)
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_17
# %bb.4:                                # %for.cond12.3
	fld.s	$fa0, $fp, 16
	pcalau12i	$a0, %pc_hi20(.LCPI1_6)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI1_6)
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_17
# %bb.5:                                # %for.cond12.4
	fld.s	$fa0, $fp, 20
	pcalau12i	$a0, %pc_hi20(.LCPI1_7)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI1_7)
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_17
# %bb.6:                                # %for.cond12.5
	fld.s	$fa0, $fp, 24
	pcalau12i	$a0, %pc_hi20(.LCPI1_8)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI1_8)
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_17
# %bb.7:                                # %for.cond12.6
	fld.s	$fa0, $fp, 28
	pcalau12i	$a0, %pc_hi20(.LCPI1_9)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI1_9)
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_17
# %bb.8:                                # %for.cond12.7
	fld.s	$fa0, $fp, 32
	pcalau12i	$a0, %pc_hi20(.LCPI1_10)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI1_10)
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_17
# %bb.9:                                # %for.cond12.8
	fld.s	$fa0, $fp, 36
	pcalau12i	$a0, %pc_hi20(.LCPI1_11)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI1_11)
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_17
# %bb.10:                               # %for.cond12.9
	fld.s	$fa0, $fp, 40
	pcalau12i	$a0, %pc_hi20(.LCPI1_12)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI1_12)
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_17
# %bb.11:                               # %for.cond12.10
	fld.s	$fa0, $fp, 44
	pcalau12i	$a0, %pc_hi20(.LCPI1_13)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI1_13)
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_17
# %bb.12:                               # %for.cond12.11
	fld.s	$fa0, $fp, 48
	pcalau12i	$a0, %pc_hi20(.LCPI1_14)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI1_14)
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_17
# %bb.13:                               # %for.cond12.12
	fld.s	$fa0, $fp, 52
	pcalau12i	$a0, %pc_hi20(.LCPI1_15)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI1_15)
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_17
# %bb.14:                               # %for.cond12.13
	fld.s	$fa0, $fp, 56
	pcalau12i	$a0, %pc_hi20(.LCPI1_16)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI1_16)
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_17
# %bb.15:                               # %for.cond12.14
	fld.s	$fa0, $fp, 60
	pcalau12i	$a0, %pc_hi20(.LCPI1_17)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI1_17)
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_17
# %bb.16:                               # %for.cond12.15
	move	$a0, $zero
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB1_17:                               # %if.then
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	buffer,@object                  # @buffer
	.bss
	.globl	buffer
	.p2align	2, 0x0
buffer:
	.space	256
	.size	buffer, 256

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym buffer
