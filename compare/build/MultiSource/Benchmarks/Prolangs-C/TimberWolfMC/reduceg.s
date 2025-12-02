	.file	"reduceg.c"
	.text
	.globl	reduceg                         # -- Begin function reduceg
	.p2align	5
	.type	reduceg,@function
reduceg:                                # @reduceg
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -304
	st.d	$ra, $sp, 296                   # 8-byte Folded Spill
	st.d	$fp, $sp, 288                   # 8-byte Folded Spill
	st.d	$s0, $sp, 280                   # 8-byte Folded Spill
	st.d	$s1, $sp, 272                   # 8-byte Folded Spill
	st.d	$s2, $sp, 264                   # 8-byte Folded Spill
	st.d	$s3, $sp, 256                   # 8-byte Folded Spill
	st.d	$s4, $sp, 248                   # 8-byte Folded Spill
	st.d	$s5, $sp, 240                   # 8-byte Folded Spill
	st.d	$s6, $sp, 232                   # 8-byte Folded Spill
	st.d	$s7, $sp, 224                   # 8-byte Folded Spill
	st.d	$s8, $sp, 216                   # 8-byte Folded Spill
	st.d	$zero, $sp, 192
	ori	$a0, $zero, 808
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.w	$zero, $sp, 212
	pcalau12i	$a0, %got_pc_hi20(eNum)
	ld.d	$a0, $a0, %got_pc_lo12(eNum)
	ld.w	$a1, $a0, 0
	blez	$a1, .LBB0_3
# %bb.1:                                # %for.body.lr.ph
	pcalau12i	$a1, %got_pc_hi20(eArray)
	ld.d	$a1, $a1, %got_pc_lo12(eArray)
	ld.d	$a2, $a1, 0
	move	$a1, $zero
	addi.d	$a2, $a2, 100
	.p2align	4, , 16
.LBB0_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a2, 0
	ld.w	$a3, $a0, 0
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 56
	blt	$a1, $a3, .LBB0_2
.LBB0_3:                                # %for.cond1.preheader
	pcalau12i	$a0, %got_pc_hi20(numRects)
	ld.d	$a3, $a0, %got_pc_lo12(numRects)
	ld.w	$a0, $a3, 0
	vrepli.b	$vr0, 0
	blez	$a0, .LBB0_6
# %bb.4:                                # %for.body3.lr.ph
	pcalau12i	$a0, %got_pc_hi20(rectArray)
	ld.d	$a0, $a0, %got_pc_lo12(rectArray)
	ld.d	$a1, $a0, 0
	move	$a0, $zero
	addi.d	$a1, $a1, 84
	.p2align	4, , 16
.LBB0_5:                                # %for.body3
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a1, 0
	ld.w	$a2, $a3, 0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 52
	blt	$a0, $a2, .LBB0_5
.LBB0_6:                                # %for.cond15.preheader
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(numXnodes)
	ld.d	$a0, $a0, %got_pc_lo12(numXnodes)
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	lu12i.w	$a2, -251659
	lu12i.w	$a3, 20971
	lu12i.w	$a4, 10485
	vst	$vr0, $sp, 144                  # 16-byte Folded Spill
	blez	$a0, .LBB0_33
# %bb.7:                                # %for.body17.preheader
	xvrepli.b	$xr0, 0
	xvst	$xr0, $sp, 96                   # 32-byte Folded Spill
	ori	$s1, $zero, 1
	pcalau12i	$a1, %got_pc_hi20(xNodeArray)
	ld.d	$a1, $a1, %got_pc_lo12(xNodeArray)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ori	$s2, $a2, 3113
	ori	$s5, $a3, 2128
	ori	$s8, $a4, 3112
	pcalau12i	$a1, %got_pc_hi20(eArray)
	ld.d	$s3, $a1, %got_pc_lo12(eArray)
	ori	$s4, $zero, 56
	pcalau12i	$a1, %got_pc_hi20(rectArray)
	ld.d	$a1, $a1, %got_pc_lo12(rectArray)
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	ori	$s0, $zero, 52
	ori	$a1, $zero, 1
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_8:                                # %for.inc82.loopexit
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
.LBB0_9:                                # %for.inc82
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	addi.d	$a1, $a2, 1
	bge	$a2, $a0, .LBB0_33
.LBB0_10:                               # %for.body17
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_28 Depth 3
                                        #       Child Loop BB0_31 Depth 3
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	slli.d	$a1, $a1, 3
	ldx.d	$s6, $a2, $a1
	bnez	$s6, .LBB0_14
	b	.LBB0_9
.LBB0_11:                               #   in Loop: Header=BB0_14 Depth=2
	move	$a4, $zero
.LBB0_12:                               # %for.end43
                                        #   in Loop: Header=BB0_14 Depth=2
	ld.w	$a2, $sp, 212
	addi.w	$a0, $a4, 0
	div.w	$a0, $a0, $s7
	st.w	$a0, $sp, 208
	slli.d	$a1, $a2, 3
	stx.d	$s6, $fp, $a1
	sub.w	$a1, $zero, $a0
	addi.d	$a0, $sp, 192
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 8
	ld.w	$a1, $a0, 4
	ld.d	$a2, $s3, 0
	mul.d	$a1, $a1, $s4
	add.d	$a3, $a2, $a1
	ld.w	$a3, $a3, 4
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a4, $a4, 0
	ldx.w	$a1, $a2, $a1
	mul.d	$a3, $a3, $s0
	add.d	$a3, $a4, $a3
	st.w	$s1, $a3, 44
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a4, $a1
	st.w	$s1, $a1, 36
	slli.d	$a1, $s7, 2
	ldx.w	$a0, $a0, $a1
	mul.d	$a0, $a0, $s4
	add.d	$a1, $a2, $a0
	ld.w	$a1, $a1, 4
	ldx.w	$a0, $a2, $a0
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a4, $a1
	st.w	$s1, $a1, 40
	mul.d	$a0, $a0, $s0
	add.d	$a0, $a4, $a0
	st.w	$s1, $a0, 32
.LBB0_13:                               # %for.inc80
                                        #   in Loop: Header=BB0_14 Depth=2
	ld.d	$s6, $s6, 24
	beqz	$s6, .LBB0_8
.LBB0_14:                               # %for.body22
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_28 Depth 3
                                        #       Child Loop BB0_31 Depth 3
	ld.w	$a0, $s6, 0
	beq	$a0, $s1, .LBB0_13
# %bb.15:                               # %if.end
                                        #   in Loop: Header=BB0_14 Depth=2
	ld.d	$a1, $s6, 8
	ld.w	$a0, $sp, 212
	ld.w	$s7, $a1, 0
	addi.d	$a1, $a0, 1
	mul.d	$a2, $a1, $s2
	add.d	$a2, $a2, $s5
	rotri.w	$a2, $a2, 2
	st.w	$a1, $sp, 212
	bgeu	$s8, $a2, .LBB0_17
# %bb.16:                               # %if.end29
                                        #   in Loop: Header=BB0_14 Depth=2
	bgtz	$s7, .LBB0_18
	b	.LBB0_11
.LBB0_17:                               # %if.then27
                                        #   in Loop: Header=BB0_14 Depth=2
	slli.d	$a0, $a0, 3
	addi.d	$a1, $a0, 808
	move	$a0, $fp
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	blez	$s7, .LBB0_11
.LBB0_18:                               # %iter.check
                                        #   in Loop: Header=BB0_14 Depth=2
	ld.d	$a0, $s3, 0
	ld.d	$a1, $s6, 8
	ori	$a2, $zero, 4
	bgeu	$s7, $a2, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_14 Depth=2
	move	$a4, $zero
	ori	$a3, $zero, 1
	b	.LBB0_30
.LBB0_20:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB0_14 Depth=2
	ori	$a2, $zero, 16
	bgeu	$s7, $a2, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_14 Depth=2
	move	$a2, $zero
	move	$a4, $zero
	b	.LBB0_27
.LBB0_22:                               # %vector.ph
                                        #   in Loop: Header=BB0_14 Depth=2
	andi	$a2, $s7, 12
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	bstrpick.d	$a2, $s7, 30, 4
	slli.d	$a2, $a2, 4
	addi.d	$a4, $a1, 36
	move	$a5, $a2
	xvld	$xr1, $sp, 96                   # 32-byte Folded Reload
	xvori.b	$xr0, $xr1, 0
	.p2align	4, , 16
.LBB0_23:                               # %vector.body
                                        #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr2, $a4, -32
	xvld	$xr3, $a4, 0
	xvpermi.q	$xr4, $xr2, 1
	vpickve2gr.w	$a6, $vr4, 2
	vinsgr2vr.d	$vr5, $a6, 0
	vpickve2gr.w	$a6, $vr4, 3
	vinsgr2vr.d	$vr5, $a6, 1
	xvpermi.q	$xr5, $xr5, 2
	vpickve2gr.w	$a6, $vr4, 0
	vinsgr2vr.d	$vr6, $a6, 0
	vpickve2gr.w	$a6, $vr4, 1
	vinsgr2vr.d	$vr6, $a6, 1
	vpickve2gr.w	$a6, $vr2, 2
	vinsgr2vr.d	$vr4, $a6, 0
	vpickve2gr.w	$a6, $vr2, 3
	vinsgr2vr.d	$vr4, $a6, 1
	xvpermi.q	$xr4, $xr4, 2
	vpickve2gr.w	$a6, $vr2, 0
	vinsgr2vr.d	$vr7, $a6, 0
	vpickve2gr.w	$a6, $vr2, 1
	vinsgr2vr.d	$vr7, $a6, 1
	xvpickve2gr.d	$a6, $xr7, 0
	xvpickve2gr.d	$a7, $xr7, 1
	xvpickve2gr.d	$t0, $xr4, 2
	xvpickve2gr.d	$t1, $xr4, 3
	xvpickve2gr.d	$t2, $xr6, 0
	xvpickve2gr.d	$t3, $xr6, 1
	xvpickve2gr.d	$t4, $xr5, 2
	xvpickve2gr.d	$t5, $xr5, 3
	xvpermi.q	$xr2, $xr3, 1
	vpickve2gr.w	$t6, $vr2, 2
	vinsgr2vr.d	$vr4, $t6, 0
	vpickve2gr.w	$t6, $vr2, 3
	vinsgr2vr.d	$vr4, $t6, 1
	xvpermi.q	$xr4, $xr4, 2
	vpickve2gr.w	$t6, $vr2, 0
	vinsgr2vr.d	$vr5, $t6, 0
	vpickve2gr.w	$t6, $vr2, 1
	vinsgr2vr.d	$vr5, $t6, 1
	vpickve2gr.w	$t6, $vr3, 2
	vinsgr2vr.d	$vr2, $t6, 0
	vpickve2gr.w	$t6, $vr3, 3
	vinsgr2vr.d	$vr2, $t6, 1
	xvpermi.q	$xr2, $xr2, 2
	vpickve2gr.w	$t6, $vr3, 0
	vinsgr2vr.d	$vr6, $t6, 0
	vpickve2gr.w	$t6, $vr3, 1
	vinsgr2vr.d	$vr6, $t6, 1
	xvpickve2gr.d	$t6, $xr6, 0
	xvpickve2gr.d	$t7, $xr6, 1
	xvpickve2gr.d	$t8, $xr2, 2
	xvpickve2gr.d	$ra, $xr2, 3
	xvpickve2gr.d	$s8, $xr5, 0
	xvpickve2gr.d	$s2, $xr5, 1
	xvpickve2gr.d	$a3, $xr4, 2
	xvpickve2gr.d	$s5, $xr4, 3
	mul.d	$a6, $a6, $s4
	add.d	$a6, $a0, $a6
	mul.d	$a7, $a7, $s4
	add.d	$a7, $a0, $a7
	mul.d	$t0, $t0, $s4
	add.d	$t0, $a0, $t0
	mul.d	$t1, $t1, $s4
	add.d	$t1, $a0, $t1
	mul.d	$t2, $t2, $s4
	add.d	$t2, $a0, $t2
	mul.d	$t3, $t3, $s4
	add.d	$t3, $a0, $t3
	mul.d	$t4, $t4, $s4
	add.d	$t4, $a0, $t4
	mul.d	$t5, $t5, $s4
	add.d	$t5, $a0, $t5
	mul.d	$t6, $t6, $s4
	add.d	$t6, $a0, $t6
	mul.d	$t7, $t7, $s4
	add.d	$t7, $a0, $t7
	mul.d	$t8, $t8, $s4
	add.d	$t8, $a0, $t8
	mul.d	$ra, $ra, $s4
	add.d	$ra, $a0, $ra
	mul.d	$s8, $s8, $s4
	add.d	$s8, $a0, $s8
	mul.d	$s2, $s2, $s4
	add.d	$s2, $a0, $s2
	mul.d	$a3, $a3, $s4
	add.d	$a3, $a0, $a3
	mul.d	$s5, $s5, $s4
	add.d	$s5, $a0, $s5
	ld.w	$a6, $a6, 20
	ld.w	$a7, $a7, 20
	ld.w	$t0, $t0, 20
	ld.w	$t1, $t1, 20
	ld.w	$t2, $t2, 20
	ld.w	$t3, $t3, 20
	ld.w	$t4, $t4, 20
	ld.w	$t5, $t5, 20
	vinsgr2vr.w	$vr2, $t2, 0
	vinsgr2vr.w	$vr2, $t3, 1
	vinsgr2vr.w	$vr2, $t4, 2
	vinsgr2vr.w	$vr2, $t5, 3
	vinsgr2vr.w	$vr3, $a6, 0
	vinsgr2vr.w	$vr3, $a7, 1
	vinsgr2vr.w	$vr3, $t0, 2
	vinsgr2vr.w	$vr3, $t1, 3
	xvpermi.q	$xr3, $xr2, 2
	ld.w	$a6, $t6, 20
	ld.w	$a7, $t7, 20
	ld.w	$t0, $t8, 20
	ld.w	$t1, $ra, 20
	ld.w	$t2, $s8, 20
	ld.w	$t3, $s2, 20
	ld.w	$a3, $a3, 20
	ld.w	$t4, $s5, 20
	vinsgr2vr.w	$vr2, $t2, 0
	vinsgr2vr.w	$vr2, $t3, 1
	vinsgr2vr.w	$vr2, $a3, 2
	vinsgr2vr.w	$vr2, $t4, 3
	vinsgr2vr.w	$vr4, $a6, 0
	vinsgr2vr.w	$vr4, $a7, 1
	vinsgr2vr.w	$vr4, $t0, 2
	vinsgr2vr.w	$vr4, $t1, 3
	xvpermi.q	$xr4, $xr2, 2
	xvadd.w	$xr0, $xr0, $xr3
	xvadd.w	$xr1, $xr1, $xr4
	addi.d	$a5, $a5, -16
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB0_23
# %bb.24:                               # %middle.block
                                        #   in Loop: Header=BB0_14 Depth=2
	xvadd.w	$xr0, $xr1, $xr0
	xvhaddw.d.w	$xr0, $xr0, $xr0
	xvhaddw.q.d	$xr0, $xr0, $xr0
	xvpermi.d	$xr1, $xr0, 2
	xvadd.d	$xr0, $xr1, $xr0
	xvpickve2gr.d	$a4, $xr0, 0
	bne	$a2, $s7, .LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_14 Depth=2
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	b	.LBB0_12
.LBB0_26:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB0_14 Depth=2
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	beqz	$a3, .LBB0_32
.LBB0_27:                               #   in Loop: Header=BB0_14 Depth=2
	vld	$vr0, $sp, 144                  # 16-byte Folded Reload
	bstrpick.d	$a3, $s7, 30, 2
	slli.d	$a5, $a3, 2
	srli.d	$a6, $s7, 2
	ori	$a3, $zero, 1
	bstrins.d	$a3, $a6, 30, 2
	vinsgr2vr.w	$vr0, $a4, 0
	alsl.d	$a4, $a2, $a1, 2
	addi.d	$a4, $a4, 4
	sub.d	$a2, $a2, $a5
	.p2align	4, , 16
