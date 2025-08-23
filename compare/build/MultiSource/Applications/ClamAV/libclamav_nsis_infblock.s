	.file	"libclamav_nsis_infblock.c"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function nsis_inflate
.LCPI0_0:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
	.dword	6                               # 0x6
	.dword	7                               # 0x7
.LCPI0_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.text
	.globl	nsis_inflate
	.p2align	5
	.type	nsis_inflate,@function
nsis_inflate:                           # @nsis_inflate
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -496
	st.d	$ra, $sp, 488                   # 8-byte Folded Spill
	st.d	$fp, $sp, 480                   # 8-byte Folded Spill
	st.d	$s0, $sp, 472                   # 8-byte Folded Spill
	st.d	$s1, $sp, 464                   # 8-byte Folded Spill
	st.d	$s2, $sp, 456                   # 8-byte Folded Spill
	st.d	$s3, $sp, 448                   # 8-byte Folded Spill
	st.d	$s4, $sp, 440                   # 8-byte Folded Spill
	st.d	$s5, $sp, 432                   # 8-byte Folded Spill
	st.d	$s6, $sp, 424                   # 8-byte Folded Spill
	st.d	$s7, $sp, 416                   # 8-byte Folded Spill
	st.d	$s8, $sp, 408                   # 8-byte Folded Spill
	move	$fp, $a0
	lu12i.w	$a0, 9
	ori	$a0, $a0, 3032
	add.d	$s4, $fp, $a0
	ld.d	$s5, $s4, 16
	ld.d	$a0, $s4, 8
	bgeu	$s5, $a0, .LBB0_2
# %bb.1:                                # %cond.true
	nor	$a1, $s5, $zero
	add.w	$s1, $a0, $a1
	b	.LBB0_3
.LBB0_2:                                # %cond.false
	ld.d	$a0, $s4, 0
	sub.w	$s1, $a0, $s5
.LBB0_3:                                # %cond.end
	ld.d	$ra, $fp, 0
	ld.w	$s2, $fp, 8
	ld.d	$s3, $fp, 1360
	ld.w	$s8, $fp, 1356
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3032
	add.d	$s0, $fp, $a0
	nor	$a0, $s0, $zero
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	addi.d	$s7, $fp, 56
	addi.d	$a0, $fp, 1336
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a0, $fp, 1344
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	addi.d	$a0, $fp, 1368
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LJTI0_0)
	addi.d	$a0, $a0, %pc_lo12(.LJTI0_0)
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	ori	$t0, $zero, 2
	xvrepli.d	$xr10, 143
	xvrepli.d	$xr11, 280
	xvrepli.w	$xr12, 8
	xvrepli.d	$xr13, -144
	xvrepli.d	$xr14, 112
	xvrepli.d	$xr15, -136
	xvrepli.w	$xr16, 9
	xvrepli.w	$xr0, 5
	xvst	$xr0, $sp, 48                   # 32-byte Folded Spill
	vrepli.w	$vr0, 5
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	xvst	$xr10, $sp, 320                 # 32-byte Folded Spill
	xvst	$xr11, $sp, 288                 # 32-byte Folded Spill
	xvst	$xr12, $sp, 256                 # 32-byte Folded Spill
	xvst	$xr13, $sp, 224                 # 32-byte Folded Spill
	xvst	$xr14, $sp, 192                 # 32-byte Folded Spill
	xvst	$xr15, $sp, 160                 # 32-byte Folded Spill
	xvst	$xr16, $sp, 128                 # 32-byte Folded Spill
.LBB0_4:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_69 Depth 2
                                        #     Child Loop BB0_98 Depth 2
                                        #     Child Loop BB0_44 Depth 2
                                        #     Child Loop BB0_104 Depth 2
                                        #       Child Loop BB0_106 Depth 3
                                        #       Child Loop BB0_113 Depth 3
                                        #       Child Loop BB0_124 Depth 3
                                        #       Child Loop BB0_128 Depth 3
                                        #     Child Loop BB0_73 Depth 2
                                        #     Child Loop BB0_148 Depth 2
                                        #     Child Loop BB0_164 Depth 2
                                        #     Child Loop BB0_53 Depth 2
                                        #     Child Loop BB0_60 Depth 2
                                        #     Child Loop BB0_12 Depth 2
                                        #       Child Loop BB0_18 Depth 3
                                        #     Child Loop BB0_35 Depth 2
                                        #     Child Loop BB0_23 Depth 2
                                        #     Child Loop BB0_138 Depth 2
	ld.w	$a0, $fp, 40
	ori	$a1, $zero, 15
	bltu	$a1, $a0, .LBB0_274
# %bb.5:                                # %for.cond
                                        #   in Loop: Header=BB0_4 Depth=1
	slli.d	$a0, $a0, 2
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	add.d	$a1, $a1, $a0
	pcalau12i	$a0, %pc_hi20(border)
	addi.d	$a0, $a0, %pc_lo12(border)
	jr	$a1
.LBB0_6:                                # %for.cond.sw.bb782_crit_edge
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.bu	$a0, $fp, 72
	ld.d	$a1, $fp, 80
	b	.LBB0_136
.LBB0_7:                                # %for.cond.sw.bb1113_crit_edge
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.w	$a3, $fp, 60
	sub.d	$a0, $s5, $s0
	addi.w	$a1, $a0, 0
	bgeu	$a1, $a3, .LBB0_90
.LBB0_8:                                # %cond.true1125
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a1, $s4, 0
	ld.w	$a2, $fp, 48
	beqz	$a2, .LBB0_91
.LBB0_9:                                # %while.body1151.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	bstrpick.d	$a2, $a3, 31, 0
	sub.d	$a0, $a0, $a2
	add.d	$s6, $a1, $a0
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	b	.LBB0_12
	.p2align	4, , 16
.LBB0_10:                               # %inflate_flush.exit1280
                                        #   in Loop: Header=BB0_12 Depth=2
	ld.d	$a2, $s4, 16
	st.d	$s7, $s4, 8
	sltu	$a3, $a2, $s7
	sub.w	$a4, $a1, $a2
	nor	$a5, $a2, $zero
	add.w	$a5, $a5, $s7
	masknez	$a4, $a4, $a3
	maskeqz	$a3, $a5, $a3
	or	$a3, $a3, $a4
	xor	$a4, $a1, $a2
	sltu	$a4, $zero, $a4
	xor	$a5, $s7, $s0
	sltui	$a5, $a5, 1
	or	$a4, $a5, $a4
	sltu	$a5, $s0, $s7
	ld.d	$a6, $sp, 360                   # 8-byte Folded Reload
	add.w	$a6, $s7, $a6
	sub.w	$a7, $a1, $s0
	masknez	$a7, $a7, $a5
	maskeqz	$a5, $a6, $a5
	or	$a5, $a5, $a7
	masknez	$a6, $s0, $a4
	maskeqz	$a2, $a2, $a4
	masknez	$a5, $a5, $a4
	maskeqz	$a3, $a3, $a4
	or	$s1, $a3, $a5
	or	$s5, $a2, $a6
	ori	$t0, $zero, 2
	xvld	$xr10, $sp, 320                 # 32-byte Folded Reload
	xvld	$xr11, $sp, 288                 # 32-byte Folded Reload
	xvld	$xr12, $sp, 256                 # 32-byte Folded Reload
	xvld	$xr13, $sp, 224                 # 32-byte Folded Reload
	xvld	$xr14, $sp, 192                 # 32-byte Folded Reload
	xvld	$xr15, $sp, 160                 # 32-byte Folded Reload
	xvld	$xr16, $sp, 128                 # 32-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	beqz	$s1, .LBB0_222
.LBB0_11:                               # %if.end1273
                                        #   in Loop: Header=BB0_12 Depth=2
	ld.b	$a0, $s6, 0
	st.b	$a0, $s5, 0
	ld.d	$a1, $s4, 0
	addi.d	$a2, $s6, 1
	addi.d	$a0, $s5, 1
	addi.w	$s1, $s1, -1
	xor	$a1, $a2, $a1
	sltui	$a1, $a1, 1
	ld.w	$a3, $fp, 48
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $s0, $a1
	or	$s6, $a1, $a2
	addi.w	$a1, $a3, -1
	st.w	$a1, $fp, 48
	move	$s5, $a0
	beqz	$a1, .LBB0_92
.LBB0_12:                               # %while.body1151
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_18 Depth 3
	bnez	$s1, .LBB0_11
# %bb.13:                               # %if.then1155
                                        #   in Loop: Header=BB0_12 Depth=2
	ld.d	$a0, $s4, 0
	ld.d	$s7, $s4, 8
	bne	$s5, $a0, .LBB0_16
# %bb.14:                               # %if.then1155
                                        #   in Loop: Header=BB0_12 Depth=2
	beq	$s7, $s0, .LBB0_16
# %bb.15:                               # %if.end1191
                                        #   in Loop: Header=BB0_12 Depth=2
	sltu	$a1, $s0, $s7
	ld.d	$a2, $sp, 360                   # 8-byte Folded Reload
	add.w	$a2, $s7, $a2
	sub.w	$a3, $s5, $s0
	masknez	$a3, $a3, $a1
	maskeqz	$a1, $a2, $a1
	or	$s1, $a1, $a3
	move	$s5, $s0
	bnez	$s1, .LBB0_11
.LBB0_16:                               # %if.then1195
                                        #   in Loop: Header=BB0_12 Depth=2
	st.d	$s5, $s4, 16
	sltu	$a1, $s5, $s7
	masknez	$a2, $s5, $a1
	ld.w	$a3, $fp, 32
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a2
	sub.w	$a0, $a0, $s7
	sltu	$a1, $a3, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a0
	ld.d	$a0, $fp, 24
	sub.d	$a2, $a3, $a1
	st.w	$a2, $fp, 32
	bstrpick.d	$s5, $a1, 31, 0
	move	$a1, $s7
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	ld.d	$a1, $s4, 0
	add.d	$a0, $a0, $s5
	add.d	$s7, $s7, $s5
	b	.LBB0_18
	.p2align	4, , 16
.LBB0_17:                               # %again.i1262
                                        #   in Loop: Header=BB0_18 Depth=3
	sltu	$a2, $a1, $s0
	masknez	$a1, $a1, $a2
	ld.w	$a3, $fp, 32
	maskeqz	$a2, $s7, $a2
	or	$a1, $a2, $a1
	sub.w	$a1, $a1, $s0
	sltu	$a2, $a3, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	sub.d	$a2, $a3, $a1
	st.w	$a2, $fp, 32
	bstrpick.d	$s5, $a1, 31, 0
	move	$a1, $s0
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	ld.d	$a1, $s4, 0
	add.d	$a0, $a0, $s5
	add.d	$s7, $s0, $s5
.LBB0_18:                               # %if.then1195
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.d	$a0, $fp, 24
	bne	$s7, $a1, .LBB0_10
# %bb.19:                               # %if.then.peel.i1258
                                        #   in Loop: Header=BB0_18 Depth=3
	ld.d	$a1, $s4, 16
	bne	$a1, $s7, .LBB0_17
# %bb.20:                               # %again.i1262.sink.split
                                        #   in Loop: Header=BB0_18 Depth=3
	st.d	$s0, $s4, 16
	move	$a1, $s0
	b	.LBB0_17
.LBB0_21:                               # %for.cond.sw.bb960_crit_edge
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.w	$a1, $fp, 64
	addi.w	$a0, $s8, 0
	bgeu	$a0, $a1, .LBB0_82
.LBB0_22:                               # %while.body969.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$a3, $s8
	move	$a4, $ra
	move	$a0, $s2
	.p2align	4, , 16
.LBB0_23:                               # %while.body969
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$a0, .LBB0_173
# %bb.24:                               # %if.end983
                                        #   in Loop: Header=BB0_23 Depth=2
	ld.bu	$a5, $a4, 0
	addi.w	$a0, $a0, -1
	addi.d	$a2, $a4, 1
	sll.d	$a4, $a5, $a3
	addi.w	$a3, $a3, 8
	or	$s3, $a4, $s3
	move	$a4, $a2
	bltu	$a3, $a1, .LBB0_23
	b	.LBB0_83
.LBB0_25:                               # %sw.bb1423
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.w	$a0, $s8, 0
	ori	$a1, $zero, 8
	bltu	$a0, $a1, .LBB0_27
# %bb.26:                               # %if.then1427
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.w	$s8, $s8, -8
	addi.w	$s2, $s2, 1
	addi.d	$ra, $ra, -1
.LBB0_27:                               # %sw.bb1435
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$s1, $ra
	ld.d	$s7, $s4, 8
	st.d	$s5, $s4, 16
	bgeu	$s5, $s7, .LBB0_29
# %bb.28:                               # %cond.false.peel.i1408
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$s5, $s4, 0
.LBB0_29:                               # %cond.end.peel.i1374
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.w	$a1, $fp, 32
	sub.w	$a0, $s5, $s7
	sltu	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a0
	ld.d	$a0, $fp, 24
	sub.d	$a1, $a1, $a2
	st.w	$a1, $fp, 32
	bstrpick.d	$s5, $a2, 31, 0
	move	$a1, $s7
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	ld.d	$a2, $s4, 0
	add.d	$a0, $a0, $s5
	add.d	$a1, $s7, $s5
	st.d	$a0, $fp, 24
	beq	$a1, $a2, .LBB0_79
# %bb.30:                               #   in Loop: Header=BB0_4 Depth=1
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
.LBB0_31:                               # %inflate_flush.exit1409
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$s5, $s4, 16
	st.d	$a1, $s4, 8
	ori	$t0, $zero, 2
	xvld	$xr10, $sp, 320                 # 32-byte Folded Reload
	xvld	$xr11, $sp, 288                 # 32-byte Folded Reload
	xvld	$xr12, $sp, 256                 # 32-byte Folded Reload
	xvld	$xr13, $sp, 224                 # 32-byte Folded Reload
	xvld	$xr14, $sp, 192                 # 32-byte Folded Reload
	xvld	$xr15, $sp, 160                 # 32-byte Folded Reload
	xvld	$xr16, $sp, 128                 # 32-byte Folded Reload
	move	$ra, $s1
	bne	$s5, $a1, .LBB0_234
# %bb.32:                               # %if.end1476
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.w	$a0, $fp, 1352
	sub.w	$s1, $a2, $s5
	st.w	$a0, $fp, 40
	ori	$a1, $zero, 8
	beq	$a0, $a1, .LBB0_4
	b	.LBB0_243
.LBB0_33:                               # %sw.bb899
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.w	$a0, $s7, 0
	addi.w	$a1, $s8, 0
	bgeu	$a1, $a0, .LBB0_80
# %bb.34:                               # %while.body908.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$a3, $s8
	move	$a1, $ra
	move	$a2, $s2
	.p2align	4, , 16
.LBB0_35:                               # %while.body908
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$a2, .LBB0_201
# %bb.36:                               # %if.end922
                                        #   in Loop: Header=BB0_35 Depth=2
	ld.bu	$a5, $a1, 0
	addi.w	$a2, $a2, -1
	addi.d	$a4, $a1, 1
	sll.d	$a1, $a5, $a3
	addi.w	$a3, $a3, 8
	or	$s3, $a1, $s3
	move	$a1, $a4
	bltu	$a3, $a0, .LBB0_35
	b	.LBB0_81
.LBB0_37:                               # %sw.bb145
                                        #   in Loop: Header=BB0_4 Depth=1
	beqz	$s2, .LBB0_244
# %bb.38:                               # %if.end160
                                        #   in Loop: Header=BB0_4 Depth=1
	bnez	$s1, .LBB0_159
# %bb.39:                               # %if.then164
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $s4, 0
	beq	$s5, $a0, .LBB0_161
.LBB0_40:                               # %if.then201
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$s6, $ra
	st.d	$s5, $s4, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(inflate_flush)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 16
	ld.d	$a1, $s4, 8
	bgeu	$a0, $a1, .LBB0_157
# %bb.41:                               # %cond.true210
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a3, $s4, 0
	nor	$a2, $a0, $zero
	add.w	$a2, $a1, $a2
	b	.LBB0_158
.LBB0_42:                               # %sw.bb389.split
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.wu	$a2, $fp, 48
	ld.wu	$a1, $fp, 52
	srli.d	$a2, $a2, 10
	addi.d	$a2, $a2, 4
	bltu	$a1, $a2, .LBB0_98
.LBB0_43:                               # %while.cond449.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$s6, $ra
	ori	$a2, $zero, 18
	ori	$a3, $zero, 19
	bltu	$a2, $a1, .LBB0_45
	.p2align	4, , 16
