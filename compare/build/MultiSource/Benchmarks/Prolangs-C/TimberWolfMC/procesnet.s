	.file	"procesnet.c"
	.text
	.globl	procesnet                       # -- Begin function procesnet
	.p2align	5
	.type	procesnet,@function
procesnet:                              # @procesnet
# %bb.0:                                # %entry
	ori	$a3, $zero, 1
	beq	$a1, $a3, .LBB0_80
# %bb.1:                                # %if.end
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
	move	$s0, $a2
	move	$s1, $a1
	move	$s3, $a0
	pcaddu18i	$ra, %call36(grepair)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(prepair)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $s0
	pcaddu18i	$ra, %call36(loadpg)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(shortpath)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(routenet)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(netRoot)
	addi.d	$a0, $a0, %pc_lo12(netRoot)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(savePaths)
	ld.d	$a0, $a0, %got_pc_lo12(savePaths)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(netSegArray)
	ld.d	$fp, $a0, %got_pc_lo12(netSegArray)
	move	$s1, $zero
	move	$s0, $zero
	ori	$a6, $zero, 0
	lu32i.d	$a6, 1
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	ori	$s4, $zero, 8
                                        # implicit-def: $r25
	st.d	$s3, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 8                     # 8-byte Folded Spill
	st.d	$a6, $sp, 128                   # 8-byte Folded Spill
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                # %for.end523
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	addi.d	$s0, $s0, 1
	pcalau12i	$a0, %got_pc_hi20(MAXPATHS)
	ld.d	$a0, $a0, %got_pc_lo12(MAXPATHS)
	ld.w	$a0, $a0, 0
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ori	$s4, $zero, 8
	bge	$s1, $a0, .LBB0_79
.LBB0_3:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
                                        #     Child Loop BB0_12 Depth 2
                                        #       Child Loop BB0_15 Depth 3
                                        #       Child Loop BB0_18 Depth 3
                                        #     Child Loop BB0_23 Depth 2
                                        #       Child Loop BB0_26 Depth 3
                                        #     Child Loop BB0_33 Depth 2
                                        #       Child Loop BB0_35 Depth 3
                                        #       Child Loop BB0_44 Depth 3
                                        #       Child Loop BB0_63 Depth 3
                                        #         Child Loop BB0_64 Depth 4
                                        #       Child Loop BB0_76 Depth 3
                                        #       Child Loop BB0_55 Depth 3
                                        #       Child Loop BB0_58 Depth 3
	addi.d	$a1, $sp, 136
	addi.d	$a2, $sp, 148
	addi.d	$a3, $sp, 144
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136
	slli.d	$s5, $s3, 4
	st.d	$s5, $sp, 40                    # 8-byte Folded Spill
	beqz	$a0, .LBB0_78
# %bb.4:                                # %if.end3
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.w	$a0, $sp, 144
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a2, $a1, $a0
	ld.d	$a0, $fp, 0
	ld.h	$a3, $a2, 0
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a0, 8
	ori	$a5, $zero, 1
	st.h	$a5, $a1, 0
	st.h	$zero, $a4, 0
	ori	$a4, $zero, 2
	blt	$a3, $a4, .LBB0_9
# %bb.5:                                # %for.body.preheader
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.d	$a2, $a2, 2
	addi.d	$a3, $a3, -1
	ori	$a4, $zero, 1
	b	.LBB0_7
	.p2align	4, , 16
.LBB0_6:                                # %if.end26
                                        #   in Loop: Header=BB0_7 Depth=2
	slli.d	$a6, $a4, 3
	ldx.d	$a6, $a0, $a6
	ld.h	$a7, $a6, 0
	addi.d	$a7, $a7, 1
	st.h	$a7, $a6, 0
	ext.w.h	$a7, $a7
	slli.d	$a7, $a7, 1
	stx.h	$a5, $a6, $a7
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 2
	beqz	$a3, .LBB0_9
.LBB0_7:                                # %for.body
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a5, $a2, 0
	bnez	$a5, .LBB0_6
# %bb.8:                                # %if.then18
                                        #   in Loop: Header=BB0_7 Depth=2
	addi.w	$a4, $a4, 1
	ld.h	$a5, $a1, 0
	slli.d	$a6, $a4, 3
	ldx.d	$a6, $a0, $a6
	addi.d	$a5, $a5, 1
	st.h	$a5, $a1, 0
	st.h	$zero, $a6, 0
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 2
	bnez	$a3, .LBB0_7
	.p2align	4, , 16
.LBB0_9:                                # %for.end
                                        #   in Loop: Header=BB0_3 Depth=1
	pcaddu18i	$ra, %call36(mergeSeg)
	jirl	$ra, $ra, 0
	ld.d	$s8, $fp, 0
	ld.d	$a0, $s8, 0
	ld.h	$fp, $a0, 0
	addi.d	$s6, $fp, 1
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	blez	$fp, .LBB0_19
# %bb.10:                               # %for.cond45.preheader.lr.ph
                                        #   in Loop: Header=BB0_3 Depth=1
	pcalau12i	$a0, %got_pc_hi20(numnodes)
	ld.d	$a0, $a0, %got_pc_lo12(numnodes)
	ld.w	$a0, $a0, 0
	move	$s0, $zero
	vreplgr2vr.w	$vr0, $a0
	ori	$a1, $zero, 1
	b	.LBB0_12
	.p2align	4, , 16
.LBB0_11:                               # %for.inc66
                                        #   in Loop: Header=BB0_12 Depth=2
	addi.d	$a1, $a1, 1
	beq	$a1, $s6, .LBB0_20
.LBB0_12:                               # %for.cond45.preheader
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_15 Depth 3
                                        #       Child Loop BB0_18 Depth 3
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s8, $a2
	ld.h	$a3, $a2, 0
	blez	$a3, .LBB0_11
# %bb.13:                               # %for.body52.preheader
                                        #   in Loop: Header=BB0_12 Depth=2
	bstrpick.d	$a3, $a3, 15, 0
	ori	$a4, $zero, 1
	bltu	$a3, $s4, .LBB0_17
