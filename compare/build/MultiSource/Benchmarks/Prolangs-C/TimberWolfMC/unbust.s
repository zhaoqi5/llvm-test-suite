	.file	"unbust.c"
	.text
	.globl	unbust                          # -- Begin function unbust
	.p2align	5
	.type	unbust,@function
unbust:                                 # @unbust
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(PtsArray)
	ld.d	$a0, $a0, %got_pc_lo12(PtsArray)
	ld.d	$s1, $a0, 0
	ld.w	$a2, $s1, 0
	ori	$a1, $zero, 1
	b	.LBB0_2
	.p2align	4, , 16
.LBB0_1:                                # %for.cond.loopexit.i
                                        #   in Loop: Header=BB0_2 Depth=1
	bge	$a0, $a2, .LBB0_8
.LBB0_2:                                # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
	bge	$a1, $a2, .LBB0_8
# %bb.3:                                # %for.body9.preheader.i
                                        #   in Loop: Header=BB0_2 Depth=1
	move	$a0, $a1
	alsl.d	$a1, $a1, $s1, 3
	slli.d	$a3, $a0, 3
	ldx.w	$a3, $s1, $a3
	ld.w	$a4, $a1, 4
	addi.d	$a1, $a0, 1
	move	$a5, $a1
	b	.LBB0_5
	.p2align	4, , 16
.LBB0_4:                                # %for.inc.i
                                        #   in Loop: Header=BB0_5 Depth=2
	addi.w	$a6, $a5, 0
	addi.d	$a5, $a5, 1
	bge	$a6, $a2, .LBB0_1
.LBB0_5:                                # %for.body9.i
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a6, $a5, 0
	slli.d	$a7, $a6, 3
	ldx.w	$a7, $s1, $a7
	bne	$a3, $a7, .LBB0_4
# %bb.6:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB0_5 Depth=2
	alsl.d	$a6, $a6, $s1, 3
	ld.w	$a7, $a6, 4
	bne	$a4, $a7, .LBB0_4
# %bb.7:                                # %if.then.i
                                        #   in Loop: Header=BB0_5 Depth=2
	slli.d	$a2, $a2, 3
	ldx.w	$a2, $s1, $a2
	st.w	$a2, $a6, 0
	ld.w	$a2, $s1, 0
	alsl.d	$a7, $a2, $s1, 3
	ld.w	$a7, $a7, 4
	addi.w	$a2, $a2, -1
	st.w	$a2, $s1, 0
	addi.d	$a5, $a5, -1
	st.w	$a7, $a6, 4
	b	.LBB0_4
.LBB0_8:                                # %iter.check
	bstrpick.d	$a0, $a2, 31, 0
	ori	$a3, $zero, 4
	lu12i.w	$a1, 24414
	bgeu	$a2, $a3, .LBB0_10
# %bb.9:
	ori	$a4, $zero, 1
	ori	$a2, $a1, 256
	b	.LBB0_20
.LBB0_10:                               # %vector.main.loop.iter.check
	ori	$a3, $zero, 16
	bgeu	$a2, $a3, .LBB0_12
# %bb.11:
	move	$a3, $zero
	ori	$a2, $a1, 256
	b	.LBB0_16
.LBB0_12:                               # %vector.ph
	bstrpick.d	$a2, $a0, 30, 4
	slli.d	$a3, $a2, 4
	ori	$a2, $a1, 256
	xvreplgr2vr.w	$xr0, $a2
	addi.d	$a2, $s1, 68
	move	$a4, $a3
	xvori.b	$xr1, $xr0, 0
	.p2align	4, , 16
.LBB0_13:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a2, -56
	ld.w	$a6, $a2, -48
	ld.w	$a7, $a2, -40
	ld.w	$t0, $a2, -32
	ld.w	$t1, $a2, -24
	ld.w	$t2, $a2, -16
	ld.w	$t3, $a2, -8
	ld.w	$t4, $a2, 0
	xvinsgr2vr.w	$xr2, $a5, 0
	xvinsgr2vr.w	$xr2, $a6, 1
	xvinsgr2vr.w	$xr2, $a7, 2
	xvinsgr2vr.w	$xr2, $t0, 3
	xvinsgr2vr.w	$xr2, $t1, 4
	xvinsgr2vr.w	$xr2, $t2, 5
	xvinsgr2vr.w	$xr2, $t3, 6
	xvinsgr2vr.w	$xr2, $t4, 7
	ld.w	$a5, $a2, 8
	ld.w	$a6, $a2, 16
	ld.w	$a7, $a2, 24
	ld.w	$t0, $a2, 32
	ld.w	$t1, $a2, 40
	ld.w	$t2, $a2, 48
	ld.w	$t3, $a2, 56
	ld.w	$t4, $a2, 64
	xvinsgr2vr.w	$xr3, $a5, 0
	xvinsgr2vr.w	$xr3, $a6, 1
	xvinsgr2vr.w	$xr3, $a7, 2
	xvinsgr2vr.w	$xr3, $t0, 3
	xvinsgr2vr.w	$xr3, $t1, 4
	xvinsgr2vr.w	$xr3, $t2, 5
	xvinsgr2vr.w	$xr3, $t3, 6
	xvinsgr2vr.w	$xr3, $t4, 7
	xvmin.w	$xr0, $xr2, $xr0
	xvmin.w	$xr1, $xr3, $xr1
	addi.d	$a4, $a4, -16
	addi.d	$a2, $a2, 128
	bnez	$a4, .LBB0_13
# %bb.14:                               # %middle.block
	xvmin.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 78
	xvshuf4i.w	$xr1, $xr1, 228
	xvmin.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvshuf4i.w	$xr1, $xr1, 14
	xvmin.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvmin.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$a2, $xr0, 0
	beq	$a3, $a0, .LBB0_22
# %bb.15:                               # %vec.epilog.iter.check
	andi	$a4, $a0, 12
	beqz	$a4, .LBB0_19
.LBB0_16:                               # %vec.epilog.ph
	bstrpick.d	$a4, $a0, 30, 2
	slli.d	$a5, $a4, 2
	srli.d	$a6, $a0, 2
	ori	$a4, $zero, 1
	bstrins.d	$a4, $a6, 30, 2
	vreplgr2vr.w	$vr0, $a2
	sub.d	$a2, $a3, $a5
	alsl.d	$a3, $a3, $s1, 3
	addi.d	$a3, $a3, 20
	.p2align	4, , 16
.LBB0_17:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a3, -8
	ld.w	$a7, $a3, 0
	ld.w	$t0, $a3, 8
	ld.w	$t1, $a3, 16
	vinsgr2vr.w	$vr1, $a6, 0
	vinsgr2vr.w	$vr1, $a7, 1
	vinsgr2vr.w	$vr1, $t0, 2
	vinsgr2vr.w	$vr1, $t1, 3
	vmin.w	$vr0, $vr1, $vr0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 32
	bnez	$a2, .LBB0_17
# %bb.18:                               # %vec.epilog.middle.block
	vshuf4i.w	$vr1, $vr0, 14
	vmin.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmin.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a2, $vr0, 0
	bne	$a5, $a0, .LBB0_20
	b	.LBB0_22
.LBB0_19:
	addi.d	$a4, $a3, 1
.LBB0_20:                               # %for.body.i77.preheader
	sub.d	$a3, $a0, $a4
	addi.d	$a3, $a3, 1
	alsl.d	$a4, $a4, $s1, 3
	addi.d	$a4, $a4, 4
	.p2align	4, , 16
