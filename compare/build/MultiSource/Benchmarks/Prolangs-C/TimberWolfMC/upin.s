	.file	"upin.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function upin
.LCPI0_0:
	.dword	0x40f86a0000000000              # double 1.0E+5
.LCPI0_1:
	.dword	0x41dfffffffc00000              # double 2147483647
	.text
	.globl	upin
	.p2align	5
	.type	upin,@function
upin:                                   # @upin
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
	pcalau12i	$a5, %got_pc_hi20(Tsave)
	ld.d	$a5, $a5, %got_pc_lo12(Tsave)
	ld.w	$a7, $a0, 56
	fld.d	$fa0, $a5, 0
	ld.w	$a5, $a0, 12
	ld.w	$a6, $a0, 16
	alsl.d	$a7, $a7, $a0, 3
	ld.d	$a7, $a7, 152
	pcalau12i	$t0, %got_pc_hi20(overfill)
	ld.d	$t7, $t0, %got_pc_lo12(overfill)
	ld.d	$s2, $a0, 144
	ld.d	$s7, $a0, 136
	ld.d	$a0, $a7, 96
	ld.w	$s4, $t7, 0
	move	$s0, $a4
	move	$t5, $a3
	move	$t8, $a2
	move	$fp, $a1
	blt	$a4, $a3, .LBB0_7
# %bb.1:                                # %for.body.preheader
	move	$a1, $t5
	beq	$s0, $t5, .LBB0_5
# %bb.2:                                # %vector.ph
	sub.d	$a1, $s0, $t5
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, 1
	bstrpick.d	$a1, $a2, 32, 1
	slli.d	$a3, $a1, 1
	alsl.d	$a1, $a1, $t5, 1
	slli.d	$a4, $t5, 4
	alsl.d	$a4, $t5, $a4, 2
	add.d	$a4, $a4, $s7
	addi.d	$a4, $a4, 24
	move	$a7, $a3
	.p2align	4, , 16
.LBB0_3:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t0, $a4, -24
	ld.w	$t1, $a4, -4
	st.w	$t0, $a4, -20
	st.w	$t1, $a4, 0
	addi.d	$a7, $a7, -2
	addi.d	$a4, $a4, 40
	bnez	$a7, .LBB0_3
# %bb.4:                                # %middle.block
	beq	$a2, $a3, .LBB0_7
.LBB0_5:                                # %for.body.preheader323
	slli.d	$a2, $a1, 4
	alsl.d	$a2, $a1, $a2, 2
	add.d	$a2, $a2, $s7
	addi.d	$a2, $a2, 4
	sub.d	$a1, $s0, $a1
	addi.d	$a1, $a1, 1
	.p2align	4, , 16
.LBB0_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, -4
	st.w	$a3, $a2, 0
	addi.w	$a1, $a1, -1
	addi.d	$a2, $a2, 20
	bnez	$a1, .LBB0_6
.LBB0_7:                                # %for.end
	ori	$a2, $zero, 44
	mul.d	$a1, $fp, $a2
	add.d	$a1, $s2, $a1
	ld.w	$t0, $a1, 4
	add.w	$s6, $t8, $fp
	mul.d	$a2, $s6, $a2
	add.d	$s3, $s2, $a2
	ld.w	$a2, $s3, -40
	blt	$a2, $t0, .LBB0_15
# %bb.8:                                # %for.body13.preheader
	bne	$a2, $t0, .LBB0_10
# %bb.9:
	move	$a3, $t0
	b	.LBB0_13
.LBB0_10:                               # %vector.ph271
	sub.d	$a3, $a2, $t0
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a4, $a3, 1
	bstrpick.d	$a3, $a4, 32, 1
	slli.d	$a7, $a3, 1
	alsl.d	$a3, $a3, $t0, 1
	slli.d	$t1, $t0, 4
	alsl.d	$t0, $t0, $t1, 2
	add.d	$t0, $t0, $s7
	addi.d	$t0, $t0, 24
	move	$t1, $a7
	.p2align	4, , 16
