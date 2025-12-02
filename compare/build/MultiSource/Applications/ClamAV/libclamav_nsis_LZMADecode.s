	.file	"libclamav_nsis_LZMADecode.c"
	.text
	.globl	lzmaInit                        # -- Begin function lzmaInit
	.p2align	5
	.type	lzmaInit,@function
lzmaInit:                               # @lzmaInit
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a2, $zero, 152
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	vrepli.w	$vr0, 1
	vst	$vr0, $fp, 116
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.w	$a0, $fp, 144
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	lzmaInit, .Lfunc_end0-lzmaInit
                                        # -- End function
	.globl	lzmaDecode                      # -- Begin function lzmaDecode
	.p2align	5
	.type	lzmaDecode,@function
lzmaDecode:                             # @lzmaDecode
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -320
	st.d	$ra, $sp, 312                   # 8-byte Folded Spill
	st.d	$fp, $sp, 304                   # 8-byte Folded Spill
	st.d	$s0, $sp, 296                   # 8-byte Folded Spill
	st.d	$s1, $sp, 288                   # 8-byte Folded Spill
	st.d	$s2, $sp, 280                   # 8-byte Folded Spill
	st.d	$s3, $sp, 272                   # 8-byte Folded Spill
	st.d	$s4, $sp, 264                   # 8-byte Folded Spill
	st.d	$s5, $sp, 256                   # 8-byte Folded Spill
	st.d	$s6, $sp, 248                   # 8-byte Folded Spill
	st.d	$s7, $sp, 240                   # 8-byte Folded Spill
	st.d	$s8, $sp, 232                   # 8-byte Folded Spill
	ld.w	$a3, $a0, 0
	ld.w	$a1, $a0, 4
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	ld.w	$a5, $a0, 8
	ld.w	$a6, $a0, 12
	ld.w	$a1, $a0, 16
	ld.w	$t7, $a0, 20
	ld.d	$a2, $a0, 24
	st.d	$a2, $sp, 216                   # 8-byte Folded Spill
	ld.w	$a2, $a0, 32
	st.d	$a2, $sp, 208                   # 8-byte Folded Spill
	ld.w	$t4, $a0, 36
	ld.d	$s6, $a0, 40
	ld.w	$s7, $a0, 48
	ld.w	$t5, $a0, 52
	ld.bu	$fp, $a0, 56
	ld.w	$a2, $a0, 58
	ld.h	$a4, $a0, 62
	ld.w	$a7, $a0, 112
	ld.bu	$t6, $a0, 57
	st.w	$a2, $sp, 224
	addi.w	$a2, $zero, -1
	st.h	$a4, $sp, 228
	beq	$a7, $a2, .LBB1_139
# %bb.1:                                # %for.cond.preheader
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	st.d	$a6, $sp, 120                   # 8-byte Folded Spill
	st.d	$a5, $sp, 104                   # 8-byte Folded Spill
	ld.d	$t2, $a0, 160
	ld.d	$t3, $a0, 152
	ld.w	$s8, $a0, 148
	ld.w	$s5, $a0, 144
	ld.w	$s3, $a0, 140
	ld.w	$a2, $a0, 136
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	ld.w	$a2, $a0, 132
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	ld.w	$s2, $a0, 128
	ld.w	$a2, $a0, 124
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
	ld.w	$a2, $a0, 120
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	ld.w	$t0, $a0, 116
	ld.w	$a2, $a0, 108
	st.d	$a2, $sp, 192                   # 8-byte Folded Spill
	ld.w	$t8, $a0, 104
	ld.w	$ra, $a0, 100
	ld.w	$a2, $a0, 96
	st.d	$a2, $sp, 200                   # 8-byte Folded Spill
	ld.w	$s0, $a0, 92
	ld.w	$a2, $a0, 88
	ld.w	$a4, $a0, 84
	st.d	$a4, $sp, 112                   # 8-byte Folded Spill
	ld.w	$a4, $a0, 80
	st.d	$a4, $sp, 144                   # 8-byte Folded Spill
	ld.d	$s1, $a0, 72
	ld.d	$s4, $a0, 64
.LBB1_2:                                # %for.cond.outer.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
                                        #       Child Loop BB1_4 Depth 3
                                        #         Child Loop BB1_32 Depth 4
                                        #       Child Loop BB1_65 Depth 3
                                        #     Child Loop BB1_124 Depth 2
	st.d	$a7, $sp, 136                   # 8-byte Folded Spill
.LBB1_3:                                # %for.cond.outer404.outer
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_4 Depth 3
                                        #         Child Loop BB1_32 Depth 4
                                        #       Child Loop BB1_65 Depth 3
	st.d	$t0, $sp, 184                   # 8-byte Folded Spill
	addi.d	$a4, $t2, 2047
	addi.d	$a5, $a4, 1645
	ori	$a6, $zero, 8
	sub.d	$a6, $a6, $ra
	ori	$a7, $zero, 28
	bltu	$a7, $a3, .LBB1_149
.LBB1_4:                                # %for.cond.outer404
                                        #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_32 Depth 4
	slli.d	$a7, $a3, 2
	pcalau12i	$t0, %pc_hi20(.LJTI1_0)
	addi.d	$t0, $t0, %pc_lo12(.LJTI1_0)
	ldx.w	$a7, $t0, $a7
	add.d	$a7, $t0, $a7
	jr	$a7
.LBB1_5:                                # %sw.bb115
                                        #   in Loop: Header=BB1_4 Depth=3
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	addi.w	$a3, $a3, 0
	bnez	$a3, .LBB1_59
# %bb.6:                                # %if.then119
                                        #   in Loop: Header=BB1_4 Depth=3
	ori	$a3, $zero, 4
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	bge	$t8, $a3, .LBB1_8
# %bb.7:                                #   in Loop: Header=BB1_4 Depth=3
	move	$t8, $zero
	b	.LBB1_11
.LBB1_8:                                # %if.else
                                        #   in Loop: Header=BB1_4 Depth=3
	ori	$a3, $zero, 9
	bltu	$a3, $t8, .LBB1_10
# %bb.9:                                # %if.then142
                                        #   in Loop: Header=BB1_4 Depth=3
	addi.w	$t8, $t8, -3
	b	.LBB1_11
.LBB1_10:                               # %if.else145
                                        #   in Loop: Header=BB1_4 Depth=3
	addi.w	$t8, $t8, -6
.LBB1_11:                               # %if.end149
                                        #   in Loop: Header=BB1_4 Depth=3
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	and	$a3, $a3, $t5
	sll.w	$a3, $a3, $ra
	srl.w	$a7, $fp, $a6
	add.d	$a3, $a3, $a7
	alsl.d	$a3, $a3, $a3, 1
	slli.d	$a3, $a3, 8
	bstrpick.d	$a3, $a3, 31, 8
	slli.d	$a3, $a3, 9
	add.d	$s4, $a5, $a3
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	beqz	$a3, .LBB1_13
# %bb.12:                               # %if.then151
                                        #   in Loop: Header=BB1_4 Depth=3
	sub.d	$a2, $s3, $t0
	addi.w	$a3, $a2, 0
	addi.w	$a7, $t7, 0
	sltu	$a3, $a3, $a7
	masknez	$a3, $t7, $a3
	add.d	$a2, $a3, $a2
	bstrpick.d	$a2, $a2, 31, 0
	ldx.bu	$t6, $t3, $a2
	ori	$s0, $zero, 1
	b	.LBB1_20