# %bb.14:                               # %vector.ph
                                        #   in Loop: Header=BB0_12 Depth=2
	bstrpick.d	$a4, $a3, 14, 3
	slli.d	$a5, $a4, 3
	srli.d	$a6, $a3, 3
	ori	$a4, $zero, 1
	bstrins.d	$a4, $a6, 14, 3
	vld	$vr2, $sp, 80                   # 16-byte Folded Reload
	vori.b	$vr1, $vr2, 0
	vinsgr2vr.w	$vr1, $s0, 0
	addi.d	$a6, $a2, 10
	move	$a7, $a5
	.p2align	4, , 16
.LBB0_15:                               # %vector.body
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t0, $a6, -8
	ld.d	$t1, $a6, 0
	vinsgr2vr.d	$vr3, $t0, 0
	vinsgr2vr.d	$vr4, $t1, 0
	vilvl.h	$vr3, $vr3, $vr3
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vilvl.h	$vr4, $vr4, $vr4
	vslli.w	$vr4, $vr4, 16
	vsrai.w	$vr4, $vr4, 16
	vslt.w	$vr3, $vr0, $vr3
	vslt.w	$vr4, $vr0, $vr4
	vsub.w	$vr1, $vr1, $vr3
	vsub.w	$vr2, $vr2, $vr4
	addi.d	$a7, $a7, -8
	addi.d	$a6, $a6, 16
	bnez	$a7, .LBB0_15
# %bb.16:                               # %middle.block
                                        #   in Loop: Header=BB0_12 Depth=2
	vadd.w	$vr1, $vr2, $vr1
	vhaddw.d.w	$vr1, $vr1, $vr1
	vhaddw.q.d	$vr1, $vr1, $vr1
	vpickve2gr.d	$s0, $vr1, 0
	beq	$a5, $a3, .LBB0_11
.LBB0_17:                               # %for.body52.preheader341
                                        #   in Loop: Header=BB0_12 Depth=2
	addi.d	$a3, $a3, 1
	alsl.d	$a2, $a4, $a2, 1
	sub.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB0_18:                               # %for.body52
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a4, $a2, 0
	slt	$a4, $a0, $a4
	add.d	$s0, $s0, $a4
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 2
	bnez	$a3, .LBB0_18
	b	.LBB0_11
	.p2align	4, , 16
.LBB0_19:                               #   in Loop: Header=BB0_3 Depth=1
	move	$s0, $zero
.LBB0_20:                               # %for.end68
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.d	$s1, $s1, 1
	addi.w	$a0, $s0, 0
	slli.d	$a0, $a0, 2
	addi.d	$a0, $a0, 4
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(netRoutes)
	ld.d	$a1, $a1, %got_pc_lo12(netRoutes)
	ld.d	$a2, $a1, 0
	alsl.d	$a1, $s3, $s5, 3
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	ldx.d	$a1, $a2, $a1
	slli.d	$a2, $s1, 3
	ldx.d	$a2, $a1, $a2
	ld.w	$a1, $sp, 148
	st.d	$a0, $a2, 0
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	st.w	$a1, $a2, 8
	st.w	$s0, $a0, 0
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	blez	$fp, .LBB0_2
# %bb.21:                               # %for.cond94.preheader.lr.ph
                                        #   in Loop: Header=BB0_3 Depth=1
	pcalau12i	$a1, %got_pc_hi20(numnodes)
	ld.d	$a1, $a1, %got_pc_lo12(numnodes)
	ld.w	$a2, $a1, 0
	move	$a3, $zero
	ori	$a4, $zero, 1
	b	.LBB0_23
	.p2align	4, , 16
.LBB0_22:                               # %for.inc122
                                        #   in Loop: Header=BB0_23 Depth=2
	addi.d	$a4, $a4, 1
	beq	$a4, $s6, .LBB0_28
.LBB0_23:                               # %for.cond94.preheader
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_26 Depth 3
	slli.d	$a5, $a4, 3
	ldx.d	$a5, $s8, $a5
	ld.h	$a6, $a5, 0
	blez	$a6, .LBB0_22
# %bb.24:                               # %for.body101.preheader
                                        #   in Loop: Header=BB0_23 Depth=2
	addi.d	$a6, $a6, 1
	bstrpick.d	$a6, $a6, 15, 0
	addi.d	$a5, $a5, 2
	addi.d	$a6, $a6, -1
	b	.LBB0_26
	.p2align	4, , 16
.LBB0_25:                               # %for.inc119
                                        #   in Loop: Header=BB0_26 Depth=3
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, 2
	beqz	$a6, .LBB0_22
.LBB0_26:                               # %for.body101
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a7, $a5, 0
	bge	$a2, $a7, .LBB0_25
# %bb.27:                               # %if.then109
                                        #   in Loop: Header=BB0_26 Depth=3
	sub.d	$a7, $a7, $a2
	addi.w	$a3, $a3, 1
	slli.d	$t0, $a3, 2
	stx.w	$a7, $a0, $t0
	b	.LBB0_25
	.p2align	4, , 16
.LBB0_28:                               # %for.cond132.preheader.lr.ph
                                        #   in Loop: Header=BB0_3 Depth=1
	st.d	$s6, $sp, 112                   # 8-byte Folded Spill
	ld.w	$s4, $a1, 0
	pcalau12i	$a0, %got_pc_hi20(gnodeArray)
	ld.d	$a0, $a0, %got_pc_lo12(gnodeArray)
	ld.d	$s1, $a0, 0
	move	$s7, $zero
	ori	$s6, $zero, 1
	ld.d	$a6, $sp, 128                   # 8-byte Folded Reload
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	b	.LBB0_33
	.p2align	4, , 16
.LBB0_29:                               # %if.else283
                                        #   in Loop: Header=BB0_33 Depth=2
	st.d	$a0, $s7, 16
.LBB0_30:                               # %if.end286
                                        #   in Loop: Header=BB0_33 Depth=2
	ld.d	$a6, $sp, 128                   # 8-byte Folded Reload
	st.w	$s3, $a0, 0
	st.w	$s8, $a0, 4
	st.w	$s0, $a0, 8
.LBB0_31:                               # %for.inc521.sink.split
                                        #   in Loop: Header=BB0_33 Depth=2
	st.w	$fp, $a0, 12
	st.d	$zero, $a0, 16
	move	$s7, $a0
