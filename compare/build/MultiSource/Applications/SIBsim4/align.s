	.file	"align.c"
	.text
	.globl	align_path                      # -- Begin function align_path
	.p2align	5
	.type	align_path,@function
align_path:                             # @align_path
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -528
	st.d	$ra, $sp, 520                   # 8-byte Folded Spill
	st.d	$fp, $sp, 512                   # 8-byte Folded Spill
	st.d	$s0, $sp, 504                   # 8-byte Folded Spill
	st.d	$s1, $sp, 496                   # 8-byte Folded Spill
	st.d	$s2, $sp, 488                   # 8-byte Folded Spill
	st.d	$s3, $sp, 480                   # 8-byte Folded Spill
	st.d	$s4, $sp, 472                   # 8-byte Folded Spill
	st.d	$s5, $sp, 464                   # 8-byte Folded Spill
	st.d	$s6, $sp, 456                   # 8-byte Folded Spill
	st.d	$s7, $sp, 448                   # 8-byte Folded Spill
	st.d	$s8, $sp, 440                   # 8-byte Folded Spill
	ld.d	$s3, $sp, 528
	ld.d	$t1, $sp, 544
	ld.d	$t0, $sp, 536
	move	$s4, $a7
	move	$s5, $a5
	move	$a5, $a3
	st.d	$a1, $sp, 392                   # 8-byte Folded Spill
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	st.d	$zero, $s3, 0
	st.d	$zero, $a7, 0
	bne	$a4, $a2, .LBB0_3
# %bb.1:                                # %if.then
	bne	$s5, $a5, .LBB0_6
# %bb.2:
	st.d	$zero, $s4, 0
	b	.LBB0_8
.LBB0_3:                                # %if.end3
	bne	$s5, $a5, .LBB0_9
# %bb.4:                                # %if.then5
	ori	$a0, $zero, 16
	move	$fp, $a4
	move	$s0, $a2
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
.LBB0_5:                                # %cleanup
	st.b	$a1, $a0, 12
	sub.d	$a1, $fp, $s0
	b	.LBB0_7
.LBB0_6:                                # %if.else
	ori	$a0, $zero, 16
	move	$fp, $a5
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	st.b	$a1, $a0, 12
	sub.d	$a1, $s5, $fp
.LBB0_7:                                # %cleanup
	st.w	$a1, $a0, 8
	st.d	$zero, $a0, 0
	st.d	$a0, $s3, 0
	st.d	$a0, $s4, 0
.LBB0_8:                                # %cleanup
	ld.d	$s8, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 496                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 504                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 512                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 520                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 528
	ret
.LBB0_9:                                # %if.end11
	ori	$a0, $zero, 1
	st.d	$a4, $sp, 400                   # 8-byte Folded Spill
	blt	$a0, $a6, .LBB0_12
# %bb.10:                               # %if.then13
	sub.w	$a0, $a5, $a2
	sub.w	$a1, $s5, $a4
	bne	$a1, $a0, .LBB0_61
# %bb.11:                               # %if.then18
	ori	$a0, $zero, 16
	move	$fp, $a4
	move	$s0, $a2
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 3
	b	.LBB0_5
.LBB0_12:                               # %if.end94
	st.d	$t1, $sp, 288                   # 8-byte Folded Spill
	st.d	$t0, $sp, 296                   # 8-byte Folded Spill
	bstrpick.d	$a7, $a6, 31, 1
	sub.w	$a3, $a6, $a7
	sub.w	$s8, $a5, $a2
	st.d	$a5, $sp, 304                   # 8-byte Folded Spill
	sub.w	$a5, $a5, $a4
	sub.w	$a1, $s8, $a7
	slt	$a0, $a1, $a5
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a5, $a0
	or	$s6, $a0, $a1
	st.d	$a2, $sp, 312                   # 8-byte Folded Spill
	sub.w	$a2, $s5, $a2
	st.d	$a7, $sp, 376                   # 8-byte Folded Spill
	add.w	$s7, $a7, $s8
	slt	$a0, $a2, $s7
	masknez	$a1, $s7, $a0
	maskeqz	$a0, $a2, $a0
	or	$s0, $a0, $a1
	sub.w	$a1, $s5, $a4
	sub.w	$a0, $a1, $a3
	st.d	$a5, $sp, 344                   # 8-byte Folded Spill
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	slt	$a0, $a0, $a5
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	st.d	$a3, $sp, 112                   # 8-byte Folded Spill
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	add.w	$a0, $a3, $a1
	st.d	$a2, $sp, 336                   # 8-byte Folded Spill
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	slt	$a0, $a2, $a0
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	sub.w	$s2, $s0, $s6
	addi.w	$a0, $s2, 1
	slli.d	$s1, $a0, 2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	slli.d	$a0, $s6, 2
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$t6, $a0
	st.d	$s6, $sp, 360                   # 8-byte Folded Spill
	st.d	$s0, $sp, 352                   # 8-byte Folded Spill
	blt	$s0, $s6, .LBB0_14
# %bb.13:                               # %for.body.preheader
	bstrpick.d	$a0, $s2, 31, 0
	slli.d	$a0, $a0, 2
	addi.d	$a2, $a0, 4
	ori	$a1, $zero, 255
	move	$a0, $fp
	move	$s0, $t6
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$t6, $s0
.LBB0_14:                               # %for.end
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	masknez	$a2, $a0, $a1
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	maskeqz	$a3, $a0, $a1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	masknez	$a4, $a0, $a1
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	maskeqz	$a5, $a0, $a1
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	sub.d	$a0, $fp, $a0
	ld.d	$t2, $sp, 312                   # 8-byte Folded Reload
	move	$a6, $t2
	ld.d	$t3, $sp, 304                   # 8-byte Folded Reload
	bltz	$t2, .LBB0_21
# %bb.15:                               # %if.end.i347
	move	$a6, $t2
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	bge	$t2, $a1, .LBB0_21
# %bb.16:                               # %if.end.i347
	move	$a6, $t2
	bge	$t3, $s5, .LBB0_21
# %bb.17:                               # %land.rhs.preheader.i352
	bstrpick.d	$a1, $t2, 31, 0
	ld.d	$a6, $sp, 384                   # 8-byte Folded Reload
	add.d	$a1, $a6, $a1
	move	$a7, $t3
	move	$a6, $t2
	.p2align	4, , 16
.LBB0_18:                               # %land.rhs.i353
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$t0, $a1, 0
	ld.d	$t1, $sp, 392                   # 8-byte Folded Reload
	ldx.bu	$t1, $t1, $a7
	bne	$t0, $t1, .LBB0_21
# %bb.19:                               # %while.body.i361
                                        #   in Loop: Header=BB0_18 Depth=1
	addi.w	$a6, $a6, 1
	ld.d	$t0, $sp, 400                   # 8-byte Folded Reload
	bge	$a6, $t0, .LBB0_21
# %bb.20:                               # %while.body.i361
                                        #   in Loop: Header=BB0_18 Depth=1
	addi.d	$a7, $a7, 1
	addi.d	$a1, $a1, 1
	blt	$a7, $s5, .LBB0_18
.LBB0_21:                               # %for.body149.lr.ph
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	move	$a1, $zero
	or	$a2, $a3, $a2
	st.d	$a2, $sp, 328                   # 8-byte Folded Spill
	or	$a2, $a5, $a4
	st.d	$a2, $sp, 320                   # 8-byte Folded Spill
	ld.d	$t5, $sp, 104                   # 8-byte Folded Reload
	sub.d	$a2, $t6, $t5
	slli.d	$a3, $s8, 2
	stx.w	$a6, $a0, $a3
	addi.d	$a3, $a0, -4
	addi.d	$a4, $a0, 4
	nor	$a5, $t2, $zero
	add.w	$a5, $t3, $a5
	ld.d	$a6, $sp, 376                   # 8-byte Folded Reload
	addi.w	$t0, $a6, 0
	ori	$t4, $zero, 1
	sltu	$a6, $t4, $t0
	masknez	$a7, $t4, $a6
	st.d	$t0, $sp, 40                    # 8-byte Folded Spill
	maskeqz	$a6, $t0, $a6
	or	$a6, $a6, $a7
	ld.d	$t1, $sp, 96                    # 8-byte Folded Reload
	sub.d	$a7, $t1, $t6
	st.d	$a7, $sp, 280                   # 8-byte Folded Spill
	addi.w	$t0, $s8, 1
	ori	$a7, $zero, 32
	sub.d	$a7, $a7, $t5
	st.d	$t6, $sp, 48                    # 8-byte Folded Spill
	add.d	$t2, $t6, $a7
	st.d	$t2, $sp, 376                   # 8-byte Folded Spill
	add.d	$a7, $t1, $a7
	st.d	$a7, $sp, 368                   # 8-byte Folded Spill
	move	$t6, $t0
	ld.d	$t1, $sp, 400                   # 8-byte Folded Reload
	b	.LBB0_23
	.p2align	4, , 16
.LBB0_22:                               # %for.inc252
                                        #   in Loop: Header=BB0_23 Depth=1
	addi.w	$t4, $t7, 1
	addi.w	$a5, $a5, -1
	addi.d	$a1, $a1, 1
	addi.w	$t6, $t6, 1
	beq	$t7, $a6, .LBB0_57
.LBB0_23:                               # %for.body149
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_27 Depth 2
                                        #       Child Loop BB0_39 Depth 3
                                        #     Child Loop BB0_48 Depth 2
                                        #     Child Loop BB0_52 Depth 2
                                        #     Child Loop BB0_56 Depth 2
	move	$t7, $t4
	sub.w	$a7, $s8, $t4
	ld.d	$t2, $sp, 360                   # 8-byte Folded Reload
	slt	$t3, $a7, $t2
	masknez	$a7, $a7, $t3
	maskeqz	$t3, $t2, $t3
	or	$s0, $t3, $a7
	add.w	$a7, $t4, $s8
	ld.d	$t2, $sp, 352                   # 8-byte Folded Reload
	slt	$t3, $t2, $a7
	masknez	$a7, $a7, $t3
	maskeqz	$t3, $t2, $t3
	or	$t8, $t3, $a7
	blt	$t8, $s0, .LBB0_22
