	.file	"loadbins.c"
	.text
	.globl	loadbins                        # -- Begin function loadbins
	.p2align	5
	.type	loadbins,@function
loadbins:                               # @loadbins
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
	pcalau12i	$a1, %got_pc_hi20(numBinsX)
	ld.d	$t4, $a1, %got_pc_lo12(numBinsX)
	ld.w	$a7, $t4, 0
	pcalau12i	$a1, %got_pc_hi20(numBinsY)
	ld.d	$s4, $a1, %got_pc_lo12(numBinsY)
	bltz	$a7, .LBB0_13
# %bb.1:                                # %entry
	ld.w	$a5, $s4, 0
	bltz	$a5, .LBB0_13
# %bb.2:                                # %for.cond1.preheader.preheader
	pcalau12i	$a1, %got_pc_hi20(blockarray)
	ld.d	$a1, $a1, %got_pc_lo12(blockarray)
	pcalau12i	$a2, %got_pc_hi20(numcells)
	ld.d	$a2, $a2, %got_pc_lo12(numcells)
	move	$t0, $zero
	addi.w	$a3, $zero, -4
	addi.w	$a4, $zero, -1
	b	.LBB0_5
	.p2align	4, , 16
.LBB0_3:                                # %for.inc14.loopexit349
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.w	$a7, $t4, 0
.LBB0_4:                                # %for.inc14
                                        #   in Loop: Header=BB0_5 Depth=1
	addi.d	$t0, $a6, 1
	bge	$a6, $a7, .LBB0_13
.LBB0_5:                                # %for.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
                                        #       Child Loop BB0_11 Depth 3
	move	$a6, $t0
	bltz	$a5, .LBB0_4
# %bb.6:                                # %for.cond4.preheader.lr.ph
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.w	$t0, $a2, 0
	blt	$t0, $a3, .LBB0_4
# %bb.7:                                # %for.cond4.preheader.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a7, $a1, 0
	move	$t2, $zero
	alsl.d	$a7, $a6, $a7, 3
	b	.LBB0_9
	.p2align	4, , 16
.LBB0_8:                                # %for.inc11
                                        #   in Loop: Header=BB0_9 Depth=2
	addi.d	$t2, $t1, 1
	bge	$t1, $a5, .LBB0_3
.LBB0_9:                                # %for.cond4.preheader
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_11 Depth 3
	move	$t1, $t2
	blt	$t0, $a3, .LBB0_8
# %bb.10:                               # %for.body6.lr.ph
                                        #   in Loop: Header=BB0_9 Depth=2
	ld.d	$a5, $a7, 0
	slli.d	$t0, $t1, 3
	ldx.d	$a5, $a5, $t0
	move	$t2, $a4
	.p2align	4, , 16
.LBB0_11:                               # %for.body6
                                        #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.w	$zero, $a5, 0
	ld.w	$t0, $a2, 0
	addi.w	$t3, $t0, 4
	addi.d	$t2, $t2, 1
	addi.d	$a5, $a5, 4
	blt	$t2, $t3, .LBB0_11
# %bb.12:                               # %for.inc11.loopexit
                                        #   in Loop: Header=BB0_9 Depth=2
	ld.w	$a5, $s4, 0
	b	.LBB0_8
.LBB0_13:                               # %for.end16
	pcalau12i	$a1, %got_pc_hi20(blockl)
	ld.d	$a1, $a1, %got_pc_lo12(blockl)
	ld.w	$s3, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(blockr)
	ld.d	$a1, $a1, %got_pc_lo12(blockr)
	pcalau12i	$a2, %got_pc_hi20(blockb)
	ld.d	$a2, $a2, %got_pc_lo12(blockb)
	pcalau12i	$a3, %got_pc_hi20(blockt)
	ld.d	$a3, $a3, %got_pc_lo12(blockt)
	ld.w	$t2, $a1, 0
	ld.w	$s6, $a2, 0
	ld.w	$s1, $a3, 0
	sub.w	$t3, $t2, $s3
	bstrpick.d	$a1, $t3, 31, 31
	add.w	$a1, $t3, $a1
	srai.d	$t0, $a1, 1
	sub.w	$s7, $s1, $s6
	bstrpick.d	$a1, $s7, 31, 31
	add.w	$a1, $s7, $a1
	srai.d	$s5, $a1, 1
	slt	$a1, $s7, $t3
	masknez	$a2, $s7, $a1
	maskeqz	$a1, $t3, $a1
	or	$s0, $a1, $a2
	st.d	$t4, $sp, 112                   # 8-byte Folded Spill
	beqz	$a0, .LBB0_15
