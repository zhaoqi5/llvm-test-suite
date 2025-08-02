	.file	"Calignm1.c"
	.text
	.globl	tracking                        # -- Begin function tracking
	.p2align	5
	.type	tracking,@function
tracking:                               # @tracking
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
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	move	$fp, $a1
	ld.d	$a1, $a1, 0
	move	$s0, $a4
	move	$s1, $a3
	move	$s2, $a2
	move	$s3, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	add.w	$a2, $a0, $s4
	blt	$s0, $a1, .LBB0_3
# %bb.1:                                # %for.body.lr.ph
	addi.d	$a3, $s0, 2
	bstrpick.d	$a3, $a3, 31, 0
	move	$a4, $s3
	.p2align	4, , 16
.LBB0_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	add.d	$a6, $a5, $a2
	st.d	$a6, $a4, 0
	stx.b	$zero, $a5, $a2
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 8
	bnez	$a3, .LBB0_2
.LBB0_3:                                # %for.cond8.preheader
	bltz	$a2, .LBB0_36
# %bb.4:                                # %for.body12.lr.ph
	move	$t5, $zero
	addi.w	$a4, $s0, 1
	alsl.d	$a3, $a4, $s3, 3
	bstrpick.d	$a4, $a4, 31, 0
	addi.d	$a5, $s2, -1
	st.d	$a5, $sp, 16                    # 8-byte Folded Spill
	ori	$a6, $zero, 2
	ori	$a7, $zero, 45
	ori	$t0, $zero, 1
	b	.LBB0_6
	.p2align	4, , 16
.LBB0_5:                                # %for.end120
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a5, $a3, 0
	add.w	$a0, $t2, $a0
	ldx.b	$t2, $s2, $a0
	addi.d	$t3, $a5, -1
	st.d	$t3, $a3, 0
	st.b	$t2, $a5, -1
	addi.w	$t5, $t6, 1
	move	$s4, $t1
	bge	$t6, $a2, .LBB0_36
.LBB0_6:                                # %for.body12
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_20 Depth 2
                                        #       Child Loop BB0_21 Depth 3
                                        #     Child Loop BB0_13 Depth 2
                                        #       Child Loop BB0_14 Depth 3
                                        #     Child Loop BB0_26 Depth 2
                                        #     Child Loop BB0_29 Depth 2
                                        #     Child Loop BB0_35 Depth 2
	addi.w	$t3, $s4, 0
	slli.d	$t1, $t3, 3
	ldx.d	$t1, $s1, $t1
	addi.w	$t4, $a0, 0
	slli.d	$t2, $t4, 2
	ldx.w	$t2, $t1, $t2
	bge	$a1, $t2, .LBB0_9
# %bb.7:                                # %if.else
                                        #   in Loop: Header=BB0_6 Depth=1
	beqz	$t2, .LBB0_16
# %bb.8:                                # %if.then30
                                        #   in Loop: Header=BB0_6 Depth=1
	sub.w	$t1, $s4, $t2
	b	.LBB0_17
	.p2align	4, , 16
.LBB0_9:                                # %if.then
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.w	$t1, $s4, -1
	sub.w	$t7, $s4, $t1
	bge	$t7, $a6, .LBB0_18
.LBB0_10:                               # %for.cond69.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	sub.w	$t7, $zero, $t2
	bge	$t0, $t7, .LBB0_24
.LBB0_11:                               # %for.cond74.preheader.lr.ph
                                        #   in Loop: Header=BB0_6 Depth=1
	bltz	$s0, .LBB0_28
# %bb.12:                               # %for.cond74.preheader.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	ori	$t6, $zero, 1
	.p2align	4, , 16
.LBB0_13:                               # %for.cond74.preheader
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_14 Depth 3
	move	$t8, $a4
	move	$s4, $s3
	.p2align	4, , 16
.LBB0_14:                               # %for.body78
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a5, $s4, 0
	addi.d	$s5, $a5, -1
	st.d	$s5, $s4, 0
	st.b	$a7, $a5, -1
	addi.d	$t8, $t8, -1
	addi.d	$s4, $s4, 8
	bnez	$t8, .LBB0_14
# %bb.15:                               # %for.cond74.for.end85_crit_edge
                                        #   in Loop: Header=BB0_13 Depth=2
	ld.d	$a5, $a3, 0
	addi.d	$t8, $a5, -1
	st.d	$t8, $a3, 0
	sub.d	$t8, $t4, $t6
	ldx.b	$t8, $s2, $t8
	addi.d	$t6, $t6, 1
	st.b	$t8, $a5, -1
	bne	$t6, $t7, .LBB0_13
	b	.LBB0_30
	.p2align	4, , 16
.LBB0_16:                               # %if.else37
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.w	$t1, $s4, -1
.LBB0_17:                               # %if.end40
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$t2, $a1
	sub.w	$t7, $s4, $t1
	blt	$t7, $a6, .LBB0_10
.LBB0_18:                               # %for.cond46.preheader.lr.ph
                                        #   in Loop: Header=BB0_6 Depth=1
	nor	$t6, $t1, $zero
	add.d	$t5, $s4, $t5
	bge	$a1, $s0, .LBB0_25
# %bb.19:                               # %for.cond46.preheader.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	ori	$t8, $zero, 1
	.p2align	4, , 16
.LBB0_20:                               # %for.cond46.preheader
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_21 Depth 3
	sub.d	$s4, $t3, $t8
	move	$s5, $a4
	move	$s6, $fp
	move	$s7, $s3
	.p2align	4, , 16
.LBB0_21:                               # %for.body50
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s8, $s6, 0
	ld.d	$ra, $s7, 0
	ldx.b	$s8, $s8, $s4
	addi.d	$a5, $ra, -1
	st.d	$a5, $s7, 0
	st.b	$s8, $ra, -1
	addi.d	$s7, $s7, 8
	addi.d	$s5, $s5, -1
	addi.d	$s6, $s6, 8
	bnez	$s5, .LBB0_21
# %bb.22:                               # %for.cond46.for.end60_crit_edge
                                        #   in Loop: Header=BB0_20 Depth=2
	ld.d	$a5, $a3, 0
	addi.d	$s4, $a5, -1
	st.d	$s4, $a3, 0
	addi.d	$t8, $t8, 1
	st.b	$a7, $a5, -1
	bne	$t8, $t7, .LBB0_20
# %bb.23:                               # %for.cond69.preheader.loopexit95
                                        #   in Loop: Header=BB0_6 Depth=1
	add.w	$t5, $t6, $t5
	sub.w	$t7, $zero, $t2
	blt	$t0, $t7, .LBB0_11
.LBB0_24:                               #   in Loop: Header=BB0_6 Depth=1
	move	$t6, $t5
	b	.LBB0_31
.LBB0_25:                               # %for.cond46.preheader.us.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	add.d	$t7, $t6, $s4
	.p2align	4, , 16
.LBB0_26:                               # %for.cond46.preheader.us
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t8, $a3, 0
	addi.d	$s4, $t8, -1
	st.d	$s4, $a3, 0
	addi.w	$t7, $t7, -1
	st.b	$a7, $t8, -1
	bnez	$t7, .LBB0_26
# %bb.27:                               # %for.cond69.preheader.thread
                                        #   in Loop: Header=BB0_6 Depth=1
	add.w	$t5, $t6, $t5
	sub.w	$t7, $zero, $t2
	move	$t6, $t5
	bge	$t0, $t7, .LBB0_31
.LBB0_28:                               # %for.cond74.preheader.us.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	add.d	$t6, $a5, $t4
	addi.d	$t7, $t7, -1
	.p2align	4, , 16
.LBB0_29:                               # %for.cond74.preheader.us
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t8, $a3, 0
	addi.d	$s4, $t8, -1
	st.d	$s4, $a3, 0
	ld.b	$s4, $t6, 0
	st.b	$s4, $t8, -1
	addi.d	$t7, $t7, -1
	addi.d	$t6, $t6, -1
	bnez	$t7, .LBB0_29
.LBB0_30:                               # %for.end99.loopexit94
                                        #   in Loop: Header=BB0_6 Depth=1
	nor	$a5, $t2, $zero
	add.w	$t6, $t5, $a5
.LBB0_31:                               # %for.end99
                                        #   in Loop: Header=BB0_6 Depth=1
	blt	$t3, $t0, .LBB0_36
# %bb.32:                               # %for.end99
                                        #   in Loop: Header=BB0_6 Depth=1
	blt	$t4, $t0, .LBB0_36
# %bb.33:                               # %for.cond106.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	bltz	$s0, .LBB0_5
# %bb.34:                               # %for.body110.lr.ph
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$t3, $a4
	move	$t4, $fp
	move	$t5, $s3
	.p2align	4, , 16
.LBB0_35:                               # %for.body110
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $t4, 0
	ld.d	$t7, $t5, 0
	ldx.b	$a5, $a5, $t1
	addi.d	$t8, $t7, -1
	st.d	$t8, $t5, 0
	st.b	$a5, $t7, -1
	addi.d	$t5, $t5, 8
	addi.d	$t3, $t3, -1
	addi.d	$t4, $t4, 8
	bnez	$t3, .LBB0_35
	b	.LBB0_5
.LBB0_36:                               # %for.end128
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
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
.Lfunc_end0:
	.size	tracking, .Lfunc_end0-tracking
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function Calignm1
.LCPI1_0:
	.dword	0x3ff199999999999a              # double 1.1000000000000001
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI1_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI1_3:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI1_2:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.text
	.globl	Calignm1
	.p2align	5
	.type	Calignm1,@function
Calignm1:                               # @Calignm1
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -512
	st.d	$ra, $sp, 504                   # 8-byte Folded Spill
	st.d	$fp, $sp, 496                   # 8-byte Folded Spill
	st.d	$s0, $sp, 488                   # 8-byte Folded Spill
	st.d	$s1, $sp, 480                   # 8-byte Folded Spill
	st.d	$s2, $sp, 472                   # 8-byte Folded Spill
	st.d	$s3, $sp, 464                   # 8-byte Folded Spill
	st.d	$s4, $sp, 456                   # 8-byte Folded Spill
	st.d	$s5, $sp, 448                   # 8-byte Folded Spill
	st.d	$s6, $sp, 440                   # 8-byte Folded Spill
	st.d	$s7, $sp, 432                   # 8-byte Folded Spill
	st.d	$s8, $sp, 424                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 416                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 408                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 400                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 392                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 384                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 376                  # 8-byte Folded Spill
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	move	$s6, $a1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	addi.d	$a0, $a4, 1
	st.d	$a4, $sp, 120                   # 8-byte Folded Spill
	st.d	$a3, $sp, 128                   # 8-byte Folded Spill
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	bltz	$a4, .LBB1_3
# %bb.1:                                # %for.body.preheader
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.w	$fs0, $zero
	move	$a1, $a3
	.p2align	4, , 16