.LBB0_21:                               # %for.body.i77
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a4, 0
	slt	$a6, $a5, $a2
	masknez	$a2, $a2, $a6
	maskeqz	$a5, $a5, $a6
	or	$a2, $a5, $a2
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 8
	bnez	$a3, .LBB0_21
.LBB0_22:                               # %for.body10.i.preheader
	move	$a3, $zero
	slli.d	$a0, $a0, 3
	ori	$a4, $zero, 1
	ori	$a5, $a1, 256
                                        # implicit-def: $r5
	b	.LBB0_24
	.p2align	4, , 16
.LBB0_23:                               # %for.inc26.i
                                        #   in Loop: Header=BB0_24 Depth=1
	addi.d	$a3, $a3, 8
	addi.d	$a4, $a4, 1
	beq	$a0, $a3, .LBB0_26
.LBB0_24:                               # %for.body10.i
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a6, $s1, $a3
	ld.w	$a7, $a6, 12
	bne	$a7, $a2, .LBB0_23
# %bb.25:                               # %if.then15.i
                                        #   in Loop: Header=BB0_24 Depth=1
	ld.w	$a6, $a6, 8
	slt	$a7, $a6, $a5
	masknez	$a5, $a5, $a7
	maskeqz	$a6, $a6, $a7
	or	$a5, $a6, $a5
	masknez	$a1, $a1, $a7
	maskeqz	$a6, $a4, $a7
	or	$a1, $a6, $a1
	b	.LBB0_23
.LBB0_26:                               # %firstP.exit
	addi.w	$s0, $a1, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(u)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_28
# %bb.27:                               # %if.end
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(PtsOut)
	ld.d	$a0, $a0, %got_pc_lo12(PtsOut)
	ld.d	$s2, $a0, 0
	ld.w	$a0, $s2, 0
	alsl.d	$a1, $s0, $s1, 3
	slli.d	$a2, $s0, 3
	ldx.w	$a2, $s1, $a2
	addi.w	$a0, $a0, 1
	st.w	$a0, $s2, 0
	slli.d	$a0, $a0, 3
	stx.w	$a2, $s2, $a0
	ld.w	$a0, $s2, 0
	ori	$a2, $zero, 1
	addi.d	$a2, $a2, -1
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %pc_hi20(.LJTI0_0)
	addi.d	$s0, $a3, %pc_lo12(.LJTI0_0)
	ldx.w	$a2, $s0, $a2
	ld.w	$a1, $a1, 4
	alsl.d	$a0, $a0, $s2, 3
	add.d	$a2, $s0, $a2
	st.w	$a1, $a0, 4
	jr	$a2
.LBB0_28:                               # %if.then
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$fp, $a0, %got_pc_lo12(fpo)
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 40
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 18
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_29:                               # %sw.bb
	move	$a0, $fp
	pcaddu18i	$ra, %call36(l)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	bnez	$a0, .LBB0_45
# %bb.30:                               # %if.then6
	move	$a0, $fp
	pcaddu18i	$ra, %call36(u)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_32
# %bb.31:                               # %if.then9
	move	$a0, $fp
	pcaddu18i	$ra, %call36(r)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 3
	bnez	$a0, .LBB0_45
	b	.LBB0_46
.LBB0_32:
	ori	$a1, $zero, 1
	b	.LBB0_45
.LBB0_33:                               # %sw.bb31
	move	$a0, $fp
	pcaddu18i	$ra, %call36(b)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 4
	bnez	$a0, .LBB0_45
# %bb.34:                               # %if.then34
	move	$a0, $fp
	pcaddu18i	$ra, %call36(l)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	bnez	$a0, .LBB0_45
# %bb.35:                               # %if.then37
	move	$a0, $fp
	pcaddu18i	$ra, %call36(u)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	bnez	$a0, .LBB0_45
	b	.LBB0_46
.LBB0_36:                               # %sw.bb62
	move	$a0, $fp
	pcaddu18i	$ra, %call36(u)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_32
# %bb.37:                               # %if.then65
	move	$a0, $fp
	pcaddu18i	$ra, %call36(r)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 3
	bnez	$a0, .LBB0_45
# %bb.38:                               # %if.then68
	move	$a0, $fp
	pcaddu18i	$ra, %call36(b)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 4
	bnez	$a0, .LBB0_45
	b	.LBB0_46
.LBB0_39:                               # %sw.bb93
	move	$a0, $fp
	pcaddu18i	$ra, %call36(r)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_41
# %bb.40:
	ori	$a1, $zero, 3
	b	.LBB0_45
.LBB0_41:                               # %if.then96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(b)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_43
# %bb.42:
	ori	$a1, $zero, 4
	b	.LBB0_45
.LBB0_43:                               # %if.then99
	move	$a0, $fp
	pcaddu18i	$ra, %call36(l)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_46
# %bb.44:
	ori	$a1, $zero, 2
.LBB0_45:                               # %sw.epilog
	ld.w	$a2, $s2, 0
	slli.d	$a3, $fp, 3
	ldx.w	$a4, $s1, $a3
	addi.w	$a2, $a2, 1
	st.w	$a2, $s2, 0
	slli.d	$a2, $a2, 3
	stx.w	$a4, $s2, $a2
	ld.w	$a2, $s1, 0
	slli.d	$a2, $a2, 3
	ldx.w	$a2, $s1, $a2
	alsl.d	$a4, $fp, $s1, 3
	ld.w	$a5, $s2, 0
	stx.w	$a2, $s1, $a3
	ld.w	$a2, $a4, 4
	ld.w	$a3, $s1, 0
	alsl.d	$a5, $a5, $s2, 3
	st.w	$a2, $a5, 4
	alsl.d	$a2, $a3, $s1, 3
	ld.w	$a2, $a2, 4
	addi.d	$a5, $a3, -1
	st.w	$a5, $s1, 0
	st.w	$a2, $a4, 4
	addi.d	$a1, $a1, -1
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $s0, $a1
	slt	$a2, $a0, $a3
	masknez	$a3, $fp, $a2
	maskeqz	$a0, $a0, $a2
	add.d	$a1, $s0, $a1
	or	$fp, $a0, $a3
	jr	$a1
.LBB0_46:                               # %cleanup
	ld.w	$a0, $s2, 0
	alsl.d	$a1, $fp, $s1, 3
	slli.d	$a2, $fp, 3
	ldx.w	$a2, $s1, $a2
	addi.w	$a0, $a0, 1
	st.w	$a0, $s2, 0
	slli.d	$a0, $a0, 3
	stx.w	$a2, $s2, $a0
	ld.w	$a0, $s2, 0
	ld.w	$a1, $a1, 4
	alsl.d	$a0, $a0, $s2, 3
	st.w	$a1, $a0, 4
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(condense)
	jr	$t8
.Lfunc_end0:
	.size	unbust, .Lfunc_end0-unbust
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_29-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_36-.LJTI0_0
	.word	.LBB0_39-.LJTI0_0
                                        # -- End function
	.text
	.globl	coincide                        # -- Begin function coincide
	.p2align	5
	.type	coincide,@function
coincide:                               # @coincide
# %bb.0:                                # %entry
	pcalau12i	$a0, %got_pc_hi20(PtsArray)
	ld.d	$a0, $a0, %got_pc_lo12(PtsArray)
	ld.d	$a0, $a0, 0
	ld.w	$a1, $a0, 0
	ori	$a2, $zero, 1
	bge	$a1, $a2, .LBB1_3