# %bb.24:                               # %for.body169.preheader
                                        #   in Loop: Header=BB0_23 Depth=1
	slt	$a7, $t6, $s7
	masknez	$t3, $s7, $a7
	maskeqz	$a7, $t6, $a7
	or	$a7, $a7, $t3
	ld.d	$t5, $sp, 336                   # 8-byte Folded Reload
	slt	$t3, $a7, $t5
	maskeqz	$a7, $a7, $t3
	masknez	$t3, $t5, $t3
	or	$a7, $a7, $t3
	ld.d	$t2, $sp, 192                   # 8-byte Folded Reload
	slt	$t3, $t2, $a5
	masknez	$t4, $t2, $t3
	maskeqz	$t3, $a5, $t3
	or	$t3, $t3, $t4
	ld.d	$t2, $sp, 344                   # 8-byte Folded Reload
	slt	$t4, $t2, $t3
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $t2, $t4
	or	$fp, $t3, $t4
	slt	$t3, $a7, $fp
	masknez	$a7, $a7, $t3
	maskeqz	$t3, $fp, $t3
	or	$a7, $t3, $a7
	sub.d	$a7, $a7, $fp
	addi.d	$s1, $a7, 1
	move	$s6, $s1
	bstrins.d	$s6, $zero, 1, 0
	bstrins.d	$s1, $zero, 3, 0
	ld.d	$a7, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$s3, $fp, $a7, 2
	ld.d	$a7, $sp, 368                   # 8-byte Folded Reload
	alsl.d	$ra, $fp, $a7, 2
	add.w	$a7, $t0, $a1
	slt	$t3, $a7, $s7
	maskeqz	$a7, $a7, $t3
	masknez	$t3, $s7, $t3
	or	$a7, $a7, $t3
	slt	$t3, $a7, $t5
	maskeqz	$a7, $a7, $t3
	masknez	$t3, $t5, $t3
	or	$a7, $a7, $t3
	slt	$t3, $a7, $fp
	masknez	$a7, $a7, $t3
	maskeqz	$t3, $fp, $t3
	or	$a7, $t3, $a7
	sub.d	$a7, $a7, $fp
	addi.d	$t2, $a7, 1
	move	$a7, $fp
	b	.LBB0_27
.LBB0_25:                               #   in Loop: Header=BB0_27 Depth=2
	ld.d	$t1, $sp, 400                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_26:                               # %snake.exit391
                                        #   in Loop: Header=BB0_27 Depth=2
	stx.w	$t5, $a2, $s4
	addi.d	$a7, $s2, 1
	bge	$s2, $t8, .LBB0_42
.LBB0_27:                               # %for.body169
                                        #   Parent Loop BB0_23 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_39 Depth 3
	move	$s2, $a7
	addi.w	$a7, $a7, 0
	slli.d	$s4, $s2, 2
	bne	$s0, $a7, .LBB0_29
# %bb.28:                               # %if.then172
                                        #   in Loop: Header=BB0_27 Depth=2
	ldx.w	$a7, $a4, $s4
	addi.w	$t5, $a7, 1
	b	.LBB0_35
	.p2align	4, , 16
.LBB0_29:                               # %if.else177
                                        #   in Loop: Header=BB0_27 Depth=2
	bne	$t8, $a7, .LBB0_31
# %bb.30:                               # %if.then180
                                        #   in Loop: Header=BB0_27 Depth=2
	ldx.w	$t5, $a3, $s4
	b	.LBB0_35
	.p2align	4, , 16
.LBB0_31:                               # %if.else184
                                        #   in Loop: Header=BB0_27 Depth=2
	alsl.d	$a7, $s2, $a0, 2
	ldx.w	$t3, $a0, $s4
	ld.w	$t4, $a7, 4
	bge	$t3, $t4, .LBB0_33
# %bb.32:                               # %if.else184.if.else204_crit_edge
                                        #   in Loop: Header=BB0_27 Depth=2
	ld.w	$a7, $a7, -4
	b	.LBB0_34
.LBB0_33:                               # %land.lhs.true
                                        #   in Loop: Header=BB0_27 Depth=2
	ld.w	$a7, $a7, -4
	addi.w	$t5, $t3, 1
	bge	$t5, $a7, .LBB0_35
.LBB0_34:                               # %if.else204
                                        #   in Loop: Header=BB0_27 Depth=2
	addi.w	$t5, $t4, 1
	slt	$t3, $t4, $t3
	slt	$t4, $a7, $t5
	masknez	$t1, $a7, $t4
	maskeqz	$t4, $t5, $t4
	or	$t1, $t4, $t1
	masknez	$t1, $t1, $t3
	maskeqz	$a7, $a7, $t3
	or	$t5, $a7, $t1
	ld.d	$t1, $sp, 400                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_35:                               # %if.end234
                                        #   in Loop: Header=BB0_27 Depth=2
	bltz	$t5, .LBB0_26
# %bb.36:                               # %if.end.i370
                                        #   in Loop: Header=BB0_27 Depth=2
	bge	$t5, $t1, .LBB0_26
# %bb.37:                               # %if.end.i370
                                        #   in Loop: Header=BB0_27 Depth=2
	add.w	$t4, $t5, $s2
	bge	$t4, $s5, .LBB0_26
# %bb.38:                               # %land.rhs.preheader.i375
                                        #   in Loop: Header=BB0_27 Depth=2
	bstrpick.d	$a7, $t5, 31, 0
	ld.d	$t1, $sp, 384                   # 8-byte Folded Reload
	add.d	$t3, $t1, $a7
	.p2align	4, , 16
.LBB0_39:                               # %land.rhs.i376
                                        #   Parent Loop BB0_23 Depth=1
                                        #     Parent Loop BB0_27 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a7, $t3, 0
	ld.d	$t1, $sp, 392                   # 8-byte Folded Reload
	ldx.bu	$t1, $t1, $t4
	bne	$a7, $t1, .LBB0_25
# %bb.40:                               # %while.body.i384
                                        #   in Loop: Header=BB0_39 Depth=3
	addi.w	$t5, $t5, 1
	ld.d	$t1, $sp, 400                   # 8-byte Folded Reload
	bge	$t5, $t1, .LBB0_26
# %bb.41:                               # %while.body.i384
                                        #   in Loop: Header=BB0_39 Depth=3
	addi.d	$t4, $t4, 1
	addi.d	$t3, $t3, 1
	blt	$t4, $s5, .LBB0_39
	b	.LBB0_26
	.p2align	4, , 16
.LBB0_42:                               # %iter.check
                                        #   in Loop: Header=BB0_23 Depth=1
	ori	$a7, $zero, 4
	bltu	$t2, $a7, .LBB0_46
# %bb.43:                               # %iter.check
                                        #   in Loop: Header=BB0_23 Depth=1
	ld.d	$a7, $sp, 280                   # 8-byte Folded Reload
	ori	$t3, $zero, 63
	bgeu	$t3, $a7, .LBB0_46
# %bb.44:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB0_23 Depth=1
	ori	$a7, $zero, 16
	bgeu	$t2, $a7, .LBB0_47
# %bb.45:                               #   in Loop: Header=BB0_23 Depth=1
	move	$t5, $zero
	b	.LBB0_51
	.p2align	4, , 16
.LBB0_46:                               #   in Loop: Header=BB0_23 Depth=1
	move	$s0, $fp
	b	.LBB0_55
.LBB0_47:                               # %vector.ph
                                        #   in Loop: Header=BB0_23 Depth=1
	move	$t5, $t2
	bstrins.d	$t5, $zero, 3, 0
	.p2align	4, , 16
.LBB0_48:                               # %vector.body
                                        #   Parent Loop BB0_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $s3, -32
	xvld	$xr1, $s3, 0
	xvst	$xr0, $ra, -32
	xvst	$xr1, $ra, 0
	addi.d	$s1, $s1, -16
	addi.d	$s3, $s3, 64
	addi.d	$ra, $ra, 64
	bnez	$s1, .LBB0_48
# %bb.49:                               # %middle.block
                                        #   in Loop: Header=BB0_23 Depth=1
	beq	$t2, $t5, .LBB0_22
# %bb.50:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB0_23 Depth=1
	andi	$a7, $t2, 12
	beqz	$a7, .LBB0_54
.LBB0_51:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB0_23 Depth=1
	move	$t4, $t2
	bstrins.d	$t4, $zero, 1, 0
	add.d	$s0, $t4, $fp
	sub.d	$t3, $t5, $s6
	add.d	$a7, $t5, $fp
	alsl.d	$t5, $a7, $a0, 2
	alsl.d	$fp, $a7, $a2, 2
	.p2align	4, , 16
.LBB0_52:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB0_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $fp, 0
	vst	$vr0, $t5, 0
	addi.d	$t3, $t3, 4
	addi.d	$t5, $t5, 16
	addi.d	$fp, $fp, 16
	bnez	$t3, .LBB0_52
# %bb.53:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB0_23 Depth=1
	beq	$t2, $t4, .LBB0_22
	b	.LBB0_55
.LBB0_54:                               #   in Loop: Header=BB0_23 Depth=1
	add.d	$s0, $t5, $fp
	.p2align	4, , 16
.LBB0_55:                               # %for.body244.preheader
                                        #   in Loop: Header=BB0_23 Depth=1
	addi.d	$t3, $s0, -1
	alsl.d	$t4, $s0, $a2, 2
	alsl.d	$t5, $s0, $a0, 2
	.p2align	4, , 16
.LBB0_56:                               # %for.body244
                                        #   Parent Loop BB0_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a7, $t4, 0
	st.w	$a7, $t5, 0
	addi.d	$t3, $t3, 1
	addi.d	$t4, $t4, 4
	addi.d	$t5, $t5, 4
	blt	$t3, $t8, .LBB0_56
	b	.LBB0_22
.LBB0_57:                               # %for.end254
	ld.d	$s1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	sub.w	$fp, $s1, $s2
	addi.w	$a0, $fp, 1
	slli.d	$s7, $a0, 2
	move	$a0, $s7
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	slli.d	$s4, $s2, 2
	move	$a0, $s7
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	ld.d	$a6, $sp, 400                   # 8-byte Folded Reload
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a7, $sp, 312                   # 8-byte Folded Reload
	move	$s0, $s5
	ld.d	$t0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 288                   # 8-byte Folded Reload
	blt	$s1, $s2, .LBB0_98
# %bb.58:                               # %iter.check553
	ori	$a1, $zero, 3
	addi.d	$a0, $a6, 1
	ld.d	$a3, $sp, 328                   # 8-byte Folded Reload
	bltu	$fp, $a1, .LBB0_96
# %bb.59:                               # %vector.main.loop.iter.check555
	bstrpick.d	$a1, $fp, 31, 0
	ori	$a2, $zero, 15
	addi.d	$a1, $a1, 1
	bgeu	$fp, $a2, .LBB0_80
# %bb.60:
	move	$a2, $zero
	b	.LBB0_84
.LBB0_61:                               # %if.else24
	sub.w	$a0, $s5, $a5
	sub.w	$a1, $a4, $a2
	addi.w	$a3, $a1, 1
	bne	$a0, $a3, .LBB0_70
# %bb.62:                               # %if.then28
	bltz	$a2, .LBB0_79
# %bb.63:                               # %if.then28
	bge	$a2, $a4, .LBB0_79
# %bb.64:                               # %land.rhs.preheader.i
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	move	$fp, $a2
	.p2align	4, , 16
.LBB0_65:                               # %land.rhs.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $a0, 0
	ld.d	$a3, $sp, 392                   # 8-byte Folded Reload
	ldx.bu	$a3, $a3, $a5
	bne	$a1, $a3, .LBB0_68
# %bb.66:                               # %while.body.i
                                        #   in Loop: Header=BB0_65 Depth=1
	addi.w	$fp, $fp, 1
	bge	$fp, $a4, .LBB0_68
# %bb.67:                               # %while.body.i
                                        #   in Loop: Header=BB0_65 Depth=1
	addi.d	$a5, $a5, 1
	addi.d	$a0, $a0, 1
	blt	$a5, $s5, .LBB0_65