# %bb.14:                               # %if.then
	ori	$a0, $zero, 224
	st.d	$t0, $sp, 56                    # 8-byte Folded Spill
	st.d	$t2, $sp, 24                    # 8-byte Folded Spill
	st.d	$t3, $sp, 40                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(cellarray)
	pcalau12i	$a2, %got_pc_hi20(numcells)
	ld.d	$a2, $a2, %got_pc_lo12(numcells)
	pcalau12i	$a3, %got_pc_hi20(numpads)
	ld.d	$a3, $a3, %got_pc_lo12(numpads)
	ld.d	$a1, $a1, %got_pc_lo12(cellarray)
	ld.w	$a2, $a2, 0
	ld.w	$a3, $a3, 0
	ld.d	$a1, $a1, 0
	move	$fp, $a0
	add.w	$a0, $a3, $a2
	alsl.d	$s8, $a0, $a1, 3
	st.d	$fp, $s8, 8
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 60
	st.w	$zero, $fp, 68
	bstrpick.d	$a0, $s0, 31, 31
	add.w	$a0, $s0, $a0
	srai.d	$s2, $a0, 1
	sub.d	$a0, $s3, $s2
	st.w	$a0, $fp, 12
	add.d	$a0, $s1, $s6
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a0, $a0, $a1
	st.d	$s6, $sp, 32                    # 8-byte Folded Spill
	srai.d	$s6, $a0, 1
	st.w	$s6, $fp, 16
	ori	$a0, $zero, 104
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $fp, 152
	st.d	$zero, $a0, 88
	ori	$a0, $zero, 104
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 0
	st.d	$zero, $a0, 0
	st.d	$zero, $a0, 88
	st.d	$zero, $fp, 160
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	vst	$vr0, $fp, 168
	xvrepli.b	$xr0, 0
	xvst	$xr0, $sp, 64                   # 32-byte Folded Spill
	xvst	$xr0, $fp, 184
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	sub.d	$s3, $zero, $s2
	st.w	$s3, $s0, 56
	st.w	$s3, $a0, 56
	st.w	$s2, $s0, 60
	st.w	$s2, $a0, 60
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	sub.d	$s1, $zero, $s5
	st.w	$s1, $s0, 64
	st.w	$s1, $a0, 64
	sub.d	$s7, $s7, $s5
	st.w	$s7, $s0, 68
	st.w	$s7, $a0, 68
	ori	$a0, $zero, 224
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$a0, $s8, 16
	move	$s5, $s8
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 60
	st.w	$zero, $fp, 68
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	add.d	$a0, $s2, $s8
	st.w	$a0, $fp, 12
	st.w	$s6, $fp, 16
	ori	$a0, $zero, 104
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $fp, 152
	st.d	$zero, $a0, 88
	ori	$a0, $zero, 104
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 0
	st.d	$zero, $a0, 0
	st.d	$zero, $a0, 88
	st.d	$zero, $fp, 160
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $fp, 168
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $fp, 184
	st.w	$s3, $s0, 56
	st.w	$s3, $a0, 56
	st.w	$s2, $s0, 60
	st.w	$s2, $a0, 60
	st.w	$s1, $s0, 64
	st.w	$s1, $a0, 64
	st.w	$s7, $s0, 68
	st.w	$s7, $a0, 68
	ori	$a0, $zero, 224
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$s7, $s5
	st.d	$a0, $s5, 24
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 60
	st.w	$zero, $fp, 68
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	add.d	$a0, $s8, $a0
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a0, $a0, $a1
	srai.d	$s1, $a0, 1
	st.w	$s1, $fp, 12
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $s2
	st.w	$a0, $fp, 16
	ori	$a0, $zero, 104
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $fp, 152
	st.d	$zero, $a0, 88
	ori	$a0, $zero, 104
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 0
	st.d	$zero, $a0, 0
	st.d	$zero, $a0, 88
	st.d	$zero, $fp, 160
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $fp, 168
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $fp, 184
	st.w	$s3, $s0, 64
	st.w	$s3, $a0, 64
	st.w	$s2, $s0, 68
	st.w	$s2, $a0, 68
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	sub.d	$s6, $zero, $a1
	st.w	$s6, $s0, 56
	st.w	$s6, $a0, 56
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	sub.d	$s5, $a2, $a1
	st.w	$s5, $s0, 60
	st.w	$s5, $a0, 60
	ori	$a0, $zero, 224
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $s7, 32
	ori	$a0, $zero, 1
	st.w	$a0, $s0, 60
	st.w	$zero, $s0, 68
	st.w	$s1, $s0, 12
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	add.d	$a0, $s2, $a0
	st.w	$a0, $s0, 16
	ori	$a0, $zero, 104
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$a0, $s0, 152
	st.d	$zero, $a0, 88
	ori	$a0, $zero, 104
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$t4, $sp, 112                   # 8-byte Folded Reload
	st.d	$a0, $fp, 0
	st.d	$zero, $a0, 0
	st.d	$zero, $a0, 88
	st.d	$zero, $s0, 160
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $s0, 168
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $s0, 184
	b	.LBB0_16
