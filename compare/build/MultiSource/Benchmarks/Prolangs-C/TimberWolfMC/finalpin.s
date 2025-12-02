	.file	"finalpin.c"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function finalpin
.LCPI0_0:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
	.text
	.globl	finalpin
	.p2align	5
	.type	finalpin,@function
finalpin:                               # @finalpin
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
	fst.d	$fs0, $sp, 1936                 # 8-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$a0, $a0, 224
	sub.d	$sp, $sp, $a0
	pcalau12i	$a0, %got_pc_hi20(numcells)
	ld.d	$a0, $a0, %got_pc_lo12(numcells)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	blez	$a0, .LBB0_285
# %bb.1:                                # %for.body.lr.ph
	ori	$fp, $zero, 1
	pcalau12i	$a0, %got_pc_hi20(cellarray)
	ld.d	$a0, $a0, %got_pc_lo12(cellarray)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(UCptr)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	lu12i.w	$a0, -24415
	ori	$s0, $a0, 3840
	xvrepli.b	$xr0, -1
	ori	$s7, $zero, 404
	lu12i.w	$a0, 1
	ori	$a0, $a0, 348
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$s2, $zero, 44
	ori	$a0, $zero, 1
                                        # implicit-def: $r5
                                        # kill: killed $r5
                                        # implicit-def: $r5
                                        # kill: killed $r5
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	xvst	$xr0, $sp, 32                   # 32-byte Folded Spill
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                # %for.inc1724
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	addi.d	$a0, $a2, 1
	bge	$a2, $a1, .LBB0_285
.LBB0_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
                                        #     Child Loop BB0_10 Depth 2
                                        #     Child Loop BB0_16 Depth 2
                                        #       Child Loop BB0_44 Depth 3
                                        #       Child Loop BB0_107 Depth 3
                                        #       Child Loop BB0_35 Depth 3
                                        #       Child Loop BB0_39 Depth 3
                                        #       Child Loop BB0_50 Depth 3
                                        #         Child Loop BB0_56 Depth 4
                                        #         Child Loop BB0_75 Depth 4
                                        #         Child Loop BB0_79 Depth 4
                                        #         Child Loop BB0_62 Depth 4
                                        #         Child Loop BB0_68 Depth 4
                                        #       Child Loop BB0_274 Depth 3
                                        #       Child Loop BB0_277 Depth 3
                                        #       Child Loop BB0_116 Depth 3
                                        #       Child Loop BB0_119 Depth 3
                                        #       Child Loop BB0_121 Depth 3
                                        #       Child Loop BB0_124 Depth 3
                                        #       Child Loop BB0_93 Depth 3
                                        #       Child Loop BB0_96 Depth 3
                                        #       Child Loop BB0_128 Depth 3
                                        #         Child Loop BB0_137 Depth 4
                                        #       Child Loop BB0_153 Depth 3
                                        #       Child Loop BB0_157 Depth 3
                                        #       Child Loop BB0_163 Depth 3
                                        #       Child Loop BB0_168 Depth 3
                                        #         Child Loop BB0_173 Depth 4
                                        #           Child Loop BB0_190 Depth 5
                                        #           Child Loop BB0_187 Depth 5
                                        #           Child Loop BB0_203 Depth 5
                                        #           Child Loop BB0_197 Depth 5
                                        #           Child Loop BB0_200 Depth 5
                                        #           Child Loop BB0_183 Depth 5
                                        #       Child Loop BB0_209 Depth 3
                                        #       Child Loop BB0_214 Depth 3
                                        #         Child Loop BB0_218 Depth 4
                                        #         Child Loop BB0_237 Depth 4
                                        #         Child Loop BB0_231 Depth 4
                                        #         Child Loop BB0_234 Depth 4
                                        #         Child Loop BB0_227 Depth 4
                                        #         Child Loop BB0_245 Depth 4
                                        #         Child Loop BB0_242 Depth 4
                                        #       Child Loop BB0_252 Depth 3
                                        #       Child Loop BB0_258 Depth 3
                                        #         Child Loop BB0_262 Depth 4
                                        #       Child Loop BB0_270 Depth 3
                                        #     Child Loop BB0_282 Depth 2
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 3
	ldx.d	$a7, $a1, $a0
	ld.w	$a0, $a7, 132
	beqz	$a0, .LBB0_2
# %bb.4:                                # %if.end
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.w	$a1, $a7, 56
	alsl.d	$a1, $a1, $a7, 3
	ld.d	$a2, $a1, 152
	ld.d	$s4, $a7, 136
	ld.d	$a1, $a7, 144
	ld.d	$a2, $a2, 96
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	st.d	$a1, $a2, %pc_lo12(UCptr)
	blez	$a0, .LBB0_11
# %bb.5:                                # %for.body7.preheader
                                        #   in Loop: Header=BB0_3 Depth=1
	ori	$a2, $zero, 1
	beq	$a0, $a2, .LBB0_9
# %bb.6:                                # %vector.ph1173
                                        #   in Loop: Header=BB0_3 Depth=1
	bstrpick.d	$a2, $a0, 30, 1
	slli.d	$a3, $a2, 1
	ori	$a2, $a0, 1
	addi.d	$a4, $a1, 128
	move	$a5, $a3
	.p2align	4, , 16
.LBB0_7:                                # %vector.body1176
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a6, $s0
	bstrins.d	$a6, $s0, 58, 32
	st.d	$a6, $a4, -48
	st.d	$a6, $a4, -4
	addi.d	$a5, $a5, -2
	addi.d	$a4, $a4, 88
	bnez	$a5, .LBB0_7
# %bb.8:                                # %middle.block1180
                                        #   in Loop: Header=BB0_3 Depth=1
	beq	$a3, $a0, .LBB0_11
.LBB0_9:                                # %for.body7.preheader1203
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.d	$a3, $a0, 1
	bstrpick.d	$a3, $a3, 31, 0
	mul.d	$a4, $a2, $s2
	add.d	$a1, $a1, $a4
	addi.d	$a1, $a1, 40
	sub.d	$a2, $a3, $a2
	.p2align	4, , 16
.LBB0_10:                               # %for.body7
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a3, $s0
	bstrins.d	$a3, $s0, 58, 32
	st.d	$a3, $a1, -4
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 44
	bnez	$a2, .LBB0_10
.LBB0_11:                               # %for.cond12.preheader
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.w	$a1, $a7, 128
	blez	$a1, .LBB0_279
# %bb.12:                               # %for.body14.lr.ph
                                        #   in Loop: Header=BB0_3 Depth=1
	ori	$s5, $zero, 1
	st.d	$a7, $sp, 104                   # 8-byte Folded Spill
	st.d	$s4, $sp, 80                    # 8-byte Folded Spill
	b	.LBB0_16
	.p2align	4, , 16
.LBB0_13:                               # %for.end1681.loopexit
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(lArray)
.LBB0_14:                               # %for.end1681
                                        #   in Loop: Header=BB0_16 Depth=2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a7, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a1, $a7, 128
.LBB0_15:                               # %for.inc1682
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	bge	$a0, $a1, .LBB0_278
.LBB0_16:                               # %for.body14
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_44 Depth 3
                                        #       Child Loop BB0_107 Depth 3
                                        #       Child Loop BB0_35 Depth 3
                                        #       Child Loop BB0_39 Depth 3
                                        #       Child Loop BB0_50 Depth 3
                                        #         Child Loop BB0_56 Depth 4
                                        #         Child Loop BB0_75 Depth 4
                                        #         Child Loop BB0_79 Depth 4
                                        #         Child Loop BB0_62 Depth 4
                                        #         Child Loop BB0_68 Depth 4
                                        #       Child Loop BB0_274 Depth 3
                                        #       Child Loop BB0_277 Depth 3
                                        #       Child Loop BB0_116 Depth 3
                                        #       Child Loop BB0_119 Depth 3
                                        #       Child Loop BB0_121 Depth 3
                                        #       Child Loop BB0_124 Depth 3
                                        #       Child Loop BB0_93 Depth 3
                                        #       Child Loop BB0_96 Depth 3
                                        #       Child Loop BB0_128 Depth 3
                                        #         Child Loop BB0_137 Depth 4
                                        #       Child Loop BB0_153 Depth 3
                                        #       Child Loop BB0_157 Depth 3
                                        #       Child Loop BB0_163 Depth 3
                                        #       Child Loop BB0_168 Depth 3
                                        #         Child Loop BB0_173 Depth 4
                                        #           Child Loop BB0_190 Depth 5
                                        #           Child Loop BB0_187 Depth 5
                                        #           Child Loop BB0_203 Depth 5
                                        #           Child Loop BB0_197 Depth 5
                                        #           Child Loop BB0_200 Depth 5
                                        #           Child Loop BB0_183 Depth 5
                                        #       Child Loop BB0_209 Depth 3
                                        #       Child Loop BB0_214 Depth 3
                                        #         Child Loop BB0_218 Depth 4
                                        #         Child Loop BB0_237 Depth 4
                                        #         Child Loop BB0_231 Depth 4
                                        #         Child Loop BB0_234 Depth 4
                                        #         Child Loop BB0_227 Depth 4
                                        #         Child Loop BB0_245 Depth 4
                                        #         Child Loop BB0_242 Depth 4
                                        #       Child Loop BB0_252 Depth 3
                                        #       Child Loop BB0_258 Depth 3
                                        #         Child Loop BB0_262 Depth 4
                                        #       Child Loop BB0_270 Depth 3
	slli.d	$s1, $s5, 4
	alsl.d	$a0, $s5, $s1, 2
	ldx.w	$a2, $s4, $a0
	st.d	$s5, $sp, 136                   # 8-byte Folded Spill
	addi.d	$s5, $s5, 1
	blez	$a2, .LBB0_15
# %bb.17:                               # %if.end19
                                        #   in Loop: Header=BB0_16 Depth=2
	add.d	$a0, $s4, $a0
	ld.w	$a1, $a0, 16
	ld.w	$a0, $a0, 12
	ld.w	$a2, $a7, 56
	pcalau12i	$s0, %pc_hi20(HorV)
	st.w	$a0, $s0, %pc_lo12(HorV)
	movgr2fr.w	$fs0, $a1
	ori	$a0, $zero, 4
	bge	$a2, $a0, .LBB0_20
# %bb.18:                               # %if.end36
                                        #   in Loop: Header=BB0_16 Depth=2
	fld.d	$fa0, $a7, 96
	fld.d	$fa1, $a7, 104
	fdiv.d	$fa1, $fa0, $fa1
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB0_24
# %bb.19:                               # %if.end36.split
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.w	$a0, $s0, %pc_lo12(HorV)
	bnez	$a0, .LBB0_27
	b	.LBB0_23
	.p2align	4, , 16
.LBB0_20:                               # %if.else
                                        #   in Loop: Header=BB0_16 Depth=2
	fld.d	$fa0, $a7, 104
	fld.d	$fa1, $a7, 96
	fdiv.d	$fa1, $fa0, $fa1
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB0_25
# %bb.21:                               # %if.else.split
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.w	$a0, $s0, %pc_lo12(HorV)
	bne	$a0, $fp, .LBB0_26
.LBB0_22:                               # %if.end36.thread
                                        #   in Loop: Header=BB0_16 Depth=2
	st.w	$zero, $s0, %pc_lo12(HorV)
.LBB0_23:                               # %if.else51
                                        #   in Loop: Header=BB0_16 Depth=2
	ffint.d.w	$fa1, $fs0
	fdiv.d	$fa2, $fa1, $fa0
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$s0, $fa2
	movgr2fr.w	$fa2, $s0
	ffint.d.w	$fa2, $fa2
	fneg.d	$fa2, $fa2
	fmadd.d	$fa2, $fa2, $fa0, $fa1
	addi.d	$a0, $s0, 1
	movgr2fr.w	$fa3, $a0
	ffint.d.w	$fa3, $fa3
	fmsub.d	$fa0, $fa3, $fa0, $fa1
	fcmp.cule.d	$fcc0, $fa2, $fa0
	ori	$s6, $zero, 1
	ori	$s8, $zero, 2
	bceqz	$fcc0, .LBB0_28
	b	.LBB0_29
.LBB0_24:                               # %call.sqrt1794
                                        #   in Loop: Header=BB0_16 Depth=2
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, %pc_lo12(HorV)
	bnez	$a0, .LBB0_27
	b	.LBB0_23
.LBB0_25:                               # %call.sqrt
                                        #   in Loop: Header=BB0_16 Depth=2
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, %pc_lo12(HorV)
	beq	$a0, $fp, .LBB0_22
.LBB0_26:                               # %if.end36.thread503
                                        #   in Loop: Header=BB0_16 Depth=2
	st.w	$fp, $s0, %pc_lo12(HorV)