.LBB0_68:                               # %snake.exit
	bge	$a2, $fp, .LBB0_88
# %bb.69:                               # %if.then31
	ori	$a0, $zero, 16
	move	$s0, $a2
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a0, $zero, 3
	st.b	$a0, $s2, 12
	sub.d	$a0, $fp, $s0
	st.w	$a0, $s2, 8
	st.d	$s2, $s4, 0
	b	.LBB0_89
.LBB0_70:                               # %if.else55
	addi.w	$a0, $a0, 1
	bne	$a0, $a1, .LBB0_158
# %bb.71:                               # %if.then60
	bltz	$a2, .LBB0_87
# %bb.72:                               # %if.then60
	bge	$a5, $s5, .LBB0_87
# %bb.73:                               # %land.rhs.preheader.i329
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	move	$fp, $a2
	.p2align	4, , 16
.LBB0_74:                               # %land.rhs.i330
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $a0, 0
	ld.d	$a3, $sp, 392                   # 8-byte Folded Reload
	ldx.bu	$a3, $a3, $a5
	bne	$a1, $a3, .LBB0_77
# %bb.75:                               # %while.body.i338
                                        #   in Loop: Header=BB0_74 Depth=1
	addi.w	$fp, $fp, 1
	bge	$fp, $a4, .LBB0_77
# %bb.76:                               # %while.body.i338
                                        #   in Loop: Header=BB0_74 Depth=1
	addi.d	$a5, $a5, 1
	addi.d	$a0, $a0, 1
	blt	$a5, $s5, .LBB0_74
.LBB0_77:                               # %snake.exit345
	bge	$a2, $fp, .LBB0_91
# %bb.78:                               # %if.then63
	ori	$a0, $zero, 16
	move	$s0, $a2
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a0, $zero, 3
	st.b	$a0, $s2, 12
	sub.d	$a0, $fp, $s0
	st.w	$a0, $s2, 8
	st.d	$s2, $s4, 0
	b	.LBB0_92
.LBB0_79:
                                        # implicit-def: $r25
	move	$fp, $a2
	b	.LBB0_89
.LBB0_80:                               # %vector.ph556
	bstrpick.d	$a2, $a1, 32, 4
	slli.d	$a2, $a2, 4
	xvreplgr2vr.w	$xr0, $a0
	addi.d	$a3, $s3, 32
	move	$a4, $a2
	.p2align	4, , 16
.LBB0_81:                               # %vector.body559
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	addi.d	$a4, $a4, -16
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB0_81
# %bb.82:                               # %middle.block562
	beq	$a1, $a2, .LBB0_98
# %bb.83:                               # %vec.epilog.iter.check567
	andi	$a3, $a1, 12
	beqz	$a3, .LBB0_95
.LBB0_84:                               # %vec.epilog.ph566
	bstrpick.d	$a3, $a1, 32, 2
	slli.d	$a4, $a3, 2
	ld.d	$a5, $sp, 328                   # 8-byte Folded Reload
	alsl.d	$a3, $a3, $a5, 2
	vreplgr2vr.w	$vr0, $a0
	alsl.d	$a5, $a2, $s3, 2
	sub.d	$a2, $a2, $a4
	.p2align	4, , 16
.LBB0_85:                               # %vec.epilog.vector.body574
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a5, 0
	addi.d	$a2, $a2, 4
	addi.d	$a5, $a5, 16
	bnez	$a2, .LBB0_85
# %bb.86:                               # %vec.epilog.middle.block578
	bne	$a1, $a4, .LBB0_96
	b	.LBB0_98
.LBB0_87:
                                        # implicit-def: $r25
	move	$fp, $a2
	b	.LBB0_92
.LBB0_88:
                                        # implicit-def: $r25
.LBB0_89:                               # %if.end36
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $zero, 2
	ld.d	$a1, $s4, 0
	st.b	$a0, $s1, 12
	ori	$a0, $zero, 1
	st.w	$a0, $s1, 8
	sltui	$a0, $a1, 1
	masknez	$a1, $s2, $a0
	maskeqz	$a0, $s4, $a0
	or	$a0, $a0, $a1
	st.d	$s1, $a0, 0
	st.d	$s1, $s3, 0
	st.d	$zero, $s1, 0
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	beq	$a0, $fp, .LBB0_8
# %bb.90:                               # %if.then47
	sub.d	$fp, $a0, $fp
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 0
	ori	$a1, $zero, 3
	st.b	$a1, $a0, 12
	st.w	$fp, $a0, 8
	b	.LBB0_94
.LBB0_91:
                                        # implicit-def: $r25
.LBB0_92:                               # %if.end68
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ld.d	$a0, $s4, 0
	ori	$a1, $zero, 1
	st.b	$a1, $s1, 12
	st.w	$a1, $s1, 8
	sltui	$a0, $a0, 1
	masknez	$a1, $s2, $a0
	maskeqz	$a0, $s4, $a0
	or	$a0, $a0, $a1
	st.d	$s1, $a0, 0
	st.d	$s1, $s3, 0
	addi.w	$a0, $fp, 1
	st.d	$zero, $s1, 0
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	bge	$a0, $a1, .LBB0_8
# %bb.93:                               # %if.then80
	ori	$a0, $zero, 16
	move	$s0, $a1
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 0
	ori	$a1, $zero, 3
	st.b	$a1, $a0, 12
	nor	$a1, $fp, $zero
	add.d	$a1, $s0, $a1
	st.w	$a1, $a0, 8
.LBB0_94:                               # %cleanup
	st.d	$zero, $a0, 0
	st.d	$a0, $s1, 0
	b	.LBB0_8
.LBB0_95:
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	add.d	$a3, $a2, $a1
.LBB0_96:                               # %for.body274.preheader
	slli.d	$a1, $a3, 2
	sub.d	$a1, $a1, $s4
	add.d	$a1, $s3, $a1
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	sub.d	$a2, $a2, $a3
	addi.d	$a2, $a2, 1
	.p2align	4, , 16
.LBB0_97:                               # %for.body274
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a0, $a1, 0
	addi.w	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB0_97
.LBB0_98:                               # %for.end280
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	sub.d	$t3, $s3, $s4
	or	$t4, $t0, $a7
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	addi.d	$fp, $a0, -1
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	addi.d	$s6, $a0, -1
	move	$a0, $a6
	st.d	$t3, $sp, 240                   # 8-byte Folded Spill
	st.d	$t4, $sp, 232                   # 8-byte Folded Spill
	blt	$t1, $a6, .LBB0_105
# %bb.99:                               # %if.end.i393
	addi.w	$a0, $zero, -1
	bge	$a0, $t4, .LBB0_156
# %bb.100:                              # %if.end4.i
	blt	$t2, $s0, .LBB0_157
.LBB0_101:                              # %if.end9.i
	move	$a3, $a6
	move	$a1, $s0
	move	$a2, $a6
	.p2align	4, , 16
.LBB0_102:                              # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $a3
	bge	$t0, $a1, .LBB0_105
# %bb.103:                              # %while.cond.i
                                        #   in Loop: Header=BB0_102 Depth=1
	bge	$a7, $a2, .LBB0_105
# %bb.104:                              # %land.rhs.i398
                                        #   in Loop: Header=BB0_102 Depth=1
	ldx.bu	$a4, $s6, $a2
	ldx.bu	$a5, $fp, $a1
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a0, -1
	beq	$a4, $a5, .LBB0_102
.LBB0_105:                              # %rsnake.exit
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	slli.d	$a1, $a5, 2
	ori	$t5, $zero, 1
	stx.w	$a0, $t3, $a1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	blt	$a0, $t5, .LBB0_143
# %bb.106:                              # %for.body287.lr.ph
	move	$t6, $zero
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	sub.d	$t7, $a1, $a3
	addi.d	$t8, $t3, -4
	addi.d	$ra, $t3, 4
	nor	$a0, $a6, $zero
	add.w	$s0, $s5, $a0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	addi.w	$s1, $a0, 1
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	sub.d	$a0, $a2, $a1
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	addi.w	$s2, $a5, 1
	ori	$a0, $zero, 32
	sub.d	$a0, $a0, $a3
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	add.d	$a0, $a2, $a0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 144                   # 8-byte Folded Spill
	st.d	$t7, $sp, 224                   # 8-byte Folded Spill
	st.d	$t8, $sp, 216                   # 8-byte Folded Spill
	st.d	$ra, $sp, 208                   # 8-byte Folded Spill
	st.d	$s1, $sp, 152                   # 8-byte Folded Spill
	b	.LBB0_108
	.p2align	4, , 16
.LBB0_107:                              # %for.inc395
                                        #   in Loop: Header=BB0_108 Depth=1
	addi.w	$t5, $t5, 1
	addi.w	$s0, $s0, -1
	addi.d	$t6, $t6, 1
	addi.w	$s2, $s2, 1
	beq	$t5, $s1, .LBB0_143
.LBB0_108:                              # %for.body287
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_112 Depth 2
                                        #       Child Loop BB0_123 Depth 3
                                        #     Child Loop BB0_134 Depth 2
                                        #     Child Loop BB0_138 Depth 2
                                        #     Child Loop BB0_142 Depth 2
	sub.w	$a0, $a5, $t5
	ld.d	$a2, $sp, 328                   # 8-byte Folded Reload
	slt	$a1, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a3, $a1, $a0
	add.w	$a0, $t5, $a5
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	slt	$a1, $a2, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a2, $a1, $a0
	st.d	$a3, $sp, 368                   # 8-byte Folded Spill
	blt	$a2, $a3, .LBB0_107
# %bb.109:                              # %for.body307.preheader
                                        #   in Loop: Header=BB0_108 Depth=1
	st.d	$t5, $sp, 280                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 160                   # 8-byte Folded Reload
	slt	$a0, $s2, $a5
	masknez	$a1, $a5, $a0
	st.d	$s2, $sp, 256                   # 8-byte Folded Spill
	maskeqz	$a0, $s2, $a0
	or	$a0, $a0, $a1
	st.d	$a2, $sp, 376                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 336                   # 8-byte Folded Reload
	slt	$a1, $a0, $a4
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a4, $a1
	or	$a0, $a0, $a1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	slt	$a1, $a2, $s0
	masknez	$a2, $a2, $a1
	st.d	$s0, $sp, 264                   # 8-byte Folded Spill
	maskeqz	$a1, $s0, $a1
	or	$a1, $a1, $a2
	ld.d	$a3, $sp, 344                   # 8-byte Folded Reload
	slt	$a2, $a3, $a1
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $a3, $a2
	or	$a2, $a1, $a2
	slt	$a1, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	sub.d	$a0, $a0, $a2
	addi.d	$s1, $a0, 1
	move	$a0, $s1
	bstrins.d	$a0, $zero, 1, 0
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	bstrins.d	$s1, $zero, 3, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$s0, $a2, $a0, 2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$s3, $a2, $a0, 2
	st.d	$t6, $sp, 272                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	add.w	$a0, $a0, $t6
	slt	$a1, $a0, $a5
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a5, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $a4
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a4, $a1
	ld.d	$a4, $sp, 376                   # 8-byte Folded Reload
	or	$a0, $a0, $a1
	slt	$a1, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	sub.d	$a0, $a0, $a2
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	st.d	$a2, $sp, 200                   # 8-byte Folded Spill
	move	$a0, $a2
	ld.d	$a5, $sp, 368                   # 8-byte Folded Reload
	b	.LBB0_112
	.p2align	4, , 16
