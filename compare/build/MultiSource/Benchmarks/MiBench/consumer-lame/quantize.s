	.file	"quantize.c"
	.text
	.globl	iteration_loop                  # -- Begin function iteration_loop
	.p2align	5
	.type	iteration_loop,@function
iteration_loop:                         # @iteration_loop
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -1312
	st.d	$ra, $sp, 1304                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1296                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1288                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1280                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1272                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1264                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1256                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1248                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1240                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1232                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1224                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 1216                 # 8-byte Folded Spill
	st.d	$a7, $sp, 152                   # 8-byte Folded Spill
	move	$fp, $a5
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	move	$s3, $a0
	move	$a1, $a5
	st.d	$a6, $sp, 160                   # 8-byte Folded Spill
	move	$a2, $a6
	pcaddu18i	$ra, %call36(iteration_init)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 204
	addi.d	$a2, $sp, 200
	move	$a0, $s3
	pcaddu18i	$ra, %call36(getframebits)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 200
	ld.w	$a3, $sp, 204
	move	$a0, $s3
	st.d	$fp, $sp, 184                   # 8-byte Folded Spill
	move	$a1, $fp
	pcaddu18i	$ra, %call36(ResvFrameBegin)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 200
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_20
# %bb.1:                                # %for.body.lr.ph
	move	$s5, $zero
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 48
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(convert_mdct)
	ld.d	$a0, $a0, %got_pc_lo12(convert_mdct)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(reduce_sidechannel)
	ld.d	$a0, $a0, %got_pc_lo12(reduce_sidechannel)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	lu12i.w	$a0, -2
	ori	$a0, $a0, 3584
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$s6, $a0, 512
	movgr2fr.d	$fs0, $zero
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1024
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                # %for.end107
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.w	$a0, $s3, 200
	addi.d	$s5, $s5, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	add.d	$a1, $a1, $s6
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	add.d	$a2, $a2, $a1
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	bge	$s5, $a0, .LBB0_20
.LBB0_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
                                        #       Child Loop BB0_18 Depth 3
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	alsl.d	$fp, $s5, $s5, 3
	beqz	$a0, .LBB0_5
# %bb.4:                                # %if.then
                                        #   in Loop: Header=BB0_3 Depth=1
	slli.d	$a0, $fp, 10
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	move	$a1, $a0
	pcaddu18i	$ra, %call36(ms_convert)
	jirl	$ra, $ra, 0
.LBB0_5:                                # %if.end
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.w	$a4, $sp, 200
	addi.d	$a3, $sp, 192
	move	$a0, $s3
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	move	$a5, $s5
	pcaddu18i	$ra, %call36(on_pe)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB0_7
# %bb.6:                                # %if.then10
                                        #   in Loop: Header=BB0_3 Depth=1
	slli.d	$a0, $s5, 3
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	fldx.d	$fa0, $a1, $a0
	ld.w	$a1, $sp, 200
	addi.d	$a0, $sp, 192
	pcaddu18i	$ra, %call36(reduce_side)
	jirl	$ra, $ra, 0
.LBB0_7:                                # %if.end14
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.w	$a0, $s3, 204
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_2
# %bb.8:                                # %for.body17.lr.ph
                                        #   in Loop: Header=BB0_3 Depth=1
	move	$s0, $zero
	ori	$a0, $zero, 240
	mul.d	$a0, $s5, $a0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	slli.d	$a0, $fp, 10
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ori	$a0, $zero, 1952
	mul.d	$a0, $s5, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	slli.d	$a0, $fp, 9
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	ori	$a0, $zero, 488
	mul.d	$a0, $s5, $a0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ld.d	$s4, $sp, 96                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_9:                                # %for.inc105
                                        #   in Loop: Header=BB0_10 Depth=2
	ld.w	$a0, $s3, 204
	addi.d	$s0, $s0, 1
	addi.d	$a1, $fp, 2047
	addi.d	$fp, $a1, 257
	add.d	$s4, $s4, $s6
	bge	$s0, $a0, .LBB0_2
.LBB0_10:                               # %for.body17
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_18 Depth 3
	ori	$a0, $zero, 120
	mul.d	$a0, $s0, $a0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	add.d	$s8, $a1, $a0
	alsl.d	$s7, $s0, $s0, 3
	slli.d	$a0, $s7, 9
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	add.d	$s2, $a1, $a0
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s8
	pcaddu18i	$ra, %call36(init_outer_loop)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 244
	mul.d	$s1, $s0, $a1
	st.d	$s7, $sp, 168                   # 8-byte Folded Spill
	beqz	$a0, .LBB0_12
# %bb.11:                               # %if.else
                                        #   in Loop: Header=BB0_10 Depth=2
	ori	$a0, $zero, 976
	mul.d	$a0, $s0, $a0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	add.d	$a2, $a1, $a0
	ori	$a0, $zero, 488
	mul.d	$a0, $s0, $a0
	addi.d	$a1, $sp, 208
	add.d	$s5, $a1, $a0
	move	$a0, $s3
	move	$a1, $s2
	move	$a3, $s8
	move	$a4, $s5
	pcaddu18i	$ra, %call36(calc_xmin)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s0, 2
	addi.d	$a1, $sp, 192
	ldx.w	$a2, $a0, $a1
	slli.d	$a0, $s7, 8
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	add.d	$a5, $a1, $a0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	add.d	$a6, $a0, $s1
	addi.d	$a3, $sp, 1184
	st.d	$s0, $sp, 8
	move	$a0, $s3
	move	$a1, $s2
	move	$a4, $s5
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	move	$a7, $s8
	pcaddu18i	$ra, %call36(outer_loop)
	jirl	$ra, $ra, 0
	b	.LBB0_13
	.p2align	4, , 16
.LBB0_12:                               # %if.then31
                                        #   in Loop: Header=BB0_10 Depth=2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	add.d	$a0, $a0, $s1
	ori	$a2, $zero, 244
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2304
	mul.d	$a0, $s0, $a0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ori	$a2, $zero, 2304
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB0_13:                               # %if.end77
                                        #   in Loop: Header=BB0_10 Depth=2
	addi.w	$s2, $s0, 0
	move	$a0, $s3
	move	$a1, $s5
	move	$a2, $s2
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(best_scalefac_store)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 276
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB0_16
# %bb.14:                               # %land.lhs.true
                                        #   in Loop: Header=BB0_10 Depth=2
	ld.w	$a0, $s8, 24
	bnez	$a0, .LBB0_16
# %bb.15:                               # %if.then80
                                        #   in Loop: Header=BB0_10 Depth=2
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 8
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	add.d	$a3, $a1, $a0
	move	$a0, $s5
	move	$a1, $s2
	move	$a2, $s8
	pcaddu18i	$ra, %call36(best_huffman_divide)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB0_16:                               # %if.end86
                                        #   in Loop: Header=BB0_10 Depth=2
	ld.w	$a3, $sp, 200
	move	$a0, $s3
	move	$a1, $s8
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ResvAdjust)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	move	$a1, $fp
	b	.LBB0_18
	.p2align	4, , 16
.LBB0_17:                               # %for.inc
                                        #   in Loop: Header=BB0_18 Depth=3
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 4
	beqz	$a0, .LBB0_9
.LBB0_18:                               # %for.body89
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a2, $s4, $a0
	fldx.d	$fa0, $a2, $s6
	fcmp.cule.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB0_17
# %bb.19:                               # %if.then97
                                        #   in Loop: Header=BB0_18 Depth=3
	ld.w	$a2, $a1, 0
	sub.d	$a2, $zero, $a2
	st.w	$a2, $a1, 0
	b	.LBB0_17
.LBB0_20:                               # %for.end110
	ld.w	$a2, $sp, 200
	move	$a0, $s3
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ResvFrameEnd)
	jirl	$ra, $ra, 0
	fld.d	$fs0, $sp, 1216                 # 8-byte Folded Reload
	ld.d	$s8, $sp, 1224                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1232                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1240                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1248                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1256                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1264                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1272                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1280                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1288                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1296                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1304                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1312
	ret
.Lfunc_end0:
	.size	iteration_loop, .Lfunc_end0-iteration_loop
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function init_outer_loop
.LCPI1_0:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	210                             # 0xd2
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI1_1:
	.dword	0x3d719799812dea11              # double 9.9999999999999998E-13
.LCPI1_2:
	.dword	0x3fe62e42fefa39ef              # double 0.69314718055994529
.LCPI1_3:
	.dword	0x2b617f7d4ed8c33e              # double 1.0E-99
	.text
	.globl	init_outer_loop
	.p2align	5
	.type	init_outer_loop,@function
init_outer_loop:                        # @init_outer_loop
# %bb.0:                                # %entry
	vrepli.b	$vr0, 0
	vst	$vr0, $a2, 104
	xvrepli.b	$xr0, 0
	xvst	$xr0, $a2, 40
	pcalau12i	$a3, %pc_hi20(.LCPI1_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI1_0)
	pcalau12i	$a3, %got_pc_hi20(nr_of_sfb_block)
	ld.d	$a3, $a3, %got_pc_lo12(nr_of_sfb_block)
	st.d	$zero, $a2, 32
	vst	$vr0, $a2, 0
	st.d	$zero, $a2, 72
	ld.w	$a0, $a0, 84
	st.d	$a3, $a2, 96
	st.w	$zero, $a2, 16
	st.w	$zero, $a2, 88
	beqz	$a0, .LBB1_5
# %bb.1:                                # %if.then
	ld.w	$a0, $a2, 24
	ori	$a3, $zero, 2
	bne	$a0, $a3, .LBB1_5
# %bb.2:                                # %for.cond24.preheader.preheader
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 8                    # 8-byte Folded Spill
	move	$fp, $a2
	addi.d	$a0, $a1, 16
	movgr2fr.d	$fa0, $zero
	ori	$a1, $zero, 192
	fmov.d	$fa2, $fa0
	fmov.d	$fa1, $fa0
	.p2align	4, , 16
.LBB1_3:                                # %for.cond24.preheader
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa3, $a0, -16
	fld.d	$fa4, $a0, -8
	fld.d	$fa5, $a0, 0
	fmadd.d	$fa0, $fa3, $fa3, $fa0
	fmadd.d	$fa2, $fa4, $fa4, $fa2
	fmadd.d	$fa1, $fa5, $fa5, $fa1
	addi.w	$a1, $a1, -1
	addi.d	$a0, $a0, 24
	bnez	$a1, .LBB1_3
# %bb.4:                                # %for.body42.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI1_1)
	fld.d	$fa3, $a0, %pc_lo12(.LCPI1_1)
	fcmp.clt.d	$fcc0, $fa0, $fa3
	fsel	$fa4, $fa0, $fa3, $fcc0
	fcmp.clt.d	$fcc0, $fa2, $fa4
	fsel	$fa4, $fa2, $fa4, $fcc0
	fcmp.clt.d	$fcc0, $fa1, $fa4
	fsel	$fa4, $fa1, $fa4, $fcc0
	fmax.d	$fa0, $fa0, $fa3
	fdiv.d	$fs0, $fa0, $fa4
	fmax.d	$fa0, $fa2, $fa3
	fdiv.d	$fs1, $fa0, $fa4
	fmax.d	$fa0, $fa1, $fa3
	fdiv.d	$fs2, $fa0, $fa4
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(log)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI1_2)
	fld.d	$fs3, $a0, %pc_lo12(.LCPI1_2)
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	fdiv.d	$fa0, $fa0, $fs3
	fsub.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	slti	$a1, $a0, 2
	maskeqz	$a0, $a0, $a1
	ori	$s0, $zero, 2
	masknez	$a1, $s0, $a1
	or	$a0, $a0, $a1
	st.w	$a0, $fp, 44
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(log)
	jirl	$ra, $ra, 0
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	fdiv.d	$fa0, $fa0, $fs3
	fsub.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	slti	$a1, $a0, 2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s0, $a1
	or	$a0, $a0, $a1
	st.w	$a0, $fp, 48
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(log)
	jirl	$ra, $ra, 0
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	fdiv.d	$fa0, $fa0, $fs3
	fsub.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	slti	$a1, $a0, 2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s0, $a1
	pcalau12i	$a2, %pc_hi20(.LCPI1_3)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI1_3)
	or	$a0, $a0, $a1
	fadd.d	$fa1, $fs0, $fs1
	fadd.d	$fa1, $fa1, $fs2
	fcmp.clt.d	$fcc0, $fa0, $fa1
	st.w	$a0, $fp, 52
	movcf2gr	$a0, $fcc0
	fld.d	$fs3, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB1_5:                                # %for.body115.preheader
	lu12i.w	$a0, -2
	pcalau12i	$a2, %pc_hi20(.LCPI1_3)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI1_3)
	ori	$a0, $a0, 3584
	lu12i.w	$a2, 1
	ori	$a2, $a2, 512
	.p2align	4, , 16
.LBB1_6:                                # %for.body115
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a1, $a0
	fldx.d	$fa1, $a3, $a2
	fabs.d	$fa1, $fa1
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB1_9
# %bb.7:                                # %for.cond112
                                        #   in Loop: Header=BB1_6 Depth=1
	addi.d	$a0, $a0, 8
	bnez	$a0, .LBB1_6
# %bb.8:
	move	$a0, $zero
	ret
.LBB1_9:
	ori	$a0, $zero, 1
	ret
.Lfunc_end1:
	.size	init_outer_loop, .Lfunc_end1-init_outer_loop
                                        # -- End function
	.globl	outer_loop                      # -- Begin function outer_loop
	.p2align	5
	.type	outer_loop,@function
outer_loop:                             # @outer_loop
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
	fst.d	$fs1, $sp, 1928                 # 8-byte Folded Spill
	fst.d	$fs2, $sp, 1920                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1912                 # 8-byte Folded Spill
	fst.d	$fs4, $sp, 1904                 # 8-byte Folded Spill
	fst.d	$fs5, $sp, 1896                 # 8-byte Folded Spill
	lu12i.w	$t0, 1
	ori	$t0, $t0, 2736
	sub.d	$sp, $sp, $t0
	lu12i.w	$t0, 2
	ori	$t0, $t0, 680
	add.d	$t0, $sp, $t0
	ld.d	$t0, $t0, 0
	move	$s0, $a7
	st.d	$a6, $sp, 72                    # 8-byte Folded Spill
	st.d	$a5, $sp, 64                    # 8-byte Folded Spill
	st.d	$a4, $sp, 56                    # 8-byte Folded Spill
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	move	$s4, $a2
	move	$s5, $a1
	move	$s6, $a0
	move	$s7, $zero
	move	$s3, $zero
	move	$s8, $zero
	pcalau12i	$a0, %pc_hi20(outer_loop.OldValue)
	addi.d	$a0, $a0, %pc_lo12(outer_loop.OldValue)
	alsl.d	$a0, $t0, $a0, 2
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$fp, $zero, 100
	movgr2fr.d	$fs0, $zero
	addi.d	$s2, $sp, 1448
	lu12i.w	$a0, -2
	ori	$a0, $a0, 3584
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$s1, $a0, 512
                                        # implicit-def: $f27_64
                                        # implicit-def: $f28_64
                                        # implicit-def: $f29_64
	fmov.d	$fs1, $fs0
	fmov.d	$fs2, $fs0
	.p2align	4, , 16