.LBB1_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a1, 0
	fcvt.d.s	$fa1, $fs0
	fadd.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fs0, $fa0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB1_2
	b	.LBB1_4
.LBB1_3:
	movgr2fr.w	$fs0, $zero
.LBB1_4:                                # %for.end
	ld.d	$a0, $s6, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	pcalau12i	$a0, %pc_hi20(Calignm1.orlgth)
	move	$s4, $a0
	ld.w	$s0, $a0, %pc_lo12(Calignm1.orlgth)
	pcalau12i	$s5, %pc_hi20(Calignm1.orlgth1)
	ld.w	$s1, $s5, %pc_lo12(Calignm1.orlgth1)
	ori	$a0, $zero, 1
	st.d	$fp, $sp, 152                   # 8-byte Folded Spill
	addi.w	$a7, $fp, 0
	addi.w	$a2, $s7, 0
	pcalau12i	$s3, %pc_hi20(Calignm1.v)
	pcalau12i	$s2, %pc_hi20(Calignm1.g)
	pcalau12i	$s8, %pc_hi20(Calignm1.gl)
	pcalau12i	$a1, %pc_hi20(Calignm1.gs)
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(Calignm1.m)
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(Calignm1.mp)
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(Calignm1.nseq)
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(Calignm1.gvsa)
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(Calignm1.scmx)
	st.d	$s6, $sp, 96                    # 8-byte Folded Spill
	st.d	$s7, $sp, 224                   # 8-byte Folded Spill
	st.d	$a7, $sp, 112                   # 8-byte Folded Spill
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 56                    # 8-byte Folded Spill
	blt	$s0, $a0, .LBB1_17
# %bb.5:                                # %for.end
	blt	$s1, $a0, .LBB1_17
# %bb.6:                                # %for.cond11.preheader
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$a0, $a0, %got_pc_lo12(njob)
	ld.w	$a4, $a0, 0
	bltz	$a4, .LBB1_14
# %bb.7:                                # %for.body15.lr.ph
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(Calignm1.mseq)
	ld.d	$a1, $a1, %pc_lo12(Calignm1.mseq)
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Calignm1.nseq)
	addi.d	$a3, $a4, 1
	ori	$a5, $zero, 7
	bstrpick.d	$a3, $a3, 31, 0
	bltu	$a4, $a5, .LBB1_12
# %bb.8:                                # %for.body15.lr.ph
	sub.d	$a4, $a2, $a1
	ori	$a5, $zero, 64
	bltu	$a4, $a5, .LBB1_12
# %bb.9:                                # %vector.ph
	bstrpick.d	$a0, $a3, 31, 3
	slli.d	$a0, $a0, 3
	addi.d	$a4, $a2, 32
	addi.d	$a5, $a1, 32
	move	$a6, $a0
	.p2align	4, , 16
.LBB1_10:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a5, -32
	xvld	$xr1, $a5, 0
	xvst	$xr0, $a4, -32
	xvst	$xr1, $a4, 0
	addi.d	$a6, $a6, -8
	addi.d	$a4, $a4, 64
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB1_10
# %bb.11:                               # %middle.block
	beq	$a0, $a3, .LBB1_14
.LBB1_12:                               # %for.body15.preheader
	alsl.d	$a2, $a0, $a2, 3
	alsl.d	$a1, $a0, $a1, 3
	sub.d	$a0, $a3, $a0
	.p2align	4, , 16
.LBB1_13:                               # %for.body15
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 0
	st.d	$a3, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB1_13
.LBB1_14:                               # %if.end
	blt	$s0, $a7, .LBB1_16
# %bb.15:                               # %if.end
	addi.w	$a0, $s7, 0
	bge	$s1, $a0, .LBB1_28
.LBB1_16:                               # %if.then33
	ld.d	$a0, $s3, %pc_lo12(Calignm1.v)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(Calignm1.g)
	pcaddu18i	$ra, %call36(FreeFloatCub)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, %pc_lo12(Calignm1.gl)
	pcaddu18i	$ra, %call36(FreeFloatTri)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Calignm1.gs)
	pcaddu18i	$ra, %call36(FreeFloatTri)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Calignm1.m)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Calignm1.mp)
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(Calignm1.mseq)
	ld.d	$a0, $a0, %pc_lo12(Calignm1.mseq)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Calignm1.gvsa)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(Calignm1.scmx)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.w	$s0, $s4, %pc_lo12(Calignm1.orlgth)
	ld.w	$s1, $s5, %pc_lo12(Calignm1.orlgth1)
	b	.LBB1_19
.LBB1_17:                               # %if.end.thread
	blt	$s0, $a7, .LBB1_19
# %bb.18:                               # %if.end.thread
	bge	$s1, $a2, .LBB1_28
.LBB1_19:                               # %if.end34
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI1_0)
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	slt	$a1, $a0, $s0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s0, $a1
	or	$a0, $a1, $a0
	movgr2fr.w	$fa1, $s7
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	slt	$a2, $a1, $s1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s1, $a2
	or	$s1, $a2, $a1
	slt	$a1, $s1, $a0
	masknez	$a2, $s1, $a1
	maskeqz	$a0, $a0, $a1
	or	$s0, $a0, $a2
	addi.w	$s6, $s0, 2
	addi.w	$a1, $s1, 2
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, %pc_lo12(Calignm1.v)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 3
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatCub)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, %pc_lo12(Calignm1.g)
	addi.w	$s7, $s0, 3
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatTri)
	jirl	$ra, $ra, 0
	st.d	$a0, $s8, %pc_lo12(Calignm1.gl)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatTri)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Calignm1.gs)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Calignm1.m)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(njob)
	ld.d	$s3, $a1, %got_pc_lo12(njob)
	ld.w	$a1, $s3, 0
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(Calignm1.mp)
	addi.w	$a0, $a1, 1
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 0
	pcalau12i	$s2, %pc_hi20(Calignm1.mseq)
	st.d	$a0, $s2, %pc_lo12(Calignm1.mseq)
	addi.w	$a0, $a1, 1
	add.w	$a1, $s0, $s1
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a4, $s3, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Calignm1.nseq)
	bltz	$a4, .LBB1_27
# %bb.20:                               # %for.body94.lr.ph
	move	$a1, $zero
	ld.d	$a2, $s2, %pc_lo12(Calignm1.mseq)
	addi.d	$a3, $a4, 1
	ori	$a5, $zero, 7
	bstrpick.d	$a3, $a3, 31, 0
	bltu	$a4, $a5, .LBB1_25
# %bb.21:                               # %for.body94.lr.ph
	sub.d	$a4, $a2, $a0
	ori	$a5, $zero, 64
	bltu	$a4, $a5, .LBB1_25
# %bb.22:                               # %vector.ph507
	bstrpick.d	$a1, $a3, 31, 3
	slli.d	$a1, $a1, 3
	addi.d	$a4, $a2, 32
	addi.d	$a5, $a0, 32
	move	$a6, $a1
	.p2align	4, , 16
.LBB1_23:                               # %vector.body510
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a5, -32
	xvld	$xr1, $a5, 0
	xvst	$xr0, $a4, -32
	xvst	$xr1, $a4, 0
	addi.d	$a6, $a6, -8
	addi.d	$a4, $a4, 64
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB1_23
# %bb.24:                               # %middle.block515
	beq	$a1, $a3, .LBB1_27
.LBB1_25:                               # %for.body94.preheader
	alsl.d	$a2, $a1, $a2, 3
	alsl.d	$a0, $a1, $a0, 3
	sub.d	$a1, $a3, $a1
	.p2align	4, , 16
.LBB1_26:                               # %for.body94
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	st.d	$a3, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB1_26
.LBB1_27:                               # %for.end101
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Calignm1.gvsa)
	ori	$a0, $zero, 26
	move	$a1, $s6
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, %pc_lo12(Calignm1.scmx)
	st.w	$s0, $s4, %pc_lo12(Calignm1.orlgth)
	st.w	$s1, $s5, %pc_lo12(Calignm1.orlgth1)
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 224                   # 8-byte Folded Reload
.LBB1_28:                               # %if.end106
	pcalau12i	$a0, %got_pc_hi20(commonAlloc1)
	ld.d	$s2, $a0, %got_pc_lo12(commonAlloc1)
	pcalau12i	$a0, %got_pc_hi20(commonAlloc2)
	ld.d	$s3, $a0, %got_pc_lo12(commonAlloc2)
	ld.w	$a1, $s2, 0
	ld.w	$a0, $s3, 0
	st.d	$s8, $sp, 32                    # 8-byte Folded Spill
	blt	$a1, $s0, .LBB1_31
# %bb.29:                               # %if.end106
	blt	$a0, $s1, .LBB1_31
# %bb.30:                               # %lor.lhs.false109.if.end134_crit_edge
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	b	.LBB1_35
.LBB1_31:                               # %if.then112
	beqz	$a1, .LBB1_34
# %bb.32:                               # %if.then112
	beqz	$a0, .LBB1_34
# %bb.33:                               # %if.then117
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	ld.w	$s0, $s4, %pc_lo12(Calignm1.orlgth)
	ld.w	$a0, $s3, 0
	ld.w	$s1, $s5, %pc_lo12(Calignm1.orlgth1)
.LBB1_34:                               # %if.end118
	slt	$a2, $s0, $a1
	masknez	$a3, $s0, $a2
	maskeqz	$a1, $a1, $a2
	or	$s0, $a1, $a3
	slt	$a1, $s1, $a0
	masknez	$a2, $s1, $a1
	maskeqz	$a0, $a0, $a1
	or	$s1, $a0, $a2
	addi.w	$a0, $s0, 10
	addi.w	$a1, $s1, 10
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(commonIP)
	ld.d	$a1, $a1, %got_pc_lo12(commonIP)
	st.d	$a0, $a1, 0
	st.w	$s0, $s2, 0
	st.w	$s1, $s3, 0