.LBB0_110:                              #   in Loop: Header=BB0_112 Depth=2
	move	$a0, $s7
.LBB0_111:                              # %rsnake.exit426
                                        #   in Loop: Header=BB0_112 Depth=2
	stx.w	$a0, $t7, $s2
	addi.d	$a0, $s4, 1
	bge	$s4, $a4, .LBB0_128
.LBB0_112:                              # %for.body307
                                        #   Parent Loop BB0_108 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_123 Depth 3
	move	$s4, $a0
	addi.w	$a0, $a0, 0
	slli.d	$s2, $s4, 2
	bne	$a5, $a0, .LBB0_114
# %bb.113:                              # %if.then310
                                        #   in Loop: Header=BB0_112 Depth=2
	ldx.w	$s7, $ra, $s2
	b	.LBB0_119
	.p2align	4, , 16
.LBB0_114:                              # %if.else314
                                        #   in Loop: Header=BB0_112 Depth=2
	bne	$a4, $a0, .LBB0_116
# %bb.115:                              # %if.then317
                                        #   in Loop: Header=BB0_112 Depth=2
	ldx.w	$a0, $t8, $s2
	addi.w	$s7, $a0, -1
	b	.LBB0_119
	.p2align	4, , 16
.LBB0_116:                              # %if.else322
                                        #   in Loop: Header=BB0_112 Depth=2
	alsl.d	$a2, $s4, $t3, 2
	ldx.w	$a1, $t3, $s2
	ld.w	$a0, $a2, 4
	ld.w	$a2, $a2, -4
	addi.w	$s7, $a1, -1
	blt	$a0, $s7, .LBB0_118
# %bb.117:                              # %if.else322
                                        #   in Loop: Header=BB0_112 Depth=2
	bge	$a2, $a1, .LBB0_119
.LBB0_118:                              # %if.else345
                                        #   in Loop: Header=BB0_112 Depth=2
	addi.w	$a3, $a2, -1
	slt	$a1, $a1, $a2
	slt	$a2, $a3, $a0
	masknez	$a4, $a0, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a4
	ld.d	$a4, $sp, 376                   # 8-byte Folded Reload
	masknez	$a2, $a2, $a1
	maskeqz	$a0, $a0, $a1
	or	$s7, $a0, $a2
	.p2align	4, , 16
.LBB0_119:                              # %if.end377
                                        #   in Loop: Header=BB0_112 Depth=2
	blt	$t1, $s7, .LBB0_110
# %bb.120:                              # %if.end.i402
                                        #   in Loop: Header=BB0_112 Depth=2
	addi.w	$a0, $zero, -1
	bge	$a0, $t4, .LBB0_126
# %bb.121:                              # %if.end4.i406
                                        #   in Loop: Header=BB0_112 Depth=2
	add.w	$s8, $s7, $s4
	blt	$t2, $s8, .LBB0_127
.LBB0_122:                              # %if.end9.i409
                                        #   in Loop: Header=BB0_112 Depth=2
	move	$a1, $s7
	.p2align	4, , 16
.LBB0_123:                              # %while.cond.i410
                                        #   Parent Loop BB0_108 Depth=1
                                        #     Parent Loop BB0_112 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a0, $s7
	bge	$t0, $s8, .LBB0_111
# %bb.124:                              # %while.cond.i410
                                        #   in Loop: Header=BB0_123 Depth=3
	bge	$a7, $a1, .LBB0_111
# %bb.125:                              # %land.rhs.i418
                                        #   in Loop: Header=BB0_123 Depth=3
	ldx.bu	$a2, $s6, $a1
	ldx.bu	$a3, $fp, $s8
	addi.d	$a1, $a1, -1
	addi.d	$s8, $s8, -1
	addi.d	$s7, $a0, -1
	beq	$a2, $a3, .LBB0_123
	b	.LBB0_111
.LBB0_126:                              # %if.then3.i404
                                        #   in Loop: Header=BB0_112 Depth=2
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.8)
	addi.d	$a1, $a1, %pc_lo12(.L.str.8)
	move	$a2, $a7
	move	$a3, $t0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 376                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 208                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 224                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 400                   # 8-byte Folded Reload
	add.w	$s8, $s7, $s4
	bge	$t2, $s8, .LBB0_122
.LBB0_127:                              # %if.then6.i424
                                        #   in Loop: Header=BB0_112 Depth=2
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a1, $a1, %pc_lo12(.L.str.9)
	move	$a2, $s7
	move	$a3, $s8
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 376                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 208                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 224                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 400                   # 8-byte Folded Reload
	b	.LBB0_122
	.p2align	4, , 16
.LBB0_128:                              # %iter.check597
                                        #   in Loop: Header=BB0_108 Depth=1
	ori	$a0, $zero, 4
	ld.d	$s4, $sp, 248                   # 8-byte Folded Reload
	bltu	$s4, $a0, .LBB0_132
# %bb.129:                              # %iter.check597
                                        #   in Loop: Header=BB0_108 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ori	$a1, $zero, 63
	bgeu	$a1, $a0, .LBB0_132
# %bb.130:                              # %vector.main.loop.iter.check599
                                        #   in Loop: Header=BB0_108 Depth=1
	ld.d	$t6, $sp, 272                   # 8-byte Folded Reload
	ori	$a0, $zero, 16
	ld.d	$s2, $sp, 256                   # 8-byte Folded Reload
	bgeu	$s4, $a0, .LBB0_133
# %bb.131:                              #   in Loop: Header=BB0_108 Depth=1
	move	$a0, $zero
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
	b	.LBB0_137
	.p2align	4, , 16
.LBB0_132:                              #   in Loop: Header=BB0_108 Depth=1
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 256                   # 8-byte Folded Reload
	b	.LBB0_141
.LBB0_133:                              # %vector.ph600
                                        #   in Loop: Header=BB0_108 Depth=1
	move	$a0, $s4
	bstrins.d	$a0, $zero, 3, 0
	.p2align	4, , 16
.LBB0_134:                              # %vector.body603
                                        #   Parent Loop BB0_108 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $s0, -32
	xvld	$xr1, $s0, 0
	xvst	$xr0, $s3, -32
	xvst	$xr1, $s3, 0
	addi.d	$s1, $s1, -16
	addi.d	$s0, $s0, 64
	addi.d	$s3, $s3, 64
	bnez	$s1, .LBB0_134
# %bb.135:                              # %middle.block608
                                        #   in Loop: Header=BB0_108 Depth=1
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
	beq	$s4, $a0, .LBB0_107
# %bb.136:                              # %vec.epilog.iter.check613
                                        #   in Loop: Header=BB0_108 Depth=1
	andi	$a1, $s4, 12
	beqz	$a1, .LBB0_140
.LBB0_137:                              # %vec.epilog.ph612
                                        #   in Loop: Header=BB0_108 Depth=1
	move	$a2, $s4
	bstrins.d	$a2, $zero, 1, 0
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	add.d	$a1, $a2, $a4
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	sub.d	$a3, $a0, $a3
	add.d	$a4, $a0, $a4
	alsl.d	$a0, $a4, $t3, 2
	alsl.d	$a4, $a4, $t7, 2
	.p2align	4, , 16
.LBB0_138:                              # %vec.epilog.vector.body618
                                        #   Parent Loop BB0_108 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a4, 0
	vst	$vr0, $a0, 0
	addi.d	$a3, $a3, 4
	addi.d	$a0, $a0, 16
	addi.d	$a4, $a4, 16
	bnez	$a3, .LBB0_138
# %bb.139:                              # %vec.epilog.middle.block623
                                        #   in Loop: Header=BB0_108 Depth=1
	ld.d	$a4, $sp, 376                   # 8-byte Folded Reload
	beq	$s4, $a2, .LBB0_107
	b	.LBB0_141
.LBB0_140:                              #   in Loop: Header=BB0_108 Depth=1
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	add.d	$a1, $a0, $a1
	.p2align	4, , 16
.LBB0_141:                              # %for.body387.preheader
                                        #   in Loop: Header=BB0_108 Depth=1
	addi.d	$a0, $a1, -1
	alsl.d	$a2, $a1, $t7, 2
	alsl.d	$a1, $a1, $t3, 2
	.p2align	4, , 16
.LBB0_142:                              # %for.body387
                                        #   Parent Loop BB0_108 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a2, 0
	st.w	$a3, $a1, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	blt	$a0, $a4, .LBB0_142
	b	.LBB0_107
.LBB0_143:                              # %for.end397
	ld.d	$a2, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	slt	$a0, $a1, $a2
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ld.d	$a3, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	slt	$a1, $a3, $a2
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a3, $a1
	or	$a3, $a1, $a2
	ori	$fp, $zero, 1
	bge	$a3, $a0, .LBB0_145
# %bb.144:
	move	$s8, $a7
	move	$s7, $t0
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	b	.LBB0_150
.LBB0_145:                              # %for.body413.preheader
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	slt	$a0, $a1, $a2
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	slt	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a1, $a0, $a1
	sub.d	$t1, $zero, $a1
	slli.d	$a2, $a1, 2
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	sub.d	$a1, $a2, $a0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	add.d	$a1, $a0, $a1
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	sub.d	$a2, $a2, $a4
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	add.d	$a2, $s3, $a2
	nor	$a3, $a3, $zero
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_146:                              # %for.body413
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, 0
	ld.w	$a5, $a2, 0
	bge	$a4, $a5, .LBB0_149
# %bb.147:                              # %for.inc439
                                        #   in Loop: Header=BB0_146 Depth=1
	addi.w	$t1, $t1, -1
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	bne	$a3, $t1, .LBB0_146
# %bb.148:
	move	$s8, $a7
	move	$s7, $t0
	b	.LBB0_150
.LBB0_149:                              # %if.then420
	move	$fp, $zero
	sub.w	$a1, $a4, $a7
	sub.w	$a2, $a6, $a5
	slt	$a1, $a1, $a2
	masknez	$a2, $a4, $a1
	maskeqz	$a1, $a5, $a1
	or	$s8, $a1, $a2
	sub.w	$s7, $s8, $t1
.LBB0_150:                              # %for.end441
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	bnez	$fp, .LBB0_155
# %bb.151:                              # %if.then451
	move	$s2, $s5
	ld.d	$s5, $sp, 288                   # 8-byte Folded Reload
	st.d	$s5, $sp, 16
	ld.d	$s4, $sp, 296                   # 8-byte Folded Reload
	st.d	$s4, $sp, 8
	addi.d	$a0, $sp, 424
	addi.d	$a7, $sp, 432
	st.d	$a0, $sp, 0
	ld.d	$s3, $sp, 384                   # 8-byte Folded Reload
	move	$a0, $s3
	ld.d	$fp, $sp, 392                   # 8-byte Folded Reload
	move	$a1, $fp
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 304                   # 8-byte Folded Reload
	move	$a4, $s8
	move	$a5, $s7
	ld.d	$a6, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(align_path)
	jirl	$ra, $ra, 0
	st.d	$s5, $sp, 16
	st.d	$s4, $sp, 8
	addi.d	$a0, $sp, 408
	addi.d	$a7, $sp, 416
	st.d	$a0, $sp, 0
	move	$a0, $s3
	move	$a1, $fp
	move	$a2, $s8
	move	$a3, $s7
	ld.d	$a4, $sp, 400                   # 8-byte Folded Reload
	move	$a5, $s2
	ld.d	$a6, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(align_path)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 432
	ld.d	$a1, $sp, 416
	ld.d	$a0, $sp, 424
	beqz	$a2, .LBB0_153
