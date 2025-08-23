	.file	"routenet.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function routenet
.LCPI0_0:
	.dword	0x4054000000000000              # double 80
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI0_1:
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	12                              # 0xc
	.word	13                              # 0xd
	.word	14                              # 0xe
	.word	15                              # 0xf
	.word	16                              # 0x10
.LCPI0_2:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_3:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	routenet
	.p2align	5
	.type	routenet,@function
routenet:                               # @routenet
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 32                   # 8-byte Folded Spill
	ori	$a2, $zero, 3
	move	$fp, $a1
	move	$s0, $a0
	blt	$a0, $a2, .LBB0_7
# %bb.1:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(MAXPATHS)
	ld.d	$s1, $a0, %got_pc_lo12(MAXPATHS)
	ld.w	$a0, $s1, 0
	addi.w	$a1, $s0, -1
	div.w	$a0, $a0, $a1
	st.w	$a0, $sp, 28
	ori	$s2, $zero, 1
	slt	$a2, $s2, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s2, $a2
	or	$a0, $a0, $a2
	pcalau12i	$a2, %pc_hi20(.LCPI0_0)
	fld.d	$fs1, $a2, %pc_lo12(.LCPI0_0)
	pcalau12i	$a2, %got_pc_hi20(Mpaths)
	ld.d	$s3, $a2, %got_pc_lo12(Mpaths)
	bstrpick.d	$a1, $a1, 31, 0
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fs0, $fa0
	.p2align	4, , 16
.LBB0_2:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a0, $s3, 0
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	ld.w	$a1, $s3, 0
	fmul.d	$fa1, $fa1, $fs1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB0_4
# %bb.3:                                # %while.cond
                                        #   in Loop: Header=BB0_2 Depth=1
	addi.w	$a0, $a1, -1
	blt	$s2, $a1, .LBB0_2
.LBB0_4:                                # %if.end
	ori	$a0, $zero, 20
	move	$s2, $zero
	bltu	$s0, $a0, .LBB0_9
# %bb.5:                                # %if.end
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB0_9
# %bb.6:                                # %if.end
	pcalau12i	$a0, %got_pc_hi20(bareMinimum)
	ld.d	$a0, $a0, %got_pc_lo12(bareMinimum)
	ld.w	$a1, $a0, 0
	beqz	$a1, .LBB0_8
	b	.LBB0_9
.LBB0_7:
	pcalau12i	$a0, %got_pc_hi20(Mpaths)
	ld.d	$a0, $a0, %got_pc_lo12(Mpaths)
.LBB0_8:                                # %if.end18.sink.split
	ori	$a1, $zero, 2
	slt	$s2, $a1, $s0
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
.LBB0_9:                                # %if.end18
	pcalau12i	$a0, %got_pc_hi20(MAXPATHS)
	ld.d	$s4, $a0, %got_pc_lo12(MAXPATHS)
	pcalau12i	$s3, %pc_hi20(indexRoot)
	ld.w	$a0, $s4, 0
	st.d	$zero, $s3, %pc_lo12(indexRoot)
	pcalau12i	$a1, %pc_hi20(treeSize)
	ori	$s5, $zero, 1
	st.w	$zero, $a1, %pc_lo12(treeSize)
	blt	$a0, $s5, .LBB0_12
# %bb.10:                               # %for.body.preheader
	move	$s0, $zero
	pcalau12i	$a0, %pc_hi20(indexRoot)
	addi.d	$s1, $a0, %pc_lo12(indexRoot)
	.p2align	4, , 16
.LBB0_11:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$s0, $s0, 1
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 0
	slli.w	$a0, $a0, 1
	blt	$s0, $a0, .LBB0_11
.LBB0_12:                               # %for.cond22.preheader
	pcalau12i	$a0, %got_pc_hi20(numnodes)
	ld.d	$a0, $a0, %got_pc_lo12(numnodes)
	ld.w	$a0, $a0, 0
	blt	$fp, $s5, .LBB0_27
# %bb.13:                               # %iter.check
	pcalau12i	$a1, %got_pc_hi20(sourceList)
	ld.d	$a1, $a1, %got_pc_lo12(sourceList)
	pcalau12i	$a2, %got_pc_hi20(delSourceList)
	ld.d	$a2, $a2, %got_pc_lo12(delSourceList)
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	ori	$a4, $zero, 4
	ori	$a3, $zero, 1
	bltu	$fp, $a4, .LBB0_25
# %bb.14:                               # %iter.check
	sub.d	$a4, $a2, $a1
	ori	$a5, $zero, 31
	bgeu	$a5, $a4, .LBB0_25
# %bb.15:                               # %vector.main.loop.iter.check
	ori	$a4, $zero, 16
	ori	$a3, $zero, 1
	bgeu	$fp, $a4, .LBB0_17
# %bb.16:
	move	$a4, $zero
	ori	$a5, $zero, 1
	b	.LBB0_21
.LBB0_17:                               # %vector.ph
	bstrpick.d	$a4, $fp, 30, 4
	slli.d	$a4, $a4, 4
	srli.d	$a6, $fp, 4
	ori	$a5, $zero, 1
	bstrins.d	$a5, $a6, 30, 4
	xvreplgr2vr.w	$xr0, $a0
	pcalau12i	$a6, %pc_hi20(.LCPI0_1)
	xvld	$xr1, $a6, %pc_lo12(.LCPI0_1)
	pcalau12i	$a6, %pc_hi20(.LCPI0_2)
	xvld	$xr2, $a6, %pc_lo12(.LCPI0_2)
	addi.d	$a6, $a1, 2
	addi.d	$a7, $a2, 2
	xvrepli.b	$xr3, 0
	move	$t0, $a4
	.p2align	4, , 16
.LBB0_18:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvadd.w	$xr5, $xr0, $xr1
	xvadd.w	$xr6, $xr0, $xr2
	xvpickve2gr.w	$t1, $xr6, 0
	vinsgr2vr.h	$vr4, $t1, 0
	xvpickve2gr.w	$t1, $xr6, 1
	xvreplgr2vr.h	$xr7, $t1
	xvpermi.q	$xr7, $xr4, 18
	xvextrins.h	$xr4, $xr7, 17
	xvpickve2gr.w	$t1, $xr6, 2
	xvreplgr2vr.h	$xr7, $t1
	xvpermi.q	$xr7, $xr4, 18
	xvextrins.h	$xr4, $xr7, 34
	xvpickve2gr.w	$t1, $xr6, 3
	xvreplgr2vr.h	$xr7, $t1
	xvpermi.q	$xr7, $xr4, 18
	xvextrins.h	$xr4, $xr7, 51
	xvpickve2gr.w	$t1, $xr6, 4
	xvreplgr2vr.h	$xr7, $t1
	xvpermi.q	$xr7, $xr4, 18
	xvextrins.h	$xr4, $xr7, 68
	xvpickve2gr.w	$t1, $xr6, 5
	xvreplgr2vr.h	$xr7, $t1
	xvpermi.q	$xr7, $xr4, 18
	xvextrins.h	$xr4, $xr7, 85
	xvpickve2gr.w	$t1, $xr6, 6
	xvreplgr2vr.h	$xr7, $t1
	xvpermi.q	$xr7, $xr4, 18
	xvextrins.h	$xr4, $xr7, 102
	xvpickve2gr.w	$t1, $xr6, 7
	xvreplgr2vr.h	$xr6, $t1
	xvpermi.q	$xr6, $xr4, 18
	xvextrins.h	$xr4, $xr6, 119
	xvpickve2gr.w	$t1, $xr5, 0
	xvreplgr2vr.h	$xr6, $t1
	xvpermi.q	$xr6, $xr4, 48
	xvextrins.h	$xr4, $xr6, 0
	xvpickve2gr.w	$t1, $xr5, 1
	xvreplgr2vr.h	$xr6, $t1
	xvpermi.q	$xr6, $xr4, 48
	xvextrins.h	$xr4, $xr6, 17
	xvpickve2gr.w	$t1, $xr5, 2
	xvreplgr2vr.h	$xr6, $t1
	xvpermi.q	$xr6, $xr4, 48
	xvextrins.h	$xr4, $xr6, 34
	xvpickve2gr.w	$t1, $xr5, 3
	xvreplgr2vr.h	$xr6, $t1
	xvpermi.q	$xr6, $xr4, 48
	xvextrins.h	$xr4, $xr6, 51
	xvpickve2gr.w	$t1, $xr5, 4
	xvreplgr2vr.h	$xr6, $t1
	xvpermi.q	$xr6, $xr4, 48
	xvextrins.h	$xr4, $xr6, 68
	xvpickve2gr.w	$t1, $xr5, 5
	xvreplgr2vr.h	$xr6, $t1
	xvpermi.q	$xr6, $xr4, 48
	xvextrins.h	$xr4, $xr6, 85
	xvpickve2gr.w	$t1, $xr5, 6
	xvreplgr2vr.h	$xr6, $t1
	xvpermi.q	$xr6, $xr4, 48
	xvextrins.h	$xr4, $xr6, 102
	xvpickve2gr.w	$t1, $xr5, 7
	xvreplgr2vr.h	$xr5, $t1
	xvpermi.q	$xr5, $xr4, 48
	xvextrins.h	$xr4, $xr5, 119
	xvst	$xr4, $a6, 0
	xvst	$xr3, $a7, 0
	xvaddi.wu	$xr2, $xr2, 16
	xvaddi.wu	$xr1, $xr1, 16
	addi.d	$a6, $a6, 32
	addi.d	$t0, $t0, -16
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB0_18
# %bb.19:                               # %middle.block
	beq	$a4, $fp, .LBB0_27
# %bb.20:                               # %vec.epilog.iter.check
	andi	$a6, $fp, 12
	beqz	$a6, .LBB0_24
.LBB0_21:                               # %vec.epilog.ph
	bstrpick.d	$a6, $fp, 30, 2
	slli.d	$a6, $a6, 2
	srli.d	$a7, $fp, 2
	pcalau12i	$t0, %pc_hi20(.LCPI0_3)
	vld	$vr1, $t0, %pc_lo12(.LCPI0_3)
	bstrins.d	$a3, $a7, 30, 2
	vreplgr2vr.w	$vr0, $a0
	vreplgr2vr.w	$vr2, $a5
	vadd.w	$vr1, $vr2, $vr1
	slli.d	$a5, $a4, 1
	addi.d	$a7, $a5, 2
	add.d	$a5, $a1, $a7
	add.d	$a7, $a2, $a7
	sub.d	$a4, $a4, $a6
	.p2align	4, , 16
