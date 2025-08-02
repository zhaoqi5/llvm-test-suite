	.file	"erc_do_i.c"
	.text
	.globl	ercConcealIntraFrame            # -- Begin function ercConcealIntraFrame
	.p2align	5
	.type	ercConcealIntraFrame,@function
ercConcealIntraFrame:                   # @ercConcealIntraFrame
# %bb.0:                                # %entry
	beqz	$a3, .LBB0_4
# %bb.1:                                # %land.lhs.true
	ld.w	$a4, $a3, 64
	beqz	$a4, .LBB0_4
# %bb.2:                                # %if.then
	ld.w	$a4, $a3, 60
	beqz	$a4, .LBB0_5
# %bb.3:                                # %if.then3
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	ld.d	$a5, $a3, 8
	srai.d	$a4, $a2, 3
	srai.d	$a6, $a1, 3
	move	$fp, $a0
	move	$a0, $a6
	move	$s0, $a1
	move	$a1, $a4
	move	$s1, $a2
	move	$a2, $zero
	move	$s3, $a3
	move	$a3, $fp
	move	$a4, $s0
	pcaddu18i	$ra, %call36(concealBlocks)
	jirl	$ra, $ra, 0
	ld.d	$a5, $s3, 16
	srai.d	$s1, $s1, 4
	srai.d	$s2, $s0, 4
	ori	$a2, $zero, 1
	move	$a0, $s2
	move	$a1, $s1
	move	$a3, $fp
	move	$a4, $s0
	pcaddu18i	$ra, %call36(concealBlocks)
	jirl	$ra, $ra, 0
	ld.d	$a5, $s3, 24
	ori	$a2, $zero, 2
	move	$a0, $s2
	move	$a1, $s1
	move	$a3, $fp
	move	$a4, $s0
	pcaddu18i	$ra, %call36(concealBlocks)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB0_4:
	move	$a0, $zero
	ret
.LBB0_5:
	ori	$a0, $zero, 1
	ret
.Lfunc_end0:
	.size	ercConcealIntraFrame, .Lfunc_end0-ercConcealIntraFrame
                                        # -- End function
	.p2align	5                               # -- Begin function concealBlocks
	.type	concealBlocks,@function
concealBlocks:                          # @concealBlocks
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -464
	st.d	$ra, $sp, 456                   # 8-byte Folded Spill
	st.d	$fp, $sp, 448                   # 8-byte Folded Spill
	st.d	$s0, $sp, 440                   # 8-byte Folded Spill
	st.d	$s1, $sp, 432                   # 8-byte Folded Spill
	st.d	$s2, $sp, 424                   # 8-byte Folded Spill
	st.d	$s3, $sp, 416                   # 8-byte Folded Spill
	st.d	$s4, $sp, 408                   # 8-byte Folded Spill
	st.d	$s5, $sp, 400                   # 8-byte Folded Spill
	st.d	$s6, $sp, 392                   # 8-byte Folded Spill
	st.d	$s7, $sp, 384                   # 8-byte Folded Spill
	st.d	$s8, $sp, 376                   # 8-byte Folded Spill
	ori	$a6, $zero, 1
	st.d	$a4, $sp, 168                   # 8-byte Folded Spill
	st.d	$a3, $sp, 160                   # 8-byte Folded Spill
	blt	$a0, $a6, .LBB1_117
# %bb.1:                                # %for.cond2.preheader.lr.ph
	move	$s0, $a1
	blt	$a1, $a6, .LBB1_117
# %bb.2:                                # %for.cond2.preheader.us.preheader
	move	$s1, $a5
	move	$s2, $a2
	move	$a5, $a0
	st.d	$zero, $sp, 64                  # 8-byte Folded Spill
	st.d	$zero, $sp, 88                  # 8-byte Folded Spill
	move	$s6, $zero
	sltui	$a0, $a2, 1
	addi.d	$a6, $a0, 1
	sub.w	$a0, $s0, $a6
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	addi.d	$a0, $s1, -4
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	addi.d	$a0, $a1, 16
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	srai.d	$a0, $a0, 1
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	addi.d	$a0, $a1, 8
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	sub.w	$a0, $a5, $a6
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a5, 31, 0
	sub.d	$a7, $zero, $a6
	slli.d	$a1, $a6, 2
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	slli.d	$a1, $a0, 2
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	mul.d	$a0, $a6, $a0
	slli.d	$t0, $a0, 2
	slli.d	$a1, $a5, 32
	slli.d	$a2, $a6, 32
	slli.d	$a0, $a0, 32
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	mul.d	$t1, $a6, $a5
	nor	$a0, $a6, $zero
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ori	$a0, $zero, 4
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ori	$t2, $zero, 1
	ori	$t3, $zero, 2
	xvrepli.b	$xr0, 0
	xvst	$xr0, $sp, 272                  # 32-byte Folded Spill
	ori	$t4, $zero, 3
	st.d	$a6, $sp, 56                    # 8-byte Folded Spill
	st.d	$a5, $sp, 48                    # 8-byte Folded Spill
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	st.d	$a2, $sp, 232                   # 8-byte Folded Spill
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 184                   # 8-byte Folded Spill
	st.d	$s0, $sp, 176                   # 8-byte Folded Spill
	st.d	$a5, $sp, 208                   # 8-byte Folded Spill
	st.d	$a6, $sp, 312                   # 8-byte Folded Spill
	st.d	$a7, $sp, 96                    # 8-byte Folded Spill
	st.d	$t0, $sp, 240                   # 8-byte Folded Spill
	st.d	$t1, $sp, 144                   # 8-byte Folded Spill
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_3:                                # %for.cond2.for.inc183_crit_edge.us
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a0
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a0
	st.d	$a2, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a6
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a6
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a6
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	move	$s6, $a1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	bge	$a1, $a0, .LBB1_117
.LBB1_4:                                # %for.cond2.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_7 Depth 2
                                        #       Child Loop BB1_9 Depth 3
                                        #       Child Loop BB1_51 Depth 3
                                        #       Child Loop BB1_16 Depth 3
                                        #       Child Loop BB1_86 Depth 3
	move	$s5, $zero
	add.d	$a0, $s6, $a5
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	add.d	$a0, $s6, $a6
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	alsl.d	$a0, $s6, $s1, 2
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	b	.LBB1_7
	.p2align	4, , 16
.LBB1_5:                                #   in Loop: Header=BB1_7 Depth=2
	move	$a2, $s5
.LBB1_6:                                # %for.inc180.us
                                        #   in Loop: Header=BB1_7 Depth=2
	add.w	$s5, $a2, $a6
	bge	$s5, $s0, .LBB1_3
.LBB1_7:                                # %for.body4.us
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_9 Depth 3
                                        #       Child Loop BB1_51 Depth 3
                                        #       Child Loop BB1_16 Depth 3
                                        #       Child Loop BB1_86 Depth 3
	mul.w	$a0, $s5, $a5
	slli.d	$a0, $a0, 2
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	blt	$t2, $a0, .LBB1_5
# %bb.8:                                # %for.cond8.us.preheader
                                        #   in Loop: Header=BB1_7 Depth=2
	move	$s3, $zero
	add.d	$a0, $a6, $s5
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	mul.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	add.d	$a2, $a1, $a0
	move	$a3, $t1
	move	$a1, $s5
	.p2align	4, , 16