.LBB0_11:                               # %vector.body274
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t2, $t0, -24
	ld.w	$t3, $t0, -4
	st.w	$t2, $t0, -20
	st.w	$t3, $t0, 0
	addi.d	$t1, $t1, -2
	addi.d	$t0, $t0, 40
	bnez	$t1, .LBB0_11
# %bb.12:                               # %middle.block278
	beq	$a4, $a7, .LBB0_15
.LBB0_13:                               # %for.body13.preheader322
	slli.d	$a4, $a3, 4
	alsl.d	$a4, $a3, $a4, 2
	add.d	$a4, $a4, $s7
	addi.d	$a4, $a4, 4
	sub.d	$a2, $a2, $a3
	addi.d	$a2, $a2, 1
	.p2align	4, , 16
.LBB0_14:                               # %for.body13
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a4, -4
	st.w	$a3, $a4, 0
	addi.w	$a2, $a2, -1
	addi.d	$a4, $a4, 20
	bnez	$a2, .LBB0_14
.LBB0_15:                               # %for.cond23.preheader
	ori	$a2, $zero, 1
	addi.d	$s5, $a1, 4
	st.d	$t5, $sp, 16                    # 8-byte Folded Spill
	blt	$t8, $a2, .LBB0_57
# %bb.16:                               # %for.body26.lr.ph
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI0_0)
	fdiv.d	$fa0, $fa0, $fa1
	vldi	$vr1, -988
	fmul.d	$fa1, $fa0, $fa1
	ftintrz.w.d	$fa2, $fa1
	movfr2gr.s	$a1, $fa2
	move	$a3, $s5
	move	$a4, $fp
	b	.LBB0_19
	.p2align	4, , 16
.LBB0_17:                               # %if.else
                                        #   in Loop: Header=BB0_19 Depth=1
	mul.d	$t0, $a7, $a7
	bstrpick.d	$t0, $t0, 31, 0
	movgr2fr.d	$fa2, $t0
	ffint.d.l	$fa2, $fa2
	fmul.d	$fa2, $fa1, $fa2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$t0, $fa2
	addi.d	$a7, $a7, -1
	mul.d	$a7, $a7, $a7
	bstrpick.d	$a7, $a7, 31, 0
	movgr2fr.d	$fa2, $a7
	ffint.d.l	$fa2, $fa2
	fmul.d	$fa2, $fa1, $fa2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$a7, $fa2
	sub.d	$t0, $s4, $t0
	add.d	$s4, $t0, $a7
.LBB0_18:                               # %for.inc56
                                        #   in Loop: Header=BB0_19 Depth=1
	addi.d	$a4, $a4, 1
	addi.d	$a3, $a3, 44
	bge	$a4, $s6, .LBB0_22
.LBB0_19:                               # %for.body26
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a3, 0
	slli.d	$t0, $a7, 4
	alsl.d	$a7, $a7, $t0, 2
	add.d	$t0, $s7, $a7
	ld.w	$a7, $t0, 4
	ld.w	$t1, $t0, 8
	addi.d	$t2, $a7, -1
	sub.w	$a7, $a7, $t1
	st.w	$t2, $t0, 4
	blt	$a7, $a2, .LBB0_18
# %bb.20:                               # %if.then
                                        #   in Loop: Header=BB0_19 Depth=1
	bne	$a7, $a2, .LBB0_17
# %bb.21:                               # %if.then39
                                        #   in Loop: Header=BB0_19 Depth=1
	sub.d	$s4, $s4, $a1
	b	.LBB0_18
.LBB0_22:                               # %for.body64.lr.ph
	move	$a3, $zero
	move	$a4, $zero
	addi.w	$a1, $t5, -1
	vldi	$vr1, -988
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa1, $fa0
	movfr2gr.s	$a2, $fa1
	ori	$a7, $zero, 44
	mul.d	$a7, $fp, $a7
	add.d	$a7, $a7, $s2
	addi.d	$a7, $a7, 8
	ori	$t0, $zero, 1
	move	$t1, $fp
	b	.LBB0_25
	.p2align	4, , 16
