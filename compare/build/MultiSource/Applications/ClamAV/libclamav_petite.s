	.file	"libclamav_petite.c"
	.text
	.globl	petite_inflate2x_1to9           # -- Begin function petite_inflate2x_1to9
	.p2align	5
	.type	petite_inflate2x_1to9,@function
petite_inflate2x_1to9:                  # @petite_inflate2x_1to9
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -400
	st.d	$ra, $sp, 392                   # 8-byte Folded Spill
	st.d	$fp, $sp, 384                   # 8-byte Folded Spill
	st.d	$s0, $sp, 376                   # 8-byte Folded Spill
	st.d	$s1, $sp, 368                   # 8-byte Folded Spill
	st.d	$s2, $sp, 360                   # 8-byte Folded Spill
	st.d	$s3, $sp, 352                   # 8-byte Folded Spill
	st.d	$s4, $sp, 344                   # 8-byte Folded Spill
	st.d	$s5, $sp, 336                   # 8-byte Folded Spill
	st.d	$s6, $sp, 328                   # 8-byte Folded Spill
	st.d	$s7, $sp, 320                   # 8-byte Folded Spill
	st.d	$s8, $sp, 312                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 400
	move	$s8, $a2
	move	$s1, $a0
	bstrpick.d	$t1, $a1, 31, 0
	ori	$a0, $zero, 2
	sub.d	$s7, $s1, $t1
	bne	$t0, $a0, .LBB0_2
# %bb.1:
	ori	$t3, $zero, 53
	ori	$t4, $zero, 853
	ori	$a0, $zero, 440
	b	.LBB0_4
.LBB0_2:                                # %if.end
	ori	$a0, $zero, 1
	bne	$t0, $a0, .LBB0_5
# %bb.3:
	ori	$t3, $zero, 52
	ori	$t4, $zero, 803
	ori	$a0, $zero, 376
.LBB0_4:                                # %if.end13.sink.split
	addi.d	$a2, $a4, -1
	bstrpick.d	$t2, $a2, 31, 0
	slli.d	$a2, $t2, 5
	alsl.d	$a2, $t2, $a2, 2
	ldx.wu	$a2, $a3, $a2
	add.d	$a2, $s7, $a2
	add.d	$s4, $a2, $a0
	ori	$a0, $zero, 4
	ori	$s0, $zero, 1
	bgeu	$s8, $a0, .LBB0_6
	b	.LBB0_196
.LBB0_5:
	move	$s4, $zero
	ori	$t3, $zero, 53
	ori	$t4, $zero, 853
	ori	$a0, $zero, 4
	ori	$s0, $zero, 1
	bltu	$s8, $a0, .LBB0_196
.LBB0_6:                                # %if.end13
	st.d	$a1, $sp, 272                   # 8-byte Folded Spill
	st.d	$a6, $sp, 208                   # 8-byte Folded Spill
	bltu	$s4, $s1, .LBB0_196
# %bb.7:                                # %land.lhs.true18.lr.ph
	st.d	$t0, $sp, 136                   # 8-byte Folded Spill
	st.d	$a3, $sp, 200                   # 8-byte Folded Spill
	st.d	$a5, $sp, 152                   # 8-byte Folded Spill
	st.d	$a7, $sp, 112                   # 8-byte Folded Spill
	st.d	$zero, $sp, 288                 # 8-byte Folded Spill
	st.d	$zero, $sp, 120                 # 8-byte Folded Spill
	st.d	$zero, $sp, 80                  # 8-byte Folded Spill
	move	$s5, $zero
	move	$t5, $zero
	st.d	$zero, $sp, 64                  # 8-byte Folded Spill
	move	$s6, $zero
	ld.d	$a0, $sp, 416
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 408
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	bstrpick.d	$s0, $s8, 31, 0
	add.d	$t7, $s1, $s0
	nor	$a0, $t1, $zero
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	st.d	$t1, $sp, 240                   # 8-byte Folded Spill
	add.d	$a0, $t1, $s0
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	addi.d	$s3, $t7, -1
	sub.d	$a0, $zero, $t4
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	st.d	$t4, $sp, 168                   # 8-byte Folded Spill
	add.d	$a0, $t3, $t4
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	st.d	$t3, $sp, 72                    # 8-byte Folded Spill
	sub.d	$a0, $zero, $t3
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	st.d	$a4, $sp, 216                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a4, 31, 0
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	addi.w	$ra, $zero, -1
	lu12i.w	$a0, 3
	ori	$a0, $a0, 3999
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	lu12i.w	$a0, 411116
	ori	$a0, $a0, 51
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	lu12i.w	$a0, 112817
	ori	$a0, $a0, 2187
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	lu12i.w	$a0, 476906
	ori	$a0, $a0, 1321
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	lu12i.w	$a0, -403866
	ori	$a0, $a0, 426
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	lu12i.w	$a0, -456439
	ori	$a0, $a0, 144
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	st.d	$t7, $sp, 304                   # 8-byte Folded Spill
	st.d	$ra, $sp, 296                   # 8-byte Folded Spill
	st.d	$s8, $sp, 256                   # 8-byte Folded Spill
	st.d	$s7, $sp, 264                   # 8-byte Folded Spill
.LBB0_8:                                # %land.lhs.true18
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_20 Depth 2
                                        #     Child Loop BB0_29 Depth 2
                                        #       Child Loop BB0_42 Depth 3
                                        #       Child Loop BB0_54 Depth 3
                                        #       Child Loop BB0_72 Depth 3
                                        #       Child Loop BB0_92 Depth 3
                                        #       Child Loop BB0_95 Depth 3
	addi.d	$a0, $s4, 4
	bltu	$t7, $a0, .LBB0_141
# %bb.9:                                # %if.end29
                                        #   in Loop: Header=BB0_8 Depth=1
	ld.w	$s2, $s4, 0
	beqz	$s2, .LBB0_143
# %bb.10:                               # %if.end326
                                        #   in Loop: Header=BB0_8 Depth=1
	bge	$ra, $s2, .LBB0_97
# %bb.11:                               # %if.else439
                                        #   in Loop: Header=BB0_8 Depth=1
	ori	$a0, $zero, 8
	bltu	$s8, $a0, .LBB0_139
# %bb.12:                               # %if.else439
                                        #   in Loop: Header=BB0_8 Depth=1
	addi.d	$a0, $s4, 12
	bltu	$t7, $a0, .LBB0_139