.LBB1_9:                                # %for.cond8.us
                                        #   Parent Loop BB1_4 Depth=1
                                        #     Parent Loop BB1_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a1, $a1, $a6
	bge	$a1, $s0, .LBB1_47
# %bb.10:                               # %for.body10.us
                                        #   in Loop: Header=BB1_9 Depth=3
	move	$s4, $a3
	ld.w	$a4, $a2, 0
	add.w	$s3, $s3, $a6
	add.d	$a2, $a2, $t0
	add.d	$a3, $a3, $t1
	blt	$a4, $t3, .LBB1_9
# %bb.11:                               # %if.else62.us
                                        #   in Loop: Header=BB1_7 Depth=2
	add.d	$a0, $a7, $s5
	add.w	$s8, $a0, $s3
	add.d	$a2, $s5, $s3
	beqz	$s5, .LBB1_82
# %bb.12:                               # %if.else114.us
                                        #   in Loop: Header=BB1_7 Depth=2
	blt	$s3, $t2, .LBB1_6
# %bb.13:                               # %for.body120.us.preheader
                                        #   in Loop: Header=BB1_7 Depth=2
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	move	$s4, $zero
	b	.LBB1_16
	.p2align	4, , 16
.LBB1_14:                               # %if.then147.us
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	addi.d	$a3, $sp, 344
	ori	$a5, $zero, 2
	move	$a2, $s6
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ercPixConcealIMB)
	jirl	$ra, $ra, 0
	ori	$t4, $zero, 3
	ori	$t3, $zero, 2
	ld.d	$a6, $sp, 312                   # 8-byte Folded Reload
	ori	$a0, $zero, 2
	lu32i.d	$a0, 2
	stx.d	$a0, $s1, $s7
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	add.w	$a1, $s0, $a1
	slli.d	$a1, $a1, 2
	stx.d	$a0, $s1, $a1
	ld.d	$s0, $sp, 176                   # 8-byte Folded Reload
.LBB1_15:                               # %for.inc174.us
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	sub.d	$a0, $zero, $a0
	and	$a0, $a0, $a6
	sub.w	$s8, $s8, $a0
	maskeqz	$a0, $a6, $fp
	add.w	$s4, $s4, $a6
	add.w	$s5, $a0, $s5
	ld.d	$a5, $sp, 208                   # 8-byte Folded Reload
	ori	$t2, $zero, 1
	bge	$s4, $s3, .LBB1_116
.LBB1_16:                               # %for.body120.us
                                        #   Parent Loop BB1_4 Depth=1
                                        #     Parent Loop BB1_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	andi	$a3, $s4, 1
	sltui	$fp, $a3, 1
	masknez	$a0, $s8, $fp
	maskeqz	$a1, $s5, $fp
	or	$a1, $a1, $a0
	xvld	$xr0, $sp, 272                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 344
	addi.d	$a0, $a1, -1
	mul.w	$a0, $a0, $a5
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a2, 2
	st.d	$a3, $sp, 264                   # 8-byte Folded Spill
	blt	$a1, $t2, .LBB1_18
# %bb.17:                               # %land.lhs.true.peel.i365.us
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.w	$a2, $a0, 0
	bge	$a2, $t4, .LBB1_19
.LBB1_18:                               #   in Loop: Header=BB1_16 Depth=3
	move	$a4, $zero
	b	.LBB1_20
	.p2align	4, , 16
.LBB1_19:                               # %if.then.peel.i367.us
                                        #   in Loop: Header=BB1_16 Depth=3
	st.w	$a2, $sp, 360
	ori	$a4, $zero, 1
.LBB1_20:                               # %if.end.peel.i313.us
                                        #   in Loop: Header=BB1_16 Depth=3
	add.d	$a2, $a1, $a6
	mul.w	$a2, $a2, $a5
	ld.d	$a3, $sp, 320                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a3, 2
	ld.d	$a2, $sp, 336                   # 8-byte Folded Reload
	bge	$a1, $a2, .LBB1_23
# %bb.21:                               # %land.lhs.true13.peel.i361.us
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.w	$a2, $a3, 0
	blt	$a2, $t4, .LBB1_23
# %bb.22:                               # %if.then21.peel.i363.us
                                        #   in Loop: Header=BB1_16 Depth=3
	st.w	$a2, $sp, 368
	addi.d	$a4, $a4, 1
.LBB1_23:                               # %if.end29.peel.i315.us
                                        #   in Loop: Header=BB1_16 Depth=3
	mul.w	$s0, $a1, $a5
	add.d	$a2, $s6, $s0
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a5, $a2, $a5, 2
	beqz	$s6, .LBB1_26
# %bb.24:                               # %if.then32.peel.i355.us
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.w	$a6, $a5, 0
	blt	$a6, $t4, .LBB1_26
# %bb.25:                               # %if.then40.peel.i357.us
                                        #   in Loop: Header=BB1_16 Depth=3
	st.w	$a6, $sp, 364
	addi.d	$a4, $a4, 1
.LBB1_26:                               # %if.end95.peel.i317.us
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a6, $sp, 192                   # 8-byte Folded Reload
	add.w	$a6, $s0, $a6
	alsl.d	$a6, $a6, $s1, 2
	ld.d	$a7, $sp, 328                   # 8-byte Folded Reload
	bge	$s6, $a7, .LBB1_29
# %bb.27:                               # %if.then99.peel.i349.us
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.w	$a7, $a6, 0
	blt	$a7, $t4, .LBB1_29
# %bb.28:                               # %if.then107.peel.i351.us
                                        #   in Loop: Header=BB1_16 Depth=3
	st.w	$a7, $sp, 372
	addi.d	$a4, $a4, 1
.LBB1_29:                               # %if.end162.peel.i319.us
                                        #   in Loop: Header=BB1_16 Depth=3
	bltu	$t2, $a4, .LBB1_42
# %bb.30:                               # %do.body.i323.us
                                        #   in Loop: Header=BB1_16 Depth=3
	blt	$a1, $t2, .LBB1_33
# %bb.31:                               # %land.lhs.true.i346.us
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.w	$a0, $a0, 0
	blt	$a0, $t3, .LBB1_33
# %bb.32:                               # %if.then.i348.us
                                        #   in Loop: Header=BB1_16 Depth=3
	st.w	$a0, $sp, 360
.LBB1_33:                               # %if.end.i324.us
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	bge	$a1, $a0, .LBB1_36
# %bb.34:                               # %land.lhs.true13.i342.us
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.w	$a0, $a3, 0
	blt	$a0, $t3, .LBB1_36
# %bb.35:                               # %if.then21.i344.us
                                        #   in Loop: Header=BB1_16 Depth=3
	st.w	$a0, $sp, 368
.LBB1_36:                               # %if.end29.i326.us
                                        #   in Loop: Header=BB1_16 Depth=3
	beqz	$s6, .LBB1_39
# %bb.37:                               # %if.then32.i336.us
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.w	$a0, $a5, 0
	blt	$a0, $t3, .LBB1_39
# %bb.38:                               # %if.then40.i338.us
                                        #   in Loop: Header=BB1_16 Depth=3
	st.w	$a0, $sp, 364
