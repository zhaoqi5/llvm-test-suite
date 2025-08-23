	.file	"placepads.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function placepads
.LCPI0_0:
	.dword	0x3fb999999999999a              # double 0.10000000000000001
	.text
	.globl	placepads
	.p2align	5
	.type	placepads,@function
placepads:                              # @placepads
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
	pcalau12i	$a0, %got_pc_hi20(blockt)
	ld.d	$a2, $a0, %got_pc_lo12(blockt)
	ld.w	$t1, $a2, 0
	pcalau12i	$a0, %got_pc_hi20(blockr)
	ld.d	$a3, $a0, %got_pc_lo12(blockr)
	pcalau12i	$a0, %got_pc_hi20(blockb)
	pcalau12i	$a1, %got_pc_hi20(numpads)
	ld.d	$a1, $a1, %got_pc_lo12(numpads)
	ld.d	$a4, $a0, %got_pc_lo12(blockb)
	pcalau12i	$a0, %got_pc_hi20(blockl)
	ld.d	$a5, $a0, %got_pc_lo12(blockl)
	ld.w	$a0, $a1, 0
	ld.w	$a6, $a3, 0
	st.w	$zero, $a4, 0
	ori	$a1, $zero, 1
	st.w	$zero, $a5, 0
	blt	$a0, $a1, .LBB0_120
# %bb.1:                                # %for.body.lr.ph
	st.d	$a5, $sp, 40                    # 8-byte Folded Spill
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(numcells)
	ld.d	$a1, $a1, %got_pc_lo12(numcells)
	move	$t5, $zero
	st.d	$zero, $sp, 80                  # 8-byte Folded Spill
	move	$s7, $zero
	ld.w	$a1, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(cellarray)
	ld.d	$a3, $a2, %got_pc_lo12(cellarray)
	pcalau12i	$a2, %got_pc_hi20(fixLRBT)
	ld.d	$a4, $a2, %got_pc_lo12(fixLRBT)
	pcalau12i	$a2, %got_pc_hi20(padspace)
	ld.d	$a5, $a2, %got_pc_lo12(padspace)
	add.w	$a2, $a0, $a1
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	ld.d	$s1, $a3, 0
	st.d	$a4, $sp, 24                    # 8-byte Folded Spill
	ld.d	$s2, $a4, 0
	st.d	$a5, $sp, 16                    # 8-byte Folded Spill
	ld.d	$s3, $a5, 0
	addi.w	$a0, $a1, 1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	addi.d	$a0, $a2, 1
	slli.d	$a3, $a1, 3
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	sub.d	$s4, $s3, $a3
	ori	$s5, $zero, 4
	move	$a7, $t1
                                        # implicit-def: $r16
	move	$s0, $a6
	move	$a3, $a1
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_2:                                #   in Loop: Header=BB0_4 Depth=1
	move	$s7, $t5
	move	$s0, $s8
.LBB0_3:                                # %for.inc219
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$a3, $t3
	bge	$t3, $a2, .LBB0_28
.LBB0_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
                                        #     Child Loop BB0_17 Depth 2
                                        #       Child Loop BB0_25 Depth 3
	addi.w	$t3, $a3, 1
	slli.d	$a4, $t3, 3
	ldx.d	$a4, $s1, $a4
	ld.w	$a5, $a4, 80
	bne	$a5, $s5, .LBB0_3
# %bb.5:                                # %if.then
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a4, $a4, 152
	ld.w	$a5, $a4, 68
	ld.w	$t0, $a4, 64
	ld.w	$t3, $a4, 60
	ld.w	$a4, $a4, 56
	sub.w	$s6, $a5, $t0
	sub.w	$t3, $t3, $a4
	addi.w	$a5, $a3, 2
	ori	$a4, $zero, 2
	blt	$a2, $a5, .LBB0_11
# %bb.6:                                # %for.body22.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	sub.w	$t6, $a2, $a3
	alsl.d	$t7, $a5, $s1, 3
	ori	$t5, $zero, 1
	.p2align	4, , 16
.LBB0_7:                                # %for.body22
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $t7, 0
	ld.w	$a4, $a3, 80
	bne	$a4, $s5, .LBB0_10
# %bb.8:                                # %if.end
                                        #   in Loop: Header=BB0_7 Depth=2
	ld.d	$a3, $a3, 152
	ld.w	$a4, $a3, 68
	ld.w	$a5, $a3, 64
	addi.w	$t5, $t5, 1
	sub.w	$a4, $a4, $a5
	slt	$a5, $s6, $a4
	maskeqz	$a4, $a4, $a5
	ld.w	$t0, $a3, 60
	ld.w	$a3, $a3, 56
	masknez	$a5, $s6, $a5
	or	$s6, $a4, $a5
	add.d	$a4, $t0, $t3
	sub.w	$t3, $a4, $a3
	addi.d	$t7, $t7, 8
	bne	$t6, $t5, .LBB0_7
# %bb.9:                                #   in Loop: Header=BB0_4 Depth=1
	move	$t5, $t6
.LBB0_10:                               # %for.end.loopexit
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.w	$a4, $t5, 1
.LBB0_11:                               # %for.end
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.w	$a3, $s2, 8
	beqz	$a3, .LBB0_13
# %bb.12:                               # %if.else
                                        #   in Loop: Header=BB0_4 Depth=1
	slt	$a3, $t3, $s0
	masknez	$a4, $t3, $a3
	maskeqz	$a3, $s0, $a3
	or	$s8, $a3, $a4
	move	$t6, $s8
	b	.LBB0_14
