	.file	"libclamav_mew.c"
	.text
	.globl	mew_lzma                        # -- Begin function mew_lzma
	.p2align	5
	.type	mew_lzma,@function
mew_lzma:                               # @mew_lzma
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
	move	$a5, $a2
	move	$s2, $a0
	beqz	$a4, .LBB0_235
# %bb.1:                                # %if.then
	ld.w	$a6, $a1, 0
	addi.d	$a1, $a1, 4
	lu12i.w	$a2, 6
	ori	$a0, $a2, 3692
	addi.d	$t0, $a1, 4
	bltu	$a5, $a0, .LBB0_236
.LBB0_2:                                # %do.body.us.preheader
	st.d	$a6, $sp, 16                    # 8-byte Folded Spill
	ld.w	$a1, $a1, 0
	sub.d	$a1, $a1, $a3
	bstrpick.d	$a1, $a1, 31, 0
	add.d	$s4, $s2, $a1
	bstrpick.d	$s3, $a5, 31, 0
	add.d	$a6, $a1, $a0
	add.d	$s6, $s2, $s3
	addi.d	$a7, $a1, 4
	addi.d	$a0, $a1, 388
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	addi.d	$a0, $a1, 412
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	addi.d	$a0, $a1, 436
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	addi.d	$a0, $a1, 460
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	addi.d	$a0, $s4, 2047
	addi.d	$a0, $a0, 617
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	addi.d	$a0, $s4, 1636
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	addi.d	$a0, $s4, 1604
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	addi.d	$a0, $a1, 518
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	sltui	$a0, $a4, 1
	maskeqz	$a0, $t0, $a0
	addi.d	$t1, $a1, 6
	st.d	$t1, $sp, 168                   # 8-byte Folded Spill
	ori	$a2, $a2, 3648
	add.d	$t1, $s4, $a2
	add.d	$a1, $a1, $s2
	addi.d	$t2, $a1, 32
	lu12i.w	$a1, 1
	ori	$t3, $a1, 2960
	ori	$a1, $zero, 1024
	xvreplgr2vr.h	$xr0, $a1
	lu12i.w	$a1, 16384
	ori	$t4, $a1, 1024
	ori	$s7, $zero, 0
	lu32i.d	$s7, 1
	st.d	$a7, $sp, 272                   # 8-byte Folded Spill
.LBB0_3:                                # %do.body7.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
                                        #     Child Loop BB0_11 Depth 2
                                        #       Child Loop BB0_160 Depth 3
                                        #       Child Loop BB0_221 Depth 3
                                        #       Child Loop BB0_210 Depth 3
                                        #       Child Loop BB0_204 Depth 3
                                        #       Child Loop BB0_65 Depth 3
                                        #       Child Loop BB0_56 Depth 3
                                        #       Child Loop BB0_81 Depth 3
	beqz	$a4, .LBB0_5
# %bb.4:                                # %if.end13thread-pre-split.us.us
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.w	$s8, $t0, 0
	move	$a0, $t0
	b	.LBB0_6
.LBB0_5:                                # %if.then9.us.us
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.w	$s8, $a0, 0
	beqz	$s8, .LBB0_239
.LBB0_6:                                # %if.end13.us.us
                                        #   in Loop: Header=BB0_3 Depth=1
	bltu	$s3, $a6, .LBB0_238
# %bb.7:                                # %vector.body1092.preheader
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.w	$a1, $a0, 4
	ld.wu	$a2, $a0, 8
	sub.d	$a1, $a1, $a3
	bstrpick.d	$a7, $a1, 31, 0
	add.d	$fp, $s2, $a7
	add.d	$a1, $a0, $a2
	addi.d	$t0, $a1, 13
	move	$a1, $t3
	move	$a2, $t2
	.p2align	4, , 16
.LBB0_8:                                # %vector.body1092
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a1, $a1, -16
	addi.d	$a2, $a2, 64
	bnez	$a1, .LBB0_8
# %bb.9:                                # %vec.epilog.vector.body
                                        #   in Loop: Header=BB0_3 Depth=1
	xvst	$xr0, $t1, 0
	move	$a1, $t4
	bstrins.d	$a1, $t4, 58, 32
	stptr.d	$a1, $s4, 28256
	stptr.w	$t4, $s4, 28264
	ld.w	$a1, $a0, 14
	revb.2w	$a1, $a1
	addi.w	$a2, $zero, -1
	st.w	$a1, $sp, 324
	move	$a1, $a2
	lu32i.d	$a1, 0
	st.w	$a1, $sp, 320
	addi.d	$a0, $a0, 18
	st.d	$a0, $sp, 312
	st.w	$zero, $sp, 304
	beqz	$s8, .LBB0_234
# %bb.10:                               # %do.end.split.us.us
                                        #   in Loop: Header=BB0_3 Depth=1
	st.d	$a2, $sp, 232                   # 8-byte Folded Spill
	st.d	$t4, $sp, 24                    # 8-byte Folded Spill
	xvst	$xr0, $sp, 32                   # 32-byte Folded Spill
	st.d	$t3, $sp, 72                    # 8-byte Folded Spill
	st.d	$t2, $sp, 80                    # 8-byte Folded Spill
	st.d	$t1, $sp, 88                    # 8-byte Folded Spill
	st.d	$t0, $sp, 96                    # 8-byte Folded Spill
	st.d	$a6, $sp, 104                   # 8-byte Folded Spill
	st.d	$a4, $sp, 112                   # 8-byte Folded Spill
	st.d	$a5, $sp, 248                   # 8-byte Folded Spill
	st.d	$a3, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	st.d	$a7, $sp, 264                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 264                   # 8-byte Folded Reload
	move	$a4, $zero
	move	$a3, $zero
	move	$s0, $zero
	move	$s5, $zero
	sub.d	$a0, $s3, $ra
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	sub.d	$a0, $zero, $ra
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	bstrpick.d	$a0, $s8, 31, 0
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	add.d	$a0, $ra, $a0
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	ori	$a1, $zero, 1
	ori	$t5, $zero, 1
.LBB0_11:                               # %do.body51.us
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_160 Depth 3
                                        #       Child Loop BB0_221 Depth 3
                                        #       Child Loop BB0_210 Depth 3
                                        #       Child Loop BB0_204 Depth 3
                                        #       Child Loop BB0_65 Depth 3
                                        #       Child Loop BB0_56 Depth 3
                                        #       Child Loop BB0_81 Depth 3
	slli.d	$a0, $s0, 5
	bstrins.d	$a0, $s5, 2, 1
	addi.w	$a5, $zero, -26
	lu32i.d	$a5, 0
	and	$t1, $a0, $a5
	ld.d	$s1, $sp, 272                   # 8-byte Folded Reload
	add.d	$a0, $s1, $t1
	bltu	$s3, $a0, .LBB0_243
# %bb.12:                               # %land.lhs.true13.i.us
                                        #   in Loop: Header=BB0_11 Depth=2
	ld.d	$a7, $sp, 312
	bltu	$a7, $s2, .LBB0_243
# %bb.13:                               # %land.lhs.true13.i.us
                                        #   in Loop: Header=BB0_11 Depth=2
	addi.d	$a2, $a7, 1
	bltu	$s6, $a2, .LBB0_243
# %bb.14:                               # %if.end.i.us
                                        #   in Loop: Header=BB0_11 Depth=2
	st.d	$a1, $sp, 256                   # 8-byte Folded Spill
	ld.wu	$t3, $sp, 320
	ldx.wu	$t2, $s4, $t1
	srli.d	$a1, $t3, 11
	ld.w	$a0, $sp, 324
	bstrpick.d	$t4, $t2, 15, 0
	mul.d	$a6, $t4, $a1
	addi.w	$t0, $a6, 0
	bgeu	$a0, $t0, .LBB0_16
# %bb.15:                               # %if.then26.i.us
                                        #   in Loop: Header=BB0_11 Depth=2
	ori	$t6, $zero, 2048
	sub.d	$a1, $t6, $t4
	bstrpick.d	$a1, $a1, 31, 5
	add.w	$t3, $a1, $t2
	move	$a1, $a0
	b	.LBB0_17
	.p2align	4, , 16
.LBB0_16:                               # %if.else.i.us
                                        #   in Loop: Header=BB0_11 Depth=2
	sub.w	$a1, $a0, $a6
	sub.w	$a6, $t3, $a6
	st.w	$a1, $sp, 324
	bstrpick.d	$t3, $t4, 31, 5
	sub.w	$t3, $t2, $t3
	ori	$t6, $zero, 2048
.LBB0_17:                               # %if.end46.i.us
                                        #   in Loop: Header=BB0_11 Depth=2
	srli.d	$t2, $t2, 16
	bstrins.d	$t3, $t2, 63, 16
	st.w	$a6, $sp, 320
	bstrpick.d	$t2, $a6, 31, 24
	stx.w	$t3, $s4, $t1
	bnez	$t2, .LBB0_24
# %bb.18:                               # %if.then49.i.us
                                        #   in Loop: Header=BB0_11 Depth=2
	ld.bu	$a7, $a7, 0
	slli.w	$a1, $a1, 8
	or	$a1, $a1, $a7
	slli.d	$a6, $a6, 8
	st.w	$a1, $sp, 324
	st.d	$a2, $sp, 312
	st.d	$t5, $sp, 288                   # 8-byte Folded Spill
	bltu	$a0, $t0, .LBB0_25
.LBB0_19:                               # %if.then59.us
                                        #   in Loop: Header=BB0_11 Depth=2
	slli.d	$a0, $s0, 1
	bstrpick.d	$a4, $a0, 31, 1
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	alsl.d	$a0, $a4, $a0, 1
	bltu	$s3, $a0, .LBB0_243
# %bb.20:                               # %land.lhs.true13.i284.us
                                        #   in Loop: Header=BB0_11 Depth=2
	bltu	$a2, $s2, .LBB0_243
# %bb.21:                               # %land.lhs.true13.i284.us
                                        #   in Loop: Header=BB0_11 Depth=2
	addi.d	$a7, $a2, 1
	bltu	$s6, $a7, .LBB0_243
# %bb.22:                               # %if.end.i290.us
                                        #   in Loop: Header=BB0_11 Depth=2
	alsl.d	$a3, $a4, $s4, 1
	ld.wu	$a0, $a3, 384
	bstrpick.d	$t0, $a6, 31, 11
	bstrpick.d	$t3, $a0, 15, 0
	mul.d	$t1, $t3, $t0
	addi.w	$t2, $t1, 0
	bgeu	$a1, $t2, .LBB0_35
# %bb.23:                               # %if.then26.i317.us
                                        #   in Loop: Header=BB0_11 Depth=2
	move	$a6, $zero
	sub.d	$t0, $t6, $t3
	bstrpick.d	$t0, $t0, 31, 5
	add.w	$t3, $t0, $a0
	move	$t0, $a1
	b	.LBB0_36
	.p2align	4, , 16
.LBB0_24:                               #   in Loop: Header=BB0_11 Depth=2
	move	$a2, $a7
	st.d	$t5, $sp, 288                   # 8-byte Folded Spill
	bgeu	$a0, $t0, .LBB0_19
.LBB0_25:                               # %if.else400.us
                                        #   in Loop: Header=BB0_11 Depth=2
	bstrpick.d	$a0, $a4, 7, 4
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 9
	addi.d	$a0, $a0, 2047
	addi.d	$a4, $a0, 1645
	add.d	$a0, $s4, $a4
	st.d	$a0, $sp, 296
	ori	$a5, $zero, 4
	bltu	$s0, $a5, .LBB0_28
# %bb.26:                               # %if.then411.us
                                        #   in Loop: Header=BB0_11 Depth=2
	ori	$a5, $zero, 9
	bgeu	$a5, $s0, .LBB0_76
# %bb.27:                               # %if.then414.us
                                        #   in Loop: Header=BB0_11 Depth=2
	addi.w	$s0, $s0, -6
	bnez	$a3, .LBB0_29
	b	.LBB0_77
.LBB0_28:                               #   in Loop: Header=BB0_11 Depth=2
	move	$s0, $zero
	beqz	$a3, .LBB0_77
.LBB0_29:                               # %if.else444.us
                                        #   in Loop: Header=BB0_11 Depth=2
	sub.w	$a3, $s5, $t5
	bstrpick.d	$a5, $a3, 31, 0
	add.d	$a7, $a5, $ra
	bgeu	$a7, $s3, .LBB0_243
# %bb.30:                               # %if.end471.us
                                        #   in Loop: Header=BB0_11 Depth=2
	ldx.bu	$a7, $fp, $a5
	srli.d	$a3, $a3, 8
	move	$a5, $a7
	bstrins.d	$a5, $a3, 31, 8
	st.w	$a5, $sp, 308
	srli.d	$a5, $a7, 7
	slli.d	$a3, $a5, 9
	add.d	$t0, $a0, $a3
	addi.d	$t1, $t0, 514
	ld.d	$t0, $sp, 216                   # 8-byte Folded Reload
	add.d	$t0, $t0, $a4
	add.d	$a3, $t0, $a3
	st.d	$t1, $sp, 296
	bltu	$s3, $a3, .LBB0_243
# %bb.31:                               # %land.lhs.true13.i.i624.us
                                        #   in Loop: Header=BB0_11 Depth=2
	bltu	$a2, $s2, .LBB0_243
# %bb.32:                               # %land.lhs.true13.i.i624.us
                                        #   in Loop: Header=BB0_11 Depth=2
	addi.d	$a3, $a2, 1
	bltu	$s6, $a3, .LBB0_243
# %bb.33:                               # %if.end.i.i630.us
                                        #   in Loop: Header=BB0_11 Depth=2
	ld.wu	$t2, $t1, 0
	bstrpick.d	$t0, $a6, 31, 11
	bstrpick.d	$t3, $t2, 15, 0
	mul.d	$t0, $t3, $t0
	addi.w	$t4, $t0, 0
	bgeu	$a1, $t4, .LBB0_50
# %bb.34:                               # %if.then26.i.i665.us
                                        #   in Loop: Header=BB0_11 Depth=2
	move	$a6, $zero
	sub.d	$t3, $t6, $t3
	bstrpick.d	$t3, $t3, 31, 5
	add.w	$t3, $t3, $t2
	b	.LBB0_51
.LBB0_35:                               # %if.else.i298.us
                                        #   in Loop: Header=BB0_11 Depth=2
	sub.w	$t0, $a1, $t1
	sub.w	$t1, $a6, $t1
	st.w	$t0, $sp, 324
	bstrpick.d	$a6, $t3, 31, 5
	sub.w	$t3, $a0, $a6
	ori	$a6, $zero, 1
.LBB0_36:                               # %if.end46.i303.us
                                        #   in Loop: Header=BB0_11 Depth=2
	srli.d	$a0, $a0, 16
	bstrins.d	$t3, $a0, 63, 16
	st.w	$t1, $sp, 320
	bstrpick.d	$a0, $t1, 31, 24
	st.w	$t3, $a3, 384
	bnez	$a0, .LBB0_43
# %bb.37:                               # %if.then49.i311.us
                                        #   in Loop: Header=BB0_11 Depth=2
	ld.bu	$a0, $a2, 0
	slli.w	$a2, $t0, 8
	or	$t0, $a2, $a0
	slli.d	$t1, $t1, 8
	st.w	$t0, $sp, 324
	st.w	$t1, $sp, 320
	st.d	$a7, $sp, 312
	andi	$a0, $s5, 3
	st.w	$a6, $sp, 308
	bltu	$a1, $t2, .LBB0_44
.LBB0_38:                               # %if.else118.us
                                        #   in Loop: Header=BB0_11 Depth=2
	slli.d	$a4, $a4, 1
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a4
	bltu	$s3, $a1, .LBB0_243
# %bb.39:                               # %land.lhs.true13.i401.us
                                        #   in Loop: Header=BB0_11 Depth=2
	bltu	$a7, $s2, .LBB0_243