.LBB1_39:                               # %if.end95.i328.us
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	bge	$s6, $a0, .LBB1_42
# %bb.40:                               # %if.then99.i330.us
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.w	$a0, $a6, 0
	blt	$a0, $t3, .LBB1_42
# %bb.41:                               # %if.then107.i332.us
                                        #   in Loop: Header=BB1_16 Depth=3
	st.w	$a0, $sp, 372
	.p2align	4, , 16
.LBB1_42:                               # %ercCollect8PredBlocks.exit368.us
                                        #   in Loop: Header=BB1_16 Depth=3
	slli.d	$s7, $a2, 2
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	beqz	$s2, .LBB1_14
# %bb.43:                               # %ercCollect8PredBlocks.exit368.us
                                        #   in Loop: Header=BB1_16 Depth=3
	bne	$s2, $t2, .LBB1_45
# %bb.44:                               # %sw.bb137.us
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	addi.d	$a3, $sp, 344
	ori	$a5, $zero, 1
	move	$a2, $s6
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ercPixConcealIMB)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 176                   # 8-byte Folded Reload
	b	.LBB1_46
	.p2align	4, , 16
.LBB1_45:                               # %ercCollect8PredBlocks.exit368.us
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$s0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	addi.d	$a3, $sp, 344
	ori	$a5, $zero, 1
	move	$a2, $s6
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ercPixConcealIMB)
	jirl	$ra, $ra, 0
.LBB1_46:                               # %if.else168.us
                                        #   in Loop: Header=BB1_16 Depth=3
	ori	$t3, $zero, 2
	stx.w	$t3, $s1, $s7
	ld.d	$a6, $sp, 312                   # 8-byte Folded Reload
	ori	$t4, $zero, 3
	b	.LBB1_15
	.p2align	4, , 16
.LBB1_47:                               # %for.cond22.preheader.us
                                        #   in Loop: Header=BB1_7 Depth=2
	move	$a2, $s0
	bge	$s5, $s0, .LBB1_6
# %bb.48:                               # %for.body24.us.preheader
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	mul.d	$s3, $a1, $s5
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	mul.d	$a0, $a2, $s5
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	add.d	$s8, $a3, $a0
	addi.d	$a0, $s5, -1
	mul.d	$a0, $a2, $a0
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	move	$fp, $s1
	move	$s7, $s5
	b	.LBB1_51
	.p2align	4, , 16
.LBB1_49:                               # %if.then32.us
                                        #   in Loop: Header=BB1_51 Depth=3
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	addi.d	$a3, $sp, 344
	ori	$a5, $zero, 2
	move	$a1, $s5
	move	$a2, $s6
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ercPixConcealIMB)
	jirl	$ra, $ra, 0
	ori	$t4, $zero, 3
	ori	$t3, $zero, 2
	ld.d	$a6, $sp, 312                   # 8-byte Folded Reload
	ori	$a0, $zero, 2
	lu32i.d	$a0, 2
	st.d	$a0, $s4, -4
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	add.d	$a1, $a1, $s3
	srai.d	$a1, $a1, 30
	stx.d	$a0, $s1, $a1
.LBB1_50:                               # %for.inc59.us
                                        #   in Loop: Header=BB1_51 Depth=3
	add.d	$s7, $s7, $a6
	add.w	$s5, $s5, $a6
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	add.d	$s3, $s3, $a0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	add.d	$fp, $fp, $a0
	ori	$t2, $zero, 1
	bge	$s7, $s0, .LBB1_81
.LBB1_51:                               # %for.body24.us
                                        #   Parent Loop BB1_4 Depth=1
                                        #     Parent Loop BB1_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr0, $sp, 272                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 344
	blt	$s7, $t2, .LBB1_53
# %bb.52:                               # %land.lhs.true.peel.i.us
                                        #   in Loop: Header=BB1_51 Depth=3
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ldx.w	$a0, $fp, $a0
	bge	$a0, $t4, .LBB1_54
.LBB1_53:                               #   in Loop: Header=BB1_51 Depth=3
	move	$a0, $zero
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	blt	$s7, $a1, .LBB1_55
	b	.LBB1_57
	.p2align	4, , 16
.LBB1_54:                               # %if.then.peel.i.us
                                        #   in Loop: Header=BB1_51 Depth=3
	st.w	$a0, $sp, 360
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	bge	$s7, $a1, .LBB1_57
.LBB1_55:                               # %land.lhs.true13.peel.i.us
                                        #   in Loop: Header=BB1_51 Depth=3
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ldx.w	$a1, $fp, $a1
	blt	$a1, $t4, .LBB1_57
# %bb.56:                               # %if.then21.peel.i.us
                                        #   in Loop: Header=BB1_51 Depth=3
	st.w	$a1, $sp, 368
	addi.d	$a0, $a0, 1
.LBB1_57:                               # %if.end29.peel.i.us
                                        #   in Loop: Header=BB1_51 Depth=3
	add.d	$s4, $fp, $s8
	beqz	$s6, .LBB1_60
# %bb.58:                               # %if.then32.peel.i.us
                                        #   in Loop: Header=BB1_51 Depth=3
	ld.w	$a1, $s4, -8
	blt	$a1, $t4, .LBB1_60
# %bb.59:                               # %if.then40.peel.i.us
                                        #   in Loop: Header=BB1_51 Depth=3
	st.w	$a1, $sp, 364
	addi.d	$a0, $a0, 1
.LBB1_60:                               # %if.end95.peel.i.us
                                        #   in Loop: Header=BB1_51 Depth=3
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	add.d	$a1, $a1, $s3
	srai.d	$a1, $a1, 30
	ld.d	$a2, $sp, 328                   # 8-byte Folded Reload
	bge	$s6, $a2, .LBB1_63
# %bb.61:                               # %if.then99.peel.i.us
                                        #   in Loop: Header=BB1_51 Depth=3
	ldx.w	$a2, $s1, $a1
	blt	$a2, $t4, .LBB1_63
# %bb.62:                               # %if.then107.peel.i.us
                                        #   in Loop: Header=BB1_51 Depth=3
	st.w	$a2, $sp, 372
	addi.d	$a0, $a0, 1
.LBB1_63:                               # %if.end162.peel.i.us
                                        #   in Loop: Header=BB1_51 Depth=3
	bltu	$t2, $a0, .LBB1_76
# %bb.64:                               # %do.body.i.us
                                        #   in Loop: Header=BB1_51 Depth=3
	blt	$s7, $t2, .LBB1_67
# %bb.65:                               # %land.lhs.true.i.us
                                        #   in Loop: Header=BB1_51 Depth=3
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ldx.w	$a0, $fp, $a0
	blt	$a0, $t3, .LBB1_67
# %bb.66:                               # %if.then.i.us
                                        #   in Loop: Header=BB1_51 Depth=3
	st.w	$a0, $sp, 360
.LBB1_67:                               # %if.end.i.us
                                        #   in Loop: Header=BB1_51 Depth=3
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	bge	$s7, $a0, .LBB1_70
# %bb.68:                               # %land.lhs.true13.i.us
                                        #   in Loop: Header=BB1_51 Depth=3
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ldx.w	$a0, $fp, $a0
	blt	$a0, $t3, .LBB1_70