# %bb.13:                               # %if.end465
                                        #   in Loop: Header=BB0_8 Depth=1
	ori	$a0, $zero, 95
	blt	$a0, $s6, .LBB0_149
# %bb.14:                               # %if.end474
                                        #   in Loop: Header=BB0_8 Depth=1
	st.d	$t5, $sp, 280                   # 8-byte Folded Spill
	ld.w	$s8, $s4, 4
	ld.wu	$s7, $s4, 8
	addi.w	$a1, $s6, 1
	slli.d	$a0, $a1, 5
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	alsl.d	$a1, $a1, $a0, 2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_139
# %bb.15:                               # %if.end484
                                        #   in Loop: Header=BB0_8 Depth=1
	move	$fp, $a0
	addi.d	$t6, $s4, 16
	slli.d	$a0, $s6, 5
	alsl.d	$a0, $s6, $a0, 2
	add.d	$s5, $fp, $a0
	stx.w	$s7, $fp, $a0
	st.w	$s8, $s5, 12
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	sub.w	$a0, $a0, $s7
	slt	$a1, $zero, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s8, $a1
	or	$a0, $a0, $a1
	st.w	$a0, $s5, 4
	st.w	$zero, $s5, 8
	ld.d	$ra, $sp, 296                   # 8-byte Folded Reload
	beqz	$s8, .LBB0_106
# %bb.16:                               # %if.end510
                                        #   in Loop: Header=BB0_8 Depth=1
	move	$t8, $s6
	addi.w	$a0, $s7, 0
	ld.d	$t7, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 232                   # 8-byte Folded Reload
	ori	$s6, $zero, 64
	ld.d	$t5, $sp, 280                   # 8-byte Folded Reload
	bnez	$t5, .LBB0_23
# %bb.17:                               # %if.end510
                                        #   in Loop: Header=BB0_8 Depth=1
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	beqz	$a1, .LBB0_23
# %bb.18:                               # %for.body520.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	b	.LBB0_20
	.p2align	4, , 16
.LBB0_19:                               # %for.inc552
                                        #   in Loop: Header=BB0_20 Depth=2
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 36
	beqz	$a2, .LBB0_23
.LBB0_20:                               # %for.body520
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a1, 0
	bgeu	$a3, $a0, .LBB0_19
# %bb.21:                               # %lor.lhs.false526
                                        #   in Loop: Header=BB0_20 Depth=2
	ld.w	$a4, $a1, 4
	add.w	$a4, $a4, $a3
	bgeu	$a0, $a4, .LBB0_19
# %bb.22:                               # %if.end537
                                        #   in Loop: Header=BB0_8 Depth=1
	st.w	$a3, $s5, 0
	ld.w	$a1, $a1, 0
	add.d	$a2, $s7, $s8
	sub.d	$a1, $a2, $a1
	st.w	$a1, $s5, 12
	.p2align	4, , 16
.LBB0_23:                               # %if.end555
                                        #   in Loop: Header=BB0_8 Depth=1
	move	$s4, $s0
	ori	$s0, $zero, 1
	bltu	$s2, $a5, .LBB0_140
# %bb.24:                               # %land.lhs.true575
                                        #   in Loop: Header=BB0_8 Depth=1
	bgeu	$s2, $a6, .LBB0_140
# %bb.25:                               # %land.lhs.true575
                                        #   in Loop: Header=BB0_8 Depth=1
	bltu	$a0, $a5, .LBB0_140
# %bb.26:                               # %land.lhs.true575
                                        #   in Loop: Header=BB0_8 Depth=1
	bgeu	$s7, $a6, .LBB0_140
# %bb.27:                               # %if.end605
                                        #   in Loop: Header=BB0_8 Depth=1
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	add.d	$a5, $a0, $s2
	ld.b	$a1, $a5, 0
	add.d	$a2, $a0, $s7
	move	$s7, $a0
	addi.d	$a3, $a2, 1
	addi.w	$a0, $s8, -1
	st.b	$a1, $a2, 0
	beqz	$a0, .LBB0_107
# %bb.28:                               # %while.body611.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	move	$a6, $zero
	move	$t1, $zero
	bstrpick.d	$a1, $s8, 31, 16
	sltui	$a4, $a1, 1
	bstrpick.d	$a1, $s8, 31, 18
	sltui	$a7, $a1, 1
	lu12i.w	$a2, 7
	ori	$a1, $a2, 3327
	masknez	$a1, $a1, $a7
	ori	$a2, $a2, 3711
	maskeqz	$a2, $a2, $a7
	or	$a1, $a2, $a1
	ori	$a2, $zero, 1279
	masknez	$a2, $a2, $a7
	ori	$t0, $zero, 1663
	maskeqz	$t0, $t0, $a7
	or	$a2, $t0, $a2
	masknez	$a1, $a1, $a4
	ld.d	$t0, $sp, 192                   # 8-byte Folded Reload
	maskeqz	$t0, $t0, $a4
	or	$a1, $t0, $a1
	masknez	$a2, $a2, $a4
	ori	$t0, $zero, 927
	maskeqz	$t0, $t0, $a4
	or	$a2, $t0, $a2
	ori	$t0, $zero, 8
	sub.d	$a7, $t0, $a7
	masknez	$a7, $a7, $a4
	ori	$t0, $zero, 5
	maskeqz	$a4, $t0, $a4
	or	$a4, $a4, $a7
	addi.d	$a5, $a5, 1
	ld.d	$s8, $sp, 256                   # 8-byte Folded Reload
.LBB0_29:                               # %while.body611
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_42 Depth 3
                                        #       Child Loop BB0_54 Depth 3
                                        #       Child Loop BB0_72 Depth 3
                                        #       Child Loop BB0_92 Depth 3
                                        #       Child Loop BB0_95 Depth 3
	andi	$a7, $t1, 127
	beqz	$a7, .LBB0_36
# %bb.30:                               #   in Loop: Header=BB0_29 Depth=2
	slli.d	$a7, $t1, 1
	ext.w.b	$t0, $t1
	bge	$ra, $t0, .LBB0_39
.LBB0_31:                               # %land.lhs.true624
                                        #   in Loop: Header=BB0_29 Depth=2
	bltu	$a5, $s1, .LBB0_140