.LBB0_15:                               # %if.else
	pcalau12i	$a0, %got_pc_hi20(cellarray)
	pcalau12i	$a1, %got_pc_hi20(numcells)
	ld.d	$a1, $a1, %got_pc_lo12(numcells)
	pcalau12i	$a2, %got_pc_hi20(numpads)
	ld.d	$a2, $a2, %got_pc_lo12(numpads)
	ld.d	$a0, $a0, %got_pc_lo12(cellarray)
	ld.w	$a1, $a1, 0
	ld.w	$a2, $a2, 0
	ld.d	$a0, $a0, 0
	add.w	$a1, $a2, $a1
	alsl.d	$a0, $a1, $a0, 3
	ld.d	$a1, $a0, 8
	bstrpick.d	$a2, $s0, 31, 31
	add.w	$a2, $s0, $a2
	srai.d	$s2, $a2, 1
	sub.d	$a2, $s3, $s2
	st.w	$a2, $a1, 12
	add.d	$a2, $s1, $s6
	ld.d	$a3, $a1, 152
	bstrpick.d	$a4, $a2, 31, 31
	add.w	$a2, $a2, $a4
	srai.d	$a2, $a2, 1
	ld.d	$a4, $a3, 0
	st.w	$a2, $a1, 16
	move	$t1, $s3
	sub.d	$s3, $zero, $s2
	st.w	$s3, $a3, 56
	st.w	$s3, $a4, 56
	st.w	$s2, $a3, 60
	st.w	$s2, $a4, 60
	sub.d	$a1, $zero, $s5
	ld.d	$a5, $a0, 16
	st.w	$a1, $a3, 64
	st.w	$a1, $a4, 64
	sub.d	$a6, $s7, $s5
	ld.d	$a7, $a5, 152
	st.w	$a6, $a3, 68
	st.w	$a6, $a4, 68
	add.d	$a3, $s2, $t2
	ld.d	$a4, $a7, 0
	st.w	$a3, $a5, 12
	st.w	$a2, $a5, 16
	st.w	$s3, $a7, 56
	st.w	$s3, $a4, 56
	st.w	$s2, $a7, 60
	st.w	$s2, $a4, 60
	st.w	$a1, $a7, 64
	st.w	$a1, $a4, 64
	st.w	$a6, $a7, 68
	ld.d	$a1, $a0, 24
	st.w	$a6, $a4, 68
	add.d	$a2, $t2, $t1
	bstrpick.d	$a3, $a2, 31, 31
	ld.d	$a4, $a1, 152
	add.w	$a2, $a2, $a3
	srai.d	$a2, $a2, 1
	st.w	$a2, $a1, 12
	ld.d	$a3, $a4, 0
	sub.d	$a5, $s6, $s2
	st.w	$a5, $a1, 16
	st.w	$s3, $a4, 64
	st.w	$s3, $a3, 64
	st.w	$s2, $a4, 68
	st.w	$s2, $a3, 68
	sub.d	$s6, $zero, $t0
	ld.d	$a1, $a0, 32
	st.w	$s6, $a4, 56
	st.w	$s6, $a3, 56
	sub.d	$s5, $t3, $t0
	ld.d	$fp, $a1, 152
	st.w	$s5, $a4, 60
	st.w	$s5, $a3, 60
	st.w	$a2, $a1, 12
	ld.d	$a0, $fp, 0
	add.d	$a2, $s2, $s1
	st.w	$a2, $a1, 16