.LBB0_32:                               # %for.inc521
                                        #   in Loop: Header=BB0_33 Depth=2
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	addi.d	$s6, $s6, 1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beq	$s6, $a0, .LBB0_2
.LBB0_33:                               # %for.cond132.preheader
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_35 Depth 3
                                        #       Child Loop BB0_44 Depth 3
                                        #       Child Loop BB0_63 Depth 3
                                        #         Child Loop BB0_64 Depth 4
                                        #       Child Loop BB0_76 Depth 3
                                        #       Child Loop BB0_55 Depth 3
                                        #       Child Loop BB0_58 Depth 3
	slli.d	$a0, $s6, 3
	ldx.d	$s8, $s8, $a0
	ld.h	$fp, $s8, 0
	blez	$fp, .LBB0_46
# %bb.34:                               # %for.body139.preheader
                                        #   in Loop: Header=BB0_33 Depth=2
	move	$s0, $zero
	addi.d	$a0, $s8, 2
	ori	$a1, $zero, 1
	move	$a2, $fp
	.p2align	4, , 16
.LBB0_35:                               # %for.body139
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_33 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a3, $a0, 0
	slt	$a3, $s4, $a3
	sltui	$a4, $s0, 1
	masknez	$a5, $s0, $a4
	maskeqz	$a4, $a1, $a4
	or	$a4, $a4, $a5
	masknez	$a4, $a4, $a3
	maskeqz	$a5, $s0, $a3
	or	$s0, $a5, $a4
	masknez	$a4, $a1, $a3
	maskeqz	$a3, $s2, $a3
	or	$a3, $a3, $a4
	addi.w	$s2, $a3, 0
	addi.d	$a0, $a0, 2
	addi.d	$a2, $a2, -1
	addi.w	$a1, $a1, 1
	bnez	$a2, .LBB0_35
# %bb.36:                               # %for.end155
                                        #   in Loop: Header=BB0_33 Depth=2
	beqz	$s0, .LBB0_46
# %bb.37:                               # %if.else290
                                        #   in Loop: Header=BB0_33 Depth=2
	ori	$a0, $zero, 2
	blt	$s0, $a0, .LBB0_62
# %bb.38:                               # %if.then293
                                        #   in Loop: Header=BB0_33 Depth=2
	ld.h	$a0, $s8, 2
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s1, $a1
	ld.d	$a2, $a1, 32
	ld.h	$a3, $s8, 4
	ld.w	$s3, $a2, 0
	bne	$s3, $a3, .LBB0_40
# %bb.39:                               # %if.then311
                                        #   in Loop: Header=BB0_33 Depth=2
	ld.w	$s3, $a1, 0
	move	$a2, $a1
.LBB0_40:                               # %if.end320
                                        #   in Loop: Header=BB0_33 Depth=2
	ld.w	$s5, $a2, 8
	blt	$s4, $s3, .LBB0_44
.LBB0_41:                               # %while.end346
                                        #   in Loop: Header=BB0_33 Depth=2
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$s7, .LBB0_60
# %bb.42:                               # %if.else363
                                        #   in Loop: Header=BB0_33 Depth=2
	st.d	$a0, $s7, 16
	b	.LBB0_61
	.p2align	4, , 16
.LBB0_43:                               # %if.end345
                                        #   in Loop: Header=BB0_44 Depth=3
	ld.w	$a1, $a2, 8
	add.d	$s5, $a1, $s5
	bge	$s4, $s3, .LBB0_41
.LBB0_44:                               # %while.body324
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_33 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a3, $a0
	move	$a0, $s3
	slli.d	$a1, $s3, 3
	ldx.d	$a1, $s1, $a1
	ld.d	$a2, $a1, 32
	ld.w	$s3, $a2, 0
	bne	$s3, $a3, .LBB0_43
# %bb.45:                               # %if.then334
                                        #   in Loop: Header=BB0_44 Depth=3
	ld.w	$s3, $a1, 0
	move	$a2, $a1
	b	.LBB0_43
	.p2align	4, , 16
.LBB0_46:                               # %if.then158
                                        #   in Loop: Header=BB0_33 Depth=2
	ld.h	$a0, $s8, 2
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s1, $a1
	ld.d	$a2, $a1, 32
	ld.h	$a3, $s8, 4
	ld.w	$s3, $a2, 0
	bne	$s3, $a3, .LBB0_48
# %bb.47:                               # %if.then174
                                        #   in Loop: Header=BB0_33 Depth=2
	ld.w	$s3, $a1, 0
	move	$a2, $a1
.LBB0_48:                               # %if.end181
                                        #   in Loop: Header=BB0_33 Depth=2
	ld.w	$s0, $a2, 8
	blt	$s4, $s3, .LBB0_55
.LBB0_49:                               # %while.end
                                        #   in Loop: Header=BB0_33 Depth=2
	slli.d	$a0, $fp, 1
	ldx.h	$a0, $s8, $a0
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s1, $a1
	ld.d	$a2, $a1, 32
	alsl.d	$a3, $fp, $s8, 1
	ld.h	$a3, $a3, -2
	ld.w	$s8, $a2, 0
	bne	$s8, $a3, .LBB0_51
# %bb.50:                               # %if.then232
                                        #   in Loop: Header=BB0_33 Depth=2
	ld.w	$s8, $a1, 0
	move	$a2, $a1
.LBB0_51:                               # %if.end241
                                        #   in Loop: Header=BB0_33 Depth=2
	ld.w	$fp, $a2, 8
	blt	$s4, $s8, .LBB0_58
.LBB0_52:                               # %while.end267
                                        #   in Loop: Header=BB0_33 Depth=2
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	bnez	$s7, .LBB0_29
# %bb.53:                               # %if.then270
                                        #   in Loop: Header=BB0_33 Depth=2
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $a1, 16
	b	.LBB0_30
	.p2align	4, , 16
.LBB0_54:                               # %if.end204
                                        #   in Loop: Header=BB0_55 Depth=3
	ld.w	$a1, $a2, 8
	add.d	$s0, $a1, $s0
	bge	$s4, $s3, .LBB0_49
