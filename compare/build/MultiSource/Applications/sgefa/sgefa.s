	.file	"sgefa.c"
	.text
	.globl	sgefa                           # -- Begin function sgefa
	.p2align	5
	.type	sgefa,@function
sgefa:                                  # @sgefa
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 112                  # 8-byte Folded Spill
	ld.w	$s1, $a0, 0
	ld.w	$a2, $a0, 4
	bne	$s1, $a2, .LBB0_43
# %bb.1:                                # %if.end
	ori	$a2, $zero, 2
	addi.w	$fp, $s1, -1
	blt	$s1, $a2, .LBB0_44
# %bb.2:                                # %for.body.preheader
	move	$s5, $zero
	st.d	$zero, $sp, 56                  # 8-byte Folded Spill
	addi.d	$s6, $a0, 8
	addi.w	$s2, $s1, -2
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ori	$s3, $zero, 36
	ori	$s7, $zero, 4
	movgr2fr.w	$fs0, $zero
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	b	.LBB0_5
	.p2align	4, , 16
.LBB0_3:                                #   in Loop: Header=BB0_5 Depth=1
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
.LBB0_4:                                # %for.inc85
                                        #   in Loop: Header=BB0_5 Depth=1
	addi.d	$a1, $a1, 4
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	addi.d	$s5, $s5, 1
	addi.d	$s3, $s3, 4
	addi.w	$s2, $s2, -1
	addi.d	$s7, $s7, 4
	beq	$a2, $fp, .LBB0_45
.LBB0_5:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_18 Depth 2
                                        #     Child Loop BB0_22 Depth 2
                                        #     Child Loop BB0_25 Depth 2
                                        #       Child Loop BB0_36 Depth 3
                                        #       Child Loop BB0_40 Depth 3
                                        #       Child Loop BB0_32 Depth 3
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	slli.d	$s0, $s5, 3
	ldx.d	$s4, $s6, $s0
	alsl.d	$s8, $s5, $s4, 2
	sub.w	$a0, $s1, $s5
	ori	$a2, $zero, 1
	move	$a1, $s8
	pcaddu18i	$ra, %call36(isamax)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.d	$a2, $s6, $s0
	add.w	$a3, $a0, $s5
	slli.d	$ra, $a3, 2
	fldx.s	$fa0, $a2, $ra
	fcmp.cune.s	$fcc0, $fa0, $fs0
	st.w	$a3, $a1, 0
	bcnez	$fcc0, .LBB0_7
# %bb.6:                                # %for.body.for.inc85_crit_edge
                                        #   in Loop: Header=BB0_5 Depth=1
	addi.d	$a2, $s5, 1
	st.d	$s5, $sp, 56                    # 8-byte Folded Spill
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_7:                                # %if.end17
                                        #   in Loop: Header=BB0_5 Depth=1
	fld.s	$fa1, $s8, 0
	beqz	$a0, .LBB0_9
# %bb.8:                                # %if.then20
                                        #   in Loop: Header=BB0_5 Depth=1
	alsl.d	$a2, $a3, $a2, 2
	fst.s	$fa1, $a2, 0
	fst.s	$fa0, $s8, 0
	b	.LBB0_10
.LBB0_9:                                #   in Loop: Header=BB0_5 Depth=1
	fmov.s	$fa0, $fa1
.LBB0_10:                               # %iter.check127
                                        #   in Loop: Header=BB0_5 Depth=1
	ori	$s0, $zero, 3
	bstrpick.d	$a2, $s2, 31, 0
	addi.d	$a2, $a2, 1
	bstrpick.d	$a3, $a2, 32, 2
	slli.d	$a7, $a3, 2
	bstrpick.d	$a2, $a2, 32, 4
	slli.d	$a2, $a2, 4
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	sub.w	$a4, $a2, $s5
	bstrpick.d	$t1, $a4, 31, 0
	addi.d	$a5, $t1, 1
	addi.d	$a2, $s5, 1
	st.d	$s8, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a6, $s8, 4
	vldi	$vr1, -1040
	fdiv.s	$fa0, $fa1, $fa0
	move	$t0, $a6
	move	$t3, $a2
	ori	$a3, $zero, 2
	bgeu	$a3, $a4, .LBB0_21
# %bb.11:                               # %vector.main.loop.iter.check129
                                        #   in Loop: Header=BB0_5 Depth=1
	ori	$a3, $zero, 15
	bgeu	$a4, $a3, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_5 Depth=1
	move	$t2, $zero
	b	.LBB0_17