# %bb.32:                               # %land.lhs.true627
                                        #   in Loop: Header=BB0_29 Depth=2
	addi.d	$t2, $a5, 1
	bltu	$t7, $t2, .LBB0_140
# %bb.33:                               # %land.lhs.true627
                                        #   in Loop: Header=BB0_29 Depth=2
	bltu	$a3, $s1, .LBB0_140
# %bb.34:                               # %land.lhs.true646
                                        #   in Loop: Header=BB0_29 Depth=2
	addi.d	$t0, $a3, 1
	bltu	$t7, $t0, .LBB0_140
# %bb.35:                               # %if.end657
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.b	$a5, $a5, 0
	xor	$a5, $a5, $a0
	st.b	$a5, $a3, 0
	addi.w	$a0, $a0, -1
	move	$a3, $t0
	move	$t1, $a7
	move	$a5, $t2
	bnez	$a0, .LBB0_29
	b	.LBB0_108
	.p2align	4, , 16
.LBB0_36:                               # %if.then.i
                                        #   in Loop: Header=BB0_29 Depth=2
	bltu	$a5, $s1, .LBB0_140
# %bb.37:                               # %if.then.i
                                        #   in Loop: Header=BB0_29 Depth=2
	bgeu	$a5, $s3, .LBB0_140
# %bb.38:                               # %if.end.i
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.bu	$t1, $a5, 0
	slli.d	$a7, $t1, 1
	addi.d	$a7, $a7, 1
	addi.d	$a5, $a5, 1
	ext.w.b	$t0, $t1
	blt	$ra, $t0, .LBB0_31
.LBB0_39:                               # %while.cond666.preheader
                                        #   in Loop: Header=BB0_29 Depth=2
	ori	$t1, $zero, 1
	b	.LBB0_42
	.p2align	4, , 16
.LBB0_40:                               #   in Loop: Header=BB0_42 Depth=3
	slli.d	$a7, $t2, 1
.LBB0_41:                               # %doubledl.exit605
                                        #   in Loop: Header=BB0_42 Depth=3
	bstrpick.d	$t0, $t0, 7, 7
	slli.w	$t1, $t1, 1
	ext.w.b	$t2, $t2
	or	$t1, $t1, $t0
	bgez	$t2, .LBB0_50
.LBB0_42:                               # %while.cond666
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	andi	$t0, $a7, 127
	beqz	$t0, .LBB0_44
# %bb.43:                               #   in Loop: Header=BB0_42 Depth=3
	slli.d	$t2, $a7, 1
	move	$t0, $a7
	andi	$a7, $t2, 127
	bnez	$a7, .LBB0_40
	b	.LBB0_47
	.p2align	4, , 16
.LBB0_44:                               # %if.then.i575
                                        #   in Loop: Header=BB0_42 Depth=3
	bltu	$a5, $s1, .LBB0_137
# %bb.45:                               # %if.then.i575
                                        #   in Loop: Header=BB0_42 Depth=3
	bgeu	$a5, $s3, .LBB0_137
# %bb.46:                               # %if.end.i582
                                        #   in Loop: Header=BB0_42 Depth=3
	ld.bu	$t0, $a5, 0
	slli.d	$a7, $t0, 1
	addi.d	$t2, $a7, 1
	addi.d	$a5, $a5, 1
	andi	$a7, $t2, 127
	bnez	$a7, .LBB0_40
.LBB0_47:                               # %if.then.i594
                                        #   in Loop: Header=BB0_42 Depth=3
	bltu	$a5, $s1, .LBB0_137
# %bb.48:                               # %if.then.i594
                                        #   in Loop: Header=BB0_42 Depth=3
	bgeu	$a5, $s3, .LBB0_137
# %bb.49:                               # %if.end.i601
                                        #   in Loop: Header=BB0_42 Depth=3
	ld.bu	$t2, $a5, 0
	slli.d	$a7, $t2, 1
	addi.d	$a7, $a7, 1
	addi.d	$a5, $a5, 1
	b	.LBB0_41
.LBB0_50:                               # %while.end683
                                        #   in Loop: Header=BB0_29 Depth=2
	ori	$t0, $zero, 3
	blt	$t1, $t0, .LBB0_58
# %bb.51:                               # %if.then687
                                        #   in Loop: Header=BB0_29 Depth=2
	addi.d	$t0, $t1, -3
	move	$a6, $a4
	b	.LBB0_54
	.p2align	4, , 16
.LBB0_52:                               #   in Loop: Header=BB0_54 Depth=3
	slli.d	$t1, $a7, 1
.LBB0_53:                               # %doubledl.exit624
                                        #   in Loop: Header=BB0_54 Depth=3
	bstrpick.d	$a7, $a7, 7, 7
	slli.w	$t0, $t0, 1
	addi.w	$a6, $a6, -1
	or	$t0, $t0, $a7
	move	$a7, $t1
	beqz	$a6, .LBB0_61
.LBB0_54:                               # %do.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	andi	$t1, $a7, 127
	bnez	$t1, .LBB0_52
# %bb.55:                               # %if.then.i613
                                        #   in Loop: Header=BB0_54 Depth=3
	bltu	$a5, $s1, .LBB0_137
# %bb.56:                               # %if.then.i613
                                        #   in Loop: Header=BB0_54 Depth=3
	bgeu	$a5, $s3, .LBB0_137
# %bb.57:                               # %if.end.i620
                                        #   in Loop: Header=BB0_54 Depth=3
	ld.bu	$a7, $a5, 0
	slli.d	$t1, $a7, 1
	addi.d	$t1, $t1, 1
	addi.d	$a5, $a5, 1
	b	.LBB0_53
.LBB0_58:                               # %if.else706
                                        #   in Loop: Header=BB0_29 Depth=2
	move	$t0, $zero
	addi.d	$t2, $zero, -4
	alsl.w	$t2, $t1, $t2, 1
	move	$t1, $a7
	andi	$a7, $t1, 127
	beqz	$a7, .LBB0_62
.LBB0_59:                               #   in Loop: Header=BB0_29 Depth=2
	slli.d	$t3, $t1, 1
	andi	$a7, $t3, 127
	beqz	$a7, .LBB0_65
.LBB0_60:                               #   in Loop: Header=BB0_29 Depth=2
	slli.d	$a7, $t3, 1
	b	.LBB0_68