.LBB1_35:                               # %if.end134
	ld.d	$a3, $fp, %pc_lo12(Calignm1.scmx)
	pcalau12i	$a1, %pc_hi20(Calignm1.ijp)
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	st.d	$a0, $a1, %pc_lo12(Calignm1.ijp)
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	move	$a1, $s6
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(scmx_calc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	bstrpick.d	$a0, $s7, 30, 0
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	blt	$a0, $a1, .LBB1_43
# %bb.36:                               # %for.body138.lr.ph
	ld.d	$a0, $fp, %pc_lo12(Calignm1.scmx)
	move	$a1, $zero
	ld.d	$a2, $a0, 0
	st.d	$a2, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a2, $a0, 8
	st.d	$a2, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a2, $a0, 16
	st.d	$a2, $sp, 248                   # 8-byte Folded Spill
	ld.d	$a2, $a0, 24
	st.d	$a2, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a2, $a0, 32
	st.d	$a2, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a2, $a0, 40
	st.d	$a2, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a2, $a0, 48
	st.d	$a2, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a2, $a0, 56
	st.d	$a2, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a2, $a0, 64
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a2, $a0, 72
	st.d	$a2, $sp, 176                   # 8-byte Folded Spill
	ld.d	$t4, $a0, 80
	ld.d	$t5, $a0, 88
	ld.d	$t6, $a0, 96
	ld.d	$t7, $a0, 104
	ld.d	$t8, $a0, 112
	ld.d	$fp, $a0, 120
	ld.d	$s0, $a0, 128
	ld.d	$s1, $a0, 136
	ld.d	$s2, $a0, 144
	ld.d	$s3, $a0, 152
	ld.d	$s5, $a0, 160
	ld.d	$s6, $a0, 168
	ld.d	$s7, $a0, 176
	ld.d	$ra, $a0, 184
	ld.d	$s4, $a0, 192
	ld.d	$s8, $a0, 200
	pcalau12i	$a0, %got_pc_hi20(n_dis)
	ld.d	$a0, $a0, %got_pc_lo12(n_dis)
	movgr2fr.w	$fa0, $zero
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Calignm1.v)
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Calignm1.gvsa)
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	bstrpick.d	$a3, $a3, 30, 0
	addi.d	$a4, $sp, 272
	ori	$a5, $zero, 104
	b	.LBB1_38
	.p2align	4, , 16
.LBB1_37:                               # %for.end184
                                        #   in Loop: Header=BB1_38 Depth=1
	fld.s	$fa1, $sp, 368
	addi.d	$a1, $a1, 1
	fstx.s	$fa1, $a2, $a6
	beq	$a1, $a3, .LBB1_43
.LBB1_38:                               # %for.body138
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_39 Depth 2
                                        #     Child Loop BB1_42 Depth 2
	slli.d	$a6, $a1, 2
	ld.d	$a7, $sp, 264                   # 8-byte Folded Reload
	fldx.s	$fa1, $a7, $a6
	ld.d	$a7, $sp, 256                   # 8-byte Folded Reload
	fldx.s	$fa2, $a7, $a6
	ld.d	$a7, $sp, 248                   # 8-byte Folded Reload
	fldx.s	$fa3, $a7, $a6
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	fldx.s	$fa4, $a7, $a6
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	fldx.s	$fa5, $a7, $a6
	ld.d	$a7, $sp, 208                   # 8-byte Folded Reload
	fldx.s	$fa6, $a7, $a6
	ld.d	$a7, $sp, 200                   # 8-byte Folded Reload
	fldx.s	$fa7, $a7, $a6
	ld.d	$a7, $sp, 192                   # 8-byte Folded Reload
	fldx.s	$ft0, $a7, $a6
	ld.d	$a7, $sp, 184                   # 8-byte Folded Reload
	fldx.s	$ft1, $a7, $a6
	ld.d	$a7, $sp, 176                   # 8-byte Folded Reload
	fldx.s	$ft2, $a7, $a6
	fldx.s	$ft3, $t4, $a6
	fldx.s	$ft4, $t5, $a6
	fldx.s	$ft5, $t6, $a6
	fldx.s	$ft6, $t7, $a6
	fldx.s	$ft7, $t8, $a6
	fldx.s	$ft8, $fp, $a6
	fldx.s	$ft9, $s0, $a6
	fldx.s	$ft10, $s1, $a6
	fldx.s	$ft11, $s2, $a6
	fldx.s	$ft12, $s3, $a6
	fldx.s	$ft13, $s5, $a6
	fldx.s	$ft14, $s6, $a6
	fldx.s	$ft15, $s7, $a6
	fldx.s	$fs1, $ra, $a6
	fldx.s	$fs2, $s4, $a6
	fldx.s	$fs3, $s8, $a6
	move	$a7, $zero
	.p2align	4, , 16
.LBB1_39:                               # %for.body142
                                        #   Parent Loop BB1_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$t1, $a0, $a7
	add.d	$t0, $a0, $a7
	ld.w	$t2, $t0, 104
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs4, $fs4, $fa1, $fa0
	movgr2fr.w	$fs5, $t2
	ld.w	$t1, $t0, 208
	ffint.s.w	$fs5, $fs5
	fmadd.s	$fs4, $fs5, $fa2, $fs4
	ld.w	$t2, $t0, 312
	movgr2fr.w	$fs5, $t1
	ffint.s.w	$fs5, $fs5
	fmadd.s	$fs4, $fs5, $fa3, $fs4
	movgr2fr.w	$fs5, $t2
	ld.w	$t1, $t0, 416
	ffint.s.w	$fs5, $fs5
	fmadd.s	$fs4, $fs5, $fa4, $fs4
	ld.w	$t2, $t0, 520
	movgr2fr.w	$fs5, $t1
	ffint.s.w	$fs5, $fs5
	fmadd.s	$fs4, $fs5, $fa5, $fs4
	movgr2fr.w	$fs5, $t2
	ld.w	$t1, $t0, 624
	ffint.s.w	$fs5, $fs5
	fmadd.s	$fs4, $fs5, $fa6, $fs4
	ld.w	$t2, $t0, 728
	movgr2fr.w	$fs5, $t1
	ffint.s.w	$fs5, $fs5
	fmadd.s	$fs4, $fs5, $fa7, $fs4
	movgr2fr.w	$fs5, $t2
	ld.w	$t1, $t0, 832
	ffint.s.w	$fs5, $fs5
	fmadd.s	$fs4, $fs5, $ft0, $fs4
	ld.w	$t2, $t0, 936
	movgr2fr.w	$fs5, $t1
	ffint.s.w	$fs5, $fs5
	fmadd.s	$fs4, $fs5, $ft1, $fs4
	movgr2fr.w	$fs5, $t2
	ld.w	$t1, $t0, 1040
	ffint.s.w	$fs5, $fs5
	fmadd.s	$fs4, $fs5, $ft2, $fs4
	ld.w	$t2, $t0, 1144
	movgr2fr.w	$fs5, $t1
	ffint.s.w	$fs5, $fs5
	fmadd.s	$fs4, $fs5, $ft3, $fs4
	movgr2fr.w	$fs5, $t2
	ld.w	$t1, $t0, 1248
	ffint.s.w	$fs5, $fs5
	fmadd.s	$fs4, $fs5, $ft4, $fs4
	ld.w	$t2, $t0, 1352
	movgr2fr.w	$fs5, $t1
	ffint.s.w	$fs5, $fs5
	fmadd.s	$fs4, $fs5, $ft5, $fs4
	movgr2fr.w	$fs5, $t2
	ld.w	$t1, $t0, 1456
	ffint.s.w	$fs5, $fs5
	fmadd.s	$fs4, $fs5, $ft6, $fs4
	ld.w	$t2, $t0, 1560
	movgr2fr.w	$fs5, $t1
	ffint.s.w	$fs5, $fs5
	fmadd.s	$fs4, $fs5, $ft7, $fs4
	movgr2fr.w	$fs5, $t2
	ld.w	$t1, $t0, 1664
	ffint.s.w	$fs5, $fs5
	fmadd.s	$fs4, $fs5, $ft8, $fs4
	ld.w	$t2, $t0, 1768
	movgr2fr.w	$fs5, $t1
	ffint.s.w	$fs5, $fs5
	fmadd.s	$fs4, $fs5, $ft9, $fs4
	movgr2fr.w	$fs5, $t2
	ld.w	$t1, $t0, 1872
	ffint.s.w	$fs5, $fs5
	fmadd.s	$fs4, $fs5, $ft10, $fs4
	ld.w	$t2, $t0, 1976
	movgr2fr.w	$fs5, $t1
	ffint.s.w	$fs5, $fs5
	fmadd.s	$fs4, $fs5, $ft11, $fs4
	movgr2fr.w	$fs5, $t2
	ldptr.w	$t1, $t0, 2080
	ffint.s.w	$fs5, $fs5
	fmadd.s	$fs4, $fs5, $ft12, $fs4
	ldptr.w	$t2, $t0, 2184
	movgr2fr.w	$fs5, $t1
	ffint.s.w	$fs5, $fs5
	fmadd.s	$fs4, $fs5, $ft13, $fs4
	movgr2fr.w	$fs5, $t2
	ldptr.w	$t1, $t0, 2288
	ffint.s.w	$fs5, $fs5
	fmadd.s	$fs4, $fs5, $ft14, $fs4
	ldptr.w	$t2, $t0, 2392
	movgr2fr.w	$fs5, $t1
	ffint.s.w	$fs5, $fs5
	fmadd.s	$fs4, $fs5, $ft15, $fs4
	movgr2fr.w	$fs5, $t2
	ldptr.w	$t1, $t0, 2496
	ffint.s.w	$fs5, $fs5
	fmadd.s	$fs4, $fs5, $fs1, $fs4
	ldptr.w	$t0, $t0, 2600
	movgr2fr.w	$fs5, $t1
	ffint.s.w	$fs5, $fs5
	fmadd.s	$fs4, $fs5, $fs2, $fs4
	movgr2fr.w	$fs5, $t0
	ffint.s.w	$fs5, $fs5
	fmadd.s	$fs4, $fs5, $fs3, $fs4
	fstx.s	$fs4, $a7, $a4
	addi.d	$a7, $a7, 4
	bne	$a7, $a5, .LBB1_39
# %bb.40:                               # %for.cond167.preheader
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.d	$a7, $sp, 224                   # 8-byte Folded Reload
	addi.w	$a7, $a7, 0
	ori	$t0, $zero, 1
	blt	$a7, $t0, .LBB1_37
# %bb.41:                               # %for.body170.lr.ph
                                        #   in Loop: Header=BB1_38 Depth=1
	slli.d	$a7, $a1, 3
	ld.d	$t0, $sp, 160                   # 8-byte Folded Reload
	ldx.d	$a7, $t0, $a7
	ld.d	$t0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 168                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_42:                               # %for.body170
                                        #   Parent Loop BB1_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$t2, $t1, 0
	pcalau12i	$t3, %got_pc_hi20(amino_n)
	ld.d	$t3, $t3, %got_pc_lo12(amino_n)
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $t3, $t2
	slli.d	$t2, $t2, 2
	fldx.s	$fa1, $t2, $a4
	fst.s	$fa1, $a7, 0
	addi.d	$a7, $a7, 4
	addi.d	$t0, $t0, -1
	addi.d	$t1, $t1, 1
	bnez	$t0, .LBB1_42
	b	.LBB1_37