# %bb.152:                              # %if.then453
	st.d	$a1, $a0, 0
	b	.LBB0_154
.LBB0_153:
	move	$a2, $a1
.LBB0_154:                              # %if.end459
	ld.d	$a3, $sp, 408
	st.d	$a2, $s1, 0
	sltui	$a1, $a1, 1
	masknez	$a2, $a3, $a1
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a2
	st.d	$a0, $s0, 0
	b	.LBB0_8
.LBB0_155:                              # %if.else457
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 48
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a2, $zero
                                        # implicit-def: $r4
                                        # implicit-def: $r5
	b	.LBB0_154
.LBB0_156:                              # %if.then3.i
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.8)
	addi.d	$a1, $a1, %pc_lo12(.L.str.8)
	move	$a2, $a7
	move	$a3, $t0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$t4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 400                   # 8-byte Folded Reload
	bge	$t2, $s0, .LBB0_101
.LBB0_157:                              # %if.then6.i
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a1, $a1, %pc_lo12(.L.str.9)
	move	$a2, $a6
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$t4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 400                   # 8-byte Folded Reload
	b	.LBB0_101
.LBB0_158:                              # %if.else89
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 48
	ori	$a2, $zero, 1
	ld.d	$s8, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 496                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 504                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 512                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 520                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 528
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.Lfunc_end0:
	.size	align_path, .Lfunc_end0-align_path
                                        # -- End function
	.globl	align_get_dist                  # -- Begin function align_get_dist
	.p2align	5
	.type	align_get_dist,@function
align_get_dist:                         # @align_get_dist
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -224
	st.d	$ra, $sp, 216                   # 8-byte Folded Spill
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	st.d	$s2, $sp, 184                   # 8-byte Folded Spill
	st.d	$s3, $sp, 176                   # 8-byte Folded Spill
	st.d	$s4, $sp, 168                   # 8-byte Folded Spill
	st.d	$s5, $sp, 160                   # 8-byte Folded Spill
	st.d	$s6, $sp, 152                   # 8-byte Folded Spill
	st.d	$s7, $sp, 144                   # 8-byte Folded Spill
	st.d	$s8, $sp, 136                   # 8-byte Folded Spill
	move	$s2, $a4
	move	$s3, $a1
	move	$s4, $a0
	sub.w	$a7, $a3, $a2
	sub.w	$a4, $a5, $a2
	add.w	$a1, $a6, $a7
	slt	$a0, $a4, $a1
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	masknez	$a1, $a1, $a0
	st.d	$a4, $sp, 112                   # 8-byte Folded Spill
	maskeqz	$a0, $a4, $a0
	or	$a4, $a0, $a1
	sub.w	$t0, $a5, $s2
	addi.w	$a0, $zero, -1
	blt	$a4, $t0, .LBB1_67
# %bb.1:                                # %entry
	move	$s1, $a5
	sub.w	$a5, $a3, $s2
	sub.w	$a1, $a7, $a6
	slt	$t1, $a1, $a5
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	masknez	$a1, $a1, $t1
	st.d	$a5, $sp, 88                    # 8-byte Folded Spill
	maskeqz	$a5, $a5, $t1
	or	$s0, $a5, $a1
	blt	$t0, $s0, .LBB1_67
# %bb.2:                                # %if.end
	st.d	$t0, $sp, 64                    # 8-byte Folded Spill
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	st.d	$a7, $sp, 120                   # 8-byte Folded Spill
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	st.d	$a6, $sp, 128                   # 8-byte Folded Spill
	sub.w	$fp, $a4, $s0
	addi.w	$a0, $fp, 1
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	slli.d	$s6, $a0, 2
	move	$a0, $s6
	move	$s5, $a2
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	slli.d	$s8, $s0, 2
	move	$a0, $s6
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$t4, $s5
	move	$s5, $s6
	move	$t1, $s0
	blt	$s6, $s0, .LBB1_16
# %bb.3:                                # %iter.check
	ori	$a1, $zero, 3
	lu12i.w	$a6, -524288
	move	$a3, $t1
	bltu	$fp, $a1, .LBB1_14
# %bb.4:                                # %vector.main.loop.iter.check
	bstrpick.d	$a1, $fp, 31, 0
	ori	$a2, $zero, 15
	addi.d	$a1, $a1, 1
	bgeu	$fp, $a2, .LBB1_6
# %bb.5:
	move	$a2, $zero
	b	.LBB1_10
.LBB1_6:                                # %vector.ph
	bstrpick.d	$a2, $a1, 32, 4
	slli.d	$a2, $a2, 4
	addi.d	$a3, $s7, 32
	xvreplgr2vr.w	$xr0, $a6
	move	$a4, $a2
	.p2align	4, , 16
.LBB1_7:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	addi.d	$a4, $a4, -16
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB1_7
# %bb.8:                                # %middle.block
	beq	$a1, $a2, .LBB1_16
# %bb.9:                                # %vec.epilog.iter.check
	andi	$a3, $a1, 12
	beqz	$a3, .LBB1_13
.LBB1_10:                               # %vec.epilog.ph
	bstrpick.d	$a3, $a1, 32, 2
	slli.d	$a4, $a3, 2
	alsl.d	$a3, $a3, $t1, 2
	alsl.d	$a5, $a2, $s7, 2
	sub.d	$a2, $a2, $a4
	vreplgr2vr.w	$vr0, $a6
	.p2align	4, , 16
.LBB1_11:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a5, 0
	addi.d	$a2, $a2, 4
	addi.d	$a5, $a5, 16
	bnez	$a2, .LBB1_11
# %bb.12:                               # %vec.epilog.middle.block
	bne	$a1, $a4, .LBB1_14
	b	.LBB1_16
.LBB1_13:
	add.d	$a3, $a2, $t1
.LBB1_14:                               # %for.body.preheader
	slli.d	$a1, $a3, 2
	sub.d	$a1, $a1, $s8
	add.d	$a1, $s7, $a1
	sub.d	$a2, $s5, $a3
	addi.d	$a2, $a2, 1
	lu32i.d	$a6, 0
	.p2align	4, , 16
.LBB1_15:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a6, $a1, 0
	addi.w	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB1_15
.LBB1_16:                               # %for.end
	sub.d	$s0, $s7, $s8
	ld.d	$t5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 64                    # 8-byte Folded Reload
	bltz	$t4, .LBB1_23
# %bb.17:                               # %if.end.i
	ld.d	$a6, $sp, 72                    # 8-byte Folded Reload
	bge	$t4, $s2, .LBB1_24
# %bb.18:                               # %if.end.i
	bge	$a6, $s1, .LBB1_24
# %bb.19:                               # %land.rhs.preheader.i
	bstrpick.d	$a1, $t4, 31, 0
	add.d	$a2, $s4, $a1
	move	$a3, $a6
	move	$a1, $t4
	.p2align	4, , 16
.LBB1_20:                               # %land.rhs.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a2, 0
	ldx.bu	$a5, $s3, $a3
	bne	$a4, $a5, .LBB1_25
# %bb.21:                               # %while.body.i
                                        #   in Loop: Header=BB1_20 Depth=1
	addi.w	$a1, $a1, 1
	bge	$a1, $s2, .LBB1_25
# %bb.22:                               # %while.body.i
                                        #   in Loop: Header=BB1_20 Depth=1
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 1
	blt	$a3, $s1, .LBB1_20
	b	.LBB1_25
.LBB1_23:
	move	$a1, $t4
	ld.d	$a6, $sp, 72                    # 8-byte Folded Reload
	b	.LBB1_25
.LBB1_24:
	move	$a1, $t4
.LBB1_25:                               # %snake.exit
	slli.d	$a2, $fp, 2
	stx.w	$a1, $s0, $a2
	slli.d	$a1, $t2, 2
	ldx.w	$a1, $s0, $a1
	bge	$a1, $s2, .LBB1_64
# %bb.26:                               # %for.cond41.preheader
	ori	$a7, $zero, 1
	blt	$t5, $a7, .LBB1_63
# %bb.27:                               # %for.body44.lr.ph
	move	$a1, $zero
	sub.d	$a2, $a0, $s8
	alsl.d	$s6, $t2, $s0, 2
	addi.d	$a4, $s0, -4
	addi.d	$a5, $s0, 4
	nor	$a3, $t4, $zero
	add.w	$a6, $a6, $a3
	sub.d	$a3, $s7, $a0
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	addi.w	$t6, $fp, 1
	ori	$a3, $zero, 32
	sub.d	$a3, $a3, $s8
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	add.d	$a0, $a0, $a3
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	add.d	$a0, $s7, $a3
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	st.d	$t6, $sp, 64                    # 8-byte Folded Spill
	move	$a0, $t1
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB1_28:                               # %for.body44
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_31 Depth 2
                                        #       Child Loop BB1_43 Depth 3
                                        #     Child Loop BB1_52 Depth 2
                                        #     Child Loop BB1_56 Depth 2
                                        #     Child Loop BB1_60 Depth 2
	move	$s8, $a7
	sub.w	$a3, $fp, $a7
	slt	$a7, $a3, $a0
	masknez	$a3, $a3, $a7
	maskeqz	$a7, $a0, $a7
	or	$t4, $a7, $a3
	add.w	$a3, $s8, $fp
	slt	$a7, $s5, $a3
	masknez	$a3, $a3, $a7
	maskeqz	$a7, $s5, $a7
	or	$t7, $a7, $a3
	blt	$t7, $t4, .LBB1_61