.LBB0_27:                               # %if.then37
                                        #   in Loop: Header=BB0_16 Depth=2
	ffint.d.w	$fa1, $fs0
	fmul.d	$fa2, $fa0, $fa1
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$s0, $fa2
	movgr2fr.w	$fa2, $s0
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa2, $fa2, $fa0
	fsub.d	$fa2, $fa1, $fa2
	addi.d	$a0, $s0, 1
	movgr2fr.w	$fa3, $a0
	ffint.d.w	$fa3, $fa3
	fdiv.d	$fa0, $fa3, $fa0
	fsub.d	$fa0, $fa0, $fa1
	ori	$s8, $zero, 2
	move	$s6, $zero
	fcmp.cule.d	$fcc0, $fa2, $fa0
	bcnez	$fcc0, .LBB0_29
.LBB0_28:                               # %if.end68
                                        #   in Loop: Header=BB0_16 Depth=2
	addi.w	$s0, $a0, 0
.LBB0_29:                               # %if.end68
                                        #   in Loop: Header=BB0_16 Depth=2
	pcalau12i	$a0, %got_pc_hi20(pinSpacing)
	ld.d	$a0, $a0, %got_pc_lo12(pinSpacing)
	ld.w	$s4, $a0, 0
	div.w	$a0, $s0, $s4
	mul.d	$a1, $a0, $s4
	sub.w	$a1, $s0, $a1
	addi.w	$a2, $a0, 1
	mul.d	$a3, $a2, $s4
	sub.w	$a3, $a3, $s0
	slt	$a1, $a3, $a1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s5, $a1, $a0
	pcalau12i	$a0, %pc_hi20(nPinLocs)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	st.w	$s5, $a0, %pc_lo12(nPinLocs)
	addi.w	$s2, $s5, 1
	slli.d	$a0, $s2, 4
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	pcalau12i	$a0, %pc_hi20(lArray)
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $a0, %pc_lo12(lArray)
	blez	$s5, .LBB0_31
# %bb.30:                               # %for.body87.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a0, $s3, 16
	slli.d	$a2, $s5, 4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB0_31:                               # %for.end100
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.wu	$a0, $a0, 128
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	xor	$a0, $a1, $a0
	sltui	$a0, $a0, 1
	addi.d	$a1, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $fp, $a0
	or	$a0, $a0, $a1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 4
	beqz	$s6, .LBB0_41
# %bb.32:                               # %if.else159
                                        #   in Loop: Header=BB0_16 Depth=2
	xvld	$xr7, $sp, 32                   # 32-byte Folded Reload
	ori	$s6, $zero, 8
	blez	$s5, .LBB0_46
# %bb.33:                               # %for.body181.lr.ph
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a1, 4
	ldx.w	$a1, $a1, $s1
	ld.w	$a2, $a2, 4
	bstrpick.d	$a3, $s0, 31, 31
	add.w	$a3, $s0, $a3
	srai.d	$a6, $a3, 1
	addi.d	$a3, $s0, 1
	bstrpick.d	$a4, $a3, 31, 31
	add.w	$a3, $a3, $a4
	srli.d	$a3, $a3, 1
	sub.d	$a3, $a1, $a3
	bstrpick.d	$a5, $s2, 31, 0
	ori	$a4, $zero, 1
	ori	$a7, $zero, 9
	bltu	$s2, $a7, .LBB0_37
# %bb.34:                               # %vector.ph1136
                                        #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a7, $a5, -1
	sub.d	$t1, $a1, $a6
	move	$t0, $a7
	bstrins.d	$t0, $zero, 2, 0
	move	$a4, $a7
	bstrins.d	$a4, $fp, 2, 0
	xvreplgr2vr.w	$xr0, $t1
	pcalau12i	$t1, %pc_hi20(.LCPI0_0)
	xvld	$xr1, $t1, %pc_lo12(.LCPI0_0)
	xvreplgr2vr.w	$xr2, $a3
	xvreplgr2vr.w	$xr3, $s4
	addi.d	$t1, $s3, 72
	move	$t2, $t0
	.p2align	4, , 16
.LBB0_35:                               # %vector.body1143
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slt	$t3, $a1, $a0
	st.w	$a2, $t1, -44
	st.w	$a2, $t1, -28
	st.w	$a2, $t1, -12
	st.w	$a2, $t1, 4
	st.w	$a2, $t1, 20
	st.w	$a2, $t1, 36
	st.w	$a2, $t1, 52
	st.w	$a2, $t1, 68
	xvadd.w	$xr4, $xr1, $xr7
	xvori.b	$xr5, $xr0, 0
	xvmadd.w	$xr5, $xr4, $xr3
	xvori.b	$xr4, $xr2, 0
	xvmadd.w	$xr4, $xr3, $xr1
	addi.d	$t4, $zero, -1
	maskeqz	$t3, $t4, $t3
	xvreplgr2vr.w	$xr6, $t3
	xvandn.v	$xr5, $xr6, $xr5
	xvand.v	$xr4, $xr4, $xr6
	xvor.v	$xr4, $xr4, $xr5
	xvstelm.w	$xr4, $t1, -48, 0
	xvstelm.w	$xr4, $t1, -32, 1
	xvstelm.w	$xr4, $t1, -16, 2
	xvstelm.w	$xr4, $t1, 0, 3
	xvstelm.w	$xr4, $t1, 16, 4
	xvstelm.w	$xr4, $t1, 32, 5
	xvstelm.w	$xr4, $t1, 48, 6
	xvstelm.w	$xr4, $t1, 64, 7
	xvaddi.wu	$xr1, $xr1, 8
	addi.d	$t2, $t2, -8
	addi.d	$t1, $t1, 128
	bnez	$t2, .LBB0_35
# %bb.36:                               # %middle.block1147
                                        #   in Loop: Header=BB0_16 Depth=2
	beq	$a7, $t0, .LBB0_46
.LBB0_37:                               # %for.body181.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	sub.d	$a6, $zero, $a6
	add.d	$a6, $a1, $a6
	addi.d	$a7, $a4, -1
	mul.d	$a7, $s4, $a7
	add.d	$a6, $a6, $a7
	alsl.d	$a7, $a4, $s3, 4
	addi.d	$a7, $a7, 12
	sub.d	$a5, $a5, $a4
	b	.LBB0_39
	.p2align	4, , 16
.LBB0_38:                               # %for.inc215
                                        #   in Loop: Header=BB0_39 Depth=3
	st.w	$t0, $a7, -4
	addi.d	$a4, $a4, 1
	add.d	$a6, $a6, $s4
	addi.d	$a5, $a5, -1
	addi.d	$a7, $a7, 16
	beqz	$a5, .LBB0_46
.LBB0_39:                               # %for.body181
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.w	$a2, $a7, 0
	move	$t0, $a6
	bge	$a1, $a0, .LBB0_38
# %bb.40:                               # %if.else202
                                        #   in Loop: Header=BB0_39 Depth=3
	mul.d	$t0, $s4, $a4
	add.d	$t0, $t0, $a3
	b	.LBB0_38
	.p2align	4, , 16
.LBB0_41:                               # %if.then102
                                        #   in Loop: Header=BB0_16 Depth=2
	xvld	$xr7, $sp, 32                   # 32-byte Folded Reload
	ori	$s6, $zero, 8
	blez	$s5, .LBB0_46
# %bb.42:                               # %for.body123.lr.ph
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.w	$a0, $a0, 4
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a1, 4
	ld.w	$a1, $a2, 4
	ld.w	$a2, $a2, 0
	bstrpick.d	$a3, $s0, 31, 31
	add.w	$a3, $s0, $a3
	srai.d	$a6, $a3, 1
	addi.d	$a3, $s0, 1
	bstrpick.d	$a4, $a3, 31, 31
	add.w	$a3, $a3, $a4
	srli.d	$a3, $a3, 1
	sub.d	$a3, $a1, $a3
	bstrpick.d	$a5, $s2, 31, 0
	ori	$a4, $zero, 1
	ori	$a7, $zero, 9
	bltu	$s2, $a7, .LBB0_105
# %bb.43:                               # %vector.ph1152
                                        #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a7, $a5, -1
	sub.d	$t1, $a1, $a6
	move	$t0, $a7
	bstrins.d	$t0, $zero, 2, 0
	move	$a4, $a7
	bstrins.d	$a4, $fp, 2, 0
	xvreplgr2vr.w	$xr0, $t1
	pcalau12i	$t1, %pc_hi20(.LCPI0_0)
	xvld	$xr1, $t1, %pc_lo12(.LCPI0_0)
	xvreplgr2vr.w	$xr2, $a3
	xvreplgr2vr.w	$xr3, $s4
	addi.d	$t1, $s3, 72
	move	$t2, $t0
	.p2align	4, , 16
.LBB0_44:                               # %vector.body1161
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slt	$t3, $a1, $a0
	st.w	$a2, $t1, -48
	st.w	$a2, $t1, -32
	st.w	$a2, $t1, -16
	st.w	$a2, $t1, 0
	st.w	$a2, $t1, 16
	st.w	$a2, $t1, 32
	st.w	$a2, $t1, 48
	st.w	$a2, $t1, 64
	xvadd.w	$xr4, $xr1, $xr7
	xvori.b	$xr5, $xr0, 0
	xvmadd.w	$xr5, $xr4, $xr3
	xvori.b	$xr4, $xr2, 0
	xvmadd.w	$xr4, $xr3, $xr1
	addi.d	$t4, $zero, -1
	maskeqz	$t3, $t4, $t3
	xvreplgr2vr.w	$xr6, $t3
	xvandn.v	$xr5, $xr6, $xr5
	xvand.v	$xr4, $xr4, $xr6
	xvor.v	$xr4, $xr4, $xr5
	xvstelm.w	$xr4, $t1, -44, 0
	xvstelm.w	$xr4, $t1, -28, 1
	xvstelm.w	$xr4, $t1, -12, 2
	xvstelm.w	$xr4, $t1, 4, 3
	xvstelm.w	$xr4, $t1, 20, 4
	xvstelm.w	$xr4, $t1, 36, 5
	xvstelm.w	$xr4, $t1, 52, 6
	xvstelm.w	$xr4, $t1, 68, 7
	xvaddi.wu	$xr1, $xr1, 8
	addi.d	$t2, $t2, -8
	addi.d	$t1, $t1, 128
	bnez	$t2, .LBB0_44
# %bb.45:                               # %middle.block1168
                                        #   in Loop: Header=BB0_16 Depth=2
	bne	$a7, $t0, .LBB0_105
	.p2align	4, , 16
.LBB0_46:                               # %if.end218
                                        #   in Loop: Header=BB0_16 Depth=2
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1752
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 404
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1344
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 404
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 992
	move	$a1, $zero
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 184
	ori	$a2, $zero, 804
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$t3, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a1, $t3, 132
	blez	$a1, .LBB0_97
# %bb.47:                               # %for.body254.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(UCptr)
	ori	$s3, $zero, 1
	addi.d	$s5, $sp, 184
	ori	$s2, $zero, 44
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 160                   # 8-byte Folded Reload
	b	.LBB0_50
.LBB0_48:                               # %if.else535
                                        #   in Loop: Header=BB0_50 Depth=3
	ld.w	$a2, $sp, 184
	addi.d	$a2, $a2, 1
	st.w	$a2, $sp, 184
	slli.w	$a2, $a2, 1
	slli.d	$a2, $a2, 2
	stx.w	$s3, $a2, $s5
	.p2align	4, , 16
.LBB0_49:                               # %for.inc544
                                        #   in Loop: Header=BB0_50 Depth=3
	move	$a2, $s3
	addi.w	$s3, $s3, 1
	bge	$a2, $a1, .LBB0_83
.LBB0_50:                               # %for.body254
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_56 Depth 4
                                        #         Child Loop BB0_75 Depth 4
                                        #         Child Loop BB0_79 Depth 4
                                        #         Child Loop BB0_62 Depth 4
                                        #         Child Loop BB0_68 Depth 4
	mul.d	$s0, $s3, $s2
	add.d	$a2, $a0, $s0
	ld.wu	$a3, $a2, 4
	bne	$s4, $a3, .LBB0_49
# %bb.51:                               # %if.then260
                                        #   in Loop: Header=BB0_50 Depth=3
	ld.w	$a3, $a2, 28
	beqz	$a3, .LBB0_60
# %bb.52:                               # %if.else419
                                        #   in Loop: Header=BB0_50 Depth=3
	blt	$a3, $s8, .LBB0_48
# %bb.53:                               # %if.then425
                                        #   in Loop: Header=BB0_50 Depth=3
	ld.w	$a1, $sp, 992
	addi.w	$a1, $a1, 1
	st.w	$a1, $sp, 992
	mul.d	$a1, $a1, $s7
	addi.d	$a3, $sp, 992
	stx.w	$fp, $a1, $a3
	ld.w	$a1, $sp, 992
	mul.d	$a1, $a1, $s7
	add.d	$a1, $a3, $a1
	st.w	$s3, $a1, 8
	ld.w	$a1, $t3, 132
	bge	$s3, $a1, .LBB0_49