# %bb.40:                               # %land.lhs.true13.i401.us
                                        #   in Loop: Header=BB0_11 Depth=2
	addi.d	$a2, $a7, 1
	bltu	$s6, $a2, .LBB0_243
# %bb.41:                               # %if.end.i407.us
                                        #   in Loop: Header=BB0_11 Depth=2
	ld.wu	$t3, $a3, 408
	bstrpick.d	$a1, $t1, 31, 11
	bstrpick.d	$t4, $t3, 15, 0
	mul.d	$a6, $t4, $a1
	addi.w	$t2, $a6, 0
	bgeu	$t0, $t2, .LBB0_91
# %bb.42:                               # %if.then26.i434.us
                                        #   in Loop: Header=BB0_11 Depth=2
	move	$t1, $zero
	sub.d	$a1, $t6, $t4
	bstrpick.d	$a1, $a1, 31, 5
	add.w	$t4, $a1, $t3
	move	$a1, $t0
	b	.LBB0_92
.LBB0_43:                               #   in Loop: Header=BB0_11 Depth=2
	move	$a7, $a2
	andi	$a0, $s5, 3
	st.w	$a6, $sp, 308
	bgeu	$a1, $t2, .LBB0_38
.LBB0_44:                               # %if.then69.us
                                        #   in Loop: Header=BB0_11 Depth=2
	sltui	$a1, $s0, 7
	ori	$a2, $zero, 10
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 7
	maskeqz	$a1, $a3, $a1
	or	$s0, $a1, $a2
	st.w	$s0, $sp, 308
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	st.d	$a1, $sp, 296
	addi.d	$a1, $sp, 312
	addi.d	$a2, $sp, 296
	addi.d	$a3, $sp, 304
	addi.d	$a4, $sp, 308
	move	$a5, $s2
	ld.d	$a6, $sp, 248                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(lzma_4863da)
	jirl	$ra, $ra, 0
	addi.w	$a2, $zero, -1
	move	$a1, $a0
	move	$a0, $a2
	beq	$a1, $a2, .LBB0_244
# %bb.45:                               # %if.end75.us
                                        #   in Loop: Header=BB0_11 Depth=2
	ld.w	$a1, $sp, 308
	sltui	$a2, $a1, 3
	ori	$a3, $zero, 3
	masknez	$a3, $a3, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	ori	$a3, $zero, 6
	st.w	$a3, $sp, 304
	slli.d	$a2, $a2, 7
	st.w	$a2, $sp, 308
	addi.d	$a2, $a2, 864
	add.d	$a3, $s4, $a2
	add.d	$a4, $s1, $a2
	addi.d	$a2, $a4, 2
	st.d	$a3, $sp, 296
	ori	$s1, $zero, 2048
	bltu	$s3, $a2, .LBB0_244
# %bb.46:                               # %land.lhs.true13.i.i.us
                                        #   in Loop: Header=BB0_11 Depth=2
	ld.d	$a5, $sp, 312
	bltu	$a5, $s2, .LBB0_244
# %bb.47:                               # %land.lhs.true13.i.i.us
                                        #   in Loop: Header=BB0_11 Depth=2
	addi.d	$a6, $a5, 1
	bltu	$s6, $a6, .LBB0_244
# %bb.48:                               # %if.end.i.i.us
                                        #   in Loop: Header=BB0_11 Depth=2
	ld.w	$a7, $sp, 320
	ld.wu	$t0, $a3, 2
	ld.w	$a2, $sp, 324
	bstrpick.d	$t1, $a7, 31, 11
	bstrpick.d	$t2, $t0, 15, 0
	mul.d	$t1, $t2, $t1
	addi.w	$t3, $t1, 0
	bgeu	$a2, $t3, .LBB0_105
# %bb.49:                               # %if.then26.i.i.us
                                        #   in Loop: Header=BB0_11 Depth=2
	sub.d	$a7, $s1, $t2
	bstrpick.d	$a7, $a7, 31, 5
	add.w	$t2, $a7, $t0
	ori	$a7, $zero, 4
	b	.LBB0_106
.LBB0_50:                               # %if.else.i.i638.us
                                        #   in Loop: Header=BB0_11 Depth=2
	sub.w	$a1, $a1, $t0
	sub.w	$t0, $a6, $t0
	st.w	$a1, $sp, 324
	bstrpick.d	$a6, $t3, 31, 5
	sub.w	$t3, $t2, $a6
	ori	$a6, $zero, 1
.LBB0_51:                               # %if.end46.i.i643.us
                                        #   in Loop: Header=BB0_11 Depth=2
	srli.d	$t2, $t2, 16
	bstrins.d	$t3, $t2, 63, 16
	st.w	$t0, $sp, 320
	bstrpick.d	$t2, $t0, 31, 24
	st.w	$t3, $t1, 0
	bnez	$t2, .LBB0_63
# %bb.52:                               # %if.then49.i.i659.us
                                        #   in Loop: Header=BB0_11 Depth=2
	ld.bu	$a2, $a2, 0
	slli.w	$a1, $a1, 8
	or	$a1, $a1, $a2
	st.d	$a3, $sp, 296
	slli.d	$t0, $t0, 8
	st.w	$a1, $sp, 324
	st.d	$a3, $sp, 312
	addi.d	$a2, $a6, 2
	beq	$a6, $a5, .LBB0_64
.LBB0_53:                               #   in Loop: Header=BB0_11 Depth=2
	move	$a4, $a2
	ori	$s1, $zero, 128
.LBB0_54:                               # %while.body36.i.us.preheader
                                        #   in Loop: Header=BB0_11 Depth=2
	move	$a2, $a4
	b	.LBB0_56
	.p2align	4, , 16
.LBB0_55:                               # %if.end44.i.us
                                        #   in Loop: Header=BB0_56 Depth=3
	or	$a4, $t0, $a4
	addi.w	$a6, $a2, 0
	move	$t0, $a7
	move	$a2, $a4
	bgeu	$a6, $s1, .LBB0_88
.LBB0_56:                               # %while.body36.i.us
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bltu	$a3, $s2, .LBB0_243
# %bb.57:                               # %while.body36.i.us
                                        #   in Loop: Header=BB0_56 Depth=3
	addi.d	$a6, $a3, 1
	bltu	$s6, $a6, .LBB0_243
# %bb.58:                               # %if.end.i98.i.us
                                        #   in Loop: Header=BB0_56 Depth=3
	slli.d	$a4, $a2, 1
	addi.w	$a5, $a4, 0
	add.d	$a5, $a0, $a5
	ld.wu	$t1, $a5, 0
	bstrpick.d	$a7, $t0, 31, 11
	bstrpick.d	$t2, $t1, 15, 0
	mul.d	$a7, $t2, $a7
	addi.w	$t3, $a7, 0
	bgeu	$a1, $t3, .LBB0_60
# %bb.59:                               # %if.then26.i125.i.us
                                        #   in Loop: Header=BB0_56 Depth=3
	move	$t0, $zero
	sub.d	$t2, $t6, $t2
	bstrpick.d	$t2, $t2, 31, 5
	add.w	$t2, $t2, $t1
	b	.LBB0_61
	.p2align	4, , 16
.LBB0_60:                               # %if.else.i106.i.us
                                        #   in Loop: Header=BB0_56 Depth=3
	sub.w	$a1, $a1, $a7
	sub.w	$a7, $t0, $a7
	st.w	$a1, $sp, 324
	bstrpick.d	$t0, $t2, 31, 5
	sub.w	$t2, $t1, $t0
	ori	$t0, $zero, 1
.LBB0_61:                               # %if.end46.i111.i.us
                                        #   in Loop: Header=BB0_56 Depth=3
	srli.d	$t1, $t1, 16
	bstrins.d	$t2, $t1, 63, 16
	st.w	$a7, $sp, 320
	bstrpick.d	$t1, $a7, 31, 24
	st.w	$t2, $a5, 0
	bnez	$t1, .LBB0_55
# %bb.62:                               # %if.then49.i119.i.us
                                        #   in Loop: Header=BB0_56 Depth=3
	ld.bu	$a3, $a3, 0
	slli.w	$a1, $a1, 8
	or	$a1, $a1, $a3
	slli.d	$a7, $a7, 8
	st.w	$a1, $sp, 324
	st.w	$a7, $sp, 320
	st.d	$a6, $sp, 312
	move	$a5, $a6
	move	$a3, $a6
	b	.LBB0_55
.LBB0_63:                               #   in Loop: Header=BB0_11 Depth=2
	move	$a3, $a2
	addi.d	$a2, $a6, 2
	bne	$a6, $a5, .LBB0_53
.LBB0_64:                               # %if.end15.i.lr.ph.us
                                        #   in Loop: Header=BB0_11 Depth=2
	add.d	$a6, $s1, $a4
	ori	$t7, $zero, 512
	ori	$t8, $zero, 127
	ori	$s1, $zero, 128
	.p2align	4, , 16
.LBB0_65:                               # %if.end15.i.us
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bstrpick.d	$t1, $a7, 6, 6
	slli.d	$a4, $t1, 8
	add.d	$a4, $a4, $a2
	alsl.w	$a4, $a4, $t7, 1
	add.d	$a5, $a6, $a4
	bltu	$s3, $a5, .LBB0_243
# %bb.66:                               # %land.lhs.true13.i48.i.us
                                        #   in Loop: Header=BB0_65 Depth=3
	bltu	$a3, $s2, .LBB0_243
# %bb.67:                               # %land.lhs.true13.i48.i.us
                                        #   in Loop: Header=BB0_65 Depth=3
	addi.d	$a5, $a3, 1
	bltu	$s6, $a5, .LBB0_243
# %bb.68:                               # %if.end.i54.i.us
                                        #   in Loop: Header=BB0_65 Depth=3
	add.d	$a4, $a0, $a4
	ld.wu	$t4, $a4, 0
	bstrpick.d	$t2, $t0, 31, 11
	bstrpick.d	$t5, $t4, 15, 0
	mul.d	$t3, $t5, $t2
	addi.w	$t2, $t3, 0
	bgeu	$a1, $t2, .LBB0_70
# %bb.69:                               # %if.then26.i81.i.us
                                        #   in Loop: Header=BB0_65 Depth=3
	move	$t2, $zero
	sub.d	$t0, $t6, $t5
	bstrpick.d	$t0, $t0, 31, 5
	add.w	$t0, $t0, $t4
	b	.LBB0_71
	.p2align	4, , 16
.LBB0_70:                               # %if.else.i62.i.us
                                        #   in Loop: Header=BB0_65 Depth=3
	sub.w	$a1, $a1, $t3
	sub.w	$t3, $t0, $t3
	st.w	$a1, $sp, 324
	bstrpick.d	$t0, $t5, 31, 5
	sub.w	$t0, $t4, $t0
	ori	$t2, $zero, 1
.LBB0_71:                               # %if.end46.i67.i.us
                                        #   in Loop: Header=BB0_65 Depth=3
	srli.d	$t4, $t4, 16
	bstrins.d	$t0, $t4, 63, 16
	st.w	$t3, $sp, 320
	bstrpick.d	$t4, $t3, 31, 24
	st.w	$t0, $a4, 0
	bnez	$t4, .LBB0_73
# %bb.72:                               # %if.then49.i75.i.us
                                        #   in Loop: Header=BB0_65 Depth=3
	ld.bu	$a3, $a3, 0
	slli.w	$a1, $a1, 8
	or	$a1, $a1, $a3
	slli.d	$t0, $t3, 8
	st.w	$a1, $sp, 324
	st.w	$t0, $sp, 320
	st.d	$a5, $sp, 312
	move	$a3, $a5
	b	.LBB0_74
	.p2align	4, , 16
.LBB0_73:                               #   in Loop: Header=BB0_65 Depth=3
	move	$a5, $a4
	move	$t0, $t3
.LBB0_74:                               # %if.end30.i.us
                                        #   in Loop: Header=BB0_65 Depth=3
	slli.d	$a4, $a2, 1
	or	$a4, $t2, $a4
	addi.w	$t3, $a2, 0
	bne	$t2, $t1, .LBB0_182
# %bb.75:                               # %while.body.i.us
                                        #   in Loop: Header=BB0_65 Depth=3
	slli.d	$a7, $a7, 1
	move	$a2, $a4
	bgeu	$t8, $t3, .LBB0_65
	b	.LBB0_88
.LBB0_76:                               # %if.else416.us
                                        #   in Loop: Header=BB0_11 Depth=2
	addi.w	$s0, $s0, -3
	bnez	$a3, .LBB0_29
.LBB0_77:                               # %if.then423.us
                                        #   in Loop: Header=BB0_11 Depth=2
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	add.d	$a3, $a4, $a3
	ori	$a5, $zero, 1
	st.w	$a5, $sp, 308
	bltu	$s3, $a3, .LBB0_243
# %bb.78:                               # %land.lhs.true13.i577.us.preheader
                                        #   in Loop: Header=BB0_11 Depth=2
	addi.d	$a7, $a0, 2
	add.d	$a3, $a4, $s1
	ori	$a4, $zero, 2
	ori	$t4, $zero, 256
	b	.LBB0_81
	.p2align	4, , 16
.LBB0_79:                               #   in Loop: Header=BB0_81 Depth=3
	move	$a6, $t1
	move	$a5, $a7
	addi.w	$a7, $a4, 0
	or	$a4, $t0, $a4
	bgeu	$a7, $t4, .LBB0_88
.LBB0_80:                               # %do.body424.us
                                        #   in Loop: Header=BB0_81 Depth=3
	slli.d	$a4, $a4, 1
	addi.w	$a5, $a4, 0
	add.d	$t0, $a3, $a5
	add.d	$a7, $a0, $a5
	bltu	$s3, $t0, .LBB0_243
.LBB0_81:                               # %land.lhs.true13.i577.us
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bltu	$a2, $s2, .LBB0_243
# %bb.82:                               # %land.lhs.true13.i577.us
                                        #   in Loop: Header=BB0_81 Depth=3
	addi.d	$a5, $a2, 1
	bltu	$s6, $a5, .LBB0_243
# %bb.83:                               # %if.end.i583.us
                                        #   in Loop: Header=BB0_81 Depth=3
	ld.wu	$t2, $a7, 0
	bstrpick.d	$t0, $a6, 31, 11
	bstrpick.d	$t3, $t2, 15, 0
	mul.d	$t1, $t3, $t0
	addi.w	$t0, $t1, 0
	bgeu	$a1, $t0, .LBB0_85
# %bb.84:                               # %if.then26.i610.us
                                        #   in Loop: Header=BB0_81 Depth=3
	move	$t0, $zero
	sub.d	$a6, $t6, $t3
	bstrpick.d	$a6, $a6, 31, 5
	add.w	$a6, $a6, $t2
	b	.LBB0_86
	.p2align	4, , 16
.LBB0_85:                               # %if.else.i591.us
                                        #   in Loop: Header=BB0_81 Depth=3
	sub.w	$a1, $a1, $t1
	sub.w	$t1, $a6, $t1
	st.w	$a1, $sp, 324
	bstrpick.d	$a6, $t3, 31, 5
	sub.w	$a6, $t2, $a6
	ori	$t0, $zero, 1
.LBB0_86:                               # %if.end46.i596.us
                                        #   in Loop: Header=BB0_81 Depth=3
	srli.d	$t2, $t2, 16
	bstrins.d	$a6, $t2, 63, 16
	st.w	$t1, $sp, 320
	bstrpick.d	$t2, $t1, 31, 24
	st.w	$a6, $a7, 0
	bnez	$t2, .LBB0_79
# %bb.87:                               # %if.then49.i604.us
                                        #   in Loop: Header=BB0_81 Depth=3
	ld.bu	$a2, $a2, 0
	slli.w	$a1, $a1, 8
	or	$a1, $a1, $a2
	slli.d	$a6, $t1, 8
	st.w	$a1, $sp, 324
	st.w	$a6, $sp, 320
	st.d	$a5, $sp, 312
	move	$a2, $a5
	addi.w	$a7, $a4, 0
	or	$a4, $t0, $a4
	bltu	$a7, $t4, .LBB0_80