.LBB2_1:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_3 Depth 2
	andi	$a0, $s7, 1
	bnez	$a0, .LBB2_7
# %bb.2:                                # %if.then
                                        #   in Loop: Header=BB2_1 Depth=1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 288
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 244
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 40                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_3:                                # %for.body
                                        #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a0, $s5, $s7
	fldx.d	$fa0, $a0, $s1
	fabs.d	$fa0, $fa0
	fsqrt.d	$fa1, $fa0
	fmul.d	$fa1, $fa0, $fa1
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB2_5
# %bb.4:                                # %for.body.split
                                        #   in Loop: Header=BB2_3 Depth=2
	add.d	$a0, $s2, $s7
	addi.d	$s7, $s7, 8
	fstx.d	$fa0, $a0, $s1
	bnez	$s7, .LBB2_3
	b	.LBB2_6
.LBB2_5:                                # %call.sqrt
                                        #   in Loop: Header=BB2_3 Depth=2
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	add.d	$a0, $s2, $s7
	addi.d	$s7, $s7, 8
	fstx.d	$fa0, $a0, $s1
	bnez	$s7, .LBB2_3
	.p2align	4, , 16
.LBB2_6:                                # %for.end
                                        #   in Loop: Header=BB2_1 Depth=1
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a2, $s7, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1960
	add.d	$a3, $sp, $a0
	addi.d	$a4, $sp, 1448
	move	$a0, $s6
	move	$a1, $s4
	move	$a5, $s0
	pcaddu18i	$ra, %call36(bin_search_StepSize2)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 12
	move	$s8, $a0
	st.w	$a1, $s7, 0
.LBB2_7:                                # %if.end
                                        #   in Loop: Header=BB2_1 Depth=1
	ld.w	$a0, $s0, 76
	sub.w	$a3, $s4, $a0
	bltz	$a3, .LBB2_25
# %bb.8:                                # %if.else
                                        #   in Loop: Header=BB2_1 Depth=1
	bnez	$s3, .LBB2_11
# %bb.9:                                # %if.then15
                                        #   in Loop: Header=BB2_1 Depth=1
	move	$a0, $s8
	bge	$a3, $s8, .LBB2_12
# %bb.10:                               # %if.then17
                                        #   in Loop: Header=BB2_1 Depth=1
	ld.w	$a0, $s0, 12
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 12
.LBB2_11:                               # %if.end29.sink.split
                                        #   in Loop: Header=BB2_1 Depth=1
	addi.d	$a1, $sp, 1448
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1960
	add.d	$a2, $sp, $a0
	move	$a0, $s6
	move	$a4, $s0
	pcaddu18i	$ra, %call36(inner_loop)
	jirl	$ra, $ra, 0
.LBB2_12:                               # %if.end29
                                        #   in Loop: Header=BB2_1 Depth=1
	ld.w	$a1, $s6, 264
	st.w	$a0, $s0, 0
	beqz	$a1, .LBB2_14
# %bb.13:                               # %if.else32
                                        #   in Loop: Header=BB2_1 Depth=1
	addi.d	$a0, $sp, 1440
	st.d	$a0, $sp, 8
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1960
	add.d	$a1, $sp, $a0
	addi.d	$a3, $sp, 752
	addi.d	$a4, $sp, 80
	lu12i.w	$a0, 2
	ori	$a0, $a0, 288
	add.d	$a6, $sp, $a0
	addi.d	$a7, $sp, 1432
	addi.d	$a0, $sp, 1424
	st.d	$a0, $sp, 0
	move	$a0, $s5
	move	$a2, $s0
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calc_noise1)
	jirl	$ra, $ra, 0
	fld.d	$fs5, $sp, 1440
	fld.d	$fs4, $sp, 1432
	fld.d	$fs3, $sp, 1424
	move	$s7, $a0
	bnez	$s3, .LBB2_15
	b	.LBB2_16
	.p2align	4, , 16
.LBB2_14:                               #   in Loop: Header=BB2_1 Depth=1
	move	$s7, $zero
	beqz	$s3, .LBB2_16
.LBB2_15:                               # %if.else40
                                        #   in Loop: Header=BB2_1 Depth=1
	ld.w	$a0, $s6, 76
	move	$a1, $fp
	fmov.d	$fa0, $fs0
	fmov.d	$fa1, $fs1
	fmov.d	$fa2, $fs2
	move	$a2, $s7
	fmov.d	$fa3, $fs3
	fmov.d	$fa4, $fs4
	fmov.d	$fa5, $fs5
	pcaddu18i	$ra, %call36(quant_compare)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_17
.LBB2_16:                               # %if.then44
                                        #   in Loop: Header=BB2_1 Depth=1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 288
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 244
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1960
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 2304
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 168
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 120
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$fp, $s7
	fmov.d	$fs2, $fs5
	fmov.d	$fs1, $fs4
	fmov.d	$fs0, $fs3
.LBB2_17:                               # %if.end47
                                        #   in Loop: Header=BB2_1 Depth=1
	ld.w	$a0, $s6, 268
	or	$a0, $a0, $s7
	beqz	$a0, .LBB2_25
# %bb.18:                               # %if.then55
                                        #   in Loop: Header=BB2_1 Depth=1
	addi.d	$a0, $sp, 1448
	lu12i.w	$a1, 2
	ori	$a1, $a1, 288
	add.d	$a2, $sp, $a1
	addi.d	$a3, $sp, 80
	move	$a1, $s0
	pcaddu18i	$ra, %call36(amp_scalefac_bands)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 288
	add.d	$a0, $sp, $a0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(loop_break)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_25
# %bb.19:                               # %if.then60
                                        #   in Loop: Header=BB2_1 Depth=1
	ld.w	$a0, $s6, 192
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB2_21
# %bb.20:                               # %if.then62
                                        #   in Loop: Header=BB2_1 Depth=1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 288
	add.d	$a0, $sp, $a0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(scale_bitcount)
	jirl	$ra, $ra, 0
	addi.w	$s3, $s3, 1
	sltui	$s7, $a0, 1
	bnez	$a0, .LBB2_22
	b	.LBB2_1
	.p2align	4, , 16
.LBB2_21:                               # %if.else64
                                        #   in Loop: Header=BB2_1 Depth=1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 288
	add.d	$a0, $sp, $a0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(scale_bitcount_lsf)
	jirl	$ra, $ra, 0
	addi.w	$s3, $s3, 1
	sltui	$s7, $a0, 1
	beqz	$a0, .LBB2_1
.LBB2_22:                               # %if.end73
                                        #   in Loop: Header=BB2_1 Depth=1
	ld.w	$a0, $s0, 68
	bnez	$a0, .LBB2_25
# %bb.23:                               # %land.lhs.true75
                                        #   in Loop: Header=BB2_1 Depth=1
	ld.w	$a0, $s6, 80
	beqz	$a0, .LBB2_25
# %bb.24:                               # %if.then77
                                        #   in Loop: Header=BB2_1 Depth=1
	move	$a0, $s6
	move	$a1, $s5
	move	$a2, $s0
	pcaddu18i	$ra, %call36(init_outer_loop)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.w	$a0, $s0, 68
	b	.LBB2_1
.LBB2_25:                               # %while.end
	lu12i.w	$a0, 2
	ori	$a0, $a0, 168
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 120
	move	$a0, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 76
	ld.w	$a1, $s0, 0
	add.d	$a0, $a1, $a0
	st.w	$a0, $s0, 0
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa0, $fa0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	fst.d	$fa0, $a0, 0
	fst.d	$fs2, $a0, 8
	fst.d	$fs1, $a0, 16
	fst.d	$fs0, $a0, 24
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2736
	add.d	$sp, $sp, $a0
	fld.d	$fs5, $sp, 1896                 # 8-byte Folded Reload
	fld.d	$fs4, $sp, 1904                 # 8-byte Folded Reload
	fld.d	$fs3, $sp, 1912                 # 8-byte Folded Reload
	fld.d	$fs2, $sp, 1920                 # 8-byte Folded Reload
	fld.d	$fs1, $sp, 1928                 # 8-byte Folded Reload
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
.Lfunc_end2:
	.size	outer_loop, .Lfunc_end2-outer_loop
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function set_masking_lower
.LCPI3_0:
	.dword	0x40a28e0000000000              # double 2375
	.text
	.globl	set_masking_lower
	.p2align	5
	.type	set_masking_lower,@function
set_masking_lower:                      # @set_masking_lower
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
	addi.d	$a0, $a0, -6
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI3_0)
	addi.d	$a0, $a1, -125
	movgr2fr.w	$fa2, $a0
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa1, $fa2, $fa1
	fcvt.s.d	$fa1, $fa1
	vldi	$vr2, -1040
	fadd.s	$fa1, $fa1, $fa2
	vldi	$vr2, -1264
	fmul.s	$fa1, $fa1, $fa2
	fadd.s	$fa0, $fa1, $fa0
	vldi	$vr1, -1244
	fdiv.s	$fa0, $fa0, $fa1
	fcvt.d.s	$fa1, $fa0
	vldi	$vr0, -988
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(masking_lower)
	ld.d	$a0, $a0, %got_pc_lo12(masking_lower)
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $a0, 0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end3:
	.size	set_masking_lower, .Lfunc_end3-set_masking_lower
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function VBR_iteration_loop
.LCPI4_0:
	.dword	0x4091300000000000              # double 1100
.LCPI4_1:
	.dword	0x40a28e0000000000              # double 2375
.LCPI4_2:
	.dword	0x3fd51eb851eb851f              # double 0.33000000000000002
	.text
	.globl	VBR_iteration_loop
	.p2align	5
	.type	VBR_iteration_loop,@function
VBR_iteration_loop:                     # @VBR_iteration_loop
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
	addi.d	$sp, $sp, -1712
	st.d	$a7, $sp, 104                   # 8-byte Folded Spill
	move	$s7, $a5
	st.d	$a4, $sp, 64                    # 8-byte Folded Spill
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	move	$s3, $a0
	move	$a1, $a5
	st.d	$a6, $sp, 112                   # 8-byte Folded Spill
	move	$a2, $a6
	pcaddu18i	$ra, %call36(iteration_init)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 212
	ori	$fp, $zero, 1
	st.w	$fp, $s3, 220
	blt	$a1, $fp, .LBB4_6
# %bb.1:                                # %for.body.lr.ph
	move	$s0, $zero
	addi.d	$s1, $sp, 260
	b	.LBB4_3
	.p2align	4, , 16
.LBB4_2:                                # %if.end
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$a3, $sp, 256
	move	$a0, $s3
	move	$a1, $s7
	pcaddu18i	$ra, %call36(ResvFrameBegin)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s3, 220
	ld.w	$a1, $s3, 212
	slli.d	$a3, $a2, 2
	stx.w	$a0, $a3, $s1
	addi.d	$a0, $a2, 1
	st.w	$a0, $s3, 220
	bge	$a2, $a1, .LBB4_5
.LBB4_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $sp, 256
	addi.d	$a2, $sp, 252
	move	$a0, $s3
	pcaddu18i	$ra, %call36(getframebits)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 220
	ld.w	$a1, $s3, 208
	ld.w	$a2, $sp, 252
	bne	$a0, $a1, .LBB4_2
# %bb.4:                                # %if.then
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$a0, $s3, 204
	div.w	$s0, $a2, $a0
	b	.LBB4_2
.LBB4_5:                                # %for.end.loopexit
	ori	$a0, $zero, 125
	slt	$a2, $a0, $s0
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s0, $a2
	or	$a0, $a2, $a0
	b	.LBB4_7
.LBB4_6:
	ori	$a0, $zero, 125
.LBB4_7:                                # %for.end
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ld.w	$a0, $s3, 200
	st.w	$a1, $s3, 220
	pcalau12i	$a1, %pc_hi20(.LCPI4_1)
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	st.d	$s7, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 240                   # 8-byte Folded Spill
	blt	$a0, $fp, .LBB4_35
# %bb.8:                                # %for.body10.lr.ph
	move	$s2, $zero
	move	$s4, $zero
	st.d	$zero, $sp, 208                 # 8-byte Folded Spill
	addi.d	$a0, $s7, 48
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(reduce_sidechannel)
	ld.d	$a0, $a0, %got_pc_lo12(reduce_sidechannel)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(convert_mdct)
	ld.d	$a0, $a0, %got_pc_lo12(convert_mdct)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	movgr2fr.d	$fs0, $zero
	ori	$s5, $zero, 21
	b	.LBB4_10
	.p2align	4, , 16
.LBB4_9:                                # %for.end226
                                        #   in Loop: Header=BB4_10 Depth=1
	ld.w	$a0, $s3, 200
	ld.d	$s2, $sp, 80                    # 8-byte Folded Reload
	addi.d	$s2, $s2, 1
	ld.d	$s7, $sp, 72                    # 8-byte Folded Reload
	bge	$s2, $a0, .LBB4_31
.LBB4_10:                               # %for.body10
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_15 Depth 2
                                        #       Child Loop BB4_20 Depth 3
	ld.w	$fp, $s3, 204
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.w	$s1, $a1, 0
	alsl.d	$s0, $s2, $s2, 3
	beqz	$a0, .LBB4_12
# %bb.11:                               # %if.then15
                                        #   in Loop: Header=BB4_10 Depth=1
	slli.d	$a0, $s0, 10
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	move	$a1, $a0
	pcaddu18i	$ra, %call36(ms_convert)
	jirl	$ra, $ra, 0
.LBB4_12:                               # %if.end21
                                        #   in Loop: Header=BB4_10 Depth=1
	sltui	$a0, $s1, 1
	ori	$a2, $zero, 1
	masknez	$a1, $a2, $a0
	maskeqz	$a0, $fp, $a0
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 80                    # 8-byte Folded Spill
	blt	$a0, $a2, .LBB4_9
# %bb.13:                               # %for.body24.lr.ph
                                        #   in Loop: Header=BB4_10 Depth=1
	move	$fp, $zero
	ori	$a0, $zero, 240
	mul.d	$a0, $s2, $a0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	slli.d	$a0, $s0, 10
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ori	$a0, $zero, 1952
	mul.d	$a0, $s2, $a0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	alsl.d	$a0, $s2, $a0, 4
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	slli.d	$a0, $s0, 9
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ori	$a0, $zero, 488
	mul.d	$a0, $s2, $a0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	addi.d	$a0, $sp, 352
	alsl.d	$a0, $s2, $a0, 3
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	b	.LBB4_15
	.p2align	4, , 16
.LBB4_14:                               # %if.end210
                                        #   in Loop: Header=BB4_15 Depth=2
	ld.w	$a0, $s7, 0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	stx.w	$a0, $a1, $a2
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	add.w	$a1, $a0, $a1
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	addi.d	$fp, $fp, 1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	beq	$fp, $a0, .LBB4_9
.LBB4_15:                               # %for.body24
                                        #   Parent Loop BB4_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_20 Depth 3
	ori	$a0, $zero, 120
	mul.d	$a0, $fp, $a0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	add.d	$s7, $a1, $a0
	alsl.d	$s2, $fp, $fp, 3
	slli.d	$a0, $s2, 9
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	add.d	$s8, $a1, $a0
	move	$a0, $s3
	move	$a1, $s8
	move	$a2, $s7
	pcaddu18i	$ra, %call36(init_outer_loop)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 244
	mul.d	$s6, $fp, $a1
	slli.d	$s0, $fp, 2
	beqz	$a0, .LBB4_30