.LBB1_43:                               # %for.cond191.preheader
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	addi.d	$s5, $a0, 1
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	slli.d	$t6, $fp, 32
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	bltz	$s0, .LBB1_51
# %bb.44:                               # %for.body195.lr.ph
	ld.d	$a1, $s3, %pc_lo12(Calignm1.v)
	bstrpick.d	$a2, $s5, 31, 0
	ori	$a3, $zero, 8
	srai.d	$a0, $t6, 30
	bgeu	$a2, $a3, .LBB1_46
# %bb.45:
	move	$a3, $zero
	b	.LBB1_49
.LBB1_46:                               # %vector.ph520
	bstrpick.d	$a3, $s5, 31, 3
	slli.d	$a3, $a3, 3
	addi.d	$a4, $a1, 32
	move	$a5, $a3
	.p2align	4, , 16
.LBB1_47:                               # %vector.body523
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a4, -32
	ld.d	$a7, $a4, -24
	ld.d	$t0, $a4, -16
	ld.d	$t1, $a4, -8
	ld.d	$t2, $a4, 0
	ld.d	$t3, $a4, 8
	ld.d	$t4, $a4, 16
	ld.d	$t5, $a4, 24
	stx.w	$zero, $a6, $a0
	stx.w	$zero, $a7, $a0
	stx.w	$zero, $t0, $a0
	stx.w	$zero, $t1, $a0
	stx.w	$zero, $t2, $a0
	stx.w	$zero, $t3, $a0
	stx.w	$zero, $t4, $a0
	stx.w	$zero, $t5, $a0
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB1_47
# %bb.48:                               # %middle.block528
	beq	$a2, $a3, .LBB1_51
.LBB1_49:                               # %for.body195.preheader
	alsl.d	$a1, $a3, $a1, 3
	sub.d	$a2, $a2, $a3
	.p2align	4, , 16
.LBB1_50:                               # %for.body195
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 0
	stx.w	$zero, $a3, $a0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB1_50
.LBB1_51:                               # %for.cond203.preheader
	st.d	$t6, $sp, 8                     # 8-byte Folded Spill
	addi.w	$a0, $zero, -1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	slli.d	$s7, $a1, 32
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	bge	$a0, $s1, .LBB1_53
# %bb.52:                               # %for.body207.lr.ph
	ld.d	$a0, $s3, %pc_lo12(Calignm1.v)
	srai.d	$a1, $s7, 29
	ldx.d	$a0, $a0, $a1
	slli.d	$a1, $fp, 2
	addi.d	$a1, $a1, 4
	bstrpick.d	$a1, $a1, 33, 2
	slli.d	$a2, $a1, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB1_53:                               # %for.end214
	ld.d	$t8, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s8, $a0, %pc_lo12(Calignm1.gvsa)
	srai.d	$a0, $s7, 30
	stx.w	$zero, $s8, $a0
	ld.d	$t7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
	bltz	$s0, .LBB1_56
# %bb.54:                               # %for.cond222.preheader.lr.ph
	ld.d	$a0, $s2, %pc_lo12(Calignm1.g)
	bstrpick.d	$a1, $s5, 31, 0
	.p2align	4, , 16
.LBB1_55:                               # %for.cond222.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a2, 0
	st.w	$zero, $a3, 8
	st.d	$zero, $a3, 0
	ld.d	$a3, $a2, 8
	st.w	$zero, $a3, 8
	st.d	$zero, $a3, 0
	ld.d	$a2, $a2, 16
	st.w	$zero, $a2, 8
	st.d	$zero, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB1_55
.LBB1_56:                               # %for.cond245.preheader
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	bltz	$a0, .LBB1_62
# %bb.57:                               # %for.body249.lr.ph
	pcalau12i	$a0, %got_pc_hi20(penalty)
	ld.d	$a0, $a0, %got_pc_lo12(penalty)
	ld.w	$a1, $a0, 0
	move	$a0, $zero
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	ld.d	$a1, $s2, %pc_lo12(Calignm1.g)
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	bstrpick.d	$a2, $a2, 31, 0
	bstrpick.d	$a3, $s6, 31, 0
	bstrpick.d	$a4, $s5, 31, 0
	movgr2fr.w	$fa1, $zero
	b	.LBB1_59
	.p2align	4, , 16
.LBB1_58:                               # %for.inc341
                                        #   in Loop: Header=BB1_59 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $a3, .LBB1_62
.LBB1_59:                               # %for.body249
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_61 Depth 2
	bltz	$s0, .LBB1_58
# %bb.60:                               # %for.body257.lr.ph
                                        #   in Loop: Header=BB1_59 Depth=1
	slli.d	$a5, $a0, 3
	fldx.d	$fa2, $s4, $a5
	ldx.d	$a5, $t7, $a5
	move	$t1, $zero
	fcvt.s.d	$fa2, $fa2
	fmul.s	$fa3, $fa2, $fa1
	move	$a6, $a4
	move	$a7, $a1
	move	$t0, $a2
	.p2align	4, , 16
.LBB1_61:                               # %for.body257
                                        #   Parent Loop BB1_59 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$t2, $a5, 0
	andi	$t2, $t2, 255
	addi.d	$t2, $t2, -45
	sltui	$t2, $t2, 1
	ld.d	$t3, $a7, 0
	sltu	$t4, $zero, $t0
	and	$t2, $t4, $t2
	xori	$t4, $t1, 1
	ld.d	$t5, $t3, 0
	bstrpick.d	$t6, $t4, 31, 0
	movgr2fr.d	$fa4, $t6
	ffint.s.l	$fa4, $fa4
	movgr2cf	$fcc0, $t2
	fld.s	$fa5, $t5, 0
	fsel	$fa6, $fa1, $fa4, $fcc0
	ld.d	$t6, $t3, 8
	fmul.s	$fa6, $fa6, $fa2
	fmadd.s	$fa5, $fa6, $fa0, $fa5
	fst.s	$fa5, $t5, 0
	fld.s	$fa5, $t6, 0
	ld.d	$t3, $t3, 16
	fmadd.s	$fa5, $fa3, $fa0, $fa5
	fst.s	$fa5, $t6, 0
	fld.s	$fa5, $t3, 0
	fmadd.s	$fa5, $fa3, $fa0, $fa5
	fst.s	$fa5, $t3, 0
	add.d	$t1, $t4, $t1
	bstrpick.d	$t1, $t1, 31, 0
	movgr2fr.d	$fa5, $t1
	fld.s	$fa6, $t5, 4
	ffint.s.l	$fa5, $fa5
	fsel	$fa5, $fa5, $fa1, $fcc0
	fmul.s	$fa5, $fa5, $fa2
	fmadd.s	$fa5, $fa5, $fa0, $fa6
	fst.s	$fa5, $t5, 4
	fld.s	$fa5, $t6, 4
	fmadd.s	$fa5, $fa3, $fa0, $fa5
	fst.s	$fa5, $t6, 4
	fld.s	$fa5, $t5, 8
	fmul.s	$fa4, $fa2, $fa4
	fmadd.s	$fa4, $fa4, $fa0, $fa5
	fst.s	$fa4, $t5, 8
	fld.s	$fa4, $t3, 8
	move	$t1, $t2
	addi.d	$t0, $t0, -1
	fmadd.s	$fa4, $fa3, $fa0, $fa4
	fst.s	$fa4, $t3, 8
	addi.d	$a7, $a7, 8
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, 1
	bnez	$a6, .LBB1_61
	b	.LBB1_58
.LBB1_62:                               # %for.cond344.preheader
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Calignm1.gs)
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	addi.w	$a2, $a0, 2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	blt	$s0, $a0, .LBB1_78
# %bb.63:                               # %for.cond349.preheader.lr.ph
	move	$a0, $zero
	ld.d	$a1, $t8, %pc_lo12(Calignm1.gl)
	ori	$a3, $zero, 1
	slt	$a4, $a3, $a2
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a2, $a4
	or	$a3, $a4, $a3
	ori	$a4, $zero, 2
	ori	$a5, $zero, 4
	ori	$a6, $zero, 63
	ori	$a7, $zero, 16
	vrepli.b	$vr0, 0
	xvrepli.b	$xr1, 0
	b	.LBB1_65
	.p2align	4, , 16
.LBB1_64:                               # %for.cond344.loopexit
                                        #   in Loop: Header=BB1_65 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a4, $a4, 1
	beq	$a0, $a3, .LBB1_78
.LBB1_65:                               # %iter.check
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_70 Depth 2
                                        #     Child Loop BB1_74 Depth 2
                                        #     Child Loop BB1_77 Depth 2
	slli.d	$t1, $a0, 3
	ldx.d	$t0, $a1, $t1
	ld.d	$t2, $sp, 240                   # 8-byte Folded Reload
	ldx.d	$t2, $t2, $t1
	move	$t1, $zero
	bltu	$a4, $a5, .LBB1_76
# %bb.66:                               # %iter.check
                                        #   in Loop: Header=BB1_65 Depth=1
	sub.d	$t3, $t2, $t0
	bgeu	$a6, $t3, .LBB1_76
# %bb.67:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB1_65 Depth=1
	bgeu	$a4, $a7, .LBB1_69
# %bb.68:                               #   in Loop: Header=BB1_65 Depth=1
	move	$t1, $zero
	b	.LBB1_73
	.p2align	4, , 16
.LBB1_69:                               # %vector.ph537
                                        #   in Loop: Header=BB1_65 Depth=1
	move	$t3, $a4
	bstrins.d	$t3, $zero, 3, 0
	bstrpick.d	$t1, $a4, 62, 4
	slli.d	$t1, $t1, 4
	addi.d	$t4, $t2, 32
	addi.d	$t5, $t0, 32
	.p2align	4, , 16
.LBB1_70:                               # %vector.body540
                                        #   Parent Loop BB1_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr1, $t5, -32
	xvst	$xr1, $t5, 0
	xvst	$xr1, $t4, -32
	xvst	$xr1, $t4, 0
	addi.d	$t3, $t3, -16
	addi.d	$t4, $t4, 64
	addi.d	$t5, $t5, 64
	bnez	$t3, .LBB1_70