.LBB0_88:                               # %if.end489.us.sink.split
                                        #   in Loop: Header=BB0_11 Depth=2
	st.d	$a5, $sp, 296
.LBB0_89:                               # %if.end489.us
                                        #   in Loop: Header=BB0_11 Depth=2
	bstrpick.d	$a0, $s5, 31, 0
	add.d	$a1, $a0, $ra
	st.w	$s5, $sp, 304
	bgeu	$a1, $s3, .LBB0_243
# %bb.90:                               # %if.end516.us
                                        #   in Loop: Header=BB0_11 Depth=2
	move	$a3, $zero
	addi.w	$s5, $s5, 1
	stx.b	$a4, $fp, $a0
	ld.d	$s1, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 288                   # 8-byte Folded Reload
	move	$a1, $a0
	st.w	$s5, $sp, 308
	st.d	$s1, $sp, 280                   # 8-byte Folded Spill
	bltu	$s5, $s8, .LBB0_11
	b	.LBB0_233
.LBB0_91:                               # %if.else.i415.us
                                        #   in Loop: Header=BB0_11 Depth=2
	sub.w	$a1, $t0, $a6
	sub.w	$a6, $t1, $a6
	st.w	$a1, $sp, 324
	bstrpick.d	$t1, $t4, 31, 5
	sub.w	$t4, $t3, $t1
	ori	$t1, $zero, 1
.LBB0_92:                               # %if.end46.i420.us
                                        #   in Loop: Header=BB0_11 Depth=2
	srli.d	$t3, $t3, 16
	bstrins.d	$t4, $t3, 63, 16
	st.w	$a6, $sp, 320
	bstrpick.d	$t3, $a6, 31, 24
	st.w	$t4, $a3, 408
	bnez	$t3, .LBB0_99
# %bb.93:                               # %if.then49.i428.us
                                        #   in Loop: Header=BB0_11 Depth=2
	st.d	$a7, $sp, 296
	ld.bu	$a7, $a7, 0
	slli.w	$a1, $a1, 8
	or	$a1, $a1, $a7
	slli.d	$a6, $a6, 8
	st.w	$a1, $sp, 324
	st.d	$a2, $sp, 312
	st.w	$t1, $sp, 308
	bltu	$t0, $t2, .LBB0_100
.LBB0_94:                               # %if.then128.us
                                        #   in Loop: Header=BB0_11 Depth=2
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	add.d	$a5, $a5, $a4
	bltu	$s3, $a5, .LBB0_243
# %bb.95:                               # %land.lhs.true13.i445.us
                                        #   in Loop: Header=BB0_11 Depth=2
	bltu	$a2, $s2, .LBB0_243
# %bb.96:                               # %land.lhs.true13.i445.us
                                        #   in Loop: Header=BB0_11 Depth=2
	addi.d	$a5, $a2, 1
	bltu	$s6, $a5, .LBB0_243
# %bb.97:                               # %if.end.i451.us
                                        #   in Loop: Header=BB0_11 Depth=2
	ld.wu	$t2, $a3, 432
	bstrpick.d	$a7, $a6, 31, 11
	bstrpick.d	$t3, $t2, 15, 0
	mul.d	$t0, $t3, $a7
	addi.w	$t1, $t0, 0
	bgeu	$a1, $t1, .LBB0_163
# %bb.98:                               # %if.then26.i478.us
                                        #   in Loop: Header=BB0_11 Depth=2
	move	$a6, $zero
	sub.d	$a7, $t6, $t3
	bstrpick.d	$a7, $a7, 31, 5
	add.w	$t3, $a7, $t2
	move	$a7, $a1
	b	.LBB0_164
.LBB0_99:                               #   in Loop: Header=BB0_11 Depth=2
	move	$a2, $a7
	st.w	$t1, $sp, 308
	bgeu	$t0, $t2, .LBB0_94
.LBB0_100:                              # %if.else153.us
                                        #   in Loop: Header=BB0_11 Depth=2
	slli.d	$a3, $s0, 4
	or	$a3, $a3, $a0
	addi.d	$a3, $a3, 240
	st.w	$a3, $sp, 308
	slli.d	$a3, $a3, 1
	and	$a3, $a3, $a5
	add.d	$a4, $s4, $a3
	add.d	$a3, $s1, $a3
	st.d	$a4, $sp, 296
	bltu	$s3, $a3, .LBB0_243
# %bb.101:                              # %land.lhs.true13.i533.us
                                        #   in Loop: Header=BB0_11 Depth=2
	bltu	$a2, $s2, .LBB0_243
# %bb.102:                              # %land.lhs.true13.i533.us
                                        #   in Loop: Header=BB0_11 Depth=2
	addi.d	$a3, $a2, 1
	bltu	$s6, $a3, .LBB0_243
# %bb.103:                              # %if.end.i539.us
                                        #   in Loop: Header=BB0_11 Depth=2
	ld.wu	$t0, $a4, 0
	bstrpick.d	$a5, $a6, 31, 11
	bstrpick.d	$t2, $t0, 15, 0
	mul.d	$a7, $t2, $a5
	addi.w	$a5, $a7, 0
	bgeu	$a1, $a5, .LBB0_171
# %bb.104:                              # %if.then26.i566.us
                                        #   in Loop: Header=BB0_11 Depth=2
	move	$a6, $zero
	sub.d	$t1, $t6, $t2
	bstrpick.d	$t1, $t1, 31, 5
	add.w	$t2, $t1, $t0
	move	$t1, $a1
	b	.LBB0_172
.LBB0_105:                              # %if.else.i.i.us
                                        #   in Loop: Header=BB0_11 Depth=2
	sub.w	$a2, $a2, $t1
	sub.w	$t1, $a7, $t1
	st.w	$a2, $sp, 324
	bstrpick.d	$a7, $t2, 31, 5
	sub.w	$t2, $t0, $a7
	ori	$a7, $zero, 6
.LBB0_106:                              # %if.end46.i.i.us
                                        #   in Loop: Header=BB0_11 Depth=2
	ld.d	$ra, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 288                   # 8-byte Folded Reload
	srli.d	$t0, $t0, 16
	bstrins.d	$t2, $t0, 63, 16
	st.w	$t1, $sp, 320
	bstrpick.d	$t0, $t1, 31, 24
	st.w	$t2, $a3, 2
	bnez	$t0, .LBB0_108
# %bb.107:                              # %if.then49.i.i.us
                                        #   in Loop: Header=BB0_11 Depth=2
	ld.bu	$a5, $a5, 0
	slli.w	$a2, $a2, 8
	or	$a2, $a2, $a5
	slli.d	$t1, $t1, 8
	st.w	$a2, $sp, 324
	st.d	$a6, $sp, 312
	b	.LBB0_109
.LBB0_108:                              #   in Loop: Header=BB0_11 Depth=2
	move	$a6, $a5
.LBB0_109:                              # %if.end.i329.us
                                        #   in Loop: Header=BB0_11 Depth=2
	add.d	$a5, $a4, $a7
	bltu	$s3, $a5, .LBB0_244
# %bb.110:                              # %land.lhs.true13.i.i.us.1
                                        #   in Loop: Header=BB0_11 Depth=2
	bltu	$a6, $s2, .LBB0_244
# %bb.111:                              # %land.lhs.true13.i.i.us.1
                                        #   in Loop: Header=BB0_11 Depth=2
	addi.d	$a5, $a6, 1
	bltu	$s6, $a5, .LBB0_244
# %bb.112:                              # %if.end.i.i.us.1
                                        #   in Loop: Header=BB0_11 Depth=2
	ldx.wu	$t2, $a3, $a7
	bstrpick.d	$t0, $t1, 31, 11
	bstrpick.d	$t3, $t2, 15, 0
	mul.d	$t0, $t3, $t0
	addi.w	$t4, $t0, 0
	bgeu	$a2, $t4, .LBB0_114
# %bb.113:                              # %if.then26.i.i.us.1
                                        #   in Loop: Header=BB0_11 Depth=2
	move	$t1, $zero
	sub.d	$t3, $s1, $t3
	bstrpick.d	$t3, $t3, 31, 5
	add.w	$t3, $t3, $t2
	b	.LBB0_115
.LBB0_114:                              # %if.else.i.i.us.1
                                        #   in Loop: Header=BB0_11 Depth=2
	sub.w	$a2, $a2, $t0
	sub.w	$t0, $t1, $t0
	st.w	$a2, $sp, 324
	bstrpick.d	$t1, $t3, 31, 5
	sub.w	$t3, $t2, $t1
	ori	$t1, $zero, 1
.LBB0_115:                              # %if.end46.i.i.us.1
                                        #   in Loop: Header=BB0_11 Depth=2
	srli.d	$t2, $t2, 16
	bstrins.d	$t3, $t2, 63, 16
	st.w	$t0, $sp, 320
	bstrpick.d	$t2, $t0, 31, 24
	stx.w	$t3, $a3, $a7
	bnez	$t2, .LBB0_117
# %bb.116:                              # %if.then49.i.i.us.1
                                        #   in Loop: Header=BB0_11 Depth=2
	ld.bu	$a6, $a6, 0
	slli.w	$a2, $a2, 8
	or	$a2, $a2, $a6
	slli.d	$t0, $t0, 8
	st.w	$a2, $sp, 324
	st.d	$a5, $sp, 312
	b	.LBB0_118
.LBB0_117:                              #   in Loop: Header=BB0_11 Depth=2
	move	$a5, $a6
.LBB0_118:                              # %if.end.i329.us.1
                                        #   in Loop: Header=BB0_11 Depth=2
	or	$a7, $t1, $a7
	alsl.d	$a6, $a7, $a4, 1
	bltu	$s3, $a6, .LBB0_244
# %bb.119:                              # %land.lhs.true13.i.i.us.2
                                        #   in Loop: Header=BB0_11 Depth=2
	bltu	$a5, $s2, .LBB0_244
# %bb.120:                              # %land.lhs.true13.i.i.us.2
                                        #   in Loop: Header=BB0_11 Depth=2
	addi.d	$a6, $a5, 1
	bltu	$s6, $a6, .LBB0_244
# %bb.121:                              # %if.end.i.i.us.2
                                        #   in Loop: Header=BB0_11 Depth=2
	slli.d	$t1, $a7, 1
	ldx.wu	$t2, $a3, $t1
	bstrpick.d	$a7, $t0, 31, 11
	bstrpick.d	$t3, $t2, 15, 0
	mul.d	$a7, $t3, $a7
	addi.w	$t4, $a7, 0
	bgeu	$a2, $t4, .LBB0_123
# %bb.122:                              # %if.then26.i.i.us.2
                                        #   in Loop: Header=BB0_11 Depth=2
	move	$t0, $zero
	sub.d	$t3, $s1, $t3
	bstrpick.d	$t3, $t3, 31, 5
	add.w	$t3, $t3, $t2
	b	.LBB0_124
.LBB0_123:                              # %if.else.i.i.us.2
                                        #   in Loop: Header=BB0_11 Depth=2
	sub.w	$a2, $a2, $a7
	sub.w	$a7, $t0, $a7
	st.w	$a2, $sp, 324
	bstrpick.d	$t0, $t3, 31, 5
	sub.w	$t3, $t2, $t0
	ori	$t0, $zero, 1
.LBB0_124:                              # %if.end46.i.i.us.2
                                        #   in Loop: Header=BB0_11 Depth=2
	srli.d	$t2, $t2, 16
	bstrins.d	$t3, $t2, 63, 16
	st.w	$a7, $sp, 320
	bstrpick.d	$t2, $a7, 31, 24
	stx.w	$t3, $a3, $t1
	bnez	$t2, .LBB0_126
# %bb.125:                              # %if.then49.i.i.us.2
                                        #   in Loop: Header=BB0_11 Depth=2
	ld.bu	$a5, $a5, 0
	slli.w	$a2, $a2, 8
	or	$a2, $a2, $a5
	slli.d	$a7, $a7, 8
	st.w	$a2, $sp, 324
	st.d	$a6, $sp, 312
	b	.LBB0_127
.LBB0_126:                              #   in Loop: Header=BB0_11 Depth=2
	move	$a6, $a5
.LBB0_127:                              # %if.end.i329.us.2
                                        #   in Loop: Header=BB0_11 Depth=2
	or	$t0, $t0, $t1
	alsl.d	$a5, $t0, $a4, 1
	bltu	$s3, $a5, .LBB0_244
# %bb.128:                              # %land.lhs.true13.i.i.us.3
                                        #   in Loop: Header=BB0_11 Depth=2
	bltu	$a6, $s2, .LBB0_244
# %bb.129:                              # %land.lhs.true13.i.i.us.3
                                        #   in Loop: Header=BB0_11 Depth=2
	addi.d	$a5, $a6, 1
	bltu	$s6, $a5, .LBB0_244
# %bb.130:                              # %if.end.i.i.us.3
                                        #   in Loop: Header=BB0_11 Depth=2
	slli.d	$t1, $t0, 1
	ldx.wu	$t2, $a3, $t1
	bstrpick.d	$t0, $a7, 31, 11
	bstrpick.d	$t3, $t2, 15, 0
	mul.d	$t0, $t3, $t0
	addi.w	$t4, $t0, 0
	bgeu	$a2, $t4, .LBB0_132
# %bb.131:                              # %if.then26.i.i.us.3
                                        #   in Loop: Header=BB0_11 Depth=2
	move	$a7, $zero
	sub.d	$t3, $s1, $t3
	bstrpick.d	$t3, $t3, 31, 5
	add.w	$t3, $t3, $t2
	b	.LBB0_133
.LBB0_132:                              # %if.else.i.i.us.3
                                        #   in Loop: Header=BB0_11 Depth=2
	sub.w	$a2, $a2, $t0
	sub.w	$t0, $a7, $t0
	st.w	$a2, $sp, 324
	bstrpick.d	$a7, $t3, 31, 5
	sub.w	$t3, $t2, $a7
	ori	$a7, $zero, 1
.LBB0_133:                              # %if.end46.i.i.us.3
                                        #   in Loop: Header=BB0_11 Depth=2
	srli.d	$t2, $t2, 16
	bstrins.d	$t3, $t2, 63, 16
	st.w	$t0, $sp, 320
	bstrpick.d	$t2, $t0, 31, 24
	stx.w	$t3, $a3, $t1
	bnez	$t2, .LBB0_135
# %bb.134:                              # %if.then49.i.i.us.3
                                        #   in Loop: Header=BB0_11 Depth=2
	ld.bu	$a6, $a6, 0
	slli.w	$a2, $a2, 8
	or	$a2, $a2, $a6
	slli.d	$t0, $t0, 8
	st.w	$a2, $sp, 324
	st.d	$a5, $sp, 312
	b	.LBB0_136
.LBB0_135:                              #   in Loop: Header=BB0_11 Depth=2
	move	$a5, $a6
.LBB0_136:                              # %if.end.i329.us.3
                                        #   in Loop: Header=BB0_11 Depth=2
	or	$a7, $a7, $t1
	alsl.d	$a6, $a7, $a4, 1
	bltu	$s3, $a6, .LBB0_244
# %bb.137:                              # %land.lhs.true13.i.i.us.4
                                        #   in Loop: Header=BB0_11 Depth=2
	bltu	$a5, $s2, .LBB0_244
# %bb.138:                              # %land.lhs.true13.i.i.us.4
                                        #   in Loop: Header=BB0_11 Depth=2
	addi.d	$a6, $a5, 1
	bltu	$s6, $a6, .LBB0_244
# %bb.139:                              # %if.end.i.i.us.4
                                        #   in Loop: Header=BB0_11 Depth=2
	slli.d	$t1, $a7, 1
	ldx.wu	$t2, $a3, $t1
	bstrpick.d	$a7, $t0, 31, 11
	bstrpick.d	$t3, $t2, 15, 0
	mul.d	$a7, $t3, $a7
	addi.w	$t4, $a7, 0
	bgeu	$a2, $t4, .LBB0_141