.LBB0_22:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vadd.w	$vr2, $vr0, $vr1
	vpickev.h	$vr2, $vr2, $vr2
	vstelm.d	$vr2, $a5, 0, 0
	st.d	$zero, $a7, 0
	vaddi.wu	$vr1, $vr1, 4
	addi.d	$a5, $a5, 8
	addi.d	$a4, $a4, 4
	addi.d	$a7, $a7, 8
	bnez	$a4, .LBB0_22
# %bb.23:                               # %vec.epilog.middle.block
	bne	$a6, $fp, .LBB0_25
	b	.LBB0_27
.LBB0_24:
	addi.d	$a3, $a4, 1
.LBB0_25:                               # %for.body25.preheader
	addi.d	$a4, $fp, 1
	bstrpick.d	$a5, $a4, 31, 0
	add.d	$a4, $a0, $a3
	alsl.d	$a2, $a3, $a2, 1
	alsl.d	$a1, $a3, $a1, 1
	sub.d	$a3, $a5, $a3
	.p2align	4, , 16
.LBB0_26:                               # %for.body25
                                        # =>This Inner Loop Header: Depth=1
	st.h	$a4, $a1, 0
	st.h	$zero, $a2, 0
	addi.d	$a4, $a4, 1
	addi.d	$a2, $a2, 2
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 2
	bnez	$a3, .LBB0_26
.LBB0_27:                               # %for.end31
	pcalau12i	$a1, %got_pc_hi20(sourcePtr)
	ld.d	$a2, $a1, %got_pc_lo12(sourcePtr)
	add.w	$a1, $a0, $fp
	ori	$a4, $zero, 1
	st.w	$fp, $a2, 0
	blt	$a1, $a4, .LBB0_42
# %bb.28:                               # %iter.check194
	pcalau12i	$a2, %got_pc_hi20(targetList)
	ld.d	$a2, $a2, %got_pc_lo12(targetList)
	pcalau12i	$a3, %got_pc_hi20(addTargetList)
	ld.d	$a3, $a3, %got_pc_lo12(addTargetList)
	ld.d	$a2, $a2, 0
	ld.d	$a3, $a3, 0
	ori	$a5, $zero, 8
	bltu	$a1, $a5, .LBB0_40
# %bb.29:                               # %iter.check194
	sub.d	$a5, $a3, $a2
	ori	$a6, $zero, 64
	bltu	$a5, $a6, .LBB0_40
# %bb.30:                               # %vector.main.loop.iter.check196
	ori	$a4, $zero, 32
	bgeu	$a1, $a4, .LBB0_32
# %bb.31:
	move	$a5, $zero
	b	.LBB0_36
.LBB0_32:                               # %vector.ph197
	bstrpick.d	$a4, $a1, 30, 5
	slli.d	$a5, $a4, 5
	addi.d	$a4, $a2, 34
	addi.d	$a6, $a3, 34
	xvrepli.b	$xr0, 0
	move	$a7, $a5
	.p2align	4, , 16
.LBB0_33:                               # %vector.body200
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a4, -32
	xvst	$xr0, $a4, 0
	xvst	$xr0, $a6, -32
	xvst	$xr0, $a6, 0
	addi.d	$a4, $a4, 64
	addi.d	$a7, $a7, -32
	addi.d	$a6, $a6, 64
	bnez	$a7, .LBB0_33
# %bb.34:                               # %middle.block203
	beq	$a5, $a1, .LBB0_42
# %bb.35:                               # %vec.epilog.iter.check208
	andi	$a4, $a1, 24
	beqz	$a4, .LBB0_39
.LBB0_36:                               # %vec.epilog.ph207
	bstrpick.d	$a4, $a1, 30, 3
	slli.d	$a6, $a4, 3
	srli.d	$a7, $a1, 3
	ori	$a4, $zero, 1
	bstrins.d	$a4, $a7, 30, 3
	slli.d	$a7, $a5, 1
	addi.d	$t0, $a7, 2
	add.d	$a7, $a2, $t0
	add.d	$t0, $a3, $t0
	sub.d	$a5, $a5, $a6
	vrepli.b	$vr0, 0
	.p2align	4, , 16
.LBB0_37:                               # %vec.epilog.vector.body213
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a7, 0
	vst	$vr0, $t0, 0
	addi.d	$a7, $a7, 16
	addi.d	$a5, $a5, 8
	addi.d	$t0, $t0, 16
	bnez	$a5, .LBB0_37
# %bb.38:                               # %vec.epilog.middle.block217
	bne	$a6, $a1, .LBB0_40
	b	.LBB0_42
.LBB0_39:
	addi.d	$a4, $a5, 1
.LBB0_40:                               # %for.body36.preheader
	addi.d	$a5, $a1, 1
	bstrpick.d	$a5, $a5, 31, 0
	alsl.d	$a3, $a4, $a3, 1
	alsl.d	$a2, $a4, $a2, 1
	sub.d	$a4, $a5, $a4
	.p2align	4, , 16
.LBB0_41:                               # %for.body36
                                        # =>This Inner Loop Header: Depth=1
	st.h	$zero, $a2, 0
	st.h	$zero, $a3, 0
	addi.d	$a3, $a3, 2
	addi.d	$a4, $a4, -1
	addi.d	$a2, $a2, 2
	bnez	$a4, .LBB0_41
.LBB0_42:                               # %for.end43
	pcalau12i	$a2, %got_pc_hi20(targetPtr)
	ld.d	$a2, $a2, %got_pc_lo12(targetPtr)
	pcalau12i	$a3, %got_pc_hi20(segPtr)
	pcalau12i	$a4, %got_pc_hi20(pnodeArray)
	ld.d	$a4, $a4, %got_pc_lo12(pnodeArray)
	ld.d	$a3, $a3, %got_pc_lo12(segPtr)
	st.w	$zero, $a2, 0
	ld.d	$a2, $a4, 0
	st.w	$zero, $a3, 0
	addi.w	$a3, $a0, 1
	st.w	$a3, $sp, 28
                                        # implicit-def: $r8
	bge	$a0, $a1, .LBB0_56
# %bb.43:                               # %for.body49.lr.ph
	move	$a5, $zero
	slt	$a4, $a1, $a3
	masknez	$a6, $a1, $a4
	maskeqz	$a4, $a3, $a4
	or	$a6, $a4, $a6
	addi.d	$a7, $a3, -1
	ori	$a4, $zero, 24
	mul.d	$t0, $a3, $a4
	mul.d	$a4, $a0, $a4
	sub.d	$a4, $t0, $a4
	add.d	$t0, $a2, $a4
	slli.d	$a4, $a3, 3
	alsl.d	$a4, $a3, $a4, 2
	addi.d	$t1, $a4, 4
	addi.d	$t2, $a0, 2
	lu12i.w	$a4, 244140
	ori	$t4, $a4, 2560
	ori	$t3, $zero, 1
	move	$t6, $a3
                                        # implicit-def: $r8
	b	.LBB0_45
	.p2align	4, , 16
.LBB0_44:                               # %for.cond45.loopexit
                                        #   in Loop: Header=BB0_45 Depth=1
	addi.w	$t6, $t5, 1
	st.w	$t6, $sp, 28
	addi.w	$a5, $a5, 1
	beq	$t5, $a6, .LBB0_56
.LBB0_45:                               # %for.body49
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_49 Depth 2
	move	$t5, $t6
	sub.w	$t6, $t6, $a0
	slli.d	$t7, $t6, 4
	alsl.d	$t7, $t6, $t7, 3
	add.d	$t7, $a2, $t7
	ld.d	$t8, $t7, 8
	st.w	$a3, $sp, 24
	blt	$fp, $t3, .LBB0_44
# %bb.46:                               # %for.body58.lr.ph
                                        #   in Loop: Header=BB0_45 Depth=1
	move	$s1, $zero
	add.d	$t8, $t8, $t1
	move	$s0, $t0
	move	$s4, $a7
	b	.LBB0_49
	.p2align	4, , 16
.LBB0_47:                               # %if.end132
                                        #   in Loop: Header=BB0_49 Depth=2
	ld.w	$s6, $t8, 0
	slt	$s7, $s6, $t4
	masknez	$t4, $t4, $s7
	maskeqz	$s6, $s6, $s7
	or	$t4, $s6, $t4
	masknez	$a4, $a4, $s7
	maskeqz	$s6, $t5, $s7
	or	$a4, $s6, $a4
.LBB0_48:                               # %for.inc142
                                        #   in Loop: Header=BB0_49 Depth=2
	add.d	$s5, $t2, $s5
	st.w	$s5, $sp, 24
	addi.d	$s4, $s4, 1
	addi.d	$s0, $s0, 24
	addi.d	$t8, $t8, 12
	bge	$s4, $a1, .LBB0_44
.LBB0_49:                               # %for.body58
                                        #   Parent Loop BB0_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$s5, $s1
	addi.w	$s1, $s1, 1
	beq	$a5, $s5, .LBB0_48
# %bb.50:                               # %if.end62
                                        #   in Loop: Header=BB0_49 Depth=2
	ld.w	$s7, $t7, 0
	ld.w	$s6, $s0, 0
	beqz	$s7, .LBB0_53
# %bb.51:                               # %land.lhs.true68
                                        #   in Loop: Header=BB0_49 Depth=2
	beqz	$s6, .LBB0_55
# %bb.52:                               # %if.then75
                                        #   in Loop: Header=BB0_49 Depth=2
	bne	$s7, $s6, .LBB0_47
	b	.LBB0_48
.LBB0_53:                               # %land.lhs.true95
                                        #   in Loop: Header=BB0_49 Depth=2
	beqz	$s6, .LBB0_47
# %bb.54:                               # %land.lhs.true95
                                        #   in Loop: Header=BB0_49 Depth=2
	beq	$s6, $t6, .LBB0_48
	b	.LBB0_47
.LBB0_55:                               # %if.then110
                                        #   in Loop: Header=BB0_49 Depth=2
	bne	$s1, $s7, .LBB0_47
	b	.LBB0_48