# %bb.69:                               # %if.then21.i.us
                                        #   in Loop: Header=BB1_51 Depth=3
	st.w	$a0, $sp, 368
.LBB1_70:                               # %if.end29.i.us
                                        #   in Loop: Header=BB1_51 Depth=3
	beqz	$s6, .LBB1_73
# %bb.71:                               # %if.then32.i.us
                                        #   in Loop: Header=BB1_51 Depth=3
	ld.w	$a0, $s4, -8
	blt	$a0, $t3, .LBB1_73
# %bb.72:                               # %if.then40.i.us
                                        #   in Loop: Header=BB1_51 Depth=3
	st.w	$a0, $sp, 364
.LBB1_73:                               # %if.end95.i.us
                                        #   in Loop: Header=BB1_51 Depth=3
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	bge	$s6, $a0, .LBB1_76
# %bb.74:                               # %if.then99.i.us
                                        #   in Loop: Header=BB1_51 Depth=3
	ldx.w	$a0, $s1, $a1
	blt	$a0, $t3, .LBB1_76
# %bb.75:                               # %if.then107.i.us
                                        #   in Loop: Header=BB1_51 Depth=3
	st.w	$a0, $sp, 372
	.p2align	4, , 16
.LBB1_76:                               # %ercCollect8PredBlocks.exit.us
                                        #   in Loop: Header=BB1_51 Depth=3
	beqz	$s2, .LBB1_49
# %bb.77:                               # %ercCollect8PredBlocks.exit.us
                                        #   in Loop: Header=BB1_51 Depth=3
	bne	$s2, $t2, .LBB1_79
# %bb.78:                               # %sw.bb26.us
                                        #   in Loop: Header=BB1_51 Depth=3
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	b	.LBB1_80
	.p2align	4, , 16
.LBB1_79:                               # %sw.bb28.us
                                        #   in Loop: Header=BB1_51 Depth=3
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
.LBB1_80:                               # %if.else53.us
                                        #   in Loop: Header=BB1_51 Depth=3
	ld.d	$a0, $a0, 0
	addi.d	$a3, $sp, 344
	ori	$a5, $zero, 1
	move	$a1, $s5
	move	$a2, $s6
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ercPixConcealIMB)
	jirl	$ra, $ra, 0
	ori	$t3, $zero, 2
	st.w	$t3, $s4, -4
	ld.d	$a6, $sp, 312                   # 8-byte Folded Reload
	ori	$t4, $zero, 3
	b	.LBB1_50
.LBB1_81:                               #   in Loop: Header=BB1_7 Depth=2
	move	$a2, $s0
	ld.d	$a5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 144                   # 8-byte Folded Reload
	b	.LBB1_6
.LBB1_82:                               # %for.cond65.preheader.us
                                        #   in Loop: Header=BB1_7 Depth=2
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	add.d	$a1, $a7, $a1
	bltz	$a1, .LBB1_115
# %bb.83:                               # %for.body67.us.preheader
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	mul.d	$a0, $a1, $a0
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	add.d	$a2, $a2, $a0
	st.d	$a2, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	add.d	$a2, $a2, $a0
	st.d	$a2, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	add.d	$s7, $a2, $a0
	mul.d	$a0, $a1, $s5
	add.d	$fp, $a2, $a0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	add.d	$a0, $a0, $s5
	mul.d	$s5, $a1, $a0
	b	.LBB1_86
	.p2align	4, , 16
.LBB1_84:                               # %if.else104.us
                                        #   in Loop: Header=BB1_86 Depth=3
	ld.d	$a0, $a0, 0
	addi.d	$a3, $sp, 344
	ori	$a5, $zero, 1
	move	$a1, $s8
	move	$a2, $s6
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ercPixConcealIMB)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s3, 2
	ori	$t3, $zero, 2
	stx.w	$t3, $s1, $a0
.LBB1_85:                               # %for.inc110.us
                                        #   in Loop: Header=BB1_86 Depth=3
	ld.d	$a6, $sp, 312                   # 8-byte Folded Reload
	sub.w	$s8, $s8, $a6
	addi.w	$a0, $zero, -1
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	sub.d	$s4, $s4, $a1
	ori	$t2, $zero, 1
	ori	$t4, $zero, 3
	bge	$a0, $s8, .LBB1_115
.LBB1_86:                               # %for.body67.us
                                        #   Parent Loop BB1_4 Depth=1
                                        #     Parent Loop BB1_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr0, $sp, 272                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 344
	add.w	$a0, $s5, $s4
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 2
	beqz	$s8, .LBB1_88
# %bb.87:                               # %land.lhs.true.peel.i270.us
                                        #   in Loop: Header=BB1_86 Depth=3
	ld.w	$a1, $a0, 0
	bge	$a1, $t4, .LBB1_89
.LBB1_88:                               #   in Loop: Header=BB1_86 Depth=3
	move	$a2, $zero
	add.w	$a1, $fp, $s4
	alsl.d	$a1, $a1, $s1, 2
	ld.d	$a3, $sp, 336                   # 8-byte Folded Reload
	blt	$s8, $a3, .LBB1_90
	b	.LBB1_92
	.p2align	4, , 16
.LBB1_89:                               # %if.then.peel.i272.us
                                        #   in Loop: Header=BB1_86 Depth=3
	st.w	$a1, $sp, 360
	ori	$a2, $zero, 1
	add.w	$a1, $fp, $s4
	alsl.d	$a1, $a1, $s1, 2
	ld.d	$a3, $sp, 336                   # 8-byte Folded Reload
	bge	$s8, $a3, .LBB1_92
.LBB1_90:                               # %land.lhs.true13.peel.i266.us
                                        #   in Loop: Header=BB1_86 Depth=3
	ld.w	$a3, $a1, 0
	blt	$a3, $t4, .LBB1_92
# %bb.91:                               # %if.then21.peel.i268.us
                                        #   in Loop: Header=BB1_86 Depth=3
	st.w	$a3, $sp, 368
	addi.d	$a2, $a2, 1
.LBB1_92:                               # %if.end29.peel.i220.us
                                        #   in Loop: Header=BB1_86 Depth=3
	add.w	$s3, $s7, $s4
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a3, $s3, $a3, 2
	beqz	$s6, .LBB1_95
# %bb.93:                               # %if.then32.peel.i260.us
                                        #   in Loop: Header=BB1_86 Depth=3
	ld.w	$a4, $a3, 0
	blt	$a4, $t4, .LBB1_95
# %bb.94:                               # %if.then40.peel.i262.us
                                        #   in Loop: Header=BB1_86 Depth=3
	st.w	$a4, $sp, 364
	addi.d	$a2, $a2, 1
.LBB1_95:                               # %if.end95.peel.i222.us
                                        #   in Loop: Header=BB1_86 Depth=3
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	add.w	$a4, $a4, $s4
	alsl.d	$a4, $a4, $s1, 2
	ld.d	$a5, $sp, 328                   # 8-byte Folded Reload
	bge	$s6, $a5, .LBB1_98
# %bb.96:                               # %if.then99.peel.i254.us
                                        #   in Loop: Header=BB1_86 Depth=3
	ld.w	$a5, $a4, 0
	blt	$a5, $t4, .LBB1_98
# %bb.97:                               # %if.then107.peel.i256.us
                                        #   in Loop: Header=BB1_86 Depth=3
	st.w	$a5, $sp, 372
	addi.d	$a2, $a2, 1
