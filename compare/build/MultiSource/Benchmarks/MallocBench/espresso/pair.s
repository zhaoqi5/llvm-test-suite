	.file	"pair.c"
	.text
	.globl	set_pair                        # -- Begin function set_pair
	.p2align	5
	.type	set_pair,@function
set_pair:                               # @set_pair
# %bb.0:                                # %entry
	ori	$a1, $zero, 1
	pcaddu18i	$t8, %call36(set_pair1)
	jr	$t8
.Lfunc_end0:
	.size	set_pair, .Lfunc_end0-set_pair
                                        # -- End function
	.globl	set_pair1                       # -- Begin function set_pair1
	.p2align	5
	.type	set_pair1,@function
set_pair1:                              # @set_pair1
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -1152
	st.d	$ra, $sp, 1144                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1136                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1128                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1120                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1112                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1104                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1096                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1088                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1080                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1072                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1064                  # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$s8, $a0, 48
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	beqz	$a1, .LBB1_2
# %bb.1:                                # %if.then
	move	$a0, $fp
	pcaddu18i	$ra, %call36(makeup_labels)
	jirl	$ra, $ra, 0
.LBB1_2:                                # %if.end
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s7, $a0, %got_pc_lo12(cube)
	ld.w	$s0, $s7, 8
	slli.d	$s3, $s0, 2
	move	$a0, $s3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ori	$fp, $zero, 1
	move	$s6, $a0
	blt	$s0, $fp, .LBB1_4
# %bb.3:                                # %for.body.preheader
	move	$a0, $s6
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB1_4:                                # %for.cond4.preheader
	ld.w	$a0, $s8, 0
	blt	$a0, $fp, .LBB1_12
# %bb.5:                                # %for.body7.lr.ph
	move	$fp, $zero
	move	$s0, $zero
	ori	$s1, $zero, 1
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$s3, $a1, %pc_lo12(.L.str)
	b	.LBB1_7
	.p2align	4, , 16
.LBB1_6:                                # %if.else
                                        #   in Loop: Header=BB1_7 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(fatal)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 0
	addi.d	$s0, $s0, 1
	addi.d	$fp, $fp, 4
	bge	$s0, $a0, .LBB1_12
.LBB1_7:                                # %for.body7
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s8, 8
	ldx.w	$a1, $a1, $fp
	blt	$a1, $s1, .LBB1_6
# %bb.8:                                # %land.lhs.true
                                        #   in Loop: Header=BB1_7 Depth=1
	ld.w	$a2, $s7, 8
	blt	$a2, $a1, .LBB1_6
# %bb.9:                                # %land.lhs.true18
                                        #   in Loop: Header=BB1_7 Depth=1
	ld.d	$a3, $s8, 16
	ldx.w	$a3, $a3, $fp
	blt	$a3, $s1, .LBB1_6
# %bb.10:                               # %land.lhs.true18
                                        #   in Loop: Header=BB1_7 Depth=1
	blt	$a2, $a3, .LBB1_6
# %bb.11:                               # %if.then30
                                        #   in Loop: Header=BB1_7 Depth=1
	alsl.d	$a1, $a1, $s6, 2
	st.w	$s1, $a1, -4
	alsl.d	$a1, $a3, $s6, 2
	st.w	$s1, $a1, -4
	addi.d	$s0, $s0, 1
	addi.d	$fp, $fp, 4
	blt	$s0, $a0, .LBB1_7
.LBB1_12:                               # %for.end45
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $fp, 0
	move	$a1, $s8
	pcaddu18i	$ra, %call36(pairvar)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s7, 8
	ori	$s0, $zero, 1
	blt	$a1, $s0, .LBB1_26
# %bb.13:                               # %for.body.i.preheader
	move	$s1, $zero
	move	$s2, $zero
	move	$fp, $zero
	move	$s3, $zero
	move	$a2, $zero
                                        # implicit-def: $r27
	b	.LBB1_17
	.p2align	4, , 16
.LBB1_14:                               # %if.else.i
                                        #   in Loop: Header=BB1_17 Depth=1
	ld.d	$a2, $s7, 16
	ld.d	$a3, $s7, 32
	ldx.w	$s4, $a2, $s1
	ldx.w	$s3, $a3, $s1
.LBB1_15:                               # %for.inc.i
                                        #   in Loop: Header=BB1_17 Depth=1
	ori	$a2, $zero, 1
.LBB1_16:                               # %for.inc.i
                                        #   in Loop: Header=BB1_17 Depth=1
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 4
	bge	$s2, $a1, .LBB1_23
.LBB1_17:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$s5, $s6, $s1
	beqz	$s5, .LBB1_20
# %bb.18:                               # %if.then.i
                                        #   in Loop: Header=BB1_17 Depth=1
	beqz	$a2, .LBB1_14
# %bb.19:                               # %if.then2.i
                                        #   in Loop: Header=BB1_17 Depth=1
	ld.d	$a2, $s7, 32
	ldx.w	$a2, $a2, $s1
	add.w	$s3, $a2, $s3
	b	.LBB1_15
	.p2align	4, , 16
.LBB1_20:                               # %if.else9.i
                                        #   in Loop: Header=BB1_17 Depth=1
	bnez	$a2, .LBB1_22
# %bb.21:                               #   in Loop: Header=BB1_17 Depth=1
	move	$a2, $zero
	b	.LBB1_16
.LBB1_22:                               # %if.then11.i
                                        #   in Loop: Header=BB1_17 Depth=1
	sub.w	$a1, $s4, $fp
	move	$a2, $s3
	pcaddu18i	$ra, %call36(sf_delcol)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s7, 8
	move	$a2, $zero
	add.d	$fp, $s3, $fp
	b	.LBB1_16
.LBB1_23:                               # %for.end.i
	beqz	$s5, .LBB1_25
# %bb.24:                               # %if.then16.i
	sub.w	$a1, $s4, $fp
	move	$a2, $s3
	pcaddu18i	$ra, %call36(sf_delcol)
	jirl	$ra, $ra, 0
.LBB1_25:                               # %delvar.exit
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
.LBB1_26:                               # %delvar.exit
	ld.d	$a1, $fp, 16
	st.d	$a0, $fp, 0
	move	$a0, $a1
	move	$a1, $s8
	pcaddu18i	$ra, %call36(pairvar)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s7, 8
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	blt	$a1, $s0, .LBB1_40
# %bb.27:                               # %for.body.i142.preheader
	move	$s0, $zero
	move	$s1, $zero
	move	$fp, $zero
	move	$s3, $zero
	move	$a2, $zero
                                        # implicit-def: $r25
	b	.LBB1_31
	.p2align	4, , 16
.LBB1_28:                               # %if.else.i168
                                        #   in Loop: Header=BB1_31 Depth=1
	ld.d	$a2, $s7, 16
	ld.d	$a3, $s7, 32
	ldx.w	$s2, $a2, $s0
	ldx.w	$s3, $a3, $s0
.LBB1_29:                               # %for.inc.i156
                                        #   in Loop: Header=BB1_31 Depth=1
	ori	$a2, $zero, 1
.LBB1_30:                               # %for.inc.i156
                                        #   in Loop: Header=BB1_31 Depth=1
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 4
	bge	$s1, $a1, .LBB1_37
.LBB1_31:                               # %for.body.i142
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$s4, $s6, $s0
	beqz	$s4, .LBB1_34
# %bb.32:                               # %if.then.i152
                                        #   in Loop: Header=BB1_31 Depth=1
	beqz	$a2, .LBB1_28
# %bb.33:                               # %if.then2.i153
                                        #   in Loop: Header=BB1_31 Depth=1
	ld.d	$a2, $s7, 32
	ldx.w	$a2, $a2, $s0
	add.w	$s3, $a2, $s3
	b	.LBB1_29
	.p2align	4, , 16
.LBB1_34:                               # %if.else9.i171
                                        #   in Loop: Header=BB1_31 Depth=1
	bnez	$a2, .LBB1_36
# %bb.35:                               #   in Loop: Header=BB1_31 Depth=1
	move	$a2, $zero
	b	.LBB1_30
.LBB1_36:                               # %if.then11.i172
                                        #   in Loop: Header=BB1_31 Depth=1
	sub.w	$a1, $s2, $fp
	move	$a2, $s3
	pcaddu18i	$ra, %call36(sf_delcol)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s7, 8
	move	$a2, $zero
	add.d	$fp, $s3, $fp
	b	.LBB1_30
.LBB1_37:                               # %for.end.i164
	beqz	$s4, .LBB1_39
# %bb.38:                               # %if.then16.i165
	sub.w	$a1, $s2, $fp
	move	$a2, $s3
	pcaddu18i	$ra, %call36(sf_delcol)
	jirl	$ra, $ra, 0
.LBB1_39:                               # %delvar.exit177
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
.LBB1_40:                               # %delvar.exit177
	ld.d	$a1, $fp, 8
	st.d	$a0, $fp, 16
	move	$a0, $a1
	move	$a1, $s8
	pcaddu18i	$ra, %call36(pairvar)
	jirl	$ra, $ra, 0
	ld.w	$s0, $s7, 8
	ori	$s1, $zero, 1
	blt	$s0, $s1, .LBB1_54
# %bb.41:                               # %for.body.i180.preheader
	move	$s2, $zero
	move	$s4, $zero
	move	$fp, $zero
	move	$s3, $zero
	move	$a1, $zero
                                        # implicit-def: $r28
	b	.LBB1_45
	.p2align	4, , 16
.LBB1_42:                               # %if.else.i206
                                        #   in Loop: Header=BB1_45 Depth=1
	ld.d	$a1, $s7, 16
	ld.d	$a2, $s7, 32
	ldx.w	$s5, $a1, $s2
	ldx.w	$s3, $a2, $s2
.LBB1_43:                               # %for.inc.i194
                                        #   in Loop: Header=BB1_45 Depth=1
	ori	$a1, $zero, 1
.LBB1_44:                               # %for.inc.i194
                                        #   in Loop: Header=BB1_45 Depth=1
	addi.d	$s4, $s4, 1
	addi.d	$s2, $s2, 4
	bge	$s4, $s0, .LBB1_51
.LBB1_45:                               # %for.body.i180
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ldx.w	$s6, $a2, $s2
	beqz	$s6, .LBB1_48
# %bb.46:                               # %if.then.i190
                                        #   in Loop: Header=BB1_45 Depth=1
	beqz	$a1, .LBB1_42
# %bb.47:                               # %if.then2.i191
                                        #   in Loop: Header=BB1_45 Depth=1
	ld.d	$a1, $s7, 32
	ldx.w	$a1, $a1, $s2
	add.w	$s3, $a1, $s3
	b	.LBB1_43
	.p2align	4, , 16
.LBB1_48:                               # %if.else9.i209
                                        #   in Loop: Header=BB1_45 Depth=1
	bnez	$a1, .LBB1_50
# %bb.49:                               #   in Loop: Header=BB1_45 Depth=1
	move	$a1, $zero
	b	.LBB1_44
.LBB1_50:                               # %if.then11.i210
                                        #   in Loop: Header=BB1_45 Depth=1
	sub.w	$a1, $s5, $fp
	move	$a2, $s3
	pcaddu18i	$ra, %call36(sf_delcol)
	jirl	$ra, $ra, 0
	ld.w	$s0, $s7, 8
	move	$a1, $zero
	add.d	$fp, $s3, $fp
	b	.LBB1_44
.LBB1_51:                               # %for.end.i202
	beqz	$s6, .LBB1_53
# %bb.52:                               # %if.then16.i203
	sub.w	$a1, $s5, $fp
	move	$a2, $s3
	pcaddu18i	$ra, %call36(sf_delcol)
	jirl	$ra, $ra, 0
	ld.w	$s0, $s7, 8
.LBB1_53:                               # %delvar.exit215
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
.LBB1_54:                               # %delvar.exit215
	ld.w	$a1, $s7, 4
	ld.d	$a2, $s7, 16
	st.d	$a0, $fp, 8
	slli.d	$s6, $s0, 2
	blt	$s0, $s1, .LBB1_57
# %bb.55:                               # %for.body60.preheader
	ori	$a0, $zero, 8
	bgeu	$s0, $a0, .LBB1_58
# %bb.56:
	move	$a0, $zero
	move	$s4, $zero
	b	.LBB1_61
.LBB1_57:
	move	$s4, $zero
	b	.LBB1_63
.LBB1_58:                               # %vector.ph
	bstrpick.d	$a0, $s0, 30, 3
	slli.d	$a0, $a0, 3
	vrepli.b	$vr0, 0
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	addi.d	$a3, $a3, 16
	move	$a4, $a0
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB1_59:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a3, -16
	vld	$vr3, $a3, 0
	vseqi.w	$vr2, $vr2, 0
	vseqi.w	$vr3, $vr3, 0
	vsub.w	$vr0, $vr0, $vr2
	vsub.w	$vr1, $vr1, $vr3
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB1_59
# %bb.60:                               # %middle.block
	vadd.w	$vr0, $vr1, $vr0
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$s4, $vr0, 0
	beq	$a0, $s0, .LBB1_63
.LBB1_61:                               # %for.body60.preheader369
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	alsl.d	$a3, $a0, $a3, 2
	sub.d	$a0, $s0, $a0
	.p2align	4, , 16
.LBB1_62:                               # %for.body60
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a3, 0
	sltui	$a4, $a4, 1
	add.w	$s4, $s4, $a4
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 4
	bnez	$a0, .LBB1_62
.LBB1_63:                               # %for.end67
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	ld.w	$s1, $s7, 0
	ld.w	$s2, $s8, 0
	ldx.w	$a0, $a2, $s6
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	sub.w	$s7, $a1, $s0
	add.d	$a0, $s4, $s7
	add.w	$s5, $a0, $s2
	slli.d	$a0, $s5, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$s3, $a0
	blt	$s2, $a1, .LBB1_77
# %bb.64:                               # %iter.check
	ori	$a0, $zero, 3
	bstrpick.d	$a2, $s4, 31, 0
	bltu	$a0, $s2, .LBB1_66
# %bb.65:
	move	$a0, $zero
	b	.LBB1_75