# %bb.16:                               # %if.end53
                                        #   in Loop: Header=BB4_15 Depth=2
	ori	$a0, $zero, 3408
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 120
	move	$a1, $s7
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 92
	slli.d	$a0, $a0, 1
	addi.d	$a0, $a0, -6
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	vldi	$vr1, -1244
	fdiv.s	$fa0, $fa0, $fa1
	fcvt.d.s	$fa1, $fa0
	vldi	$vr0, -988
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(masking_lower)
	ld.d	$a0, $a0, %got_pc_lo12(masking_lower)
	fcvt.s.d	$fa0, $fa0
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	fst.s	$fa0, $a0, 0
	ori	$a0, $zero, 976
	mul.d	$a0, $fp, $a0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	add.d	$a2, $a1, $a0
	addi.d	$a4, $sp, 368
	move	$a0, $s3
	move	$a1, $s8
	st.d	$a2, $sp, 224                   # 8-byte Folded Spill
	move	$a3, $s7
	pcaddu18i	$ra, %call36(calc_xmin)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s7, 24
	sltui	$a1, $a0, 1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	masknez	$a0, $a0, $a1
	ori	$a3, $zero, 125
	maskeqz	$a3, $a3, $a1
	or	$a0, $a3, $a0
	ori	$a3, $zero, 2
	st.d	$s0, $sp, 192                   # 8-byte Folded Spill
	bne	$a2, $a3, .LBB4_18
# %bb.17:                               # %if.then68
                                        #   in Loop: Header=BB4_15 Depth=2
	slli.d	$a2, $fp, 3
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	fldx.d	$fa0, $a3, $a2
	pcalau12i	$a2, %pc_hi20(.LCPI4_0)
	fld.d	$fa1, $a2, %pc_lo12(.LCPI4_0)
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc0
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	slti	$a2, $a0, 1800
	maskeqz	$a0, $a0, $a2
	ori	$a3, $zero, 1800
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
.LBB4_18:                               # %if.end89
                                        #   in Loop: Header=BB4_15 Depth=2
	ld.w	$a2, $s3, 212
	masknez	$a3, $s4, $a1
	slli.d	$a2, $a2, 2
	ld.w	$a4, $s3, 204
	ld.w	$a5, $s3, 200
	addi.d	$a6, $sp, 260
	ldx.w	$a2, $a2, $a6
	ori	$a6, $zero, 1
	maskeqz	$a1, $a6, $a1
	or	$a1, $a1, $a3
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	mul.w	$a1, $a5, $a4
	div.w	$a1, $a2, $a1
	slti	$a2, $a1, 1300
	maskeqz	$a1, $a1, $a2
	ori	$a3, $zero, 1300
	masknez	$a2, $a3, $a2
	or	$a1, $a1, $a2
	addi.w	$a1, $a1, 1200
	slt	$a2, $a0, $a1
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $a0, $a2
	or	$a3, $a1, $a2
	sub.w	$a1, $a3, $a0
	bstrpick.d	$a2, $a1, 62, 61
	add.w	$a1, $a1, $a2
	srai.d	$s1, $a1, 2
	add.d	$a0, $a3, $a0
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a0, $a0, $a1
	srai.d	$s0, $a0, 1
	st.d	$a3, $sp, 184                   # 8-byte Folded Spill
	addi.w	$s3, $a3, 1
	slli.d	$a0, $s2, 8
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	add.d	$s4, $a1, $a0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	add.d	$s6, $a0, $s6
	b	.LBB4_20
	.p2align	4, , 16
.LBB4_19:                               # %if.then115
                                        #   in Loop: Header=BB4_20 Depth=3
	sub.w	$s0, $s0, $s1
	addi.w	$a0, $s1, 0
	bstrpick.d	$s1, $s1, 31, 1
	bge	$s5, $a0, .LBB4_28
.LBB4_20:                               # %do.body
                                        #   Parent Loop BB4_10 Depth=1
                                        #     Parent Loop BB4_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.w	$s2, $s0, 0
	bge	$s2, $s3, .LBB4_19
# %bb.21:                               # %if.end118
                                        #   in Loop: Header=BB4_20 Depth=3
	ori	$a0, $zero, 3408
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 120
	move	$a0, $s7
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 240                   # 8-byte Folded Reload
	ld.w	$a0, $s5, 92
	slli.d	$a0, $a0, 1
	addi.d	$a0, $a0, -6
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	fld.d	$fa1, $a0, %pc_lo12(.LCPI4_1)
	addi.d	$a0, $s0, -125
	movgr2fr.w	$fa2, $a0
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa1, $fa2, $fa1
	fcvt.s.d	$fa1, $fa1
	vldi	$vr2, -1040
	fadd.s	$fa1, $fa1, $fa2
	vldi	$vr2, -1264
	fmul.s	$fa1, $fa1, $fa2
	fadd.s	$fa0, $fa1, $fa0
	vldi	$vr1, -1244
	fdiv.s	$fa0, $fa0, $fa1
	fcvt.d.s	$fa1, $fa0
	vldi	$vr0, -988
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	fcvt.s.d	$fa0, $fa0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	fst.s	$fa0, $a0, 0
	addi.d	$a4, $sp, 368
	move	$a0, $s5
	move	$a1, $s8
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	move	$a3, $s7
	pcaddu18i	$ra, %call36(calc_xmin)
	jirl	$ra, $ra, 0
	addi.d	$a3, $sp, 320
	addi.d	$a4, $sp, 368
	st.d	$fp, $sp, 8
	move	$a0, $s5
	move	$a1, $s8
	move	$a2, $s2
	move	$a5, $s4
	move	$a6, $s6
	move	$a7, $s7
	pcaddu18i	$ra, %call36(outer_loop)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 320
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	bgtz	$a0, .LBB4_26
# %bb.22:                               # %if.end118
                                        #   in Loop: Header=BB4_20 Depth=3
	fld.d	$fa0, $sp, 336
	fcmp.cult.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB4_26
# %bb.23:                               # %if.end118
                                        #   in Loop: Header=BB4_20 Depth=3
	fld.d	$fa0, $sp, 344
	fcmp.cult.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB4_26
# %bb.24:                               # %if.end118
                                        #   in Loop: Header=BB4_20 Depth=3
	fld.d	$fa0, $sp, 328
	fcmp.cult.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB4_26
# %bb.25:                               # %if.then180
                                        #   in Loop: Header=BB4_20 Depth=3
	ld.w	$s3, $s7, 0
	ori	$a0, $zero, 3160
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 244
	move	$a1, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 856
	ori	$a2, $zero, 2304
	move	$a1, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3528
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 120
	move	$a1, $s7
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	sub.w	$s0, $s0, $s1
	b	.LBB4_27
	.p2align	4, , 16
.LBB4_26:                               # %if.else
                                        #   in Loop: Header=BB4_20 Depth=3
	add.w	$s0, $s0, $s1
.LBB4_27:                               # %cleanup
                                        #   in Loop: Header=BB4_20 Depth=3
	ori	$s5, $zero, 21
	addi.w	$a0, $s1, 0
	bstrpick.d	$s1, $s1, 31, 1
	blt	$s5, $a0, .LBB4_20
.LBB4_28:                               # %do.end
                                        #   in Loop: Header=BB4_15 Depth=2
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	blt	$a0, $s3, .LBB4_14
# %bb.29:                               # %if.then199
                                        #   in Loop: Header=BB4_15 Depth=2
	ori	$a0, $zero, 3528
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 120
	move	$a0, $s7
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3160
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 244
	move	$a0, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 856
	ori	$a2, $zero, 2304
	move	$a0, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	b	.LBB4_14
	.p2align	4, , 16
.LBB4_30:                               # %if.then39
                                        #   in Loop: Header=BB4_15 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	add.d	$a0, $a0, $s6
	ori	$a2, $zero, 244
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2304
	mul.d	$a0, $fp, $a0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ori	$a2, $zero, 2304
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	stx.w	$zero, $a0, $s0
	ori	$s4, $zero, 1
	addi.d	$fp, $fp, 1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	bne	$fp, $a0, .LBB4_15
	b	.LBB4_9
.LBB4_31:                               # %for.end229
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	beqz	$a1, .LBB4_36
# %bb.32:                               # %for.end229
	ori	$a1, $zero, 1
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	blt	$a0, $a1, .LBB4_42
# %bb.33:                               # %for.body236.preheader
	ori	$a1, $zero, 8
	bgeu	$a0, $a1, .LBB4_37
# %bb.34:
	move	$a1, $zero
	b	.LBB4_40
.LBB4_35:
	move	$fp, $zero
	b	.LBB4_43
.LBB4_36:
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	b	.LBB4_42
.LBB4_37:                               # %vector.ph
	bstrpick.d	$a1, $a0, 30, 3
	vrepli.b	$vr0, 0
	slli.d	$a1, $a1, 3
	vori.b	$vr1, $vr0, 0
	vinsgr2vr.w	$vr1, $fp, 0
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	addi.d	$a2, $a2, 32
	addi.d	$a3, $sp, 384
	lu52i.d	$a4, $zero, 1022
	xvreplgr2vr.d	$xr2, $a4
	lu12i.w	$a4, 335544
	ori	$a4, $a4, 1311
	lu32i.d	$a4, 335544
	lu52i.d	$a4, $a4, 1021
	xvreplgr2vr.d	$xr3, $a4
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr4, $a4
	vrepli.w	$vr5, 125
	move	$a4, $a1
	.p2align	4, , 16
.LBB4_38:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr6, $a2, -32
	xvld	$xr7, $a2, 0
	xvfsub.d	$xr6, $xr2, $xr6
	xvfsub.d	$xr7, $xr2, $xr7
	xvfmul.d	$xr6, $xr6, $xr3
	xvfmul.d	$xr7, $xr7, $xr3
	xvfadd.d	$xr6, $xr6, $xr6
	xvfadd.d	$xr7, $xr7, $xr7
	xvfsub.d	$xr8, $xr4, $xr6
	xvfsub.d	$xr9, $xr4, $xr7
	xvfadd.d	$xr6, $xr6, $xr4
	xvfadd.d	$xr7, $xr7, $xr4
	xvfdiv.d	$xr6, $xr8, $xr6
	xvfdiv.d	$xr7, $xr9, $xr7
	ld.w	$a5, $a3, -32
	ld.w	$a6, $a3, -24
	ld.w	$a7, $a3, -16
	ld.w	$t0, $a3, -8
	vinsgr2vr.w	$vr8, $a5, 0
	vinsgr2vr.w	$vr8, $a6, 1
	vinsgr2vr.w	$vr8, $a7, 2
	vinsgr2vr.w	$vr8, $t0, 3
	ld.w	$a5, $a3, 0
	ld.w	$a6, $a3, 8
	ld.w	$a7, $a3, 16
	ld.w	$t0, $a3, 24
	vinsgr2vr.w	$vr9, $a5, 0
	vinsgr2vr.w	$vr9, $a6, 1
	vinsgr2vr.w	$vr9, $a7, 2
	vinsgr2vr.w	$vr9, $t0, 3
	vext2xv.d.w	$xr8, $xr8
	xvffint.d.l	$xr8, $xr8
	vext2xv.d.w	$xr9, $xr9
	xvffint.d.l	$xr9, $xr9
	xvfmul.d	$xr6, $xr6, $xr8
	xvfmul.d	$xr7, $xr7, $xr9
	xvftintrz.l.d	$xr6, $xr6
	xvpermi.d	$xr8, $xr6, 238
	xvpickev.w	$xr6, $xr8, $xr6
	xvftintrz.l.d	$xr7, $xr7
	xvpermi.d	$xr8, $xr7, 238
	xvpickev.w	$xr7, $xr8, $xr7
	vmax.w	$vr6, $vr6, $vr5
	vmax.w	$vr7, $vr7, $vr5
	vstelm.w	$vr6, $a3, -28, 0
	vstelm.w	$vr6, $a3, -20, 1
	vstelm.w	$vr6, $a3, -12, 2
	vstelm.w	$vr6, $a3, -4, 3
	vstelm.w	$vr7, $a3, 4, 0
	vstelm.w	$vr7, $a3, 12, 1
	vstelm.w	$vr7, $a3, 20, 2
	vstelm.w	$vr7, $a3, 28, 3
	vadd.w	$vr1, $vr6, $vr1
	vadd.w	$vr0, $vr7, $vr0
	addi.d	$a4, $a4, -8
	addi.d	$a2, $a2, 64
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB4_38
# %bb.39:                               # %middle.block
	vadd.w	$vr0, $vr0, $vr1
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$fp, $vr0, 0
	beq	$a1, $a0, .LBB4_42
.LBB4_40:                               # %for.body236.preheader510
	addi.d	$a2, $sp, 352
	alsl.d	$a2, $a1, $a2, 3
	addi.d	$a2, $a2, 4
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$a3, $a1, $a3, 3
	sub.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(.LCPI4_2)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI4_2)
	vldi	$vr1, -928
	vldi	$vr2, -912
	ori	$a1, $zero, 125
	.p2align	4, , 16
.LBB4_41:                               # %for.body236
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa3, $a3, 0
	fsub.d	$fa3, $fa1, $fa3
	fmul.d	$fa3, $fa3, $fa0
	fadd.d	$fa3, $fa3, $fa3
	ld.w	$a4, $a2, -4
	fsub.d	$fa4, $fa2, $fa3
	fadd.d	$fa3, $fa3, $fa2
	fdiv.d	$fa3, $fa4, $fa3
	movgr2fr.w	$fa4, $a4
	ffint.d.w	$fa4, $fa4
	fmul.d	$fa3, $fa3, $fa4
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a4, $fa3
	slt	$a5, $a1, $a4
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $a1, $a5
	or	$a4, $a4, $a5
	st.w	$a4, $a2, 0
	add.w	$fp, $a4, $fp
	addi.d	$a2, $a2, 8
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 8
	bnez	$a0, .LBB4_41
.LBB4_42:                               # %if.end276
	ori	$a0, $zero, 1
	bnez	$s4, .LBB4_44
.LBB4_43:                               # %cond.false279
	ld.w	$a0, $s3, 208
.LBB4_44:                               # %cond.end281
	ld.w	$a1, $s3, 212
	bge	$a0, $a1, .LBB4_49
# %bb.45:                               # %for.body289.preheader
	addi.d	$a2, $sp, 260
	alsl.d	$a2, $a0, $a2, 2
	.p2align	4, , 16
.LBB4_46:                               # %for.body289
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, 0
	bge	$a3, $fp, .LBB4_49
# %bb.47:                               # %for.inc297
                                        #   in Loop: Header=BB4_46 Depth=1
	addi.w	$a0, $a0, 1
	addi.d	$a2, $a2, 4
	bne	$a1, $a0, .LBB4_46
# %bb.48:
	move	$a0, $a1