.LBB0_56:                               # %for.end147
	pcalau12i	$a1, %got_pc_hi20(pathLength)
	ld.d	$a1, $a1, %got_pc_lo12(pathLength)
	st.w	$zero, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(delSourceList)
	ld.d	$a1, $a1, %got_pc_lo12(delSourceList)
	pcalau12i	$a3, %got_pc_hi20(addTargetList)
	ld.d	$fp, $a3, %got_pc_lo12(addTargetList)
	pcalau12i	$a3, %pc_hi20(pathIndex)
	st.w	$zero, $a3, %pc_lo12(pathIndex)
	ld.d	$a3, $a1, 0
	ld.d	$a1, $fp, 0
	sub.w	$a5, $a4, $a0
	slli.d	$a6, $a5, 4
	alsl.d	$a5, $a5, $a6, 3
	ldx.w	$a6, $a2, $a5
	st.h	$a4, $a3, 2
	st.h	$a4, $a1, 2
	beqz	$a6, .LBB0_63
# %bb.57:                               # %if.then158
	slli.d	$a5, $a6, 4
	alsl.d	$a5, $a6, $a5, 3
	add.d	$a2, $a2, $a5
	ld.d	$a5, $a2, 16
	add.d	$a2, $a6, $a0
	st.h	$a2, $a3, 4
	st.h	$a2, $a1, 4
	ori	$a2, $zero, 1
	beqz	$a5, .LBB0_67
# %bb.58:                               # %while.body177.lr.ph.preheader
	addi.w	$a4, $a4, 0
	.p2align	4, , 16
.LBB0_59:                               # %while.body177
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a5, 0
	add.w	$a7, $a6, $a0
	bne	$a7, $a4, .LBB0_61
# %bb.60:                               # %if.then182
                                        #   in Loop: Header=BB0_59 Depth=1
	ld.d	$a5, $a5, 8
	bnez	$a5, .LBB0_59
	b	.LBB0_67
.LBB0_61:                               # %if.end183
                                        #   in Loop: Header=BB0_59 Depth=1
	addi.d	$a6, $a2, 1
	ld.d	$a5, $a5, 8
	slli.d	$a2, $a2, 1
	addi.d	$a2, $a2, 4
	stx.h	$a7, $a3, $a2
	stx.h	$a7, $a1, $a2
	move	$a2, $a6
	bnez	$a5, .LBB0_59
# %bb.62:                               # %if.end217.loopexit128
	move	$a2, $a6
	b	.LBB0_67
.LBB0_63:                               # %if.else195
	add.d	$a2, $a2, $a5
	ld.d	$a4, $a2, 16
	beqz	$a4, .LBB0_66
# %bb.64:                               # %while.body203.preheader
	move	$a2, $zero
	addi.d	$a5, $a1, 4
	addi.d	$a3, $a3, 4
	.p2align	4, , 16
.LBB0_65:                               # %while.body203
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a4, 0
	add.d	$a6, $a6, $a0
	st.h	$a6, $a3, 0
	ld.d	$a4, $a4, 8
	st.h	$a6, $a5, 0
	addi.d	$a5, $a5, 2
	addi.d	$a3, $a3, 2
	addi.d	$a2, $a2, 1
	bnez	$a4, .LBB0_65
	b	.LBB0_67
.LBB0_66:
	move	$a2, $zero
.LBB0_67:                               # %for.body222.lr.ph
	pcalau12i	$a0, %got_pc_hi20(gnodeArray)
	ld.d	$s1, $a0, %got_pc_lo12(gnodeArray)
	addi.w	$a0, $a2, 1
	addi.w	$a3, $a2, 0
	ld.d	$a2, $s1, 0
	srai.d	$a4, $a3, 63
	andn	$a3, $a3, $a4
	addi.d	$s0, $a3, 2
	ori	$a3, $zero, 1
	ori	$a4, $zero, 1
	b	.LBB0_69
	.p2align	4, , 16
.LBB0_68:                               # %for.inc246
                                        #   in Loop: Header=BB0_69 Depth=1
	addi.d	$a4, $a4, 1
	beq	$a4, $s0, .LBB0_73
.LBB0_69:                               # %for.body222
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_70 Depth 2
                                        #       Child Loop BB0_71 Depth 3
	slli.d	$a5, $a4, 1
	ldx.h	$a5, $a1, $a5
	slli.d	$a6, $a5, 3
	ldx.d	$a6, $a2, $a6
	beqz	$a6, .LBB0_68
	.p2align	4, , 16
.LBB0_70:                               # %for.body231
                                        #   Parent Loop BB0_69 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_71 Depth 3
	ld.w	$a7, $a6, 0
	alsl.d	$t0, $a7, $a2, 3
	.p2align	4, , 16
.LBB0_71:                               # %for.cond235
                                        #   Parent Loop BB0_69 Depth=1
                                        #     Parent Loop BB0_70 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a7, $t0, 0
	ld.w	$t1, $a7, 0
	addi.d	$t0, $a7, 32
	bne	$t1, $a5, .LBB0_71
# %bb.72:                               # %if.then239
                                        #   in Loop: Header=BB0_70 Depth=2
	ld.d	$a6, $a6, 32
	st.w	$a3, $a7, 24
	bnez	$a6, .LBB0_70
	b	.LBB0_68
.LBB0_73:                               # %for.body255.lr.ph
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $a0
	pcaddu18i	$ra, %call36(recursePath)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s1, 0
	ori	$a2, $zero, 1
	b	.LBB0_75
	.p2align	4, , 16
.LBB0_74:                               # %for.inc280
                                        #   in Loop: Header=BB0_75 Depth=1
	addi.d	$a2, $a2, 1
	st.w	$a2, $sp, 28
	beq	$a2, $s0, .LBB0_79
.LBB0_75:                               # %for.body255
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_76 Depth 2
                                        #       Child Loop BB0_77 Depth 3
	slli.d	$a3, $a2, 1
	ldx.h	$a3, $a0, $a3
	slli.d	$a4, $a3, 3
	ldx.d	$a4, $a1, $a4
	beqz	$a4, .LBB0_74
	.p2align	4, , 16
.LBB0_76:                               # %for.body264
                                        #   Parent Loop BB0_75 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_77 Depth 3
	ld.w	$a5, $a4, 0
	alsl.d	$a6, $a5, $a1, 3
	.p2align	4, , 16
.LBB0_77:                               # %for.cond268
                                        #   Parent Loop BB0_75 Depth=1
                                        #     Parent Loop BB0_76 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a5, $a6, 0
	ld.w	$a7, $a5, 0
	addi.d	$a6, $a5, 32
	bne	$a7, $a3, .LBB0_77
# %bb.78:                               # %if.then272
                                        #   in Loop: Header=BB0_76 Depth=2
	ld.d	$a4, $a4, 32
	st.w	$zero, $a5, 24
	bnez	$a4, .LBB0_76
	b	.LBB0_74
.LBB0_79:                               # %for.end282
	ld.d	$a0, $s3, %pc_lo12(indexRoot)
	beqz	$a0, .LBB0_82
# %bb.80:                               # %for.cond286.preheader
	pcalau12i	$a0, %pc_hi20(indexRoot)
	addi.d	$fp, $a0, %pc_lo12(indexRoot)
	.p2align	4, , 16
.LBB0_81:                               # %for.cond286
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $sp, 16
	addi.d	$a2, $sp, 28
	addi.d	$a3, $sp, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16
	bnez	$a0, .LBB0_81
.LBB0_82:                               # %if.end292
	beqz	$s2, .LBB0_84
# %bb.83:                               # %if.then295
	pcalau12i	$a0, %got_pc_hi20(bareMinimum)
	ld.d	$a0, $a0, %got_pc_lo12(bareMinimum)
	st.w	$zero, $a0, 0
.LBB0_84:                               # %if.end296
	fld.d	$fs1, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 40                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end0:
	.size	routenet, .Lfunc_end0-routenet
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function recursePath
.LCPI1_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.text
	.globl	recursePath
	.p2align	5
	.type	recursePath,@function
recursePath:                            # @recursePath
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -336
	st.d	$ra, $sp, 328                   # 8-byte Folded Spill
	st.d	$fp, $sp, 320                   # 8-byte Folded Spill
	st.d	$s0, $sp, 312                   # 8-byte Folded Spill
	st.d	$s1, $sp, 304                   # 8-byte Folded Spill
	st.d	$s2, $sp, 296                   # 8-byte Folded Spill
	st.d	$s3, $sp, 288                   # 8-byte Folded Spill
	st.d	$s4, $sp, 280                   # 8-byte Folded Spill
	st.d	$s5, $sp, 272                   # 8-byte Folded Spill
	st.d	$s6, $sp, 264                   # 8-byte Folded Spill
	st.d	$s7, $sp, 256                   # 8-byte Folded Spill
	st.d	$s8, $sp, 248                   # 8-byte Folded Spill
	pcalau12i	$a4, %got_pc_hi20(sourcePtr)
	ld.d	$a4, $a4, %got_pc_lo12(sourcePtr)
	ld.w	$s0, $a4, 0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	bne	$s0, $a0, .LBB1_6
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(indexRoot)
	addi.d	$a0, $a0, %pc_lo12(indexRoot)
	pcalau12i	$a1, %pc_hi20(pathIndex)
	addi.d	$fp, $a1, %pc_lo12(pathIndex)
	addi.d	$a1, $sp, 224
	addi.d	$a3, $sp, 240
	move	$a2, $fp
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(savePaths)
	ld.d	$a0, $a0, %got_pc_lo12(savePaths)
	pcalau12i	$a1, %got_pc_hi20(segPtr)
	ld.d	$a1, $a1, %got_pc_lo12(segPtr)
	ld.w	$a2, $fp, 0
	ld.d	$a3, $a0, 0
	ld.w	$a0, $a1, 0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	ori	$a4, $zero, 1
	st.h	$a0, $a1, 0
	blt	$a0, $a4, .LBB1_173
# %bb.2:                                # %iter.check
	pcalau12i	$a3, %got_pc_hi20(segList)
	ld.d	$a3, $a3, %got_pc_lo12(segList)
	ld.d	$a3, $a3, 0
	ori	$a5, $zero, 8
	bltu	$a0, $a5, .LBB1_171
# %bb.3:                                # %iter.check
	sub.d	$a5, $a1, $a3
	ori	$a6, $zero, 64
	bltu	$a5, $a6, .LBB1_171
# %bb.4:                                # %vector.main.loop.iter.check
	ori	$a4, $zero, 32
	bgeu	$a0, $a4, .LBB1_163