.LBB0_13:                               # %if.then69
                                        #   in Loop: Header=BB0_4 Depth=1
	sub.w	$t6, $s0, $t3
	div.w	$a3, $t6, $a4
	srai.d	$a4, $a3, 63
	andn	$t4, $a3, $a4
	slt	$a3, $s0, $t3
	masknez	$a4, $s0, $a3
	maskeqz	$a3, $t3, $a3
	or	$s8, $a3, $a4
.LBB0_14:                               # %for.body93.lr.ph
                                        #   in Loop: Header=BB0_4 Depth=1
	slt	$a3, $s0, $t3
	sub.d	$a4, $t3, $s0
	bstrpick.d	$a4, $a4, 31, 1
	maskeqz	$a4, $a4, $a3
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	masknez	$a3, $a5, $a3
	or	$a3, $a4, $a3
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a3, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $a3, %pc_lo12(.LCPI0_0)
	sub.d	$a3, $a7, $s7
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a3, $fa0
	add.d	$a3, $s6, $a3
	add.w	$t5, $a3, $s7
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	st.w	$t5, $a4, 0
	add.w	$a7, $a3, $a7
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	st.w	$a7, $a3, 0
	movgr2fr.w	$fa0, $t6
	ffint.d.w	$fa0, $fa0
	ld.d	$t3, $sp, 72                    # 8-byte Folded Reload
	move	$t6, $a1
	b	.LBB0_17
.LBB0_15:                               #   in Loop: Header=BB0_17 Depth=2
	move	$t3, $a0
	.p2align	4, , 16
.LBB0_16:                               # %for.inc215
                                        #   in Loop: Header=BB0_17 Depth=2
	move	$t6, $t3
	addi.w	$a3, $t3, 0
	addi.w	$t3, $t3, 1
	bge	$a3, $a2, .LBB0_2
.LBB0_17:                               # %for.body93
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_25 Depth 3
	slli.d	$a3, $t3, 3
	ldx.d	$t7, $s1, $a3
	ld.w	$a3, $t7, 80
	bne	$a3, $s5, .LBB0_16
# %bb.18:                               # %if.then99
                                        #   in Loop: Header=BB0_17 Depth=2
	ld.d	$a4, $t7, 152
	ld.w	$a3, $a4, 60
	ld.w	$a5, $a4, 56
	ld.w	$t0, $s2, 8
	sub.w	$a3, $a3, $a5
	beqz	$t0, .LBB0_20
# %bb.19:                               # %if.else130
                                        #   in Loop: Header=BB0_17 Depth=2
	sub.w	$a5, $t3, $a1
	slli.d	$a5, $a5, 3
	fldx.d	$fa1, $s3, $a5
	fmul.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a5, $fa1
	b	.LBB0_21
.LBB0_20:                               # %if.then125
                                        #   in Loop: Header=BB0_17 Depth=2
	bstrpick.d	$a5, $a3, 31, 31
	add.w	$a5, $a3, $a5
	srli.d	$a5, $a5, 1
	add.d	$a5, $a5, $t4
.LBB0_21:                               # %if.end140
                                        #   in Loop: Header=BB0_17 Depth=2
	ld.w	$t0, $a4, 68
	ld.w	$a4, $a4, 64
	sub.w	$a4, $t0, $a4
	st.w	$a5, $t7, 12
	bstrpick.d	$a5, $a4, 31, 31
	add.w	$a5, $a4, $a5
	srli.d	$a5, $a5, 1
	sub.d	$a4, $s6, $a4
	add.d	$a4, $a4, $a5
	addi.w	$t3, $t6, 2
	st.w	$a4, $t7, 16
	blt	$a2, $t3, .LBB0_16
# %bb.22:                               # %for.body152.preheader
                                        #   in Loop: Header=BB0_17 Depth=2
	add.d	$fp, $a3, $t4
	sub.d	$t6, $a0, $t3
	alsl.d	$s0, $t3, $s4, 3
	alsl.d	$t7, $t3, $s1, 3
	b	.LBB0_25
	.p2align	4, , 16
.LBB0_23:                               # %if.else192
                                        #   in Loop: Header=BB0_25 Depth=3
	fld.d	$fa1, $s0, 0
	fmul.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a5, $fa1
.LBB0_24:                               # %if.end202
                                        #   in Loop: Header=BB0_25 Depth=3
	ld.w	$t0, $s7, 68
	ld.w	$fp, $s7, 64
	sub.w	$t0, $t0, $fp
	st.w	$a5, $t8, 12
	bstrpick.d	$a5, $t0, 31, 31
	add.w	$a5, $t0, $a5
	srli.d	$a5, $a5, 1
	sub.d	$t0, $s6, $t0
	add.d	$a5, $t0, $a5
	st.w	$a5, $t8, 16
	add.d	$fp, $a4, $a3
	addi.d	$t3, $t3, 1
	addi.d	$t6, $t6, -1
	addi.d	$s0, $s0, 8
	addi.d	$t7, $t7, 8
	beqz	$t6, .LBB0_15
.LBB0_25:                               # %for.body152
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t8, $t7, 0
	ld.w	$a3, $t8, 80
	bne	$a3, $s5, .LBB0_16