# %bb.54:                               # %for.body442.preheader
                                        #   in Loop: Header=BB0_50 Depth=3
	add.d	$a3, $s0, $a0
	ld.w	$a3, $a3, 72
	bnez	$a3, .LBB0_49
# %bb.55:                               # %lor.lhs.false448.preheader
                                        #   in Loop: Header=BB0_50 Depth=3
	addi.d	$a3, $s3, 1
	addi.d	$a2, $a2, 116
	.p2align	4, , 16
.LBB0_56:                               # %lor.lhs.false448
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_50 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a1, $sp, 992
	ld.wu	$a4, $a2, -68
	mul.d	$a1, $a1, $s7
	addi.d	$a5, $sp, 992
	ldx.w	$s0, $a1, $a5
	addi.w	$s1, $s0, 1
	bne	$s4, $a4, .LBB0_72
# %bb.57:                               # %if.end517
                                        #   in Loop: Header=BB0_56 Depth=4
	add.d	$a1, $a5, $a1
	st.w	$s1, $a1, 0
	alsl.d	$a1, $s0, $a1, 2
	addi.w	$s3, $s3, 1
	st.w	$s3, $a1, 8
	ld.w	$a1, $t3, 132
	bge	$a3, $a1, .LBB0_59
# %bb.58:                               # %for.body442
                                        #   in Loop: Header=BB0_56 Depth=4
	ld.w	$a4, $a2, 0
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 44
	beqz	$a4, .LBB0_56
.LBB0_59:                               # %for.inc544.loopexit1263
                                        #   in Loop: Header=BB0_50 Depth=3
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
	b	.LBB0_49
.LBB0_60:                               # %if.then265
                                        #   in Loop: Header=BB0_50 Depth=3
	lu12i.w	$a3, 1
	ori	$a3, $a3, 1752
	add.d	$a3, $sp, $a3
	ld.w	$a3, $a3, 0
	beqz	$a3, .LBB0_66
# %bb.61:                               # %if.else389
                                        #   in Loop: Header=BB0_50 Depth=3
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$s1, $a0, %got_pc_lo12(fpo)
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 16
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 17
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 15
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	ori	$a1, $zero, 16
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$t4, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a1, $t3, 132
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(UCptr)
	slt	$a2, $a1, $s3
	masknez	$a3, $a1, $a2
	maskeqz	$a2, $s3, $a2
	or	$a2, $a2, $a3
	sub.d	$a2, $a2, $s3
	add.d	$a3, $a0, $s0
	addi.d	$a4, $a3, 48
	.p2align	4, , 16
.LBB0_62:                               # %for.cond397
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_50 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	beqz	$a2, .LBB0_83
# %bb.63:                               # %for.body401
                                        #   in Loop: Header=BB0_62 Depth=4
	move	$a3, $s3
	ld.w	$a5, $a4, 24
	bnez	$a5, .LBB0_65
# %bb.64:                               # %lor.lhs.false407
                                        #   in Loop: Header=BB0_62 Depth=4
	ld.wu	$a5, $a4, 0
	addi.w	$s3, $a3, 1
	addi.d	$a2, $a2, -1
	addi.d	$a4, $a4, 44
	beq	$s4, $a5, .LBB0_62
.LBB0_65:                               #   in Loop: Header=BB0_50 Depth=3
	move	$s3, $a3
	b	.LBB0_49
.LBB0_66:                               # %if.then269
                                        #   in Loop: Header=BB0_50 Depth=3
	ld.w	$a3, $a2, -40
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(lArray)
	slli.d	$a5, $a3, 4
	ld.d	$a7, $sp, 96                    # 8-byte Folded Reload
	ldx.w	$a5, $a7, $a5
	ld.w	$a6, $a4, 24
	alsl.d	$a3, $a3, $a7, 4
	ld.w	$a3, $a3, 4
	sub.w	$a6, $a6, $a5
	srai.d	$a7, $a6, 31
	ld.w	$t0, $a4, 28
	xor	$a6, $a6, $a7
	ld.w	$t1, $t4, %pc_lo12(nPinLocs)
	sub.d	$a6, $a6, $a7
	sub.w	$a7, $t0, $a3
	srai.d	$t0, $a7, 31
	alsl.d	$a4, $t1, $a4, 4
	ld.w	$t2, $a4, 8
	xor	$a7, $a7, $t0
	sub.d	$a7, $a7, $t0
	add.w	$a6, $a7, $a6
	sub.w	$a5, $t2, $a5
	ld.w	$a4, $a4, 12
	srai.d	$a7, $a5, 31
	xor	$a5, $a5, $a7
	sub.d	$a5, $a5, $a7
	sub.w	$a3, $a4, $a3
	srai.d	$a4, $a3, 31
	xor	$a3, $a3, $a4
	sub.d	$a3, $a3, $a4
	add.w	$a3, $a3, $a5
	sltu	$a3, $a6, $a3
	masknez	$a4, $t1, $a3
	maskeqz	$a3, $fp, $a3
	or	$a3, $a3, $a4
	lu12i.w	$a4, 1
	ori	$a4, $a4, 1752
	add.d	$a4, $sp, $a4
	st.w	$fp, $a4, 0
	lu12i.w	$a4, 1
	ori	$a4, $a4, 1756
	add.d	$a4, $sp, $a4
	st.w	$a3, $a4, 0
	lu12i.w	$a3, 1
	ori	$a3, $a3, 1760
	add.d	$a3, $sp, $a3
	st.w	$s3, $a3, 0
	bge	$s3, $a1, .LBB0_71
# %bb.67:                               # %for.body368.preheader
                                        #   in Loop: Header=BB0_50 Depth=3
	sub.d	$a3, $a1, $s3
	addi.d	$a2, $a2, 48
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_68:                               # %for.body368
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_50 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a4, $a2, 24
	bnez	$a4, .LBB0_49
# %bb.69:                               # %lor.lhs.false
                                        #   in Loop: Header=BB0_68 Depth=4
	ld.wu	$a4, $a2, 0
	bne	$s4, $a4, .LBB0_49
# %bb.70:                               # %if.end380
                                        #   in Loop: Header=BB0_68 Depth=4
	lu12i.w	$a4, 1
	ori	$a4, $a4, 1752
	add.d	$a4, $sp, $a4
	ld.w	$a4, $a4, 0
	addi.d	$a5, $a4, 1
	lu12i.w	$a6, 1
	ori	$a6, $a6, 1752
	add.d	$a6, $sp, $a6
	st.w	$a5, $a6, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 1752
	add.d	$a5, $sp, $a5
	alsl.d	$a4, $a4, $a5, 2
	addi.w	$s3, $s3, 1
	st.w	$s3, $a4, 8
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 44
	bnez	$a3, .LBB0_68
	b	.LBB0_83
.LBB0_71:                               #   in Loop: Header=BB0_50 Depth=3
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	b	.LBB0_49
.LBB0_72:                               # %if.then460
                                        #   in Loop: Header=BB0_50 Depth=3
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1344
	add.d	$a1, $sp, $a1
	ld.w	$a1, $a1, 0
	beqz	$a1, .LBB0_77
# %bb.73:                               # %if.else492
                                        #   in Loop: Header=BB0_50 Depth=3
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$s2, $a0, %got_pc_lo12(fpo)
	ld.d	$a3, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	ori	$a1, $zero, 16
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	ori	$a1, $zero, 14
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	ori	$a1, $zero, 16
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	ori	$a1, $zero, 15
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.10)
	addi.d	$a1, $a1, %pc_lo12(.L.str.10)
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(UCptr)
	addi.w	$a1, $zero, -1
	blt	$s0, $a1, .LBB0_81
# %bb.74:                               # %for.body502.preheader
                                        #   in Loop: Header=BB0_50 Depth=3
	bstrpick.d	$a2, $s1, 31, 0
	addi.d	$a1, $s0, 2
	addi.d	$a3, $sp, 992
	alsl.d	$a2, $a2, $a3, 2
	ori	$s2, $zero, 44
	ld.d	$t3, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 160                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_75:                               # %for.body502
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_50 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a3, $sp, 992
	mul.d	$a3, $a3, $s7
	stx.w	$zero, $a2, $a3
	addi.w	$a1, $a1, -1
	addi.d	$a2, $a2, -4
	bgtz	$a1, .LBB0_75
# %bb.76:                               #   in Loop: Header=BB0_50 Depth=3
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	b	.LBB0_82
.LBB0_77:                               # %for.cond471.preheader
                                        #   in Loop: Header=BB0_50 Depth=3
	addi.w	$a1, $zero, -1
	blt	$s0, $a1, .LBB0_80
# %bb.78:                               # %for.body474.preheader
                                        #   in Loop: Header=BB0_50 Depth=3
	bstrpick.d	$a2, $s1, 31, 0
	addi.d	$a1, $s0, 2
	slli.d	$a2, $a2, 2
	lu12i.w	$a3, 1
	ori	$a3, $a3, 1344
	add.d	$a5, $sp, $a3
	addi.d	$a6, $sp, 992
	.p2align	4, , 16
.LBB0_79:                               # %for.body474
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_50 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a3, $sp, 992
	mul.d	$a3, $a3, $s7
	add.d	$a3, $a6, $a3
	ldx.w	$a4, $a3, $a2
	stx.w	$a4, $a2, $a5
	stx.w	$zero, $a3, $a2
	addi.w	$a1, $a1, -1
	addi.d	$a2, $a2, -4
	bgtz	$a1, .LBB0_79
.LBB0_80:                               #   in Loop: Header=BB0_50 Depth=3
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
	b	.LBB0_82
.LBB0_81:                               #   in Loop: Header=BB0_50 Depth=3
	ori	$s2, $zero, 44
	ld.d	$t3, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 160                   # 8-byte Folded Reload
.LBB0_82:                               # %if.end512
                                        #   in Loop: Header=BB0_50 Depth=3
	ld.w	$a2, $sp, 992
	ld.w	$a1, $t3, 132
	addi.d	$a2, $a2, -1
	st.w	$a2, $sp, 992
	b	.LBB0_49
	.p2align	4, , 16
.LBB0_83:                               # %for.end546.loopexit
                                        #   in Loop: Header=BB0_16 Depth=2
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1752
	add.d	$a0, $sp, $a0
	ld.w	$s2, $a0, 0
	ld.w	$s5, $t4, %pc_lo12(nPinLocs)
	addi.d	$s3, $sp, 992
	bge	$s5, $s2, .LBB0_85
.LBB0_84:                               # %if.then550
                                        #   in Loop: Header=BB0_16 Depth=2
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$s0, $a0, %got_pc_lo12(fpo)
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.11)
	addi.d	$a1, $a1, %pc_lo12(.L.str.11)
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	ori	$a1, $zero, 37
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$t4, $sp, 160                   # 8-byte Folded Reload
.LBB0_85:                               # %if.end554
                                        #   in Loop: Header=BB0_16 Depth=2
	ori	$a7, $zero, 2
	blez	$s2, .LBB0_87
# %bb.86:                               # %land.lhs.true
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.w	$a1, $t4, %pc_lo12(nPinLocs)
	bge	$a1, $s2, .LBB0_101
.LBB0_87:                               # %if.end615
                                        #   in Loop: Header=BB0_16 Depth=2
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1344
	add.d	$a0, $sp, $a0
	ld.w	$a2, $a0, 0
	ld.w	$a4, $t4, %pc_lo12(nPinLocs)
	add.w	$a0, $a2, $s2
	blez	$a2, .LBB0_98
# %bb.88:                               # %land.lhs.true619
                                        #   in Loop: Header=BB0_16 Depth=2
	blt	$a4, $a0, .LBB0_99