.LBB1_66:                               # %vector.main.loop.iter.check
	ori	$a0, $zero, 16
	bgeu	$s2, $a0, .LBB1_68
# %bb.67:
	move	$a0, $zero
	b	.LBB1_72
.LBB1_68:                               # %vector.ph302
	bstrpick.d	$a0, $s2, 30, 4
	slli.d	$a0, $a0, 4
	alsl.d	$a3, $a2, $s3, 2
	addi.d	$a3, $a3, 32
	xvrepli.w	$xr0, 4
	move	$a4, $a0
	.p2align	4, , 16
.LBB1_69:                               # %vector.body305
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	addi.d	$a4, $a4, -16
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB1_69
# %bb.70:                               # %middle.block308
	beq	$a0, $s2, .LBB1_77
# %bb.71:                               # %vec.epilog.iter.check
	andi	$a3, $s2, 12
	beqz	$a3, .LBB1_75
.LBB1_72:                               # %vec.epilog.ph
	move	$a4, $a0
	bstrpick.d	$a0, $s2, 30, 2
	slli.d	$a0, $a0, 2
	sub.d	$a3, $a4, $a0
	slli.d	$a4, $a4, 2
	alsl.d	$a4, $a2, $a4, 2
	add.d	$a4, $s3, $a4
	vrepli.w	$vr0, 4
	.p2align	4, , 16
.LBB1_73:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a4, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 16
	bnez	$a3, .LBB1_73
# %bb.74:                               # %vec.epilog.middle.block
	beq	$a0, $s2, .LBB1_77
.LBB1_75:                               # %for.body79.preheader
	slli.d	$a3, $a0, 2
	alsl.d	$a2, $a2, $a3, 2
	add.d	$a2, $s3, $a2
	ori	$a3, $zero, 4
	.p2align	4, , 16
.LBB1_76:                               # %for.body79
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a3, $a2, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 4
	bltu	$a0, $s2, .LBB1_76
.LBB1_77:                               # %for.cond86.preheader
	blt	$s7, $a1, .LBB1_82
# %bb.78:                               # %iter.check320
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 32
	ori	$a2, $zero, 3
	add.w	$a1, $s4, $s2
	bltu	$a2, $s7, .LBB1_102
.LBB1_79:
	move	$a2, $zero
.LBB1_80:                               # %for.body90.preheader
	slli.d	$a3, $a2, 2
	alsl.d	$a3, $s0, $a3, 2
	add.d	$a0, $a0, $a3
	add.w	$a1, $a1, $a2
	sub.d	$a2, $s7, $a2
	.p2align	4, , 16
.LBB1_81:                               # %for.body90
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a0, 0
	slli.d	$a4, $a1, 2
	stx.w	$a3, $s3, $a4
	addi.d	$a0, $a0, 4
	addi.d	$a2, $a2, -1
	addi.w	$a1, $a1, 1
	bnez	$a2, .LBB1_81
.LBB1_82:                               # %for.end101
	pcaddu18i	$ra, %call36(setdown_cube)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $s6, 32
	beqz	$a0, .LBB1_84
# %bb.83:                               # %if.then103
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_84:                               # %if.end104
	st.w	$s5, $s6, 4
	st.w	$s4, $s6, 8
	st.d	$s3, $s6, 32
	pcaddu18i	$ra, %call36(cube_setup)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	beqz	$a0, .LBB1_109
# %bb.85:                               # %if.then106
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a0, $s6, 0
	ld.d	$s1, $fp, 56
	slli.d	$a0, $a0, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s2, $s8
	ld.w	$a2, $s8, 0
	move	$a1, $a0
	ori	$a0, $zero, 1
	st.d	$a1, $fp, 56
	blt	$a2, $a0, .LBB1_88
# %bb.86:                               # %for.body115.lr.ph
	move	$s0, $fp
	move	$fp, $zero
	move	$s8, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s3, $a0, %pc_lo12(.L.str.1)
	st.d	$s1, $sp, 40                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB1_87:                               # %for.body115
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 8
	ldx.w	$a0, $a0, $fp
	ld.d	$a1, $s2, 16
	ld.w	$a2, $s6, 8
	addi.d	$a4, $zero, -2
	alsl.w	$a3, $a0, $a4, 1
	ldx.w	$a1, $a1, $fp
	addi.d	$a5, $zero, -1
	alsl.w	$a0, $a0, $a5, 1
	slli.d	$a0, $a0, 3
	ldx.d	$s4, $s1, $a0
	alsl.w	$a0, $a1, $a4, 1
	alsl.w	$a1, $a1, $a5, 1
	slli.d	$a1, $a1, 3
	ldx.d	$s5, $s1, $a1
	slli.d	$a1, $a3, 3
	ldx.d	$s6, $s1, $a1
	slli.d	$a0, $a0, 3
	ldx.d	$s7, $s1, $a0
	slli.w	$a0, $a2, 1
	add.d	$s1, $fp, $a0
	addi.d	$a0, $sp, 64
	move	$a1, $s3
	move	$a2, $s6
	move	$a3, $s7
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(util_strsav)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 56
	slli.d	$a2, $s1, 3
	stx.d	$a0, $a1, $a2
	addi.d	$a0, $sp, 64
	move	$a1, $s3
	move	$a2, $s6
	move	$a3, $s5
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(util_strsav)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 56
	alsl.d	$a1, $s1, $a1, 3
	st.d	$a0, $a1, 8
	addi.d	$a0, $sp, 64
	move	$a1, $s3
	move	$a2, $s4
	move	$a3, $s7
	ld.d	$s6, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(util_strsav)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 56
	alsl.d	$a1, $s1, $a1, 3
	st.d	$a0, $a1, 16
	addi.d	$a0, $sp, 64
	move	$a1, $s3
	move	$a2, $s4
	move	$a3, $s5
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(util_strsav)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 56
	ld.w	$a2, $s2, 0
	alsl.d	$a3, $s1, $a1, 3
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $a3, 24
	addi.d	$s8, $s8, 1
	addi.d	$fp, $fp, 4
	blt	$s8, $a2, .LBB1_87
.LBB1_88:                               # %for.cond182.preheader
	move	$s8, $s2
	ld.d	$t0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 32                    # 8-byte Folded Reload
	ori	$a0, $zero, 1
	blt	$t0, $a0, .LBB1_93
# %bb.89:                               # %for.body185.preheader
	move	$a0, $zero
	vrepli.b	$vr0, 0
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	move	$a4, $s1
	b	.LBB1_91
	.p2align	4, , 16
.LBB1_90:                               # %for.inc216
                                        #   in Loop: Header=BB1_91 Depth=1
	addi.d	$a4, $a4, 16
	addi.d	$t0, $t0, -1
	addi.d	$a3, $a3, 4
	beqz	$t0, .LBB1_93
.LBB1_91:                               # %for.body185
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a3, 0
	bnez	$a5, .LBB1_90
# %bb.92:                               # %if.then190
                                        #   in Loop: Header=BB1_91 Depth=1
	ld.d	$a5, $a4, 0
	slli.w	$a6, $a0, 1
	slli.d	$a7, $a6, 3
	stx.d	$a5, $a1, $a7
	ld.d	$a5, $a4, 8
	alsl.d	$a6, $a6, $a1, 3
	st.d	$a5, $a6, 8
	addi.d	$a0, $a0, 1
	vst	$vr0, $a4, 0
	b	.LBB1_90
.LBB1_93:                               # %for.end218
	bge	$t2, $s0, .LBB1_97
# %bb.94:                               # %for.body226.lr.ph
	ld.w	$a0, $s6, 8
	slli.d	$a3, $a2, 2
	slli.d	$a0, $a0, 1
	sub.d	$a2, $s0, $t2
	ori	$a4, $zero, 20
	add.w	$a0, $a3, $a0
	move	$a3, $t2
	bgeu	$a2, $a4, .LBB1_115
.LBB1_95:                               # %for.body226.preheader
	alsl.d	$a2, $a3, $s1, 3
	add.d	$a0, $a0, $a3
	sub.w	$a0, $a0, $t2
	sub.d	$a3, $s0, $a3
	.p2align	4, , 16
.LBB1_96:                               # %for.body226
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 0
	slli.d	$a5, $a0, 3
	stx.d	$a4, $a1, $a5
	st.d	$zero, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, -1
	addi.w	$a0, $a0, 1
	bnez	$a3, .LBB1_96
.LBB1_97:                               # %for.cond239.preheader
	ori	$a0, $zero, 1
	blt	$s0, $a0, .LBB1_107
# %bb.98:
	move	$fp, $s1
	b	.LBB1_100
	.p2align	4, , 16
.LBB1_99:                               # %for.inc258
                                        #   in Loop: Header=BB1_100 Depth=1
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	beqz	$s0, .LBB1_108
.LBB1_100:                              # %for.body242
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB1_99
# %bb.101:                              # %if.then251
                                        #   in Loop: Header=BB1_100 Depth=1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 0
	b	.LBB1_99
.LBB1_102:                              # %vector.scevcheck
	addi.d	$a3, $s7, -1
	add.w	$a4, $a1, $a3
	move	$a2, $zero
	blt	$a4, $a1, .LBB1_80
# %bb.103:                              # %vector.scevcheck
	srli.d	$a3, $a3, 32
	bnez	$a3, .LBB1_80
# %bb.104:                              # %vector.memcheck
	alsl.d	$a2, $a1, $s3, 2
	alsl.d	$a3, $s0, $a0, 2
	sub.d	$a2, $a2, $a3
	ori	$a3, $zero, 64
	bltu	$a2, $a3, .LBB1_79
# %bb.105:                              # %vector.main.loop.iter.check322
	ori	$a2, $zero, 16
	bgeu	$s7, $a2, .LBB1_122
# %bb.106:
	move	$a2, $zero
	b	.LBB1_126
.LBB1_107:                              # %for.end260
	beqz	$s1, .LBB1_109
.LBB1_108:                              # %if.then262
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_109:                              # %if.end264
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB1_112
# %bb.110:                              # %for.body269.lr.ph
	ld.d	$a0, $s6, 112
	move	$a1, $zero
	move	$a2, $zero
	.p2align	4, , 16
.LBB1_111:                              # %for.body269
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $s6, 8
	add.d	$a3, $a1, $a3
	slli.d	$a3, $a3, 2
	stx.w	$zero, $a0, $a3
	ld.w	$a3, $s8, 0
	addi.w	$a2, $a2, 1
	addi.d	$a1, $a1, 1
	blt	$a2, $a3, .LBB1_111
.LBB1_112:                              # %for.end275
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	beqz	$a0, .LBB1_114
# %bb.113:                              # %if.then277
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_114:                              # %if.end278
	ld.d	$s8, $sp, 1064                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1072                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1080                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1088                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1096                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1104                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1112                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1120                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1128                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1136                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1144                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1152
	ret
.LBB1_115:                              # %vector.scevcheck348
	nor	$a3, $t2, $zero
	add.d	$a4, $a3, $s0
	add.w	$a5, $a0, $a4
	move	$a3, $t2
	blt	$a5, $a0, .LBB1_95
# %bb.116:                              # %vector.scevcheck348
	srli.d	$a4, $a4, 32
	move	$a3, $t2
	bnez	$a4, .LBB1_95
# %bb.117:                              # %vector.memcheck349
	alsl.d	$a3, $t2, $s1, 3
	add.d	$a4, $s0, $a0
	sub.d	$a4, $a4, $t2
	alsl.d	$a4, $a4, $a1, 3
	bgeu	$a3, $a4, .LBB1_119
# %bb.118:                              # %vector.memcheck349
	alsl.d	$a4, $s0, $s1, 3
	alsl.d	$a5, $a0, $a1, 3
	move	$a3, $t2
	bltu	$a5, $a4, .LBB1_95
.LBB1_119:                              # %vector.ph355
	slli.d	$a5, $t2, 3
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	add.d	$a3, $a4, $t2
	add.d	$a5, $a5, $s1
	addi.d	$a5, $a5, 32
	xvrepli.b	$xr0, 0
	move	$a6, $a4
	move	$a7, $a0
	.p2align	4, , 16
.LBB1_120:                              # %vector.body358
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a5, -32
	xvld	$xr2, $a5, 0
	alsl.d	$t0, $a7, $a1, 3
	slli.d	$t1, $a7, 3
	xvstx	$xr1, $a1, $t1
	xvst	$xr2, $t0, 32
	xvst	$xr0, $a5, -32
	xvst	$xr0, $a5, 0
	addi.d	$a5, $a5, 64
	addi.d	$a6, $a6, -8
	addi.w	$a7, $a7, 8
	bnez	$a6, .LBB1_120
# %bb.121:                              # %middle.block364
	bne	$a2, $a4, .LBB1_95
	b	.LBB1_97
.LBB1_122:                              # %vector.ph323
	bstrpick.d	$a2, $s7, 30, 4
	slli.d	$a2, $a2, 4
	add.d	$a3, $s6, $a0
	addi.d	$a3, $a3, 32
	move	$a4, $a1
	move	$a5, $a2
	.p2align	4, , 16
.LBB1_123:                              # %vector.body326
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a3, -32
	xvld	$xr1, $a3, 0
	alsl.d	$a6, $a4, $s3, 2
	slli.d	$a7, $a4, 2
	xvstx	$xr0, $s3, $a7
	xvst	$xr1, $a6, 32
	addi.d	$a5, $a5, -16
	addi.d	$a3, $a3, 64
	addi.w	$a4, $a4, 16
	bnez	$a5, .LBB1_123
# %bb.124:                              # %middle.block331
	beq	$a2, $s7, .LBB1_82
# %bb.125:                              # %vec.epilog.iter.check336
	andi	$a3, $s7, 12
	beqz	$a3, .LBB1_80
.LBB1_126:                              # %vec.epilog.ph335
	move	$a5, $a2
	bstrpick.d	$a2, $s7, 30, 2
	slli.d	$a2, $a2, 2
	sub.d	$a3, $a5, $a2
	slli.d	$a4, $a5, 2
	alsl.d	$a4, $s0, $a4, 2
	add.d	$a4, $a0, $a4
	add.w	$a5, $a1, $a5
	.p2align	4, , 16
