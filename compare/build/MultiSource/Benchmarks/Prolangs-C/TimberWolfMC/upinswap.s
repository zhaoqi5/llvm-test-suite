	.file	"upinswap.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function upinswap
.LCPI0_0:
	.dword	0x41dfffffffc00000              # double 2147483647
	.text
	.globl	upinswap
	.p2align	5
	.type	upinswap,@function
upinswap:                               # @upinswap
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	ld.w	$a5, $a0, 56
	alsl.d	$a5, $a5, $a0, 3
	ld.d	$a5, $a5, 152
	ld.w	$a7, $a0, 12
	ld.w	$t1, $a0, 16
	ld.d	$a6, $a0, 144
	ld.d	$t3, $a5, 96
	pcalau12i	$a0, %got_pc_hi20(termarray)
	ld.d	$a5, $a0, %got_pc_lo12(termarray)
	ori	$t2, $zero, 44
	mul.d	$t0, $a1, $t2
	ldx.w	$a0, $a6, $t0
	ld.d	$s0, $a5, 0
	alsl.d	$a1, $a4, $t3, 4
	slli.d	$a4, $a4, 4
	slli.d	$a5, $a0, 3
	ldx.d	$a5, $s0, $a5
	pcalau12i	$t4, %got_pc_hi20(netarray)
	ld.d	$t4, $t4, %got_pc_lo12(netarray)
	ldx.w	$a4, $t3, $a4
	ld.w	$a1, $a1, 4
	ld.w	$t5, $a5, 0
	ld.d	$s1, $t4, 0
	add.d	$t6, $a4, $a7
	add.d	$t7, $a1, $t1
	slli.d	$a1, $t5, 3
	ldx.d	$a4, $s1, $a1
	ld.d	$a5, $a5, 8
	mul.d	$t2, $a2, $t2
	ldx.w	$a1, $a6, $t2
	ori	$t4, $zero, 1
	st.w	$t4, $a4, 32
	st.w	$t4, $a5, 28
	slli.d	$a2, $a1, 3
	ldx.d	$t5, $s0, $a2
	st.w	$t6, $a5, 16
	slli.d	$a2, $a3, 4
	ldx.w	$a2, $t3, $a2
	ld.w	$t6, $t5, 0
	st.w	$t7, $a5, 20
	alsl.d	$t3, $a3, $t3, 4
	add.d	$a2, $a2, $a7
	slli.d	$a3, $t6, 3
	ldx.d	$a3, $s1, $a3
	pcalau12i	$a7, %got_pc_hi20(funccost)
	ld.d	$fp, $a7, %got_pc_lo12(funccost)
	ld.w	$t6, $t3, 4
	st.w	$t4, $a3, 32
	ld.d	$a7, $t5, 8
	ld.w	$t3, $fp, 0
	ld.w	$t5, $a4, 32
	add.d	$t1, $t6, $t1
	st.w	$t4, $a7, 28
	st.w	$a2, $a7, 16
	st.w	$t1, $a7, 20
	move	$s2, $t3
	beqz	$t5, .LBB0_23
# %bb.1:                                # %land.lhs.true
	ld.w	$t5, $a4, 8
	move	$s2, $t3
	beq	$t5, $t4, .LBB0_23
# %bb.2:                                # %if.then
	st.w	$zero, $a4, 32
	ori	$t6, $zero, 1
	move	$t5, $a4
	.p2align	4, , 16
.LBB0_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t5, $t5, 0
	beqz	$t5, .LBB0_22
# %bb.4:                                # %if.end
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.w	$t7, $t5, 40
	beq	$t7, $t6, .LBB0_3
# %bb.5:                                # %if.end55
	ld.w	$t6, $t5, 28
	ori	$t7, $zero, 1
	bne	$t6, $t7, .LBB0_7
# %bb.6:                                # %if.then58
	ld.w	$t6, $t5, 16
	ld.w	$t7, $t5, 20
	st.w	$zero, $t5, 28
	b	.LBB0_8
.LBB0_7:                                # %if.else
	ld.w	$t6, $t5, 8
	ld.w	$t7, $t5, 12
.LBB0_8:                                # %for.end
	ld.d	$t5, $t5, 0
	st.w	$t6, $a4, 24
	st.w	$t6, $a4, 16
	st.w	$t7, $a4, 44
	st.w	$t7, $a4, 36
	beqz	$t5, .LBB0_22