# %bb.71:                               # %middle.block543
                                        #   in Loop: Header=BB1_65 Depth=1
	beq	$a4, $t1, .LBB1_64
# %bb.72:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB1_65 Depth=1
	andi	$t3, $a4, 12
	beqz	$t3, .LBB1_76
.LBB1_73:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB1_65 Depth=1
	move	$t3, $a4
	bstrins.d	$t3, $zero, 1, 0
	bstrpick.d	$t6, $a4, 62, 2
	sub.d	$t3, $t1, $t3
	alsl.d	$t4, $t1, $t2, 2
	alsl.d	$t5, $t1, $t0, 2
	slli.d	$t1, $t6, 2
	.p2align	4, , 16
.LBB1_74:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB1_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $t5, 0
	vst	$vr0, $t4, 0
	addi.d	$t3, $t3, 4
	addi.d	$t4, $t4, 16
	addi.d	$t5, $t5, 16
	bnez	$t3, .LBB1_74
# %bb.75:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB1_65 Depth=1
	beq	$a4, $t1, .LBB1_64
.LBB1_76:                               # %for.body353.preheader
                                        #   in Loop: Header=BB1_65 Depth=1
	alsl.d	$t2, $t1, $t2, 2
	alsl.d	$t0, $t1, $t0, 2
	.p2align	4, , 16
.LBB1_77:                               # %for.body353
                                        #   Parent Loop BB1_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$zero, $t0, 0
	st.w	$zero, $t2, 0
	addi.d	$t1, $t1, 1
	addi.d	$t2, $t2, 4
	addi.d	$t0, $t0, 4
	bne	$a4, $t1, .LBB1_77
	b	.LBB1_64
.LBB1_78:                               # %for.cond368.preheader
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	bltz	$a0, .LBB1_88
# %bb.79:                               # %for.body372.lr.ph
	move	$a0, $zero
	ld.d	$a1, $t8, %pc_lo12(Calignm1.gl)
	pcalau12i	$a3, %got_pc_hi20(penalty)
	ld.d	$a3, $a3, %got_pc_lo12(penalty)
	bstrpick.d	$a4, $s6, 31, 0
	bstrpick.d	$a5, $s5, 31, 0
	ori	$a6, $zero, 45
	b	.LBB1_81
	.p2align	4, , 16
.LBB1_80:                               # %for.inc416
                                        #   in Loop: Header=BB1_81 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $a4, .LBB1_88
.LBB1_81:                               # %for.body372
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_85 Depth 2
	bltz	$s0, .LBB1_80
# %bb.82:                               # %for.body380.lr.ph
                                        #   in Loop: Header=BB1_81 Depth=1
	slli.d	$t0, $a0, 3
	fldx.d	$fa0, $s4, $t0
	ld.w	$t1, $a3, 0
	move	$a7, $zero
	ldx.d	$t0, $t7, $t0
	fcvt.s.d	$fa0, $fa0
	movgr2fr.w	$fa1, $t1
	ffint.s.w	$fa1, $fa1
	addi.d	$t0, $t0, 1
	move	$t1, $a5
	ld.d	$t2, $sp, 240                   # 8-byte Folded Reload
	move	$t3, $a1
	b	.LBB1_85
	.p2align	4, , 16
.LBB1_83:                               #   in Loop: Header=BB1_85 Depth=2
	move	$a7, $zero
.LBB1_84:                               # %for.inc413
                                        #   in Loop: Header=BB1_85 Depth=2
	addi.d	$t3, $t3, 8
	addi.d	$t2, $t2, 8
	addi.d	$t1, $t1, -1
	addi.d	$t0, $t0, 1
	beqz	$t1, .LBB1_80
.LBB1_85:                               # %for.body380
                                        #   Parent Loop BB1_81 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$t4, $t0, -1
	bne	$t4, $a6, .LBB1_83
# %bb.86:                               # %if.then388
                                        #   in Loop: Header=BB1_85 Depth=2
	ld.d	$t5, $t2, 0
	addi.w	$a7, $a7, 1
	slli.d	$t4, $a7, 2
	fldx.s	$fa2, $t5, $t4
	fmadd.s	$fa2, $fa0, $fa1, $fa2
	fstx.s	$fa2, $t5, $t4
	ld.bu	$t5, $t0, 0
	beq	$t5, $a6, .LBB1_84
# %bb.87:                               # %if.then404
                                        #   in Loop: Header=BB1_85 Depth=2
	ld.d	$t5, $t3, 0
	fldx.s	$fa2, $t5, $t4
	fmadd.s	$fa2, $fa0, $fa1, $fa2
	fstx.s	$fa2, $t5, $t4
	b	.LBB1_84
.LBB1_88:                               # %for.cond419.preheader
	bltz	$s0, .LBB1_96
# %bb.89:                               # %for.cond424.preheader.lr.ph
	move	$a0, $zero
	move	$a1, $zero
	ld.d	$a3, $t8, %pc_lo12(Calignm1.gl)
	bstrpick.d	$a4, $s5, 31, 0
	ori	$a5, $zero, 1
	ori	$a6, $zero, 1
	b	.LBB1_91
	.p2align	4, , 16
.LBB1_90:                               # %for.inc457
                                        #   in Loop: Header=BB1_91 Depth=1
	addi.d	$a1, $a1, 1
	addi.d	$a6, $a6, 1
	addi.d	$a0, $a0, 4
	beq	$a1, $a4, .LBB1_96
.LBB1_91:                               # %for.cond424.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_93 Depth 2
                                        #     Child Loop BB1_95 Depth 2
	beqz	$a1, .LBB1_90
# %bb.92:                               # %for.body427.lr.ph
                                        #   in Loop: Header=BB1_91 Depth=1
	slli.d	$a7, $a1, 3
	ld.d	$t0, $sp, 240                   # 8-byte Folded Reload
	ldx.d	$t1, $t0, $a7
	fld.s	$fa0, $t1, 4
	slli.d	$t0, $a1, 2
	addi.d	$t1, $t1, 8
	move	$t2, $a1
	.p2align	4, , 16
.LBB1_93:                               # %for.body427
                                        #   Parent Loop BB1_91 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa1, $t1, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $t1, 0
	addi.d	$t2, $t2, -1
	addi.d	$t1, $t1, 4
	bnez	$t2, .LBB1_93
# %bb.94:                               # %for.body444.lr.ph
                                        #   in Loop: Header=BB1_91 Depth=1
	ldx.d	$a7, $a3, $a7
	add.d	$t0, $a7, $t0
	fld.s	$fa0, $t0, 4
	add.d	$a7, $a7, $a0
	move	$t0, $a6
	.p2align	4, , 16
.LBB1_95:                               # %for.body444
                                        #   Parent Loop BB1_91 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa1, $a7, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a7, 0
	addi.d	$t0, $t0, -1
	addi.d	$a7, $a7, -4
	blt	$a5, $t0, .LBB1_95
	b	.LBB1_90
.LBB1_96:                               # %for.end459
	ld.d	$a4, $s3, %pc_lo12(Calignm1.v)
	ld.d	$a1, $s2, %pc_lo12(Calignm1.g)
	pcalau12i	$a0, %pc_hi20(Calignm1.w)
	st.d	$a4, $a0, %pc_lo12(Calignm1.w)
	ld.d	$a0, $a1, 0
	ld.d	$a0, $a0, 0
	ld.d	$t2, $a4, 0
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $t2, 0
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a1, $a1, 8
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $t2, 0
	ld.d	$a1, $a1, 8
	ld.d	$a3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 8
	fld.s	$fa0, $a0, 4
	st.d	$a4, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a4, $a4, 8
	fld.s	$fa1, $a1, 0
	fld.s	$fa2, $a3, 8
	fld.s	$fa3, $s8, 0
	fld.s	$fa4, $a4, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa0, $fa2
	fadd.s	$fa0, $fa0, $fa3
	fadd.s	$fa0, $fa0, $fa4
	ori	$a3, $zero, 1
	fst.s	$fa0, $a4, 0
	blt	$s0, $a3, .LBB1_99
# %bb.97:                               # %for.body485.lr.ph
	move	$a3, $zero
	ld.d	$a4, $t8, %pc_lo12(Calignm1.gl)
	ori	$a5, $zero, 3
	slt	$a6, $a5, $a2
	masknez	$a5, $a5, $a6
	maskeqz	$a2, $a2, $a6
	or	$t0, $a2, $a5
	addi.d	$a2, $s8, 4
	ld.d	$a5, $sp, 208                   # 8-byte Folded Reload
	addi.d	$a5, $a5, 16
	ld.d	$a6, $sp, 240                   # 8-byte Folded Reload
	addi.d	$a6, $a6, 16
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	addi.d	$a7, $a7, 16
	slli.d	$t0, $t0, 2
	addi.d	$t0, $t0, -8
	movgr2fr.w	$fa0, $zero
	.p2align	4, , 16
.LBB1_98:                               # %for.body485
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t1, $a4, 0
	fld.s	$fa1, $a1, 4
	add.d	$a1, $t1, $a3
	fld.s	$fa2, $a1, 4
	fldx.s	$fa3, $a2, $a3
	fadd.s	$fa1, $fa1, $fa2
	fadd.s	$fa1, $fa1, $fa3
	ld.d	$a1, $a5, 0
	ld.d	$t1, $a6, 0
	fld.s	$fa2, $a0, 4
	fld.s	$fa3, $s8, 0
	ld.d	$a1, $a1, 8
	add.d	$t1, $t1, $a3
	fld.s	$fa4, $t1, 12
	ld.d	$t1, $a7, 0
	fadd.s	$fa0, $fa0, $fa1
	fld.s	$fa1, $a1, 0
	fadd.s	$fa2, $fa2, $fa3
	fld.s	$fa3, $t1, 0
	fadd.s	$fa2, $fa0, $fa2
	fadd.s	$fa1, $fa2, $fa1
	fadd.s	$fa1, $fa1, $fa4
	fadd.s	$fa1, $fa1, $fa3
	fst.s	$fa1, $t1, 0
	addi.d	$a3, $a3, 4
	addi.d	$a5, $a5, 8
	addi.d	$a6, $a6, 8
	addi.d	$a7, $a7, 8
	addi.d	$a4, $a4, 8
	bne	$t0, $a3, .LBB1_98