.LBB1_13:                               #   in Loop: Header=BB1_4 Depth=3
	ori	$s0, $zero, 1
	.p2align	4, , 16
.LBB1_14:                               # %do.body330
                                        #   in Loop: Header=BB1_4 Depth=3
	addi.w	$a3, $s0, 0
	slli.d	$a7, $a3, 1
	ldx.hu	$a7, $s4, $a7
	alsl.d	$s1, $a3, $s4, 1
	bstrpick.d	$a3, $s5, 31, 11
	mul.d	$a3, $a3, $a7
	addi.w	$t0, $a3, 0
	slli.d	$s0, $s0, 1
	bgeu	$s8, $t0, .LBB1_16
# %bb.15:                               # %if.then345
                                        #   in Loop: Header=BB1_4 Depth=3
	ori	$t0, $zero, 2048
	sub.d	$t0, $t0, $a7
	bstrpick.d	$t0, $t0, 31, 5
	add.d	$a7, $a7, $t0
	bstrpick.d	$t0, $a3, 31, 24
	st.h	$a7, $s1, 0
	move	$s5, $a3
	beqz	$t0, .LBB1_17
	b	.LBB1_19
.LBB1_16:                               # %if.else357
                                        #   in Loop: Header=BB1_4 Depth=3
	sub.w	$s8, $s8, $a3
	sub.w	$a3, $s5, $a3
	srli.d	$t0, $a7, 5
	sub.d	$a7, $a7, $t0
	ori	$s0, $s0, 1
	bstrpick.d	$t0, $a3, 31, 24
	st.h	$a7, $s1, 0
	move	$s5, $a3
	bnez	$t0, .LBB1_19
.LBB1_17:                               # %sw.bb379
                                        #   in Loop: Header=BB1_4 Depth=3
	ld.d	$t1, $sp, 208                   # 8-byte Folded Reload
	beqz	$t1, .LBB1_144
# %bb.18:                               # %if.end384
                                        #   in Loop: Header=BB1_4 Depth=3
	slli.d	$s5, $s5, 8
	ld.d	$t0, $sp, 216                   # 8-byte Folded Reload
	ld.bu	$a3, $t0, 0
	slli.w	$a7, $s8, 8
	addi.w	$t1, $t1, -1
	st.d	$t1, $sp, 208                   # 8-byte Folded Spill
	addi.d	$t0, $t0, 1
	or	$s8, $a7, $a3
	st.d	$t0, $sp, 216                   # 8-byte Folded Spill
.LBB1_19:                               # %do.cond397
                                        #   in Loop: Header=BB1_4 Depth=3
	addi.w	$a3, $s0, 0
	ori	$a7, $zero, 256
	blt	$a3, $a7, .LBB1_14
	b	.LBB1_28
	.p2align	4, , 16
.LBB1_20:                               # %do.body
                                        #   in Loop: Header=BB1_4 Depth=3
	bstrpick.d	$a2, $t6, 7, 7
	slli.d	$a3, $a2, 9
	add.d	$a3, $s4, $a3
	addi.w	$a7, $s0, 0
	alsl.d	$a3, $a7, $a3, 1
	ld.hu	$a7, $a3, 512
	slli.d	$t6, $t6, 1
	addi.d	$s1, $a3, 512
	bstrpick.d	$a3, $s5, 31, 11
	mul.d	$a3, $a3, $a7
	addi.w	$t0, $a3, 0
	slli.d	$s0, $s0, 1
	bgeu	$s8, $t0, .LBB1_23
# %bb.21:                               # %if.then189
                                        #   in Loop: Header=BB1_4 Depth=3
	st.d	$zero, $sp, 200                 # 8-byte Folded Spill
	ori	$t0, $zero, 2048
	sub.d	$t0, $t0, $a7
	bstrpick.d	$t0, $t0, 31, 5
	add.d	$a7, $a7, $t0
	bstrpick.d	$t0, $a3, 31, 24
	st.h	$a7, $s1, 0
	move	$s5, $a3
	beqz	$t0, .LBB1_24
	.p2align	4, , 16
.LBB1_22:                               # %if.end242
                                        #   in Loop: Header=BB1_4 Depth=3
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	addi.w	$a3, $t0, 0
	addi.w	$a7, $a2, 0
	bne	$a7, $a3, .LBB1_32
	b	.LBB1_26
.LBB1_23:                               # %if.else202
                                        #   in Loop: Header=BB1_4 Depth=3
	sub.w	$s8, $s8, $a3
	sub.w	$a3, $s5, $a3
	srli.d	$t0, $a7, 5
	sub.d	$a7, $a7, $t0
	ori	$s0, $s0, 1
	ori	$t0, $zero, 1
	st.d	$t0, $sp, 200                   # 8-byte Folded Spill
	bstrpick.d	$t0, $a3, 31, 24
	st.h	$a7, $s1, 0
	move	$s5, $a3
	bnez	$t0, .LBB1_22
.LBB1_24:                               # %sw.bb225
                                        #   in Loop: Header=BB1_4 Depth=3
	ld.d	$t1, $sp, 208                   # 8-byte Folded Reload
	beqz	$t1, .LBB1_145
# %bb.25:                               # %if.end230
                                        #   in Loop: Header=BB1_4 Depth=3
	slli.d	$s5, $s5, 8
	ld.d	$t0, $sp, 216                   # 8-byte Folded Reload
	ld.bu	$a3, $t0, 0
	slli.w	$a7, $s8, 8
	addi.w	$t1, $t1, -1
	st.d	$t1, $sp, 208                   # 8-byte Folded Spill
	addi.d	$t0, $t0, 1
	or	$s8, $a7, $a3
	st.d	$t0, $sp, 216                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	addi.w	$a3, $t0, 0
	addi.w	$a7, $a2, 0
	bne	$a7, $a3, .LBB1_32
.LBB1_26:                               # %do.cond
                                        #   in Loop: Header=BB1_4 Depth=3
	addi.w	$a3, $s0, 0
	ori	$a7, $zero, 256
	move	$a2, $t0
	blt	$a3, $a7, .LBB1_20
.LBB1_27:                               # %do.end
                                        #   in Loop: Header=BB1_4 Depth=3
	st.d	$zero, $sp, 192                 # 8-byte Folded Spill
.LBB1_28:                               # %do.end401
                                        #   in Loop: Header=BB1_4 Depth=3
	andi	$fp, $s0, 255
.LBB1_29:                               # %sw.bb406
                                        #   in Loop: Header=BB1_4 Depth=3
	beqz	$s7, .LBB1_140
# %bb.30:                               # %if.end410
                                        #   in Loop: Header=BB1_4 Depth=3
	addi.w	$t5, $t5, 1
	st.b	$fp, $s6, 0
	addi.d	$s6, $s6, 1
	addi.w	$s7, $s7, -1
	bstrpick.d	$a3, $s3, 31, 0
	stx.b	$fp, $t3, $a3
	addi.w	$a3, $s3, 1
	addi.w	$a7, $t7, 0
	mod.wu	$s3, $a3, $a7
	ori	$a3, $zero, 2
	ori	$a7, $zero, 28
	bgeu	$a7, $a3, .LBB1_4
	b	.LBB1_149
	.p2align	4, , 16