.LBB1_1:                                # %for.end37
	ret
	.p2align	4, , 16
.LBB1_2:                                # %for.cond.loopexit
                                        #   in Loop: Header=BB1_3 Depth=1
	bge	$a3, $a1, .LBB1_1
.LBB1_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_6 Depth 2
	bge	$a2, $a1, .LBB1_1
# %bb.4:                                # %for.body9.preheader
                                        #   in Loop: Header=BB1_3 Depth=1
	move	$a3, $a2
	alsl.d	$a2, $a2, $a0, 3
	slli.d	$a4, $a3, 3
	ldx.w	$a4, $a0, $a4
	ld.w	$a5, $a2, 4
	addi.d	$a2, $a3, 1
	move	$a6, $a2
	b	.LBB1_6
	.p2align	4, , 16
.LBB1_5:                                # %for.inc
                                        #   in Loop: Header=BB1_6 Depth=2
	addi.w	$a7, $a6, 0
	addi.d	$a6, $a6, 1
	bge	$a7, $a1, .LBB1_2
.LBB1_6:                                # %for.body9
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a7, $a6, 0
	slli.d	$t0, $a7, 3
	ldx.w	$t0, $a0, $t0
	bne	$a4, $t0, .LBB1_5
# %bb.7:                                # %land.lhs.true
                                        #   in Loop: Header=BB1_6 Depth=2
	alsl.d	$a7, $a7, $a0, 3
	ld.w	$t0, $a7, 4
	bne	$a5, $t0, .LBB1_5
# %bb.8:                                # %if.then
                                        #   in Loop: Header=BB1_6 Depth=2
	slli.d	$a1, $a1, 3
	ldx.w	$a1, $a0, $a1
	st.w	$a1, $a7, 0
	ld.w	$a1, $a0, 0
	alsl.d	$t0, $a1, $a0, 3
	ld.w	$t0, $t0, 4
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 0
	addi.d	$a6, $a6, -1
	st.w	$t0, $a7, 4
	b	.LBB1_5
.Lfunc_end1:
	.size	coincide, .Lfunc_end1-coincide
                                        # -- End function
	.globl	firstP                          # -- Begin function firstP
	.p2align	5
	.type	firstP,@function
firstP:                                 # @firstP
# %bb.0:                                # %entry
	pcalau12i	$a0, %got_pc_hi20(PtsArray)
	ld.d	$a0, $a0, %got_pc_lo12(PtsArray)
	ld.d	$a0, $a0, 0
	ld.w	$a3, $a0, 0
	ori	$a6, $zero, 1
	blt	$a3, $a6, .LBB2_3
# %bb.1:                                # %iter.check
	addi.d	$a1, $a3, 1
	bstrpick.d	$a1, $a1, 31, 0
	ori	$a4, $zero, 3
	lu12i.w	$a2, 24414
	bltu	$a4, $a3, .LBB2_4
# %bb.2:
	ori	$a4, $a2, 256
	b	.LBB2_14
.LBB2_3:
                                        # implicit-def: $r6
	addi.w	$a0, $a2, 0
	ret
.LBB2_4:                                # %vector.main.loop.iter.check
	ori	$a4, $zero, 16
	bgeu	$a3, $a4, .LBB2_6
# %bb.5:
	move	$a5, $zero
	ori	$a4, $a2, 256
	b	.LBB2_10
.LBB2_6:                                # %vector.ph
	bstrpick.d	$a4, $a3, 30, 4
	slli.d	$a5, $a4, 4
	ori	$a4, $a2, 256
	xvreplgr2vr.w	$xr0, $a4
	addi.d	$a4, $a0, 68
	move	$a6, $a5
	xvori.b	$xr1, $xr0, 0
	.p2align	4, , 16
.LBB2_7:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a4, -56
	ld.w	$t0, $a4, -48
	ld.w	$t1, $a4, -40
	ld.w	$t2, $a4, -32
	ld.w	$t3, $a4, -24
	ld.w	$t4, $a4, -16
	ld.w	$t5, $a4, -8
	ld.w	$t6, $a4, 0
	xvinsgr2vr.w	$xr2, $a7, 0
	xvinsgr2vr.w	$xr2, $t0, 1
	xvinsgr2vr.w	$xr2, $t1, 2
	xvinsgr2vr.w	$xr2, $t2, 3
	xvinsgr2vr.w	$xr2, $t3, 4
	xvinsgr2vr.w	$xr2, $t4, 5
	xvinsgr2vr.w	$xr2, $t5, 6
	xvinsgr2vr.w	$xr2, $t6, 7
	ld.w	$a7, $a4, 8
	ld.w	$t0, $a4, 16
	ld.w	$t1, $a4, 24
	ld.w	$t2, $a4, 32
	ld.w	$t3, $a4, 40
	ld.w	$t4, $a4, 48
	ld.w	$t5, $a4, 56
	ld.w	$t6, $a4, 64
	xvinsgr2vr.w	$xr3, $a7, 0
	xvinsgr2vr.w	$xr3, $t0, 1
	xvinsgr2vr.w	$xr3, $t1, 2
	xvinsgr2vr.w	$xr3, $t2, 3
	xvinsgr2vr.w	$xr3, $t3, 4
	xvinsgr2vr.w	$xr3, $t4, 5
	xvinsgr2vr.w	$xr3, $t5, 6
	xvinsgr2vr.w	$xr3, $t6, 7
	xvmin.w	$xr0, $xr2, $xr0
	xvmin.w	$xr1, $xr3, $xr1
	addi.d	$a6, $a6, -16
	addi.d	$a4, $a4, 128
	bnez	$a6, .LBB2_7
# %bb.8:                                # %middle.block
	xvmin.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 78
	xvshuf4i.w	$xr1, $xr1, 228
	xvmin.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvshuf4i.w	$xr1, $xr1, 14
	xvmin.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvmin.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$a4, $xr0, 0
	beq	$a5, $a3, .LBB2_16
# %bb.9:                                # %vec.epilog.iter.check
	andi	$a6, $a3, 12
	beqz	$a6, .LBB2_13
.LBB2_10:                               # %vec.epilog.ph
	bstrpick.d	$a6, $a3, 30, 2
	slli.d	$a7, $a6, 2
	srli.d	$t0, $a3, 2
	ori	$a6, $zero, 1
	bstrins.d	$a6, $t0, 30, 2
	vreplgr2vr.w	$vr0, $a4
	sub.d	$a4, $a5, $a7
	alsl.d	$a5, $a5, $a0, 3
	addi.d	$a5, $a5, 20
	.p2align	4, , 16
.LBB2_11:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t0, $a5, -8
	ld.w	$t1, $a5, 0
	ld.w	$t2, $a5, 8
	ld.w	$t3, $a5, 16
	vinsgr2vr.w	$vr1, $t0, 0
	vinsgr2vr.w	$vr1, $t1, 1
	vinsgr2vr.w	$vr1, $t2, 2
	vinsgr2vr.w	$vr1, $t3, 3
	vmin.w	$vr0, $vr1, $vr0
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 32
	bnez	$a4, .LBB2_11
# %bb.12:                               # %vec.epilog.middle.block
	vshuf4i.w	$vr1, $vr0, 14
	vmin.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmin.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a4, $vr0, 0
	bne	$a7, $a3, .LBB2_14
	b	.LBB2_16
.LBB2_13:
	addi.d	$a6, $a5, 1