.LBB0_13:                               # %vector.ph130
                                        #   in Loop: Header=BB0_5 Depth=1
	bstrpick.d	$a3, $a5, 32, 4
	slli.d	$t2, $a3, 4
	xvreplve0.w	$xr1, $xr0
	add.d	$a3, $s4, $s3
	ld.d	$t0, $sp, 72                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_14:                               # %vector.body135
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr2, $a3, -32
	xvld	$xr3, $a3, 0
	xvfmul.s	$xr2, $xr1, $xr2
	xvfmul.s	$xr3, $xr1, $xr3
	xvst	$xr2, $a3, -32
	xvst	$xr3, $a3, 0
	addi.d	$t0, $t0, -16
	addi.d	$a3, $a3, 64
	bnez	$t0, .LBB0_14
# %bb.15:                               # %middle.block141
                                        #   in Loop: Header=BB0_5 Depth=1
	beq	$a5, $t2, .LBB0_23
# %bb.16:                               # %vec.epilog.iter.check146
                                        #   in Loop: Header=BB0_5 Depth=1
	andi	$a3, $a5, 12
	beqz	$a3, .LBB0_20
.LBB0_17:                               # %vec.epilog.ph145
                                        #   in Loop: Header=BB0_5 Depth=1
	bstrpick.d	$a3, $a5, 32, 2
	slli.d	$t4, $a3, 2
	alsl.d	$t0, $a3, $a6, 4
	alsl.w	$t3, $a3, $a2, 2
	vreplvei.w	$vr1, $vr0, 0
	alsl.d	$a3, $t2, $s7, 2
	add.d	$a3, $s4, $a3
	sub.d	$t2, $t2, $a7
	.p2align	4, , 16
.LBB0_18:                               # %vec.epilog.vector.body154
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $a3, 0
	vfmul.s	$vr2, $vr1, $vr2
	vst	$vr2, $a3, 0
	addi.d	$t2, $t2, 4
	addi.d	$a3, $a3, 16
	bnez	$t2, .LBB0_18
# %bb.19:                               # %vec.epilog.middle.block160
                                        #   in Loop: Header=BB0_5 Depth=1
	bne	$a5, $t4, .LBB0_21
	b	.LBB0_23
.LBB0_20:                               #   in Loop: Header=BB0_5 Depth=1
	alsl.d	$t0, $t2, $a6, 2
	add.d	$t3, $a2, $t2
	.p2align	4, , 16
.LBB0_21:                               # %for.body29.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	sub.d	$a3, $s1, $t3
	.p2align	4, , 16
.LBB0_22:                               # %for.body29
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa1, $t0, 0
	fmul.s	$fa1, $fa0, $fa1
	fst.s	$fa1, $t0, 0
	addi.w	$a3, $a3, -1
	addi.d	$t0, $t0, 4
	bnez	$a3, .LBB0_22
.LBB0_23:                               # %for.body34.us.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	sub.d	$a3, $zero, $a7
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	slli.d	$t0, $s5, 2
	alsl.d	$a3, $t1, $t0, 2
	addi.d	$t1, $a3, 8
	add.d	$t2, $s4, $t1
	bstrpick.d	$a3, $a5, 32, 4
	slli.d	$t3, $a3, 4
	slli.d	$a7, $a3, 6
	st.d	$a7, $sp, 40                    # 8-byte Folded Spill
	add.d	$a7, $a6, $a7
	st.d	$a7, $sp, 32                    # 8-byte Folded Spill
	alsl.w	$a3, $a3, $a2, 4
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	andi	$a3, $a5, 12
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	bstrpick.d	$a3, $a5, 32, 2
	slli.d	$a7, $a3, 2
	st.d	$a7, $sp, 80                    # 8-byte Folded Spill
	slli.d	$a1, $a3, 4
	alsl.d	$t5, $a3, $a6, 4
	alsl.w	$t6, $a3, $a2, 2
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	b	.LBB0_25
	.p2align	4, , 16
.LBB0_24:                               # %for.cond72.for.inc82_crit_edge.us
                                        #   in Loop: Header=BB0_25 Depth=2
	addi.d	$s8, $s8, 1
	beq	$s8, $s1, .LBB0_3
.LBB0_25:                               # %for.body34.us
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_36 Depth 3
                                        #       Child Loop BB0_40 Depth 3
                                        #       Child Loop BB0_32 Depth 3
	slli.d	$a3, $s8, 3
	ldx.d	$a7, $s6, $a3
	fldx.s	$fa0, $a7, $t0
	alsl.d	$t4, $s5, $a7, 2
	beqz	$a0, .LBB0_27
# %bb.26:                               # %if.then42.us
                                        #   in Loop: Header=BB0_25 Depth=2
	fldx.s	$fa1, $a7, $ra
	fst.s	$fa1, $t4, 0
	fstx.s	$fa0, $a7, $ra
	fmov.s	$fa0, $fa1