# %bb.26:                               # %if.end159
                                        #   in Loop: Header=BB0_25 Depth=3
	ld.d	$s7, $t8, 152
	ld.w	$a3, $s7, 60
	ld.w	$a4, $s7, 56
	ld.w	$a5, $s2, 8
	sub.w	$a3, $a3, $a4
	add.d	$a4, $fp, $t4
	bnez	$a5, .LBB0_23
# %bb.27:                               # %if.then185
                                        #   in Loop: Header=BB0_25 Depth=3
	bstrpick.d	$a5, $a3, 31, 31
	add.w	$a5, $a3, $a5
	srli.d	$a5, $a5, 1
	add.d	$a5, $a4, $a5
	b	.LBB0_24
.LBB0_28:                               # %for.body227.lr.ph
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s1, $a3, 0
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s2, $a3, 0
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s3, $a3, 0
	movgr2fr.w	$fa0, $a7
	ffint.d.w	$fa1, $fa0
	pcalau12i	$a3, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $a3, %pc_lo12(.LCPI0_0)
	sub.d	$a3, $a7, $t5
	movgr2fr.w	$fa2, $a3
	ffint.d.w	$fa2, $fa2
	fmadd.d	$fa1, $fa2, $fa0, $fa1
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	sub.d	$s4, $s3, $a3
	ori	$s5, $zero, 2
	move	$a3, $a1
	b	.LBB0_30
	.p2align	4, , 16
.LBB0_29:                               # %for.inc443
                                        #   in Loop: Header=BB0_30 Depth=1
	move	$a3, $t3
	bge	$t3, $a2, .LBB0_54
.LBB0_30:                               # %for.body227
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_33 Depth 2
                                        #     Child Loop BB0_43 Depth 2
                                        #       Child Loop BB0_51 Depth 3
	addi.w	$t3, $a3, 1
	slli.d	$a4, $t3, 3
	ldx.d	$a4, $s1, $a4
	ld.w	$a5, $a4, 80
	bne	$a5, $s5, .LBB0_29
# %bb.31:                               # %if.then233
                                        #   in Loop: Header=BB0_30 Depth=1
	ld.d	$a4, $a4, 152
	ld.w	$a5, $a4, 60
	ld.w	$a4, $a4, 56
	sub.w	$t3, $a5, $a4
	addi.w	$a5, $a3, 2
	ori	$a4, $zero, 2
	blt	$a2, $a5, .LBB0_37
# %bb.32:                               # %for.body250.preheader
                                        #   in Loop: Header=BB0_30 Depth=1
	sub.w	$a4, $a2, $a3
	alsl.d	$a5, $a5, $s1, 3
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB0_33:                               # %for.body250
                                        #   Parent Loop BB0_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t0, $a5, 0
	ld.w	$t6, $t0, 80
	bne	$t6, $s5, .LBB0_36
# %bb.34:                               # %if.end257
                                        #   in Loop: Header=BB0_33 Depth=2
	ld.d	$t0, $t0, 152
	ld.w	$t6, $t0, 60
	ld.w	$t0, $t0, 56
	addi.w	$a3, $a3, 1
	add.d	$t3, $t6, $t3
	sub.w	$t3, $t3, $t0
	addi.d	$a5, $a5, 8
	bne	$a4, $a3, .LBB0_33
# %bb.35:                               #   in Loop: Header=BB0_30 Depth=1
	move	$a3, $a4
.LBB0_36:                               # %for.end273.loopexit
                                        #   in Loop: Header=BB0_30 Depth=1
	addi.w	$a4, $a3, 1
.LBB0_37:                               # %for.end273
                                        #   in Loop: Header=BB0_30 Depth=1
	ld.w	$a3, $s2, 12
	beqz	$a3, .LBB0_39
# %bb.38:                               # %if.else285
                                        #   in Loop: Header=BB0_30 Depth=1
	slt	$a3, $t3, $s0
	masknez	$a4, $t3, $a3
	maskeqz	$a3, $s0, $a3
	or	$a3, $a3, $a4
	b	.LBB0_40
.LBB0_39:                               # %if.then277
                                        #   in Loop: Header=BB0_30 Depth=1
	sub.w	$a3, $s0, $t3
	div.w	$a4, $a3, $a4
	srai.d	$a5, $a4, 63
	andn	$t4, $a4, $a5
.LBB0_40:                               # %for.body305.lr.ph
                                        #   in Loop: Header=BB0_30 Depth=1
	slt	$a4, $s0, $t3
	sub.d	$a5, $t3, $s0
	bstrpick.d	$a5, $a5, 31, 1
	maskeqz	$a4, $a5, $a4
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	add.d	$a5, $a4, $a5
	st.d	$a5, $sp, 80                    # 8-byte Folded Spill
	movgr2fr.w	$fa2, $a3
	ffint.d.w	$fa2, $fa2
	ld.d	$t3, $sp, 72                    # 8-byte Folded Reload
	move	$t6, $a1
	b	.LBB0_43
.LBB0_41:                               #   in Loop: Header=BB0_43 Depth=2
	move	$t3, $a0
	.p2align	4, , 16
.LBB0_42:                               # %for.inc439
                                        #   in Loop: Header=BB0_43 Depth=2
	move	$t6, $t3
	addi.w	$a3, $t3, 0
	addi.w	$t3, $t3, 1
	bge	$a3, $a2, .LBB0_29