.LBB0_28:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr1, $a4, 0
	vpickve2gr.w	$a6, $vr1, 2
	vinsgr2vr.d	$vr2, $a6, 0
	vpickve2gr.w	$a6, $vr1, 3
	vinsgr2vr.d	$vr2, $a6, 1
	xvpermi.q	$xr2, $xr2, 2
	vpickve2gr.w	$a6, $vr1, 0
	vinsgr2vr.d	$vr3, $a6, 0
	vpickve2gr.w	$a6, $vr1, 1
	vinsgr2vr.d	$vr3, $a6, 1
	xvpickve2gr.d	$a6, $xr3, 0
	xvpickve2gr.d	$a7, $xr3, 1
	xvpickve2gr.d	$t0, $xr2, 2
	xvpickve2gr.d	$t1, $xr2, 3
	mul.d	$a6, $a6, $s4
	add.d	$a6, $a0, $a6
	mul.d	$a7, $a7, $s4
	add.d	$a7, $a0, $a7
	mul.d	$t0, $t0, $s4
	add.d	$t0, $a0, $t0
	mul.d	$t1, $t1, $s4
	add.d	$t1, $a0, $t1
	ld.w	$a6, $a6, 20
	ld.w	$a7, $a7, 20
	ld.w	$t0, $t0, 20
	ld.w	$t1, $t1, 20
	vinsgr2vr.w	$vr1, $a6, 0
	vinsgr2vr.w	$vr1, $a7, 1
	vinsgr2vr.w	$vr1, $t0, 2
	vinsgr2vr.w	$vr1, $t1, 3
	vadd.w	$vr0, $vr0, $vr1
	addi.d	$a2, $a2, 4
	addi.d	$a4, $a4, 16
	bnez	$a2, .LBB0_28
# %bb.29:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB0_14 Depth=2
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a4, $vr0, 0
	beq	$a5, $s7, .LBB0_12
.LBB0_30:                               # %for.body33.preheader
                                        #   in Loop: Header=BB0_14 Depth=2
	addi.d	$a2, $s7, 1
	bstrpick.d	$a2, $a2, 31, 0
	alsl.d	$a1, $a3, $a1, 2
	sub.d	$a2, $a2, $a3
	.p2align	4, , 16
.LBB0_31:                               # %for.body33
                                        #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a3, $a1, 0
	mul.d	$a3, $a3, $s4
	add.d	$a3, $a0, $a3
	ld.w	$a3, $a3, 20
	add.d	$a4, $a4, $a3
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB0_31
	b	.LBB0_12
.LBB0_32:                               #   in Loop: Header=BB0_14 Depth=2
	addi.d	$a3, $a2, 1
	b	.LBB0_30
.LBB0_33:                               # %for.cond85.preheader
	pcalau12i	$a0, %got_pc_hi20(numYnodes)
	ld.d	$a0, $a0, %got_pc_lo12(numYnodes)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	blez	$a0, .LBB0_60
# %bb.34:                               # %for.body88.preheader
	ori	$s6, $zero, 1
	pcalau12i	$a1, %got_pc_hi20(yNodeArray)
	ld.d	$a1, $a1, %got_pc_lo12(yNodeArray)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	lu12i.w	$a1, -251659
	ori	$s3, $a1, 3113
	lu12i.w	$a1, 20971
	ori	$s5, $a1, 2128
	lu12i.w	$a1, 10485
	ori	$s7, $a1, 3112
	pcalau12i	$a1, %got_pc_hi20(eArray)
	ld.d	$s8, $a1, %got_pc_lo12(eArray)
	ori	$s4, $zero, 56
	pcalau12i	$a1, %got_pc_hi20(rectArray)
	ld.d	$a1, $a1, %got_pc_lo12(rectArray)
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	ori	$s0, $zero, 52
	xvrepli.b	$xr0, 0
	xvst	$xr0, $sp, 32                   # 32-byte Folded Spill
	ori	$a1, $zero, 1
	st.d	$s3, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s7, $sp, 72                    # 8-byte Folded Spill
	b	.LBB0_37
	.p2align	4, , 16
.LBB0_35:                               # %for.inc167.loopexit
                                        #   in Loop: Header=BB0_37 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
.LBB0_36:                               # %for.inc167
                                        #   in Loop: Header=BB0_37 Depth=1
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a1, $a2, 1
	bge	$a2, $a0, .LBB0_60
.LBB0_37:                               # %for.body88
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_41 Depth 2
                                        #       Child Loop BB0_50 Depth 3
                                        #       Child Loop BB0_55 Depth 3
                                        #       Child Loop BB0_58 Depth 3
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	slli.d	$a1, $a1, 3
	ldx.d	$s1, $a2, $a1
	bnez	$s1, .LBB0_41
	b	.LBB0_36
.LBB0_38:                               #   in Loop: Header=BB0_41 Depth=2
	move	$a4, $zero
.LBB0_39:                               # %for.end125
                                        #   in Loop: Header=BB0_41 Depth=2
	ld.w	$a2, $sp, 212
	addi.w	$a0, $a4, 0
	div.w	$a0, $a0, $s2
	st.w	$a0, $sp, 208
	slli.d	$a1, $a2, 3
	stx.d	$s1, $fp, $a1
	sub.w	$a1, $zero, $a0
	addi.d	$a0, $sp, 192
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 8
	ld.w	$a1, $a0, 4
	ld.d	$a2, $s8, 0
	mul.d	$a1, $a1, $s4
	add.d	$a3, $a2, $a1
	ld.w	$a3, $a3, 4
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a4, $a4, 0
	ldx.w	$a1, $a2, $a1
	mul.d	$a3, $a3, $s0
	add.d	$a3, $a4, $a3
	st.w	$s6, $a3, 44
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a4, $a1
	st.w	$s6, $a1, 40
	slli.d	$a1, $s2, 2
	ldx.w	$a0, $a0, $a1
	mul.d	$a0, $a0, $s4
	add.d	$a1, $a2, $a0
	ld.w	$a1, $a1, 4
	ldx.w	$a0, $a2, $a0
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a4, $a1
	st.w	$s6, $a1, 36
	mul.d	$a0, $a0, $s0
	add.d	$a0, $a4, $a0
	st.w	$s6, $a0, 32
.LBB0_40:                               # %for.inc164
                                        #   in Loop: Header=BB0_41 Depth=2
	ld.d	$s1, $s1, 24
	beqz	$s1, .LBB0_35
.LBB0_41:                               # %for.body94
                                        #   Parent Loop BB0_37 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_50 Depth 3
                                        #       Child Loop BB0_55 Depth 3
                                        #       Child Loop BB0_58 Depth 3
	ld.w	$a0, $s1, 0
	beq	$a0, $s6, .LBB0_40
# %bb.42:                               # %if.end99
                                        #   in Loop: Header=BB0_41 Depth=2
	ld.d	$a1, $s1, 8
	ld.w	$a0, $sp, 212
	ld.w	$s2, $a1, 0
	addi.d	$a1, $a0, 1
	mul.d	$a2, $a1, $s3
	add.d	$a2, $a2, $s5
	rotri.w	$a2, $a2, 2
	st.w	$a1, $sp, 212
	bgeu	$s7, $a2, .LBB0_44
# %bb.43:                               # %if.end111
                                        #   in Loop: Header=BB0_41 Depth=2
	bgtz	$s2, .LBB0_45
	b	.LBB0_38
.LBB0_44:                               # %if.then106
                                        #   in Loop: Header=BB0_41 Depth=2
	slli.d	$a0, $a0, 3
	addi.d	$a1, $a0, 808
	move	$a0, $fp
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	blez	$s2, .LBB0_38
.LBB0_45:                               # %iter.check827
                                        #   in Loop: Header=BB0_41 Depth=2
	ld.d	$a0, $s8, 0
	ld.d	$a1, $s1, 8
	ori	$a2, $zero, 4
	bgeu	$s2, $a2, .LBB0_47
# %bb.46:                               #   in Loop: Header=BB0_41 Depth=2
	move	$a4, $zero
	ori	$a3, $zero, 1
	b	.LBB0_57
.LBB0_47:                               # %vector.main.loop.iter.check829
                                        #   in Loop: Header=BB0_41 Depth=2
	ori	$a2, $zero, 16
	bgeu	$s2, $a2, .LBB0_49
# %bb.48:                               #   in Loop: Header=BB0_41 Depth=2
	move	$a2, $zero
	move	$a4, $zero
	b	.LBB0_54