.LBB0_23:                               # %if.else88
                                        #   in Loop: Header=BB0_25 Depth=1
	mul.d	$t3, $t2, $t2
	bstrpick.d	$t3, $t3, 31, 0
	movgr2fr.d	$fa1, $t3
	ffint.d.l	$fa1, $fa1
	fmul.d	$fa1, $fa0, $fa1
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$t3, $fa1
	addi.d	$t2, $t2, -1
	mul.d	$t2, $t2, $t2
	bstrpick.d	$t2, $t2, 31, 0
	movgr2fr.d	$fa1, $t2
	ffint.d.l	$fa1, $fa1
	fmul.d	$fa1, $fa0, $fa1
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$t2, $fa1
	add.d	$t3, $s4, $t3
	sub.d	$s4, $t3, $t2
.LBB0_24:                               # %if.end104
                                        #   in Loop: Header=BB0_25 Depth=1
	st.w	$a1, $a7, 0
	addi.d	$t1, $t1, 1
	addi.d	$a7, $a7, 44
	bge	$t1, $s6, .LBB0_31
.LBB0_25:                               # %for.body64
                                        # =>This Inner Loop Header: Depth=1
	bge	$a3, $a4, .LBB0_27
# %bb.26:                               # %for.body64.if.end73_crit_edge
                                        #   in Loop: Header=BB0_25 Depth=1
	addi.w	$a3, $a3, 1
	b	.LBB0_28
	.p2align	4, , 16
.LBB0_27:                               # %if.then68
                                        #   in Loop: Header=BB0_25 Depth=1
	addi.w	$a1, $a1, 1
	slli.d	$a3, $a1, 4
	alsl.d	$a3, $a1, $a3, 2
	add.d	$a3, $s7, $a3
	ld.w	$a4, $a3, 8
	ori	$a3, $zero, 1
.LBB0_28:                               # %if.end73
                                        #   in Loop: Header=BB0_25 Depth=1
	slli.d	$t2, $a1, 4
	alsl.d	$t2, $a1, $t2, 2
	add.d	$t3, $s7, $t2
	ld.w	$t2, $t3, 4
	addi.d	$t4, $t2, 1
	sub.w	$t2, $t4, $a4
	st.w	$t4, $t3, 4
	blt	$t2, $t0, .LBB0_24
# %bb.29:                               # %if.then81
                                        #   in Loop: Header=BB0_25 Depth=1
	bne	$t2, $t0, .LBB0_23
# %bb.30:                               # %if.then84
                                        #   in Loop: Header=BB0_25 Depth=1
	add.d	$s4, $s4, $a2
	b	.LBB0_24
.LBB0_31:                               # %for.body115.lr.ph
	pcalau12i	$a1, %got_pc_hi20(termarray)
	ld.d	$a1, $a1, %got_pc_lo12(termarray)
	pcalau12i	$a2, %got_pc_hi20(netarray)
	ld.d	$a2, $a2, %got_pc_lo12(netarray)
	ld.d	$a3, $a1, 0
	ld.d	$a4, $a2, 0
	ori	$a7, $zero, 44
	mul.d	$a7, $fp, $a7
	add.d	$a7, $a7, $s2
	addi.d	$a7, $a7, 8
	ori	$t0, $zero, 1
	move	$t1, $fp
	.p2align	4, , 16
.LBB0_32:                               # %for.body115
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t2, $a7, -8
	ld.w	$t3, $a7, 0
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $a3, $t2
	alsl.d	$t4, $t3, $a0, 4
	ld.w	$t5, $t2, 0
	slli.d	$t3, $t3, 4
	ldx.w	$t3, $a0, $t3
	ld.w	$t4, $t4, 4
	slli.d	$t5, $t5, 3
	ldx.d	$t5, $a4, $t5
	ld.d	$t2, $t2, 8
	add.d	$t3, $t3, $a5
	add.d	$t4, $t4, $a6
	st.w	$t0, $t5, 32
	st.w	$t0, $t2, 28
	st.w	$t3, $t2, 16
	st.w	$t4, $t2, 20
	addi.d	$t1, $t1, 1
	addi.d	$a7, $a7, 44
	blt	$t1, $s6, .LBB0_32