# %bb.29:                               # %for.body64.preheader
                                        #   in Loop: Header=BB1_28 Depth=1
	ld.d	$t2, $sp, 104                   # 8-byte Folded Reload
	slt	$a3, $t6, $t2
	masknez	$a7, $t2, $a3
	maskeqz	$a3, $t6, $a3
	or	$a3, $a3, $a7
	ld.d	$t1, $sp, 112                   # 8-byte Folded Reload
	slt	$a7, $a3, $t1
	maskeqz	$a3, $a3, $a7
	masknez	$a7, $t1, $a7
	or	$a3, $a3, $a7
	ld.d	$t0, $sp, 80                    # 8-byte Folded Reload
	slt	$a7, $t0, $a6
	masknez	$t0, $t0, $a7
	maskeqz	$a7, $a6, $a7
	or	$a7, $a7, $t0
	ld.d	$t3, $sp, 88                    # 8-byte Folded Reload
	slt	$t0, $t3, $a7
	maskeqz	$a7, $a7, $t0
	masknez	$t0, $t3, $t0
	or	$t8, $a7, $t0
	slt	$a7, $a3, $t8
	masknez	$a3, $a3, $a7
	maskeqz	$a7, $t8, $a7
	or	$a3, $a7, $a3
	sub.d	$a3, $a3, $t8
	addi.d	$t5, $a3, 1
	move	$t3, $t5
	bstrins.d	$t3, $zero, 1, 0
	bstrins.d	$t5, $zero, 3, 0
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	alsl.d	$s6, $t8, $a3, 2
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$a7, $t8, $a3, 2
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	add.w	$a3, $a3, $a1
	slt	$t0, $a3, $t2
	maskeqz	$a3, $a3, $t0
	masknez	$t0, $t2, $t0
	or	$a3, $a3, $t0
	slt	$t0, $a3, $t1
	maskeqz	$a3, $a3, $t0
	masknez	$t0, $t1, $t0
	or	$a3, $a3, $t0
	slt	$t0, $a3, $t8
	masknez	$a3, $a3, $t0
	maskeqz	$t0, $t8, $t0
	or	$a3, $t0, $a3
	sub.d	$a3, $a3, $t8
	addi.d	$ra, $a3, 1
	move	$a3, $t8
	b	.LBB1_31
	.p2align	4, , 16
.LBB1_30:                               # %snake.exit129
                                        #   in Loop: Header=BB1_31 Depth=2
	stx.w	$t0, $a2, $t2
	addi.d	$a3, $t1, 1
	bge	$t1, $t7, .LBB1_46
.LBB1_31:                               # %for.body64
                                        #   Parent Loop BB1_28 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_43 Depth 3
	move	$t1, $a3
	addi.w	$a3, $a3, 0
	slli.d	$t2, $t1, 2
	bne	$t4, $a3, .LBB1_33
# %bb.32:                               # %if.then67
                                        #   in Loop: Header=BB1_31 Depth=2
	ldx.w	$a3, $a5, $t2
	addi.w	$t0, $a3, 1
	b	.LBB1_39
	.p2align	4, , 16
.LBB1_33:                               # %if.else
                                        #   in Loop: Header=BB1_31 Depth=2
	bne	$t7, $a3, .LBB1_35
# %bb.34:                               # %if.then74
                                        #   in Loop: Header=BB1_31 Depth=2
	ldx.w	$t0, $a4, $t2
	b	.LBB1_39
	.p2align	4, , 16
.LBB1_35:                               # %if.else78
                                        #   in Loop: Header=BB1_31 Depth=2
	alsl.d	$t0, $t1, $s0, 2
	ldx.w	$a3, $s0, $t2
	ld.w	$fp, $t0, 4
	bge	$a3, $fp, .LBB1_37
# %bb.36:                               # %if.else78.if.else98_crit_edge
                                        #   in Loop: Header=BB1_31 Depth=2
	ld.w	$s7, $t0, -4
	b	.LBB1_38
.LBB1_37:                               # %land.lhs.true
                                        #   in Loop: Header=BB1_31 Depth=2
	ld.w	$s7, $t0, -4
	addi.w	$t0, $a3, 1
	bge	$t0, $s7, .LBB1_39
.LBB1_38:                               # %if.else98
                                        #   in Loop: Header=BB1_31 Depth=2
	addi.w	$t0, $fp, 1
	slt	$a3, $fp, $a3
	slt	$fp, $s7, $t0
	masknez	$s5, $s7, $fp
	maskeqz	$t0, $t0, $fp
	or	$t0, $t0, $s5
	masknez	$t0, $t0, $a3
	maskeqz	$a3, $s7, $a3
	or	$t0, $a3, $t0
	.p2align	4, , 16
.LBB1_39:                               # %if.end128
                                        #   in Loop: Header=BB1_31 Depth=2
	bltz	$t0, .LBB1_30
# %bb.40:                               # %if.end.i108
                                        #   in Loop: Header=BB1_31 Depth=2
	bge	$t0, $s2, .LBB1_30
# %bb.41:                               # %if.end.i108
                                        #   in Loop: Header=BB1_31 Depth=2
	add.w	$a3, $t0, $t1
	bge	$a3, $s1, .LBB1_30
# %bb.42:                               # %land.rhs.preheader.i113
                                        #   in Loop: Header=BB1_31 Depth=2
	bstrpick.d	$fp, $t0, 31, 0
	add.d	$fp, $s4, $fp
	.p2align	4, , 16
.LBB1_43:                               # %land.rhs.i114
                                        #   Parent Loop BB1_28 Depth=1
                                        #     Parent Loop BB1_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$s5, $fp, 0
	ldx.bu	$s7, $s3, $a3
	bne	$s5, $s7, .LBB1_30
# %bb.44:                               # %while.body.i122
                                        #   in Loop: Header=BB1_43 Depth=3
	addi.w	$t0, $t0, 1
	bge	$t0, $s2, .LBB1_30
# %bb.45:                               # %while.body.i122
                                        #   in Loop: Header=BB1_43 Depth=3
	addi.d	$a3, $a3, 1
	addi.d	$fp, $fp, 1
	blt	$a3, $s1, .LBB1_43
	b	.LBB1_30
	.p2align	4, , 16
.LBB1_46:                               # %iter.check183
                                        #   in Loop: Header=BB1_28 Depth=1
	ori	$a3, $zero, 4
	bltu	$ra, $a3, .LBB1_50
# %bb.47:                               # %iter.check183
                                        #   in Loop: Header=BB1_28 Depth=1
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	ori	$t0, $zero, 63
	bgeu	$t0, $a3, .LBB1_50
# %bb.48:                               # %vector.main.loop.iter.check185
                                        #   in Loop: Header=BB1_28 Depth=1
	ori	$a3, $zero, 16
	bgeu	$ra, $a3, .LBB1_51
# %bb.49:                               #   in Loop: Header=BB1_28 Depth=1
	move	$t0, $zero
	ld.d	$t5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	b	.LBB1_55
	.p2align	4, , 16
.LBB1_50:                               #   in Loop: Header=BB1_28 Depth=1
	move	$a7, $t8
	ld.d	$t5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	b	.LBB1_59
.LBB1_51:                               # %vector.ph186
                                        #   in Loop: Header=BB1_28 Depth=1
	move	$t0, $ra
	bstrins.d	$t0, $zero, 3, 0
	.p2align	4, , 16
.LBB1_52:                               # %vector.body189
                                        #   Parent Loop BB1_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $s6, -32
	xvld	$xr1, $s6, 0
	xvst	$xr0, $a7, -32
	xvst	$xr1, $a7, 0
	addi.d	$t5, $t5, -16
	addi.d	$s6, $s6, 64
	addi.d	$a7, $a7, 64
	bnez	$t5, .LBB1_52
# %bb.53:                               # %middle.block193
                                        #   in Loop: Header=BB1_28 Depth=1
	ld.d	$t5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	beq	$ra, $t0, .LBB1_61
# %bb.54:                               # %vec.epilog.iter.check198
                                        #   in Loop: Header=BB1_28 Depth=1
	andi	$a3, $ra, 12
	beqz	$a3, .LBB1_58
.LBB1_55:                               # %vec.epilog.ph197
                                        #   in Loop: Header=BB1_28 Depth=1
	move	$a3, $ra
	bstrins.d	$a3, $zero, 1, 0
	add.d	$a7, $a3, $t8
	sub.d	$t1, $t0, $t3
	add.d	$t2, $t0, $t8
	alsl.d	$t0, $t2, $s0, 2
	alsl.d	$t2, $t2, $a2, 2
	.p2align	4, , 16
.LBB1_56:                               # %vec.epilog.vector.body203
                                        #   Parent Loop BB1_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t2, 0
	vst	$vr0, $t0, 0
	addi.d	$t1, $t1, 4
	addi.d	$t0, $t0, 16
	addi.d	$t2, $t2, 16
	bnez	$t1, .LBB1_56
# %bb.57:                               # %vec.epilog.middle.block208
                                        #   in Loop: Header=BB1_28 Depth=1
	bne	$ra, $a3, .LBB1_59
	b	.LBB1_61
.LBB1_58:                               #   in Loop: Header=BB1_28 Depth=1
	add.d	$a7, $t0, $t8
	.p2align	4, , 16
.LBB1_59:                               # %for.body138.preheader
                                        #   in Loop: Header=BB1_28 Depth=1
	addi.d	$a3, $a7, -1
	alsl.d	$t0, $a7, $a2, 2
	alsl.d	$a7, $a7, $s0, 2
	.p2align	4, , 16
.LBB1_60:                               # %for.body138
                                        #   Parent Loop BB1_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t1, $t0, 0
	st.w	$t1, $a7, 0
	addi.d	$a3, $a3, 1
	addi.d	$t0, $t0, 4
	addi.d	$a7, $a7, 4
	blt	$a3, $t7, .LBB1_60
.LBB1_61:                               # %for.end145
                                        #   in Loop: Header=BB1_28 Depth=1
	ld.w	$a3, $s6, 0
	bge	$a3, $s2, .LBB1_65
# %bb.62:                               # %for.inc156
                                        #   in Loop: Header=BB1_28 Depth=1
	addi.w	$a7, $s8, 1
	addi.w	$a6, $a6, -1
	addi.d	$a1, $a1, 1
	addi.w	$t6, $t6, 1
	bne	$s8, $t5, .LBB1_28
.LBB1_63:
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	b	.LBB1_67
.LBB1_64:
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	move	$s8, $zero
	b	.LBB1_66
.LBB1_65:
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
.LBB1_66:                               # %cleanup.sink.split
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s8
.LBB1_67:                               # %cleanup
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 216                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 224
	ret
.Lfunc_end1:
	.size	align_get_dist, .Lfunc_end1-align_get_dist
                                        # -- End function
	.globl	Condense_both_Ends              # -- Begin function Condense_both_Ends
	.p2align	5
	.type	Condense_both_Ends,@function
Condense_both_Ends:                     # @Condense_both_Ends
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	ld.d	$s1, $a0, 0
	st.d	$zero, $a2, 0
	beqz	$s1, .LBB2_8
# %bb.1:                                # %while.cond1.preheader.preheader
	move	$fp, $a2
	move	$s0, $a1
	b	.LBB2_4
	.p2align	4, , 16
.LBB2_2:                                #   in Loop: Header=BB2_4 Depth=1
	move	$a1, $fp
.LBB2_3:                                # %if.end
                                        #   in Loop: Header=BB2_4 Depth=1
	st.d	$s1, $a1, 0
	ld.d	$s1, $s1, 0
	beqz	$s1, .LBB2_8
.LBB2_4:                                # %while.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_5 Depth 2
	ld.d	$a0, $s1, 0
	move	$a1, $s0
	beqz	$a0, .LBB2_3
	.p2align	4, , 16
.LBB2_5:                                # %land.rhs
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a1, $s1, 12
	ld.bu	$a2, $a0, 12
	bne	$a1, $a2, .LBB2_2
# %bb.6:                                # %while.body7
                                        #   in Loop: Header=BB2_5 Depth=2
	ld.w	$a1, $s1, 8
	ld.w	$a2, $a0, 8
	ld.d	$a3, $a0, 0
	add.d	$a1, $a2, $a1
	st.w	$a1, $s1, 8
	st.d	$a3, $s1, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	bnez	$a0, .LBB2_5
