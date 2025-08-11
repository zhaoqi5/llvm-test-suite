	.file	"loopFilter.c"
	.text
	.globl	DeblockPicture                  # -- Begin function DeblockPicture
	.p2align	5
	.type	DeblockPicture,@function
DeblockPicture:                         # @DeblockPicture
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	lu12i.w	$a1, 77
	ori	$a1, $a1, 1520
	ldx.w	$a2, $fp, $a1
	beqz	$a2, .LBB0_3
# %bb.1:                                # %for.body.preheader
	move	$s0, $a0
	move	$s1, $zero
	add.d	$s2, $fp, $a1
	.p2align	4, , 16
.LBB0_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(DeblockMb)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 0
	addi.w	$s1, $s1, 1
	bltu	$s1, $a0, .LBB0_2
.LBB0_3:                                # %for.end
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end0:
	.size	DeblockPicture, .Lfunc_end0-DeblockPicture
                                        # -- End function
	.globl	DeblockMb                       # -- Begin function DeblockMb
	.p2align	5
	.type	DeblockMb,@function
DeblockMb:                              # @DeblockMb
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
	move	$s0, $a2
	move	$s1, $a1
	move	$fp, $a0
	lu12i.w	$a0, 77
	pcalau12i	$a1, %pc_hi20(.L__const.DeblockMb.filterNon8x8LumaEdgesFlag)
	addi.d	$a1, $a1, %pc_lo12(.L__const.DeblockMb.filterNon8x8LumaEdgesFlag)
	ld.w	$a2, $a1, 8
	ori	$a0, $a0, 1472
	add.d	$s7, $s1, $a0
	ld.d	$a0, $a1, 0
	st.w	$a2, $sp, 168
	ld.d	$a1, $s7, 56
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	ld.d	$s4, $s7, 64
	st.d	$a0, $sp, 160
	ori	$a0, $zero, 1
	stptr.w	$a0, $fp, 5628
	addi.d	$a1, $sp, 180
	addi.d	$a2, $sp, 176
	move	$a0, $s0
	move	$a3, $zero
	pcaddu18i	$ra, %call36(get_mb_pos)
	jirl	$ra, $ra, 0
	ldptr.d	$a0, $fp, 5600
	ld.w	$a2, $sp, 176
	ori	$a1, $zero, 408
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	mul.d	$a1, $s0, $a1
	add.d	$s2, $a0, $a1
	ld.w	$a3, $s2, 396
	ld.w	$a0, $sp, 180
	ld.w	$a1, $s7, 40
	sltu	$a4, $zero, $a2
	st.d	$a4, $sp, 56                    # 8-byte Folded Spill
	sltui	$a3, $a3, 1
	st.w	$a3, $sp, 172
	st.w	$a3, $sp, 164
	beqz	$a1, .LBB1_3
# %bb.1:                                # %entry
	ori	$a3, $zero, 16
	bne	$a2, $a3, .LBB1_3
# %bb.2:                                # %land.lhs.true12
	ld.w	$a2, $s2, 356
	sltui	$a2, $a2, 1
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
.LBB1_3:                                # %if.end15
	ld.w	$a2, $s1, 0
	beqz	$a2, .LBB1_11
.LBB1_4:                                # %lor.end.thread
	ori	$s6, $zero, 2
.LBB1_5:                                # %lor.end.thread113
	ld.w	$a2, $s2, 340
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB1_38
# %bb.6:                                # %lor.end.thread113
	ori	$a3, $zero, 2
	bne	$a2, $a3, .LBB1_13
# %bb.7:                                # %if.then33
	ld.w	$s0, $s2, 380
	beqz	$a1, .LBB1_10
# %bb.8:                                # %land.lhs.true36
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB1_10
# %bb.9:                                # %land.lhs.true36
	ld.w	$a0, $s2, 356
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	beqz	$a0, .LBB1_14
.LBB1_10:                               # %if.else
	ld.w	$a0, $s2, 384
	sltu	$a0, $zero, $a0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	b	.LBB1_14
.LBB1_11:                               # %lor.rhs
	ori	$s6, $zero, 4
	beqz	$a1, .LBB1_5
# %bb.12:                               # %lor.end
	ld.w	$a2, $s2, 356
	bnez	$a2, .LBB1_4
	b	.LBB1_5
.LBB1_13:
	sltu	$s0, $zero, $a0
.LBB1_14:                               # %if.end43
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	st.w	$a0, $fp, 4
	pcaddu18i	$ra, %call36(CheckAvailabilityOfNeighbors)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	pcalau12i	$a0, %pc_hi20(chroma_edge)
	addi.d	$a0, $a0, %pc_lo12(chroma_edge)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	addi.d	$s3, $sp, 184
	ori	$s8, $zero, 14
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(mixedModeEdgeFlag)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	sltu	$a0, $zero, $s0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	b	.LBB1_16
	.p2align	4, , 16
.LBB1_15:                               # %for.inc151
                                        #   in Loop: Header=BB1_16 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ori	$a1, $zero, 1
	st.d	$zero, $sp, 120                 # 8-byte Folded Spill
	beqz	$a0, .LBB1_38
.LBB1_16:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_21 Depth 2
                                        #       Child Loop BB1_24 Depth 3
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	and	$a0, $a1, $a0
	andi	$a0, $a0, 1
	ori	$a2, $zero, 1
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	bnez	$a0, .LBB1_18
# %bb.17:                               # %lor.rhs49
                                        #   in Loop: Header=BB1_16 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	andn	$a0, $a0, $a1
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
.LBB1_18:                               # %lor.end54
                                        #   in Loop: Header=BB1_16 Depth=1
	move	$s5, $zero
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	alsl.d	$a0, $a1, $a0, 4
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	b	.LBB1_21
.LBB1_19:                               # %if.end144
                                        #   in Loop: Header=BB1_21 Depth=2
	ori	$a0, $zero, 1
	stptr.w	$a0, $fp, 5628
	.p2align	4, , 16
.LBB1_20:                               # %for.inc148
                                        #   in Loop: Header=BB1_21 Depth=2
	addi.d	$s5, $s5, 1
	ori	$a0, $zero, 4
	beq	$s5, $a0, .LBB1_15
.LBB1_21:                               # %for.body59
                                        #   Parent Loop BB1_16 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_24 Depth 3
	sltu	$s0, $zero, $s5
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	or	$a0, $s0, $a0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB1_20
# %bb.22:                               # %if.then62
                                        #   in Loop: Header=BB1_21 Depth=2
	ld.w	$a0, $s7, 180
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	alsl.d	$a1, $s5, $a1, 2
	ldx.b	$a0, $a1, $a0
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	addi.d	$a0, $sp, 184
	move	$a1, $fp
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	move	$a4, $s5
	move	$a5, $s6
	move	$a6, $s1
	pcaddu18i	$ra, %call36(GetStrength)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $sp, 184
	bnez	$a0, .LBB1_27
# %bb.23:                               # %if.end78.preheader
                                        #   in Loop: Header=BB1_21 Depth=2
	ori	$a0, $zero, 1
	.p2align	4, , 16
.LBB1_24:                               # %if.end78
                                        #   Parent Loop BB1_16 Depth=1
                                        #     Parent Loop BB1_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.bu	$a1, $a0, $s3
	bltu	$s8, $a0, .LBB1_26