# %bb.5:
	move	$a5, $zero
	b	.LBB1_167
.LBB1_6:                                # %if.end
	move	$s5, $a3
	move	$s6, $a2
	move	$s7, $a1
	st.d	$a4, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(EXTRASOURCES)
	ld.d	$s4, $a0, %got_pc_lo12(EXTRASOURCES)
	ld.w	$s2, $s4, 0
	st.d	$zero, $sp, 216
	slli.d	$a0, $s2, 2
	addi.d	$a0, $a0, 4
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(MAXPATHS)
	ld.d	$a1, $a1, %got_pc_lo12(MAXPATHS)
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ld.w	$a1, $a1, 0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	mul.w	$s1, $a1, $s2
	addi.w	$s3, $s1, 1
	slli.d	$a0, $s3, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ori	$fp, $zero, 1
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	blt	$s1, $fp, .LBB1_10
# %bb.7:                                # %for.body21.preheader
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	addi.d	$s1, $a0, 8
	bstrpick.d	$a0, $s3, 31, 0
	addi.d	$s3, $a0, -1
	.p2align	4, , 16
.LBB1_8:                                # %for.body21
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 1
	ori	$a1, $zero, 84
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 0
	addi.d	$s3, $s3, -1
	addi.d	$s1, $s1, 8
	bnez	$s3, .LBB1_8
# %bb.9:                                # %for.cond17.for.end38_crit_edge
	ori	$a0, $zero, 21
	st.w	$a0, $sp, 244
.LBB1_10:                               # %for.end38
	st.d	$s6, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 160                   # 8-byte Folded Spill
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	addi.w	$a0, $s1, 1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	addi.d	$s4, $a0, 2
	slli.d	$s6, $s1, 1
	blt	$s1, $fp, .LBB1_12
# %bb.11:                               # %for.body46.lr.ph
	pcalau12i	$a0, %got_pc_hi20(delSourceList)
	ld.d	$a0, $a0, %got_pc_lo12(delSourceList)
	ld.d	$a0, $a0, 0
	addi.d	$a1, $a0, 2
	bstrpick.d	$a0, $s6, 31, 1
	slli.d	$a2, $a0, 1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB1_12:                               # %for.end53
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
	st.d	$s7, $sp, 56                    # 8-byte Folded Spill
	add.w	$s5, $s5, $s7
	addi.w	$s1, $s5, 1
	slli.d	$a0, $s1, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ori	$fp, $zero, 1
	addi.d	$s7, $a0, 2
	slli.d	$s4, $s5, 1
	st.d	$s5, $sp, 72                    # 8-byte Folded Spill
	blt	$s5, $fp, .LBB1_14
# %bb.13:                               # %for.body63.lr.ph
	pcalau12i	$a0, %got_pc_hi20(addTargetList)
	ld.d	$a0, $a0, %got_pc_lo12(addTargetList)
	ld.d	$a0, $a0, 0
	addi.d	$a1, $a0, 2
	bstrpick.d	$a0, $s4, 31, 1
	slli.d	$a2, $a0, 1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB1_14:                               # %for.cond71.preheader
	ld.d	$t4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	blt	$a0, $fp, .LBB1_22
# %bb.15:                               # %for.body74.lr.ph
	pcalau12i	$a0, %got_pc_hi20(sourceList)
	ld.d	$a0, $a0, %got_pc_lo12(sourceList)
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a0, 2
	ori	$a3, $zero, 1
	ori	$a4, $zero, 1
	b	.LBB1_18
	.p2align	4, , 16
.LBB1_16:                               # %if.then87
                                        #   in Loop: Header=BB1_18 Depth=1
	slli.d	$a6, $s0, 1
	ldx.h	$a6, $a0, $a6
	addi.w	$s0, $s0, -1
	st.w	$s0, $t4, 0
	st.h	$a6, $a5, 0
.LBB1_17:                               # %for.inc96
                                        #   in Loop: Header=BB1_18 Depth=1
	addi.d	$a4, $a4, 1
	beq	$a4, $a1, .LBB1_22
.LBB1_18:                               # %for.body74
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_20 Depth 2
	blt	$s0, $a3, .LBB1_17
# %bb.19:                               # %for.body81.preheader
                                        #   in Loop: Header=BB1_18 Depth=1
	slli.d	$a5, $a4, 1
	ldx.hu	$a6, $s3, $a5
	addi.d	$a5, $s0, 1
	bstrpick.d	$a5, $a5, 31, 0
	addi.d	$a7, $a5, -1
	move	$a5, $a2
	.p2align	4, , 16
.LBB1_20:                               # %for.body81
                                        #   Parent Loop BB1_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$t0, $a5, 0
	beq	$t0, $a6, .LBB1_16
# %bb.21:                               # %for.cond78
                                        #   in Loop: Header=BB1_20 Depth=2
	addi.d	$a7, $a7, -1
	addi.d	$a5, $a5, 2
	bnez	$a7, .LBB1_20
	b	.LBB1_17
.LBB1_22:                               # %for.cond99.preheader
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	ori	$s3, $zero, 1
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	blt	$a1, $s3, .LBB1_31
# %bb.23:                               # %for.body103.lr.ph
	pcalau12i	$a0, %got_pc_hi20(targetPtr)
	ld.d	$s0, $a0, %got_pc_lo12(targetPtr)
	pcalau12i	$a0, %got_pc_hi20(targetList)
	ld.d	$a0, $a0, %got_pc_lo12(targetList)
	ld.w	$s5, $s0, 0
	ld.d	$a0, $a0, 0
	alsl.d	$a0, $s5, $a0, 1
	addi.d	$a0, $a0, 2
	bstrpick.d	$a1, $s4, 31, 1
	slli.d	$a2, $a1, 1
	move	$a1, $s7
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $s1, 31, 0
	ori	$a2, $zero, 9
	ori	$a1, $zero, 1
	bgeu	$s1, $a2, .LBB1_25
# %bb.24:
	ld.d	$t4, $sp, 168                   # 8-byte Folded Reload
	b	.LBB1_28
.LBB1_25:                               # %vector.ph
	addi.d	$a2, $a0, -1
	move	$a3, $a2
	bstrins.d	$a3, $zero, 2, 0
	ori	$a4, $zero, 1
	move	$a1, $a2
	xvrepli.b	$xr0, 0
	bstrins.d	$a1, $a4, 2, 0
	xvori.b	$xr1, $xr0, 0
	xvinsgr2vr.d	$xr1, $s5, 0
	move	$a4, $a3
	.p2align	4, , 16
.LBB1_26:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvaddi.du	$xr1, $xr1, 1
	addi.d	$a4, $a4, -8
	xvaddi.du	$xr0, $xr0, 1
	bnez	$a4, .LBB1_26
# %bb.27:                               # %middle.block
	pcalau12i	$a4, %pc_hi20(.LCPI1_0)
	xvld	$xr2, $a4, %pc_lo12(.LCPI1_0)
	xvadd.d	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 78
	xvshuf.d	$xr2, $xr0, $xr1
	xvadd.d	$xr0, $xr0, $xr2
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvadd.d	$xr0, $xr0, $xr1
	xvpickve2gr.d	$s5, $xr0, 0
	ld.d	$t4, $sp, 168                   # 8-byte Folded Reload
	beq	$a2, $a3, .LBB1_30
.LBB1_28:                               # %for.body103.preheader
	sub.d	$a2, $a0, $a1
	add.d	$a0, $s5, $a0
	sub.d	$s5, $a0, $a1
	.p2align	4, , 16
.LBB1_29:                               # %for.body103
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a2, $a2, -1
	bnez	$a2, .LBB1_29
.LBB1_30:                               # %for.cond99.for.end111_crit_edge
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	st.w	$s5, $s0, 0
.LBB1_31:                               # %for.end111
	st.w	$a0, $sp, 244
	lu12i.w	$s0, 244140
	ld.d	$t1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 56                    # 8-byte Folded Reload
	blt	$t2, $s3, .LBB1_45
# %bb.32:                               # %for.cond115.preheader
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 244
	blt	$t3, $a0, .LBB1_45
# %bb.33:                               # %for.body118.lr.ph
	pcalau12i	$a1, %got_pc_hi20(gnodeArray)
	ld.d	$a1, $a1, %got_pc_lo12(gnodeArray)
	ld.d	$a1, $a1, 0
	addi.d	$a2, $t3, 1
	bstrpick.d	$a2, $a2, 31, 0
	ori	$a3, $s0, 2560
	b	.LBB1_36
	.p2align	4, , 16
.LBB1_34:                               # %if.then148
                                        #   in Loop: Header=BB1_36 Depth=1
	st.w	$a3, $a5, 12
.LBB1_35:                               # %for.inc153
                                        #   in Loop: Header=BB1_36 Depth=1
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 244
	beq	$a0, $a2, .LBB1_45
.LBB1_36:                               # %for.body118
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_39 Depth 2
                                        #     Child Loop BB1_43 Depth 2
	move	$a6, $t2
	beq	$a0, $t3, .LBB1_38
# %bb.37:                               # %if.else
                                        #   in Loop: Header=BB1_36 Depth=1
	alsl.d	$a4, $a0, $s6, 1
	ld.h	$a6, $a4, 2
.LBB1_38:                               # %if.end129
                                        #   in Loop: Header=BB1_36 Depth=1
	slli.d	$a4, $a0, 1
	ldx.h	$a4, $s6, $a4
	slli.d	$a5, $a4, 3
	slli.d	$t0, $a6, 3
	ldx.d	$a7, $a1, $a5
	ldx.d	$a5, $a1, $t0
	beqz	$a7, .LBB1_41
	.p2align	4, , 16
.LBB1_39:                               # %while.body
                                        #   Parent Loop BB1_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t0, $a7, 0
	beq	$t0, $a6, .LBB1_42
# %bb.40:                               # %if.end140
                                        #   in Loop: Header=BB1_39 Depth=2
	ld.d	$a7, $a7, 32
	bnez	$a7, .LBB1_39
.LBB1_41:                               # %while.end
                                        #   in Loop: Header=BB1_36 Depth=1
	bnez	$a5, .LBB1_43
	b	.LBB1_35
	.p2align	4, , 16
.LBB1_42:                               # %if.then139
                                        #   in Loop: Header=BB1_36 Depth=1
	st.w	$a3, $a7, 12
	beqz	$a5, .LBB1_35
	.p2align	4, , 16