.LBB0_49:                               # %vector.ph830
                                        #   in Loop: Header=BB0_41 Depth=2
	andi	$a2, $s2, 12
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	bstrpick.d	$a2, $s2, 30, 4
	slli.d	$a2, $a2, 4
	addi.d	$a4, $a1, 36
	move	$a5, $a2
	xvld	$xr1, $sp, 32                   # 32-byte Folded Reload
	xvori.b	$xr0, $xr1, 0
	.p2align	4, , 16
.LBB0_50:                               # %vector.body833
                                        #   Parent Loop BB0_37 Depth=1
                                        #     Parent Loop BB0_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr2, $a4, -32
	xvld	$xr3, $a4, 0
	xvpermi.q	$xr4, $xr2, 1
	vpickve2gr.w	$a6, $vr4, 2
	vinsgr2vr.d	$vr5, $a6, 0
	vpickve2gr.w	$a6, $vr4, 3
	vinsgr2vr.d	$vr5, $a6, 1
	xvpermi.q	$xr5, $xr5, 2
	vpickve2gr.w	$a6, $vr4, 0
	vinsgr2vr.d	$vr6, $a6, 0
	vpickve2gr.w	$a6, $vr4, 1
	vinsgr2vr.d	$vr6, $a6, 1
	vpickve2gr.w	$a6, $vr2, 2
	vinsgr2vr.d	$vr4, $a6, 0
	vpickve2gr.w	$a6, $vr2, 3
	vinsgr2vr.d	$vr4, $a6, 1
	xvpermi.q	$xr4, $xr4, 2
	vpickve2gr.w	$a6, $vr2, 0
	vinsgr2vr.d	$vr7, $a6, 0
	vpickve2gr.w	$a6, $vr2, 1
	vinsgr2vr.d	$vr7, $a6, 1
	xvpickve2gr.d	$a6, $xr7, 0
	xvpickve2gr.d	$a7, $xr7, 1
	xvpickve2gr.d	$t0, $xr4, 2
	xvpickve2gr.d	$t1, $xr4, 3
	xvpickve2gr.d	$t2, $xr6, 0
	xvpickve2gr.d	$t3, $xr6, 1
	xvpickve2gr.d	$t4, $xr5, 2
	xvpickve2gr.d	$t5, $xr5, 3
	xvpermi.q	$xr2, $xr3, 1
	vpickve2gr.w	$t6, $vr2, 2
	vinsgr2vr.d	$vr4, $t6, 0
	vpickve2gr.w	$t6, $vr2, 3
	vinsgr2vr.d	$vr4, $t6, 1
	xvpermi.q	$xr4, $xr4, 2
	vpickve2gr.w	$t6, $vr2, 0
	vinsgr2vr.d	$vr5, $t6, 0
	vpickve2gr.w	$t6, $vr2, 1
	vinsgr2vr.d	$vr5, $t6, 1
	vpickve2gr.w	$t6, $vr3, 2
	vinsgr2vr.d	$vr2, $t6, 0
	vpickve2gr.w	$t6, $vr3, 3
	vinsgr2vr.d	$vr2, $t6, 1
	xvpermi.q	$xr2, $xr2, 2
	vpickve2gr.w	$t6, $vr3, 0
	vinsgr2vr.d	$vr6, $t6, 0
	vpickve2gr.w	$t6, $vr3, 1
	vinsgr2vr.d	$vr6, $t6, 1
	xvpickve2gr.d	$t6, $xr6, 0
	xvpickve2gr.d	$t7, $xr6, 1
	xvpickve2gr.d	$t8, $xr2, 2
	xvpickve2gr.d	$ra, $xr2, 3
	xvpickve2gr.d	$a3, $xr5, 0
	xvpickve2gr.d	$s3, $xr5, 1
	xvpickve2gr.d	$s5, $xr4, 2
	xvpickve2gr.d	$s7, $xr4, 3
	mul.d	$a6, $a6, $s4
	add.d	$a6, $a0, $a6
	mul.d	$a7, $a7, $s4
	add.d	$a7, $a0, $a7
	mul.d	$t0, $t0, $s4
	add.d	$t0, $a0, $t0
	mul.d	$t1, $t1, $s4
	add.d	$t1, $a0, $t1
	mul.d	$t2, $t2, $s4
	add.d	$t2, $a0, $t2
	mul.d	$t3, $t3, $s4
	add.d	$t3, $a0, $t3
	mul.d	$t4, $t4, $s4
	add.d	$t4, $a0, $t4
	mul.d	$t5, $t5, $s4
	add.d	$t5, $a0, $t5
	mul.d	$t6, $t6, $s4
	add.d	$t6, $a0, $t6
	mul.d	$t7, $t7, $s4
	add.d	$t7, $a0, $t7
	mul.d	$t8, $t8, $s4
	add.d	$t8, $a0, $t8
	mul.d	$ra, $ra, $s4
	add.d	$ra, $a0, $ra
	mul.d	$a3, $a3, $s4
	add.d	$a3, $a0, $a3
	mul.d	$s3, $s3, $s4
	add.d	$s3, $a0, $s3
	mul.d	$s5, $s5, $s4
	add.d	$s5, $a0, $s5
	mul.d	$s7, $s7, $s4
	add.d	$s7, $a0, $s7
	ld.w	$a6, $a6, 20
	ld.w	$a7, $a7, 20
	ld.w	$t0, $t0, 20
	ld.w	$t1, $t1, 20
	ld.w	$t2, $t2, 20
	ld.w	$t3, $t3, 20
	ld.w	$t4, $t4, 20
	ld.w	$t5, $t5, 20
	vinsgr2vr.w	$vr2, $t2, 0
	vinsgr2vr.w	$vr2, $t3, 1
	vinsgr2vr.w	$vr2, $t4, 2
	vinsgr2vr.w	$vr2, $t5, 3
	vinsgr2vr.w	$vr3, $a6, 0
	vinsgr2vr.w	$vr3, $a7, 1
	vinsgr2vr.w	$vr3, $t0, 2
	vinsgr2vr.w	$vr3, $t1, 3
	xvpermi.q	$xr3, $xr2, 2
	ld.w	$a6, $t6, 20
	ld.w	$a7, $t7, 20
	ld.w	$t0, $t8, 20
	ld.w	$t1, $ra, 20
	ld.w	$a3, $a3, 20
	ld.w	$t2, $s3, 20
	ld.w	$t3, $s5, 20
	ld.w	$t4, $s7, 20
	vinsgr2vr.w	$vr2, $a3, 0
	vinsgr2vr.w	$vr2, $t2, 1
	vinsgr2vr.w	$vr2, $t3, 2
	vinsgr2vr.w	$vr2, $t4, 3
	vinsgr2vr.w	$vr4, $a6, 0
	vinsgr2vr.w	$vr4, $a7, 1
	vinsgr2vr.w	$vr4, $t0, 2
	vinsgr2vr.w	$vr4, $t1, 3
	xvpermi.q	$xr4, $xr2, 2
	xvadd.w	$xr0, $xr0, $xr3
	xvadd.w	$xr1, $xr1, $xr4
	addi.d	$a5, $a5, -16
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB0_50
# %bb.51:                               # %middle.block840
                                        #   in Loop: Header=BB0_41 Depth=2
	xvadd.w	$xr0, $xr1, $xr0
	xvhaddw.d.w	$xr0, $xr0, $xr0
	xvhaddw.q.d	$xr0, $xr0, $xr0
	xvpermi.d	$xr1, $xr0, 2
	xvadd.d	$xr0, $xr1, $xr0
	xvpickve2gr.d	$a4, $xr0, 0
	bne	$a2, $s2, .LBB0_53
# %bb.52:                               #   in Loop: Header=BB0_41 Depth=2
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 72                    # 8-byte Folded Reload
	b	.LBB0_39
.LBB0_53:                               # %vec.epilog.iter.check846
                                        #   in Loop: Header=BB0_41 Depth=2
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	beqz	$a3, .LBB0_59
.LBB0_54:                               #   in Loop: Header=BB0_41 Depth=2
	vld	$vr0, $sp, 144                  # 16-byte Folded Reload
	bstrpick.d	$a3, $s2, 30, 2
	slli.d	$a5, $a3, 2
	srli.d	$a6, $s2, 2
	ori	$a3, $zero, 1
	bstrins.d	$a3, $a6, 30, 2
	vinsgr2vr.w	$vr0, $a4, 0
	alsl.d	$a4, $a2, $a1, 2
	addi.d	$a4, $a4, 4
	sub.d	$a2, $a2, $a5
	.p2align	4, , 16
.LBB0_55:                               # %vec.epilog.vector.body851
                                        #   Parent Loop BB0_37 Depth=1
                                        #     Parent Loop BB0_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr1, $a4, 0
	vpickve2gr.w	$a6, $vr1, 2
	vinsgr2vr.d	$vr2, $a6, 0
	vpickve2gr.w	$a6, $vr1, 3
	vinsgr2vr.d	$vr2, $a6, 1
	xvpermi.q	$xr2, $xr2, 2
	vpickve2gr.w	$a6, $vr1, 0
	vinsgr2vr.d	$vr3, $a6, 0
	vpickve2gr.w	$a6, $vr1, 1
	vinsgr2vr.d	$vr3, $a6, 1
	xvpickve2gr.d	$a6, $xr3, 0
	xvpickve2gr.d	$a7, $xr3, 1
	xvpickve2gr.d	$t0, $xr2, 2
	xvpickve2gr.d	$t1, $xr2, 3
	mul.d	$a6, $a6, $s4
	add.d	$a6, $a0, $a6
	mul.d	$a7, $a7, $s4
	add.d	$a7, $a0, $a7
	mul.d	$t0, $t0, $s4
	add.d	$t0, $a0, $t0
	mul.d	$t1, $t1, $s4
	add.d	$t1, $a0, $t1
	ld.w	$a6, $a6, 20
	ld.w	$a7, $a7, 20
	ld.w	$t0, $t0, 20
	ld.w	$t1, $t1, 20
	vinsgr2vr.w	$vr1, $a6, 0
	vinsgr2vr.w	$vr1, $a7, 1
	vinsgr2vr.w	$vr1, $t0, 2
	vinsgr2vr.w	$vr1, $t1, 3
	vadd.w	$vr0, $vr0, $vr1
	addi.d	$a2, $a2, 4
	addi.d	$a4, $a4, 16
	bnez	$a2, .LBB0_55
# %bb.56:                               # %vec.epilog.middle.block857
                                        #   in Loop: Header=BB0_41 Depth=2
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a4, $vr0, 0
	beq	$a5, $s2, .LBB0_39
.LBB0_57:                               # %for.body115.preheader
                                        #   in Loop: Header=BB0_41 Depth=2
	addi.d	$a2, $s2, 1
	bstrpick.d	$a2, $a2, 31, 0
	alsl.d	$a1, $a3, $a1, 2
	sub.d	$a2, $a2, $a3
	.p2align	4, , 16
.LBB0_58:                               # %for.body115
                                        #   Parent Loop BB0_37 Depth=1
                                        #     Parent Loop BB0_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a3, $a1, 0
	mul.d	$a3, $a3, $s4
	add.d	$a3, $a0, $a3
	ld.w	$a3, $a3, 20
	add.d	$a4, $a4, $a3
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB0_58
	b	.LBB0_39
.LBB0_59:                               #   in Loop: Header=BB0_41 Depth=2
	addi.d	$a3, $a2, 1
	b	.LBB0_57
.LBB0_60:                               # %for.cond170.preheader
	ori	$s0, $zero, 1
	pcalau12i	$a0, %got_pc_hi20(edgeTransition)
	ld.d	$a0, $a0, %got_pc_lo12(edgeTransition)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(eArray)
	ld.d	$s2, $a0, %got_pc_lo12(eArray)
	pcalau12i	$a0, %got_pc_hi20(rectArray)
	ld.d	$s3, $a0, %got_pc_lo12(rectArray)
	ori	$s4, $zero, 56
	ori	$s5, $zero, 52
	lu12i.w	$a0, 2441
	ori	$a0, $a0, 1664
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
                                        # implicit-def: $r31
	.p2align	4, , 16