.LBB0_43:                               # %for.body305
                                        #   Parent Loop BB0_30 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_51 Depth 3
	slli.d	$a3, $t3, 3
	ldx.d	$t7, $s1, $a3
	ld.w	$a3, $t7, 80
	bne	$a3, $s5, .LBB0_42
# %bb.44:                               # %if.then311
                                        #   in Loop: Header=BB0_43 Depth=2
	ld.d	$a3, $t7, 152
	ld.w	$a4, $a3, 60
	ld.w	$a5, $a3, 56
	ld.w	$t0, $s2, 12
	sub.w	$t8, $a4, $a5
	beqz	$t0, .LBB0_46
# %bb.45:                               # %if.else343
                                        #   in Loop: Header=BB0_43 Depth=2
	sub.w	$a4, $t3, $a1
	slli.d	$a4, $a4, 3
	fldx.d	$fa3, $s3, $a4
	fmul.d	$fa3, $fa3, $fa2
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a4, $fa3
	b	.LBB0_47
.LBB0_46:                               # %if.then337
                                        #   in Loop: Header=BB0_43 Depth=2
	bstrpick.d	$a4, $t8, 31, 31
	add.w	$a4, $t8, $a4
	srli.d	$a4, $a4, 1
	add.d	$a4, $a4, $t4
.LBB0_47:                               # %if.end353
                                        #   in Loop: Header=BB0_43 Depth=2
	ld.w	$a5, $a3, 68
	ld.w	$a3, $a3, 64
	sub.w	$a3, $a5, $a3
	st.w	$a4, $t7, 12
	bstrpick.d	$a4, $a3, 31, 31
	add.w	$a3, $a3, $a4
	srai.d	$a3, $a3, 1
	movgr2fr.w	$fa3, $a3
	ffint.d.w	$fa3, $fa3
	fadd.d	$fa3, $fa1, $fa3
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a3, $fa3
	addi.w	$t3, $t6, 2
	st.w	$a3, $t7, 16
	blt	$a2, $t3, .LBB0_42
# %bb.48:                               # %for.body371.preheader
                                        #   in Loop: Header=BB0_43 Depth=2
	add.d	$t8, $t8, $t4
	sub.d	$t6, $a0, $t3
	alsl.d	$s6, $t3, $s4, 3
	alsl.d	$s7, $t3, $s1, 3
	b	.LBB0_51
	.p2align	4, , 16
.LBB0_49:                               # %if.else411
                                        #   in Loop: Header=BB0_51 Depth=3
	fld.d	$fa3, $s6, 0
	fmul.d	$fa3, $fa3, $fa2
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a5, $fa3
.LBB0_50:                               # %if.end421
                                        #   in Loop: Header=BB0_51 Depth=3
	ld.w	$t0, $a4, 68
	ld.w	$a4, $a4, 64
	sub.w	$a4, $t0, $a4
	st.w	$a5, $t7, 12
	bstrpick.d	$a5, $a4, 31, 31
	add.w	$a4, $a4, $a5
	srai.d	$a4, $a4, 1
	movgr2fr.w	$fa3, $a4
	ffint.d.w	$fa3, $fa3
	fadd.d	$fa3, $fa1, $fa3
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a4, $fa3
	st.w	$a4, $t7, 16
	add.d	$t8, $t8, $a3
	addi.d	$t3, $t3, 1
	addi.d	$t6, $t6, -1
	addi.d	$s6, $s6, 8
	addi.d	$s7, $s7, 8
	beqz	$t6, .LBB0_41
.LBB0_51:                               # %for.body371
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t7, $s7, 0
	ld.w	$a3, $t7, 80
	bne	$a3, $s5, .LBB0_42
# %bb.52:                               # %if.end378
                                        #   in Loop: Header=BB0_51 Depth=3
	ld.d	$a4, $t7, 152
	ld.w	$a3, $a4, 60
	ld.w	$a5, $a4, 56
	ld.w	$t0, $s2, 12
	sub.w	$a3, $a3, $a5
	add.d	$t8, $t8, $t4
	bnez	$t0, .LBB0_49
# %bb.53:                               # %if.then404
                                        #   in Loop: Header=BB0_51 Depth=3
	bstrpick.d	$a5, $a3, 31, 31
	add.w	$a5, $a3, $a5
	srli.d	$a5, $a5, 1
	add.d	$a5, $t8, $a5
	b	.LBB0_50
.LBB0_54:                               # %for.body451.lr.ph
	move	$s1, $zero
	move	$s2, $zero
	move	$s0, $zero
	move	$ra, $zero
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s3, $a3, 0
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $a3, 0
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $a3, 0
	movgr2fr.w	$fa1, $t5
	ffint.d.w	$fa1, $fa1
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	sub.d	$s6, $s4, $a3
	ori	$s7, $zero, 1
	move	$t6, $a1
	b	.LBB0_57
	.p2align	4, , 16
.LBB0_55:                               #   in Loop: Header=BB0_57 Depth=1
	move	$ra, $s1
	move	$t1, $t6
.LBB0_56:                               # %for.inc706
                                        #   in Loop: Header=BB0_57 Depth=1
	move	$t6, $t3
	bge	$t3, $a2, .LBB0_81
.LBB0_57:                               # %for.body451
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_60 Depth 2
                                        #     Child Loop BB0_70 Depth 2
                                        #       Child Loop BB0_78 Depth 3
	addi.w	$t3, $t6, 1
	slli.d	$a3, $t3, 3
	ldx.d	$a3, $s3, $a3
	ld.w	$a4, $a3, 80
	bne	$a4, $s7, .LBB0_56