.LBB1_99:                               # %for.end525
	pcalau12i	$a0, %got_pc_hi20(penalty)
	ld.d	$a0, $a0, %got_pc_lo12(penalty)
	pcalau12i	$a1, %got_pc_hi20(n_dis)
	ld.d	$s2, $a1, %got_pc_lo12(n_dis)
	ld.w	$a0, $a0, 0
	ldptr.w	$a1, $s2, 2496
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a1
	fld.s	$fa2, $t2, 4
	ffint.s.w	$fa1, $fa1
	fmul.s	$fa3, $fs0, $fa1
	fmadd.s	$fa3, $fa0, $fs0, $fa3
	fadd.s	$fa2, $fa2, $fa3
	fst.s	$fa2, $t2, 4
	ori	$a0, $zero, 2
	addi.d	$t0, $fp, 1
	bge	$s1, $a0, .LBB1_101
# %bb.100:                              # %for.cond549.preheader
	addi.w	$a0, $fp, 0
	bgez	$a0, .LBB1_103
	b	.LBB1_116
.LBB1_101:                              # %for.body537.preheader
	bstrpick.d	$a1, $t0, 31, 0
	addi.d	$a0, $t2, 8
	addi.d	$a1, $a1, -2
	movgr2fr.w	$fa2, $zero
	.p2align	4, , 16
.LBB1_102:                              # %for.body537
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa3, $a0, 0
	fmadd.s	$fa2, $fa1, $fs0, $fa2
	fmadd.s	$fa4, $fa0, $fs0, $fa2
	fadd.s	$fa3, $fa4, $fa3
	fst.s	$fa3, $a0, 0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB1_102
.LBB1_103:                              # %iter.check554
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Calignm1.m)
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(Calignm1.mp)
	bstrpick.d	$a1, $t0, 31, 0
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB1_105
# %bb.104:
	move	$a3, $zero
	b	.LBB1_114
.LBB1_105:                              # %vector.main.loop.iter.check556
	ori	$a3, $zero, 16
	bgeu	$a1, $a3, .LBB1_107
# %bb.106:
	move	$a3, $zero
	b	.LBB1_111
.LBB1_107:                              # %vector.ph557
	bstrpick.d	$a3, $t0, 31, 4
	slli.d	$a3, $a3, 4
	addi.d	$a4, $a2, 32
	addi.d	$a6, $a0, 32
	xvrepli.b	$xr0, 0
	move	$a7, $a3
	.p2align	4, , 16
.LBB1_108:                              # %vector.body560
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a6, -32
	xvst	$xr0, $a6, 0
	xvst	$xr0, $a4, -32
	xvst	$xr0, $a4, 0
	addi.d	$a7, $a7, -16
	addi.d	$a4, $a4, 64
	addi.d	$a6, $a6, 64
	bnez	$a7, .LBB1_108
# %bb.109:                              # %middle.block563
	beq	$a1, $a3, .LBB1_116
# %bb.110:                              # %vec.epilog.iter.check568
	andi	$a4, $t0, 12
	beqz	$a4, .LBB1_114
.LBB1_111:                              # %vec.epilog.ph567
	move	$a7, $a3
	bstrpick.d	$a3, $t0, 31, 2
	slli.d	$a3, $a3, 2
	sub.d	$a4, $a7, $a3
	alsl.d	$a6, $a7, $a2, 2
	alsl.d	$a7, $a7, $a0, 2
	vrepli.b	$vr0, 0
	.p2align	4, , 16
.LBB1_112:                              # %vec.epilog.vector.body573
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a7, 0
	vst	$vr0, $a6, 0
	addi.d	$a4, $a4, 4
	addi.d	$a6, $a6, 16
	addi.d	$a7, $a7, 16
	bnez	$a4, .LBB1_112
# %bb.113:                              # %vec.epilog.middle.block576
	beq	$a1, $a3, .LBB1_116
.LBB1_114:                              # %for.body553.preheader
	alsl.d	$a2, $a3, $a2, 2
	alsl.d	$a0, $a3, $a0, 2
	sub.d	$a1, $a1, $a3
	.p2align	4, , 16
.LBB1_115:                              # %for.body553
                                        # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a0, 0
	st.w	$zero, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB1_115
.LBB1_116:                              # %for.cond561.preheader
	st.d	$t2, $sp, 136                   # 8-byte Folded Spill
	st.d	$t0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	srai.d	$a1, $s7, 32
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	blt	$s0, $a0, .LBB1_139
# %bb.117:                              # %for.body565.lr.ph
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB1_139
# %bb.118:                              # %for.body565.preheader
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(Calignm1.m)
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t2, $a0, %pc_lo12(Calignm1.mp)
	ld.d	$a0, $t8, %pc_lo12(Calignm1.gl)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Calignm1.ijp)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	addi.d	$t4, $a1, 8
	addi.d	$t5, $t2, 8
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 4
	st.d	$a1, $sp, 256                   # 8-byte Folded Spill
	addi.d	$a0, $a0, -2
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ori	$t3, $zero, 1
	ori	$s5, $zero, 2
	ori	$s4, $zero, 1
	st.d	$s8, $sp, 192                   # 8-byte Folded Spill
	st.d	$t2, $sp, 184                   # 8-byte Folded Spill
	b	.LBB1_120
	.p2align	4, , 16
.LBB1_119:                              # %for.cond566.for.inc744_crit_edge
                                        #   in Loop: Header=BB1_120 Depth=1
	addi.d	$s4, $s4, 1
	ld.d	$s8, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ori	$t3, $zero, 1
	beq	$s4, $a0, .LBB1_139
.LBB1_120:                              # %if.end612.peel
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_131 Depth 2
	slli.d	$a3, $s4, 3
	addi.d	$a0, $s4, -1
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$t0, $a0, $a1, 3
	ldx.d	$a2, $a1, $a3
	addi.d	$a5, $s4, -2
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$a1, $s4, $a7, 3
	ld.d	$s0, $a1, -8
	ld.d	$s6, $a2, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ldx.d	$a1, $a1, $a3
	ld.d	$a6, $a2, 16
	ld.d	$a2, $a2, 8
	ld.d	$a4, $sp, 240                   # 8-byte Folded Reload
	ldx.d	$fp, $a4, $a3
	ldx.d	$a3, $a7, $a3
	fld.s	$fa0, $s0, 0
	fld.s	$fa1, $s6, 8
	alsl.d	$a7, $a5, $a7, 3
	alsl.d	$s3, $a0, $s8, 2
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	st.d	$a5, $sp, 248                   # 8-byte Folded Spill
	alsl.d	$s7, $a5, $a4, 3
	st.d	$a7, $sp, 264                   # 8-byte Folded Spill
	bgeu	$t3, $s4, .LBB1_123
# %bb.121:                              # %if.then615.peel
                                        #   in Loop: Header=BB1_120 Depth=1
	ld.d	$a4, $a7, 0
	move	$a5, $t0
	ld.d	$a7, $t0, 0
	fld.s	$fa2, $a4, 0
	ld.d	$a4, $a7, 0
	ld.d	$a7, $a7, 8
	ld.w	$t0, $t2, 4
	ld.d	$t1, $s7, 0
	fld.s	$fa3, $a4, 4
	fld.s	$fa4, $a7, 4
	sub.d	$a4, $s4, $t0
	alsl.d	$a4, $a4, $t1, 2
	fld.s	$fa5, $a4, -8
	fld.s	$fa6, $s3, 0
	fadd.s	$fa2, $fa2, $fa3
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	fld.s	$fa7, $a4, 4
	fadd.s	$fa4, $fa4, $fa5
	fadd.s	$fa3, $fa2, $fa6
	fadd.s	$fa2, $fa6, $fa4
	fadd.s	$fa2, $fa7, $fa2
	fcmp.cule.s	$fcc0, $fa3, $fa2
	fst.s	$fa2, $a4, 4
	bcnez	$fcc0, .LBB1_124
# %bb.122:                              # %if.then658.peel
                                        #   in Loop: Header=BB1_120 Depth=1
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	fst.s	$fa3, $a4, 4
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	st.w	$a4, $t2, 4
	fmov.s	$fa2, $fa3
	b	.LBB1_124
	.p2align	4, , 16
.LBB1_123:                              # %if.else665.peel
                                        #   in Loop: Header=BB1_120 Depth=1
	move	$a5, $t0
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	fld.s	$fa2, $a4, 0
	fld.s	$fa3, $s6, 4
	fadd.s	$fa2, $fa2, $fa3
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	fst.s	$fa2, $a4, 4
	st.w	$zero, $t2, 4
.LBB1_124:                              # %if.end679.peel
                                        #   in Loop: Header=BB1_120 Depth=1
	fld.s	$fa3, $s0, 0
	fld.s	$fa4, $s6, 0
	fld.s	$fa5, $a6, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa1, $fa3, $fa4
	fadd.s	$fa3, $fa0, $fa5
	fcmp.cule.s	$fcc0, $fa3, $fa1
	st.w	$zero, $a1, 4
	bcnez	$fcc0, .LBB1_126
# %bb.125:                              # %if.then702.peel
                                        #   in Loop: Header=BB1_120 Depth=1
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	lu32i.d	$a4, 0
	st.w	$a4, $a1, 4
	fmov.s	$fa1, $fa3
.LBB1_126:                              # %if.end709.peel
                                        #   in Loop: Header=BB1_120 Depth=1
	ld.w	$a4, $t2, 4
	fld.s	$fa3, $a2, 0
	sub.w	$a4, $s4, $a4
	slli.d	$a7, $a4, 2
	fldx.s	$fa4, $fp, $a7
	fadd.s	$fa2, $fa2, $fa3
	fadd.s	$fa2, $fa2, $fa4
	fcmp.cule.s	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB1_128
# %bb.127:                              # %if.then727.peel
                                        #   in Loop: Header=BB1_120 Depth=1
	st.w	$a4, $a1, 4
	fmov.s	$fa1, $fa2
.LBB1_128:                              # %if.end735.peel
                                        #   in Loop: Header=BB1_120 Depth=1
	fld.s	$fa2, $a3, 4
	fadd.s	$fa1, $fa1, $fa2
	fst.s	$fa1, $a3, 4
	ld.d	$a4, $sp, 232                   # 8-byte Folded Reload
	beq	$a4, $t3, .LBB1_119
# %bb.129:                              # %for.body570.peel.next
                                        #   in Loop: Header=BB1_120 Depth=1
	move	$s8, $zero
	move	$a4, $zero
	move	$t8, $zero
	ld.d	$a7, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$a7, $s4, $a7, 3
	ld.d	$t7, $a7, 0
	ld.d	$a7, $a5, 0
	ld.d	$t0, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $t0, 3
	ld.d	$a0, $a0, 0
	ld.d	$t1, $t7, 0
	ld.d	$t2, $a7, 16
	addi.d	$t3, $a1, 8
	addi.d	$a3, $a3, 8
	addi.d	$s0, $s0, 4
	addi.d	$a1, $zero, -2
	ld.d	$a7, $sp, 128                   # 8-byte Folded Reload
	b	.LBB1_131
	.p2align	4, , 16
