	.file	"libclamav_readdb.c"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function cli_parse_add
.LCPI0_0:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	6                               # 0x6
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	7                               # 0x7
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.text
	.globl	cli_parse_add
	.p2align	5
	.type	cli_parse_add,@function
cli_parse_add:                          # @cli_parse_add
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	move	$s0, $a5
	move	$s8, $a4
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	move	$s5, $a2
	move	$s2, $a1
	move	$fp, $a0
	ori	$a1, $zero, 123
	move	$a0, $a2
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_5
# %bb.1:                                # %if.then
	ld.w	$a0, $fp, 64
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 64
	move	$a0, $s5
	pcaddu18i	$ra, %call36(cli_strdup)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_9
# %bb.2:                                # %if.end
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s8, $sp, 80                    # 8-byte Folded Spill
	move	$a0, $s5
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a1, $a0, 31, 0
	beqz	$a1, .LBB0_34
# %bb.3:                                # %iter.check
	ori	$a2, $zero, 4
	bgeu	$a1, $a2, .LBB0_13
# %bb.4:
	move	$a2, $zero
	move	$a3, $zero
	b	.LBB0_35
.LBB0_5:                                # %if.else111
	ori	$a1, $zero, 42
	move	$a0, $s5
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_10
# %bb.6:                                # %if.then114
	ld.w	$a0, $fp, 64
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 64
	move	$a0, $s5
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a1, $a0, 31, 0
	beqz	$a1, .LBB0_21
# %bb.7:                                # %for.body122.preheader
	ori	$a2, $zero, 8
	bgeu	$a1, $a2, .LBB0_15
# %bb.8:
	move	$a0, $zero
	move	$a2, $zero
	b	.LBB0_18
.LBB0_9:
	addi.w	$a0, $zero, -114
	b	.LBB0_87
.LBB0_10:                               # %if.else158
	ld.bu	$a0, $fp, 2
	beqz	$a0, .LBB0_62
.LBB0_11:                               # %if.then167
	andi	$a0, $s0, 255
	st.d	$a0, $sp, 16
	st.d	$s8, $sp, 8
	st.d	$zero, $sp, 0
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s5
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $zero
	ld.d	$a6, $sp, 96                    # 8-byte Folded Reload
	move	$a7, $zero
	pcaddu18i	$ra, %call36(cli_ac_addsig)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_21
# %bb.12:                               # %if.then171
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_82
.LBB0_13:                               # %vector.main.loop.iter.check
	ori	$a2, $zero, 16
	vrepli.b	$vr0, 123
	vrepli.b	$vr1, 42
	bgeu	$a1, $a2, .LBB0_26
# %bb.14:
	move	$a2, $zero
	move	$a3, $zero
	b	.LBB0_30
.LBB0_15:                               # %vector.ph293
	bstrpick.d	$a0, $a0, 31, 3
	slli.d	$a0, $a0, 3
	addi.d	$a2, $s5, 4
	vrepli.b	$vr0, 0
	vrepli.b	$vr1, 42
	vrepli.w	$vr2, 1
	move	$a3, $a0
	vori.b	$vr3, $vr0, 0
	.p2align	4, , 16
.LBB0_16:                               # %vector.body296
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, -4
	ld.w	$a5, $a2, 0
	vinsgr2vr.w	$vr4, $a4, 0
	vinsgr2vr.w	$vr5, $a5, 0
	vseq.b	$vr4, $vr4, $vr1
	vilvl.b	$vr4, $vr4, $vr4
	vilvl.h	$vr4, $vr4, $vr4
	vand.v	$vr4, $vr4, $vr2
	vseq.b	$vr5, $vr5, $vr1
	vilvl.b	$vr5, $vr5, $vr5
	vilvl.h	$vr5, $vr5, $vr5
	vand.v	$vr5, $vr5, $vr2
	vadd.w	$vr0, $vr0, $vr4
	vadd.w	$vr3, $vr3, $vr5
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB0_16
# %bb.17:                               # %middle.block303
	vadd.w	$vr0, $vr3, $vr0
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a2, $vr0, 0
	beq	$a1, $a0, .LBB0_20
.LBB0_18:                               # %for.body122.preheader313
	add.d	$a3, $s5, $a0
	sub.d	$a0, $a1, $a0
	.p2align	4, , 16
.LBB0_19:                               # %for.body122
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $a3, 0
	addi.d	$a1, $a1, -42
	sltui	$a1, $a1, 1
	add.d	$a2, $a2, $a1
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 1
	bnez	$a0, .LBB0_19
.LBB0_20:                               # %for.end133
	addi.w	$s1, $a2, 1
	ori	$a0, $zero, 2
	bgeu	$s1, $a0, .LBB0_22
.LBB0_21:
	move	$a0, $zero
	b	.LBB0_87
.LBB0_22:                               # %for.body141.lr.ph
	ori	$s4, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$s6, $a0, %pc_lo12(.L.str.2)
	andi	$s0, $s0, 255
	bstrpick.d	$s3, $s1, 15, 0
	.p2align	4, , 16
.LBB0_23:                               # %for.body141
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a1, $s4, -1
	move	$a0, $s5
	move	$a2, $s6
	pcaddu18i	$ra, %call36(cli_strtok)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_78
# %bb.24:                               # %if.end146
                                        #   in Loop: Header=BB0_23 Depth=1
	move	$s7, $a0
	ld.w	$a3, $fp, 64
	st.d	$s0, $sp, 16
	st.d	$s8, $sp, 8
	bstrpick.d	$a5, $s4, 15, 0
	st.d	$zero, $sp, 0
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s7
	move	$a4, $s3
	ld.d	$a6, $sp, 96                    # 8-byte Folded Reload
	move	$a7, $zero
	pcaddu18i	$ra, %call36(cli_ac_addsig)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_80
# %bb.25:                               # %if.end154
                                        #   in Loop: Header=BB0_23 Depth=1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.w	$s4, $s4, 1
	move	$a0, $zero
	bgeu	$s1, $s4, .LBB0_23
	b	.LBB0_87
.LBB0_26:                               # %vector.ph
	bstrpick.d	$a2, $a0, 31, 4
	pcalau12i	$a3, %pc_hi20(.LCPI0_0)
	xvld	$xr2, $a3, %pc_lo12(.LCPI0_0)
	slli.d	$a2, $a2, 4
	xvrepli.b	$xr3, 0
	addi.d	$a3, $s5, 8
	move	$a4, $a2
	xvori.b	$xr4, $xr3, 0
	.p2align	4, , 16
.LBB0_27:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a3, -8
	ld.d	$a6, $a3, 0
	vinsgr2vr.d	$vr5, $a5, 0
	vinsgr2vr.d	$vr6, $a6, 0
	vseq.b	$vr7, $vr5, $vr0
	vseq.b	$vr8, $vr6, $vr0
	vseq.b	$vr5, $vr5, $vr1
	vseq.b	$vr6, $vr6, $vr1
	vor.v	$vr5, $vr7, $vr5
	vor.v	$vr6, $vr8, $vr6
	xvpermi.d	$xr5, $xr5, 68
	xvshuf.b	$xr5, $xr0, $xr5, $xr2
	xvslli.w	$xr5, $xr5, 24
	xvsrai.w	$xr5, $xr5, 24
	xvsub.w	$xr3, $xr3, $xr5
	xvpermi.d	$xr5, $xr6, 68
	xvshuf.b	$xr5, $xr0, $xr5, $xr2
	xvslli.w	$xr5, $xr5, 24
	xvsrai.w	$xr5, $xr5, 24
	xvsub.w	$xr4, $xr4, $xr5
	addi.d	$a4, $a4, -16
	addi.d	$a3, $a3, 16
	bnez	$a4, .LBB0_27
# %bb.28:                               # %middle.block
	xvadd.w	$xr2, $xr4, $xr3
	xvpermi.d	$xr3, $xr2, 78
	xvshuf4i.w	$xr3, $xr3, 228
	xvadd.w	$xr2, $xr2, $xr3
	xvpermi.d	$xr3, $xr2, 68
	xvshuf4i.w	$xr3, $xr3, 14
	xvadd.w	$xr2, $xr2, $xr3
	xvpermi.d	$xr3, $xr2, 68
	xvrepl128vei.w	$xr3, $xr3, 1
	xvadd.w	$xr2, $xr2, $xr3
	xvpickve2gr.w	$a3, $xr2, 0
	beq	$a1, $a2, .LBB0_33
# %bb.29:                               # %vec.epilog.iter.check
	andi	$a4, $a0, 12
	beqz	$a4, .LBB0_35
.LBB0_30:                               # %vec.epilog.ph
	move	$a4, $a2
	bstrpick.d	$a0, $a0, 31, 2
	slli.d	$a2, $a0, 2
	vrepli.b	$vr2, 0
	vinsgr2vr.w	$vr2, $a3, 0
	sub.d	$a0, $a4, $a2
	add.d	$a3, $s5, $a4
	.p2align	4, , 16
.LBB0_31:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a3, 0
	vinsgr2vr.w	$vr3, $a4, 0
	vseq.b	$vr4, $vr3, $vr0
	vseq.b	$vr3, $vr3, $vr1
	vor.v	$vr3, $vr4, $vr3
	vilvl.b	$vr3, $vr3, $vr3
	vilvl.h	$vr3, $vr3, $vr3
	vslli.w	$vr3, $vr3, 24
	vsrai.w	$vr3, $vr3, 24
	vsub.w	$vr2, $vr2, $vr3
	addi.d	$a0, $a0, 4
	addi.d	$a3, $a3, 4
	bnez	$a0, .LBB0_31
# %bb.32:                               # %vec.epilog.middle.block
	vshuf4i.w	$vr0, $vr2, 14
	vadd.w	$vr0, $vr2, $vr0
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a3, $vr0, 0
	bne	$a1, $a2, .LBB0_35
.LBB0_33:                               # %for.end
	addi.w	$s4, $a3, 1
	ori	$a0, $zero, 2
	bgeu	$s4, $a0, .LBB0_40
.LBB0_34:                               # %for.end107
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB0_87
.LBB0_35:                               # %for.body.preheader
	add.d	$a0, $s5, $a2
	sub.d	$a1, $a1, $a2
	ori	$a2, $zero, 123
	ori	$a4, $zero, 42
	b	.LBB0_38
	.p2align	4, , 16
.LBB0_36:                               # %if.then14
                                        #   in Loop: Header=BB0_38 Depth=1
	addi.d	$a3, $a3, 1
.LBB0_37:                               # %for.inc
                                        #   in Loop: Header=BB0_38 Depth=1
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 1
	beqz	$a1, .LBB0_33
.LBB0_38:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a5, $a0, 0
	beq	$a5, $a2, .LBB0_36
# %bb.39:                               # %for.body
                                        #   in Loop: Header=BB0_38 Depth=1
	beq	$a5, $a4, .LBB0_36
	b	.LBB0_37
.LBB0_40:                               # %for.body25.lr.ph
	move	$s8, $zero
	move	$s3, $zero
	st.d	$zero, $sp, 88                  # 8-byte Folded Spill
	ori	$s1, $zero, 1
	andi	$a0, $s0, 255
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	bstrpick.d	$s5, $s4, 15, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$s2, $zero, 42
	ori	$s0, $zero, 123
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	move	$s7, $s6
	st.d	$s5, $sp, 40                    # 8-byte Folded Spill
	b	.LBB0_43
	.p2align	4, , 16
.LBB0_41:                               #   in Loop: Header=BB0_43 Depth=1
	move	$s3, $zero
	move	$s8, $zero
	move	$s7, $s6
.LBB0_42:                               # %for.inc105
                                        #   in Loop: Header=BB0_43 Depth=1
	addi.w	$s1, $s1, 1
	bltu	$s4, $s1, .LBB0_34
.LBB0_43:                               # %for.body25
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_46 Depth 2
	beq	$s1, $s4, .LBB0_76
# %bb.44:                               # %for.cond29.preheader
                                        #   in Loop: Header=BB0_43 Depth=1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_51
# %bb.45:                               # %for.body34.preheader
                                        #   in Loop: Header=BB0_43 Depth=1
	move	$a1, $zero
	ori	$a2, $zero, 1
	.p2align	4, , 16
.LBB0_46:                               # %for.body34
                                        #   Parent Loop BB0_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a3, $s7, $a1
	beq	$a3, $s2, .LBB0_50
# %bb.47:                               # %for.body34
                                        #   in Loop: Header=BB0_46 Depth=2
	beq	$a3, $s0, .LBB0_49
# %bb.48:                               # %for.inc51
                                        #   in Loop: Header=BB0_46 Depth=2
	bstrpick.d	$a1, $a2, 31, 0
	addi.w	$a2, $a2, 1
	bltu	$a1, $a0, .LBB0_46
	b	.LBB0_51
	.p2align	4, , 16
.LBB0_49:                               # %if.end54.loopexit.split.loop.exit
                                        #   in Loop: Header=BB0_43 Depth=1
	st.d	$zero, $sp, 88                  # 8-byte Folded Spill
	add.d	$s6, $s7, $a1
	b	.LBB0_51
	.p2align	4, , 16
.LBB0_50:                               # %if.end54.loopexit.split.loop.exit250
                                        #   in Loop: Header=BB0_43 Depth=1
	add.d	$s6, $s7, $a1
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
.LBB0_51:                               # %if.end54
                                        #   in Loop: Header=BB0_43 Depth=1
	st.b	$zero, $s6, 0
	ld.w	$a3, $fp, 64
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.d	$a0, $sp, 16
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $sp, 8
	bstrpick.d	$a5, $s1, 15, 0
	st.d	$s8, $sp, 0
	move	$a0, $fp
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	move	$a2, $s7
	move	$a4, $s5
	ld.d	$a6, $sp, 96                    # 8-byte Folded Reload
	move	$a7, $s3
	pcaddu18i	$ra, %call36(cli_ac_addsig)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_77
# %bb.52:                               # %if.end66
                                        #   in Loop: Header=BB0_43 Depth=1
	addi.d	$s6, $s6, 1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	bnez	$a0, .LBB0_41
# %bb.53:                               # %if.end69
                                        #   in Loop: Header=BB0_43 Depth=1
	ori	$a1, $zero, 125
	move	$a0, $s6
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_79
# %bb.54:                               # %if.end73
                                        #   in Loop: Header=BB0_43 Depth=1
	addi.d	$s7, $a0, 1
	st.b	$zero, $a0, 0
	ori	$a1, $zero, 45
	move	$a0, $s6
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_57
# %bb.55:                               # %if.else
                                        #   in Loop: Header=BB0_43 Depth=1
	move	$a0, $s6
	move	$a1, $zero
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_strtok)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_58
# %bb.56:                               # %if.then88
                                        #   in Loop: Header=BB0_43 Depth=1
	move	$s5, $a0
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	addi.w	$s3, $a0, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
	bgez	$s3, .LBB0_59
	b	.LBB0_79
.LBB0_57:                               # %if.then80
                                        #   in Loop: Header=BB0_43 Depth=1
	ori	$a2, $zero, 10
	move	$a0, $s6
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	addi.w	$s3, $a0, 0
	move	$s8, $s3
	bgez	$s3, .LBB0_42
	b	.LBB0_79
.LBB0_58:                               #   in Loop: Header=BB0_43 Depth=1
	move	$s3, $zero
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
.LBB0_59:                               # %if.end94
                                        #   in Loop: Header=BB0_43 Depth=1
	ori	$a1, $zero, 1
	move	$a0, $s6
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_strtok)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_61
# %bb.60:                               # %if.then97
                                        #   in Loop: Header=BB0_43 Depth=1
	ori	$a2, $zero, 10
	move	$s5, $a0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	addi.w	$s8, $a0, 0
	move	$a0, $s5
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	bgez	$s8, .LBB0_42
	b	.LBB0_79
.LBB0_61:                               #   in Loop: Header=BB0_43 Depth=1
	move	$s8, $zero
	b	.LBB0_42
.LBB0_62:                               # %lor.lhs.false161
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(strpbrk)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	bnez	$a1, .LBB0_11
# %bb.63:                               # %lor.lhs.false161
	bnez	$a0, .LBB0_11
# %bb.64:                               # %if.else173
	move	$s3, $s2
	ori	$a0, $zero, 1
	ori	$a1, $zero, 64
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	addi.w	$a0, $zero, -114
	beqz	$s2, .LBB0_87
# %bb.65:                               # %if.end177
	move	$s1, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(cli_hex2str)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 0
	beqz	$a0, .LBB0_84
# %bb.66:                               # %if.end181
	move	$s4, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	srli.d	$a0, $a0, 1
	st.h	$a0, $s2, 16
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	beqz	$s6, .LBB0_68
# %bb.67:                               # %if.then186
	move	$a0, $s6
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	nor	$a0, $a0, $zero
	add.d	$s5, $s5, $a0
.LBB0_68:                               # %if.end195
	addi.w	$a0, $s5, 0
	blez	$a0, .LBB0_83
# %bb.69:                               # %if.end200
	addi.d	$a0, $s5, 1
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 24
	beqz	$a0, .LBB0_88
# %bb.70:                               # %if.end208
	bstrpick.d	$a2, $s5, 30, 0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	beqz	$s8, .LBB0_72
# %bb.71:                               # %if.then213
	move	$a0, $s8
	pcaddu18i	$ra, %call36(cli_strdup)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 32
	beqz	$a0, .LBB0_89
.LBB0_72:                               # %if.end222
	ld.hu	$a0, $s2, 16
	ld.hu	$a1, $fp, 0
	st.b	$s0, $s2, 40
	bgeu	$a1, $a0, .LBB0_74
# %bb.73:                               # %if.then230
	st.h	$a0, $fp, 0