.LBB1_43:                               # %while.body144
                                        #   Parent Loop BB1_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a6, $a5, 0
	beq	$a6, $a4, .LBB1_34
# %bb.44:                               # %if.end150
                                        #   in Loop: Header=BB1_43 Depth=2
	ld.d	$a5, $a5, 32
	bnez	$a5, .LBB1_43
	b	.LBB1_35
.LBB1_45:                               # %if.end156
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	ori	$ra, $zero, 1
	blt	$s2, $ra, .LBB1_84
# %bb.46:                               # %for.body160.preheader
	move	$s8, $zero
	move	$s7, $zero
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 4
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(bareMinimum)
	ld.d	$a0, $a0, %got_pc_lo12(bareMinimum)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(sourceList)
	ld.d	$a0, $a0, %got_pc_lo12(sourceList)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(numnodes)
	ld.d	$a0, $a0, %got_pc_lo12(numnodes)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(pnodeArray)
	ld.d	$a0, $a0, %got_pc_lo12(pnodeArray)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(targetPtr)
	ld.d	$a0, $a0, %got_pc_lo12(targetPtr)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(targetList)
	ld.d	$a0, $a0, %got_pc_lo12(targetList)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(gnodeArray)
	ld.d	$a0, $a0, %got_pc_lo12(gnodeArray)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ori	$a0, $s0, 2560
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
                                        # implicit-def: $r29
	ori	$a0, $zero, 1
                                        # implicit-def: $r5
                                        # kill: killed $r5
	b	.LBB1_51
.LBB1_47:                               #   in Loop: Header=BB1_51 Depth=1
	move	$s7, $s4
.LBB1_48:                               #   in Loop: Header=BB1_51 Depth=1
	ld.d	$t1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 168                   # 8-byte Folded Reload
.LBB1_49:                               # %for.inc319
                                        #   in Loop: Header=BB1_51 Depth=1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
.LBB1_50:                               # %for.inc319
                                        #   in Loop: Header=BB1_51 Depth=1
	ld.w	$a1, $t1, 0
	addi.w	$a0, $a2, 1
	bge	$a2, $a1, .LBB1_85
.LBB1_51:                               # %for.body160
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_57 Depth 2
                                        #       Child Loop BB1_58 Depth 3
                                        #       Child Loop BB1_63 Depth 3
                                        #         Child Loop BB1_67 Depth 4
                                        #           Child Loop BB1_69 Depth 5
                                        #     Child Loop BB1_78 Depth 2
                                        #       Child Loop BB1_82 Depth 3
	move	$a2, $a0
	ori	$a0, $zero, 2
	bltu	$a2, $a0, .LBB1_53
# %bb.52:                               # %for.body160
                                        #   in Loop: Header=BB1_51 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB1_85
.LBB1_53:                               # %for.cond165.preheader
                                        #   in Loop: Header=BB1_51 Depth=1
	ld.w	$a7, $t4, 0
	blt	$a7, $ra, .LBB1_50
# %bb.54:                               # %for.cond169.preheader.lr.ph
                                        #   in Loop: Header=BB1_51 Depth=1
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	move	$t6, $zero
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a4, $a3, 0
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a5, $a3, 0
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a6, $a3, 0
	addi.d	$a3, $s8, 1
	addi.d	$t0, $a4, 1
	addi.d	$a7, $a7, 1
	bstrpick.d	$a7, $a7, 31, 0
	bstrpick.d	$t1, $a3, 31, 0
	bstrpick.d	$t0, $t0, 31, 0
	addi.d	$t1, $t1, -1
	ori	$t2, $zero, 1
	ld.d	$t3, $sp, 112                   # 8-byte Folded Reload
	b	.LBB1_57
	.p2align	4, , 16
.LBB1_55:                               #   in Loop: Header=BB1_57 Depth=2
	ori	$t6, $zero, 1
.LBB1_56:                               # %for.inc255
                                        #   in Loop: Header=BB1_57 Depth=2
	addi.d	$t2, $t2, 1
	beq	$t2, $a7, .LBB1_74
.LBB1_57:                               # %for.cond169.preheader
                                        #   Parent Loop BB1_51 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_58 Depth 3
                                        #       Child Loop BB1_63 Depth 3
                                        #         Child Loop BB1_67 Depth 4
                                        #           Child Loop BB1_69 Depth 5
	slli.d	$t4, $t2, 1
	ldx.h	$t4, $a0, $t4
	move	$t5, $t1
	ld.d	$t7, $sp, 200                   # 8-byte Folded Reload
	blt	$s8, $ra, .LBB1_60
	.p2align	4, , 16
.LBB1_58:                               # %for.body172
                                        #   Parent Loop BB1_51 Depth=1
                                        #     Parent Loop BB1_57 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t8, $t7, 0
	beq	$t8, $t4, .LBB1_56
# %bb.59:                               # %for.cond169
                                        #   in Loop: Header=BB1_58 Depth=3
	addi.d	$t5, $t5, -1
	addi.d	$t7, $t7, 4
	bnez	$t5, .LBB1_58
.LBB1_60:                               # %if.end188
                                        #   in Loop: Header=BB1_57 Depth=2
	sub.w	$t5, $t4, $a1
	slli.d	$t6, $t5, 4
	alsl.d	$t5, $t5, $t6, 3
	add.d	$t5, $a2, $t5
	ld.d	$t5, $t5, 8
	ori	$t6, $zero, 1
	st.w	$t6, $sp, 244
	blt	$a4, $t6, .LBB1_56
# %bb.61:                               # %for.body198.preheader
                                        #   in Loop: Header=BB1_57 Depth=2
	ori	$t6, $zero, 1
	b	.LBB1_63
	.p2align	4, , 16
.LBB1_62:                               # %for.inc252
                                        #   in Loop: Header=BB1_63 Depth=3
	addi.d	$t6, $t6, 1
	st.w	$t6, $sp, 244
	beq	$t6, $t0, .LBB1_55
.LBB1_63:                               # %for.body198
                                        #   Parent Loop BB1_51 Depth=1
                                        #     Parent Loop BB1_57 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_67 Depth 4
                                        #           Child Loop BB1_69 Depth 5
	slli.d	$t7, $t6, 1
	ldx.h	$t8, $a5, $t7
	slli.d	$fp, $t8, 3
	alsl.d	$t7, $t8, $fp, 2
	add.d	$s1, $t5, $t7
	ld.w	$t7, $s1, 4
	bge	$t7, $t3, .LBB1_62
# %bb.64:                               # %if.then206
                                        #   in Loop: Header=BB1_63 Depth=3
	ldx.d	$fp, $a6, $fp
	beqz	$fp, .LBB1_62
# %bb.65:                               # %for.body218.preheader
                                        #   in Loop: Header=BB1_63 Depth=3
	ld.h	$s4, $s1, 8
	alsl.d	$s5, $s4, $a6, 3
	b	.LBB1_67
	.p2align	4, , 16
.LBB1_66:                               # %for.inc239.thread
                                        #   in Loop: Header=BB1_67 Depth=4
	ld.d	$fp, $fp, 32
	beqz	$fp, .LBB1_62
.LBB1_67:                               # %for.body218
                                        #   Parent Loop BB1_51 Depth=1
                                        #     Parent Loop BB1_57 Depth=2
                                        #       Parent Loop BB1_63 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB1_69 Depth 5
	ld.w	$s1, $fp, 0
	bne	$s1, $s4, .LBB1_66
# %bb.68:                               # %for.cond226.preheader
                                        #   in Loop: Header=BB1_67 Depth=4
	move	$s2, $s5
	.p2align	4, , 16
.LBB1_69:                               # %for.cond226
                                        #   Parent Loop BB1_51 Depth=1
                                        #     Parent Loop BB1_57 Depth=2
                                        #       Parent Loop BB1_63 Depth=3
                                        #         Parent Loop BB1_67 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.d	$s1, $s2, 0
	ld.w	$s3, $s1, 0
	addi.d	$s2, $s1, 32
	bne	$s3, $t8, .LBB1_69
# %bb.70:                               # %for.inc239
                                        #   in Loop: Header=BB1_67 Depth=4
	ld.w	$s1, $s1, 12
	ori	$s2, $s0, 2560
	blt	$s1, $s2, .LBB1_72
# %bb.71:                               # %for.inc239
                                        #   in Loop: Header=BB1_67 Depth=4
	ld.d	$fp, $fp, 32
	bnez	$fp, .LBB1_67
.LBB1_72:                               # %for.end241
                                        #   in Loop: Header=BB1_63 Depth=3
	ori	$t8, $s0, 2559
	blt	$t8, $s1, .LBB1_62
# %bb.73:                               # %if.then243
                                        #   in Loop: Header=BB1_63 Depth=3
	st.d	$t6, $sp, 208                   # 8-byte Folded Spill
	move	$s6, $t4
	move	$t3, $t7
	b	.LBB1_62
	.p2align	4, , 16
.LBB1_74:                               # %for.end257
                                        #   in Loop: Header=BB1_51 Depth=1
	beqz	$t6, .LBB1_48
# %bb.75:                               # %if.then260
                                        #   in Loop: Header=BB1_51 Depth=1
	addi.w	$s8, $a3, 0
	slli.d	$a0, $s8, 2
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	stx.w	$s6, $a1, $a0
	addi.w	$a0, $s6, 0
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 0
	pcaddu18i	$ra, %call36(mshortest)
	jirl	$ra, $ra, 0
	ori	$ra, $zero, 1
	add.w	$s4, $a0, $s7
	blt	$a0, $ra, .LBB1_47
# %bb.76:                               # %for.body270.preheader
                                        #   in Loop: Header=BB1_51 Depth=1
	st.d	$s8, $sp, 80                    # 8-byte Folded Spill
	ori	$s5, $zero, 1
	b	.LBB1_78
	.p2align	4, , 16
.LBB1_77:                               # %for.end308
                                        #   in Loop: Header=BB1_78 Depth=2
	alsl.d	$a0, $a1, $a0, 2
	ld.w	$a1, $a0, -4
	addi.d	$a0, $sp, 216
	move	$a2, $s7
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, 1
	bge	$s7, $s4, .LBB1_83