.LBB4_49:                               # %for.end300
	st.w	$a0, $s3, 220
	addi.d	$a1, $sp, 256
	addi.d	$a2, $sp, 252
	move	$a0, $s3
	pcaddu18i	$ra, %call36(getframebits)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 252
	ld.w	$a3, $sp, 256
	move	$a0, $s3
	move	$a1, $s7
	pcaddu18i	$ra, %call36(ResvFrameBegin)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 200
	move	$s5, $a0
	bge	$a0, $fp, .LBB4_67
# %bb.50:                               # %for.cond305.preheader
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB4_114
# %bb.51:                               # %for.cond310.preheader.lr.ph
	ld.w	$a0, $s3, 204
	blt	$a0, $a2, .LBB4_68
# %bb.52:                               # %for.cond310.preheader.lr.ph.split.us
	ld.w	$a2, $s3, 220
	slli.d	$a2, $a2, 2
	addi.d	$a3, $sp, 260
	ldx.w	$a2, $a2, $a3
	move	$a3, $zero
	bstrpick.d	$a4, $a0, 30, 4
	slli.d	$a4, $a4, 4
	xvreplgr2vr.w	$xr0, $a2
	xvreplgr2vr.w	$xr1, $fp
	andi	$a5, $a0, 12
	bstrpick.d	$a6, $a0, 30, 2
	slli.d	$a6, $a6, 2
	vreplgr2vr.w	$vr2, $a2
	vreplgr2vr.w	$vr3, $fp
	addi.d	$a7, $sp, 384
	sub.d	$t0, $zero, $a6
	addi.d	$t1, $sp, 352
	ori	$t2, $zero, 4
	ori	$t3, $zero, 16
	b	.LBB4_54
	.p2align	4, , 16
.LBB4_53:                               # %for.cond310.for.inc331_crit_edge.us
                                        #   in Loop: Header=BB4_54 Depth=1
	addi.d	$a3, $a3, 1
	addi.d	$a7, $a7, 8
	addi.d	$t1, $t1, 8
	bgeu	$a3, $a1, .LBB4_68
.LBB4_54:                               # %iter.check
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_59 Depth 2
                                        #     Child Loop BB4_63 Depth 2
                                        #     Child Loop BB4_66 Depth 2
	bgeu	$a0, $t2, .LBB4_56
# %bb.55:                               #   in Loop: Header=BB4_54 Depth=1
	move	$t5, $zero
	b	.LBB4_65
	.p2align	4, , 16
.LBB4_56:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB4_54 Depth=1
	bgeu	$a0, $t3, .LBB4_58
# %bb.57:                               #   in Loop: Header=BB4_54 Depth=1
	move	$t6, $zero
	b	.LBB4_62
	.p2align	4, , 16
.LBB4_58:                               # %vector.body487.preheader
                                        #   in Loop: Header=BB4_54 Depth=1
	move	$t4, $a7
	move	$t5, $a4
	.p2align	4, , 16
.LBB4_59:                               # %vector.body487
                                        #   Parent Loop BB4_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr4, $t4, -32
	xvld	$xr5, $t4, 0
	xvmul.w	$xr4, $xr0, $xr4
	xvmul.w	$xr5, $xr0, $xr5
	xvdiv.w	$xr4, $xr4, $xr1
	xvdiv.w	$xr5, $xr5, $xr1
	xvst	$xr4, $t4, -32
	xvst	$xr5, $t4, 0
	addi.d	$t5, $t5, -16
	addi.d	$t4, $t4, 64
	bnez	$t5, .LBB4_59
# %bb.60:                               # %middle.block492
                                        #   in Loop: Header=BB4_54 Depth=1
	beq	$a4, $a0, .LBB4_53
# %bb.61:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB4_54 Depth=1
	move	$t6, $a4
	move	$t5, $a4
	beqz	$a5, .LBB4_65
.LBB4_62:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB4_54 Depth=1
	add.d	$t4, $t0, $t6
	alsl.d	$t5, $t6, $t1, 2
	.p2align	4, , 16
.LBB4_63:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB4_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr4, $t5, 0
	vmul.w	$vr4, $vr2, $vr4
	vdiv.w	$vr4, $vr4, $vr3
	vst	$vr4, $t5, 0
	addi.d	$t4, $t4, 4
	addi.d	$t5, $t5, 16
	bnez	$t4, .LBB4_63
# %bb.64:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB4_54 Depth=1
	move	$t5, $a6
	beq	$a6, $a0, .LBB4_53
.LBB4_65:                               # %for.body314.us.preheader
                                        #   in Loop: Header=BB4_54 Depth=1
	slli.d	$t4, $t5, 2
	sub.d	$t5, $a0, $t5
	.p2align	4, , 16
.LBB4_66:                               # %for.body314.us
                                        #   Parent Loop BB4_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$t6, $t1, $t4
	mul.w	$t6, $a2, $t6
	div.w	$t6, $t6, $fp
	stx.w	$t6, $t1, $t4
	addi.d	$t5, $t5, -1
	addi.d	$t4, $t4, 4
	bnez	$t5, .LBB4_66
	b	.LBB4_53
.LBB4_67:                               # %if.end355
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB4_114
.LBB4_68:                               # %for.cond361.preheader.lr.ph
	ld.w	$a0, $s3, 204
	addi.d	$a3, $s7, 48
	ori	$a4, $zero, 1
	lu12i.w	$a2, 1
	blt	$a0, $a4, .LBB4_93
# %bb.69:                               # %for.cond361.preheader.preheader
	move	$s0, $zero
	ori	$a4, $a2, 512
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	add.d	$a5, $a2, $a4
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a6, $a2, 488
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	addi.d	$a7, $a2, 1952
	addi.d	$t0, $sp, 360
	lu12i.w	$a2, 2
	ori	$t1, $a2, 1024
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	st.d	$t1, $sp, 144                   # 8-byte Folded Spill
	add.d	$t1, $a2, $t1
	addi.d	$t2, $s7, 288
	st.d	$a4, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	st.d	$s5, $sp, 224                   # 8-byte Folded Spill
	st.d	$a3, $sp, 128                   # 8-byte Folded Spill
	b	.LBB4_72
	.p2align	4, , 16
.LBB4_70:                               # %for.inc440.loopexit
                                        #   in Loop: Header=BB4_72 Depth=1
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	ld.w	$a1, $s3, 200
	ld.d	$s7, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 160                   # 8-byte Folded Reload
.LBB4_71:                               # %for.inc440
                                        #   in Loop: Header=BB4_72 Depth=1
	addi.d	$s0, $s0, 1
	add.d	$a5, $a5, $a4
	addi.d	$a6, $a6, 488
	addi.d	$a7, $a7, 1952
	addi.d	$t0, $t0, 8
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	add.d	$t1, $t1, $a2
	addi.d	$t2, $t2, 240
	bge	$s0, $a1, .LBB4_92
.LBB4_72:                               # %for.cond361.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_89 Depth 2
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB4_71
# %bb.73:                               # %for.body365.lr.ph
                                        #   in Loop: Header=BB4_72 Depth=1
	st.d	$t1, $sp, 168                   # 8-byte Folded Spill
	st.d	$t0, $sp, 176                   # 8-byte Folded Spill
	st.d	$a7, $sp, 184                   # 8-byte Folded Spill
	st.d	$a6, $sp, 192                   # 8-byte Folded Spill
	st.d	$a5, $sp, 200                   # 8-byte Folded Spill
	ori	$a0, $zero, 240
	mul.d	$a0, $s0, $a0
	add.d	$s2, $a3, $a0
	alsl.d	$a0, $s0, $s0, 3
	slli.d	$a1, $a0, 10
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	add.d	$s8, $a2, $a1
	addi.d	$a1, $sp, 352
	alsl.d	$s1, $s0, $a1, 3
	ori	$a1, $zero, 1952
	mul.d	$a1, $s0, $a1
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	add.d	$a1, $a2, $a1
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 9
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	add.d	$s6, $a1, $a0
	ori	$a0, $zero, 488
	mul.d	$a0, $s0, $a0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	add.d	$s7, $a1, $a0
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$t2, $sp, 160                   # 8-byte Folded Spill
	bge	$s5, $fp, .LBB4_76
# %bb.74:                               # %if.then370.peel
                                        #   in Loop: Header=BB4_72 Depth=1
	move	$a0, $s3
	move	$a1, $s8
	move	$a2, $s2
	pcaddu18i	$ra, %call36(init_outer_loop)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_79
# %bb.75:                               # %if.else399.peel
                                        #   in Loop: Header=BB4_72 Depth=1
	ld.w	$a0, $s3, 92
	slli.d	$a0, $a0, 1
	addi.d	$a0, $a0, -6
	ld.w	$s4, $s1, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	fld.d	$fa1, $a0, %pc_lo12(.LCPI4_1)
	addi.d	$a0, $s4, -125
	movgr2fr.w	$fa2, $a0
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa1, $fa2, $fa1
	fcvt.s.d	$fa1, $fa1
	vldi	$vr2, -1040
	fadd.s	$fa1, $fa1, $fa2
	vldi	$vr2, -1264
	fmul.s	$fa1, $fa1, $fa2
	fadd.s	$fa0, $fa1, $fa0
	vldi	$vr1, -1244
	fdiv.s	$fa0, $fa0, $fa1
	fcvt.d.s	$fa1, $fa0
	vldi	$vr0, -988
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(masking_lower)
	ld.d	$a0, $a0, %got_pc_lo12(masking_lower)
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $a0, 0
	addi.d	$a4, $sp, 368
	move	$a0, $s3
	move	$a1, $s8
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	move	$a3, $s2
	pcaddu18i	$ra, %call36(calc_xmin)
	jirl	$ra, $ra, 0
	addi.d	$a3, $sp, 320
	addi.d	$a4, $sp, 368
	st.d	$zero, $sp, 8
	move	$a0, $s3
	move	$a1, $s8
	move	$a2, $s4
	move	$a5, $s6
	move	$a6, $s7
	move	$a7, $s2
	pcaddu18i	$ra, %call36(outer_loop)
	jirl	$ra, $ra, 0
	b	.LBB4_80
	.p2align	4, , 16
.LBB4_76:                               # %for.inc437.peel.thread
                                        #   in Loop: Header=BB4_72 Depth=1
	ld.w	$a0, $s3, 204
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB4_70
# %bb.77:                               # %lor.lhs.false.peel372
                                        #   in Loop: Header=BB4_72 Depth=1
	pcalau12i	$a0, %got_pc_hi20(reduce_sidechannel)
	ld.d	$a0, $a0, %got_pc_lo12(reduce_sidechannel)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB4_81
	.p2align	4, , 16
# %bb.78:                               # %for.inc437.peel404
                                        #   in Loop: Header=BB4_72 Depth=1
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 204
	ori	$a1, $zero, 3
	blt	$a0, $a1, .LBB4_70
	b	.LBB4_85
.LBB4_79:                               # %if.then385.peel
                                        #   in Loop: Header=BB4_72 Depth=1
	ori	$a2, $zero, 244
	move	$a0, $s7
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 2304
	move	$a0, $s6
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB4_80:                               # %for.inc437.peel
                                        #   in Loop: Header=BB4_72 Depth=1
	ld.w	$a0, $s3, 204
	ori	$a1, $zero, 1
	ld.d	$a4, $sp, 232                   # 8-byte Folded Reload
	bge	$a1, $a0, .LBB4_70
.LBB4_81:                               # %if.then370.peel376
                                        #   in Loop: Header=BB4_72 Depth=1
	addi.d	$s2, $s2, 120
	add.d	$s8, $s8, $a4
	ld.d	$s0, $sp, 240                   # 8-byte Folded Reload
	move	$a0, $s0
	move	$a1, $s8
	move	$a2, $s2
	pcaddu18i	$ra, %call36(init_outer_loop)
	jirl	$ra, $ra, 0
	addi.d	$s7, $s7, 244
	beqz	$a0, .LBB4_83
# %bb.82:                               # %if.else399.peel381
                                        #   in Loop: Header=BB4_72 Depth=1
	ld.w	$a0, $s0, 92
	slli.d	$a0, $a0, 1
	addi.d	$a0, $a0, -6
	ld.w	$s4, $s1, 4
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	fld.d	$fa1, $a0, %pc_lo12(.LCPI4_1)
	addi.d	$a0, $s4, -125
	movgr2fr.w	$fa2, $a0
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa1, $fa2, $fa1
	fcvt.s.d	$fa1, $fa1
	vldi	$vr2, -1040
	fadd.s	$fa1, $fa1, $fa2
	vldi	$vr2, -1264
	fmul.s	$fa1, $fa1, $fa2
	fadd.s	$fa0, $fa1, $fa0
	vldi	$vr1, -1244
	fdiv.s	$fa0, $fa0, $fa1
	fcvt.d.s	$fa1, $fa0
	vldi	$vr0, -988
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(masking_lower)
	ld.d	$a0, $a0, %got_pc_lo12(masking_lower)
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $a0, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	addi.d	$a2, $a0, 976
	addi.d	$a4, $sp, 368
	move	$a0, $s0
	move	$a1, $s8
	move	$a3, $s2
	pcaddu18i	$ra, %call36(calc_xmin)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s6, 2047
	addi.d	$a5, $a0, 257
	addi.d	$a3, $sp, 320
	addi.d	$a4, $sp, 368
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 8
	move	$a0, $s0
	move	$a1, $s8
	move	$a2, $s4
	move	$a6, $s7
	move	$a7, $s2
	pcaddu18i	$ra, %call36(outer_loop)
	jirl	$ra, $ra, 0
	b	.LBB4_84
.LBB4_83:                               # %if.then385.peel401
                                        #   in Loop: Header=BB4_72 Depth=1
	ori	$a2, $zero, 244
	move	$a0, $s7
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2304
	add.d	$a0, $s6, $a0
	ori	$a2, $zero, 2304
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB4_84:                               # %for.inc437.peel404
                                        #   in Loop: Header=BB4_72 Depth=1
	ld.d	$a4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 204
	ori	$a1, $zero, 3
	blt	$a0, $a1, .LBB4_70
.LBB4_85:                               # %for.body365.preheader
                                        #   in Loop: Header=BB4_72 Depth=1
	ori	$s1, $zero, 2
	ld.d	$s4, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ori	$s0, $zero, 2
	b	.LBB4_89
	.p2align	4, , 16
.LBB4_86:                               # %if.else399
                                        #   in Loop: Header=BB4_89 Depth=2
	ld.w	$a0, $fp, 92
	slli.d	$a0, $a0, 1
	addi.d	$a0, $a0, -6
	ld.w	$s5, $s3, 0
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	fld.d	$fa1, $a0, %pc_lo12(.LCPI4_1)
	addi.d	$a0, $s5, -125
	movgr2fr.w	$fa2, $a0
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa1, $fa2, $fa1
	fcvt.s.d	$fa1, $fa1
	vldi	$vr2, -1040
	fadd.s	$fa1, $fa1, $fa2
	vldi	$vr2, -1264
	fmul.s	$fa1, $fa1, $fa2
	fadd.s	$fa0, $fa1, $fa0
	vldi	$vr1, -1244
	fdiv.s	$fa0, $fa0, $fa1
	fcvt.d.s	$fa1, $fa0
	vldi	$vr0, -988
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(masking_lower)
	ld.d	$a0, $a0, %got_pc_lo12(masking_lower)
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $a0, 0
	addi.d	$a4, $sp, 368
	move	$a0, $fp
	move	$a1, $s6
	move	$a2, $s7
	move	$a3, $s4
	pcaddu18i	$ra, %call36(calc_xmin)
	jirl	$ra, $ra, 0
	addi.d	$a3, $sp, 320
	addi.d	$a4, $sp, 368
	st.d	$s1, $sp, 8
	move	$a0, $fp
	move	$a1, $s6
	move	$a2, $s5
	ld.d	$s5, $sp, 224                   # 8-byte Folded Reload
	move	$a5, $s2
	move	$a6, $s8
	move	$a7, $s4
	pcaddu18i	$ra, %call36(outer_loop)
	jirl	$ra, $ra, 0