.LBB0_44:                               # %while.body454
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a2, $a1, 1
	st.w	$a2, $fp, 52
	ldx.b	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	stx.w	$zero, $s7, $a1
	ld.wu	$a1, $fp, 52
	bltu	$a1, $a3, .LBB0_44
.LBB0_45:                               # %while.end465
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a6, $sp, 104                   # 8-byte Folded Reload
	ori	$a0, $zero, 7
	st.w	$a0, $a6, 0
	st.w	$zero, $sp, 384
	ori	$a1, $zero, 19
	ori	$a2, $zero, 19
	addi.d	$a0, $sp, 384
	st.d	$a0, $sp, 0
	move	$a0, $s7
	move	$a3, $zero
	move	$a4, $zero
	ld.d	$a5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(huft_build)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_101
.LBB0_46:                               # %cleanup486
                                        #   in Loop: Header=BB0_4 Depth=1
	ori	$a0, $zero, 17
	st.w	$a0, $fp, 40
	ori	$t0, $zero, 2
	xvld	$xr10, $sp, 320                 # 32-byte Folded Reload
	xvld	$xr11, $sp, 288                 # 32-byte Folded Reload
	xvld	$xr12, $sp, 256                 # 32-byte Folded Reload
	xvld	$xr13, $sp, 224                 # 32-byte Folded Reload
	xvld	$xr14, $sp, 192                 # 32-byte Folded Reload
	xvld	$xr15, $sp, 160                 # 32-byte Folded Reload
	xvld	$xr16, $sp, 128                 # 32-byte Folded Reload
	move	$ra, $s6
	b	.LBB0_4
.LBB0_47:                               # %sw.bb1293
                                        #   in Loop: Header=BB0_4 Depth=1
	bnez	$s1, .LBB0_156
# %bb.48:                               # %if.then1297
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $s4, 0
	ld.d	$s7, $s4, 8
	bne	$s5, $a0, .LBB0_51
# %bb.49:                               # %if.then1297
                                        #   in Loop: Header=BB0_4 Depth=1
	beq	$s7, $s0, .LBB0_51
# %bb.50:                               # %if.end1333
                                        #   in Loop: Header=BB0_4 Depth=1
	sltu	$a1, $s0, $s7
	ld.d	$a2, $sp, 360                   # 8-byte Folded Reload
	add.w	$a2, $s7, $a2
	sub.w	$a3, $s5, $s0
	masknez	$a3, $a3, $a1
	maskeqz	$a1, $a2, $a1
	or	$s1, $a1, $a3
	move	$s5, $s0
	bnez	$s1, .LBB0_156
.LBB0_51:                               # %if.then1337
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$s6, $ra
	st.d	$s5, $s4, 16
	sltu	$a1, $s5, $s7
	masknez	$a2, $s5, $a1
	ld.w	$a3, $fp, 32
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a2
	sub.w	$a0, $a0, $s7
	sltu	$a1, $a3, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a0
	ld.d	$a0, $fp, 24
	sub.d	$a2, $a3, $a1
	st.w	$a2, $fp, 32
	bstrpick.d	$s5, $a1, 31, 0
	move	$a1, $s7
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	ld.d	$a2, $s4, 0
	add.d	$a0, $a0, $s5
	add.d	$a1, $s7, $s5
	b	.LBB0_53
	.p2align	4, , 16
.LBB0_52:                               # %again.i1348
                                        #   in Loop: Header=BB0_53 Depth=2
	sltu	$a3, $a2, $s0
	masknez	$a2, $a2, $a3
	ld.w	$a4, $fp, 32
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	sub.w	$a1, $a1, $s0
	sltu	$a2, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a4, $a2
	or	$a1, $a2, $a1
	sub.d	$a2, $a4, $a1
	st.w	$a2, $fp, 32
	bstrpick.d	$s5, $a1, 31, 0
	move	$a1, $s0
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	ld.d	$a2, $s4, 0
	add.d	$a0, $a0, $s5
	add.d	$a1, $s0, $s5
.LBB0_53:                               # %if.then1337
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.d	$a0, $fp, 24
	bne	$a1, $a2, .LBB0_155
# %bb.54:                               # %if.then.peel.i1344
                                        #   in Loop: Header=BB0_53 Depth=2
	ld.d	$a2, $s4, 16
	bne	$a2, $a1, .LBB0_52
# %bb.55:                               # %again.i1348.sink.split
                                        #   in Loop: Header=BB0_53 Depth=2
	st.d	$s0, $s4, 16
	move	$a2, $s0
	b	.LBB0_52
.LBB0_56:                               # %for.cond.sw.bb789_crit_edge
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.w	$a0, $fp, 64
	addi.w	$a1, $s8, 0
	bltu	$a1, $a0, .LBB0_137
.LBB0_57:                               #   in Loop: Header=BB0_4 Depth=1
	move	$a1, $s2
	move	$a2, $ra
	move	$a3, $s8
	ori	$a7, $zero, 6
	b	.LBB0_140
.LBB0_58:                               # %sw.bb1058
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.w	$a0, $s7, 0
	addi.w	$a1, $s8, 0
	bgeu	$a1, $a0, .LBB0_88
# %bb.59:                               # %while.body1067.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$a2, $s8
	move	$a3, $ra
	move	$a1, $s2
	.p2align	4, , 16
.LBB0_60:                               # %while.body1067
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$a1, .LBB0_208
# %bb.61:                               # %if.end1081
                                        #   in Loop: Header=BB0_60 Depth=2
	ld.bu	$a5, $a3, 0
	addi.w	$a1, $a1, -1
	addi.d	$a4, $a3, 1
	sll.d	$a3, $a5, $a2
	addi.w	$a2, $a2, 8
	or	$s3, $a3, $s3
	move	$a3, $a4
	bltu	$a2, $a0, .LBB0_60
	b	.LBB0_89
.LBB0_62:                               # %while.cond.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.w	$a0, $s8, 0
	bltu	$t0, $a0, .LBB0_65
# %bb.63:                               # %while.body.lr.ph
                                        #   in Loop: Header=BB0_4 Depth=1
	beqz	$s2, .LBB0_263
# %bb.64:                               # %if.end
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.bu	$a1, $ra, 0
	ori	$s8, $s8, 8
	addi.w	$s2, $s2, -1
	addi.d	$ra, $ra, 1
	sll.d	$a0, $a1, $a0
	or	$s3, $a0, $s3
.LBB0_65:                               # %while.end
                                        #   in Loop: Header=BB0_4 Depth=1
	andi	$a0, $s3, 1
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 15
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 8
	maskeqz	$a0, $a2, $a0
	bstrpick.d	$a2, $s3, 2, 1
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %pc_hi20(.LJTI0_1)
	addi.d	$a3, $a3, %pc_lo12(.LJTI0_1)
	ldx.w	$a2, $a3, $a2
	or	$a0, $a0, $a1
	srli.d	$s3, $s3, 3
	addi.w	$s8, $s8, -3
	add.d	$a1, $a3, $a2
	st.w	$a0, $fp, 1352
	jr	$a1
.LBB0_66:                               # %sw.bb40
                                        #   in Loop: Header=BB0_4 Depth=1
	andi	$a0, $s8, 7
	srl.d	$s3, $s3, $a0
	bstrins.d	$s8, $zero, 2, 0
	ori	$a0, $zero, 9
	st.w	$a0, $fp, 40
	b	.LBB0_4
.LBB0_67:                               # %while.cond324.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.w	$a1, $s8, 0
	ori	$a2, $zero, 13
	bltu	$a2, $a1, .LBB0_93
# %bb.68:                               # %while.body328.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	ori	$a4, $zero, 6
	.p2align	4, , 16
.LBB0_69:                               # %while.body328
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$s2, .LBB0_194
# %bb.70:                               # %if.end342
                                        #   in Loop: Header=BB0_69 Depth=2
	move	$a3, $a1
	ld.bu	$a1, $ra, 0
	addi.w	$s2, $s2, -1
	addi.d	$a2, $ra, 1
	sll.d	$a1, $a1, $a3
	or	$s3, $a1, $s3
	addi.d	$a1, $a3, 8
	addi.d	$s8, $s8, 8
	move	$ra, $a2
	bltu	$a3, $a4, .LBB0_69
	b	.LBB0_94
.LBB0_71:                               # %while.cond99.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.w	$a1, $s8, 0
	ori	$a0, $zero, 15
	bltu	$a0, $a1, .LBB0_75
# %bb.72:                               # %while.body103.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$a0, $ra
	.p2align	4, , 16
.LBB0_73:                               # %while.body103
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$s2, .LBB0_215
# %bb.74:                               # %if.end117
                                        #   in Loop: Header=BB0_73 Depth=2
	move	$a2, $a1
	ld.bu	$a1, $a0, 0
	addi.w	$s2, $s2, -1
	addi.d	$ra, $a0, 1
	sll.d	$a0, $a1, $a2
	or	$s3, $a0, $s3
	addi.d	$a1, $a2, 8
	addi.d	$s8, $s8, 8
	move	$a0, $ra
	ori	$a3, $zero, 8
	bltu	$a2, $a3, .LBB0_73
.LBB0_75:                               # %while.end130
                                        #   in Loop: Header=BB0_4 Depth=1
	bstrpick.d	$a1, $s3, 15, 0
	st.w	$a1, $fp, 48
	ori	$a0, $zero, 10
	bnez	$a1, .LBB0_77
# %bb.76:                               # %cond.false140
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.w	$a0, $fp, 1352
.LBB0_77:                               # %cond.end142
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$s8, $zero
	move	$s3, $zero
	st.w	$a0, $fp, 40
	b	.LBB0_4
.LBB0_78:                               # %for.cond.sw.bb491_crit_edge
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.w	$a1, $fp, 52
	b	.LBB0_103
.LBB0_79:                               # %if.then.peel.i1387
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a2, $s4, 16
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	bne	$a2, $a1, .LBB0_164
	b	.LBB0_163
.LBB0_80:                               #   in Loop: Header=BB0_4 Depth=1
	move	$a2, $s2
	move	$a4, $ra
	move	$a3, $s8
.LBB0_81:                               # %while.end935
                                        #   in Loop: Header=BB0_4 Depth=1
	bstrpick.d	$a5, $a0, 31, 0
	slli.d	$a1, $a5, 1
	pcalau12i	$a6, %pc_hi20(inflate_mask)
	addi.d	$a6, $a6, %pc_lo12(inflate_mask)
	ldx.hu	$a1, $a6, $a1
	ld.w	$a6, $fp, 48
	and	$a1, $a1, $s3
	add.d	$a1, $a1, $a6
	st.w	$a1, $fp, 48
	ld.bu	$a1, $fp, 73
	ld.d	$a6, $fp, 88
	srl.d	$s3, $s3, $a5
	sub.w	$s8, $a3, $a0
	st.w	$a1, $fp, 64
	st.d	$a6, $fp, 56
	ori	$a0, $zero, 3
	st.w	$a0, $fp, 40
	move	$s2, $a2
	move	$ra, $a4
	addi.w	$a0, $s8, 0
	bltu	$a0, $a1, .LBB0_22
.LBB0_82:                               #   in Loop: Header=BB0_4 Depth=1
	move	$a0, $s2
	move	$a2, $ra
	move	$a3, $s8
.LBB0_83:                               # %while.end996
                                        #   in Loop: Header=BB0_4 Depth=1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 1
	pcalau12i	$a4, %pc_hi20(inflate_mask)
	addi.d	$a4, $a4, %pc_lo12(inflate_mask)
	ldx.hu	$a1, $a4, $a1
	ld.d	$a4, $s7, 0
	and	$a1, $s3, $a1
	slli.d	$a5, $a1, 2
	alsl.d	$a1, $a1, $a4, 2
	ld.bu	$a6, $a1, 1
	ldx.bu	$a4, $a4, $a5
	srl.d	$s3, $s3, $a6
	andi	$a5, $a4, 16
	sub.w	$s8, $a3, $a6
	bnez	$a5, .LBB0_86
# %bb.84:                               # %if.end1040
                                        #   in Loop: Header=BB0_4 Depth=1
	andi	$a3, $a4, 64
	bnez	$a3, .LBB0_260
# %bb.85:                               # %if.then1045
                                        #   in Loop: Header=BB0_4 Depth=1
	st.w	$a4, $fp, 64
	ld.hu	$a3, $a1, 2
	alsl.d	$a1, $a3, $a1, 2
	st.d	$a1, $fp, 56
	b	.LBB0_87
.LBB0_86:                               # %if.then1030
                                        #   in Loop: Header=BB0_4 Depth=1
	andi	$a3, $a4, 15
	st.w	$a3, $fp, 56
	ld.hu	$a1, $a1, 2
	st.w	$a1, $fp, 60
	ori	$a1, $zero, 4
	st.w	$a1, $fp, 40
.LBB0_87:                               # %for.cond
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$s2, $a0
	move	$ra, $a2
	b	.LBB0_4
.LBB0_88:                               #   in Loop: Header=BB0_4 Depth=1
	move	$a1, $s2
	move	$a4, $ra
	move	$a2, $s8
.LBB0_89:                               # %while.end1094
                                        #   in Loop: Header=BB0_4 Depth=1
	bstrpick.d	$a5, $a0, 31, 0
	slli.d	$a3, $a5, 1
	pcalau12i	$a6, %pc_hi20(inflate_mask)
	addi.d	$a6, $a6, %pc_lo12(inflate_mask)
	ldx.hu	$a3, $a6, $a3
	ld.w	$a6, $fp, 60
	and	$a3, $a3, $s3
	add.w	$a3, $a3, $a6
	st.w	$a3, $fp, 60
	srl.d	$s3, $s3, $a5
	sub.w	$s8, $a2, $a0
	ori	$a0, $zero, 5
	st.w	$a0, $fp, 40
	move	$s2, $a1
	move	$ra, $a4
	sub.d	$a0, $s5, $s0
	addi.w	$a1, $a0, 0
	bltu	$a1, $a3, .LBB0_8
.LBB0_90:                               #   in Loop: Header=BB0_4 Depth=1
	move	$a0, $zero
	move	$a1, $s5
	ld.w	$a2, $fp, 48
	bnez	$a2, .LBB0_9
.LBB0_91:                               #   in Loop: Header=BB0_4 Depth=1
	move	$a0, $s5
.LBB0_92:                               # %while.end1291
                                        #   in Loop: Header=BB0_4 Depth=1
	st.w	$zero, $fp, 40
	move	$s5, $a0
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	b	.LBB0_4
.LBB0_93:                               #   in Loop: Header=BB0_4 Depth=1
	move	$a2, $ra
.LBB0_94:                               # %while.end355
                                        #   in Loop: Header=BB0_4 Depth=1
	bstrpick.d	$a1, $s3, 13, 0
	andi	$a3, $s3, 30
	st.w	$a1, $fp, 48
	ori	$a1, $zero, 30
	beq	$a3, $a1, .LBB0_259
# %bb.95:                               # %while.end355
                                        #   in Loop: Header=BB0_4 Depth=1
	andi	$a1, $s3, 960
	ori	$a3, $zero, 960
	beq	$a1, $a3, .LBB0_259
# %bb.96:                               # %sw.bb389.split.thread
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$a1, $zero
	srli.d	$s3, $s3, 14
	addi.d	$s8, $s8, -14
	st.w	$zero, $fp, 52
	ori	$a3, $zero, 12
	st.w	$a3, $fp, 40
	move	$ra, $a2
	b	.LBB0_98
	.p2align	4, , 16
.LBB0_97:                               # %while.end431
                                        #   in Loop: Header=BB0_98 Depth=2
	addi.d	$a2, $a1, 1
	st.w	$a2, $fp, 52
	ldx.b	$a1, $a0, $a1
	andi	$a2, $s3, 7
	slli.d	$a1, $a1, 2
	stx.w	$a2, $s7, $a1
	ld.wu	$a2, $fp, 48
	ld.wu	$a1, $fp, 52
	srli.d	$s3, $s3, 3
	srli.d	$a2, $a2, 10
	addi.d	$a2, $a2, 4
	addi.w	$s8, $s8, -3
	bgeu	$a1, $a2, .LBB0_43
.LBB0_98:                               # %while.cond400.preheader
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a2, $s8, 0
	bltu	$t0, $a2, .LBB0_97
# %bb.99:                               # %while.body404.lr.ph
                                        #   in Loop: Header=BB0_98 Depth=2
	beqz	$s2, .LBB0_187