.LBB1_78:                               # %for.body270
                                        #   Parent Loop BB1_51 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_82 Depth 3
	pcalau12i	$a0, %got_pc_hi20(pathList)
	ld.d	$s3, $a0, %got_pc_lo12(pathList)
	ld.d	$a0, $s3, 0
	slli.d	$s2, $s5, 3
	ldx.d	$fp, $a0, $s2
	ld.w	$a0, $fp, 0
	addi.d	$s7, $s7, 1
	slli.d	$s1, $s7, 3
	ori	$a1, $zero, 20
	blt	$a0, $a1, .LBB1_80
# %bb.79:                               # %if.then277
                                        #   in Loop: Header=BB1_78 Depth=2
	ld.d	$s8, $sp, 192                   # 8-byte Folded Reload
	ldx.d	$a0, $s8, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ldx.d	$fp, $a0, $s2
	ld.w	$a0, $fp, 0
	slli.d	$a0, $a0, 2
	addi.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	stx.d	$a0, $s8, $s1
.LBB1_80:                               # %if.end289
                                        #   in Loop: Header=BB1_78 Depth=2
	st.w	$zero, $sp, 244
	ld.w	$a2, $fp, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $s1
	addi.w	$a3, $zero, -1
	move	$a1, $zero
	blt	$a2, $a3, .LBB1_77
# %bb.81:                               # %for.body297.preheader
                                        #   in Loop: Header=BB1_78 Depth=2
	move	$a1, $zero
	.p2align	4, , 16
.LBB1_82:                               # %for.body297
                                        #   Parent Loop BB1_51 Depth=1
                                        #     Parent Loop BB1_78 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli.d	$a1, $a1, 2
	ldx.w	$a2, $fp, $a1
	stx.w	$a2, $a0, $a1
	ld.w	$a2, $sp, 244
	addi.w	$a1, $a2, 1
	st.w	$a1, $sp, 244
	ld.w	$a3, $fp, 0
	bge	$a3, $a2, .LBB1_82
	b	.LBB1_77
	.p2align	4, , 16
.LBB1_83:                               #   in Loop: Header=BB1_51 Depth=1
	move	$s7, $s4
	ld.d	$t1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 168                   # 8-byte Folded Reload
	ori	$ra, $zero, 1
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	b	.LBB1_49
.LBB1_84:
	move	$s7, $zero
.LBB1_85:                               # %for.end321
	pcalau12i	$a0, %got_pc_hi20(Mpaths)
	ld.d	$a0, $a0, %got_pc_lo12(Mpaths)
	ld.w	$a0, $a0, 0
	slt	$a1, $s7, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s7, $a1
	or	$a0, $a1, $a0
	ori	$s3, $zero, 1
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	blt	$a0, $s3, .LBB1_141
# %bb.86:                               # %for.body327.preheader
	pcalau12i	$a0, %got_pc_hi20(addTargetList)
	ld.d	$s4, $a0, %got_pc_lo12(addTargetList)
	pcalau12i	$a0, %got_pc_hi20(numnodes)
	ld.d	$a0, $a0, %got_pc_lo12(numnodes)
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(delSourceList)
	ld.d	$a0, $a0, %got_pc_lo12(delSourceList)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(pathLength)
	ld.d	$s1, $a0, %got_pc_lo12(pathLength)
	pcalau12i	$a0, %got_pc_hi20(segList)
	ld.d	$a0, $a0, %got_pc_lo12(segList)
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(segPtr)
	ld.d	$s5, $a0, %got_pc_lo12(segPtr)
	ori	$a0, $zero, 1
	b	.LBB1_88
	.p2align	4, , 16
.LBB1_87:                               # %for.inc570
                                        #   in Loop: Header=BB1_88 Depth=1
	addi.w	$a0, $fp, 1
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	beq	$fp, $a1, .LBB1_141
.LBB1_88:                               # %for.body327
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_91 Depth 2
                                        #     Child Loop BB1_94 Depth 2
                                        #     Child Loop BB1_97 Depth 2
                                        #     Child Loop BB1_103 Depth 2
                                        #       Child Loop BB1_106 Depth 3
                                        #       Child Loop BB1_114 Depth 3
                                        #         Child Loop BB1_116 Depth 4
                                        #     Child Loop BB1_122 Depth 2
                                        #     Child Loop BB1_125 Depth 2
                                        #     Child Loop BB1_137 Depth 2
                                        #       Child Loop BB1_138 Depth 3
                                        #         Child Loop BB1_139 Depth 4
                                        #     Child Loop BB1_131 Depth 2
                                        #       Child Loop BB1_132 Depth 3
                                        #         Child Loop BB1_133 Depth 4
	move	$fp, $a0
	addi.d	$a0, $sp, 216
	addi.d	$a1, $sp, 224
	addi.d	$a2, $sp, 240
	addi.d	$a3, $sp, 244
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 244
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	ld.w	$s0, $a0, 0
	ori	$a1, $zero, 2
	blt	$s0, $a1, .LBB1_99
# %bb.89:                               # %for.body334.lr.ph
                                        #   in Loop: Header=BB1_88 Depth=1
	ld.d	$a2, $s4, 0
	addi.d	$a1, $s0, -1
	ori	$a3, $zero, 1
	ori	$a4, $zero, 9
	bltu	$s0, $a4, .LBB1_93
# %bb.90:                               # %vector.ph530
                                        #   in Loop: Header=BB1_88 Depth=1
	move	$a4, $a1
	bstrins.d	$a4, $zero, 2, 0
	move	$a3, $a1
	bstrins.d	$a3, $s3, 2, 0
	addi.d	$a5, $a0, 20
	addi.d	$a6, $a2, 10
	move	$a7, $a4
	.p2align	4, , 16
.LBB1_91:                               # %vector.body533
                                        #   Parent Loop BB1_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vpickev.h	$vr0, $vr0, $vr0
	vpickev.h	$vr1, $vr1, $vr1
	vpackev.d	$vr0, $vr1, $vr0
	vst	$vr0, $a6, -8
	addi.d	$a5, $a5, 32
	addi.d	$a7, $a7, -8
	addi.d	$a6, $a6, 16
	bnez	$a7, .LBB1_91
# %bb.92:                               # %middle.block539
                                        #   in Loop: Header=BB1_88 Depth=1
	beq	$a1, $a4, .LBB1_95
.LBB1_93:                               # %for.body334.preheader
                                        #   in Loop: Header=BB1_88 Depth=1
	alsl.d	$a2, $a3, $a2, 1
	alsl.d	$a4, $a3, $a0, 2
	sub.d	$a3, $s0, $a3
	.p2align	4, , 16
.LBB1_94:                               # %for.body334
                                        #   Parent Loop BB1_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$a5, $a4, 0
	st.h	$a5, $a2, 0
	addi.d	$a2, $a2, 2
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 4
	bnez	$a3, .LBB1_94
.LBB1_95:                               # %for.body349.lr.ph
                                        #   in Loop: Header=BB1_88 Depth=1
	ld.d	$a5, $s4, 0
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a4, $a3, 0
	move	$a3, $zero
	addi.d	$a5, $a5, 2
	b	.LBB1_97
	.p2align	4, , 16
.LBB1_96:                               # %for.inc362
                                        #   in Loop: Header=BB1_97 Depth=2
	addi.d	$a1, $a1, -1
	addi.d	$a5, $a5, 2
	beqz	$a1, .LBB1_100
.LBB1_97:                               # %for.body349
                                        #   Parent Loop BB1_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$a6, $a5, 0
	bge	$a2, $a6, .LBB1_96
# %bb.98:                               # %if.then355
                                        #   in Loop: Header=BB1_97 Depth=2
	bstrpick.d	$a6, $a6, 15, 0
	addi.w	$a3, $a3, 1
	slli.d	$a7, $a3, 1
	stx.h	$a6, $a4, $a7
	b	.LBB1_96
	.p2align	4, , 16
.LBB1_99:                               #   in Loop: Header=BB1_88 Depth=1
	move	$a3, $zero
	b	.LBB1_118
	.p2align	4, , 16
.LBB1_100:                              # %for.cond365.preheader
                                        #   in Loop: Header=BB1_88 Depth=1
	blt	$a3, $s3, .LBB1_118
# %bb.101:                              # %for.body368.lr.ph
                                        #   in Loop: Header=BB1_88 Depth=1
	pcalau12i	$a1, %got_pc_hi20(pnodeArray)
	ld.d	$a2, $a1, %got_pc_lo12(pnodeArray)
	move	$s7, $zero
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	ld.d	$a4, $sp, 184                   # 8-byte Folded Reload
	ld.w	$a4, $a4, 0
	ld.d	$a5, $s4, 0
	addi.w	$a6, $a3, 1
	bstrpick.d	$a7, $a6, 31, 0
	addi.d	$t0, $a1, 2
	ori	$t1, $zero, 1
	b	.LBB1_103
	.p2align	4, , 16
.LBB1_102:                              # %for.inc461
                                        #   in Loop: Header=BB1_103 Depth=2
	addi.d	$t1, $t1, 1
	beq	$t1, $a7, .LBB1_119
.LBB1_103:                              # %for.body368
                                        #   Parent Loop BB1_88 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_106 Depth 3
                                        #       Child Loop BB1_114 Depth 3
                                        #         Child Loop BB1_116 Depth 4
	slli.d	$t2, $t1, 1
	ldx.h	$t2, $a1, $t2
	sub.w	$t2, $t2, $a4
	slli.d	$t3, $t2, 4
	alsl.d	$t3, $t2, $t3, 3
	ldx.w	$t2, $a2, $t3
	beqz	$t2, .LBB1_110
# %bb.104:                              # %if.then377
                                        #   in Loop: Header=BB1_103 Depth=2
	add.w	$t4, $s7, $a3
	add.w	$t3, $t2, $a4
	blt	$t4, $s3, .LBB1_108
# %bb.105:                              # %for.body387.preheader
                                        #   in Loop: Header=BB1_103 Depth=2
	add.d	$t4, $a6, $s7
	bstrpick.d	$t4, $t4, 31, 0
	addi.d	$t4, $t4, -1
	move	$t5, $t0
	.p2align	4, , 16
.LBB1_106:                              # %for.body387
                                        #   Parent Loop BB1_88 Depth=1
                                        #     Parent Loop BB1_103 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$t6, $t5, 0
	beq	$t3, $t6, .LBB1_109