.LBB2_14:                               # %for.body.preheader
	alsl.d	$a3, $a6, $a0, 3
	addi.d	$a3, $a3, 4
	sub.d	$a5, $a1, $a6
	.p2align	4, , 16
.LBB2_15:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a3, 0
	slt	$a7, $a6, $a4
	masknez	$a4, $a4, $a7
	maskeqz	$a6, $a6, $a7
	or	$a4, $a6, $a4
	addi.d	$a5, $a5, -1
	addi.d	$a3, $a3, 8
	bnez	$a5, .LBB2_15
.LBB2_16:                               # %for.body10.preheader
	addi.d	$a0, $a0, 12
	addi.d	$a1, $a1, -1
	ori	$a3, $zero, 1
	ori	$a5, $a2, 256
                                        # implicit-def: $r6
	b	.LBB2_18
	.p2align	4, , 16
.LBB2_17:                               # %for.inc26
                                        #   in Loop: Header=BB2_18 Depth=1
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 1
	beqz	$a1, .LBB2_20
.LBB2_18:                               # %for.body10
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a0, 0
	bne	$a6, $a4, .LBB2_17
# %bb.19:                               # %if.then15
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.w	$a6, $a0, -4
	slt	$a7, $a6, $a5
	masknez	$a5, $a5, $a7
	maskeqz	$a6, $a6, $a7
	or	$a5, $a6, $a5
	masknez	$a2, $a2, $a7
	maskeqz	$a6, $a3, $a7
	or	$a2, $a6, $a2
	b	.LBB2_17
.LBB2_20:                               # %for.end28
	addi.w	$a0, $a2, 0
	ret
.Lfunc_end2:
	.size	firstP, .Lfunc_end2-firstP
                                        # -- End function
	.globl	u                               # -- Begin function u
	.p2align	5
	.type	u,@function
u:                                      # @u
# %bb.0:                                # %entry
	pcalau12i	$a1, %got_pc_hi20(PtsArray)
	ld.d	$a1, $a1, %got_pc_lo12(PtsArray)
	ld.d	$a4, $a1, 0
	ld.w	$a6, $a4, 0
	ori	$a5, $zero, 1
	blt	$a6, $a5, .LBB3_20
# %bb.1:                                # %for.body.preheader
	move	$a1, $a0
	move	$a0, $zero
	alsl.d	$a3, $a1, $a4, 3
	slli.d	$a2, $a1, 3
	ldx.w	$a2, $a4, $a2
	ld.w	$a3, $a3, 4
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a6, $a6, 1
	bstrpick.d	$a7, $a6, 31, 0
	addi.d	$a1, $a1, -1
	addi.d	$a6, $a4, 12
	addi.d	$a7, $a7, -1
	lu12i.w	$t0, 24414
	ori	$t0, $t0, 256
	b	.LBB3_3
	.p2align	4, , 16
.LBB3_2:                                # %for.inc
                                        #   in Loop: Header=BB3_3 Depth=1
	addi.d	$a1, $a1, -1
	addi.d	$a6, $a6, 8
	addi.d	$a7, $a7, -1
	addi.w	$a5, $a5, 1
	beqz	$a7, .LBB3_7
.LBB3_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	beqz	$a1, .LBB3_2
# %bb.4:                                # %if.end
                                        #   in Loop: Header=BB3_3 Depth=1
	ld.w	$t1, $a6, -4
	bne	$t1, $a2, .LBB3_2
# %bb.5:                                # %if.end11
                                        #   in Loop: Header=BB3_3 Depth=1
	ld.w	$t1, $a6, 0
	bge	$a3, $t1, .LBB3_2
# %bb.6:                                # %if.then16
                                        #   in Loop: Header=BB3_3 Depth=1
	sub.w	$t1, $t1, $a3
	slt	$t2, $t1, $t0
	maskeqz	$t1, $t1, $t2
	masknez	$t0, $t0, $t2
	or	$t0, $t1, $t0
	masknez	$a0, $a0, $t2
	maskeqz	$t1, $a5, $t2
	or	$a0, $t1, $a0
	b	.LBB3_2
.LBB3_7:                                # %for.end
	beqz	$a0, .LBB3_20
# %bb.8:                                # %if.then29
	pcalau12i	$a1, %got_pc_hi20(rectang)
	ld.d	$a1, $a1, %got_pc_lo12(rectang)
	ld.d	$a6, $a1, 0
	ld.w	$a5, $a6, 0
	ori	$a1, $zero, 1
	blt	$a5, $a1, .LBB3_20
# %bb.9:                                # %for.body.preheader.i
	alsl.d	$a7, $a0, $a4, 3
	slli.d	$a1, $a0, 3
	ldx.w	$a1, $a4, $a1
	ld.w	$a4, $a7, 4
	addi.d	$a5, $a5, 1
	bstrpick.d	$a5, $a5, 31, 0
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 28
	b	.LBB3_11
	.p2align	4, , 16
.LBB3_10:                               # %for.cond.i
                                        #   in Loop: Header=BB3_11 Depth=1
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 16
	beqz	$a5, .LBB3_20
.LBB3_11:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a6, -12
	blt	$a2, $a7, .LBB3_10
# %bb.12:                               # %for.body.i
                                        #   in Loop: Header=BB3_11 Depth=1
	ld.w	$t0, $a6, -8
	blt	$t0, $a2, .LBB3_10
# %bb.13:                               # %for.body.i
                                        #   in Loop: Header=BB3_11 Depth=1
	ld.w	$t1, $a6, -4
	blt	$a3, $t1, .LBB3_10
# %bb.14:                               # %for.body.i
                                        #   in Loop: Header=BB3_11 Depth=1
	ld.w	$t2, $a6, 0
	blt	$t2, $a3, .LBB3_10
# %bb.15:                               # %for.body.i
                                        #   in Loop: Header=BB3_11 Depth=1
	blt	$a1, $a7, .LBB3_10
# %bb.16:                               # %for.body.i
                                        #   in Loop: Header=BB3_11 Depth=1
	blt	$t0, $a1, .LBB3_10
# %bb.17:                               # %for.body.i
                                        #   in Loop: Header=BB3_11 Depth=1
	blt	$a4, $t1, .LBB3_10
# %bb.18:                               # %for.body.i
                                        #   in Loop: Header=BB3_11 Depth=1
	blt	$t2, $a4, .LBB3_10
# %bb.19:                               # %if.end33
	ret
.LBB3_20:
	move	$a0, $zero
	ret
.Lfunc_end3:
	.size	u, .Lfunc_end3-u
                                        # -- End function
	.globl	outputP                         # -- Begin function outputP
	.p2align	5
	.type	outputP,@function
outputP:                                # @outputP
# %bb.0:                                # %entry
	pcalau12i	$a1, %got_pc_hi20(PtsArray)
	pcalau12i	$a2, %got_pc_hi20(PtsOut)
	ld.d	$a2, $a2, %got_pc_lo12(PtsOut)
	ld.d	$a1, $a1, %got_pc_lo12(PtsArray)
	ld.d	$a2, $a2, 0
	ld.d	$a1, $a1, 0
	ld.w	$a3, $a2, 0
	alsl.d	$a4, $a0, $a1, 3
	slli.d	$a0, $a0, 3
	ldx.w	$a0, $a1, $a0
	addi.w	$a1, $a3, 1
	st.w	$a1, $a2, 0
	slli.d	$a1, $a1, 3
	stx.w	$a0, $a2, $a1
	ld.w	$a0, $a2, 0
	ld.w	$a1, $a4, 4
	alsl.d	$a0, $a0, $a2, 3
	st.w	$a1, $a0, 4
	ret