# %bb.140:                              # %if.then26.i.i.us.4
                                        #   in Loop: Header=BB0_11 Depth=2
	move	$t0, $zero
	sub.d	$t3, $s1, $t3
	bstrpick.d	$t3, $t3, 31, 5
	add.w	$t3, $t3, $t2
	b	.LBB0_142
.LBB0_141:                              # %if.else.i.i.us.4
                                        #   in Loop: Header=BB0_11 Depth=2
	sub.w	$a2, $a2, $a7
	sub.w	$a7, $t0, $a7
	st.w	$a2, $sp, 324
	bstrpick.d	$t0, $t3, 31, 5
	sub.w	$t3, $t2, $t0
	ori	$t0, $zero, 1
.LBB0_142:                              # %if.end46.i.i.us.4
                                        #   in Loop: Header=BB0_11 Depth=2
	srli.d	$t2, $t2, 16
	bstrins.d	$t3, $t2, 63, 16
	st.w	$a7, $sp, 320
	bstrpick.d	$t2, $a7, 31, 24
	stx.w	$t3, $a3, $t1
	bnez	$t2, .LBB0_144
# %bb.143:                              # %if.then49.i.i.us.4
                                        #   in Loop: Header=BB0_11 Depth=2
	ld.bu	$a5, $a5, 0
	slli.w	$a2, $a2, 8
	or	$a2, $a2, $a5
	slli.d	$a7, $a7, 8
	st.w	$a2, $sp, 324
	st.d	$a6, $sp, 312
	b	.LBB0_145
.LBB0_144:                              #   in Loop: Header=BB0_11 Depth=2
	move	$a6, $a5
.LBB0_145:                              # %if.end.i329.us.4
                                        #   in Loop: Header=BB0_11 Depth=2
	or	$a5, $t0, $t1
	alsl.d	$a4, $a5, $a4, 1
	bltu	$s3, $a4, .LBB0_244
# %bb.146:                              # %land.lhs.true13.i.i.us.5
                                        #   in Loop: Header=BB0_11 Depth=2
	bltu	$a6, $s2, .LBB0_244
# %bb.147:                              # %land.lhs.true13.i.i.us.5
                                        #   in Loop: Header=BB0_11 Depth=2
	addi.d	$a4, $a6, 1
	bltu	$s6, $a4, .LBB0_244
# %bb.148:                              # %if.end.i.i.us.5
                                        #   in Loop: Header=BB0_11 Depth=2
	alsl.d	$t0, $a5, $a3, 1
	ld.wu	$t1, $t0, 0
	bstrpick.d	$a3, $a7, 31, 11
	bstrpick.d	$t2, $t1, 15, 0
	mul.d	$a3, $t2, $a3
	addi.w	$t3, $a3, 0
	bgeu	$a2, $t3, .LBB0_150
# %bb.149:                              # %if.then26.i.i.us.5
                                        #   in Loop: Header=BB0_11 Depth=2
	move	$a7, $zero
	sub.d	$t2, $s1, $t2
	bstrpick.d	$t2, $t2, 31, 5
	add.w	$t2, $t2, $t1
	b	.LBB0_151
.LBB0_150:                              # %if.else.i.i.us.5
                                        #   in Loop: Header=BB0_11 Depth=2
	sub.w	$a2, $a2, $a3
	sub.w	$a3, $a7, $a3
	st.w	$a2, $sp, 324
	bstrpick.d	$a7, $t2, 31, 5
	sub.w	$t2, $t1, $a7
	ori	$a7, $zero, 1
.LBB0_151:                              # %if.end46.i.i.us.5
                                        #   in Loop: Header=BB0_11 Depth=2
	srli.d	$t1, $t1, 16
	bstrins.d	$t2, $t1, 63, 16
	st.w	$a3, $sp, 320
	bstrpick.d	$t1, $a3, 31, 24
	st.w	$t2, $t0, 0
	bnez	$t1, .LBB0_153
# %bb.152:                              # %if.then49.i.i.us.5
                                        #   in Loop: Header=BB0_11 Depth=2
	ld.bu	$a6, $a6, 0
	slli.w	$a2, $a2, 8
	or	$a2, $a2, $a6
	slli.d	$a3, $a3, 8
	st.w	$a2, $sp, 324
	st.w	$a3, $sp, 320
	st.d	$a4, $sp, 312
	move	$t0, $a4
	b	.LBB0_154
.LBB0_153:                              #   in Loop: Header=BB0_11 Depth=2
	move	$a4, $a6
.LBB0_154:                              # %if.end.i329.us.5
                                        #   in Loop: Header=BB0_11 Depth=2
	slli.d	$a5, $a5, 1
	or	$a5, $a7, $a5
	st.d	$t0, $sp, 296
	ori	$a6, $zero, 64
	st.w	$a6, $sp, 304
	addi.d	$a6, $a5, -64
	st.w	$a6, $sp, 308
	ori	$a5, $zero, 4
	bgeu	$a6, $a5, .LBB0_156
.LBB0_155:                              # %if.end116.us
                                        #   in Loop: Header=BB0_11 Depth=2
	addi.w	$a0, $a6, 1
	move	$s1, $t5
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
	move	$t5, $a0
	b	.LBB0_190
.LBB0_156:                              # %if.else89.us
                                        #   in Loop: Header=BB0_11 Depth=2
	bstrpick.d	$t0, $a6, 31, 1
	addi.d	$t1, $t0, -1
	addi.d	$a5, $a7, 2
	sll.w	$a5, $a5, $t1
	ori	$a7, $zero, 13
	bgeu	$a7, $a6, .LBB0_181
# %bb.157:                              # %do.body.i336.preheader.us
                                        #   in Loop: Header=BB0_11 Depth=2
	move	$a6, $zero
	addi.d	$a7, $t0, -5
	st.w	$a7, $sp, 304
	ori	$a7, $zero, 5
	sub.w	$a7, $a7, $t0
	b	.LBB0_160
	.p2align	4, , 16
.LBB0_158:                              # %if.end20.i.us
                                        #   in Loop: Header=BB0_160 Depth=3
	ld.bu	$a4, $a4, 0
	slli.w	$a2, $a2, 8
	slli.d	$a3, $a3, 8
	or	$a2, $a2, $a4
	st.d	$t1, $sp, 312
	move	$a4, $t1
.LBB0_159:                              # %if.end27.i.us
                                        #   in Loop: Header=BB0_160 Depth=3
	slli.d	$a6, $a6, 1
	bstrpick.d	$a7, $a7, 31, 0
	addi.d	$a7, $a7, 1
	and	$t1, $a7, $s7
	or	$a6, $a6, $t0
	bnez	$t1, .LBB0_215
.LBB0_160:                              # %do.body.i336.us
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bstrpick.d	$t1, $a3, 31, 25
	bstrpick.d	$a3, $a3, 31, 1
	sltu	$t0, $a2, $a3
	xori	$t0, $t0, 1
	maskeqz	$t2, $a3, $t0
	sub.w	$a2, $a2, $t2
	bnez	$t1, .LBB0_159
# %bb.161:                              # %land.lhs.true9.i.us
                                        #   in Loop: Header=BB0_160 Depth=3
	bltu	$a4, $s2, .LBB0_244
# %bb.162:                              # %land.lhs.true11.i.us
                                        #   in Loop: Header=BB0_160 Depth=3
	addi.d	$t1, $a4, 1
	bgeu	$s6, $t1, .LBB0_158
	b	.LBB0_244
.LBB0_163:                              # %if.else.i459.us
                                        #   in Loop: Header=BB0_11 Depth=2
	sub.w	$a7, $a1, $t0
	sub.w	$t0, $a6, $t0
	st.w	$a7, $sp, 324
	bstrpick.d	$a6, $t3, 31, 5
	sub.w	$t3, $t2, $a6
	ori	$a6, $zero, 1
.LBB0_164:                              # %if.end46.i464.us
                                        #   in Loop: Header=BB0_11 Depth=2
	srli.d	$t2, $t2, 16
	bstrins.d	$t3, $t2, 63, 16
	st.w	$t0, $sp, 320
	bstrpick.d	$t2, $t0, 31, 24
	st.w	$t3, $a3, 432
	bnez	$t2, .LBB0_178
# %bb.165:                              # %if.then49.i472.us
                                        #   in Loop: Header=BB0_11 Depth=2
	st.d	$a2, $sp, 296
	ld.bu	$a2, $a2, 0
	slli.w	$a7, $a7, 8
	or	$a7, $a7, $a2
	slli.d	$t0, $t0, 8
	st.w	$a7, $sp, 324
	st.w	$t0, $sp, 320
	st.d	$a5, $sp, 312
	st.w	$a6, $sp, 308
	bltu	$a1, $t1, .LBB0_179
.LBB0_166:                              # %if.then138.us
                                        #   in Loop: Header=BB0_11 Depth=2
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a4
	bltu	$s3, $a1, .LBB0_243
# %bb.167:                              # %land.lhs.true13.i489.us
                                        #   in Loop: Header=BB0_11 Depth=2
	bltu	$a5, $s2, .LBB0_243
# %bb.168:                              # %land.lhs.true13.i489.us
                                        #   in Loop: Header=BB0_11 Depth=2
	addi.d	$a1, $a5, 1
	bltu	$s6, $a1, .LBB0_243
# %bb.169:                              # %if.end.i495.us
                                        #   in Loop: Header=BB0_11 Depth=2
	ld.wu	$a6, $a3, 456
	bstrpick.d	$a2, $t0, 31, 11
	bstrpick.d	$t2, $a6, 15, 0
	mul.d	$a4, $t2, $a2
	addi.w	$a2, $a4, 0
	bgeu	$a7, $a2, .LBB0_183
# %bb.170:                              # %if.then26.i522.us
                                        #   in Loop: Header=BB0_11 Depth=2
	sub.d	$t0, $t6, $t2
	bstrpick.d	$t0, $t0, 31, 5
	add.w	$t0, $t0, $a6
	move	$t1, $a7
	b	.LBB0_184
.LBB0_171:                              # %if.else.i547.us
                                        #   in Loop: Header=BB0_11 Depth=2
	sub.d	$t1, $a1, $a7
	sub.w	$a7, $a6, $a7
	st.w	$t1, $sp, 324
	bstrpick.d	$a6, $t2, 31, 5
	sub.w	$t2, $t0, $a6
	ori	$a6, $zero, 1
.LBB0_172:                              # %if.end46.i552.us
                                        #   in Loop: Header=BB0_11 Depth=2
	srli.d	$t0, $t0, 16
	bstrins.d	$t2, $t0, 63, 16
	st.w	$a7, $sp, 320
	bstrpick.d	$t0, $a7, 31, 24
	st.w	$t2, $a4, 0
	bnez	$t0, .LBB0_174
# %bb.173:                              # %if.then49.i560.us
                                        #   in Loop: Header=BB0_11 Depth=2
	st.d	$a2, $sp, 296
	ld.bu	$a2, $a2, 0
	slli.d	$a4, $t1, 8
	or	$a2, $a4, $a2
	st.d	$a3, $sp, 296
	slli.d	$a4, $a7, 8
	st.w	$a2, $sp, 324
	st.w	$a4, $sp, 320
	st.d	$a3, $sp, 312
.LBB0_174:                              # %lzma_486248.exit570.us
                                        #   in Loop: Header=BB0_11 Depth=2
	st.w	$a6, $sp, 308
	bgeu	$a1, $a5, .LBB0_180
# %bb.175:                              # %if.then165.us
                                        #   in Loop: Header=BB0_11 Depth=2
	sub.d	$a0, $s5, $t5
	bstrpick.d	$a0, $a0, 31, 0
	add.d	$a1, $a0, $ra
	bgeu	$a1, $s3, .LBB0_243
# %bb.176:                              # %if.end190.us
                                        #   in Loop: Header=BB0_11 Depth=2
	ldx.bu	$a4, $fp, $a0
	bstrpick.d	$a0, $s5, 31, 0
	add.d	$a1, $a0, $ra
	st.w	$s5, $sp, 304
	bgeu	$a1, $s3, .LBB0_243
# %bb.177:                              # %cleanup226.us
                                        #   in Loop: Header=BB0_11 Depth=2
	ori	$a1, $zero, 6
	sltu	$a1, $a1, $s0
	ori	$a2, $zero, 9
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 11
	maskeqz	$a1, $a3, $a1
	or	$s0, $a1, $a2
	addi.w	$s5, $s5, 1
	stx.b	$a4, $fp, $a0
	ori	$a3, $zero, 1
	ld.d	$s1, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	move	$a1, $a0
	st.w	$s5, $sp, 308
	st.d	$s1, $sp, 280                   # 8-byte Folded Spill
	bltu	$s5, $s8, .LBB0_11
	b	.LBB0_233
.LBB0_178:                              #   in Loop: Header=BB0_11 Depth=2
	move	$a5, $a2
	st.w	$a6, $sp, 308
	bgeu	$a1, $t1, .LBB0_166
.LBB0_179:                              #   in Loop: Header=BB0_11 Depth=2
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	st.d	$a2, $sp, 280                   # 8-byte Folded Spill
	b	.LBB0_187
.LBB0_180:                              #   in Loop: Header=BB0_11 Depth=2
	ld.d	$s1, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	st.d	$a1, $sp, 280                   # 8-byte Folded Spill
	b	.LBB0_188
.LBB0_181:                              # %if.end110.us
                                        #   in Loop: Header=BB0_11 Depth=2
	sub.d	$a6, $a5, $a6
	slli.d	$a6, $a6, 1
	bstrpick.d	$a6, $a6, 31, 1
	alsl.d	$a6, $a6, $s4, 1
	addi.d	$a6, $a6, 1374
	b	.LBB0_216
.LBB0_182:                              # %while.cond33.preheader.i.us
                                        #   in Loop: Header=BB0_11 Depth=2
	st.d	$a5, $sp, 296
	bgeu	$t8, $t3, .LBB0_54
	b	.LBB0_89
.LBB0_183:                              # %if.else.i503.us
                                        #   in Loop: Header=BB0_11 Depth=2
	sub.d	$t1, $a7, $a4
	sub.w	$a4, $t0, $a4
	st.w	$t1, $sp, 324
	bstrpick.d	$t0, $t2, 31, 5
	sub.w	$t0, $a6, $t0
.LBB0_184:                              # %if.end46.i508.us
                                        #   in Loop: Header=BB0_11 Depth=2
	srli.d	$a6, $a6, 16
	bstrins.d	$t0, $a6, 63, 16
	st.w	$a4, $sp, 320
	bstrpick.d	$a6, $a4, 31, 24
	st.w	$t0, $a3, 456
	bnez	$a6, .LBB0_186
# %bb.185:                              # %if.then49.i516.us
                                        #   in Loop: Header=BB0_11 Depth=2
	st.d	$a5, $sp, 296
	ld.bu	$a3, $a5, 0
	slli.d	$a5, $t1, 8
	or	$a3, $a5, $a3
	st.d	$a1, $sp, 296
	slli.d	$a4, $a4, 8
	st.w	$a3, $sp, 324
	st.w	$a4, $sp, 320
	st.d	$a1, $sp, 312
.LBB0_186:                              # %lzma_486248.exit526.us
                                        #   in Loop: Header=BB0_11 Depth=2
	sltu	$a2, $a7, $a2
	ld.d	$a5, $sp, 160                   # 8-byte Folded Reload
	masknez	$a1, $a5, $a2
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	maskeqz	$a3, $a4, $a2
	or	$a1, $a3, $a1
	masknez	$a3, $a4, $a2
	maskeqz	$a2, $a5, $a2
	or	$a2, $a2, $a3
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
.LBB0_187:                              # %if.end152.us
                                        #   in Loop: Header=BB0_11 Depth=2
	st.w	$a1, $sp, 308
	move	$s1, $t5
	st.d	$a1, $sp, 288                   # 8-byte Folded Spill