.LBB0_74:                               # %if.end233
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cli_bm_addpatt)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_21
# %bb.75:                               # %if.then236
	pcalau12i	$a1, %pc_hi20(.L.str.8)
	addi.d	$a1, $a1, %pc_lo12(.L.str.8)
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 24
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	b	.LBB0_81
.LBB0_76:                               # %if.end54.thread
	ld.w	$a3, $fp, 64
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.d	$a0, $sp, 16
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $sp, 8
	st.d	$s8, $sp, 0
	move	$a0, $fp
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	move	$a2, $s7
	move	$a4, $s5
	move	$a5, $s5
	ld.d	$a6, $sp, 96                    # 8-byte Folded Reload
	move	$a7, $s3
	pcaddu18i	$ra, %call36(cli_ac_addsig)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_34
.LBB0_77:                               # %if.then61
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	b	.LBB0_85
.LBB0_78:                               # %if.then145
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	move	$a1, $s4
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_86
.LBB0_79:                               # %if.then109.critedge
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	b	.LBB0_85
.LBB0_80:                               # %if.then153
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s7
.LBB0_81:                               # %cleanup
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_82:                               # %cleanup
	move	$a0, $fp
	b	.LBB0_87
.LBB0_83:                               # %if.then198
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_84:                               # %if.then180
	move	$a0, $s2
.LBB0_85:                               # %cleanup
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_86:                               # %cleanup
	addi.w	$a0, $zero, -116
.LBB0_87:                               # %cleanup
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.LBB0_88:                               # %if.then206
	ld.d	$a0, $s2, 0
	b	.LBB0_90
.LBB0_89:                               # %if.then218
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 24
.LBB0_90:                               # %cleanup
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	b	.LBB0_87
.Lfunc_end0:
	.size	cli_parse_add, .Lfunc_end0-cli_parse_add
                                        # -- End function
	.globl	cli_initengine                  # -- Begin function cli_initengine
	.p2align	5
	.type	cli_initengine,@function
cli_initengine:                         # @cli_initengine
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	ld.d	$a2, $a0, 0
	beqz	$a2, .LBB1_5
.LBB1_1:                                # %if.end13
	andi	$a0, $a1, 8
	beqz	$a0, .LBB1_4
# %bb.2:                                # %land.lhs.true
	ld.d	$a0, $a2, 80
	ld.bu	$a0, $a0, 24
	andi	$a0, $a0, 1
	beqz	$a0, .LBB1_4
# %bb.3:                                # %if.then18
	move	$a0, $a2
	pcaddu18i	$ra, %call36(phishing_init)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_12
.LBB1_4:                                # %if.end23
	move	$a0, $zero
	b	.LBB1_12
.LBB1_5:                                # %if.then
	move	$fp, $a0
	move	$s0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 88
	ori	$s1, $zero, 1
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	beqz	$a0, .LBB1_9
# %bb.6:                                # %if.end
	st.w	$s1, $a0, 0
	ori	$a0, $zero, 7
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	st.d	$a0, $a1, 16
	beqz	$a0, .LBB1_10
# %bb.7:                                # %if.end7
	pcaddu18i	$ra, %call36(cli_dconf_init)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 0
	st.d	$a0, $a2, 80
	move	$a1, $s0
	bnez	$a0, .LBB1_1
# %bb.8:                                # %if.then11
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	b	.LBB1_11
.LBB1_9:                                # %if.then2
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	b	.LBB1_11
.LBB1_10:                               # %if.then6
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
.LBB1_11:                               # %cleanup
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -114
.LBB1_12:                               # %cleanup
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end1:
	.size	cli_initengine, .Lfunc_end1-cli_initengine
                                        # -- End function
	.globl	cl_loaddb                       # -- Begin function cl_loaddb
	.p2align	5
	.type	cl_loaddb,@function
cl_loaddb:                              # @cl_loaddb
# %bb.0:                                # %entry
	ori	$a3, $zero, 10
	pcaddu18i	$t8, %call36(cli_load)
	jr	$t8
.Lfunc_end2:
	.size	cl_loaddb, .Lfunc_end2-cl_loaddb
                                        # -- End function
	.p2align	5                               # -- Begin function cli_load
	.type	cli_load,@function
cli_load:                               # @cli_load
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s1, $a3
	move	$s3, $a2
	move	$s2, $a1
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a1, $a0, %pc_lo12(.L.str.45)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_3
# %bb.1:                                # %if.end
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a1, $a0, %pc_lo12(.L.str.21)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_4
.LBB3_2:                                # %if.end117
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s3
	move	$a3, $s1
	pcaddu18i	$ra, %call36(cli_loaddb)
	jirl	$ra, $ra, 0
	b	.LBB3_9
.LBB3_3:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a0, $a0, %pc_lo12(.L.str.46)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	addi.w	$s1, $zero, -115
	b	.LBB3_14
.LBB3_4:                                # %if.else
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a1, $a0, %pc_lo12(.L.str.37)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_6
# %bb.5:                                # %if.then6
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a1, $a0, %pc_lo12(.L.str.47)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	sltu	$a3, $zero, $a0
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s3
	move	$a4, $s1
	pcaddu18i	$ra, %call36(cli_cvdload)
	jirl	$ra, $ra, 0
	b	.LBB3_9
.LBB3_6:                                # %if.else12
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a1, $a0, %pc_lo12(.L.str.24)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_15
.LBB3_7:                                # %if.then15
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s3
	move	$a3, $zero
.LBB3_8:                                # %if.end117
	move	$a4, $s1
	pcaddu18i	$ra, %call36(cli_loadmd5)
	jirl	$ra, $ra, 0
.LBB3_9:                                # %if.end117
	move	$s1, $a0
	beqz	$a0, .LBB3_11
# %bb.10:                               # %if.then119
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cl_strerror)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a0, $a0, %pc_lo12(.L.str.50)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	b	.LBB3_13
.LBB3_11:                               # %if.else124
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
.LBB3_12:                               # %if.end126
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$s1, $zero
.LBB3_13:                               # %if.end126
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
.LBB3_14:                               # %cleanup
	move	$a0, $s1
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB3_15:                               # %if.else17
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a1, $a0, %pc_lo12(.L.str.25)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_18
# %bb.16:                               # %if.then20
	andi	$a0, $s1, 16
	bnez	$a0, .LBB3_7
.LBB3_17:                               # %if.then123
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	b	.LBB3_12
.LBB3_18:                               # %if.else26
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a1, $a0, %pc_lo12(.L.str.26)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_20
# %bb.19:                               # %if.then29
	ori	$a3, $zero, 2
	b	.LBB3_22
.LBB3_20:                               # %if.else31
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a1, $a0, %pc_lo12(.L.str.27)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_23
.LBB3_21:                               # %if.then34
	ori	$a3, $zero, 1
.LBB3_22:                               # %if.end117
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s3
	b	.LBB3_8
.LBB3_23:                               # %if.else36
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a1, $a0, %pc_lo12(.L.str.28)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_25
# %bb.24:                               # %if.then39
	andi	$a0, $s1, 16
	beqz	$a0, .LBB3_17
	b	.LBB3_21
.LBB3_25:                               # %if.else46
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a1, $a0, %pc_lo12(.L.str.29)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_28
.LBB3_26:                               # %if.then49
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s3
	move	$a3, $zero
.LBB3_27:                               # %if.end117
	move	$a4, $s1
	pcaddu18i	$ra, %call36(cli_loadndb)
	jirl	$ra, $ra, 0
	b	.LBB3_9
.LBB3_28:                               # %if.else51
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a1, $a0, %pc_lo12(.L.str.30)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_30
# %bb.29:                               # %if.then54
	andi	$a0, $s1, 16
	beqz	$a0, .LBB3_17
	b	.LBB3_26
.LBB3_30:                               # %if.else61
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a1, $a0, %pc_lo12(.L.str.31)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_32
# %bb.31:                               # %if.then64
	ori	$a3, $zero, 1
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s3
	b	.LBB3_27
.LBB3_32:                               # %if.else66
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a1, $a0, %pc_lo12(.L.str.32)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_34
# %bb.33:                               # %if.then69
	ori	$a3, $zero, 1
	b	.LBB3_36
.LBB3_34:                               # %if.else71
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a1, $a0, %pc_lo12(.L.str.33)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_37
# %bb.35:                               # %if.then74
	ori	$a3, $zero, 2
.LBB3_36:                               # %if.end117
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s3
	move	$a4, $s1
	pcaddu18i	$ra, %call36(cli_loadmd)
	jirl	$ra, $ra, 0
	b	.LBB3_9
.LBB3_37:                               # %if.else76
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a1, $a0, %pc_lo12(.L.str.48)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_39
# %bb.38:                               # %if.then79
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(cli_dconf_load)
	jirl	$ra, $ra, 0
	b	.LBB3_9
.LBB3_39:                               # %if.else81
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a1, $a0, %pc_lo12(.L.str.35)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_42
# %bb.40:                               # %if.then84
	andi	$a0, $s1, 8
	beqz	$a0, .LBB3_17
# %bb.41:                               # %if.then87
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(cli_loadwdb)
	jirl	$ra, $ra, 0
	b	.LBB3_9
.LBB3_42:                               # %if.else91
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a1, $a0, %pc_lo12(.L.str.34)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_45
# %bb.43:                               # %if.then94
	andi	$a0, $s1, 8
	beqz	$a0, .LBB3_17
# %bb.44:                               # %if.then97
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(cli_loadpdb)
	jirl	$ra, $ra, 0
	b	.LBB3_9
.LBB3_45:                               # %if.else101
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB3_2
.Lfunc_end3:
	.size	cli_load, .Lfunc_end3-cli_load
                                        # -- End function
	.globl	cl_loaddbdir                    # -- Begin function cl_loaddbdir
	.p2align	5
	.type	cl_loaddbdir,@function
cl_loaddbdir:                           # @cl_loaddbdir
# %bb.0:                                # %entry
	ori	$a3, $zero, 10
	pcaddu18i	$t8, %call36(cli_loaddbdir)
	jr	$t8
.Lfunc_end4:
	.size	cl_loaddbdir, .Lfunc_end4-cl_loaddbdir
                                        # -- End function
	.p2align	5                               # -- Begin function cli_loaddbdir
	.type	cli_loaddbdir,@function
cli_loaddbdir:                          # @cli_loaddbdir
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
	addi.d	$sp, $sp, -2048
	addi.d	$sp, $sp, -1904
	move	$s3, $a3
	move	$s8, $a2
	move	$s6, $a1
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.79)
	addi.d	$a0, $a0, %pc_lo12(.L.str.79)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_readlockdb)
	jirl	$ra, $ra, 0
	addi.w	$s5, $zero, -126
	bne	$a0, $s5, .LBB5_27
# %bb.1:                                # %while.body
	ori	$a0, $zero, 5
	pcaddu18i	$ra, %call36(sleep)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_readlockdb)
	jirl	$ra, $ra, 0
	bne	$a0, $s5, .LBB5_27
# %bb.2:                                # %while.body.1
	ori	$a0, $zero, 5
	pcaddu18i	$ra, %call36(sleep)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_readlockdb)
	jirl	$ra, $ra, 0
	bne	$a0, $s5, .LBB5_27
# %bb.3:                                # %while.body.2
	ori	$a0, $zero, 5
	pcaddu18i	$ra, %call36(sleep)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_readlockdb)
	jirl	$ra, $ra, 0
	bne	$a0, $s5, .LBB5_27
# %bb.4:                                # %while.body.3
	ori	$a0, $zero, 5
	pcaddu18i	$ra, %call36(sleep)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_readlockdb)
	jirl	$ra, $ra, 0
	bne	$a0, $s5, .LBB5_27
# %bb.5:                                # %while.body.4
	ori	$a0, $zero, 5
	pcaddu18i	$ra, %call36(sleep)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_readlockdb)
	jirl	$ra, $ra, 0
	bne	$a0, $s5, .LBB5_27
# %bb.6:                                # %while.body.5
	ori	$a0, $zero, 5
	pcaddu18i	$ra, %call36(sleep)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_readlockdb)
	jirl	$ra, $ra, 0
	bne	$a0, $s5, .LBB5_27
# %bb.7:                                # %while.body.6
	ori	$a0, $zero, 5
	pcaddu18i	$ra, %call36(sleep)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_readlockdb)
	jirl	$ra, $ra, 0
	bne	$a0, $s5, .LBB5_27
# %bb.8:                                # %while.body.7
	ori	$a0, $zero, 5
	pcaddu18i	$ra, %call36(sleep)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_readlockdb)
	jirl	$ra, $ra, 0
	bne	$a0, $s5, .LBB5_27
# %bb.9:                                # %while.body.8
	ori	$a0, $zero, 5
	pcaddu18i	$ra, %call36(sleep)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_readlockdb)
	jirl	$ra, $ra, 0
	bne	$a0, $s5, .LBB5_27
# %bb.10:                               # %while.body.9
	ori	$a0, $zero, 5
	pcaddu18i	$ra, %call36(sleep)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_readlockdb)
	jirl	$ra, $ra, 0
	bne	$a0, $s5, .LBB5_27
# %bb.11:                               # %while.body.10
	ori	$a0, $zero, 5
	pcaddu18i	$ra, %call36(sleep)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_readlockdb)
	jirl	$ra, $ra, 0
	bne	$a0, $s5, .LBB5_27
# %bb.12:                               # %while.body.11
	ori	$a0, $zero, 5
	pcaddu18i	$ra, %call36(sleep)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_readlockdb)
	jirl	$ra, $ra, 0
	bne	$a0, $s5, .LBB5_27
# %bb.13:                               # %while.body.12
	ori	$a0, $zero, 5
	pcaddu18i	$ra, %call36(sleep)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_readlockdb)
	jirl	$ra, $ra, 0
	bne	$a0, $s5, .LBB5_27
# %bb.14:                               # %while.body.13
	ori	$a0, $zero, 5
	pcaddu18i	$ra, %call36(sleep)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_readlockdb)
	jirl	$ra, $ra, 0
	bne	$a0, $s5, .LBB5_27
# %bb.15:                               # %while.body.14
	ori	$a0, $zero, 5
	pcaddu18i	$ra, %call36(sleep)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_readlockdb)
	jirl	$ra, $ra, 0
	bne	$a0, $s5, .LBB5_27
# %bb.16:                               # %while.body.15
	ori	$a0, $zero, 5
	pcaddu18i	$ra, %call36(sleep)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_readlockdb)
	jirl	$ra, $ra, 0
	bne	$a0, $s5, .LBB5_27
# %bb.17:                               # %while.body.16
	ori	$a0, $zero, 5
	pcaddu18i	$ra, %call36(sleep)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_readlockdb)
	jirl	$ra, $ra, 0
	bne	$a0, $s5, .LBB5_27
# %bb.18:                               # %while.body.17
	ori	$a0, $zero, 5
	pcaddu18i	$ra, %call36(sleep)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_readlockdb)
	jirl	$ra, $ra, 0
	bne	$a0, $s5, .LBB5_27
# %bb.19:                               # %while.body.18
	ori	$a0, $zero, 5
	pcaddu18i	$ra, %call36(sleep)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_readlockdb)
	jirl	$ra, $ra, 0
	bne	$a0, $s5, .LBB5_27
# %bb.20:                               # %while.body.19
	ori	$a0, $zero, 5
	pcaddu18i	$ra, %call36(sleep)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_readlockdb)
	jirl	$ra, $ra, 0
	bne	$a0, $s5, .LBB5_27
# %bb.21:                               # %while.body.20
	ori	$a0, $zero, 5
	pcaddu18i	$ra, %call36(sleep)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_readlockdb)
	jirl	$ra, $ra, 0
	bne	$a0, $s5, .LBB5_27
# %bb.22:                               # %while.body.21
	ori	$a0, $zero, 5
	pcaddu18i	$ra, %call36(sleep)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_readlockdb)
	jirl	$ra, $ra, 0
	bne	$a0, $s5, .LBB5_27
# %bb.23:                               # %while.body.22
	ori	$a0, $zero, 5
	pcaddu18i	$ra, %call36(sleep)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_readlockdb)
	jirl	$ra, $ra, 0
	bne	$a0, $s5, .LBB5_27
# %bb.24:                               # %while.body.23
	ori	$a0, $zero, 5
	pcaddu18i	$ra, %call36(sleep)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_readlockdb)
	jirl	$ra, $ra, 0
	bne	$a0, $s5, .LBB5_27
# %bb.25:                               # %while.body.24
	ori	$a0, $zero, 5
	pcaddu18i	$ra, %call36(sleep)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_readlockdb)
	jirl	$ra, $ra, 0
	bne	$a0, $s5, .LBB5_27
# %bb.26:                               # %while.body.25
	ori	$a0, $zero, 5
	pcaddu18i	$ra, %call36(sleep)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	b	.LBB5_110
.LBB5_27:
	move	$s4, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.81)
	addi.d	$a0, $a0, %pc_lo12(.L.str.81)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 11
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	addi.w	$s5, $zero, -114
	beqz	$a0, .LBB5_108
# %bb.28:                               # %if.end.i
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.82)
	addi.d	$a1, $a0, %pc_lo12(.L.str.82)
	move	$a0, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1672
	add.d	$a1, $sp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(stat)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	beq	$a0, $a1, .LBB5_31
# %bb.29:                               # %if.then4.i
	move	$a0, $s0
	move	$a1, $s6
	move	$a2, $s8
	move	$a3, $s3
	pcaddu18i	$ra, %call36(cli_load)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_32
# %bb.30:                               # %if.then7.i
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s5, $s1
	bnez	$s4, .LBB5_110
	b	.LBB5_109
.LBB5_31:
	addi.w	$s2, $zero, -125
	b	.LBB5_33
.LBB5_32:
	move	$s2, $zero
.LBB5_33:                               # %if.end9.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(opendir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_55
# %bb.34:                               # %if.end13.i
	move	$s7, $a0
	lu12i.w	$s0, 1
	ori	$a2, $s0, 1504
	addi.d	$a0, $sp, 168
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(readdir)
	jirl	$ra, $ra, 0
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	beqz	$a0, .LBB5_56
# %bb.35:                               # %while.body.i
	move	$a1, $a0
	addi.d	$a0, $sp, 168
	ori	$a2, $zero, 280
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(readdir)
	jirl	$ra, $ra, 0
	st.d	$s6, $sp, 152                   # 8-byte Folded Spill
	beqz	$a0, .LBB5_59