.LBB0_16:                               # %if.end
	st.w	$s3, $fp, 64
	st.w	$s3, $a0, 64
	pcalau12i	$a1, %got_pc_hi20(numcells)
	ld.d	$a7, $a1, %got_pc_lo12(numcells)
	pcalau12i	$a1, %got_pc_hi20(numpads)
	ld.d	$t0, $a1, %got_pc_lo12(numpads)
	st.w	$s2, $fp, 68
	st.w	$s2, $a0, 68
	ld.w	$a1, $a7, 0
	ld.w	$a2, $t0, 0
	st.w	$s6, $fp, 56
	st.w	$s6, $a0, 56
	st.w	$s5, $fp, 60
	add.w	$a3, $a2, $a1
	addi.w	$a4, $zero, -3
	st.w	$s5, $a0, 60
	bge	$a3, $a4, .LBB0_18
.LBB0_17:                               # %for.end492
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
.LBB0_18:                               # %for.body396.preheader
	move	$s7, $zero
	pcalau12i	$a0, %got_pc_hi20(cellarray)
	ld.d	$t1, $a0, %got_pc_lo12(cellarray)
	pcalau12i	$a0, %got_pc_hi20(binOffsetX)
	ld.d	$t2, $a0, %got_pc_lo12(binOffsetX)
	pcalau12i	$a0, %got_pc_hi20(binWidthX)
	ld.d	$t3, $a0, %got_pc_lo12(binWidthX)
	pcalau12i	$a0, %got_pc_hi20(bucket)
	ld.d	$t5, $a0, %got_pc_lo12(bucket)
	ori	$s8, $zero, 1
	ori	$s5, $zero, 8
	ori	$s6, $zero, 1
	st.d	$a7, $sp, 96                    # 8-byte Folded Spill
	st.d	$t0, $sp, 64                    # 8-byte Folded Spill
	st.d	$t1, $sp, 56                    # 8-byte Folded Spill
	st.d	$t2, $sp, 48                    # 8-byte Folded Spill
	st.d	$t3, $sp, 40                    # 8-byte Folded Spill
	st.d	$t5, $sp, 32                    # 8-byte Folded Spill
	b	.LBB0_21
	.p2align	4, , 16
.LBB0_19:                               # %if.end485
                                        #   in Loop: Header=BB0_21 Depth=1
	ld.d	$a0, $a2, 0
	ld.w	$a1, $a0, 0
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 0
	slli.d	$a1, $a1, 2
	stx.w	$s6, $a0, $a1
	ld.w	$a1, $a7, 0
	ld.w	$a2, $t0, 0
.LBB0_20:                               # %for.inc490
                                        #   in Loop: Header=BB0_21 Depth=1
	add.w	$a3, $a2, $a1
	addi.w	$a0, $a3, 4
	addi.d	$s6, $s6, 1
	addi.d	$s5, $s5, 8
	bge	$s7, $a0, .LBB0_17
.LBB0_21:                               # %for.body396
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$s7, $s7, 1
	bge	$a1, $s7, .LBB0_23
# %bb.22:                               # %for.body396
                                        #   in Loop: Header=BB0_21 Depth=1
	bge	$a3, $s7, .LBB0_20
.LBB0_23:                               # %if.end401
                                        #   in Loop: Header=BB0_21 Depth=1
	ld.d	$a0, $t1, 0
	ldx.d	$a0, $a0, $s5
	ld.w	$a2, $a0, 56
	alsl.d	$a2, $a2, $a0, 3
	ld.d	$s3, $a2, 152
	ld.w	$a2, $a0, 12
	ld.w	$a3, $s3, 56
	ld.w	$a4, $s3, 60
	ld.w	$a0, $a0, 16
	ld.w	$a5, $s3, 64
	ld.w	$a6, $s3, 68
	add.w	$s2, $a3, $a2
	add.w	$s1, $a4, $a2
	add.w	$s0, $a5, $a0
	add.w	$fp, $a6, $a0
	blt	$a1, $s7, .LBB0_27