.LBB0_188:                              # %if.end229.us
                                        #   in Loop: Header=BB0_11 Depth=2
	ld.d	$a6, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.d	$a1, $sp, 296
	addi.d	$a1, $sp, 312
	addi.d	$a2, $sp, 296
	addi.d	$a3, $sp, 304
	addi.d	$a4, $sp, 308
	move	$a5, $s2
	pcaddu18i	$ra, %call36(lzma_4863da)
	jirl	$ra, $ra, 0
	addi.w	$a2, $zero, -1
	move	$a1, $a0
	move	$a0, $a2
	beq	$a1, $a2, .LBB0_244
# %bb.189:                              # %if.end235.us
                                        #   in Loop: Header=BB0_11 Depth=2
	ld.w	$a1, $sp, 308
	ori	$a0, $zero, 6
	sltu	$a0, $a0, $s0
	ori	$a2, $zero, 8
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 11
	maskeqz	$a0, $a3, $a0
	or	$s0, $a0, $a2
	st.w	$s0, $sp, 308
	ld.d	$ra, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 288                   # 8-byte Folded Reload
.LBB0_190:                              # %if.end239.us
                                        #   in Loop: Header=BB0_11 Depth=2
	beqz	$t5, .LBB0_233
# %bb.191:                              # %if.else242.us
                                        #   in Loop: Header=BB0_11 Depth=2
	addi.w	$a2, $a1, 2
	st.d	$fp, $sp, 296
	st.w	$s5, $sp, 308
	sub.w	$a0, $s5, $t5
	sub.w	$a4, $s8, $s5
	addi.w	$a3, $a1, 1
	bstrpick.d	$a1, $a0, 31, 0
	ld.d	$t0, $sp, 248                   # 8-byte Folded Reload
	bgeu	$a2, $a4, .LBB0_197
# %bb.192:                              # %land.lhs.true248.us
                                        #   in Loop: Header=BB0_11 Depth=2
	bgeu	$a3, $t0, .LBB0_243
# %bb.193:                              # %land.lhs.true262.us
                                        #   in Loop: Header=BB0_11 Depth=2
	bstrpick.d	$a5, $a2, 31, 0
	add.d	$a6, $a5, $a1
	add.d	$a7, $a6, $ra
	bltu	$s3, $a7, .LBB0_243
# %bb.194:                              # %land.lhs.true262.us
                                        #   in Loop: Header=BB0_11 Depth=2
	or	$a6, $a6, $ra
	beqz	$a6, .LBB0_243
# %bb.195:                              # %land.lhs.true291.us
                                        #   in Loop: Header=BB0_11 Depth=2
	bstrpick.d	$a6, $s5, 31, 0
	add.d	$a5, $a5, $a6
	ld.d	$a6, $sp, 224                   # 8-byte Folded Reload
	bltu	$a6, $a5, .LBB0_243
# %bb.196:                              # %land.lhs.true291.us
                                        #   in Loop: Header=BB0_11 Depth=2
	or	$a5, $a5, $ra
	beqz	$a5, .LBB0_243
.LBB0_197:                              # %land.lhs.true310.us
                                        #   in Loop: Header=BB0_11 Depth=2
	beq	$s8, $s5, .LBB0_243
# %bb.198:                              # %land.lhs.true310.us
                                        #   in Loop: Header=BB0_11 Depth=2
	bltu	$t0, $a4, .LBB0_243
# %bb.199:                              # %land.lhs.true323.us
                                        #   in Loop: Header=BB0_11 Depth=2
	bstrpick.d	$a4, $s5, 31, 0
	ld.d	$a5, $sp, 192                   # 8-byte Folded Reload
	sub.d	$a5, $a5, $a4
	add.d	$a5, $a5, $a1
	ld.d	$a6, $sp, 224                   # 8-byte Folded Reload
	blt	$a6, $a5, .LBB0_243
# %bb.200:                              # %land.lhs.true323.us
                                        #   in Loop: Header=BB0_11 Depth=2
	ld.d	$a6, $sp, 184                   # 8-byte Folded Reload
	bge	$a6, $a5, .LBB0_243
# %bb.201:                              # %land.lhs.true323.us
                                        #   in Loop: Header=BB0_11 Depth=2
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
	bltu	$s3, $a5, .LBB0_243
# %bb.202:                              # %do.body384.us.preheader
                                        #   in Loop: Header=BB0_11 Depth=2
	addi.w	$a5, $s5, 1
	sltu	$a6, $a5, $s8
	masknez	$a5, $a5, $a6
	maskeqz	$a6, $s8, $a6
	or	$a6, $a6, $a5
	nor	$a5, $s5, $zero
	add.w	$a6, $a6, $a5
	sltu	$a7, $a6, $a3
	maskeqz	$a6, $a6, $a7
	masknez	$a3, $a3, $a7
	or	$a6, $a6, $a3
	addi.w	$a3, $a6, 1
	ori	$a7, $zero, 64
	bgeu	$a3, $a7, .LBB0_206
.LBB0_203:                              # %do.body384.us.preheader1108
                                        #   in Loop: Header=BB0_11 Depth=2
	addi.w	$a2, $a2, -1
	move	$a1, $s5
	.p2align	4, , 16
.LBB0_204:                              # %do.body384.us
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bstrpick.d	$a3, $a0, 31, 0
	ldx.bu	$a4, $fp, $a3
	bstrpick.d	$a3, $a1, 31, 0
	stx.b	$a4, $fp, $a3
	bstrpick.d	$a2, $a2, 31, 0
	addi.w	$a3, $zero, -1
	lu32i.d	$a3, 0
	add.d	$a2, $a2, $a3
	and	$a3, $a2, $s7
	addi.w	$a1, $a1, 1
	beqz	$a3, .LBB0_213
# %bb.205:                              # %do.body384.us
                                        #   in Loop: Header=BB0_204 Depth=3
	addi.w	$a0, $a0, 1
	bltu	$a1, $s8, .LBB0_204
	b	.LBB0_213
.LBB0_206:                              # %vector.scevcheck
                                        #   in Loop: Header=BB0_11 Depth=2
	addi.w	$a5, $a5, 0
	bltu	$a5, $a6, .LBB0_203
# %bb.207:                              # %vector.scevcheck
                                        #   in Loop: Header=BB0_11 Depth=2
	nor	$a5, $a0, $zero
	bltu	$a5, $a6, .LBB0_203
# %bb.208:                              # %vector.scevcheck
                                        #   in Loop: Header=BB0_11 Depth=2
	sub.d	$a1, $a4, $a1
	ori	$a4, $zero, 64
	bltu	$a1, $a4, .LBB0_203
# %bb.209:                              # %vector.ph
                                        #   in Loop: Header=BB0_11 Depth=2
	move	$a4, $a3
	bstrins.d	$a4, $zero, 5, 0
	add.w	$a1, $s5, $a4
	add.w	$a0, $a0, $a4
	sub.d	$a2, $a2, $a4
	sub.w	$a5, $zero, $t5
	move	$a6, $a4
	.p2align	4, , 16
.LBB0_210:                              # %vector.body
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a7, $a5, $s5
	bstrpick.d	$a7, $a7, 31, 0
	add.d	$t0, $fp, $a7
	xvldx	$xr1, $fp, $a7
	xvld	$xr0, $t0, 32
	bstrpick.d	$a7, $s5, 31, 0
	add.d	$t0, $fp, $a7
	xvstx	$xr1, $fp, $a7
	xvst	$xr0, $t0, 32
	addi.w	$a6, $a6, -64
	addi.w	$s5, $s5, 64
	bnez	$a6, .LBB0_210
# %bb.211:                              # %middle.block
                                        #   in Loop: Header=BB0_11 Depth=2
	bne	$a3, $a4, .LBB0_214
# %bb.212:                              #   in Loop: Header=BB0_11 Depth=2
	xvpermi.d	$xr0, $xr0, 14
	vpickve2gr.b	$a4, $vr0, 15
.LBB0_213:                              # %do.cond520.loopexit.us
                                        #   in Loop: Header=BB0_11 Depth=2
	st.w	$a1, $sp, 304
	ori	$a3, $zero, 1
	move	$s5, $a1
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	move	$a1, $a0
	st.w	$s5, $sp, 308
	st.d	$s1, $sp, 280                   # 8-byte Folded Spill
	bltu	$s5, $s8, .LBB0_11
	b	.LBB0_233
.LBB0_214:                              #   in Loop: Header=BB0_11 Depth=2
	move	$s5, $a1
	b	.LBB0_203
.LBB0_215:                              # %if.end110.thread.us
                                        #   in Loop: Header=BB0_11 Depth=2
	st.w	$a2, $sp, 324
	st.w	$a6, $sp, 308
	alsl.w	$a5, $a6, $a5, 4
	ori	$t1, $zero, 4
	ld.d	$a6, $sp, 128                   # 8-byte Folded Reload
.LBB0_216:                              # %do.body.preheader.i343.us
                                        #   in Loop: Header=BB0_11 Depth=2
	st.d	$a6, $sp, 296
	addi.d	$t3, $a6, 2
	ori	$a7, $zero, 1
	st.w	$a7, $sp, 304
	bltu	$t3, $s2, .LBB0_244
# %bb.217:                              # %do.body.preheader.i343.us
                                        #   in Loop: Header=BB0_11 Depth=2
	addi.d	$a7, $a6, 6
	bltu	$s6, $a7, .LBB0_244
# %bb.218:                              # %land.lhs.true13.i.i357.lr.ph.us
                                        #   in Loop: Header=BB0_11 Depth=2
	bltu	$a4, $s2, .LBB0_244
# %bb.219:                              # %land.lhs.true13.i.i357.lr.ph.us
                                        #   in Loop: Header=BB0_11 Depth=2
	addi.d	$t2, $a4, 1
	bltu	$s6, $t2, .LBB0_244
# %bb.220:                              # %if.end.i.i363.us.preheader
                                        #   in Loop: Header=BB0_11 Depth=2
	move	$a7, $zero
	move	$t0, $zero
	addi.w	$t1, $t1, -1
	ori	$t4, $zero, 2
	.p2align	4, , 16
.LBB0_221:                              # %if.end.i.i363.us
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.wu	$t7, $t3, 0
	bstrpick.d	$t5, $a3, 31, 11
	bstrpick.d	$t8, $t7, 15, 0
	mul.d	$t6, $t8, $t5
	addi.w	$t5, $t6, 0
	bgeu	$a2, $t5, .LBB0_223
# %bb.222:                              # %if.then26.i.i391.us
                                        #   in Loop: Header=BB0_221 Depth=3
	move	$t5, $zero
	sub.d	$a3, $s1, $t8
	bstrpick.d	$a3, $a3, 31, 5
	add.w	$a3, $a3, $t7
	b	.LBB0_224
	.p2align	4, , 16
.LBB0_223:                              # %if.else.i.i369.us
                                        #   in Loop: Header=BB0_221 Depth=3
	sub.w	$a2, $a2, $t6
	sub.w	$t6, $a3, $t6
	st.w	$a2, $sp, 324
	bstrpick.d	$a3, $t8, 31, 5
	sub.w	$a3, $t7, $a3
	ori	$t5, $zero, 1
.LBB0_224:                              # %if.end46.i.i374.us
                                        #   in Loop: Header=BB0_221 Depth=3
	srli.d	$t7, $t7, 16
	bstrins.d	$a3, $t7, 63, 16
	st.w	$t6, $sp, 320
	bstrpick.d	$t7, $t6, 31, 24
	st.w	$a3, $t3, 0
	bnez	$t7, .LBB0_226
# %bb.225:                              # %if.then49.i.i385.us
                                        #   in Loop: Header=BB0_221 Depth=3
	ld.bu	$a3, $a4, 0
	slli.w	$a2, $a2, 8
	or	$a2, $a2, $a3
	slli.d	$a3, $t6, 8
	st.w	$a2, $sp, 324
	st.w	$a3, $sp, 320
	st.d	$t2, $sp, 312
	move	$a4, $t2
	b	.LBB0_227
	.p2align	4, , 16
.LBB0_226:                              #   in Loop: Header=BB0_221 Depth=3
	move	$a3, $t6
	move	$t2, $t3
.LBB0_227:                              # %if.end4.i.us
                                        #   in Loop: Header=BB0_221 Depth=3
	or	$t3, $t5, $t4
	sll.w	$t4, $t5, $t0
	or	$a7, $t4, $a7
	ld.d	$t5, $sp, 288                   # 8-byte Folded Reload
	beq	$t1, $t0, .LBB0_232
# %bb.228:                              # %do.body.i348.us
                                        #   in Loop: Header=BB0_221 Depth=3
	slli.d	$t4, $t3, 1
	bstrpick.d	$t2, $t4, 31, 1
	alsl.d	$t3, $t2, $a6, 1
	bltu	$t3, $s2, .LBB0_244
# %bb.229:                              # %do.body.i348.us
                                        #   in Loop: Header=BB0_221 Depth=3
	addi.d	$t2, $t3, 4
	bltu	$s6, $t2, .LBB0_244
# %bb.230:                              # %land.lhs.true13.i.i357.us
                                        #   in Loop: Header=BB0_221 Depth=3
	bltu	$a4, $s2, .LBB0_244
# %bb.231:                              # %land.lhs.true13.i.i357.us
                                        #   in Loop: Header=BB0_221 Depth=3
	addi.d	$t2, $a4, 1
	addi.w	$t0, $t0, 1
	bgeu	$s6, $t2, .LBB0_221
	b	.LBB0_244
.LBB0_232:                              # %cleanup.us
                                        #   in Loop: Header=BB0_11 Depth=2
	st.d	$t2, $sp, 296
	st.w	$t3, $sp, 304
	st.w	$a7, $sp, 308
	add.d	$a6, $a7, $a5
	b	.LBB0_155
.LBB0_233:                              # %do.end523.us
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$t0, $sp, 96                    # 8-byte Folded Reload
	move	$a0, $t0
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 72                    # 8-byte Folded Reload
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	ld.d	$t4, $sp, 24                    # 8-byte Folded Reload
	beqz	$a4, .LBB0_3
	b	.LBB0_240
.LBB0_234:                              #   in Loop: Header=BB0_3 Depth=1
	move	$a0, $t0
	b	.LBB0_3
.LBB0_235:
	move	$a6, $zero
	lu12i.w	$a2, 6
	ori	$a0, $a2, 3692
	addi.d	$t0, $a1, 4
	bgeu	$a5, $a0, .LBB0_2
.LBB0_236:                              # %do.body7
	bnez	$a4, .LBB0_238
# %bb.237:                              # %if.then9
	ld.w	$a0, $t0, 0
	beqz	$a0, .LBB0_239
.LBB0_238:                              # %if.end13
	addi.w	$a0, $zero, -1
	b	.LBB0_244
.LBB0_239:
	move	$a0, $zero
	b	.LBB0_244
.LBB0_240:                              # %if.then525
	ld.w	$a1, $sp, 304
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	move	$a2, $s0
	move	$s1, $a5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $s0, -1
	bgeu	$a0, $s1, .LBB0_243
# %bb.241:                              # %land.lhs.true538
	bstrpick.d	$a0, $s0, 31, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	bltu	$s3, $a1, .LBB0_244
# %bb.242:                              # %do.body552.preheader
	move	$a1, $zero
	ori	$a2, $zero, 232
	b	.LBB0_246
.LBB0_243:
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
.LBB0_244:                              # %cleanup594
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
.LBB0_245:                              # %do.cond585
                                        #   in Loop: Header=BB0_246 Depth=1
	add.w	$a1, $a1, $a3
	move	$a0, $zero
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	beq	$a1, $a3, .LBB0_244
.LBB0_246:                              # %do.body552
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a0, $a1, 31, 0
	ldx.bu	$a3, $fp, $a0
	andi	$a4, $a3, 254
	ori	$a3, $zero, 1
	bne	$a4, $a2, .LBB0_245