.LBB1_31:                               # %if.else279
                                        #   in Loop: Header=BB1_32 Depth=4
	sub.w	$s5, $s5, $t0
	sub.w	$s8, $s8, $t0
	srli.d	$t0, $a7, 5
	sub.d	$a7, $a7, $t0
	ori	$s0, $s0, 1
	alsl.d	$s1, $a3, $s4, 1
	bstrpick.d	$a3, $s5, 31, 24
	st.h	$a7, $s1, 0
	beqz	$a3, .LBB1_35
.LBB1_32:                               # %while.cond248
                                        #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_3 Depth=2
                                        #       Parent Loop BB1_4 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.w	$a3, $s0, 0
	ori	$a7, $zero, 255
	blt	$a7, $a3, .LBB1_27
# %bb.33:                               # %while.body252
                                        #   in Loop: Header=BB1_32 Depth=4
	slli.d	$a7, $a3, 1
	ldx.hu	$a7, $s4, $a7
	bstrpick.d	$t0, $s5, 31, 11
	mul.d	$t0, $t0, $a7
	addi.w	$t1, $t0, 0
	slli.d	$s0, $s0, 1
	bgeu	$s8, $t1, .LBB1_31
# %bb.34:                               # %if.then267
                                        #   in Loop: Header=BB1_32 Depth=4
	ori	$t1, $zero, 2048
	sub.d	$t1, $t1, $a7
	bstrpick.d	$t1, $t1, 31, 5
	add.d	$a7, $a7, $t1
	move	$s5, $t0
	alsl.d	$s1, $a3, $s4, 1
	bstrpick.d	$a3, $s5, 31, 24
	st.h	$a7, $s1, 0
	bnez	$a3, .LBB1_32
.LBB1_35:                               # %sw.bb301
                                        #   in Loop: Header=BB1_4 Depth=3
	ld.d	$t1, $sp, 208                   # 8-byte Folded Reload
	beqz	$t1, .LBB1_141
# %bb.36:                               # %if.end306
                                        #   in Loop: Header=BB1_4 Depth=3
	slli.d	$s5, $s5, 8
	ld.d	$t0, $sp, 216                   # 8-byte Folded Reload
	ld.bu	$a3, $t0, 0
	slli.w	$a7, $s8, 8
	addi.w	$t1, $t1, -1
	st.d	$t1, $sp, 208                   # 8-byte Folded Spill
	addi.d	$t0, $t0, 1
	or	$s8, $a7, $a3
	st.d	$t0, $sp, 216                   # 8-byte Folded Spill
	b	.LBB1_32
.LBB1_37:                               # %sw.bb437
                                        #   in Loop: Header=BB1_3 Depth=2
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	addi.w	$a3, $a3, 0
	ori	$a4, $zero, 1
	bne	$a3, $a4, .LBB1_60
# %bb.38:                               # %if.then441
                                        #   in Loop: Header=BB1_3 Depth=2
	alsl.d	$a3, $t8, $t2, 1
	addi.d	$s1, $a3, 408
	ori	$a3, $zero, 8
	b	.LBB1_75
.LBB1_39:                               # %sw.bb1027
                                        #   in Loop: Header=BB1_3 Depth=2
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	add.w	$a3, $s0, $a3
	st.d	$a3, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	b	.LBB1_3
.LBB1_40:                               # %sw.bb107.loopexit
                                        #   in Loop: Header=BB1_3 Depth=2
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	b	.LBB1_73
.LBB1_41:                               # %sw.bb877.loopexit
                                        #   in Loop: Header=BB1_3 Depth=2
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	b	.LBB1_87
.LBB1_42:                               # %sw.bb92.loopexit
                                        #   in Loop: Header=BB1_3 Depth=2
	ld.d	$a7, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	b	.LBB1_93
.LBB1_43:                               # %sw.bb541
                                        #   in Loop: Header=BB1_3 Depth=2
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	addi.w	$a3, $a3, 0
	sltui	$a3, $a3, 1
	ld.d	$t0, $sp, 160                   # 8-byte Folded Reload
	masknez	$a5, $t0, $a3
	maskeqz	$a6, $s2, $a3
	masknez	$a7, $s2, $a3
	or	$s2, $a6, $a5
	maskeqz	$a3, $t0, $a3
	or	$a3, $a3, $a7
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 168                   # 8-byte Folded Reload
	b	.LBB1_82
.LBB1_44:                               # %sw.bb46.loopexit
                                        #   in Loop: Header=BB1_3 Depth=2
	ld.d	$a7, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 208                   # 8-byte Folded Reload
	b	.LBB1_90
.LBB1_45:                               # %sw.bb
                                        #   in Loop: Header=BB1_3 Depth=2
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	beqz	$a3, .LBB1_158
# %bb.46:                               # %if.end2
                                        #   in Loop: Header=BB1_3 Depth=2
	ld.d	$a6, $sp, 216                   # 8-byte Folded Reload
	ld.bu	$a2, $a6, 0
	ori	$a3, $zero, 225
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	bltu	$a3, $a2, .LBB1_149
# %bb.47:                               # %if.end7
                                        #   in Loop: Header=BB1_3 Depth=2
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	andi	$a3, $a2, 255
	ori	$a4, $zero, 109
	mul.d	$a3, $a3, $a4
	srli.d	$a3, $a3, 8
	sub.d	$a4, $a2, $a3
	bstrpick.d	$a4, $a4, 7, 1
	add.d	$a3, $a4, $a3
	srli.d	$a5, $a3, 5
	alsl.d	$a3, $a5, $a5, 2
	alsl.d	$a3, $a3, $a3, 3
	sub.d	$a2, $a2, $a3
	andi	$a3, $a2, 255
	ori	$a4, $zero, 57
	mul.d	$a3, $a3, $a4
	srli.d	$a4, $a3, 9
	alsl.d	$a3, $a4, $a4, 3
	sub.d	$a2, $a2, $a3
	andi	$ra, $a2, 255
	add.d	$a3, $ra, $a5
	ori	$a2, $zero, 1536
	sll.w	$a2, $a2, $a3
	addi.d	$a2, $a2, 2047
	addi.w	$a2, $a2, 1645
	addi.w	$s2, $zero, -1
	bne	$a2, $a1, .LBB1_61
# %bb.48:                               #   in Loop: Header=BB1_3 Depth=2
	move	$t1, $a1
	b	.LBB1_64
.LBB1_49:                               # %sw.bb449
                                        #   in Loop: Header=BB1_3 Depth=2
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	addi.w	$a3, $a3, 0
	beqz	$a3, .LBB1_74
# %bb.50:                               # %if.else520
                                        #   in Loop: Header=BB1_3 Depth=2
	alsl.d	$a3, $t8, $t2, 1
	addi.d	$s1, $a3, 432
	ori	$a3, $zero, 10
	b	.LBB1_75
.LBB1_51:                               # %sw.bb465.peel
                                        #   in Loop: Header=BB1_3 Depth=2
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	addi.w	$a3, $a3, 0
	beqz	$a3, .LBB1_77
# %bb.52:                               #   in Loop: Header=BB1_3 Depth=2
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	b	.LBB1_82
.LBB1_53:                               # %sw.bb528
                                        #   in Loop: Header=BB1_3 Depth=2
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	addi.w	$a3, $a3, 0
	beqz	$a3, .LBB1_81
# %bb.54:                               # %if.else533
                                        #   in Loop: Header=BB1_3 Depth=2
	alsl.d	$a3, $t8, $t2, 1
	addi.d	$s1, $a3, 456
	ori	$a3, $zero, 11
	b	.LBB1_75