# %bb.25:                               # %if.end78
                                        #   in Loop: Header=BB1_24 Depth=3
	addi.d	$a0, $a0, 1
	beqz	$a1, .LBB1_24
.LBB1_26:                               # %for.end
                                        #   in Loop: Header=BB1_21 Depth=2
	beqz	$a1, .LBB1_32
.LBB1_27:                               # %if.then83
                                        #   in Loop: Header=BB1_21 Depth=2
	slli.d	$a0, $s5, 2
	addi.d	$a1, $sp, 160
	ldx.w	$a0, $a0, $a1
	beqz	$a0, .LBB1_29
# %bb.28:                               # %if.then87
                                        #   in Loop: Header=BB1_21 Depth=2
	ld.w	$a4, $s2, 344
	ld.w	$a5, $s2, 348
	ld.w	$a0, $s7, 0
	st.d	$s1, $sp, 24
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 8
	addi.d	$a1, $sp, 184
	st.d	$a0, $sp, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	move	$a2, $fp
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 128                   # 8-byte Folded Reload
	move	$a7, $s5
	pcaddu18i	$ra, %call36(EdgeLoop)
	jirl	$ra, $ra, 0
.LBB1_29:                               # %if.end89
                                        #   in Loop: Header=BB1_21 Depth=2
	beqz	$s4, .LBB1_32
# %bb.30:                               # %if.end89
                                        #   in Loop: Header=BB1_21 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	bltz	$a0, .LBB1_32