# %bb.7:                                #   in Loop: Header=BB2_4 Depth=1
	move	$a1, $s0
	b	.LBB2_3
.LBB2_8:                                # %while.end14
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end2:
	.size	Condense_both_Ends, .Lfunc_end2-Condense_both_Ends
                                        # -- End function
	.globl	S2A                             # -- Begin function S2A
	.p2align	5
	.type	S2A,@function
S2A:                                    # @S2A
# %bb.0:                                # %entry
	move	$a6, $a1
	beqz	$a0, .LBB3_22
# %bb.1:                                # %while.body.lr.ph
	beqz	$a2, .LBB3_12
# %bb.2:
	ori	$a2, $zero, 2
	ori	$a3, $zero, 3
	ori	$a4, $zero, 1
	move	$a5, $a1
	b	.LBB3_6
	.p2align	4, , 16
.LBB3_3:                                # %if.then9
                                        #   in Loop: Header=BB3_6 Depth=1
	sub.d	$a7, $zero, $a7
.LBB3_4:                                # %if.end23.sink.split
                                        #   in Loop: Header=BB3_6 Depth=1
	addi.d	$a6, $a5, 4
	st.w	$a7, $a5, 0
.LBB3_5:                                # %if.end23
                                        #   in Loop: Header=BB3_6 Depth=1
	ld.d	$a0, $a0, 0
	move	$a5, $a6
	beqz	$a0, .LBB3_22
.LBB3_6:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_10 Depth 2
	ld.bu	$a6, $a0, 12
	ld.w	$a7, $a0, 8
	beq	$a6, $a2, .LBB3_3
# %bb.7:                                # %while.body
                                        #   in Loop: Header=BB3_6 Depth=1
	bne	$a6, $a3, .LBB3_4
# %bb.8:                                # %for.cond.preheader
                                        #   in Loop: Header=BB3_6 Depth=1
	blt	$a7, $a4, .LBB3_11
# %bb.9:                                # %for.body.preheader
                                        #   in Loop: Header=BB3_6 Depth=1
	move	$a7, $zero
	.p2align	4, , 16
.LBB3_10:                               # %for.body
                                        #   Parent Loop BB3_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$zero, $a5, 0
	ld.w	$t0, $a0, 8
	addi.d	$a6, $a5, 4
	addi.w	$a7, $a7, 1
	move	$a5, $a6
	blt	$a7, $t0, .LBB3_10
	b	.LBB3_5
.LBB3_11:                               #   in Loop: Header=BB3_6 Depth=1
	move	$a6, $a5
	b	.LBB3_5
.LBB3_12:                               # %while.body.us.preheader
	ori	$a2, $zero, 2
	ori	$a3, $zero, 3
	ori	$a4, $zero, 1
	move	$a5, $a1
	b	.LBB3_16
	.p2align	4, , 16
.LBB3_13:                               # %cond.end20.us
                                        #   in Loop: Header=BB3_16 Depth=1
	sub.d	$a7, $zero, $a7
.LBB3_14:                               # %if.end23.us.sink.split
                                        #   in Loop: Header=BB3_16 Depth=1
	addi.d	$a6, $a5, 4
	st.w	$a7, $a5, 0
.LBB3_15:                               # %if.end23.us
                                        #   in Loop: Header=BB3_16 Depth=1
	ld.d	$a0, $a0, 0
	move	$a5, $a6
	beqz	$a0, .LBB3_22
.LBB3_16:                               # %while.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_20 Depth 2
	ld.bu	$a6, $a0, 12
	ld.w	$a7, $a0, 8
	beq	$a6, $a2, .LBB3_14
# %bb.17:                               # %while.body.us
                                        #   in Loop: Header=BB3_16 Depth=1
	bne	$a6, $a3, .LBB3_13
# %bb.18:                               # %for.cond.preheader.us
                                        #   in Loop: Header=BB3_16 Depth=1
	blt	$a7, $a4, .LBB3_21
# %bb.19:                               # %for.body.us.preheader
                                        #   in Loop: Header=BB3_16 Depth=1
	move	$a7, $zero
	.p2align	4, , 16
.LBB3_20:                               # %for.body.us
                                        #   Parent Loop BB3_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$zero, $a5, 0
	ld.w	$t0, $a0, 8
	addi.d	$a6, $a5, 4
	addi.w	$a7, $a7, 1
	move	$a5, $a6
	blt	$a7, $t0, .LBB3_20
	b	.LBB3_15
.LBB3_21:                               #   in Loop: Header=BB3_16 Depth=1
	move	$a6, $a5
	b	.LBB3_15
.LBB3_22:                               # %while.end
	sub.d	$a0, $a6, $a1
	srli.d	$a0, $a0, 2
	st.w	$a0, $a1, -4
	ret
.Lfunc_end3:
	.size	S2A, .Lfunc_end3-S2A
                                        # -- End function
	.globl	IDISPLAY                        # -- Begin function IDISPLAY
	.p2align	5
	.type	IDISPLAY,@function
IDISPLAY:                               # @IDISPLAY
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -256
	st.d	$ra, $sp, 248                   # 8-byte Folded Spill
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	st.d	$s0, $sp, 232                   # 8-byte Folded Spill
	st.d	$s1, $sp, 224                   # 8-byte Folded Spill
	st.d	$s2, $sp, 216                   # 8-byte Folded Spill
	st.d	$s3, $sp, 208                   # 8-byte Folded Spill
	st.d	$s4, $sp, 200                   # 8-byte Folded Spill
	st.d	$s5, $sp, 192                   # 8-byte Folded Spill
	st.d	$s6, $sp, 184                   # 8-byte Folded Spill
	st.d	$s7, $sp, 176                   # 8-byte Folded Spill
	st.d	$s8, $sp, 168                   # 8-byte Folded Spill
	ld.wu	$t4, $a7, 8
	st.d	$a7, $sp, 32                    # 8-byte Folded Spill
	ld.d	$t1, $a7, 0
	addi.w	$t0, $t4, -1
	bstrpick.d	$t2, $t0, 31, 0
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $t1, $t2
	pcalau12i	$t3, %got_pc_hi20(options)
	ld.d	$a7, $t3, %got_pc_lo12(options)
	ld.w	$t2, $t2, 8
	st.d	$a7, $sp, 104                   # 8-byte Folded Spill
	ld.w	$t3, $a7, 68
	move	$s3, $a5
	st.d	$a3, $sp, 120                   # 8-byte Folded Spill
	move	$t5, $a2
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	add.w	$a1, $t3, $t2
	ori	$a2, $zero, 10
	ori	$a0, $zero, 1
	bltu	$a1, $a2, .LBB4_3
# %bb.1:                                # %while.body.i.preheader
	ori	$a0, $zero, 1
	lu12i.w	$a2, -209716
	ori	$a2, $a2, 3277
	lu32i.d	$a2, 0
	ori	$a3, $zero, 99
	.p2align	4, , 16
.LBB4_2:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a7, $a1
	bstrpick.d	$a1, $a1, 31, 0
	mul.d	$a1, $a1, $a2
	srli.d	$a1, $a1, 35
	addi.w	$a0, $a0, 1
	bltu	$a3, $a7, .LBB4_2
.LBB4_3:                                # %get_pos_width.exit
	beqz	$t4, .LBB4_46
# %bb.4:                                # %land.rhs.preheader
	move	$s6, $zero
	ld.d	$a1, $sp, 256
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ori	$a1, $zero, 7
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	b	.LBB4_6
	.p2align	4, , 16
.LBB4_5:                                # %while.body
                                        #   in Loop: Header=BB4_6 Depth=1
	addi.w	$s6, $s6, 1
	addi.d	$t4, $t4, -1
	addi.d	$t1, $t1, 8
	beqz	$t4, .LBB4_46
.LBB4_6:                                # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s5, $t1, 0
	ld.w	$a0, $s5, 0
	bne	$a0, $s3, .LBB4_5
# %bb.7:                                # %lor.rhs
                                        #   in Loop: Header=BB4_6 Depth=1
	ld.w	$a0, $s5, 4
	bne	$a0, $a6, .LBB4_5
# %bb.8:                                # %if.end
	st.d	$a4, $sp, 112                   # 8-byte Folded Spill
	bgeu	$s6, $t0, .LBB4_10
# %bb.9:                                # %cond.true
	ld.w	$a0, $s5, 8
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	or	$a0, $t5, $a0
	bnez	$a0, .LBB4_11
	b	.LBB4_45
.LBB4_10:
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	or	$a0, $t5, $a0
	beqz	$a0, .LBB4_45
.LBB4_11:                               # %while.body13.lr.ph
	st.d	$zero, $sp, 152                 # 8-byte Folded Spill
	move	$a7, $zero
	move	$s2, $zero
	move	$a4, $zero
	move	$t2, $zero
	move	$a0, $zero
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	slt	$a1, $zero, $a1
	ori	$a2, $zero, 60
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 62
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(BLINE)
	addi.d	$fp, $a1, %pc_lo12(BLINE)
	pcalau12i	$a1, %pc_hi20(CLINE)
	addi.d	$s8, $a1, %pc_lo12(CLINE)
	ori	$a1, $zero, 42
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(ALINE)
	addi.d	$t1, $a1, %pc_lo12(ALINE)
	move	$s0, $a6
	move	$s1, $s3
	st.d	$t1, $sp, 88                    # 8-byte Folded Spill
	st.d	$t5, $sp, 96                    # 8-byte Folded Spill
	st.d	$a6, $sp, 80                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB4_12:                               # %while.body13
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_38 Depth 2
	bnez	$t2, .LBB4_14
# %bb.13:                               # %land.lhs.true
                                        #   in Loop: Header=BB4_12 Depth=1
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.w	$t2, $a1, 0
	addi.d	$a1, $a1, 4
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	beqz	$t2, .LBB4_23
.LBB4_14:                               # %if.end34
                                        #   in Loop: Header=BB4_12 Depth=1
	ori	$a1, $zero, 1
	blt	$t2, $a1, .LBB4_16
# %bb.15:                               # %if.then37
                                        #   in Loop: Header=BB4_12 Depth=1
	ori	$a1, $zero, 32
	stx.b	$a1, $t1, $a0
	addi.w	$a7, $a7, 1
	bstrpick.d	$a1, $a7, 31, 0
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ldx.b	$a1, $a2, $a1
	st.b	$a1, $fp, 0
	ori	$a1, $zero, 45
	st.b	$a1, $s8, 0
	addi.w	$t2, $t2, -1
	b	.LBB4_33
	.p2align	4, , 16
.LBB4_16:                               # %if.else44
                                        #   in Loop: Header=BB4_12 Depth=1
	add.w	$a1, $s2, $s3
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	bne	$a1, $a2, .LBB4_20
# %bb.17:                               # %if.then48
                                        #   in Loop: Header=BB4_12 Depth=1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a2, $a1, 8
	addi.w	$s6, $s6, 1
	bgeu	$s6, $a2, .LBB4_24