# %bb.9:                                # %for.body.lr.ph
	ori	$t6, $zero, 1
	b	.LBB0_12
	.p2align	4, , 16
.LBB0_10:                               # %if.then99
                                        #   in Loop: Header=BB0_12 Depth=1
	st.w	$t7, $a4, 36
.LBB0_11:                               # %for.inc108
                                        #   in Loop: Header=BB0_12 Depth=1
	ld.d	$t5, $t5, 0
	beqz	$t5, .LBB0_22
.LBB0_12:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t7, $t5, 40
	beq	$t7, $t6, .LBB0_11
# %bb.13:                               # %if.end75
                                        #   in Loop: Header=BB0_12 Depth=1
	ld.w	$t7, $t5, 28
	bne	$t7, $t6, .LBB0_17
# %bb.14:                               # %if.then78
                                        #   in Loop: Header=BB0_12 Depth=1
	ld.w	$t8, $t5, 16
	ld.w	$t7, $t5, 20
	st.w	$zero, $t5, 28
	ld.w	$s2, $a4, 16
	blt	$t8, $s2, .LBB0_18
.LBB0_15:                               # %if.else90
                                        #   in Loop: Header=BB0_12 Depth=1
	ld.w	$s2, $a4, 24
	bge	$s2, $t8, .LBB0_19
# %bb.16:                               # %if.then93
                                        #   in Loop: Header=BB0_12 Depth=1
	st.w	$t8, $a4, 24
	b	.LBB0_19
	.p2align	4, , 16
.LBB0_17:                               # %if.else82
                                        #   in Loop: Header=BB0_12 Depth=1
	ld.w	$t8, $t5, 8
	ld.w	$t7, $t5, 12
	ld.w	$s2, $a4, 16
	bge	$t8, $s2, .LBB0_15
.LBB0_18:                               # %if.then88
                                        #   in Loop: Header=BB0_12 Depth=1
	st.w	$t8, $a4, 16
.LBB0_19:                               # %if.end96
                                        #   in Loop: Header=BB0_12 Depth=1
	ld.w	$t8, $a4, 36
	blt	$t7, $t8, .LBB0_10
# %bb.20:                               # %if.else101
                                        #   in Loop: Header=BB0_12 Depth=1
	ld.w	$t8, $a4, 44
	bge	$t8, $t7, .LBB0_11
# %bb.21:                               # %if.then104
                                        #   in Loop: Header=BB0_12 Depth=1
	st.w	$t7, $a4, 44
	b	.LBB0_11
.LBB0_22:                               # %if.end134
	ld.w	$t5, $a4, 24
	ld.w	$t6, $a4, 16
	fld.d	$fa0, $a4, 48
	sub.d	$t5, $t5, $t6
	movgr2fr.w	$fa1, $t5
	ffint.d.w	$fa1, $fa1
	ld.w	$t5, $a4, 20
	ld.w	$t6, $a4, 12
	fmul.d	$fa1, $fa0, $fa1
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$t7, $fa1
	sub.d	$t5, $t5, $t6
	movgr2fr.w	$fa1, $t5
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	ld.w	$t5, $a4, 44
	ld.w	$t6, $a4, 36
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$t8, $fa0
	fld.d	$fa0, $a4, 56
	sub.d	$t5, $t5, $t6
	movgr2fr.w	$fa1, $t5
	ffint.d.w	$fa1, $fa1
	ld.w	$t5, $a4, 40
	ld.w	$t6, $a4, 28
	fmul.d	$fa1, $fa0, $fa1
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$s2, $fa1
	sub.d	$t5, $t5, $t6
	movgr2fr.w	$fa1, $t5
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$t5, $fa0
	ld.w	$t6, $a3, 32
	add.d	$t7, $t3, $t7
	add.d	$t7, $t7, $s2
	add.d	$t5, $t8, $t5
	sub.w	$s2, $t7, $t5
	beqz	$t6, .LBB0_45
.LBB0_23:                               # %land.lhs.true146
	ld.w	$t5, $a3, 8
	beq	$t5, $t4, .LBB0_45
# %bb.24:                               # %if.then150
	st.w	$zero, $a3, 32
	ori	$t5, $zero, 1
	move	$t4, $a3
	.p2align	4, , 16