# %bb.33:                               # %for.body141.lr.ph
	pcalau12i	$a0, %got_pc_hi20(funccost)
	ld.d	$a0, $a0, %got_pc_lo12(funccost)
	ld.w	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	ori	$a3, $zero, 44
	ori	$a4, $zero, 1
	move	$a5, $fp
	move	$s8, $a0
	b	.LBB0_36
	.p2align	4, , 16
.LBB0_34:                               # %for.end235
                                        #   in Loop: Header=BB0_36 Depth=1
	ld.w	$a7, $a6, 24
	ld.w	$t0, $a6, 16
	fld.d	$fa0, $a6, 48
	sub.d	$a7, $a7, $t0
	movgr2fr.w	$fa1, $a7
	ffint.d.w	$fa1, $fa1
	ld.w	$a7, $a6, 20
	ld.w	$t0, $a6, 12
	fmul.d	$fa1, $fa0, $fa1
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$t1, $fa1
	sub.d	$a7, $a7, $t0
	movgr2fr.w	$fa1, $a7
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	ld.w	$a7, $a6, 44
	ld.w	$t0, $a6, 36
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$t2, $fa0
	fld.d	$fa0, $a6, 56
	sub.d	$a7, $a7, $t0
	movgr2fr.w	$fa1, $a7
	ffint.d.w	$fa1, $fa1
	ld.w	$a7, $a6, 40
	ld.w	$a6, $a6, 28
	fmul.d	$fa1, $fa0, $fa1
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$t0, $fa1
	sub.d	$a6, $a7, $a6
	movgr2fr.w	$fa1, $a6
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a6, $fa0
	add.d	$a7, $s8, $t1
	add.d	$a7, $a7, $t0
	add.d	$a6, $t2, $a6
	sub.d	$s8, $a7, $a6
.LBB0_35:                               # %for.inc262
                                        #   in Loop: Header=BB0_36 Depth=1
	addi.d	$a5, $a5, 1
	bge	$a5, $s6, .LBB0_58
.LBB0_36:                               # %for.body141
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_39 Depth 2
                                        #     Child Loop BB0_47 Depth 2
	mul.d	$a6, $a5, $a3
	ldx.w	$a6, $s2, $a6
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $a1, $a6
	ld.w	$a6, $a6, 0
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $a2, $a6
	ld.w	$a7, $a6, 32
	beqz	$a7, .LBB0_35
# %bb.37:                               # %lor.lhs.false
                                        #   in Loop: Header=BB0_36 Depth=1
	ld.w	$a7, $a6, 8
	beq	$a7, $a4, .LBB0_35
# %bb.38:                               # %if.end156
                                        #   in Loop: Header=BB0_36 Depth=1
	st.w	$zero, $a6, 32
	move	$a7, $a6
	.p2align	4, , 16
.LBB0_39:                               # %for.cond159
                                        #   Parent Loop BB0_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a7, $a7, 0
	beqz	$a7, .LBB0_34
# %bb.40:                               # %if.end163
                                        #   in Loop: Header=BB0_39 Depth=2
	ld.w	$t0, $a7, 40
	beq	$t0, $a4, .LBB0_39
# %bb.41:                               # %if.end168
                                        #   in Loop: Header=BB0_36 Depth=1
	ld.w	$t0, $a7, 28
	bne	$t0, $a4, .LBB0_43
# %bb.42:                               # %if.then172
                                        #   in Loop: Header=BB0_36 Depth=1
	ld.w	$t0, $a7, 16
	ld.w	$t1, $a7, 20
	st.w	$zero, $a7, 28
	b	.LBB0_44