.LBB1_130:                              # %if.end735
                                        #   in Loop: Header=BB1_131 Depth=2
	fldx.s	$fa2, $a3, $s8
	fadd.s	$fa1, $fa1, $fa2
	fstx.s	$fa1, $a3, $s8
	addi.d	$a4, $a4, 1
	addi.d	$s8, $s8, 4
	addi.d	$a7, $a7, -1
	addi.d	$a1, $a1, -1
	beqz	$a7, .LBB1_119
.LBB1_131:                              # %if.then573
                                        #   Parent Loop BB1_120 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$fa2, $a0, $s8
	fld.s	$fa3, $t1, 8
	ldptr.w	$t0, $s2, 2496
	fld.s	$fa1, $t2, 8
	bltu	$s4, $s5, .LBB1_134
# %bb.132:                              # %if.then615
                                        #   in Loop: Header=BB1_131 Depth=2
	ld.d	$t6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$ra, $t6, 0
	ld.d	$t6, $a5, 0
	add.d	$ra, $ra, $s8
	fld.s	$fa4, $ra, 4
	ld.d	$ra, $t6, 0
	ld.d	$t6, $t6, 8
	ldx.w	$s1, $t5, $s8
	ld.d	$s5, $s7, 0
	fld.s	$fa5, $ra, 4
	fld.s	$fa6, $t6, 4
	sub.d	$t6, $s4, $s1
	alsl.d	$t6, $t6, $s5, 2
	ori	$s5, $zero, 2
	fld.s	$fa7, $t6, -8
	fld.s	$ft0, $s3, 0
	fadd.s	$fa4, $fa4, $fa5
	fldx.s	$ft1, $t4, $s8
	fadd.s	$fa6, $fa6, $fa7
	fadd.s	$fa5, $fa4, $ft0
	fadd.s	$fa4, $ft0, $fa6
	fadd.s	$fa4, $ft1, $fa4
	fcmp.cule.s	$fcc0, $fa5, $fa4
	fstx.s	$fa4, $t4, $s8
	bcnez	$fcc0, .LBB1_135
# %bb.133:                              # %if.then658
                                        #   in Loop: Header=BB1_131 Depth=2
	fstx.s	$fa5, $t4, $s8
	ld.d	$t6, $sp, 248                   # 8-byte Folded Reload
	stx.w	$t6, $t5, $s8
	fmov.s	$fa4, $fa5
	b	.LBB1_135
	.p2align	4, , 16
.LBB1_134:                              # %if.else665
                                        #   in Loop: Header=BB1_131 Depth=2
	ld.d	$t6, $t7, 0
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	fldx.s	$fa4, $s1, $s8
	fld.s	$fa5, $t6, 4
	fadd.s	$fa4, $fa4, $fa5
	fstx.s	$fa4, $t4, $s8
	stx.w	$zero, $t5, $s8
.LBB1_135:                              # %if.end679
                                        #   in Loop: Header=BB1_131 Depth=2
	fadd.s	$fa2, $fa2, $fa3
	movgr2fr.w	$fa3, $t0
	ffint.s.w	$fa3, $fa3
	fmadd.s	$fa2, $fa3, $fs0, $fa2
	fmadd.s	$fa1, $fa3, $fs0, $fa1
	fadd.s	$fa0, $fa0, $fa1
	fcmp.clt.s	$fcc0, $fa0, $fa2
	fsel	$fa0, $fa0, $fa2, $fcc0
	movcf2gr	$t0, $fcc0
	masknez	$t6, $t8, $t0
	fldx.s	$fa1, $s0, $s8
	fld.s	$fa2, $s6, 0
	fld.s	$fa3, $a6, 0
	maskeqz	$t0, $a4, $t0
	or	$t8, $t0, $t6
	fadd.s	$fa1, $fa1, $fa2
	fadd.s	$fa2, $fa0, $fa3
	fcmp.cule.s	$fcc0, $fa2, $fa1
	stx.w	$zero, $t3, $s8
	bcnez	$fcc0, .LBB1_137
# %bb.136:                              # %if.then702
                                        #   in Loop: Header=BB1_131 Depth=2
	add.d	$t0, $t8, $a1
	stx.w	$t0, $t3, $s8
	fmov.s	$fa1, $fa2
.LBB1_137:                              # %if.end709
                                        #   in Loop: Header=BB1_131 Depth=2
	ldx.w	$t0, $t5, $s8
	fld.s	$fa2, $a2, 0
	sub.w	$t0, $s4, $t0
	slli.d	$t6, $t0, 2
	fldx.s	$fa3, $fp, $t6
	fadd.s	$fa2, $fa4, $fa2
	fadd.s	$fa2, $fa2, $fa3
	fcmp.cule.s	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB1_130
# %bb.138:                              # %if.then727
                                        #   in Loop: Header=BB1_131 Depth=2
	stx.w	$t0, $t3, $s8
	fmov.s	$fa1, $fa2
	b	.LBB1_130
.LBB1_139:                              # %for.end746
	pcalau12i	$a0, %got_pc_hi20(cnst)
	ld.d	$a0, $a0, %got_pc_lo12(cnst)
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	slli.d	$fp, $a1, 3
	beqz	$a0, .LBB1_141
# %bb.140:                              # %if.then748
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ldx.d	$a2, $a2, $fp
	srai.d	$a1, $a1, 29
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	ldx.d	$a1, $a4, $a1
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	add.d	$a0, $a3, $a0
	ld.d	$a2, $a2, 0
	srai.d	$a0, $a0, 30
	fldx.s	$fa0, $a1, $a0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a3, $a0, %pc_lo12(Calignm1.ijp)
	fld.s	$fa1, $a2, 0
	ldx.d	$a0, $a4, $fp
	ldx.d	$a1, $a3, $fp
	fadd.s	$fa0, $fa0, $fa1
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	slli.d	$a2, $a4, 2
	fstx.s	$fa0, $a0, $a2
	stx.w	$zero, $a1, $a2
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	b	.LBB1_142
.LBB1_141:                              # %for.end746.if.end768_crit_edge
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $fp
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a3, $a1, %pc_lo12(Calignm1.ijp)
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
.LBB1_142:                              # %if.end768
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 56                    # 8-byte Folded Reload
	slli.d	$s1, $a4, 2
	fldx.s	$fa0, $a0, $s1
	fst.s	$fa0, $s0, 0
	bltz	$a2, .LBB1_150
# %bb.143:                              # %for.body777.lr.ph
	bstrpick.d	$a0, $a5, 31, 0
	ori	$a2, $zero, 4
	bgeu	$a0, $a2, .LBB1_145
# %bb.144:
	move	$a6, $zero
	b	.LBB1_148
.LBB1_145:                              # %vector.ph581
	pcalau12i	$a2, %pc_hi20(.LCPI1_1)
	vld	$vr0, $a2, %pc_lo12(.LCPI1_1)
	bstrpick.d	$a2, $a5, 31, 2
	slli.d	$a6, $a2, 2
	addi.d	$a2, $a3, 16
	move	$a4, $a6
	.p2align	4, , 16
.LBB1_146:                              # %vector.body584
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a2, -16
	vld	$vr2, $a2, 0
	vshuf4i.w	$vr3, $vr0, 8
	vaddi.wu	$vr4, $vr3, 1
	vaddi.wu	$vr3, $vr3, 3
	vpickve2gr.d	$a5, $vr1, 0
	vstelm.w	$vr4, $a5, 0, 0
	vpickve2gr.d	$a5, $vr1, 1
	vstelm.w	$vr4, $a5, 0, 1
	vpickve2gr.d	$a5, $vr2, 0
	vstelm.w	$vr3, $a5, 0, 0
	vpickve2gr.d	$a5, $vr2, 1
	vstelm.w	$vr3, $a5, 0, 1
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a2, $a2, 32
	bnez	$a4, .LBB1_146
# %bb.147:                              # %middle.block589
	beq	$a0, $a6, .LBB1_150
.LBB1_148:                              # %for.body777.preheader
	alsl.d	$a2, $a6, $a3, 3
	sub.d	$a0, $a0, $a6
	addi.d	$a5, $a6, 1
	.p2align	4, , 16
.LBB1_149:                              # %for.body777
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 0
	st.w	$a5, $a4, 0
	addi.d	$a2, $a2, 8
	addi.d	$a0, $a0, -1
	addi.d	$a5, $a5, 1
	bnez	$a0, .LBB1_149
.LBB1_150:                              # %for.cond785.preheader
	addi.w	$a0, $a7, 0
	bltz	$a0, .LBB1_164
# %bb.151:                              # %iter.check595
	ld.d	$a0, $a3, 0
	bstrpick.d	$a6, $t0, 31, 0
	ori	$a2, $zero, 3
	bltu	$a2, $a6, .LBB1_153
# %bb.152:
	move	$a2, $zero
	b	.LBB1_162
.LBB1_153:                              # %vector.main.loop.iter.check597
	ori	$a2, $zero, 16
	bgeu	$a6, $a2, .LBB1_155
# %bb.154:
	move	$a2, $zero
	b	.LBB1_159
.LBB1_155:                              # %vector.ph598
	bstrpick.d	$a2, $t0, 31, 4
	slli.d	$a2, $a2, 4
	pcalau12i	$a4, %pc_hi20(.LCPI1_2)
	xvld	$xr0, $a4, %pc_lo12(.LCPI1_2)
	addi.d	$a4, $a0, 32
	xvrepli.b	$xr1, -1
	xvrepli.w	$xr2, -9
	move	$a5, $a2
	.p2align	4, , 16
.LBB1_156:                              # %vector.body601
                                        # =>This Inner Loop Header: Depth=1
	xvxor.v	$xr3, $xr0, $xr1
	xvsub.w	$xr4, $xr2, $xr0
	xvst	$xr3, $a4, -32
	xvst	$xr4, $a4, 0
	xvaddi.wu	$xr0, $xr0, 16
	addi.d	$a5, $a5, -16
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB1_156
# %bb.157:                              # %middle.block607
	beq	$a6, $a2, .LBB1_164
# %bb.158:                              # %vec.epilog.iter.check612
	andi	$a4, $t0, 12
	beqz	$a4, .LBB1_162