# %bb.36:                               # %while.body.i.1
	move	$a1, $a0
	addi.d	$a0, $sp, 448
	ori	$a2, $zero, 280
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(readdir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_60
# %bb.37:                               # %while.body.i.2
	move	$a1, $a0
	addi.d	$a0, $sp, 728
	ori	$a2, $zero, 280
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(readdir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_61
# %bb.38:                               # %while.body.i.3
	move	$a1, $a0
	addi.d	$a0, $sp, 1008
	ori	$a2, $zero, 280
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(readdir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_62
# %bb.39:                               # %while.body.i.4
	move	$a1, $a0
	addi.d	$a0, $sp, 1288
	ori	$a2, $zero, 280
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(readdir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_63
# %bb.40:                               # %while.body.i.5
	move	$a1, $a0
	addi.d	$a0, $sp, 1568
	ori	$a2, $zero, 280
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(readdir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_64
# %bb.41:                               # %while.body.i.6
	move	$a1, $a0
	addi.d	$a0, $sp, 1848
	ori	$a2, $zero, 280
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(readdir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_65
# %bb.42:                               # %while.body.i.7
	move	$a1, $a0
	ori	$a0, $zero, 2128
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 280
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(readdir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_66
# %bb.43:                               # %while.body.i.8
	move	$a1, $a0
	addi.d	$a0, $sp, 168
	addi.d	$s1, $a0, 2047
	addi.d	$a0, $s1, 193
	ori	$a2, $zero, 280
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(readdir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_67
# %bb.44:                               # %while.body.i.9
	move	$a1, $a0
	addi.d	$a0, $s1, 473
	ori	$a2, $zero, 280
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(readdir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_68
# %bb.45:                               # %while.body.i.10
	move	$a1, $a0
	addi.d	$a0, $sp, 168
	addi.d	$s1, $a0, 2047
	addi.d	$a0, $s1, 753
	ori	$a2, $zero, 280
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(readdir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_69
# %bb.46:                               # %while.body.i.11
	move	$a1, $a0
	addi.d	$a0, $s1, 1033
	ori	$a2, $zero, 280
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(readdir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_70
# %bb.47:                               # %while.body.i.12
	move	$a1, $a0
	addi.d	$a0, $sp, 168
	addi.d	$s1, $a0, 2047
	addi.d	$a0, $s1, 1313
	ori	$a2, $zero, 280
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(readdir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_71
# %bb.48:                               # %while.body.i.13
	move	$a1, $a0
	addi.d	$a0, $s1, 1593
	ori	$a2, $zero, 280
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(readdir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_72
# %bb.49:                               # %while.body.i.14
	move	$a1, $a0
	addi.d	$s1, $sp, 168
	addi.d	$a0, $s1, 2047
	addi.d	$a0, $a0, 1873
	ori	$a2, $zero, 280
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(readdir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_73
# %bb.50:                               # %while.body.i.15
	move	$a1, $a0
	ori	$a0, $s0, 104
	add.d	$a0, $s1, $a0
	ori	$a2, $zero, 280
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(readdir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_74
# %bb.51:                               # %while.body.i.16
	move	$a1, $a0
	ori	$a0, $s0, 384
	addi.d	$s1, $sp, 168
	add.d	$a0, $s1, $a0
	ori	$a2, $zero, 280
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(readdir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_75
# %bb.52:                               # %while.body.i.17
	move	$a1, $a0
	ori	$a0, $s0, 664
	add.d	$a0, $s1, $a0
	ori	$a2, $zero, 280
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(readdir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_76
# %bb.53:                               # %while.body.i.18
	move	$a1, $a0
	ori	$a0, $s0, 944
	addi.d	$a2, $sp, 168
	add.d	$a0, $a2, $a0
	ori	$a2, $zero, 280
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(readdir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_77
# %bb.54:                               # %while.body.i.19
	pcalau12i	$a0, %pc_hi20(.L.str.84)
	addi.d	$a0, $a0, %pc_lo12(.L.str.84)
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	addi.w	$s5, $zero, -115
	bnez	$s4, .LBB5_110
	b	.LBB5_109
.LBB5_55:                               # %if.then12.i
	pcalau12i	$a0, %pc_hi20(.L.str.83)
	addi.d	$a0, $a0, %pc_lo12(.L.str.83)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	addi.w	$s5, $zero, -115
	bnez	$s4, .LBB5_110
	b	.LBB5_109
.LBB5_56:                               # %while.end.i
	pcalau12i	$a0, %pc_hi20(dirent_compare)
	addi.d	$a3, $a0, %pc_lo12(dirent_compare)
	addi.d	$a0, $sp, 168
	ori	$a2, $zero, 280
	move	$a1, $zero
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
.LBB5_57:                               # %for.end.i
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(closedir)
	jirl	$ra, $ra, 0
	addi.w	$s0, $zero, -125
	move	$s5, $s2
	bne	$s2, $s0, .LBB5_108
# %bb.58:                               # %if.then146.i
	pcalau12i	$a0, %pc_hi20(.L.str.87)
	addi.d	$a0, $a0, %pc_lo12(.L.str.87)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	move	$s5, $s0
	bnez	$s4, .LBB5_110
	b	.LBB5_109
.LBB5_59:
	ori	$s6, $zero, 1
	b	.LBB5_78
.LBB5_60:
	ori	$s6, $zero, 2
	b	.LBB5_78
.LBB5_61:
	ori	$s6, $zero, 3
	b	.LBB5_78
.LBB5_62:
	ori	$s6, $zero, 4
	b	.LBB5_78
.LBB5_63:
	ori	$s6, $zero, 5
	b	.LBB5_78
.LBB5_64:
	ori	$s6, $zero, 6
	b	.LBB5_78
.LBB5_65:
	ori	$s6, $zero, 7
	b	.LBB5_78
.LBB5_66:
	ori	$s6, $zero, 8
	b	.LBB5_78
.LBB5_67:
	ori	$s6, $zero, 9
	b	.LBB5_78
.LBB5_68:
	ori	$s6, $zero, 10
	b	.LBB5_78
.LBB5_69:
	ori	$s6, $zero, 11
	b	.LBB5_78
.LBB5_70:
	ori	$s6, $zero, 12
	b	.LBB5_78
.LBB5_71:
	ori	$s6, $zero, 13
	b	.LBB5_78
.LBB5_72:
	ori	$s6, $zero, 14
	b	.LBB5_78
.LBB5_73:
	ori	$s6, $zero, 15
	b	.LBB5_78
.LBB5_74:
	ori	$s6, $zero, 16
	b	.LBB5_78
.LBB5_75:
	ori	$s6, $zero, 17
	b	.LBB5_78
.LBB5_76:
	ori	$s6, $zero, 18
	b	.LBB5_78
.LBB5_77:
	ori	$s6, $zero, 19
.LBB5_78:                               # %for.body.i.preheader
	pcalau12i	$a0, %pc_hi20(dirent_compare)
	addi.d	$a3, $a0, %pc_lo12(dirent_compare)
	addi.d	$a0, $sp, 168
	ori	$a2, $zero, 280
	move	$a1, $s6
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	addi.d	$s7, $sp, 187
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a0, $a0, %pc_lo12(.L.str.31)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a0, $a0, %pc_lo12(.L.str.34)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a0, $a0, %pc_lo12(.L.str.35)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a0, $a0, %pc_lo12(.L.str.36)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a0, $a0, %pc_lo12(.L.str.37)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$s1, $a0, %pc_lo12(.L.str.41)
	b	.LBB5_80
	.p2align	4, , 16
.LBB5_79:                               # %for.inc.i
                                        #   in Loop: Header=BB5_80 Depth=1
	addi.d	$s6, $s6, -1
	addi.d	$s7, $s7, 280
	beqz	$s6, .LBB5_57
.LBB5_80:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s7, -19
	beqz	$a0, .LBB5_79
# %bb.81:                               # %if.then24.i
                                        #   in Loop: Header=BB5_80 Depth=1
	ld.bu	$a0, $s7, 0
	ori	$a1, $zero, 46
	bne	$a0, $a1, .LBB5_85
# %bb.82:                               # %if.then24.i.tail
                                        #   in Loop: Header=BB5_80 Depth=1
	ld.bu	$a0, $s7, 1
	beqz	$a0, .LBB5_79
# %bb.83:                               # %sub_15
                                        #   in Loop: Header=BB5_80 Depth=1
	ld.bu	$a0, $s7, 1
	ori	$a1, $zero, 46
	bne	$a0, $a1, .LBB5_85
# %bb.84:                               # %land.lhs.true.i.tail
                                        #   in Loop: Header=BB5_80 Depth=1
	ld.bu	$a0, $s7, 2
	beqz	$a0, .LBB5_79
	.p2align	4, , 16
.LBB5_85:                               # %land.lhs.true31.i
                                        #   in Loop: Header=BB5_80 Depth=1
	move	$a0, $s7
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_102
# %bb.86:                               # %lor.lhs.false.i
                                        #   in Loop: Header=BB5_80 Depth=1
	move	$a0, $s7
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_102
# %bb.87:                               # %lor.lhs.false40.i
                                        #   in Loop: Header=BB5_80 Depth=1
	move	$a0, $s7
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_102
# %bb.88:                               # %lor.lhs.false45.i
                                        #   in Loop: Header=BB5_80 Depth=1
	move	$a0, $s7
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_102
# %bb.89:                               # %lor.lhs.false50.i
                                        #   in Loop: Header=BB5_80 Depth=1
	move	$a0, $s7
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_102
# %bb.90:                               # %lor.lhs.false55.i
                                        #   in Loop: Header=BB5_80 Depth=1
	move	$a0, $s7
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_102
# %bb.91:                               # %lor.lhs.false60.i
                                        #   in Loop: Header=BB5_80 Depth=1
	move	$a0, $s7
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_102
# %bb.92:                               # %lor.lhs.false65.i
                                        #   in Loop: Header=BB5_80 Depth=1
	move	$a0, $s7
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_102
# %bb.93:                               # %lor.lhs.false70.i
                                        #   in Loop: Header=BB5_80 Depth=1
	move	$a0, $s7
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_102
# %bb.94:                               # %lor.lhs.false75.i
                                        #   in Loop: Header=BB5_80 Depth=1
	move	$a0, $s7
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_102
# %bb.95:                               # %lor.lhs.false80.i
                                        #   in Loop: Header=BB5_80 Depth=1
	move	$a0, $s7
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_102
# %bb.96:                               # %lor.lhs.false85.i
                                        #   in Loop: Header=BB5_80 Depth=1
	move	$a0, $s7
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_102
# %bb.97:                               # %lor.lhs.false90.i
                                        #   in Loop: Header=BB5_80 Depth=1
	move	$a0, $s7
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_102
# %bb.98:                               # %lor.lhs.false95.i
                                        #   in Loop: Header=BB5_80 Depth=1
	move	$a0, $s7
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_102
# %bb.99:                               # %lor.lhs.false100.i
                                        #   in Loop: Header=BB5_80 Depth=1
	move	$a0, $s7
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_102
# %bb.100:                              # %lor.lhs.false105.i
                                        #   in Loop: Header=BB5_80 Depth=1
	move	$a0, $s7
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_102
# %bb.101:                              # %lor.lhs.false110.i
                                        #   in Loop: Header=BB5_80 Depth=1
	move	$a0, $s7
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_79
	.p2align	4, , 16
.LBB5_102:                              # %if.then115.i
                                        #   in Loop: Header=BB5_80 Depth=1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $s2, $a0
	addi.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_107
# %bb.103:                              # %if.end126.i
                                        #   in Loop: Header=BB5_80 Depth=1
	move	$s2, $a0
	move	$a1, $s1
	move	$a2, $fp
	move	$a3, $s7
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_105
# %bb.104:                              # %if.then132.i
                                        #   in Loop: Header=BB5_80 Depth=1
	move	$a0, $s2
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	move	$s0, $s8
	move	$a2, $s8
	move	$s8, $s3
	move	$a3, $s3
	pcaddu18i	$ra, %call36(cli_loaddbdir)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	beqz	$a0, .LBB5_106
	b	.LBB5_111
.LBB5_105:                              # %if.else.i
                                        #   in Loop: Header=BB5_80 Depth=1
	move	$a0, $s2
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	move	$s0, $s8
	move	$a2, $s8
	move	$s8, $s3
	move	$a3, $s3
	pcaddu18i	$ra, %call36(cli_load)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	bnez	$a0, .LBB5_111
.LBB5_106:                              # %if.end139.i
                                        #   in Loop: Header=BB5_80 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s2, $zero
	move	$s3, $s8
	move	$s8, $s0
	b	.LBB5_79
.LBB5_107:                              # %if.then124.i
	pcalau12i	$a0, %pc_hi20(.L.str.85)
	addi.d	$a0, $a0, %pc_lo12(.L.str.85)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(closedir)
	jirl	$ra, $ra, 0
.LBB5_108:                              # %cli_loaddbdir_l.exit
	bnez	$s4, .LBB5_110
.LBB5_109:                              # %if.then5
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_unlockdb)
	jirl	$ra, $ra, 0
.LBB5_110:                              # %cleanup
	move	$a0, $s5
	addi.d	$sp, $sp, 2032
	addi.d	$sp, $sp, 1920
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.LBB5_111:                              # %if.then137.i
	pcalau12i	$a0, %pc_hi20(.L.str.86)
	addi.d	$a0, $a0, %pc_lo12(.L.str.86)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(closedir)
	jirl	$ra, $ra, 0
	move	$s5, $s3
	bnez	$s4, .LBB5_110
	b	.LBB5_109
.Lfunc_end5:
	.size	cli_loaddbdir, .Lfunc_end5-cli_loaddbdir
                                        # -- End function
	.globl	cl_load                         # -- Begin function cl_load
	.p2align	5
	.type	cl_load,@function
cl_load:                                # @cl_load
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	move	$s0, $a3
	move	$s1, $a2
	move	$s2, $a1
	move	$fp, $a0
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(stat)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	beq	$a0, $a1, .LBB6_3
# %bb.1:                                # %if.end
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_initengine)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	beqz	$a0, .LBB6_5
# %bb.2:                                # %if.then2
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(cl_free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	b	.LBB6_4
.LBB6_3:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -123
.LBB6_4:                                # %cleanup
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.LBB6_5:                                # %if.end3
	ld.wu	$a0, $sp, 24
	lu12i.w	$a2, 15
	and	$a0, $a0, $a2
	lu12i.w	$a2, 4
	st.w	$s0, $a1, 8
	beq	$a0, $a2, .LBB6_8
# %bb.6:                                # %if.end3
	lu12i.w	$a1, 8
	bne	$a0, $a1, .LBB6_9
# %bb.7:                                # %sw.bb
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s1
	move	$a3, $s0
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	pcaddu18i	$t8, %call36(cli_load)
	jr	$t8
.LBB6_8:                                # %sw.bb5
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s1
	move	$a3, $s0
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	pcaddu18i	$t8, %call36(cli_loaddbdir)
	jr	$t8
.LBB6_9:                                # %sw.default
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -115
	b	.LBB6_4
.Lfunc_end6:
	.size	cl_load, .Lfunc_end6-cl_load
                                        # -- End function
	.globl	cl_free                         # -- Begin function cl_free
	.p2align	5
	.type	cl_free,@function
cl_free:                                # @cl_free
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	beqz	$a0, .LBB7_3
# %bb.1:                                # %if.end
	move	$fp, $a0
	ld.w	$a0, $a0, 0
	addi.w	$a0, $a0, -1
	st.w	$a0, $fp, 0
	beqz	$a0, .LBB7_4
# %bb.2:                                # %cleanup
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB7_3:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a0, $a0, %pc_lo12(.L.str.43)
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(cli_errmsg)
	jr	$t8
.LBB7_4:                                # %if.end4
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB7_34
# %bb.5:                                # %for.body.preheader
	ld.d	$s0, $a0, 0
	beqz	$s0, .LBB7_9
# %bb.6:                                # %if.then10
	ld.bu	$a0, $s0, 2
	bnez	$a0, .LBB7_8
# %bb.7:                                # %if.then12
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_bm_free)
	jirl	$ra, $ra, 0
.LBB7_8:                                # %if.end13
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_ac_free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
.LBB7_9:                                # %for.inc
	ld.d	$s0, $a0, 8
	beqz	$s0, .LBB7_13
# %bb.10:                               # %if.then10.1
	ld.bu	$a0, $s0, 2
	bnez	$a0, .LBB7_12
# %bb.11:                               # %if.then12.1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_bm_free)
	jirl	$ra, $ra, 0
.LBB7_12:                               # %if.end13.1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_ac_free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
.LBB7_13:                               # %for.inc.1
	ld.d	$s0, $a0, 16
	beqz	$s0, .LBB7_17
# %bb.14:                               # %if.then10.2
	ld.bu	$a0, $s0, 2
	bnez	$a0, .LBB7_16
# %bb.15:                               # %if.then12.2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_bm_free)
	jirl	$ra, $ra, 0
.LBB7_16:                               # %if.end13.2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_ac_free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
.LBB7_17:                               # %for.inc.2
	ld.d	$s0, $a0, 24
	beqz	$s0, .LBB7_21
# %bb.18:                               # %if.then10.3
	ld.bu	$a0, $s0, 2
	bnez	$a0, .LBB7_20
# %bb.19:                               # %if.then12.3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_bm_free)
	jirl	$ra, $ra, 0
.LBB7_20:                               # %if.end13.3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_ac_free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
.LBB7_21:                               # %for.inc.3
	ld.d	$s0, $a0, 32
	beqz	$s0, .LBB7_25
# %bb.22:                               # %if.then10.4
	ld.bu	$a0, $s0, 2
	bnez	$a0, .LBB7_24
# %bb.23:                               # %if.then12.4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_bm_free)
	jirl	$ra, $ra, 0
.LBB7_24:                               # %if.end13.4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_ac_free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
.LBB7_25:                               # %for.inc.4
	ld.d	$s0, $a0, 40
	beqz	$s0, .LBB7_29
# %bb.26:                               # %if.then10.5
	ld.bu	$a0, $s0, 2
	bnez	$a0, .LBB7_28
# %bb.27:                               # %if.then12.5
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_bm_free)
	jirl	$ra, $ra, 0
.LBB7_28:                               # %if.end13.5
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_ac_free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
.LBB7_29:                               # %for.inc.5
	ld.d	$s0, $a0, 48
	beqz	$s0, .LBB7_33
# %bb.30:                               # %if.then10.6
	ld.bu	$a0, $s0, 2
	bnez	$a0, .LBB7_32
# %bb.31:                               # %if.then12.6
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_bm_free)
	jirl	$ra, $ra, 0
.LBB7_32:                               # %if.end13.6
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_ac_free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
.LBB7_33:                               # %for.inc.6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB7_34:                               # %if.end16
	ld.d	$a0, $fp, 24
	beqz	$a0, .LBB7_40
# %bb.35:                               # %for.body21.preheader
	move	$s1, $zero
	ori	$s2, $zero, 256
	b	.LBB7_37
	.p2align	4, , 16
.LBB7_36:                               # %for.inc26
                                        #   in Loop: Header=BB7_37 Depth=1
	addi.d	$s1, $s1, 1
	beq	$s1, $s2, .LBB7_39
.LBB7_37:                               # %for.body21
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_38 Depth 2
	ld.d	$a0, $fp, 24
	slli.d	$a1, $s1, 3
	ldx.d	$s0, $a0, $a1
	beqz	$s0, .LBB7_36
	.p2align	4, , 16
.LBB7_38:                               # %while.body
                                        #   Parent Loop BB7_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s3, $s0, 24
	ld.d	$a0, $s0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s0, $s3
	bnez	$s3, .LBB7_38
	b	.LBB7_36
.LBB7_39:                               # %for.end28
	ld.d	$a0, $fp, 24
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB7_40:                               # %if.end30
	ld.d	$s0, $fp, 32
	beqz	$s0, .LBB7_42
# %bb.41:                               # %if.then32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_bm_free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 24
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB7_42:                               # %if.end33
	ld.d	$s0, $fp, 40
	bnez	$s0, .LBB7_49
.LBB7_43:                               # %while.end43
	ld.d	$s0, $fp, 48
	bnez	$s0, .LBB7_52
.LBB7_44:                               # %while.end54
	ld.d	$a0, $fp, 80
	ld.bu	$a1, $a0, 24
	andi	$a1, $a1, 1
	beqz	$a1, .LBB7_46
# %bb.45:                               # %if.end57
	move	$a0, $fp
	pcaddu18i	$ra, %call36(phishing_done)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 80
	beqz	$a0, .LBB7_47
.LBB7_46:                               # %if.then60
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB7_47:                               # %if.end62
	pcaddu18i	$ra, %call36(cli_freelocks)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(free)
	jr	$t8
	.p2align	4, , 16
.LBB7_48:                               # %if.end42
                                        #   in Loop: Header=BB7_49 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s0, $s1
	beqz	$s1, .LBB7_43
.LBB7_49:                               # %while.body36
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $s0, 48
	ld.d	$a0, $s0, 40
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	beqz	$a0, .LBB7_48
# %bb.50:                               # %if.then40
                                        #   in Loop: Header=BB7_49 Depth=1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB7_48
	.p2align	4, , 16
.LBB7_51:                               # %if.end53
                                        #   in Loop: Header=BB7_52 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s0, $s1
	beqz	$s1, .LBB7_44
.LBB7_52:                               # %while.body46
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $s0, 48
	ld.d	$a0, $s0, 40
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	beqz	$a0, .LBB7_51
# %bb.53:                               # %if.then51
                                        #   in Loop: Header=BB7_52 Depth=1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB7_51
.Lfunc_end7:
	.size	cl_free, .Lfunc_end7-cl_free
                                        # -- End function
	.globl	cl_retdbdir                     # -- Begin function cl_retdbdir
	.p2align	5
	.type	cl_retdbdir,@function
cl_retdbdir:                            # @cl_retdbdir
# %bb.0:                                # %entry
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	ret
.Lfunc_end8:
	.size	cl_retdbdir, .Lfunc_end8-cl_retdbdir
                                        # -- End function
	.globl	cl_statinidir                   # -- Begin function cl_statinidir
	.p2align	5
	.type	cl_statinidir,@function
cl_statinidir:                          # @cl_statinidir
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	st.d	$s3, $sp, 192                   # 8-byte Folded Spill
	st.d	$s4, $sp, 184                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	st.d	$s6, $sp, 168                   # 8-byte Folded Spill
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
	beqz	$a1, .LBB9_33
# %bb.1:                                # %if.then
	move	$fp, $a1
	move	$s1, $a0
	st.w	$zero, $a1, 8
	addi.d	$s2, $a1, 16
	vrepli.b	$vr0, 0
	vst	$vr0, $a1, 16
	pcaddu18i	$ra, %call36(cli_strdup)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(opendir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_35
# %bb.2:                                # %if.end4
	move	$s0, $a0
	st.d	$s2, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(readdir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_34
# %bb.3:                                # %while.body.preheader
	ori	$s7, $zero, 46
	pcalau12i	$a1, %pc_hi20(.L.str.21)
	addi.d	$s2, $a1, %pc_lo12(.L.str.21)
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a1, $a1, %pc_lo12(.L.str.22)
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.23)
	addi.d	$a1, $a1, %pc_lo12(.L.str.23)
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a1, $a1, %pc_lo12(.L.str.24)
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.26)
	addi.d	$a1, $a1, %pc_lo12(.L.str.26)
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.30)
	addi.d	$a1, $a1, %pc_lo12(.L.str.30)
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.31)
	addi.d	$a1, $a1, %pc_lo12(.L.str.31)
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.32)
	addi.d	$a1, $a1, %pc_lo12(.L.str.32)
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.33)
	addi.d	$a1, $a1, %pc_lo12(.L.str.33)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.34)
	addi.d	$a1, $a1, %pc_lo12(.L.str.34)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.35)
	addi.d	$a1, $a1, %pc_lo12(.L.str.35)
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.36)
	addi.d	$s8, $a1, %pc_lo12(.L.str.36)
	pcalau12i	$a1, %pc_hi20(.L.str.37)
	addi.d	$a1, $a1, %pc_lo12(.L.str.37)
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.41)
	addi.d	$a1, $a1, %pc_lo12(.L.str.41)
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.39)
	addi.d	$s6, $a1, %pc_lo12(.L.str.39)
	pcalau12i	$a1, %pc_hi20(.L.str.40)
	addi.d	$a1, $a1, %pc_lo12(.L.str.40)
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.38)
	addi.d	$s5, $a1, %pc_lo12(.L.str.38)
	b	.LBB9_7
	.p2align	4, , 16
.LBB9_4:                                # %if.then126
                                        #   in Loop: Header=BB9_7 Depth=1
	move	$a0, $s4
	move	$a1, $s6
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	masknez	$a1, $s6, $a0
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a4, $a0, $a1
	move	$a0, $s3
	move	$a1, $s5
	move	$a2, $s1
	move	$a3, $s4
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
.LBB9_5:                                # %if.end138
                                        #   in Loop: Header=BB9_7 Depth=1
	ld.w	$a0, $fp, 8
	ld.d	$a1, $fp, 16
	addi.d	$a0, $a0, -1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 7
	add.d	$a1, $a1, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(stat)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB9_6:                                # %if.end143
                                        #   in Loop: Header=BB9_7 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(readdir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_34
.LBB9_7:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a0, 0
	beqz	$a1, .LBB9_6
# %bb.8:                                # %if.then8
                                        #   in Loop: Header=BB9_7 Depth=1
	ld.bu	$a1, $a0, 19
	bne	$a1, $s7, .LBB9_12
# %bb.9:                                # %if.then8.tail
                                        #   in Loop: Header=BB9_7 Depth=1
	ld.bu	$a1, $a0, 20
	beqz	$a1, .LBB9_6
# %bb.10:                               # %sub_177
                                        #   in Loop: Header=BB9_7 Depth=1
	ld.bu	$a1, $a0, 20
	bne	$a1, $s7, .LBB9_12
# %bb.11:                               # %land.lhs.true.tail
                                        #   in Loop: Header=BB9_7 Depth=1
	ld.bu	$a1, $a0, 21
	beqz	$a1, .LBB9_6
	.p2align	4, , 16
.LBB9_12:                               # %land.lhs.true15
                                        #   in Loop: Header=BB9_7 Depth=1
	addi.d	$s4, $a0, 19
	move	$a0, $s4
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB9_29
# %bb.13:                               # %lor.lhs.false
                                        #   in Loop: Header=BB9_7 Depth=1
	move	$a0, $s4
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB9_29
# %bb.14:                               # %lor.lhs.false24
                                        #   in Loop: Header=BB9_7 Depth=1
	move	$a0, $s4
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB9_29
# %bb.15:                               # %lor.lhs.false29
                                        #   in Loop: Header=BB9_7 Depth=1
	move	$a0, $s4
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB9_29
# %bb.16:                               # %lor.lhs.false34
                                        #   in Loop: Header=BB9_7 Depth=1
	move	$a0, $s4
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB9_29
# %bb.17:                               # %lor.lhs.false39
                                        #   in Loop: Header=BB9_7 Depth=1
	move	$a0, $s4
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB9_29
# %bb.18:                               # %lor.lhs.false44
                                        #   in Loop: Header=BB9_7 Depth=1
	move	$a0, $s4
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB9_29
# %bb.19:                               # %lor.lhs.false49
                                        #   in Loop: Header=BB9_7 Depth=1
	move	$a0, $s4
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB9_29
# %bb.20:                               # %lor.lhs.false54
                                        #   in Loop: Header=BB9_7 Depth=1
	move	$a0, $s4
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB9_29
# %bb.21:                               # %lor.lhs.false59
                                        #   in Loop: Header=BB9_7 Depth=1
	move	$a0, $s4
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB9_29
# %bb.22:                               # %lor.lhs.false64
                                        #   in Loop: Header=BB9_7 Depth=1
	move	$a0, $s4
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB9_29
# %bb.23:                               # %lor.lhs.false69
                                        #   in Loop: Header=BB9_7 Depth=1
	move	$a0, $s4
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB9_29
# %bb.24:                               # %lor.lhs.false74
                                        #   in Loop: Header=BB9_7 Depth=1
	move	$a0, $s4
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB9_29
# %bb.25:                               # %lor.lhs.false79
                                        #   in Loop: Header=BB9_7 Depth=1
	move	$a0, $s4
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB9_29
# %bb.26:                               # %lor.lhs.false84
                                        #   in Loop: Header=BB9_7 Depth=1
	move	$a0, $s4
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB9_29
# %bb.27:                               # %lor.lhs.false89
                                        #   in Loop: Header=BB9_7 Depth=1
	move	$a0, $s4
	move	$a1, $s8
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB9_29
# %bb.28:                               # %lor.lhs.false94
                                        #   in Loop: Header=BB9_7 Depth=1
	move	$a0, $s4
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_6
	.p2align	4, , 16
.LBB9_29:                               # %if.then99
                                        #   in Loop: Header=BB9_7 Depth=1
	ld.w	$a0, $fp, 8
	addi.d	$a1, $a0, 1
	ld.d	$a0, $fp, 16
	st.w	$a1, $fp, 8
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 7
	pcaddu18i	$ra, %call36(cli_realloc2)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 16
	beqz	$a0, .LBB9_41
# %bb.30:                               # %if.end110
                                        #   in Loop: Header=BB9_7 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $s3, $a0
	addi.d	$a0, $a0, 32
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_39
# %bb.31:                               # %if.end121
                                        #   in Loop: Header=BB9_7 Depth=1
	move	$s3, $a0
	move	$a0, $s4
	move	$a1, $s8
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB9_4
# %bb.32:                               # %if.else134
                                        #   in Loop: Header=BB9_7 Depth=1
	move	$a0, $s3
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	move	$a2, $s1
	move	$a3, $s4
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	b	.LBB9_5
.LBB9_33:                               # %if.else
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -111
	b	.LBB9_44
.LBB9_34:                               # %while.end
	move	$a0, $s0
	pcaddu18i	$ra, %call36(closedir)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB9_44
.LBB9_35:                               # %if.then.i
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB9_37
# %bb.36:                               # %if.then2.i
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s2, 0
.LBB9_37:                               # %if.end.i
	ld.d	$a1, $fp, 0
	st.w	$zero, $fp, 8
	addi.w	$a0, $zero, -115
	beqz	$a1, .LBB9_44
# %bb.38:                               # %if.then6.i
	move	$s0, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	st.d	$zero, $fp, 0
	b	.LBB9_44
.LBB9_39:                               # %if.then.i65
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $s1, 0
	beqz	$a0, .LBB9_41
# %bb.40:                               # %if.then2.i68
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s1, 0
.LBB9_41:                               # %if.end.i57
	ld.d	$a0, $fp, 0
	st.w	$zero, $fp, 8
	beqz	$a0, .LBB9_43
# %bb.42:                               # %if.then6.i60
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 0
.LBB9_43:                               # %cl_statfree.exit63
	move	$a0, $s0
	pcaddu18i	$ra, %call36(closedir)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -114
.LBB9_44:                               # %cleanup
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.Lfunc_end9:
	.size	cl_statinidir, .Lfunc_end9-cl_statinidir
                                        # -- End function
	.globl	cl_statfree                     # -- Begin function cl_statfree
	.p2align	5
	.type	cl_statfree,@function
cl_statfree:                            # @cl_statfree
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	beqz	$a0, .LBB10_5
# %bb.1:                                # %if.then
	move	$fp, $a0
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB10_3
# %bb.2:                                # %if.then2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 16
.LBB10_3:                               # %if.end
	ld.d	$a0, $fp, 0
	st.w	$zero, $fp, 8
	beqz	$a0, .LBB10_6
# %bb.4:                                # %if.then6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	st.d	$zero, $fp, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB10_5:                               # %if.else
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a0, $a0, %pc_lo12(.L.str.42)
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -111
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB10_6:
	move	$a0, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end10:
	.size	cl_statfree, .Lfunc_end10-cl_statfree
                                        # -- End function
	.globl	cl_statchkdir                   # -- Begin function cl_statchkdir
	.p2align	5
	.type	cl_statchkdir,@function
cl_statchkdir:                          # @cl_statchkdir
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -368
	st.d	$ra, $sp, 360                   # 8-byte Folded Spill
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	st.d	$s0, $sp, 344                   # 8-byte Folded Spill
	st.d	$s1, $sp, 336                   # 8-byte Folded Spill
	st.d	$s2, $sp, 328                   # 8-byte Folded Spill
	st.d	$s3, $sp, 320                   # 8-byte Folded Spill
	st.d	$s4, $sp, 312                   # 8-byte Folded Spill
	st.d	$s5, $sp, 304                   # 8-byte Folded Spill
	st.d	$s6, $sp, 296                   # 8-byte Folded Spill
	st.d	$s7, $sp, 288                   # 8-byte Folded Spill
	st.d	$s8, $sp, 280                   # 8-byte Folded Spill
	beqz	$a0, .LBB11_40
# %bb.1:                                # %lor.lhs.false
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB11_40
# %bb.2:                                # %if.end
	pcaddu18i	$ra, %call36(opendir)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	beqz	$a0, .LBB11_42
# %bb.3:                                # %if.end5
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(readdir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_43
# %bb.4:                                # %while.body.lr.ph
	ori	$s7, $zero, 46
	pcalau12i	$a1, %pc_hi20(.L.str.21)
	addi.d	$s1, $a1, %pc_lo12(.L.str.21)
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a1, $a1, %pc_lo12(.L.str.22)
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.23)
	addi.d	$a1, $a1, %pc_lo12(.L.str.23)
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a1, $a1, %pc_lo12(.L.str.24)
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.26)
	addi.d	$a1, $a1, %pc_lo12(.L.str.26)
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.30)
	addi.d	$a1, $a1, %pc_lo12(.L.str.30)
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.31)
	addi.d	$a1, $a1, %pc_lo12(.L.str.31)
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.32)
	addi.d	$a1, $a1, %pc_lo12(.L.str.32)
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.33)
	addi.d	$a1, $a1, %pc_lo12(.L.str.33)
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.34)
	addi.d	$a1, $a1, %pc_lo12(.L.str.34)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.35)
	addi.d	$a1, $a1, %pc_lo12(.L.str.35)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.36)
	addi.d	$s6, $a1, %pc_lo12(.L.str.36)
	pcalau12i	$a1, %pc_hi20(.L.str.37)
	addi.d	$a1, $a1, %pc_lo12(.L.str.37)
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.41)
	addi.d	$a1, $a1, %pc_lo12(.L.str.41)
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.39)
	addi.d	$s8, $a1, %pc_lo12(.L.str.39)
	pcalau12i	$a1, %pc_hi20(.L.str.40)
	addi.d	$a1, $a1, %pc_lo12(.L.str.40)
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.38)
	addi.d	$s5, $a1, %pc_lo12(.L.str.38)
	b	.LBB11_7
	.p2align	4, , 16