.LBB0_43:                               # %if.else176
                                        #   in Loop: Header=BB0_36 Depth=1
	ld.w	$t0, $a7, 8
	ld.w	$t1, $a7, 12
.LBB0_44:                               # %for.end186
                                        #   in Loop: Header=BB0_36 Depth=1
	ld.d	$a7, $a7, 0
	st.w	$t0, $a6, 24
	st.w	$t0, $a6, 16
	st.w	$t1, $a6, 44
	st.w	$t1, $a6, 36
	bnez	$a7, .LBB0_47
	b	.LBB0_34
	.p2align	4, , 16
.LBB0_45:                               # %if.then223
                                        #   in Loop: Header=BB0_47 Depth=2
	st.w	$t0, $a6, 36
.LBB0_46:                               # %for.inc233
                                        #   in Loop: Header=BB0_47 Depth=2
	ld.d	$a7, $a7, 0
	beqz	$a7, .LBB0_34
.LBB0_47:                               # %for.body190
                                        #   Parent Loop BB0_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t0, $a7, 40
	beq	$t0, $a4, .LBB0_46
# %bb.48:                               # %if.end195
                                        #   in Loop: Header=BB0_47 Depth=2
	ld.w	$t0, $a7, 28
	bne	$t0, $a4, .LBB0_52
# %bb.49:                               # %if.then199
                                        #   in Loop: Header=BB0_47 Depth=2
	ld.w	$t1, $a7, 16
	ld.w	$t0, $a7, 20
	st.w	$zero, $a7, 28
	ld.w	$t2, $a6, 16
	blt	$t1, $t2, .LBB0_53
.LBB0_50:                               # %if.else212
                                        #   in Loop: Header=BB0_47 Depth=2
	ld.w	$t2, $a6, 24
	bge	$t2, $t1, .LBB0_54
# %bb.51:                               # %if.then216
                                        #   in Loop: Header=BB0_47 Depth=2
	st.w	$t1, $a6, 24
	b	.LBB0_54
	.p2align	4, , 16
.LBB0_52:                               # %if.else203
                                        #   in Loop: Header=BB0_47 Depth=2
	ld.w	$t1, $a7, 8
	ld.w	$t0, $a7, 12
	ld.w	$t2, $a6, 16
	bge	$t1, $t2, .LBB0_50
.LBB0_53:                               # %if.then210
                                        #   in Loop: Header=BB0_47 Depth=2
	st.w	$t1, $a6, 16
.LBB0_54:                               # %if.end219
                                        #   in Loop: Header=BB0_47 Depth=2
	ld.w	$t1, $a6, 36
	blt	$t0, $t1, .LBB0_45
# %bb.55:                               # %if.else225
                                        #   in Loop: Header=BB0_47 Depth=2
	ld.w	$t1, $a6, 44
	bge	$t1, $t0, .LBB0_46
# %bb.56:                               # %if.then229
                                        #   in Loop: Header=BB0_47 Depth=2
	st.w	$t0, $a6, 44
	b	.LBB0_46
.LBB0_57:                               # %for.end136.thread
	pcalau12i	$a0, %got_pc_hi20(funccost)
	ld.d	$a0, $a0, %got_pc_lo12(funccost)
	ld.w	$a0, $a0, 0
	move	$s8, $a0
.LBB0_58:                               # %for.end264
	ld.w	$a2, $t7, 0
	add.w	$a1, $s8, $s4
	add.w	$a0, $a2, $a0
	bge	$a0, $a1, .LBB0_60