# %bb.107:                              # %for.cond383
                                        #   in Loop: Header=BB1_106 Depth=3
	addi.d	$t4, $t4, -1
	addi.d	$t5, $t5, 2
	bnez	$t4, .LBB1_106
.LBB1_108:                              # %if.then401
                                        #   in Loop: Header=BB1_103 Depth=2
	add.w	$t4, $s7, $s0
	addi.w	$s7, $s7, 1
	add.w	$t5, $s7, $a3
	slli.d	$t5, $t5, 1
	stx.h	$t3, $a1, $t5
	slli.d	$t4, $t4, 1
	stx.h	$t3, $a5, $t4
.LBB1_109:                              # %if.end411
                                        #   in Loop: Header=BB1_103 Depth=2
	slli.d	$t3, $t2, 4
	alsl.d	$t2, $t2, $t3, 3
	add.d	$t2, $a2, $t2
	addi.d	$t2, $t2, 16
	ld.d	$t2, $t2, 0
	bnez	$t2, .LBB1_111
	b	.LBB1_102
	.p2align	4, , 16
.LBB1_110:                              # %if.else418
                                        #   in Loop: Header=BB1_103 Depth=2
	add.d	$t2, $a2, $t3
	addi.d	$t2, $t2, 16
	ld.d	$t2, $t2, 0
	beqz	$t2, .LBB1_102
.LBB1_111:                              # %while.body427.lr.ph
                                        #   in Loop: Header=BB1_103 Depth=2
	ld.d	$t3, $s4, 0
	b	.LBB1_114
	.p2align	4, , 16
.LBB1_112:                              # %if.then448
                                        #   in Loop: Header=BB1_114 Depth=3
	add.w	$t5, $s7, $s0
	addi.w	$s7, $s7, 1
	add.w	$t6, $s7, $a3
	slli.d	$t6, $t6, 1
	stx.h	$t4, $a1, $t6
	slli.d	$t5, $t5, 1
	stx.h	$t4, $t3, $t5
.LBB1_113:                              # %if.end458
                                        #   in Loop: Header=BB1_114 Depth=3
	ld.d	$t2, $t2, 8
	beqz	$t2, .LBB1_102
.LBB1_114:                              # %while.body427
                                        #   Parent Loop BB1_88 Depth=1
                                        #     Parent Loop BB1_103 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_116 Depth 4
	ld.w	$t4, $t2, 0
	add.w	$t5, $s7, $a3
	add.w	$t4, $t4, $a4
	blt	$t5, $s3, .LBB1_112
# %bb.115:                              # %for.body434.preheader
                                        #   in Loop: Header=BB1_114 Depth=3
	add.d	$t5, $a6, $s7
	bstrpick.d	$t5, $t5, 31, 0
	addi.d	$t5, $t5, -1
	move	$t6, $t0
	.p2align	4, , 16
.LBB1_116:                              # %for.body434
                                        #   Parent Loop BB1_88 Depth=1
                                        #     Parent Loop BB1_103 Depth=2
                                        #       Parent Loop BB1_114 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.h	$t7, $t6, 0
	beq	$t4, $t7, .LBB1_113
# %bb.117:                              # %for.cond430
                                        #   in Loop: Header=BB1_116 Depth=4
	addi.d	$t5, $t5, -1
	addi.d	$t6, $t6, 2
	bnez	$t5, .LBB1_116
	b	.LBB1_112
	.p2align	4, , 16
.LBB1_118:                              #   in Loop: Header=BB1_88 Depth=1
	move	$s7, $zero
.LBB1_119:                              # %for.end463
                                        #   in Loop: Header=BB1_88 Depth=1
	addi.w	$s8, $s0, 1
	slli.d	$s6, $s8, 2
	ldx.w	$a1, $a0, $s6
	ld.w	$a5, $s1, 0
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	ld.w	$a4, $s5, 0
	add.d	$a1, $a5, $a1
	ori	$a5, $zero, 1
	st.w	$a1, $s1, 0
	blt	$s0, $a5, .LBB1_127
# %bb.120:                              # %for.body475.lr.ph
                                        #   in Loop: Header=BB1_88 Depth=1
	bstrpick.d	$a1, $s8, 31, 0
	ori	$a5, $zero, 1
	ori	$a6, $zero, 9
	bltu	$s8, $a6, .LBB1_124
# %bb.121:                              # %vector.ph518
                                        #   in Loop: Header=BB1_88 Depth=1
	addi.d	$a6, $a1, -1
	move	$a7, $a6
	bstrins.d	$a7, $zero, 2, 0
	move	$a5, $a6
	bstrins.d	$a5, $s3, 2, 0
	addi.d	$t0, $a0, 20
	alsl.d	$t1, $a4, $a2, 1
	addi.d	$t1, $t1, 10
	move	$t2, $a7
	.p2align	4, , 16
.LBB1_122:                              # %vector.body521
                                        #   Parent Loop BB1_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t0, -16
	vld	$vr1, $t0, 0
	vpickev.h	$vr0, $vr0, $vr0
	vpickev.h	$vr1, $vr1, $vr1
	vpackev.d	$vr0, $vr1, $vr0
	vst	$vr0, $t1, -8
	addi.d	$t0, $t0, 32
	addi.d	$t2, $t2, -8
	addi.d	$t1, $t1, 16
	bnez	$t2, .LBB1_122
# %bb.123:                              # %middle.block525
                                        #   in Loop: Header=BB1_88 Depth=1
	beq	$a6, $a7, .LBB1_126
.LBB1_124:                              # %for.body475.preheader
                                        #   in Loop: Header=BB1_88 Depth=1
	slli.d	$a6, $a5, 1
	alsl.d	$a6, $a4, $a6, 1
	add.d	$a6, $a2, $a6
	alsl.d	$a7, $a5, $a0, 2
	sub.d	$a1, $a1, $a5
	.p2align	4, , 16
.LBB1_125:                              # %for.body475
                                        #   Parent Loop BB1_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$a5, $a7, 0
	st.h	$a5, $a6, 0
	addi.d	$a6, $a6, 2
	addi.d	$a1, $a1, -1
	addi.d	$a7, $a7, 4
	bnez	$a1, .LBB1_125
.LBB1_126:                              #   in Loop: Header=BB1_88 Depth=1
	move	$a5, $s8
.LBB1_127:                              # %for.end486
                                        #   in Loop: Header=BB1_88 Depth=1
	addi.w	$a1, $s0, -1
	add.w	$s2, $s7, $a1
	add.w	$a5, $a4, $a5
	slli.d	$a5, $a5, 1
	stx.h	$zero, $a2, $a5
	add.d	$a2, $a4, $s8
	st.w	$a2, $s5, 0
	bge	$s2, $s0, .LBB1_135
.LBB1_128:                              # %for.end523
                                        #   in Loop: Header=BB1_88 Depth=1
	slli.d	$a2, $s0, 2
	ldx.w	$a2, $a0, $a2
	add.w	$a0, $s7, $a3
	move	$a3, $s7
	pcaddu18i	$ra, %call36(recursePath)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 244
	ld.w	$a1, $s5, 0
	slli.d	$a0, $a0, 3
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	ldx.d	$a0, $a2, $a0
	sub.d	$a1, $a1, $s8
	st.w	$a1, $s5, 0
	ldx.w	$a0, $a0, $s6
	ld.w	$a1, $s1, 0
	sub.d	$a0, $a1, $a0
	st.w	$a0, $s1, 0
	blt	$s2, $s0, .LBB1_87
# %bb.129:                              # %for.body542.lr.ph
                                        #   in Loop: Header=BB1_88 Depth=1
	pcalau12i	$a0, %got_pc_hi20(gnodeArray)
	ld.d	$a1, $a0, %got_pc_lo12(gnodeArray)
	ld.d	$a0, $s4, 0
	ld.d	$a1, $a1, 0
	add.w	$a2, $s7, $s0
	b	.LBB1_131
	.p2align	4, , 16
.LBB1_130:                              # %for.inc567
                                        #   in Loop: Header=BB1_131 Depth=2
	addi.d	$s0, $s0, 1
	addi.w	$a3, $s0, 0
	beq	$a2, $a3, .LBB1_87
.LBB1_131:                              # %for.body542
                                        #   Parent Loop BB1_88 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_132 Depth 3
                                        #         Child Loop BB1_133 Depth 4
	slli.d	$a3, $s0, 1
	ldx.h	$a3, $a0, $a3
	slli.d	$a4, $a3, 3
	ldx.d	$a4, $a1, $a4
	beqz	$a4, .LBB1_130
	.p2align	4, , 16
.LBB1_132:                              # %for.body551
                                        #   Parent Loop BB1_88 Depth=1
                                        #     Parent Loop BB1_131 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_133 Depth 4
	ld.w	$a5, $a4, 0
	alsl.d	$a6, $a5, $a1, 3
	.p2align	4, , 16
.LBB1_133:                              # %for.cond555
                                        #   Parent Loop BB1_88 Depth=1
                                        #     Parent Loop BB1_131 Depth=2
                                        #       Parent Loop BB1_132 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a5, $a6, 0
	ld.w	$a7, $a5, 0
	addi.d	$a6, $a5, 32
	bne	$a7, $a3, .LBB1_133
# %bb.134:                              # %if.then559
                                        #   in Loop: Header=BB1_132 Depth=3
	ld.d	$a4, $a4, 32
	st.w	$zero, $a5, 24
	bnez	$a4, .LBB1_132
	b	.LBB1_130
	.p2align	4, , 16
.LBB1_135:                              # %for.body497.lr.ph
                                        #   in Loop: Header=BB1_88 Depth=1
	pcalau12i	$a2, %got_pc_hi20(gnodeArray)
	ld.d	$a4, $a2, %got_pc_lo12(gnodeArray)
	ld.d	$a2, $s4, 0
	ld.d	$a4, $a4, 0
	add.w	$a5, $s7, $s0
	move	$a6, $s0
	b	.LBB1_137
	.p2align	4, , 16
.LBB1_136:                              # %for.inc521
                                        #   in Loop: Header=BB1_137 Depth=2
	addi.d	$a6, $a6, 1
	addi.w	$a7, $a6, 0
	beq	$a5, $a7, .LBB1_128
.LBB1_137:                              # %for.body497
                                        #   Parent Loop BB1_88 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_138 Depth 3
                                        #         Child Loop BB1_139 Depth 4
	slli.d	$a7, $a6, 1
	ldx.h	$a7, $a2, $a7
	slli.d	$t0, $a7, 3
	ldx.d	$t0, $a4, $t0
	beqz	$t0, .LBB1_136
	.p2align	4, , 16