.LBB4_87:                               # %for.inc437
                                        #   in Loop: Header=BB4_89 Depth=2
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 232                   # 8-byte Folded Reload
.LBB4_88:                               # %for.inc437
                                        #   in Loop: Header=BB4_89 Depth=2
	addi.d	$s0, $s0, 1
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 204
	addi.w	$s1, $s1, 1
	addi.d	$a1, $s2, 2047
	addi.d	$s2, $a1, 257
	addi.d	$s8, $s8, 244
	addi.d	$s7, $s7, 976
	addi.d	$s3, $s3, 4
	add.d	$s6, $s6, $a4
	addi.d	$s4, $s4, 120
	bge	$s0, $a0, .LBB4_70
.LBB4_89:                               # %for.body365
                                        #   Parent Loop BB4_72 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bge	$s5, $fp, .LBB4_88
# %bb.90:                               # %if.then370
                                        #   in Loop: Header=BB4_89 Depth=2
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	move	$a0, $fp
	move	$a1, $s6
	move	$a2, $s4
	pcaddu18i	$ra, %call36(init_outer_loop)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_86
# %bb.91:                               # %if.then385
                                        #   in Loop: Header=BB4_89 Depth=2
	ori	$a2, $zero, 244
	move	$a0, $s8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 2304
	move	$a0, $s2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB4_87
.LBB4_92:                               # %for.cond443.preheader
	ori	$a0, $zero, 1
	lu12i.w	$a2, 1
	blt	$a1, $a0, .LBB4_114
.LBB4_93:                               # %for.cond448.preheader.lr.ph
	ld.w	$a0, $s3, 204
	ori	$a4, $zero, 1
	blt	$a0, $a4, .LBB4_103
# %bb.94:                               # %for.cond448.preheader.preheader
	move	$s2, $zero
	ori	$s0, $a2, 512
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	b	.LBB4_97
	.p2align	4, , 16
.LBB4_95:                               # %for.inc473.loopexit
                                        #   in Loop: Header=BB4_97 Depth=1
	ld.w	$a1, $s8, 200
	move	$s3, $s8
	lu12i.w	$a2, 1
	move	$a3, $fp
.LBB4_96:                               # %for.inc473
                                        #   in Loop: Header=BB4_97 Depth=1
	addi.d	$s2, $s2, 1
	add.d	$s1, $s1, $s0
	addi.d	$a3, $a3, 240
	bge	$s2, $a1, .LBB4_102
.LBB4_97:                               # %for.cond448.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_100 Depth 2
	ori	$a4, $zero, 1
	blt	$a0, $a4, .LBB4_96
# %bb.98:                               # %for.body452.lr.ph
                                        #   in Loop: Header=BB4_97 Depth=1
	move	$s4, $zero
	move	$s8, $s3
	move	$s3, $zero
	move	$fp, $a3
	move	$s5, $a3
	move	$s6, $s1
	b	.LBB4_100
	.p2align	4, , 16
.LBB4_99:                               # %if.end469
                                        #   in Loop: Header=BB4_100 Depth=2
	ld.w	$a3, $sp, 252
	move	$a0, $s8
	move	$a1, $s5
	move	$a2, $s7
	pcaddu18i	$ra, %call36(ResvAdjust)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, 1
	ld.w	$a0, $s8, 204
	addi.w	$s4, $s4, 1
	addi.d	$a1, $s6, 2047
	addi.d	$s6, $a1, 257
	addi.d	$s5, $s5, 120
	bge	$s3, $a0, .LBB4_95
.LBB4_100:                              # %for.body452
                                        #   Parent Loop BB4_97 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s8
	move	$a1, $s2
	move	$a2, $s4
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	move	$a4, $s7
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(best_scalefac_store)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 24
	bnez	$a0, .LBB4_99
# %bb.101:                              # %if.then463
                                        #   in Loop: Header=BB4_100 Depth=2
	move	$a0, $s2
	move	$a1, $s4
	move	$a2, $s5
	move	$a3, $s6
	pcaddu18i	$ra, %call36(best_huffman_divide)
	jirl	$ra, $ra, 0
	b	.LBB4_99
.LBB4_102:                              # %for.cond476.preheader
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB4_114
.LBB4_103:                              # %for.cond481.preheader.lr.ph
	ld.w	$a6, $s3, 204
	ori	$a0, $zero, 1
	blt	$a6, $a0, .LBB4_114
# %bb.104:                              # %for.cond481.preheader.preheader
	move	$a4, $a2
	move	$a2, $zero
	lu12i.w	$a3, -2
	ori	$a3, $a3, 3584
	ori	$a4, $a4, 512
	movgr2fr.d	$fa0, $zero
	lu12i.w	$a5, 2
	ori	$a5, $a5, 1024
	b	.LBB4_107
	.p2align	4, , 16
.LBB4_105:                              # %for.inc513.loopexit
                                        #   in Loop: Header=BB4_107 Depth=1
	ld.w	$a1, $s3, 200
.LBB4_106:                              # %for.inc513
                                        #   in Loop: Header=BB4_107 Depth=1
	addi.d	$a2, $a2, 1
	ld.d	$a7, $sp, 112                   # 8-byte Folded Reload
	add.d	$a7, $a7, $a4
	st.d	$a7, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a7, $sp, 88                    # 8-byte Folded Reload
	add.d	$a7, $a7, $a5
	st.d	$a7, $sp, 88                    # 8-byte Folded Spill
	bge	$a2, $a1, .LBB4_114
.LBB4_107:                              # %for.cond481.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_110 Depth 2
                                        #       Child Loop BB4_112 Depth 3
	blt	$a6, $a0, .LBB4_106
# %bb.108:                              # %for.cond486.preheader.lr.ph
                                        #   in Loop: Header=BB4_107 Depth=1
	move	$a1, $zero
	ld.d	$a7, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 112                   # 8-byte Folded Reload
	b	.LBB4_110
	.p2align	4, , 16
.LBB4_109:                              # %for.inc510
                                        #   in Loop: Header=BB4_110 Depth=2
	ld.w	$a6, $s3, 204
	addi.d	$a1, $a1, 1
	addi.d	$t0, $t0, 2047
	addi.d	$t0, $t0, 257
	add.d	$a7, $a7, $a4
	bge	$a1, $a6, .LBB4_105
.LBB4_110:                              # %for.cond486.preheader
                                        #   Parent Loop BB4_107 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_112 Depth 3
	move	$a6, $a3
	move	$t1, $t0
	b	.LBB4_112
	.p2align	4, , 16
.LBB4_111:                              # %for.inc507
                                        #   in Loop: Header=BB4_112 Depth=3
	addi.d	$a6, $a6, 8
	addi.d	$t1, $t1, 4
	beqz	$a6, .LBB4_109
.LBB4_112:                              # %for.body489
                                        #   Parent Loop BB4_107 Depth=1
                                        #     Parent Loop BB4_110 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t2, $a7, $a6
	fldx.d	$fa1, $t2, $a4
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB4_111
# %bb.113:                              # %if.then498
                                        #   in Loop: Header=BB4_112 Depth=3
	ld.w	$t2, $t1, 0
	sub.d	$t2, $zero, $t2
	st.w	$t2, $t1, 0
	b	.LBB4_111
.LBB4_114:                              # %for.end515
	ld.w	$a2, $sp, 252
	move	$a0, $s3
	move	$a1, $s7
	pcaddu18i	$ra, %call36(ResvFrameEnd)
	jirl	$ra, $ra, 0
	addi.d	$sp, $sp, 1712
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
.Lfunc_end4:
	.size	VBR_iteration_loop, .Lfunc_end4-VBR_iteration_loop
                                        # -- End function
	.globl	VBR_compare                     # -- Begin function VBR_compare
	.p2align	5
	.type	VBR_compare,@function
VBR_compare:                            # @VBR_compare
# %bb.0:                                # %entry
	slt	$a0, $a0, $a1
	fcmp.cle.d	$fcc0, $fa4, $fa1
	xori	$a0, $a0, 1
	movcf2gr	$a1, $fcc0
	fcmp.cle.d	$fcc0, $fa3, $fa0
	fcmp.cle.d	$fcc1, $fa5, $fa2
	and	$a0, $a0, $a1
	movcf2gr	$a1, $fcc0
	movcf2gr	$a2, $fcc1
	and	$a1, $a1, $a2
	and	$a0, $a0, $a1
	ret
.Lfunc_end5:
	.size	VBR_compare, .Lfunc_end5-VBR_compare
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function calc_noise1
.LCPI6_0:
	.dword	0x3f50624dd2f1a9fc              # double 0.001
	.text
	.globl	calc_noise1
	.p2align	5
	.type	calc_noise1,@function
calc_noise1:                            # @calc_noise1
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -288
	st.d	$ra, $sp, 280                   # 8-byte Folded Spill
	st.d	$fp, $sp, 272                   # 8-byte Folded Spill
	st.d	$s0, $sp, 264                   # 8-byte Folded Spill
	st.d	$s1, $sp, 256                   # 8-byte Folded Spill
	st.d	$s2, $sp, 248                   # 8-byte Folded Spill
	st.d	$s3, $sp, 240                   # 8-byte Folded Spill
	st.d	$s4, $sp, 232                   # 8-byte Folded Spill
	st.d	$s5, $sp, 224                   # 8-byte Folded Spill
	st.d	$s6, $sp, 216                   # 8-byte Folded Spill
	st.d	$s7, $sp, 208                   # 8-byte Folded Spill
	st.d	$s8, $sp, 200                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 192                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 184                  # 8-byte Folded Spill
	ld.d	$s8, $sp, 288
	st.d	$a6, $sp, 120                   # 8-byte Folded Spill
	st.d	$a5, $sp, 128                   # 8-byte Folded Spill
	st.d	$a4, $sp, 136                   # 8-byte Folded Spill
	st.d	$a3, $sp, 112                   # 8-byte Folded Spill
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.d	$s7, $sp, 296
	st.d	$a7, $sp, 80                    # 8-byte Folded Spill
	st.d	$zero, $a7, 0
	st.d	$zero, $s8, 0
	ori	$a0, $zero, 0
	ori	$a1, $zero, 0
	ld.wu	$a4, $a2, 80
	lu32i.d	$a1, -51200
	lu52i.d	$a1, $a1, -1016
	st.d	$a1, $s7, 0
	addi.w	$a1, $a4, 0
	pcalau12i	$fp, %pc_hi20(.LCPI6_0)
	st.d	$a4, $sp, 104                   # 8-byte Folded Spill
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	beqz	$a1, .LBB6_12
# %bb.1:                                # %for.body.lr.ph
	ld.w	$a1, $a2, 68
	move	$s2, $zero
	st.d	$zero, $sp, 168                 # 8-byte Folded Spill
	ld.w	$s1, $a2, 64
	ld.w	$a2, $a2, 12
	st.d	$a2, $sp, 176                   # 8-byte Folded Spill
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(pow20)
	ld.d	$s4, $a1, %got_pc_lo12(pow20)
	pcalau12i	$a1, %got_pc_hi20(scalefac_band)
	ld.d	$s5, $a1, %got_pc_lo12(scalefac_band)
	movgr2fr.d	$fs0, $zero
	pcalau12i	$a1, %got_pc_hi20(pow43)
	ld.d	$s6, $a1, %got_pc_lo12(pow43)
	lu32i.d	$a0, -131072
	lu52i.d	$s0, $a0, -1021
	b	.LBB6_4
	.p2align	4, , 16
.LBB6_2:                                # %cond.end.thread
                                        #   in Loop: Header=BB6_4 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	stx.d	$s0, $a0, $s3
	vldi	$vr0, -834
.LBB6_3:                                # %if.end51
                                        #   in Loop: Header=BB6_4 Depth=1
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	fld.d	$fa1, $s8, 0
	fadd.d	$fa1, $fa0, $fa1
	fst.d	$fa1, $s8, 0
	fld.d	$fa1, $s7, 0
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc0
	fst.d	$fa0, $s7, 0
	beq	$s2, $a4, .LBB6_13
.LBB6_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_8 Depth 2
	move	$a0, $s2
	slli.d	$a1, $s2, 2
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	ldx.w	$a2, $a2, $a1
	beqz	$s1, .LBB6_6
# %bb.5:                                # %if.then
                                        #   in Loop: Header=BB6_4 Depth=1
	pcalau12i	$a3, %got_pc_hi20(pretab)
	ld.d	$a3, $a3, %got_pc_lo12(pretab)
	ldx.w	$a3, $a3, $a1
	add.d	$a2, $a3, $a2
.LBB6_6:                                # %if.end
                                        #   in Loop: Header=BB6_4 Depth=1
	ldx.w	$a3, $s5, $a1
	addi.d	$s2, $a0, 1
	slli.d	$a1, $s2, 2
	ldx.w	$a4, $s5, $a1
	sub.d	$a1, $a4, $a3
	fmov.d	$fa0, $fs0
	bge	$a3, $a4, .LBB6_9
# %bb.7:                                # %for.body17.preheader
                                        #   in Loop: Header=BB6_4 Depth=1
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	sll.w	$a2, $a2, $a4
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	sub.w	$a2, $a4, $a2
	slli.d	$a2, $a2, 3
	fldx.d	$fa1, $s4, $a2
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 3
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	alsl.d	$a3, $a3, $a4, 2
	move	$a4, $a1
	fmov.d	$fa0, $fs0
	.p2align	4, , 16
.LBB6_8:                                # %for.body17
                                        #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $a3, 0
	fld.d	$fa2, $a2, 0
	slli.d	$a5, $a5, 3
	fldx.d	$fa3, $s6, $a5
	fabs.d	$fa2, $fa2
	fneg.d	$fa3, $fa3
	fmadd.d	$fa2, $fa3, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa2, $fa0
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 4
	bnez	$a4, .LBB6_8
.LBB6_9:                                # %for.end
                                        #   in Loop: Header=BB6_4 Depth=1
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	slli.d	$s3, $a0, 3
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	fstx.d	$fa0, $a0, $s3
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	fldx.d	$fa1, $a0, $s3
	fld.d	$fa2, $fp, %pc_lo12(.LCPI6_0)
	fdiv.d	$fa0, $fa0, $fa1
	fcmp.cule.d	$fcc0, $fa2, $fa0
	bceqz	$fcc0, .LBB6_2