.LBB1_127:                              # %vec.epilog.vector.body341
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, 0
	slli.d	$a6, $a5, 2
	vstx	$vr0, $s3, $a6
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 16
	addi.w	$a5, $a5, 4
	bnez	$a3, .LBB1_127
# %bb.128:                              # %vec.epilog.middle.block345
	bne	$a2, $s7, .LBB1_80
	b	.LBB1_82
.Lfunc_end1:
	.size	set_pair1, .Lfunc_end1-set_pair1
                                        # -- End function
	.globl	pairvar                         # -- Begin function pairvar
	.p2align	5
	.type	pairvar,@function
pairvar:                                # @pairvar
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(cube)
	ld.d	$s1, $a2, %got_pc_lo12(cube)
	ld.d	$a2, $s1, 16
	ld.w	$a3, $s1, 4
	move	$fp, $a1
	ld.w	$a1, $a1, 0
	alsl.d	$a2, $a3, $a2, 2
	ld.w	$s0, $a2, -4
	slli.d	$a1, $a1, 2
	sub.w	$a2, $zero, $a1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(sf_delcol)
	jirl	$ra, $ra, 0
	ld.w	$a1, $a0, 12
	ld.w	$a5, $a0, 0
	mul.w	$a2, $a5, $a1
	ori	$a3, $zero, 1
	blt	$a2, $a3, .LBB2_20
# %bb.1:                                # %for.cond2.preheader.lr.ph
	ld.d	$a1, $a0, 24
	ld.w	$t1, $fp, 0
	alsl.d	$a2, $a2, $a1, 2
	blt	$t1, $a3, .LBB2_18
# %bb.2:
	ld.d	$a3, $s1, 16
	ori	$a4, $zero, 1
	b	.LBB2_5
	.p2align	4, , 16
.LBB2_3:                                # %for.inc94.loopexit
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.w	$a5, $a0, 0
.LBB2_4:                                # %for.inc94
                                        #   in Loop: Header=BB2_5 Depth=1
	alsl.d	$a1, $a5, $a1, 2
	bgeu	$a1, $a2, .LBB2_20
.LBB2_5:                                # %for.cond2.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_8 Depth 2
	blt	$t1, $a4, .LBB2_4
# %bb.6:                                # %for.body5.lr.ph
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.d	$a5, $fp, 8
	ld.d	$a6, $fp, 16
	move	$a7, $zero
	move	$t0, $s0
	b	.LBB2_8
	.p2align	4, , 16
.LBB2_7:                                # %for.inc
                                        #   in Loop: Header=BB2_8 Depth=2
	ld.w	$t1, $fp, 0
	addi.d	$a7, $a7, 1
	addi.d	$a6, $a6, 4
	addi.d	$a5, $a5, 4
	addi.w	$t0, $t0, 4
	bge	$a7, $t1, .LBB2_3
.LBB2_8:                                # %for.body5
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t1, $a6, 0
	alsl.d	$t1, $t1, $a3, 2
	ld.w	$t3, $t1, -4
	ld.w	$t1, $a5, 0
	addi.w	$t4, $t3, 1
	srai.d	$t2, $t4, 5
	alsl.d	$t2, $t2, $a1, 2
	ld.w	$t5, $t2, 4
	alsl.d	$t1, $t1, $a3, 2
	ld.w	$t2, $t1, -4
	sll.w	$t1, $a4, $t4
	and	$t1, $t1, $t5
	srai.d	$t4, $t3, 5
	srai.d	$t5, $t2, 5
	alsl.d	$t5, $t5, $a1, 2
	ld.w	$t5, $t5, 4
	alsl.d	$t4, $t4, $a1, 2
	ld.w	$t4, $t4, 4
	sll.w	$t3, $a4, $t3
	srl.w	$t5, $t5, $t2
	andi	$t5, $t5, 1
	and	$t3, $t4, $t3
	beqz	$t5, .LBB2_13
# %bb.9:                                # %if.then
                                        #   in Loop: Header=BB2_8 Depth=2
	beqz	$t3, .LBB2_11
# %bb.10:                               # %if.then38
                                        #   in Loop: Header=BB2_8 Depth=2
	addi.w	$t4, $t0, 3
	srai.d	$t5, $t4, 5
	alsl.d	$t5, $t5, $a1, 2
	ld.w	$t6, $t5, 4
	sll.w	$t4, $a4, $t4
	or	$t4, $t6, $t4
	st.w	$t4, $t5, 4
.LBB2_11:                               # %if.end
                                        #   in Loop: Header=BB2_8 Depth=2
	beqz	$t1, .LBB2_13
# %bb.12:                               # %if.then48
                                        #   in Loop: Header=BB2_8 Depth=2
	addi.w	$t4, $t0, 2
	srai.d	$t5, $t4, 5
	alsl.d	$t5, $t5, $a1, 2
	ld.w	$t6, $t5, 4
	sll.w	$t4, $a4, $t4
	or	$t4, $t6, $t4
	st.w	$t4, $t5, 4
.LBB2_13:                               # %if.end59
                                        #   in Loop: Header=BB2_8 Depth=2
	addi.w	$t2, $t2, 1
	srai.d	$t4, $t2, 5
	alsl.d	$t4, $t4, $a1, 2
	ld.w	$t4, $t4, 4
	srl.w	$t2, $t4, $t2
	andi	$t2, $t2, 1
	beqz	$t2, .LBB2_7
# %bb.14:                               # %if.then70
                                        #   in Loop: Header=BB2_8 Depth=2
	beqz	$t3, .LBB2_16
# %bb.15:                               # %if.then72
                                        #   in Loop: Header=BB2_8 Depth=2
	addi.w	$t2, $t0, 1
	srai.d	$t3, $t2, 5
	alsl.d	$t3, $t3, $a1, 2
	ld.w	$t4, $t3, 4
	sll.w	$t2, $a4, $t2
	or	$t2, $t4, $t2
	st.w	$t2, $t3, 4
.LBB2_16:                               # %if.end82
                                        #   in Loop: Header=BB2_8 Depth=2
	beqz	$t1, .LBB2_7
# %bb.17:                               # %if.then84
                                        #   in Loop: Header=BB2_8 Depth=2
	srai.d	$t1, $t0, 5
	alsl.d	$t1, $t1, $a1, 2
	ld.w	$t2, $t1, 4
	sll.w	$t3, $a4, $t0
	or	$t2, $t2, $t3
	st.w	$t2, $t1, 4
	b	.LBB2_7
.LBB2_18:                               # %for.cond2.preheader.lr.ph.split.us
	slli.d	$a3, $a5, 2
	.p2align	4, , 16
.LBB2_19:                               # %for.cond2.preheader.us
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a1, $a1, $a3
	bltu	$a1, $a2, .LBB2_19
.LBB2_20:                               # %for.end98
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end2:
	.size	pairvar, .Lfunc_end2-pairvar
                                        # -- End function
	.globl	delvar                          # -- Begin function delvar
	.p2align	5
	.type	delvar,@function
delvar:                                 # @delvar
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(cube)
	ld.d	$s1, $a2, %got_pc_lo12(cube)
	ld.w	$a2, $s1, 8
	ori	$a3, $zero, 1
	blt	$a2, $a3, .LBB3_13
# %bb.1:                                # %for.body.preheader
	move	$fp, $a1
	move	$s3, $zero
	move	$s4, $zero
	move	$s2, $zero
	move	$s0, $zero
	move	$a1, $zero
                                        # implicit-def: $r28
	b	.LBB3_5
	.p2align	4, , 16
.LBB3_2:                                # %if.else
                                        #   in Loop: Header=BB3_5 Depth=1
	ld.d	$a1, $s1, 16
	ld.d	$a3, $s1, 32
	ldx.w	$s5, $a1, $s3
	ldx.w	$s0, $a3, $s3
.LBB3_3:                                # %for.inc
                                        #   in Loop: Header=BB3_5 Depth=1
	ori	$a1, $zero, 1
.LBB3_4:                                # %for.inc
                                        #   in Loop: Header=BB3_5 Depth=1
	addi.d	$s4, $s4, 1
	addi.d	$s3, $s3, 4
	bge	$s4, $a2, .LBB3_11
.LBB3_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$s6, $fp, $s3
	beqz	$s6, .LBB3_8
# %bb.6:                                # %if.then
                                        #   in Loop: Header=BB3_5 Depth=1
	beqz	$a1, .LBB3_2
# %bb.7:                                # %if.then2
                                        #   in Loop: Header=BB3_5 Depth=1
	ld.d	$a1, $s1, 32
	ldx.w	$a1, $a1, $s3
	add.w	$s0, $a1, $s0
	b	.LBB3_3
	.p2align	4, , 16
.LBB3_8:                                # %if.else9
                                        #   in Loop: Header=BB3_5 Depth=1
	bnez	$a1, .LBB3_10
# %bb.9:                                #   in Loop: Header=BB3_5 Depth=1
	move	$a1, $zero
	b	.LBB3_4
.LBB3_10:                               # %if.then11
                                        #   in Loop: Header=BB3_5 Depth=1
	sub.w	$a1, $s5, $s2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(sf_delcol)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s1, 8
	move	$a1, $zero
	add.d	$s2, $s2, $s0
	b	.LBB3_4
.LBB3_11:                               # %for.end
	beqz	$s6, .LBB3_13
# %bb.12:                               # %if.then16
	sub.w	$a1, $s5, $s2
	move	$a2, $s0
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(sf_delcol)
	jr	$t8
.LBB3_13:                               # %if.end19
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end3:
	.size	delvar, .Lfunc_end3-delvar
                                        # -- End function
	.globl	find_optimal_pairing            # -- Begin function find_optimal_pairing
	.p2align	5
	.type	find_optimal_pairing,@function
find_optimal_pairing:                   # @find_optimal_pairing
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(find_pairing_cost)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(summary)
	ld.d	$s3, $a1, %got_pc_lo12(summary)
	ld.w	$a1, $s3, 0
	move	$s0, $a0
	beqz	$a1, .LBB4_10
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s4, $a0, %got_pc_lo12(cube)
	ld.w	$a0, $s4, 8
	ori	$s5, $zero, 1
	blt	$a0, $s5, .LBB4_4
# %bb.2:                                # %for.body.preheader
	move	$s1, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$s2, $a0, %pc_lo12(.L.str.3)
	.p2align	4, , 16
.LBB4_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$s1, $s1, 1
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 8
	blt	$s1, $a0, .LBB4_3
.LBB4_4:                                # %for.end
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 8
	blt	$a0, $s5, .LBB4_12
# %bb.5:                                # %for.body6.preheader
	move	$s6, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$s1, $a0, %pc_lo12(.L.str.3)
	ori	$s5, $zero, 1
	b	.LBB4_7
	.p2align	4, , 16
.LBB4_6:                                # %for.end17
                                        #   in Loop: Header=BB4_7 Depth=1
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 8
	move	$s6, $s2
	bge	$s2, $a0, .LBB4_11
.LBB4_7:                                # %for.body6
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_9 Depth 2
	addi.d	$s2, $s6, 1
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 8
	blt	$a0, $s5, .LBB4_6
# %bb.8:                                # %for.body11.lr.ph
                                        #   in Loop: Header=BB4_7 Depth=1
	slli.d	$a0, $s6, 3
	ldx.d	$s6, $s0, $a0
	move	$s7, $zero
	.p2align	4, , 16
.LBB4_9:                                # %for.body11
                                        #   Parent Loop BB4_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $s6, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 8
	addi.d	$s7, $s7, 1
	addi.d	$s6, $s6, 4
	blt	$s7, $a0, .LBB4_9
	b	.LBB4_6
.LBB4_10:                               # %if.endthread-pre-split
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$a0, $a0, %got_pc_lo12(cube)
	ld.w	$a0, $a0, 8
.LBB4_11:                               # %if.end
	ori	$a1, $zero, 14
	blt	$a1, $a0, .LBB4_13
.LBB4_12:                               # %if.then23
	move	$a0, $s0
	pcaddu18i	$ra, %call36(pair_best_cost)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 48
	b	.LBB4_14
.LBB4_13:                               # %if.else
	addi.d	$a1, $fp, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(greedy_best_cost)
	jirl	$ra, $ra, 0
.LBB4_14:                               # %if.end27
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$s4, $fp, 48
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 0
	ori	$s2, $zero, 1
	blt	$a0, $s2, .LBB4_17
# %bb.15:                               # %for.body.lr.ph.i
	move	$s5, $zero
	move	$s6, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$s1, $a0, %pc_lo12(.L.str.8)
	.p2align	4, , 16
.LBB4_16:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 8
	ld.d	$a2, $s4, 16
	ldx.w	$a1, $a0, $s5
	ldx.w	$a2, $a2, $s5
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 0
	addi.d	$s6, $s6, 1
	addi.d	$s5, $s5, 4
	blt	$s6, $a0, .LBB4_16
.LBB4_17:                               # %print_pair.exit
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s1, $a0, %got_pc_lo12(cube)
	ld.w	$a1, $s1, 8
	blt	$a1, $s2, .LBB4_22
# %bb.18:                               # %for.body33.preheader
	move	$s2, $zero
	move	$s4, $s0
	b	.LBB4_20
	.p2align	4, , 16
.LBB4_19:                               # %for.inc43
                                        #   in Loop: Header=BB4_20 Depth=1
	addi.d	$s2, $s2, 1
	addi.d	$s4, $s4, 8
	bge	$s2, $a1, .LBB4_23
.LBB4_20:                               # %for.body33
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 0
	beqz	$a0, .LBB4_19
# %bb.21:                               # %if.then37
                                        #   in Loop: Header=BB4_20 Depth=1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 8
	st.d	$zero, $s4, 0
	b	.LBB4_19
.LBB4_22:                               # %for.end45
	beqz	$s0, .LBB4_24
.LBB4_23:                               # %if.then47
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB4_24:                               # %if.end48
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(set_pair1)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	ld.d	$a1, $fp, 8
	ld.d	$a2, $fp, 16
	move	$s0, $a0
	move	$a0, $a3
	pcaddu18i	$ra, %call36(espresso)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 0
	st.d	$a0, $fp, 0
	beqz	$a1, .LBB4_26