.LBB1_98:                               # %if.end162.peel.i224.us
                                        #   in Loop: Header=BB1_86 Depth=3
	bltu	$t2, $a2, .LBB1_111
# %bb.99:                               # %do.body.i228.us
                                        #   in Loop: Header=BB1_86 Depth=3
	beqz	$s8, .LBB1_102
# %bb.100:                              # %land.lhs.true.i251.us
                                        #   in Loop: Header=BB1_86 Depth=3
	ld.w	$a0, $a0, 0
	blt	$a0, $t3, .LBB1_102
# %bb.101:                              # %if.then.i253.us
                                        #   in Loop: Header=BB1_86 Depth=3
	st.w	$a0, $sp, 360
.LBB1_102:                              # %if.end.i229.us
                                        #   in Loop: Header=BB1_86 Depth=3
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	bge	$s8, $a0, .LBB1_105
# %bb.103:                              # %land.lhs.true13.i247.us
                                        #   in Loop: Header=BB1_86 Depth=3
	ld.w	$a0, $a1, 0
	blt	$a0, $t3, .LBB1_105
# %bb.104:                              # %if.then21.i249.us
                                        #   in Loop: Header=BB1_86 Depth=3
	st.w	$a0, $sp, 368
.LBB1_105:                              # %if.end29.i231.us
                                        #   in Loop: Header=BB1_86 Depth=3
	beqz	$s6, .LBB1_108
# %bb.106:                              # %if.then32.i241.us
                                        #   in Loop: Header=BB1_86 Depth=3
	ld.w	$a0, $a3, 0
	blt	$a0, $t3, .LBB1_108
# %bb.107:                              # %if.then40.i243.us
                                        #   in Loop: Header=BB1_86 Depth=3
	st.w	$a0, $sp, 364
.LBB1_108:                              # %if.end95.i233.us
                                        #   in Loop: Header=BB1_86 Depth=3
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	bge	$s6, $a0, .LBB1_111
# %bb.109:                              # %if.then99.i235.us
                                        #   in Loop: Header=BB1_86 Depth=3
	ld.w	$a0, $a4, 0
	blt	$a0, $t3, .LBB1_111
# %bb.110:                              # %if.then107.i237.us
                                        #   in Loop: Header=BB1_86 Depth=3
	st.w	$a0, $sp, 372
	.p2align	4, , 16
.LBB1_111:                              # %ercCollect8PredBlocks.exit273.us
                                        #   in Loop: Header=BB1_86 Depth=3
	beqz	$s2, .LBB1_114
# %bb.112:                              # %ercCollect8PredBlocks.exit273.us
                                        #   in Loop: Header=BB1_86 Depth=3
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	beq	$s2, $t3, .LBB1_84
# %bb.113:                              # %sw.bb73.us
                                        #   in Loop: Header=BB1_86 Depth=3
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	b	.LBB1_84
	.p2align	4, , 16
.LBB1_114:                              # %if.then83.us
                                        #   in Loop: Header=BB1_86 Depth=3
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	addi.d	$a3, $sp, 344
	ori	$a5, $zero, 2
	move	$a1, $s8
	move	$a2, $s6
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ercPixConcealIMB)
	jirl	$ra, $ra, 0
	ori	$t3, $zero, 2
	slli.d	$a0, $s3, 2
	ori	$a1, $zero, 2
	lu32i.d	$a1, 2
	stx.d	$a1, $s1, $a0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	add.w	$a0, $a0, $s4
	slli.d	$a0, $a0, 2
	stx.d	$a1, $s1, $a0
	b	.LBB1_85
.LBB1_115:                              # %for.end112.us
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.d	$a5, $sp, 208                   # 8-byte Folded Reload
.LBB1_116:                              # %for.inc180.us
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.d	$a7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	b	.LBB1_6
.LBB1_117:                              # %for.end185
	ld.d	$s8, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 440                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 448                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 456                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 464
	ret
.Lfunc_end1:
	.size	concealBlocks, .Lfunc_end1-concealBlocks
                                        # -- End function
	.globl	ercPixConcealIMB                # -- Begin function ercPixConcealIMB
	.p2align	5
	.type	ercPixConcealIMB,@function
ercPixConcealIMB:                       # @ercPixConcealIMB
# %bb.0:                                # %entry
	ld.w	$a6, $a3, 16
	slli.w	$t1, $a2, 3
	beqz	$a6, .LBB2_6
# %bb.1:                                # %if.then50
	sub.d	$a6, $a1, $a5
	mul.d	$a6, $a4, $a6
	slli.w	$a6, $a6, 3
	alsl.d	$a6, $a6, $a0, 1
	alsl.d	$a6, $t1, $a6, 1
	ld.w	$a7, $a3, 20
	mul.d	$t0, $a4, $a1
	beqz	$a7, .LBB2_7
.LBB2_2:                                # %if.then63
	slli.w	$a7, $t0, 3
	alsl.d	$a7, $a7, $a0, 1
	sub.d	$t2, $a2, $a5
	slli.w	$t2, $t2, 3
	alsl.d	$a7, $t2, $a7, 1
	ld.w	$t2, $a3, 24
	beqz	$t2, .LBB2_8
.LBB2_3:                                # %if.then76
	add.d	$a1, $a5, $a1
	mul.d	$a1, $a4, $a1
	slli.w	$a1, $a1, 3
	alsl.d	$a1, $a1, $a0, 1
	alsl.d	$a1, $t1, $a1, 1
	ld.w	$t2, $a3, 28
	slli.w	$a3, $t0, 3
	alsl.d	$a3, $a3, $a0, 1
	beqz	$t2, .LBB2_9
.LBB2_4:                                # %if.then89
	add.d	$a0, $a5, $a2
	slli.w	$a0, $a0, 3
	alsl.d	$a0, $a0, $a3, 1
	ori	$a2, $zero, 1
	bge	$a5, $a2, .LBB2_10
.LBB2_5:                                # %pixMeanInterpolateBlock.exit
	ret
.LBB2_6:
	move	$a6, $zero
	ld.w	$a7, $a3, 20
	mul.d	$t0, $a4, $a1
	bnez	$a7, .LBB2_2
.LBB2_7:
	move	$a7, $zero
	ld.w	$t2, $a3, 24
	bnez	$t2, .LBB2_3
.LBB2_8:
	move	$a1, $zero
	ld.w	$t2, $a3, 28
	slli.w	$a3, $t0, 3
	alsl.d	$a3, $a3, $a0, 1
	bnez	$t2, .LBB2_4
.LBB2_9:
	move	$a0, $zero
	ori	$a2, $zero, 1
	blt	$a5, $a2, .LBB2_5