.LBB0_61:                               # %for.cond170
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_66 Depth 2
                                        #       Child Loop BB0_73 Depth 3
                                        #       Child Loop BB0_70 Depth 3
                                        #       Child Loop BB0_87 Depth 3
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 200
	addi.d	$a2, $sp, 208
	addi.d	$a3, $sp, 212
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200
	beqz	$a0, .LBB0_97
# %bb.62:                               # %if.end174
                                        #   in Loop: Header=BB0_61 Depth=1
	ld.w	$a0, $sp, 212
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $fp, $a0
	ld.d	$a0, $a0, 8
	ld.w	$a7, $a0, 0
	beq	$a7, $s0, .LBB0_61
# %bb.63:                               # %if.end182
                                        #   in Loop: Header=BB0_61 Depth=1
	move	$a1, $zero
	ld.w	$a3, $a0, 4
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a4, $a2, 0
	ld.d	$a5, $s2, 0
	ld.d	$a6, $s3, 0
	ori	$t1, $zero, 1
	slt	$a2, $t1, $a7
	masknez	$t0, $t1, $a2
	maskeqz	$a2, $a7, $a2
	or	$a2, $a2, $t0
	addi.w	$a2, $a2, 1
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	ori	$t4, $zero, 2
	ori	$t0, $zero, 1
	b	.LBB0_66
	.p2align	4, , 16
.LBB0_64:                               # %for.end546
                                        #   in Loop: Header=BB0_66 Depth=2
	move	$t0, $t3
.LBB0_65:                               # %do.cond
                                        #   in Loop: Header=BB0_66 Depth=2
	addi.w	$t4, $t2, 1
	addi.d	$a1, $a1, 1
	move	$t1, $t3
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	beq	$t2, $a2, .LBB0_61
.LBB0_66:                               # %do.body
                                        #   Parent Loop BB0_61 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_73 Depth 3
                                        #       Child Loop BB0_70 Depth 3
                                        #       Child Loop BB0_87 Depth 3
	slli.d	$a2, $t1, 2
	ldx.w	$a2, $a0, $a2
	mul.d	$t5, $a2, $s4
	ldx.w	$a2, $a5, $t5
	mul.d	$a2, $a2, $s5
	add.d	$a2, $a6, $a2
	ld.w	$a2, $a2, 32
	move	$t2, $t4
	addi.w	$t3, $t1, 1
	beqz	$a2, .LBB0_65
# %bb.67:                               # %if.end200
                                        #   in Loop: Header=BB0_66 Depth=2
	slli.d	$a2, $t0, 2
	ldx.w	$a2, $a0, $a2
	add.d	$t4, $a5, $t5
	ld.w	$t6, $t4, 16
	mul.d	$a2, $a2, $s4
	add.d	$t5, $a5, $a2
	ld.w	$a2, $t5, 12
	alsl.d	$t4, $t0, $a0, 2
	add.d	$a2, $a2, $t6
	bstrpick.d	$t7, $a2, 31, 31
	add.w	$a2, $a2, $t7
	srai.d	$t7, $a2, 1
	bge	$a4, $a3, .LBB0_71
# %bb.68:                               # %for.cond313.preheader
                                        #   in Loop: Header=BB0_66 Depth=2
	blt	$t1, $t0, .LBB0_74
# %bb.69:                               # %for.body316.preheader
                                        #   in Loop: Header=BB0_66 Depth=2
	alsl.d	$t8, $t0, $a0, 2
	move	$ra, $t0
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_70:                               # %for.body316
                                        #   Parent Loop BB0_61 Depth=1
                                        #     Parent Loop BB0_66 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a2, $t8, 0
	mul.d	$a2, $a2, $s4
	ldx.w	$a7, $a5, $a2
	mul.d	$a7, $a7, $s5
	add.d	$a7, $a6, $a7
	ld.w	$a7, $a7, 4
	add.d	$a2, $a5, $a2
	ld.w	$a2, $a2, 4
	sub.w	$a7, $a7, $t7
	srai.d	$s6, $a7, 31
	xor	$a7, $a7, $s6
	sub.w	$a7, $a7, $s6
	slt	$s6, $a7, $s1
	mul.d	$a2, $a2, $s5
	add.d	$a2, $a6, $a2
	ld.w	$a2, $a2, 4
	maskeqz	$a7, $a7, $s6
	masknez	$s1, $s1, $s6
	or	$a7, $a7, $s1
	sub.w	$a2, $a2, $t7
	srai.d	$s1, $a2, 31
	xor	$a2, $a2, $s1
	sub.w	$a2, $a2, $s1
	slt	$s1, $a2, $a7
	masknez	$s7, $s8, $s1
	maskeqz	$s8, $ra, $s1
	or	$s7, $s8, $s7
	masknez	$s7, $s7, $s6
	maskeqz	$s6, $ra, $s6
	or	$s8, $s6, $s7
	masknez	$a7, $a7, $s1
	maskeqz	$a2, $a2, $s1
	or	$s1, $a2, $a7
	addi.w	$ra, $ra, 1
	addi.d	$t8, $t8, 4
	bne	$t2, $ra, .LBB0_70
	b	.LBB0_74
	.p2align	4, , 16
.LBB0_71:                               # %for.cond214.preheader
                                        #   in Loop: Header=BB0_66 Depth=2
	blt	$t1, $t0, .LBB0_74
# %bb.72:                               # %for.body217.preheader
                                        #   in Loop: Header=BB0_66 Depth=2
	lu12i.w	$a2, 2441
	ori	$s1, $a2, 1664
	move	$t8, $t0
	move	$ra, $t4
	.p2align	4, , 16
.LBB0_73:                               # %for.body217
                                        #   Parent Loop BB0_61 Depth=1
                                        #     Parent Loop BB0_66 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a2, $ra, 0
	mul.d	$a2, $a2, $s4
	ldx.w	$s7, $a5, $a2
	mul.d	$s7, $s7, $s5
	ldx.w	$s7, $a6, $s7
	add.d	$a2, $a5, $a2
	ld.w	$a2, $a2, 4
	sub.w	$s7, $s7, $t7
	srai.d	$s6, $s7, 31
	xor	$s7, $s7, $s6
	sub.w	$s6, $s7, $s6
	slt	$s7, $s6, $s1
	mul.d	$a2, $a2, $s5
	ldx.w	$a2, $a6, $a2
	maskeqz	$s6, $s6, $s7
	masknez	$s1, $s1, $s7
	or	$s1, $s6, $s1
	sub.w	$a2, $a2, $t7
	srai.d	$s6, $a2, 31
	xor	$a2, $a2, $s6
	sub.w	$a2, $a2, $s6
	slt	$s6, $a2, $s1
	masknez	$s8, $s8, $s6
	maskeqz	$a7, $t8, $s6
	or	$a7, $a7, $s8
	masknez	$a7, $a7, $s7
	maskeqz	$s7, $t8, $s7
	or	$s8, $s7, $a7
	masknez	$a7, $s1, $s6
	maskeqz	$a2, $a2, $s6
	or	$s1, $a2, $a7
	addi.w	$t8, $t8, 1
	addi.d	$ra, $ra, 4
	bne	$t2, $t8, .LBB0_73
.LBB0_74:                               # %if.end415
                                        #   in Loop: Header=BB0_66 Depth=2
	blt	$t1, $t0, .LBB0_64
# %bb.75:                               # %for.body419.preheader
                                        #   in Loop: Header=BB0_66 Depth=2
	addi.w	$t7, $s8, 0
	bne	$t0, $t7, .LBB0_77
# %bb.76:                               # %if.else441.peel
                                        #   in Loop: Header=BB0_66 Depth=2
	st.w	$t6, $t5, 16
	b	.LBB0_78
.LBB0_77:                               # %if.then434.peel
                                        #   in Loop: Header=BB0_66 Depth=2
	st.w	$s0, $t5, 44
.LBB0_78:                               # %if.then469.peel
                                        #   in Loop: Header=BB0_66 Depth=2
	ld.w	$a2, $t5, 0
	ld.w	$a7, $t5, 4
	mul.d	$a2, $a2, $s5
	add.d	$t5, $a6, $a2
	st.w	$s0, $t5, 32
	mul.d	$a2, $a7, $s5
	add.d	$t6, $a6, $a2
	bge	$a4, $a3, .LBB0_80
# %bb.79:                               # %if.end487.thread534.peel
                                        #   in Loop: Header=BB0_66 Depth=2
	st.w	$s0, $t6, 36
	ori	$a2, $zero, 40
	beq	$t0, $t1, .LBB0_81
	b	.LBB0_82
.LBB0_80:                               # %if.end487.thread.peel
                                        #   in Loop: Header=BB0_66 Depth=2
	st.w	$s0, $t6, 40
	ori	$a2, $zero, 36
	bne	$t0, $t1, .LBB0_82
.LBB0_81:                               # %for.inc544.peel.sink.split
                                        #   in Loop: Header=BB0_66 Depth=2
	stx.w	$s0, $t5, $a2
	st.w	$s0, $t6, 44
.LBB0_82:                               # %for.inc544.peel
                                        #   in Loop: Header=BB0_66 Depth=2
	addi.w	$a2, $t0, 1
	beq	$t2, $a2, .LBB0_64
# %bb.83:                               # %for.body419.preheader890
                                        #   in Loop: Header=BB0_66 Depth=2
	alsl.d	$t5, $t1, $a0, 2
	addi.d	$t6, $t7, -1
	addi.d	$a2, $a0, 4
	alsl.d	$t7, $t0, $a2, 2
	move	$t8, $t0
	move	$ra, $t0
	b	.LBB0_87
	.p2align	4, , 16
.LBB0_84:                               # %if.end508.thread
                                        #   in Loop: Header=BB0_87 Depth=3
	st.w	$s0, $a2, 36
.LBB0_85:                               # %for.inc544
                                        #   in Loop: Header=BB0_87 Depth=3
	st.w	$s0, $s1, 44
.LBB0_86:                               # %for.inc544
                                        #   in Loop: Header=BB0_87 Depth=3
	addi.w	$t8, $t8, 1
	addi.d	$t7, $t7, 4
	beq	$t1, $t8, .LBB0_64
.LBB0_87:                               # %for.body419
                                        #   Parent Loop BB0_61 Depth=1
                                        #     Parent Loop BB0_66 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a2, $t7, 0
	move	$s1, $ra
	mul.d	$s7, $a2, $s4
	add.d	$ra, $a5, $s7
	bne	$t6, $s1, .LBB0_93
# %bb.88:                               # %if.else441
                                        #   in Loop: Header=BB0_87 Depth=3
	ld.w	$a2, $t5, 0
	mul.d	$a2, $a2, $s4
	add.d	$a2, $a5, $a2
	ld.w	$a2, $a2, 16
	st.w	$a2, $ra, 16
	ld.w	$a2, $t4, 0
	mul.d	$a2, $a2, $s4
	ld.w	$a7, $t7, 0
	add.d	$a2, $a5, $a2
	ld.w	$a2, $a2, 12
	mul.d	$a7, $a7, $s4
	add.d	$a7, $a5, $a7
	st.w	$a2, $a7, 12
	ldx.w	$a2, $a5, $s7
	ld.w	$s7, $ra, 4
	addi.d	$ra, $s1, 1
	beq	$a1, $s1, .LBB0_94
.LBB0_89:                               # %if.end508
                                        #   in Loop: Header=BB0_87 Depth=3
	bge	$t0, $ra, .LBB0_86
# %bb.90:                               # %if.end508
                                        #   in Loop: Header=BB0_87 Depth=3
	bge	$ra, $t1, .LBB0_86
# %bb.91:                               # %if.then513
                                        #   in Loop: Header=BB0_87 Depth=3
	mul.d	$a2, $a2, $s5
	add.d	$s1, $a6, $a2
	mul.d	$a2, $s7, $s5
	add.d	$a2, $a6, $a2
	bge	$a4, $a3, .LBB0_96
# %bb.92:                               # %if.else529
                                        #   in Loop: Header=BB0_87 Depth=3
	st.w	$s0, $s1, 32
	st.w	$s0, $s1, 40
	st.w	$s0, $a2, 36
	st.w	$s0, $a2, 44
	b	.LBB0_86
	.p2align	4, , 16