.LBB0_55:                               # %while.body
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_33 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a3, $a0
	move	$a0, $s3
	slli.d	$a1, $s3, 3
	ldx.d	$a1, $s1, $a1
	ld.d	$a2, $a1, 32
	ld.w	$s3, $a2, 0
	bne	$s3, $a3, .LBB0_54
# %bb.56:                               # %if.then193
                                        #   in Loop: Header=BB0_55 Depth=3
	ld.w	$s3, $a1, 0
	move	$a2, $a1
	b	.LBB0_54
	.p2align	4, , 16
.LBB0_57:                               # %if.end266
                                        #   in Loop: Header=BB0_58 Depth=3
	ld.w	$a1, $a2, 8
	add.d	$fp, $a1, $fp
	bge	$s4, $s8, .LBB0_52
.LBB0_58:                               # %while.body245
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_33 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a3, $a0
	move	$a0, $s8
	slli.d	$a1, $s8, 3
	ldx.d	$a1, $s1, $a1
	ld.d	$a2, $a1, 32
	ld.w	$s8, $a2, 0
	bne	$s8, $a3, .LBB0_57
# %bb.59:                               # %if.then255
                                        #   in Loop: Header=BB0_58 Depth=3
	ld.w	$s8, $a1, 0
	move	$a2, $a1
	b	.LBB0_57
.LBB0_60:                               # %if.then349
                                        #   in Loop: Header=BB0_33 Depth=2
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $a1, 16
.LBB0_61:                               # %if.end366
                                        #   in Loop: Header=BB0_33 Depth=2
	ld.d	$a6, $sp, 128                   # 8-byte Folded Reload
	slli.d	$a1, $s0, 1
	ldx.h	$a1, $s8, $a1
	st.w	$s3, $a0, 0
	st.w	$s5, $a0, 8
	st.w	$a1, $a0, 4
	st.w	$zero, $a0, 12
	st.d	$zero, $a0, 16
	move	$s7, $a0
.LBB0_62:                               # %if.end377
                                        #   in Loop: Header=BB0_33 Depth=2
	addi.d	$a3, $s8, 2
	move	$s3, $s0
.LBB0_63:                               # %for.cond378
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_33 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_64 Depth 4
	slt	$a0, $s2, $s0
	masknez	$a1, $s2, $a0
	maskeqz	$a0, $s0, $a0
	or	$a0, $a0, $a1
	slli.d	$s5, $s0, 32
	alsl.d	$a1, $s0, $a3, 1
	sub.d	$a0, $a0, $s0
	addi.d	$a0, $a0, 1
	.p2align	4, , 16
.LBB0_64:                               # %for.cond380
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_33 Depth=2
                                        #       Parent Loop BB0_63 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.d	$a0, $a0, -1
	beqz	$a0, .LBB0_70
# %bb.65:                               # %for.body383
                                        #   in Loop: Header=BB0_64 Depth=4
	ld.h	$a2, $a1, 0
	add.d	$s5, $s5, $a6
	addi.d	$a1, $a1, 2
	addi.w	$s3, $s3, 1
	blt	$s4, $a2, .LBB0_64
# %bb.66:                               # %if.else399
                                        #   in Loop: Header=BB0_63 Depth=3
	st.d	$fp, $sp, 104                   # 8-byte Folded Spill
	move	$fp, $a3
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$s7, .LBB0_68
# %bb.67:                               # %if.else416
                                        #   in Loop: Header=BB0_63 Depth=3
	st.d	$a0, $s7, 16
	b	.LBB0_69
.LBB0_68:                               # %if.then402
                                        #   in Loop: Header=BB0_63 Depth=3
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $a1, 16
.LBB0_69:                               # %if.end419
                                        #   in Loop: Header=BB0_63 Depth=3
	slli.d	$a1, $s0, 1
	ldx.h	$a1, $s8, $a1
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $a0, 8
	srai.d	$a2, $s5, 31
	ldx.h	$a2, $s8, $a2
	st.w	$a1, $a0, 0
	st.w	$a2, $a0, 4
	move	$s0, $s3
	move	$s7, $a0
	ld.d	$a6, $sp, 128                   # 8-byte Folded Reload
	move	$a3, $fp
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	b	.LBB0_63
	.p2align	4, , 16
.LBB0_70:                               # %for.end436
                                        #   in Loop: Header=BB0_33 Depth=2
	bge	$s2, $fp, .LBB0_32
# %bb.71:                               # %if.then443
                                        #   in Loop: Header=BB0_33 Depth=2
	slli.d	$a0, $fp, 1
	ldx.h	$a0, $s8, $a0
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s1, $a1
	ld.d	$a2, $a1, 32
	alsl.d	$a3, $fp, $s8, 1
	ld.h	$a3, $a3, -2
	ld.w	$s0, $a2, 0
	bne	$s0, $a3, .LBB0_73
# %bb.72:                               # %if.then471
                                        #   in Loop: Header=BB0_33 Depth=2
	ld.w	$s0, $a1, 0
	move	$a2, $a1
.LBB0_73:                               # %if.end480
                                        #   in Loop: Header=BB0_33 Depth=2
	ld.w	$fp, $a2, 8
	blt	$s4, $s0, .LBB0_76
.LBB0_74:                               # %while.end506
                                        #   in Loop: Header=BB0_33 Depth=2
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	slli.d	$a1, $s2, 1
	ldx.h	$a1, $s8, $a1
	st.d	$a0, $s7, 16
	st.w	$a1, $a0, 0
	st.w	$zero, $a0, 8
	st.w	$s0, $a0, 4
	ld.d	$a6, $sp, 128                   # 8-byte Folded Reload
	b	.LBB0_31
	.p2align	4, , 16
.LBB0_75:                               # %if.end505
                                        #   in Loop: Header=BB0_76 Depth=3
	ld.w	$a1, $a2, 8
	add.d	$fp, $a1, $fp
	bge	$s4, $s0, .LBB0_74
.LBB0_76:                               # %while.body484
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_33 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a3, $a0
	move	$a0, $s0
	slli.d	$a1, $s0, 3
	ldx.d	$a1, $s1, $a1
	ld.d	$a2, $a1, 32
	ld.w	$s0, $a2, 0
	bne	$s0, $a3, .LBB0_75