# %bb.25:                               # %if.then53
	move	$s1, $a0
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	sub.d	$a2, $a0, $s0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
	move	$a0, $s1
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	pcaddu18i	$t8, %call36(print_trace)
	jr	$t8
.LBB4_26:                               # %if.end56
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end4:
	.size	find_optimal_pairing, .Lfunc_end4-find_optimal_pairing
                                        # -- End function
	.globl	find_pairing_cost               # -- Begin function find_pairing_cost
	.p2align	5
	.type	find_pairing_cost,@function
find_pairing_cost:                      # @find_pairing_cost
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
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(cube)
	ld.d	$s7, $a2, %got_pc_lo12(cube)
	ld.w	$s4, $s7, 8
	move	$s1, $a1
	move	$fp, $a0
	slli.d	$a0, $s4, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ori	$s0, $zero, 1
	move	$s6, $a0
	blt	$s4, $s0, .LBB5_8
# %bb.1:                                # %for.body.lr.ph
	slli.d	$s2, $s4, 2
	move	$s3, $s4
	move	$s5, $s6
	.p2align	4, , 16
.LBB5_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s5, 0
	addi.d	$s3, $s3, -1
	addi.d	$s5, $s5, 8
	bnez	$s3, .LBB5_2
# %bb.3:                                # %for.cond9.preheader.preheader
	move	$a0, $zero
	b	.LBB5_5
	.p2align	4, , 16
.LBB5_4:                                # %for.inc20
                                        #   in Loop: Header=BB5_5 Depth=1
	addi.d	$a0, $a0, 1
	bge	$a0, $s4, .LBB5_8
.LBB5_5:                                # %for.cond9.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_7 Depth 2
	blez	$s4, .LBB5_4
# %bb.6:                                # %for.body12.lr.ph
                                        #   in Loop: Header=BB5_5 Depth=1
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s6, $a1
	move	$a2, $zero
	.p2align	4, , 16
.LBB5_7:                                # %for.body12
                                        #   Parent Loop BB5_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$zero, $a1, 0
	ld.w	$s4, $s7, 8
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 4
	blt	$a2, $s4, .LBB5_7
	b	.LBB5_4
.LBB5_8:                                # %for.end22
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	st.d	$a0, $s2, 8
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 16
	st.d	$s2, $fp, 48
	ori	$a0, $zero, 2
	st.w	$s0, $s2, 0
	blt	$s4, $a0, .LBB5_46
# %bb.9:                                # %for.body28.lr.ph
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	move	$s2, $zero
	ori	$s0, $zero, 1
	lu12i.w	$a0, 131071
	ori	$a0, $a0, 4092
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$s3, $zero, 1
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r29
                                        # implicit-def: $r28
                                        # implicit-def: $r31
                                        # implicit-def: $r4
                                        # kill: killed $r4
	b	.LBB5_11
	.p2align	4, , 16
.LBB5_10:                               # %for.cond25.loopexit
                                        #   in Loop: Header=BB5_11 Depth=1
	addi.w	$a0, $s4, -1
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	addi.d	$s3, $s3, 1
	bge	$s2, $a0, .LBB5_45
.LBB5_11:                               # %for.body28
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_15 Depth 2
                                        #       Child Loop BB5_22 Depth 3
                                        #       Child Loop BB5_26 Depth 3
                                        #       Child Loop BB5_29 Depth 3
	move	$a1, $s2
	addi.d	$s2, $s2, 1
	st.d	$s3, $sp, 24                    # 8-byte Folded Spill
	bge	$s2, $s4, .LBB5_10
# %bb.12:                               # %for.body32.lr.ph
                                        #   in Loop: Header=BB5_11 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	alsl.d	$a0, $a1, $a0, 3
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	b	.LBB5_15
	.p2align	4, , 16
.LBB5_13:                               # %if.end128
                                        #   in Loop: Header=BB5_15 Depth=2
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	st.w	$a0, $s7, 8
	st.w	$s8, $s7, 4
	st.d	$s5, $s7, 32
	pcaddu18i	$ra, %call36(cube_setup)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $fp, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $fp, 8
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.d	$a0, $fp, 16
.LBB5_14:                               # %for.inc136
                                        #   in Loop: Header=BB5_15 Depth=2
	ld.w	$s4, $s7, 8
	addi.d	$s3, $s3, 1
	addi.w	$a0, $s3, 0
	bge	$a0, $s4, .LBB5_10
.LBB5_15:                               # %for.body32
                                        #   Parent Loop BB5_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_22 Depth 3
                                        #       Child Loop BB5_26 Depth 3
                                        #       Child Loop BB5_29 Depth 3
	blt	$s1, $s0, .LBB5_31
# %bb.16:                               # %if.then
                                        #   in Loop: Header=BB5_15 Depth=2
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(sf_save)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 8
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	move	$a0, $a1
	pcaddu18i	$ra, %call36(sf_save)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	move	$a0, $a1
	pcaddu18i	$ra, %call36(sf_save)
	jirl	$ra, $ra, 0
	ld.w	$s8, $s7, 4
	ld.w	$a1, $s7, 8
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	slli.d	$a0, $s8, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	blt	$s8, $s0, .LBB5_30
# %bb.17:                               # %iter.check
                                        #   in Loop: Header=BB5_15 Depth=2
	ld.d	$a0, $s7, 32
	move	$a1, $zero
	ori	$a2, $zero, 4
	bltu	$s8, $a2, .LBB5_28
# %bb.18:                               # %iter.check
                                        #   in Loop: Header=BB5_15 Depth=2
	sub.d	$a2, $s5, $a0
	ori	$a3, $zero, 64
	bltu	$a2, $a3, .LBB5_28
# %bb.19:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB5_15 Depth=2
	ori	$a1, $zero, 16
	bgeu	$s8, $a1, .LBB5_21
# %bb.20:                               #   in Loop: Header=BB5_15 Depth=2
	move	$a1, $zero
	b	.LBB5_25
.LBB5_21:                               # %vector.ph
                                        #   in Loop: Header=BB5_15 Depth=2
	bstrpick.d	$a1, $s8, 30, 4
	slli.d	$a1, $a1, 4
	addi.d	$a2, $s5, 32
	addi.d	$a3, $a0, 32
	move	$a4, $a1
	.p2align	4, , 16
.LBB5_22:                               # %vector.body
                                        #   Parent Loop BB5_11 Depth=1
                                        #     Parent Loop BB5_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr0, $a3, -32
	xvld	$xr1, $a3, 0
	xvst	$xr0, $a2, -32
	xvst	$xr1, $a2, 0
	addi.d	$a4, $a4, -16
	addi.d	$a2, $a2, 64
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB5_22
# %bb.23:                               # %middle.block
                                        #   in Loop: Header=BB5_15 Depth=2
	beq	$a1, $s8, .LBB5_30
# %bb.24:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB5_15 Depth=2
	andi	$a2, $s8, 12
	beqz	$a2, .LBB5_28
.LBB5_25:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB5_15 Depth=2
	move	$a4, $a1
	bstrpick.d	$a1, $s8, 30, 2
	slli.d	$a1, $a1, 2
	sub.d	$a2, $a4, $a1
	alsl.d	$a3, $a4, $s5, 2
	alsl.d	$a4, $a4, $a0, 2
	.p2align	4, , 16
.LBB5_26:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB5_11 Depth=1
                                        #     Parent Loop BB5_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a4, 0
	vst	$vr0, $a3, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	bnez	$a2, .LBB5_26
# %bb.27:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB5_15 Depth=2
	beq	$a1, $s8, .LBB5_30
.LBB5_28:                               # %for.body44.preheader
                                        #   in Loop: Header=BB5_15 Depth=2
	alsl.d	$a2, $a1, $s5, 2
	alsl.d	$a0, $a1, $a0, 2
	sub.d	$a1, $s8, $a1
	.p2align	4, , 16
.LBB5_29:                               # %for.body44
                                        #   Parent Loop BB5_11 Depth=1
                                        #     Parent Loop BB5_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a3, $a0, 0
	st.w	$a3, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB5_29
.LBB5_30:                               # %for.end51
                                        #   in Loop: Header=BB5_15 Depth=2
	ld.d	$a0, $fp, 48
	ld.d	$a1, $a0, 8
	ld.d	$a0, $a0, 16
	st.w	$s2, $a1, 0
	addi.d	$a1, $s3, 1
	st.w	$a1, $a0, 0
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(set_pair1)
	jirl	$ra, $ra, 0
.LBB5_31:                               # %if.end
                                        #   in Loop: Header=BB5_15 Depth=2
	ori	$a0, $zero, 3
	bltu	$a0, $s1, .LBB5_44