.LBB0_93:                               # %if.then434
                                        #   in Loop: Header=BB0_87 Depth=3
	st.w	$s0, $ra, 44
	ldx.w	$a2, $a5, $s7
	ld.w	$s7, $ra, 4
	addi.d	$ra, $s1, 1
	bne	$a1, $s1, .LBB0_89
.LBB0_94:                               # %if.then490
                                        #   in Loop: Header=BB0_87 Depth=3
	mul.d	$a2, $a2, $s5
	add.d	$a2, $a6, $a2
	mul.d	$a7, $s7, $s5
	add.d	$s1, $a6, $a7
	bge	$a4, $a3, .LBB0_84
# %bb.95:                               # %if.end508.thread792
                                        #   in Loop: Header=BB0_87 Depth=3
	st.w	$s0, $a2, 40
	b	.LBB0_85
.LBB0_96:                               # %if.then516
                                        #   in Loop: Header=BB0_87 Depth=3
	ori	$a7, $zero, 1
	lu32i.d	$a7, 1
	st.d	$a7, $s1, 32
	st.d	$a7, $a2, 40
	b	.LBB0_86
.LBB0_97:                               # %for.cond551.preheader
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a0, $a3, 0
	blez	$a0, .LBB0_100
# %bb.98:                               # %for.body554.lr.ph
	ld.d	$a1, $s3, 0
	move	$a0, $zero
	addi.d	$a1, $a1, 100
	.p2align	4, , 16
.LBB0_99:                               # %for.body554
                                        # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a1, 0
	ld.w	$a2, $a3, 0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 52
	blt	$a0, $a2, .LBB0_99
.LBB0_100:                              # %for.cond560.preheader
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.w	$a6, $a0, 0
	blez	$a6, .LBB0_113
# %bb.101:                              # %for.body563.lr.ph
	pcalau12i	$a0, %got_pc_hi20(xNodeArray)
	ld.d	$a0, $a0, %got_pc_lo12(xNodeArray)
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 1
	ori	$a2, $zero, 56
	ori	$a3, $zero, 52
	ori	$a5, $zero, 1
	b	.LBB0_104
	.p2align	4, , 16
.LBB0_102:                              # %for.inc617.loopexit
                                        #   in Loop: Header=BB0_104 Depth=1
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	ld.w	$a6, $a5, 0
.LBB0_103:                              # %for.inc617
                                        #   in Loop: Header=BB0_104 Depth=1
	addi.d	$a5, $a4, 1
	bge	$a4, $a6, .LBB0_113
.LBB0_104:                              # %for.body563
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_107 Depth 2
                                        #       Child Loop BB0_111 Depth 3
	move	$a4, $a5
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $a0, $a5
	beqz	$a5, .LBB0_103
# %bb.105:                              # %for.body569.lr.ph
                                        #   in Loop: Header=BB0_104 Depth=1
	ld.d	$a6, $s2, 0
	b	.LBB0_107
	.p2align	4, , 16
.LBB0_106:                              # %for.inc614
                                        #   in Loop: Header=BB0_107 Depth=2
	ld.d	$a5, $a5, 24
	beqz	$a5, .LBB0_102
.LBB0_107:                              # %for.body569
                                        #   Parent Loop BB0_104 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_111 Depth 3
	ld.w	$a7, $a5, 0
	beq	$a7, $a1, .LBB0_106
# %bb.108:                              # %if.end574
                                        #   in Loop: Header=BB0_107 Depth=2
	ld.d	$t0, $a5, 8
	ld.w	$t1, $t0, 0
	blez	$t1, .LBB0_106
# %bb.109:                              # %for.body580.lr.ph
                                        #   in Loop: Header=BB0_107 Depth=2
	ld.d	$a7, $s3, 0
	addi.d	$t1, $t1, 1
	bstrpick.d	$t1, $t1, 31, 0
	addi.d	$t0, $t0, 4
	addi.d	$t1, $t1, -1
	b	.LBB0_111
	.p2align	4, , 16
.LBB0_110:                              # %for.inc611
                                        #   in Loop: Header=BB0_111 Depth=3
	addi.d	$t1, $t1, -1
	addi.d	$t0, $t0, 4
	beqz	$t1, .LBB0_106
.LBB0_111:                              # %for.body580
                                        #   Parent Loop BB0_104 Depth=1
                                        #     Parent Loop BB0_107 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t2, $t0, 0
	mul.d	$t2, $t2, $a2
	add.d	$t2, $a6, $t2
	ld.w	$t3, $t2, 44
	beq	$t3, $a1, .LBB0_110
# %bb.112:                              # %if.end590
                                        #   in Loop: Header=BB0_111 Depth=3
	ld.w	$t3, $t2, 4
	mul.d	$t3, $t3, $a3
	add.d	$t3, $a7, $t3
	ld.w	$t4, $t3, 48
	ld.w	$t2, $t2, 0
	addi.d	$t4, $t4, 1
	st.w	$t4, $t3, 48
	mul.d	$t2, $t2, $a3
	add.d	$t2, $a7, $t2
	ld.w	$t3, $t2, 48
	addi.d	$t3, $t3, 1
	st.w	$t3, $t2, 48
	b	.LBB0_110
.LBB0_113:                              # %for.cond620.preheader
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$t2, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(yNodeArray)
	ld.d	$a0, $a0, %got_pc_lo12(yNodeArray)
	ld.d	$a1, $a0, 0
	blez	$t2, .LBB0_127
# %bb.114:                              # %for.body623.preheader
	ori	$a2, $zero, 1
	ori	$a3, $zero, 56
	ori	$a4, $zero, 52
	ori	$a6, $zero, 1
	b	.LBB0_117
	.p2align	4, , 16
.LBB0_115:                              # %for.inc677.loopexit
                                        #   in Loop: Header=BB0_117 Depth=1
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
	ld.w	$t2, $a6, 0
.LBB0_116:                              # %for.inc677
                                        #   in Loop: Header=BB0_117 Depth=1
	addi.d	$a6, $a5, 1
	bge	$a5, $t2, .LBB0_126
.LBB0_117:                              # %for.body623
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_120 Depth 2
                                        #       Child Loop BB0_124 Depth 3
	move	$a5, $a6
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $a1, $a6
	beqz	$a6, .LBB0_116
# %bb.118:                              # %for.body629.lr.ph
                                        #   in Loop: Header=BB0_117 Depth=1
	ld.d	$a7, $s2, 0
	b	.LBB0_120
	.p2align	4, , 16
.LBB0_119:                              # %for.inc674
                                        #   in Loop: Header=BB0_120 Depth=2
	ld.d	$a6, $a6, 24
	beqz	$a6, .LBB0_115
.LBB0_120:                              # %for.body629
                                        #   Parent Loop BB0_117 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_124 Depth 3
	ld.w	$t0, $a6, 0
	beq	$t0, $a2, .LBB0_119
# %bb.121:                              # %if.end634
                                        #   in Loop: Header=BB0_120 Depth=2
	ld.d	$t1, $a6, 8
	ld.w	$t2, $t1, 0
	blez	$t2, .LBB0_119
# %bb.122:                              # %for.body640.lr.ph
                                        #   in Loop: Header=BB0_120 Depth=2
	ld.d	$t0, $s3, 0
	addi.d	$t2, $t2, 1
	bstrpick.d	$t2, $t2, 31, 0
	addi.d	$t1, $t1, 4
	addi.d	$t2, $t2, -1
	b	.LBB0_124
	.p2align	4, , 16
.LBB0_123:                              # %for.inc671
                                        #   in Loop: Header=BB0_124 Depth=3
	addi.d	$t2, $t2, -1
	addi.d	$t1, $t1, 4
	beqz	$t2, .LBB0_119
.LBB0_124:                              # %for.body640
                                        #   Parent Loop BB0_117 Depth=1
                                        #     Parent Loop BB0_120 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t3, $t1, 0
	mul.d	$t3, $t3, $a3
	add.d	$t3, $a7, $t3
	ld.w	$t4, $t3, 44
	beq	$t4, $a2, .LBB0_123
# %bb.125:                              # %if.end650
                                        #   in Loop: Header=BB0_124 Depth=3
	ld.w	$t4, $t3, 4
	mul.d	$t4, $t4, $a4
	add.d	$t4, $t0, $t4
	ld.w	$t5, $t4, 48
	ld.w	$t3, $t3, 0
	addi.d	$t5, $t5, 1
	st.w	$t5, $t4, 48
	mul.d	$t3, $t3, $a4
	add.d	$t3, $t0, $t3
	ld.w	$t4, $t3, 48
	addi.d	$t4, $t4, 1
	st.w	$t4, $t3, 48
	b	.LBB0_123
.LBB0_126:                              # %while.cond.preheader.loopexit
	ld.d	$a1, $a0, 0
.LBB0_127:                              # %while.cond.preheader
	pcalau12i	$a2, %got_pc_hi20(xNodeArray)
	ld.d	$a2, $a2, %got_pc_lo12(xNodeArray)
	ld.d	$a3, $a2, 0
	ori	$a4, $zero, 1
	ori	$a5, $zero, 56
	ori	$a6, $zero, 52
	b	.LBB0_129
	.p2align	4, , 16
.LBB0_128:                              # %while.cond.loopexit
                                        #   in Loop: Header=BB0_129 Depth=1
	beqz	$a7, .LBB0_176
.LBB0_129:                              # %for.cond681.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_133 Depth 2
                                        #       Child Loop BB0_136 Depth 3
                                        #         Child Loop BB0_142 Depth 4
                                        #           Child Loop BB0_147 Depth 5
                                        #     Child Loop BB0_157 Depth 2
                                        #       Child Loop BB0_160 Depth 3
                                        #         Child Loop BB0_166 Depth 4
                                        #           Child Loop BB0_171 Depth 5
	ld.d	$a7, $sp, 184                   # 8-byte Folded Reload
	ld.w	$t3, $a7, 0
	blez	$t3, .LBB0_153
# %bb.130:                              # %for.body684.preheader
                                        #   in Loop: Header=BB0_129 Depth=1
	move	$a7, $zero
	ori	$t1, $zero, 1
	b	.LBB0_133
	.p2align	4, , 16
.LBB0_131:                              # %for.inc839.loopexit
                                        #   in Loop: Header=BB0_133 Depth=2
	ld.d	$t1, $sp, 184                   # 8-byte Folded Reload
	ld.w	$t3, $t1, 0
.LBB0_132:                              # %for.inc839
                                        #   in Loop: Header=BB0_133 Depth=2
	addi.d	$t1, $t0, 1
	bge	$t0, $t3, .LBB0_152
.LBB0_133:                              # %for.body684
                                        #   Parent Loop BB0_129 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_136 Depth 3
                                        #         Child Loop BB0_142 Depth 4
                                        #           Child Loop BB0_147 Depth 5
	move	$t0, $t1
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $a3, $t1
	beqz	$t1, .LBB0_132
# %bb.134:                              # %for.body690.lr.ph
                                        #   in Loop: Header=BB0_133 Depth=2
	ld.d	$t2, $s2, 0
	b	.LBB0_136
	.p2align	4, , 16
.LBB0_135:                              # %for.inc836
                                        #   in Loop: Header=BB0_136 Depth=3
	ld.d	$t1, $t1, 24
	beqz	$t1, .LBB0_131
.LBB0_136:                              # %for.body690
                                        #   Parent Loop BB0_129 Depth=1
                                        #     Parent Loop BB0_133 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_142 Depth 4
                                        #           Child Loop BB0_147 Depth 5
	ld.w	$t3, $t1, 0
	beq	$t3, $a4, .LBB0_135
# %bb.137:                              # %if.end695
                                        #   in Loop: Header=BB0_136 Depth=3
	ld.d	$t3, $t1, 8
	ld.w	$t4, $t3, 0
	blez	$t4, .LBB0_135
# %bb.138:                              # %for.body701.lr.ph
                                        #   in Loop: Header=BB0_136 Depth=3
	move	$t5, $zero
	ld.d	$t6, $s3, 0
	addi.d	$t7, $t4, 1
	bstrpick.d	$t7, $t7, 31, 0
	addi.d	$t8, $t3, 8
	ori	$fp, $zero, 1
	ori	$s0, $zero, 2
	move	$s1, $t3
	b	.LBB0_142