# %bb.24:                               # %if.then420
                                        #   in Loop: Header=BB0_21 Depth=1
	pcalau12i	$a0, %got_pc_hi20(finalShot)
	ld.d	$a0, $a0, %got_pc_lo12(finalShot)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB0_26
# %bb.25:                               # %if.else431
                                        #   in Loop: Header=BB0_21 Depth=1
	ld.w	$a0, $s3, 40
	ld.w	$a1, $s3, 44
	ld.w	$a2, $s3, 48
	ld.w	$a3, $s3, 52
	sub.d	$s2, $s2, $a0
	add.d	$s1, $a1, $s1
	sub.d	$s0, $s0, $a2
	add.d	$fp, $a3, $fp
	b	.LBB0_27
.LBB0_26:                               # %if.then422
                                        #   in Loop: Header=BB0_21 Depth=1
	fld.d	$fa0, $s3, 8
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(wireestx)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s3, 16
	sub.w	$s2, $s2, $a0
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(wireestx)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s3, 24
	add.w	$s1, $a0, $s1
	move	$a0, $s0
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(wireesty)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s3, 32
	sub.d	$s0, $s0, $a0
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(wireesty)
	jirl	$ra, $ra, 0
	ld.d	$t5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 112                   # 8-byte Folded Reload
	add.d	$fp, $a0, $fp
	.p2align	4, , 16
.LBB0_27:                               # %if.end437
                                        #   in Loop: Header=BB0_21 Depth=1
	ld.w	$a1, $t2, 0
	ld.w	$a2, $t3, 0
	ld.w	$a3, $t4, 0
	sub.w	$a0, $s2, $a1
	div.w	$a0, $a0, $a2
	slti	$a4, $a0, 1
	slt	$a5, $a0, $a3
	maskeqz	$a0, $a0, $a5
	masknez	$a5, $a3, $a5
	or	$a0, $a0, $a5
	masknez	$a0, $a0, $a4
	maskeqz	$a4, $s8, $a4
	or	$a0, $a4, $a0
	sub.w	$a1, $s1, $a1
	div.w	$a1, $a1, $a2
	slt	$a2, $a3, $a1
	slt	$a4, $s8, $a1
	maskeqz	$a1, $a1, $a4
	masknez	$a4, $s8, $a4
	or	$a1, $a1, $a4
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	move	$a2, $t5
	bne	$a0, $a1, .LBB0_19
# %bb.28:                               # %if.then457
                                        #   in Loop: Header=BB0_21 Depth=1
	pcalau12i	$a1, %got_pc_hi20(binOffsetY)
	ld.d	$a1, $a1, %got_pc_lo12(binOffsetY)
	pcalau12i	$a2, %got_pc_hi20(binWidthY)
	ld.d	$a2, $a2, %got_pc_lo12(binWidthY)
	ld.w	$a3, $a1, 0
	ld.w	$a2, $a2, 0
	ld.w	$a4, $s4, 0
	sub.w	$a1, $s0, $a3
	div.w	$a1, $a1, $a2
	slti	$a5, $a1, 1
	slt	$a6, $a1, $a4
	maskeqz	$a1, $a1, $a6
	masknez	$a6, $a4, $a6
	or	$a1, $a1, $a6
	masknez	$a1, $a1, $a5
	maskeqz	$a5, $s8, $a5
	or	$a1, $a5, $a1
	sub.w	$a3, $fp, $a3
	div.w	$a2, $a3, $a2
	slt	$a3, $a4, $a2
	slt	$a5, $s8, $a2
	maskeqz	$a2, $a2, $a5
	masknez	$a5, $s8, $a5
	or	$a2, $a2, $a5
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a3, $a3, $a2
	move	$a2, $t5
	bne	$a1, $a3, .LBB0_19
# %bb.29:                               # %if.then477
                                        #   in Loop: Header=BB0_21 Depth=1
	pcalau12i	$a2, %got_pc_hi20(blockarray)
	ld.d	$a2, $a2, %got_pc_lo12(blockarray)
	ld.d	$a2, $a2, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a2, $a0
	alsl.d	$a2, $a1, $a0, 3
	b	.LBB0_19
.Lfunc_end0:
	.size	loadbins, .Lfunc_end0-loadbins
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