# %bb.31:                               # %if.then95
                                        #   in Loop: Header=BB1_21 Depth=2
	ld.d	$a0, $s4, 0
	ld.w	$a4, $s2, 344
	ld.w	$a5, $s2, 348
	ld.w	$a2, $s7, 8
	st.d	$s1, $sp, 24
	st.d	$zero, $sp, 16
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 8
	addi.d	$a1, $sp, 184
	st.d	$a2, $sp, 0
	move	$a2, $fp
	move	$s6, $s4
	move	$s4, $fp
	move	$fp, $s7
	move	$s7, $s1
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
	move	$a3, $s1
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	move	$a6, $s3
	ld.d	$s8, $sp, 144                   # 8-byte Folded Reload
	move	$a7, $s8
	pcaddu18i	$ra, %call36(EdgeLoop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 8
	ld.w	$a4, $s2, 344
	ld.w	$a5, $s2, 348
	ld.w	$a2, $fp, 8
	st.d	$s7, $sp, 24
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 16
	st.d	$a1, $sp, 8
	addi.d	$a1, $sp, 184
	st.d	$a2, $sp, 0
	move	$a2, $s4
	move	$a3, $s1
	move	$s1, $s7
	move	$s7, $fp
	move	$fp, $s4
	move	$s4, $s6
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	move	$a6, $s3
	addi.d	$s3, $sp, 184
	move	$a7, $s8
	ori	$s8, $zero, 14
	pcaddu18i	$ra, %call36(EdgeLoop)
	jirl	$ra, $ra, 0
.LBB1_32:                               # %if.end106
                                        #   in Loop: Header=BB1_21 Depth=2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	or	$a0, $a0, $s0
	andi	$a0, $a0, 1
	bnez	$a0, .LBB1_20
# %bb.33:                               # %land.lhs.true110
                                        #   in Loop: Header=BB1_21 Depth=2
	ld.w	$a0, $s2, 356
	bnez	$a0, .LBB1_20
# %bb.34:                               # %land.lhs.true110
                                        #   in Loop: Header=BB1_21 Depth=2
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, %pc_lo12(mixedModeEdgeFlag)
	beqz	$a0, .LBB1_20
# %bb.35:                               # %if.end127
                                        #   in Loop: Header=BB1_21 Depth=2
	ori	$a0, $zero, 2
	stptr.w	$a0, $fp, 5628
	addi.d	$a0, $sp, 184
	ori	$a3, $zero, 1
	ori	$a4, $zero, 4
	move	$a1, $fp
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	move	$a2, $s0
	move	$a5, $s6
	move	$a6, $s1
	pcaddu18i	$ra, %call36(GetStrength)
	jirl	$ra, $ra, 0
	ld.w	$a4, $s2, 344
	ld.w	$a5, $s2, 348
	ld.w	$a0, $s7, 0
	st.d	$s1, $sp, 24
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 8
	addi.d	$a1, $sp, 184
	ori	$a6, $zero, 1
	ori	$a7, $zero, 4
	st.d	$a0, $sp, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	move	$a2, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(EdgeLoop)
	jirl	$ra, $ra, 0
	beqz	$s4, .LBB1_19
# %bb.36:                               # %if.end127
                                        #   in Loop: Header=BB1_21 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	bltz	$a0, .LBB1_19
# %bb.37:                               # %if.then133
                                        #   in Loop: Header=BB1_21 Depth=2
	ld.d	$a0, $s4, 0
	ld.w	$a4, $s2, 344
	ld.w	$a5, $s2, 348
	ld.w	$a2, $s7, 8
	st.d	$s1, $sp, 24
	st.d	$zero, $sp, 16
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 8
	addi.d	$a1, $sp, 184
	ori	$a6, $zero, 1
	ori	$a7, $zero, 4
	st.d	$a2, $sp, 0
	move	$a2, $fp
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	move	$a3, $s0
	pcaddu18i	$ra, %call36(EdgeLoop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 8
	ld.w	$a4, $s2, 344
	ld.w	$a5, $s2, 348
	ld.w	$a2, $s7, 8
	st.d	$s1, $sp, 24
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 16
	st.d	$a1, $sp, 8
	addi.d	$a1, $sp, 184
	ori	$a6, $zero, 1
	ori	$a7, $zero, 4
	st.d	$a2, $sp, 0
	move	$a2, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(EdgeLoop)
	jirl	$ra, $ra, 0
	b	.LBB1_19
.LBB1_38:                               # %cleanup
	stptr.w	$zero, $fp, 5628
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
.Lfunc_end1:
	.size	DeblockMb, .Lfunc_end1-DeblockMb
                                        # -- End function
	.globl	GetStrength                     # -- Begin function GetStrength
	.p2align	5
	.type	GetStrength,@function
GetStrength:                            # @GetStrength
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
	lu12i.w	$a7, 77
	ori	$a7, $a7, 1512
	st.d	$a6, $sp, 72                    # 8-byte Folded Spill
	add.d	$s6, $a6, $a7
	ld.d	$a6, $s6, 72
	st.d	$a5, $sp, 40                    # 8-byte Folded Spill
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	move	$s7, $zero
	move	$s8, $zero
	ld.d	$a0, $s6, 48
	ld.d	$a5, $a6, 0
	st.d	$a5, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a5, $s6, 56
	ld.d	$a6, $a6, 8
	st.d	$a6, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a6, $a0, 0
	st.d	$a6, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 8
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $a5, 0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $a5, 8
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	ldptr.d	$a0, $a1, 5600
	addi.d	$a1, $a3, -1
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	ori	$a1, $zero, 408
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	mul.d	$a1, $a2, $a1
	add.d	$fp, $a0, $a1
	st.d	$a3, $sp, 112                   # 8-byte Folded Spill
	sltui	$s5, $a3, 1
	slli.d	$a0, $a4, 2
	move	$s0, $a4
	slti	$a1, $a4, 4
	ori	$a2, $zero, 1
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	addi.d	$a2, $s5, 3
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	maskeqz	$s3, $a0, $s5
	masknez	$s4, $a1, $s5
	lu12i.w	$a0, 6
	ori	$a0, $a0, 1536
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	b	.LBB2_5
	.p2align	4, , 16
.LBB2_1:                                # %if.then
                                        #   in Loop: Header=BB2_5 Depth=1
	ori	$a1, $zero, 3
	beqz	$s0, .LBB2_11
.LBB2_2:                                # %land.end62
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
.LBB2_3:                                # %for.inc
                                        #   in Loop: Header=BB2_5 Depth=1
	stx.b	$a1, $a0, $s8
.LBB2_4:                                # %for.inc
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.d	$s8, $s8, 1
	addi.w	$s7, $s7, 1
	ori	$a0, $zero, 16
	beq	$s8, $a0, .LBB2_51
.LBB2_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	masknez	$a0, $s7, $s5
	or	$s1, $s3, $a0
	maskeqz	$a0, $s7, $s5
	pcalau12i	$a1, %pc_hi20(getNeighbour)
	ld.d	$a5, $a1, %pc_lo12(getNeighbour)
	or	$s2, $a0, $s4
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	add.w	$a1, $a0, $s1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	sub.w	$a2, $s2, $a0
	addi.d	$a4, $sp, 136
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.w	$a0, $sp, 140
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ldptr.d	$a1, $a1, 5600
	ori	$a2, $zero, 408
	mul.d	$a0, $a0, $a2
	add.d	$a0, $a1, $a0
	ld.w	$a1, $fp, 356
	ld.w	$a2, $a0, 356
	xor	$a1, $a1, $a2
	sltu	$a2, $zero, $a1
	pcalau12i	$a1, %pc_hi20(mixedModeEdgeFlag)
	st.b	$a2, $a1, %pc_lo12(mixedModeEdgeFlag)
	ld.w	$a4, $s6, 120
	ld.w	$a2, $sp, 144
	ld.wu	$a3, $sp, 148
	addi.w	$a4, $a4, -3
	ori	$a5, $zero, 1
	bgeu	$a5, $a4, .LBB2_1
# %bb.6:                                # %if.else
                                        #   in Loop: Header=BB2_5 Depth=1
	ori	$a4, $zero, 3
	bnez	$s0, .LBB2_17
# %bb.7:                                # %land.rhs69
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.w	$a4, $s6, 0
	beqz	$a4, .LBB2_15
# %bb.8:                                # %land.lhs.true79
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.w	$a4, $a0, 356
	bnez	$a4, .LBB2_16
# %bb.9:                                # %land.lhs.true82
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.w	$a4, $fp, 356
	bnez	$a4, .LBB2_16
.LBB2_10:                               #   in Loop: Header=BB2_5 Depth=1
	ori	$a4, $zero, 4
	b	.LBB2_17
.LBB2_11:                               # %land.rhs
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.w	$a1, $s6, 0
	beqz	$a1, .LBB2_24
# %bb.12:                               # %land.lhs.true48
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.w	$a0, $a0, 356
	bnez	$a0, .LBB2_25
# %bb.13:                               # %land.lhs.true51
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.w	$a0, $fp, 356
	bnez	$a0, .LBB2_25
.LBB2_14:                               #   in Loop: Header=BB2_5 Depth=1
	ori	$a1, $zero, 4
	b	.LBB2_2
.LBB2_15:                               # %land.lhs.true72
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a4, $a4, 0
	beqz	$a4, .LBB2_10
.LBB2_16:                               # %land.rhs92
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
.LBB2_17:                               # %land.end97
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	stx.b	$a4, $a5, $s8
	ld.w	$a4, $a0, 40
	ori	$a5, $zero, 14
	bltu	$a5, $a4, .LBB2_19
# %bb.18:                               # %land.end97
                                        #   in Loop: Header=BB2_5 Depth=1
	ori	$a5, $zero, 1
	sll.d	$a4, $a5, $a4
	ld.d	$a5, $sp, 88                    # 8-byte Folded Reload
	and	$a4, $a4, $a5
	bnez	$a4, .LBB2_4
.LBB2_19:                               # %land.lhs.true116
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.w	$a4, $fp, 40
	ori	$a5, $zero, 14
	bltu	$a5, $a4, .LBB2_21
# %bb.20:                               # %land.lhs.true116
                                        #   in Loop: Header=BB2_5 Depth=1
	ori	$a5, $zero, 1
	sll.d	$a4, $a5, $a4
	ld.d	$a5, $sp, 88                    # 8-byte Folded Reload
	and	$a4, $a4, $a5
	bnez	$a4, .LBB2_4
.LBB2_21:                               # %if.then132
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.w	$a4, $s1, 0
	ld.d	$a5, $fp, 304
	bstrpick.d	$a6, $s2, 31, 2
	srai.d	$s1, $a4, 2
	alsl.w	$s2, $a6, $s1, 2
	srl.d	$a4, $a5, $s2
	andi	$a4, $a4, 1
	bnez	$a4, .LBB2_23
# %bb.22:                               # %lor.lhs.false136
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.d	$a0, $a0, 304
	bstrpick.d	$a3, $a3, 31, 2
	srli.d	$a2, $a2, 2
	alsl.w	$a2, $a3, $a2, 2
	srl.d	$a0, $a0, $a2
	andi	$a0, $a0, 1
	beqz	$a0, .LBB2_26
.LBB2_23:                               # %if.then143
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ori	$a1, $zero, 2
	b	.LBB2_3
.LBB2_24:                               # %land.lhs.true
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB2_14
.LBB2_25:                               # %land.rhs60
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	b	.LBB2_2
.LBB2_26:                               # %if.else146
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.bu	$a0, $a1, %pc_lo12(mixedModeEdgeFlag)
	beqz	$a0, .LBB2_28
.LBB2_27:                               # %if.else522
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ori	$a1, $zero, 1
	b	.LBB2_3
.LBB2_28:                               # %if.else151
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %pc_hi20(get_mb_block_pos)
	ld.d	$a3, $a0, %pc_lo12(get_mb_block_pos)
	addi.d	$a1, $sp, 164
	addi.d	$a2, $sp, 160
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.w	$a0, $sp, 160
	srli.d	$a1, $s2, 2
	alsl.w	$a0, $a0, $a1, 2
	ld.w	$a1, $sp, 164
	slli.d	$a3, $a0, 3
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a3
	bstrins.d	$s1, $a1, 63, 2
	addi.w	$a5, $s1, 0
	ldx.b	$a0, $a0, $a5
	slli.d	$a2, $a5, 3
	lu52i.d	$t4, $zero, -2048
	move	$a4, $t4
	bltz	$a0, .LBB2_30
# %bb.29:                               # %cond.false168
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a3
	ldx.d	$a4, $a0, $a2
.LBB2_30:                               # %cond.end173
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.w	$a0, $sp, 156
	srai.d	$a0, $a0, 2
	ld.w	$a6, $sp, 152
	slli.d	$a1, $a0, 3
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	srai.d	$t0, $a6, 2
	ldx.b	$a7, $a0, $t0
	slli.d	$a0, $t0, 3
	move	$a6, $t4
	ld.d	$t3, $sp, 16                    # 8-byte Folded Reload
	bltz	$a7, .LBB2_32
# %bb.31:                               # %cond.false183
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.d	$a6, $sp, 56                    # 8-byte Folded Reload
	ldx.d	$a6, $a6, $a1
	ldx.d	$a6, $a6, $a0
.LBB2_32:                               # %cond.end188
                                        #   in Loop: Header=BB2_5 Depth=1
	ldx.d	$a7, $t3, $a3
	ldx.b	$a5, $a7, $a5
	move	$a7, $t4
	ld.d	$t1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 24                    # 8-byte Folded Reload
	bltz	$a5, .LBB2_34
# %bb.33:                               # %cond.false198
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	ldx.d	$a5, $a5, $a3
	ldx.d	$a7, $a5, $a2
.LBB2_34:                               # %cond.end203
                                        #   in Loop: Header=BB2_5 Depth=1
	ldx.d	$a5, $t3, $a1
	ldx.b	$t0, $a5, $t0
	move	$a5, $t4
	bltz	$t0, .LBB2_36
# %bb.35:                               # %cond.false213
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	ldx.d	$a5, $a5, $a1
	ldx.d	$a5, $a5, $a0
.LBB2_36:                               # %cond.end218
                                        #   in Loop: Header=BB2_5 Depth=1
	bne	$a4, $a6, .LBB2_38
# %bb.37:                               # %cond.end218
                                        #   in Loop: Header=BB2_5 Depth=1
	beq	$a7, $a5, .LBB2_40
.LBB2_38:                               # %lor.lhs.false225
                                        #   in Loop: Header=BB2_5 Depth=1
	bne	$a4, $a5, .LBB2_27
# %bb.39:                               # %lor.lhs.false225
                                        #   in Loop: Header=BB2_5 Depth=1
	bne	$a7, $a6, .LBB2_27
.LBB2_40:                               # %if.then231
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	stx.b	$zero, $a5, $s8
	ldx.d	$a5, $t1, $a3
	ldx.d	$t0, $a5, $a2
	ld.h	$a5, $t0, 0
	bne	$a4, $a7, .LBB2_45
# %bb.41:                               # %if.else379
                                        #   in Loop: Header=BB2_5 Depth=1
	ldx.d	$a4, $t1, $a1
	ldx.d	$a6, $a4, $a0
	ld.h	$a4, $t0, 2
	ldx.d	$a7, $t2, $a3
	ldx.d	$t0, $t2, $a1
	ld.h	$a1, $a6, 2
	ld.h	$a3, $a6, 0
	ldx.d	$a6, $a7, $a2
	ldx.d	$t0, $t0, $a0
	sub.d	$t1, $a4, $a1
	srai.d	$t2, $t1, 63
	ld.h	$a2, $a6, 0
	ld.h	$a7, $t0, 0
	ld.h	$a0, $a6, 2
	ld.h	$a6, $t0, 2
	xor	$t0, $t1, $t2
	sub.d	$t0, $t0, $t2
	ld.d	$t1, $sp, 40                    # 8-byte Folded Reload
	bge	$t0, $t1, .LBB2_47
# %bb.42:                               # %if.else379
                                        #   in Loop: Header=BB2_5 Depth=1
	sub.w	$t0, $a5, $a3
	srai.d	$t1, $t0, 31
	xor	$t0, $t0, $t1
	sub.w	$t0, $t0, $t1
	sub.d	$t1, $a2, $a7
	srai.d	$t2, $t1, 63
	xor	$t1, $t1, $t2
	sub.w	$t1, $t1, $t2
	or	$t0, $t1, $t0
	ori	$t1, $zero, 3
	bltu	$t1, $t0, .LBB2_47
# %bb.43:                               # %if.else379
                                        #   in Loop: Header=BB2_5 Depth=1
	sub.d	$t0, $a0, $a6
	srai.d	$t1, $t0, 63
	xor	$t0, $t0, $t1
	sub.w	$t0, $t0, $t1
	ld.d	$t1, $sp, 40                    # 8-byte Folded Reload
	bge	$t0, $t1, .LBB2_47
# %bb.44:                               #   in Loop: Header=BB2_5 Depth=1
	move	$a0, $zero
	b	.LBB2_50
.LBB2_45:                               # %if.then236
                                        #   in Loop: Header=BB2_5 Depth=1
	ldx.d	$a3, $t2, $a3
	ldx.d	$a2, $a3, $a2
	ld.h	$a7, $t0, 2
	ld.h	$a3, $a2, 0
	bne	$a4, $a6, .LBB2_48
# %bb.46:                               # %if.then239
                                        #   in Loop: Header=BB2_5 Depth=1
	ldx.d	$a4, $t1, $a1
	ldx.d	$a4, $a4, $a0
	ld.h	$a6, $a4, 0
	sub.w	$a5, $a5, $a6
	srai.d	$a6, $a5, 31
	ldx.d	$a1, $t2, $a1
	b	.LBB2_49
.LBB2_47:                               # %land.rhs448
                                        #   in Loop: Header=BB2_5 Depth=1
	sub.w	$a5, $a5, $a7
	srai.d	$a7, $a5, 31
	xor	$a5, $a5, $a7
	sub.w	$a5, $a5, $a7
	sub.w	$a4, $a4, $a6
	srai.d	$a6, $a4, 31
	xor	$a4, $a4, $a6
	sub.w	$a4, $a4, $a6
	ld.d	$a6, $sp, 40                    # 8-byte Folded Reload
	slt	$a4, $a4, $a6
	xori	$a4, $a4, 1
	sub.w	$a2, $a2, $a3
	srai.d	$a3, $a2, 31
	xor	$a2, $a2, $a3
	sub.w	$a2, $a2, $a3
	or	$a2, $a5, $a2
	ori	$a3, $zero, 3
	sltu	$a2, $a3, $a2
	sub.w	$a0, $a0, $a1
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	slt	$a0, $a0, $a6
	xori	$a0, $a0, 1
	or	$a0, $a4, $a0
	or	$a0, $a0, $a2
	b	.LBB2_50
.LBB2_48:                               # %if.else308
                                        #   in Loop: Header=BB2_5 Depth=1
	ldx.d	$a4, $t2, $a1
	ldx.d	$a4, $a4, $a0
	ld.h	$a6, $a4, 0
	sub.w	$a5, $a5, $a6
	srai.d	$a6, $a5, 31
	ldx.d	$a1, $t1, $a1
.LBB2_49:                               # %for.inc
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.h	$a4, $a4, 2
	xor	$a5, $a5, $a6
	sub.w	$a5, $a5, $a6
	ldx.d	$a0, $a1, $a0
	sub.w	$a1, $a7, $a4
	srai.d	$a4, $a1, 31
	xor	$a1, $a1, $a4
	ld.h	$a6, $a0, 0
	sub.w	$a1, $a1, $a4
	ld.d	$a7, $sp, 40                    # 8-byte Folded Reload
	slt	$a1, $a1, $a7
	xori	$a1, $a1, 1
	sub.w	$a3, $a3, $a6
	srai.d	$a4, $a3, 31
	xor	$a3, $a3, $a4
	ld.h	$a2, $a2, 2
	ld.h	$a0, $a0, 2
	sub.w	$a3, $a3, $a4
	or	$a3, $a3, $a5
	ori	$a4, $zero, 3
	sltu	$a3, $a4, $a3
	sub.d	$a0, $a2, $a0
	srai.d	$a2, $a0, 63
	xor	$a0, $a0, $a2
	sub.d	$a0, $a0, $a2
	slt	$a0, $a0, $a7
	xori	$a0, $a0, 1
	or	$a0, $a1, $a0
	or	$a0, $a0, $a3
.LBB2_50:                               # %land.end517
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	stx.b	$a0, $a1, $s8
	b	.LBB2_4
.LBB2_51:                               # %for.end
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
.Lfunc_end2:
	.size	GetStrength, .Lfunc_end2-GetStrength
                                        # -- End function
	.globl	EdgeLoop                        # -- Begin function EdgeLoop
	.p2align	5
	.type	EdgeLoop,@function
EdgeLoop:                               # @EdgeLoop
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -336
	st.d	$ra, $sp, 328                   # 8-byte Folded Spill
	st.d	$fp, $sp, 320                   # 8-byte Folded Spill
	st.d	$s0, $sp, 312                   # 8-byte Folded Spill
	st.d	$s1, $sp, 304                   # 8-byte Folded Spill
	st.d	$s2, $sp, 296                   # 8-byte Folded Spill
	st.d	$s3, $sp, 288                   # 8-byte Folded Spill
	st.d	$s4, $sp, 280                   # 8-byte Folded Spill
	st.d	$s5, $sp, 272                   # 8-byte Folded Spill
	st.d	$s6, $sp, 264                   # 8-byte Folded Spill
	st.d	$s7, $sp, 256                   # 8-byte Folded Spill
	st.d	$s8, $sp, 248                   # 8-byte Folded Spill
	ld.d	$fp, $sp, 344
	sltu	$t2, $zero, $fp
	lu12i.w	$t1, 1
	ori	$t0, $t1, 1780
	masknez	$t0, $t0, $t2
	ori	$t1, $t1, 1784
	st.d	$t2, $sp, 32                    # 8-byte Folded Spill
	maskeqz	$t1, $t1, $t2
	or	$t0, $t1, $t0
	st.d	$a2, $sp, 192                   # 8-byte Folded Spill
	ldx.w	$a2, $a2, $t0
	st.d	$a5, $sp, 80                    # 8-byte Folded Spill
	st.d	$a4, $sp, 112                   # 8-byte Folded Spill
	move	$s4, $a3
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	st.d	$a6, $sp, 184                   # 8-byte Folded Spill
	beqz	$fp, .LBB3_3
# %bb.1:                                # %cond.end
	ld.d	$a0, $sp, 360
	lu12i.w	$a1, 77
	ori	$a1, $a1, 1652
	ldx.w	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(EdgeLoop.pelnum_cr)
	addi.d	$a1, $a1, %pc_lo12(EdgeLoop.pelnum_cr)
	alsl.d	$a1, $a6, $a1, 4
	slli.d	$a0, $a0, 2
	ldx.w	$a1, $a1, $a0
	ori	$a0, $zero, 1
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	bge	$a1, $a0, .LBB3_4
.LBB3_2:                                # %for.end
	ld.d	$s8, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 320                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 328                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 336
	ret
.LBB3_3:
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
.LBB3_4:                                # %for.body.lr.ph
	move	$s3, $zero
	move	$s5, $zero
	st.d	$zero, $sp, 56                  # 8-byte Folded Spill
	st.d	$zero, $sp, 64                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 352
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a6, $sp, 336
	addi.d	$s6, $a2, -8
	addi.w	$a1, $zero, -1
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a5, 31, 0
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	lu32i.d	$a1, 0
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	srli.d	$a0, $a0, 32
	slli.w	$a1, $a7, 2
	slti	$a2, $a7, 4
	ori	$a7, $zero, 1
	masknez	$a3, $a7, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	addi.d	$a3, $a3, -8
	sltui	$a3, $a3, 1
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	and	$a3, $a4, $a3
	st.d	$a3, $sp, 160                   # 8-byte Folded Spill
	masknez	$a3, $a7, $a0
	st.d	$a6, $sp, 88                    # 8-byte Folded Spill
	maskeqz	$a0, $a6, $a0
	or	$s2, $a0, $a3
	sltu	$s1, $zero, $a5
	masknez	$a0, $a1, $s1
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	maskeqz	$a0, $a2, $s1
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$s0, %pc_hi20(getNeighbour)
	ori	$a0, $zero, 408
	mul.d	$a0, $s4, $a0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(fieldModeFilteringFlag)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	b	.LBB3_7
	.p2align	4, , 16
.LBB3_5:                                # %lor.lhs.false
                                        #   in Loop: Header=BB3_7 Depth=1
	ld.w	$a4, $a0, 340
	beqz	$a4, .LBB3_14
.LBB3_6:                                # %for.inc
                                        #   in Loop: Header=BB3_7 Depth=1
	addi.w	$s5, $s5, 1
	addi.w	$s3, $s3, 2
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	beq	$a0, $s5, .LBB3_2
.LBB3_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	maskeqz	$a0, $s5, $s1
	ld.d	$a5, $s0, %pc_lo12(getNeighbour)
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	or	$s7, $a0, $a1
	masknez	$a0, $s5, $s1
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	or	$s8, $a1, $a0
	addi.d	$a4, $sp, 200
	move	$a0, $s4
	move	$a1, $s7
	move	$a2, $s8
	move	$a3, $fp
	jirl	$ra, $a5, 0
	ld.d	$a5, $s0, %pc_lo12(getNeighbour)
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	add.w	$a1, $a0, $s7
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	sub.w	$a2, $s8, $a0
	addi.d	$a4, $sp, 224
	move	$a0, $s4
	move	$a3, $fp
	jirl	$ra, $a5, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ldptr.d	$a1, $a0, 5600
	ld.w	$a2, $sp, 228
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.w	$a4, $a0, 356
	ori	$a3, $zero, 408
	mul.d	$a2, $a2, $a3
	add.d	$a1, $a1, $a2
	ori	$a3, $zero, 1
	bnez	$a4, .LBB3_9
# %bb.8:                                # %lor.rhs
                                        #   in Loop: Header=BB3_7 Depth=1
	ld.w	$a2, $a1, 356
	sltu	$a3, $zero, $a2
.LBB3_9:                                # %lor.end
                                        #   in Loop: Header=BB3_7 Depth=1
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	st.b	$a3, $a2, %pc_lo12(fieldModeFilteringFlag)
	move	$a2, $s5
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	beqz	$a4, .LBB3_13
# %bb.10:                               # %cond.true37
                                        #   in Loop: Header=BB3_7 Depth=1
	ld.w	$a2, $a0, 356
	beqz	$a2, .LBB3_12
# %bb.11:                               # %land.lhs.true40
                                        #   in Loop: Header=BB3_7 Depth=1
	ld.w	$a4, $a1, 356
	move	$a2, $s3
	beqz	$a4, .LBB3_13
.LBB3_12:                               # %cond.false45
                                        #   in Loop: Header=BB3_7 Depth=1
	andi	$a4, $s5, 1
	move	$a2, $s3
	bstrins.d	$a2, $a4, 1, 0
.LBB3_13:                               # %cond.end50
                                        #   in Loop: Header=BB3_7 Depth=1
	ld.w	$a4, $sp, 224
	move	$a6, $s6
	ori	$a7, $zero, 51
	beqz	$a4, .LBB3_5
.LBB3_14:                               # %if.then55
                                        #   in Loop: Header=BB3_7 Depth=1
	and	$a3, $s1, $a3
	move	$t3, $s2
	move	$t4, $s2
	ori	$a4, $zero, 1
	bne	$a3, $a4, .LBB3_16
# %bb.15:                               # %land.lhs.true74
                                        #   in Loop: Header=BB3_7 Depth=1
	ld.w	$a3, $a0, 356
	ld.w	$a4, $a1, 356
	sltui	$a3, $a3, 1
	ld.d	$a5, $sp, 88                    # 8-byte Folded Reload
	sll.w	$t3, $a5, $a3
	sltui	$a3, $a4, 1
	sll.w	$t4, $a5, $a3
.LBB3_16:                               # %cond.end83
                                        #   in Loop: Header=BB3_7 Depth=1
	beqz	$fp, .LBB3_18
# %bb.17:                               # %cond.true96
                                        #   in Loop: Header=BB3_7 Depth=1
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	alsl.d	$a1, $a3, $a1, 2
	ld.w	$a1, $a1, 4
	alsl.d	$a0, $a3, $a0, 2
	ld.w	$a0, $a0, 4
	b	.LBB3_19
	.p2align	4, , 16
.LBB3_18:                               # %cond.false105
                                        #   in Loop: Header=BB3_7 Depth=1
	ld.w	$a1, $a1, 0
	ld.w	$a0, $a0, 0
.LBB3_19:                               # %cond.end110
                                        #   in Loop: Header=BB3_7 Depth=1
	add.d	$a3, $a0, $a1
	addi.w	$a0, $a2, 0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ldx.bu	$t7, $a1, $a0
	beqz	$t7, .LBB3_6
# %bb.20:                               # %if.then159
                                        #   in Loop: Header=BB3_7 Depth=1
	ld.w	$a0, $sp, 220
	ld.w	$a1, $sp, 244
	slli.d	$a0, $a0, 3
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	ldx.d	$a0, $a4, $a0
	ld.w	$a2, $sp, 216
	slli.d	$a1, $a1, 3
	ldx.d	$a4, $a4, $a1
	ld.w	$a5, $sp, 240
	alsl.d	$a1, $a2, $a0, 1
	alsl.d	$a0, $a5, $a4, 1
	addi.w	$a2, $a3, 1
	srai.d	$a2, $a2, 1
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	add.w	$a3, $a2, $a3
	srai.d	$a4, $a3, 63
	andn	$a3, $a3, $a4
	slti	$a4, $a3, 51
	maskeqz	$a3, $a3, $a4
	masknez	$a4, $a7, $a4
	or	$a4, $a3, $a4
	pcalau12i	$a3, %pc_hi20(ALPHA_TABLE)
	addi.d	$a3, $a3, %pc_lo12(ALPHA_TABLE)
	ldx.bu	$a3, $a3, $a4
	ld.hu	$t0, $a0, 0
	ld.hu	$t2, $a1, 0
	sll.w	$s7, $a3, $a6
	sub.d	$t8, $t2, $t0
	addi.w	$a3, $t8, 0
	srai.d	$a3, $a3, 31
	xor	$a5, $t8, $a3
	sub.w	$s8, $a5, $a3
	bge	$s8, $s7, .LBB3_6
# %bb.21:                               # %if.then164
                                        #   in Loop: Header=BB3_7 Depth=1
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	add.w	$a2, $a2, $a3
	srai.d	$a3, $a2, 63
	andn	$a2, $a2, $a3
	slti	$a3, $a2, 51
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $a7, $a3
	or	$a2, $a2, $a3
	pcalau12i	$a3, %pc_hi20(BETA_TABLE)
	addi.d	$a3, $a3, %pc_lo12(BETA_TABLE)
	ldx.bu	$a2, $a3, $a2
	sll.w	$ra, $a2, $a6
	addi.w	$a6, $t3, 0
	slli.d	$a2, $a6, 1
	ldx.hu	$a3, $a1, $a2
	sub.w	$t1, $zero, $t4
	slli.d	$a5, $t1, 1
	ldx.hu	$a2, $a0, $a5
	sub.w	$a7, $t2, $a3
	srai.d	$t5, $a7, 31
	xor	$a7, $a7, $t5
	sub.d	$a7, $a7, $t5
	sub.w	$a7, $a7, $ra
	sub.w	$t5, $t0, $a2
	srai.d	$t6, $t5, 31
	xor	$t5, $t5, $t6
	sub.d	$t5, $t5, $t6
	sub.w	$t5, $t5, $ra
	and	$a7, $a7, $t5
	ld.d	$t5, $sp, 72                    # 8-byte Folded Reload
	blt	$t5, $a7, .LBB3_6
# %bb.22:                               # %if.then178
                                        #   in Loop: Header=BB3_7 Depth=1
	alsl.d	$a4, $a4, $a4, 2
	pcalau12i	$a7, %pc_hi20(CLIP_TAB)
	addi.d	$a7, $a7, %pc_lo12(CLIP_TAB)
	add.d	$a7, $a7, $a4
	addi.w	$t5, $a5, 0
	slli.d	$a4, $t5, 1
	ldx.hu	$a5, $a0, $a4
	slli.w	$t6, $t3, 1
	slli.d	$a4, $t6, 1
	ldx.hu	$a4, $a1, $a4
	ldx.bu	$a7, $a7, $t7
	alsl.d	$t1, $t1, $a0, 1
	st.d	$t1, $sp, 40                    # 8-byte Folded Spill
	alsl.d	$t1, $a6, $a1, 1
	add.d	$a6, $t2, $t0
	st.d	$a6, $sp, 48                    # 8-byte Folded Spill
	beqz	$fp, .LBB3_25
# %bb.23:                               # %if.end191
                                        #   in Loop: Header=BB3_7 Depth=1
	ori	$a6, $zero, 4
	bne	$t7, $a6, .LBB3_28
# %bb.24:                               # %if.then197
                                        #   in Loop: Header=BB3_7 Depth=1
	add.d	$a4, $t2, $a2
	alsl.d	$a4, $a3, $a4, 1
	addi.d	$a4, $a4, 2
	srli.d	$a4, $a4, 2
	st.h	$a4, $a1, 0
	alsl.d	$a1, $a2, $t0, 1
	add.d	$a1, $a1, $a3
	addi.d	$a1, $a1, 2
	srli.d	$a1, $a1, 2
	st.h	$a1, $a0, 0
	b	.LBB3_6
.LBB3_25:                               # %if.end191.thread
                                        #   in Loop: Header=BB3_7 Depth=1
	st.d	$t1, $sp, 16                    # 8-byte Folded Spill
	st.d	$a4, $sp, 24                    # 8-byte Folded Spill
	sub.w	$a6, $t2, $a4
	srai.d	$t1, $a6, 31
	xor	$a6, $a6, $t1
	sub.w	$a6, $a6, $t1
	slt	$a4, $a6, $ra
	sub.w	$a6, $t0, $a5
	srai.d	$t1, $a6, 31
	xor	$a6, $a6, $t1
	sub.w	$a6, $a6, $t1
	slt	$a6, $a6, $ra
	st.d	$a6, $sp, 56                    # 8-byte Folded Spill
	ori	$a6, $zero, 4
	bne	$t7, $a6, .LBB3_29
# %bb.26:                               # %if.else212
                                        #   in Loop: Header=BB3_7 Depth=1
	bstrpick.d	$a6, $s7, 31, 2
	addi.d	$a6, $a6, 2
	sltu	$a7, $s8, $a6
	and	$a4, $a4, $a7
	ld.d	$a6, $sp, 48                    # 8-byte Folded Reload
	add.d	$t7, $a6, $a3
	st.d	$a4, $sp, 64                    # 8-byte Folded Spill
	beqz	$a4, .LBB3_36
# %bb.27:                               # %cond.true220
                                        #   in Loop: Header=BB3_7 Depth=1
	alsl.d	$a6, $t7, $a2, 1
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	add.d	$a6, $a6, $a4
	addi.d	$a6, $a6, 4
	bstrpick.d	$t8, $a6, 21, 3
	b	.LBB3_37
.LBB3_28:                               #   in Loop: Header=BB3_7 Depth=1
	st.d	$t1, $sp, 16                    # 8-byte Folded Spill
	st.d	$a4, $sp, 24                    # 8-byte Folded Spill
	b	.LBB3_30
.LBB3_29:                               #   in Loop: Header=BB3_7 Depth=1
	st.d	$a4, $sp, 64                    # 8-byte Folded Spill
.LBB3_30:                               # %if.else316
                                        #   in Loop: Header=BB3_7 Depth=1
	sll.w	$t3, $a7, $s6
	addi.w	$a6, $t3, 1
	ld.d	$t5, $sp, 56                    # 8-byte Folded Reload
	add.d	$a7, $t5, $t3
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	add.w	$a7, $a7, $a4
	ld.d	$t1, $sp, 32                    # 8-byte Folded Reload
	maskeqz	$a6, $a6, $t1
	masknez	$a7, $a7, $t1
	or	$a6, $a6, $a7
	sub.w	$a7, $zero, $a6
	sub.d	$t1, $a2, $a3
	alsl.d	$t1, $t8, $t1, 2
	addi.w	$t1, $t1, 4
	srai.d	$t1, $t1, 3
	slt	$t4, $a7, $t1
	masknez	$a7, $a7, $t4
	maskeqz	$t1, $t1, $t4
	or	$a7, $t1, $a7
	slt	$t1, $a7, $a6
	maskeqz	$a7, $a7, $t1
	masknez	$a6, $a6, $t1
	or	$a6, $a7, $a6
	add.w	$a7, $a6, $t0
	srai.d	$t0, $a7, 63
	andn	$t0, $a7, $t0
	sub.w	$a6, $t2, $a6
	srai.d	$a7, $a6, 63
	andn	$a7, $a6, $a7
	beqz	$fp, .LBB3_32
# %bb.31:                               # %if.else376
                                        #   in Loop: Header=BB3_7 Depth=1
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	ldptr.w	$a2, $a2, 5904
	slt	$a3, $t0, $a2
	masknez	$a4, $a2, $a3
	maskeqz	$a3, $t0, $a3
	or	$a3, $a3, $a4
	st.h	$a3, $a0, 0
	slt	$a0, $a7, $a2
	masknez	$a2, $a2, $a0
	maskeqz	$a0, $a7, $a0
	or	$a0, $a0, $a2
	st.h	$a0, $a1, 0
	b	.LBB3_6
.LBB3_32:                               # %if.then333
                                        #   in Loop: Header=BB3_7 Depth=1
	ld.d	$a6, $sp, 192                   # 8-byte Folded Reload
	ldptr.w	$a6, $a6, 5900
	slt	$t1, $t0, $a6
	masknez	$t2, $a6, $t1
	maskeqz	$t0, $t0, $t1
	or	$t0, $t0, $t2
	st.h	$t0, $a0, 0
	slt	$a0, $a7, $a6
	masknez	$a6, $a6, $a0
	maskeqz	$a0, $a7, $a0
	or	$a0, $a0, $a6
	st.h	$a0, $a1, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	beqz	$t5, .LBB3_34
# %bb.33:                               # %if.then344
                                        #   in Loop: Header=BB3_7 Depth=1
	sub.w	$a1, $zero, $t3
	srli.d	$a6, $a0, 1
	slli.d	$a2, $a2, 1
	sub.d	$a2, $a5, $a2
	add.d	$a2, $a2, $a6
	srai.d	$a2, $a2, 1
	slt	$a5, $a1, $a2
	masknez	$a1, $a1, $a5
	maskeqz	$a2, $a2, $a5
	or	$a1, $a2, $a1
	slt	$a2, $a1, $t3
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	ld.h	$a5, $a4, 0
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $t3, $a2
	or	$a1, $a1, $a2
	add.d	$a1, $a5, $a1
	st.h	$a1, $a4, 0
.LBB3_34:                               # %if.end359
                                        #   in Loop: Header=BB3_7 Depth=1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	beqz	$a1, .LBB3_46
# %bb.35:                               # %if.then361
                                        #   in Loop: Header=BB3_7 Depth=1
	sub.w	$a1, $zero, $t3
	srli.d	$a0, $a0, 1
	slli.d	$a2, $a3, 1
	sub.d	$a2, $a4, $a2
	add.d	$a0, $a2, $a0
	srai.d	$a0, $a0, 1
	slt	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	slt	$a1, $a0, $t3
	ld.h	$a2, $a5, 0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $t3, $a1
	or	$a0, $a0, $a1
	add.d	$a0, $a2, $a0
	st.h	$a0, $a5, 0
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	b	.LBB3_6
.LBB3_36:                               # %cond.false227
                                        #   in Loop: Header=BB3_7 Depth=1
	add.d	$a6, $t2, $a2
	alsl.d	$a6, $a3, $a6, 1
	addi.d	$a6, $a6, 2
	srli.d	$t8, $a6, 2
.LBB3_37:                               # %cond.end233
                                        #   in Loop: Header=BB3_7 Depth=1
	ld.d	$t1, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$a6, $t4, $t4, 1
	sub.w	$a6, $zero, $a6
	slli.d	$a6, $a6, 1
	ldx.hu	$t4, $a0, $a6
	alsl.w	$a6, $t3, $t3, 1
	slli.d	$a6, $a6, 1
	ldx.hu	$t3, $a1, $a6
	ld.d	$a6, $sp, 56                    # 8-byte Folded Reload
	and	$a6, $a6, $a7
	st.h	$t8, $a1, 0
	st.d	$a6, $sp, 56                    # 8-byte Folded Spill
	beqz	$a6, .LBB3_47
# %bb.38:                               # %cond.true238
                                        #   in Loop: Header=BB3_7 Depth=1
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	add.d	$a6, $a4, $a2
	alsl.d	$a6, $a6, $a3, 1
	add.d	$a6, $a6, $a5
	addi.d	$a6, $a6, 4
	bstrpick.d	$a7, $a6, 21, 3
	st.h	$a7, $a0, 0
	add.d	$a7, $t0, $t2
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	beqz	$a4, .LBB3_48
.LBB3_39:                               # %cond.true256
                                        #   in Loop: Header=BB3_7 Depth=1
	add.d	$a3, $a7, $a3
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	add.d	$a3, $a3, $a4
	addi.d	$a3, $a3, 2
	srli.d	$a3, $a3, 2
	ld.d	$a6, $sp, 56                    # 8-byte Folded Reload
	st.h	$a3, $t1, 0
	move	$a3, $a2
	beqz	$a6, .LBB3_41
.LBB3_40:                               # %cond.true269
                                        #   in Loop: Header=BB3_7 Depth=1
	add.d	$a3, $a7, $a2
	add.d	$a3, $a3, $a5
	addi.d	$a3, $a3, 2
	srli.d	$a3, $a3, 2
.LBB3_41:                               # %cond.end276
                                        #   in Loop: Header=BB3_7 Depth=1
	ld.d	$a7, $sp, 40                    # 8-byte Folded Reload
	st.h	$a3, $a7, 0
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	beqz	$a3, .LBB3_43
# %bb.42:                               # %cond.true283
                                        #   in Loop: Header=BB3_7 Depth=1
	add.d	$a3, $t3, $a4
	add.d	$a4, $t7, $a4
	alsl.d	$a3, $a3, $a4, 1
	addi.d	$a3, $a3, 4
	srli.d	$a4, $a3, 3
.LBB3_43:                               # %cond.end292
                                        #   in Loop: Header=BB3_7 Depth=1
	alsl.d	$a1, $t6, $a1, 1
	st.h	$a4, $a1, 0
	beqz	$a6, .LBB3_45
# %bb.44:                               # %cond.true299
                                        #   in Loop: Header=BB3_7 Depth=1
	add.d	$a1, $t4, $a5
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	add.d	$a2, $a2, $a5
	alsl.d	$a1, $a1, $a2, 1
	addi.d	$a1, $a1, 4
	srli.d	$a5, $a1, 3
.LBB3_45:                               # %cond.end308
                                        #   in Loop: Header=BB3_7 Depth=1
	alsl.d	$a0, $t5, $a0, 1
	st.h	$a5, $a0, 0
	b	.LBB3_6
.LBB3_46:                               #   in Loop: Header=BB3_7 Depth=1
	st.d	$zero, $sp, 64                  # 8-byte Folded Spill
	b	.LBB3_6
.LBB3_47:                               # %cond.false245
                                        #   in Loop: Header=BB3_7 Depth=1
	alsl.d	$a6, $a2, $t0, 1
	add.d	$a6, $a6, $a3
	addi.d	$a6, $a6, 2
	srli.d	$a7, $a6, 2
	st.h	$a7, $a0, 0
	add.d	$a7, $t0, $t2
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	bnez	$a4, .LBB3_39
.LBB3_48:                               #   in Loop: Header=BB3_7 Depth=1
	ld.d	$a6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	st.h	$a3, $t1, 0
	move	$a3, $a2
	bnez	$a6, .LBB3_40
	b	.LBB3_41
.Lfunc_end3:
	.size	EdgeLoop, .Lfunc_end3-EdgeLoop
                                        # -- End function
	.type	.L__const.DeblockMb.filterNon8x8LumaEdgesFlag,@object # @__const.DeblockMb.filterNon8x8LumaEdgesFlag
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3, 0x0
.L__const.DeblockMb.filterNon8x8LumaEdgesFlag:
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.size	.L__const.DeblockMb.filterNon8x8LumaEdgesFlag, 16

	.type	chroma_edge,@object             # @chroma_edge
	.section	.rodata.cst32,"aM",@progbits,32
chroma_edge:
	.asciz	"\377\000\000"
	.ascii	"\377\377\377\001"
	.ascii	"\377\001\001\002"
	.ascii	"\377\377\377\003"
	.asciz	"\377\000\000"
	.ascii	"\377\377\001\001"
	.ascii	"\377\001\002\002"
	.ascii	"\377\377\003\003"
	.size	chroma_edge, 32

	.type	mixedModeEdgeFlag,@object       # @mixedModeEdgeFlag
	.comm	mixedModeEdgeFlag,1,1
	.type	getNeighbour,@object            # @getNeighbour
	.comm	getNeighbour,8,8
	.type	get_mb_block_pos,@object        # @get_mb_block_pos
	.comm	get_mb_block_pos,8,8
	.type	EdgeLoop.pelnum_cr,@object      # @EdgeLoop.pelnum_cr
	.p2align	2, 0x0
EdgeLoop.pelnum_cr:
	.word	0                               # 0x0
	.word	8                               # 0x8
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	0                               # 0x0
	.word	8                               # 0x8
	.word	8                               # 0x8
	.word	16                              # 0x10
	.size	EdgeLoop.pelnum_cr, 32

	.type	fieldModeFilteringFlag,@object  # @fieldModeFilteringFlag
	.comm	fieldModeFilteringFlag,1,1
	.type	ALPHA_TABLE,@object             # @ALPHA_TABLE
	.section	.rodata,"a",@progbits
ALPHA_TABLE:
	.ascii	"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\004\005\006\007\b\t\n\f\r\017\021\024\026\031\034 $(-28?GPZeq\177\220\242\266\313\342\377\377"
	.size	ALPHA_TABLE, 52

	.type	BETA_TABLE,@object              # @BETA_TABLE
BETA_TABLE:
	.ascii	"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\002\002\003\003\003\003\004\004\004\006\006\007\007\b\b\t\t\n\n\013\013\f\f\r\r\016\016\017\017\020\020\021\021\022\022"
	.size	BETA_TABLE, 52

	.type	CLIP_TAB,@object                # @CLIP_TAB
CLIP_TAB:
	.space	5
	.space	5
	.space	5
	.space	5
	.space	5
	.space	5
	.space	5
	.space	5
	.space	5
	.space	5
	.space	5
	.space	5
	.space	5
	.space	5
	.space	5
	.space	5
	.space	5
	.ascii	"\000\000\000\001\001"
	.ascii	"\000\000\000\001\001"
	.ascii	"\000\000\000\001\001"
	.ascii	"\000\000\000\001\001"
	.ascii	"\000\000\001\001\001"
	.ascii	"\000\000\001\001\001"
	.ascii	"\000\001\001\001\001"
	.ascii	"\000\001\001\001\001"
	.ascii	"\000\001\001\001\001"
	.ascii	"\000\001\001\001\001"
	.ascii	"\000\001\001\002\002"
	.ascii	"\000\001\001\002\002"
	.ascii	"\000\001\001\002\002"
	.ascii	"\000\001\001\002\002"
	.ascii	"\000\001\002\003\003"
	.ascii	"\000\001\002\003\003"
	.ascii	"\000\002\002\003\003"
	.ascii	"\000\002\002\004\004"
	.ascii	"\000\002\003\004\004"
	.ascii	"\000\002\003\004\004"
	.ascii	"\000\003\003\005\005"
	.ascii	"\000\003\004\006\006"
	.ascii	"\000\003\004\006\006"
	.ascii	"\000\004\005\007\007"
	.ascii	"\000\004\005\b\b"
	.ascii	"\000\004\006\t\t"
	.ascii	"\000\005\007\n\n"
	.ascii	"\000\006\b\013\013"
	.ascii	"\000\006\b\r\r"
	.ascii	"\000\007\n\016\016"
	.ascii	"\000\b\013\020\020"
	.ascii	"\000\t\f\022\022"
	.ascii	"\000\n\r\024\024"
	.ascii	"\000\013\017\027\027"
	.ascii	"\000\r\021\031\031"
	.size	CLIP_TAB, 260

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
	.section	".note.GNU-stack","",@progbits
	.addrsig