.LBB0_139:                              # %if.then762
                                        #   in Loop: Header=BB0_142 Depth=4
	ld.w	$a7, $a7, 0
	mul.d	$a7, $a7, $a5
	add.d	$a7, $t2, $a7
	ld.w	$s4, $a7, 16
	ld.w	$a7, $a7, 12
	ld.w	$s5, $s8, 12
	sub.d	$a7, $a7, $s4
	add.d	$a7, $a7, $s5
	st.w	$a7, $s8, 12
.LBB0_140:                              # %for.inc833
                                        #   in Loop: Header=BB0_142 Depth=4
	ori	$a7, $zero, 1
.LBB0_141:                              # %for.inc833
                                        #   in Loop: Header=BB0_142 Depth=4
	addi.d	$fp, $fp, 1
	addi.d	$s1, $s1, 4
	addi.d	$t5, $t5, 1
	addi.d	$t8, $t8, 4
	addi.w	$s0, $s0, 1
	beq	$fp, $t7, .LBB0_135
.LBB0_142:                              # %for.body701
                                        #   Parent Loop BB0_129 Depth=1
                                        #     Parent Loop BB0_133 Depth=2
                                        #       Parent Loop BB0_136 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_147 Depth 5
	slli.d	$s4, $fp, 2
	ldx.w	$s4, $t3, $s4
	mul.d	$s4, $s4, $a5
	add.d	$s4, $t2, $s4
	ld.w	$s5, $s4, 44
	beq	$s5, $a4, .LBB0_141
# %bb.143:                              # %if.end711
                                        #   in Loop: Header=BB0_142 Depth=4
	ld.w	$s5, $s4, 4
	ld.w	$s6, $s4, 0
	mul.d	$s5, $s5, $a6
	add.d	$s5, $t6, $s5
	ld.w	$s7, $s5, 48
	mul.d	$s6, $s6, $a6
	beq	$s7, $a4, .LBB0_145
# %bb.144:                              # %lor.lhs.false
                                        #   in Loop: Header=BB0_142 Depth=4
	add.d	$s8, $t6, $s6
	ld.w	$s8, $s8, 48
	bne	$s8, $a4, .LBB0_141
.LBB0_145:                              # %if.then734
                                        #   in Loop: Header=BB0_142 Depth=4
	addi.d	$a7, $s7, -1
	st.w	$a7, $s5, 48
	add.d	$s5, $t6, $s6
	ld.w	$s6, $s5, 48
	alsl.d	$a7, $fp, $t3, 2
	st.w	$a4, $s4, 44
	addi.d	$s4, $s6, -1
	st.w	$s4, $s5, 48
	move	$s4, $s0
	move	$s5, $t8
	move	$s6, $t5
	move	$s7, $s1
	b	.LBB0_147
	.p2align	4, , 16
.LBB0_146:                              # %for.inc829
                                        #   in Loop: Header=BB0_147 Depth=5
	addi.d	$s7, $s7, -4
	addi.d	$s6, $s6, -1
	addi.d	$s5, $s5, 4
	addi.w	$s4, $s4, 1
.LBB0_147:                              # %for.cond748
                                        #   Parent Loop BB0_129 Depth=1
                                        #     Parent Loop BB0_133 Depth=2
                                        #       Parent Loop BB0_136 Depth=3
                                        #         Parent Loop BB0_142 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	blt	$t4, $s4, .LBB0_149
# %bb.148:                              # %if.then752
                                        #   in Loop: Header=BB0_147 Depth=5
	ld.w	$s8, $s5, 0
	mul.d	$s8, $s8, $a5
	add.d	$s8, $t2, $s8
	ld.w	$ra, $s8, 44
	beqz	$ra, .LBB0_139
.LBB0_149:                              # %if.end788
                                        #   in Loop: Header=BB0_147 Depth=5
	blez	$s6, .LBB0_146
# %bb.150:                              # %if.then792
                                        #   in Loop: Header=BB0_147 Depth=5
	ld.w	$s8, $s7, 0
	mul.d	$s8, $s8, $a5
	add.d	$s8, $t2, $s8
	ld.w	$ra, $s8, 44
	bnez	$ra, .LBB0_146
# %bb.151:                              # %if.then802
                                        #   in Loop: Header=BB0_142 Depth=4
	ld.w	$a7, $a7, 0
	mul.d	$a7, $a7, $a5
	add.d	$a7, $t2, $a7
	ld.w	$s4, $a7, 16
	ld.w	$a7, $a7, 12
	ld.w	$s5, $s8, 16
	sub.d	$a7, $s4, $a7
	add.d	$a7, $a7, $s5
	st.w	$a7, $s8, 16
	b	.LBB0_140
	.p2align	4, , 16
.LBB0_152:                              # %for.cond842.preheader.loopexit
                                        #   in Loop: Header=BB0_129 Depth=1
	ld.d	$t0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$t2, $t0, 0
	bgtz	$t2, .LBB0_154
	b	.LBB0_128
	.p2align	4, , 16
.LBB0_153:                              #   in Loop: Header=BB0_129 Depth=1
	move	$a7, $zero
	blez	$t2, .LBB0_128
.LBB0_154:                              # %for.body845.preheader
                                        #   in Loop: Header=BB0_129 Depth=1
	ori	$t1, $zero, 1
	b	.LBB0_157
	.p2align	4, , 16
.LBB0_155:                              # %for.inc1002.loopexit
                                        #   in Loop: Header=BB0_157 Depth=2
	ld.d	$t1, $sp, 176                   # 8-byte Folded Reload
	ld.w	$t2, $t1, 0
.LBB0_156:                              # %for.inc1002
                                        #   in Loop: Header=BB0_157 Depth=2
	addi.d	$t1, $t0, 1
	bge	$t0, $t2, .LBB0_128
.LBB0_157:                              # %for.body845
                                        #   Parent Loop BB0_129 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_160 Depth 3
                                        #         Child Loop BB0_166 Depth 4
                                        #           Child Loop BB0_171 Depth 5
	move	$t0, $t1
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $a1, $t1
	beqz	$t1, .LBB0_156
# %bb.158:                              # %for.body851.lr.ph
                                        #   in Loop: Header=BB0_157 Depth=2
	ld.d	$t2, $s2, 0
	b	.LBB0_160
	.p2align	4, , 16
.LBB0_159:                              # %for.inc999
                                        #   in Loop: Header=BB0_160 Depth=3
	ld.d	$t1, $t1, 24
	beqz	$t1, .LBB0_155
.LBB0_160:                              # %for.body851
                                        #   Parent Loop BB0_129 Depth=1
                                        #     Parent Loop BB0_157 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_166 Depth 4
                                        #           Child Loop BB0_171 Depth 5
	ld.w	$t3, $t1, 0
	beq	$t3, $a4, .LBB0_159
# %bb.161:                              # %if.end856
                                        #   in Loop: Header=BB0_160 Depth=3
	ld.d	$t3, $t1, 8
	ld.w	$t4, $t3, 0
	blez	$t4, .LBB0_159
# %bb.162:                              # %for.body862.lr.ph
                                        #   in Loop: Header=BB0_160 Depth=3
	move	$t5, $zero
	ld.d	$t6, $s3, 0
	addi.d	$t7, $t4, 1
	bstrpick.d	$t7, $t7, 31, 0
	addi.d	$t8, $t3, 8
	ori	$fp, $zero, 1
	ori	$s0, $zero, 2
	move	$s1, $t3
	b	.LBB0_166
.LBB0_163:                              # %if.then925
                                        #   in Loop: Header=BB0_166 Depth=4
	ld.w	$a7, $a7, 0
	mul.d	$a7, $a7, $a5
	add.d	$a7, $t2, $a7
	ld.w	$s4, $a7, 16
	ld.w	$a7, $a7, 12
	ld.w	$s5, $s8, 12
	sub.d	$a7, $a7, $s4
	add.d	$a7, $a7, $s5
	st.w	$a7, $s8, 12
.LBB0_164:                              # %for.inc996
                                        #   in Loop: Header=BB0_166 Depth=4
	ori	$a7, $zero, 1
.LBB0_165:                              # %for.inc996
                                        #   in Loop: Header=BB0_166 Depth=4
	addi.d	$fp, $fp, 1
	addi.d	$s1, $s1, 4
	addi.d	$t5, $t5, 1
	addi.d	$t8, $t8, 4
	addi.w	$s0, $s0, 1
	beq	$fp, $t7, .LBB0_159
.LBB0_166:                              # %for.body862
                                        #   Parent Loop BB0_129 Depth=1
                                        #     Parent Loop BB0_157 Depth=2
                                        #       Parent Loop BB0_160 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_171 Depth 5
	slli.d	$s4, $fp, 2
	ldx.w	$s4, $t3, $s4
	mul.d	$s4, $s4, $a5
	add.d	$s4, $t2, $s4
	ld.w	$s5, $s4, 44
	beq	$s5, $a4, .LBB0_165
# %bb.167:                              # %if.end872
                                        #   in Loop: Header=BB0_166 Depth=4
	ld.w	$s5, $s4, 4
	ld.w	$s6, $s4, 0
	mul.d	$s5, $s5, $a6
	add.d	$s5, $t6, $s5
	ld.w	$s7, $s5, 48
	mul.d	$s6, $s6, $a6
	beq	$s7, $a4, .LBB0_169
# %bb.168:                              # %lor.lhs.false890
                                        #   in Loop: Header=BB0_166 Depth=4
	add.d	$s8, $t6, $s6
	ld.w	$s8, $s8, 48
	bne	$s8, $a4, .LBB0_165
.LBB0_169:                              # %if.then896
                                        #   in Loop: Header=BB0_166 Depth=4
	addi.d	$a7, $s7, -1
	st.w	$a7, $s5, 48
	add.d	$s5, $t6, $s6
	ld.w	$s6, $s5, 48
	alsl.d	$a7, $fp, $t3, 2
	st.w	$a4, $s4, 44
	addi.d	$s4, $s6, -1
	st.w	$s4, $s5, 48
	move	$s4, $s0
	move	$s5, $t8
	move	$s6, $t5
	move	$s7, $s1
	b	.LBB0_171
	.p2align	4, , 16
.LBB0_170:                              # %for.inc992
                                        #   in Loop: Header=BB0_171 Depth=5
	addi.d	$s7, $s7, -4
	addi.d	$s6, $s6, -1
	addi.d	$s5, $s5, 4
	addi.w	$s4, $s4, 1
.LBB0_171:                              # %for.cond911
                                        #   Parent Loop BB0_129 Depth=1
                                        #     Parent Loop BB0_157 Depth=2
                                        #       Parent Loop BB0_160 Depth=3
                                        #         Parent Loop BB0_166 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	blt	$t4, $s4, .LBB0_173
# %bb.172:                              # %if.then915
                                        #   in Loop: Header=BB0_171 Depth=5
	ld.w	$s8, $s5, 0
	mul.d	$s8, $s8, $a5
	add.d	$s8, $t2, $s8
	ld.w	$ra, $s8, 44
	beqz	$ra, .LBB0_163
.LBB0_173:                              # %if.end951
                                        #   in Loop: Header=BB0_171 Depth=5
	blez	$s6, .LBB0_170
# %bb.174:                              # %if.then955
                                        #   in Loop: Header=BB0_171 Depth=5
	ld.w	$s8, $s7, 0
	mul.d	$s8, $s8, $a5
	add.d	$s8, $t2, $s8
	ld.w	$ra, $s8, 44
	bnez	$ra, .LBB0_170
# %bb.175:                              # %if.then965
                                        #   in Loop: Header=BB0_166 Depth=4
	ld.w	$a7, $a7, 0
	mul.d	$a7, $a7, $a5
	add.d	$a7, $t2, $a7
	ld.w	$s4, $a7, 16
	ld.w	$a7, $a7, 12
	ld.w	$s5, $s8, 16
	sub.d	$a7, $s4, $a7
	add.d	$a7, $a7, $s5
	st.w	$a7, $s8, 16
	b	.LBB0_164
.LBB0_176:                              # %for.cond1005.preheader
	ld.d	$a1, $a2, 0
	ld.d	$a0, $a0, 0
	pcalau12i	$a2, %got_pc_hi20(edgeList)
	ld.d	$a2, $a2, %got_pc_lo12(edgeList)
	move	$a6, $zero
	ori	$a3, $zero, 1
	ori	$a4, $zero, 2
	ori	$a5, $zero, 56
	ori	$a7, $zero, 52
	b	.LBB0_178
	.p2align	4, , 16