.LBB1_55:                               # %sw.bb902
                                        #   in Loop: Header=BB1_3 Depth=2
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	addi.w	$a3, $a3, 0
	beqz	$a3, .LBB1_112
# %bb.56:                               # %if.else915
                                        #   in Loop: Header=BB1_3 Depth=2
	addi.d	$s1, $s4, 2
	ori	$a3, $zero, 19
	b	.LBB1_75
.LBB1_57:                               # %sw.bb480.peel.loopexit
                                        #   in Loop: Header=BB1_3 Depth=2
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 168                   # 8-byte Folded Reload
	bnez	$s7, .LBB1_79
	b	.LBB1_157
.LBB1_58:                               # %_LZMA_C_LEND
                                        #   in Loop: Header=BB1_3 Depth=2
	ori	$a3, $zero, 18
	st.d	$a3, $sp, 176                   # 8-byte Folded Spill
	move	$s1, $s4
	b	.LBB1_76
.LBB1_59:                               # %if.else428
                                        #   in Loop: Header=BB1_3 Depth=2
	alsl.d	$a3, $t8, $t2, 1
	addi.d	$s1, $a3, 384
	ori	$a3, $zero, 7
	st.d	$a3, $sp, 176                   # 8-byte Folded Spill
	ori	$a3, $zero, 1
	st.d	$a3, $sp, 192                   # 8-byte Folded Spill
	b	.LBB1_76
.LBB1_60:                               # %if.else566
                                        #   in Loop: Header=BB1_3 Depth=2
	slti	$a3, $t8, 7
	ori	$a4, $zero, 10
	masknez	$a4, $a4, $a3
	ori	$a5, $zero, 7
	maskeqz	$a3, $a5, $a3
	or	$t8, $a3, $a4
	addi.d	$s1, $t2, 1636
	ori	$a3, $zero, 18
	st.d	$a3, $sp, 176                   # 8-byte Folded Spill
	ori	$a3, $zero, 22
	st.d	$a3, $sp, 104                   # 8-byte Folded Spill
	move	$s4, $s1
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	move	$a5, $t0
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 160                   # 8-byte Folded Reload
	b	.LBB1_83
.LBB1_61:                               # %if.then26
                                        #   in Loop: Header=BB1_3 Depth=2
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	st.d	$a4, $sp, 24                    # 8-byte Folded Spill
	st.d	$a5, $sp, 128                   # 8-byte Folded Spill
	st.d	$ra, $sp, 32                    # 8-byte Folded Spill
	st.d	$t8, $sp, 40                    # 8-byte Folded Spill
	st.d	$t7, $sp, 152                   # 8-byte Folded Spill
	st.d	$t6, $sp, 48                    # 8-byte Folded Spill
	st.d	$t5, $sp, 56                    # 8-byte Folded Spill
	st.d	$t4, $sp, 64                    # 8-byte Folded Spill
	st.d	$t3, $sp, 200                   # 8-byte Folded Spill
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	beqz	$t2, .LBB1_63
# %bb.62:                               # %if.then28
                                        #   in Loop: Header=BB1_3 Depth=2
	move	$a0, $t2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
.LBB1_63:                               # %if.end30
                                        #   in Loop: Header=BB1_3 Depth=2
	move	$a0, $a2
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	ld.d	$t1, $sp, 80                    # 8-byte Folded Reload
	move	$t2, $a0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 152                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	beqz	$t2, .LBB1_148
.LBB1_64:                               # %iter.check
                                        #   in Loop: Header=BB1_3 Depth=2
	move	$a1, $zero
	sll.w	$a2, $s2, $a5
	nor	$a2, $a2, $zero
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	sll.w	$a2, $s2, $a4
	nor	$a2, $a2, $zero
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	ori	$a2, $zero, 768
	sll.w	$a2, $a2, $a3
	ori	$a3, $zero, 3660
	alsl.d	$a2, $a2, $a3, 1
	add.d	$a3, $t2, $a2
	.p2align	4, , 16
.LBB1_65:                               # %vector.body
                                        #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvldi	$xr0, -2812
	xvstx	$xr0, $a3, $a1
	addi.d	$a1, $a1, -32
	add.d	$a4, $a2, $a1
	addi.w	$a5, $zero, -20
	bne	$a4, $a5, .LBB1_65
# %bb.66:                               # %vec.epilog.vector.body
                                        #   in Loop: Header=BB1_3 Depth=2
	st.d	$zero, $sp, 200                 # 8-byte Folded Spill
	move	$a2, $zero
	lu12i.w	$a1, 16384
	ori	$a1, $a1, 1024
	st.w	$a1, $t2, 0
	bstrins.d	$a1, $a1, 58, 32
	st.d	$a1, $t2, 4
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 208                   # 8-byte Folded Reload
	addi.d	$a6, $a6, 1
	ori	$a1, $zero, 4
	addi.w	$a5, $a5, -1
	blt	$a2, $a1, .LBB1_89
.LBB1_67:                               # %for.end
                                        #   in Loop: Header=BB1_3 Depth=2
	st.d	$a5, $sp, 208                   # 8-byte Folded Spill
	addi.w	$a1, $t7, 0
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 0
	beq	$a2, $a1, .LBB1_71
# %bb.68:                               # %if.then65
                                        #   in Loop: Header=BB1_3 Depth=2
	st.d	$t1, $sp, 80                    # 8-byte Folded Spill
	st.d	$a6, $sp, 216                   # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$ra, $sp, 32                    # 8-byte Folded Spill
	st.d	$t8, $sp, 40                    # 8-byte Folded Spill
	st.d	$t6, $sp, 48                    # 8-byte Folded Spill
	st.d	$t5, $sp, 56                    # 8-byte Folded Spill
	st.d	$t4, $sp, 64                    # 8-byte Folded Spill
	st.d	$t2, $sp, 24                    # 8-byte Folded Spill
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	beqz	$t3, .LBB1_70
# %bb.69:                               # %if.then69
                                        #   in Loop: Header=BB1_3 Depth=2
	move	$a0, $t3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_70:                               # %if.end71
                                        #   in Loop: Header=BB1_3 Depth=2
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	bstrpick.d	$a0, $s2, 31, 0
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	move	$t3, $a0
	move	$t7, $s2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 80                    # 8-byte Folded Reload
	beqz	$t3, .LBB1_149
.LBB1_71:                               # %if.end80
                                        #   in Loop: Header=BB1_3 Depth=2
	addi.d	$a1, $t7, -1
	bstrpick.d	$a1, $a1, 31, 0
	stx.b	$zero, $t3, $a1
	ori	$a2, $zero, 5
	addi.w	$a1, $a2, 0
	addi.d	$a2, $a2, -1
	bnez	$a1, .LBB1_92
.LBB1_72:                               #   in Loop: Header=BB1_3 Depth=2
	st.d	$a6, $sp, 216                   # 8-byte Folded Spill
	addi.w	$a2, $zero, -1
	move	$a1, $t1
.LBB1_73:                               # %sw.bb107
                                        #   in Loop: Header=BB1_3 Depth=2
	ld.d	$a6, $sp, 168                   # 8-byte Folded Reload
	b	.LBB1_80
.LBB1_74:                               # %if.then453
                                        #   in Loop: Header=BB1_3 Depth=2
	slli.w	$a3, $t8, 4
	alsl.d	$a3, $a3, $t2, 1
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	addi.w	$a4, $a4, 0
	alsl.d	$a3, $a4, $a3, 1
	addi.d	$s1, $a3, 480
	ori	$a3, $zero, 9