.LBB2_10:                               # %for.cond1.preheader.lr.ph.i
	addi.d	$sp, $sp, -80
	st.d	$fp, $sp, 72                    # 8-byte Folded Spill
	st.d	$s0, $sp, 64                    # 8-byte Folded Spill
	st.d	$s1, $sp, 56                    # 8-byte Folded Spill
	st.d	$s2, $sp, 48                    # 8-byte Folded Spill
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	st.d	$s4, $sp, 32                    # 8-byte Folded Spill
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	st.d	$s7, $sp, 8                     # 8-byte Folded Spill
	move	$t0, $zero
	alsl.d	$a2, $t1, $a3, 1
	slli.d	$a3, $a5, 3
	addi.w	$t2, $a3, -1
	mul.w	$t1, $t2, $a4
	addi.d	$a5, $a5, -1
	sltui	$a5, $a5, 1
	lu12i.w	$t3, 1
	ori	$t4, $t3, 1796
	masknez	$t4, $t4, $a5
	ori	$t3, $t3, 1800
	maskeqz	$a5, $t3, $a5
	or	$a5, $a5, $t4
	alsl.d	$t1, $t1, $a6, 1
	alsl.d	$t2, $t2, $a7, 1
	bstrpick.d	$t3, $a3, 31, 0
	slli.d	$t4, $a4, 1
	ori	$t5, $zero, 2
	b	.LBB2_12
	.p2align	4, , 16
.LBB2_11:                               # %for.cond1.for.end_crit_edge.us.i
                                        #   in Loop: Header=BB2_12 Depth=1
	add.d	$a2, $a2, $t4
	addi.d	$t5, $t5, 1
	beq	$t0, $t3, .LBB2_35
.LBB2_12:                               # %for.cond1.preheader.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_16 Depth 2
                                        #     Child Loop BB2_27 Depth 2
	mul.d	$t8, $t0, $a4
	alsl.d	$t6, $t8, $t2, 1
	sub.w	$t7, $a3, $t0
	addi.d	$t0, $t0, 1
	alsl.d	$t8, $t8, $a0, 1
	beqz	$a1, .LBB2_24
# %bb.13:                               # %for.body3.us57.preheader.i
                                        #   in Loop: Header=BB2_12 Depth=1
	ori	$fp, $zero, 1
	move	$s0, $t1
	move	$s1, $a3
	move	$s2, $a1
	move	$s3, $a2
	move	$s4, $t3
	b	.LBB2_16
	.p2align	4, , 16
.LBB2_14:                               # %if.then56.us93.i
                                        #   in Loop: Header=BB2_16 Depth=2
	div.w	$s5, $s6, $s5
	andi	$s5, $s5, 255
.LBB2_15:                               # %for.inc.us99.i
                                        #   in Loop: Header=BB2_16 Depth=2
	st.h	$s5, $s3, 0
	addi.d	$s4, $s4, -1
	addi.d	$s3, $s3, 2
	addi.d	$fp, $fp, 1
	addi.d	$s2, $s2, 2
	addi.d	$s1, $s1, -1
	addi.d	$s0, $s0, 2
	beqz	$s4, .LBB2_11
.LBB2_16:                               # %for.body3.us57.i
                                        #   Parent Loop BB2_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$a6, .LBB2_21
# %bb.17:                               # %if.then.us59.i
                                        #   in Loop: Header=BB2_16 Depth=2
	ld.hu	$s5, $s0, 0
	mul.d	$s6, $t7, $s5
	move	$s5, $t7
	beqz	$a7, .LBB2_19
.LBB2_18:                               # %if.then14.us67.i
                                        #   in Loop: Header=BB2_16 Depth=2
	ld.hu	$s7, $t6, 0
	mul.d	$s7, $s1, $s7
	add.d	$s6, $s7, $s6
	add.d	$s5, $s5, $s1
.LBB2_19:                               # %if.end26.us73.i
                                        #   in Loop: Header=BB2_16 Depth=2
	ld.hu	$s7, $s2, 0
	mul.d	$s7, $s7, $t0
	add.w	$s6, $s7, $s6
	beqz	$a0, .LBB2_22
# %bb.20:                               # %if.then43.us76.i
                                        #   in Loop: Header=BB2_16 Depth=2
	ld.hu	$s7, $t8, 0
	mul.d	$s7, $fp, $s7
	add.w	$s6, $s7, $s6
	add.d	$s5, $t5, $s5
	add.d	$s5, $s5, $fp
	addi.w	$s5, $s5, -1
	bgtz	$s5, .LBB2_14
	b	.LBB2_23
	.p2align	4, , 16
.LBB2_21:                               #   in Loop: Header=BB2_16 Depth=2
	move	$s6, $zero
	move	$s5, $zero
	bnez	$a7, .LBB2_18
	b	.LBB2_19
	.p2align	4, , 16
.LBB2_22:                               #   in Loop: Header=BB2_16 Depth=2
	add.w	$s5, $s5, $t0
	bgtz	$s5, .LBB2_14
.LBB2_23:                               # %if.else.us86.i
                                        #   in Loop: Header=BB2_16 Depth=2
	pcalau12i	$s5, %got_pc_hi20(img)
	ld.d	$s5, $s5, %got_pc_lo12(img)
	ld.d	$s5, $s5, 0
	ldx.h	$s5, $s5, $a5
	b	.LBB2_15
	.p2align	4, , 16
.LBB2_24:                               # %for.body3.us.us.i.preheader
                                        #   in Loop: Header=BB2_12 Depth=1
	move	$fp, $zero
	ori	$s0, $zero, 1
	move	$s1, $a3
	move	$s2, $t3
	b	.LBB2_27
	.p2align	4, , 16
.LBB2_25:                               # %if.then56.us.us.i
                                        #   in Loop: Header=BB2_27 Depth=2
	div.w	$s3, $s3, $s4
	andi	$s3, $s3, 255
.LBB2_26:                               # %for.inc.us.us.i
                                        #   in Loop: Header=BB2_27 Depth=2
	stx.h	$s3, $a2, $fp
	addi.d	$s2, $s2, -1
	addi.d	$fp, $fp, 2
	addi.d	$s0, $s0, 1
	addi.d	$s1, $s1, -1
	beqz	$s2, .LBB2_11
.LBB2_27:                               # %for.body3.us.us.i
                                        #   Parent Loop BB2_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$a6, .LBB2_34
# %bb.28:                               # %if.then.us.us.i
                                        #   in Loop: Header=BB2_27 Depth=2
	ldx.hu	$s3, $t1, $fp
	mul.w	$s3, $t7, $s3
	move	$s4, $t7
	beqz	$a7, .LBB2_30
.LBB2_29:                               # %if.then14.us.us.i
                                        #   in Loop: Header=BB2_27 Depth=2
	ld.hu	$s5, $t6, 0
	mul.d	$s5, $s1, $s5
	add.w	$s3, $s5, $s3
	add.w	$s4, $s1, $s4
.LBB2_30:                               # %if.end26.us.us.i
                                        #   in Loop: Header=BB2_27 Depth=2
	beqz	$a0, .LBB2_32
# %bb.31:                               # %if.then43.us.us.i
                                        #   in Loop: Header=BB2_27 Depth=2
	ld.hu	$s5, $t8, 0
	mul.d	$s5, $s0, $s5
	add.w	$s3, $s5, $s3
	add.w	$s4, $s4, $s0
.LBB2_32:                               # %if.end53.us.us.i
                                        #   in Loop: Header=BB2_27 Depth=2
	bgtz	$s4, .LBB2_25
# %bb.33:                               # %if.else.us.us.i
                                        #   in Loop: Header=BB2_27 Depth=2
	pcalau12i	$s3, %got_pc_hi20(img)
	ld.d	$s3, $s3, %got_pc_lo12(img)
	ld.d	$s3, $s3, 0
	ldx.h	$s3, $s3, $a5
	b	.LBB2_26
	.p2align	4, , 16