.LBB11_5:                               # %for.end
                                        #   in Loop: Header=BB11_7 Depth=1
	andi	$a0, $a5, 1
	bnez	$a0, .LBB11_44
.LBB11_6:                               # %if.end152
                                        #   in Loop: Header=BB11_7 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(readdir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_43
.LBB11_7:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_35 Depth 2
                                        #       Child Loop BB11_36 Depth 3
	ld.d	$a1, $a0, 0
	beqz	$a1, .LBB11_6
# %bb.8:                                # %if.then10
                                        #   in Loop: Header=BB11_7 Depth=1
	ld.bu	$a1, $a0, 19
	bne	$a1, $s7, .LBB11_12
# %bb.9:                                # %if.then10.tail
                                        #   in Loop: Header=BB11_7 Depth=1
	ld.bu	$a1, $a0, 20
	beqz	$a1, .LBB11_6
# %bb.10:                               # %sub_147
                                        #   in Loop: Header=BB11_7 Depth=1
	ld.bu	$a1, $a0, 20
	bne	$a1, $s7, .LBB11_12
# %bb.11:                               # %land.lhs.true.tail
                                        #   in Loop: Header=BB11_7 Depth=1
	ld.bu	$a1, $a0, 21
	beqz	$a1, .LBB11_6
	.p2align	4, , 16