# %bb.100:                              # %if.end418
                                        #   in Loop: Header=BB0_98 Depth=2
	ld.bu	$a3, $ra, 0
	ori	$s8, $s8, 8
	addi.w	$s2, $s2, -1
	addi.d	$ra, $ra, 1
	sll.d	$a2, $a3, $a2
	or	$s3, $a2, $s3
	b	.LBB0_97
.LBB0_101:                              # %lor.lhs.false479
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB0_46
# %bb.102:                              # %cleanup.cont
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$a1, $zero
	st.w	$zero, $fp, 52
	ori	$a0, $zero, 13
	st.w	$a0, $fp, 40
	move	$ra, $s6
.LBB0_103:                              # %sw.bb491
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.wu	$a0, $fp, 48
	andi	$s6, $a0, 31
	bstrpick.d	$a0, $a0, 9, 5
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	add.d	$a0, $s6, $a0
	addi.d	$a0, $a0, 258
	ori	$t3, $zero, 6
	bgeu	$a1, $a0, .LBB0_130
.LBB0_104:                              # %while.body507
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_106 Depth 3
                                        #       Child Loop BB0_113 Depth 3
                                        #       Child Loop BB0_124 Depth 3
                                        #       Child Loop BB0_128 Depth 3
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	addi.w	$a3, $s8, 0
	bgeu	$a3, $a2, .LBB0_108
# %bb.105:                              # %while.body516.preheader
                                        #   in Loop: Header=BB0_104 Depth=2
	move	$a4, $s8
	move	$a6, $ra
	move	$a3, $s2
	.p2align	4, , 16
.LBB0_106:                              # %while.body516
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_104 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beqz	$a3, .LBB0_180
# %bb.107:                              # %if.end530
                                        #   in Loop: Header=BB0_106 Depth=3
	ld.bu	$a7, $a6, 0
	addi.w	$a3, $a3, -1
	addi.d	$a5, $a6, 1
	sll.d	$a6, $a7, $a4
	addi.w	$a4, $a4, 8
	or	$s3, $a6, $s3
	move	$a6, $a5
	bltu	$a4, $a2, .LBB0_106
	b	.LBB0_109
	.p2align	4, , 16
.LBB0_108:                              #   in Loop: Header=BB0_104 Depth=2
	move	$a3, $s2
	move	$a5, $ra
	move	$a4, $s8
.LBB0_109:                              # %while.end543
                                        #   in Loop: Header=BB0_104 Depth=2
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 1
	pcalau12i	$a6, %pc_hi20(inflate_mask)
	addi.d	$t0, $a6, %pc_lo12(inflate_mask)
	ldx.hu	$a2, $t0, $a2
	ld.d	$a6, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a6, $a6, 0
	and	$a2, $s3, $a2
	alsl.d	$a2, $a2, $a6, 2
	ld.hu	$a7, $a2, 2
	ld.bu	$t1, $a2, 1
	addi.w	$a2, $a0, 0
	ori	$a6, $zero, 15
	bltu	$a6, $a7, .LBB0_111
# %bb.110:                              # %if.then560
                                        #   in Loop: Header=BB0_104 Depth=2
	srl.d	$s3, $s3, $t1
	sub.w	$s8, $a4, $t1
	slli.d	$a4, $a1, 2
	addi.w	$a1, $a1, 1
	st.w	$a1, $fp, 52
	stx.w	$a7, $s7, $a4
	move	$s2, $a3
	move	$ra, $a5
	bltu	$a1, $a2, .LBB0_104
	b	.LBB0_130
.LBB0_111:                              # %if.else575
                                        #   in Loop: Header=BB0_104 Depth=2
	addi.d	$a6, $a7, -18
	sltui	$a6, $a6, 1
	addi.d	$t2, $a7, -14
	masknez	$t2, $t2, $a6
	ori	$t3, $zero, 7
	maskeqz	$t3, $t3, $a6
	or	$t3, $t3, $t2
	add.d	$t2, $t3, $t1
	addi.w	$t4, $a4, 0
	bgeu	$t4, $t2, .LBB0_115
# %bb.112:                              # %while.body588.preheader
                                        #   in Loop: Header=BB0_104 Depth=2
	bstrpick.d	$t5, $a4, 31, 0
	bstrpick.d	$t6, $t2, 31, 0
	move	$t4, $a4
	move	$t7, $a5
	move	$s2, $a3
	.p2align	4, , 16
.LBB0_113:                              # %while.body588
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_104 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beqz	$s2, .LBB0_227
# %bb.114:                              # %if.end602
                                        #   in Loop: Header=BB0_113 Depth=3
	ld.bu	$t8, $t7, 0
	addi.w	$s2, $s2, -1
	addi.d	$ra, $t7, 1
	sll.d	$t7, $t8, $t5
	or	$s3, $t7, $s3
	addi.d	$t5, $t5, 8
	addi.d	$t4, $t4, 8
	move	$t7, $ra
	bltu	$t5, $t6, .LBB0_113
	b	.LBB0_116
.LBB0_115:                              #   in Loop: Header=BB0_104 Depth=2
	move	$s2, $a3
	move	$ra, $a5
	move	$t4, $a4
.LBB0_116:                              # %while.end615
                                        #   in Loop: Header=BB0_104 Depth=2
	move	$t5, $s6
	addi.w	$s6, $zero, -3
	ori	$a3, $zero, 3
	masknez	$a3, $a3, $a6
	slli.d	$a4, $t3, 1
	ldx.hu	$a4, $t0, $a4
	ori	$a5, $zero, 11
	maskeqz	$a5, $a5, $a6
	or	$a3, $a5, $a3
	srl.d	$t0, $s3, $t1
	and	$a5, $a4, $t0
	add.d	$a4, $a5, $a3
	srl.d	$s3, $t0, $t3
	add.w	$a3, $a4, $a1
	sub.w	$s8, $t4, $t2
	bltu	$a2, $a3, .LBB0_251
# %bb.117:                              # %lor.lhs.false650
                                        #   in Loop: Header=BB0_104 Depth=2
	bnez	$a1, .LBB0_119
# %bb.118:                              # %lor.lhs.false650
                                        #   in Loop: Header=BB0_104 Depth=2
	ori	$a3, $zero, 16
	beq	$a7, $a3, .LBB0_251
.LBB0_119:                              # %if.end668
                                        #   in Loop: Header=BB0_104 Depth=2
	ori	$a3, $zero, 16
	bne	$a7, $a3, .LBB0_121
# %bb.120:                              # %cond.true671
                                        #   in Loop: Header=BB0_104 Depth=2
	addi.d	$a3, $a1, -1
	bstrpick.d	$a3, $a3, 31, 0
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $s7, $a3
	ori	$a7, $zero, 16
	bgeu	$a4, $a7, .LBB0_122
	b	.LBB0_126
.LBB0_121:                              #   in Loop: Header=BB0_104 Depth=2
	move	$a3, $zero
	ori	$a7, $zero, 16
	bltu	$a4, $a7, .LBB0_126
.LBB0_122:                              # %cond.end678
                                        #   in Loop: Header=BB0_104 Depth=2
	masknez	$a7, $s6, $a6
	addi.w	$t0, $zero, -11
	maskeqz	$a6, $t0, $a6
	or	$a6, $a6, $a7
	sub.d	$a5, $a6, $a5
	bltu	$a5, $a1, .LBB0_126
# %bb.123:                              # %vector.ph2430
                                        #   in Loop: Header=BB0_104 Depth=2
	bstrpick.d	$a5, $a4, 16, 4
	slli.w	$a7, $a5, 4
	alsl.w	$a5, $a5, $a1, 4
	andi	$a6, $a4, 15
	xvreplgr2vr.w	$xr0, $a3
	move	$t0, $a7
	ori	$t3, $zero, 6
	move	$s6, $t5
	.p2align	4, , 16
.LBB0_124:                              # %vector.body2431
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_104 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bstrpick.d	$t1, $a1, 31, 0
	alsl.d	$t2, $t1, $s7, 2
	slli.d	$t1, $t1, 2
	xvstx	$xr0, $s7, $t1
	xvst	$xr0, $t2, 32
	addi.w	$t0, $t0, -16
	addi.w	$a1, $a1, 16
	bnez	$t0, .LBB0_124
# %bb.125:                              # %middle.block2434
                                        #   in Loop: Header=BB0_104 Depth=2
	bne	$a4, $a7, .LBB0_127
	b	.LBB0_129
.LBB0_126:                              #   in Loop: Header=BB0_104 Depth=2
	move	$a5, $a1
	move	$a6, $a4
	ori	$t3, $zero, 6
	move	$s6, $t5
.LBB0_127:                              # %do.body.preheader
                                        #   in Loop: Header=BB0_104 Depth=2
	move	$a1, $a5
	.p2align	4, , 16
.LBB0_128:                              # %do.body
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_104 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.w	$a5, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 2
	addi.w	$a6, $a6, -1
	stx.w	$a3, $s7, $a1
	move	$a1, $a5
	bnez	$a6, .LBB0_128
.LBB0_129:                              # %do.end
                                        #   in Loop: Header=BB0_104 Depth=2
	st.w	$a5, $fp, 52
	move	$a1, $a5
	bltu	$a1, $a2, .LBB0_104
.LBB0_130:                              # %while.end696
                                        #   in Loop: Header=BB0_4 Depth=1
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.d	$zero, $a0, 0
	st.w	$zero, $sp, 404
	move	$a0, $s7
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s7, $s6, 257
	ori	$a1, $zero, 9
	st.w	$a1, $sp, 400
	st.w	$t3, $sp, 396
	pcalau12i	$a1, %pc_hi20(cplens)
	addi.d	$a3, $a1, %pc_lo12(cplens)
	pcalau12i	$a1, %pc_hi20(cplext)
	addi.d	$a4, $a1, %pc_lo12(cplext)
	ori	$a2, $zero, 257
	addi.d	$a5, $sp, 384
	addi.d	$a6, $sp, 400
	addi.d	$a1, $sp, 404
	st.d	$a1, $sp, 0
	move	$a1, $s7
	ld.d	$a7, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(huft_build)
	jirl	$ra, $ra, 0
	ld.w	$s6, $sp, 400
	beqz	$s6, .LBB0_235
# %bb.131:                              # %while.end696
                                        #   in Loop: Header=BB0_4 Depth=1
	bnez	$a0, .LBB0_235
# %bb.132:                              # %if.then725
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	addi.w	$a1, $a0, 1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	alsl.d	$a0, $s7, $a0, 2
	pcalau12i	$a2, %pc_hi20(cpdist)
	addi.d	$a3, $a2, %pc_lo12(cpdist)
	pcalau12i	$a2, %pc_hi20(cpdext)
	addi.d	$a4, $a2, %pc_lo12(cpdext)
	addi.d	$a5, $sp, 376
	addi.d	$a6, $sp, 396
	addi.d	$a2, $sp, 404
	st.d	$a2, $sp, 0
	move	$a2, $zero
	ld.d	$a7, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(huft_build)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_235
# %bb.133:                              # %lor.lhs.false739
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.w	$a2, $sp, 396
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_135
# %bb.134:                              # %lor.lhs.false739
                                        #   in Loop: Header=BB0_4 Depth=1
	beqz	$a2, .LBB0_235
.LBB0_135:                              # %cleanup.cont780
                                        #   in Loop: Header=BB0_4 Depth=1
	andi	$a0, $s6, 255
	ld.d	$a1, $sp, 384
	ld.d	$a3, $sp, 376
	st.b	$s6, $fp, 72
	st.b	$a2, $fp, 73
	st.d	$a1, $fp, 80
	st.d	$a3, $fp, 88
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ori	$t0, $zero, 2
	xvld	$xr10, $sp, 320                 # 32-byte Folded Reload
	xvld	$xr11, $sp, 288                 # 32-byte Folded Reload
	xvld	$xr12, $sp, 256                 # 32-byte Folded Reload
	xvld	$xr13, $sp, 224                 # 32-byte Folded Reload
	xvld	$xr14, $sp, 192                 # 32-byte Folded Reload
	xvld	$xr15, $sp, 160                 # 32-byte Folded Reload
	xvld	$xr16, $sp, 128                 # 32-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
.LBB0_136:                              # %sw.bb782
                                        #   in Loop: Header=BB0_4 Depth=1
	st.w	$a0, $fp, 64
	st.d	$a1, $fp, 56
	ori	$a1, $zero, 1
	st.w	$a1, $fp, 40
	addi.w	$a1, $s8, 0
	bgeu	$a1, $a0, .LBB0_57
.LBB0_137:                              # %while.body798.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$a3, $s8
	move	$a4, $ra
	move	$a1, $s2
	ori	$a7, $zero, 6
	.p2align	4, , 16
.LBB0_138:                              # %while.body798
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$a1, .LBB0_166
# %bb.139:                              # %if.end812
                                        #   in Loop: Header=BB0_138 Depth=2
	ld.bu	$a5, $a4, 0
	addi.w	$a1, $a1, -1
	addi.d	$a2, $a4, 1
	sll.d	$a4, $a5, $a3
	addi.w	$a3, $a3, 8
	or	$s3, $a4, $s3
	move	$a4, $a2
	bltu	$a3, $a0, .LBB0_138
.LBB0_140:                              # %while.end825
                                        #   in Loop: Header=BB0_4 Depth=1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 1
	pcalau12i	$a4, %pc_hi20(inflate_mask)
	addi.d	$a4, $a4, %pc_lo12(inflate_mask)
	ldx.hu	$a0, $a4, $a0
	ld.d	$a4, $s7, 0
	and	$a0, $s3, $a0
	slli.d	$a5, $a0, 2
	alsl.d	$a0, $a0, $a4, 2
	ld.bu	$a6, $a0, 1
	ldx.bu	$a4, $a4, $a5
	srl.d	$s3, $s3, $a6
	sub.w	$s8, $a3, $a6
	beqz	$a4, .LBB0_144
# %bb.141:                              # %if.end863
                                        #   in Loop: Header=BB0_4 Depth=1
	andi	$a3, $a4, 16
	bnez	$a3, .LBB0_145
# %bb.142:                              # %if.end875
                                        #   in Loop: Header=BB0_4 Depth=1
	andi	$a3, $a4, 64
	bnez	$a3, .LBB0_152
# %bb.143:                              # %if.then880
                                        #   in Loop: Header=BB0_4 Depth=1
	st.w	$a4, $fp, 64
	ld.hu	$a3, $a0, 2
	alsl.d	$a0, $a3, $a0, 2
	st.d	$a0, $fp, 56
	b	.LBB0_154
.LBB0_144:                              # %if.then857
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.hu	$a0, $a0, 2
	st.w	$a0, $fp, 56
	st.w	$a7, $fp, 40
	b	.LBB0_154
.LBB0_145:                              # %if.then867
                                        #   in Loop: Header=BB0_4 Depth=1
	andi	$a3, $a4, 15
	st.w	$a3, $fp, 56
	ld.hu	$a0, $a0, 2
	st.w	$a0, $fp, 48
	st.w	$t0, $fp, 40
	b	.LBB0_154
.LBB0_146:                              # %sw.bb51
                                        #   in Loop: Header=BB0_4 Depth=1
	pcalau12i	$a1, %pc_hi20(fixed_built)
	ld.bu	$a0, $a1, %pc_lo12(fixed_built)
	bnez	$a0, .LBB0_150
# %bb.147:                              # %if.then53
                                        #   in Loop: Header=BB0_4 Depth=1
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI0_0)
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	xvld	$xr1, $a0, %pc_lo12(.LCPI0_1)
	move	$a0, $zero
	st.w	$zero, $sp, 384
	ori	$a2, $zero, 1152
	.p2align	4, , 16