.LBB2_34:                               #   in Loop: Header=BB2_27 Depth=2
	move	$s3, $zero
	move	$s4, $zero
	bnez	$a7, .LBB2_29
	b	.LBB2_30
.LBB2_35:
	ld.d	$s7, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end2:
	.size	ercPixConcealIMB, .Lfunc_end2-ercPixConcealIMB
                                        # -- End function
	.globl	ercCollect8PredBlocks           # -- Begin function ercCollect8PredBlocks
	.p2align	5
	.type	ercCollect8PredBlocks,@function
ercCollect8PredBlocks:                  # @ercCollect8PredBlocks
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	xvrepli.b	$xr0, 0
	xvst	$xr0, $a0, 0
	sub.w	$t0, $a4, $a6
	add.d	$t4, $a2, $a6
	addi.d	$a4, $a1, -1
	mul.d	$t6, $a5, $a4
	add.w	$t2, $t6, $a2
	alsl.d	$t1, $t2, $a3, 2
	add.d	$a4, $a6, $a1
	mul.d	$t8, $a4, $a5
	add.w	$s0, $t8, $a2
	mul.d	$t3, $a5, $a1
	ori	$a4, $zero, 1
	add.w	$t5, $t3, $a2
	blt	$a1, $a4, .LBB3_2
# %bb.1:                                # %land.lhs.true.peel
	ld.w	$a4, $t1, 0
	ori	$t7, $zero, 3
	bge	$a4, $t7, .LBB3_3
.LBB3_2:
	move	$a4, $zero
	b	.LBB3_4
.LBB3_3:                                # %if.then.peel
	st.w	$a4, $a0, 16
	ori	$a4, $zero, 1
.LBB3_4:                                # %if.end.peel
	sltui	$fp, $a7, 1
	ori	$s2, $zero, 2
	ori	$s3, $zero, 4
	add.w	$t3, $t3, $t4
	add.w	$t7, $t6, $t4
	add.w	$t8, $t4, $t8
	addi.d	$s1, $a3, -4
	sub.w	$a5, $a5, $a6
	alsl.d	$t4, $s0, $a3, 2
	bge	$a1, $t0, .LBB3_7
# %bb.5:                                # %land.lhs.true13.peel
	ld.w	$a6, $t4, 0
	ori	$t6, $zero, 3
	blt	$a6, $t6, .LBB3_7
# %bb.6:                                # %if.then21.peel
	st.w	$a6, $a0, 24
	addi.d	$a4, $a4, 1
.LBB3_7:                                # %if.end29.peel
	masknez	$t6, $s2, $fp
	maskeqz	$fp, $s3, $fp
	alsl.d	$t5, $t5, $s1, 2
	alsl.d	$t2, $t2, $s1, 2
	ori	$s2, $zero, 1
	alsl.d	$a6, $s0, $s1, 2
	blt	$a2, $s2, .LBB3_17
# %bb.8:                                # %if.then32.peel
	ld.w	$s0, $t5, 0
	ori	$s1, $zero, 3
	blt	$s0, $s1, .LBB3_10
# %bb.9:                                # %if.then40.peel
	st.w	$s0, $a0, 20
	addi.d	$a4, $a4, 1
.LBB3_10:                               # %if.end48.peel
	bnez	$a7, .LBB3_17
# %bb.11:                               # %if.then50.peel
	ori	$s0, $zero, 1
	blt	$a1, $s0, .LBB3_14
# %bb.12:                               # %land.lhs.true53.peel
	ld.w	$s0, $t2, 0
	ori	$s1, $zero, 3
	blt	$s0, $s1, .LBB3_14
# %bb.13:                               # %if.then62.peel
	st.w	$s0, $a0, 4
	addi.d	$a4, $a4, 1
.LBB3_14:                               # %if.end71.peel
	bge	$a1, $t0, .LBB3_17
# %bb.15:                               # %land.lhs.true75.peel
	ld.w	$s0, $a6, 0
	ori	$s1, $zero, 3
	blt	$s0, $s1, .LBB3_17
# %bb.16:                               # %if.then84.peel
	st.w	$s0, $a0, 8
	addi.d	$a4, $a4, 1
.LBB3_17:                               # %if.end95.peel
	or	$fp, $fp, $t6
	alsl.d	$t6, $t3, $a3, 2
	alsl.d	$t3, $t7, $a3, 2
	alsl.d	$a3, $t8, $a3, 2
	bge	$a2, $a5, .LBB3_27
# %bb.18:                               # %if.then99.peel
	ld.w	$t7, $t6, 0
	ori	$t8, $zero, 3
	blt	$t7, $t8, .LBB3_20
# %bb.19:                               # %if.then107.peel
	st.w	$t7, $a0, 28
	addi.d	$a4, $a4, 1
.LBB3_20:                               # %if.end115.peel
	bnez	$a7, .LBB3_27
# %bb.21:                               # %if.then117.peel
	ori	$t7, $zero, 1
	blt	$a1, $t7, .LBB3_24
# %bb.22:                               # %land.lhs.true120.peel
	ld.w	$t7, $t3, 0
	ori	$t8, $zero, 3
	blt	$t7, $t8, .LBB3_24
# %bb.23:                               # %if.then129.peel
	st.w	$t7, $a0, 0
	addi.d	$a4, $a4, 1
.LBB3_24:                               # %if.end138.peel
	bge	$a1, $t0, .LBB3_27
# %bb.25:                               # %land.lhs.true142.peel
	ld.w	$t7, $a3, 0
	ori	$t8, $zero, 3
	blt	$t7, $t8, .LBB3_27
# %bb.26:                               # %if.then151.peel
	st.w	$t7, $a0, 12
	addi.d	$a4, $a4, 1
.LBB3_27:                               # %if.end162.peel
	bgeu	$a4, $fp, .LBB3_54
# %bb.28:                               # %do.body
	ori	$a4, $zero, 1
	blt	$a1, $a4, .LBB3_30
# %bb.29:                               # %land.lhs.true
	ld.w	$a4, $t1, 0
	ori	$t1, $zero, 2
	bge	$a4, $t1, .LBB3_31
.LBB3_30:
	move	$a4, $zero
	blt	$a1, $t0, .LBB3_32
	b	.LBB3_34
.LBB3_31:                               # %if.then
	st.w	$a4, $a0, 16
	ori	$a4, $zero, 1
	bge	$a1, $t0, .LBB3_34
.LBB3_32:                               # %land.lhs.true13
	ld.w	$t1, $t4, 0
	ori	$t4, $zero, 2
	blt	$t1, $t4, .LBB3_34
# %bb.33:                               # %if.then21
	st.w	$t1, $a0, 24
	addi.d	$a4, $a4, 1
.LBB3_34:                               # %if.end29
	ori	$t1, $zero, 1
	blt	$a2, $t1, .LBB3_44
# %bb.35:                               # %if.then32
	ld.w	$t1, $t5, 0
	ori	$t4, $zero, 2
	blt	$t1, $t4, .LBB3_37
# %bb.36:                               # %if.then40
	st.w	$t1, $a0, 20
	addi.d	$a4, $a4, 1