.LBB11_12:                              # %land.lhs.true17
                                        #   in Loop: Header=BB11_7 Depth=1
	addi.d	$s4, $a0, 19
	move	$a0, $s4
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB11_29
# %bb.13:                               # %lor.lhs.false22
                                        #   in Loop: Header=BB11_7 Depth=1
	move	$a0, $s4
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB11_29
# %bb.14:                               # %lor.lhs.false27
                                        #   in Loop: Header=BB11_7 Depth=1
	move	$a0, $s4
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB11_29
# %bb.15:                               # %lor.lhs.false32
                                        #   in Loop: Header=BB11_7 Depth=1
	move	$a0, $s4
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB11_29
# %bb.16:                               # %lor.lhs.false37
                                        #   in Loop: Header=BB11_7 Depth=1
	move	$a0, $s4
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB11_29
# %bb.17:                               # %lor.lhs.false42
                                        #   in Loop: Header=BB11_7 Depth=1
	move	$a0, $s4
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB11_29
# %bb.18:                               # %lor.lhs.false47
                                        #   in Loop: Header=BB11_7 Depth=1
	move	$a0, $s4
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB11_29
# %bb.19:                               # %lor.lhs.false52
                                        #   in Loop: Header=BB11_7 Depth=1
	move	$a0, $s4
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB11_29
# %bb.20:                               # %lor.lhs.false57
                                        #   in Loop: Header=BB11_7 Depth=1
	move	$a0, $s4
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB11_29
# %bb.21:                               # %lor.lhs.false62
                                        #   in Loop: Header=BB11_7 Depth=1
	move	$a0, $s4
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB11_29
# %bb.22:                               # %lor.lhs.false67
                                        #   in Loop: Header=BB11_7 Depth=1
	move	$a0, $s4
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB11_29
# %bb.23:                               # %lor.lhs.false72
                                        #   in Loop: Header=BB11_7 Depth=1
	move	$a0, $s4
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB11_29
# %bb.24:                               # %lor.lhs.false77
                                        #   in Loop: Header=BB11_7 Depth=1
	move	$a0, $s4
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB11_29
# %bb.25:                               # %lor.lhs.false82
                                        #   in Loop: Header=BB11_7 Depth=1
	move	$a0, $s4
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB11_29
# %bb.26:                               # %lor.lhs.false87
                                        #   in Loop: Header=BB11_7 Depth=1
	move	$a0, $s4
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB11_29
# %bb.27:                               # %lor.lhs.false92
                                        #   in Loop: Header=BB11_7 Depth=1
	move	$a0, $s4
	move	$a1, $s6
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB11_29
# %bb.28:                               # %lor.lhs.false97
                                        #   in Loop: Header=BB11_7 Depth=1
	move	$a0, $s4
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_6
	.p2align	4, , 16
.LBB11_29:                              # %if.then102
                                        #   in Loop: Header=BB11_7 Depth=1
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $s2, $a0
	addi.d	$a0, $a0, 32
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_45
# %bb.30:                               # %if.end113
                                        #   in Loop: Header=BB11_7 Depth=1
	move	$s3, $a0
	move	$a0, $s4
	move	$a1, $s6
	pcaddu18i	$ra, %call36(cli_strbcasestr)
	jirl	$ra, $ra, 0
	ld.d	$s2, $fp, 0
	beqz	$a0, .LBB11_32
# %bb.31:                               # %if.then118
                                        #   in Loop: Header=BB11_7 Depth=1
	move	$a0, $s4
	move	$a1, $s8
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	masknez	$a1, $s8, $a0
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a4, $a0, $a1
	move	$a0, $s3
	move	$a1, $s5
	move	$a2, $s2
	move	$a3, $s4
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	b	.LBB11_33
.LBB11_32:                              # %if.else
                                        #   in Loop: Header=BB11_7 Depth=1
	move	$a0, $s3
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	move	$a2, $s2
	move	$a3, $s4
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
.LBB11_33:                              # %if.end131
                                        #   in Loop: Header=BB11_7 Depth=1
	addi.d	$a1, $sp, 152
	move	$a0, $s3
	pcaddu18i	$ra, %call36(stat)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $fp, 8
	beqz	$a0, .LBB11_44
# %bb.34:                               # %for.body.lr.ph
                                        #   in Loop: Header=BB11_7 Depth=1
	move	$t0, $zero
	ld.d	$a4, $fp, 16
	ld.d	$a1, $sp, 160
	ld.d	$a2, $sp, 240
	addi.d	$a3, $a0, -1
	addi.d	$a4, $a4, 88
	ori	$a5, $zero, 1
.LBB11_35:                              # %for.body.outer
                                        #   Parent Loop BB11_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_36 Depth 3
	slli.d	$a6, $t0, 7
	add.d	$a7, $a4, $a6
	move	$a6, $t0
	.p2align	4, , 16
.LBB11_36:                              # %for.body
                                        #   Parent Loop BB11_7 Depth=1
                                        #     Parent Loop BB11_35 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t0, $a7, -80
	beq	$t0, $a1, .LBB11_38
# %bb.37:                               # %for.inc
                                        #   in Loop: Header=BB11_36 Depth=3
	addi.d	$a6, $a6, 1
	addi.d	$a7, $a7, 128
	bne	$a0, $a6, .LBB11_36
	b	.LBB11_5
	.p2align	4, , 16
.LBB11_38:                              # %if.then136
                                        #   in Loop: Header=BB11_35 Depth=2
	ld.d	$a5, $a7, 0
	bne	$a5, $a2, .LBB11_44
# %bb.39:                               # %for.inc.thread
                                        #   in Loop: Header=BB11_35 Depth=2
	move	$a5, $zero
	addi.d	$t0, $a6, 1
	bne	$a3, $a6, .LBB11_35
	b	.LBB11_6
.LBB11_40:                              # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -111
.LBB11_41:                              # %cleanup
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
	ret
.LBB11_42:                              # %if.then3
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -115
	b	.LBB11_41
.LBB11_43:                              # %while.end
	move	$a0, $s0
	pcaddu18i	$ra, %call36(closedir)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB11_41
.LBB11_44:                              # %if.then143
	move	$a0, $s0
	pcaddu18i	$ra, %call36(closedir)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	b	.LBB11_41
.LBB11_45:                              # %if.then111
	move	$a0, $s0
	pcaddu18i	$ra, %call36(closedir)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -114
	b	.LBB11_41
.Lfunc_end11:
	.size	cl_statchkdir, .Lfunc_end11-cl_statchkdir
                                        # -- End function
	.globl	cl_build                        # -- Begin function cl_build
	.p2align	5
	.type	cl_build,@function
cl_build:                               # @cl_build
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(cli_addtypesigs)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB12_16
# %bb.1:                                # %for.cond.preheader
	move	$s0, $a0
	ld.d	$a1, $fp, 16
	ld.d	$a0, $a1, 0
	beqz	$a0, .LBB12_3
# %bb.2:                                # %if.then3
	pcaddu18i	$ra, %call36(cli_ac_buildtrie)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
.LBB12_3:                               # %for.inc
	ld.d	$a0, $a1, 8
	beqz	$a0, .LBB12_5
# %bb.4:                                # %if.then3.1
	pcaddu18i	$ra, %call36(cli_ac_buildtrie)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
.LBB12_5:                               # %for.inc.1
	ld.d	$a0, $a1, 16
	beqz	$a0, .LBB12_7
# %bb.6:                                # %if.then3.2
	pcaddu18i	$ra, %call36(cli_ac_buildtrie)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
.LBB12_7:                               # %for.inc.2
	ld.d	$a0, $a1, 24
	beqz	$a0, .LBB12_9
# %bb.8:                                # %if.then3.3
	pcaddu18i	$ra, %call36(cli_ac_buildtrie)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
.LBB12_9:                               # %for.inc.3
	ld.d	$a0, $a1, 32
	beqz	$a0, .LBB12_11
# %bb.10:                               # %if.then3.4
	pcaddu18i	$ra, %call36(cli_ac_buildtrie)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
.LBB12_11:                              # %for.inc.4
	ld.d	$a0, $a1, 40
	beqz	$a0, .LBB12_13
# %bb.12:                               # %if.then3.5
	pcaddu18i	$ra, %call36(cli_ac_buildtrie)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
.LBB12_13:                              # %for.inc.5
	ld.d	$a0, $a1, 48
	beqz	$a0, .LBB12_15
# %bb.14:                               # %if.then3.6
	pcaddu18i	$ra, %call36(cli_ac_buildtrie)
	jirl	$ra, $ra, 0
.LBB12_15:                              # %for.inc.6
	ld.d	$a0, $fp, 80
	pcaddu18i	$ra, %call36(cli_dconf_print)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB12_16:                              # %cleanup
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end12:
	.size	cl_build, .Lfunc_end12-cl_build
                                        # -- End function
	.globl	cl_dup                          # -- Begin function cl_dup
	.p2align	5
	.type	cl_dup,@function
cl_dup:                                 # @cl_dup
# %bb.0:                                # %entry
	beqz	$a0, .LBB13_2
# %bb.1:                                # %if.end
	ld.w	$a1, $a0, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 0
	ret
.LBB13_2:                               # %if.then
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.44)
	addi.d	$a1, $a1, %pc_lo12(.L.str.44)
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end13:
	.size	cl_dup, .Lfunc_end13-cl_dup
                                        # -- End function
	.p2align	5                               # -- Begin function cli_loaddb
	.type	cli_loaddb,@function
cli_loaddb:                             # @cli_loaddb
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	lu12i.w	$a4, 1
	ori	$a4, $a4, 2160
	sub.d	$sp, $sp, $a4
	move	$s2, $a3
	move	$s0, $a2
	move	$fp, $a1
	move	$s1, $a0
	move	$a0, $a1
	move	$a1, $a3
	pcaddu18i	$ra, %call36(cli_initengine)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	bnez	$a0, .LBB14_2
# %bb.1:                                # %if.end
	move	$a0, $a1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cli_initroots)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	beqz	$a0, .LBB14_4
.LBB14_2:                               # %if.then
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(cl_free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB14_3:                               # %cleanup
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2160
	add.d	$sp, $sp, $a1
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.LBB14_4:                               # %if.end4
	ld.d	$a0, $a1, 16
	ld.d	$s3, $a0, 0
	lu12i.w	$a1, 2
	addi.d	$a0, $sp, 16
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_12
# %bb.5:                                # %while.body.preheader
	move	$s2, $zero
	ori	$s6, $zero, 61
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$s4, $a0, %pc_lo12(.L.str.53)
	lu12i.w	$s5, 2
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$s7, $a0, %pc_lo12(.L.str.54)
	b	.LBB14_7
	.p2align	4, , 16
.LBB14_6:                               # %while.cond.backedge
                                        #   in Loop: Header=BB14_7 Depth=1
	addi.d	$a0, $sp, 16
	move	$a1, $s5
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_14
.LBB14_7:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(cli_chomp)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 16
	ori	$a1, $zero, 61
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	addi.w	$s2, $s2, 1
	beqz	$a0, .LBB14_11
# %bb.8:                                # %if.end14
                                        #   in Loop: Header=BB14_7 Depth=1
	ld.bu	$a1, $a0, 1
	st.b	$zero, $a0, 0
	beq	$a1, $s6, .LBB14_6
# %bb.9:                                # %if.end18
                                        #   in Loop: Header=BB14_7 Depth=1
	addi.d	$a2, $a0, 1
	addi.d	$a1, $sp, 16
	move	$a0, $s3
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(cli_parse_add)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_6
# %bb.10:
	move	$s4, $s7
.LBB14_11:                              # %if.then27
	move	$a0, $s4
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a0, $a0, %pc_lo12(.L.str.56)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	b	.LBB14_13
.LBB14_12:                              # %if.then24
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a0, $a0, %pc_lo12(.L.str.55)
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
.LBB14_13:                              # %cleanup
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cl_free)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -116
	b	.LBB14_3
.LBB14_14:                              # %if.end28
	beqz	$s0, .LBB14_16
# %bb.15:                               # %if.then30
	ld.w	$a1, $s0, 0
	move	$a0, $zero
	add.d	$a1, $a1, $s2
	st.w	$a1, $s0, 0
	b	.LBB14_3
.LBB14_16:
	move	$a0, $zero
	b	.LBB14_3
.Lfunc_end14:
	.size	cli_loaddb, .Lfunc_end14-cli_loaddb
                                        # -- End function
	.p2align	5                               # -- Begin function cli_loadmd5
	.type	cli_loadmd5,@function
cli_loadmd5:                            # @cli_loadmd5
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
	lu12i.w	$a5, 1
	ori	$a5, $a5, 2208
	sub.d	$sp, $sp, $a5
	move	$s3, $a3
	move	$s0, $a2
	move	$fp, $a1
	move	$s1, $a0
	move	$a0, $a1
	move	$a1, $a4
	pcaddu18i	$ra, %call36(cli_initengine)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB15_3
# %bb.1:                                # %if.then
	move	$s5, $a0
.LBB15_2:                               # %cleanup
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cl_free)
	jirl	$ra, $ra, 0
	b	.LBB15_48
.LBB15_3:                               # %if.end
	lu12i.w	$a1, 2
	addi.d	$a0, $sp, 56
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB15_47
# %bb.4:                                # %while.body.lr.ph
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$s2, $zero
	move	$s0, $zero
	addi.d	$a0, $s3, -1
	sltu	$a1, $zero, $a0
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	sltui	$a0, $a0, 1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	addi.w	$s5, $zero, -114
	pcalau12i	$a0, %pc_hi20(.L.str.64)
	addi.d	$s8, $a0, %pc_lo12(.L.str.64)
	addi.w	$a0, $zero, -116
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.70)
	addi.d	$a0, $a0, %pc_lo12(.L.str.70)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	b	.LBB15_8
	.p2align	4, , 16
.LBB15_5:                               # %if.else
                                        #   in Loop: Header=BB15_8 Depth=1
	ld.d	$a0, $a0, 24
	beqz	$a0, .LBB15_28
.LBB15_6:                               # %if.end119
                                        #   in Loop: Header=BB15_8 Depth=1
	ld.d	$a1, $s1, 8
	ld.bu	$a2, $a1, 0
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $a0, $a2
	st.d	$a2, $s1, 24
	ld.bu	$a1, $a1, 0
	slli.d	$a1, $a1, 3
	stx.d	$s1, $a0, $a1
.LBB15_7:                               # %if.end133
                                        #   in Loop: Header=BB15_8 Depth=1
	addi.d	$a0, $sp, 56
	lu12i.w	$a1, 2
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB15_32
.LBB15_8:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_23 Depth 2
	addi.w	$s0, $s0, 1
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(cli_chomp)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 32
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB15_45
# %bb.9:                                # %if.end11
                                        #   in Loop: Header=BB15_8 Depth=1
	move	$s1, $a0
	ori	$a0, $zero, 2
	bne	$s3, $a0, .LBB15_11
# %bb.10:                               # %if.then15
                                        #   in Loop: Header=BB15_8 Depth=1
	ori	$a0, $zero, 1
	st.h	$a0, $s1, 20
.LBB15_11:                              # %if.end16
                                        #   in Loop: Header=BB15_8 Depth=1
	addi.d	$a0, $sp, 56
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	move	$a2, $s8
	pcaddu18i	$ra, %call36(cli_strtok)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB15_30
# %bb.12:                               # %if.end22
                                        #   in Loop: Header=BB15_8 Depth=1
	move	$s6, $a0
	pcaddu18i	$ra, %call36(cli_hex2str)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 8
	beqz	$a0, .LBB15_31
# %bb.13:                               # %if.end26
                                        #   in Loop: Header=BB15_8 Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 56
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	move	$a2, $s8
	pcaddu18i	$ra, %call36(cli_strtok)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB15_29
# %bb.14:                               # %if.end33
                                        #   in Loop: Header=BB15_8 Depth=1
	ori	$a2, $zero, 10
	move	$s4, $a0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	st.w	$a0, $s1, 16
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 56
	ori	$a1, $zero, 2
	move	$a2, $s8
	pcaddu18i	$ra, %call36(cli_strtok)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 0
	beqz	$a0, .LBB15_29
# %bb.15:                               # %if.end40
                                        #   in Loop: Header=BB15_8 Depth=1
	ld.d	$a0, $fp, 0
	ori	$a1, $zero, 1
	bne	$s3, $a1, .LBB15_5
# %bb.16:                               # %if.then44
                                        #   in Loop: Header=BB15_8 Depth=1
	ld.d	$s2, $a0, 32
	bnez	$s2, .LBB15_20
# %bb.17:                               # %if.then47
                                        #   in Loop: Header=BB15_8 Depth=1
	ori	$a0, $zero, 80
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	st.d	$a0, $a1, 32
	beqz	$a0, .LBB15_39
# %bb.18:                               # %if.end55
                                        #   in Loop: Header=BB15_8 Depth=1
	pcaddu18i	$ra, %call36(cli_bm_init)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB15_42
# %bb.19:                               # %if.end55.if.end63_crit_edge
                                        #   in Loop: Header=BB15_8 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$s2, $a0, 32
.LBB15_20:                              # %if.end63
                                        #   in Loop: Header=BB15_8 Depth=1
	ori	$a0, $zero, 1
	ori	$a1, $zero, 64
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB15_38
# %bb.21:                               # %if.end70
                                        #   in Loop: Header=BB15_8 Depth=1
	move	$s7, $a0
	ld.d	$a0, $s1, 8
	st.d	$a0, $s7, 0
	ld.wu	$a1, $s2, 32
	ld.d	$a2, $s1, 0
	ld.d	$a0, $s2, 24
	ori	$a3, $zero, 16
	st.h	$a3, $s7, 16
	addi.w	$a3, $a1, 0
	st.d	$a2, $s7, 24
	beqz	$a3, .LBB15_25