# %bb.58:                               # %if.then457
                                        #   in Loop: Header=BB0_57 Depth=1
	ld.d	$a3, $a3, 152
	ld.w	$a4, $a3, 68
	ld.w	$a5, $a3, 64
	ld.w	$t0, $a3, 60
	ld.w	$a3, $a3, 56
	sub.w	$t3, $a4, $a5
	sub.w	$s8, $t0, $a3
	addi.w	$a3, $t6, 2
	ori	$a4, $zero, 2
	blt	$a2, $a3, .LBB0_64
# %bb.59:                               # %for.body485.preheader
                                        #   in Loop: Header=BB0_57 Depth=1
	sub.w	$t7, $a2, $t6
	alsl.d	$t8, $a3, $s3, 3
	ori	$t6, $zero, 1
	.p2align	4, , 16
.LBB0_60:                               # %for.body485
                                        #   Parent Loop BB0_57 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $t8, 0
	ld.w	$a4, $a3, 80
	bne	$a4, $s7, .LBB0_63
# %bb.61:                               # %if.end492
                                        #   in Loop: Header=BB0_60 Depth=2
	ld.d	$a3, $a3, 152
	ld.w	$a4, $a3, 60
	ld.w	$a5, $a3, 56
	addi.w	$t6, $t6, 1
	sub.w	$a4, $a4, $a5
	slt	$a5, $s8, $a4
	maskeqz	$a4, $a4, $a5
	ld.w	$t0, $a3, 68
	ld.w	$a3, $a3, 64
	masknez	$a5, $s8, $a5
	or	$s8, $a4, $a5
	add.d	$a4, $t0, $t3
	sub.w	$t3, $a4, $a3
	addi.d	$t8, $t8, 8
	bne	$t7, $t6, .LBB0_60
# %bb.62:                               #   in Loop: Header=BB0_57 Depth=1
	move	$t6, $t7
.LBB0_63:                               # %for.end534.loopexit
                                        #   in Loop: Header=BB0_57 Depth=1
	addi.w	$a4, $t6, 1
.LBB0_64:                               # %for.end534
                                        #   in Loop: Header=BB0_57 Depth=1
	ld.w	$a3, $s5, 0
	beqz	$a3, .LBB0_66
# %bb.65:                               # %if.else546
                                        #   in Loop: Header=BB0_57 Depth=1
	slt	$a3, $t3, $t1
	masknez	$a4, $t3, $a3
	maskeqz	$a3, $t1, $a3
	or	$t6, $a3, $a4
	move	$a3, $t6
	b	.LBB0_67
.LBB0_66:                               # %if.then538
                                        #   in Loop: Header=BB0_57 Depth=1
	sub.w	$a3, $t1, $t3
	div.w	$a4, $a3, $a4
	srai.d	$a5, $a4, 63
	andn	$t4, $a4, $a5
	slt	$a4, $t1, $t3
	masknez	$a5, $t1, $a4
	maskeqz	$a4, $t3, $a4
	or	$t6, $a4, $a5
.LBB0_67:                               # %for.body574.lr.ph
                                        #   in Loop: Header=BB0_57 Depth=1
	slt	$a4, $t1, $t3
	sub.d	$a5, $t3, $t1
	bstrpick.d	$a5, $a5, 31, 1
	maskeqz	$a5, $a5, $a4
	masknez	$a4, $s0, $a4
	or	$s0, $a5, $a4
	sub.d	$a4, $a6, $ra
	movgr2fr.w	$fa2, $a4
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa2, $fa2, $fa0
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$a4, $fa2
	add.d	$s2, $s8, $a4
	add.w	$a6, $s2, $a6
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	st.w	$a6, $a4, 0
	add.w	$s1, $s2, $ra
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	st.w	$s1, $a4, 0
	movgr2fr.w	$fa2, $a3
	ffint.d.w	$fa2, $fa2
	add.d	$t1, $t4, $t5
	ld.d	$t3, $sp, 72                    # 8-byte Folded Reload
	move	$t7, $a1
	b	.LBB0_70
.LBB0_68:                               #   in Loop: Header=BB0_70 Depth=2
	move	$t3, $a0
	.p2align	4, , 16
.LBB0_69:                               # %for.inc702
                                        #   in Loop: Header=BB0_70 Depth=2
	move	$t7, $t3
	addi.w	$a3, $t3, 0
	addi.w	$t3, $t3, 1
	bge	$a3, $a2, .LBB0_55
.LBB0_70:                               # %for.body574
                                        #   Parent Loop BB0_57 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_78 Depth 3
	slli.d	$a3, $t3, 3
	ldx.d	$t8, $s3, $a3
	ld.w	$a3, $t8, 80
	bne	$a3, $s7, .LBB0_69
# %bb.71:                               # %if.then580
                                        #   in Loop: Header=BB0_70 Depth=2
	ld.d	$a4, $t8, 152
	ld.w	$a3, $a4, 68
	ld.w	$a5, $a4, 64
	ld.w	$t0, $s5, 0
	sub.w	$a3, $a3, $a5
	beqz	$t0, .LBB0_73
# %bb.72:                               # %if.else613
                                        #   in Loop: Header=BB0_70 Depth=2
	sub.w	$a5, $t3, $a1
	slli.d	$a5, $a5, 3
	fldx.d	$fa3, $s4, $a5
	fmadd.d	$fa3, $fa3, $fa2, $fa1
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a5, $fa3
	b	.LBB0_74