.LBB0_148:                              # %vector.body
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvaddi.du	$xr4, $xr0, 8
	xvaddi.du	$xr6, $xr1, 8
	xvslt.du	$xr3, $xr10, $xr1
	xvpickve2gr.d	$a1, $xr3, 0
	xvinsgr2vr.w	$xr2, $a1, 0
	xvpickve2gr.d	$a1, $xr3, 1
	xvinsgr2vr.w	$xr2, $a1, 1
	xvpickve2gr.d	$a1, $xr3, 2
	xvinsgr2vr.w	$xr2, $a1, 2
	xvpickve2gr.d	$a1, $xr3, 3
	xvinsgr2vr.w	$xr2, $a1, 3
	xvslt.du	$xr3, $xr10, $xr0
	xvpickve2gr.d	$a1, $xr3, 0
	xvinsgr2vr.w	$xr2, $a1, 4
	xvpickve2gr.d	$a1, $xr3, 1
	xvinsgr2vr.w	$xr2, $a1, 5
	xvpickve2gr.d	$a1, $xr3, 2
	xvinsgr2vr.w	$xr2, $a1, 6
	xvpickve2gr.d	$a1, $xr3, 3
	xvinsgr2vr.w	$xr2, $a1, 7
	xvslt.du	$xr5, $xr10, $xr6
	xvpickve2gr.d	$a1, $xr5, 0
	xvinsgr2vr.w	$xr3, $a1, 0
	xvpickve2gr.d	$a1, $xr5, 1
	xvinsgr2vr.w	$xr3, $a1, 1
	xvpickve2gr.d	$a1, $xr5, 2
	xvinsgr2vr.w	$xr3, $a1, 2
	xvpickve2gr.d	$a1, $xr5, 3
	xvinsgr2vr.w	$xr3, $a1, 3
	xvslt.du	$xr5, $xr10, $xr4
	xvpickve2gr.d	$a1, $xr5, 0
	xvinsgr2vr.w	$xr3, $a1, 4
	xvpickve2gr.d	$a1, $xr5, 1
	xvinsgr2vr.w	$xr3, $a1, 5
	xvpickve2gr.d	$a1, $xr5, 2
	xvinsgr2vr.w	$xr3, $a1, 6
	xvpickve2gr.d	$a1, $xr5, 3
	xvinsgr2vr.w	$xr3, $a1, 7
	xvslt.du	$xr5, $xr1, $xr11
	xvpickve2gr.d	$a1, $xr5, 0
	xvinsgr2vr.w	$xr7, $a1, 0
	xvpickve2gr.d	$a1, $xr5, 1
	xvinsgr2vr.w	$xr7, $a1, 1
	xvpickve2gr.d	$a1, $xr5, 2
	xvinsgr2vr.w	$xr7, $a1, 2
	xvpickve2gr.d	$a1, $xr5, 3
	xvinsgr2vr.w	$xr7, $a1, 3
	xvslt.du	$xr5, $xr0, $xr11
	xvpickve2gr.d	$a1, $xr5, 0
	xvinsgr2vr.w	$xr7, $a1, 4
	xvpickve2gr.d	$a1, $xr5, 1
	xvinsgr2vr.w	$xr7, $a1, 5
	xvpickve2gr.d	$a1, $xr5, 2
	xvinsgr2vr.w	$xr7, $a1, 6
	xvpickve2gr.d	$a1, $xr5, 3
	xvinsgr2vr.w	$xr7, $a1, 7
	xvaddi.wu	$xr5, $xr7, 8
	xvslt.du	$xr6, $xr6, $xr11
	xvpickve2gr.d	$a1, $xr6, 0
	xvinsgr2vr.w	$xr7, $a1, 0
	xvpickve2gr.d	$a1, $xr6, 1
	xvinsgr2vr.w	$xr7, $a1, 1
	xvpickve2gr.d	$a1, $xr6, 2
	xvinsgr2vr.w	$xr7, $a1, 2
	xvpickve2gr.d	$a1, $xr6, 3
	xvinsgr2vr.w	$xr7, $a1, 3
	xvslt.du	$xr4, $xr4, $xr11
	xvpickve2gr.d	$a1, $xr4, 0
	xvinsgr2vr.w	$xr7, $a1, 4
	xvpickve2gr.d	$a1, $xr4, 1
	xvinsgr2vr.w	$xr7, $a1, 5
	xvpickve2gr.d	$a1, $xr4, 2
	xvinsgr2vr.w	$xr7, $a1, 6
	xvpickve2gr.d	$a1, $xr4, 3
	xvinsgr2vr.w	$xr7, $a1, 7
	xvaddi.wu	$xr4, $xr7, 8
	xvadd.d	$xr6, $xr0, $xr13
	xvadd.d	$xr7, $xr1, $xr13
	xvslt.du	$xr7, $xr7, $xr14
	xvpickve2gr.d	$a1, $xr7, 0
	xvinsgr2vr.w	$xr8, $a1, 0
	xvpickve2gr.d	$a1, $xr7, 1
	xvinsgr2vr.w	$xr8, $a1, 1
	xvpickve2gr.d	$a1, $xr7, 2
	xvinsgr2vr.w	$xr8, $a1, 2
	xvpickve2gr.d	$a1, $xr7, 3
	xvinsgr2vr.w	$xr8, $a1, 3
	xvslt.du	$xr6, $xr6, $xr14
	xvpickve2gr.d	$a1, $xr6, 0
	xvinsgr2vr.w	$xr8, $a1, 4
	xvpickve2gr.d	$a1, $xr6, 1
	xvinsgr2vr.w	$xr8, $a1, 5
	xvpickve2gr.d	$a1, $xr6, 2
	xvinsgr2vr.w	$xr8, $a1, 6
	xvpickve2gr.d	$a1, $xr6, 3
	xvinsgr2vr.w	$xr8, $a1, 7
	xvadd.d	$xr6, $xr0, $xr15
	xvadd.d	$xr7, $xr1, $xr15
	xvslt.du	$xr7, $xr7, $xr14
	xvpickve2gr.d	$a1, $xr7, 0
	xvinsgr2vr.w	$xr9, $a1, 0
	xvpickve2gr.d	$a1, $xr7, 1
	xvinsgr2vr.w	$xr9, $a1, 1
	xvpickve2gr.d	$a1, $xr7, 2
	xvinsgr2vr.w	$xr9, $a1, 2
	xvpickve2gr.d	$a1, $xr7, 3
	xvinsgr2vr.w	$xr9, $a1, 3
	xvslt.du	$xr6, $xr6, $xr14
	xvpickve2gr.d	$a1, $xr6, 0
	xvinsgr2vr.w	$xr9, $a1, 4
	xvpickve2gr.d	$a1, $xr6, 1
	xvinsgr2vr.w	$xr9, $a1, 5
	xvpickve2gr.d	$a1, $xr6, 2
	xvinsgr2vr.w	$xr9, $a1, 6
	xvpickve2gr.d	$a1, $xr6, 3
	xvinsgr2vr.w	$xr9, $a1, 7
	xvbitsel.v	$xr5, $xr5, $xr16, $xr8
	xvbitsel.v	$xr2, $xr12, $xr5, $xr2
	xvbitsel.v	$xr4, $xr4, $xr16, $xr9
	xvbitsel.v	$xr3, $xr12, $xr4, $xr3
	pcalau12i	$a1, %pc_hi20(nsis_inflate.lc)
	addi.d	$s7, $a1, %pc_lo12(nsis_inflate.lc)
	add.d	$a1, $s7, $a0
	xvstx	$xr2, $s7, $a0
	xvst	$xr3, $a1, 32
	xvaddi.du	$xr1, $xr1, 16
	addi.d	$a0, $a0, 64
	xvaddi.du	$xr0, $xr0, 16
	bne	$a0, $a2, .LBB0_148
# %bb.149:                              # %for.end
                                        #   in Loop: Header=BB0_4 Depth=1
	pcalau12i	$a0, %pc_hi20(cplens)
	addi.d	$a3, $a0, %pc_lo12(cplens)
	pcalau12i	$a0, %pc_hi20(cplext)
	addi.d	$a4, $a0, %pc_lo12(cplext)
	pcalau12i	$a0, %pc_hi20(fixed_tl)
	addi.d	$a5, $a0, %pc_lo12(fixed_tl)
	pcalau12i	$a0, %pc_hi20(fixed_bl)
	addi.d	$a6, $a0, %pc_lo12(fixed_bl)
	pcalau12i	$a0, %pc_hi20(fixed_mem)
	addi.d	$s6, $a0, %pc_lo12(fixed_mem)
	ori	$a1, $zero, 288
	ori	$a2, $zero, 257
	addi.d	$a0, $sp, 384
	st.d	$a0, $sp, 0
	move	$a0, $s7
	move	$a7, $s6
	pcaddu18i	$ra, %call36(huft_build)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 48                   # 32-byte Folded Reload
	xvst	$xr0, $s7, 0
	xvst	$xr0, $s7, 32
	xvst	$xr0, $s7, 64
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $s7, 96
	ori	$a0, $zero, 5
	lu32i.d	$a0, 5
	st.d	$a0, $s7, 112
	pcalau12i	$a0, %pc_hi20(cpdist)
	addi.d	$a3, $a0, %pc_lo12(cpdist)
	pcalau12i	$a0, %pc_hi20(cpdext)
	addi.d	$a4, $a0, %pc_lo12(cpdext)
	pcalau12i	$a0, %pc_hi20(fixed_td)
	addi.d	$a5, $a0, %pc_lo12(fixed_td)
	pcalau12i	$a0, %pc_hi20(fixed_bd)
	addi.d	$a6, $a0, %pc_lo12(fixed_bd)
	ori	$a1, $zero, 30
	addi.d	$a0, $sp, 384
	st.d	$a0, $sp, 0
	move	$a0, $s7
	move	$a2, $zero
	move	$a7, $s6
	pcaddu18i	$ra, %call36(huft_build)
	jirl	$ra, $ra, 0
	xvld	$xr16, $sp, 128                 # 32-byte Folded Reload
	xvld	$xr15, $sp, 160                 # 32-byte Folded Reload
	xvld	$xr14, $sp, 192                 # 32-byte Folded Reload
	xvld	$xr13, $sp, 224                 # 32-byte Folded Reload
	xvld	$xr12, $sp, 256                 # 32-byte Folded Reload
	xvld	$xr11, $sp, 288                 # 32-byte Folded Reload
	xvld	$xr10, $sp, 320                 # 32-byte Folded Reload
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.b	$a0, $a1, %pc_lo12(fixed_built)
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ori	$t0, $zero, 2
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
.LBB0_150:                              # %if.end83
                                        #   in Loop: Header=BB0_4 Depth=1
	pcalau12i	$a0, %pc_hi20(fixed_bl)
	pcalau12i	$a1, %pc_hi20(fixed_bd)
	pcalau12i	$a2, %pc_hi20(fixed_tl)
	pcalau12i	$a3, %pc_hi20(fixed_td)
	ld.b	$a0, $a0, %pc_lo12(fixed_bl)
	ld.b	$a1, $a1, %pc_lo12(fixed_bd)
	ld.d	$a2, $a2, %pc_lo12(fixed_tl)
	ld.d	$a3, $a3, %pc_lo12(fixed_td)
	st.b	$a0, $fp, 72
	st.b	$a1, $fp, 73
	st.d	$a2, $fp, 80
	st.d	$a3, $fp, 88
	st.w	$zero, $fp, 40
	b	.LBB0_4
.LBB0_151:                              # %sw.bb95
                                        #   in Loop: Header=BB0_4 Depth=1
	ori	$a0, $zero, 11
	st.w	$a0, $fp, 40
	b	.LBB0_4
.LBB0_152:                              # %if.end892
                                        #   in Loop: Header=BB0_4 Depth=1
	andi	$a0, $a4, 32
	beqz	$a0, .LBB0_272
# %bb.153:                              # %if.then896
                                        #   in Loop: Header=BB0_4 Depth=1
	ori	$a0, $zero, 7
	st.w	$a0, $fp, 40
.LBB0_154:                              # %for.cond
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$s2, $a1
	move	$ra, $a2
	b	.LBB0_4
.LBB0_155:                              # %inflate_flush.exit1366
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $s4, 16
	st.d	$a1, $s4, 8
	sltu	$a3, $a0, $a1
	sub.w	$a4, $a2, $a0
	nor	$a5, $a0, $zero
	add.w	$a5, $a5, $a1
	masknez	$a4, $a4, $a3
	maskeqz	$a3, $a5, $a3
	or	$a3, $a3, $a4
	xor	$a4, $a2, $a0
	sltu	$a4, $zero, $a4
	xor	$a5, $a1, $s0
	sltui	$a5, $a5, 1
	or	$a4, $a4, $a5
	sltu	$a5, $s0, $a1
	ld.d	$a6, $sp, 360                   # 8-byte Folded Reload
	add.w	$a1, $a1, $a6
	sub.w	$a2, $a2, $s0
	masknez	$a2, $a2, $a5
	maskeqz	$a1, $a1, $a5
	or	$a1, $a1, $a2
	masknez	$a2, $s0, $a4
	maskeqz	$a0, $a0, $a4
	masknez	$a1, $a1, $a4
	maskeqz	$a3, $a3, $a4
	or	$s1, $a3, $a1
	or	$s5, $a0, $a2
	ori	$t0, $zero, 2
	xvld	$xr10, $sp, 320                 # 32-byte Folded Reload
	xvld	$xr11, $sp, 288                 # 32-byte Folded Reload
	xvld	$xr12, $sp, 256                 # 32-byte Folded Reload
	xvld	$xr13, $sp, 224                 # 32-byte Folded Reload
	xvld	$xr14, $sp, 192                 # 32-byte Folded Reload
	xvld	$xr15, $sp, 160                 # 32-byte Folded Reload
	xvld	$xr16, $sp, 128                 # 32-byte Folded Reload
	move	$ra, $s6
	beqz	$s1, .LBB0_261
.LBB0_156:                              # %if.end1415
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.b	$a0, $fp, 56
	st.b	$a0, $s5, 0
	addi.d	$s5, $s5, 1
	addi.w	$s1, $s1, -1
	st.w	$zero, $fp, 40
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	b	.LBB0_4
.LBB0_157:                              # %cond.false217
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a3, $s4, 0
	sub.w	$a2, $a3, $a0
.LBB0_158:                              # %cond.end223
                                        #   in Loop: Header=BB0_4 Depth=1
	xor	$a4, $a0, $a3
	sltu	$a4, $zero, $a4
	xor	$a5, $a1, $s0
	sltui	$a5, $a5, 1
	or	$a4, $a4, $a5
	sltu	$a5, $s0, $a1
	ld.d	$a6, $sp, 360                   # 8-byte Folded Reload
	add.w	$a1, $a1, $a6
	sub.w	$a3, $a3, $s0
	masknez	$a3, $a3, $a5
	maskeqz	$a1, $a1, $a5
	or	$a1, $a1, $a3
	masknez	$a3, $s0, $a4
	maskeqz	$a0, $a0, $a4
	masknez	$a1, $a1, $a4
	maskeqz	$a2, $a2, $a4
	or	$s1, $a2, $a1
	or	$s5, $a0, $a3
	move	$ra, $s6
	beqz	$s1, .LBB0_261
.LBB0_159:                              # %if.end279
                                        #   in Loop: Header=BB0_4 Depth=1
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	sltu	$a0, $s1, $s2
	ld.w	$a1, $fp, 48
	masknez	$a2, $s2, $a0
	maskeqz	$a0, $s1, $a0
	or	$a0, $a0, $a2
	sltu	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$s6, $a1, $a0
	bstrpick.d	$s7, $s6, 31, 0
	move	$a0, $s5
	move	$a1, $ra
	move	$a2, $s7
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	add.d	$ra, $ra, $s7
	ld.w	$a0, $fp, 48
	sub.w	$s2, $s2, $s6
	add.d	$s5, $s5, $s7
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	sub.w	$s1, $s1, $s6
	sub.d	$a1, $a0, $s6
	st.w	$a1, $fp, 48
	ori	$t0, $zero, 2
	xvld	$xr10, $sp, 320                 # 32-byte Folded Reload
	xvld	$xr11, $sp, 288                 # 32-byte Folded Reload
	xvld	$xr12, $sp, 256                 # 32-byte Folded Reload
	xvld	$xr13, $sp, 224                 # 32-byte Folded Reload
	xvld	$xr14, $sp, 192                 # 32-byte Folded Reload
	xvld	$xr15, $sp, 160                 # 32-byte Folded Reload
	xvld	$xr16, $sp, 128                 # 32-byte Folded Reload
	bne	$a0, $s6, .LBB0_4
# %bb.160:                              # %if.then319
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.w	$a0, $fp, 1352
	st.w	$a0, $fp, 40
	b	.LBB0_4
.LBB0_161:                              # %land.lhs.true
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $s4, 8
	beq	$a0, $s0, .LBB0_40
# %bb.162:                              # %if.end197
                                        #   in Loop: Header=BB0_4 Depth=1
	sltu	$a1, $s0, $a0
	ld.d	$a2, $sp, 360                   # 8-byte Folded Reload
	add.w	$a0, $a0, $a2
	sub.w	$a2, $s5, $s0
	masknez	$a2, $a2, $a1
	maskeqz	$a0, $a0, $a1
	or	$s1, $a0, $a2
	move	$s5, $s0
	bnez	$s1, .LBB0_159
	b	.LBB0_40
.LBB0_163:                              # %again.i1391.sink.split
                                        #   in Loop: Header=BB0_4 Depth=1
	st.d	$s0, $s4, 16
	move	$a2, $s0
	.p2align	4, , 16