.LBB1_75:                               # %_LZMA_C_RDBD.loopexit
                                        #   in Loop: Header=BB1_3 Depth=2
	st.d	$a3, $sp, 176                   # 8-byte Folded Spill
.LBB1_76:                               # %_LZMA_C_RDBD.loopexit
                                        #   in Loop: Header=BB1_3 Depth=2
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	b	.LBB1_83
.LBB1_77:                               # %if.then469.peel
                                        #   in Loop: Header=BB1_3 Depth=2
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	beqz	$t5, .LBB1_149
# %bb.78:                               # %if.end475.peel
                                        #   in Loop: Header=BB1_3 Depth=2
	slti	$a3, $t8, 7
	ori	$a4, $zero, 11
	masknez	$a4, $a4, $a3
	ori	$a5, $zero, 9
	maskeqz	$a3, $a5, $a3
	or	$t8, $a3, $a4
	ld.d	$a6, $sp, 168                   # 8-byte Folded Reload
	beqz	$s7, .LBB1_157
.LBB1_79:                               # %if.end485.peel
                                        #   in Loop: Header=BB1_3 Depth=2
	sub.d	$a3, $s3, $t0
	addi.w	$a4, $a3, 0
	addi.w	$a5, $t7, 0
	sltu	$a4, $a4, $a5
	masknez	$a4, $t7, $a4
	add.d	$a3, $a4, $a3
	bstrpick.d	$a3, $a3, 31, 0
	ldx.bu	$fp, $t3, $a3
	bstrpick.d	$a3, $s3, 31, 0
	stx.b	$fp, $t3, $a3
	st.b	$fp, $s6, 0
	addi.w	$a3, $s3, 1
	mod.wu	$s3, $a3, $a5
	addi.w	$t5, $t5, 1
	addi.d	$s6, $s6, 1
	addi.w	$s7, $s7, -1
.LBB1_80:                               # %sw.bb107
                                        #   in Loop: Header=BB1_3 Depth=2
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	and	$a4, $a3, $t5
	slli.w	$a3, $t8, 4
	alsl.d	$a3, $a3, $t2, 1
	st.d	$a4, $sp, 112                   # 8-byte Folded Spill
	addi.w	$a4, $a4, 0
	alsl.d	$s1, $a4, $a3, 1
	ori	$a3, $zero, 6
	st.d	$a3, $sp, 176                   # 8-byte Folded Spill
	move	$a5, $a6
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	b	.LBB1_83
.LBB1_81:                               #   in Loop: Header=BB1_3 Depth=2
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
.LBB1_82:                               # %if.end556
                                        #   in Loop: Header=BB1_3 Depth=2
	addi.d	$s1, $a4, 617
	ori	$a4, $zero, 18
	st.d	$a4, $sp, 176                   # 8-byte Folded Spill
	ori	$a4, $zero, 21
	st.d	$a4, $sp, 104                   # 8-byte Folded Spill
	move	$s4, $s1
	move	$t0, $a3
	move	$a4, $a6
	.p2align	4, , 16
.LBB1_83:                               # %_LZMA_C_RDBD
                                        #   in Loop: Header=BB1_3 Depth=2
	ld.hu	$a3, $s1, 0
	bstrpick.d	$a6, $s5, 31, 11
	mul.d	$a7, $a6, $a3
	addi.w	$a6, $a7, 0
	bgeu	$s8, $a6, .LBB1_85
# %bb.84:                               # %if.then848
                                        #   in Loop: Header=BB1_3 Depth=2
	st.d	$zero, $sp, 200                 # 8-byte Folded Spill
	ori	$a6, $zero, 2048
	sub.d	$a6, $a6, $a3
	bstrpick.d	$a6, $a6, 31, 5
	add.d	$a3, $a3, $a6
	b	.LBB1_86
.LBB1_85:                               # %if.else859
                                        #   in Loop: Header=BB1_3 Depth=2
	sub.w	$s8, $s8, $a7
	sub.w	$a7, $s5, $a7
	srli.d	$a6, $a3, 5
	sub.d	$a3, $a3, $a6
	ori	$a6, $zero, 1
	st.d	$a6, $sp, 200                   # 8-byte Folded Spill
.LBB1_86:                               # %if.end872
                                        #   in Loop: Header=BB1_3 Depth=2
	bstrpick.d	$a6, $a7, 31, 24
	st.h	$a3, $s1, 0
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	st.d	$a5, $sp, 168                   # 8-byte Folded Spill
	st.d	$a4, $sp, 160                   # 8-byte Folded Spill
	move	$s5, $a7
	bnez	$a6, .LBB1_3
.LBB1_87:                               # %sw.bb877
                                        #   in Loop: Header=BB1_3 Depth=2
	ld.d	$t1, $sp, 208                   # 8-byte Folded Reload
	beqz	$t1, .LBB1_151
# %bb.88:                               # %if.end882
                                        #   in Loop: Header=BB1_3 Depth=2
	slli.d	$s5, $s5, 8
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	ld.bu	$a3, $a7, 0
	slli.w	$a6, $s8, 8
	addi.w	$t1, $t1, -1
	st.d	$t1, $sp, 208                   # 8-byte Folded Spill
	addi.d	$a7, $a7, 1
	or	$s8, $a6, $a3
	st.d	$a7, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	st.d	$a5, $sp, 168                   # 8-byte Folded Spill
	st.d	$a4, $sp, 160                   # 8-byte Folded Spill
	b	.LBB1_3
.LBB1_89:                               #   in Loop: Header=BB1_3 Depth=2
	move	$a1, $t1
.LBB1_90:                               # %sw.bb46
                                        #   in Loop: Header=BB1_3 Depth=2
	beqz	$a5, .LBB1_155
# %bb.91:                               # %if.end51
                                        #   in Loop: Header=BB1_3 Depth=2
	ld.bu	$a3, $a6, 0
	slli.d	$a4, $a2, 3
	bstrpick.d	$a4, $a4, 31, 3
	slli.d	$a4, $a4, 3
	sll.w	$a3, $a3, $a4
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	or	$a4, $a3, $a4
	st.d	$a4, $sp, 200                   # 8-byte Folded Spill
	addi.w	$a2, $a2, 1
	move	$t1, $a1
	addi.d	$a6, $a6, 1
	ori	$a1, $zero, 4
	addi.w	$a5, $a5, -1
	bge	$a2, $a1, .LBB1_67
	b	.LBB1_89
.LBB1_92:                               #   in Loop: Header=BB1_3 Depth=2
	move	$a1, $t1
.LBB1_93:                               # %sw.bb92
                                        #   in Loop: Header=BB1_3 Depth=2
	ld.d	$a5, $sp, 208                   # 8-byte Folded Reload
	beqz	$a5, .LBB1_152
# %bb.94:                               # %if.end97
                                        #   in Loop: Header=BB1_3 Depth=2
	ld.bu	$a3, $a6, 0
	slli.w	$a4, $s8, 8
	addi.w	$a5, $a5, -1
	st.d	$a5, $sp, 208                   # 8-byte Folded Spill
	addi.d	$a6, $a6, 1
	or	$s8, $a4, $a3
	move	$t1, $a1
	addi.w	$a1, $a2, 0
	addi.d	$a2, $a2, -1
	bnez	$a1, .LBB1_92
	b	.LBB1_72