.Lfunc_end4:
	.size	outputP, .Lfunc_end4-outputP
                                        # -- End function
	.globl	l                               # -- Begin function l
	.p2align	5
	.type	l,@function
l:                                      # @l
# %bb.0:                                # %entry
	pcalau12i	$a1, %got_pc_hi20(PtsArray)
	ld.d	$a1, $a1, %got_pc_lo12(PtsArray)
	ld.d	$a4, $a1, 0
	ld.w	$a6, $a4, 0
	ori	$a5, $zero, 1
	blt	$a6, $a5, .LBB5_20
# %bb.1:                                # %for.body.preheader
	move	$a1, $a0
	move	$a0, $zero
	alsl.d	$a3, $a1, $a4, 3
	slli.d	$a2, $a1, 3
	ldx.w	$a2, $a4, $a2
	ld.w	$a3, $a3, 4
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a6, $a6, 1
	bstrpick.d	$a7, $a6, 31, 0
	addi.d	$a1, $a1, -1
	addi.d	$a6, $a4, 12
	addi.d	$a7, $a7, -1
	lu12i.w	$t0, 24414
	ori	$t0, $t0, 256
	b	.LBB5_3
	.p2align	4, , 16
.LBB5_2:                                # %for.inc
                                        #   in Loop: Header=BB5_3 Depth=1
	addi.d	$a1, $a1, -1
	addi.d	$a6, $a6, 8
	addi.d	$a7, $a7, -1
	addi.w	$a5, $a5, 1
	beqz	$a7, .LBB5_7
.LBB5_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	beqz	$a1, .LBB5_2
# %bb.4:                                # %if.end
                                        #   in Loop: Header=BB5_3 Depth=1
	ld.w	$t1, $a6, 0
	bne	$t1, $a3, .LBB5_2
# %bb.5:                                # %if.end11
                                        #   in Loop: Header=BB5_3 Depth=1
	ld.w	$t1, $a6, -4
	bge	$t1, $a2, .LBB5_2
# %bb.6:                                # %if.then16
                                        #   in Loop: Header=BB5_3 Depth=1
	sub.w	$t1, $a2, $t1
	slt	$t2, $t1, $t0
	maskeqz	$t1, $t1, $t2
	masknez	$t0, $t0, $t2
	or	$t0, $t1, $t0
	masknez	$a0, $a0, $t2
	maskeqz	$t1, $a5, $t2
	or	$a0, $t1, $a0
	b	.LBB5_2
.LBB5_7:                                # %for.end
	beqz	$a0, .LBB5_20
# %bb.8:                                # %if.then29
	pcalau12i	$a1, %got_pc_hi20(rectang)
	ld.d	$a1, $a1, %got_pc_lo12(rectang)
	ld.d	$a6, $a1, 0
	ld.w	$a5, $a6, 0
	ori	$a1, $zero, 1
	blt	$a5, $a1, .LBB5_20
# %bb.9:                                # %for.body.preheader.i
	alsl.d	$a7, $a0, $a4, 3
	slli.d	$a1, $a0, 3
	ldx.w	$a1, $a4, $a1
	ld.w	$a4, $a7, 4
	addi.d	$a5, $a5, 1
	bstrpick.d	$a5, $a5, 31, 0
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 28
	b	.LBB5_11
	.p2align	4, , 16
.LBB5_10:                               # %for.cond.i
                                        #   in Loop: Header=BB5_11 Depth=1
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 16
	beqz	$a5, .LBB5_20
.LBB5_11:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a6, -12
	blt	$a2, $a7, .LBB5_10
# %bb.12:                               # %for.body.i
                                        #   in Loop: Header=BB5_11 Depth=1
	ld.w	$t0, $a6, -8
	blt	$t0, $a2, .LBB5_10
# %bb.13:                               # %for.body.i
                                        #   in Loop: Header=BB5_11 Depth=1
	ld.w	$t1, $a6, -4
	blt	$a3, $t1, .LBB5_10
# %bb.14:                               # %for.body.i
                                        #   in Loop: Header=BB5_11 Depth=1
	ld.w	$t2, $a6, 0
	blt	$t2, $a3, .LBB5_10
# %bb.15:                               # %for.body.i
                                        #   in Loop: Header=BB5_11 Depth=1
	blt	$a1, $a7, .LBB5_10
# %bb.16:                               # %for.body.i
                                        #   in Loop: Header=BB5_11 Depth=1
	blt	$t0, $a1, .LBB5_10
# %bb.17:                               # %for.body.i
                                        #   in Loop: Header=BB5_11 Depth=1
	blt	$a4, $t1, .LBB5_10
# %bb.18:                               # %for.body.i
                                        #   in Loop: Header=BB5_11 Depth=1
	blt	$t2, $a4, .LBB5_10
# %bb.19:                               # %if.end33
	ret
.LBB5_20:
	move	$a0, $zero
	ret
.Lfunc_end5:
	.size	l, .Lfunc_end5-l
                                        # -- End function
	.globl	r                               # -- Begin function r
	.p2align	5
	.type	r,@function
r:                                      # @r
# %bb.0:                                # %entry
	pcalau12i	$a1, %got_pc_hi20(PtsArray)
	ld.d	$a1, $a1, %got_pc_lo12(PtsArray)
	ld.d	$a4, $a1, 0
	ld.w	$a6, $a4, 0
	ori	$a5, $zero, 1
	blt	$a6, $a5, .LBB6_20
# %bb.1:                                # %for.body.preheader
	move	$a1, $a0
	move	$a0, $zero
	alsl.d	$a3, $a1, $a4, 3
	slli.d	$a2, $a1, 3
	ldx.w	$a2, $a4, $a2
	ld.w	$a3, $a3, 4
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a6, $a6, 1
	bstrpick.d	$a7, $a6, 31, 0
	addi.d	$a1, $a1, -1
	addi.d	$a6, $a4, 12
	addi.d	$a7, $a7, -1
	lu12i.w	$t0, 24414
	ori	$t0, $t0, 256
	b	.LBB6_3
	.p2align	4, , 16
.LBB6_2:                                # %for.inc
                                        #   in Loop: Header=BB6_3 Depth=1
	addi.d	$a1, $a1, -1
	addi.d	$a6, $a6, 8
	addi.d	$a7, $a7, -1
	addi.w	$a5, $a5, 1
	beqz	$a7, .LBB6_7
.LBB6_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	beqz	$a1, .LBB6_2
# %bb.4:                                # %if.end
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.w	$t1, $a6, 0
	bne	$t1, $a3, .LBB6_2
# %bb.5:                                # %if.end11
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.w	$t1, $a6, -4
	bge	$a2, $t1, .LBB6_2
# %bb.6:                                # %if.then16
                                        #   in Loop: Header=BB6_3 Depth=1
	sub.w	$t1, $t1, $a2
	slt	$t2, $t1, $t0
	maskeqz	$t1, $t1, $t2
	masknez	$t0, $t0, $t2
	or	$t0, $t1, $t0
	masknez	$a0, $a0, $t2
	maskeqz	$t1, $a5, $t2
	or	$a0, $t1, $a0
	b	.LBB6_2
.LBB6_7:                                # %for.end
	beqz	$a0, .LBB6_20