# %bb.22:                               # %for.body.lr.ph
                                        #   in Loop: Header=BB15_8 Depth=1
	ld.w	$a2, $s1, 16
	move	$a3, $a1
	move	$a4, $a0
	.p2align	4, , 16
.LBB15_23:                              # %for.body
                                        #   Parent Loop BB15_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $a4, 0
	beq	$a5, $a2, .LBB15_27
# %bb.24:                               # %for.cond
                                        #   in Loop: Header=BB15_23 Depth=2
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 4
	bnez	$a3, .LBB15_23
.LBB15_25:                              # %if.then83
                                        #   in Loop: Header=BB15_8 Depth=1
	addi.d	$a1, $a1, 1
	st.w	$a1, $s2, 32
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 2
	pcaddu18i	$ra, %call36(cli_realloc2)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 24
	beqz	$a0, .LBB15_41
# %bb.26:                               # %if.end96
                                        #   in Loop: Header=BB15_8 Depth=1
	ld.w	$a1, $s2, 32
	ld.w	$a2, $s1, 16
	addi.d	$a1, $a1, -1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 2
	stx.w	$a2, $a0, $a1
.LBB15_27:                              # %if.end102
                                        #   in Loop: Header=BB15_8 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s7
	pcaddu18i	$ra, %call36(cli_bm_addpatt)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB15_7
	b	.LBB15_40
.LBB15_28:                              # %if.then110
                                        #   in Loop: Header=BB15_8 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 256
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	st.d	$a0, $a1, 24
	bnez	$a0, .LBB15_6
	b	.LBB15_39
.LBB15_29:                              # %if.then31
	ld.d	$s6, $s1, 8
	addi.w	$s5, $zero, -116
	b	.LBB15_43
.LBB15_30:
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	b	.LBB15_44
.LBB15_31:                              # %if.then25
	pcalau12i	$a0, %pc_hi20(.L.str.65)
	addi.d	$a0, $a0, %pc_lo12(.L.str.65)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	addi.w	$s5, $zero, -116
	b	.LBB15_43
.LBB15_32:                              # %while.end.thread
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	beqz	$s0, .LBB15_47
# %bb.33:                               # %if.end139
	beqz	$a1, .LBB15_35
# %bb.34:                               # %if.then141
	ld.w	$a0, $a1, 0
	add.d	$a0, $a0, $s0
	st.w	$a0, $a1, 0
.LBB15_35:                              # %if.end142
	beqz	$s2, .LBB15_37
# %bb.36:                               # %if.then144
	ld.d	$a0, $s2, 24
	ld.wu	$a1, $s2, 32
	pcalau12i	$a2, %pc_hi20(scomp)
	addi.d	$a3, $a2, %pc_lo12(scomp)
	ori	$a2, $zero, 4
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
.LBB15_37:                              # %cleanup
	move	$s5, $zero
	b	.LBB15_48
.LBB15_38:                              # %if.then67
	pcalau12i	$a0, %pc_hi20(.L.str.67)
	addi.d	$a0, $a0, %pc_lo12(.L.str.67)
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
.LBB15_39:                              # %if.then52
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s6, $s1, 8
	addi.w	$s5, $zero, -114
	b	.LBB15_43
.LBB15_40:                              # %if.then105
	move	$s4, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.69)
	addi.d	$a0, $a0, %pc_lo12(.L.str.69)
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s6, $s7, 24
	move	$s1, $s7
	move	$s5, $s4
	b	.LBB15_43
.LBB15_41:                              # %if.then93
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$a0, $a0, %pc_lo12(.L.str.68)
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 24
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.w	$s5, $zero, -114
	move	$s6, $s7
	b	.LBB15_43
.LBB15_42:                              # %if.then59
	pcalau12i	$a1, %pc_hi20(.L.str.66)
	addi.d	$a1, $a1, %pc_lo12(.L.str.66)
	move	$s5, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s6, $s1, 8
.LBB15_43:                              # %while.end.sink.split.sink.split
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB15_44:                              # %while.end.sink.split
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB15_45:                              # %while.end
	beqz	$s0, .LBB15_47
# %bb.46:                               # %if.then138
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a0, $a0, %pc_lo12(.L.str.72)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	b	.LBB15_2
.LBB15_47:                              # %if.then135
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a0, $a0, %pc_lo12(.L.str.71)
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cl_free)
	jirl	$ra, $ra, 0
	addi.w	$s5, $zero, -116
.LBB15_48:                              # %cleanup
	move	$a0, $s5
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2208
	add.d	$sp, $sp, $a1
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end15:
	.size	cli_loadmd5, .Lfunc_end15-cli_loadmd5
                                        # -- End function
	.p2align	5                               # -- Begin function cli_loadndb
	.type	cli_loadndb,@function
cli_loadndb:                            # @cli_loadndb
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
	lu12i.w	$a5, 1
	ori	$a5, $a5, 2272
	sub.d	$sp, $sp, $a5
	move	$s4, $a4
	move	$s0, $a3
	move	$s1, $a2
	move	$fp, $a1
	move	$s2, $a0
	move	$a0, $a1
	move	$a1, $a4
	pcaddu18i	$ra, %call36(cli_initengine)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	bnez	$a0, .LBB16_3
# %bb.1:                                # %if.end
	move	$a0, $a1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(cli_initroots)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB16_5
# %bb.2:                                # %if.then3
	ld.d	$a1, $fp, 0
.LBB16_3:                               # %if.then
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(cl_free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB16_4:                               # %cleanup
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2272
	add.d	$sp, $sp, $a1
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.LBB16_5:                               # %while.cond.preheader
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	move	$s3, $zero
	st.d	$zero, $sp, 32                  # 8-byte Folded Spill
	andi	$s0, $s4, 2
	lu12i.w	$s4, 2
	pcalau12i	$a0, %pc_hi20(.L.str.73)
	addi.d	$s5, $a0, %pc_lo12(.L.str.73)
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a0, $a0, %pc_lo12(.L.str.74)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a0, $a0, %pc_lo12(.L.str.75)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.77)
	addi.d	$a0, $a0, %pc_lo12(.L.str.77)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.76)
	addi.d	$a0, $a0, %pc_lo12(.L.str.76)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
.LBB16_6:                               # %while.cond.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_10 Depth 2
	addi.d	$a0, $sp, 72
	move	$a1, $s4
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB16_34
# %bb.7:                                # %while.body.preheader
                                        #   in Loop: Header=BB16_6 Depth=1
	addi.w	$s3, $s3, 1
	b	.LBB16_10
.LBB16_8:                               # %if.then44
                                        #   in Loop: Header=BB16_10 Depth=2
	ori	$a2, $zero, 10
	move	$a0, $s8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	addi.w	$a2, $a0, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	move	$a1, $s7
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB16_9:                               # %while.cond.backedge
                                        #   in Loop: Header=BB16_10 Depth=2
	addi.d	$a0, $sp, 72
	move	$a1, $s4
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	addi.w	$s3, $s3, 1
	beqz	$a0, .LBB16_33
.LBB16_10:                              # %while.body
                                        #   Parent Loop BB16_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 72
	ori	$a2, $zero, 20
	move	$a1, $s5
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB16_9
# %bb.11:                               # %if.end11
                                        #   in Loop: Header=BB16_10 Depth=2
	bnez	$s0, .LBB16_14
# %bb.12:                               # %if.then13
                                        #   in Loop: Header=BB16_10 Depth=2
	addi.d	$a0, $sp, 72
	ori	$a2, $zero, 13
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB16_9
# %bb.13:                               # %lor.lhs.false
                                        #   in Loop: Header=BB16_10 Depth=2
	addi.d	$a0, $sp, 72
	ori	$a2, $zero, 14
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB16_9
.LBB16_14:                              # %if.end22
                                        #   in Loop: Header=BB16_10 Depth=2
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(cli_chomp)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 72
	ori	$a1, $zero, 58
	ori	$a2, $zero, 6
	lu12i.w	$a3, 2
	ori	$a3, $a3, 72
	add.d	$a3, $sp, $a3
	pcaddu18i	$ra, %call36(cli_strtokenize)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 72
	add.d	$a0, $sp, $a0
	ld.d	$s7, $a0, 0
	beqz	$s7, .LBB16_31
# %bb.15:                               # %if.end30
                                        #   in Loop: Header=BB16_10 Depth=2
	lu12i.w	$a0, 2
	ori	$a0, $a0, 104
	add.d	$a0, $sp, $a0
	ld.d	$s8, $a0, 0
	beqz	$s8, .LBB16_21
# %bb.16:                               # %if.then33
                                        #   in Loop: Header=BB16_10 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ld.b	$a0, $s8, 0
	ld.d	$a1, $s6, 0
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $a1, $a0
	andi	$a0, $a0, 2048
	beqz	$a0, .LBB16_31
# %bb.17:                               # %if.end40
                                        #   in Loop: Header=BB16_10 Depth=2
	ori	$a2, $zero, 10
	move	$a0, $s8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	addi.w	$s1, $a0, 0
	pcaddu18i	$ra, %call36(cl_retflevel)
	jirl	$ra, $ra, 0
	bltu	$a0, $s1, .LBB16_8
# %bb.18:                               # %if.end46
                                        #   in Loop: Header=BB16_10 Depth=2
	lu12i.w	$a0, 2
	ori	$a0, $a0, 112
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB16_21
# %bb.19:                               # %if.then49
                                        #   in Loop: Header=BB16_10 Depth=2
	ld.b	$a1, $a0, 0
	ld.d	$a2, $s6, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a2, $a1
	andi	$a1, $a1, 2048
	beqz	$a1, .LBB16_31
# %bb.20:                               # %if.end58
                                        #   in Loop: Header=BB16_10 Depth=2
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	addi.w	$s1, $a0, 0
	pcaddu18i	$ra, %call36(cl_retflevel)
	jirl	$ra, $ra, 0
	bltu	$s1, $a0, .LBB16_9
	.p2align	4, , 16
.LBB16_21:                              # %if.end67
                                        #   in Loop: Header=BB16_10 Depth=2
	lu12i.w	$a0, 2
	ori	$a0, $a0, 80
	add.d	$a0, $sp, $a0
	ld.d	$s6, $a0, 0
	beqz	$s6, .LBB16_31
# %bb.22:                               # %lor.lhs.false70
                                        #   in Loop: Header=BB16_10 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s6, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 2048
	beqz	$a0, .LBB16_31
# %bb.23:                               # %if.end79
                                        #   in Loop: Header=BB16_10 Depth=2
	ori	$a2, $zero, 10
	move	$a0, $s6
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	bstrpick.d	$a5, $a0, 15, 0
	ori	$a0, $zero, 7
	bltu	$a5, $a0, .LBB16_25
# %bb.24:                               # %if.then85
                                        #   in Loop: Header=BB16_10 Depth=2
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	move	$a1, $s7
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB16_9
.LBB16_25:                              # %if.end87
                                        #   in Loop: Header=BB16_6 Depth=1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 88
	add.d	$a0, $sp, $a0
	ld.d	$a4, $a0, 0
	beqz	$a4, .LBB16_31
# %bb.26:                               # %if.else
                                        #   in Loop: Header=BB16_6 Depth=1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 96
	add.d	$a0, $sp, $a0
	ld.d	$a2, $a0, 0
	beqz	$a2, .LBB16_31
# %bb.27:                               # %sub_0
                                        #   in Loop: Header=BB16_6 Depth=1
	ld.bu	$a0, $a4, 0
	ori	$a1, $zero, 42
	bne	$a0, $a1, .LBB16_29
# %bb.28:                               # %sub_1
                                        #   in Loop: Header=BB16_6 Depth=1
	ld.bu	$a0, $a4, 1
	sltui	$a0, $a0, 1
	masknez	$a4, $a4, $a0
.LBB16_29:                              # %if.end102.tail
                                        #   in Loop: Header=BB16_6 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, 16
	slli.d	$a1, $a5, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	move	$a1, $s7
	move	$a3, $zero
	pcaddu18i	$ra, %call36(cli_parse_add)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB16_6
# %bb.30:                               # %if.then105
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a0, $a0, %pc_lo12(.L.str.54)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
.LBB16_31:                              # %while.end
	beqz	$s3, .LBB16_42
# %bb.32:                               # %if.then111
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a0, $a0, %pc_lo12(.L.str.56)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	b	.LBB16_43
.LBB16_33:                              # %while.end.thread.loopexit
	addi.w	$s3, $s3, -1
.LBB16_34:                              # %while.end.thread
	beqz	$s3, .LBB16_42
# %bb.35:                               # %if.end112
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	beqz	$a1, .LBB16_37
# %bb.36:                               # %if.then114
	ld.w	$a0, $a1, 0
	add.d	$a0, $a0, $a2
	st.w	$a0, $a1, 0
.LBB16_37:                              # %if.end115
	move	$a0, $zero
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	beqz	$a1, .LBB16_4
# %bb.38:                               # %if.end115
	beqz	$a2, .LBB16_4
# %bb.39:                               # %land.lhs.true119
	ld.d	$a0, $fp, 0
	ld.hu	$a1, $a0, 4
	bnez	$a1, .LBB16_41
# %bb.40:                               # %if.then122
	ori	$a1, $zero, 1
	st.h	$a1, $a0, 4
	pcalau12i	$a0, %pc_hi20(.L.str.78)
	addi.d	$a0, $a0, %pc_lo12(.L.str.78)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB16_41:                              # %cleanup
	move	$a0, $zero
	b	.LBB16_4
.LBB16_42:                              # %if.then108
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a0, $a0, %pc_lo12(.L.str.55)
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
.LBB16_43:                              # %cleanup
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cl_free)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -116
	b	.LBB16_4
.Lfunc_end16:
	.size	cli_loadndb, .Lfunc_end16-cli_loadndb
                                        # -- End function
	.p2align	5                               # -- Begin function cli_loadmd
	.type	cli_loadmd,@function
cli_loadmd:                             # @cli_loadmd
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
	lu12i.w	$a5, 1
	ori	$a5, $a5, 2176
	sub.d	$sp, $sp, $a5
	move	$s3, $a3
	move	$s0, $a2
	move	$fp, $a1
	move	$s2, $a0
	move	$a0, $a1
	move	$a1, $a4
	pcaddu18i	$ra, %call36(cli_initengine)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB17_3
# %bb.1:                                # %if.then
	move	$s1, $a0
.LBB17_2:                               # %cleanup
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cl_free)
	jirl	$ra, $ra, 0
	b	.LBB17_56
.LBB17_3:                               # %while.cond.preheader
	lu12i.w	$a1, 2
	addi.d	$a0, $sp, 24
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB17_55
# %bb.4:                                # %while.body.lr.ph.lr.ph
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
	move	$a1, $zero
	addi.d	$a0, $s3, -1
	sltui	$a0, $a0, 1
	ori	$a2, $zero, 48
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 40
	maskeqz	$a0, $a3, $a0
	or	$s7, $a0, $a2
	addi.w	$s1, $zero, -114
	pcalau12i	$a0, %pc_hi20(.L.str.64)
	addi.d	$s4, $a0, %pc_lo12(.L.str.64)
	ori	$s3, $zero, 42
.LBB17_5:                               # %while.body.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_6 Depth 2
	nor	$a1, $a1, $zero
.LBB17_6:                               # %while.body
                                        #   Parent Loop BB17_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a0, $sp, 24
	move	$s8, $a1
	ori	$a1, $zero, 35
	beq	$a0, $a1, .LBB17_43
# %bb.7:                                # %if.end6
                                        #   in Loop: Header=BB17_6 Depth=2
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(cli_chomp)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 56
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB17_54
# %bb.8:                                # %if.end12
                                        #   in Loop: Header=BB17_6 Depth=2
	move	$s5, $a0
	addi.d	$a0, $sp, 24
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_strtok)
	jirl	$ra, $ra, 0
	st.d	$a0, $s5, 40
	beqz	$a0, .LBB17_47
# %bb.9:                                # %if.end17
                                        #   in Loop: Header=BB17_6 Depth=2
	addi.d	$a0, $sp, 24
	ori	$a1, $zero, 1
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_strtok)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB17_46
# %bb.10:                               # %if.else
                                        #   in Loop: Header=BB17_6 Depth=2
	ori	$a2, $zero, 10
	move	$s6, $a0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	st.w	$a0, $s5, 20
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 24
	ori	$a1, $zero, 2
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_strtok)
	jirl	$ra, $ra, 0
	st.d	$a0, $s5, 32
	beqz	$a0, .LBB17_46
# %bb.11:                               # %sub_0
                                        #   in Loop: Header=BB17_6 Depth=2
	ld.bu	$a1, $a0, 0
	bne	$a1, $s3, .LBB17_14
# %bb.12:                               # %if.else30.tail
                                        #   in Loop: Header=BB17_6 Depth=2
	ld.bu	$a1, $a0, 1
	bnez	$a1, .LBB17_14
# %bb.13:                               # %if.then34
                                        #   in Loop: Header=BB17_6 Depth=2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s5, 32
	.p2align	4, , 16
.LBB17_14:                              # %if.end38
                                        #   in Loop: Header=BB17_6 Depth=2
	addi.d	$a0, $sp, 24
	ori	$a1, $zero, 3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_strtok)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB17_45
# %bb.15:                               # %sub_090
                                        #   in Loop: Header=BB17_6 Depth=2
	move	$s6, $a0
	ld.bu	$a0, $a0, 0
	bne	$a0, $s3, .LBB17_17
# %bb.16:                               # %if.else45.tail
                                        #   in Loop: Header=BB17_6 Depth=2
	ld.bu	$a1, $s6, 1
	addi.d	$a0, $zero, -1
	beqz	$a1, .LBB17_18