.LBB0_73:                               # %if.then606
                                        #   in Loop: Header=BB0_70 Depth=2
	bstrpick.d	$a5, $a3, 31, 31
	add.w	$a5, $a3, $a5
	srli.d	$a5, $a5, 1
	add.d	$a5, $a5, $t1
.LBB0_74:                               # %if.end624
                                        #   in Loop: Header=BB0_70 Depth=2
	ld.w	$t0, $a4, 60
	ld.w	$a4, $a4, 56
	sub.w	$a4, $t0, $a4
	st.w	$a5, $t8, 16
	bstrpick.d	$a5, $a4, 31, 31
	add.w	$a5, $a4, $a5
	srli.d	$a5, $a5, 1
	sub.d	$a4, $s8, $a4
	add.d	$a4, $a4, $a5
	addi.w	$t3, $t7, 2
	st.w	$a4, $t8, 12
	blt	$a2, $t3, .LBB0_69
# %bb.75:                               # %for.body638.preheader
                                        #   in Loop: Header=BB0_70 Depth=2
	add.d	$a3, $a3, $t1
	sub.d	$ra, $a0, $t3
	alsl.d	$t7, $t3, $s6, 3
	alsl.d	$t8, $t3, $s3, 3
	b	.LBB0_78
	.p2align	4, , 16
.LBB0_76:                               # %if.else678
                                        #   in Loop: Header=BB0_78 Depth=3
	fld.d	$fa3, $t7, 0
	fmadd.d	$fa3, $fa3, $fa2, $fa1
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$t0, $fa3
.LBB0_77:                               # %if.end689
                                        #   in Loop: Header=BB0_78 Depth=3
	ld.w	$t2, $a5, 60
	ld.w	$a5, $a5, 56
	sub.w	$a5, $t2, $a5
	st.w	$t0, $fp, 16
	bstrpick.d	$t0, $a5, 31, 31
	add.w	$t0, $a5, $t0
	srli.d	$t0, $t0, 1
	sub.d	$a5, $s8, $a5
	add.d	$a5, $a5, $t0
	st.w	$a5, $fp, 12
	add.d	$a3, $a3, $a4
	addi.d	$t3, $t3, 1
	addi.d	$ra, $ra, -1
	addi.d	$t7, $t7, 8
	addi.d	$t8, $t8, 8
	beqz	$ra, .LBB0_68
.LBB0_78:                               # %for.body638
                                        #   Parent Loop BB0_57 Depth=1
                                        #     Parent Loop BB0_70 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$fp, $t8, 0
	ld.w	$a4, $fp, 80
	bne	$a4, $s7, .LBB0_69
# %bb.79:                               # %if.end645
                                        #   in Loop: Header=BB0_78 Depth=3
	ld.d	$a5, $fp, 152
	ld.w	$a4, $a5, 68
	ld.w	$t0, $a5, 64
	ld.w	$t2, $s5, 0
	sub.w	$a4, $a4, $t0
	add.d	$a3, $a3, $t4
	bnez	$t2, .LBB0_76
# %bb.80:                               # %if.then671
                                        #   in Loop: Header=BB0_78 Depth=3
	bstrpick.d	$t0, $a4, 31, 31
	add.w	$t0, $a4, $t0
	srli.d	$t0, $t0, 1
	add.d	$t0, $a3, $t0
	b	.LBB0_77
.LBB0_81:                               # %for.body714.lr.ph
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s3, $a3, 0
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t7, $a3, 0
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$t8, $a3, 0
	movgr2fr.w	$fa2, $a6
	ffint.d.w	$fa2, $fa2
	sub.d	$a3, $a6, $s1
	movgr2fr.w	$fa3, $a3
	ffint.d.w	$fa3, $fa3
	fmadd.d	$fa0, $fa3, $fa0, $fa2
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	sub.d	$fp, $t8, $a3
	ori	$s4, $zero, 3
	move	$a3, $a1
	b	.LBB0_83
	.p2align	4, , 16
.LBB0_82:                               # %for.inc934
                                        #   in Loop: Header=BB0_83 Depth=1
	move	$a3, $t6
	bge	$t6, $a2, .LBB0_107
.LBB0_83:                               # %for.body714
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_86 Depth 2
                                        #     Child Loop BB0_96 Depth 2
                                        #       Child Loop BB0_104 Depth 3
	addi.w	$t6, $a3, 1
	slli.d	$a4, $t6, 3
	ldx.d	$a4, $s3, $a4
	ld.w	$a5, $a4, 80
	bne	$a5, $s4, .LBB0_82
# %bb.84:                               # %if.then720
                                        #   in Loop: Header=BB0_83 Depth=1
	ld.d	$a4, $a4, 152
	ld.w	$a5, $a4, 68
	ld.w	$a4, $a4, 64
	sub.w	$t3, $a5, $a4
	addi.w	$a5, $a3, 2
	ori	$a4, $zero, 2
	blt	$a2, $a5, .LBB0_90
# %bb.85:                               # %for.body737.preheader
                                        #   in Loop: Header=BB0_83 Depth=1
	sub.w	$a4, $a2, $a3
	alsl.d	$a5, $a5, $s3, 3
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB0_86:                               # %for.body737
                                        #   Parent Loop BB0_83 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t0, $a5, 0
	ld.w	$t2, $t0, 80
	bne	$t2, $s4, .LBB0_89