# %bb.77:                               # %if.then494
                                        #   in Loop: Header=BB0_76 Depth=3
	ld.w	$s0, $a1, 0
	move	$a2, $a1
	b	.LBB0_75
.LBB0_78:                               # %for.cond.for.end528_crit_edge
	pcalau12i	$a0, %got_pc_hi20(netRoutes)
	ld.d	$a0, $a0, %got_pc_lo12(netRoutes)
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	move	$s0, $s1
.LBB0_79:                               # %for.end528
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	alsl.d	$a0, $s3, $a0, 3
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.w	$s0, $a0, 8
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
.LBB0_80:                               # %cleanup
	ret
.Lfunc_end0:
	.size	procesnet, .Lfunc_end0-procesnet
                                        # -- End function
	.globl	mergeSeg                        # -- Begin function mergeSeg
	.p2align	5
	.type	mergeSeg,@function
mergeSeg:                               # @mergeSeg
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
	pcalau12i	$a0, %got_pc_hi20(netSegArray)
	ld.d	$s1, $a0, %got_pc_lo12(netSegArray)
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	ld.h	$a4, $a1, 0
	ori	$s2, $zero, 2
	blt	$a4, $s2, .LBB1_44
# %bb.1:                                # %for.body.preheader
	ori	$fp, $zero, 1
	pcalau12i	$a2, %got_pc_hi20(numnodes)
	ld.d	$s3, $a2, %got_pc_lo12(numnodes)
	addi.w	$s0, $zero, -1
	ori	$s4, $zero, 9
	ori	$s5, $zero, 0
	lu32i.d	$s5, 1
	move	$a6, $a4
	b	.LBB1_5
	.p2align	4, , 16
.LBB1_2:                                # %joinSeg.exit58
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.d	$a4, $a4, -1
	st.h	$a4, $a1, 0
.LBB1_3:                                # %for.inc109
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.d	$fp, $fp, -1
.LBB1_4:                                # %for.inc109
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.w	$fp, $fp, 1
	ext.w.h	$a6, $a4
	bge	$fp, $a6, .LBB1_44
.LBB1_5:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_7 Depth 2
                                        #     Child Loop BB1_13 Depth 2
                                        #     Child Loop BB1_18 Depth 2
                                        #     Child Loop BB1_22 Depth 2
                                        #       Child Loop BB1_24 Depth 3
                                        #     Child Loop BB1_33 Depth 2
                                        #     Child Loop BB1_36 Depth 2
                                        #     Child Loop BB1_40 Depth 2
                                        #       Child Loop BB1_42 Depth 3
	slli.d	$a3, $fp, 3
	ldx.d	$a2, $a0, $a3
	ld.h	$a7, $a2, 2
	ld.w	$a5, $s3, 0
	bge	$a5, $a7, .LBB1_11
# %bb.6:                                # %for.cond8.preheader
                                        #   in Loop: Header=BB1_5 Depth=1
	bstrpick.d	$a7, $a7, 15, 0
	slt	$t0, $fp, $a6
	masknez	$t1, $fp, $t0
	maskeqz	$a6, $a6, $t0
	or	$a6, $a6, $t1
	sub.d	$a6, $a6, $fp
	alsl.d	$t0, $fp, $a0, 3
	addi.d	$t0, $t0, 8
	bstrpick.d	$t1, $a7, 15, 0
	move	$t2, $s0
	.p2align	4, , 16
.LBB1_7:                                # %for.cond8
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$a6, .LBB1_11
# %bb.8:                                # %for.body14
                                        #   in Loop: Header=BB1_7 Depth=2
	move	$a7, $t2
	ld.d	$t2, $t0, 0
	ld.hu	$t3, $t2, 2
	beq	$t1, $t3, .LBB1_26
# %bb.9:                                # %if.else
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.h	$t3, $t2, 0
	slli.d	$t3, $t3, 1
	ldx.hu	$t3, $t2, $t3
	addi.d	$a6, $a6, -1
	addi.d	$t2, $a7, -1
	addi.d	$t0, $t0, 8
	bne	$t1, $t3, .LBB1_7
# %bb.10:                               #   in Loop: Header=BB1_5 Depth=1
	ori	$a3, $zero, 1
	b	.LBB1_27
	.p2align	4, , 16
.LBB1_11:                               # %if.end46
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.h	$a7, $a2, 0
	slli.d	$a6, $a7, 1
	ldx.h	$a6, $a2, $a6
	bge	$a5, $a6, .LBB1_4
# %bb.12:                               # %for.cond59.preheader
                                        #   in Loop: Header=BB1_5 Depth=1
	bstrpick.d	$t0, $a7, 15, 0
	bstrpick.d	$t1, $a6, 15, 0
	ext.w.h	$a5, $a4
	slt	$a6, $a5, $fp
	masknez	$a5, $a5, $a6
	maskeqz	$a6, $fp, $a6
	or	$t2, $a6, $a5
	addi.d	$t3, $a3, 8
	move	$a3, $fp
	.p2align	4, , 16
.LBB1_13:                               # %for.cond59
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$t2, $a3, .LBB1_4
# %bb.14:                               # %for.body65
                                        #   in Loop: Header=BB1_13 Depth=2
	ldx.d	$a5, $a0, $t3
	ld.h	$a6, $a5, 0
	slli.d	$t4, $a6, 1
	ldx.hu	$t5, $a5, $t4
	bstrpick.d	$t4, $t1, 15, 0
	beq	$t4, $t5, .LBB1_28
# %bb.15:                               # %if.else86
                                        #   in Loop: Header=BB1_13 Depth=2
	ld.hu	$t5, $a5, 2
	addi.d	$t3, $t3, 8
	addi.d	$a3, $a3, 1
	bne	$t4, $t5, .LBB1_13
# %bb.16:                               # %if.then101
                                        #   in Loop: Header=BB1_5 Depth=1
	blt	$a6, $s2, .LBB1_20
# %bb.17:                               # %for.body68.i.preheader
                                        #   in Loop: Header=BB1_5 Depth=1
	ori	$a4, $zero, 1
	ori	$a6, $zero, 4
	.p2align	4, , 16