.LBB17_17:                              # %if.else49
                                        #   in Loop: Header=BB17_6 Depth=2
	ori	$a2, $zero, 10
	move	$a0, $s6
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
.LBB17_18:                              # %if.end52
                                        #   in Loop: Header=BB17_6 Depth=2
	st.w	$a0, $s5, 4
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 24
	ori	$a1, $zero, 4
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_strtok)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB17_45
# %bb.19:                               # %sub_093
                                        #   in Loop: Header=BB17_6 Depth=2
	move	$s6, $a0
	ld.bu	$a0, $a0, 0
	bne	$a0, $s3, .LBB17_21
# %bb.20:                               # %if.else60.tail
                                        #   in Loop: Header=BB17_6 Depth=2
	ld.bu	$a1, $s6, 1
	addi.d	$a0, $zero, -1
	beqz	$a1, .LBB17_22
.LBB17_21:                              # %if.else64
                                        #   in Loop: Header=BB17_6 Depth=2
	ori	$a2, $zero, 10
	move	$a0, $s6
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
.LBB17_22:                              # %if.end67
                                        #   in Loop: Header=BB17_6 Depth=2
	st.w	$a0, $s5, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 24
	ori	$a1, $zero, 5
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_strtok)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB17_45
# %bb.23:                               # %sub_096
                                        #   in Loop: Header=BB17_6 Depth=2
	move	$s6, $a0
	ld.bu	$a0, $a0, 0
	bne	$a0, $s3, .LBB17_25
# %bb.24:                               # %if.else75.tail
                                        #   in Loop: Header=BB17_6 Depth=2
	ld.bu	$a0, $s6, 1
	beqz	$a0, .LBB17_39
.LBB17_25:                              # %if.else80
                                        #   in Loop: Header=BB17_6 Depth=2
	move	$a0, $s6
	pcaddu18i	$ra, %call36(cli_hex2num)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	beq	$a0, $a1, .LBB17_48
.LBB17_26:                              # %if.end87
                                        #   in Loop: Header=BB17_6 Depth=2
	st.w	$a0, $s5, 12
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 24
	ori	$a1, $zero, 6
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_strtok)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB17_45
# %bb.27:                               # %sub_099
                                        #   in Loop: Header=BB17_6 Depth=2
	move	$s6, $a0
	ld.bu	$a0, $a0, 0
	bne	$a0, $s3, .LBB17_29
# %bb.28:                               # %if.else95.tail
                                        #   in Loop: Header=BB17_6 Depth=2
	ld.bu	$a0, $s6, 1
	beqz	$a0, .LBB17_40
.LBB17_29:                              # %if.else99
                                        #   in Loop: Header=BB17_6 Depth=2
	ori	$a2, $zero, 10
	move	$a0, $s6
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
.LBB17_30:                              # %if.end102
                                        #   in Loop: Header=BB17_6 Depth=2
	st.w	$a0, $s5, 8
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.64)
	addi.d	$a2, $a0, %pc_lo12(.L.str.64)
	addi.d	$a0, $sp, 24
	ori	$a1, $zero, 7
	pcaddu18i	$ra, %call36(cli_strtok)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB17_45
# %bb.31:                               # %sub_0102
                                        #   in Loop: Header=BB17_6 Depth=2
	move	$s6, $a0
	ld.bu	$a0, $a0, 0
	bne	$a0, $s3, .LBB17_33
# %bb.32:                               # %if.else110.tail
                                        #   in Loop: Header=BB17_6 Depth=2
	ld.bu	$a0, $s6, 1
	beqz	$a0, .LBB17_41
.LBB17_33:                              # %if.else114
                                        #   in Loop: Header=BB17_6 Depth=2
	ori	$a2, $zero, 10
	move	$a0, $s6
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
.LBB17_34:                              # %if.end117
                                        #   in Loop: Header=BB17_6 Depth=2
	st.w	$a0, $s5, 16
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.64)
	addi.d	$a2, $a0, %pc_lo12(.L.str.64)
	addi.d	$a0, $sp, 24
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(cli_strtok)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB17_45
# %bb.35:                               # %sub_0105
                                        #   in Loop: Header=BB17_6 Depth=2
	move	$s6, $a0
	ld.bu	$a0, $a0, 0
	bne	$a0, $s3, .LBB17_37
# %bb.36:                               # %if.else125.tail
                                        #   in Loop: Header=BB17_6 Depth=2
	ld.bu	$a0, $s6, 1
	beqz	$a0, .LBB17_42
.LBB17_37:                              # %if.else129
                                        #   in Loop: Header=BB17_6 Depth=2
	ori	$a2, $zero, 10
	move	$a0, $s6
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
.LBB17_38:                              # %if.end132
                                        #   in Loop: Header=BB17_6 Depth=2
	st.w	$a0, $s5, 24
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ldx.d	$a1, $a0, $s7
	stx.d	$s5, $a0, $s7
	st.d	$a1, $s5, 48
	addi.d	$a0, $sp, 24
	lu12i.w	$a1, 2
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	addi.d	$a1, $s8, -1
	bnez	$a0, .LBB17_6
	b	.LBB17_44
.LBB17_39:                              #   in Loop: Header=BB17_6 Depth=2
	move	$a0, $zero
	b	.LBB17_26
.LBB17_40:                              #   in Loop: Header=BB17_6 Depth=2
	addi.d	$a0, $zero, -1
	b	.LBB17_30
.LBB17_41:                              #   in Loop: Header=BB17_6 Depth=2
	move	$a0, $zero
	b	.LBB17_34
.LBB17_42:                              #   in Loop: Header=BB17_6 Depth=2
	move	$a0, $zero
	b	.LBB17_38
.LBB17_43:                              # %if.then4
                                        #   in Loop: Header=BB17_5 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$a0, $sp, 24
	lu12i.w	$a1, 2
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	sub.d	$a1, $zero, $s8
	bnez	$a0, .LBB17_5
.LBB17_44:
	move	$s1, $zero
	ori	$a0, $zero, 1
	addi.w	$a1, $s8, 0
	bnez	$a1, .LBB17_49
	b	.LBB17_55
.LBB17_45:                              # %while.end.sink.split.sink.split.sink.split
	ld.d	$a0, $s5, 32
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB17_46:                              # %while.end.sink.split.sink.split
	ld.d	$a0, $s5, 40
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB17_47:                              # %while.end.sink.split
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB17_48:                              # %while.end
	move	$a0, $zero
	addi.w	$s1, $zero, -116
	addi.w	$a1, $s8, 0
	beqz	$a1, .LBB17_55
.LBB17_49:                              # %if.end144
	beqz	$a0, .LBB17_52
# %bb.50:                               # %if.end147
	beqz	$s0, .LBB17_53
# %bb.51:                               # %if.then149
	ld.w	$a0, $s0, 0
	move	$s1, $zero
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	sub.d	$a0, $a0, $s8
	st.w	$a0, $s0, 0
	b	.LBB17_56
.LBB17_52:                              # %if.then146
	sub.w	$a1, $zero, $s8
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a0, $a0, %pc_lo12(.L.str.56)
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	b	.LBB17_2
.LBB17_53:
	move	$s1, $zero
	b	.LBB17_56
.LBB17_54:
	move	$a0, $zero
	addi.w	$a1, $s8, 0
	bnez	$a1, .LBB17_49
.LBB17_55:                              # %if.then143
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a0, $a0, %pc_lo12(.L.str.55)
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cl_free)
	jirl	$ra, $ra, 0
	addi.w	$s1, $zero, -116
.LBB17_56:                              # %cleanup
	move	$a0, $s1
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2176
	add.d	$sp, $sp, $a1
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end17:
	.size	cli_loadmd, .Lfunc_end17-cli_loadmd
                                        # -- End function
	.p2align	5                               # -- Begin function cli_loadwdb
	.type	cli_loadwdb,@function
cli_loadwdb:                            # @cli_loadwdb
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a2
	move	$fp, $a1
	move	$s1, $a0
	move	$a0, $a1
	move	$a1, $a2
	pcaddu18i	$ra, %call36(cli_initengine)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	beqz	$a0, .LBB18_3
# %bb.1:
	move	$s0, $a0
.LBB18_2:                               # %cleanup.sink.split
	move	$a0, $a1
	pcaddu18i	$ra, %call36(cl_free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	b	.LBB18_8
.LBB18_3:                               # %if.end
	ld.d	$a0, $a1, 80
	ld.bu	$a0, $a0, 24
	andi	$a0, $a0, 1
	beqz	$a0, .LBB18_7
# %bb.4:                                # %if.end3
	ld.d	$a0, $a1, 56
	beqz	$a0, .LBB18_9
.LBB18_5:                               # %if.end10
	ori	$a3, $zero, 1
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(load_regex_matcher)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB18_7
# %bb.6:                                # %if.then14
	move	$s0, $a0
	ld.d	$a1, $fp, 0
	b	.LBB18_11
.LBB18_7:
	move	$a0, $zero
.LBB18_8:                               # %cleanup
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB18_9:                               # %if.then5
	move	$a0, $a1
	pcaddu18i	$ra, %call36(init_whitelist)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	beqz	$a0, .LBB18_12
# %bb.10:
	move	$s0, $a0
.LBB18_11:                              # %cleanup.sink.split.sink.split
	move	$a0, $a1
	pcaddu18i	$ra, %call36(phishing_done)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	b	.LBB18_2
.LBB18_12:                              # %if.then5.if.end10_crit_edge
	ld.d	$a0, $a1, 56
	b	.LBB18_5
.Lfunc_end18:
	.size	cli_loadwdb, .Lfunc_end18-cli_loadwdb
                                        # -- End function
	.p2align	5                               # -- Begin function cli_loadpdb
	.type	cli_loadpdb,@function
cli_loadpdb:                            # @cli_loadpdb
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a2
	move	$fp, $a1
	move	$s1, $a0
	move	$a0, $a1
	move	$a1, $a2
	pcaddu18i	$ra, %call36(cli_initengine)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	beqz	$a0, .LBB19_3
# %bb.1:
	move	$s0, $a0
.LBB19_2:                               # %cleanup.sink.split
	move	$a0, $a1
	pcaddu18i	$ra, %call36(cl_free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	b	.LBB19_8
.LBB19_3:                               # %if.end
	ld.d	$a0, $a1, 80
	ld.bu	$a0, $a0, 24
	andi	$a0, $a0, 1
	beqz	$a0, .LBB19_7
# %bb.4:                                # %if.end3
	ld.d	$a0, $a1, 64
	beqz	$a0, .LBB19_9
.LBB19_5:                               # %if.end10
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $zero
	pcaddu18i	$ra, %call36(load_regex_matcher)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB19_7
# %bb.6:                                # %if.then14
	move	$s0, $a0
	ld.d	$a1, $fp, 0
	b	.LBB19_11
.LBB19_7:
	move	$a0, $zero
.LBB19_8:                               # %cleanup
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB19_9:                               # %if.then5
	move	$a0, $a1
	pcaddu18i	$ra, %call36(init_domainlist)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	beqz	$a0, .LBB19_12
# %bb.10:
	move	$s0, $a0
.LBB19_11:                              # %cleanup.sink.split.sink.split
	move	$a0, $a1
	pcaddu18i	$ra, %call36(phishing_done)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	b	.LBB19_2
.LBB19_12:                              # %if.then5.if.end10_crit_edge
	ld.d	$a0, $a1, 64
	b	.LBB19_5
.Lfunc_end19:
	.size	cli_loadpdb, .Lfunc_end19-cli_loadpdb
                                        # -- End function
	.p2align	5                               # -- Begin function cli_initroots
	.type	cli_initroots,@function
cli_initroots:                          # @cli_initroots
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 0
	andi	$a1, $a1, 4
	bnez	$a1, .LBB20_10
# %bb.1:                                # %for.body.us.preheader
	beqz	$a0, .LBB20_18
.LBB20_2:                               # %for.inc.us
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, 8
	beqz	$a0, .LBB20_26
.LBB20_3:                               # %for.inc.us.1
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB20_34
.LBB20_4:                               # %for.inc.us.2
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, 24
	beqz	$a0, .LBB20_42
.LBB20_5:                               # %for.inc.us.3
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, 32
	beqz	$a0, .LBB20_50
.LBB20_6:                               # %for.inc.us.4
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, 40
	beqz	$a0, .LBB20_58
.LBB20_7:                               # %for.inc.us.5
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, 48
	bnez	$a0, .LBB20_17
# %bb.8:                                # %if.then.us.6
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a0, $a0, %pc_lo12(.L.str.57)
	ori	$a1, $zero, 6
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 80
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	st.d	$a0, $a1, 48
	beqz	$a0, .LBB20_70
# %bb.9:                                # %if.end.us.6
	move	$fp, $a0
	b	.LBB20_68
.LBB20_10:                              # %for.body.preheader
	beqz	$a0, .LBB20_22
.LBB20_11:                              # %for.inc
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, 8
	beqz	$a0, .LBB20_30
.LBB20_12:                              # %for.inc.1
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB20_38
.LBB20_13:                              # %for.inc.2
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, 24
	beqz	$a0, .LBB20_46
.LBB20_14:                              # %for.inc.3
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, 32
	beqz	$a0, .LBB20_54
.LBB20_15:                              # %for.inc.4
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, 40
	beqz	$a0, .LBB20_62
.LBB20_16:                              # %for.inc.5
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, 48
	beqz	$a0, .LBB20_66
.LBB20_17:
	move	$s0, $zero
	b	.LBB20_72
.LBB20_18:                              # %if.then.us
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a0, $a0, %pc_lo12(.L.str.57)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 80
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	st.d	$a0, $a1, 0
	beqz	$a0, .LBB20_70
# %bb.19:                               # %if.end.us
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a0, $a0, %pc_lo12(.L.str.60)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cli_ac_mindepth)
	ld.d	$a0, $a0, %got_pc_lo12(cli_ac_mindepth)
	pcalau12i	$a1, %got_pc_hi20(cli_ac_maxdepth)
	ld.d	$a2, $a1, %got_pc_lo12(cli_ac_maxdepth)
	ld.bu	$a1, $a0, 0
	ld.bu	$a2, $a2, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_ac_init)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB20_69
# %bb.20:                               # %if.end13.us
	ld.bu	$a0, $s1, 2
	bnez	$a0, .LBB20_2
# %bb.21:                               # %if.then16.us
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$a0, $a0, %pc_lo12(.L.str.62)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_bm_init)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB20_75
	b	.LBB20_2
.LBB20_22:                              # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a0, $a0, %pc_lo12(.L.str.57)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 80
	ori	$s0, $zero, 1
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	st.d	$a0, $a1, 0
	beqz	$a0, .LBB20_70
# %bb.23:                               # %if.end
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	st.b	$s0, $s1, 2
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a0, $a0, %pc_lo12(.L.str.60)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cli_ac_mindepth)
	ld.d	$a0, $a0, %got_pc_lo12(cli_ac_mindepth)
	pcalau12i	$a1, %got_pc_hi20(cli_ac_maxdepth)
	ld.d	$a2, $a1, %got_pc_lo12(cli_ac_maxdepth)
	ld.bu	$a1, $a0, 0
	ld.bu	$a2, $a2, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_ac_init)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB20_69
# %bb.24:                               # %if.end13
	ld.bu	$a0, $s1, 2
	bnez	$a0, .LBB20_11
# %bb.25:                               # %if.then16
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$a0, $a0, %pc_lo12(.L.str.62)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_bm_init)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB20_75
	b	.LBB20_11
.LBB20_26:                              # %if.then.us.1
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a0, $a0, %pc_lo12(.L.str.57)
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 80
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	st.d	$a0, $a1, 8
	beqz	$a0, .LBB20_70
# %bb.27:                               # %if.end.us.1
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a0, $a0, %pc_lo12(.L.str.60)
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cli_ac_mindepth)
	ld.d	$a0, $a0, %got_pc_lo12(cli_ac_mindepth)
	pcalau12i	$a1, %got_pc_hi20(cli_ac_maxdepth)
	ld.d	$a2, $a1, %got_pc_lo12(cli_ac_maxdepth)
	ld.bu	$a1, $a0, 0
	ld.bu	$a2, $a2, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_ac_init)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB20_69
# %bb.28:                               # %if.end13.us.1
	ld.bu	$a0, $s1, 2
	bnez	$a0, .LBB20_3
# %bb.29:                               # %if.then16.us.1
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$a0, $a0, %pc_lo12(.L.str.62)
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_bm_init)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB20_75
	b	.LBB20_3
.LBB20_30:                              # %if.then.1
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a0, $a0, %pc_lo12(.L.str.57)
	ori	$a1, $zero, 1
	ori	$s0, $zero, 1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 80
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	st.d	$a0, $a1, 8
	beqz	$a0, .LBB20_70
# %bb.31:                               # %if.end.1
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	st.b	$s0, $s1, 2
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a0, $a0, %pc_lo12(.L.str.60)
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cli_ac_mindepth)
	ld.d	$a0, $a0, %got_pc_lo12(cli_ac_mindepth)
	pcalau12i	$a1, %got_pc_hi20(cli_ac_maxdepth)
	ld.d	$a2, $a1, %got_pc_lo12(cli_ac_maxdepth)
	ld.bu	$a1, $a0, 0
	ld.bu	$a2, $a2, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_ac_init)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB20_69
# %bb.32:                               # %if.end13.1
	ld.bu	$a0, $s1, 2
	bnez	$a0, .LBB20_12
# %bb.33:                               # %if.then16.1
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$a0, $a0, %pc_lo12(.L.str.62)
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_bm_init)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB20_75
	b	.LBB20_12
.LBB20_34:                              # %if.then.us.2
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a0, $a0, %pc_lo12(.L.str.57)
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 80
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	st.d	$a0, $a1, 16
	beqz	$a0, .LBB20_70
# %bb.35:                               # %if.end.us.2
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a0, $a0, %pc_lo12(.L.str.60)
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cli_ac_mindepth)
	ld.d	$a0, $a0, %got_pc_lo12(cli_ac_mindepth)
	pcalau12i	$a1, %got_pc_hi20(cli_ac_maxdepth)
	ld.d	$a2, $a1, %got_pc_lo12(cli_ac_maxdepth)
	ld.bu	$a1, $a0, 0
	ld.bu	$a2, $a2, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_ac_init)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB20_69