.LBB3_37:                               # %if.end48
	bnez	$a7, .LBB3_44
# %bb.38:                               # %if.then50
	ori	$t1, $zero, 1
	blt	$a1, $t1, .LBB3_41
# %bb.39:                               # %land.lhs.true53
	ld.w	$t1, $t2, 0
	ori	$t2, $zero, 2
	blt	$t1, $t2, .LBB3_41
# %bb.40:                               # %if.then62
	st.w	$t1, $a0, 4
	addi.d	$a4, $a4, 1
.LBB3_41:                               # %if.end71
	bge	$a1, $t0, .LBB3_44
# %bb.42:                               # %land.lhs.true75
	ld.w	$a6, $a6, 0
	ori	$t1, $zero, 2
	blt	$a6, $t1, .LBB3_44
# %bb.43:                               # %if.then84
	st.w	$a6, $a0, 8
	addi.d	$a4, $a4, 1
.LBB3_44:                               # %if.end95
	bge	$a2, $a5, .LBB3_54
# %bb.45:                               # %if.then99
	ld.w	$a2, $t6, 0
	ori	$a5, $zero, 2
	blt	$a2, $a5, .LBB3_47
# %bb.46:                               # %if.then107
	st.w	$a2, $a0, 28
	addi.d	$a4, $a4, 1
.LBB3_47:                               # %if.end115
	bnez	$a7, .LBB3_54
# %bb.48:                               # %if.then117
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB3_51
# %bb.49:                               # %land.lhs.true120
	ld.w	$a2, $t3, 0
	ori	$a5, $zero, 2
	blt	$a2, $a5, .LBB3_51
# %bb.50:                               # %if.then129
	st.w	$a2, $a0, 0
	addi.d	$a4, $a4, 1
.LBB3_51:                               # %if.end138
	bge	$a1, $t0, .LBB3_54
# %bb.52:                               # %land.lhs.true142
	ld.w	$a1, $a3, 0
	ori	$a2, $zero, 2
	blt	$a1, $a2, .LBB3_54
# %bb.53:                               # %if.then151
	st.w	$a1, $a0, 12
	addi.d	$a4, $a4, 1
.LBB3_54:                               # %do.end
	move	$a0, $a4
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end3:
	.size	ercCollect8PredBlocks, .Lfunc_end3-ercCollect8PredBlocks
                                        # -- End function
	.globl	ercCollectColumnBlocks          # -- Begin function ercCollectColumnBlocks
	.p2align	5
	.type	ercCollectColumnBlocks,@function
ercCollectColumnBlocks:                 # @ercCollectColumnBlocks
# %bb.0:                                # %entry
	xvrepli.b	$xr0, 0
	xvst	$xr0, $a0, 0
	addi.d	$a4, $a1, -1
	mul.d	$a4, $a5, $a4
	add.w	$a4, $a4, $a2
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a3, $a4
	ori	$a7, $zero, 2
	blt	$a4, $a7, .LBB4_2
# %bb.1:                                # %if.then
	ori	$a4, $zero, 1
	st.w	$a4, $a0, 16
	b	.LBB4_3
.LBB4_2:
	move	$a4, $zero
.LBB4_3:                                # %if.end
	add.d	$a1, $a6, $a1
	mul.d	$a1, $a1, $a5
	add.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a3, $a1
	blt	$a1, $a7, .LBB4_5
# %bb.4:                                # %if.then8
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 24
	addi.d	$a4, $a4, 1
.LBB4_5:                                # %if.end11
	move	$a0, $a4
	ret
.Lfunc_end4:
	.size	ercCollectColumnBlocks, .Lfunc_end4-ercCollectColumnBlocks
                                        # -- End function
	.type	active_pps,@object              # @active_pps
	.comm	active_pps,8,8
	.type	active_sps,@object              # @active_sps
	.comm	active_sps,8,8
	.type	imgY_ref,@object                # @imgY_ref
	.comm	imgY_ref,8,8
	.type	imgUV_ref,@object               # @imgUV_ref
	.comm	imgUV_ref,8,8
	.type	PicPos,@object                  # @PicPos
	.comm	PicPos,8,8
	.type	ReMapRef,@object                # @ReMapRef
	.comm	ReMapRef,80,4
	.type	Bframe_ctr,@object              # @Bframe_ctr
	.comm	Bframe_ctr,4,4
	.type	frame_no,@object                # @frame_no
	.comm	frame_no,4,4
	.type	g_nFrame,@object                # @g_nFrame
	.comm	g_nFrame,4,4
	.type	TopFieldForSkip_Y,@object       # @TopFieldForSkip_Y
	.comm	TopFieldForSkip_Y,1024,4
	.type	TopFieldForSkip_UV,@object      # @TopFieldForSkip_UV
	.comm	TopFieldForSkip_UV,2048,4
	.type	InvLevelScale4x4Luma_Intra,@object # @InvLevelScale4x4Luma_Intra
	.comm	InvLevelScale4x4Luma_Intra,384,4
	.type	InvLevelScale4x4Chroma_Intra,@object # @InvLevelScale4x4Chroma_Intra
	.comm	InvLevelScale4x4Chroma_Intra,768,4
	.type	InvLevelScale4x4Luma_Inter,@object # @InvLevelScale4x4Luma_Inter
	.comm	InvLevelScale4x4Luma_Inter,384,4
	.type	InvLevelScale4x4Chroma_Inter,@object # @InvLevelScale4x4Chroma_Inter
	.comm	InvLevelScale4x4Chroma_Inter,768,4
	.type	InvLevelScale8x8Luma_Intra,@object # @InvLevelScale8x8Luma_Intra
	.comm	InvLevelScale8x8Luma_Intra,1536,4
	.type	InvLevelScale8x8Luma_Inter,@object # @InvLevelScale8x8Luma_Inter
	.comm	InvLevelScale8x8Luma_Inter,1536,4
	.type	qmatrix,@object                 # @qmatrix
	.comm	qmatrix,64,8
	.type	errortext,@object               # @errortext
	.comm	errortext,300,1
	.type	tot_time,@object                # @tot_time
	.comm	tot_time,8,8
	.type	p_out,@object                   # @p_out
	.comm	p_out,4,4
	.type	p_ref,@object                   # @p_ref
	.comm	p_ref,4,4
	.type	p_log,@object                   # @p_log
	.comm	p_log,8,8
	.type	previous_frame_num,@object      # @previous_frame_num
	.comm	previous_frame_num,4,4
	.type	ref_flag,@object                # @ref_flag
	.comm	ref_flag,68,4
	.type	Is_primary_correct,@object      # @Is_primary_correct
	.comm	Is_primary_correct,4,4
	.type	Is_redundant_correct,@object    # @Is_redundant_correct
	.comm	Is_redundant_correct,4,4
	.type	redundant_slice_ref_idx,@object # @redundant_slice_ref_idx
	.comm	redundant_slice_ref_idx,4,4
	.type	nal_startcode_follows,@object   # @nal_startcode_follows
	.comm	nal_startcode_follows,8,8
	.type	last_out_fs,@object             # @last_out_fs
	.comm	last_out_fs,8,8
	.type	pocs_in_dpb,@object             # @pocs_in_dpb
	.comm	pocs_in_dpb,400,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