# %bb.247:                              # %if.then562
                                        #   in Loop: Header=BB0_246 Depth=1
	add.d	$a0, $fp, $a0
	ld.w	$a3, $a0, 1
	nor	$a4, $a1, $zero
	revb.2w	$a3, $a3
	add.d	$a3, $a3, $a4
	st.w	$a3, $a0, 1
	ori	$a3, $zero, 5
	b	.LBB0_245
.Lfunc_end0:
	.size	mew_lzma, .Lfunc_end0-mew_lzma
                                        # -- End function
	.p2align	5                               # -- Begin function lzma_4863da
	.type	lzma_4863da,@function
lzma_4863da:                            # @lzma_4863da
# %bb.0:                                # %entry
	ld.d	$t0, $a2, 0
	move	$a7, $a0
	addi.w	$a0, $zero, -1
	bltu	$t0, $a5, .LBB1_18
# %bb.1:                                # %land.lhs.true4.i
	addi.d	$t1, $t0, 4
	bstrpick.d	$a6, $a6, 31, 0
	add.d	$a6, $a5, $a6
	bltu	$a6, $t1, .LBB1_18
# %bb.2:                                # %land.lhs.true13.i
	ld.d	$t2, $a1, 0
	bltu	$t2, $a5, .LBB1_18
# %bb.3:                                # %land.lhs.true13.i
	addi.d	$t2, $t2, 1
	bltu	$a6, $t2, .LBB1_18
# %bb.4:                                # %if.end.i
	addi.d	$sp, $sp, -16
	st.d	$fp, $sp, 8                     # 8-byte Folded Spill
	ld.wu	$t5, $a1, 8
	ld.wu	$t4, $t0, 0
	ld.w	$t2, $a1, 12
	srli.d	$t3, $t5, 11
	bstrpick.d	$t6, $t4, 15, 0
	mul.w	$t3, $t6, $t3
	bgeu	$t2, $t3, .LBB1_6
# %bb.5:                                # %if.then26.i
	ori	$t5, $zero, 2048
	sub.d	$t5, $t5, $t6
	bstrpick.d	$t5, $t5, 31, 5
	add.w	$t6, $t5, $t4
	move	$t5, $t3
	b	.LBB1_7
.LBB1_6:                                # %if.else.i
	sub.d	$t5, $t5, $t3
	sub.d	$t7, $t2, $t3
	st.w	$t7, $a1, 12
	bstrpick.d	$t6, $t6, 31, 5
	sub.w	$t6, $t4, $t6
.LBB1_7:                                # %if.end46.i
	srli.d	$t4, $t4, 16
	bstrins.d	$t6, $t4, 63, 16
	st.w	$t5, $a1, 8
	st.w	$t6, $t0, 0
	ld.wu	$t4, $a1, 8
	srli.d	$t5, $t4, 24
	bnez	$t5, .LBB1_9
# %bb.8:                                # %if.then49.i
	ld.d	$t5, $a1, 0
	st.d	$t5, $a2, 0
	ld.w	$t6, $a1, 12
	ld.bu	$t7, $t5, 0
	slli.d	$t6, $t6, 8
	or	$t6, $t6, $t7
	addi.d	$t5, $t5, 1
	st.d	$t5, $a2, 0
	slli.d	$t4, $t4, 8
	st.w	$t6, $a1, 12
	st.w	$t4, $a1, 8
	st.d	$t5, $a1, 0
.LBB1_9:                                # %lzma_486248.exit
	bgeu	$t2, $t3, .LBB1_16
# %bb.10:                               # %do.body.preheader.i151
	slli.d	$a7, $a7, 4
	ori	$t0, $zero, 3
	st.w	$t0, $a3, 0
	bstrpick.d	$a7, $a7, 31, 4
	alsl.d	$a7, $a7, $t1, 4
	addi.d	$t1, $a7, 2
	st.d	$t1, $a2, 0
	bltu	$t1, $a5, .LBB1_17
# %bb.11:                               # %do.body.preheader.i151
	addi.d	$t0, $a7, 6
	bltu	$a6, $t0, .LBB1_17
# %bb.12:                               # %land.lhs.true13.i.i166
	ld.d	$t0, $a1, 0
	bltu	$t0, $a5, .LBB1_17
# %bb.13:                               # %land.lhs.true13.i.i166
	addi.d	$t0, $t0, 1
	bltu	$a6, $t0, .LBB1_17
# %bb.14:                               # %if.end.i.i171
	ld.wu	$t0, $a1, 8
	ld.wu	$t2, $t1, 0
	ld.w	$t5, $a1, 12
	srli.d	$t3, $t0, 11
	bstrpick.d	$t4, $t2, 15, 0
	mul.w	$t3, $t4, $t3
	bgeu	$t5, $t3, .LBB1_44
# %bb.15:                               # %if.then26.i.i200
	ori	$t0, $zero, 2048
	sub.d	$t0, $t0, $t4
	bstrpick.d	$t0, $t0, 31, 5
	add.w	$t4, $t0, $t2
	ori	$t0, $zero, 4
	b	.LBB1_45
.LBB1_16:                               # %if.then2
	addi.d	$t3, $t0, 2
	addi.d	$t1, $t0, 6
	st.d	$t3, $a2, 0
	bgeu	$a6, $t1, .LBB1_19
.LBB1_17:
	ld.d	$fp, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB1_18:                               # %cleanup
	ret
.LBB1_19:                               # %land.lhs.true13.i37
	ld.d	$t1, $a1, 0
	bltu	$t1, $a5, .LBB1_17
# %bb.20:                               # %land.lhs.true13.i37
	addi.d	$t1, $t1, 1
	bltu	$a6, $t1, .LBB1_17
# %bb.21:                               # %if.end.i43
	ld.wu	$t5, $t3, 0
	ld.w	$t1, $a1, 12
	bstrpick.d	$t2, $t4, 31, 11
	bstrpick.d	$t6, $t5, 15, 0
	mul.w	$t2, $t6, $t2
	bgeu	$t1, $t2, .LBB1_23
# %bb.22:                               # %if.then26.i70
	ori	$t4, $zero, 2048
	sub.d	$t4, $t4, $t6
	bstrpick.d	$t4, $t4, 31, 5
	add.w	$t6, $t4, $t5
	move	$t4, $t2
	b	.LBB1_24
.LBB1_23:                               # %if.else.i51
	sub.d	$t4, $t4, $t2
	sub.d	$t7, $t1, $t2
	st.w	$t7, $a1, 12
	bstrpick.d	$t6, $t6, 31, 5
	sub.w	$t6, $t5, $t6
.LBB1_24:                               # %if.end46.i56
	srli.d	$t5, $t5, 16
	bstrins.d	$t6, $t5, 63, 16
	st.w	$t4, $a1, 8
	st.w	$t6, $t3, 0
	ld.wu	$t3, $a1, 8
	srli.d	$t4, $t3, 24
	bnez	$t4, .LBB1_26
# %bb.25:                               # %if.then49.i64
	ld.d	$t4, $a1, 0
	st.d	$t4, $a2, 0
	ld.w	$t5, $a1, 12
	ld.bu	$t6, $t4, 0
	slli.d	$t5, $t5, 8
	or	$t5, $t5, $t6
	addi.d	$t4, $t4, 1
	st.d	$t4, $a2, 0
	slli.d	$t3, $t3, 8
	st.w	$t5, $a1, 12
	st.w	$t3, $a1, 8
	st.d	$t4, $a1, 0
.LBB1_26:                               # %lzma_486248.exit74
	bgeu	$t1, $t2, .LBB1_33
# %bb.27:                               # %do.body.preheader.i90
	slli.d	$a7, $a7, 4
	ori	$t1, $zero, 3
	st.w	$t1, $a3, 0
	bstrpick.d	$a7, $a7, 31, 4
	alsl.d	$t0, $a7, $t0, 4
	addi.d	$t1, $t0, 262
	st.d	$t1, $a2, 0
	bltu	$t1, $a5, .LBB1_17
# %bb.28:                               # %do.body.preheader.i90
	addi.d	$a7, $t0, 266
	bltu	$a6, $a7, .LBB1_17
# %bb.29:                               # %land.lhs.true13.i.i105
	ld.d	$a7, $a1, 0
	bltu	$a7, $a5, .LBB1_17
# %bb.30:                               # %land.lhs.true13.i.i105
	addi.d	$a7, $a7, 1
	bltu	$a6, $a7, .LBB1_17
# %bb.31:                               # %if.end.i.i110
	ld.wu	$a7, $a1, 8
	ld.wu	$t2, $t1, 0
	ld.w	$t5, $a1, 12
	srli.d	$t3, $a7, 11
	bstrpick.d	$t4, $t2, 15, 0
	mul.w	$t3, $t4, $t3
	bgeu	$t5, $t3, .LBB1_63
# %bb.32:                               # %if.then26.i.i139
	ori	$a7, $zero, 2048
	sub.d	$a7, $a7, $t4
	bstrpick.d	$a7, $a7, 31, 5
	add.w	$t4, $a7, $t2
	ori	$a7, $zero, 4
	b	.LBB1_64
.LBB1_33:                               # %do.body.preheader.i
	ori	$a7, $zero, 8
	st.w	$a7, $a3, 0
	addi.d	$a7, $t0, 516
	ori	$t3, $zero, 1
	addi.w	$t0, $zero, -8
	ori	$t1, $zero, 2048
	ori	$t2, $zero, 0
	lu32i.d	$t2, 1
	b	.LBB1_35
.LBB1_34:                               # %if.end.i82
                                        #   in Loop: Header=BB1_35 Depth=1
	bstrpick.d	$t0, $t0, 31, 0
	addi.d	$t0, $t0, 1
	and	$t4, $t0, $t2
	or	$t3, $t5, $t3
	bnez	$t4, .LBB1_53
.LBB1_35:                               # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$t3, $t3, 1
	bstrpick.d	$t4, $t3, 31, 1
	alsl.d	$t4, $t4, $a7, 1
	st.d	$t4, $a2, 0
	bltu	$t4, $a5, .LBB1_17
# %bb.36:                               # %do.body.i
                                        #   in Loop: Header=BB1_35 Depth=1
	addi.d	$t5, $t4, 4
	bltu	$a6, $t5, .LBB1_17
# %bb.37:                               # %land.lhs.true13.i.i
                                        #   in Loop: Header=BB1_35 Depth=1
	ld.d	$t5, $a1, 0
	bltu	$t5, $a5, .LBB1_17
# %bb.38:                               # %land.lhs.true13.i.i
                                        #   in Loop: Header=BB1_35 Depth=1
	addi.d	$t5, $t5, 1
	bltu	$a6, $t5, .LBB1_17
# %bb.39:                               # %if.end.i.i
                                        #   in Loop: Header=BB1_35 Depth=1
	ld.wu	$t5, $a1, 8
	ld.wu	$t6, $t4, 0
	ld.w	$fp, $a1, 12
	srli.d	$t7, $t5, 11
	bstrpick.d	$t8, $t6, 15, 0
	mul.w	$t7, $t8, $t7
	bgeu	$fp, $t7, .LBB1_41
# %bb.40:                               # %if.then26.i.i
                                        #   in Loop: Header=BB1_35 Depth=1
	move	$t5, $zero
	sub.d	$t8, $t1, $t8
	bstrpick.d	$t8, $t8, 31, 5
	add.w	$t8, $t8, $t6
	b	.LBB1_42
.LBB1_41:                               # %if.else.i.i
                                        #   in Loop: Header=BB1_35 Depth=1
	sub.d	$fp, $fp, $t7
	sub.d	$t7, $t5, $t7
	st.w	$fp, $a1, 12
	bstrpick.d	$t5, $t8, 31, 5
	sub.w	$t8, $t6, $t5
	ori	$t5, $zero, 1
.LBB1_42:                               # %if.end46.i.i
                                        #   in Loop: Header=BB1_35 Depth=1
	srli.d	$t6, $t6, 16
	bstrins.d	$t8, $t6, 63, 16
	st.w	$t7, $a1, 8
	st.w	$t8, $t4, 0
	ld.wu	$t4, $a1, 8
	srli.d	$t6, $t4, 24
	bnez	$t6, .LBB1_34
# %bb.43:                               # %if.then49.i.i
                                        #   in Loop: Header=BB1_35 Depth=1
	ld.d	$t6, $a1, 0
	st.d	$t6, $a2, 0
	ld.w	$t7, $a1, 12
	ld.bu	$t8, $t6, 0
	slli.d	$t7, $t7, 8
	or	$t7, $t7, $t8
	addi.d	$t6, $t6, 1
	st.d	$t6, $a2, 0
	slli.d	$t4, $t4, 8
	st.w	$t7, $a1, 12
	st.w	$t4, $a1, 8
	st.d	$t6, $a1, 0
	b	.LBB1_34
.LBB1_44:                               # %if.else.i.i177
	sub.d	$t5, $t5, $t3
	sub.d	$t3, $t0, $t3
	st.w	$t5, $a1, 12
	bstrpick.d	$t0, $t4, 31, 5
	sub.w	$t4, $t2, $t0
	ori	$t0, $zero, 6
.LBB1_45:                               # %if.end46.i.i182
	srli.d	$t2, $t2, 16
	bstrins.d	$t4, $t2, 63, 16
	st.w	$t3, $a1, 8
	st.w	$t4, $t1, 0
	ld.wu	$t2, $a1, 8
	srli.d	$t1, $t2, 24
	bnez	$t1, .LBB1_47
# %bb.46:                               # %if.then49.i.i194
	ld.d	$t1, $a1, 0
	st.d	$t1, $a2, 0
	ld.w	$t3, $a1, 12
	ld.bu	$t4, $t1, 0
	slli.d	$t3, $t3, 8
	or	$t3, $t3, $t4
	addi.d	$t1, $t1, 1
	slli.d	$t2, $t2, 8
	st.w	$t3, $a1, 12
	st.w	$t2, $a1, 8
	st.d	$t1, $a1, 0
.LBB1_47:                               # %if.end.i190
	add.d	$t1, $a7, $t0
	st.d	$t1, $a2, 0
	bltu	$t1, $a5, .LBB1_17
# %bb.48:                               # %if.end.i190
	addi.d	$t3, $t1, 4
	bltu	$a6, $t3, .LBB1_17
# %bb.49:                               # %land.lhs.true13.i.i166.1
	ld.d	$t3, $a1, 0
	bltu	$t3, $a5, .LBB1_17
# %bb.50:                               # %land.lhs.true13.i.i166.1
	addi.d	$t3, $t3, 1
	bltu	$a6, $t3, .LBB1_17
# %bb.51:                               # %if.end.i.i171.1
	ld.wu	$t3, $t1, 0
	ld.w	$t6, $a1, 12
	bstrpick.d	$t4, $t2, 31, 11
	bstrpick.d	$t5, $t3, 15, 0
	mul.w	$t4, $t5, $t4
	bgeu	$t6, $t4, .LBB1_54
# %bb.52:                               # %if.then26.i.i200.1
	move	$t2, $zero
	ori	$t6, $zero, 2048
	sub.d	$t5, $t6, $t5
	bstrpick.d	$t5, $t5, 31, 5
	add.w	$t5, $t5, $t3
	b	.LBB1_55
.LBB1_53:                               # %if.end13
	ori	$a0, $zero, 256
	st.w	$a0, $a3, 0
	addi.d	$a1, $t3, -240
	b	.LBB1_76
.LBB1_54:                               # %if.else.i.i177.1
	sub.d	$t6, $t6, $t4
	sub.d	$t4, $t2, $t4
	st.w	$t6, $a1, 12
	bstrpick.d	$t2, $t5, 31, 5
	sub.w	$t5, $t3, $t2
	ori	$t2, $zero, 1