# %bb.59:                               # %lor.lhs.false269
	pcalau12i	$a2, %got_pc_hi20(T)
	ld.d	$a2, $a2, %got_pc_lo12(T)
	fld.d	$fa0, $a2, 0
	sub.d	$a0, $a0, $a1
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa1, $fa0
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s2, $s0
	move	$s0, $t7
	move	$s1, $t8
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	move	$t8, $s1
	move	$t7, $s0
	move	$s0, $s2
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	pcalau12i	$a0, %got_pc_hi20(randVar)
	ld.d	$a0, $a0, %got_pc_lo12(randVar)
	ld.w	$a1, $a0, 0
	lu12i.w	$a2, 269412
	ori	$a2, $a2, 3693
	mul.d	$a1, $a1, $a2
	lu12i.w	$a2, 3
	ori	$a2, $a2, 57
	add.d	$a1, $a1, $a2
	pcalau12i	$a2, %pc_hi20(.LCPI0_1)
	fld.d	$fa1, $a2, %pc_lo12(.LCPI0_1)
	bstrpick.d	$a2, $a1, 30, 0
	movgr2fr.w	$fa2, $a2
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa1, $fa2, $fa1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	st.w	$a1, $a0, 0
	bcnez	$fcc0, .LBB0_73
.LBB0_60:                               # %if.then281
	ori	$a0, $zero, 1
	blt	$t8, $a0, .LBB0_63
# %bb.61:                               # %for.body286.lr.ph
	pcalau12i	$a0, %got_pc_hi20(termarray)
	ld.d	$a0, $a0, %got_pc_lo12(termarray)
	pcalau12i	$a1, %got_pc_hi20(netarray)
	ld.d	$a1, $a1, %got_pc_lo12(netarray)
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 44
	mul.d	$a2, $fp, $a2
	add.d	$a2, $s2, $a2
	move	$a3, $fp
	.p2align	4, , 16
.LBB0_62:                               # %for.body286
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, 0
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $a0, $a4
	ld.w	$a5, $a4, 0
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $a1, $a5
	ld.w	$a6, $a5, 16
	st.w	$a6, $a5, 12
	ld.w	$a6, $a5, 24
	ld.w	$a7, $a5, 36
	ld.w	$t0, $a5, 44
	ld.d	$a4, $a4, 8
	st.w	$a6, $a5, 20
	st.w	$a7, $a5, 28
	st.w	$t0, $a5, 40
	ld.d	$a5, $a4, 16
	st.d	$a5, $a4, 8
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 44
	blt	$a3, $s6, .LBB0_62
.LBB0_63:                               # %for.cond314.preheader
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	blt	$s0, $a4, .LBB0_70
# %bb.64:                               # %for.body317.preheader
	move	$a0, $a4
	beq	$s0, $a4, .LBB0_68
# %bb.65:                               # %vector.ph283
	sub.d	$a0, $s0, $a4
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$a1, $a0, 1
	bstrpick.d	$a0, $a1, 32, 1
	slli.d	$a2, $a0, 1
	alsl.d	$a0, $a0, $a4, 1
	slli.d	$a3, $a4, 4
	alsl.d	$a3, $a4, $a3, 2
	add.d	$a3, $a3, $s7
	addi.d	$a3, $a3, 24
	move	$a4, $a2
	.p2align	4, , 16
.LBB0_66:                               # %vector.body286
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a3, -20
	ld.w	$a6, $a3, 0
	st.w	$a5, $a3, -24
	st.w	$a6, $a3, -4
	addi.d	$a4, $a4, -2
	addi.d	$a3, $a3, 40
	bnez	$a4, .LBB0_66
# %bb.67:                               # %middle.block290
	beq	$a1, $a2, .LBB0_70
.LBB0_68:                               # %for.body317.preheader319
	slli.d	$a1, $a0, 4
	alsl.d	$a1, $a0, $a1, 2
	add.d	$a1, $a1, $s7
	addi.d	$a1, $a1, 4
	sub.d	$a0, $s0, $a0
	addi.d	$a0, $a0, 1
	.p2align	4, , 16
.LBB0_69:                               # %for.body317
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 0
	st.w	$a2, $a1, -4
	addi.w	$a0, $a0, -1
	addi.d	$a1, $a1, 20
	bnez	$a0, .LBB0_69
.LBB0_70:                               # %for.end326
	ld.w	$a4, $s5, 0
	ld.w	$a0, $s3, -40
	blt	$a0, $a4, .LBB0_79