.LBB0_164:                              # %again.i1391
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sltu	$a3, $a2, $s0
	masknez	$a2, $a2, $a3
	ld.w	$a4, $fp, 32
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	sub.w	$a1, $a1, $s0
	sltu	$a2, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a4, $a2
	or	$a1, $a2, $a1
	sub.d	$a2, $a4, $a1
	st.w	$a2, $fp, 32
	bstrpick.d	$s5, $a1, 31, 0
	move	$a1, $s0
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	ld.d	$a2, $s4, 0
	add.d	$a0, $a0, $s5
	add.d	$a1, $s0, $s5
	st.d	$a0, $fp, 24
	bne	$a1, $a2, .LBB0_31
# %bb.165:                              # %if.then.i1403
                                        #   in Loop: Header=BB0_164 Depth=2
	ld.d	$a2, $s4, 16
	bne	$a2, $a1, .LBB0_164
	b	.LBB0_163
.LBB0_166:                              # %if.then801
	alsl.d	$a0, $s2, $s8, 3
	bstrpick.d	$a1, $s2, 31, 0
	add.d	$a1, $ra, $a1
	st.d	$s3, $fp, 1360
	ld.d	$s1, $s4, 8
	st.w	$a0, $fp, 1356
	st.w	$zero, $fp, 8
	st.d	$a1, $fp, 0
	st.d	$s5, $s4, 16
	bgeu	$s5, $s1, .LBB0_168
# %bb.167:                              # %cond.false.peel.i1107
	ld.d	$s5, $s4, 0
.LBB0_168:                              # %cond.end.peel.i1073
	ld.w	$a1, $fp, 32
	sub.w	$a0, $s5, $s1
	sltu	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a0
	ld.d	$a0, $fp, 24
	sub.d	$a1, $a1, $a2
	st.w	$a1, $fp, 32
	bstrpick.d	$s2, $a2, 31, 0
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	ld.d	$a2, $s4, 0
	add.d	$a0, $a0, $s2
	add.d	$a1, $s1, $s2
	b	.LBB0_170
	.p2align	4, , 16
.LBB0_169:                              # %again.i1090
                                        #   in Loop: Header=BB0_170 Depth=1
	sltu	$a3, $a2, $s0
	masknez	$a2, $a2, $a3
	ld.w	$a4, $fp, 32
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	sub.w	$a1, $a1, $s0
	sltu	$a2, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a4, $a2
	or	$a1, $a2, $a1
	sub.d	$a2, $a4, $a1
	st.w	$a2, $fp, 32
	bstrpick.d	$s1, $a1, 31, 0
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	ld.d	$a2, $s4, 0
	add.d	$a0, $a0, $s1
	add.d	$a1, $s0, $s1
.LBB0_170:                              # %cond.end.peel.i1073
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a0, $fp, 24
	bne	$a1, $a2, .LBB0_270
# %bb.171:                              # %if.then.peel.i1086
                                        #   in Loop: Header=BB0_170 Depth=1
	ld.d	$a2, $s4, 16
	bne	$a2, $a1, .LBB0_169
# %bb.172:                              # %again.i1090.sink.split
                                        #   in Loop: Header=BB0_170 Depth=1
	st.d	$s0, $s4, 16
	move	$a2, $s0
	b	.LBB0_169
.LBB0_173:                              # %if.then972
	alsl.d	$a0, $s2, $s8, 3
	bstrpick.d	$a1, $s2, 31, 0
	add.d	$a1, $ra, $a1
	st.d	$s3, $fp, 1360
	ld.d	$s1, $s4, 8
	st.w	$a0, $fp, 1356
	st.w	$zero, $fp, 8
	st.d	$a1, $fp, 0
	st.d	$s5, $s4, 16
	bgeu	$s5, $s1, .LBB0_175
# %bb.174:                              # %cond.false.peel.i1193
	ld.d	$s5, $s4, 0
.LBB0_175:                              # %cond.end.peel.i1159
	ld.w	$a1, $fp, 32
	sub.w	$a0, $s5, $s1
	sltu	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a0
	ld.d	$a0, $fp, 24
	sub.d	$a1, $a1, $a2
	st.w	$a1, $fp, 32
	bstrpick.d	$s2, $a2, 31, 0
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	ld.d	$a2, $s4, 0
	add.d	$a0, $a0, $s2
	add.d	$a1, $s1, $s2
	b	.LBB0_177
	.p2align	4, , 16
.LBB0_176:                              # %again.i1176
                                        #   in Loop: Header=BB0_177 Depth=1
	sltu	$a3, $a2, $s0
	masknez	$a2, $a2, $a3
	ld.w	$a4, $fp, 32
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	sub.w	$a1, $a1, $s0
	sltu	$a2, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a4, $a2
	or	$a1, $a2, $a1
	sub.d	$a2, $a4, $a1
	st.w	$a2, $fp, 32
	bstrpick.d	$s1, $a1, 31, 0
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	ld.d	$a2, $s4, 0
	add.d	$a0, $a0, $s1
	add.d	$a1, $s0, $s1
.LBB0_177:                              # %cond.end.peel.i1159
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a0, $fp, 24
	bne	$a1, $a2, .LBB0_270
# %bb.178:                              # %if.then.peel.i1172
                                        #   in Loop: Header=BB0_177 Depth=1
	ld.d	$a2, $s4, 16
	bne	$a2, $a1, .LBB0_176
# %bb.179:                              # %again.i1176.sink.split
                                        #   in Loop: Header=BB0_177 Depth=1
	st.d	$s0, $s4, 16
	move	$a2, $s0
	b	.LBB0_176
.LBB0_180:                              # %if.then519
	alsl.d	$a0, $s2, $s8, 3
	bstrpick.d	$a1, $s2, 31, 0
	add.d	$a1, $ra, $a1
	st.d	$s3, $fp, 1360
	ld.d	$s1, $s4, 8
	st.w	$a0, $fp, 1356
	st.w	$zero, $fp, 8
	st.d	$a1, $fp, 0
	st.d	$s5, $s4, 16
	bgeu	$s5, $s1, .LBB0_182
# %bb.181:                              # %cond.false.peel.i935
	ld.d	$s5, $s4, 0
.LBB0_182:                              # %cond.end.peel.i901
	ld.w	$a1, $fp, 32
	sub.w	$a0, $s5, $s1
	sltu	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a0
	ld.d	$a0, $fp, 24
	sub.d	$a1, $a1, $a2
	st.w	$a1, $fp, 32
	bstrpick.d	$s2, $a2, 31, 0
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	ld.d	$a2, $s4, 0
	add.d	$a0, $a0, $s2
	add.d	$a1, $s1, $s2
	b	.LBB0_184
	.p2align	4, , 16
.LBB0_183:                              # %again.i918
                                        #   in Loop: Header=BB0_184 Depth=1
	sltu	$a3, $a2, $s0
	masknez	$a2, $a2, $a3
	ld.w	$a4, $fp, 32
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	sub.w	$a1, $a1, $s0
	sltu	$a2, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a4, $a2
	or	$a1, $a2, $a1
	sub.d	$a2, $a4, $a1
	st.w	$a2, $fp, 32
	bstrpick.d	$s1, $a1, 31, 0
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	ld.d	$a2, $s4, 0
	add.d	$a0, $a0, $s1
	add.d	$a1, $s0, $s1
.LBB0_184:                              # %cond.end.peel.i901
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a0, $fp, 24
	bne	$a1, $a2, .LBB0_270
# %bb.185:                              # %if.then.peel.i914
                                        #   in Loop: Header=BB0_184 Depth=1
	ld.d	$a2, $s4, 16
	bne	$a2, $a1, .LBB0_183
# %bb.186:                              # %again.i918.sink.split
                                        #   in Loop: Header=BB0_184 Depth=1
	st.d	$s0, $s4, 16
	move	$a2, $s0
	b	.LBB0_183
.LBB0_187:                              # %if.then407
	st.d	$s3, $fp, 1360
	ld.d	$s1, $s4, 8
	st.w	$s8, $fp, 1356
	st.w	$zero, $fp, 8
	st.d	$ra, $fp, 0
	st.d	$s5, $s4, 16
	bgeu	$s5, $s1, .LBB0_189
# %bb.188:                              # %cond.false.peel.i892
	ld.d	$s5, $s4, 0
.LBB0_189:                              # %cond.end.peel.i858
	ld.w	$a1, $fp, 32
	sub.w	$a0, $s5, $s1
	sltu	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a0
	ld.d	$a0, $fp, 24
	sub.d	$a1, $a1, $a2
	st.w	$a1, $fp, 32
	bstrpick.d	$s2, $a2, 31, 0
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	ld.d	$a2, $s4, 0
	add.d	$a0, $a0, $s2
	add.d	$a1, $s1, $s2
	b	.LBB0_191
	.p2align	4, , 16
.LBB0_190:                              # %again.i875
                                        #   in Loop: Header=BB0_191 Depth=1
	sltu	$a3, $a2, $s0
	masknez	$a2, $a2, $a3
	ld.w	$a4, $fp, 32
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	sub.w	$a1, $a1, $s0
	sltu	$a2, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a4, $a2
	or	$a1, $a2, $a1
	sub.d	$a2, $a4, $a1
	st.w	$a2, $fp, 32
	bstrpick.d	$s1, $a1, 31, 0
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	ld.d	$a2, $s4, 0
	add.d	$a0, $a0, $s1
	add.d	$a1, $s0, $s1
.LBB0_191:                              # %cond.end.peel.i858
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a0, $fp, 24
	bne	$a1, $a2, .LBB0_270
# %bb.192:                              # %if.then.peel.i871
                                        #   in Loop: Header=BB0_191 Depth=1
	ld.d	$a2, $s4, 16
	bne	$a2, $a1, .LBB0_190
# %bb.193:                              # %again.i875.sink.split
                                        #   in Loop: Header=BB0_191 Depth=1
	st.d	$s0, $s4, 16
	move	$a2, $s0
	b	.LBB0_190
.LBB0_194:                              # %if.then331
	st.d	$s3, $fp, 1360
	ld.d	$s1, $s4, 8
	st.w	$s8, $fp, 1356
	st.w	$zero, $fp, 8
	st.d	$ra, $fp, 0
	st.d	$s5, $s4, 16
	bgeu	$s5, $s1, .LBB0_196
# %bb.195:                              # %cond.false.peel.i849
	ld.d	$s5, $s4, 0
.LBB0_196:                              # %cond.end.peel.i815
	ld.w	$a1, $fp, 32
	sub.w	$a0, $s5, $s1
	sltu	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a0
	ld.d	$a0, $fp, 24
	sub.d	$a1, $a1, $a2
	st.w	$a1, $fp, 32
	bstrpick.d	$s2, $a2, 31, 0
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	ld.d	$a2, $s4, 0
	add.d	$a0, $a0, $s2
	add.d	$a1, $s1, $s2
	b	.LBB0_198
	.p2align	4, , 16
.LBB0_197:                              # %again.i832
                                        #   in Loop: Header=BB0_198 Depth=1
	sltu	$a3, $a2, $s0
	masknez	$a2, $a2, $a3
	ld.w	$a4, $fp, 32
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	sub.w	$a1, $a1, $s0
	sltu	$a2, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a4, $a2
	or	$a1, $a2, $a1
	sub.d	$a2, $a4, $a1
	st.w	$a2, $fp, 32
	bstrpick.d	$s1, $a1, 31, 0
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	ld.d	$a2, $s4, 0
	add.d	$a0, $a0, $s1
	add.d	$a1, $s0, $s1
.LBB0_198:                              # %cond.end.peel.i815
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a0, $fp, 24
	bne	$a1, $a2, .LBB0_270
# %bb.199:                              # %if.then.peel.i828
                                        #   in Loop: Header=BB0_198 Depth=1
	ld.d	$a2, $s4, 16
	bne	$a2, $a1, .LBB0_197
# %bb.200:                              # %again.i832.sink.split
                                        #   in Loop: Header=BB0_198 Depth=1
	st.d	$s0, $s4, 16
	move	$a2, $s0
	b	.LBB0_197
.LBB0_201:                              # %if.then911
	alsl.d	$a0, $s2, $s8, 3
	bstrpick.d	$a1, $s2, 31, 0
	add.d	$a1, $ra, $a1
	st.d	$s3, $fp, 1360
	ld.d	$s1, $s4, 8
	st.w	$a0, $fp, 1356
	st.w	$zero, $fp, 8
	st.d	$a1, $fp, 0
	st.d	$s5, $s4, 16
	bgeu	$s5, $s1, .LBB0_203
# %bb.202:                              # %cond.false.peel.i1150
	ld.d	$s5, $s4, 0
.LBB0_203:                              # %cond.end.peel.i1116
	ld.w	$a1, $fp, 32
	sub.w	$a0, $s5, $s1
	sltu	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a0
	ld.d	$a0, $fp, 24
	sub.d	$a1, $a1, $a2
	st.w	$a1, $fp, 32
	bstrpick.d	$s2, $a2, 31, 0
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	ld.d	$a2, $s4, 0
	add.d	$a0, $a0, $s2
	add.d	$a1, $s1, $s2
	b	.LBB0_205
	.p2align	4, , 16
.LBB0_204:                              # %again.i1133
                                        #   in Loop: Header=BB0_205 Depth=1
	sltu	$a3, $a2, $s0
	masknez	$a2, $a2, $a3
	ld.w	$a4, $fp, 32
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	sub.w	$a1, $a1, $s0
	sltu	$a2, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a4, $a2
	or	$a1, $a2, $a1
	sub.d	$a2, $a4, $a1
	st.w	$a2, $fp, 32
	bstrpick.d	$s1, $a1, 31, 0
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	ld.d	$a2, $s4, 0
	add.d	$a0, $a0, $s1
	add.d	$a1, $s0, $s1
.LBB0_205:                              # %cond.end.peel.i1116
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a0, $fp, 24
	bne	$a1, $a2, .LBB0_270
# %bb.206:                              # %if.then.peel.i1129
                                        #   in Loop: Header=BB0_205 Depth=1
	ld.d	$a2, $s4, 16
	bne	$a2, $a1, .LBB0_204
# %bb.207:                              # %again.i1133.sink.split
                                        #   in Loop: Header=BB0_205 Depth=1
	st.d	$s0, $s4, 16
	move	$a2, $s0
	b	.LBB0_204
.LBB0_208:                              # %if.then1070
	alsl.d	$a0, $s2, $s8, 3
	bstrpick.d	$a1, $s2, 31, 0
	add.d	$a1, $ra, $a1
	st.d	$s3, $fp, 1360
	ld.d	$s1, $s4, 8
	st.w	$a0, $fp, 1356
	st.w	$zero, $fp, 8
	st.d	$a1, $fp, 0
	st.d	$s5, $s4, 16
	bgeu	$s5, $s1, .LBB0_210
# %bb.209:                              # %cond.false.peel.i1236
	ld.d	$s5, $s4, 0
.LBB0_210:                              # %cond.end.peel.i1202
	ld.w	$a1, $fp, 32
	sub.w	$a0, $s5, $s1
	sltu	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a0
	ld.d	$a0, $fp, 24
	sub.d	$a1, $a1, $a2
	st.w	$a1, $fp, 32
	bstrpick.d	$s2, $a2, 31, 0
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	ld.d	$a2, $s4, 0
	add.d	$a0, $a0, $s2
	add.d	$a1, $s1, $s2
	b	.LBB0_212
	.p2align	4, , 16
.LBB0_211:                              # %again.i1219
                                        #   in Loop: Header=BB0_212 Depth=1
	sltu	$a3, $a2, $s0
	masknez	$a2, $a2, $a3
	ld.w	$a4, $fp, 32
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	sub.w	$a1, $a1, $s0
	sltu	$a2, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a4, $a2
	or	$a1, $a2, $a1
	sub.d	$a2, $a4, $a1
	st.w	$a2, $fp, 32
	bstrpick.d	$s1, $a1, 31, 0
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	ld.d	$a2, $s4, 0
	add.d	$a0, $a0, $s1
	add.d	$a1, $s0, $s1
.LBB0_212:                              # %cond.end.peel.i1202
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a0, $fp, 24
	bne	$a1, $a2, .LBB0_270
# %bb.213:                              # %if.then.peel.i1215
                                        #   in Loop: Header=BB0_212 Depth=1
	ld.d	$a2, $s4, 16
	bne	$a2, $a1, .LBB0_211