.LBB0_177:                              # %for.inc1689
                                        #   in Loop: Header=BB0_178 Depth=1
	andi	$t0, $a6, 1
	ori	$a6, $zero, 1
	bnez	$t0, .LBB0_261
.LBB0_178:                              # %for.cond1009.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_182 Depth 2
                                        #       Child Loop BB0_186 Depth 3
                                        #         Child Loop BB0_190 Depth 4
                                        #         Child Loop BB0_206 Depth 4
                                        #     Child Loop BB0_224 Depth 2
                                        #       Child Loop BB0_228 Depth 3
                                        #         Child Loop BB0_232 Depth 4
                                        #         Child Loop BB0_248 Depth 4
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	ld.w	$t3, $t0, 0
	blez	$t3, .LBB0_220
# %bb.179:                              # %for.body1012.preheader
                                        #   in Loop: Header=BB0_178 Depth=1
	ori	$t1, $zero, 1
	b	.LBB0_182
	.p2align	4, , 16
.LBB0_180:                              # %for.inc1345.loopexit
                                        #   in Loop: Header=BB0_182 Depth=2
	ld.d	$t1, $sp, 184                   # 8-byte Folded Reload
	ld.w	$t3, $t1, 0
.LBB0_181:                              # %for.inc1345
                                        #   in Loop: Header=BB0_182 Depth=2
	addi.d	$t1, $t0, 1
	bge	$t0, $t3, .LBB0_219
.LBB0_182:                              # %for.body1012
                                        #   Parent Loop BB0_178 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_186 Depth 3
                                        #         Child Loop BB0_190 Depth 4
                                        #         Child Loop BB0_206 Depth 4
	move	$t0, $t1
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $a1, $t1
	beqz	$t1, .LBB0_181
# %bb.183:                              # %for.body1018.lr.ph
                                        #   in Loop: Header=BB0_182 Depth=2
	ld.d	$t2, $s2, 0
	ld.d	$t3, $a2, 0
	ld.d	$t4, $s3, 0
	b	.LBB0_186
.LBB0_184:                              # %if.then1314
                                        #   in Loop: Header=BB0_186 Depth=3
	st.w	$fp, $t5, 4
	st.w	$a3, $t5, 12
	.p2align	4, , 16
.LBB0_185:                              # %for.inc1342
                                        #   in Loop: Header=BB0_186 Depth=3
	ld.d	$t1, $t1, 24
	beqz	$t1, .LBB0_180
.LBB0_186:                              # %for.body1018
                                        #   Parent Loop BB0_178 Depth=1
                                        #     Parent Loop BB0_182 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_190 Depth 4
                                        #         Child Loop BB0_206 Depth 4
	ld.w	$t5, $t1, 0
	beq	$t5, $a3, .LBB0_185
# %bb.187:                              # %if.end1023
                                        #   in Loop: Header=BB0_186 Depth=3
	ld.d	$t5, $t1, 8
	ld.w	$t6, $t5, 0
	blt	$t6, $a4, .LBB0_185
# %bb.188:                              # %if.end1029
                                        #   in Loop: Header=BB0_186 Depth=3
	ld.w	$t7, $t5, 4
	mul.d	$t7, $t7, $a5
	add.d	$t7, $t2, $t7
	ld.w	$t8, $t7, 44
	bne	$t8, $a3, .LBB0_204
# %bb.189:                              # %for.body1067.preheader
                                        #   in Loop: Header=BB0_186 Depth=3
	ld.w	$t8, $t7, 32
	ld.w	$s0, $t7, 4
	ld.w	$s4, $t7, 0
	slli.d	$t7, $t8, 5
	alsl.d	$t7, $t8, $t7, 3
	add.d	$t8, $t3, $t7
	ld.w	$t7, $t8, 4
	ld.w	$fp, $t8, 8
	mul.d	$t8, $s0, $a7
	add.d	$s0, $t4, $t8
	ld.w	$s1, $s0, 4
	mul.d	$t8, $s4, $a7
	add.d	$t8, $t4, $t8
	ld.w	$t8, $t8, 4
	addi.d	$s4, $t6, 1
	bstrpick.d	$s5, $s4, 31, 0
	addi.d	$s4, $t5, 8
	addi.d	$s5, $s5, -2
	.p2align	4, , 16
.LBB0_190:                              # %for.body1067
                                        #   Parent Loop BB0_178 Depth=1
                                        #     Parent Loop BB0_182 Depth=2
                                        #       Parent Loop BB0_186 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$s6, $s4, 0
	mul.d	$s6, $s6, $a5
	add.d	$s7, $t2, $s6
	ld.w	$s6, $s7, 44
	beqz	$s6, .LBB0_192
# %bb.191:                              # %for.cond1064
                                        #   in Loop: Header=BB0_190 Depth=4
	addi.d	$s5, $s5, -1
	addi.d	$s4, $s4, 4
	bnez	$s5, .LBB0_190
	b	.LBB0_204
.LBB0_192:                              # %if.then1076
                                        #   in Loop: Header=BB0_186 Depth=3
	ld.w	$s4, $s7, 4
	mul.d	$s4, $s4, $a7
	add.d	$s5, $t4, $s4
	ld.w	$s6, $s5, 4
	ld.w	$s4, $s7, 0
	bge	$s6, $s1, .LBB0_197
# %bb.193:                              # %if.then1094
                                        #   in Loop: Header=BB0_186 Depth=3
	ld.w	$s1, $s0, 28
	bge	$s1, $fp, .LBB0_195
# %bb.194:                              # %land.lhs.true1104
                                        #   in Loop: Header=BB0_186 Depth=3
	ld.w	$s1, $s0, 12
	beqz	$s1, .LBB0_202
.LBB0_195:                              # %if.else1119
                                        #   in Loop: Header=BB0_186 Depth=3
	bge	$s6, $fp, .LBB0_197
# %bb.196:                              # %if.then1125
                                        #   in Loop: Header=BB0_186 Depth=3
	st.w	$fp, $s5, 4
.LBB0_197:                              # %if.end1131
                                        #   in Loop: Header=BB0_186 Depth=3
	mul.d	$fp, $s4, $a7
	add.d	$fp, $t4, $fp
	ld.w	$s0, $fp, 4
	bge	$t8, $s0, .LBB0_204
.LBB0_198:                              # %if.then1137
                                        #   in Loop: Header=BB0_186 Depth=3
	ld.w	$t8, $t5, 4
	mul.d	$t8, $t8, $a5
	ldx.w	$t8, $t2, $t8
	mul.d	$t8, $t8, $a7
	add.d	$t8, $t4, $t8
	ld.w	$s1, $t8, 24
	bge	$t7, $s1, .LBB0_200
# %bb.199:                              # %land.lhs.true1147
                                        #   in Loop: Header=BB0_186 Depth=3
	ld.w	$s1, $t8, 12
	beqz	$s1, .LBB0_203
.LBB0_200:                              # %if.else1163
                                        #   in Loop: Header=BB0_186 Depth=3
	bge	$t7, $s0, .LBB0_204
# %bb.201:                              # %if.then1169
                                        #   in Loop: Header=BB0_186 Depth=3
	st.w	$t7, $fp, 4
	b	.LBB0_204
.LBB0_202:                              # %if.then1109
                                        #   in Loop: Header=BB0_186 Depth=3
	st.w	$s6, $s0, 4
	st.w	$a3, $s0, 12
	mul.d	$fp, $s4, $a7
	add.d	$fp, $t4, $fp
	ld.w	$s0, $fp, 4
	blt	$t8, $s0, .LBB0_198
	b	.LBB0_204
.LBB0_203:                              # %if.then1153
                                        #   in Loop: Header=BB0_186 Depth=3
	st.w	$s0, $t8, 4
	st.w	$a3, $t8, 12
	.p2align	4, , 16
.LBB0_204:                              # %if.end1180
                                        #   in Loop: Header=BB0_186 Depth=3
	slli.d	$t7, $t6, 2
	ldx.w	$t7, $t5, $t7
	mul.d	$t7, $t7, $a5
	add.d	$t7, $t2, $t7
	ld.w	$t8, $t7, 44
	bne	$t8, $a3, .LBB0_185
# %bb.205:                              # %if.then1189
                                        #   in Loop: Header=BB0_186 Depth=3
	ld.w	$t8, $t7, 36
	ld.w	$s0, $t7, 4
	ld.w	$s4, $t7, 0
	slli.d	$t7, $t8, 5
	alsl.d	$t7, $t8, $t7, 3
	add.d	$t8, $t3, $t7
	ld.w	$t7, $t8, 4
	ld.w	$fp, $t8, 8
	mul.d	$t8, $s0, $a7
	add.d	$s0, $t4, $t8
	ld.w	$s1, $s0, 4
	mul.d	$t8, $s4, $a7
	add.d	$t8, $t4, $t8
	ld.w	$t8, $t8, 4
	alsl.d	$t5, $t6, $t5, 2
	addi.d	$t6, $t6, 1
	addi.d	$s4, $t5, -4
	.p2align	4, , 16
.LBB0_206:                              # %for.cond1220
                                        #   Parent Loop BB0_178 Depth=1
                                        #     Parent Loop BB0_182 Depth=2
                                        #       Parent Loop BB0_186 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.w	$t6, $t6, -1
	blt	$t6, $a4, .LBB0_185
# %bb.207:                              # %for.body1223
                                        #   in Loop: Header=BB0_206 Depth=4
	ld.w	$s5, $s4, 0
	mul.d	$s5, $s5, $a5
	add.d	$s6, $t2, $s5
	ld.w	$s5, $s6, 44
	addi.d	$s4, $s4, -4
	bnez	$s5, .LBB0_206
# %bb.208:                              # %if.then1232
                                        #   in Loop: Header=BB0_186 Depth=3
	ld.w	$t6, $s6, 4
	mul.d	$t6, $t6, $a7
	add.d	$s4, $t4, $t6
	ld.w	$s5, $s4, 4
	ld.w	$t6, $s6, 0
	bge	$s5, $s1, .LBB0_213
# %bb.209:                              # %if.then1250
                                        #   in Loop: Header=BB0_186 Depth=3
	ld.w	$s1, $s0, 28
	bge	$s1, $fp, .LBB0_211
# %bb.210:                              # %land.lhs.true1262
                                        #   in Loop: Header=BB0_186 Depth=3
	ld.w	$s1, $s0, 12
	beqz	$s1, .LBB0_218
.LBB0_211:                              # %if.else1278
                                        #   in Loop: Header=BB0_186 Depth=3
	bge	$s5, $fp, .LBB0_213
# %bb.212:                              # %if.then1284
                                        #   in Loop: Header=BB0_186 Depth=3
	st.w	$fp, $s4, 4
.LBB0_213:                              # %if.end1290
                                        #   in Loop: Header=BB0_186 Depth=3
	mul.d	$t6, $t6, $a7
	add.d	$t6, $t4, $t6
	ld.w	$fp, $t6, 4
	bge	$t8, $fp, .LBB0_185
.LBB0_214:                              # %if.then1296
                                        #   in Loop: Header=BB0_186 Depth=3
	ld.w	$t5, $t5, 0
	mul.d	$t5, $t5, $a5
	ldx.w	$t5, $t2, $t5
	mul.d	$t5, $t5, $a7
	add.d	$t5, $t4, $t5
	ld.w	$t8, $t5, 24
	bge	$t7, $t8, .LBB0_216
# %bb.215:                              # %land.lhs.true1308
                                        #   in Loop: Header=BB0_186 Depth=3
	ld.w	$t8, $t5, 12
	beqz	$t8, .LBB0_184
.LBB0_216:                              # %if.else1324
                                        #   in Loop: Header=BB0_186 Depth=3
	bge	$t7, $fp, .LBB0_185
# %bb.217:                              # %if.then1330
                                        #   in Loop: Header=BB0_186 Depth=3
	st.w	$t7, $t6, 4
	b	.LBB0_185