.LBB0_27:                               # %iter.check
                                        #   in Loop: Header=BB0_25 Depth=2
	bltu	$a4, $s0, .LBB0_30
# %bb.28:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_25 Depth=2
	add.d	$a3, $a7, $t0
	addi.d	$a3, $a3, 4
	bgeu	$a3, $t2, .LBB0_33
# %bb.29:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_25 Depth=2
	add.d	$a3, $a7, $t1
	bgeu	$a6, $a3, .LBB0_33
.LBB0_30:                               #   in Loop: Header=BB0_25 Depth=2
	move	$t7, $a6
	move	$a7, $a2
.LBB0_31:                               # %for.body75.us.preheader
                                        #   in Loop: Header=BB0_25 Depth=2
	addi.d	$a3, $t4, 4
	sub.d	$a7, $s1, $a7
	.p2align	4, , 16
.LBB0_32:                               # %for.body75.us
                                        #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.s	$fa1, $t7, 0
	fld.s	$fa2, $a3, 0
	fmadd.s	$fa1, $fa0, $fa1, $fa2
	fst.s	$fa1, $a3, 0
	addi.d	$t7, $t7, 4
	addi.w	$a7, $a7, -1
	addi.d	$a3, $a3, 4
	bnez	$a7, .LBB0_32
	b	.LBB0_24
	.p2align	4, , 16
.LBB0_33:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB0_25 Depth=2
	ori	$a3, $zero, 15
	bgeu	$a4, $a3, .LBB0_35
# %bb.34:                               #   in Loop: Header=BB0_25 Depth=2
	move	$t7, $zero
	b	.LBB0_39
.LBB0_35:                               # %vector.ph
                                        #   in Loop: Header=BB0_25 Depth=2
	xvreplve0.w	$xr1, $xr0
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	move	$s0, $s4
	move	$t7, $a7
	.p2align	4, , 16
.LBB0_36:                               # %vector.body
                                        #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvldx	$xr2, $s0, $s7
	xvldx	$xr3, $s0, $s3
	xvldx	$xr4, $t7, $s7
	xvldx	$xr5, $t7, $s3
	xvfmadd.s	$xr2, $xr1, $xr2, $xr4
	xvfmadd.s	$xr3, $xr1, $xr3, $xr5
	xvstx	$xr2, $t7, $s7
	xvstx	$xr3, $t7, $s3
	addi.d	$t7, $t7, 64
	addi.d	$a3, $a3, -16
	addi.d	$s0, $s0, 64
	bnez	$a3, .LBB0_36
# %bb.37:                               # %middle.block
                                        #   in Loop: Header=BB0_25 Depth=2
	ori	$s0, $zero, 3
	beq	$a5, $t3, .LBB0_24
# %bb.38:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB0_25 Depth=2
	move	$t7, $t3
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	beqz	$a3, .LBB0_42
.LBB0_39:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB0_25 Depth=2
	add.d	$t4, $t4, $a1
	vreplvei.w	$vr1, $vr0, 0
	alsl.d	$a3, $t7, $a7, 2
	alsl.d	$a7, $t7, $s4, 2
	ld.d	$t8, $sp, 88                    # 8-byte Folded Reload
	add.d	$t7, $t8, $t7
	.p2align	4, , 16
.LBB0_40:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vldx	$vr2, $a7, $s7
	vldx	$vr3, $a3, $s7
	vfmadd.s	$vr2, $vr1, $vr2, $vr3
	vstx	$vr2, $a3, $s7
	addi.d	$a3, $a3, 16
	addi.d	$t7, $t7, 4
	addi.d	$a7, $a7, 16
	bnez	$t7, .LBB0_40
# %bb.41:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB0_25 Depth=2
	move	$t7, $t5
	move	$a7, $t6
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	beq	$a5, $a3, .LBB0_24
	b	.LBB0_31
.LBB0_42:                               #   in Loop: Header=BB0_25 Depth=2
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	add.d	$t4, $t4, $a3
	ld.d	$t7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 24                    # 8-byte Folded Reload
	b	.LBB0_31
.LBB0_43:
	addi.d	$a0, $zero, -1
	b	.LBB0_46
.LBB0_44:
	ld.d	$s8, $a0, 8
	st.d	$zero, $sp, 56                  # 8-byte Folded Spill
.LBB0_45:                               # %CLEAN_UP
	fld.s	$fa0, $s8, 0
	movgr2fr.w	$fa1, $zero
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	st.w	$fp, $a1, 0
	movcf2gr	$a0, $fcc0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s1, $a0
	or	$a0, $a0, $a1
.LBB0_46:                               # %cleanup
	addi.w	$a0, $a0, 0
	fld.d	$fs0, $sp, 112                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.Lfunc_end0:
	.size	sgefa, .Lfunc_end0-sgefa
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