# %bb.214:                              # %again.i1219.sink.split
                                        #   in Loop: Header=BB0_212 Depth=1
	st.d	$s0, $s4, 16
	move	$a2, $s0
	b	.LBB0_211
.LBB0_215:                              # %if.then106
	st.d	$s3, $fp, 1360
	ld.d	$s1, $s4, 8
	st.w	$s8, $fp, 1356
	st.w	$zero, $fp, 8
	st.d	$a0, $fp, 0
	st.d	$s5, $s4, 16
	bgeu	$s5, $s1, .LBB0_217
# %bb.216:                              # %cond.false.peel.i763
	ld.d	$s5, $s4, 0
.LBB0_217:                              # %cond.end.peel.i729
	ld.w	$a1, $fp, 32
	sub.w	$a0, $s5, $s1
	sltu	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a0
	ld.d	$a0, $fp, 24
	sub.d	$a1, $a1, $a2
	st.w	$a1, $fp, 32
	bstrpick.d	$s2, $a2, 31, 0
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	ld.d	$a2, $s4, 0
	add.d	$a0, $a0, $s2
	add.d	$a1, $s1, $s2
	b	.LBB0_219
	.p2align	4, , 16
.LBB0_218:                              # %again.i746
                                        #   in Loop: Header=BB0_219 Depth=1
	sltu	$a3, $a2, $s0
	masknez	$a2, $a2, $a3
	ld.w	$a4, $fp, 32
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	sub.w	$a1, $a1, $s0
	sltu	$a2, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a4, $a2
	or	$a1, $a2, $a1
	sub.d	$a2, $a4, $a1
	st.w	$a2, $fp, 32
	bstrpick.d	$s1, $a1, 31, 0
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	ld.d	$a2, $s4, 0
	add.d	$a0, $a0, $s1
	add.d	$a1, $s0, $s1
.LBB0_219:                              # %cond.end.peel.i729
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a0, $fp, 24
	bne	$a1, $a2, .LBB0_270
# %bb.220:                              # %if.then.peel.i742
                                        #   in Loop: Header=BB0_219 Depth=1
	ld.d	$a2, $s4, 16
	bne	$a2, $a1, .LBB0_218
# %bb.221:                              # %again.i746.sink.split
                                        #   in Loop: Header=BB0_219 Depth=1
	st.d	$s0, $s4, 16
	move	$a2, $s0
	b	.LBB0_218
.LBB0_222:                              # %if.then1260
	st.d	$s3, $fp, 1360
	st.w	$s8, $fp, 1356
	st.w	$s2, $fp, 8
	st.d	$ra, $fp, 0
	st.d	$s5, $s4, 16
	sltu	$a2, $s5, $s7
	masknez	$a3, $s5, $a2
	ld.w	$a4, $fp, 32
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $a3
	sub.w	$a1, $a1, $s7
	sltu	$a2, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a4, $a2
	or	$a1, $a2, $a1
	sub.d	$a2, $a4, $a1
	st.w	$a2, $fp, 32
	bstrpick.d	$s1, $a1, 31, 0
	move	$a1, $s7
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	ld.d	$a2, $s4, 0
	add.d	$a0, $a0, $s1
	add.d	$a1, $s7, $s1
	b	.LBB0_224
	.p2align	4, , 16
.LBB0_223:                              # %again.i1305
                                        #   in Loop: Header=BB0_224 Depth=1
	sltu	$a3, $a2, $s0
	masknez	$a2, $a2, $a3
	ld.w	$a4, $fp, 32
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	sub.w	$a1, $a1, $s0
	sltu	$a2, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a4, $a2
	or	$a1, $a2, $a1
	sub.d	$a2, $a4, $a1
	st.w	$a2, $fp, 32
	bstrpick.d	$s1, $a1, 31, 0
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	ld.d	$a2, $s4, 0
	add.d	$a0, $a0, $s1
	add.d	$a1, $s0, $s1
.LBB0_224:                              # %if.then1260
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a0, $fp, 24
	bne	$a1, $a2, .LBB0_270
# %bb.225:                              # %if.then.peel.i1301
                                        #   in Loop: Header=BB0_224 Depth=1
	ld.d	$a2, $s4, 16
	bne	$a2, $a1, .LBB0_223
# %bb.226:                              # %again.i1305.sink.split
                                        #   in Loop: Header=BB0_224 Depth=1
	st.d	$s0, $s4, 16
	move	$a2, $s0
	b	.LBB0_223
.LBB0_227:                              # %if.then591
	bstrpick.d	$a0, $a3, 31, 0
	alsl.d	$a1, $a3, $a4, 3
	add.d	$a0, $a5, $a0
	st.d	$s3, $fp, 1360
	ld.d	$s1, $s4, 8
	st.w	$a1, $fp, 1356
	st.w	$zero, $fp, 8
	st.d	$a0, $fp, 0
	st.d	$s5, $s4, 16
	bgeu	$s5, $s1, .LBB0_229
# %bb.228:                              # %cond.false.peel.i978
	ld.d	$s5, $s4, 0
.LBB0_229:                              # %cond.end.peel.i944
	ld.w	$a1, $fp, 32
	sub.w	$a0, $s5, $s1
	sltu	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a0
	ld.d	$a0, $fp, 24
	sub.d	$a1, $a1, $a2
	st.w	$a1, $fp, 32
	bstrpick.d	$s2, $a2, 31, 0
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	ld.d	$a2, $s4, 0
	add.d	$a0, $a0, $s2
	add.d	$a1, $s1, $s2
	b	.LBB0_231
	.p2align	4, , 16
.LBB0_230:                              # %again.i961
                                        #   in Loop: Header=BB0_231 Depth=1
	sltu	$a3, $a2, $s0
	masknez	$a2, $a2, $a3
	ld.w	$a4, $fp, 32
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	sub.w	$a1, $a1, $s0
	sltu	$a2, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a4, $a2
	or	$a1, $a2, $a1
	sub.d	$a2, $a4, $a1
	st.w	$a2, $fp, 32
	bstrpick.d	$s1, $a1, 31, 0
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	ld.d	$a2, $s4, 0
	add.d	$a0, $a0, $s1
	add.d	$a1, $s0, $s1
.LBB0_231:                              # %cond.end.peel.i944
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a0, $fp, 24
	bne	$a1, $a2, .LBB0_270
# %bb.232:                              # %if.then.peel.i957
                                        #   in Loop: Header=BB0_231 Depth=1
	ld.d	$a2, $s4, 16
	bne	$a2, $a1, .LBB0_230
# %bb.233:                              # %again.i961.sink.split
                                        #   in Loop: Header=BB0_231 Depth=1
	st.d	$s0, $s4, 16
	move	$a2, $s0
	b	.LBB0_230
.LBB0_234:                              # %if.then1465
	st.d	$s3, $fp, 1360
	st.w	$s8, $fp, 1356
	st.w	$s2, $fp, 8
	st.d	$ra, $fp, 0
	b	.LBB0_262
.LBB0_235:                              # %if.then745
	ori	$a0, $zero, 17
	st.w	$a0, $fp, 40
	st.d	$s3, $fp, 1360
	ld.d	$s1, $s4, 8
	st.w	$s8, $fp, 1356
	st.w	$s2, $fp, 8
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $fp, 0
	st.d	$s5, $s4, 16
	bgeu	$s5, $s1, .LBB0_237
# %bb.236:                              # %cond.false.peel.i1064
	ld.d	$s5, $s4, 0
.LBB0_237:                              # %cond.end.peel.i1030
	ld.w	$a1, $fp, 32
	sub.w	$a0, $s5, $s1
	sltu	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a0
	ld.d	$a0, $fp, 24
	sub.d	$a1, $a1, $a2
	st.w	$a1, $fp, 32
	bstrpick.d	$s2, $a2, 31, 0
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	ld.d	$a2, $s4, 0
	add.d	$a0, $a0, $s2
	add.d	$a1, $s1, $s2
	b	.LBB0_239
	.p2align	4, , 16
.LBB0_238:                              # %again.i1047
                                        #   in Loop: Header=BB0_239 Depth=1
	sltu	$a3, $a2, $s0
	masknez	$a2, $a2, $a3
	ld.w	$a4, $fp, 32
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	sub.w	$a1, $a1, $s0
	sltu	$a2, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a4, $a2
	or	$a1, $a2, $a1
	sub.d	$a2, $a4, $a1
	st.w	$a2, $fp, 32
	bstrpick.d	$s1, $a1, 31, 0
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	ld.d	$a2, $s4, 0
	add.d	$a0, $a0, $s1
	add.d	$a1, $s0, $s1
.LBB0_239:                              # %cond.end.peel.i1030
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a0, $fp, 24
	bne	$a1, $a2, .LBB0_242
# %bb.240:                              # %if.then.peel.i1043
                                        #   in Loop: Header=BB0_239 Depth=1
	ld.d	$a2, $s4, 16
	bne	$a2, $a1, .LBB0_238
# %bb.241:                              # %again.i1047.sink.split
                                        #   in Loop: Header=BB0_239 Depth=1
	st.d	$s0, $s4, 16
	move	$a2, $s0
	b	.LBB0_238
.LBB0_242:                              # %cleanup772
	st.d	$a1, $s4, 8
	addi.w	$a0, $zero, -3
	b	.LBB0_271
.LBB0_243:                              # %if.end1488
	st.d	$s3, $fp, 1360
	st.w	$s8, $fp, 1356
	st.w	$s2, $fp, 8
	st.d	$ra, $fp, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(inflate_flush)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	b	.LBB0_271
.LBB0_244:                              # %if.then149
	st.d	$s3, $fp, 1360
	ld.d	$s1, $s4, 8
	st.w	$s8, $fp, 1356
	st.w	$zero, $fp, 8
	st.d	$ra, $fp, 0
	st.d	$s5, $s4, 16
	bgeu	$s5, $s1, .LBB0_246
# %bb.245:                              # %cond.false.peel.i806
	ld.d	$s5, $s4, 0
.LBB0_246:                              # %cond.end.peel.i772
	ld.w	$a1, $fp, 32
	sub.w	$a0, $s5, $s1
	sltu	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a0
	ld.d	$a0, $fp, 24
	sub.d	$a1, $a1, $a2
	st.w	$a1, $fp, 32
	bstrpick.d	$s2, $a2, 31, 0
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	ld.d	$a2, $s4, 0
	add.d	$a0, $a0, $s2
	add.d	$a1, $s1, $s2
	b	.LBB0_248
.LBB0_247:                              # %again.i789
                                        #   in Loop: Header=BB0_248 Depth=1
	sltu	$a3, $a2, $s0
	masknez	$a2, $a2, $a3
	ld.w	$a4, $fp, 32
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	sub.w	$a1, $a1, $s0
	sltu	$a2, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a4, $a2
	or	$a1, $a2, $a1
	sub.d	$a2, $a4, $a1
	st.w	$a2, $fp, 32
	bstrpick.d	$s1, $a1, 31, 0
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	ld.d	$a2, $s4, 0
	add.d	$a0, $a0, $s1
	add.d	$a1, $s0, $s1
.LBB0_248:                              # %cond.end.peel.i772
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a0, $fp, 24
	bne	$a1, $a2, .LBB0_270
# %bb.249:                              # %if.then.peel.i785
                                        #   in Loop: Header=BB0_248 Depth=1
	ld.d	$a2, $s4, 16
	bne	$a2, $a1, .LBB0_247
# %bb.250:                              # %again.i789.sink.split
                                        #   in Loop: Header=BB0_248 Depth=1
	st.d	$s0, $s4, 16
	move	$a2, $s0
	b	.LBB0_247
.LBB0_251:                              # %if.then656
	ori	$a0, $zero, 17
	st.w	$a0, $fp, 40
	st.d	$s3, $fp, 1360
	ld.d	$s1, $s4, 8
	st.w	$s8, $fp, 1356
	st.w	$s2, $fp, 8
	st.d	$ra, $fp, 0
	st.d	$s5, $s4, 16
	bgeu	$s5, $s1, .LBB0_253
# %bb.252:                              # %cond.false.peel.i1021
	ld.d	$s5, $s4, 0
.LBB0_253:                              # %cond.end.peel.i987
	ld.w	$a1, $fp, 32
	sub.w	$a0, $s5, $s1
	sltu	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a0
	ld.d	$a0, $fp, 24
	sub.d	$a1, $a1, $a2
	st.w	$a1, $fp, 32
	bstrpick.d	$s2, $a2, 31, 0
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	ld.d	$a2, $s4, 0
	add.d	$a0, $a0, $s2
	add.d	$a1, $s1, $s2
	b	.LBB0_255
.LBB0_254:                              # %again.i1004
                                        #   in Loop: Header=BB0_255 Depth=1
	sltu	$a3, $a2, $s0
	masknez	$a2, $a2, $a3
	ld.w	$a4, $fp, 32
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	sub.w	$a1, $a1, $s0
	sltu	$a2, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a4, $a2
	or	$a1, $a2, $a1
	sub.d	$a2, $a4, $a1
	st.w	$a2, $fp, 32
	bstrpick.d	$s1, $a1, 31, 0
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	ld.d	$a2, $s4, 0
	add.d	$a0, $a0, $s1
	add.d	$a1, $s0, $s1
.LBB0_255:                              # %cond.end.peel.i987
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a0, $fp, 24
	bne	$a1, $a2, .LBB0_258
# %bb.256:                              # %if.then.peel.i1000
                                        #   in Loop: Header=BB0_255 Depth=1
	ld.d	$a2, $s4, 16
	bne	$a2, $a1, .LBB0_254
# %bb.257:                              # %again.i1004.sink.split
                                        #   in Loop: Header=BB0_255 Depth=1
	st.d	$s0, $s4, 16
	move	$a2, $s0
	b	.LBB0_254
.LBB0_258:                              # %inflate_flush.exit1022
	st.d	$a1, $s4, 8
	move	$a0, $s6
	b	.LBB0_271
.LBB0_259:                              # %if.then370
	ori	$a0, $zero, 17
	st.w	$a0, $fp, 40
	st.d	$s3, $fp, 1360
	st.w	$s8, $fp, 1356
	st.w	$s2, $fp, 8
	st.d	$a2, $fp, 0
	st.d	$s5, $s4, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(inflate_flush)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -3
	b	.LBB0_271
.LBB0_260:
	move	$s2, $a0
	b	.LBB0_273
.LBB0_261:                              # %if.then266
	st.d	$s3, $fp, 1360
	st.w	$s8, $fp, 1356
	st.w	$s2, $fp, 8
	st.d	$ra, $fp, 0
	st.d	$s5, $s4, 16
.LBB0_262:                              # %cleanup1511
	move	$a0, $fp
	pcaddu18i	$ra, %call36(inflate_flush)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB0_271
.LBB0_263:                              # %if.then
	st.d	$s3, $fp, 1360
	ld.d	$s1, $s4, 8
	st.w	$s8, $fp, 1356
	st.w	$zero, $fp, 8
	st.d	$ra, $fp, 0
	st.d	$s5, $s4, 16
	bgeu	$s5, $s1, .LBB0_265
# %bb.264:                              # %cond.false.peel.i
	ld.d	$s5, $s4, 0
.LBB0_265:                              # %cond.end.peel.i
	ld.w	$a1, $fp, 32
	sub.w	$a0, $s5, $s1
	sltu	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a0
	ld.d	$a0, $fp, 24
	sub.d	$a1, $a1, $a2
	st.w	$a1, $fp, 32
	bstrpick.d	$s2, $a2, 31, 0
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	ld.d	$a2, $s4, 0
	add.d	$a0, $a0, $s2
	add.d	$a1, $s1, $s2
	b	.LBB0_267
.LBB0_266:                              # %again.i
                                        #   in Loop: Header=BB0_267 Depth=1
	sltu	$a3, $a2, $s0
	masknez	$a2, $a2, $a3
	ld.w	$a4, $fp, 32
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	sub.w	$a1, $a1, $s0
	sltu	$a2, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a4, $a2
	or	$a1, $a2, $a1
	sub.d	$a2, $a4, $a1
	st.w	$a2, $fp, 32
	bstrpick.d	$s1, $a1, 31, 0
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	ld.d	$a2, $s4, 0
	add.d	$a0, $a0, $s1
	add.d	$a1, $s0, $s1
.LBB0_267:                              # %cond.end.peel.i
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a0, $fp, 24
	bne	$a1, $a2, .LBB0_270
# %bb.268:                              # %if.then.peel.i
                                        #   in Loop: Header=BB0_267 Depth=1
	ld.d	$a2, $s4, 16
	bne	$a2, $a1, .LBB0_266