# %bb.8:                                # %if.then29
	pcalau12i	$a1, %got_pc_hi20(rectang)
	ld.d	$a1, $a1, %got_pc_lo12(rectang)
	ld.d	$a6, $a1, 0
	ld.w	$a5, $a6, 0
	ori	$a1, $zero, 1
	blt	$a5, $a1, .LBB6_20
# %bb.9:                                # %for.body.preheader.i
	alsl.d	$a7, $a0, $a4, 3
	slli.d	$a1, $a0, 3
	ldx.w	$a1, $a4, $a1
	ld.w	$a4, $a7, 4
	addi.d	$a5, $a5, 1
	bstrpick.d	$a5, $a5, 31, 0
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 28
	b	.LBB6_11
	.p2align	4, , 16
.LBB6_10:                               # %for.cond.i
                                        #   in Loop: Header=BB6_11 Depth=1
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 16
	beqz	$a5, .LBB6_20
.LBB6_11:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a6, -12
	blt	$a2, $a7, .LBB6_10
# %bb.12:                               # %for.body.i
                                        #   in Loop: Header=BB6_11 Depth=1
	ld.w	$t0, $a6, -8
	blt	$t0, $a2, .LBB6_10
# %bb.13:                               # %for.body.i
                                        #   in Loop: Header=BB6_11 Depth=1
	ld.w	$t1, $a6, -4
	blt	$a3, $t1, .LBB6_10
# %bb.14:                               # %for.body.i
                                        #   in Loop: Header=BB6_11 Depth=1
	ld.w	$t2, $a6, 0
	blt	$t2, $a3, .LBB6_10
# %bb.15:                               # %for.body.i
                                        #   in Loop: Header=BB6_11 Depth=1
	blt	$a1, $a7, .LBB6_10
# %bb.16:                               # %for.body.i
                                        #   in Loop: Header=BB6_11 Depth=1
	blt	$t0, $a1, .LBB6_10
# %bb.17:                               # %for.body.i
                                        #   in Loop: Header=BB6_11 Depth=1
	blt	$a4, $t1, .LBB6_10
# %bb.18:                               # %for.body.i
                                        #   in Loop: Header=BB6_11 Depth=1
	blt	$t2, $a4, .LBB6_10
# %bb.19:                               # %if.end33
	ret
.LBB6_20:
	move	$a0, $zero
	ret
.Lfunc_end6:
	.size	r, .Lfunc_end6-r
                                        # -- End function
	.globl	condense                        # -- Begin function condense
	.p2align	5
	.type	condense,@function
condense:                               # @condense
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(PtsArray)
	ld.d	$a0, $a0, %got_pc_lo12(PtsArray)
	ld.d	$a0, $a0, 0
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB7_17
# %bb.1:                                # %for.cond.preheader
	pcalau12i	$a0, %got_pc_hi20(PtsOut)
	ld.d	$a0, $a0, %got_pc_lo12(PtsOut)
	ld.d	$a0, $a0, 0
	ld.w	$a3, $a0, 0
	ori	$a1, $zero, 3
	blt	$a3, $a1, .LBB7_15
# %bb.2:                                # %for.body.preheader
	ori	$a2, $zero, 1
	ori	$a4, $zero, 2
	b	.LBB7_4
	.p2align	4, , 16
.LBB7_3:                                # %for.inc84.sink.split
                                        #   in Loop: Header=BB7_4 Depth=1
	addi.w	$a3, $a3, -1
	st.w	$a3, $a0, 0
	addi.w	$a1, $a1, -1
	move	$a4, $a1
	addi.w	$a1, $a1, 1
	bge	$a4, $a3, .LBB7_15
.LBB7_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_13 Depth 2
                                        #     Child Loop BB7_8 Depth 2
	slli.d	$a5, $a2, 3
	ldx.w	$a6, $a0, $a5
	slli.d	$a5, $a4, 3
	ldx.w	$a7, $a0, $a5
	alsl.d	$a5, $a1, $a0, 3
	bne	$a6, $a7, .LBB7_9
# %bb.5:                                # %if.then21
                                        #   in Loop: Header=BB7_4 Depth=1
	ld.w	$a5, $a5, 0
	bne	$a5, $a6, .LBB7_14
# %bb.6:                                # %for.cond24.preheader
                                        #   in Loop: Header=BB7_4 Depth=1
	blt	$a3, $a1, .LBB7_3
# %bb.7:                                # %for.body28.preheader
                                        #   in Loop: Header=BB7_4 Depth=1
	addi.d	$a4, $a1, -1
	alsl.d	$a5, $a1, $a0, 3
	.p2align	4, , 16
.LBB7_8:                                # %for.body28
                                        #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a5, 0
	st.d	$a3, $a5, -8
	ld.w	$a3, $a0, 0
	addi.d	$a4, $a4, 1
	addi.d	$a5, $a5, 8
	blt	$a4, $a3, .LBB7_8
	b	.LBB7_3
	.p2align	4, , 16
.LBB7_9:                                # %if.else46
                                        #   in Loop: Header=BB7_4 Depth=1
	alsl.d	$a6, $a2, $a0, 3
	ld.w	$a6, $a6, 4
	alsl.d	$a7, $a4, $a0, 3
	ld.w	$a7, $a7, 4
	bne	$a6, $a7, .LBB7_16
# %bb.10:                               # %if.then48
                                        #   in Loop: Header=BB7_4 Depth=1
	ld.w	$a7, $a5, 4
	bne	$a7, $a6, .LBB7_14
# %bb.11:                               # %for.cond51.preheader
                                        #   in Loop: Header=BB7_4 Depth=1
	blt	$a3, $a1, .LBB7_3
# %bb.12:                               # %for.body55.preheader
                                        #   in Loop: Header=BB7_4 Depth=1
	addi.d	$a4, $a1, -1
	.p2align	4, , 16
.LBB7_13:                               # %for.body55
                                        #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a5, 0
	st.d	$a3, $a5, -8
	ld.w	$a3, $a0, 0
	addi.d	$a4, $a4, 1
	addi.d	$a5, $a5, 8
	blt	$a4, $a3, .LBB7_13
	b	.LBB7_3
	.p2align	4, , 16
.LBB7_14:                               #   in Loop: Header=BB7_4 Depth=1
	move	$a2, $a4
	move	$a4, $a1
	addi.w	$a1, $a1, 1
	blt	$a4, $a3, .LBB7_4
.LBB7_15:                               # %for.end86
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB7_16:                               # %if.else79
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$fp, $a0, %got_pc_lo12(fpo)
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 38
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	ori	$a1, $zero, 27
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB7_17:                               # %if.then
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(dumpError)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	condense, .Lfunc_end7-condense
                                        # -- End function
	.globl	elim                            # -- Begin function elim
	.p2align	5
	.type	elim,@function
elim:                                   # @elim
# %bb.0:                                # %entry
	pcalau12i	$a1, %got_pc_hi20(PtsArray)
	ld.d	$a1, $a1, %got_pc_lo12(PtsArray)
	ld.d	$a1, $a1, 0
	ld.w	$a2, $a1, 0
	slli.d	$a2, $a2, 3
	ldx.w	$a2, $a1, $a2
	slli.d	$a3, $a0, 3
	stx.w	$a2, $a1, $a3
	ld.w	$a2, $a1, 0
	alsl.d	$a3, $a2, $a1, 3
	ld.w	$a3, $a3, 4
	alsl.d	$a0, $a0, $a1, 3
	addi.d	$a2, $a2, -1
	st.w	$a2, $a1, 0
	st.w	$a3, $a0, 4
	ret