.LBB1_18:                               # %for.body68.i
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$a7, $a2, 0
	ldx.h	$t0, $a5, $a6
	add.d	$a7, $a4, $a7
	slli.d	$a7, $a7, 32
	add.d	$a7, $a7, $s5
	srai.d	$a7, $a7, 31
	add.d	$a7, $a2, $a7
	st.h	$t0, $a7, -2
	ld.h	$a7, $a5, 0
	addi.d	$a4, $a4, 1
	addi.d	$a6, $a6, 2
	blt	$a4, $a7, .LBB1_18
# %bb.19:                               # %if.end114.i33.loopexit
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.hu	$t0, $a2, 0
	bstrpick.d	$a6, $a7, 15, 0
.LBB1_20:                               # %if.end114.i33
                                        #   in Loop: Header=BB1_5 Depth=1
	add.d	$a4, $a6, $t0
	addi.d	$a4, $a4, -1
	st.h	$a4, $a2, 0
	ld.h	$a2, $a1, 0
	bstrpick.d	$a4, $a2, 15, 0
	blt	$a3, $a2, .LBB1_22
	b	.LBB1_2
	.p2align	4, , 16
.LBB1_21:                               # %for.cond127.loopexit.i56
                                        #   in Loop: Header=BB1_22 Depth=2
	ext.w.h	$a2, $a4
	bge	$a3, $a2, .LBB1_2
.LBB1_22:                               # %for.cond134.preheader.i41
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_24 Depth 3
	move	$a5, $a3
	addi.d	$a3, $a3, 1
	slli.d	$a2, $a3, 3
	ldx.d	$a2, $a0, $a2
	ld.h	$a6, $a2, 0
	bltz	$a6, .LBB1_21
# %bb.23:                               # %for.body141.lr.ph.i46
                                        #   in Loop: Header=BB1_22 Depth=2
	slli.d	$a4, $a5, 3
	ldx.d	$a4, $a0, $a4
	move	$a5, $zero
	addi.w	$a6, $zero, -1
	.p2align	4, , 16
.LBB1_24:                               # %for.body141.i48
                                        #   Parent Loop BB1_5 Depth=1
                                        #     Parent Loop BB1_22 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.h	$a7, $a2, $a5
	stx.h	$a7, $a4, $a5
	ld.h	$a7, $a2, 0
	addi.d	$a6, $a6, 1
	addi.d	$a5, $a5, 2
	blt	$a6, $a7, .LBB1_24
# %bb.25:                               # %for.cond127.loopexit.loopexit.i54
                                        #   in Loop: Header=BB1_22 Depth=2
	ld.hu	$a4, $a1, 0
	b	.LBB1_21
.LBB1_26:                               #   in Loop: Header=BB1_5 Depth=1
	move	$a3, $s0