# %bb.36:                               # %if.end13.us.2
	ld.bu	$a0, $s1, 2
	bnez	$a0, .LBB20_4
# %bb.37:                               # %if.then16.us.2
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$a0, $a0, %pc_lo12(.L.str.62)
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_bm_init)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB20_75
	b	.LBB20_4
.LBB20_38:                              # %if.then.2
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a0, $a0, %pc_lo12(.L.str.57)
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 80
	ori	$s0, $zero, 1
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	st.d	$a0, $a1, 16
	beqz	$a0, .LBB20_70
# %bb.39:                               # %if.end.2
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	st.b	$s0, $s1, 2
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a0, $a0, %pc_lo12(.L.str.60)
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cli_ac_mindepth)
	ld.d	$a0, $a0, %got_pc_lo12(cli_ac_mindepth)
	pcalau12i	$a1, %got_pc_hi20(cli_ac_maxdepth)
	ld.d	$a2, $a1, %got_pc_lo12(cli_ac_maxdepth)
	ld.bu	$a1, $a0, 0
	ld.bu	$a2, $a2, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_ac_init)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB20_69
# %bb.40:                               # %if.end13.2
	ld.bu	$a0, $s1, 2
	bnez	$a0, .LBB20_13
# %bb.41:                               # %if.then16.2
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$a0, $a0, %pc_lo12(.L.str.62)
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_bm_init)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB20_75
	b	.LBB20_13
.LBB20_42:                              # %if.then.us.3
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a0, $a0, %pc_lo12(.L.str.57)
	ori	$a1, $zero, 3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 80
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	st.d	$a0, $a1, 24
	beqz	$a0, .LBB20_70
# %bb.43:                               # %if.end.us.3
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a0, $a0, %pc_lo12(.L.str.60)
	ori	$a1, $zero, 3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cli_ac_mindepth)
	ld.d	$a0, $a0, %got_pc_lo12(cli_ac_mindepth)
	pcalau12i	$a1, %got_pc_hi20(cli_ac_maxdepth)
	ld.d	$a2, $a1, %got_pc_lo12(cli_ac_maxdepth)
	ld.bu	$a1, $a0, 0
	ld.bu	$a2, $a2, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_ac_init)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB20_69
# %bb.44:                               # %if.end13.us.3
	ld.bu	$a0, $s1, 2
	bnez	$a0, .LBB20_5
# %bb.45:                               # %if.then16.us.3
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$a0, $a0, %pc_lo12(.L.str.62)
	ori	$a1, $zero, 3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_bm_init)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB20_75
	b	.LBB20_5
.LBB20_46:                              # %if.then.3
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a0, $a0, %pc_lo12(.L.str.57)
	ori	$a1, $zero, 3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 80
	ori	$s0, $zero, 1
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	st.d	$a0, $a1, 24
	beqz	$a0, .LBB20_70
# %bb.47:                               # %if.end.3
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	st.b	$s0, $s1, 2
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a0, $a0, %pc_lo12(.L.str.60)
	ori	$a1, $zero, 3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cli_ac_mindepth)
	ld.d	$a0, $a0, %got_pc_lo12(cli_ac_mindepth)
	pcalau12i	$a1, %got_pc_hi20(cli_ac_maxdepth)
	ld.d	$a2, $a1, %got_pc_lo12(cli_ac_maxdepth)
	ld.bu	$a1, $a0, 0
	ld.bu	$a2, $a2, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_ac_init)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB20_69
# %bb.48:                               # %if.end13.3
	ld.bu	$a0, $s1, 2
	bnez	$a0, .LBB20_14
# %bb.49:                               # %if.then16.3
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$a0, $a0, %pc_lo12(.L.str.62)
	ori	$a1, $zero, 3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_bm_init)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB20_75
	b	.LBB20_14
.LBB20_50:                              # %if.then.us.4
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a0, $a0, %pc_lo12(.L.str.57)
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 80
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	st.d	$a0, $a1, 32
	beqz	$a0, .LBB20_70
# %bb.51:                               # %if.end.us.4
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a0, $a0, %pc_lo12(.L.str.60)
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cli_ac_mindepth)
	ld.d	$a0, $a0, %got_pc_lo12(cli_ac_mindepth)
	pcalau12i	$a1, %got_pc_hi20(cli_ac_maxdepth)
	ld.d	$a2, $a1, %got_pc_lo12(cli_ac_maxdepth)
	ld.bu	$a1, $a0, 0
	ld.bu	$a2, $a2, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_ac_init)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB20_69
# %bb.52:                               # %if.end13.us.4
	ld.bu	$a0, $s1, 2
	bnez	$a0, .LBB20_6
# %bb.53:                               # %if.then16.us.4
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$a0, $a0, %pc_lo12(.L.str.62)
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_bm_init)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB20_75
	b	.LBB20_6
.LBB20_54:                              # %if.then.4
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a0, $a0, %pc_lo12(.L.str.57)
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 80
	ori	$s0, $zero, 1
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	st.d	$a0, $a1, 32
	beqz	$a0, .LBB20_70
# %bb.55:                               # %if.end.4
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	st.b	$s0, $s1, 2
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a0, $a0, %pc_lo12(.L.str.60)
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cli_ac_mindepth)
	ld.d	$a0, $a0, %got_pc_lo12(cli_ac_mindepth)
	pcalau12i	$a1, %got_pc_hi20(cli_ac_maxdepth)
	ld.d	$a2, $a1, %got_pc_lo12(cli_ac_maxdepth)
	ld.bu	$a1, $a0, 0
	ld.bu	$a2, $a2, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_ac_init)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB20_69
# %bb.56:                               # %if.end13.4
	ld.bu	$a0, $s1, 2
	bnez	$a0, .LBB20_15
# %bb.57:                               # %if.then16.4
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$a0, $a0, %pc_lo12(.L.str.62)
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_bm_init)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB20_75
	b	.LBB20_15
.LBB20_58:                              # %if.then.us.5
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a0, $a0, %pc_lo12(.L.str.57)
	ori	$a1, $zero, 5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 80
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	st.d	$a0, $a1, 40
	beqz	$a0, .LBB20_70
# %bb.59:                               # %if.end.us.5
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a0, $a0, %pc_lo12(.L.str.60)
	ori	$a1, $zero, 5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cli_ac_mindepth)
	ld.d	$a0, $a0, %got_pc_lo12(cli_ac_mindepth)
	pcalau12i	$a1, %got_pc_hi20(cli_ac_maxdepth)
	ld.d	$a2, $a1, %got_pc_lo12(cli_ac_maxdepth)
	ld.bu	$a1, $a0, 0
	ld.bu	$a2, $a2, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_ac_init)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB20_69
# %bb.60:                               # %if.end13.us.5
	ld.bu	$a0, $s1, 2
	bnez	$a0, .LBB20_7
# %bb.61:                               # %if.then16.us.5
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$a0, $a0, %pc_lo12(.L.str.62)
	ori	$a1, $zero, 5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_bm_init)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB20_75
	b	.LBB20_7
.LBB20_62:                              # %if.then.5
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a0, $a0, %pc_lo12(.L.str.57)
	ori	$a1, $zero, 5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 80
	ori	$s0, $zero, 1
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	st.d	$a0, $a1, 40
	beqz	$a0, .LBB20_70
# %bb.63:                               # %if.end.5
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	st.b	$s0, $s1, 2
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a0, $a0, %pc_lo12(.L.str.60)
	ori	$a1, $zero, 5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cli_ac_mindepth)
	ld.d	$a0, $a0, %got_pc_lo12(cli_ac_mindepth)
	pcalau12i	$a1, %got_pc_hi20(cli_ac_maxdepth)
	ld.d	$a2, $a1, %got_pc_lo12(cli_ac_maxdepth)
	ld.bu	$a1, $a0, 0
	ld.bu	$a2, $a2, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_ac_init)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB20_69
# %bb.64:                               # %if.end13.5
	ld.bu	$a0, $s1, 2
	bnez	$a0, .LBB20_16
# %bb.65:                               # %if.then16.5
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$a0, $a0, %pc_lo12(.L.str.62)
	ori	$a1, $zero, 5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_bm_init)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB20_75
	b	.LBB20_16
.LBB20_66:                              # %if.then.6
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a0, $a0, %pc_lo12(.L.str.57)
	ori	$a1, $zero, 6
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 80
	ori	$s0, $zero, 1
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	st.d	$a0, $a1, 48
	beqz	$a0, .LBB20_70
# %bb.67:                               # %if.end.6
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	st.b	$s0, $fp, 2
.LBB20_68:                              # %if.end.us.6
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a0, $a0, %pc_lo12(.L.str.60)
	ori	$a1, $zero, 6
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cli_ac_mindepth)
	ld.d	$a0, $a0, %got_pc_lo12(cli_ac_mindepth)
	pcalau12i	$a1, %got_pc_hi20(cli_ac_maxdepth)
	ld.d	$a2, $a1, %got_pc_lo12(cli_ac_maxdepth)
	ld.bu	$a1, $a0, 0
	ld.bu	$a2, $a2, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_ac_init)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB20_73
.LBB20_69:
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a0, $a0, %pc_lo12(.L.str.61)
	b	.LBB20_71
.LBB20_70:
	addi.w	$s0, $zero, -114
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a0, $a0, %pc_lo12(.L.str.58)
.LBB20_71:                              # %cleanup
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
.LBB20_72:                              # %cleanup
	move	$a0, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB20_73:                              # %if.end13.us.6
	ld.bu	$a0, $fp, 2
	bnez	$a0, .LBB20_17
# %bb.74:                               # %if.then16.us.6
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$a0, $a0, %pc_lo12(.L.str.62)
	ori	$a1, $zero, 6
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_bm_init)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB20_17
.LBB20_75:
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.63)
	addi.d	$a0, $a0, %pc_lo12(.L.str.63)
	b	.LBB20_71
.Lfunc_end20:
	.size	cli_initroots, .Lfunc_end20-cli_initroots
                                        # -- End function
	.p2align	5                               # -- Begin function scomp
	.type	scomp,@function
scomp:                                  # @scomp
# %bb.0:                                # %entry
	ld.w	$a0, $a0, 0
	ld.w	$a1, $a1, 0
	sub.w	$a0, $a0, $a1
	ret
.Lfunc_end21:
	.size	scomp, .Lfunc_end21-scomp
                                        # -- End function
	.p2align	5                               # -- Begin function dirent_compare
	.type	dirent_compare,@function
dirent_compare:                         # @dirent_compare
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	addi.d	$a0, $a0, 19
	addi.d	$a1, $a1, 19
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB22_6
# %bb.1:                                # %if.end
	ld.bu	$a2, $s0, 18
	ld.bu	$a3, $fp, 18
	addi.w	$a1, $zero, -1
	bgeu	$a2, $a3, .LBB22_3
# %bb.2:
	move	$a0, $a1
	b	.LBB22_6
.LBB22_3:                               # %if.end8
	ori	$a0, $zero, 1
	bltu	$a3, $a2, .LBB22_6
# %bb.4:                                # %if.end16
	ld.hu	$a2, $s0, 16
	ld.hu	$a3, $fp, 16
	move	$a0, $a1
	bltu	$a2, $a3, .LBB22_6
# %bb.5:                                # %if.end23
	sltu	$a0, $a3, $a2
.LBB22_6:                               # %cleanup
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end22:
	.size	dirent_compare, .Lfunc_end22-dirent_compare
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"cli_parse_add(): Problem adding signature (1).\n"
	.size	.L.str, 48

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"-"
	.size	.L.str.1, 2

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"*"
	.size	.L.str.2, 2

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Can't extract part %d of partial signature.\n"
	.size	.L.str.3, 45

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"cli_parse_add(): Problem adding signature (2).\n"
	.size	.L.str.4, 48

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"?("
	.size	.L.str.5, 3

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"cli_parse_add(): Problem adding signature (3).\n"
	.size	.L.str.6, 48

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"(Clam)"
	.size	.L.str.7, 7

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"cli_parse_add(): Problem adding signature (4).\n"
	.size	.L.str.8, 48

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Initializing the engine (devel-20071218)\n"
	.size	.L.str.9, 42

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Can't allocate memory for the engine structure!\n"
	.size	.L.str.10, 49

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Can't allocate memory for roots!\n"
	.size	.L.str.11, 34

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"Can't initialize dynamic configuration\n"
	.size	.L.str.12, 40

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"cl_loaddbdir(): Can't get status of %s\n"
	.size	.L.str.13, 40

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"cl_load(%s): Not supported database file type\n"
	.size	.L.str.14, 47

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"/usr/local/share/clamav"
	.size	.L.str.15, 24

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"cl_statdbdir(): Null argument passed.\n"
	.size	.L.str.16, 39

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"cl_statdbdir(): Can't open directory %s\n"
	.size	.L.str.17, 41

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"Stat()ing files in %s\n"
	.size	.L.str.18, 23

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	".db"
	.size	.L.str.21, 4

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	".db2"
	.size	.L.str.22, 5

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	".db3"
	.size	.L.str.23, 5

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	".hdb"
	.size	.L.str.24, 5

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	".hdu"
	.size	.L.str.25, 5

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	".fp"
	.size	.L.str.26, 4

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	".mdb"
	.size	.L.str.27, 5

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	".mdu"
	.size	.L.str.28, 5

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	".ndb"
	.size	.L.str.29, 5

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	".ndu"
	.size	.L.str.30, 5

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	".sdb"
	.size	.L.str.31, 5

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	".zmd"
	.size	.L.str.32, 5

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	".rmd"
	.size	.L.str.33, 5

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	".pdb"
	.size	.L.str.34, 5

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	".wdb"
	.size	.L.str.35, 5

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	".inc"
	.size	.L.str.36, 5

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	".cvd"
	.size	.L.str.37, 5

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"%s/%s/%s.info"
	.size	.L.str.38, 14

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"daily"
	.size	.L.str.39, 6

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"main"
	.size	.L.str.40, 5

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"%s/%s"
	.size	.L.str.41, 6

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"cl_statfree(): Null argument passed\n"
	.size	.L.str.42, 37

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"cl_free: engine == NULL\n"
	.size	.L.str.43, 25

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"cl_dup: engine == NULL\n"
	.size	.L.str.44, 24

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"rb"
	.size	.L.str.45, 3

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"cli_load(): Can't open file %s\n"
	.size	.L.str.46, 32

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"daily.cvd"
	.size	.L.str.47, 10

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	".cfg"
	.size	.L.str.48, 5

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"cli_load: unknown extension - assuming old database format\n"
	.size	.L.str.49, 60

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"Can't load %s: %s\n"
	.size	.L.str.50, 19

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"%s skipped\n"
	.size	.L.str.51, 12

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"%s loaded\n"
	.size	.L.str.52, 11

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"Malformed pattern line %d\n"
	.size	.L.str.53, 27

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"Problem parsing signature at line %d\n"
	.size	.L.str.54, 38

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"Empty database file\n"
	.size	.L.str.55, 21

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"Problem parsing database at line %d\n"
	.size	.L.str.56, 37

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"Initializing engine->root[%d]\n"
	.size	.L.str.57, 31

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"cli_initroots: Can't allocate memory for cli_matcher\n"
	.size	.L.str.58, 54

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"cli_initroots: Only using AC pattern matcher.\n"
	.size	.L.str.59, 47

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"Initialising AC pattern matcher of root[%d]\n"
	.size	.L.str.60, 45

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"cli_initroots: Can't initialise AC pattern matcher\n"
	.size	.L.str.61, 52

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"cli_initroots: Initializing BM tables of root[%d]\n"
	.size	.L.str.62, 51

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"cli_initroots: Can't initialise BM pattern matcher\n"
	.size	.L.str.63, 52

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	":"
	.size	.L.str.64, 2

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"cli_loadmd5: Malformed MD5 string at line %u\n"
	.size	.L.str.65, 46

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"cli_loadmd5: Can't initialise BM pattern matcher\n"
	.size	.L.str.66, 50

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"cli_loadmd5: Can't allocate memory for bm_new\n"
	.size	.L.str.67, 47

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"cli_loadmd5: Can't realloc md5_sect->soff\n"
	.size	.L.str.68, 43

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"cli_loadmd5: Error adding BM pattern\n"
	.size	.L.str.69, 38

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"cli_loadmd5: Initializing MD5 list structure\n"
	.size	.L.str.70, 46

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"cli_loadmd5: Empty database file\n"
	.size	.L.str.71, 34

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"cli_loadmd5: Problem parsing database at line %u\n"
	.size	.L.str.72, 50

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"Exploit.JPEG.Comment"
	.size	.L.str.73, 21

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"HTML.Phishing"
	.size	.L.str.74, 14

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"Email.Phishing"
	.size	.L.str.75, 15

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"Signature for %s not loaded (required f-level: %d)\n"
	.size	.L.str.76, 52

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"Not supported target type in signature for %s\n"
	.size	.L.str.77, 47

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"*** Self protection mechanism activated.\n"
	.size	.L.str.78, 42

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"cli_loaddbdir: Acquiring dbdir lock\n"
	.size	.L.str.79, 37

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"cl_load(): Unable to lock database directory: %s\n"
	.size	.L.str.80, 50

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"Loading databases from %s\n"
	.size	.L.str.81, 27

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"%s/daily.cfg"
	.size	.L.str.82, 13

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"cli_loaddbdir(): Can't open directory %s\n"
	.size	.L.str.83, 42

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"cli_loaddbdir(): Too many files, increase MAX_DIRENTS\n"
	.size	.L.str.84, 55

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"cli_loaddbdir(): dbfile == NULL\n"
	.size	.L.str.85, 33

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"cli_loaddbdir(): error loading database %s\n"
	.size	.L.str.86, 44

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"cli_loaddb(): No supported database files found in %s\n"
	.size	.L.str.87, 55

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym scomp
	.addrsig_sym dirent_compare