# %bb.10:                               # %cond.end
                                        #   in Loop: Header=BB6_4 Depth=1
	pcaddu18i	$ra, %call36(log10)
	jirl	$ra, $ra, 0
	vldi	$vr1, -988
	fmul.d	$fa0, $fa0, $fa1
	fcmp.cule.d	$fcc0, $fa0, $fs0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	fstx.d	$fa0, $a0, $s3
	bcnez	$fcc0, .LBB6_3
# %bb.11:                               # %if.then48
                                        #   in Loop: Header=BB6_4 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	fld.d	$fa1, $a0, 0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	fadd.d	$fa1, $fa0, $fa1
	fst.d	$fa1, $a0, 0
	b	.LBB6_3
.LBB6_12:
	st.d	$zero, $sp, 168                 # 8-byte Folded Spill
.LBB6_13:                               # %for.cond63.preheader
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.w	$s0, $a2, 84
	ori	$a0, $zero, 11
	bltu	$a0, $s0, .LBB6_24
# %bb.14:                               # %for.cond63.preheader.split.us
	ld.w	$a0, $a2, 68
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 88
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	addi.d	$s4, $a1, 176
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ld.w	$a0, $a2, 44
	ld.w	$a1, $a2, 12
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(scalefac_band)
	ld.d	$a1, $a1, %got_pc_lo12(scalefac_band)
	slli.d	$a0, $a0, 3
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	addi.d	$s2, $a0, 168
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	addi.d	$s1, $a0, 168
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	alsl.d	$a0, $s0, $a1, 2
	ld.w	$s3, $a0, 92
	pcalau12i	$a0, %got_pc_hi20(pow20)
	ld.d	$a0, $a0, %got_pc_lo12(pow20)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	movgr2fr.d	$fs1, $zero
	pcalau12i	$a0, %got_pc_hi20(pow43)
	ld.d	$s5, $a0, %got_pc_lo12(pow43)
	fld.d	$fs0, $fp, %pc_lo12(.LCPI6_0)
	ori	$a0, $zero, 0
	lu32i.d	$a0, -131072
	lu52i.d	$a0, $a0, -1021
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$t1, $zero, 12
	move	$a0, $s3
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	st.d	$s3, $sp, 56                    # 8-byte Folded Spill
	b	.LBB6_17
	.p2align	4, , 16
.LBB6_15:                               # %cond.end148.thread.us
                                        #   in Loop: Header=BB6_17 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	stx.d	$a0, $s1, $s6
	vldi	$vr0, -834
.LBB6_16:                               # %if.end162.us
                                        #   in Loop: Header=BB6_17 Depth=1
	fld.d	$fa1, $s8, 0
	fadd.d	$fa1, $fa0, $fa1
	fst.d	$fa1, $s8, 0
	fld.d	$fa1, $s7, 0
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc0
	fst.d	$fa0, $s7, 0
	move	$a0, $fp
	beq	$s0, $t1, .LBB6_26
.LBB6_17:                               # %for.body70.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_19 Depth 2
	move	$a1, $s0
	addi.d	$s0, $s0, 1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	alsl.d	$a2, $s0, $a2, 2
	ld.w	$fp, $a2, 92
	slli.d	$s6, $a1, 3
	fmov.d	$fa1, $fs1
	bge	$a0, $fp, .LBB6_20
# %bb.18:                               # %for.body98.us.preheader
                                        #   in Loop: Header=BB6_17 Depth=1
	alsl.d	$a2, $a1, $s6, 2
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ldx.w	$a2, $a3, $a2
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	sll.w	$a2, $a2, $a3
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	sub.w	$a2, $a3, $a2
	slli.d	$a2, $a2, 3
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	fldx.d	$fa0, $a3, $a2
	slli.d	$a2, $a0, 3
	alsl.d	$a2, $a0, $a2, 2
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	slli.d	$a3, $a0, 4
	alsl.d	$a3, $a0, $a3, 3
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	add.d	$a3, $a4, $a3
	sub.d	$a4, $fp, $a0
	fmov.d	$fa1, $fs1
	.p2align	4, , 16
.LBB6_19:                               # %for.body98.us
                                        #   Parent Loop BB6_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $a2, 0
	fld.d	$fa2, $a3, 0
	slli.d	$a5, $a5, 3
	fldx.d	$fa3, $s5, $a5
	fabs.d	$fa2, $fa2
	fneg.d	$fa3, $fa3
	fmadd.d	$fa2, $fa3, $fa0, $fa2
	fmadd.d	$fa1, $fa2, $fa2, $fa1
	addi.d	$a2, $a2, 12
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 24
	bnez	$a4, .LBB6_19
.LBB6_20:                               # %for.end115.us
                                        #   in Loop: Header=BB6_17 Depth=1
	sub.d	$a0, $fp, $a0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fa1, $fa0
	fstx.d	$fa0, $s2, $s6
	slli.d	$a0, $a1, 4
	alsl.d	$a0, $a1, $a0, 3
	fldx.d	$fa1, $s4, $a0
	fdiv.d	$fa0, $fa0, $fa1
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB6_15
# %bb.21:                               # %cond.end148.us
                                        #   in Loop: Header=BB6_17 Depth=1
	move	$s3, $s8
	pcaddu18i	$ra, %call36(log10)
	jirl	$ra, $ra, 0
	vldi	$vr1, -988
	fmul.d	$fa0, $fa0, $fa1
	fcmp.cule.d	$fcc0, $fa0, $fs1
	fstx.d	$fa0, $s1, $s6
	bcnez	$fcc0, .LBB6_23
# %bb.22:                               # %if.then159.us
                                        #   in Loop: Header=BB6_17 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	fld.d	$fa1, $a0, 0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	fadd.d	$fa1, $fa0, $fa1
	fst.d	$fa1, $a0, 0
.LBB6_23:                               #   in Loop: Header=BB6_17 Depth=1
	move	$s8, $s3
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	ori	$t1, $zero, 12
	b	.LBB6_16
.LBB6_24:                               # %for.end176
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	addi.w	$a1, $a4, 0
	ori	$a3, $zero, 2
	blt	$a1, $a3, .LBB6_47
.LBB6_25:                               # %if.then179
	fld.d	$fa0, $s8, 0
	bstrpick.d	$a1, $a4, 31, 0
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s8, 0
	bge	$a0, $a3, .LBB6_48
	b	.LBB6_49
.LBB6_26:                               # %for.cond67.for.inc174_crit_edge.us
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 48
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 92
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 3
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	addi.d	$s4, $a0, 336
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	addi.d	$fp, $a0, 184
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	addi.d	$s1, $a0, 336
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 4
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 8
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	movgr2fr.d	$fs1, $zero
	ori	$a0, $zero, 0
	lu32i.d	$a0, -131072
	lu52i.d	$a0, $a0, -1021
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$t1, $zero, 12
	move	$a0, $s3
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	b	.LBB6_29
	.p2align	4, , 16
.LBB6_27:                               # %cond.end148.thread.us.1
                                        #   in Loop: Header=BB6_29 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	stx.d	$a0, $s1, $s6
	vldi	$vr0, -834
.LBB6_28:                               # %if.end162.us.1
                                        #   in Loop: Header=BB6_29 Depth=1
	fld.d	$fa1, $s8, 0
	fadd.d	$fa1, $fa0, $fa1
	fst.d	$fa1, $s8, 0
	fld.d	$fa1, $s7, 0
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc0
	fst.d	$fa0, $s7, 0
	move	$a0, $s0
	beq	$s2, $t1, .LBB6_36
.LBB6_29:                               # %for.body70.us.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_31 Depth 2
	move	$a1, $s2
	addi.d	$s2, $s2, 1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	alsl.d	$a2, $s2, $a2, 2
	ld.w	$s0, $a2, 92
	slli.d	$s6, $a1, 3
	fmov.d	$fa1, $fs1
	bge	$a0, $s0, .LBB6_32
# %bb.30:                               # %for.body98.us.preheader.1
                                        #   in Loop: Header=BB6_29 Depth=1
	alsl.d	$a2, $a1, $s6, 2
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ldx.w	$a2, $a3, $a2
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	sll.w	$a2, $a2, $a3
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	sub.w	$a2, $a3, $a2
	slli.d	$a2, $a2, 3
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	fldx.d	$fa0, $a3, $a2
	sub.d	$a2, $s0, $a0
	slli.d	$a3, $a0, 3
	alsl.d	$a3, $a0, $a3, 2
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	add.d	$a3, $a4, $a3
	slli.d	$a4, $a0, 4
	alsl.d	$a4, $a0, $a4, 3
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	add.d	$a4, $a5, $a4
	fmov.d	$fa1, $fs1
	.p2align	4, , 16
.LBB6_31:                               # %for.body98.us.1
                                        #   Parent Loop BB6_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $a3, 0
	fld.d	$fa2, $a4, 0
	slli.d	$a5, $a5, 3
	fldx.d	$fa3, $s5, $a5
	fabs.d	$fa2, $fa2
	fneg.d	$fa3, $fa3
	fmadd.d	$fa2, $fa3, $fa0, $fa2
	fmadd.d	$fa1, $fa2, $fa2, $fa1
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 12
	addi.d	$a4, $a4, 24
	bnez	$a2, .LBB6_31
.LBB6_32:                               # %for.end115.us.1
                                        #   in Loop: Header=BB6_29 Depth=1
	sub.d	$a0, $s0, $a0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fa1, $fa0
	fstx.d	$fa0, $s4, $s6
	slli.d	$a0, $a1, 4
	alsl.d	$a0, $a1, $a0, 3
	fldx.d	$fa1, $fp, $a0
	fdiv.d	$fa0, $fa0, $fa1
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB6_27
# %bb.33:                               # %cond.end148.us.1
                                        #   in Loop: Header=BB6_29 Depth=1
	pcaddu18i	$ra, %call36(log10)
	jirl	$ra, $ra, 0
	vldi	$vr1, -988
	fmul.d	$fa0, $fa0, $fa1
	fcmp.cule.d	$fcc0, $fa0, $fs1
	fstx.d	$fa0, $s1, $s6
	bcnez	$fcc0, .LBB6_35
# %bb.34:                               # %if.then159.us.1
                                        #   in Loop: Header=BB6_29 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	fld.d	$fa1, $a0, 0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	fadd.d	$fa1, $fa0, $fa1
	fst.d	$fa1, $a0, 0
.LBB6_35:                               #   in Loop: Header=BB6_29 Depth=1
	ori	$t1, $zero, 12
	b	.LBB6_28
.LBB6_36:                               # %for.cond67.for.inc174_crit_edge.us.1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 52
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 96
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 3
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	addi.d	$a5, $a0, 504
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	addi.d	$s4, $a0, 192
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	addi.d	$fp, $a0, 504
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	addi.d	$s1, $a0, 8
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 16
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	movgr2fr.d	$fs1, $zero
	ori	$a0, $zero, 0
	lu32i.d	$a0, -131072
	lu52i.d	$a0, $a0, -1021
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ori	$a6, $zero, 12
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	b	.LBB6_39
	.p2align	4, , 16
.LBB6_37:                               # %cond.end148.thread.us.2
                                        #   in Loop: Header=BB6_39 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	stx.d	$a0, $fp, $s0
	vldi	$vr0, -834
.LBB6_38:                               # %if.end162.us.2
                                        #   in Loop: Header=BB6_39 Depth=1
	fld.d	$fa1, $s8, 0
	fadd.d	$fa1, $fa0, $fa1
	fst.d	$fa1, $s8, 0
	fld.d	$fa1, $s7, 0
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc0
	fst.d	$fa0, $s7, 0
	move	$s3, $s6
	beq	$s2, $a6, .LBB6_46
.LBB6_39:                               # %for.body70.us.2
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_41 Depth 2
	move	$a0, $s2
	addi.d	$s2, $s2, 1
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	alsl.d	$a1, $s2, $a1, 2
	ld.w	$s6, $a1, 92
	slli.d	$s0, $a0, 3
	fmov.d	$fa1, $fs1
	bge	$s3, $s6, .LBB6_42
# %bb.40:                               # %for.body98.us.preheader.2
                                        #   in Loop: Header=BB6_39 Depth=1
	alsl.d	$a1, $a0, $s0, 2
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	ldx.w	$a1, $a2, $a1
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	sll.w	$a1, $a1, $a2
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	add.d	$a1, $a2, $a1
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	sub.w	$a1, $a2, $a1
	slli.d	$a1, $a1, 3
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	fldx.d	$fa0, $a2, $a1
	sub.d	$a1, $s6, $s3
	slli.d	$a2, $s3, 3
	alsl.d	$a2, $s3, $a2, 2
	add.d	$a2, $s1, $a2
	slli.d	$a3, $s3, 4
	alsl.d	$a3, $s3, $a3, 3
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	add.d	$a3, $a4, $a3
	fmov.d	$fa1, $fs1
	.p2align	4, , 16
.LBB6_41:                               # %for.body98.us.2
                                        #   Parent Loop BB6_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a4, $a2, 0
	fld.d	$fa2, $a3, 0
	slli.d	$a4, $a4, 3
	fldx.d	$fa3, $s5, $a4
	fabs.d	$fa2, $fa2
	fneg.d	$fa3, $fa3
	fmadd.d	$fa2, $fa3, $fa0, $fa2
	fmadd.d	$fa1, $fa2, $fa2, $fa1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 12
	addi.d	$a3, $a3, 24
	bnez	$a1, .LBB6_41
.LBB6_42:                               # %for.end115.us.2
                                        #   in Loop: Header=BB6_39 Depth=1
	sub.d	$a1, $s6, $s3
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fa1, $fa0
	fstx.d	$fa0, $a5, $s0
	slli.d	$a1, $a0, 4
	alsl.d	$a0, $a0, $a1, 3
	fldx.d	$fa1, $s4, $a0
	fdiv.d	$fa0, $fa0, $fa1
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB6_37
# %bb.43:                               # %cond.end148.us.2
                                        #   in Loop: Header=BB6_39 Depth=1
	move	$s3, $a5
	pcaddu18i	$ra, %call36(log10)
	jirl	$ra, $ra, 0
	vldi	$vr1, -988
	fmul.d	$fa0, $fa0, $fa1
	fcmp.cule.d	$fcc0, $fa0, $fs1
	fstx.d	$fa0, $fp, $s0
	bcnez	$fcc0, .LBB6_45
# %bb.44:                               # %if.then159.us.2
                                        #   in Loop: Header=BB6_39 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	fld.d	$fa1, $a0, 0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	fadd.d	$fa1, $fa0, $fa1
	fst.d	$fa1, $a0, 0
.LBB6_45:                               #   in Loop: Header=BB6_39 Depth=1
	move	$a5, $s3
	ori	$a6, $zero, 12
	b	.LBB6_38
.LBB6_46:                               # %for.cond67.for.inc174_crit_edge.us.2
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a0, 1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	sub.d	$a0, $a1, $a0
	addi.w	$a4, $a0, 36
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	addi.w	$a1, $a4, 0
	ori	$a3, $zero, 2
	bge	$a1, $a3, .LBB6_25
.LBB6_47:                               # %if.end182
	blt	$a0, $a3, .LBB6_49