.Lfunc_end8:
	.size	elim, .Lfunc_end8-elim
                                        # -- End function
	.globl	b                               # -- Begin function b
	.p2align	5
	.type	b,@function
b:                                      # @b
# %bb.0:                                # %entry
	pcalau12i	$a1, %got_pc_hi20(PtsArray)
	ld.d	$a1, $a1, %got_pc_lo12(PtsArray)
	ld.d	$a4, $a1, 0
	ld.w	$a6, $a4, 0
	ori	$a5, $zero, 1
	blt	$a6, $a5, .LBB9_20
# %bb.1:                                # %for.body.preheader
	move	$a1, $a0
	move	$a0, $zero
	alsl.d	$a3, $a1, $a4, 3
	slli.d	$a2, $a1, 3
	ldx.w	$a2, $a4, $a2
	ld.w	$a3, $a3, 4
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a6, $a6, 1
	bstrpick.d	$a7, $a6, 31, 0
	addi.d	$a1, $a1, -1
	addi.d	$a6, $a4, 12
	addi.d	$a7, $a7, -1
	lu12i.w	$t0, 24414
	ori	$t0, $t0, 256
	b	.LBB9_3
	.p2align	4, , 16
.LBB9_2:                                # %for.inc
                                        #   in Loop: Header=BB9_3 Depth=1
	addi.d	$a1, $a1, -1
	addi.d	$a6, $a6, 8
	addi.d	$a7, $a7, -1
	addi.w	$a5, $a5, 1
	beqz	$a7, .LBB9_7
.LBB9_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	beqz	$a1, .LBB9_2
# %bb.4:                                # %if.end
                                        #   in Loop: Header=BB9_3 Depth=1
	ld.w	$t1, $a6, -4
	bne	$t1, $a2, .LBB9_2
# %bb.5:                                # %if.end11
                                        #   in Loop: Header=BB9_3 Depth=1
	ld.w	$t1, $a6, 0
	bge	$t1, $a3, .LBB9_2
# %bb.6:                                # %if.then16
                                        #   in Loop: Header=BB9_3 Depth=1
	sub.w	$t1, $a3, $t1
	slt	$t2, $t1, $t0
	maskeqz	$t1, $t1, $t2
	masknez	$t0, $t0, $t2
	or	$t0, $t1, $t0
	masknez	$a0, $a0, $t2
	maskeqz	$t1, $a5, $t2
	or	$a0, $t1, $a0
	b	.LBB9_2
.LBB9_7:                                # %for.end
	beqz	$a0, .LBB9_20
# %bb.8:                                # %if.then29
	pcalau12i	$a1, %got_pc_hi20(rectang)
	ld.d	$a1, $a1, %got_pc_lo12(rectang)
	ld.d	$a6, $a1, 0
	ld.w	$a5, $a6, 0
	ori	$a1, $zero, 1
	blt	$a5, $a1, .LBB9_20
# %bb.9:                                # %for.body.preheader.i
	alsl.d	$a7, $a0, $a4, 3
	slli.d	$a1, $a0, 3
	ldx.w	$a1, $a4, $a1
	ld.w	$a4, $a7, 4
	addi.d	$a5, $a5, 1
	bstrpick.d	$a5, $a5, 31, 0
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 28
	b	.LBB9_11
	.p2align	4, , 16
.LBB9_10:                               # %for.cond.i
                                        #   in Loop: Header=BB9_11 Depth=1
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 16
	beqz	$a5, .LBB9_20
.LBB9_11:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a6, -12
	blt	$a2, $a7, .LBB9_10
# %bb.12:                               # %for.body.i
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.w	$t0, $a6, -8
	blt	$t0, $a2, .LBB9_10
# %bb.13:                               # %for.body.i
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.w	$t1, $a6, -4
	blt	$a3, $t1, .LBB9_10
# %bb.14:                               # %for.body.i
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.w	$t2, $a6, 0
	blt	$t2, $a3, .LBB9_10
# %bb.15:                               # %for.body.i
                                        #   in Loop: Header=BB9_11 Depth=1
	blt	$a1, $a7, .LBB9_10
# %bb.16:                               # %for.body.i
                                        #   in Loop: Header=BB9_11 Depth=1
	blt	$t0, $a1, .LBB9_10
# %bb.17:                               # %for.body.i
                                        #   in Loop: Header=BB9_11 Depth=1
	blt	$a4, $t1, .LBB9_10
# %bb.18:                               # %for.body.i
                                        #   in Loop: Header=BB9_11 Depth=1
	blt	$t2, $a4, .LBB9_10
# %bb.19:                               # %if.end33
	ret
.LBB9_20:
	move	$a0, $zero
	ret
.Lfunc_end9:
	.size	b, .Lfunc_end9-b
                                        # -- End function
	.globl	addPts                          # -- Begin function addPts
	.p2align	5
	.type	addPts,@function
addPts:                                 # @addPts
# %bb.0:                                # %entry
	pcalau12i	$a4, %got_pc_hi20(PtsArray)
	ld.d	$a4, $a4, %got_pc_lo12(PtsArray)
	ld.d	$a4, $a4, 0
	ld.w	$a5, $a4, 0
	addi.w	$a5, $a5, 1
	st.w	$a5, $a4, 0
	slli.d	$a5, $a5, 3
	stx.w	$a0, $a4, $a5
	ld.w	$a5, $a4, 0
	addi.w	$a6, $a5, 1
	st.w	$a6, $a4, 0
	slli.d	$a6, $a6, 3
	stx.w	$a0, $a4, $a6
	ld.w	$a6, $a4, 0
	alsl.d	$a5, $a5, $a4, 3
	st.w	$a2, $a5, 4
	addi.w	$a5, $a6, 1
	st.w	$a5, $a4, 0
	pcalau12i	$a7, %got_pc_hi20(rectang)
	ld.d	$a7, $a7, %got_pc_lo12(rectang)
	slli.d	$a5, $a5, 3
	stx.w	$a1, $a4, $a5
	ld.w	$a5, $a4, 0
	ld.d	$a7, $a7, 0
	alsl.d	$a6, $a6, $a4, 3
	st.w	$a3, $a6, 4
	addi.w	$a6, $a5, 1
	ld.w	$t0, $a7, 0
	st.w	$a6, $a4, 0
	slli.d	$a6, $a6, 3
	stx.w	$a1, $a4, $a6
	addi.w	$a6, $t0, 1
	st.w	$a6, $a7, 0
	slli.d	$a6, $a6, 4
	stx.w	$a0, $a7, $a6
	ld.w	$a0, $a4, 0
	alsl.d	$a5, $a5, $a4, 3
	ld.w	$a6, $a7, 0
	st.w	$a2, $a5, 4
	alsl.d	$a0, $a0, $a4, 3
	st.w	$a3, $a0, 4
	alsl.d	$a0, $a6, $a7, 4
	st.w	$a1, $a0, 4
	st.w	$a2, $a0, 8
	st.w	$a3, $a0, 12
	ret
.Lfunc_end10:
	.size	addPts, .Lfunc_end10-addPts
                                        # -- End function
	.globl	initPts                         # -- Begin function initPts
	.p2align	5
	.type	initPts,@function