# %bb.269:                              # %again.i.sink.split
                                        #   in Loop: Header=BB0_267 Depth=1
	st.d	$s0, $s4, 16
	move	$a2, $s0
	b	.LBB0_266
.LBB0_270:                              # %inflate_flush.exit
	move	$a0, $zero
	st.d	$a1, $s4, 8
.LBB0_271:                              # %cleanup1511
	ld.d	$s8, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 472                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 480                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 488                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 496
	ret
.LBB0_272:
	move	$s2, $a1
.LBB0_273:                              # %bad
	move	$ra, $a2
.LBB0_274:                              # %bad
	ori	$a0, $zero, 17
	st.w	$a0, $fp, 40
	st.d	$s3, $fp, 1360
	st.w	$s8, $fp, 1356
	st.w	$s2, $fp, 8
	st.d	$ra, $fp, 0
	st.d	$s5, $s4, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(inflate_flush)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -2
	b	.LBB0_271
.Lfunc_end0:
	.size	nsis_inflate, .Lfunc_end0-nsis_inflate
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_6-.LJTI0_0
	.word	.LBB0_56-.LJTI0_0
	.word	.LBB0_33-.LJTI0_0
	.word	.LBB0_21-.LJTI0_0
	.word	.LBB0_58-.LJTI0_0
	.word	.LBB0_7-.LJTI0_0
	.word	.LBB0_47-.LJTI0_0
	.word	.LBB0_25-.LJTI0_0
	.word	.LBB0_62-.LJTI0_0
	.word	.LBB0_71-.LJTI0_0
	.word	.LBB0_37-.LJTI0_0
	.word	.LBB0_67-.LJTI0_0
	.word	.LBB0_42-.LJTI0_0
	.word	.LBB0_78-.LJTI0_0
	.word	.LBB0_274-.LJTI0_0
	.word	.LBB0_27-.LJTI0_0
.LJTI0_1:
	.word	.LBB0_66-.LJTI0_1
	.word	.LBB0_146-.LJTI0_1
	.word	.LBB0_151-.LJTI0_1
	.word	.LBB0_274-.LJTI0_1
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function inflate_flush
	.type	inflate_flush,@function
inflate_flush:                          # @inflate_flush
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	lu12i.w	$a0, 9
	ori	$a0, $a0, 3032
	add.d	$s2, $fp, $a0
	ld.d	$s0, $s2, 8
	ld.d	$a0, $s2, 16
	bgeu	$a0, $s0, .LBB1_2
# %bb.1:                                # %cond.false.peel
	ld.d	$a0, $s2, 0
.LBB1_2:                                # %cond.end.peel
	ld.w	$a1, $fp, 32
	sub.w	$a0, $a0, $s0
	sltu	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a0
	ld.d	$a0, $fp, 24
	sub.d	$a1, $a1, $a2
	st.w	$a1, $fp, 32
	bstrpick.d	$s1, $a2, 31, 0
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	ld.d	$a2, $s2, 0
	add.d	$a0, $a0, $s1
	add.d	$a1, $s0, $s1
	st.d	$a0, $fp, 24
	beq	$a1, $a2, .LBB1_4
.LBB1_3:                                # %if.end25
	st.d	$a1, $s2, 8
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB1_4:                                # %if.then.peel
	ld.d	$a2, $s2, 16
	lu12i.w	$a3, 1
	ori	$a3, $a3, 3032
	add.d	$s0, $fp, $a3
	bne	$a2, $a1, .LBB1_6
.LBB1_5:                                # %if.then21.peel
	st.d	$s0, $s2, 16
	move	$a2, $s0
.LBB1_6:                                # %again
                                        # =>This Inner Loop Header: Depth=1
	sltu	$a3, $a2, $s0
	masknez	$a2, $a2, $a3
	ld.w	$a4, $fp, 32
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	sub.w	$a1, $a1, $s0
	sltu	$a2, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a4, $a2
	or	$a1, $a2, $a1
	sub.d	$a2, $a4, $a1
	st.w	$a2, $fp, 32
	bstrpick.d	$s1, $a1, 31, 0
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	ld.d	$a2, $s2, 0
	add.d	$a0, $a0, $s1
	add.d	$a1, $s0, $s1
	st.d	$a0, $fp, 24
	bne	$a1, $a2, .LBB1_3
# %bb.7:                                # %if.then
                                        #   in Loop: Header=BB1_6 Depth=1
	ld.d	$a2, $s2, 16
	bne	$a2, $a1, .LBB1_6
	b	.LBB1_5
.Lfunc_end1:
	.size	inflate_flush, .Lfunc_end1-inflate_flush
                                        # -- End function
	.p2align	5                               # -- Begin function huft_build
	.type	huft_build,@function
huft_build:                             # @huft_build
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -416
	st.d	$ra, $sp, 408                   # 8-byte Folded Spill
	st.d	$fp, $sp, 400                   # 8-byte Folded Spill
	st.d	$s0, $sp, 392                   # 8-byte Folded Spill
	st.d	$s1, $sp, 384                   # 8-byte Folded Spill
	st.d	$s2, $sp, 376                   # 8-byte Folded Spill
	st.d	$s3, $sp, 368                   # 8-byte Folded Spill
	st.d	$s4, $sp, 360                   # 8-byte Folded Spill
	st.d	$s5, $sp, 352                   # 8-byte Folded Spill
	st.d	$s6, $sp, 344                   # 8-byte Folded Spill
	st.d	$s7, $sp, 336                   # 8-byte Folded Spill
	st.d	$s8, $sp, 328                   # 8-byte Folded Spill
	move	$t5, $a4
	move	$t6, $a3
	move	$t7, $a2
	ld.d	$t0, $sp, 416
	xvrepli.b	$xr0, 0
	xvst	$xr0, $sp, 264
	xvst	$xr0, $sp, 296
	addi.d	$a2, $sp, 264
	move	$a3, $a1
	move	$a4, $a0
	.p2align	4, , 16
.LBB2_1:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	ld.wu	$t1, $a4, 0
	slli.d	$t1, $t1, 2
	ldx.w	$t2, $t1, $a2
	addi.d	$a4, $a4, 4
	addi.d	$t2, $t2, 1
	addi.w	$a3, $a3, -1
	stx.w	$t2, $t1, $a2
	bnez	$a3, .LBB2_1
# %bb.2:                                # %do.end
	ld.w	$a2, $sp, 264
	bne	$a2, $a1, .LBB2_4
# %bb.3:                                # %if.then
	move	$a0, $zero
	st.d	$zero, $a5, 0
	st.w	$zero, $a6, 0
	b	.LBB2_84
.LBB2_4:                                # %if.end
	ld.w	$t1, $sp, 268
	ld.w	$a4, $a6, 0
	ori	$t8, $zero, 1
	ori	$t2, $zero, 1
	bnez	$t1, .LBB2_19
# %bb.5:                                # %for.inc
	ld.w	$a2, $sp, 272
	ori	$t2, $zero, 2
	bnez	$a2, .LBB2_19
# %bb.6:                                # %for.inc.1
	ld.w	$a2, $sp, 276
	ori	$t2, $zero, 3
	bnez	$a2, .LBB2_19
# %bb.7:                                # %for.inc.2
	ld.w	$a2, $sp, 280
	ori	$t2, $zero, 4
	bnez	$a2, .LBB2_19
# %bb.8:                                # %for.inc.3
	ld.w	$a2, $sp, 284
	ori	$t2, $zero, 5
	bnez	$a2, .LBB2_19
# %bb.9:                                # %for.inc.4
	ld.w	$a2, $sp, 288
	ori	$t2, $zero, 6
	bnez	$a2, .LBB2_19
# %bb.10:                               # %for.inc.5
	ld.w	$a2, $sp, 292
	ori	$t2, $zero, 7
	bnez	$a2, .LBB2_19
# %bb.11:                               # %for.inc.6
	ld.w	$a2, $sp, 296
	ori	$t2, $zero, 8
	bnez	$a2, .LBB2_19
# %bb.12:                               # %for.inc.7
	ld.w	$a2, $sp, 300
	ori	$t2, $zero, 9
	bnez	$a2, .LBB2_19
# %bb.13:                               # %for.inc.8
	ld.w	$a2, $sp, 304
	ori	$t2, $zero, 10
	bnez	$a2, .LBB2_19
# %bb.14:                               # %for.inc.9
	ld.w	$a2, $sp, 308
	ori	$t2, $zero, 11
	bnez	$a2, .LBB2_19
# %bb.15:                               # %for.inc.10
	ld.w	$a2, $sp, 312
	ori	$t2, $zero, 12
	bnez	$a2, .LBB2_19
# %bb.16:                               # %for.inc.11
	ld.w	$a2, $sp, 316
	ori	$t2, $zero, 13
	bnez	$a2, .LBB2_19
# %bb.17:                               # %for.inc.12
	ld.w	$a2, $sp, 320
	ori	$t2, $zero, 14
	bnez	$a2, .LBB2_19
# %bb.18:                               # %for.inc.13
	ld.w	$a2, $sp, 324
	sltui	$a2, $a2, 1
	addi.d	$t2, $a2, 15
.LBB2_19:                               # %for.end
	sltu	$a2, $t2, $a4
	ld.w	$a3, $sp, 324
	masknez	$t3, $t2, $a2
	maskeqz	$a2, $a4, $a2
	or	$t4, $a2, $t3
	ori	$t3, $zero, 15
	bnez	$a3, .LBB2_33
# %bb.20:                               # %for.inc23
	ld.w	$a2, $sp, 320
	ori	$t3, $zero, 14
	bnez	$a2, .LBB2_33
# %bb.21:                               # %for.inc23.1
	ld.w	$a2, $sp, 316
	ori	$t3, $zero, 13
	bnez	$a2, .LBB2_33
# %bb.22:                               # %for.inc23.2
	ld.w	$a2, $sp, 312
	ori	$t3, $zero, 12
	bnez	$a2, .LBB2_33
# %bb.23:                               # %for.inc23.3
	ld.w	$a2, $sp, 308
	ori	$t3, $zero, 11
	bnez	$a2, .LBB2_33
# %bb.24:                               # %for.inc23.4
	ld.w	$a2, $sp, 304
	ori	$t3, $zero, 10
	bnez	$a2, .LBB2_33
# %bb.25:                               # %for.inc23.5
	ld.w	$a2, $sp, 300
	ori	$t3, $zero, 9
	bnez	$a2, .LBB2_33
# %bb.26:                               # %for.inc23.6
	ld.w	$a2, $sp, 296
	ori	$t3, $zero, 8
	bnez	$a2, .LBB2_33
# %bb.27:                               # %for.inc23.7
	ld.w	$a2, $sp, 292
	ori	$t3, $zero, 7
	bnez	$a2, .LBB2_33
# %bb.28:                               # %for.inc23.8
	ld.w	$a2, $sp, 288
	ori	$t3, $zero, 6
	bnez	$a2, .LBB2_32
# %bb.29:                               # %for.inc23.9
	ld.w	$a2, $sp, 284
	ori	$t3, $zero, 5
	bnez	$a2, .LBB2_32
# %bb.30:                               # %for.inc23.10
	ld.w	$a2, $sp, 280
	ori	$t3, $zero, 4
	bnez	$a2, .LBB2_32
# %bb.31:                               # %for.inc23.11
	ld.w	$a2, $sp, 276
	ori	$t3, $zero, 3
	beqz	$a2, .LBB2_85
.LBB2_32:
	ori	$t8, $zero, 1
.LBB2_33:                               # %for.end25
	sltu	$a2, $t4, $t3
	masknez	$a3, $t3, $a2
	maskeqz	$a2, $t4, $a2
	or	$t4, $a2, $a3
	st.w	$t4, $a6, 0
	ori	$a2, $zero, 1
	sll.w	$a6, $a2, $t2
	bgeu	$t2, $t3, .LBB2_37
# %bb.34:                               # %for.body31.preheader
	addi.d	$a2, $sp, 264
	alsl.d	$a2, $t2, $a2, 2
	sub.d	$a4, $t3, $t2
	addi.w	$a3, $zero, -3
	.p2align	4, , 16
.LBB2_35:                               # %for.body31
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t1, $a2, 0
	sub.w	$a6, $a6, $t1
	bltz	$a6, .LBB2_48
# %bb.36:                               # %for.inc37
                                        #   in Loop: Header=BB2_35 Depth=1
	slli.w	$a6, $a6, 1
	addi.d	$a4, $a4, -1
	addi.d	$a2, $a2, 4
	bnez	$a4, .LBB2_35
.LBB2_37:                               # %for.end40
	addi.d	$a2, $sp, 264
	slli.d	$a3, $t3, 2
	ldx.w	$s8, $a3, $a2
	sub.w	$a3, $a6, $s8
	bltz	$a3, .LBB2_47
# %bb.38:                               # %if.end46
	st.d	$t6, $sp, 40                    # 8-byte Folded Spill
	st.d	$t5, $sp, 48                    # 8-byte Folded Spill
	alsl.d	$a2, $t3, $a2, 2
	st.w	$a6, $a2, 0
	addi.d	$a3, $t3, -1
	st.w	$zero, $sp, 84
	beqz	$a3, .LBB2_41
# %bb.39:                               # %while.body56.preheader
	move	$a4, $zero
	addi.d	$a2, $sp, 88
	addi.d	$t1, $sp, 268
	.p2align	4, , 16
.LBB2_40:                               # %while.body56
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t5, $t1, 0
	add.d	$a4, $t5, $a4
	st.w	$a4, $a2, 0
	addi.d	$a2, $a2, 4
	addi.w	$a3, $a3, -1
	addi.d	$t1, $t1, 4
	bnez	$a3, .LBB2_40
.LBB2_41:                               # %do.body61.preheader
	move	$a3, $zero
	addi.d	$a4, $sp, 80
	pcalau12i	$a2, %pc_hi20(huft_build.v)
	addi.d	$t6, $a2, %pc_lo12(huft_build.v)
	b	.LBB2_43
	.p2align	4, , 16
.LBB2_42:                               # %do.cond71
                                        #   in Loop: Header=BB2_43 Depth=1
	addi.w	$a3, $a3, 1
	addi.d	$a0, $a0, 4
	beq	$a1, $a3, .LBB2_45
.LBB2_43:                               # %do.body61
                                        # =>This Inner Loop Header: Depth=1
	ld.wu	$a2, $a0, 0
	beqz	$a2, .LBB2_42
# %bb.44:                               # %if.then64
                                        #   in Loop: Header=BB2_43 Depth=1
	slli.d	$a2, $a2, 2
	ldx.wu	$t1, $a2, $a4
	addi.d	$t5, $t1, 1
	stx.w	$t5, $a2, $a4
	slli.d	$a2, $t1, 2
	stx.w	$a3, $t6, $a2
	b	.LBB2_42
.LBB2_45:                               # %do.end74
	st.d	$t7, $sp, 56                    # 8-byte Folded Spill
	slli.d	$a1, $t3, 2
	addi.d	$a0, $sp, 80
	ldx.wu	$a3, $a1, $a0
	st.w	$zero, $sp, 80
	st.d	$zero, $sp, 144
	bgeu	$t3, $t2, .LBB2_49
.LBB2_46:                               # %for.end226
	xor	$a0, $a6, $s8
	sltu	$a0, $zero, $a0
	addi.w	$a1, $zero, -5
	maskeqz	$a0, $a1, $a0
	maskeqz	$a0, $a0, $t8
	b	.LBB2_84
.LBB2_47:
	addi.w	$a0, $zero, -3
	b	.LBB2_84
.LBB2_48:
	move	$a0, $a3
	b	.LBB2_84
.LBB2_49:                               # %for.body82.lr.ph
	move	$s6, $zero
	move	$s7, $zero
	move	$s2, $zero
	move	$a1, $zero
	sub.d	$fp, $zero, $t4
	alsl.d	$a2, $a3, $t6, 2
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	addi.d	$a2, $t3, 1
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	addi.d	$a3, $sp, 264
	alsl.d	$a2, $t2, $a3, 2
	addi.d	$s1, $a2, 4
	addi.d	$s0, $zero, -1
	ori	$s3, $zero, 1
	ori	$s4, $zero, 1440
	addi.d	$s5, $sp, 144
	move	$t7, $fp
	st.d	$t8, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
.LBB2_50:                               # %for.body82
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_54 Depth 2
                                        #       Child Loop BB2_58 Depth 3
                                        #         Child Loop BB2_62 Depth 4
                                        #       Child Loop BB2_74 Depth 3
                                        #       Child Loop BB2_76 Depth 3
                                        #       Child Loop BB2_79 Depth 3
	slli.d	$a2, $t2, 2
	ldx.w	$s8, $a2, $a3
	beqz	$s8, .LBB2_81