.LBB6_48:                               # %if.then185
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	fld.d	$fa0, $a1, 0
	bstrpick.d	$a2, $a0, 31, 0
	movgr2fr.d	$fa1, $a2
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a1, 0
.LBB6_49:                               # %if.end188
	fld.d	$fs1, $sp, 184                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 192                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 272                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 280                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 288
	ret
.Lfunc_end6:
	.size	calc_noise1, .Lfunc_end6-calc_noise1
                                        # -- End function
	.globl	quant_compare                   # -- Begin function quant_compare
	.p2align	5
	.type	quant_compare,@function
quant_compare:                          # @quant_compare
# %bb.0:                                # %entry
	beqz	$a0, .LBB7_5
# %bb.1:                                # %if.end
	fcmp.clt.d	$fcc0, $fa5, $fa2
	addi.d	$a1, $a0, -3
	ori	$a2, $zero, 3
	fcmp.clt.d	$fcc1, $fa3, $fa0
	bltu	$a2, $a1, .LBB7_14
# %bb.2:                                # %if.end
	slli.d	$a0, $a1, 2
	pcalau12i	$a1, %pc_hi20(.LJTI7_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI7_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB7_3:                                # %if.end23.thread
	vldi	$vr0, -1024
	fadd.d	$fa0, $fa2, $fa0
	fcmp.clt.d	$fcc0, $fa5, $fa0
.LBB7_4:                                # %if.end135
	movcf2gr	$a0, $fcc1
	movcf2gr	$a1, $fcc0
	and	$a0, $a0, $a1
	ret
.LBB7_5:                                # %if.end.thread
	slt	$a0, $a2, $a1
	xor	$a1, $a2, $a1
	fcmp.cle.d	$fcc0, $fa4, $fa1
	sltui	$a1, $a1, 1
	movcf2gr	$a2, $fcc0
	and	$a1, $a1, $a2
	or	$a0, $a0, $a1
	ret
.LBB7_6:                                # %if.then96
	fcmp.ceq.d	$fcc0, $fa4, $fa1
	fcmp.clt.d	$fcc2, $fa4, $fa1
	movcf2gr	$a0, $fcc1
	movcf2gr	$a1, $fcc0
	and	$a0, $a0, $a1
	movcf2gr	$a1, $fcc2
	or	$a0, $a1, $a0
	ret
.LBB7_7:                                # %if.then112
	fcmp.clt.d	$fcc1, $fa4, $fa1
	ori	$a0, $zero, 1
	bcnez	$fcc1, .LBB7_13
# %bb.8:                                # %lor.rhs115
	fcmp.ceq.d	$fcc1, $fa4, $fa1
	fcmp.cune.d	$fcc2, $fa4, $fa1
	movcf2gr	$a0, $fcc1
	bcnez	$fcc2, .LBB7_13
# %bb.9:                                # %lor.rhs115
	bcnez	$fcc0, .LBB7_13
# %bb.10:                               # %lor.rhs121
	fcmp.ceq.d	$fcc0, $fa5, $fa2
	fcmp.cle.d	$fcc1, $fa3, $fa0
	b	.LBB7_4
.LBB7_11:                               # %if.then26
	vldi	$vr6, -1024
	fcmp.cule.d	$fcc0, $fa2, $fa6
	ori	$a0, $zero, 1
	bcnez	$fcc0, .LBB7_15
# %bb.12:                               # %if.then26
	movgr2fr.d	$fa6, $zero
	fcmp.cle.d	$fcc0, $fa5, $fa6
	bceqz	$fcc0, .LBB7_15
.LBB7_13:                               # %if.end135
	ret
.LBB7_14:
	addi.d	$a1, $a0, -1
	sltui	$a1, $a1, 1
	movcf2gr	$a2, $fcc0
	and	$a1, $a1, $a2
	addi.d	$a0, $a0, -2
	sltui	$a0, $a0, 1
	movcf2gr	$a2, $fcc1
	maskeqz	$a2, $a2, $a0
	masknez	$a0, $a1, $a0
	or	$a0, $a2, $a0
	ret
.LBB7_15:                               # %lor.lhs.false
	vldi	$vr6, -1024
	fadd.d	$fa6, $fa2, $fa6
	fcmp.cule.d	$fcc1, $fa0, $fa3
	fcmp.cule.d	$fcc0, $fa6, $fa5
	bcnez	$fcc1, .LBB7_19
# %bb.16:                               # %lor.lhs.false
	bcnez	$fcc0, .LBB7_19
# %bb.17:                               # %lor.lhs.false
	movgr2fr.d	$fa6, $zero
	fcmp.cule.d	$fcc1, $fa6, $fa2
	bcnez	$fcc1, .LBB7_19
# %bb.18:                               # %lor.lhs.false
	fcmp.cle.d	$fcc1, $fa5, $fa6
	bcnez	$fcc1, .LBB7_13
.LBB7_19:                               # %lor.lhs.false43
	fadd.d	$fa0, $fa0, $fa1
	movgr2fr.d	$fa6, $zero
	bcnez	$fcc0, .LBB7_23
# %bb.20:                               # %lor.lhs.false43
	fcmp.cule.d	$fcc0, $fa2, $fa6
	bcnez	$fcc0, .LBB7_23
# %bb.21:                               # %lor.lhs.false43
	fcmp.cule.d	$fcc0, $fa0, $fa3
	bcnez	$fcc0, .LBB7_23
# %bb.22:                               # %lor.lhs.false43
	fcmp.cle.d	$fcc0, $fa5, $fa6
	bcnez	$fcc0, .LBB7_13
.LBB7_23:                               # %lor.lhs.false57
	fcmp.cule.d	$fcc0, $fa5, $fa6
	fadd.d	$fa3, $fa3, $fa4
	bcnez	$fcc0, .LBB7_27
# %bb.24:                               # %lor.lhs.false57
	fcmp.cule.d	$fcc1, $fa0, $fa3
	bcnez	$fcc1, .LBB7_27
# %bb.25:                               # %lor.lhs.false57
	vldi	$vr6, -800
	fcmp.cule.d	$fcc1, $fa2, $fa6
	bcnez	$fcc1, .LBB7_27
# %bb.26:                               # %lor.lhs.false57
	vldi	$vr6, -912
	fadd.d	$fa6, $fa2, $fa6
	fcmp.clt.d	$fcc1, $fa5, $fa6
	bcnez	$fcc1, .LBB7_13
.LBB7_27:                               # %lor.rhs72
	move	$a0, $zero
	bcnez	$fcc0, .LBB7_13
# %bb.28:                               # %lor.rhs72
	vldi	$vr6, -784
	fcmp.cule.d	$fcc0, $fa2, $fa6
	bcnez	$fcc0, .LBB7_13
# %bb.29:                               # %lor.rhs72
	vldi	$vr6, -904
	fadd.d	$fa2, $fa2, $fa6
	fcmp.cule.d	$fcc0, $fa2, $fa5
	bcnez	$fcc0, .LBB7_13
# %bb.30:                               # %land.rhs82
	fadd.d	$fa2, $fa4, $fa3
	fadd.d	$fa0, $fa1, $fa0
	fcmp.clt.d	$fcc0, $fa2, $fa0
	movcf2gr	$a0, $fcc0
	ret
.Lfunc_end7:
	.size	quant_compare, .Lfunc_end7-quant_compare
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI7_0:
	.word	.LBB7_3-.LJTI7_0
	.word	.LBB7_11-.LJTI7_0
	.word	.LBB7_6-.LJTI7_0
	.word	.LBB7_7-.LJTI7_0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3, 0x0                          # -- Begin function amp_scalefac_bands
.LCPI8_0:
	.dword	0x3ffae89f995ad3ae              # double 1.6817928305074292
	.dword	0x3ff4bfdad5362a27              # double 1.2968395546510096
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI8_1:
	.dword	0xc08c200000000000              # double -900
.LCPI8_2:
	.dword	0x3ff0cccccccccccd              # double 1.05
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI8_3:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.text
	.globl	amp_scalefac_bands
	.p2align	5
	.type	amp_scalefac_bands,@function
amp_scalefac_bands:                     # @amp_scalefac_bands
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	ld.w	$a5, $a1, 68
	ld.w	$a4, $a1, 80
	sltui	$a6, $a5, 1
	pcalau12i	$a5, %pc_hi20(.LCPI8_1)
	fld.d	$fa1, $a5, %pc_lo12(.LCPI8_1)
	beqz	$a4, .LBB8_3
# %bb.1:                                # %for.body.preheader
	bstrpick.d	$a5, $a4, 31, 0
	move	$a7, $a3
	.p2align	4, , 16
.LBB8_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a7, 0
	fcmp.clt.d	$fcc0, $fa1, $fa0
	fsel	$fa1, $fa1, $fa0, $fcc0
	addi.d	$a5, $a5, -1
	addi.d	$a7, $a7, 8
	bnez	$a5, .LBB8_2
.LBB8_3:                                # %for.end
	ld.w	$a5, $a1, 84
	slli.d	$a6, $a6, 3
	pcalau12i	$a7, %pc_hi20(.LCPI8_0)
	ori	$t0, $zero, 11
	addi.d	$a7, $a7, %pc_lo12(.LCPI8_0)
	bltu	$t0, $a5, .LBB8_6
# %bb.4:                                # %for.cond10.preheader.preheader
	alsl.d	$t0, $a5, $a3, 3
	addi.d	$t0, $t0, 336
	addi.d	$t1, $a5, 1
	ori	$t2, $zero, 12
	.p2align	4, , 16
.LBB8_5:                                # %for.cond10.preheader
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $t0, -168
	fld.d	$fa2, $t0, 0
	fcmp.clt.d	$fcc0, $fa1, $fa0
	fld.d	$fa3, $t0, 168
	fsel	$fa0, $fa1, $fa0, $fcc0
	fcmp.clt.d	$fcc0, $fa0, $fa2
	fsel	$fa0, $fa0, $fa2, $fcc0
	fcmp.clt.d	$fcc0, $fa0, $fa3
	fsel	$fa1, $fa0, $fa3, $fcc0
	bstrpick.d	$t3, $t1, 31, 0
	addi.d	$t0, $t0, 8
	addi.d	$t1, $t1, 1
	bne	$t3, $t2, .LBB8_5
.LBB8_6:                                # %for.end32
	pcalau12i	$t0, %pc_hi20(.LCPI8_2)
	fld.d	$fa2, $t0, %pc_lo12(.LCPI8_2)
	fldx.d	$fa0, $a7, $a6
	fmul.d	$fa1, $fa1, $fa2
	movgr2fr.d	$fa2, $zero
	fmin.d	$fa1, $fa1, $fa2
	beqz	$a4, .LBB8_20
# %bb.7:                                # %for.body42.preheader
	move	$a4, $zero
	pcalau12i	$a5, %got_pc_hi20(scalefac_band)
	ld.d	$a5, $a5, %got_pc_lo12(scalefac_band)
	xvreplve0.d	$xr2, $xr0
	addi.d	$a6, $a0, 32
	ori	$a7, $zero, 8
	b	.LBB8_10
	.p2align	4, , 16
.LBB8_8:                                # %for.body42.for.inc67_crit_edge
                                        #   in Loop: Header=BB8_10 Depth=1
	addi.d	$a4, $a4, 1
.LBB8_9:                                # %for.inc67
                                        #   in Loop: Header=BB8_10 Depth=1
	ld.wu	$t0, $a1, 80
	bgeu	$a4, $t0, .LBB8_19
.LBB8_10:                               # %for.body42
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_15 Depth 2
                                        #     Child Loop BB8_18 Depth 2
	slli.d	$t0, $a4, 3
	fldx.d	$fa3, $a3, $t0
	fcmp.clt.d	$fcc0, $fa1, $fa3
	bceqz	$fcc0, .LBB8_8
# %bb.11:                               # %if.then47
                                        #   in Loop: Header=BB8_10 Depth=1
	slli.d	$t0, $a4, 2
	ldx.w	$t1, $a2, $t0
	addi.d	$t1, $t1, 1
	stx.w	$t1, $a2, $t0
	ldx.w	$t4, $a5, $t0
	addi.d	$a4, $a4, 1
	slli.d	$t0, $a4, 2
	ldx.w	$t0, $a5, $t0
	bge	$t4, $t0, .LBB8_9
# %bb.12:                               # %for.body59.preheader
                                        #   in Loop: Header=BB8_10 Depth=1
	sub.d	$t2, $t0, $t4
	bgeu	$t2, $a7, .LBB8_14
# %bb.13:                               #   in Loop: Header=BB8_10 Depth=1
	move	$t1, $t4
	b	.LBB8_17
.LBB8_14:                               # %vector.ph
                                        #   in Loop: Header=BB8_10 Depth=1
	move	$t3, $t2
	bstrins.d	$t3, $zero, 2, 0
	add.d	$t1, $t3, $t4
	alsl.d	$t4, $t4, $a6, 3
	move	$t5, $t3
	.p2align	4, , 16
.LBB8_15:                               # %vector.body
                                        #   Parent Loop BB8_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr3, $t4, -32
	xvld	$xr4, $t4, 0
	xvfmul.d	$xr3, $xr2, $xr3
	xvfmul.d	$xr4, $xr2, $xr4
	xvst	$xr3, $t4, -32
	xvst	$xr4, $t4, 0
	addi.d	$t5, $t5, -8
	addi.d	$t4, $t4, 64
	bnez	$t5, .LBB8_15
# %bb.16:                               # %middle.block
                                        #   in Loop: Header=BB8_10 Depth=1
	beq	$t2, $t3, .LBB8_9
.LBB8_17:                               # %for.body59.preheader183
                                        #   in Loop: Header=BB8_10 Depth=1
	alsl.d	$t2, $t1, $a0, 3
	sub.d	$t0, $t0, $t1
	.p2align	4, , 16
.LBB8_18:                               # %for.body59
                                        #   Parent Loop BB8_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa3, $t2, 0
	fmul.d	$fa3, $fa0, $fa3
	fst.d	$fa3, $t2, 0
	addi.d	$t0, $t0, -1
	addi.d	$t2, $t2, 8
	bnez	$t0, .LBB8_18
	b	.LBB8_9
.LBB8_19:                               # %for.cond70.preheader.loopexit
	ld.w	$a5, $a1, 84
.LBB8_20:                               # %for.cond70.preheader
	ori	$a6, $zero, 12
	bgeu	$a5, $a6, .LBB8_63
# %bb.21:                               # %for.body76.lr.ph
	addi.d	$a7, $a2, 88
	addi.d	$t0, $a3, 168
	pcalau12i	$a4, %got_pc_hi20(scalefac_band)
	ld.d	$a4, $a4, %got_pc_lo12(scalefac_band)
	xvreplve0.d	$xr4, $xr0
	pcalau12i	$t1, %pc_hi20(.LCPI8_3)
	xvld	$xr2, $t1, %pc_lo12(.LCPI8_3)
	addi.d	$a4, $a4, 92
	ori	$t1, $zero, 4
	xvrepli.d	$xr3, 24
	b	.LBB8_24
	.p2align	4, , 16
.LBB8_22:                               # %for.body76.for.inc106_crit_edge
                                        #   in Loop: Header=BB8_24 Depth=1
	addi.d	$a5, $a5, 1
.LBB8_23:                               # %for.inc106
                                        #   in Loop: Header=BB8_24 Depth=1
	beq	$a5, $a6, .LBB8_33
.LBB8_24:                               # %for.body76
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_29 Depth 2
                                        #     Child Loop BB8_32 Depth 2
	slli.d	$t2, $a5, 3
	fldx.d	$fa5, $t0, $t2
	fcmp.clt.d	$fcc0, $fa1, $fa5
	bceqz	$fcc0, .LBB8_22
# %bb.25:                               # %if.then83
                                        #   in Loop: Header=BB8_24 Depth=1
	alsl.d	$t2, $a5, $t2, 2
	ldx.w	$t3, $a7, $t2
	addi.d	$t3, $t3, 1
	stx.w	$t3, $a7, $t2
	slli.d	$t2, $a5, 2
	ldx.w	$t6, $a4, $t2
	addi.d	$a5, $a5, 1
	slli.d	$t2, $a5, 2
	ldx.w	$t2, $a4, $t2
	bge	$t6, $t2, .LBB8_23
# %bb.26:                               # %for.body96.preheader
                                        #   in Loop: Header=BB8_24 Depth=1
	sub.d	$t4, $t2, $t6
	bgeu	$t4, $t1, .LBB8_28
# %bb.27:                               #   in Loop: Header=BB8_24 Depth=1
	move	$t3, $t6
	b	.LBB8_31
.LBB8_28:                               # %vector.ph125
                                        #   in Loop: Header=BB8_24 Depth=1
	move	$t5, $t4
	bstrins.d	$t5, $zero, 1, 0
	add.d	$t3, $t5, $t6
	xvreplgr2vr.d	$xr5, $t6
	xvadd.d	$xr5, $xr5, $xr2
	move	$t6, $t5
	.p2align	4, , 16
.LBB8_29:                               # %vector.body132
                                        #   Parent Loop BB8_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvmul.d	$xr6, $xr5, $xr3
	xvpickve2gr.d	$t7, $xr6, 0
	add.d	$t8, $a0, $t7
	xvpickve2gr.d	$fp, $xr6, 1
	add.d	$s0, $a0, $fp
	xvpickve2gr.d	$s1, $xr6, 2
	add.d	$s2, $a0, $s1
	xvpickve2gr.d	$s3, $xr6, 3
	fldx.d	$fa6, $a0, $t7
	fldx.d	$fa7, $a0, $fp
	fldx.d	$ft0, $a0, $s1
	fldx.d	$ft1, $a0, $s3
	add.d	$t7, $a0, $s3
	xvinsve0.d	$xr6, $xr7, 1
	xvinsve0.d	$xr6, $xr8, 2
	xvinsve0.d	$xr6, $xr9, 3
	xvfmul.d	$xr6, $xr4, $xr6
	xvstelm.d	$xr6, $t8, 0, 0
	xvstelm.d	$xr6, $s0, 0, 1
	xvstelm.d	$xr6, $s2, 0, 2
	xvstelm.d	$xr6, $t7, 0, 3
	addi.d	$t6, $t6, -4
	xvaddi.du	$xr5, $xr5, 4
	bnez	$t6, .LBB8_29
# %bb.30:                               # %middle.block135
                                        #   in Loop: Header=BB8_24 Depth=1
	beq	$t4, $t5, .LBB8_23
.LBB8_31:                               # %for.body96.preheader182
                                        #   in Loop: Header=BB8_24 Depth=1
	slli.d	$t4, $t3, 4
	alsl.d	$t4, $t3, $t4, 3
	add.d	$t4, $a0, $t4
	sub.d	$t2, $t2, $t3
	.p2align	4, , 16
.LBB8_32:                               # %for.body96
                                        #   Parent Loop BB8_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa5, $t4, 0
	fmul.d	$fa5, $fa0, $fa5
	fst.d	$fa5, $t4, 0
	addi.d	$t2, $t2, -1
	addi.d	$t4, $t4, 24
	bnez	$t2, .LBB8_32
	b	.LBB8_23
.LBB8_33:                               # %for.inc109
	ld.w	$a5, $a1, 84
	ori	$a6, $zero, 11
	bltu	$a6, $a5, .LBB8_63
# %bb.34:                               # %for.body76.lr.ph.1
	addi.d	$a6, $a3, 336
	addi.d	$a7, $a2, 92
	addi.d	$t0, $a0, 8
	xvreplve0.d	$xr4, $xr0
	ori	$t1, $zero, 16
	ori	$t2, $zero, 24
	ori	$t3, $zero, 12
	b	.LBB8_37
	.p2align	4, , 16
.LBB8_35:                               # %for.body76.1.for.inc106.1_crit_edge
                                        #   in Loop: Header=BB8_37 Depth=1
	addi.d	$a5, $a5, 1
.LBB8_36:                               # %for.inc106.1
                                        #   in Loop: Header=BB8_37 Depth=1
	beq	$a5, $t3, .LBB8_48
.LBB8_37:                               # %for.body76.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_46 Depth 2
                                        #     Child Loop BB8_42 Depth 2
	slli.d	$t4, $a5, 3
	fldx.d	$fa5, $a6, $t4
	fcmp.clt.d	$fcc0, $fa1, $fa5
	bceqz	$fcc0, .LBB8_35
# %bb.38:                               # %if.then83.1
                                        #   in Loop: Header=BB8_37 Depth=1
	alsl.d	$t4, $a5, $t4, 2
	ldx.w	$t5, $a7, $t4
	addi.d	$t5, $t5, 1
	stx.w	$t5, $a7, $t4
	slli.d	$t4, $a5, 2
	ldx.w	$t8, $a4, $t4
	addi.d	$a5, $a5, 1
	slli.d	$t4, $a5, 2
	ldx.w	$t4, $a4, $t4
	bge	$t8, $t4, .LBB8_36
# %bb.39:                               # %for.body96.preheader.1
                                        #   in Loop: Header=BB8_37 Depth=1
	sub.d	$t5, $t4, $t8
	bgeu	$t5, $t1, .LBB8_43
.LBB8_40:                               #   in Loop: Header=BB8_37 Depth=1
	move	$t6, $t8
.LBB8_41:                               # %for.body96.1.preheader
                                        #   in Loop: Header=BB8_37 Depth=1
	slli.d	$t5, $t6, 4
	alsl.d	$t5, $t6, $t5, 3
	add.d	$t5, $t0, $t5
	sub.d	$t4, $t4, $t6
	.p2align	4, , 16
.LBB8_42:                               # %for.body96.1
                                        #   Parent Loop BB8_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa5, $t5, 0
	fmul.d	$fa5, $fa0, $fa5
	fst.d	$fa5, $t5, 0
	addi.d	$t4, $t4, -1
	addi.d	$t5, $t5, 24
	bnez	$t4, .LBB8_42
	b	.LBB8_36
.LBB8_43:                               # %vector.scevcheck
                                        #   in Loop: Header=BB8_37 Depth=1
	nor	$t6, $t8, $zero
	add.d	$t6, $t6, $t4
	mul.d	$t7, $t8, $t2
	add.d	$t7, $t0, $t7
	mul.d	$fp, $t6, $t2
	add.d	$fp, $t7, $fp
	bltu	$fp, $t7, .LBB8_40
# %bb.44:                               # %vector.scevcheck
                                        #   in Loop: Header=BB8_37 Depth=1
	mulh.du	$t6, $t6, $t2
	sltu	$t6, $zero, $t6
	bnez	$t6, .LBB8_40
# %bb.45:                               # %vector.ph142
                                        #   in Loop: Header=BB8_37 Depth=1
	move	$t7, $t5
	bstrins.d	$t7, $zero, 1, 0
	add.d	$t6, $t7, $t8
	xvreplgr2vr.d	$xr5, $t8
	xvadd.d	$xr5, $xr5, $xr2
	move	$t8, $t7
	.p2align	4, , 16
.LBB8_46:                               # %vector.body150
                                        #   Parent Loop BB8_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvmul.d	$xr6, $xr5, $xr3
	xvpickve2gr.d	$fp, $xr6, 0
	add.d	$fp, $a0, $fp
	xvpickve2gr.d	$s0, $xr6, 1
	add.d	$s0, $a0, $s0
	xvpickve2gr.d	$s1, $xr6, 2
	add.d	$s1, $a0, $s1
	xvpickve2gr.d	$s2, $xr6, 3
	add.d	$s2, $a0, $s2
	fld.d	$fa6, $fp, 8
	fld.d	$fa7, $s0, 8
	fld.d	$ft0, $s1, 8
	fld.d	$ft1, $s2, 8
	xvinsve0.d	$xr6, $xr7, 1
	xvinsve0.d	$xr6, $xr8, 2
	xvinsve0.d	$xr6, $xr9, 3
	xvfmul.d	$xr6, $xr4, $xr6
	xvstelm.d	$xr6, $fp, 8, 0
	xvstelm.d	$xr6, $s0, 8, 1
	xvstelm.d	$xr6, $s1, 8, 2
	xvstelm.d	$xr6, $s2, 8, 3
	addi.d	$t8, $t8, -4
	xvaddi.du	$xr5, $xr5, 4
	bnez	$t8, .LBB8_46
# %bb.47:                               # %middle.block155
                                        #   in Loop: Header=BB8_37 Depth=1
	beq	$t5, $t7, .LBB8_36
	b	.LBB8_41
.LBB8_48:                               # %for.inc109.1
	ld.w	$a1, $a1, 84
	ori	$a5, $zero, 11
	bltu	$a5, $a1, .LBB8_63
# %bb.49:                               # %for.body76.lr.ph.2
	addi.d	$a3, $a3, 504
	addi.d	$a2, $a2, 96
	addi.d	$a5, $a0, 16
	xvreplve0.d	$xr4, $xr0
	ori	$a6, $zero, 16
	ori	$a7, $zero, 24
	ori	$t0, $zero, 12
	b	.LBB8_52
	.p2align	4, , 16
.LBB8_50:                               # %for.body76.2.for.inc106.2_crit_edge
                                        #   in Loop: Header=BB8_52 Depth=1
	addi.d	$a1, $a1, 1
.LBB8_51:                               # %for.inc106.2
                                        #   in Loop: Header=BB8_52 Depth=1
	beq	$a1, $t0, .LBB8_63
.LBB8_52:                               # %for.body76.2
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_61 Depth 2
                                        #     Child Loop BB8_57 Depth 2
	slli.d	$t1, $a1, 3
	fldx.d	$fa5, $a3, $t1
	fcmp.clt.d	$fcc0, $fa1, $fa5
	bceqz	$fcc0, .LBB8_50
# %bb.53:                               # %if.then83.2
                                        #   in Loop: Header=BB8_52 Depth=1
	alsl.d	$t1, $a1, $t1, 2
	ldx.w	$t2, $a2, $t1
	addi.d	$t2, $t2, 1
	stx.w	$t2, $a2, $t1
	slli.d	$t1, $a1, 2
	ldx.w	$t5, $a4, $t1
	addi.d	$a1, $a1, 1
	slli.d	$t1, $a1, 2
	ldx.w	$t1, $a4, $t1
	bge	$t5, $t1, .LBB8_51
# %bb.54:                               # %for.body96.preheader.2
                                        #   in Loop: Header=BB8_52 Depth=1
	sub.d	$t2, $t1, $t5
	bgeu	$t2, $a6, .LBB8_58
.LBB8_55:                               #   in Loop: Header=BB8_52 Depth=1
	move	$t3, $t5
.LBB8_56:                               # %for.body96.2.preheader
                                        #   in Loop: Header=BB8_52 Depth=1
	slli.d	$t2, $t3, 4
	alsl.d	$t2, $t3, $t2, 3
	add.d	$t2, $a5, $t2
	sub.d	$t1, $t1, $t3
	.p2align	4, , 16
.LBB8_57:                               # %for.body96.2
                                        #   Parent Loop BB8_52 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa5, $t2, 0
	fmul.d	$fa5, $fa0, $fa5
	fst.d	$fa5, $t2, 0
	addi.d	$t1, $t1, -1
	addi.d	$t2, $t2, 24
	bnez	$t1, .LBB8_57
	b	.LBB8_51
.LBB8_58:                               # %vector.scevcheck158
                                        #   in Loop: Header=BB8_52 Depth=1
	nor	$t3, $t5, $zero
	add.d	$t3, $t3, $t1
	mul.d	$t4, $t5, $a7
	add.d	$t4, $a5, $t4
	mul.d	$t6, $t3, $a7
	add.d	$t6, $t4, $t6
	bltu	$t6, $t4, .LBB8_55
# %bb.59:                               # %vector.scevcheck158
                                        #   in Loop: Header=BB8_52 Depth=1
	mulh.du	$t3, $t3, $a7
	sltu	$t3, $zero, $t3
	bnez	$t3, .LBB8_55
# %bb.60:                               # %vector.ph166
                                        #   in Loop: Header=BB8_52 Depth=1
	move	$t4, $t2
	bstrins.d	$t4, $zero, 1, 0
	add.d	$t3, $t4, $t5
	xvreplgr2vr.d	$xr5, $t5
	xvadd.d	$xr5, $xr5, $xr2
	move	$t5, $t4
	.p2align	4, , 16
.LBB8_61:                               # %vector.body174
                                        #   Parent Loop BB8_52 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvmul.d	$xr6, $xr5, $xr3
	xvpickve2gr.d	$t6, $xr6, 0
	add.d	$t6, $a0, $t6
	xvpickve2gr.d	$t7, $xr6, 1
	add.d	$t7, $a0, $t7
	xvpickve2gr.d	$t8, $xr6, 2
	add.d	$t8, $a0, $t8
	xvpickve2gr.d	$fp, $xr6, 3
	add.d	$fp, $a0, $fp
	fld.d	$fa6, $t6, 16
	fld.d	$fa7, $t7, 16
	fld.d	$ft0, $t8, 16
	fld.d	$ft1, $fp, 16
	xvinsve0.d	$xr6, $xr7, 1
	xvinsve0.d	$xr6, $xr8, 2
	xvinsve0.d	$xr6, $xr9, 3
	xvfmul.d	$xr6, $xr4, $xr6
	xvstelm.d	$xr6, $t6, 16, 0
	xvstelm.d	$xr6, $t7, 16, 1
	xvstelm.d	$xr6, $t8, 16, 2
	xvstelm.d	$xr6, $fp, 16, 3
	addi.d	$t5, $t5, -4
	xvaddi.du	$xr5, $xr5, 4
	bnez	$t5, .LBB8_61
# %bb.62:                               # %middle.block179
                                        #   in Loop: Header=BB8_52 Depth=1
	beq	$t2, $t4, .LBB8_51
	b	.LBB8_56
.LBB8_63:                               # %for.end111
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end8:
	.size	amp_scalefac_bands, .Lfunc_end8-amp_scalefac_bands
                                        # -- End function
	.type	outer_loop.OldValue,@object     # @outer_loop.OldValue
	.data
	.p2align	2, 0x0
outer_loop.OldValue:
	.word	180                             # 0xb4
	.word	180                             # 0xb4
	.size	outer_loop.OldValue, 8

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym nr_of_sfb_block