.LBB1_138:                              # %for.body506
                                        #   Parent Loop BB1_88 Depth=1
                                        #     Parent Loop BB1_137 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_139 Depth 4
	ld.w	$t1, $t0, 0
	alsl.d	$t2, $t1, $a4, 3
	.p2align	4, , 16
.LBB1_139:                              # %for.cond510
                                        #   Parent Loop BB1_88 Depth=1
                                        #     Parent Loop BB1_137 Depth=2
                                        #       Parent Loop BB1_138 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$t1, $t2, 0
	ld.w	$t3, $t1, 0
	addi.d	$t2, $t1, 32
	bne	$t3, $a7, .LBB1_139
# %bb.140:                              # %if.then514
                                        #   in Loop: Header=BB1_138 Depth=3
	ld.d	$t0, $t0, 32
	st.w	$s3, $t1, 24
	bnez	$t0, .LBB1_138
	b	.LBB1_136
.LBB1_141:                              # %for.end572
	pcalau12i	$s0, %pc_hi20(treeSize)
	ld.w	$a0, $s0, %pc_lo12(treeSize)
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a1, $s2, 0
	sub.w	$s1, $a0, $a1
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB1_145
# %bb.142:                              # %for.body580.preheader
	pcalau12i	$a0, %got_pc_hi20(netRoot)
	ld.d	$s7, $a0, %got_pc_lo12(netRoot)
	pcalau12i	$a0, %pc_hi20(indexRoot)
	addi.d	$s8, $a0, %pc_lo12(indexRoot)
	move	$fp, $s1
	.p2align	4, , 16
.LBB1_143:                              # %for.body580
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $sp, 224
	addi.d	$a2, $sp, 236
	addi.d	$a3, $sp, 232
	move	$a0, $s7
	pcaddu18i	$ra, %call36(tmax)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 236
	ld.w	$a2, $sp, 232
	move	$a0, $s7
	pcaddu18i	$ra, %call36(tdelete)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 232
	move	$a0, $s8
	move	$a2, $zero
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	addi.w	$fp, $fp, -1
	bnez	$fp, .LBB1_143
# %bb.144:                              # %for.end583
	ld.w	$a0, $s0, %pc_lo12(treeSize)
	sub.d	$a0, $a0, $s1
	st.w	$a0, $s0, %pc_lo12(treeSize)
.LBB1_145:                              # %if.end585
	ld.d	$a0, $sp, 216
	beqz	$a0, .LBB1_147
	.p2align	4, , 16
.LBB1_146:                              # %for.cond589
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 216
	addi.d	$a1, $sp, 224
	addi.d	$a2, $sp, 240
	addi.d	$a3, $sp, 244
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224
	bnez	$a0, .LBB1_146
.LBB1_147:                              # %if.end595
	ori	$fp, $zero, 1
	ori	$a0, $zero, 1
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	blt	$s6, $fp, .LBB1_149
# %bb.148:                              # %for.body599.lr.ph
	pcalau12i	$a0, %got_pc_hi20(sourceList)
	ld.d	$a0, $a0, %got_pc_lo12(sourceList)
	ld.d	$a0, $a0, 0
	ld.d	$s5, $sp, 168                   # 8-byte Folded Reload
	ld.w	$s0, $s5, 0
	alsl.d	$a0, $s0, $a0, 1
	addi.d	$a0, $a0, 2
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 31, 1
	slli.d	$a2, $a1, 1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	add.d	$a0, $s0, $s6
	st.w	$a0, $s5, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
.LBB1_149:                              # %for.end607
	pcalau12i	$a1, %got_pc_hi20(targetPtr)
	ld.d	$a1, $a1, %got_pc_lo12(targetPtr)
	ld.w	$a2, $a1, 0
	st.w	$a0, $sp, 244
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	sub.d	$a0, $a2, $a0
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	blt	$s3, $fp, .LBB1_159
# %bb.150:                              # %for.cond613.preheader
	ori	$t1, $zero, 1
	st.w	$t1, $sp, 244
	blt	$s4, $t1, .LBB1_159
# %bb.151:                              # %for.body616.lr.ph
	pcalau12i	$a1, %got_pc_hi20(gnodeArray)
	ld.d	$a1, $a1, %got_pc_lo12(gnodeArray)
	ld.d	$a1, $a1, 0
	addi.d	$a2, $s4, 1
	bstrpick.d	$a2, $a2, 31, 0
	b	.LBB1_153
	.p2align	4, , 16
.LBB1_152:                              # %if.then646
                                        #   in Loop: Header=BB1_153 Depth=1
	ld.w	$a3, $a4, 8
	st.w	$a3, $a4, 12
	addi.d	$t1, $t1, 1
	st.w	$t1, $sp, 244
	beq	$t1, $a2, .LBB1_159
.LBB1_153:                              # %for.body616
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_156 Depth 2
                                        #     Child Loop BB1_158 Depth 2
	move	$a5, $s3
	beq	$t1, $s4, .LBB1_155
# %bb.154:                              # %if.else623
                                        #   in Loop: Header=BB1_153 Depth=1
	alsl.d	$a3, $t1, $a0, 1
	ld.h	$a5, $a3, 2
.LBB1_155:                              # %if.end628
                                        #   in Loop: Header=BB1_153 Depth=1
	slli.d	$a3, $t1, 1
	ldx.h	$a3, $a0, $a3
	slli.d	$a4, $a5, 3
	ldx.d	$a4, $a1, $a4
	alsl.d	$a7, $a3, $a1, 3
	.p2align	4, , 16
.LBB1_156:                              # %for.cond633
                                        #   Parent Loop BB1_153 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a7, 0
	ld.w	$t0, $a6, 0
	addi.d	$a7, $a6, 32
	bne	$t0, $a5, .LBB1_156
# %bb.157:                              # %if.then637
                                        #   in Loop: Header=BB1_153 Depth=1
	ld.w	$a5, $a6, 8
	ld.w	$a7, $a4, 0
	st.w	$a5, $a6, 12
	beq	$a7, $a3, .LBB1_152
	.p2align	4, , 16
.LBB1_158:                              # %if.end649
                                        #   Parent Loop BB1_153 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $a4, 32
	ld.w	$a5, $a4, 0
	bne	$a5, $a3, .LBB1_158
	b	.LBB1_152
.LBB1_159:                              # %if.end655
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	ld.w	$a1, $s2, 0
	mul.w	$a0, $a1, $a0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB1_162
# %bb.160:                              # %for.body660.preheader
	move	$fp, $zero
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	addi.d	$s0, $a0, 8
	.p2align	4, , 16
.LBB1_161:                              # %for.body660
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	ld.w	$a1, $s2, 0
	mul.w	$a0, $a1, $a0
	addi.d	$fp, $fp, 1
	addi.d	$s0, $s0, 8
	blt	$fp, $a0, .LBB1_161
.LBB1_162:                              # %for.end665
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB1_174
.LBB1_163:                              # %vector.ph546
	bstrpick.d	$a4, $a0, 30, 5
	slli.d	$a5, $a4, 5
	addi.d	$a4, $a3, 34
	addi.d	$a6, $a1, 34
	move	$a7, $a5
	.p2align	4, , 16
.LBB1_164:                              # %vector.body549
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a4, -32
	xvld	$xr1, $a4, 0
	xvst	$xr0, $a6, -32
	xvst	$xr1, $a6, 0
	addi.d	$a4, $a4, 64
	addi.d	$a7, $a7, -32
	addi.d	$a6, $a6, 64
	bnez	$a7, .LBB1_164
# %bb.165:                              # %middle.block554
	beq	$a5, $a0, .LBB1_173
# %bb.166:                              # %vec.epilog.iter.check
	andi	$a4, $a0, 24
	beqz	$a4, .LBB1_170
.LBB1_167:                              # %vec.epilog.ph
	bstrpick.d	$a4, $a0, 30, 3
	slli.d	$a6, $a4, 3
	srli.d	$a7, $a0, 3
	ori	$a4, $zero, 1
	bstrins.d	$a4, $a7, 30, 3
	slli.d	$a7, $a5, 1
	addi.d	$t0, $a7, 2
	add.d	$a7, $a3, $t0
	add.d	$t0, $a1, $t0
	sub.d	$a5, $a5, $a6
	.p2align	4, , 16
.LBB1_168:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a7, 0
	vst	$vr0, $t0, 0
	addi.d	$a7, $a7, 16
	addi.d	$a5, $a5, 8
	addi.d	$t0, $t0, 16
	bnez	$a5, .LBB1_168
# %bb.169:                              # %vec.epilog.middle.block
	bne	$a6, $a0, .LBB1_171
	b	.LBB1_173
.LBB1_170:
	addi.d	$a4, $a5, 1
.LBB1_171:                              # %for.body.preheader
	addi.d	$a0, $a0, 1
	bstrpick.d	$a5, $a0, 31, 0
	alsl.d	$a0, $a4, $a1, 1
	alsl.d	$a1, $a4, $a3, 1
	sub.d	$a3, $a5, $a4
	.p2align	4, , 16
.LBB1_172:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a4, $a1, 0
	st.h	$a4, $a0, 0
	addi.d	$a0, $a0, 2
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 2
	bnez	$a3, .LBB1_172
.LBB1_173:                              # %for.end
	pcalau12i	$a0, %got_pc_hi20(pathLength)
	ld.d	$a0, $a0, %got_pc_lo12(pathLength)
	ld.w	$a1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(netRoot)
	ld.d	$a0, $a0, %got_pc_lo12(netRoot)
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(treeSize)
	ld.w	$a1, $a0, %pc_lo12(treeSize)
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, %pc_lo12(treeSize)
.LBB1_174:                              # %cleanup
	ld.d	$s8, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 320                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 328                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 336
	ret
.Lfunc_end1:
	.size	recursePath, .Lfunc_end1-recursePath
                                        # -- End function
	.type	indexRoot,@object               # @indexRoot
	.comm	indexRoot,8,8
	.type	treeSize,@object                # @treeSize
	.comm	treeSize,4,4
	.type	pathIndex,@object               # @pathIndex
	.comm	pathIndex,4,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym indexRoot
	.addrsig_sym pathIndex
	.addrsig_sym netRoot