.LBB1_95:                               # %sw.bb582
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.d	$a7, $sp, 136                   # 8-byte Folded Reload
	slti	$a2, $a7, 3
	ori	$a3, $zero, 3
	masknez	$a3, $a3, $a2
	maskeqz	$a2, $a7, $a2
	or	$a2, $a2, $a3
	slli.w	$a2, $a2, 6
	alsl.d	$a2, $a2, $t2, 1
	addi.d	$s4, $a2, 864
	ori	$a2, $zero, 25
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	ori	$a2, $zero, 1
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	ori	$a2, $zero, 6
	st.d	$a2, $sp, 200                   # 8-byte Folded Spill
	ori	$a2, $zero, 6
	ld.d	$a6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	addi.w	$a3, $a2, 0
	bgtz	$a3, .LBB1_133
	b	.LBB1_102
.LBB1_96:                               # %sw.bb595
                                        #   in Loop: Header=BB1_2 Depth=1
	addi.w	$a5, $s0, 0
	ori	$a4, $zero, 4
	blt	$a5, $a4, .LBB1_108
# %bb.97:                               # %if.then599
                                        #   in Loop: Header=BB1_2 Depth=1
	bstrpick.d	$a2, $s0, 31, 1
	addi.d	$a4, $a2, -1
	ori	$a6, $zero, 1
	bstrins.d	$s0, $a6, 63, 1
	ori	$a7, $zero, 13
	sll.w	$t0, $s0, $a4
	move	$s0, $zero
	bltu	$a7, $a5, .LBB1_111
# %bb.98:                               # %if.then611
                                        #   in Loop: Header=BB1_2 Depth=1
	move	$a2, $zero
	bstrpick.d	$a7, $t0, 31, 0
	alsl.d	$a7, $a7, $t2, 1
	slli.d	$a5, $a5, 1
	sub.d	$a5, $a7, $a5
	addi.d	$s4, $a5, 1374
	addi.w	$a5, $a4, 0
	bge	$a2, $a5, .LBB1_119
	b	.LBB1_127
.LBB1_99:                               # %sw.bb920
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 0
	beqz	$a2, .LBB1_109
# %bb.100:                              # %if.else933
                                        #   in Loop: Header=BB1_2 Depth=1
	addi.d	$s4, $s4, 516
	ori	$a2, $zero, 20
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	ori	$a2, $zero, 1
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	ori	$a2, $zero, 8
	st.d	$a2, $sp, 200                   # 8-byte Folded Spill
	ori	$a7, $zero, 16
	ori	$a2, $zero, 8
	ld.d	$a6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	addi.w	$a3, $a2, 0
	bgtz	$a3, .LBB1_133
	b	.LBB1_102
.LBB1_101:                              # %for.cond945.loopexit
                                        #   in Loop: Header=BB1_2 Depth=1
	ori	$a2, $zero, 1
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	addi.w	$a3, $a2, 0
	bgtz	$a3, .LBB1_133
.LBB1_102:                              # %for.end1019
                                        #   in Loop: Header=BB1_2 Depth=1
	st.d	$a6, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	sll.w	$a3, $a3, $a4
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	add.w	$s0, $a4, $a3
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	b	.LBB1_2
.LBB1_103:                              # %sw.bb560
                                        #   in Loop: Header=BB1_2 Depth=1
	slti	$a4, $t8, 7
	ori	$a5, $zero, 11
	masknez	$a5, $a5, $a4
	ori	$a6, $zero, 8
	maskeqz	$a4, $a6, $a4
	or	$t8, $a4, $a5
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	b	.LBB1_121
.LBB1_104:                              # %sw.bb793.preheader.loopexit
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.d	$a7, $sp, 136                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	b	.LBB1_124
.LBB1_105:                              # %sw.bb651.loopexit
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	b	.LBB1_115
.LBB1_106:                              # %sw.bb998.loopexit
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.d	$a7, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	b	.LBB1_136
.LBB1_107:                              # %sw.bb742.loopexit
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 144                   # 8-byte Folded Reload
	b	.LBB1_130
.LBB1_108:                              #   in Loop: Header=BB1_2 Depth=1
	move	$a5, $s0
	b	.LBB1_120
.LBB1_109:                              # %if.then924
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	slli.w	$a2, $a2, 3
	alsl.d	$a2, $a2, $s4, 1
	addi.d	$s4, $a2, 260
	ori	$a2, $zero, 20
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	ori	$a2, $zero, 1
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	ori	$a2, $zero, 3
	st.d	$a2, $sp, 200                   # 8-byte Folded Spill
	ori	$a7, $zero, 8
.LBB1_110:                              # %for.cond945
                                        #   in Loop: Header=BB1_2 Depth=1
	ori	$a2, $zero, 3
	ld.d	$a6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	addi.w	$a3, $a2, 0
	bgtz	$a3, .LBB1_133
	b	.LBB1_102
.LBB1_111:                              # %if.else623
                                        #   in Loop: Header=BB1_2 Depth=1
	addi.w	$a2, $a2, -5
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	b	.LBB1_113
.LBB1_112:                              # %if.then906
                                        #   in Loop: Header=BB1_2 Depth=1
	move	$a7, $zero
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	slli.w	$a2, $a2, 3
	alsl.d	$a2, $a2, $s4, 1
	addi.d	$s4, $a2, 4
	ori	$a2, $zero, 20
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	ori	$a2, $zero, 1
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	ori	$a2, $zero, 3
	st.d	$a2, $sp, 200                   # 8-byte Folded Spill
	b	.LBB1_110
.LBB1_113:                              # %for.cond627
                                        #   in Loop: Header=BB1_2 Depth=1
	blez	$a2, .LBB1_118
# %bb.114:                              # %for.body631
                                        #   in Loop: Header=BB1_2 Depth=1
	bstrpick.d	$a4, $s5, 31, 1
	slli.d	$a5, $s0, 1
	sltu	$a6, $s8, $a4
	xori	$a6, $a6, 1
	or	$s0, $a5, $a6
	maskeqz	$a6, $a4, $a6
	bstrpick.d	$a5, $s5, 31, 25
	sub.w	$s8, $s8, $a6
	move	$s5, $a4
	bnez	$a5, .LBB1_117
.LBB1_115:                              # %sw.bb651
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.d	$t1, $sp, 208                   # 8-byte Folded Reload
	beqz	$t1, .LBB1_156
# %bb.116:                              # %if.end656
                                        #   in Loop: Header=BB1_2 Depth=1
	slli.d	$a4, $s5, 8
	ld.bu	$a5, $a7, 0
	slli.w	$a6, $s8, 8
	addi.w	$t1, $t1, -1
	st.d	$t1, $sp, 208                   # 8-byte Folded Spill
	addi.d	$a7, $a7, 1
	or	$s8, $a6, $a5
.LBB1_117:                              # %for.inc669
                                        #   in Loop: Header=BB1_2 Depth=1
	addi.w	$a2, $a2, -1
	move	$s5, $a4
	b	.LBB1_113
.LBB1_118:                              # %for.end672
                                        #   in Loop: Header=BB1_2 Depth=1
	st.d	$a7, $sp, 216                   # 8-byte Folded Spill
	move	$a2, $zero
	alsl.w	$t0, $s0, $t0, 4
	addi.d	$s4, $t2, 1604
	ori	$a6, $zero, 1
	ori	$a4, $zero, 4
	move	$s0, $zero
	addi.w	$a5, $a4, 0
	blt	$a2, $a5, .LBB1_127