.LBB0_61:                               # %do.end
                                        #   in Loop: Header=BB0_29 Depth=2
	move	$t2, $zero
	nor	$a6, $t0, $zero
	slt	$a7, $a2, $t0
	slt	$t0, $a1, $t0
	add.d	$a7, $a7, $t0
	addi.d	$t0, $a7, 1
	andi	$a7, $t1, 127
	bnez	$a7, .LBB0_59
.LBB0_62:                               # %if.then.i632
                                        #   in Loop: Header=BB0_29 Depth=2
	bltu	$a5, $s1, .LBB0_137
# %bb.63:                               # %if.then.i632
                                        #   in Loop: Header=BB0_29 Depth=2
	bgeu	$a5, $s3, .LBB0_137
# %bb.64:                               # %if.end.i639
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.bu	$t1, $a5, 0
	slli.d	$a7, $t1, 1
	addi.d	$t3, $a7, 1
	addi.d	$a5, $a5, 1
	andi	$a7, $t3, 127
	bnez	$a7, .LBB0_60
.LBB0_65:                               # %if.then.i651
                                        #   in Loop: Header=BB0_29 Depth=2
	bltu	$a5, $s1, .LBB0_137
# %bb.66:                               # %if.then.i651
                                        #   in Loop: Header=BB0_29 Depth=2
	bgeu	$a5, $s3, .LBB0_137
# %bb.67:                               # %if.end.i658
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.bu	$t3, $a5, 0
	slli.d	$a7, $t3, 1
	addi.d	$a7, $a7, 1
	addi.d	$a5, $a5, 1
.LBB0_68:                               # %doubledl.exit662
                                        #   in Loop: Header=BB0_29 Depth=2
	bstrpick.d	$t1, $t1, 7, 7
	bstrpick.d	$t3, $t3, 7, 7
	add.d	$t1, $t2, $t1
	slli.w	$t1, $t1, 1
	or	$t1, $t1, $t3
	bnez	$t1, .LBB0_81
# %bb.69:                               # %while.cond726.preheader
                                        #   in Loop: Header=BB0_29 Depth=2
	ori	$t1, $zero, 1
	b	.LBB0_72
	.p2align	4, , 16
.LBB0_70:                               #   in Loop: Header=BB0_72 Depth=3
	slli.d	$a7, $t3, 1
.LBB0_71:                               # %doubledl.exit700
                                        #   in Loop: Header=BB0_72 Depth=3
	bstrpick.d	$t2, $t2, 7, 7
	slli.d	$t1, $t1, 1
	ext.w.b	$t3, $t3
	or	$t1, $t1, $t2
	bgez	$t3, .LBB0_80
.LBB0_72:                               # %while.cond726
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	andi	$t2, $a7, 127
	beqz	$t2, .LBB0_74
# %bb.73:                               #   in Loop: Header=BB0_72 Depth=3
	slli.d	$t3, $a7, 1
	move	$t2, $a7
	andi	$a7, $t3, 127
	bnez	$a7, .LBB0_70
	b	.LBB0_77
	.p2align	4, , 16
.LBB0_74:                               # %if.then.i670
                                        #   in Loop: Header=BB0_72 Depth=3
	bltu	$a5, $s1, .LBB0_137
# %bb.75:                               # %if.then.i670
                                        #   in Loop: Header=BB0_72 Depth=3
	bgeu	$a5, $s3, .LBB0_137
# %bb.76:                               # %if.end.i677
                                        #   in Loop: Header=BB0_72 Depth=3
	ld.bu	$t2, $a5, 0
	slli.d	$a7, $t2, 1
	addi.d	$t3, $a7, 1
	addi.d	$a5, $a5, 1
	andi	$a7, $t3, 127
	bnez	$a7, .LBB0_70
.LBB0_77:                               # %if.then.i689
                                        #   in Loop: Header=BB0_72 Depth=3
	bltu	$a5, $s1, .LBB0_137
# %bb.78:                               # %if.then.i689
                                        #   in Loop: Header=BB0_72 Depth=3
	bgeu	$a5, $s3, .LBB0_137
# %bb.79:                               # %if.end.i696
                                        #   in Loop: Header=BB0_72 Depth=3
	ld.bu	$t3, $a5, 0
	slli.d	$a7, $t3, 1
	addi.d	$a7, $a7, 1
	addi.d	$a5, $a5, 1
	b	.LBB0_71
.LBB0_80:                               # %while.end743
                                        #   in Loop: Header=BB0_29 Depth=2
	addi.d	$t1, $t1, 2
.LBB0_81:                               # %if.end745
                                        #   in Loop: Header=BB0_29 Depth=2
	add.w	$t2, $t1, $t0
	ori	$t0, $zero, 1
	blt	$t2, $t0, .LBB0_137
# %bb.82:                               # %if.end745
                                        #   in Loop: Header=BB0_29 Depth=2
	bltu	$s8, $t2, .LBB0_137
# %bb.83:                               # %if.end745
                                        #   in Loop: Header=BB0_29 Depth=2
	bltu	$a3, $s1, .LBB0_137
# %bb.84:                               # %land.lhs.true759
                                        #   in Loop: Header=BB0_29 Depth=2
	add.d	$t0, $a3, $t2
	bltu	$t7, $t0, .LBB0_137
# %bb.85:                               # %land.lhs.true759
                                        #   in Loop: Header=BB0_29 Depth=2
	bgeu	$s1, $t0, .LBB0_137
# %bb.86:                               # %land.lhs.true780
                                        #   in Loop: Header=BB0_29 Depth=2
	addi.w	$t1, $a6, 0
	add.d	$t0, $a3, $t1
	bltu	$t0, $s1, .LBB0_137
# %bb.87:                               # %land.lhs.true785
                                        #   in Loop: Header=BB0_29 Depth=2
	add.d	$t0, $t0, $t2
	bltu	$t7, $t0, .LBB0_137
# %bb.88:                               # %land.lhs.true785
                                        #   in Loop: Header=BB0_29 Depth=2
	bgeu	$s1, $t0, .LBB0_137
# %bb.89:                               # %while.body806.preheader
                                        #   in Loop: Header=BB0_29 Depth=2
	sub.w	$a0, $a0, $t2
	bltu	$t2, $s6, .LBB0_94
# %bb.90:                               # %while.body806.preheader
                                        #   in Loop: Header=BB0_29 Depth=2
	addi.d	$t0, $t1, 63
	bltu	$t0, $s6, .LBB0_94