.LBB0_218:                              # %if.then1268
                                        #   in Loop: Header=BB0_186 Depth=3
	st.w	$s5, $s0, 4
	st.w	$a3, $s0, 12
	mul.d	$t6, $t6, $a7
	add.d	$t6, $t4, $t6
	ld.w	$fp, $t6, 4
	bge	$t8, $fp, .LBB0_185
	b	.LBB0_214
	.p2align	4, , 16
.LBB0_219:                              # %for.cond1348.preheader.loopexit
                                        #   in Loop: Header=BB0_178 Depth=1
	ld.d	$t0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$t2, $t0, 0
.LBB0_220:                              # %for.cond1348.preheader
                                        #   in Loop: Header=BB0_178 Depth=1
	blez	$t2, .LBB0_177
# %bb.221:                              # %for.body1351.preheader
                                        #   in Loop: Header=BB0_178 Depth=1
	ori	$t1, $zero, 1
	b	.LBB0_224
	.p2align	4, , 16
.LBB0_222:                              # %for.inc1686.loopexit
                                        #   in Loop: Header=BB0_224 Depth=2
	ld.d	$t1, $sp, 176                   # 8-byte Folded Reload
	ld.w	$t2, $t1, 0
.LBB0_223:                              # %for.inc1686
                                        #   in Loop: Header=BB0_224 Depth=2
	addi.d	$t1, $t0, 1
	bge	$t0, $t2, .LBB0_177
.LBB0_224:                              # %for.body1351
                                        #   Parent Loop BB0_178 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_228 Depth 3
                                        #         Child Loop BB0_232 Depth 4
                                        #         Child Loop BB0_248 Depth 4
	move	$t0, $t1
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $a0, $t1
	beqz	$t1, .LBB0_223
# %bb.225:                              # %for.body1357.lr.ph
                                        #   in Loop: Header=BB0_224 Depth=2
	ld.d	$t2, $s2, 0
	ld.d	$t3, $a2, 0
	ld.d	$t4, $s3, 0
	b	.LBB0_228
.LBB0_226:                              # %if.then1655
                                        #   in Loop: Header=BB0_228 Depth=3
	st.w	$fp, $t7, 0
	st.w	$a3, $t7, 8
	.p2align	4, , 16
.LBB0_227:                              # %for.inc1683
                                        #   in Loop: Header=BB0_228 Depth=3
	ld.d	$t1, $t1, 24
	beqz	$t1, .LBB0_222
.LBB0_228:                              # %for.body1357
                                        #   Parent Loop BB0_178 Depth=1
                                        #     Parent Loop BB0_224 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_232 Depth 4
                                        #         Child Loop BB0_248 Depth 4
	ld.w	$t5, $t1, 0
	beq	$t5, $a3, .LBB0_227
# %bb.229:                              # %if.end1362
                                        #   in Loop: Header=BB0_228 Depth=3
	ld.d	$t6, $t1, 8
	ld.w	$t5, $t6, 0
	blt	$t5, $a4, .LBB0_227
# %bb.230:                              # %if.end1368
                                        #   in Loop: Header=BB0_228 Depth=3
	ld.w	$t7, $t6, 4
	mul.d	$t7, $t7, $a5
	add.d	$t7, $t2, $t7
	ld.w	$t8, $t7, 44
	bne	$t8, $a3, .LBB0_246
# %bb.231:                              # %for.body1407.preheader
                                        #   in Loop: Header=BB0_228 Depth=3
	ld.w	$t8, $t7, 32
	ld.w	$s0, $t7, 4
	ld.w	$s4, $t7, 0
	slli.d	$t7, $t8, 5
	alsl.d	$t7, $t8, $t7, 3
	add.d	$t8, $t3, $t7
	ld.w	$t7, $t8, 4
	ld.w	$fp, $t8, 8
	mul.d	$t8, $s0, $a7
	add.d	$s0, $t4, $t8
	ldx.w	$s1, $t4, $t8
	mul.d	$t8, $s4, $a7
	ldx.w	$t8, $t4, $t8
	addi.d	$s4, $t5, 1
	bstrpick.d	$s5, $s4, 31, 0
	addi.d	$s4, $t6, 8
	addi.d	$s5, $s5, -2
	.p2align	4, , 16
.LBB0_232:                              # %for.body1407
                                        #   Parent Loop BB0_178 Depth=1
                                        #     Parent Loop BB0_224 Depth=2
                                        #       Parent Loop BB0_228 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$s6, $s4, 0
	mul.d	$s6, $s6, $a5
	add.d	$s7, $t2, $s6
	ld.w	$s6, $s7, 44
	beqz	$s6, .LBB0_234
# %bb.233:                              # %for.cond1404
                                        #   in Loop: Header=BB0_232 Depth=4
	addi.d	$s5, $s5, -1
	addi.d	$s4, $s4, 4
	bnez	$s5, .LBB0_232
	b	.LBB0_246
.LBB0_234:                              # %if.then1416
                                        #   in Loop: Header=BB0_228 Depth=3
	ld.w	$s4, $s7, 4
	mul.d	$s5, $s4, $a7
	ldx.w	$s6, $t4, $s5
	ld.w	$s4, $s7, 0
	bge	$s6, $s1, .LBB0_239
# %bb.235:                              # %if.then1434
                                        #   in Loop: Header=BB0_228 Depth=3
	ld.w	$s1, $s0, 20
	bge	$s1, $fp, .LBB0_237
# %bb.236:                              # %land.lhs.true1444
                                        #   in Loop: Header=BB0_228 Depth=3
	ld.w	$s1, $s0, 8
	beqz	$s1, .LBB0_244
.LBB0_237:                              # %if.else1459
                                        #   in Loop: Header=BB0_228 Depth=3
	bge	$s6, $fp, .LBB0_239
# %bb.238:                              # %if.then1465
                                        #   in Loop: Header=BB0_228 Depth=3
	add.d	$s0, $t4, $s5
	st.w	$fp, $s0, 0
.LBB0_239:                              # %if.end1471
                                        #   in Loop: Header=BB0_228 Depth=3
	mul.d	$fp, $s4, $a7
	ldx.w	$s0, $t4, $fp
	bge	$t8, $s0, .LBB0_246
.LBB0_240:                              # %if.then1477
                                        #   in Loop: Header=BB0_228 Depth=3
	ld.w	$t8, $t6, 4
	mul.d	$t8, $t8, $a5
	ldx.w	$t8, $t2, $t8
	mul.d	$t8, $t8, $a7
	add.d	$t8, $t4, $t8
	ld.w	$s1, $t8, 16
	bge	$t7, $s1, .LBB0_242
# %bb.241:                              # %land.lhs.true1487
                                        #   in Loop: Header=BB0_228 Depth=3
	ld.w	$s1, $t8, 8
	beqz	$s1, .LBB0_245
.LBB0_242:                              # %if.else1503
                                        #   in Loop: Header=BB0_228 Depth=3
	bge	$t7, $s0, .LBB0_246
# %bb.243:                              # %if.then1509
                                        #   in Loop: Header=BB0_228 Depth=3
	add.d	$t8, $t4, $fp
	st.w	$t7, $t8, 0
	b	.LBB0_246
.LBB0_244:                              # %if.then1449
                                        #   in Loop: Header=BB0_228 Depth=3
	st.w	$s6, $s0, 0
	st.w	$a3, $s0, 8
	mul.d	$fp, $s4, $a7
	ldx.w	$s0, $t4, $fp
	blt	$t8, $s0, .LBB0_240
	b	.LBB0_246
.LBB0_245:                              # %if.then1493
                                        #   in Loop: Header=BB0_228 Depth=3
	st.w	$s0, $t8, 0
	st.w	$a3, $t8, 8
	.p2align	4, , 16
.LBB0_246:                              # %if.end1520
                                        #   in Loop: Header=BB0_228 Depth=3
	slli.d	$t7, $t5, 2
	ldx.w	$t7, $t6, $t7
	mul.d	$t7, $t7, $a5
	add.d	$t8, $t2, $t7
	ld.w	$t7, $t8, 44
	bne	$t7, $a3, .LBB0_227
# %bb.247:                              # %if.then1529
                                        #   in Loop: Header=BB0_228 Depth=3
	ld.w	$fp, $t8, 36
	alsl.d	$t7, $t5, $t6, 2
	ld.w	$s0, $t8, 4
	ld.w	$t8, $t8, 0
	slli.d	$t6, $fp, 5
	alsl.d	$t6, $fp, $t6, 3
	add.d	$fp, $t3, $t6
	ld.w	$t6, $fp, 4
	ld.w	$fp, $fp, 8
	mul.d	$s0, $s0, $a7
	ldx.w	$s1, $t4, $s0
	mul.d	$t8, $t8, $a7
	ldx.w	$t8, $t4, $t8
	add.d	$s0, $t4, $s0
	addi.d	$t5, $t5, 1
	addi.d	$s4, $t7, -4
	.p2align	4, , 16
.LBB0_248:                              # %for.cond1561
                                        #   Parent Loop BB0_178 Depth=1
                                        #     Parent Loop BB0_224 Depth=2
                                        #       Parent Loop BB0_228 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.w	$t5, $t5, -1
	blt	$t5, $a4, .LBB0_227
# %bb.249:                              # %for.body1564
                                        #   in Loop: Header=BB0_248 Depth=4
	ld.w	$s5, $s4, 0
	mul.d	$s5, $s5, $a5
	add.d	$s6, $t2, $s5
	ld.w	$s5, $s6, 44
	addi.d	$s4, $s4, -4
	bnez	$s5, .LBB0_248
# %bb.250:                              # %if.then1573
                                        #   in Loop: Header=BB0_228 Depth=3
	ld.w	$t5, $s6, 4
	mul.d	$s4, $t5, $a7
	ldx.w	$s5, $t4, $s4
	ld.w	$t5, $s6, 0
	bge	$s5, $s1, .LBB0_255
# %bb.251:                              # %if.then1591
                                        #   in Loop: Header=BB0_228 Depth=3
	ld.w	$s1, $s0, 20
	bge	$s1, $fp, .LBB0_253
# %bb.252:                              # %land.lhs.true1603
                                        #   in Loop: Header=BB0_228 Depth=3
	ld.w	$s1, $s0, 8
	beqz	$s1, .LBB0_260
.LBB0_253:                              # %if.else1619
                                        #   in Loop: Header=BB0_228 Depth=3
	bge	$s5, $fp, .LBB0_255
# %bb.254:                              # %if.then1625
                                        #   in Loop: Header=BB0_228 Depth=3
	add.d	$s0, $t4, $s4
	st.w	$fp, $s0, 0
.LBB0_255:                              # %if.end1631
                                        #   in Loop: Header=BB0_228 Depth=3
	mul.d	$t5, $t5, $a7
	ldx.w	$fp, $t4, $t5
	bge	$t8, $fp, .LBB0_227
.LBB0_256:                              # %if.then1637
                                        #   in Loop: Header=BB0_228 Depth=3
	ld.w	$t7, $t7, 0
	mul.d	$t7, $t7, $a5
	ldx.w	$t7, $t2, $t7
	mul.d	$t7, $t7, $a7
	add.d	$t7, $t4, $t7
	ld.w	$t8, $t7, 16
	bge	$t6, $t8, .LBB0_258
# %bb.257:                              # %land.lhs.true1649
                                        #   in Loop: Header=BB0_228 Depth=3
	ld.w	$t8, $t7, 8
	beqz	$t8, .LBB0_226
.LBB0_258:                              # %if.else1665
                                        #   in Loop: Header=BB0_228 Depth=3
	bge	$t6, $fp, .LBB0_227
# %bb.259:                              # %if.then1671
                                        #   in Loop: Header=BB0_228 Depth=3
	add.d	$t5, $t4, $t5
	st.w	$t6, $t5, 0
	b	.LBB0_227
.LBB0_260:                              # %if.then1609
                                        #   in Loop: Header=BB0_228 Depth=3
	st.w	$s5, $s0, 0
	st.w	$a3, $s0, 8
	mul.d	$t5, $t5, $a7
	ldx.w	$fp, $t4, $t5
	bge	$t8, $fp, .LBB0_227
	b	.LBB0_256
.LBB0_261:                              # %for.end1691
	ld.d	$s8, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 288                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 296                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 304
	ret
.Lfunc_end0:
	.size	reduceg, .Lfunc_end0-reduceg
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