.LBB1_119:                              # %for.end763
                                        #   in Loop: Header=BB1_2 Depth=1
	add.d	$a5, $t0, $s0
	st.d	$a4, $sp, 200                   # 8-byte Folded Spill
	st.d	$a6, $sp, 144                   # 8-byte Folded Spill
.LBB1_120:                              # %if.end770
                                        #   in Loop: Header=BB1_2 Depth=1
	addi.w	$t0, $a5, 1
.LBB1_121:                              # %if.end773
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.d	$a5, $sp, 208                   # 8-byte Folded Reload
	beqz	$t0, .LBB1_154
# %bb.122:                              # %if.end779
                                        #   in Loop: Header=BB1_2 Depth=1
	bltu	$t5, $t0, .LBB1_149
# %bb.123:                              # %if.end785
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.d	$a7, $sp, 136                   # 8-byte Folded Reload
	addi.w	$a7, $a7, 2
	add.w	$t5, $t5, $a7
	.p2align	4, , 16
.LBB1_124:                              # %sw.bb793
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a4, $a7
	beqz	$s7, .LBB1_142
# %bb.125:                              # %if.end798
                                        #   in Loop: Header=BB1_124 Depth=2
	sub.d	$a3, $s3, $t0
	addi.w	$a5, $a3, 0
	addi.w	$a6, $t7, 0
	sltu	$a5, $a5, $a6
	masknez	$a5, $t7, $a5
	add.d	$a3, $a5, $a3
	bstrpick.d	$a3, $a3, 31, 0
	ldx.bu	$fp, $t3, $a3
	bstrpick.d	$a3, $s3, 31, 0
	stx.b	$fp, $t3, $a3
	addi.w	$a3, $s3, 1
	mod.wu	$s3, $a3, $a6
	st.b	$fp, $s6, 0
	addi.d	$s6, $s6, 1
	addi.w	$s7, $s7, -1
	ori	$a3, $zero, 1
	addi.w	$a7, $a4, -1
	blt	$a3, $a4, .LBB1_124
# %bb.126:                              #   in Loop: Header=BB1_2 Depth=1
	ori	$a3, $zero, 2
	b	.LBB1_2
.LBB1_127:                              # %for.body689
                                        #   in Loop: Header=BB1_2 Depth=1
	st.d	$t0, $sp, 184                   # 8-byte Folded Spill
	slli.d	$a5, $a6, 1
	ldx.hu	$a7, $s4, $a5
	bstrpick.d	$a5, $s5, 31, 11
	mul.d	$a5, $a5, $a7
	addi.w	$t0, $a5, 0
	alsl.d	$s1, $a6, $s4, 1
	bgeu	$s8, $t0, .LBB1_129
# %bb.128:                              # %if.then704
                                        #   in Loop: Header=BB1_2 Depth=1
	ori	$t0, $zero, 2048
	sub.d	$t0, $t0, $a7
	bstrpick.d	$t0, $t0, 31, 5
	add.d	$a7, $a7, $t0
	slli.w	$t0, $a6, 1
	bstrpick.d	$a6, $a5, 31, 24
	st.h	$a7, $s1, 0
	move	$s5, $a5
	bnez	$a6, .LBB1_132
	b	.LBB1_130
.LBB1_129:                              # %if.else716
                                        #   in Loop: Header=BB1_2 Depth=1
	ori	$t0, $zero, 1
	sll.w	$t0, $t0, $a2
	or	$s0, $t0, $s0
	sub.w	$s8, $s8, $a5
	sub.w	$a5, $s5, $a5
	srli.d	$t0, $a7, 5
	sub.d	$a7, $a7, $t0
	slli.d	$a6, $a6, 1
	addi.w	$t0, $a6, 1
	bstrpick.d	$a6, $a5, 31, 24
	st.h	$a7, $s1, 0
	move	$s5, $a5
	bnez	$a6, .LBB1_132
.LBB1_130:                              # %sw.bb742
                                        #   in Loop: Header=BB1_2 Depth=1
	st.d	$t0, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 208                   # 8-byte Folded Reload
	beqz	$t1, .LBB1_153
# %bb.131:                              # %if.end747
                                        #   in Loop: Header=BB1_2 Depth=1
	slli.d	$a5, $s5, 8
	move	$t0, $a6
	ld.bu	$a6, $a6, 0
	slli.w	$a7, $s8, 8
	addi.w	$t1, $t1, -1
	st.d	$t1, $sp, 208                   # 8-byte Folded Spill
	addi.d	$t0, $t0, 1
	or	$s8, $a7, $a6
	st.d	$t0, $sp, 216                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 144                   # 8-byte Folded Reload
.LBB1_132:                              # %for.inc760
                                        #   in Loop: Header=BB1_2 Depth=1
	addi.w	$a2, $a2, 1
	move	$a6, $t0
	move	$s5, $a5
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	addi.w	$a5, $a4, 0
	blt	$a2, $a5, .LBB1_127
	b	.LBB1_119
	.p2align	4, , 16
.LBB1_133:                              # %for.body949
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.d	$t1, $sp, 144                   # 8-byte Folded Reload
	slli.d	$a3, $t1, 1
	ldx.hu	$a4, $s4, $a3
	alsl.d	$s1, $t1, $s4, 1
	bstrpick.d	$a3, $s5, 31, 11
	mul.d	$a3, $a3, $a4
	addi.w	$a5, $a3, 0
	slli.w	$t1, $t1, 1
	bgeu	$s8, $a5, .LBB1_135
# %bb.134:                              # %if.then964
                                        #   in Loop: Header=BB1_2 Depth=1
	st.d	$t1, $sp, 144                   # 8-byte Folded Spill
	ori	$a5, $zero, 2048
	sub.d	$a5, $a5, $a4
	bstrpick.d	$a5, $a5, 31, 5
	add.d	$a5, $a4, $a5
	bstrpick.d	$a4, $a3, 31, 24
	st.h	$a5, $s1, 0
	move	$s5, $a3
	bnez	$a4, .LBB1_138
	b	.LBB1_136
.LBB1_135:                              # %if.else976
                                        #   in Loop: Header=BB1_2 Depth=1
	sub.w	$s8, $s8, $a3
	sub.w	$a3, $s5, $a3
	srli.d	$a5, $a4, 5
	sub.d	$a5, $a4, $a5
	ori	$t1, $t1, 1
	st.d	$t1, $sp, 144                   # 8-byte Folded Spill
	bstrpick.d	$a4, $a3, 31, 24
	st.h	$a5, $s1, 0
	move	$s5, $a3
	bnez	$a4, .LBB1_138
.LBB1_136:                              # %sw.bb998
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.d	$t1, $sp, 208                   # 8-byte Folded Reload
	beqz	$t1, .LBB1_150
# %bb.137:                              # %if.end1003
                                        #   in Loop: Header=BB1_2 Depth=1
	slli.d	$a3, $s5, 8
	ld.bu	$a4, $a6, 0
	slli.w	$a5, $s8, 8
	addi.w	$t1, $t1, -1
	st.d	$t1, $sp, 208                   # 8-byte Folded Spill
	addi.d	$a6, $a6, 1
	or	$s8, $a5, $a4
.LBB1_138:                              # %for.inc1016
                                        #   in Loop: Header=BB1_2 Depth=1
	addi.w	$a2, $a2, -1
	move	$s5, $a3
	addi.w	$a3, $a2, 0
	bgtz	$a3, .LBB1_133
	b	.LBB1_102