# %bb.91:                               # %vector.ph
                                        #   in Loop: Header=BB0_29 Depth=2
	move	$s2, $t6
	bstrpick.d	$t0, $t2, 30, 6
	slli.d	$t4, $t0, 6
	sub.d	$t3, $t2, $t4
	add.d	$t0, $a3, $t4
	move	$t5, $t4
	.p2align	4, , 16
.LBB0_92:                               # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t6, $a3, $t1
	xvldx	$xr0, $a3, $t1
	xvld	$xr1, $t6, 32
	xvst	$xr0, $a3, 0
	xvst	$xr1, $a3, 32
	addi.d	$t5, $t5, -64
	addi.d	$a3, $a3, 64
	bnez	$t5, .LBB0_92
# %bb.93:                               # %middle.block
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.d	$t5, $sp, 280                   # 8-byte Folded Reload
	move	$t6, $s2
	bne	$t4, $t2, .LBB0_95
	b	.LBB0_96
.LBB0_94:                               #   in Loop: Header=BB0_29 Depth=2
	move	$t3, $t2
	move	$t0, $a3
	.p2align	4, , 16
.LBB0_95:                               # %while.body806
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.b	$a3, $t0, $t1
	addi.w	$t3, $t3, -1
	st.b	$a3, $t0, 0
	addi.d	$t0, $t0, 1
	bnez	$t3, .LBB0_95
.LBB0_96:                               #   in Loop: Header=BB0_29 Depth=2
	move	$t2, $a5
	move	$a3, $t0
	move	$t1, $a7
	move	$a5, $t2
	bnez	$a0, .LBB0_29
	b	.LBB0_108
	.p2align	4, , 16
.LBB0_97:                               # %if.then330
                                        #   in Loop: Header=BB0_8 Depth=1
	ld.d	$a5, $sp, 240                   # 8-byte Folded Reload
	ori	$a0, $zero, 8
	bltu	$s8, $a0, .LBB0_139
# %bb.98:                               # %land.lhs.true340
                                        #   in Loop: Header=BB0_8 Depth=1
	addi.d	$a6, $s4, 12
	bltu	$t7, $a6, .LBB0_139
# %bb.99:                               # %if.end356
                                        #   in Loop: Header=BB0_8 Depth=1
	alsl.w	$a0, $s2, $ra, 2
	bgeu	$a0, $s8, .LBB0_139
# %bb.100:                              # %if.end356
                                        #   in Loop: Header=BB0_8 Depth=1
	ld.w	$a0, $s4, 4
	slli.d	$a2, $s2, 2
	addi.d	$a1, $a2, -4
	bstrpick.d	$a1, $a1, 31, 2
	slli.d	$a1, $a1, 2
	sub.d	$a0, $a0, $a1
	blt	$a0, $a5, .LBB0_139
# %bb.101:                              # %land.lhs.true390
                                        #   in Loop: Header=BB0_8 Depth=1
	bstrpick.d	$a2, $a2, 31, 0
	sub.d	$a3, $a2, $a5
	add.d	$a3, $a3, $a0
	blt	$s0, $a3, .LBB0_139
# %bb.102:                              # %land.lhs.true390
                                        #   in Loop: Header=BB0_8 Depth=1
	ori	$a4, $zero, 1
	blt	$a3, $a4, .LBB0_139
# %bb.103:                              # %land.lhs.true390
                                        #   in Loop: Header=BB0_8 Depth=1
	ld.w	$a4, $s4, 8
	sub.d	$a3, $a4, $a1
	blt	$a3, $a5, .LBB0_139
# %bb.104:                              # %land.lhs.true417
                                        #   in Loop: Header=BB0_8 Depth=1
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	add.d	$a1, $a1, $a3
	bgeu	$a1, $s0, .LBB0_139
# %bb.105:                              # %if.end435
                                        #   in Loop: Header=BB0_8 Depth=1
	addi.d	$a1, $a4, 4
	st.d	$a1, $sp, 288                   # 8-byte Folded Spill
	add.d	$a1, $s7, $a0
	add.d	$a0, $s7, $a3
	move	$fp, $a6
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	move	$t6, $fp
	ld.d	$ra, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 304                   # 8-byte Folded Reload
	move	$t5, $zero
	move	$fp, $s5
	move	$s4, $t6
	move	$s5, $fp
	bgeu	$t6, $s1, .LBB0_8
	b	.LBB0_142
.LBB0_106:                              #   in Loop: Header=BB0_8 Depth=1
	ld.d	$s8, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 248                   # 8-byte Folded Reload
	move	$s4, $t6
	move	$s5, $fp
	bgeu	$t6, $s1, .LBB0_8
	b	.LBB0_142
.LBB0_107:                              #   in Loop: Header=BB0_8 Depth=1
	move	$t0, $a3
	ld.d	$s8, $sp, 256                   # 8-byte Folded Reload
.LBB0_108:                              # %while.end812
                                        #   in Loop: Header=BB0_8 Depth=1
	ld.d	$s6, $sp, 248                   # 8-byte Folded Reload
	beqz	$s6, .LBB0_124
# %bb.109:                              # %if.then814
                                        #   in Loop: Header=BB0_8 Depth=1
	ld.w	$a0, $s5, 12
	move	$s0, $s4
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	bgeu	$a1, $a0, .LBB0_111
# %bb.110:                              # %land.lhs.true827
                                        #   in Loop: Header=BB0_8 Depth=1
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	add.d	$a1, $t0, $a1
	addi.d	$a2, $a1, 84
	bgeu	$a2, $s1, .LBB0_117
.LBB0_111:                              # %land.lhs.true877
                                        #   in Loop: Header=BB0_8 Depth=1
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	bgeu	$a1, $a0, .LBB0_125
# %bb.112:                              # %land.lhs.true891
                                        #   in Loop: Header=BB0_8 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	add.d	$a0, $t0, $a0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	addi.d	$a1, $a0, 84
	bltu	$a1, $s1, .LBB0_125
# %bb.113:                              # %land.lhs.true902
                                        #   in Loop: Header=BB0_8 Depth=1
	addi.d	$a2, $a1, 8
	bltu	$t7, $a2, .LBB0_125
# %bb.114:                              # %land.lhs.true902
                                        #   in Loop: Header=BB0_8 Depth=1
	bgeu	$s1, $a2, .LBB0_125