# %bb.71:                               # %for.body338.preheader
	bne	$a0, $a4, .LBB0_74
# %bb.72:
	move	$a1, $a4
	b	.LBB0_77
.LBB0_73:
	move	$a0, $zero
	b	.LBB0_87
.LBB0_74:                               # %vector.ph295
	sub.d	$a1, $a0, $a4
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, 1
	bstrpick.d	$a1, $a2, 32, 1
	slli.d	$a3, $a1, 1
	alsl.d	$a1, $a1, $a4, 1
	slli.d	$a5, $a4, 4
	alsl.d	$a4, $a4, $a5, 2
	add.d	$a4, $a4, $s7
	addi.d	$a4, $a4, 24
	move	$a5, $a3
	.p2align	4, , 16
.LBB0_75:                               # %vector.body298
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a4, -20
	ld.w	$a7, $a4, 0
	st.w	$a6, $a4, -24
	st.w	$a7, $a4, -4
	addi.d	$a5, $a5, -2
	addi.d	$a4, $a4, 40
	bnez	$a5, .LBB0_75
# %bb.76:                               # %middle.block302
	beq	$a2, $a3, .LBB0_79
.LBB0_77:                               # %for.body338.preheader318
	slli.d	$a2, $a1, 4
	alsl.d	$a2, $a1, $a2, 2
	add.d	$a2, $a2, $s7
	addi.d	$a2, $a2, 4
	sub.d	$a0, $a0, $a1
	addi.d	$a0, $a0, 1
	.p2align	4, , 16
.LBB0_78:                               # %for.body338
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a2, 0
	st.w	$a1, $a2, -4
	addi.w	$a0, $a0, -1
	addi.d	$a2, $a2, 20
	bnez	$a0, .LBB0_78
.LBB0_79:                               # %for.cond348.preheader
	ori	$a0, $zero, 1
	blt	$t8, $a0, .LBB0_86
# %bb.80:                               # %for.body352.preheader
	addi.d	$a1, $fp, 1
	slt	$a2, $s6, $a1
	masknez	$a3, $s6, $a2
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $a3
	sub.d	$a1, $a1, $fp
	ori	$a2, $zero, 2
	bltu	$a1, $a2, .LBB0_84
# %bb.81:                               # %vector.ph307
	move	$a2, $a1
	bstrins.d	$a2, $zero, 0, 0
	add.d	$a3, $a2, $fp
	ori	$a4, $zero, 44
	mul.d	$a4, $fp, $a4
	add.d	$a4, $a4, $s2
	addi.d	$a4, $a4, 52
	move	$a5, $a2
	.p2align	4, , 16
.LBB0_82:                               # %vector.body310
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a4, -44
	ld.w	$a7, $a4, 0
	st.w	$a6, $a4, -48
	st.w	$a7, $a4, -4
	addi.d	$a5, $a5, -2
	addi.d	$a4, $a4, 88
	bnez	$a5, .LBB0_82
# %bb.83:                               # %middle.block314
	move	$fp, $a3
	beq	$a1, $a2, .LBB0_86
.LBB0_84:                               # %for.body352.preheader317
	ori	$a1, $zero, 44
	mul.d	$a1, $fp, $a1
	add.d	$a1, $a1, $s2
	addi.d	$a1, $a1, 8
	.p2align	4, , 16
.LBB0_85:                               # %for.body352
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 0
	st.w	$a2, $a1, -4
	addi.d	$fp, $fp, 1
	addi.d	$a1, $a1, 44
	blt	$fp, $s6, .LBB0_85
.LBB0_86:                               # %for.end361
	pcalau12i	$a1, %got_pc_hi20(funccost)
	ld.d	$a1, $a1, %got_pc_lo12(funccost)
	st.w	$s8, $a1, 0
	st.w	$s4, $t7, 0
.LBB0_87:                               # %cleanup
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
	.size	upin, .Lfunc_end0-upin
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