.LBB1_159:                              # %vec.epilog.ph611
	move	$a5, $a2
	pcalau12i	$a2, %pc_hi20(.LCPI1_3)
	vld	$vr0, $a2, %pc_lo12(.LCPI1_3)
	bstrpick.d	$a2, $t0, 31, 2
	slli.d	$a2, $a2, 2
	vreplgr2vr.w	$vr1, $a5
	vor.v	$vr0, $vr1, $vr0
	sub.d	$a4, $a5, $a2
	alsl.d	$a5, $a5, $a0, 2
	vrepli.b	$vr1, -1
	.p2align	4, , 16
.LBB1_160:                              # %vec.epilog.vector.body617
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr2, $vr0, $vr1
	vst	$vr2, $a5, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 16
	bnez	$a4, .LBB1_160
# %bb.161:                              # %vec.epilog.middle.block622
	beq	$a6, $a2, .LBB1_164
.LBB1_162:                              # %for.body789.preheader
	nor	$a4, $a2, $zero
	alsl.d	$a0, $a2, $a0, 2
	sub.d	$a2, $a6, $a2
	.p2align	4, , 16
.LBB1_163:                              # %for.body789
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a4, $a0, 0
	addi.d	$a4, $a4, -1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	bnez	$a2, .LBB1_163
.LBB1_164:                              # %for.end797
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $a0, %pc_lo12(Calignm1.nseq)
	move	$a0, $s3
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(tracking)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $fp
	fldx.s	$fa0, $a0, $s1
	fst.s	$fa0, $s0, 0
	move	$a0, $s3
	fld.d	$fs5, $sp, 376                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 384                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 392                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 400                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 408                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 416                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 488                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 496                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 504                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 512
	ret
.Lfunc_end1:
	.size	Calignm1, .Lfunc_end1-Calignm1
                                        # -- End function
	.globl	Cscore_m_1                      # -- Begin function Cscore_m_1
	.p2align	5
	.type	Cscore_m_1,@function
Cscore_m_1:                             # @Cscore_m_1
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
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	move	$s4, $a3
	move	$s3, $a2
	move	$s0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	addi.w	$s6, $a0, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	movgr2fr.d	$fs0, $zero
	blt	$s6, $a0, .LBB2_15
# %bb.1:                                # %for.cond4.preheader.lr.ph
	blt	$s0, $a0, .LBB2_15
# %bb.2:                                # %for.cond4.preheader.lr.ph.split.us
	move	$a0, $zero
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$a1, $s3, $a1, 3
	slli.d	$a2, $s3, 3
	ldx.d	$a2, $s4, $a2
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	bstrpick.d	$a3, $s3, 31, 0
	pcalau12i	$a4, %got_pc_hi20(penalty)
	ld.d	$a4, $a4, %got_pc_lo12(penalty)
	pcalau12i	$a5, %got_pc_hi20(amino_dis)
	ld.d	$a5, $a5, %got_pc_lo12(amino_dis)
	bstrpick.d	$a6, $s5, 30, 0
	movgr2fr.d	$fa0, $zero
	ori	$a7, $zero, 45
	fmov.d	$fs0, $fa0
	b	.LBB2_4
	.p2align	4, , 16
.LBB2_3:                                # %for.cond4.for.end_crit_edge.us
                                        #   in Loop: Header=BB2_4 Depth=1
	fadd.d	$fa2, $fs0, $fa2
	addi.d	$a0, $a0, 1
	fadd.d	$fs0, $fa1, $fa2
	beq	$a0, $a6, .LBB2_15
.LBB2_4:                                # %for.cond4.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_8 Depth 2
	addi.d	$t0, $a0, -1
	move	$t1, $s0
	ld.d	$t2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 16                    # 8-byte Folded Reload
	move	$t6, $a3
	fmov.d	$fa2, $fa0
	fmov.d	$fa1, $fa0
	b	.LBB2_8
	.p2align	4, , 16
.LBB2_5:                                # %if.then40.us
                                        #   in Loop: Header=BB2_8 Depth=2
	ld.w	$s3, $t2, 0
	addi.w	$s3, $s3, 1
.LBB2_6:                                # %if.end47.us
                                        #   in Loop: Header=BB2_8 Depth=2
	ld.d	$s4, $t4, 0
	st.w	$s3, $t2, 0
	ld.d	$s5, $a1, 0
	ldx.b	$s4, $s4, $a0
	ldx.b	$s5, $s5, $a0
	addi.d	$s6, $s4, -45
	sltui	$s6, $s6, 1
	ld.w	$s7, $t3, 0
	addi.d	$s8, $s5, -45
	sltui	$s8, $s8, 1
	andi	$ra, $s8, 1
	slt	$fp, $s7, $s3
	slt	$s3, $s3, $s7
	xori	$s7, $t8, 1
	maskeqz	$s1, $s7, $s6
	xori	$s2, $t7, 1
	masknez	$s7, $s7, $s6
	masknez	$a2, $s1, $s8
	maskeqz	$s7, $s7, $s8
	or	$a2, $s7, $a2
	mul.d	$a2, $a2, $s2
	mul.d	$s1, $s1, $t7
	masknez	$s7, $t8, $s6
	mul.d	$s2, $s7, $s2
	mul.d	$s7, $s7, $t7
	maskeqz	$s7, $s7, $s8
	masknez	$fp, $s7, $fp
	maskeqz	$t8, $t8, $s6
	mul.d	$t7, $t8, $t7
	masknez	$t7, $t7, $ra
	masknez	$t7, $t7, $s3
	masknez	$t8, $s1, $s8
	maskeqz	$s1, $s2, $s8
	or	$t8, $s1, $t8
	add.d	$a2, $t8, $a2
	add.d	$a2, $a2, $fp
	add.d	$a2, $a2, $t7
	ld.w	$t7, $a4, 0
	bstrpick.d	$a2, $a2, 31, 0
	movgr2fr.d	$fa4, $a2
	ffint.d.l	$fa4, $fa4
	movgr2fr.w	$fa5, $t7
	slli.d	$a2, $s4, 9
	add.d	$a2, $a5, $a2
	slli.d	$t7, $s5, 2
	ldx.w	$a2, $a2, $t7
	ffint.d.w	$fa5, $fa5
	fmul.d	$fa4, $fa5, $fa4
	fmadd.d	$fa1, $fa4, $fa3, $fa1
	movgr2fr.w	$fa4, $a2
	ffint.d.w	$fa4, $fa4
	fmadd.d	$fa2, $fa4, $fa3, $fa2
.LBB2_7:                                # %cleanup.us
                                        #   in Loop: Header=BB2_8 Depth=2
	addi.d	$t6, $t6, -1
	addi.d	$t5, $t5, 8
	addi.d	$t4, $t4, 8
	addi.d	$t3, $t3, 4
	addi.d	$t1, $t1, -1
	addi.d	$t2, $t2, 4
	beqz	$t1, .LBB2_3
.LBB2_8:                                # %for.body7.us
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$t6, .LBB2_7
# %bb.9:                                # %if.end.us
                                        #   in Loop: Header=BB2_8 Depth=2
	fld.d	$fa3, $t5, 0
	beqz	$a0, .LBB2_12
# %bb.10:                               # %if.end31.us
                                        #   in Loop: Header=BB2_8 Depth=2
	ld.d	$t7, $a1, 0
	ld.d	$t8, $t4, 0
	ldx.bu	$t7, $t7, $t0
	ldx.bu	$t8, $t8, $t0
	addi.d	$t7, $t7, -45
	sltui	$t7, $t7, 1
	bne	$t8, $a7, .LBB2_13
# %bb.11:                               # %if.then32.us
                                        #   in Loop: Header=BB2_8 Depth=2
	ld.w	$t8, $t3, 0
	addi.d	$t8, $t8, 1
	st.w	$t8, $t3, 0
	ori	$t8, $zero, 1
	bnez	$t7, .LBB2_5
	b	.LBB2_14
	.p2align	4, , 16
.LBB2_12:                               #   in Loop: Header=BB2_8 Depth=2
	move	$t7, $zero
.LBB2_13:                               # %if.else35.us
                                        #   in Loop: Header=BB2_8 Depth=2
	move	$t8, $zero
	st.w	$zero, $t3, 0
	bnez	$t7, .LBB2_5
.LBB2_14:                               #   in Loop: Header=BB2_8 Depth=2
	move	$s3, $zero
	b	.LBB2_6
.LBB2_15:                               # %for.end162
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	fmov.d	$fa0, $fs0
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
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
.Lfunc_end2:
	.size	Cscore_m_1, .Lfunc_end2-Cscore_m_1
                                        # -- End function
	.type	Calignm1.m,@object              # @Calignm1.m
	.local	Calignm1.m
	.comm	Calignm1.m,8,8
	.type	Calignm1.mp,@object             # @Calignm1.mp
	.local	Calignm1.mp
	.comm	Calignm1.mp,8,8
	.type	Calignm1.g,@object              # @Calignm1.g
	.local	Calignm1.g
	.comm	Calignm1.g,8,8
	.type	Calignm1.ijp,@object            # @Calignm1.ijp
	.local	Calignm1.ijp
	.comm	Calignm1.ijp,8,8
	.type	Calignm1.v,@object              # @Calignm1.v
	.local	Calignm1.v
	.comm	Calignm1.v,8,8
	.type	Calignm1.w,@object              # @Calignm1.w
	.local	Calignm1.w
	.comm	Calignm1.w,8,8
	.type	Calignm1.gvsa,@object           # @Calignm1.gvsa
	.local	Calignm1.gvsa
	.comm	Calignm1.gvsa,8,8
	.type	Calignm1.mseq,@object           # @Calignm1.mseq
	.local	Calignm1.mseq
	.comm	Calignm1.mseq,8,8
	.type	Calignm1.nseq,@object           # @Calignm1.nseq
	.local	Calignm1.nseq
	.comm	Calignm1.nseq,8,8
	.type	Calignm1.scmx,@object           # @Calignm1.scmx
	.local	Calignm1.scmx
	.comm	Calignm1.scmx,8,8
	.type	Calignm1.orlgth,@object         # @Calignm1.orlgth
	.local	Calignm1.orlgth
	.comm	Calignm1.orlgth,4,4
	.type	Calignm1.orlgth1,@object        # @Calignm1.orlgth1
	.local	Calignm1.orlgth1
	.comm	Calignm1.orlgth1,4,4
	.type	Calignm1.gl,@object             # @Calignm1.gl
	.local	Calignm1.gl
	.comm	Calignm1.gl,8,8
	.type	Calignm1.gs,@object             # @Calignm1.gs
	.local	Calignm1.gs
	.comm	Calignm1.gs,8,8
	.section	".note.GNU-stack","",@progbits
	.addrsig