# %bb.115:                              # %land.lhs.true928
                                        #   in Loop: Header=BB0_8 Depth=1
	ld.w	$a1, $a1, 0
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	bne	$a1, $a2, .LBB0_125
# %bb.116:                              # %if.end954
                                        #   in Loop: Header=BB0_8 Depth=1
	ld.w	$a0, $a0, 88
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB0_122
	b	.LBB0_124
.LBB0_117:                              # %land.lhs.true835
                                        #   in Loop: Header=BB0_8 Depth=1
	addi.d	$a3, $a1, 92
	bltu	$t7, $a3, .LBB0_111
# %bb.118:                              # %land.lhs.true835
                                        #   in Loop: Header=BB0_8 Depth=1
	bgeu	$s1, $a3, .LBB0_111
# %bb.119:                              # %land.lhs.true855
                                        #   in Loop: Header=BB0_8 Depth=1
	ld.w	$a2, $a2, 0
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	bne	$a2, $a3, .LBB0_111
# %bb.120:                              # %if.end875
                                        #   in Loop: Header=BB0_8 Depth=1
	ld.w	$a1, $a1, 88
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	bne	$a1, $a2, .LBB0_111
# %bb.121:                              #   in Loop: Header=BB0_8 Depth=1
	move	$s0, $zero
.LBB0_122:                              # %land.lhs.true962
                                        #   in Loop: Header=BB0_8 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	add.d	$s7, $t0, $a0
	sub.d	$a0, $s7, $s0
	addi.d	$a0, $a0, 7
	bgeu	$a0, $s1, .LBB0_126
.LBB0_123:                              #   in Loop: Header=BB0_8 Depth=1
	ld.d	$s7, $sp, 264                   # 8-byte Folded Reload
.LBB0_124:                              #   in Loop: Header=BB0_8 Depth=1
	move	$s0, $s4
.LBB0_125:                              # %if.end954.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addi.w	$t5, $t5, 1
	move	$s4, $t6
	move	$s5, $fp
	bgeu	$t6, $s1, .LBB0_8
	b	.LBB0_142
.LBB0_126:                              # %land.lhs.true973
                                        #   in Loop: Header=BB0_8 Depth=1
	addi.d	$a1, $a0, 8
	bltu	$t7, $a1, .LBB0_123
# %bb.127:                              # %land.lhs.true973
                                        #   in Loop: Header=BB0_8 Depth=1
	bgeu	$s1, $a1, .LBB0_123
# %bb.128:                              # %if.then999
                                        #   in Loop: Header=BB0_8 Depth=1
	st.d	$t6, $sp, 32                    # 8-byte Folded Spill
	move	$s2, $s8
	sub.d	$s8, $zero, $s0
	ld.w	$s6, $a0, 0
	add.d	$a0, $s7, $s8
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 11
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a2, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	move	$a1, $t8
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 437
	bltu	$s2, $a0, .LBB0_132
# %bb.129:                              # %if.then999
                                        #   in Loop: Header=BB0_8 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	xor	$a0, $a0, $s6
	ld.d	$t7, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 32                    # 8-byte Folded Reload
	bne	$a0, $a1, .LBB0_131
# %bb.130:                              # %land.lhs.true1033
                                        #   in Loop: Header=BB0_8 Depth=1
	addi.d	$a0, $s7, 15
	add.d	$a0, $a0, $s8
	bgeu	$a0, $s1, .LBB0_133
.LBB0_131:                              #   in Loop: Header=BB0_8 Depth=1
	ld.d	$s8, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 264                   # 8-byte Folded Reload
	b	.LBB0_136
.LBB0_132:                              #   in Loop: Header=BB0_8 Depth=1
	ld.d	$s8, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 32                    # 8-byte Folded Reload
	b	.LBB0_136
.LBB0_133:                              # %land.lhs.true1043
                                        #   in Loop: Header=BB0_8 Depth=1
	addi.d	$a1, $a0, 437
	ld.d	$s8, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 264                   # 8-byte Folded Reload
	bltu	$t7, $a1, .LBB0_136
# %bb.134:                              # %land.lhs.true1043
                                        #   in Loop: Header=BB0_8 Depth=1
	bgeu	$s1, $a1, .LBB0_136
# %bb.135:                              # %if.then1071
                                        #   in Loop: Header=BB0_8 Depth=1
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a2, $a1, 289
	ld.w	$a3, $a1, 448
	xor	$a0, $s6, $a0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	xor	$a0, $a0, $a1
	addi.w	$a1, $a0, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	xor	$a0, $a3, $a0
	sltu	$a0, $zero, $a0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$t6, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 280                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 304                   # 8-byte Folded Reload
.LBB0_136:                              # %if.end1099
                                        #   in Loop: Header=BB0_8 Depth=1
	ld.w	$a0, $s5, 12
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	add.d	$a1, $s0, $a1
	sub.d	$a0, $a0, $a1
	st.w	$a0, $s5, 12
	move	$s0, $s4
	ld.d	$s6, $sp, 248                   # 8-byte Folded Reload
	b	.LBB0_125
.LBB0_137:
	move	$s5, $fp
.LBB0_138:                              # %cleanup1126.sink.split
	ori	$s0, $zero, 1
	b	.LBB0_195
.LBB0_139:                              # %if.then352
	ori	$s0, $zero, 1
	bnez	$s5, .LBB0_195
	b	.LBB0_196
.LBB0_140:
	move	$s5, $fp
	b	.LBB0_195
.LBB0_141:
	move	$fp, $s5
.LBB0_142:                              # %if.then26
	ori	$s0, $zero, 1
	move	$s5, $fp
	bnez	$fp, .LBB0_195
	b	.LBB0_196
.LBB0_143:                              # %if.then31
	move	$s3, $s0
	ori	$s0, $zero, 1
	ld.d	$t4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 240                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
	blt	$s6, $s0, .LBB0_196
# %bb.144:                              # %while.cond35.preheader
	ori	$a0, $zero, 1
	ld.d	$t6, $sp, 120                   # 8-byte Folded Reload
	bne	$s6, $a0, .LBB0_150
.LBB0_145:                              # %for.end122
	beqz	$t6, .LBB0_160
# %bb.146:                              # %if.then124
	ori	$a1, $zero, 2
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 5
	bne	$fp, $a1, .LBB0_185
# %bb.147:                              # %while.cond131.preheader
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	bgeu	$a3, $a1, .LBB0_161
.LBB0_148:                              # %if.else214
	ld.w	$fp, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	b	.LBB0_186