initPts:                                # @initPts
# %bb.0:                                # %entry
	pcalau12i	$a0, %got_pc_hi20(PtsArray)
	ld.d	$a0, $a0, %got_pc_lo12(PtsArray)
	pcalau12i	$a1, %got_pc_hi20(PtsOut)
	ld.d	$a1, $a1, %got_pc_lo12(PtsOut)
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	move	$a2, $zero
	ori	$a3, $zero, 808
	.p2align	4, , 16
.LBB11_1:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	stx.d	$zero, $a0, $a2
	stx.w	$zero, $a1, $a2
	addi.d	$a2, $a2, 8
	bne	$a2, $a3, .LBB11_1
# %bb.2:                                # %for.cond9.preheader
	pcalau12i	$a0, %got_pc_hi20(rectang)
	ld.d	$a0, $a0, %got_pc_lo12(rectang)
	ld.d	$a0, $a0, 0
	ori	$a2, $zero, 416
	move	$a1, $zero
	pcaddu18i	$t8, %call36(memset)
	jr	$t8
.Lfunc_end11:
	.size	initPts, .Lfunc_end11-initPts
                                        # -- End function
	.globl	recCheck                        # -- Begin function recCheck
	.p2align	5
	.type	recCheck,@function
recCheck:                               # @recCheck
# %bb.0:                                # %entry
	pcalau12i	$a2, %got_pc_hi20(rectang)
	ld.d	$a2, $a2, %got_pc_lo12(rectang)
	ld.d	$a4, $a2, 0
	ld.w	$a5, $a4, 0
	ori	$a2, $zero, 1
	blt	$a5, $a2, .LBB12_12
# %bb.1:                                # %for.body.preheader
	pcalau12i	$a2, %got_pc_hi20(PtsArray)
	ld.d	$a2, $a2, %got_pc_lo12(PtsArray)
	ld.d	$a3, $a2, 0
	alsl.d	$a2, $a0, $a3, 3
	slli.d	$a0, $a0, 3
	ldx.w	$a0, $a3, $a0
	ld.w	$a2, $a2, 4
	alsl.d	$a6, $a1, $a3, 3
	slli.d	$a1, $a1, 3
	ldx.w	$a1, $a3, $a1
	ld.w	$a3, $a6, 4
	addi.d	$a5, $a5, 1
	bstrpick.d	$a5, $a5, 31, 0
	addi.d	$a4, $a4, 28
	addi.d	$a5, $a5, -1
	b	.LBB12_3
	.p2align	4, , 16
.LBB12_2:                               # %for.cond
                                        #   in Loop: Header=BB12_3 Depth=1
	addi.d	$a5, $a5, -1
	addi.d	$a4, $a4, 16
	beqz	$a5, .LBB12_12
.LBB12_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a4, -12
	blt	$a0, $a6, .LBB12_2
# %bb.4:                                # %for.body
                                        #   in Loop: Header=BB12_3 Depth=1
	ld.w	$a7, $a4, -8
	blt	$a7, $a0, .LBB12_2
# %bb.5:                                # %for.body
                                        #   in Loop: Header=BB12_3 Depth=1
	ld.w	$t0, $a4, -4
	blt	$a2, $t0, .LBB12_2
# %bb.6:                                # %for.body
                                        #   in Loop: Header=BB12_3 Depth=1
	ld.w	$t1, $a4, 0
	blt	$t1, $a2, .LBB12_2
# %bb.7:                                # %for.body
                                        #   in Loop: Header=BB12_3 Depth=1
	blt	$a1, $a6, .LBB12_2
# %bb.8:                                # %for.body
                                        #   in Loop: Header=BB12_3 Depth=1
	blt	$a7, $a1, .LBB12_2
# %bb.9:                                # %for.body
                                        #   in Loop: Header=BB12_3 Depth=1
	blt	$a3, $t0, .LBB12_2
# %bb.10:                               # %for.body
                                        #   in Loop: Header=BB12_3 Depth=1
	blt	$t1, $a3, .LBB12_2
# %bb.11:
	ori	$a0, $zero, 1
	ret
.LBB12_12:
	move	$a0, $zero
	ret
.Lfunc_end12:
	.size	recCheck, .Lfunc_end12-recCheck
                                        # -- End function
	.globl	dumpError                       # -- Begin function dumpError
	.p2align	5
	.type	dumpError,@function
dumpError:                              # @dumpError
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(PtsOut)
	ld.d	$s1, $a0, %got_pc_lo12(PtsOut)
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 0
	ori	$s0, $zero, 1
	blt	$a1, $s0, .LBB13_3
# %bb.1:                                # %for.body.preheader
	move	$s2, $zero
	move	$s3, $zero
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$fp, $a1, %pc_lo12(.L.str.6)
	.p2align	4, , 16
.LBB13_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a0, $a0, $s2
	ld.w	$a1, $a0, 8
	ld.w	$a2, $a0, 12
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 0
	addi.d	$s3, $s3, 1
	addi.d	$s2, $s2, 8
	blt	$s3, $a1, .LBB13_2
.LBB13_3:                               # %for.end
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(PtsArray)
	ld.d	$s1, $a0, %got_pc_lo12(PtsArray)
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 0
	blt	$a1, $s0, .LBB13_6
# %bb.4:                                # %for.body11.preheader
	move	$s0, $zero
	move	$s2, $zero
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$fp, $a1, %pc_lo12(.L.str.6)
	.p2align	4, , 16
.LBB13_5:                               # %for.body11
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a0, $a0, $s0
	ld.w	$a1, $a0, 8
	ld.w	$a2, $a0, 12
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 0
	addi.d	$s2, $s2, 1
	addi.d	$s0, $s0, 8
	blt	$s2, $a1, .LBB13_5
.LBB13_6:                               # %for.end21
	pcalau12i	$a0, %pc_hi20(.Lstr.3)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.3)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(rectang)
	ld.d	$s0, $a0, %got_pc_lo12(rectang)
	ld.d	$a0, $s0, 0
	ld.w	$a1, $a0, 0
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB13_9
# %bb.7:                                # %for.body26.preheader
	move	$s1, $zero
	move	$s2, $zero
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$fp, $a1, %pc_lo12(.L.str.9)
	.p2align	4, , 16
.LBB13_8:                               # %for.body26
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a0, $a0, $s1
	ld.w	$a1, $a0, 16
	ld.w	$a2, $a0, 20
	ld.w	$a3, $a0, 24
	ld.w	$a4, $a0, 28
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.w	$a1, $a0, 0
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 16
	blt	$s2, $a1, .LBB13_8
.LBB13_9:                               # %for.end39
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(fflush)
	jr	$t8
.Lfunc_end13:
	.size	dumpError, .Lfunc_end13-dumpError
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Serious error: could not advance upward "
	.size	.L.str, 41

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"from first vertex\n"
	.size	.L.str.1, 19

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Two points in outline not rectilinear "
	.size	.L.str.3, 39

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"and this constitutes death\n"
	.size	.L.str.4, 28

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"x:%d  y:%d\n"
	.size	.L.str.6, 12

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"l:%d  r:%d  b:%d  t:%d\n"
	.size	.L.str.9, 24

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"Fatal error in unbust.c"
	.size	.Lstr, 24

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"PtsOut:"
	.size	.Lstr.1, 8

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"PtsArray:"
	.size	.Lstr.2, 10

	.type	.Lstr.3,@object                 # @str.3
.Lstr.3:
	.asciz	"Rectangles:"
	.size	.Lstr.3, 12

	.section	".note.GNU-stack","",@progbits
	.addrsig