# %bb.32:                               # %if.end
                                        #   in Loop: Header=BB5_15 Depth=2
	slli.d	$a0, $s1, 2
	pcalau12i	$a1, %pc_hi20(.LJTI5_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI5_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	slli.d	$s4, $s3, 2
	jr	$a0
.LBB5_33:                               # %sw.bb95
                                        #   in Loop: Header=BB5_15 Depth=2
	ld.w	$s6, $s7, 0
	ori	$a0, $zero, 8
	ori	$a1, $zero, 33
	blt	$s6, $a1, .LBB5_35
# %bb.34:                               # %cond.false
                                        #   in Loop: Header=BB5_15 Depth=2
	addi.d	$a0, $s6, -1
	srli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB5_35:                               # %cond.end
                                        #   in Loop: Header=BB5_15 Depth=2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s7, 72
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	slli.d	$a3, $s3, 3
	ldx.d	$a2, $a2, $a3
	move	$s6, $a0
	pcaddu18i	$ra, %call36(set_or)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(sf_save)
	jirl	$ra, $ra, 0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(dist_merge)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ld.w	$s0, $a1, 12
	ld.w	$s2, $a0, 12
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	beqz	$s6, .LBB5_37
# %bb.36:                               # %if.then117
                                        #   in Loop: Header=BB5_15 Depth=2
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB5_37:                               # %sw.epilog.thread83
                                        #   in Loop: Header=BB5_15 Depth=2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	sub.d	$s6, $s0, $s2
	stx.w	$s6, $a0, $s4
	ori	$s0, $zero, 1
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	b	.LBB5_14
	.p2align	4, , 16
.LBB5_38:                               # %sw.bb68
                                        #   in Loop: Header=BB5_15 Depth=2
	ld.d	$a0, $fp, 0
	ld.d	$a1, $fp, 8
	ld.d	$a2, $fp, 16
	pcaddu18i	$ra, %call36(espresso)
	jirl	$ra, $ra, 0
	b	.LBB5_41
	.p2align	4, , 16
.LBB5_39:                               # %sw.bb
                                        #   in Loop: Header=BB5_15 Depth=2
	ld.d	$a0, $fp, 0
	ld.d	$a1, $fp, 8
	ld.d	$a2, $fp, 16
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(minimize_exact)
	jirl	$ra, $ra, 0
	b	.LBB5_41
.LBB5_40:                               # %sw.bb78
                                        #   in Loop: Header=BB5_15 Depth=2
	ld.d	$a0, $fp, 0
	ld.d	$a1, $fp, 8
	pcaddu18i	$ra, %call36(reduce)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	st.d	$a0, $fp, 0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(expand)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 8
	st.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(irredundant)
	jirl	$ra, $ra, 0
.LBB5_41:                               # %sw.epilog.thread
                                        #   in Loop: Header=BB5_15 Depth=2
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 12
	ld.w	$a2, $a0, 12
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	st.d	$a0, $fp, 0
	sub.d	$s6, $a1, $a2
	stx.w	$s6, $a3, $s4
.LBB5_42:                               # %if.then125
                                        #   in Loop: Header=BB5_15 Depth=2
	pcaddu18i	$ra, %call36(setdown_cube)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 32
	beqz	$a0, .LBB5_13
# %bb.43:                               # %if.then127
                                        #   in Loop: Header=BB5_15 Depth=2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB5_13
.LBB5_44:                               # %sw.epilog
                                        #   in Loop: Header=BB5_15 Depth=2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s3, 2
	stx.w	$s6, $a0, $a1
	bge	$s1, $s0, .LBB5_42
	b	.LBB5_14
.LBB5_45:                               # %for.end141.loopexit
	ld.d	$s2, $fp, 48
	ld.d	$s3, $s2, 8
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
.LBB5_46:                               # %for.end141
	beqz	$s3, .LBB5_48
# %bb.47:                               # %if.then.i
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s2, 8
.LBB5_48:                               # %if.end.i
	ld.d	$a0, $s2, 16
	beqz	$a0, .LBB5_50
# %bb.49:                               # %if.then4.i
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB5_50:                               # %pair_free.exit
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 48
	move	$a0, $s6
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
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
	ret
.Lfunc_end5:
	.size	find_pairing_cost, .Lfunc_end5-find_pairing_cost
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI5_0:
	.word	.LBB5_33-.LJTI5_0
	.word	.LBB5_40-.LJTI5_0
	.word	.LBB5_38-.LJTI5_0
	.word	.LBB5_39-.LJTI5_0
                                        # -- End function
	.text
	.globl	print_pair                      # -- Begin function print_pair
	.p2align	5
	.type	print_pair,@function
print_pair:                             # @print_pair
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB6_3
# %bb.1:                                # %for.body.lr.ph
	move	$s1, $zero
	move	$s2, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$s0, $a0, %pc_lo12(.L.str.8)
	.p2align	4, , 16
.LBB6_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 8
	ld.d	$a2, $fp, 16
	ldx.w	$a1, $a0, $s1
	ldx.w	$a2, $a2, $s1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 4
	blt	$s2, $a0, .LBB6_2
.LBB6_3:                                # %for.end
	ori	$a0, $zero, 10
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(putchar)
	jr	$t8
.Lfunc_end6:
	.size	print_pair, .Lfunc_end6-print_pair
                                        # -- End function
	.globl	greedy_best_cost                # -- Begin function greedy_best_cost
	.p2align	5
	.type	greedy_best_cost,@function
greedy_best_cost:                       # @greedy_best_cost
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
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(cube)
	ld.d	$a2, $a2, %got_pc_lo12(cube)
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	ld.w	$s4, $a2, 8
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	move	$s1, $a0
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.w	$zero, $a0, 0
	slli.d	$s3, $s4, 2
	move	$a0, $s3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	st.d	$a0, $s0, 8
	move	$a0, $s3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$a0, $s0, 16
	ori	$a0, $zero, 8
	ori	$a1, $zero, 33
	lu12i.w	$s2, 131071
	blt	$s4, $a1, .LBB7_2
# %bb.1:                                # %cond.false
	addi.d	$a0, $s4, -1
	srli.d	$a0, $a0, 3
	ori	$a1, $s2, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB7_2:                                # %cond.end
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(set_fill)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	pcaddu18i	$ra, %call36(set_ord)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB7_16
# %bb.3:                                # %for.cond.preheader.preheader
	move	$s7, $zero
	move	$s6, $zero
	addi.w	$s8, $zero, -1
	ori	$fp, $zero, 1
	ori	$s5, $s2, 4092
                                        # implicit-def: $r26
                                        # implicit-def: $r25
	b	.LBB7_6
	.p2align	4, , 16
.LBB7_4:                                #   in Loop: Header=BB7_6 Depth=1
	move	$a0, $s8
.LBB7_5:                                # %for.end41
                                        #   in Loop: Header=BB7_6 Depth=1
	addi.w	$a1, $s2, 0
	addi.d	$a2, $s2, 1
	slli.d	$a3, $s7, 2
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	stx.w	$a2, $a4, $a3
	addi.d	$a2, $s3, 1
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	stx.w	$a2, $a4, $a3
	addi.d	$s7, $s7, 1
	st.w	$s7, $s0, 0
	srai.d	$a1, $a1, 5
	alsl.d	$a1, $a1, $s4, 2
	ld.w	$a2, $a1, 4
	addi.w	$a3, $s3, 0
	sll.w	$a4, $fp, $s2
	andn	$a2, $a2, $a4
	st.w	$a2, $a1, 4
	srai.d	$a1, $a3, 5
	alsl.d	$a1, $a1, $s4, 2
	ld.w	$a2, $a1, 4
	sll.w	$a3, $fp, $s3
	andn	$a2, $a2, $a3
	st.w	$a2, $a1, 4
	add.w	$s6, $a0, $s6
	move	$a0, $s4
	pcaddu18i	$ra, %call36(set_ord)
	jirl	$ra, $ra, 0
	bge	$fp, $a0, .LBB7_17
.LBB7_6:                                # %for.cond.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_9 Depth 2
                                        #       Child Loop BB7_13 Depth 3
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a1, $a0, 8
	blt	$a1, $fp, .LBB7_4
# %bb.7:                                # %for.body.preheader
                                        #   in Loop: Header=BB7_6 Depth=1
	move	$a5, $zero
	ori	$a2, $zero, 1
	ori	$a3, $zero, 4
	ori	$a4, $zero, 1
	move	$a0, $s8
	b	.LBB7_9
	.p2align	4, , 16
.LBB7_8:                                # %for.inc39
                                        #   in Loop: Header=BB7_9 Depth=2
	addi.d	$a4, $a4, 1
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 4
	beq	$a5, $a1, .LBB7_5
.LBB7_9:                                # %for.body
                                        #   Parent Loop BB7_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_13 Depth 3
	move	$a6, $a5
	srli.d	$a5, $a5, 3
	and	$a5, $a5, $s5
	add.d	$a5, $s4, $a5
	ld.w	$a5, $a5, 4
	srl.w	$a5, $a5, $a6
	andi	$a7, $a5, 1
	addi.d	$a5, $a6, 1
	beqz	$a7, .LBB7_8
# %bb.10:                               # %for.body
                                        #   in Loop: Header=BB7_9 Depth=2
	bgeu	$a5, $a1, .LBB7_8
# %bb.11:                               # %for.body16.lr.ph
                                        #   in Loop: Header=BB7_9 Depth=2
	alsl.d	$a7, $a6, $s1, 3
	move	$t0, $a3
	move	$t1, $a2
	move	$t2, $a4
	b	.LBB7_13
	.p2align	4, , 16
.LBB7_12:                               # %for.inc
                                        #   in Loop: Header=BB7_13 Depth=3
	addi.d	$t2, $t2, 1
	addi.d	$t1, $t1, 1
	addi.d	$t0, $t0, 4
	beq	$a1, $t2, .LBB7_8
.LBB7_13:                               # %for.body16
                                        #   Parent Loop BB7_6 Depth=1
                                        #     Parent Loop BB7_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	srli.d	$t3, $t2, 3
	and	$t3, $t3, $s5
	add.d	$t3, $s4, $t3
	ld.w	$t3, $t3, 4
	srl.w	$t3, $t3, $t1
	andi	$t3, $t3, 1
	beqz	$t3, .LBB7_12
# %bb.14:                               # %if.then25
                                        #   in Loop: Header=BB7_13 Depth=3
	ld.d	$t3, $a7, 0
	ldx.w	$t3, $t3, $t0
	bge	$a0, $t3, .LBB7_12
# %bb.15:                               # %if.then32
                                        #   in Loop: Header=BB7_13 Depth=3
	move	$s2, $a6
	move	$s3, $t1
	move	$a0, $t3
	b	.LBB7_12
.LBB7_16:                               # %while.end
	move	$s6, $zero
	move	$a0, $zero
	beqz	$s4, .LBB7_18
.LBB7_17:                               # %if.then68
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s6
.LBB7_18:                               # %if.end69
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	st.d	$s0, $a1, 0
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
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
.Lfunc_end7:
	.size	greedy_best_cost, .Lfunc_end7-greedy_best_cost
                                        # -- End function
	.globl	pair_best_cost                  # -- Begin function pair_best_cost
	.p2align	5
	.type	pair_best_cost,@function
pair_best_cost:                         # @pair_best_cost
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(best_cost)
	addi.w	$a2, $zero, -1
	pcalau12i	$a3, %got_pc_hi20(cube)
	ld.d	$s3, $a3, %got_pc_lo12(cube)
	lu32i.d	$a2, 0
	st.w	$a2, $a1, %pc_lo12(best_cost)
	pcalau12i	$s2, %pc_hi20(best_pair)
	ld.w	$s0, $s3, 8
	st.d	$zero, $s2, %pc_lo12(best_pair)
	pcalau12i	$a1, %pc_hi20(cost_array)
	st.d	$a0, $a1, %pc_lo12(cost_array)
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.w	$zero, $a0, 0
	slli.d	$s1, $s0, 2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 16
	ori	$a1, $zero, 33
	ori	$a0, $zero, 8
	blt	$s0, $a1, .LBB8_2
# %bb.1:                                # %cond.false
	addi.d	$a0, $s0, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB8_2:                                # %cond.end
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(set_fill)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 8
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(find_best_cost)
	addi.d	$a3, $a0, %pc_lo12(find_best_cost)
	move	$a0, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(generate_all_pairs)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	beqz	$a0, .LBB8_4
# %bb.3:                                # %if.then.i
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 8
.LBB8_4:                                # %if.end.i
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB8_6
# %bb.5:                                # %if.then4.i
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB8_6:                                # %pair_free.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB8_8
# %bb.7:                                # %if.then
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB8_8:                                # %if.end
	ld.d	$a0, $s2, %pc_lo12(best_pair)
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end8:
	.size	pair_best_cost, .Lfunc_end8-pair_best_cost
                                        # -- End function
	.globl	find_best_cost                  # -- Begin function find_best_cost
	.p2align	5
	.type	find_best_cost,@function
find_best_cost:                         # @find_best_cost
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$s4, $a0, 0
	ori	$a0, $zero, 1
	blt	$s4, $a0, .LBB9_3
# %bb.1:                                # %for.body.lr.ph
	pcalau12i	$a0, %pc_hi20(cost_array)
	ld.d	$a0, $a0, %pc_lo12(cost_array)
	ld.d	$a1, $fp, 8
	ld.d	$a2, $fp, 16
	ori	$a3, $zero, 8
	bgeu	$s4, $a3, .LBB9_4
# %bb.2:
	move	$a3, $zero
	move	$s0, $zero
	b	.LBB9_7
.LBB9_3:
	move	$s0, $zero
	b	.LBB9_9
.LBB9_4:                                # %vector.ph
	bstrpick.d	$a3, $s4, 30, 3
	slli.d	$a3, $a3, 3
	addi.d	$a4, $a2, 16
	vrepli.b	$vr0, 0
	addi.d	$a5, $a1, 16
	move	$a6, $a3
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB9_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a5, -16
	vld	$vr3, $a5, 0
	vpickve2gr.w	$a7, $vr2, 2
	vinsgr2vr.d	$vr4, $a7, 0
	vpickve2gr.w	$a7, $vr2, 3
	vinsgr2vr.d	$vr4, $a7, 1
	xvpermi.q	$xr4, $xr4, 2
	vpickve2gr.w	$a7, $vr2, 0
	vinsgr2vr.d	$vr5, $a7, 0
	vpickve2gr.w	$a7, $vr2, 1
	vinsgr2vr.d	$vr5, $a7, 1
	vpickve2gr.w	$a7, $vr3, 2
	vinsgr2vr.d	$vr2, $a7, 0
	vpickve2gr.w	$a7, $vr3, 3
	vinsgr2vr.d	$vr2, $a7, 1
	xvpermi.q	$xr2, $xr2, 2
	vpickve2gr.w	$a7, $vr3, 0
	vinsgr2vr.d	$vr6, $a7, 0
	vpickve2gr.w	$a7, $vr3, 1
	vinsgr2vr.d	$vr6, $a7, 1
	xvpickve2gr.d	$a7, $xr5, 0
	alsl.d	$a7, $a7, $a0, 3
	xvpickve2gr.d	$t0, $xr5, 1
	alsl.d	$t0, $t0, $a0, 3
	xvpickve2gr.d	$t1, $xr4, 2
	alsl.d	$t1, $t1, $a0, 3
	xvpickve2gr.d	$t2, $xr4, 3
	alsl.d	$t2, $t2, $a0, 3
	xvpickve2gr.d	$t3, $xr6, 0
	alsl.d	$t3, $t3, $a0, 3
	xvpickve2gr.d	$t4, $xr6, 1
	alsl.d	$t4, $t4, $a0, 3
	xvpickve2gr.d	$t5, $xr2, 2
	alsl.d	$t5, $t5, $a0, 3
	xvpickve2gr.d	$t6, $xr2, 3
	alsl.d	$t6, $t6, $a0, 3
	ld.d	$a7, $a7, -8
	ld.d	$t0, $t0, -8
	ld.d	$t1, $t1, -8
	ld.d	$t2, $t2, -8
	ld.d	$t3, $t3, -8
	ld.d	$t4, $t4, -8
	vld	$vr2, $a4, -16
	ld.d	$t5, $t5, -8
	ld.d	$t6, $t6, -8
	vld	$vr3, $a4, 0
	vpickve2gr.w	$t7, $vr2, 2
	vinsgr2vr.d	$vr4, $t7, 0
	vpickve2gr.w	$t7, $vr2, 3
	vinsgr2vr.d	$vr4, $t7, 1
	xvpermi.q	$xr4, $xr4, 2
	vpickve2gr.w	$t7, $vr2, 0
	vinsgr2vr.d	$vr5, $t7, 0
	vpickve2gr.w	$t7, $vr2, 1
	vinsgr2vr.d	$vr5, $t7, 1
	vpickve2gr.w	$t7, $vr3, 2
	vinsgr2vr.d	$vr2, $t7, 0
	vpickve2gr.w	$t7, $vr3, 3
	vinsgr2vr.d	$vr2, $t7, 1
	xvpermi.q	$xr2, $xr2, 2
	vpickve2gr.w	$t7, $vr3, 0
	vinsgr2vr.d	$vr6, $t7, 0
	vpickve2gr.w	$t7, $vr3, 1
	vinsgr2vr.d	$vr6, $t7, 1
	xvpickve2gr.d	$t7, $xr5, 0
	alsl.d	$a7, $t7, $a7, 2
	xvpickve2gr.d	$t7, $xr5, 1
	alsl.d	$t0, $t7, $t0, 2
	xvpickve2gr.d	$t7, $xr4, 2
	alsl.d	$t1, $t7, $t1, 2
	xvpickve2gr.d	$t7, $xr4, 3
	alsl.d	$t2, $t7, $t2, 2
	xvpickve2gr.d	$t7, $xr6, 0
	alsl.d	$t3, $t7, $t3, 2
	xvpickve2gr.d	$t7, $xr6, 1
	alsl.d	$t4, $t7, $t4, 2
	xvpickve2gr.d	$t7, $xr2, 2
	alsl.d	$t5, $t7, $t5, 2
	xvpickve2gr.d	$t7, $xr2, 3
	alsl.d	$t6, $t7, $t6, 2
	ld.w	$a7, $a7, -4
	ld.w	$t0, $t0, -4
	ld.w	$t1, $t1, -4
	ld.w	$t2, $t2, -4
	vinsgr2vr.w	$vr2, $a7, 0
	vinsgr2vr.w	$vr2, $t0, 1
	vinsgr2vr.w	$vr2, $t1, 2
	vinsgr2vr.w	$vr2, $t2, 3
	ld.w	$a7, $t3, -4
	ld.w	$t0, $t4, -4
	ld.w	$t1, $t5, -4
	ld.w	$t2, $t6, -4
	vinsgr2vr.w	$vr3, $a7, 0
	vinsgr2vr.w	$vr3, $t0, 1
	vinsgr2vr.w	$vr3, $t1, 2
	vinsgr2vr.w	$vr3, $t2, 3
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	addi.d	$a6, $a6, -8
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB9_5
# %bb.6:                                # %middle.block
	vadd.w	$vr0, $vr1, $vr0
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$s0, $vr0, 0
	beq	$a3, $s4, .LBB9_9
.LBB9_7:                                # %for.body.preheader
	alsl.d	$a2, $a3, $a2, 2
	alsl.d	$a1, $a3, $a1, 2
	sub.d	$a3, $s4, $a3
	.p2align	4, , 16
.LBB9_8:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, 0
	alsl.d	$a4, $a4, $a0, 3
	ld.d	$a4, $a4, -8
	ld.w	$a5, $a2, 0
	alsl.d	$a4, $a5, $a4, 2
	ld.w	$a4, $a4, -4
	add.w	$s0, $a4, $s0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB9_8
.LBB9_9:                                # %for.end
	pcalau12i	$a0, %pc_hi20(best_cost)
	ld.w	$a1, $a0, %pc_lo12(best_cost)
	bge	$a1, $s0, .LBB9_16
# %bb.10:                               # %if.then
	st.w	$s0, $a0, %pc_lo12(best_cost)
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	slli.d	$s3, $s4, 2
	move	$a0, $s3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$a0, $s1, 8
	move	$a0, $s3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 16
	ori	$a1, $zero, 1
	st.w	$s4, $s1, 0
	blt	$s4, $a1, .LBB9_15
# %bb.11:                               # %iter.check
	ld.d	$a1, $fp, 8
	ld.d	$a2, $fp, 16
	ori	$a3, $zero, 4
	bgeu	$s4, $a3, .LBB9_23
# %bb.12:
	move	$a3, $zero
.LBB9_13:                               # %for.body.i.preheader
	sub.d	$a4, $s4, $a3
	alsl.d	$a0, $a3, $a0, 2
	alsl.d	$a2, $a3, $a2, 2
	alsl.d	$a5, $a3, $s2, 2
	alsl.d	$a1, $a3, $a1, 2
	.p2align	4, , 16
.LBB9_14:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, 0
	st.w	$a3, $a5, 0
	ld.w	$a3, $a2, 0
	st.w	$a3, $a0, 0
	addi.d	$a4, $a4, -1
	addi.d	$a0, $a0, 4
	addi.d	$a2, $a2, 4
	addi.d	$a5, $a5, 4
	addi.d	$a1, $a1, 4
	bnez	$a4, .LBB9_14
.LBB9_15:                               # %pair_save.exit
	pcalau12i	$a0, %pc_hi20(best_pair)
	st.d	$s1, $a0, %pc_lo12(best_pair)
.LBB9_16:                               # %if.end
	pcalau12i	$a0, %got_pc_hi20(debug)
	ld.d	$a0, $a0, %got_pc_lo12(debug)
	ld.bu	$a0, $a0, 1
	andi	$a0, $a0, 8
	beqz	$a0, .LBB9_22
# %bb.17:                               # %if.end
	pcalau12i	$a0, %got_pc_hi20(trace)
	ld.d	$a0, $a0, %got_pc_lo12(trace)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB9_22
# %bb.18:                               # %if.then11
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB9_21
# %bb.19:                               # %for.body.lr.ph.i12
	move	$s1, $zero
	move	$s2, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$s0, $a0, %pc_lo12(.L.str.8)
	.p2align	4, , 16
.LBB9_20:                               # %for.body.i15
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 8
	ld.d	$a2, $fp, 16
	ldx.w	$a1, $a0, $s1
	ldx.w	$a2, $a2, $s1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 4
	blt	$s2, $a0, .LBB9_20
.LBB9_21:                               # %print_pair.exit
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
.LBB9_22:                               # %if.end14
	move	$a0, $zero
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB9_23:                               # %vector.memcheck
	sub.d	$a5, $a0, $s2
	ori	$a4, $zero, 64
	move	$a3, $zero
	bltu	$a5, $a4, .LBB9_13
# %bb.24:                               # %vector.memcheck
	sub.d	$a5, $s2, $a1
	bltu	$a5, $a4, .LBB9_13
# %bb.25:                               # %vector.memcheck
	sub.d	$a5, $a2, $s2
	ori	$a4, $zero, 64
	bltu	$a5, $a4, .LBB9_13
# %bb.26:                               # %vector.memcheck
	sub.d	$a5, $a0, $a1
	bltu	$a5, $a4, .LBB9_13
# %bb.27:                               # %vector.memcheck
	sub.d	$a4, $a0, $a2
	ori	$a5, $zero, 64
	bltu	$a4, $a5, .LBB9_13
# %bb.28:                               # %vector.main.loop.iter.check
	ori	$a3, $zero, 16
	bgeu	$s4, $a3, .LBB9_30
# %bb.29:
	move	$a3, $zero
	b	.LBB9_34
.LBB9_30:                               # %vector.ph40
	bstrpick.d	$a3, $s4, 30, 4
	slli.d	$a3, $a3, 4
	addi.d	$a4, $a1, 32
	addi.d	$a5, $a0, 32
	addi.d	$a6, $s2, 32
	addi.d	$a7, $a2, 32
	move	$t0, $a3
	.p2align	4, , 16
.LBB9_31:                               # %vector.body43
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a4, -32
	xvld	$xr1, $a4, 0
	xvst	$xr0, $a6, -32
	xvst	$xr1, $a6, 0
	xvld	$xr0, $a7, -32
	xvld	$xr1, $a7, 0
	xvst	$xr0, $a5, -32
	xvst	$xr1, $a5, 0
	addi.d	$t0, $t0, -16
	addi.d	$a4, $a4, 64
	addi.d	$a5, $a5, 64
	addi.d	$a6, $a6, 64
	addi.d	$a7, $a7, 64
	bnez	$t0, .LBB9_31
# %bb.32:                               # %middle.block50
	beq	$a3, $s4, .LBB9_15
# %bb.33:                               # %vec.epilog.iter.check
	andi	$a4, $s4, 12
	beqz	$a4, .LBB9_13
.LBB9_34:                               # %vec.epilog.ph
	move	$t0, $a3
	bstrpick.d	$a3, $s4, 30, 2
	slli.d	$a3, $a3, 2
	sub.d	$a4, $t0, $a3
	alsl.d	$a5, $t0, $a0, 2
	alsl.d	$a6, $t0, $a2, 2
	alsl.d	$a7, $t0, $s2, 2
	alsl.d	$t0, $t0, $a1, 2
	.p2align	4, , 16
.LBB9_35:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $t0, 0
	vst	$vr0, $a7, 0
	vld	$vr0, $a6, 0
	vst	$vr0, $a5, 0
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 16
	addi.d	$a6, $a6, 16
	addi.d	$a7, $a7, 16
	addi.d	$t0, $t0, 16
	bnez	$a4, .LBB9_35
# %bb.36:                               # %vec.epilog.middle.block
	bne	$a3, $s4, .LBB9_13
	b	.LBB9_15
.Lfunc_end9:
	.size	find_best_cost, .Lfunc_end9-find_best_cost
                                        # -- End function
	.globl	pair_all                        # -- Begin function pair_all
	.p2align	5
	.type	pair_all,@function
pair_all:                               # @pair_all
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(global_PLA)
	st.d	$fp, $a0, %pc_lo12(global_PLA)
	ld.d	$a0, $fp, 0
	ld.w	$a0, $a0, 12
	pcalau12i	$a2, %pc_hi20(pair_minim_strategy)
	st.w	$a1, $a2, %pc_lo12(pair_minim_strategy)
	addi.d	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(best_cost)
	st.w	$a0, $a1, %pc_lo12(best_cost)
	pcalau12i	$s6, %pc_hi20(best_pair)
	st.d	$zero, $s6, %pc_lo12(best_pair)
	pcalau12i	$s7, %pc_hi20(best_phase)
	st.d	$zero, $s7, %pc_lo12(best_phase)
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s8, $a0, %got_pc_lo12(cube)
	pcalau12i	$s3, %pc_hi20(best_R)
	st.d	$zero, $s3, %pc_lo12(best_R)
	pcalau12i	$s4, %pc_hi20(best_D)
	ld.w	$s1, $s8, 8
	st.d	$zero, $s4, %pc_lo12(best_D)
	pcalau12i	$s5, %pc_hi20(best_F)
	st.d	$zero, $s5, %pc_lo12(best_F)
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.w	$zero, $a0, 0
	slli.d	$s2, $s1, 2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 16
	ori	$a1, $zero, 33
	ori	$a0, $zero, 8
	blt	$s1, $a1, .LBB10_2
# %bb.1:                                # %cond.false
	addi.d	$a0, $s1, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB10_2:                               # %cond.end
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s8, 8
	pcaddu18i	$ra, %call36(set_fill)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s8, 8
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(minimize_pair)
	addi.d	$a3, $a0, %pc_lo12(minimize_pair)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(generate_all_pairs)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 8
	beqz	$a0, .LBB10_4
# %bb.3:                                # %if.then.i
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, 8
.LBB10_4:                               # %if.end.i
	ld.d	$a0, $s0, 16
	beqz	$a0, .LBB10_6
# %bb.5:                                # %if.then4.i
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB10_6:                               # %pair_free.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB10_8
# %bb.7:                                # %if.then
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB10_8:                               # %if.end
	ld.d	$a0, $s6, %pc_lo12(best_pair)
	ld.d	$a1, $s7, %pc_lo12(best_phase)
	st.d	$a0, $fp, 48
	st.d	$a1, $fp, 40
	ori	$a1, $zero, 1
	ori	$s0, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(set_pair1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 48
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	blt	$a0, $s0, .LBB10_11
# %bb.9:                                # %for.body.lr.ph.i
	move	$s2, $zero
	move	$s6, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$s0, $a0, %pc_lo12(.L.str.8)
	.p2align	4, , 16
.LBB10_10:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 8
	ld.d	$a2, $s1, 16
	ldx.w	$a1, $a0, $s2
	ldx.w	$a2, $a2, $s2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	addi.d	$s6, $s6, 1
	addi.d	$s2, $s2, 4
	blt	$s6, $a0, .LBB10_10
.LBB10_11:                              # %print_pair.exit
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(best_F)
	st.d	$a0, $fp, 0
	ld.d	$a0, $s4, %pc_lo12(best_D)
	ld.d	$a1, $s3, %pc_lo12(best_R)
	st.d	$a0, $fp, 8
	st.d	$a1, $fp, 16
	move	$a0, $zero
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end10:
	.size	pair_all, .Lfunc_end10-pair_all
                                        # -- End function
	.globl	minimize_pair                   # -- Begin function minimize_pair
	.p2align	5
	.type	minimize_pair,@function
minimize_pair:                          # @minimize_pair
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
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$s7, %pc_hi20(global_PLA)
	ld.d	$a1, $s7, %pc_lo12(global_PLA)
	ld.d	$a1, $a1, 0
	move	$s3, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(sf_save)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, %pc_lo12(global_PLA)
	ld.d	$a1, $a1, 8
	move	$s6, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(sf_save)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, %pc_lo12(global_PLA)
	ld.d	$a1, $a1, 16
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	move	$a0, $a1
	pcaddu18i	$ra, %call36(sf_save)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(cube)
	ld.d	$s8, $a1, %got_pc_lo12(cube)
	ld.w	$fp, $s8, 4
	ld.w	$a1, $s8, 8
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$s2, $a0
	blt	$fp, $a1, .LBB11_14
# %bb.1:                                # %iter.check
	ld.d	$a0, $s8, 32
	ori	$a2, $zero, 4
	move	$a1, $zero
	bltu	$fp, $a2, .LBB11_12
# %bb.2:                                # %iter.check
	sub.d	$a2, $s2, $a0
	ori	$a3, $zero, 64
	bltu	$a2, $a3, .LBB11_12
# %bb.3:                                # %vector.main.loop.iter.check
	ori	$a1, $zero, 16
	bgeu	$fp, $a1, .LBB11_5
# %bb.4:
	move	$a1, $zero
	b	.LBB11_9
.LBB11_5:                               # %vector.ph
	bstrpick.d	$a1, $fp, 30, 4
	slli.d	$a1, $a1, 4
	addi.d	$a2, $s2, 32
	addi.d	$a3, $a0, 32
	move	$a4, $a1
	.p2align	4, , 16
.LBB11_6:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a3, -32
	xvld	$xr1, $a3, 0
	xvst	$xr0, $a2, -32
	xvst	$xr1, $a2, 0
	addi.d	$a4, $a4, -16
	addi.d	$a2, $a2, 64
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB11_6
# %bb.7:                                # %middle.block
	beq	$a1, $fp, .LBB11_14
# %bb.8:                                # %vec.epilog.iter.check
	andi	$a2, $fp, 12
	beqz	$a2, .LBB11_12
.LBB11_9:                               # %vec.epilog.ph
	move	$a4, $a1
	bstrpick.d	$a1, $fp, 30, 2
	slli.d	$a1, $a1, 2
	sub.d	$a2, $a4, $a1
	alsl.d	$a3, $a4, $s2, 2
	alsl.d	$a4, $a4, $a0, 2
	.p2align	4, , 16
.LBB11_10:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, 0
	vst	$vr0, $a3, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	bnez	$a2, .LBB11_10
# %bb.11:                               # %vec.epilog.middle.block
	beq	$a1, $fp, .LBB11_14
.LBB11_12:                              # %for.body.preheader
	alsl.d	$a2, $a1, $s2, 2
	alsl.d	$a0, $a1, $a0, 2
	sub.d	$a1, $fp, $a1
	.p2align	4, , 16
.LBB11_13:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a0, 0
	st.w	$a3, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB11_13
.LBB11_14:                              # %for.end
	ld.d	$a0, $s7, %pc_lo12(global_PLA)
	st.d	$s3, $a0, 48
	move	$a1, $zero
	pcaddu18i	$ra, %call36(set_pair1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(summary)
	ld.d	$s0, $a0, %got_pc_lo12(summary)
	ld.w	$a0, $s0, 0
	beqz	$a0, .LBB11_19
# %bb.15:                               # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB11_18
# %bb.16:                               # %for.body.lr.ph.i
	move	$s1, $zero
	move	$s5, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$s4, $a0, %pc_lo12(.L.str.8)
	.p2align	4, , 16
.LBB11_17:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 8
	ld.d	$a2, $s3, 16
	ldx.w	$a1, $a0, $s1
	ldx.w	$a2, $a2, $s1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 0
	addi.d	$s5, $s5, 1
	addi.d	$s1, $s1, 4
	blt	$s5, $a0, .LBB11_17
.LBB11_18:                              # %print_pair.exit
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
.LBB11_19:                              # %if.end
	pcalau12i	$a0, %pc_hi20(pair_minim_strategy)
	ld.w	$a0, $a0, %pc_lo12(pair_minim_strategy)
	beqz	$a0, .LBB11_27
# %bb.20:                               # %if.end
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB11_25
# %bb.21:                               # %if.end
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB11_30
# %bb.22:                               # %sw.bb
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, %pc_lo12(global_PLA)
	move	$s4, $a0
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(phase_assignment)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 0
	beqz	$a0, .LBB11_30
# %bb.23:                               # %if.end14
	ld.d	$a0, $s7, %pc_lo12(global_PLA)
	ld.d	$s5, $a0, 0
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	sub.d	$a2, $a0, $s4
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a1, $a0, %pc_lo12(.L.str.10)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(print_trace)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 0
	beqz	$a0, .LBB11_30
# %bb.24:                               # %if.then16
	ld.d	$a0, $s7, %pc_lo12(global_PLA)
	ld.d	$a0, $a0, 40
	pcaddu18i	$ra, %call36(pc1)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB11_30
.LBB11_25:                              # %sw.bb20
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s7, %pc_lo12(global_PLA)
	ld.d	$a4, $a2, 0
	ld.d	$a1, $a2, 8
	ld.d	$a2, $a2, 16
	move	$s4, $a0
	ori	$a3, $zero, 1
	move	$a0, $a4
	pcaddu18i	$ra, %call36(minimize_exact)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, %pc_lo12(global_PLA)
	ld.w	$a2, $s0, 0
	st.d	$a0, $a1, 0
	beqz	$a2, .LBB11_30
# %bb.26:                               # %if.then29
	move	$s5, $a0
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	sub.d	$a2, $a0, $s4
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	b	.LBB11_29
.LBB11_27:                              # %sw.bb34
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s7, %pc_lo12(global_PLA)
	ld.d	$a3, $a2, 0
	ld.d	$a1, $a2, 8
	ld.d	$a2, $a2, 16
	move	$s4, $a0
	move	$a0, $a3
	pcaddu18i	$ra, %call36(espresso)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, %pc_lo12(global_PLA)
	ld.w	$a2, $s0, 0
	st.d	$a0, $a1, 0
	beqz	$a2, .LBB11_30
# %bb.28:                               # %if.then43
	move	$s5, $a0
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	sub.d	$a2, $a0, $s4
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
.LBB11_29:                              # %sw.epilog
	move	$a0, $s5
	pcaddu18i	$ra, %call36(print_trace)
	jirl	$ra, $ra, 0
.LBB11_30:                              # %sw.epilog
	ld.d	$s1, $s7, %pc_lo12(global_PLA)
	ld.d	$a0, $s1, 0
	ld.w	$a0, $a0, 12
	pcalau12i	$a1, %pc_hi20(best_cost)
	ld.w	$a2, $a1, %pc_lo12(best_cost)
	bge	$a0, $a2, .LBB11_48
# %bb.31:                               # %if.then51
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	st.w	$a0, $a1, %pc_lo12(best_cost)
	ld.w	$s0, $s3, 0
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	slli.d	$s6, $s0, 2
	move	$a0, $s6
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	st.d	$a0, $s4, 8
	move	$a0, $s6
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, 16
	ori	$a1, $zero, 1
	st.w	$s0, $s4, 0
	blt	$s0, $a1, .LBB11_36
# %bb.32:                               # %iter.check52
	ld.d	$a1, $s3, 8
	ld.d	$a2, $s3, 16
	ori	$a3, $zero, 4
	bgeu	$s0, $a3, .LBB11_51
# %bb.33:
	move	$a3, $zero
.LBB11_34:                              # %for.body.i16.preheader
	sub.d	$a4, $s0, $a3
	alsl.d	$a0, $a3, $a0, 2
	alsl.d	$a2, $a3, $a2, 2
	alsl.d	$a5, $a3, $s5, 2
	alsl.d	$a1, $a3, $a1, 2
	.p2align	4, , 16
.LBB11_35:                              # %for.body.i16
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, 0
	st.w	$a3, $a5, 0
	ld.w	$a3, $a2, 0
	st.w	$a3, $a0, 0
	addi.d	$a4, $a4, -1
	addi.d	$a0, $a0, 4
	addi.d	$a2, $a2, 4
	addi.d	$a5, $a5, 4
	addi.d	$a1, $a1, 4
	bnez	$a4, .LBB11_35
.LBB11_36:                              # %pair_save.exit
	ld.d	$s3, $s1, 40
	pcalau12i	$a0, %pc_hi20(best_pair)
	st.d	$s4, $a0, %pc_lo12(best_pair)
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	beqz	$s3, .LBB11_40
# %bb.37:                               # %cond.true
	ld.w	$a0, $s3, 0
	slli.d	$a0, $a0, 5
	bstrpick.d	$a0, $a0, 14, 5
	slli.d	$a1, $a0, 5
	ori	$a2, $zero, 33
	ori	$a0, $zero, 8
	bltu	$a1, $a2, .LBB11_39
# %bb.38:                               # %cond.false
	addi.d	$a0, $a1, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB11_39:                              # %cond.end
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	b	.LBB11_41
.LBB11_40:
	move	$a0, $zero
.LBB11_41:                              # %cond.end76
	pcalau12i	$s0, %pc_hi20(best_F)
	ld.d	$a1, $s0, %pc_lo12(best_F)
	pcalau12i	$a2, %pc_hi20(best_phase)
	st.d	$a0, $a2, %pc_lo12(best_phase)
	beqz	$a1, .LBB11_43
# %bb.42:                               # %if.then80
	move	$a0, $a1
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
.LBB11_43:                              # %if.end81
	pcalau12i	$s1, %pc_hi20(best_D)
	ld.d	$a0, $s1, %pc_lo12(best_D)
	beqz	$a0, .LBB11_45
# %bb.44:                               # %if.then84
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
.LBB11_45:                              # %if.end85
	pcalau12i	$s3, %pc_hi20(best_R)
	ld.d	$a0, $s3, %pc_lo12(best_R)
	beqz	$a0, .LBB11_47
# %bb.46:                               # %if.then88
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
.LBB11_47:                              # %if.end89
	ld.d	$a0, $s7, %pc_lo12(global_PLA)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(sf_save)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, %pc_lo12(global_PLA)
	ld.d	$a1, $a1, 8
	st.d	$a0, $s0, %pc_lo12(best_F)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(sf_save)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, %pc_lo12(global_PLA)
	ld.d	$a1, $a1, 16
	st.d	$a0, $s1, %pc_lo12(best_D)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(sf_save)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, %pc_lo12(best_R)
.LBB11_48:                              # %if.end96
	pcaddu18i	$ra, %call36(setdown_cube)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 32
	beqz	$a0, .LBB11_50
# %bb.49:                               # %if.then98
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB11_50:                              # %if.end99
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.w	$a0, $s8, 8
	st.w	$fp, $s8, 4
	st.d	$s2, $s8, 32
	pcaddu18i	$ra, %call36(cube_setup)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, %pc_lo12(global_PLA)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, %pc_lo12(global_PLA)
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, %pc_lo12(global_PLA)
	ld.d	$a0, $a0, 16
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, %pc_lo12(global_PLA)
	st.d	$s6, $a0, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.d	$a1, $a0, 8
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.d	$a1, $a0, 16
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 40
	move	$a0, $zero
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
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
.LBB11_51:                              # %vector.memcheck39
	sub.d	$a5, $a0, $s5
	ori	$a4, $zero, 64
	move	$a3, $zero
	bltu	$a5, $a4, .LBB11_34
# %bb.52:                               # %vector.memcheck39
	sub.d	$a5, $s5, $a1
	bltu	$a5, $a4, .LBB11_34
# %bb.53:                               # %vector.memcheck39
	sub.d	$a5, $a2, $s5
	ori	$a4, $zero, 64
	bltu	$a5, $a4, .LBB11_34
# %bb.54:                               # %vector.memcheck39
	sub.d	$a5, $a0, $a1
	bltu	$a5, $a4, .LBB11_34
# %bb.55:                               # %vector.memcheck39
	sub.d	$a4, $a0, $a2
	ori	$a5, $zero, 64
	bltu	$a4, $a5, .LBB11_34
# %bb.56:                               # %vector.main.loop.iter.check54
	ori	$a3, $zero, 16
	bgeu	$s0, $a3, .LBB11_58
# %bb.57:
	move	$a3, $zero
	b	.LBB11_62
.LBB11_58:                              # %vector.ph55
	bstrpick.d	$a3, $s0, 30, 4
	slli.d	$a3, $a3, 4
	addi.d	$a4, $a1, 32
	addi.d	$a5, $a0, 32
	addi.d	$a6, $s5, 32
	addi.d	$a7, $a2, 32
	move	$t0, $a3
	.p2align	4, , 16
.LBB11_59:                              # %vector.body58
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a4, -32
	xvld	$xr1, $a4, 0
	xvst	$xr0, $a6, -32
	xvst	$xr1, $a6, 0
	xvld	$xr0, $a7, -32
	xvld	$xr1, $a7, 0
	xvst	$xr0, $a5, -32
	xvst	$xr1, $a5, 0
	addi.d	$t0, $t0, -16
	addi.d	$a4, $a4, 64
	addi.d	$a5, $a5, 64
	addi.d	$a6, $a6, 64
	addi.d	$a7, $a7, 64
	bnez	$t0, .LBB11_59
# %bb.60:                               # %middle.block65
	beq	$a3, $s0, .LBB11_36
# %bb.61:                               # %vec.epilog.iter.check70
	andi	$a4, $s0, 12
	beqz	$a4, .LBB11_34
.LBB11_62:                              # %vec.epilog.ph69
	move	$t0, $a3
	bstrpick.d	$a3, $s0, 30, 2
	slli.d	$a3, $a3, 2
	sub.d	$a4, $t0, $a3
	alsl.d	$a5, $t0, $a0, 2
	alsl.d	$a6, $t0, $a2, 2
	alsl.d	$a7, $t0, $s5, 2
	alsl.d	$t0, $t0, $a1, 2
	.p2align	4, , 16
.LBB11_63:                              # %vec.epilog.vector.body75
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $t0, 0
	vst	$vr0, $a7, 0
	vld	$vr0, $a6, 0
	vst	$vr0, $a5, 0
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 16
	addi.d	$a6, $a6, 16
	addi.d	$a7, $a7, 16
	addi.d	$t0, $t0, 16
	bnez	$a4, .LBB11_63
# %bb.64:                               # %vec.epilog.middle.block80
	bne	$a3, $s0, .LBB11_34
	b	.LBB11_36
.Lfunc_end11:
	.size	minimize_pair, .Lfunc_end11-minimize_pair
                                        # -- End function
	.globl	generate_all_pairs              # -- Begin function generate_all_pairs
	.p2align	5
	.type	generate_all_pairs,@function
generate_all_pairs:                     # @generate_all_pairs
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
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	move	$s1, $a3
	move	$s2, $a1
	move	$s4, $a0
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	move	$a0, $a2
	pcaddu18i	$ra, %call36(set_ord)
	jirl	$ra, $ra, 0
	ori	$s0, $zero, 1
	blt	$s0, $a0, .LBB12_2
# %bb.1:                                # %if.then
	move	$a0, $s4
	jirl	$ra, $s1, 0
	b	.LBB12_28
.LBB12_2:                               # %if.end
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	slli.d	$s5, $s2, 2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	st.d	$a0, $fp, 8
	move	$a0, $s5
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$t1, $s4, 0
	st.d	$a0, $fp, 16
	st.w	$t1, $fp, 0
	blt	$t1, $s0, .LBB12_7
# %bb.3:                                # %iter.check
	ld.d	$a1, $s4, 8
	ld.d	$a2, $s4, 16
	ori	$a3, $zero, 4
	bgeu	$t1, $a3, .LBB12_29
# %bb.4:
	move	$a3, $zero
.LBB12_5:                               # %for.body.i.preheader
	sub.d	$a4, $t1, $a3
	alsl.d	$a0, $a3, $a0, 2
	alsl.d	$a2, $a3, $a2, 2
	alsl.d	$a5, $a3, $s3, 2
	alsl.d	$a1, $a3, $a1, 2
	.p2align	4, , 16
.LBB12_6:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, 0
	st.w	$a3, $a5, 0
	ld.w	$a3, $a2, 0
	st.w	$a3, $a0, 0
	addi.d	$a4, $a4, -1
	addi.d	$a0, $a0, 4
	addi.d	$a2, $a2, 4
	addi.d	$a5, $a5, 4
	addi.d	$a1, $a1, 4
	bnez	$a4, .LBB12_6
.LBB12_7:                               # %pair_save.exit
	move	$s0, $t1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	slli.d	$a0, $a0, 5
	bstrpick.d	$a0, $a0, 14, 5
	slli.d	$a1, $a0, 5
	ori	$a2, $zero, 33
	ori	$a0, $zero, 8
	bltu	$a1, $a2, .LBB12_9
# %bb.8:                                # %cond.false
	addi.d	$a0, $a1, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB12_9:                               # %cond.end
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	move	$s3, $a0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	move	$s4, $zero
	blt	$a1, $a2, .LBB12_15
# %bb.10:                               # %for.body.preheader
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	move	$a3, $s0
	.p2align	4, , 16
.LBB12_11:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a0, $s4, 31, 5
	slli.d	$a0, $a0, 2
	bstrpick.d	$a0, $a0, 60, 2
	alsl.d	$a0, $a0, $a2, 2
	ld.w	$a0, $a0, 4
	srl.w	$a0, $a0, $s4
	andi	$a0, $a0, 1
	bnez	$a0, .LBB12_14
# %bb.12:                               # %for.inc
                                        #   in Loop: Header=BB12_11 Depth=1
	addi.w	$s4, $s4, 1
	bne	$a1, $s4, .LBB12_11
# %bb.13:
	move	$s4, $a1
.LBB12_14:                              # %for.end
	addi.w	$s8, $s4, 1
	bstrpick.d	$a0, $s4, 31, 5
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	blt	$s8, $a1, .LBB12_16
	b	.LBB12_20
.LBB12_15:
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	move	$a3, $s0
	addi.w	$s8, $s4, 1
	bstrpick.d	$a0, $s4, 31, 5
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	bge	$s8, $a1, .LBB12_20
.LBB12_16:                              # %for.body24.lr.ph
	ori	$a0, $zero, 1
	sll.w	$s6, $a0, $s4
	nor	$s0, $s6, $zero
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	bstrpick.d	$a0, $a0, 60, 2
	alsl.d	$s2, $a0, $s3, 2
	move	$s7, $s8
	b	.LBB12_18
	.p2align	4, , 16
.LBB12_17:                              # %for.inc74
                                        #   in Loop: Header=BB12_18 Depth=1
	beq	$a1, $s7, .LBB12_20
.LBB12_18:                              # %for.body24
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a0, $s7, 31, 5
	addi.d	$a0, $a0, 1
	slli.d	$s1, $a0, 2
	ldx.w	$a0, $a2, $s1
	ori	$a4, $zero, 1
	sll.w	$s5, $a4, $s7
	and	$a0, $a0, $s5
	addi.w	$s7, $s7, 1
	beqz	$a0, .LBB12_17
# %bb.19:                               # %if.then33
                                        #   in Loop: Header=BB12_18 Depth=1
	ld.w	$a0, $s2, 4
	and	$a0, $a0, $s0
	st.w	$a0, $s2, 4
	ldx.w	$a0, $s3, $s1
	ld.d	$a2, $fp, 8
	andn	$a0, $a0, $s5
	stx.w	$a0, $s3, $s1
	slli.d	$a0, $a3, 2
	stx.w	$s8, $a2, $a0
	ld.w	$a0, $fp, 0
	ld.d	$a2, $fp, 16
	slli.d	$a0, $a0, 2
	stx.w	$s7, $a2, $a0
	ld.w	$a0, $fp, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 0
	move	$a0, $fp
	move	$a2, $s3
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(generate_all_pairs)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a0, $fp, 0
	addi.w	$a3, $a0, -1
	st.w	$a3, $fp, 0
	ld.w	$a0, $s2, 4
	or	$a0, $a0, $s6
	st.w	$a0, $s2, 4
	ldx.w	$a0, $s3, $s1
	or	$a0, $a0, $s5
	stx.w	$a0, $s3, $s1
	b	.LBB12_17
.LBB12_20:                              # %for.end76
	move	$a0, $a2
	pcaddu18i	$ra, %call36(set_ord)
	jirl	$ra, $ra, 0
	bstrins.d	$a0, $zero, 30, 1
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB12_22
# %bb.21:                               # %if.then80
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	bstrpick.d	$a0, $a0, 60, 2
	alsl.d	$a0, $a0, $s3, 2
	ld.w	$a2, $a0, 4
	sll.w	$a1, $a1, $s4
	andn	$a1, $a2, $a1
	st.w	$a1, $a0, 4
	move	$a0, $fp
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	move	$a2, $s3
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(generate_all_pairs)
	jirl	$ra, $ra, 0
.LBB12_22:                              # %if.end90
	ld.d	$a0, $fp, 8
	beqz	$a0, .LBB12_24
# %bb.23:                               # %if.then.i
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 8
.LBB12_24:                              # %if.end.i
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB12_26
# %bb.25:                               # %if.then4.i
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB12_26:                              # %pair_free.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	beqz	$s3, .LBB12_28
# %bb.27:                               # %if.then93
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB12_28:                              # %cleanup
	move	$a0, $zero
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
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
.LBB12_29:                              # %vector.memcheck
	sub.d	$a5, $a0, $s3
	ori	$a4, $zero, 64
	move	$a3, $zero
	bltu	$a5, $a4, .LBB12_5
# %bb.30:                               # %vector.memcheck
	sub.d	$a5, $s3, $a1
	bltu	$a5, $a4, .LBB12_5
# %bb.31:                               # %vector.memcheck
	sub.d	$a5, $a2, $s3
	ori	$a4, $zero, 64
	bltu	$a5, $a4, .LBB12_5
# %bb.32:                               # %vector.memcheck
	sub.d	$a5, $a0, $a1
	bltu	$a5, $a4, .LBB12_5
# %bb.33:                               # %vector.memcheck
	sub.d	$a4, $a0, $a2
	ori	$a5, $zero, 64
	bltu	$a4, $a5, .LBB12_5
# %bb.34:                               # %vector.main.loop.iter.check
	ori	$a3, $zero, 16
	bgeu	$t1, $a3, .LBB12_36
# %bb.35:
	move	$a3, $zero
	b	.LBB12_40
.LBB12_36:                              # %vector.ph
	bstrpick.d	$a3, $t1, 30, 4
	slli.d	$a3, $a3, 4
	addi.d	$a4, $a1, 32
	addi.d	$a5, $a0, 32
	addi.d	$a6, $s3, 32
	addi.d	$a7, $a2, 32
	move	$t0, $a3
	.p2align	4, , 16
.LBB12_37:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a4, -32
	xvld	$xr1, $a4, 0
	xvst	$xr0, $a6, -32
	xvst	$xr1, $a6, 0
	xvld	$xr0, $a7, -32
	xvld	$xr1, $a7, 0
	xvst	$xr0, $a5, -32
	xvst	$xr1, $a5, 0
	addi.d	$t0, $t0, -16
	addi.d	$a4, $a4, 64
	addi.d	$a5, $a5, 64
	addi.d	$a6, $a6, 64
	addi.d	$a7, $a7, 64
	bnez	$t0, .LBB12_37
# %bb.38:                               # %middle.block
	beq	$a3, $t1, .LBB12_7
# %bb.39:                               # %vec.epilog.iter.check
	andi	$a4, $t1, 12
	beqz	$a4, .LBB12_5
.LBB12_40:                              # %vec.epilog.ph
	move	$t0, $a3
	bstrpick.d	$a3, $t1, 30, 2
	slli.d	$a3, $a3, 2
	sub.d	$a4, $t0, $a3
	alsl.d	$a5, $t0, $a0, 2
	alsl.d	$a6, $t0, $a2, 2
	alsl.d	$a7, $t0, $s3, 2
	alsl.d	$t0, $t0, $a1, 2
	.p2align	4, , 16
.LBB12_41:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $t0, 0
	vst	$vr0, $a7, 0
	vld	$vr0, $a6, 0
	vst	$vr0, $a5, 0
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 16
	addi.d	$a6, $a6, 16
	addi.d	$a7, $a7, 16
	addi.d	$t0, $t0, 16
	bnez	$a4, .LBB12_41
# %bb.42:                               # %vec.epilog.middle.block
	bne	$a3, $t1, .LBB12_5
	b	.LBB12_7
.Lfunc_end12:
	.size	generate_all_pairs, .Lfunc_end12-generate_all_pairs
                                        # -- End function
	.globl	pair_new                        # -- Begin function pair_new
	.p2align	5
	.type	pair_new,@function
pair_new:                               # @pair_new
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.w	$zero, $a0, 0
	slli.d	$fp, $fp, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 16
	move	$a0, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end13:
	.size	pair_new, .Lfunc_end13-pair_new
                                        # -- End function
	.globl	pair_save                       # -- Begin function pair_save
	.p2align	5
	.type	pair_save,@function
pair_save:                              # @pair_save
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	slli.d	$s2, $fp, 2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$a0, $s1, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s0, 0
	st.d	$a0, $s1, 16
	ori	$a3, $zero, 1
	st.w	$a2, $s1, 0
	blt	$a2, $a3, .LBB14_5
# %bb.1:                                # %iter.check
	move	$a1, $a0
	ld.d	$a3, $s0, 8
	ld.d	$a4, $s0, 16
	ori	$a5, $zero, 4
	bgeu	$a2, $a5, .LBB14_6
# %bb.2:
	move	$a5, $zero
.LBB14_3:                               # %for.body.preheader
	alsl.d	$a1, $a5, $a1, 2
	alsl.d	$a4, $a5, $a4, 2
	alsl.d	$a6, $a5, $fp, 2
	alsl.d	$a3, $a5, $a3, 2
	sub.d	$a2, $a2, $a5
	.p2align	4, , 16
.LBB14_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a3, 0
	st.w	$a5, $a6, 0
	ld.w	$a5, $a4, 0
	st.w	$a5, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a4, $a4, 4
	addi.d	$a6, $a6, 4
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	bnez	$a2, .LBB14_4
.LBB14_5:                               # %for.end
	move	$a0, $s1
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB14_6:                               # %vector.memcheck
	sub.d	$a7, $a1, $fp
	ori	$a6, $zero, 64
	move	$a5, $zero
	bltu	$a7, $a6, .LBB14_3
# %bb.7:                                # %vector.memcheck
	sub.d	$a7, $fp, $a3
	bltu	$a7, $a6, .LBB14_3
# %bb.8:                                # %vector.memcheck
	sub.d	$a7, $a4, $fp
	ori	$a6, $zero, 64
	bltu	$a7, $a6, .LBB14_3
# %bb.9:                                # %vector.memcheck
	sub.d	$a7, $a1, $a3
	bltu	$a7, $a6, .LBB14_3
# %bb.10:                               # %vector.memcheck
	sub.d	$a6, $a1, $a4
	ori	$a7, $zero, 64
	bltu	$a6, $a7, .LBB14_3
# %bb.11:                               # %vector.main.loop.iter.check
	ori	$a5, $zero, 16
	bgeu	$a2, $a5, .LBB14_13
# %bb.12:
	move	$a5, $zero
	b	.LBB14_17
.LBB14_13:                              # %vector.ph
	bstrpick.d	$a5, $a2, 30, 4
	slli.d	$a5, $a5, 4
	addi.d	$a6, $a3, 32
	addi.d	$a7, $a1, 32
	addi.d	$t0, $fp, 32
	addi.d	$t1, $a4, 32
	move	$t2, $a5
	.p2align	4, , 16
.LBB14_14:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a6, -32
	xvld	$xr1, $a6, 0
	xvst	$xr0, $t0, -32
	xvst	$xr1, $t0, 0
	xvld	$xr0, $t1, -32
	xvld	$xr1, $t1, 0
	xvst	$xr0, $a7, -32
	xvst	$xr1, $a7, 0
	addi.d	$t2, $t2, -16
	addi.d	$a6, $a6, 64
	addi.d	$a7, $a7, 64
	addi.d	$t0, $t0, 64
	addi.d	$t1, $t1, 64
	bnez	$t2, .LBB14_14
# %bb.15:                               # %middle.block
	beq	$a5, $a2, .LBB14_5
# %bb.16:                               # %vec.epilog.iter.check
	andi	$a6, $a2, 12
	beqz	$a6, .LBB14_3
.LBB14_17:                              # %vec.epilog.ph
	move	$t2, $a5
	bstrpick.d	$a5, $a2, 30, 2
	slli.d	$a5, $a5, 2
	sub.d	$a6, $t2, $a5
	alsl.d	$a7, $t2, $a1, 2
	alsl.d	$t0, $t2, $a4, 2
	alsl.d	$t1, $t2, $fp, 2
	alsl.d	$t2, $t2, $a3, 2
	.p2align	4, , 16
.LBB14_18:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $t2, 0
	vst	$vr0, $t1, 0
	vld	$vr0, $t0, 0
	vst	$vr0, $a7, 0
	addi.d	$a6, $a6, 4
	addi.d	$a7, $a7, 16
	addi.d	$t0, $t0, 16
	addi.d	$t1, $t1, 16
	addi.d	$t2, $t2, 16
	bnez	$a6, .LBB14_18
# %bb.19:                               # %vec.epilog.middle.block
	bne	$a5, $a2, .LBB14_3
	b	.LBB14_5
.Lfunc_end14:
	.size	pair_save, .Lfunc_end14-pair_save
                                        # -- End function
	.globl	pair_free                       # -- Begin function pair_free
	.p2align	5
	.type	pair_free,@function
pair_free:                              # @pair_free
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	beqz	$a0, .LBB15_2
# %bb.1:                                # %if.then
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 8
.LBB15_2:                               # %if.end
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB15_4
# %bb.3:                                # %if.then4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB15_4:                               # %if.end10
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end15:
	.size	pair_free, .Lfunc_end15-pair_free
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"can only pair binary-valued variables"
	.size	.L.str, 38

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"%s+%s"
	.size	.L.str.1, 6

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"    "
	.size	.L.str.2, 5

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"%3d "
	.size	.L.str.3, 5

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"# "
	.size	.L.str.5, 3

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"ESPRESSO  "
	.size	.L.str.6, 11

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"pair is"
	.size	.L.str.7, 8

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	" (%d %d)"
	.size	.L.str.8, 9

	.type	best_cost,@object               # @best_cost
	.local	best_cost
	.comm	best_cost,4,4
	.type	best_pair,@object               # @best_pair
	.local	best_pair
	.comm	best_pair,8,8
	.type	cost_array,@object              # @cost_array
	.local	cost_array
	.comm	cost_array,8,8
	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"cost is %d "
	.size	.L.str.9, 12

	.type	global_PLA,@object              # @global_PLA
	.local	global_PLA
	.comm	global_PLA,8,8
	.type	pair_minim_strategy,@object     # @pair_minim_strategy
	.local	pair_minim_strategy
	.comm	pair_minim_strategy,4,4
	.type	best_phase,@object              # @best_phase
	.local	best_phase
	.comm	best_phase,8,8
	.type	best_R,@object                  # @best_R
	.local	best_R
	.comm	best_R,8,8
	.type	best_D,@object                  # @best_D
	.local	best_D
	.comm	best_D,8,8
	.type	best_F,@object                  # @best_F
	.local	best_F
	.comm	best_F,8,8
	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"OPO       "
	.size	.L.str.10, 11

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"# phase is %s\n"
	.size	.L.str.11, 15

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"EXACT     "
	.size	.L.str.12, 11

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym find_best_cost
	.addrsig_sym minimize_pair