.LBB0_149:
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	b	.LBB0_203
.LBB0_150:                              # %for.cond.preheader.us.preheader
	addi.w	$a0, $s6, -1
	bstrpick.d	$a1, $a0, 31, 0
	addi.d	$a2, $s5, 36
	b	.LBB0_152
	.p2align	4, , 16
.LBB0_151:                              # %for.cond.while.cond35.loopexit_crit_edge.us
                                        #   in Loop: Header=BB0_152 Depth=1
	beqz	$a6, .LBB0_156
.LBB0_152:                              # %for.cond.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_154 Depth 2
	ld.w	$a3, $s5, 0
	move	$a6, $zero
	move	$a4, $a1
	move	$a5, $a2
	b	.LBB0_154
	.p2align	4, , 16
.LBB0_153:                              # %if.end48.us
                                        #   in Loop: Header=BB0_154 Depth=2
	ld.w	$a6, $a5, -24
	ld.w	$t0, $a5, 12
	ld.w	$t1, $a5, 4
	ld.w	$t2, $a5, -32
	st.w	$a7, $a5, -36
	st.w	$t0, $a5, -24
	st.w	$t1, $a5, -32
	st.w	$a3, $a5, 0
	st.w	$a6, $a5, 12
	st.w	$t2, $a5, 4
	ori	$a6, $zero, 1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 36
	beqz	$a4, .LBB0_151
.LBB0_154:                              # %for.body.us
                                        #   Parent Loop BB0_152 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a7, $a5, 0
	bltu	$a7, $a3, .LBB0_153
# %bb.155:                              #   in Loop: Header=BB0_154 Depth=2
	move	$a3, $a7
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 36
	bnez	$a4, .LBB0_154
	b	.LBB0_151
.LBB0_156:                              # %for.body94.preheader
	ori	$a1, $zero, 1
	slt	$a3, $a1, $a0
	masknez	$a1, $a1, $a3
	ld.w	$a2, $s5, 0
	maskeqz	$a0, $a0, $a3
	or	$a0, $a0, $a1
	addi.d	$a1, $s5, 36
	b	.LBB0_158
	.p2align	4, , 16
.LBB0_157:                              # %for.inc120
                                        #   in Loop: Header=BB0_158 Depth=1
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 36
	beqz	$a0, .LBB0_145
.LBB0_158:                              # %for.body94
                                        # =>This Inner Loop Header: Depth=1
	move	$a3, $a2
	ld.w	$a2, $a1, 0
	ld.w	$a4, $a1, -32
	sub.w	$a3, $a2, $a3
	beq	$a4, $a3, .LBB0_157
# %bb.159:                              # %if.then107
                                        #   in Loop: Header=BB0_158 Depth=1
	st.w	$a3, $a1, -32
	b	.LBB0_157
.LBB0_160:
	move	$fp, $zero
	b	.LBB0_187
.LBB0_161:                              # %land.lhs.true138.lr.ph
	add.w	$a2, $a0, $t4
	bstrpick.d	$a6, $a3, 31, 0
	add.d	$t0, $s7, $a6
	addi.d	$a1, $t8, -1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a3, $a1, 5
	alsl.d	$a1, $a1, $a3, 2
	add.d	$a1, $t3, $a1
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	beqz	$a3, .LBB0_176
# %bb.162:                              # %land.lhs.true138.us.preheader
	move	$a5, $zero
	addi.d	$a3, $s7, 4
	add.d	$a4, $a3, $a6
	lu12i.w	$a6, -262399
	ori	$a6, $a6, 823
.LBB0_163:                              # %land.lhs.true138.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_170 Depth 2
	addi.d	$a7, $t0, 4
	bltu	$t7, $a7, .LBB0_148
# %bb.164:                              # %while.body147.us
                                        #   in Loop: Header=BB0_163 Depth=1
	ld.w	$t0, $t0, 0
	beqz	$t0, .LBB0_185
# %bb.165:                              # %if.end151.us
                                        #   in Loop: Header=BB0_163 Depth=1
	blt	$t0, $t5, .LBB0_148
# %bb.166:                              # %land.lhs.true162.us1032.preheader
                                        #   in Loop: Header=BB0_163 Depth=1
	add.d	$t0, $a3, $t0
	move	$t1, $t0
	b	.LBB0_170
.LBB0_167:                              #   in Loop: Header=BB0_170 Depth=2
	addi.w	$a5, $a5, -1
.LBB0_168:                              #   in Loop: Header=BB0_170 Depth=2
	move	$t2, $a2
	move	$a2, $a6
.LBB0_169:                              # %if.end185.us
                                        #   in Loop: Header=BB0_170 Depth=2
	ld.w	$t3, $a1, 0
	add.w	$t3, $t3, $t4
	sltu	$t3, $t3, $a2
	sltu	$a2, $a2, $t2
	sub.d	$a2, $t6, $a2
	sub.d	$a2, $a2, $t3
	rotri.w	$t6, $a2, 3
	addi.d	$t1, $t1, 4
	move	$a2, $t2
	bltu	$t0, $s1, .LBB0_148
.LBB0_170:                              # %land.lhs.true162.us1032
                                        #   Parent Loop BB0_163 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bltu	$t7, $t1, .LBB0_148
# %bb.171:                              # %while.body171.us1037
                                        #   in Loop: Header=BB0_170 Depth=2
	ld.w	$t2, $t1, -4
	beqz	$t2, .LBB0_175
# %bb.172:                              # %if.end177.us1040
                                        #   in Loop: Header=BB0_170 Depth=2
	bltz	$t2, .LBB0_168
# %bb.173:                              # %land.lhs.true181.us
                                        #   in Loop: Header=BB0_170 Depth=2
	bgtz	$a5, .LBB0_167
# %bb.174:                              # %if.then183.us
                                        #   in Loop: Header=BB0_170 Depth=2
	addi.w	$t2, $a2, 5
	andi	$a5, $t2, 7
	b	.LBB0_169
.LBB0_175:                              # %cleanup204.us
                                        #   in Loop: Header=BB0_163 Depth=1
	move	$t0, $a7
	bgeu	$a4, $s1, .LBB0_163
	b	.LBB0_148