# %bb.89:                               # %if.then624
                                        #   in Loop: Header=BB0_16 Depth=2
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1344
	add.d	$a1, $sp, $a1
	alsl.d	$a1, $a2, $a1, 2
	ld.w	$a3, $a1, 4
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(UCptr)
	ori	$a5, $zero, 44
	mul.d	$a5, $a3, $a5
	add.d	$a1, $a1, $a5
	ld.w	$a5, $a1, 48
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(lArray)
	slli.d	$a6, $a5, 4
	ld.d	$t0, $sp, 96                    # 8-byte Folded Reload
	ldx.w	$a6, $t0, $a6
	ld.w	$a7, $a1, 24
	alsl.d	$a5, $a5, $t0, 4
	ld.w	$a5, $a5, 4
	sub.w	$a7, $a7, $a6
	ld.w	$t0, $a1, 28
	srai.d	$t1, $a7, 31
	xor	$a7, $a7, $t1
	sub.d	$a7, $a7, $t1
	sub.w	$t0, $t0, $a5
	srai.d	$t1, $t0, 31
	alsl.d	$a4, $a4, $a1, 4
	ld.w	$t2, $a4, 8
	xor	$t0, $t0, $t1
	sub.d	$t0, $t0, $t1
	add.w	$a7, $t0, $a7
	sub.w	$a6, $t2, $a6
	ld.w	$t0, $a4, 12
	srai.d	$t1, $a6, 31
	xor	$a6, $a6, $t1
	sub.d	$a6, $a6, $t1
	sub.w	$a5, $t0, $a5
	srai.d	$t0, $a5, 31
	xor	$a5, $a5, $t0
	sub.d	$a5, $a5, $t0
	add.w	$a5, $a5, $a6
	bgeu	$a7, $a5, .LBB0_109
# %bb.90:                               # %if.then719
                                        #   in Loop: Header=BB0_16 Depth=2
	st.w	$a3, $a1, 16
	st.w	$fp, $a1, 20
	beq	$a2, $fp, .LBB0_125
# %bb.91:                               # %for.body733.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	ori	$a3, $zero, 1
	move	$a4, $a2
	ori	$a5, $zero, 9
	bltu	$a2, $a5, .LBB0_95
# %bb.92:                               # %vector.ph1073
                                        #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a5, $a2, -1
	move	$a6, $a5
	bstrins.d	$a6, $zero, 2, 0
	move	$a3, $a5
	bstrins.d	$a3, $fp, 2, 0
	sub.d	$a4, $a2, $a6
	lu12i.w	$a7, 1
	ori	$a7, $a7, 1332
	add.d	$a7, $sp, $a7
	alsl.d	$a7, $a2, $a7, 2
	addi.d	$t0, $a1, 80
	move	$t1, $a6
	.p2align	4, , 16
.LBB0_93:                               # %vector.body1076
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t2, $a7, 12
	ld.w	$t3, $a7, 8
	ld.w	$t4, $a7, 4
	ld.w	$t5, $a7, 0
	ld.w	$t6, $a7, -4
	ld.w	$t7, $a7, -8
	ld.w	$t8, $a7, -12
	ld.w	$s0, $a7, -16
	st.w	$t2, $t0, -48
	st.w	$t3, $t0, -32
	st.w	$t4, $t0, -16
	st.w	$t5, $t0, 0
	st.w	$t6, $t0, 16
	st.w	$t7, $t0, 32
	st.w	$t8, $t0, 48
	st.w	$s0, $t0, 64
	st.w	$fp, $t0, -44
	st.w	$fp, $t0, -28
	st.w	$fp, $t0, -12
	st.w	$fp, $t0, 4
	st.w	$fp, $t0, 20
	st.w	$fp, $t0, 36
	st.w	$fp, $t0, 52
	st.w	$fp, $t0, 68
	addi.d	$a7, $a7, -32
	addi.d	$t1, $t1, -8
	addi.d	$t0, $t0, 128
	bnez	$t1, .LBB0_93
# %bb.94:                               # %middle.block1083
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.d	$t4, $sp, 160                   # 8-byte Folded Reload
	beq	$a5, $a6, .LBB0_125
.LBB0_95:                               # %for.body733.preheader1195
                                        #   in Loop: Header=BB0_16 Depth=2
	sub.d	$a2, $a2, $a3
	alsl.d	$a1, $a3, $a1, 4
	addi.d	$a1, $a1, 20
	lu12i.w	$a3, 1
	ori	$a3, $a3, 1344
	add.d	$a3, $sp, $a3
	alsl.d	$a3, $a4, $a3, 2
	.p2align	4, , 16
.LBB0_96:                               # %for.body733
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a4, $a3, 0
	st.w	$a4, $a1, -4
	st.w	$fp, $a1, 0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 16
	addi.d	$a3, $a3, -4
	bnez	$a2, .LBB0_96
	b	.LBB0_125
	.p2align	4, , 16
.LBB0_97:                               #   in Loop: Header=BB0_16 Depth=2
	move	$s2, $zero
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 160                   # 8-byte Folded Reload
	addi.d	$s3, $sp, 992
	blt	$s5, $s2, .LBB0_84
	b	.LBB0_85
	.p2align	4, , 16
.LBB0_98:                               # %if.else778
                                        #   in Loop: Header=BB0_16 Depth=2
	bge	$a4, $a0, .LBB0_100
.LBB0_99:                               # %if.then783
                                        #   in Loop: Header=BB0_16 Depth=2
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$s0, $a0, %got_pc_lo12(fpo)
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	ori	$a1, $zero, 37
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$t4, $sp, 160                   # 8-byte Folded Reload
.LBB0_100:                              # %if.end788
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.w	$s5, $sp, 992
	bgtz	$s5, .LBB0_126
	b	.LBB0_149
.LBB0_101:                              # %if.then560
                                        #   in Loop: Header=BB0_16 Depth=2
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1756
	add.d	$a0, $sp, $a0
	ld.w	$a3, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1760
	add.d	$a0, $sp, $a0
	ld.w	$a2, $a0, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(lArray)
	bne	$a3, $fp, .LBB0_112
# %bb.102:                              # %if.then564
                                        #   in Loop: Header=BB0_16 Depth=2
	st.w	$a2, $a0, 16
	st.w	$fp, $a0, 20
	beq	$s2, $fp, .LBB0_87
# %bb.103:                              # %for.body574.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	bstrpick.d	$a1, $s2, 31, 0
	ori	$a2, $zero, 9
	bgeu	$s2, $a2, .LBB0_115
# %bb.104:                              #   in Loop: Header=BB0_16 Depth=2
	ori	$a2, $zero, 2
	ori	$a3, $zero, 1
	b	.LBB0_118
.LBB0_105:                              # %for.body123.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	sub.d	$a6, $zero, $a6
	add.d	$a6, $a1, $a6
	addi.d	$a7, $a4, -1
	mul.d	$a7, $s4, $a7
	add.d	$a6, $a6, $a7
	alsl.d	$a7, $a4, $s3, 4
	addi.d	$a7, $a7, 12
	sub.d	$a5, $a5, $a4
	b	.LBB0_107
	.p2align	4, , 16
.LBB0_106:                              # %for.inc156
                                        #   in Loop: Header=BB0_107 Depth=3
	st.w	$t0, $a7, 0
	addi.d	$a4, $a4, 1
	add.d	$a6, $a6, $s4
	addi.d	$a5, $a5, -1
	addi.d	$a7, $a7, 16
	beqz	$a5, .LBB0_46
.LBB0_107:                              # %for.body123
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.w	$a2, $a7, -4
	move	$t0, $a6
	bge	$a1, $a0, .LBB0_106
# %bb.108:                              # %if.else143
                                        #   in Loop: Header=BB0_107 Depth=3
	mul.d	$t0, $s4, $a4
	add.d	$t0, $t0, $a3
	b	.LBB0_106
.LBB0_109:                              # %if.else747
                                        #   in Loop: Header=BB0_16 Depth=2
	st.w	$a3, $a4, 0
	ld.w	$a3, $t4, %pc_lo12(nPinLocs)
	alsl.d	$a3, $a3, $a1, 4
	st.w	$fp, $a3, 4
	beq	$a2, $fp, .LBB0_125
# %bb.110:                              # %for.body763.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.w	$a7, $t4, %pc_lo12(nPinLocs)
	addi.d	$a3, $a2, -2
	sltu	$a4, $a2, $a3
	masknez	$a3, $a3, $a4
	ori	$a4, $zero, 7
	bgeu	$a3, $a4, .LBB0_120
# %bb.111:                              #   in Loop: Header=BB0_16 Depth=2
	move	$a4, $a7
	move	$a3, $a2
	ori	$s0, $zero, 2
	b	.LBB0_123
.LBB0_112:                              # %if.else588
                                        #   in Loop: Header=BB0_16 Depth=2
	slli.d	$a1, $a1, 4
	stx.w	$a2, $a0, $a1
	ld.w	$a1, $t4, %pc_lo12(nPinLocs)
	alsl.d	$a1, $a1, $a0, 4
	st.w	$fp, $a1, 4
	beq	$s2, $fp, .LBB0_87
# %bb.113:                              # %for.body600.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.w	$a6, $t4, %pc_lo12(nPinLocs)
	addi.d	$a1, $s2, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a4, $a1, -2
	ori	$a2, $zero, 2
	bgeu	$a4, $s6, .LBB0_273
# %bb.114:                              #   in Loop: Header=BB0_16 Depth=2
	move	$a3, $a6
	b	.LBB0_276
.LBB0_115:                              # %vector.ph1106
                                        #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a4, $a1, -1
	move	$a5, $a4
	bstrins.d	$a5, $zero, 2, 0
	move	$a3, $a4
	bstrins.d	$a3, $fp, 2, 0
	move	$a2, $a4
	bstrins.d	$a2, $a7, 2, 0
	addi.d	$a6, $a0, 80
	lu12i.w	$a7, 1
	ori	$a7, $a7, 1772
	add.d	$a7, $sp, $a7
	move	$t0, $a5
	.p2align	4, , 16
.LBB0_116:                              # %vector.body1109
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t1, $a7, -8
	ld.w	$t2, $a7, -4
	ld.w	$t3, $a7, 0
	ld.w	$t4, $a7, 4
	ld.w	$t5, $a7, 8
	ld.w	$t6, $a7, 12
	ld.w	$t7, $a7, 16
	ld.w	$t8, $a7, 20
	st.w	$t1, $a6, -48
	st.w	$t2, $a6, -32
	st.w	$t3, $a6, -16
	st.w	$t4, $a6, 0
	st.w	$t5, $a6, 16
	st.w	$t6, $a6, 32
	st.w	$t7, $a6, 48
	st.w	$t8, $a6, 64
	st.w	$fp, $a6, -44
	st.w	$fp, $a6, -28
	st.w	$fp, $a6, -12
	st.w	$fp, $a6, 4
	st.w	$fp, $a6, 20
	st.w	$fp, $a6, 36
	st.w	$fp, $a6, 52
	st.w	$fp, $a6, 68
	addi.d	$t0, $t0, -8
	addi.d	$a7, $a7, 32
	addi.d	$a6, $a6, 128
	bnez	$t0, .LBB0_116
# %bb.117:                              # %middle.block1115
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.d	$t4, $sp, 160                   # 8-byte Folded Reload
	beq	$a4, $a5, .LBB0_87
.LBB0_118:                              # %for.body574.preheader1198
                                        #   in Loop: Header=BB0_16 Depth=2
	sub.d	$a1, $a1, $a3
	alsl.d	$a0, $a3, $a0, 4
	addi.d	$a0, $a0, 20
	lu12i.w	$a3, 1
	ori	$a3, $a3, 1756
	add.d	$a3, $sp, $a3
	alsl.d	$a2, $a2, $a3, 2
	.p2align	4, , 16
.LBB0_119:                              # %for.body574
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a3, $a2, 0
	st.w	$a3, $a0, -4
	st.w	$fp, $a0, 0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 16
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB0_119
	b	.LBB0_87
.LBB0_120:                              # %vector.ph1090
                                        #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a5, $a3, 1
	bstrpick.d	$a3, $a5, 31, 3
	slli.d	$a6, $a3, 3
	sub.d	$a4, $a7, $a6
	sub.d	$a3, $a2, $a6
	alsl.d	$a7, $a7, $a1, 4
	addi.d	$a7, $a7, -64
	lu12i.w	$t0, 1
	ori	$t0, $t0, 1332
	add.d	$t0, $sp, $t0
	alsl.d	$a2, $a2, $t0, 2
	move	$t0, $a6
	ori	$s0, $zero, 2
	.p2align	4, , 16
.LBB0_121:                              # %vector.body1093
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t1, $a2, 12
	ld.w	$t2, $a2, 8
	ld.w	$t3, $a2, 4
	ld.w	$t4, $a2, 0
	ld.w	$t5, $a2, -4
	ld.w	$t6, $a2, -8
	ld.w	$t7, $a2, -12
	ld.w	$t8, $a2, -16
	st.w	$t1, $a7, 48
	st.w	$t2, $a7, 32
	st.w	$t3, $a7, 16
	st.w	$t4, $a7, 0
	st.w	$t5, $a7, -16
	st.w	$t6, $a7, -32
	st.w	$t7, $a7, -48
	st.w	$t8, $a7, -64
	st.w	$fp, $a7, 52
	st.w	$fp, $a7, 36
	st.w	$fp, $a7, 20
	st.w	$fp, $a7, 4
	st.w	$fp, $a7, -12
	st.w	$fp, $a7, -28
	st.w	$fp, $a7, -44
	st.w	$fp, $a7, -60
	addi.d	$t0, $t0, -8
	addi.d	$a7, $a7, -128
	addi.d	$a2, $a2, -32
	bnez	$t0, .LBB0_121