.LBB1_55:                               # %if.end46.i.i182.1
	srli.d	$t3, $t3, 16
	bstrins.d	$t5, $t3, 63, 16
	st.w	$t4, $a1, 8
	st.w	$t5, $t1, 0
	ld.wu	$t1, $a1, 8
	srli.d	$t3, $t1, 24
	bnez	$t3, .LBB1_57
# %bb.56:                               # %if.then49.i.i194.1
	ld.d	$t3, $a1, 0
	st.d	$t3, $a2, 0
	ld.w	$t4, $a1, 12
	ld.bu	$t5, $t3, 0
	slli.d	$t4, $t4, 8
	or	$t4, $t4, $t5
	addi.d	$t3, $t3, 1
	slli.d	$t1, $t1, 8
	st.w	$t4, $a1, 12
	st.w	$t1, $a1, 8
	st.d	$t3, $a1, 0
.LBB1_57:                               # %if.end.i190.1
	or	$t0, $t2, $t0
	alsl.d	$a7, $t0, $a7, 1
	st.d	$a7, $a2, 0
	bltu	$a7, $a5, .LBB1_17
# %bb.58:                               # %if.end.i190.1
	addi.d	$t2, $a7, 4
	bltu	$a6, $t2, .LBB1_17
# %bb.59:                               # %land.lhs.true13.i.i166.2
	ld.d	$t2, $a1, 0
	bltu	$t2, $a5, .LBB1_17
# %bb.60:                               # %land.lhs.true13.i.i166.2
	addi.d	$a5, $t2, 1
	bltu	$a6, $a5, .LBB1_17
# %bb.61:                               # %if.end.i.i171.2
	ld.wu	$a0, $a7, 0
	ld.w	$a5, $a1, 12
	bstrpick.d	$a6, $t1, 31, 11
	bstrpick.d	$t2, $a0, 15, 0
	mul.w	$a6, $t2, $a6
	bgeu	$a5, $a6, .LBB1_72
# %bb.62:                               # %if.then26.i.i200.2
	move	$a5, $zero
	ori	$t1, $zero, 2048
	sub.d	$t1, $t1, $t2
	bstrpick.d	$t1, $t1, 31, 5
	add.w	$t1, $t1, $a0
	b	.LBB1_73
.LBB1_63:                               # %if.else.i.i116
	sub.d	$t5, $t5, $t3
	sub.d	$t3, $a7, $t3
	st.w	$t5, $a1, 12
	bstrpick.d	$a7, $t4, 31, 5
	sub.w	$t4, $t2, $a7
	ori	$a7, $zero, 6
.LBB1_64:                               # %if.end46.i.i121
	srli.d	$t2, $t2, 16
	bstrins.d	$t4, $t2, 63, 16
	st.w	$t3, $a1, 8
	st.w	$t4, $t1, 0
	ld.wu	$t2, $a1, 8
	srli.d	$t1, $t2, 24
	addi.d	$t0, $t0, 260
	bnez	$t1, .LBB1_66
# %bb.65:                               # %if.then49.i.i133
	ld.d	$t1, $a1, 0
	st.d	$t1, $a2, 0
	ld.w	$t3, $a1, 12
	ld.bu	$t4, $t1, 0
	slli.d	$t3, $t3, 8
	or	$t3, $t3, $t4
	addi.d	$t1, $t1, 1
	slli.d	$t2, $t2, 8
	st.w	$t3, $a1, 12
	st.w	$t2, $a1, 8
	st.d	$t1, $a1, 0
.LBB1_66:                               # %if.end.i129
	add.d	$t1, $t0, $a7
	st.d	$t1, $a2, 0
	bltu	$t1, $a5, .LBB1_17
# %bb.67:                               # %if.end.i129
	addi.d	$t3, $t1, 4
	bltu	$a6, $t3, .LBB1_17
# %bb.68:                               # %land.lhs.true13.i.i105.1
	ld.d	$t3, $a1, 0
	bltu	$t3, $a5, .LBB1_17
# %bb.69:                               # %land.lhs.true13.i.i105.1
	addi.d	$t3, $t3, 1
	bltu	$a6, $t3, .LBB1_17
# %bb.70:                               # %if.end.i.i110.1
	ld.wu	$t3, $t1, 0
	ld.w	$t6, $a1, 12
	bstrpick.d	$t4, $t2, 31, 11
	bstrpick.d	$t5, $t3, 15, 0
	mul.w	$t4, $t5, $t4
	bgeu	$t6, $t4, .LBB1_77
# %bb.71:                               # %if.then26.i.i139.1
	move	$t2, $zero
	ori	$t6, $zero, 2048
	sub.d	$t5, $t6, $t5
	bstrpick.d	$t5, $t5, 31, 5
	add.w	$t5, $t5, $t3
	b	.LBB1_78
.LBB1_72:                               # %if.else.i.i177.2
	sub.d	$a5, $a5, $a6
	sub.d	$a6, $t1, $a6
	st.w	$a5, $a1, 12
	bstrpick.d	$a5, $t2, 31, 5
	sub.w	$t1, $a0, $a5
	ori	$a5, $zero, 1
.LBB1_73:                               # %if.end46.i.i182.2
	srli.d	$a0, $a0, 16
	bstrins.d	$t1, $a0, 63, 16
	st.w	$a6, $a1, 8
	st.w	$t1, $a7, 0
	ld.wu	$a6, $a1, 8
	srli.d	$a7, $a6, 24
	slli.d	$a0, $t0, 1
	bnez	$a7, .LBB1_75
# %bb.74:                               # %if.then49.i.i194.2
	ld.d	$a7, $a1, 0
	st.d	$a7, $a2, 0
	ld.w	$t0, $a1, 12
	ld.bu	$t1, $a7, 0
	slli.d	$t0, $t0, 8
	or	$t0, $t0, $t1
	addi.d	$a7, $a7, 1
	st.d	$a7, $a2, 0
	slli.d	$a2, $a6, 8
	st.w	$t0, $a1, 12
	st.w	$a2, $a1, 8
	st.d	$a7, $a1, 0
.LBB1_75:                               # %if.end.i190.2
	or	$a0, $a5, $a0
	ori	$a1, $zero, 8
	st.w	$a1, $a3, 0
	addi.d	$a1, $a0, -8
.LBB1_76:                               # %if.end31
	move	$a0, $zero
	st.w	$a1, $a4, 0
	b	.LBB1_17
.LBB1_77:                               # %if.else.i.i116.1
	sub.d	$t6, $t6, $t4
	sub.d	$t4, $t2, $t4
	st.w	$t6, $a1, 12
	bstrpick.d	$t2, $t5, 31, 5
	sub.w	$t5, $t3, $t2
	ori	$t2, $zero, 1
.LBB1_78:                               # %if.end46.i.i121.1
	srli.d	$t3, $t3, 16
	bstrins.d	$t5, $t3, 63, 16
	st.w	$t4, $a1, 8
	st.w	$t5, $t1, 0
	ld.wu	$t1, $a1, 8
	srli.d	$t3, $t1, 24
	bnez	$t3, .LBB1_80
# %bb.79:                               # %if.then49.i.i133.1
	ld.d	$t3, $a1, 0
	st.d	$t3, $a2, 0
	ld.w	$t4, $a1, 12
	ld.bu	$t5, $t3, 0
	slli.d	$t4, $t4, 8
	or	$t4, $t4, $t5
	addi.d	$t3, $t3, 1
	slli.d	$t1, $t1, 8
	st.w	$t4, $a1, 12
	st.w	$t1, $a1, 8
	st.d	$t3, $a1, 0
.LBB1_80:                               # %if.end.i129.1
	or	$a7, $t2, $a7
	alsl.d	$t0, $a7, $t0, 1
	st.d	$t0, $a2, 0
	bltu	$t0, $a5, .LBB1_17
# %bb.81:                               # %if.end.i129.1
	addi.d	$t2, $t0, 4
	bltu	$a6, $t2, .LBB1_17
# %bb.82:                               # %land.lhs.true13.i.i105.2
	ld.d	$t2, $a1, 0
	bltu	$t2, $a5, .LBB1_17
# %bb.83:                               # %land.lhs.true13.i.i105.2
	addi.d	$a5, $t2, 1
	bltu	$a6, $a5, .LBB1_17
# %bb.84:                               # %if.end.i.i110.2
	ld.wu	$a0, $t0, 0
	ld.w	$a5, $a1, 12
	bstrpick.d	$a6, $t1, 31, 11
	bstrpick.d	$t2, $a0, 15, 0
	mul.w	$a6, $t2, $a6
	bgeu	$a5, $a6, .LBB1_86
# %bb.85:                               # %if.then26.i.i139.2
	move	$a5, $zero
	ori	$t1, $zero, 2048
	sub.d	$t1, $t1, $t2
	bstrpick.d	$t1, $t1, 31, 5
	add.w	$t1, $t1, $a0
	b	.LBB1_87
.LBB1_86:                               # %if.else.i.i116.2
	sub.d	$a5, $a5, $a6
	sub.d	$a6, $t1, $a6
	st.w	$a5, $a1, 12
	bstrpick.d	$a5, $t2, 31, 5
	sub.w	$t1, $a0, $a5
	ori	$a5, $zero, 1
.LBB1_87:                               # %if.end46.i.i121.2
	srli.d	$a0, $a0, 16
	bstrins.d	$t1, $a0, 63, 16
	st.w	$a6, $a1, 8
	st.w	$t1, $t0, 0
	ld.wu	$a6, $a1, 8
	srli.d	$t0, $a6, 24
	slli.d	$a0, $a7, 1
	bnez	$t0, .LBB1_89
# %bb.88:                               # %if.then49.i.i133.2
	ld.d	$a7, $a1, 0
	st.d	$a7, $a2, 0
	ld.w	$t0, $a1, 12
	ld.bu	$t1, $a7, 0
	slli.d	$t0, $t0, 8
	or	$t0, $t0, $t1
	addi.d	$a7, $a7, 1
	st.d	$a7, $a2, 0
	slli.d	$a2, $a6, 8
	st.w	$t0, $a1, 12
	st.w	$a2, $a1, 8
	st.d	$a7, $a1, 0
.LBB1_89:                               # %if.end.i129.2
	or	$a1, $a5, $a0
	ori	$a0, $zero, 8
	st.w	$a0, $a3, 0
	b	.LBB1_76
.Lfunc_end1:
	.size	lzma_4863da, .Lfunc_end1-lzma_4863da
                                        # -- End function
	.globl	lzma_upack_esi_00               # -- Begin function lzma_upack_esi_00
	.p2align	5
	.type	lzma_upack_esi_00,@function
lzma_upack_esi_00:                      # @lzma_upack_esi_00
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	move	$a5, $a1
	bltu	$a1, $a2, .LBB2_7
# %bb.1:                                # %entry
	ori	$a1, $zero, 3
	bgeu	$a1, $a3, .LBB2_7
# %bb.2:                                # %land.lhs.true4
	addi.d	$a6, $a5, 4
	bstrpick.d	$a1, $a3, 31, 0
	add.d	$a4, $a2, $a1
	bltu	$a4, $a6, .LBB2_8
# %bb.3:                                # %land.lhs.true13
	ld.d	$a6, $a0, 0
	bltu	$a6, $a2, .LBB2_10
# %bb.4:                                # %land.lhs.true13
	addi.d	$a1, $a6, 4
	bltu	$a4, $a1, .LBB2_10
# %bb.5:                                # %if.end44
	ld.wu	$a2, $a0, 8
	ld.w	$a1, $a5, 0
	ld.w	$a6, $a6, 0
	ld.w	$a4, $a0, 12
	srli.d	$a3, $a2, 11
	mul.w	$a3, $a1, $a3
	revb.2w	$a6, $a6
	sub.w	$a6, $a6, $a4
	bgeu	$a6, $a3, .LBB2_11
# %bb.6:                                # %if.then54
	move	$a2, $zero
	st.w	$a3, $a0, 8
	ld.w	$a3, $a5, 0
	ori	$a4, $zero, 2048
	sub.d	$a1, $a4, $a1
	bstrpick.d	$a1, $a1, 31, 5
	add.d	$a1, $a3, $a1
	st.w	$a1, $a5, 0
	ld.wu	$a1, $a0, 8
	srli.d	$a3, $a1, 24
	beqz	$a3, .LBB2_12
	b	.LBB2_13
.LBB2_7:                                # %entry.if.then38_crit_edge
	bstrpick.d	$a1, $a3, 31, 0
.LBB2_8:                                # %if.then38
	add.d	$a4, $a2, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
.LBB2_9:                                # %cleanup
	move	$a1, $a2
	move	$a2, $a3
	move	$a3, $a5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB2_10:                               # %if.else
	ld.d	$a5, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	b	.LBB2_9
.LBB2_11:                               # %if.else59
	add.d	$a4, $a4, $a3
	st.w	$a4, $a0, 12
	sub.d	$a2, $a2, $a3
	st.w	$a2, $a0, 8
	ld.w	$a2, $a5, 0
	bstrpick.d	$a1, $a1, 31, 5
	sub.d	$a1, $a2, $a1
	ori	$a2, $zero, 1
	st.w	$a1, $a5, 0
	ld.wu	$a1, $a0, 8
	srli.d	$a3, $a1, 24
	bnez	$a3, .LBB2_13
.LBB2_12:                               # %if.then71
	ld.w	$a3, $a0, 12
	slli.d	$a3, $a3, 8
	ld.d	$a4, $a0, 0
	st.w	$a3, $a0, 12
	slli.d	$a1, $a1, 8
	st.w	$a1, $a0, 8
	addi.d	$a1, $a4, 1
	st.d	$a1, $a0, 0
.LBB2_13:                               # %cleanup
	move	$a0, $a2
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end2:
	.size	lzma_upack_esi_00, .Lfunc_end2-lzma_upack_esi_00
                                        # -- End function
	.globl	lzma_upack_esi_50               # -- Begin function lzma_upack_esi_50
	.p2align	5
	.type	lzma_upack_esi_50,@function
lzma_upack_esi_50:                      # @lzma_upack_esi_50
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	move	$s2, $a7
	move	$s3, $a6
	move	$fp, $a5
	move	$s4, $a4
	move	$s6, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s7, $a0
	addi.w	$s5, $zero, -1
	.p2align	4, , 16
.LBB3_1:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a0, $s1, 2
	bstrpick.d	$a0, $a0, 31, 2
	alsl.d	$a1, $a0, $s4, 2
	st.d	$a1, $s6, 0
	move	$a0, $s7
	move	$a2, $s3
	move	$a3, $s2
	pcaddu18i	$ra, %call36(lzma_upack_esi_00)
	jirl	$ra, $ra, 0
	beq	$a0, $s5, .LBB3_4
# %bb.2:                                # %if.end
                                        #   in Loop: Header=BB3_1 Depth=1
	alsl.w	$s1, $s1, $a0, 1
	bltu	$s1, $s0, .LBB3_1
# %bb.3:                                # %do.end
	move	$s5, $zero
	sub.d	$a0, $s1, $s0
	st.w	$a0, $fp, 0
.LBB3_4:                                # %cleanup
	move	$a0, $s5
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end3:
	.size	lzma_upack_esi_50, .Lfunc_end3-lzma_upack_esi_50
                                        # -- End function
	.globl	lzma_upack_esi_54               # -- Begin function lzma_upack_esi_54
	.p2align	5
	.type	lzma_upack_esi_54,@function
lzma_upack_esi_54:                      # @lzma_upack_esi_54
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a3
	move	$s4, $a2
	ori	$a2, $zero, 8
	st.b	$a2, $s4, 0
	ld.d	$a2, $a3, 0
	move	$s1, $a6
	move	$s2, $a5
	move	$s0, $a4
	move	$s5, $a1
	move	$s3, $a0
	move	$a1, $a2
	move	$a2, $a5
	move	$a3, $a6
	pcaddu18i	$ra, %call36(lzma_upack_esi_00)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	addi.d	$a1, $a1, 4
	st.d	$a1, $fp, 0
	bstrins.d	$s5, $zero, 7, 0
	beqz	$a0, .LBB4_3