.LBB0_25:                               # %for.cond153
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t4, $t4, 0
	beqz	$t4, .LBB0_44
# %bb.26:                               # %if.end157
                                        #   in Loop: Header=BB0_25 Depth=1
	ld.w	$t6, $t4, 40
	beq	$t6, $t5, .LBB0_25
# %bb.27:                               # %if.end162
	ld.w	$t5, $t4, 28
	ori	$t6, $zero, 1
	bne	$t5, $t6, .LBB0_29
# %bb.28:                               # %if.then166
	ld.w	$t5, $t4, 16
	ld.w	$t6, $t4, 20
	st.w	$zero, $t4, 28
	b	.LBB0_30
.LBB0_29:                               # %if.else174
	ld.w	$t5, $t4, 8
	ld.w	$t6, $t4, 12
.LBB0_30:                               # %for.end185
	ld.d	$t4, $t4, 0
	st.w	$t5, $a3, 24
	st.w	$t5, $a3, 16
	st.w	$t6, $a3, 44
	st.w	$t6, $a3, 36
	beqz	$t4, .LBB0_44
# %bb.31:                               # %for.body189.lr.ph
	ori	$t5, $zero, 1
	b	.LBB0_34
	.p2align	4, , 16
.LBB0_32:                               # %if.then222
                                        #   in Loop: Header=BB0_34 Depth=1
	st.w	$t6, $a3, 36
.LBB0_33:                               # %for.inc232
                                        #   in Loop: Header=BB0_34 Depth=1
	ld.d	$t4, $t4, 0
	beqz	$t4, .LBB0_44
.LBB0_34:                               # %for.body189
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t6, $t4, 40
	beq	$t6, $t5, .LBB0_33
# %bb.35:                               # %if.end194
                                        #   in Loop: Header=BB0_34 Depth=1
	ld.w	$t6, $t4, 28
	bne	$t6, $t5, .LBB0_39
# %bb.36:                               # %if.then198
                                        #   in Loop: Header=BB0_34 Depth=1
	ld.w	$t7, $t4, 16
	ld.w	$t6, $t4, 20
	st.w	$zero, $t4, 28
	ld.w	$t8, $a3, 16
	blt	$t7, $t8, .LBB0_40
.LBB0_37:                               # %if.else211
                                        #   in Loop: Header=BB0_34 Depth=1
	ld.w	$t8, $a3, 24
	bge	$t8, $t7, .LBB0_41
# %bb.38:                               # %if.then215
                                        #   in Loop: Header=BB0_34 Depth=1
	st.w	$t7, $a3, 24
	b	.LBB0_41
	.p2align	4, , 16
.LBB0_39:                               # %if.else202
                                        #   in Loop: Header=BB0_34 Depth=1
	ld.w	$t7, $t4, 8
	ld.w	$t6, $t4, 12
	ld.w	$t8, $a3, 16
	bge	$t7, $t8, .LBB0_37
.LBB0_40:                               # %if.then209
                                        #   in Loop: Header=BB0_34 Depth=1
	st.w	$t7, $a3, 16
.LBB0_41:                               # %if.end218
                                        #   in Loop: Header=BB0_34 Depth=1
	ld.w	$t7, $a3, 36
	blt	$t6, $t7, .LBB0_32
# %bb.42:                               # %if.else224
                                        #   in Loop: Header=BB0_34 Depth=1
	ld.w	$t7, $a3, 44
	bge	$t7, $t6, .LBB0_33
# %bb.43:                               # %if.then228
                                        #   in Loop: Header=BB0_34 Depth=1
	st.w	$t6, $a3, 44
	b	.LBB0_33