.LBB1_27:                               # %if.then44
                                        #   in Loop: Header=BB1_5 Depth=1
	sub.w	$a2, $fp, $a7
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(joinSeg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	ld.hu	$a4, $a1, 0
	b	.LBB1_3
.LBB1_28:                               # %if.then84
                                        #   in Loop: Header=BB1_5 Depth=1
	blt	$a6, $s2, .LBB1_38
# %bb.29:                               # %for.body100.preheader.i
                                        #   in Loop: Header=BB1_5 Depth=1
	bltu	$a6, $s4, .LBB1_35
# %bb.30:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_5 Depth=1
	alsl.d	$t0, $a7, $a2, 1
	addi.d	$a4, $t0, 2
	alsl.d	$t2, $a6, $a5, 1
	bgeu	$a4, $t2, .LBB1_32
# %bb.31:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_5 Depth=1
	alsl.d	$t0, $a6, $t0, 1
	addi.d	$t1, $a5, 2
	bltu	$t1, $t0, .LBB1_35
.LBB1_32:                               # %vector.ph
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.d	$t0, $a6, -1
	move	$t1, $t0
	bstrins.d	$t1, $zero, 2, 0
	add.d	$a7, $t1, $a7
	sub.d	$a6, $a6, $t1
	addi.d	$t2, $t2, -16
	move	$t3, $t1
	.p2align	4, , 16
.LBB1_33:                               # %vector.body
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t2, 0
	vshuf4i.d	$vr0, $vr0, 1
	vshuf4i.h	$vr0, $vr0, 27
	vst	$vr0, $a4, 0
	addi.d	$a4, $a4, 16
	addi.d	$t3, $t3, -8
	addi.d	$t2, $t2, -16
	bnez	$t3, .LBB1_33
# %bb.34:                               # %middle.block
                                        #   in Loop: Header=BB1_5 Depth=1
	beq	$t0, $t1, .LBB1_37
.LBB1_35:                               # %for.body100.i.preheader
                                        #   in Loop: Header=BB1_5 Depth=1
	alsl.d	$a4, $a7, $a2, 1
	addi.d	$a4, $a4, 2
	addi.d	$a7, $a6, 1
	alsl.d	$a6, $a6, $a5, 1
	addi.d	$a6, $a6, -2
	.p2align	4, , 16
.LBB1_36:                               # %for.body100.i
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$t0, $a6, 0
	st.h	$t0, $a4, 0
	addi.d	$a4, $a4, 2
	addi.d	$a7, $a7, -1
	addi.d	$a6, $a6, -2
	bltu	$s2, $a7, .LBB1_36
.LBB1_37:                               # %if.end114.i.loopexit
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.hu	$a6, $a5, 0
	ld.hu	$t0, $a2, 0
.LBB1_38:                               # %if.end114.i
                                        #   in Loop: Header=BB1_5 Depth=1
	add.d	$a4, $a6, $t0
	addi.d	$a4, $a4, -1
	st.h	$a4, $a2, 0
	ld.h	$a5, $a1, 0
	addi.d	$a2, $a3, 1
	bstrpick.d	$a4, $a5, 15, 0
	blt	$a2, $a5, .LBB1_40
	b	.LBB1_2
	.p2align	4, , 16
.LBB1_39:                               # %for.cond127.loopexit.i
                                        #   in Loop: Header=BB1_40 Depth=2
	ext.w.h	$a3, $a4
	bge	$a2, $a3, .LBB1_2
.LBB1_40:                               # %for.cond134.preheader.i
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_42 Depth 3
	move	$a5, $a2
	addi.d	$a2, $a2, 1
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $a0, $a3
	ld.h	$a6, $a3, 0
	bltz	$a6, .LBB1_39
# %bb.41:                               # %for.body141.lr.ph.i
                                        #   in Loop: Header=BB1_40 Depth=2
	slli.d	$a4, $a5, 3
	ldx.d	$a4, $a0, $a4
	move	$a5, $zero
	addi.w	$a6, $zero, -1
	.p2align	4, , 16
.LBB1_42:                               # %for.body141.i
                                        #   Parent Loop BB1_5 Depth=1
                                        #     Parent Loop BB1_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.h	$a7, $a3, $a5
	stx.h	$a7, $a4, $a5
	ld.h	$a7, $a3, 0
	addi.d	$a6, $a6, 1
	addi.d	$a5, $a5, 2
	blt	$a6, $a7, .LBB1_42
# %bb.43:                               # %for.cond127.loopexit.loopexit.i
                                        #   in Loop: Header=BB1_40 Depth=2
	ld.hu	$a4, $a1, 0
	b	.LBB1_39
.LBB1_44:                               # %for.end111
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
.Lfunc_end1:
	.size	mergeSeg, .Lfunc_end1-mergeSeg
                                        # -- End function
	.globl	joinSeg                         # -- Begin function joinSeg
	.p2align	5
	.type	joinSeg,@function
joinSeg:                                # @joinSeg
# %bb.0:                                # %entry
	slli.d	$a4, $a0, 3
	bltz	$a1, .LBB2_9
# %bb.1:                                # %if.else57
	pcalau12i	$a1, %got_pc_hi20(netSegArray)
	ld.d	$a1, $a1, %got_pc_lo12(netSegArray)
	ld.d	$a1, $a1, 0
	bltz	$a3, .LBB2_16
# %bb.2:                                # %if.else86
	slli.d	$a0, $a2, 3
	ldx.d	$a5, $a1, $a0
	ld.h	$a3, $a5, 0
	ori	$a0, $zero, 2
	blt	$a3, $a0, .LBB2_32
# %bb.3:                                # %for.body100.preheader
	ldx.d	$a0, $a1, $a4
	bstrpick.d	$t2, $a3, 15, 0
	ld.h	$a3, $a0, 0
	bstrpick.d	$a6, $t2, 15, 0
	ori	$a7, $zero, 25
	bltu	$a6, $a7, .LBB2_6
# %bb.4:                                # %vector.memcheck
	alsl.d	$a6, $a3, $a0, 1
	addi.d	$a7, $a6, 2
	alsl.d	$t0, $t2, $a5, 1
	bgeu	$a7, $t0, .LBB2_22
# %bb.5:                                # %vector.memcheck
	alsl.d	$a6, $t2, $a6, 1
	addi.d	$t0, $a5, 2
	bgeu	$t0, $a6, .LBB2_22
.LBB2_6:
	move	$a6, $t2
.LBB2_7:                                # %for.body100.preheader141
	alsl.d	$a0, $a3, $a0, 1
	addi.d	$a0, $a0, 2
	addi.d	$a3, $a6, 1
	slli.d	$a6, $a6, 1
	addi.d	$a6, $a6, -2
	ori	$a7, $zero, 2
	.p2align	4, , 16
.LBB2_8:                                # %for.body100
                                        # =>This Inner Loop Header: Depth=1
	ldx.h	$t0, $a5, $a6
	st.h	$t0, $a0, 0
	addi.d	$a0, $a0, 2
	addi.d	$a3, $a3, -1
	addi.d	$a6, $a6, -2
	bltu	$a7, $a3, .LBB2_8
	b	.LBB2_32
.LBB2_9:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(netSegArray)
	ld.d	$a0, $a0, %got_pc_lo12(netSegArray)
	ld.d	$a1, $a0, 0
	ldx.d	$a0, $a1, $a4
	ld.h	$a7, $a0, 0
	blez	$a7, .LBB2_12
# %bb.10:                               # %for.body.lr.ph
	slli.d	$a5, $a2, 3
	ldx.d	$a5, $a1, $a5
	alsl.d	$a6, $a7, $a0, 1
	ori	$t0, $zero, 1
	.p2align	4, , 16
.LBB2_11:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$t1, $a5, 0
	move	$t2, $a7
	ld.h	$a7, $a6, 0
	add.d	$t1, $t2, $t1
	slli.d	$t1, $t1, 32
	srai.d	$t1, $t1, 31
	add.d	$t1, $a0, $t1
	st.h	$a7, $t1, -2
	addi.d	$a7, $t2, -1
	addi.d	$a6, $a6, -2
	bltu	$t0, $t2, .LBB2_11
.LBB2_12:                               # %for.end
	slli.d	$a5, $a2, 3
	ldx.d	$a5, $a1, $a5
	ld.h	$a6, $a5, 0
	bltz	$a3, .LBB2_19
# %bb.13:                               # %for.cond38.preheader
	ori	$a3, $zero, 2
	blt	$a6, $a3, .LBB2_32
# %bb.14:                               # %for.body45.preheader
	ori	$a6, $zero, 1
	.p2align	4, , 16
.LBB2_15:                               # %for.body45
                                        # =>This Inner Loop Header: Depth=1
	ldx.h	$a7, $a5, $a3
	stx.h	$a7, $a0, $a3
	ld.h	$a7, $a5, 0
	addi.d	$a6, $a6, 1
	addi.d	$a3, $a3, 2
	blt	$a6, $a7, .LBB2_15
	b	.LBB2_32
.LBB2_16:                               # %for.cond61.preheader
	slli.d	$a3, $a2, 3
	ldx.d	$a5, $a1, $a3
	ld.h	$a3, $a5, 0
	ori	$a6, $zero, 2
	blt	$a3, $a6, .LBB2_32
# %bb.17:                               # %for.body68.lr.ph
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ori	$a3, $zero, 4
	.p2align	4, , 16
.LBB2_18:                               # %for.body68
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a7, $a0, 0
	move	$t0, $a6
	ldx.h	$a6, $a5, $a3
	add.d	$a7, $t0, $a7
	slli.d	$a7, $a7, 32
	srai.d	$a7, $a7, 31
	add.d	$a7, $a0, $a7
	st.h	$a6, $a7, -2
	ld.h	$a7, $a5, 0
	addi.d	$a6, $t0, 1
	addi.d	$a3, $a3, 2
	blt	$t0, $a7, .LBB2_18
	b	.LBB2_32
.LBB2_19:                               # %if.then18
	ori	$a3, $zero, 2
	blt	$a6, $a3, .LBB2_32
# %bb.20:                               # %for.body26.preheader
	ori	$a7, $zero, 9
	ori	$a3, $zero, 1
	bgeu	$a6, $a7, .LBB2_25
# %bb.21:
	move	$t0, $a6
	b	.LBB2_30
.LBB2_22:                               # %vector.ph
	addi.d	$t0, $t2, -1
	move	$t1, $t0
	bstrins.d	$t1, $zero, 2, 0
	add.d	$a3, $t1, $a3
	sub.d	$a6, $t2, $t1
	slli.d	$t2, $t2, 1
	addi.d	$t2, $t2, -16
	move	$t3, $t1
	.p2align	4, , 16
.LBB2_23:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr0, $a5, $t2
	vshuf4i.d	$vr0, $vr0, 1
	vshuf4i.h	$vr0, $vr0, 27
	vst	$vr0, $a7, 0
	addi.d	$a7, $a7, 16
	addi.d	$t3, $t3, -8
	addi.d	$t2, $t2, -16
	bnez	$t3, .LBB2_23
# %bb.24:                               # %middle.block
	beq	$t0, $t1, .LBB2_32
	b	.LBB2_7
.LBB2_25:                               # %vector.memcheck113
	addi.d	$a7, $a0, 2
	alsl.d	$t0, $a6, $a5, 1
	addi.d	$t0, $t0, 2
	bgeu	$a7, $t0, .LBB2_27
# %bb.26:                               # %vector.memcheck113
	alsl.d	$t1, $a6, $a0, 1
	addi.d	$t2, $a5, 4
	move	$t0, $a6
	bltu	$t2, $t1, .LBB2_30
.LBB2_27:                               # %vector.ph123
	addi.d	$t1, $a6, -1
	slli.d	$t3, $a6, 1
	move	$t2, $t1
	bstrins.d	$t2, $zero, 2, 0
	ori	$t0, $zero, 1
	move	$a3, $t1
	bstrins.d	$a3, $t0, 2, 0
	sub.d	$t0, $a6, $t2
	addi.d	$t3, $t3, -14
	move	$t4, $t2
	.p2align	4, , 16
.LBB2_28:                               # %vector.body126
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr0, $a5, $t3
	vshuf4i.d	$vr0, $vr0, 1
	vshuf4i.h	$vr0, $vr0, 27
	vst	$vr0, $a7, 0
	addi.d	$a7, $a7, 16
	addi.d	$t4, $t4, -8
	addi.d	$t3, $t3, -16
	bnez	$t4, .LBB2_28
# %bb.29:                               # %middle.block133
	beq	$t1, $t2, .LBB2_32
.LBB2_30:                               # %for.body26.preheader138
	alsl.d	$a0, $a3, $a0, 1
	sub.d	$a3, $a6, $a3
	slli.d	$a6, $t0, 1
	.p2align	4, , 16
.LBB2_31:                               # %for.body26
                                        # =>This Inner Loop Header: Depth=1
	ldx.h	$a7, $a5, $a6
	st.h	$a7, $a0, 0
	addi.d	$a0, $a0, 2
	addi.d	$a3, $a3, -1
	addi.d	$a6, $a6, -2
	bnez	$a3, .LBB2_31
.LBB2_32:                               # %if.end114
	ldx.d	$a3, $a1, $a4
	ld.h	$a4, $a5, 0
	ld.h	$a5, $a3, 0
	ld.d	$a0, $a1, 0
	add.d	$a4, $a4, $a5
	addi.d	$a4, $a4, -1
	st.h	$a4, $a3, 0
	ld.hu	$a4, $a0, 0
	ext.w.h	$a3, $a4
	bge	$a2, $a3, .LBB2_39
# %bb.33:
	addi.w	$a3, $zero, -1
	b	.LBB2_35
	.p2align	4, , 16
.LBB2_34:                               # %for.cond127.loopexit
                                        #   in Loop: Header=BB2_35 Depth=1
	ext.w.h	$a5, $a4
	bge	$a2, $a5, .LBB2_39
.LBB2_35:                               # %for.cond134.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_37 Depth 2
	move	$a6, $a2
	addi.d	$a2, $a2, 1
	slli.d	$a5, $a2, 3
	ldx.d	$a5, $a1, $a5
	ld.h	$a7, $a5, 0
	bltz	$a7, .LBB2_34
# %bb.36:                               # %for.body141.lr.ph
                                        #   in Loop: Header=BB2_35 Depth=1
	slli.d	$a4, $a6, 3
	ldx.d	$a4, $a1, $a4
	move	$a6, $zero
	move	$a7, $a3
	.p2align	4, , 16
.LBB2_37:                               # %for.body141
                                        #   Parent Loop BB2_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.h	$t0, $a5, $a6
	stx.h	$t0, $a4, $a6
	ld.h	$t0, $a5, 0
	addi.d	$a7, $a7, 1
	addi.d	$a6, $a6, 2
	blt	$a7, $t0, .LBB2_37
# %bb.38:                               # %for.cond127.loopexit.loopexit
                                        #   in Loop: Header=BB2_35 Depth=1
	ld.hu	$a4, $a0, 0
	b	.LBB2_34
.LBB2_39:                               # %for.end156
	addi.d	$a1, $a4, -1
	st.h	$a1, $a0, 0
	ret
.Lfunc_end2:
	.size	joinSeg, .Lfunc_end2-joinSeg
                                        # -- End function
	.type	netRoot,@object                 # @netRoot
	.comm	netRoot,8,8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym netRoot