.LBB0_176:                              # %land.lhs.true138.lr.ph.split
	lu12i.w	$a3, -262399
	ori	$a3, $a3, 823
	sltu	$a2, $a3, $a2
	sub.d	$a2, $zero, $a2
	addi.d	$a4, $s7, 4
	add.d	$a5, $a4, $a6
.LBB0_177:                              # %land.lhs.true138
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_181 Depth 2
	addi.d	$a6, $t0, 4
	bltu	$t7, $a6, .LBB0_148
# %bb.178:                              # %while.body147
                                        #   in Loop: Header=BB0_177 Depth=1
	ld.w	$a7, $t0, 0
	beqz	$a7, .LBB0_185
# %bb.179:                              # %if.end151
                                        #   in Loop: Header=BB0_177 Depth=1
	blt	$a7, $t5, .LBB0_148
# %bb.180:                              # %land.lhs.true162.us.preheader
                                        #   in Loop: Header=BB0_177 Depth=1
	add.d	$a7, $a4, $a7
	move	$t0, $a7
.LBB0_181:                              # %land.lhs.true162.us
                                        #   Parent Loop BB0_177 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bltu	$t7, $t0, .LBB0_148
# %bb.182:                              # %while.body171.us
                                        #   in Loop: Header=BB0_181 Depth=2
	ld.w	$t1, $t0, -4
	beqz	$t1, .LBB0_184
# %bb.183:                              # %if.end177.us
                                        #   in Loop: Header=BB0_181 Depth=2
	ld.w	$t1, $a1, 0
	add.w	$t1, $t1, $t4
	sltu	$t1, $t1, $a3
	add.d	$t2, $t6, $a2
	sub.d	$t1, $t2, $t1
	rotri.w	$t6, $t1, 3
	addi.d	$t0, $t0, 4
	bgeu	$a7, $s1, .LBB0_181
	b	.LBB0_148
.LBB0_184:                              # %cleanup204
                                        #   in Loop: Header=BB0_177 Depth=1
	move	$t0, $a6
	bgeu	$a5, $s1, .LBB0_177
	b	.LBB0_148
.LBB0_185:                              # %if.then213
	add.w	$fp, $t6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
.LBB0_186:                              # %cond.end.peel
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_187:                              # %cond.end.peel
	ld.wu	$a2, $s5, 12
	ori	$s0, $zero, 1
	addi.w	$a0, $a2, -1
	st.w	$zero, $s5, 8
	bgeu	$a0, $s8, .LBB0_190
# %bb.188:                              # %cond.end.peel
	addi.w	$a0, $a2, 0
	bltu	$s8, $a0, .LBB0_190
# %bb.189:                              # %if.then283.peel
	ld.wu	$a0, $s5, 0
	add.d	$a1, $s7, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB0_190:                              # %for.inc298.peel
	bne	$s6, $s0, .LBB0_197
.LBB0_191:                              # %for.body304.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$s3, $zero
	move	$s0, $zero
	ori	$a0, $zero, 1
	slt	$a1, $a0, $s6
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s6, $a1
	or	$a0, $a1, $a0
	slli.d	$a1, $a0, 5
	alsl.d	$s4, $a0, $a1, 2
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$s2, $a0, %pc_lo12(.L.str.3)
	.p2align	4, , 16
.LBB0_192:                              # %for.body304
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a0, $s5, $s3
	ldx.w	$a2, $s5, $s3
	ld.w	$a3, $a0, 4
	ld.w	$a4, $a0, 8
	ld.w	$a5, $a0, 12
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, 36
	addi.w	$s0, $s0, 1
	bne	$s4, $s3, .LBB0_192
# %bb.193:                              # %for.end319
	move	$a0, $s1
	move	$a1, $s5
	move	$a2, $s6
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	move	$a4, $fp
	ld.d	$a5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_rebuildpe)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_202
# %bb.194:
	move	$s0, $zero
.LBB0_195:                              # %cleanup1126.sink.split
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_196:                              # %cleanup1126
	move	$a0, $s0
	ld.d	$s8, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 384                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 392                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 400
	ret
.LBB0_197:                              # %cond.end.preheader
	slt	$a0, $s0, $s6
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $s6, $a0
	or	$a0, $a0, $a1
	addi.d	$s0, $s5, 48
	addi.d	$s2, $a0, -1
	b	.LBB0_199
	.p2align	4, , 16
.LBB0_198:                              # %for.inc298
                                        #   in Loop: Header=BB0_199 Depth=1
	addi.d	$s2, $s2, -1
	addi.d	$s0, $s0, 36
	beqz	$s2, .LBB0_191
.LBB0_199:                              # %cond.end
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s0, -40
	ld.w	$a1, $s0, -36
	ld.wu	$a2, $s0, 0
	add.w	$a0, $a1, $a0
	addi.w	$a1, $a2, -1
	st.w	$a0, $s0, -4
	bgeu	$a1, $s8, .LBB0_198
# %bb.200:                              # %land.lhs.true250
                                        #   in Loop: Header=BB0_199 Depth=1
	bstrpick.d	$a0, $a0, 31, 0
	add.d	$a1, $a2, $a0
	bltu	$s3, $a1, .LBB0_198
# %bb.201:                              # %if.then283
                                        #   in Loop: Header=BB0_199 Depth=1
	ld.wu	$a1, $s0, -12
	add.d	$a0, $s1, $a0
	add.d	$a1, $s7, $a1
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	b	.LBB0_198
.LBB0_202:
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
.LBB0_203:                              # %cleanup1126.sink.split.sink.split
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_138
.Lfunc_end0:
	.size	petite_inflate2x_1to9, .Lfunc_end0-petite_inflate2x_1to9
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Petite: Old EP: %x\n"
	.size	.L.str, 20

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Petite: In troubles while attempting to decrypt old EP, using bogus %x\n"
	.size	.L.str.1, 72

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Petite: Sections dump:\n"
	.size	.L.str.2, 24

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Petite: .SECT%d RVA:%x VSize:%x ROffset: %x, RSize:%x\n"
	.size	.L.str.3, 55

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Petite: Rebuilding failed\n"
	.size	.L.str.4, 27

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Petite: maximum number of sections exceeded, giving up.\n"
	.size	.L.str.5, 57

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Petite: Found petite code in sect%d(%x). Let's strip it.\n"
	.size	.L.str.6, 58

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Petite: Encrypted EP: %x | Array of imports: %x\n"
	.size	.L.str.7, 49

	.section	".note.GNU-stack","",@progbits
	.addrsig