.LBB1_139:
	ori	$s2, $zero, 1
	b	.LBB1_148
.LBB1_140:
	move	$a6, $s2
	move	$s7, $zero
	ori	$a3, $zero, 26
	ld.d	$a7, $sp, 136                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	b	.LBB1_143
.LBB1_141:
	move	$a6, $s2
	move	$a5, $zero
	ori	$a3, $zero, 14
	b	.LBB1_146
.LBB1_142:
	move	$a6, $s2
	move	$s7, $zero
	ori	$a3, $zero, 28
	move	$a7, $a4
.LBB1_143:                              # %saveStateAndReturn
	ld.d	$a5, $sp, 208                   # 8-byte Folded Reload
	b	.LBB1_147
.LBB1_144:
	move	$a6, $s2
	move	$a5, $zero
	ori	$a3, $zero, 15
	b	.LBB1_146
.LBB1_145:
	move	$a6, $s2
	move	$a5, $zero
	ori	$a3, $zero, 13
.LBB1_146:                              # %saveStateAndReturn
	ld.d	$a7, $sp, 136                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
.LBB1_147:                              # %saveStateAndReturn
	move	$s2, $zero
	st.w	$a3, $a0, 0
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	st.w	$a3, $a0, 4
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	st.w	$a3, $a0, 8
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	st.w	$a3, $a0, 12
	st.w	$a1, $a0, 16
	st.w	$t7, $a0, 20
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	st.d	$a1, $a0, 24
	st.w	$a5, $a0, 32
	st.w	$t4, $a0, 36
	st.d	$s6, $a0, 40
	st.w	$s7, $a0, 48
	st.w	$t5, $a0, 52
	ld.w	$a1, $sp, 224
	ld.h	$a3, $sp, 228
	st.b	$fp, $a0, 56
	st.b	$t6, $a0, 57
	st.w	$a1, $a0, 58
	st.h	$a3, $a0, 62
	st.d	$s4, $a0, 64
	st.d	$s1, $a0, 72
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	st.w	$a1, $a0, 80
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.w	$a1, $a0, 84
	st.w	$a2, $a0, 88
	st.w	$s0, $a0, 92
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	st.w	$a1, $a0, 96
	st.w	$ra, $a0, 100
	st.w	$t8, $a0, 104
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	st.w	$a1, $a0, 108
	st.w	$a7, $a0, 112
	st.w	$t0, $a0, 116
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	st.w	$a1, $a0, 120
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	st.w	$a1, $a0, 124
	st.w	$a6, $a0, 128
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.w	$a1, $a0, 132
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.w	$a1, $a0, 136
	st.w	$s3, $a0, 140
	st.w	$s5, $a0, 144
	st.w	$s8, $a0, 148
	st.d	$t3, $a0, 152
	st.d	$t2, $a0, 160
.LBB1_148:                              # %cleanup
	move	$a0, $s2
	ld.d	$s8, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 312                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 320
	ret
.LBB1_149:                              # %cleanup.loopexit
	addi.w	$s2, $zero, -1
	b	.LBB1_148
.LBB1_150:
	st.d	$a6, $sp, 216                   # 8-byte Folded Spill
	move	$a6, $s2
	move	$a5, $zero
	ori	$a3, $zero, 24
	b	.LBB1_147
.LBB1_151:
	move	$a6, $s2
	ori	$a3, $zero, 5
	st.d	$a5, $sp, 168                   # 8-byte Folded Spill
	move	$a5, $zero
	st.d	$a4, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a7, $sp, 136                   # 8-byte Folded Reload
	b	.LBB1_147
.LBB1_152:
	st.d	$a6, $sp, 216                   # 8-byte Folded Spill
	move	$a6, $s2
	move	$a5, $zero
	ori	$a3, $zero, 3
	b	.LBB1_147
.LBB1_153:
	move	$a6, $s2
	move	$a5, $zero
	ori	$a3, $zero, 16
	st.d	$a4, $sp, 200                   # 8-byte Folded Spill
	b	.LBB1_146
.LBB1_154:
	move	$a6, $s2
	move	$t0, $zero
	ld.d	$a7, $sp, 96                    # 8-byte Folded Reload
	b	.LBB1_147
.LBB1_155:
	st.d	$a6, $sp, 216                   # 8-byte Folded Spill
	move	$a6, $s2
	move	$a5, $zero
	ori	$a3, $zero, 1
	b	.LBB1_147
.LBB1_156:
	st.d	$a7, $sp, 216                   # 8-byte Folded Spill
	move	$a6, $s2
	move	$a5, $zero
	ori	$a3, $zero, 12
	ld.d	$a7, $sp, 136                   # 8-byte Folded Reload
	b	.LBB1_147
.LBB1_157:
	move	$a6, $s2
	move	$s7, $zero
	ori	$a3, $zero, 27
	ld.d	$a7, $sp, 136                   # 8-byte Folded Reload
	b	.LBB1_143
.LBB1_158:
	move	$a6, $s2
	move	$a5, $zero
	move	$a3, $zero
	b	.LBB1_146
.Lfunc_end1:
	.size	lzmaDecode, .Lfunc_end1-lzmaDecode
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI1_0:
	.word	.LBB1_45-.LJTI1_0
	.word	.LBB1_44-.LJTI1_0
	.word	.LBB1_40-.LJTI1_0
	.word	.LBB1_42-.LJTI1_0
	.word	.LBB1_76-.LJTI1_0
	.word	.LBB1_41-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_37-.LJTI1_0
	.word	.LBB1_49-.LJTI1_0
	.word	.LBB1_51-.LJTI1_0
	.word	.LBB1_53-.LJTI1_0
	.word	.LBB1_43-.LJTI1_0
	.word	.LBB1_105-.LJTI1_0
	.word	.LBB1_24-.LJTI1_0
	.word	.LBB1_35-.LJTI1_0
	.word	.LBB1_17-.LJTI1_0
	.word	.LBB1_107-.LJTI1_0
	.word	.LBB1_58-.LJTI1_0
	.word	.LBB1_55-.LJTI1_0
	.word	.LBB1_99-.LJTI1_0
	.word	.LBB1_39-.LJTI1_0
	.word	.LBB1_103-.LJTI1_0
	.word	.LBB1_95-.LJTI1_0
	.word	.LBB1_101-.LJTI1_0
	.word	.LBB1_106-.LJTI1_0
	.word	.LBB1_96-.LJTI1_0
	.word	.LBB1_29-.LJTI1_0
	.word	.LBB1_57-.LJTI1_0
	.word	.LBB1_104-.LJTI1_0
                                        # -- End function
	.text
	.globl	lzmaShutdown                    # -- Begin function lzmaShutdown
	.p2align	5
	.type	lzmaShutdown,@function
lzmaShutdown:                           # @lzmaShutdown
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	move	$fp, $a0
	addi.d	$a0, $sp, 16
	ori	$a2, $zero, 152
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 160
	ld.d	$s0, $fp, 152
	beqz	$a0, .LBB2_2
# %bb.1:                                # %if.then
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_2:                                # %if.end
	beqz	$s0, .LBB2_4
# %bb.3:                                # %if.then3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_4:                                # %if.end5
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 152
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 152
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.Lfunc_end2:
	.size	lzmaShutdown, .Lfunc_end2-lzmaShutdown
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