# %bb.18:                               # %cond.true65
                                        #   in Loop: Header=BB4_12 Depth=1
	ld.d	$a1, $a1, 0
	bstrpick.d	$a3, $s6, 31, 0
	slli.d	$a3, $a3, 3
	ldx.d	$a1, $a1, $a3
	addi.w	$a2, $a2, -1
	bltu	$s6, $a2, .LBB4_25
.LBB4_19:                               #   in Loop: Header=BB4_12 Depth=1
	addi.w	$a2, $zero, -1
	b	.LBB4_26
.LBB4_20:                               # %if.else89
                                        #   in Loop: Header=BB4_12 Depth=1
	ori	$a1, $zero, 8
	bltu	$a1, $a4, .LBB4_42
# %bb.21:                               # %if.else89
                                        #   in Loop: Header=BB4_12 Depth=1
	slli.d	$a1, $a4, 2
	pcalau12i	$a2, %pc_hi20(.LJTI4_0)
	addi.d	$a2, $a2, %pc_lo12(.LJTI4_0)
	ldx.w	$a1, $a2, $a1
	add.d	$a1, $a2, $a1
	jr	$a1
.LBB4_22:                               # %sw.bb
                                        #   in Loop: Header=BB4_12 Depth=1
	addi.w	$s2, $s2, 1
	bstrpick.d	$a1, $s2, 31, 0
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ldx.b	$a1, $a2, $a1
	stx.b	$a1, $t1, $a0
	ori	$a1, $zero, 32
	st.b	$a1, $fp, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.b	$a1, $s8, 0
	b	.LBB4_28
.LBB4_23:                               # %if.then16
                                        #   in Loop: Header=BB4_12 Depth=1
	addi.w	$s2, $s2, 1
	bstrpick.d	$a1, $s2, 31, 0
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ldx.b	$a1, $a2, $a1
	stx.b	$a1, $t1, $a0
	addi.w	$a7, $a7, 1
	bstrpick.d	$a1, $a7, 31, 0
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ldx.bu	$a1, $a2, $a1
	ldx.bu	$a2, $t1, $a0
	move	$t2, $zero
	st.b	$a1, $fp, 0
	xor	$a1, $a2, $a1
	sltui	$a1, $a1, 1
	ori	$a2, $zero, 32
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 124
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	st.b	$a1, $s8, 0
	b	.LBB4_33
.LBB4_24:                               #   in Loop: Header=BB4_12 Depth=1
	move	$a1, $zero
	addi.w	$a2, $a2, -1
	bgeu	$s6, $a2, .LBB4_19
.LBB4_25:                               # %cond.true76
                                        #   in Loop: Header=BB4_12 Depth=1
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
.LBB4_26:                               # %cond.end80
                                        #   in Loop: Header=BB4_12 Depth=1
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a2, $s5, 24
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	sltui	$a3, $a3, 1
	slti	$a2, $a2, 0
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	masknez	$a4, $a4, $a2
	ori	$t3, $zero, 61
	maskeqz	$a2, $t3, $a2
	or	$a2, $a2, $a4
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $t3, $a3
	or	$a2, $a3, $a2
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	st.b	$a2, $s8, 0
	addi.w	$s2, $s2, 1
	bstrpick.d	$a2, $s2, 31, 0
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	ldx.b	$a2, $a3, $a2
	stx.b	$a2, $t1, $a0
	ori	$a2, $zero, 32
	st.b	$a2, $fp, 0
	addi.w	$t2, $t2, 1
	ori	$a4, $zero, 1
	b	.LBB4_34
.LBB4_27:                               # %sw.bb107
                                        #   in Loop: Header=BB4_12 Depth=1
	ori	$a2, $zero, 46
	stx.b	$a2, $t1, $a0
	ori	$a1, $zero, 32
	st.b	$a1, $fp, 0
	st.b	$a2, $s8, 0
	addi.w	$s2, $s2, 1
.LBB4_28:                               # %if.end142
                                        #   in Loop: Header=BB4_12 Depth=1
	addi.w	$t2, $t2, 1
	addi.w	$a4, $a4, 1
	b	.LBB4_33
.LBB4_29:                               # %if.then90
                                        #   in Loop: Header=BB4_12 Depth=1
	ori	$a1, $zero, 45
	st.b	$a1, $s8, 0
	addi.w	$s2, $s2, 1
	bstrpick.d	$a1, $s2, 31, 0
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ldx.b	$a1, $a2, $a1
	move	$a4, $zero
	stx.b	$a1, $t1, $a0
	ori	$a1, $zero, 32
	st.b	$a1, $fp, 0
	b	.LBB4_32
.LBB4_30:                               # %sw.bb114
                                        #   in Loop: Header=BB4_12 Depth=1
	ori	$a2, $zero, 46
	stx.b	$a2, $t1, $a0
	ori	$a1, $zero, 32
	st.b	$a1, $fp, 0
	st.b	$a2, $s8, 0
	sub.d	$a1, $s2, $t2
	addi.w	$s2, $a1, -3
	ori	$a4, $zero, 6
	addi.w	$t2, $zero, -3
	b	.LBB4_33
.LBB4_31:                               # %sw.bb131
                                        #   in Loop: Header=BB4_12 Depth=1
	addi.w	$s2, $s2, 1
	bstrpick.d	$a1, $s2, 31, 0
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ldx.b	$a1, $a2, $a1
	move	$a4, $zero
	stx.b	$a1, $t1, $a0
	ori	$a1, $zero, 32
	st.b	$a1, $fp, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.b	$a1, $s8, 0
.LBB4_32:                               # %if.end142
                                        #   in Loop: Header=BB4_12 Depth=1
	addi.w	$t2, $t2, 1
	.p2align	4, , 16
.LBB4_33:                               # %if.end142
                                        #   in Loop: Header=BB4_12 Depth=1
	move	$a1, $s5
.LBB4_34:                               # %if.end142
                                        #   in Loop: Header=BB4_12 Depth=1
	addi.d	$s8, $s8, 1
	addi.d	$fp, $fp, 1
	addi.d	$s7, $a0, 1
	move	$s5, $a1
	ori	$a1, $zero, 48
	blt	$a1, $a0, .LBB4_37
# %bb.35:                               # %lor.lhs.false145
                                        #   in Loop: Header=BB4_12 Depth=1
	bltu	$s2, $t5, .LBB4_43
.LBB4_36:                               # %lor.lhs.false145
                                        #   in Loop: Header=BB4_12 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	bltu	$a7, $a0, .LBB4_43
.LBB4_37:                               # %if.then151
                                        #   in Loop: Header=BB4_12 Depth=1
	st.d	$a4, $sp, 128                   # 8-byte Folded Spill
	st.d	$a7, $sp, 136                   # 8-byte Folded Spill
	st.d	$t2, $sp, 144                   # 8-byte Folded Spill
	add.d	$s4, $t1, $s7
	st.b	$zero, $s8, 0
	st.b	$zero, $fp, 0
	stx.b	$zero, $t1, $s7
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	ori	$a0, $zero, 50
	mul.w	$a2, $s8, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	move	$fp, $t1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 10
	ori	$a0, $zero, 10
	blt	$s7, $a0, .LBB4_39
	.p2align	4, , 16
.LBB4_38:                               # %for.body
                                        #   Parent Loop BB4_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 10
	bgeu	$s4, $fp, .LBB4_38
.LBB4_39:                               # %for.end
                                        #   in Loop: Header=BB4_12 Depth=1
	addi.d	$a0, $s4, 5
	bltu	$a0, $fp, .LBB4_41
# %bb.40:                               # %if.then160
                                        #   in Loop: Header=BB4_12 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB4_41:                               # %if.end162
                                        #   in Loop: Header=BB4_12 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 68
	addi.d	$s8, $s8, 1
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
	add.w	$a2, $a0, $s1
	pcalau12i	$a0, %pc_hi20(BLINE)
	addi.d	$fp, $a0, %pc_lo12(BLINE)
	st.d	$fp, $sp, 8
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcalau12i	$a1, %pc_hi20(ALINE)
	addi.d	$a3, $a1, %pc_lo12(ALINE)
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a5, $a1, %pc_lo12(.L.str.7)
	pcalau12i	$a1, %pc_hi20(CLINE)
	addi.d	$s8, $a1, %pc_lo12(CLINE)
	st.d	$s0, $sp, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	move	$a4, $a1
	move	$a6, $s8
	move	$a7, $a1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	add.d	$s1, $s2, $s3
	ld.d	$a6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 136                   # 8-byte Folded Reload
	add.w	$s0, $a7, $a6
	ld.d	$t5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	bgeu	$s2, $t5, .LBB4_44
	b	.LBB4_12
.LBB4_42:                               #   in Loop: Header=BB4_12 Depth=1
	move	$s7, $a0
	bgeu	$s2, $t5, .LBB4_36
	.p2align	4, , 16
.LBB4_43:                               #   in Loop: Header=BB4_12 Depth=1
	move	$a0, $s7
	bltu	$s2, $t5, .LBB4_12
.LBB4_44:                               # %if.end167
                                        #   in Loop: Header=BB4_12 Depth=1
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	bltu	$a7, $a1, .LBB4_12
.LBB4_45:                               # %while.end168
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 256
	ret
.LBB4_46:                               # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(fatal)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	IDISPLAY, .Lfunc_end4-IDISPLAY
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI4_0:
	.word	.LBB4_29-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_27-.LJTI4_0
	.word	.LBB4_27-.LJTI4_0
	.word	.LBB4_30-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_31-.LJTI4_0
                                        # -- End function
	.text
	.globl	Free_script                     # -- Begin function Free_script
	.p2align	5
	.type	Free_script,@function
Free_script:                            # @Free_script
# %bb.0:                                # %entry
	beqz	$a0, .LBB5_4
# %bb.1:                                # %while.body.preheader
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.p2align	4, , 16
.LBB5_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	bnez	$fp, .LBB5_2
# %bb.3:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB5_4:                                # %while.end
	ret
.Lfunc_end5:
	.size	Free_script, .Lfunc_end5-Free_script
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"align.c: warning: something wrong when aligning."
	.size	.L.str, 49

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"align.c: warning: something wrong when dividing\n"
	.size	.L.str.1, 49

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"align.c: Alignment fragment not found.\n"
	.size	.L.str.2, 40

	.type	ALINE,@object                   # @ALINE
	.local	ALINE
	.comm	ALINE,51,1
	.type	BLINE,@object                   # @BLINE
	.local	BLINE
	.comm	BLINE,51,1
	.type	CLINE,@object                   # @CLINE
	.local	CLINE
	.comm	CLINE,51,1
	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"\n%*u "
	.size	.L.str.3, 6

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"    .    :"
	.size	.L.str.4, 11

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"    ."
	.size	.L.str.5, 6

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"\n%*u %s\n%*s %s\n%*u %s\n"
	.size	.L.str.6, 23

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	" "
	.size	.L.str.7, 2

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"TROUBLE!!! startx:  %5d,  starty:  %5d\n"
	.size	.L.str.8, 40

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"TROUBLE!!! x:  %5d,  y:  %5d\n"
	.size	.L.str.9, 30

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ALINE
	.addrsig_sym BLINE
	.addrsig_sym CLINE