# %bb.87:                               # %if.end744
                                        #   in Loop: Header=BB0_86 Depth=2
	ld.d	$t0, $t0, 152
	ld.w	$t2, $t0, 68
	ld.w	$t0, $t0, 64
	addi.w	$a3, $a3, 1
	add.d	$t2, $t2, $t3
	sub.w	$t3, $t2, $t0
	addi.d	$a5, $a5, 8
	bne	$a4, $a3, .LBB0_86
# %bb.88:                               #   in Loop: Header=BB0_83 Depth=1
	move	$a3, $a4
.LBB0_89:                               # %for.end760.loopexit
                                        #   in Loop: Header=BB0_83 Depth=1
	addi.w	$a4, $a3, 1
.LBB0_90:                               # %for.end760
                                        #   in Loop: Header=BB0_83 Depth=1
	ld.w	$a3, $t7, 4
	beqz	$a3, .LBB0_92
# %bb.91:                               # %if.else772
                                        #   in Loop: Header=BB0_83 Depth=1
	slt	$a3, $t3, $t1
	masknez	$a4, $t3, $a3
	maskeqz	$a3, $t1, $a3
	or	$a3, $a3, $a4
	b	.LBB0_93
.LBB0_92:                               # %if.then764
                                        #   in Loop: Header=BB0_83 Depth=1
	sub.w	$a3, $t1, $t3
	div.w	$a4, $a3, $a4
	srai.d	$a5, $a4, 63
	andn	$t4, $a4, $a5
.LBB0_93:                               # %for.body792.lr.ph
                                        #   in Loop: Header=BB0_83 Depth=1
	slt	$a4, $t1, $t3
	sub.d	$a5, $t3, $t1
	bstrpick.d	$a5, $a5, 31, 1
	maskeqz	$a4, $a5, $a4
	add.d	$s0, $a4, $s0
	movgr2fr.w	$fa2, $a3
	ffint.d.w	$fa2, $fa2
	add.d	$t3, $t4, $t5
	ld.d	$t6, $sp, 72                    # 8-byte Folded Reload
	move	$s5, $a1
	b	.LBB0_96
.LBB0_94:                               #   in Loop: Header=BB0_96 Depth=2
	move	$t6, $a0
	.p2align	4, , 16
.LBB0_95:                               # %for.inc930
                                        #   in Loop: Header=BB0_96 Depth=2
	move	$s5, $t6
	addi.w	$a3, $t6, 0
	addi.w	$t6, $t6, 1
	bge	$a3, $a2, .LBB0_82
.LBB0_96:                               # %for.body792
                                        #   Parent Loop BB0_83 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_104 Depth 3
	slli.d	$a3, $t6, 3
	ldx.d	$s6, $s3, $a3
	ld.w	$a3, $s6, 80
	bne	$a3, $s4, .LBB0_95
# %bb.97:                               # %if.then798
                                        #   in Loop: Header=BB0_96 Depth=2
	ld.d	$a3, $s6, 152
	ld.w	$a4, $a3, 68
	ld.w	$a5, $a3, 64
	ld.w	$t0, $t7, 4
	sub.w	$s7, $a4, $a5
	beqz	$t0, .LBB0_99
# %bb.98:                               # %if.else831
                                        #   in Loop: Header=BB0_96 Depth=2
	sub.w	$a4, $t6, $a1
	slli.d	$a4, $a4, 3
	fldx.d	$fa3, $t8, $a4
	fmadd.d	$fa3, $fa3, $fa2, $fa1
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a4, $fa3
	b	.LBB0_100
.LBB0_99:                               # %if.then824
                                        #   in Loop: Header=BB0_96 Depth=2
	bstrpick.d	$a4, $s7, 31, 31
	add.w	$a4, $s7, $a4
	srli.d	$a4, $a4, 1
	add.d	$a4, $a4, $t3
.LBB0_100:                              # %if.end842
                                        #   in Loop: Header=BB0_96 Depth=2
	ld.w	$a5, $a3, 60
	ld.w	$a3, $a3, 56
	sub.w	$a3, $a5, $a3
	st.w	$a4, $s6, 16
	bstrpick.d	$a4, $a3, 31, 31
	add.w	$a3, $a3, $a4
	srai.d	$a3, $a3, 1
	movgr2fr.w	$fa3, $a3
	ffint.d.w	$fa3, $fa3
	fadd.d	$fa3, $fa0, $fa3
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a3, $fa3
	addi.w	$t6, $s5, 2
	st.w	$a3, $s6, 12
	blt	$a2, $t6, .LBB0_95
# %bb.101:                              # %for.body861.preheader
                                        #   in Loop: Header=BB0_96 Depth=2
	add.d	$a3, $s7, $t3
	sub.d	$s5, $a0, $t6
	alsl.d	$s6, $t6, $fp, 3
	alsl.d	$s7, $t6, $s3, 3
	b	.LBB0_104
	.p2align	4, , 16