.LBB0_44:                               # %for.end234
	ld.w	$t4, $a3, 24
	ld.w	$t5, $a3, 16
	fld.d	$fa0, $a3, 48
	sub.d	$t4, $t4, $t5
	movgr2fr.w	$fa1, $t4
	ffint.d.w	$fa1, $fa1
	ld.w	$t4, $a3, 20
	ld.w	$t5, $a3, 12
	fmul.d	$fa1, $fa0, $fa1
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$t6, $fa1
	sub.d	$t4, $t4, $t5
	movgr2fr.w	$fa1, $t4
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	ld.w	$t4, $a3, 44
	ld.w	$t5, $a3, 36
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$t7, $fa0
	fld.d	$fa0, $a3, 56
	sub.d	$t4, $t4, $t5
	movgr2fr.w	$fa1, $t4
	ffint.d.w	$fa1, $fa1
	ld.w	$t4, $a3, 40
	ld.w	$t5, $a3, 28
	fmul.d	$fa1, $fa0, $fa1
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$t8, $fa1
	sub.d	$t4, $t4, $t5
	movgr2fr.w	$fa1, $t4
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$t4, $fa0
	add.d	$t5, $s2, $t6
	add.d	$t5, $t5, $t8
	add.d	$t4, $t7, $t4
	sub.w	$s2, $t5, $t4
.LBB0_45:                               # %if.end267
	add.d	$s3, $a6, $t0
	add.d	$s4, $a6, $t2
	bge	$t3, $s2, .LBB0_48
# %bb.46:                               # %lor.lhs.false
	pcalau12i	$a0, %got_pc_hi20(T)
	ld.d	$a0, $a0, %got_pc_lo12(T)
	fld.d	$fa0, $a0, 0
	sub.d	$a0, $t3, $s2
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa1, $fa0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(randVar)
	ld.d	$a0, $a0, %got_pc_lo12(randVar)
	ld.w	$a1, $a0, 0
	lu12i.w	$a2, 269412
	ori	$a2, $a2, 3693
	mul.d	$a1, $a1, $a2
	lu12i.w	$a2, 3
	ori	$a2, $a2, 57
	add.d	$a1, $a1, $a2
	pcalau12i	$a2, %pc_hi20(.LCPI0_0)
	fld.d	$fa1, $a2, %pc_lo12(.LCPI0_0)
	bstrpick.d	$a2, $a1, 30, 0
	movgr2fr.w	$fa2, $a2
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa1, $fa2, $fa1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	st.w	$a1, $a0, 0
	bcnez	$fcc0, .LBB0_49
# %bb.47:                               # %lor.lhs.false.if.then278_crit_edge
	ld.w	$a0, $s3, 0
	slli.d	$a1, $a0, 3
	ldx.d	$a2, $s0, $a1
	ld.w	$a1, $s4, 0
	ld.w	$a3, $a2, 0
	slli.d	$a4, $a1, 3
	ldx.d	$a5, $s0, $a4
	slli.d	$a3, $a3, 3
	ld.w	$a6, $a5, 0
	ldx.d	$a4, $s1, $a3
	ld.d	$a7, $a5, 8
	ld.d	$a5, $a2, 8
	slli.d	$a2, $a6, 3
	ldx.d	$a3, $s1, $a2
	ld.w	$a2, $a7, 16
	ld.w	$t1, $a7, 20
.LBB0_48:                               # %if.then278
	ld.w	$a6, $a4, 16
	ld.w	$t0, $a4, 24
	ld.w	$t2, $a4, 36
	ld.w	$t3, $a4, 44
	st.w	$a6, $a4, 12
	st.w	$t0, $a4, 20
	st.w	$t2, $a4, 28
	st.w	$t3, $a4, 40
	ld.d	$a4, $a5, 16
	st.d	$a4, $a5, 8
	ld.w	$a4, $a3, 16
	ld.w	$a5, $a3, 24
	ld.w	$a6, $a3, 36
	ld.w	$t0, $a3, 44
	st.w	$a4, $a3, 12
	st.w	$a5, $a3, 20
	st.w	$a6, $a3, 28
	st.w	$t0, $a3, 40
	st.w	$a2, $a7, 8
	st.w	$t1, $a7, 12
	st.w	$a1, $s3, 0
	st.w	$a0, $s4, 0
	ld.w	$a0, $s4, 4
	ld.w	$a1, $s3, 4
	ld.w	$a2, $s4, 28
	ld.w	$a3, $s3, 28
	st.w	$a0, $s3, 4
	st.w	$a1, $s4, 4
	st.w	$a2, $s3, 28
	st.w	$a3, $s4, 28
	st.w	$s2, $fp, 0
	ori	$a0, $zero, 1
	b	.LBB0_50
.LBB0_49:
	move	$a0, $zero
.LBB0_50:                               # %cleanup
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end0:
	.size	upinswap, .Lfunc_end0-upinswap
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