# %bb.1:                                # %if.then
	move	$a0, $s3
	move	$a2, $s2
	move	$a3, $s1
	pcaddu18i	$ra, %call36(lzma_upack_esi_00)
	jirl	$ra, $ra, 0
	ld.w	$s6, $s4, 0
	beqz	$a0, .LBB4_4
# %bb.2:                                # %if.then7
	slli.w	$s6, $s6, 5
	st.w	$s6, $s4, 0
	ori	$s5, $zero, 17
	b	.LBB4_5
.LBB4_3:                                # %entry.if.end8_crit_edge
	ld.w	$s6, $s4, 0
	ori	$s5, $s5, 1
	b	.LBB4_5
.LBB4_4:
	ori	$s5, $s5, 9
.LBB4_5:                                # %if.end8
	ld.d	$a0, $fp, 0
	slli.d	$a1, $s5, 2
	bstrpick.d	$a1, $a1, 31, 2
	alsl.d	$s8, $a1, $a0, 2
	ori	$s7, $zero, 1
	addi.w	$s4, $zero, -1
	.p2align	4, , 16
.LBB4_6:                                # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a0, $s7, 2
	bstrpick.d	$a0, $a0, 31, 2
	alsl.d	$a1, $a0, $s8, 2
	st.d	$a1, $fp, 0
	move	$a0, $s3
	move	$a2, $s2
	move	$a3, $s1
	pcaddu18i	$ra, %call36(lzma_upack_esi_00)
	jirl	$ra, $ra, 0
	beq	$a0, $s4, .LBB4_9
# %bb.7:                                # %if.end.i
                                        #   in Loop: Header=BB4_6 Depth=1
	alsl.w	$s7, $s7, $a0, 1
	bltu	$s7, $s6, .LBB4_6
# %bb.8:                                # %if.end13
	move	$s4, $zero
	sub.d	$a0, $s5, $s6
	add.d	$a0, $a0, $s7
	st.w	$a0, $s0, 0
.LBB4_9:                                # %cleanup
	move	$a0, $s4
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end4:
	.size	lzma_upack_esi_54, .Lfunc_end4-lzma_upack_esi_54
                                        # -- End function
	.globl	unmew11                         # -- Begin function unmew11
	.p2align	5
	.type	unmew11,@function
unmew11:                                # @unmew11
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	move	$fp, $a1
	add.d	$s6, $a4, $a2
	add.d	$a1, $a1, $s6
	addi.d	$s2, $a1, 12
	ld.w	$a0, $a1, 8
	add.w	$s3, $a4, $a3
	ori	$a2, $zero, 4
	add.w	$s0, $a6, $a5
	bgeu	$s3, $a2, .LBB5_4
# %bb.1:                                # %while.cond.us
	sub.d	$a0, $a0, $s0
	bstrpick.d	$a0, $a0, 31, 0
	add.d	$a3, $fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	move	$a1, $zero
	move	$a2, $s2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB5_2:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
.LBB5_3:                                # %cleanup220
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB5_23
.LBB5_4:                                # %entry.split
	move	$s1, $a3
	st.d	$a6, $sp, 64                    # 8-byte Folded Spill
	st.d	$a5, $sp, 56                    # 8-byte Folded Spill
	ld.w	$a1, $a1, 4
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	bstrpick.d	$a1, $s3, 31, 0
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	add.d	$s8, $fp, $a1
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	beqz	$a7, .LBB5_15
# %bb.5:                                # %while.cond.preheader
	st.d	$a7, $sp, 40                    # 8-byte Folded Spill
	move	$s4, $zero
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$s5, $a1, %pc_lo12(.L.str.4)
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
	move	$s6, $a4
	.p2align	4, , 16
.LBB5_6:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	sub.d	$a0, $a0, $s0
	bstrpick.d	$s0, $a0, 31, 0
	add.d	$s7, $fp, $s0
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $s2
	move	$a3, $s7
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	bltu	$s2, $fp, .LBB5_2
# %bb.7:                                # %land.lhs.true14
                                        #   in Loop: Header=BB5_6 Depth=1
	addi.d	$a0, $s2, 4
	bltu	$s8, $a0, .LBB5_2
# %bb.8:                                # %land.lhs.true14
                                        #   in Loop: Header=BB5_6 Depth=1
	addi.d	$a0, $s0, 4
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB5_2
# %bb.9:                                # %if.end
                                        #   in Loop: Header=BB5_6 Depth=1
	addi.d	$a4, $sp, 96
	addi.d	$a5, $sp, 88
	move	$a0, $s2
	move	$a1, $s7
	move	$a2, $s1
	move	$a3, $s6
	pcaddu18i	$ra, %call36(unmew)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_21
# %bb.10:                               # %land.lhs.true41
                                        #   in Loop: Header=BB5_6 Depth=1
	ld.d	$a0, $sp, 96
	bltu	$a0, $fp, .LBB5_21
# %bb.11:                               # %land.lhs.true43
                                        #   in Loop: Header=BB5_6 Depth=1
	addi.d	$a1, $a0, 4
	bltu	$s8, $a1, .LBB5_21
# %bb.12:                               # %if.end52
                                        #   in Loop: Header=BB5_6 Depth=1
	ld.d	$a2, $sp, 88
	sub.d	$a3, $s2, $a1
	ld.w	$a0, $a0, 0
	add.w	$s1, $s1, $a3
	sub.d	$a2, $s7, $a2
	add.w	$s6, $s6, $a2
	addi.w	$s4, $s4, 1
	move	$s2, $a1
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	bnez	$a0, .LBB5_6
# %bb.13:                               # %if.then121
	addi.w	$a1, $zero, -8
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	bge	$a0, $a1, .LBB5_25
.LBB5_14:                               # %if.then149
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	b	.LBB5_3
.LBB5_15:                               # %while.cond.outer.us270.preheader
	move	$s4, $a4
	sub.d	$a0, $a0, $s0
	bstrpick.d	$s3, $a0, 31, 0
	add.d	$s5, $fp, $s3
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	move	$a1, $zero
	move	$a2, $s2
	move	$a3, $s5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -12
	blt	$s6, $a0, .LBB5_2
# %bb.16:                               # %land.lhs.true14.us.us.peel
	addi.d	$a0, $s6, 16
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB5_2
# %bb.17:                               # %land.lhs.true14.us.us.peel
	addi.d	$a0, $s3, 4
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB5_2
# %bb.18:                               # %if.end.us.us.peel
	addi.d	$a4, $sp, 96
	addi.d	$a5, $sp, 88
	move	$a0, $s2
	move	$a1, $s5
	move	$a2, $s1
	move	$a3, $s4
	pcaddu18i	$ra, %call36(unmew)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_21
# %bb.19:                               # %land.lhs.true41.us.us.peel
	ld.d	$a0, $sp, 96
	bltu	$a0, $fp, .LBB5_21
# %bb.20:                               # %land.lhs.true43.us.us.peel
	addi.d	$s7, $a0, 4
	bgeu	$s8, $s7, .LBB5_34
.LBB5_21:
	move	$a0, $zero
.LBB5_22:                               # %if.then36
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB5_23:                               # %cleanup220
	addi.w	$a0, $zero, -1
.LBB5_24:                               # %cleanup220
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.LBB5_25:                               # %land.lhs.true133
	add.d	$s1, $fp, $a0
	addi.d	$a0, $s1, 9
	bltu	$s8, $a0, .LBB5_14
# %bb.26:                               # %land.lhs.true133
	bgeu	$fp, $a0, .LBB5_14
# %bb.27:                               # %if.end150
	ld.bu	$a0, $s1, 8
	addi.d	$a0, $a0, -80
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(.L.str.11)
	addi.d	$a1, $a1, %pc_lo12(.L.str.11)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.10)
	addi.d	$a2, $a2, %pc_lo12(.L.str.10)
	maskeqz	$a0, $a2, $a0
	or	$a1, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 29
	bltu	$s3, $a0, .LBB5_33
# %bb.28:                               # %land.lhs.true163
	ld.d	$a0, $sp, 96
	addi.d	$a1, $a0, 4
	bltu	$a1, $fp, .LBB5_33
# %bb.29:                               # %land.lhs.true163
	addi.d	$a0, $a0, 33
	bltu	$s8, $a0, .LBB5_33
# %bb.30:                               # %if.end184
	ld.bu	$a0, $s1, 8
	addi.d	$a0, $a0, -80
	sltui	$a4, $a0, 1
	move	$a0, $fp
	move	$a2, $s3
	move	$a3, $s0
	pcaddu18i	$ra, %call36(mew_lzma)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.w	$a0, $zero, -1
	bnez	$a1, .LBB5_24
# %bb.31:                               # %if.end195
	move	$s0, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 36
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_52
# %bb.32:                               # %if.end205
	st.w	$zero, $a0, 8
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.w	$a1, $a0, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.w	$a1, $a0, 4
	st.w	$a1, $a0, 12
	b	.LBB5_46
.LBB5_33:                               # %if.then183
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	b	.LBB5_3
.LBB5_34:                               # %if.end85.us.peel
	ld.d	$s3, $sp, 88
	ld.w	$s6, $a0, 0
	ori	$a1, $zero, 72
	move	$a0, $zero
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_49
# %bb.35:                               # %if.end115.us.peel
	sub.d	$a1, $s3, $fp
	srai.d	$a2, $a1, 63
	srli.d	$a2, $a2, 52
	add.d	$a2, $a1, $a2
	srli.d	$a2, $a2, 12
	andi	$a1, $a1, 4095
	sltu	$a1, $zero, $a1
	add.d	$a1, $a2, $a1
	slli.d	$a1, $a1, 12
	st.w	$zero, $a0, 8
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	st.w	$a2, $a0, 0
	add.d	$a2, $a1, $a2
	st.w	$a2, $a0, 36
	ld.d	$a2, $sp, 96
	st.w	$a1, $a0, 44
	st.w	$a1, $a0, 4
	st.w	$a1, $a0, 12
	ld.w	$a1, $a2, 0
	beqz	$a1, .LBB5_46
# %bb.36:                               # %while.cond.outer.us270.preheader303
	move	$a3, $zero
	sub.d	$a1, $s2, $s7
	add.w	$a1, $s1, $a1
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	sub.d	$a1, $s5, $s3
	add.w	$a1, $s4, $a1
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ori	$s0, $zero, 1
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	move	$a1, $a0
.LBB5_37:                               # %while.cond.outer.us270
                                        # =>This Inner Loop Header: Depth=1
	move	$s2, $a3
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	sub.d	$a0, $s6, $a0
	bstrpick.d	$s1, $a0, 31, 0
	add.d	$s6, $fp, $s1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $s0
	move	$a2, $s7
	move	$a3, $s6
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	bltu	$s7, $fp, .LBB5_2
# %bb.38:                               # %land.lhs.true14.us.us
                                        #   in Loop: Header=BB5_37 Depth=1
	addi.d	$a0, $s7, 4
	bltu	$s8, $a0, .LBB5_2
# %bb.39:                               # %land.lhs.true14.us.us
                                        #   in Loop: Header=BB5_37 Depth=1
	addi.d	$a0, $s1, 4
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB5_2
# %bb.40:                               # %if.end.us.us
                                        #   in Loop: Header=BB5_37 Depth=1
	addi.d	$a4, $sp, 96
	addi.d	$a5, $sp, 88
	move	$a0, $s7
	move	$a1, $s6
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(unmew)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_53
# %bb.41:                               # %land.lhs.true41.us.us
                                        #   in Loop: Header=BB5_37 Depth=1
	ld.d	$a1, $sp, 96
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	bltu	$a1, $fp, .LBB5_22
# %bb.42:                               # %land.lhs.true43.us.us
                                        #   in Loop: Header=BB5_37 Depth=1
	addi.d	$s3, $a1, 4
	bltu	$s8, $s3, .LBB5_22
# %bb.43:                               # %land.lhs.true81.us
                                        #   in Loop: Header=BB5_37 Depth=1
	ld.d	$s1, $sp, 88
	sub.d	$a2, $s1, $fp
	srai.d	$a3, $a2, 63
	srli.d	$a3, $a3, 52
	add.d	$a3, $a2, $a3
	srli.d	$a3, $a3, 12
	andi	$a2, $a2, 4095
	add.d	$a4, $a0, $s2
	ld.w	$a4, $a4, 44
	sltu	$a2, $zero, $a2
	add.d	$a2, $a3, $a2
	slli.w	$s5, $a2, 12
	bltu	$s5, $a4, .LBB5_54
# %bb.44:                               # %if.end85.us
                                        #   in Loop: Header=BB5_37 Depth=1
	ld.w	$s4, $a1, 0
	addi.d	$a1, $s2, 108
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_50
# %bb.45:                               # %if.end115.us
                                        #   in Loop: Header=BB5_37 Depth=1
	st.w	$zero, $a0, 8
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.w	$a1, $a0, 0
	add.d	$a2, $a0, $s2
	ld.w	$a3, $a2, 44
	add.d	$a1, $s5, $a1
	st.w	$a1, $a2, 72
	st.w	$s5, $a2, 80
	sub.d	$a1, $s5, $a3
	st.w	$a1, $a2, 40
	ld.d	$a3, $sp, 96
	st.w	$a1, $a2, 48
	sub.d	$a1, $s7, $s3
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	add.w	$a2, $a2, $a1
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	ld.w	$a2, $a3, 0
	sub.d	$a1, $s6, $s1
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	add.w	$a3, $a3, $a1
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a3, $s2, 36
	addi.w	$s0, $s0, 1
	move	$a1, $a0
	move	$s7, $s3
	move	$s6, $s4
	bnez	$a2, .LBB5_37
	b	.LBB5_47
.LBB5_46:                               # %if.end214
	ori	$s0, $zero, 1
.LBB5_47:                               # %if.end214
	ld.d	$a7, $sp, 208
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	sub.w	$a4, $a1, $a3
	move	$a1, $a0
	move	$a0, $fp
	move	$fp, $a1
	move	$a2, $s0
	move	$a5, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(cli_rebuildpe)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_51
# %bb.48:                               # %if.end219
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	b	.LBB5_24
.LBB5_49:
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
.LBB5_50:                               # %if.then91
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	b	.LBB5_22
.LBB5_51:                               # %if.then218
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	b	.LBB5_55
.LBB5_52:                               # %if.then204
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	b	.LBB5_24
.LBB5_53:
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	b	.LBB5_22
.LBB5_54:                               # %if.then84
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	move	$fp, $a0
	move	$a0, $a1
.LBB5_55:                               # %cleanup220
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	b	.LBB5_22
.Lfunc_end5:
	.size	unmew11, .Lfunc_end5-unmew11
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"MEWlzma: entering do while loop\n"
	.size	.L.str, 33

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"MEWlen: %08x ? %08x\n"
	.size	.L.str.1, 21

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"contain error! %08x %08x ecx: %08x [%08x]\n"
	.size	.L.str.2, 43

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"contain error! %08x %08x p0: %08x [%08x]\n"
	.size	.L.str.3, 42

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"MEW unpacking section %d (%08x->%08x)\n"
	.size	.L.str.4, 39

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Possibly programmer error or hand-crafted PE file, report to clamav team\n"
	.size	.L.str.5, 74

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"MEW: WTF - please report\n"
	.size	.L.str.6, 26

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"MEW: Out of memory\n"
	.size	.L.str.7, 20

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"MEW: couldn't access lzma 'special' tag\n"
	.size	.L.str.8, 41

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"MEW: lzma %swas used, unpacking\n"
	.size	.L.str.9, 33

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"special "
	.size	.L.str.10, 9

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.space	1
	.size	.L.str.11, 1

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"MEW: lzma initialization data not available!\n"
	.size	.L.str.12, 46

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"MEW: Rebuilding failed\n"
	.size	.L.str.13, 24

	.section	".note.GNU-stack","",@progbits
	.addrsig