.LBB0_102:                              # %if.else901
                                        #   in Loop: Header=BB0_104 Depth=3
	fld.d	$fa3, $s6, 0
	fmadd.d	$fa3, $fa3, $fa2, $fa1
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a5, $fa3
.LBB0_103:                              # %if.end912
                                        #   in Loop: Header=BB0_104 Depth=3
	ld.w	$t0, $a4, 60
	ld.w	$a4, $a4, 56
	sub.w	$a4, $t0, $a4
	st.w	$a5, $s8, 16
	bstrpick.d	$a5, $a4, 31, 31
	add.w	$a4, $a4, $a5
	srai.d	$a4, $a4, 1
	movgr2fr.w	$fa3, $a4
	ffint.d.w	$fa3, $fa3
	fadd.d	$fa3, $fa0, $fa3
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a4, $fa3
	st.w	$a4, $s8, 12
	add.d	$a3, $a3, $ra
	addi.d	$t6, $t6, 1
	addi.d	$s5, $s5, -1
	addi.d	$s6, $s6, 8
	addi.d	$s7, $s7, 8
	beqz	$s5, .LBB0_94
.LBB0_104:                              # %for.body861
                                        #   Parent Loop BB0_83 Depth=1
                                        #     Parent Loop BB0_96 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s8, $s7, 0
	ld.w	$a4, $s8, 80
	bne	$a4, $s4, .LBB0_95
# %bb.105:                              # %if.end868
                                        #   in Loop: Header=BB0_104 Depth=3
	ld.d	$a4, $s8, 152
	ld.w	$a5, $a4, 68
	ld.w	$t0, $a4, 64
	ld.w	$t2, $t7, 4
	sub.w	$ra, $a5, $t0
	add.d	$a3, $a3, $t4
	bnez	$t2, .LBB0_102
# %bb.106:                              # %if.then894
                                        #   in Loop: Header=BB0_104 Depth=3
	bstrpick.d	$a5, $ra, 31, 31
	add.w	$a5, $ra, $a5
	srli.d	$a5, $a5, 1
	add.d	$a5, $a3, $a5
	b	.LBB0_103
.LBB0_107:                              # %for.body942.lr.ph
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	alsl.d	$a0, $a1, $a0, 3
	addi.d	$a0, $a0, 8
	ori	$a3, $zero, 4
	ori	$a4, $zero, 2
	move	$a5, $a1
	b	.LBB0_110
	.p2align	4, , 16
.LBB0_108:                              # %if.then953
                                        #   in Loop: Header=BB0_110 Depth=1
	ld.w	$t1, $t0, 12
	add.d	$t1, $t1, $s2
	st.w	$t1, $t0, 12
.LBB0_109:                              # %for.inc959
                                        #   in Loop: Header=BB0_110 Depth=1
	addi.d	$a5, $a5, 1
	addi.d	$a0, $a0, 8
	bge	$a5, $a2, .LBB0_112
.LBB0_110:                              # %for.body942
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t0, $a0, 0
	ld.w	$t1, $t0, 80
	beq	$t1, $a3, .LBB0_108
# %bb.111:                              # %for.body942
                                        #   in Loop: Header=BB0_110 Depth=1
	beq	$t1, $a4, .LBB0_108
	b	.LBB0_109
.LBB0_112:                              # %for.end961
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	add.d	$a0, $s1, $a5
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	st.w	$a0, $a3, 0
	add.d	$a0, $a6, $a5
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	st.w	$a0, $a3, 0
	add.d	$a0, $t5, $s0
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	st.w	$a0, $a3, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	add.d	$a0, $a7, $s0
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	st.w	$a0, $a4, 0
	slli.d	$a0, $a5, 1
	alsl.d	$a3, $a1, $a3, 3
	addi.d	$a3, $a3, 8
	ori	$a4, $zero, 3
	move	$a5, $a1
	b	.LBB0_114
	.p2align	4, , 16
.LBB0_113:                              # %for.inc984
                                        #   in Loop: Header=BB0_114 Depth=1
	addi.d	$a5, $a5, 1
	addi.d	$a3, $a3, 8
	bge	$a5, $a2, .LBB0_116
.LBB0_114:                              # %for.body971
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a3, 0
	ld.w	$a7, $a6, 80
	bne	$a7, $a4, .LBB0_113
# %bb.115:                              # %if.then977
                                        #   in Loop: Header=BB0_114 Depth=1
	ld.w	$a7, $a6, 12
	add.d	$a7, $a7, $a0
	st.w	$a7, $a6, 12
	b	.LBB0_113
.LBB0_116:                              # %for.body992.lr.ph
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	slli.d	$a0, $s0, 1
	alsl.d	$a3, $a1, $a3, 3
	addi.d	$a3, $a3, 8
	ori	$a4, $zero, 2
	b	.LBB0_118
	.p2align	4, , 16
.LBB0_117:                              # %for.inc1005
                                        #   in Loop: Header=BB0_118 Depth=1
	addi.d	$a1, $a1, 1
	addi.d	$a3, $a3, 8
	bge	$a1, $a2, .LBB0_121
.LBB0_118:                              # %for.body992
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a3, 0
	ld.w	$a6, $a5, 80
	bne	$a6, $a4, .LBB0_117
# %bb.119:                              # %if.then998
                                        #   in Loop: Header=BB0_118 Depth=1
	ld.w	$a6, $a5, 16
	add.d	$a6, $a6, $a0
	st.w	$a6, $a5, 16
	b	.LBB0_117
.LBB0_120:                              # %for.end1007.critedge
	st.w	$zero, $a5, 0
	st.w	$a6, $a3, 0
	st.w	$zero, $a4, 0
	st.w	$t1, $a2, 0
.LBB0_121:                              # %for.end1007
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
.Lfunc_end0:
	.size	placepads, .Lfunc_end0-placepads
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