# %bb.51:                               # %while.cond89.preheader.preheader
                                        #   in Loop: Header=BB2_50 Depth=1
	addi.d	$a2, $t2, -1
	sll.w	$a2, $s3, $a2
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	b	.LBB2_54
.LBB2_52:                               #   in Loop: Header=BB2_54 Depth=2
	move	$a3, $t7
.LBB2_53:                               # %cleanup
                                        #   in Loop: Header=BB2_54 Depth=2
	addi.w	$s8, $s8, -1
	move	$t7, $a3
	beqz	$s8, .LBB2_82
.LBB2_54:                               # %while.cond89.preheader
                                        #   Parent Loop BB2_50 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_58 Depth 3
                                        #         Child Loop BB2_62 Depth 4
                                        #       Child Loop BB2_74 Depth 3
                                        #       Child Loop BB2_76 Depth 3
                                        #       Child Loop BB2_79 Depth 3
	add.w	$t1, $t7, $t4
	bge	$t1, $t2, .LBB2_68
# %bb.55:                               # %while.body92.preheader
                                        #   in Loop: Header=BB2_54 Depth=2
	sub.w	$t8, $t3, $t1
	addi.w	$a4, $s0, 0
	b	.LBB2_58
	.p2align	4, , 16
.LBB2_56:                               # %if.then129
                                        #   in Loop: Header=BB2_58 Depth=3
	slli.d	$a2, $a4, 3
	ldx.d	$a2, $a2, $s5
	slli.d	$a4, $s0, 2
	stx.w	$a1, $a4, $a0
	srl.w	$a4, $a1, $t7
	sub.d	$t7, $s2, $a2
	bstrpick.d	$ra, $a4, 31, 0
	bstrpick.d	$t7, $t7, 31, 2
	sub.d	$s7, $t7, $a4
	alsl.d	$a4, $ra, $a2, 2
	slli.d	$t7, $ra, 2
	stx.b	$t1, $a2, $t7
	st.b	$t4, $a4, 1
	st.h	$s7, $a4, 2
.LBB2_57:                               # %if.end147
                                        #   in Loop: Header=BB2_58 Depth=3
	add.w	$t1, $t5, $t4
	sub.w	$t8, $t8, $t4
	move	$a4, $s0
	move	$t7, $t5
	bge	$t1, $t2, .LBB2_71
.LBB2_58:                               # %while.body92
                                        #   Parent Loop BB2_50 Depth=1
                                        #     Parent Loop BB2_54 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_62 Depth 4
	move	$t5, $t1
	sub.w	$a3, $t2, $t1
	sll.w	$s6, $s3, $a3
	move	$t1, $a3
	bgeu	$s8, $s6, .LBB2_65
# %bb.59:                               # %while.body92
                                        #   in Loop: Header=BB2_58 Depth=3
	sub.w	$a2, $t3, $t5
	sltu	$t1, $a2, $t4
	maskeqz	$a2, $a2, $t1
	masknez	$t1, $t4, $t1
	or	$s0, $a2, $t1
	move	$t1, $a3
	bgeu	$a3, $s0, .LBB2_65
# %bb.60:                               # %while.cond107.preheader
                                        #   in Loop: Header=BB2_58 Depth=3
	addi.w	$t1, $a3, 1
	bgeu	$t1, $s0, .LBB2_65
# %bb.61:                               # %land.rhs.preheader
                                        #   in Loop: Header=BB2_58 Depth=3
	sltu	$a2, $t4, $t8
	masknez	$s2, $t8, $a2
	maskeqz	$a2, $t4, $a2
	or	$s2, $a2, $s2
	sub.d	$a2, $s6, $s8
	move	$s6, $s1
	.p2align	4, , 16
.LBB2_62:                               # %land.rhs
                                        #   Parent Loop BB2_50 Depth=1
                                        #     Parent Loop BB2_54 Depth=2
                                        #       Parent Loop BB2_58 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$ra, $s6, 0
	slli.w	$a2, $a2, 1
	bgeu	$ra, $a2, .LBB2_65
# %bb.63:                               # %while.cond107
                                        #   in Loop: Header=BB2_62 Depth=4
	sub.d	$a2, $a2, $ra
	addi.w	$t1, $t1, 1
	addi.d	$s6, $s6, 4
	bltu	$t1, $s0, .LBB2_62
# %bb.64:                               #   in Loop: Header=BB2_58 Depth=3
	move	$t1, $s2
	.p2align	4, , 16
.LBB2_65:                               # %if.end117
                                        #   in Loop: Header=BB2_58 Depth=3
	ld.wu	$s2, $t0, 0
	sll.w	$s6, $s3, $t1
	add.w	$a2, $s2, $s6
	bltu	$s4, $a2, .LBB2_83
# %bb.66:                               # %if.end122
                                        #   in Loop: Header=BB2_58 Depth=3
	addi.d	$s0, $a4, 1
	alsl.d	$s2, $s2, $a7, 2
	slli.d	$ra, $s0, 3
	stx.d	$s2, $ra, $s5
	st.w	$a2, $t0, 0
	bnez	$s0, .LBB2_56
# %bb.67:                               # %if.else
                                        #   in Loop: Header=BB2_58 Depth=3
	st.d	$s2, $a5, 0
	b	.LBB2_57
	.p2align	4, , 16
.LBB2_68:                               # %while.cond89.preheader.while.end148_crit_edge
                                        #   in Loop: Header=BB2_54 Depth=2
	sub.d	$a3, $t2, $t7
	ori	$a4, $zero, 192
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	bgeu	$t6, $a2, .LBB2_72
.LBB2_69:                               # %if.else160
                                        #   in Loop: Header=BB2_54 Depth=2
	ld.w	$s7, $t6, 0
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	bgeu	$s7, $a2, .LBB2_80
# %bb.70:                               # %if.then163
                                        #   in Loop: Header=BB2_54 Depth=2
	sltui	$a2, $s7, 256
	ori	$a4, $zero, 96
	masknez	$a4, $a4, $a2
	addi.d	$t6, $t6, 4
	srl.w	$t1, $a1, $t7
	bltu	$t1, $s6, .LBB2_73
	b	.LBB2_75
.LBB2_71:                               # %while.end148.loopexit
                                        #   in Loop: Header=BB2_54 Depth=2
	move	$t7, $t5
	ori	$a4, $zero, 192
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	bltu	$t6, $a2, .LBB2_69
	.p2align	4, , 16
.LBB2_72:                               # %if.end189
                                        #   in Loop: Header=BB2_54 Depth=2
	srl.w	$t1, $a1, $t7
	bgeu	$t1, $s6, .LBB2_75
.LBB2_73:                               # %for.body196.preheader
                                        #   in Loop: Header=BB2_54 Depth=2
	sll.w	$a2, $s3, $a3
	.p2align	4, , 16
.LBB2_74:                               # %for.body196
                                        #   Parent Loop BB2_50 Depth=1
                                        #     Parent Loop BB2_54 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bstrpick.d	$t5, $t1, 31, 0
	alsl.d	$t8, $t5, $s2, 2
	slli.d	$t5, $t5, 2
	stx.b	$a4, $s2, $t5
	st.b	$a3, $t8, 1
	add.w	$t1, $t1, $a2
	st.h	$s7, $t8, 2
	bltu	$t1, $s6, .LBB2_74
.LBB2_75:                               # %for.end201
                                        #   in Loop: Header=BB2_54 Depth=2
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	and	$a2, $a3, $a1
	addi.w	$a2, $a2, 0
	beqz	$a2, .LBB2_77
	.p2align	4, , 16
.LBB2_76:                               # %for.body206
                                        #   Parent Loop BB2_50 Depth=1
                                        #     Parent Loop BB2_54 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xor	$a1, $a3, $a1
	bstrpick.d	$a3, $a3, 31, 1
	and	$a2, $a3, $a1
	bnez	$a2, .LBB2_76
.LBB2_77:                               # %for.end209
                                        #   in Loop: Header=BB2_54 Depth=2
	xor	$a1, $a3, $a1
	addi.d	$a4, $zero, -1
	addi.w	$a2, $s0, 0
	slli.d	$a3, $a2, 2
	ldx.w	$a3, $a3, $a0
	sll.w	$t1, $a4, $t7
	andn	$t1, $a1, $t1
	addi.w	$t1, $t1, 0
	beq	$t1, $a3, .LBB2_52
# %bb.78:                               # %while.body219.preheader
                                        #   in Loop: Header=BB2_54 Depth=2
	addi.d	$a3, $sp, 76
	alsl.d	$t1, $a2, $a3, 2
	.p2align	4, , 16
.LBB2_79:                               # %while.body219
                                        #   Parent Loop BB2_50 Depth=1
                                        #     Parent Loop BB2_54 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	sub.d	$a3, $t7, $t4
	add.d	$a2, $fp, $t7
	sll.w	$a2, $a4, $a2
	ld.w	$t5, $t1, 0
	andn	$a2, $a1, $a2
	addi.w	$a2, $a2, 0
	addi.d	$s0, $s0, -1
	addi.d	$t1, $t1, -4
	move	$t7, $a3
	bne	$a2, $t5, .LBB2_79
	b	.LBB2_53
.LBB2_80:                               # %if.else173
                                        #   in Loop: Header=BB2_54 Depth=2
	sub.d	$a2, $s7, $a2
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 1
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	ldx.b	$a4, $a4, $a2
	ld.d	$t1, $sp, 40                    # 8-byte Folded Reload
	ldx.hu	$s7, $t1, $a2
	addi.d	$a4, $a4, 80
	addi.d	$t6, $t6, 4
	srl.w	$t1, $a1, $t7
	bgeu	$t1, $s6, .LBB2_75
	b	.LBB2_73
.LBB2_81:                               #   in Loop: Header=BB2_50 Depth=1
	move	$a3, $t7
.LBB2_82:                               # %for.inc224
                                        #   in Loop: Header=BB2_50 Depth=1
	addi.d	$t2, $t2, 1
	addi.d	$s1, $s1, 4
	move	$t7, $a3
	ld.d	$t8, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	addi.d	$a3, $sp, 264
	bne	$t2, $a2, .LBB2_50
	b	.LBB2_46
.LBB2_83:
	addi.w	$a0, $zero, -4
.LBB2_84:                               # %cleanup234
	ld.d	$s8, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 400                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 408                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 416
	ret
.LBB2_85:                               # %for.inc23.12
	ld.w	$a2, $sp, 272
	ori	$t3, $zero, 2
	ori	$t8, $zero, 1
	bnez	$a2, .LBB2_33
# %bb.86:                               # %for.inc23.13
	sltui	$t8, $t1, 1
	sltu	$t3, $zero, $t1
	b	.LBB2_33
.Lfunc_end2:
	.size	huft_build, .Lfunc_end2-huft_build
                                        # -- End function
	.type	fixed_built,@object             # @fixed_built
	.local	fixed_built
	.comm	fixed_built,1,1
	.type	nsis_inflate.lc,@object         # @nsis_inflate.lc
	.local	nsis_inflate.lc
	.comm	nsis_inflate.lc,1152,32
	.type	cplens,@object                  # @cplens
	.section	.rodata,"a",@progbits
	.p2align	1, 0x0
cplens:
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	5                               # 0x5
	.half	6                               # 0x6
	.half	7                               # 0x7
	.half	8                               # 0x8
	.half	9                               # 0x9
	.half	10                              # 0xa
	.half	11                              # 0xb
	.half	13                              # 0xd
	.half	15                              # 0xf
	.half	17                              # 0x11
	.half	19                              # 0x13
	.half	23                              # 0x17
	.half	27                              # 0x1b
	.half	31                              # 0x1f
	.half	35                              # 0x23
	.half	43                              # 0x2b
	.half	51                              # 0x33
	.half	59                              # 0x3b
	.half	67                              # 0x43
	.half	83                              # 0x53
	.half	99                              # 0x63
	.half	115                             # 0x73
	.half	131                             # 0x83
	.half	163                             # 0xa3
	.half	195                             # 0xc3
	.half	227                             # 0xe3
	.half	258                             # 0x102
	.half	0                               # 0x0
	.half	0                               # 0x0
	.size	cplens, 62

	.type	cplext,@object                  # @cplext
	.p2align	1, 0x0
cplext:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	2                               # 0x2
	.half	2                               # 0x2
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	4                               # 0x4
	.half	4                               # 0x4
	.half	4                               # 0x4
	.half	5                               # 0x5
	.half	5                               # 0x5
	.half	5                               # 0x5
	.half	5                               # 0x5
	.half	0                               # 0x0
	.half	112                             # 0x70
	.half	112                             # 0x70
	.size	cplext, 62

	.type	fixed_tl,@object                # @fixed_tl
	.local	fixed_tl
	.comm	fixed_tl,8,8
	.type	fixed_bl,@object                # @fixed_bl
	.data
	.p2align	2, 0x0
fixed_bl:
	.word	9                               # 0x9
	.size	fixed_bl, 4

	.type	fixed_mem,@object               # @fixed_mem
	.local	fixed_mem
	.comm	fixed_mem,2176,2
	.type	cpdist,@object                  # @cpdist
	.section	.rodata,"a",@progbits
	.p2align	1, 0x0
cpdist:
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	5                               # 0x5
	.half	7                               # 0x7
	.half	9                               # 0x9
	.half	13                              # 0xd
	.half	17                              # 0x11
	.half	25                              # 0x19
	.half	33                              # 0x21
	.half	49                              # 0x31
	.half	65                              # 0x41
	.half	97                              # 0x61
	.half	129                             # 0x81
	.half	193                             # 0xc1
	.half	257                             # 0x101
	.half	385                             # 0x181
	.half	513                             # 0x201
	.half	769                             # 0x301
	.half	1025                            # 0x401
	.half	1537                            # 0x601
	.half	2049                            # 0x801
	.half	3073                            # 0xc01
	.half	4097                            # 0x1001
	.half	6145                            # 0x1801
	.half	8193                            # 0x2001
	.half	12289                           # 0x3001
	.half	16385                           # 0x4001
	.half	24577                           # 0x6001
	.size	cpdist, 60

	.type	cpdext,@object                  # @cpdext
	.p2align	1, 0x0
cpdext:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	4                               # 0x4
	.half	5                               # 0x5
	.half	5                               # 0x5
	.half	6                               # 0x6
	.half	6                               # 0x6
	.half	7                               # 0x7
	.half	7                               # 0x7
	.half	8                               # 0x8
	.half	8                               # 0x8
	.half	9                               # 0x9
	.half	9                               # 0x9
	.half	10                              # 0xa
	.half	10                              # 0xa
	.half	11                              # 0xb
	.half	11                              # 0xb
	.half	12                              # 0xc
	.half	12                              # 0xc
	.half	13                              # 0xd
	.half	13                              # 0xd
	.size	cpdext, 60

	.type	fixed_td,@object                # @fixed_td
	.local	fixed_td
	.comm	fixed_td,8,8
	.type	fixed_bd,@object                # @fixed_bd
	.data
	.p2align	2, 0x0
fixed_bd:
	.word	5                               # 0x5
	.size	fixed_bd, 4

	.type	border,@object                  # @border
	.section	.rodata,"a",@progbits
border:
	.ascii	"\020\021\022\000\b\007\t\006\n\005\013\004\f\003\r\002\016\001\017"
	.size	border, 19

	.type	inflate_mask,@object            # @inflate_mask
	.p2align	1, 0x0
inflate_mask:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	3                               # 0x3
	.half	7                               # 0x7
	.half	15                              # 0xf
	.half	31                              # 0x1f
	.half	63                              # 0x3f
	.half	127                             # 0x7f
	.half	255                             # 0xff
	.half	511                             # 0x1ff
	.half	1023                            # 0x3ff
	.half	2047                            # 0x7ff
	.half	4095                            # 0xfff
	.half	8191                            # 0x1fff
	.half	16383                           # 0x3fff
	.half	32767                           # 0x7fff
	.half	65535                           # 0xffff
	.size	inflate_mask, 34

	.type	huft_build.v,@object            # @huft_build.v
	.local	huft_build.v
	.comm	huft_build.v,1152,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym nsis_inflate.lc
	.addrsig_sym cplens
	.addrsig_sym cplext
	.addrsig_sym fixed_tl
	.addrsig_sym fixed_bl
	.addrsig_sym fixed_mem
	.addrsig_sym cpdist
	.addrsig_sym cpdext
	.addrsig_sym fixed_td
	.addrsig_sym fixed_bd
	.addrsig_sym huft_build.v