# %bb.122:                              # %middle.block1100
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.d	$t4, $sp, 160                   # 8-byte Folded Reload
	beq	$a5, $a6, .LBB0_125
.LBB0_123:                              # %for.body763.preheader1196
                                        #   in Loop: Header=BB0_16 Depth=2
	alsl.d	$a1, $a4, $a1, 4
	addi.d	$a1, $a1, -16
	addi.d	$a2, $a3, 1
	lu12i.w	$a4, 1
	ori	$a4, $a4, 1344
	add.d	$a4, $sp, $a4
	alsl.d	$a3, $a3, $a4, 2
	.p2align	4, , 16
.LBB0_124:                              # %for.body763
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a4, $a3, 0
	st.w	$a4, $a1, 0
	st.w	$fp, $a1, 4
	addi.d	$a1, $a1, -16
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, -4
	bltu	$s0, $a2, .LBB0_124
.LBB0_125:                              #   in Loop: Header=BB0_16 Depth=2
	move	$s2, $a0
	ld.w	$s5, $sp, 992
	blez	$s5, .LBB0_149
.LBB0_126:                              # %for.body794.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a0, $s5, 1
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ori	$s6, $zero, 1
	addi.d	$s4, $sp, 1408
	b	.LBB0_128
	.p2align	4, , 16
.LBB0_127:                              # %if.then801
                                        #   in Loop: Header=BB0_128 Depth=3
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$s0, $a0, %got_pc_lo12(fpo)
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	ori	$a1, $zero, 34
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.15)
	addi.d	$a1, $a1, %pc_lo12(.L.str.15)
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$t4, $sp, 160                   # 8-byte Folded Reload
	addi.d	$s6, $s6, 1
	addi.d	$s4, $s4, 404
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	beq	$s6, $a0, .LBB0_149
.LBB0_128:                              # %for.body794
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_137 Depth 4
	mul.d	$a0, $s6, $s7
	ldx.wu	$s8, $a0, $s3
	ld.w	$a1, $t4, %pc_lo12(nPinLocs)
	add.w	$a3, $s8, $s2
	blt	$a1, $a3, .LBB0_127
# %bb.129:                              # %for.cond811.preheader
                                        #   in Loop: Header=BB0_128 Depth=3
	addi.w	$s0, $s8, 0
	add.d	$s2, $s3, $a0
	blez	$s0, .LBB0_132
# %bb.130:                              # %for.inc852.peel
                                        #   in Loop: Header=BB0_128 Depth=3
	st.d	$a3, $sp, 120                   # 8-byte Folded Spill
	ld.w	$a0, $s2, 8
	addi.w	$s1, $s0, 1
	pcaddu18i	$ra, %call36(findLoc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 2
	bne	$s1, $a0, .LBB0_133
# %bb.131:                              #   in Loop: Header=BB0_128 Depth=3
	move	$a0, $a1
	move	$s1, $a1
	b	.LBB0_143
.LBB0_132:                              #   in Loop: Header=BB0_128 Depth=3
	move	$a0, $zero
	b	.LBB0_144
.LBB0_133:                              # %for.body817.peel.next
                                        #   in Loop: Header=BB0_128 Depth=3
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	st.d	$s2, $sp, 112                   # 8-byte Folded Spill
	alsl.d	$s7, $s0, $s2, 2
	ori	$s2, $zero, 2
	ori	$a0, $zero, 3
	bne	$s1, $a0, .LBB0_135
# %bb.134:                              #   in Loop: Header=BB0_128 Depth=3
	ld.d	$s3, $sp, 152                   # 8-byte Folded Reload
	b	.LBB0_139
.LBB0_135:                              # %for.body817.peel.next.split
                                        #   in Loop: Header=BB0_128 Depth=3
	ori	$s2, $zero, 2
	move	$s1, $s4
	ld.d	$s3, $sp, 152                   # 8-byte Folded Reload
	b	.LBB0_137
	.p2align	4, , 16
.LBB0_136:                              # %if.else842
                                        #   in Loop: Header=BB0_137 Depth=4
	ld.w	$a0, $s1, 0
	pcaddu18i	$ra, %call36(findLoc)
	jirl	$ra, $ra, 0
	add.d	$s3, $a0, $s3
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 4
	beq	$s8, $s2, .LBB0_139
.LBB0_137:                              # %if.else828
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_128 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	bne	$s8, $s2, .LBB0_136
# %bb.138:                              # %if.then834
                                        #   in Loop: Header=BB0_137 Depth=4
	ld.w	$a0, $s7, 4
	pcaddu18i	$ra, %call36(findLoc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	add.d	$s3, $a0, $s3
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 4
	bne	$s8, $s2, .LBB0_137
.LBB0_139:                              # %if.else828.peel
                                        #   in Loop: Header=BB0_128 Depth=3
	bne	$s2, $s0, .LBB0_141
# %bb.140:                              # %if.then834.peel
                                        #   in Loop: Header=BB0_128 Depth=3
	ld.w	$a0, $s7, 4
	pcaddu18i	$ra, %call36(findLoc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	ori	$s7, $zero, 404
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	b	.LBB0_142
.LBB0_141:                              # %if.else842.peel
                                        #   in Loop: Header=BB0_128 Depth=3
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	alsl.d	$a0, $s2, $a1, 2
	move	$s2, $a1
	ld.w	$a0, $a0, 4
	pcaddu18i	$ra, %call36(findLoc)
	jirl	$ra, $ra, 0
	ori	$s7, $zero, 404
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
.LBB0_142:                              # %for.inc852.peel1228
                                        #   in Loop: Header=BB0_128 Depth=3
	add.w	$a0, $a0, $s3
	addi.d	$s3, $sp, 992
.LBB0_143:                              # %for.end854
                                        #   in Loop: Header=BB0_128 Depth=3
	ld.d	$t4, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
.LBB0_144:                              # %for.end854
                                        #   in Loop: Header=BB0_128 Depth=3
	div.w	$a0, $a0, $s0
	bstrpick.d	$a1, $s0, 31, 31
	add.w	$a1, $s0, $a1
	srli.d	$a1, $a1, 1
	sub.w	$a0, $a0, $a1
	blez	$a0, .LBB0_148
# %bb.145:                              # %if.else867
                                        #   in Loop: Header=BB0_128 Depth=3
	ld.w	$a1, $t4, %pc_lo12(nPinLocs)
	sub.d	$a1, $a1, $s0
	addi.w	$a1, $a1, 1
	slt	$a2, $a0, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	addi.w	$a1, $s1, 0
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 0
	bge	$a2, $a1, .LBB0_147
.LBB0_146:                              # %if.then885
                                        #   in Loop: Header=BB0_128 Depth=3
	sub.d	$a0, $zero, $a0
.LBB0_147:                              # %if.else890
                                        #   in Loop: Header=BB0_128 Depth=3
	st.w	$a0, $s2, 4
	move	$s2, $a3
	addi.d	$s6, $s6, 1
	addi.d	$s4, $s4, 404
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	bne	$s6, $a0, .LBB0_128
	b	.LBB0_149
.LBB0_148:                              #   in Loop: Header=BB0_128 Depth=3
	ori	$a0, $zero, 1
	addi.w	$a1, $s1, 0
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 0
	bge	$a2, $a1, .LBB0_147
	b	.LBB0_146
	.p2align	4, , 16
.LBB0_149:                              # %for.end897
                                        #   in Loop: Header=BB0_16 Depth=2
	st.d	$s1, $sp, 152                   # 8-byte Folded Spill
	ld.w	$s4, $sp, 184
	ld.w	$a0, $t4, %pc_lo12(nPinLocs)
	add.w	$s0, $s4, $s2
	bge	$a0, $s0, .LBB0_151
# %bb.150:                              # %if.then902
                                        #   in Loop: Header=BB0_16 Depth=2
	sub.w	$s4, $a0, $s2
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$s1, $a0, %got_pc_lo12(fpo)
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	ori	$a1, $zero, 36
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.17)
	addi.d	$a1, $a1, %pc_lo12(.L.str.17)
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	ori	$a1, $zero, 36
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(nPinLocs)
	ld.d	$a0, $s1, 0
	sub.w	$a2, $s0, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.19)
	addi.d	$a1, $a1, %pc_lo12(.L.str.19)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB0_151:                              # %if.end914
                                        #   in Loop: Header=BB0_16 Depth=2
	ori	$s6, $zero, 8
	blez	$s4, .LBB0_154
# %bb.152:                              # %for.body918.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	move	$s0, $zero
	addi.d	$s1, $sp, 192
	.p2align	4, , 16
.LBB0_153:                              # %for.body918
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a0, $s1, 0
	pcaddu18i	$ra, %call36(findLoc)
	jirl	$ra, $ra, 0
	st.w	$a0, $s1, -4
	addi.d	$s0, $s0, 1
	addi.d	$s1, $s1, 8
	bltu	$s0, $s4, .LBB0_153
.LBB0_154:                              # %for.cond930.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	st.d	$s4, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a2, $a0, %pc_lo12(nPinLocs)
	addi.w	$a0, $a2, 1
	blez	$a2, .LBB0_159
# %bb.155:                              # %for.body933.lr.ph
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a3, $a1, %pc_lo12(lArray)
	ld.w	$a1, $a3, 20
	addi.d	$s8, $sp, 1404
	bne	$a1, $fp, .LBB0_160
# %bb.156:                              # %for.cond930.preheader1265
                                        #   in Loop: Header=BB0_16 Depth=2
	move	$a1, $zero
	bstrpick.d	$a4, $a0, 31, 0
	addi.d	$a3, $a3, 36
	addi.d	$a4, $a4, -2
	.p2align	4, , 16
.LBB0_157:                              # %for.cond930
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beqz	$a4, .LBB0_161
# %bb.158:                              # %for.body933
                                        #   in Loop: Header=BB0_157 Depth=3
	ld.w	$a5, $a3, 0
	addi.w	$a1, $a1, 1
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, -1
	beq	$a5, $fp, .LBB0_157
	b	.LBB0_162
	.p2align	4, , 16
.LBB0_159:                              # %for.end944.thread
                                        #   in Loop: Header=BB0_16 Depth=2
	move	$a1, $zero
	addi.d	$s8, $sp, 1404
	b	.LBB0_168
.LBB0_160:                              #   in Loop: Header=BB0_16 Depth=2
	move	$a1, $zero
	b	.LBB0_162
.LBB0_161:                              #   in Loop: Header=BB0_16 Depth=2
	move	$a1, $a2
.LBB0_162:                              # %for.body949.lr.ph
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(lArray)
	alsl.d	$a4, $a2, $a3, 4
	ld.w	$a4, $a4, 4
	bne	$a4, $fp, .LBB0_168
	.p2align	4, , 16
.LBB0_163:                              # %for.cond946
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ori	$a0, $zero, 2
	blt	$a2, $a0, .LBB0_166
# %bb.164:                              # %for.body949
                                        #   in Loop: Header=BB0_163 Depth=3
	addi.w	$a2, $a2, -1
	alsl.d	$a0, $a2, $a3, 4
	ld.w	$a0, $a0, 4
	beq	$a0, $fp, .LBB0_163
# %bb.165:                              # %for.cond963.preheader.preheader.loopexit
                                        #   in Loop: Header=BB0_16 Depth=2
	addi.w	$a0, $a2, 1
	b	.LBB0_168
.LBB0_166:                              #   in Loop: Header=BB0_16 Depth=2
	ori	$a0, $zero, 1
	b	.LBB0_168
	.p2align	4, , 16
.LBB0_167:                              # %while.cond.loopexit
                                        #   in Loop: Header=BB0_168 Depth=3
	beqz	$t6, .LBB0_206
.LBB0_168:                              # %for.cond963.preheader
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_173 Depth 4
                                        #           Child Loop BB0_190 Depth 5
                                        #           Child Loop BB0_187 Depth 5
                                        #           Child Loop BB0_203 Depth 5
                                        #           Child Loop BB0_197 Depth 5
                                        #           Child Loop BB0_200 Depth 5
                                        #           Child Loop BB0_183 Depth 5
	blez	$s5, .LBB0_205
# %bb.169:                              # %for.body968.lr.ph
                                        #   in Loop: Header=BB0_168 Depth=3
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(lArray)
	move	$a3, $zero
	move	$t6, $zero
	addi.d	$ra, $a2, -8
	addi.d	$a5, $a2, 20
	addi.d	$a7, $a2, 4
	ori	$t5, $zero, 1
	addi.d	$t0, $sp, 992
	addi.d	$t1, $sp, 1432
	move	$t2, $s8
	addi.d	$t3, $sp, 1400
	b	.LBB0_173
	.p2align	4, , 16
.LBB0_170:                              # %if.end1053
                                        #   in Loop: Header=BB0_173 Depth=4
	add.w	$a1, $t6, $a1
.LBB0_171:                              # %for.inc1151.sink.split
                                        #   in Loop: Header=BB0_173 Depth=4
	st.w	$zero, $t5, 4
	ori	$t6, $zero, 1
.LBB0_172:                              # %for.inc1151
                                        #   in Loop: Header=BB0_173 Depth=4
	addi.d	$t5, $t4, 1
	ld.w	$s5, $sp, 992
	addi.d	$a3, $a3, 1
	addi.d	$t3, $t3, 404
	addi.d	$t2, $t2, 404
	addi.d	$t0, $t0, 404
	addi.d	$t1, $t1, 404
	bge	$t4, $s5, .LBB0_167
.LBB0_173:                              # %for.body968
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_168 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_190 Depth 5
                                        #           Child Loop BB0_187 Depth 5
                                        #           Child Loop BB0_203 Depth 5
                                        #           Child Loop BB0_197 Depth 5
                                        #           Child Loop BB0_200 Depth 5
                                        #           Child Loop BB0_183 Depth 5
	move	$t4, $t5
	mul.d	$t5, $t5, $s7
	add.d	$t5, $s3, $t5
	ld.w	$t7, $t5, 4
	beqz	$t7, .LBB0_172
# %bb.174:                              # %if.end975
                                        #   in Loop: Header=BB0_173 Depth=4
	srai.d	$t8, $t7, 31
	xor	$s0, $t7, $t8
	sub.w	$t8, $s0, $t8
	addi.w	$s0, $a1, 1
	bge	$s0, $t8, .LBB0_184
# %bb.175:                              # %if.else1061
                                        #   in Loop: Header=BB0_173 Depth=4
	ld.w	$s1, $t5, 0
	add.w	$t8, $s1, $t8
	blt	$t8, $a0, .LBB0_172
# %bb.176:                              # %if.then1084
                                        #   in Loop: Header=BB0_173 Depth=4
	mul.d	$t6, $a3, $s7
	add.d	$t6, $s3, $t6
	addi.d	$t6, $t6, 412
	blez	$t7, .LBB0_191
# %bb.177:                              # %if.then1090
                                        #   in Loop: Header=BB0_173 Depth=4
	blez	$s1, .LBB0_198
# %bb.178:                              # %for.body1098.preheader
                                        #   in Loop: Header=BB0_173 Depth=4
	sub.w	$s1, $a0, $s1
	addi.d	$t7, $s1, 1
	slt	$t8, $a0, $t7
	maskeqz	$t7, $t7, $t8
	masknez	$t8, $a0, $t8
	or	$s0, $t7, $t8
	sub.d	$t8, $s0, $s1
	ori	$t7, $zero, 1
	bltu	$t8, $s6, .LBB0_181
# %bb.179:                              # %vector.memcheck
                                        #   in Loop: Header=BB0_173 Depth=4
	alsl.d	$s2, $s1, $a2, 4
	alsl.d	$s4, $t8, $t6, 2
	bgeu	$s2, $s4, .LBB0_199
# %bb.180:                              # %vector.memcheck
                                        #   in Loop: Header=BB0_173 Depth=4
	alsl.d	$s0, $s0, $ra, 4
	bgeu	$t6, $s0, .LBB0_199
.LBB0_181:                              #   in Loop: Header=BB0_173 Depth=4
	move	$t6, $s1
.LBB0_182:                              # %for.body1098.preheader1183
                                        #   in Loop: Header=BB0_173 Depth=4
	slli.d	$t7, $t7, 2
	alsl.d	$t8, $t6, $a7, 4
	.p2align	4, , 16
.LBB0_183:                              # %for.body1098
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_168 Depth=3
                                        #         Parent Loop BB0_173 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ldx.w	$a4, $t3, $t7
	st.w	$a4, $t8, -4
	st.w	$fp, $t8, 0
	addi.d	$t6, $t6, 1
	addi.d	$t7, $t7, 4
	addi.d	$t8, $t8, 16
	blt	$t6, $a0, .LBB0_183
	b	.LBB0_198
	.p2align	4, , 16
.LBB0_184:                              # %if.then995
                                        #   in Loop: Header=BB0_173 Depth=4
	ld.w	$t6, $t5, 0
	blez	$t7, .LBB0_188
# %bb.185:                              # %for.cond1002.preheader
                                        #   in Loop: Header=BB0_173 Depth=4
	blez	$t6, .LBB0_170
# %bb.186:                              # %for.body1008.preheader
                                        #   in Loop: Header=BB0_173 Depth=4
	move	$t7, $zero
	alsl.d	$t8, $a1, $a5, 4
	move	$s0, $t2
	.p2align	4, , 16
.LBB0_187:                              # %for.body1008
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_168 Depth=3
                                        #         Parent Loop BB0_173 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.w	$t6, $s0, 0
	st.w	$t6, $t8, -4
	st.w	$fp, $t8, 0
	ld.w	$t6, $t5, 0
	addi.d	$t8, $t8, 16
	addi.d	$t7, $t7, 1
	addi.d	$s0, $s0, 4
	blt	$t7, $t6, .LBB0_187
	b	.LBB0_170
.LBB0_188:                              # %if.else1025
                                        #   in Loop: Header=BB0_173 Depth=4
	blez	$t6, .LBB0_170
# %bb.189:                              # %for.body1035.preheader
                                        #   in Loop: Header=BB0_173 Depth=4
	move	$t7, $zero
	alsl.d	$t8, $t6, $t3, 2
	alsl.d	$s0, $a1, $a5, 4
	.p2align	4, , 16
.LBB0_190:                              # %for.body1035
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_168 Depth=3
                                        #         Parent Loop BB0_173 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.w	$t6, $t8, 0
	st.w	$t6, $s0, -4
	st.w	$fp, $s0, 0
	ld.w	$t6, $t5, 0
	addi.d	$t8, $t8, -4
	addi.d	$t7, $t7, 1
	addi.d	$s0, $s0, 16
	blt	$t7, $t6, .LBB0_190
	b	.LBB0_170
.LBB0_191:                              # %if.else1114
                                        #   in Loop: Header=BB0_173 Depth=4
	blez	$s1, .LBB0_198
# %bb.192:                              # %for.body1125.preheader
                                        #   in Loop: Header=BB0_173 Depth=4
	sub.w	$s2, $a0, $s1
	addi.d	$a4, $s2, 1
	slt	$a6, $a0, $a4
	maskeqz	$a4, $a4, $a6
	masknez	$a6, $a0, $a6
	or	$t8, $a4, $a6
	sub.d	$t7, $t8, $s2
	bltu	$t7, $s6, .LBB0_195
# %bb.193:                              # %vector.memcheck1044
                                        #   in Loop: Header=BB0_173 Depth=4
	alsl.d	$a4, $s2, $a2, 4
	alsl.d	$a6, $s1, $t6, 2
	bgeu	$a4, $a6, .LBB0_202
# %bb.194:                              # %vector.memcheck1044
                                        #   in Loop: Header=BB0_173 Depth=4
	alsl.d	$a4, $t8, $ra, 4
	add.d	$a6, $s2, $s1
	sub.d	$a6, $a6, $t8
	alsl.d	$a6, $a6, $t6, 2
	bgeu	$a6, $a4, .LBB0_202
.LBB0_195:                              #   in Loop: Header=BB0_173 Depth=4
	move	$t8, $s1
	move	$t6, $s2
.LBB0_196:                              # %for.body1125.preheader1184
                                        #   in Loop: Header=BB0_173 Depth=4
	slli.d	$t7, $t8, 2
	alsl.d	$t8, $t6, $a7, 4
	.p2align	4, , 16
.LBB0_197:                              # %for.body1125
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_168 Depth=3
                                        #         Parent Loop BB0_173 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ldx.w	$a4, $t3, $t7
	st.w	$a4, $t8, -4
	st.w	$fp, $t8, 0
	addi.d	$t6, $t6, 1
	addi.d	$t7, $t7, -4
	addi.d	$t8, $t8, 16
	blt	$t6, $a0, .LBB0_197
.LBB0_198:                              # %if.end1141
                                        #   in Loop: Header=BB0_173 Depth=4
	ld.w	$a4, $t5, 0
	sub.w	$a0, $a0, $a4
	b	.LBB0_171
.LBB0_199:                              # %vector.ph
                                        #   in Loop: Header=BB0_173 Depth=4
	move	$a5, $ra
	move	$s0, $t8
	bstrins.d	$s0, $zero, 2, 0
	move	$t7, $t8
	bstrins.d	$t7, $fp, 2, 0
	add.d	$t6, $s0, $s1
	addi.d	$a4, $a2, 64
	alsl.d	$s1, $s1, $a4, 4
	move	$s2, $t1
	move	$s4, $s0
	.p2align	4, , 16
.LBB0_200:                              # %vector.body
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_168 Depth=3
                                        #         Parent Loop BB0_173 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.w	$s5, $s2, -28
	ld.w	$s6, $s2, -24
	ld.w	$s7, $s2, -20
	ld.w	$s8, $s2, -16
	ld.w	$ra, $s2, -12
	ld.w	$a6, $s2, -8
	ld.w	$a4, $s2, -4
	ld.w	$s3, $s2, 0
	st.w	$s5, $s1, -64
	st.w	$s6, $s1, -48
	st.w	$s7, $s1, -32
	st.w	$s8, $s1, -16
	st.w	$ra, $s1, 0
	st.w	$a6, $s1, 16
	st.w	$a4, $s1, 32
	st.w	$s3, $s1, 48
	st.w	$fp, $s1, -60
	st.w	$fp, $s1, -44
	st.w	$fp, $s1, -28
	st.w	$fp, $s1, -12
	st.w	$fp, $s1, 4
	st.w	$fp, $s1, 20
	st.w	$fp, $s1, 36
	st.w	$fp, $s1, 52
	addi.d	$s1, $s1, 128
	addi.d	$s4, $s4, -8
	addi.d	$s2, $s2, 32
	bnez	$s4, .LBB0_200
# %bb.201:                              # %middle.block
                                        #   in Loop: Header=BB0_173 Depth=4
	ori	$s7, $zero, 404
	addi.d	$s3, $sp, 992
	ori	$s6, $zero, 8
	move	$ra, $a5
	addi.d	$s8, $sp, 1404
	addi.d	$a5, $a2, 20
	beq	$t8, $s0, .LBB0_198
	b	.LBB0_182
.LBB0_202:                              # %vector.ph1058
                                        #   in Loop: Header=BB0_173 Depth=4
	move	$s0, $t7
	bstrins.d	$s0, $zero, 2, 0
	sub.d	$t8, $s1, $s0
	add.d	$t6, $s0, $s2
	slli.d	$s1, $s1, 2
	addi.d	$a4, $a2, 64
	alsl.d	$s2, $s2, $a4, 4
	move	$s4, $t0
	move	$s5, $s0
	.p2align	4, , 16
.LBB0_203:                              # %vector.body1061
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_168 Depth=3
                                        #         Parent Loop BB0_173 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	add.d	$a4, $s4, $s1
	ld.w	$a6, $a4, 408
	ld.w	$s3, $a4, 404
	ld.w	$s6, $a4, 400
	ld.w	$s7, $a4, 396
	ld.w	$s8, $a4, 392
	ld.w	$ra, $a4, 388
	ld.w	$a7, $a4, 384
	ld.w	$a4, $a4, 380
	st.w	$a6, $s2, -64
	st.w	$s3, $s2, -48
	st.w	$s6, $s2, -32
	st.w	$s7, $s2, -16
	st.w	$s8, $s2, 0
	st.w	$ra, $s2, 16
	st.w	$a7, $s2, 32
	st.w	$a4, $s2, 48
	st.w	$fp, $s2, -60
	st.w	$fp, $s2, -44
	st.w	$fp, $s2, -28
	st.w	$fp, $s2, -12
	st.w	$fp, $s2, 4
	st.w	$fp, $s2, 20
	st.w	$fp, $s2, 36
	st.w	$fp, $s2, 52
	addi.d	$s5, $s5, -8
	addi.d	$s4, $s4, -32
	addi.d	$s2, $s2, 128
	bnez	$s5, .LBB0_203
# %bb.204:                              # %middle.block1067
                                        #   in Loop: Header=BB0_173 Depth=4
	addi.d	$s8, $sp, 1404
	ori	$s7, $zero, 404
	addi.d	$s3, $sp, 992
	ori	$s6, $zero, 8
	addi.d	$ra, $a2, -8
	addi.d	$a7, $a2, 4
	bne	$t7, $s0, .LBB0_196
	b	.LBB0_198
	.p2align	4, , 16
.LBB0_205:                              #   in Loop: Header=BB0_16 Depth=2
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	addi.d	$s1, $sp, 184
	ori	$s2, $zero, 2
	ld.d	$s4, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	addi.d	$s5, $a0, 1
	ld.d	$t6, $sp, 160                   # 8-byte Folded Reload
	b	.LBB0_248
	.p2align	4, , 16
.LBB0_206:                              # %for.cond1154.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.d	$t6, $sp, 160                   # 8-byte Folded Reload
	blez	$s5, .LBB0_247
# %bb.207:                              # %for.body1159.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	move	$a3, $zero
	move	$a2, $zero
	addi.d	$a4, $s5, 1
	bstrpick.d	$a4, $a4, 31, 0
	mul.d	$a4, $a4, $s7
	addi.d	$a4, $a4, -404
	addi.d	$t7, $sp, 996
	addi.d	$t8, $sp, 1000
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	addi.d	$s1, $sp, 184
	ori	$s2, $zero, 2
	ld.d	$s4, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	addi.d	$s5, $a5, 1
	ld.d	$s6, $sp, 144                   # 8-byte Folded Reload
	b	.LBB0_209
	.p2align	4, , 16
.LBB0_208:                              # %for.inc1171
                                        #   in Loop: Header=BB0_209 Depth=3
	addi.d	$a3, $a3, 404
	beq	$a4, $a3, .LBB0_211
.LBB0_209:                              # %for.body1159
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a5, $s3, $a3
	ld.w	$a6, $a5, 408
	beqz	$a6, .LBB0_208
# %bb.210:                              # %if.end1166
                                        #   in Loop: Header=BB0_209 Depth=3
	ld.w	$a5, $a5, 404
	add.w	$a2, $a5, $a2
	b	.LBB0_208
.LBB0_211:                              # %while.cond1174.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	blez	$a2, .LBB0_249
# %bb.212:                              # %while.body1177.lr.ph
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(lArray)
	addi.d	$a3, $a3, 20
	b	.LBB0_214
	.p2align	4, , 16
.LBB0_213:                              # %if.end1518
                                        #   in Loop: Header=BB0_214 Depth=3
	add.w	$a1, $t1, $a4
	st.w	$zero, $a6, 4
	sub.w	$a2, $a2, $a4
	blez	$a2, .LBB0_249
.LBB0_214:                              # %while.body1177
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_218 Depth 4
                                        #         Child Loop BB0_237 Depth 4
                                        #         Child Loop BB0_231 Depth 4
                                        #         Child Loop BB0_234 Depth 4
                                        #         Child Loop BB0_227 Depth 4
                                        #         Child Loop BB0_245 Depth 4
                                        #         Child Loop BB0_242 Depth 4
	ld.w	$a5, $t6, %pc_lo12(nPinLocs)
	ld.w	$a4, $sp, 992
	addi.w	$a6, $a5, 1
	blez	$a4, .LBB0_222
# %bb.215:                              # %for.body1185.preheader
                                        #   in Loop: Header=BB0_214 Depth=3
	move	$a5, $zero
	move	$t0, $zero
	addi.d	$a4, $a4, 1
	bstrpick.d	$a4, $a4, 31, 0
	addi.d	$a4, $a4, -1
	ori	$t1, $zero, 1
	addi.d	$t2, $sp, 1400
	move	$a7, $a6
	b	.LBB0_218
	.p2align	4, , 16
.LBB0_216:                              # %if.else1232
                                        #   in Loop: Header=BB0_218 Depth=4
	slt	$t4, $t3, $a7
	masknez	$a5, $a5, $t4
	maskeqz	$t5, $t1, $t4
	or	$a5, $t5, $a5
	masknez	$a7, $a7, $t4
	maskeqz	$t3, $t3, $t4
	or	$a7, $t3, $a7
.LBB0_217:                              # %for.inc1270
                                        #   in Loop: Header=BB0_218 Depth=4
	addi.w	$t1, $t1, 1
	addi.d	$a4, $a4, -1
	addi.d	$t2, $t2, 404
	beqz	$a4, .LBB0_221
.LBB0_218:                              # %for.body1185
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_214 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$t3, $t2, 0
	beqz	$t3, .LBB0_217
# %bb.219:                              # %if.end1192
                                        #   in Loop: Header=BB0_218 Depth=4
	srai.d	$t4, $t3, 31
	xor	$t3, $t3, $t4
	sub.w	$t3, $t3, $t4
	bge	$t3, $a6, .LBB0_216
# %bb.220:                              # %if.then1211
                                        #   in Loop: Header=BB0_218 Depth=4
	sltui	$t4, $t0, 1
	masknez	$t0, $t0, $t4
	maskeqz	$a5, $a5, $t4
	or	$a5, $a5, $t0
	masknez	$a6, $a6, $t4
	maskeqz	$a7, $a7, $t4
	or	$a7, $a7, $a6
	move	$a6, $t3
	move	$t0, $t1
	b	.LBB0_217
	.p2align	4, , 16
.LBB0_221:                              # %while.cond1273.preheader.loopexit
                                        #   in Loop: Header=BB0_214 Depth=3
	mul.d	$a4, $t0, $s7
	ldx.w	$a4, $a4, $s3
	b	.LBB0_223
	.p2align	4, , 16
.LBB0_222:                              #   in Loop: Header=BB0_214 Depth=3
	move	$t0, $zero
	move	$a5, $zero
	move	$a7, $a6
.LBB0_223:                              # %while.cond1273.preheader
                                        #   in Loop: Header=BB0_214 Depth=3
	add.w	$a6, $a2, $a6
	slt	$t1, $a0, $a6
	masknez	$a6, $a6, $t1
	maskeqz	$t1, $a0, $t1
	or	$t2, $t1, $a6
	sub.d	$a6, $t2, $a2
	mul.d	$t0, $t0, $s7
	st.d	$a6, $sp, 152                   # 8-byte Folded Spill
	addi.w	$t1, $a6, -1
	add.w	$t3, $t1, $a4
	add.d	$a6, $s3, $t0
	bge	$a7, $t3, .LBB0_228
# %bb.224:                              # %if.then1287
                                        #   in Loop: Header=BB0_214 Depth=3
	sub.w	$t1, $t3, $a7
	bstrpick.d	$t3, $t1, 31, 1
	nor	$t4, $a2, $zero
	add.w	$t4, $t2, $t4
	slt	$t5, $a1, $t4
	masknez	$t6, $t4, $t5
	maskeqz	$a1, $a1, $t5
	or	$a1, $a1, $t6
	sub.w	$a1, $t4, $a1
	add.d	$t2, $a4, $t2
	add.d	$a7, $a2, $a7
	slt	$t5, $t3, $t1
	masknez	$t1, $t1, $t5
	maskeqz	$t3, $t3, $t5
	or	$t1, $t3, $t1
	add.d	$a7, $a7, $t1
	nor	$a7, $a7, $zero
	add.w	$a7, $a7, $t2
	sltu	$t1, $a1, $a7
	ld.w	$t2, $a6, 4
	masknez	$a7, $a7, $t1
	maskeqz	$a1, $a1, $t1
	or	$a1, $a1, $a7
	sub.w	$a7, $t4, $a1
	blez	$t2, .LBB0_232
# %bb.225:                              # %for.cond1319.preheader
                                        #   in Loop: Header=BB0_214 Depth=3
	ld.d	$t6, $sp, 160                   # 8-byte Folded Reload
	blez	$a4, .LBB0_239
# %bb.226:                              # %for.body1325.preheader
                                        #   in Loop: Header=BB0_214 Depth=3
	move	$t1, $zero
	alsl.d	$a7, $a7, $a3, 4
	add.d	$t0, $t8, $t0
	.p2align	4, , 16
.LBB0_227:                              # %for.body1325
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_214 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a4, $t0, 0
	st.w	$a4, $a7, -4
	st.w	$fp, $a7, 0
	ld.w	$a4, $a6, 0
	addi.d	$a7, $a7, 16
	addi.d	$t1, $t1, 1
	addi.d	$t0, $t0, 4
	blt	$t1, $a4, .LBB0_227
	b	.LBB0_239
	.p2align	4, , 16
.LBB0_228:                              # %if.else1456
                                        #   in Loop: Header=BB0_214 Depth=3
	ld.w	$a1, $a6, 4
	blez	$a1, .LBB0_235
# %bb.229:                              # %for.cond1463.preheader
                                        #   in Loop: Header=BB0_214 Depth=3
	blez	$a4, .LBB0_213
# %bb.230:                              # %for.body1469.lr.ph
                                        #   in Loop: Header=BB0_214 Depth=3
	move	$a1, $zero
	alsl.d	$a5, $t1, $a3, 4
	add.d	$a7, $t8, $t0
	.p2align	4, , 16
.LBB0_231:                              # %for.body1469
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_214 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a4, $a7, 0
	st.w	$a4, $a5, -4
	st.w	$fp, $a5, 0
	ld.w	$a4, $a6, 0
	addi.d	$a5, $a5, 16
	addi.d	$a1, $a1, 1
	addi.d	$a7, $a7, 4
	blt	$a1, $a4, .LBB0_231
	b	.LBB0_213
.LBB0_232:                              # %for.cond1348.preheader
                                        #   in Loop: Header=BB0_214 Depth=3
	blez	$a4, .LBB0_238
# %bb.233:                              # %for.body1354.preheader
                                        #   in Loop: Header=BB0_214 Depth=3
	move	$t1, $zero
	alsl.d	$a4, $a4, $t0, 2
	add.d	$t0, $t7, $a4
	alsl.d	$a7, $a7, $a3, 4
	ld.d	$t6, $sp, 160                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_234:                              # %for.body1354
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_214 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a4, $t0, 0
	st.w	$a4, $a7, -4
	st.w	$fp, $a7, 0
	ld.w	$a4, $a6, 0
	addi.d	$t0, $t0, -4
	addi.d	$t1, $t1, 1
	addi.d	$a7, $a7, 16
	blt	$t1, $a4, .LBB0_234
	b	.LBB0_239
.LBB0_235:                              # %for.cond1492.preheader
                                        #   in Loop: Header=BB0_214 Depth=3
	blez	$a4, .LBB0_213
# %bb.236:                              # %for.body1498.lr.ph
                                        #   in Loop: Header=BB0_214 Depth=3
	move	$a1, $zero
	alsl.d	$a4, $a4, $t0, 2
	add.d	$a5, $t7, $a4
	alsl.d	$a7, $t1, $a3, 4
	.p2align	4, , 16
.LBB0_237:                              # %for.body1498
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_214 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a4, $a5, 0
	st.w	$a4, $a7, -4
	st.w	$fp, $a7, 0
	ld.w	$a4, $a6, 0
	addi.d	$a5, $a5, -4
	addi.d	$a1, $a1, 1
	addi.d	$a7, $a7, 16
	blt	$a1, $a4, .LBB0_237
	b	.LBB0_213
.LBB0_238:                              #   in Loop: Header=BB0_214 Depth=3
	ld.d	$t6, $sp, 160                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_239:                              # %if.end1374
                                        #   in Loop: Header=BB0_214 Depth=3
	st.w	$zero, $a6, 4
	mul.d	$a7, $a5, $s7
	add.d	$a5, $s3, $a7
	ld.w	$t0, $a5, 4
	ldx.w	$a6, $a7, $s3
	ld.d	$t1, $sp, 152                   # 8-byte Folded Reload
	sub.d	$t1, $t1, $a1
	st.d	$t1, $sp, 152                   # 8-byte Folded Spill
	add.d	$a1, $t1, $a4
	addi.w	$a1, $a1, -1
	blez	$t0, .LBB0_243
# %bb.240:                              # %for.cond1393.preheader
                                        #   in Loop: Header=BB0_214 Depth=3
	blez	$a6, .LBB0_246
# %bb.241:                              # %for.body1399.preheader
                                        #   in Loop: Header=BB0_214 Depth=3
	move	$t0, $zero
	alsl.d	$t1, $a1, $a3, 4
	add.d	$a7, $t8, $a7
	.p2align	4, , 16
.LBB0_242:                              # %for.body1399
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_214 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a6, $a7, 0
	st.w	$a6, $t1, -4
	st.w	$fp, $t1, 0
	ld.w	$a6, $a5, 0
	addi.d	$t1, $t1, 16
	addi.d	$t0, $t0, 1
	addi.d	$a7, $a7, 4
	blt	$t0, $a6, .LBB0_242
	b	.LBB0_246
.LBB0_243:                              # %if.else1416
                                        #   in Loop: Header=BB0_214 Depth=3
	blez	$a6, .LBB0_246
# %bb.244:                              # %for.body1426.preheader
                                        #   in Loop: Header=BB0_214 Depth=3
	move	$t0, $zero
	alsl.d	$a6, $a6, $a7, 2
	add.d	$a7, $t7, $a6
	alsl.d	$t1, $a1, $a3, 4
	.p2align	4, , 16
.LBB0_245:                              # %for.body1426
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_214 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a6, $a7, 0
	st.w	$a6, $t1, -4
	st.w	$fp, $t1, 0
	ld.w	$a6, $a5, 0
	addi.d	$a7, $a7, -4
	addi.d	$t0, $t0, 1
	addi.d	$t1, $t1, 16
	blt	$t0, $a6, .LBB0_245
.LBB0_246:                              # %if.end1444
                                        #   in Loop: Header=BB0_214 Depth=3
	add.w	$a1, $a6, $a1
	st.w	$zero, $a5, 4
	add.d	$a4, $a6, $a4
	sub.w	$a2, $a2, $a4
	bgtz	$a2, .LBB0_214
	b	.LBB0_249
.LBB0_247:                              #   in Loop: Header=BB0_16 Depth=2
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	addi.d	$s1, $sp, 184
	ori	$s2, $zero, 2
	ld.d	$s4, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	addi.d	$s5, $a0, 1
.LBB0_248:                              # %for.cond1533.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.d	$s6, $sp, 144                   # 8-byte Folded Reload
.LBB0_249:                              # %for.cond1533.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	blez	$s6, .LBB0_267
# %bb.250:                              # %for.body1536.lr.ph
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(lArray)
	move	$a1, $zero
	addi.d	$a2, $sp, 188
	b	.LBB0_252
	.p2align	4, , 16
.LBB0_251:                              # %for.inc1569
                                        #   in Loop: Header=BB0_252 Depth=3
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 8
	bgeu	$a1, $s6, .LBB0_254
.LBB0_252:                              # %for.body1536
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a3, $a2, 0
	alsl.d	$a3, $a3, $a0, 4
	ld.w	$a4, $a3, 4
	bnez	$a4, .LBB0_251
# %bb.253:                              # %if.then1546
                                        #   in Loop: Header=BB0_252 Depth=3
	ld.w	$a4, $a2, 4
	st.w	$fp, $a3, 4
	st.w	$a4, $a3, 0
	st.w	$zero, $a2, 0
	b	.LBB0_251
	.p2align	4, , 16
.LBB0_254:                              # %for.body1575.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	ori	$a1, $zero, 1
	b	.LBB0_258
.LBB0_255:                              # %for.inc1647.sink.splitsplit
                                        #   in Loop: Header=BB0_258 Depth=3
	alsl.d	$a2, $a2, $a4, 4
	addi.d	$a2, $a2, 16
.LBB0_256:                              # %for.inc1647.sink.split
                                        #   in Loop: Header=BB0_258 Depth=3
	st.w	$fp, $a2, 4
	ld.w	$a3, $a1, 0
	st.w	$a3, $a2, 0
	st.w	$zero, $a1, -4
	.p2align	4, , 16
.LBB0_257:                              # %for.inc1647
                                        #   in Loop: Header=BB0_258 Depth=3
	addi.d	$a1, $a0, 1
	bgeu	$a0, $s6, .LBB0_267
.LBB0_258:                              # %for.body1575
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_262 Depth 4
	move	$a0, $a1
	alsl.d	$a1, $a1, $s1, 3
	ld.w	$a2, $a1, -4
	beqz	$a2, .LBB0_257
# %bb.259:                              # %for.cond1584.preheader
                                        #   in Loop: Header=BB0_258 Depth=3
	ld.w	$a3, $t6, %pc_lo12(nPinLocs)
	blt	$a3, $s2, .LBB0_257
# %bb.260:                              # %for.body1587.lr.ph
                                        #   in Loop: Header=BB0_258 Depth=3
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(lArray)
	slli.d	$a5, $a2, 4
	addi.d	$a6, $a2, -1
	addi.d	$a7, $a2, 1
	addi.d	$t0, $a3, -1
	move	$t1, $a4
	b	.LBB0_262
	.p2align	4, , 16
.LBB0_261:                              # %for.inc1644
                                        #   in Loop: Header=BB0_262 Depth=4
	addi.d	$t1, $t1, -16
	addi.d	$a6, $a6, -1
	addi.d	$a4, $a4, 16
	addi.d	$t0, $t0, -1
	addi.d	$a7, $a7, 1
	beqz	$t0, .LBB0_257
.LBB0_262:                              # %for.body1587
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_258 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	blt	$a3, $a7, .LBB0_264
# %bb.263:                              # %if.then1591
                                        #   in Loop: Header=BB0_262 Depth=4
	add.d	$t2, $a4, $a5
	ld.w	$t2, $t2, 20
	beqz	$t2, .LBB0_255
.LBB0_264:                              # %if.end1615
                                        #   in Loop: Header=BB0_262 Depth=4
	blez	$a6, .LBB0_261
# %bb.265:                              # %if.then1619
                                        #   in Loop: Header=BB0_262 Depth=4
	add.d	$t2, $t1, $a5
	ld.w	$t2, $t2, -12
	bnez	$t2, .LBB0_261
# %bb.266:                              # %if.then1619.for.inc1647.sink.split_crit_edge
                                        #   in Loop: Header=BB0_258 Depth=3
	alsl.d	$a2, $a2, $t1, 4
	addi.d	$a2, $a2, -16
	b	.LBB0_256
	.p2align	4, , 16
.LBB0_267:                              # %for.cond1650.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.w	$a2, $t6, %pc_lo12(nPinLocs)
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(lArray)
	blez	$a2, .LBB0_272
# %bb.268:                              # %for.body1653.lr.ph
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(UCptr)
	move	$a3, $zero
	addi.d	$a0, $a0, 28
	ori	$s2, $zero, 44
	b	.LBB0_270
	.p2align	4, , 16
.LBB0_269:                              # %for.inc1679
                                        #   in Loop: Header=BB0_270 Depth=3
	addi.d	$a3, $a3, 1
	addi.d	$a0, $a0, 16
	bge	$a3, $a2, .LBB0_13
.LBB0_270:                              # %for.body1653
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a4, $a0, -8
	bne	$a4, $fp, .LBB0_269
# %bb.271:                              # %if.then1659
                                        #   in Loop: Header=BB0_270 Depth=3
	ld.w	$a2, $a0, -12
	ld.d	$a4, $a0, -4
	mul.d	$a2, $a2, $s2
	add.d	$a2, $a1, $a2
	st.d	$a4, $a2, 36
	ld.w	$a2, $t6, %pc_lo12(nPinLocs)
	b	.LBB0_269
	.p2align	4, , 16
.LBB0_272:                              #   in Loop: Header=BB0_16 Depth=2
	ori	$s2, $zero, 44
	b	.LBB0_14
.LBB0_273:                              # %vector.ph1121
                                        #   in Loop: Header=BB0_16 Depth=2
	move	$a5, $a4
	bstrins.d	$a5, $zero, 2, 0
	sub.d	$a3, $a6, $a5
	move	$a2, $a4
	bstrins.d	$a2, $a7, 2, 0
	alsl.d	$a6, $a6, $a0, 4
	addi.d	$a6, $a6, -64
	lu12i.w	$a7, 1
	ori	$a7, $a7, 1772
	add.d	$a7, $sp, $a7
	move	$t0, $a5
	.p2align	4, , 16
.LBB0_274:                              # %vector.body1124
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t1, $a7, -8
	ld.w	$t2, $a7, -4
	ld.w	$t3, $a7, 0
	ld.w	$t4, $a7, 4
	ld.w	$t5, $a7, 8
	ld.w	$t6, $a7, 12
	ld.w	$t7, $a7, 16
	ld.w	$t8, $a7, 20
	st.w	$t1, $a6, 48
	st.w	$t2, $a6, 32
	st.w	$t3, $a6, 16
	st.w	$t4, $a6, 0
	st.w	$t5, $a6, -16
	st.w	$t6, $a6, -32
	st.w	$t7, $a6, -48
	st.w	$t8, $a6, -64
	st.w	$fp, $a6, 52
	st.w	$fp, $a6, 36
	st.w	$fp, $a6, 20
	st.w	$fp, $a6, 4
	st.w	$fp, $a6, -12
	st.w	$fp, $a6, -28
	st.w	$fp, $a6, -44
	st.w	$fp, $a6, -60
	addi.d	$a6, $a6, -128
	addi.d	$t0, $t0, -8
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB0_274
# %bb.275:                              # %middle.block1130
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.d	$t4, $sp, 160                   # 8-byte Folded Reload
	beq	$a4, $a5, .LBB0_87
.LBB0_276:                              # %for.body600.preheader1199
                                        #   in Loop: Header=BB0_16 Depth=2
	alsl.d	$a0, $a3, $a0, 4
	addi.d	$a0, $a0, -16
	sub.d	$a1, $a1, $a2
	lu12i.w	$a3, 1
	ori	$a3, $a3, 1756
	add.d	$a3, $sp, $a3
	alsl.d	$a2, $a2, $a3, 2
	.p2align	4, , 16
.LBB0_277:                              # %for.body600
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a3, $a2, 0
	st.w	$a3, $a0, 0
	st.w	$fp, $a0, 4
	addi.d	$a0, $a0, -16
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB0_277
	b	.LBB0_87
	.p2align	4, , 16
.LBB0_278:                              # %for.cond1685.preheader.loopexit
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.w	$a0, $a7, 132
.LBB0_279:                              # %for.cond1685.preheader
                                        #   in Loop: Header=BB0_3 Depth=1
	blez	$a0, .LBB0_2
# %bb.280:                              # %for.body1689.lr.ph
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(UCptr)
	addi.d	$a0, $a0, 1
	bstrpick.d	$a2, $a0, 31, 0
	addi.d	$a0, $a1, 84
	addi.d	$a1, $a2, -1
	b	.LBB0_282
	.p2align	4, , 16
.LBB0_281:                              # %for.inc1721
                                        #   in Loop: Header=BB0_282 Depth=2
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 44
	beqz	$a1, .LBB0_2
.LBB0_282:                              # %for.body1689
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a0, -4
	bne	$a2, $s0, .LBB0_281
# %bb.283:                              # %land.lhs.true1695
                                        #   in Loop: Header=BB0_282 Depth=2
	ld.w	$a2, $a0, 0
	bne	$a2, $s0, .LBB0_281
# %bb.284:                              # %if.then1701
                                        #   in Loop: Header=BB0_282 Depth=2
	ld.w	$a2, $a0, -36
	slli.d	$a2, $a2, 4
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ldx.d	$a2, $a3, $a2
	st.d	$a2, $a0, -4
	b	.LBB0_281
.LBB0_285:                              # %for.end1726
	lu12i.w	$a0, 1
	ori	$a0, $a0, 224
	add.d	$sp, $sp, $a0
	fld.d	$fs0, $sp, 1936                 # 8-byte Folded Reload
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
.Lfunc_end0:
	.size	finalpin, .Lfunc_end0-finalpin
                                        # -- End function
	.type	UCptr,@object                   # @UCptr
	.comm	UCptr,8,8
	.type	HorV,@object                    # @HorV
	.comm	HorV,4,4
	.type	nPinLocs,@object                # @nPinLocs
	.comm	nPinLocs,4,4
	.type	lArray,@object                  # @lArray
	.comm	lArray,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"OOPs: a endSeqs "
	.size	.L.str, 17

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"cannot fit in the"
	.size	.L.str.1, 18

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	" site:%d\n"
	.size	.L.str.2, 10

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"TimberWolf has "
	.size	.L.str.3, 16

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"to leave it out\n"
	.size	.L.str.4, 17

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Current cell: %d\n"
	.size	.L.str.5, 18

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"OOPs: a begSeqs "
	.size	.L.str.6, 17

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"cannot fit in "
	.size	.L.str.7, 15

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"TimberWolf has t"
	.size	.L.str.8, 17

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"o leave it out\n"
	.size	.L.str.9, 16

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Current cell:%d\n"
	.size	.L.str.10, 17

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"OOPs: an endSeqs cannot fit in site:%d\n"
	.size	.L.str.11, 40

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"TimberWolf will have to leave it out\n"
	.size	.L.str.12, 38

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"OOPs: a begSeqs cannot fit in site:%d\n"
	.size	.L.str.13, 39

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"OOPs: TimberWolf has to ignore a \n"
	.size	.L.str.14, 35

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"contained sequence in site:%d\n"
	.size	.L.str.15, 31

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"OOPs: isolated pin(s) cannot fit in "
	.size	.L.str.16, 37

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"the site: %d\n"
	.size	.L.str.17, 14

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"TimberWolf will have to ignore this "
	.size	.L.str.18, 37

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"number of pins: %d\n"
	.size	.L.str.19, 20

	.section	".note.GNU-stack","",@progbits
	.addrsig
