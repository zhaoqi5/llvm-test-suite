	.file	"getblk.c"
	.text
	.globl	Decode_MPEG1_Intra_Block        # -- Begin function Decode_MPEG1_Intra_Block
	.p2align	5
	.type	Decode_MPEG1_Intra_Block,@function
Decode_MPEG1_Intra_Block:               # @Decode_MPEG1_Intra_Block
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(ld)
	ld.d	$s1, $a2, %got_pc_lo12(ld)
	ld.d	$a2, $s1, 0
	move	$fp, $a1
	move	$s0, $a0
	slli.d	$a0, $a0, 7
	add.d	$a0, $a2, $a0
	addi.d	$a0, $a0, 2047
	ori	$a1, $zero, 3
	addi.d	$s2, $a0, 1129
	blt	$a1, $s0, .LBB0_2
# %bb.1:                                # %if.then
	pcaddu18i	$ra, %call36(Get_Luma_DC_dct_diff)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	add.d	$a0, $a1, $a0
	st.w	$a0, $fp, 0
	b	.LBB0_5
.LBB0_2:                                # %if.else
	pcaddu18i	$ra, %call36(Get_Chroma_DC_dct_diff)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 4
	bne	$s0, $a1, .LBB0_4
# %bb.3:                                # %if.then5
	ld.w	$a1, $fp, 4
	add.d	$a0, $a1, $a0
	st.w	$a0, $fp, 4
	b	.LBB0_5
.LBB0_4:                                # %if.else12
	ld.w	$a1, $fp, 8
	add.d	$a0, $a1, $a0
	st.w	$a0, $fp, 8
.LBB0_5:                                # %if.end19
	pcalau12i	$a1, %got_pc_hi20(Fault_Flag)
	ld.d	$a1, $a1, %got_pc_lo12(Fault_Flag)
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ld.w	$a1, $a1, 0
	slli.d	$a0, $a0, 3
	st.h	$a0, $s2, 0
	bnez	$a1, .LBB0_41
# %bb.6:                                # %if.end19
	pcalau12i	$a0, %got_pc_hi20(picture_coding_type)
	ld.d	$a0, $a0, %got_pc_lo12(picture_coding_type)
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_41
# %bb.7:                                # %for.cond.preheader
	ori	$s6, $zero, 1
	pcalau12i	$a0, %got_pc_hi20(DCTtabnext)
	ld.d	$s4, $a0, %got_pc_lo12(DCTtabnext)
	ori	$s5, $zero, 65
	ori	$s7, $zero, 64
	pcalau12i	$a0, %got_pc_hi20(scan)
	ld.d	$s8, $a0, %got_pc_lo12(scan)
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_8:                                # %if.else171
                                        #   in Loop: Header=BB0_10 Depth=1
	ori	$a3, $zero, 2048
	slt	$a3, $a3, $a0
	sub.d	$a0, $zero, $a0
	masknez	$a0, $a0, $a3
	addi.d	$a4, $zero, -2048
	maskeqz	$a3, $a4, $a3
	or	$a0, $a3, $a0
.LBB0_9:                                # %for.inc
                                        #   in Loop: Header=BB0_10 Depth=1
	slli.d	$a2, $a2, 1
	stx.h	$a0, $s2, $a2
	addi.d	$s6, $a1, 1
.LBB0_10:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(Show_Bits)
	jirl	$ra, $ra, 0
	bstrpick.d	$a1, $a0, 31, 14
	beqz	$a1, .LBB0_12
# %bb.11:                               # %if.then29
                                        #   in Loop: Header=BB0_10 Depth=1
	bstrpick.d	$a0, $a0, 31, 12
	addi.w	$a0, $a0, -4
	move	$fp, $s4
	b	.LBB0_27
	.p2align	4, , 16
.LBB0_12:                               # %if.else32
                                        #   in Loop: Header=BB0_10 Depth=1
	ori	$a1, $zero, 1024
	bltu	$a0, $a1, .LBB0_14
# %bb.13:                               # %if.then35
                                        #   in Loop: Header=BB0_10 Depth=1
	pcalau12i	$a1, %got_pc_hi20(DCTtab0)
	ld.d	$fp, $a1, %got_pc_lo12(DCTtab0)
	bstrpick.d	$a0, $a0, 31, 8
	addi.w	$a0, $a0, -4
	b	.LBB0_27
	.p2align	4, , 16
.LBB0_14:                               # %if.else40
                                        #   in Loop: Header=BB0_10 Depth=1
	ori	$a1, $zero, 512
	bltu	$a0, $a1, .LBB0_16
# %bb.15:                               # %if.then43
                                        #   in Loop: Header=BB0_10 Depth=1
	pcalau12i	$a1, %got_pc_hi20(DCTtab1)
	ld.d	$fp, $a1, %got_pc_lo12(DCTtab1)
	bstrpick.d	$a0, $a0, 31, 6
	addi.w	$a0, $a0, -8
	b	.LBB0_27
.LBB0_16:                               # %if.else48
                                        #   in Loop: Header=BB0_10 Depth=1
	ori	$a1, $zero, 256
	bltu	$a0, $a1, .LBB0_18
# %bb.17:                               # %if.then51
                                        #   in Loop: Header=BB0_10 Depth=1
	pcalau12i	$a1, %got_pc_hi20(DCTtab2)
	ld.d	$fp, $a1, %got_pc_lo12(DCTtab2)
	bstrpick.d	$a0, $a0, 31, 4
	b	.LBB0_26
.LBB0_18:                               # %if.else56
                                        #   in Loop: Header=BB0_10 Depth=1
	ori	$a1, $zero, 128
	bltu	$a0, $a1, .LBB0_20
# %bb.19:                               # %if.then59
                                        #   in Loop: Header=BB0_10 Depth=1
	pcalau12i	$a1, %got_pc_hi20(DCTtab3)
	ld.d	$fp, $a1, %got_pc_lo12(DCTtab3)
	bstrpick.d	$a0, $a0, 31, 3
	b	.LBB0_26
.LBB0_20:                               # %if.else64
                                        #   in Loop: Header=BB0_10 Depth=1
	bltu	$a0, $s7, .LBB0_22
# %bb.21:                               # %if.then67
                                        #   in Loop: Header=BB0_10 Depth=1
	pcalau12i	$a1, %got_pc_hi20(DCTtab4)
	ld.d	$fp, $a1, %got_pc_lo12(DCTtab4)
	bstrpick.d	$a0, $a0, 31, 2
	b	.LBB0_26
.LBB0_22:                               # %if.else72
                                        #   in Loop: Header=BB0_10 Depth=1
	ori	$a1, $zero, 32
	bltu	$a0, $a1, .LBB0_24
# %bb.23:                               # %if.then75
                                        #   in Loop: Header=BB0_10 Depth=1
	pcalau12i	$a1, %got_pc_hi20(DCTtab5)
	ld.d	$fp, $a1, %got_pc_lo12(DCTtab5)
	bstrpick.d	$a0, $a0, 31, 1
	b	.LBB0_26
.LBB0_24:                               # %if.else80
                                        #   in Loop: Header=BB0_10 Depth=1
	ori	$a1, $zero, 16
	bltu	$a0, $a1, .LBB0_42
# %bb.25:                               # %if.then83
                                        #   in Loop: Header=BB0_10 Depth=1
	pcalau12i	$a1, %got_pc_hi20(DCTtab6)
	ld.d	$fp, $a1, %got_pc_lo12(DCTtab6)
.LBB0_26:                               # %if.end99
                                        #   in Loop: Header=BB0_10 Depth=1
	addi.w	$a0, $a0, -16
	.p2align	4, , 16
.LBB0_27:                               # %if.end99
                                        #   in Loop: Header=BB0_10 Depth=1
	alsl.d	$s0, $a0, $a0, 1
	add.d	$s3, $fp, $s0
	ld.b	$a0, $s3, 2
	pcaddu18i	$ra, %call36(Flush_Buffer)
	jirl	$ra, $ra, 0
	ldx.bu	$a0, $fp, $s0
	beq	$a0, $s5, .LBB0_30
# %bb.28:                               # %if.end99
                                        #   in Loop: Header=BB0_10 Depth=1
	beq	$a0, $s7, .LBB0_41
# %bb.29:                               # %if.else137
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.b	$s3, $s3, 1
	ext.w.b	$fp, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	add.w	$a1, $fp, $s6
	blt	$a1, $s7, .LBB0_36
	b	.LBB0_38
	.p2align	4, , 16
.LBB0_30:                               # %if.then110
                                        #   in Loop: Header=BB0_10 Depth=1
	ori	$a0, $zero, 6
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 128
	beq	$a0, $a1, .LBB0_33
# %bb.31:                               # %if.then110
                                        #   in Loop: Header=BB0_10 Depth=1
	bnez	$a0, .LBB0_34
# %bb.32:                               # %if.then116
                                        #   in Loop: Header=BB0_10 Depth=1
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	b	.LBB0_35
.LBB0_33:                               # %if.then121
                                        #   in Loop: Header=BB0_10 Depth=1
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, -256
	b	.LBB0_35
.LBB0_34:                               # %if.else124
                                        #   in Loop: Header=BB0_10 Depth=1
	ori	$a1, $zero, 128
	slt	$a1, $a1, $a0
	addi.w	$a2, $a0, -256
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a0
.LBB0_35:                               # %if.end131
                                        #   in Loop: Header=BB0_10 Depth=1
	bstrpick.d	$a0, $a1, 31, 31
	srai.d	$a2, $a1, 31
	xor	$a1, $a1, $a2
	sub.d	$s3, $a1, $a2
	add.w	$a1, $fp, $s6
	bge	$a1, $s7, .LBB0_38
.LBB0_36:                               # %if.end151
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a3, $s1, 0
	ldx.bu	$a2, $s8, $a1
	ori	$a4, $zero, 3168
	ldx.w	$a4, $a3, $a4
	alsl.d	$a3, $a2, $a3, 2
	ori	$a5, $zero, 2104
	ldx.w	$a3, $a3, $a5
	mul.d	$a4, $a4, $s3
	mul.w	$a3, $a4, $a3
	sltui	$a4, $a3, 8
	srli.d	$a3, $a3, 3
	addi.w	$a3, $a3, -1
	ori	$a3, $a3, 1
	addi.w	$a5, $a0, 0
	masknez	$a0, $a3, $a4
	bnez	$a5, .LBB0_8
# %bb.37:                               # %if.then165
                                        #   in Loop: Header=BB0_10 Depth=1
	slti	$a3, $a0, 2047
	ori	$a4, $zero, 2047
	masknez	$a4, $a4, $a3
	maskeqz	$a0, $a0, $a3
	or	$a0, $a0, $a4
	b	.LBB0_9
.LBB0_38:                               # %if.then146
	pcalau12i	$a0, %got_pc_hi20(Quiet_Flag)
	ld.d	$a0, $a0, %got_pc_lo12(Quiet_Flag)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_40
# %bb.39:                               # %if.then148
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 42
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB0_40:                               # %cleanup.sink.split
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
.LBB0_41:                               # %cleanup
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.LBB0_42:                               # %if.else87
	pcalau12i	$a0, %got_pc_hi20(Quiet_Flag)
	ld.d	$a0, $a0, %got_pc_lo12(Quiet_Flag)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_40
# %bb.43:                               # %if.then89
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	b	.LBB0_40
.Lfunc_end0:
	.size	Decode_MPEG1_Intra_Block, .Lfunc_end0-Decode_MPEG1_Intra_Block
                                        # -- End function
	.globl	Decode_MPEG1_Non_Intra_Block    # -- Begin function Decode_MPEG1_Non_Intra_Block
	.p2align	5
	.type	Decode_MPEG1_Non_Intra_Block,@function
Decode_MPEG1_Non_Intra_Block:           # @Decode_MPEG1_Non_Intra_Block
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(ld)
	ld.d	$s0, $a1, %got_pc_lo12(ld)
	ld.d	$a1, $s0, 0
	move	$s4, $zero
	slli.d	$a0, $a0, 7
	add.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 2047
	addi.d	$s1, $a0, 1129
	pcalau12i	$a0, %got_pc_hi20(DCTtabfirst)
	ld.d	$a0, $a0, %got_pc_lo12(DCTtabfirst)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(DCTtabnext)
	ld.d	$a0, $a0, %got_pc_lo12(DCTtabnext)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$s5, $zero, 65
	ori	$s7, $zero, 64
	pcalau12i	$a0, %got_pc_hi20(scan)
	ld.d	$s8, $a0, %got_pc_lo12(scan)
	ori	$s2, $zero, 3168
	ori	$s3, $zero, 2360
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_1:                                # %if.else139
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a3, $zero, 2048
	slt	$a3, $a3, $a0
	sub.d	$a0, $zero, $a0
	masknez	$a0, $a0, $a3
	addi.d	$a4, $zero, -2048
	maskeqz	$a3, $a4, $a3
	or	$a0, $a3, $a0
.LBB1_2:                                # %for.inc
                                        #   in Loop: Header=BB1_3 Depth=1
	slli.d	$a2, $a2, 1
	stx.h	$a0, $s1, $a2
	addi.w	$s4, $a1, 1
.LBB1_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(Show_Bits)
	jirl	$ra, $ra, 0
	bstrpick.d	$a1, $a0, 31, 14
	beqz	$a1, .LBB1_6
# %bb.4:                                # %if.then
                                        #   in Loop: Header=BB1_3 Depth=1
	bstrpick.d	$a0, $a0, 31, 12
	addi.d	$a0, $a0, -4
	alsl.d	$a0, $a0, $a0, 1
	beqz	$s4, .LBB1_10
# %bb.5:                                # %if.else
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	b	.LBB1_19
	.p2align	4, , 16
.LBB1_6:                                # %if.else9
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a1, $zero, 1024
	bltu	$a0, $a1, .LBB1_8
# %bb.7:                                # %if.then11
                                        #   in Loop: Header=BB1_3 Depth=1
	pcalau12i	$a1, %got_pc_hi20(DCTtab0)
	ld.d	$a1, $a1, %got_pc_lo12(DCTtab0)
	bstrpick.d	$a0, $a0, 31, 8
	addi.d	$a0, $a0, -4
	b	.LBB1_18
	.p2align	4, , 16
.LBB1_8:                                # %if.else16
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a1, $zero, 512
	bltu	$a0, $a1, .LBB1_11
# %bb.9:                                # %if.then18
                                        #   in Loop: Header=BB1_3 Depth=1
	pcalau12i	$a1, %got_pc_hi20(DCTtab1)
	ld.d	$a1, $a1, %got_pc_lo12(DCTtab1)
	bstrpick.d	$a0, $a0, 31, 6
	addi.d	$a0, $a0, -8
	b	.LBB1_18
.LBB1_10:                               # %if.then2
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	b	.LBB1_19
.LBB1_11:                               # %if.else23
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a1, $zero, 256
	bltu	$a0, $a1, .LBB1_13
# %bb.12:                               # %if.then25
                                        #   in Loop: Header=BB1_3 Depth=1
	pcalau12i	$a1, %got_pc_hi20(DCTtab2)
	ld.d	$a1, $a1, %got_pc_lo12(DCTtab2)
	bstrpick.d	$a0, $a0, 31, 4
	b	.LBB1_17
.LBB1_13:                               # %if.else30
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a1, $zero, 128
	bltu	$a0, $a1, .LBB1_15
# %bb.14:                               # %if.then32
                                        #   in Loop: Header=BB1_3 Depth=1
	pcalau12i	$a1, %got_pc_hi20(DCTtab3)
	ld.d	$a1, $a1, %got_pc_lo12(DCTtab3)
	bstrpick.d	$a0, $a0, 31, 3
	b	.LBB1_17
.LBB1_15:                               # %if.else37
                                        #   in Loop: Header=BB1_3 Depth=1
	bltu	$a0, $s7, .LBB1_30
# %bb.16:                               # %if.then39
                                        #   in Loop: Header=BB1_3 Depth=1
	pcalau12i	$a1, %got_pc_hi20(DCTtab4)
	ld.d	$a1, $a1, %got_pc_lo12(DCTtab4)
	bstrpick.d	$a0, $a0, 31, 2
.LBB1_17:                               # %if.end68
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a0, $a0, -16
.LBB1_18:                               # %if.end68
                                        #   in Loop: Header=BB1_3 Depth=1
	alsl.d	$a0, $a0, $a0, 1
.LBB1_19:                               # %if.end68
                                        #   in Loop: Header=BB1_3 Depth=1
	add.d	$fp, $a1, $a0
	ld.b	$a0, $fp, 2
	pcaddu18i	$ra, %call36(Flush_Buffer)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 0
	beq	$a0, $s5, .LBB1_22
# %bb.20:                               # %if.end68
                                        #   in Loop: Header=BB1_3 Depth=1
	beq	$a0, $s7, .LBB1_38
# %bb.21:                               # %if.else104
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.b	$s6, $fp, 1
	ext.w.b	$fp, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	add.w	$a1, $fp, $s4
	blt	$a1, $s7, .LBB1_28
	b	.LBB1_35
	.p2align	4, , 16
.LBB1_22:                               # %if.then78
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a0, $zero, 6
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 128
	beq	$a0, $a1, .LBB1_25
# %bb.23:                               # %if.then78
                                        #   in Loop: Header=BB1_3 Depth=1
	bnez	$a0, .LBB1_26
# %bb.24:                               # %if.then83
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	b	.LBB1_27
.LBB1_25:                               # %if.then88
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, -256
	b	.LBB1_27
.LBB1_26:                               # %if.else91
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a1, $zero, 128
	slt	$a1, $a1, $a0
	addi.w	$a2, $a0, -256
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a0
.LBB1_27:                               # %if.end98
                                        #   in Loop: Header=BB1_3 Depth=1
	bstrpick.d	$a0, $a1, 31, 31
	srai.d	$a2, $a1, 31
	xor	$a1, $a1, $a2
	sub.d	$s6, $a1, $a2
	add.w	$a1, $fp, $s4
	bge	$a1, $s7, .LBB1_35
.LBB1_28:                               # %if.end118
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a3, $s0, 0
	ldx.bu	$a2, $s8, $a1
	ldx.w	$a4, $a3, $s2
	alsl.d	$a3, $a2, $a3, 2
	ldx.w	$a3, $a3, $s3
	slli.d	$a5, $s6, 1
	addi.d	$a5, $a5, 1
	mul.d	$a4, $a4, $a5
	mul.w	$a3, $a4, $a3
	sltui	$a4, $a3, 16
	srli.d	$a3, $a3, 4
	addi.w	$a3, $a3, -1
	ori	$a3, $a3, 1
	addi.w	$a5, $a0, 0
	masknez	$a0, $a3, $a4
	bnez	$a5, .LBB1_1
# %bb.29:                               # %if.then133
                                        #   in Loop: Header=BB1_3 Depth=1
	slti	$a3, $a0, 2047
	ori	$a4, $zero, 2047
	masknez	$a4, $a4, $a3
	maskeqz	$a0, $a0, $a3
	or	$a0, $a0, $a4
	b	.LBB1_2
.LBB1_30:                               # %if.else44
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a1, $zero, 32
	bltu	$a0, $a1, .LBB1_32
# %bb.31:                               # %if.then46
                                        #   in Loop: Header=BB1_3 Depth=1
	pcalau12i	$a1, %got_pc_hi20(DCTtab5)
	ld.d	$a1, $a1, %got_pc_lo12(DCTtab5)
	bstrpick.d	$a0, $a0, 31, 1
	b	.LBB1_34
.LBB1_32:                               # %if.else51
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a1, $zero, 16
	bltu	$a0, $a1, .LBB1_39
# %bb.33:                               # %if.then53
                                        #   in Loop: Header=BB1_3 Depth=1
	pcalau12i	$a1, %got_pc_hi20(DCTtab6)
	ld.d	$a1, $a1, %got_pc_lo12(DCTtab6)
.LBB1_34:                               # %if.end68
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.w	$a0, $a0, -16
	b	.LBB1_18
.LBB1_35:                               # %if.then113
	pcalau12i	$a0, %got_pc_hi20(Quiet_Flag)
	ld.d	$a0, $a0, %got_pc_lo12(Quiet_Flag)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB1_37
# %bb.36:                               # %if.then115
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 42
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB1_37:                               # %cleanup.sink.split
	pcalau12i	$a0, %got_pc_hi20(Fault_Flag)
	ld.d	$a0, $a0, %got_pc_lo12(Fault_Flag)
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
.LBB1_38:                               # %cleanup
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.LBB1_39:                               # %if.else57
	pcalau12i	$a0, %got_pc_hi20(Quiet_Flag)
	ld.d	$a0, $a0, %got_pc_lo12(Quiet_Flag)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB1_37
# %bb.40:                               # %if.then58
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	b	.LBB1_37
.Lfunc_end1:
	.size	Decode_MPEG1_Non_Intra_Block, .Lfunc_end1-Decode_MPEG1_Non_Intra_Block
                                        # -- End function
	.globl	Decode_MPEG2_Intra_Block        # -- Begin function Decode_MPEG2_Intra_Block
	.p2align	5
	.type	Decode_MPEG2_Intra_Block,@function
Decode_MPEG2_Intra_Block:               # @Decode_MPEG2_Intra_Block
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
	pcalau12i	$a2, %got_pc_hi20(ld)
	pcalau12i	$a3, %got_pc_hi20(base)
	ld.d	$s1, $a3, %got_pc_lo12(base)
	ld.d	$a3, $a2, %got_pc_lo12(ld)
	ldptr.w	$a2, $s1, 3148
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	ld.d	$s2, $a3, 0
	ori	$a3, $zero, 1
	move	$s0, $a1
	move	$fp, $a0
	bne	$a2, $a3, .LBB2_2
# %bb.1:                                # %if.then
	ldptr.w	$a0, $s1, 3164
	pcalau12i	$a1, %got_pc_hi20(enhan)
	ld.d	$a1, $a1, %got_pc_lo12(enhan)
	slti	$a0, $a0, 64
	masknez	$a2, $s1, $a0
	maskeqz	$a0, $a1, $a0
	or	$a0, $a0, $a2
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $a1, 0
.LBB2_2:                                # %if.end4
	pcalau12i	$a0, %got_pc_hi20(chroma_format)
	ld.d	$a0, $a0, %got_pc_lo12(chroma_format)
	ldptr.w	$s4, $s2, 3148
	ld.w	$s5, $a0, 0
	ori	$a0, $zero, 3
	blt	$a0, $fp, .LBB2_4
# %bb.3:                                # %if.then19
	pcaddu18i	$ra, %call36(Get_Luma_DC_dct_diff)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	add.d	$a0, $a1, $a0
	st.w	$a0, $s0, 0
	b	.LBB2_7
.LBB2_4:                                # %if.else22
	andi	$s3, $fp, 1
	pcaddu18i	$ra, %call36(Get_Chroma_DC_dct_diff)
	jirl	$ra, $ra, 0
	bnez	$s3, .LBB2_6
# %bb.5:                                # %if.then24
	ld.w	$a1, $s0, 4
	add.d	$a0, $a1, $a0
	st.w	$a0, $s0, 4
	b	.LBB2_7
.LBB2_6:                                # %if.else28
	ld.w	$a1, $s0, 8
	add.d	$a0, $a1, $a0
	st.w	$a0, $s0, 8
.LBB2_7:                                # %if.end33
	pcalau12i	$a1, %got_pc_hi20(Fault_Flag)
	ld.d	$a1, $a1, %got_pc_lo12(Fault_Flag)
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	ld.w	$a1, $a1, 0
	bnez	$a1, .LBB2_45
# %bb.8:                                # %if.end35
	move	$s3, $zero
	addi.d	$a1, $s4, -1
	addi.d	$a2, $s5, -1
	sltui	$a1, $a1, 1
	sltui	$a2, $a2, 1
	ori	$a3, $zero, 2616
	ori	$a4, $zero, 2104
	masknez	$a5, $s2, $a1
	maskeqz	$a1, $s1, $a1
	masknez	$a3, $a3, $a2
	maskeqz	$a2, $a4, $a2
	or	$s4, $a1, $a5
	slli.d	$a1, $fp, 7
	slti	$a5, $fp, 4
	or	$a2, $a2, $a3
	add.d	$a1, $s4, $a1
	masknez	$a2, $a2, $a5
	pcalau12i	$a3, %got_pc_hi20(intra_dc_precision)
	ld.d	$a3, $a3, %got_pc_lo12(intra_dc_precision)
	maskeqz	$a4, $a4, $a5
	addi.d	$a1, $a1, 2047
	or	$a2, $a4, $a2
	ld.w	$a3, $a3, 0
	addi.d	$s5, $a1, 1129
	add.d	$s6, $s4, $a2
	ori	$a1, $zero, 3
	sub.d	$a1, $a1, $a3
	sll.w	$a0, $a0, $a1
	st.h	$a0, $s5, 0
	pcalau12i	$a0, %got_pc_hi20(intra_vlc_format)
	ld.d	$s8, $a0, %got_pc_lo12(intra_vlc_format)
	pcalau12i	$a0, %got_pc_hi20(DCTtab0a)
	ld.d	$a0, $a0, %got_pc_lo12(DCTtab0a)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(DCTtab0)
	ld.d	$a0, $a0, %got_pc_lo12(DCTtab0)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(DCTtab1a)
	ld.d	$a0, $a0, %got_pc_lo12(DCTtab1a)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(DCTtab1)
	ld.d	$a0, $a0, %got_pc_lo12(DCTtab1)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(DCTtab2)
	ld.d	$a0, $a0, %got_pc_lo12(DCTtab2)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(DCTtab3)
	ld.d	$a0, $a0, %got_pc_lo12(DCTtab3)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ori	$s0, $zero, 64
	pcalau12i	$a0, %got_pc_hi20(DCTtab4)
	ld.d	$a0, $a0, %got_pc_lo12(DCTtab4)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(DCTtab5)
	ld.d	$a0, $a0, %got_pc_lo12(DCTtab5)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(DCTtab6)
	ld.d	$a0, $a0, %got_pc_lo12(DCTtab6)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$s7, $zero, 1
	b	.LBB2_10
	.p2align	4, , 16
.LBB2_9:                                # %for.inc
                                        #   in Loop: Header=BB2_10 Depth=1
	addi.d	$s7, $a0, 1
	addi.w	$s3, $s3, 1
.LBB2_10:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(Show_Bits)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s8, 0
	bstrpick.d	$a2, $a0, 31, 14
	beqz	$a2, .LBB2_13
# %bb.11:                               # %for.cond
                                        #   in Loop: Header=BB2_10 Depth=1
	bnez	$a1, .LBB2_13
# %bb.12:                               # %if.then41
                                        #   in Loop: Header=BB2_10 Depth=1
	pcalau12i	$a1, %got_pc_hi20(DCTtabnext)
	ld.d	$a1, $a1, %got_pc_lo12(DCTtabnext)
	bstrpick.d	$a0, $a0, 31, 12
	addi.d	$a0, $a0, -4
	alsl.d	$a0, $a0, $a0, 1
	b	.LBB2_31
	.p2align	4, , 16
.LBB2_13:                               # %if.else45
                                        #   in Loop: Header=BB2_10 Depth=1
	ori	$a2, $zero, 1024
	bltu	$a0, $a2, .LBB2_16
# %bb.14:                               # %if.then48
                                        #   in Loop: Header=BB2_10 Depth=1
	bstrpick.d	$a0, $a0, 31, 8
	addi.d	$a0, $a0, -4
	alsl.d	$a0, $a0, $a0, 1
	beqz	$a1, .LBB2_21
# %bb.15:                               # %if.then50
                                        #   in Loop: Header=BB2_10 Depth=1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	b	.LBB2_31
	.p2align	4, , 16
.LBB2_16:                               # %if.else61
                                        #   in Loop: Header=BB2_10 Depth=1
	ori	$a2, $zero, 512
	bltu	$a0, $a2, .LBB2_19
# %bb.17:                               # %if.then64
                                        #   in Loop: Header=BB2_10 Depth=1
	bstrpick.d	$a0, $a0, 31, 6
	addi.d	$a0, $a0, -8
	alsl.d	$a0, $a0, $a0, 1
	beqz	$a1, .LBB2_24
# %bb.18:                               # %if.then66
                                        #   in Loop: Header=BB2_10 Depth=1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	b	.LBB2_31
.LBB2_19:                               # %if.else77
                                        #   in Loop: Header=BB2_10 Depth=1
	ori	$a1, $zero, 256
	bltu	$a0, $a1, .LBB2_22
# %bb.20:                               # %if.then80
                                        #   in Loop: Header=BB2_10 Depth=1
	bstrpick.d	$a0, $a0, 31, 4
	addi.d	$a0, $a0, -16
	alsl.d	$a0, $a0, $a0, 1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	b	.LBB2_31
.LBB2_21:                               # %if.else55
                                        #   in Loop: Header=BB2_10 Depth=1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	b	.LBB2_31
.LBB2_22:                               # %if.else85
                                        #   in Loop: Header=BB2_10 Depth=1
	ori	$a1, $zero, 128
	bltu	$a0, $a1, .LBB2_25
# %bb.23:                               # %if.then88
                                        #   in Loop: Header=BB2_10 Depth=1
	bstrpick.d	$a0, $a0, 31, 3
	addi.d	$a0, $a0, -16
	alsl.d	$a0, $a0, $a0, 1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	b	.LBB2_31
.LBB2_24:                               # %if.else71
                                        #   in Loop: Header=BB2_10 Depth=1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	b	.LBB2_31
.LBB2_25:                               # %if.else93
                                        #   in Loop: Header=BB2_10 Depth=1
	bltu	$a0, $s0, .LBB2_27
# %bb.26:                               # %if.then96
                                        #   in Loop: Header=BB2_10 Depth=1
	bstrpick.d	$a0, $a0, 31, 2
	addi.d	$a0, $a0, -16
	alsl.d	$a0, $a0, $a0, 1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	b	.LBB2_31
.LBB2_27:                               # %if.else101
                                        #   in Loop: Header=BB2_10 Depth=1
	ori	$a1, $zero, 32
	bltu	$a0, $a1, .LBB2_29
# %bb.28:                               # %if.then104
                                        #   in Loop: Header=BB2_10 Depth=1
	bstrpick.d	$a0, $a0, 31, 1
	addi.w	$a0, $a0, -16
	alsl.d	$a0, $a0, $a0, 1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	b	.LBB2_31
.LBB2_29:                               # %if.else109
                                        #   in Loop: Header=BB2_10 Depth=1
	ori	$a1, $zero, 16
	bltu	$a0, $a1, .LBB2_46
# %bb.30:                               # %if.then112
                                        #   in Loop: Header=BB2_10 Depth=1
	addi.w	$a0, $a0, -16
	alsl.d	$a0, $a0, $a0, 1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_31:                               # %if.end128
                                        #   in Loop: Header=BB2_10 Depth=1
	add.d	$fp, $a1, $a0
	ld.b	$a0, $fp, 2
	pcaddu18i	$ra, %call36(Flush_Buffer)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 0
	ori	$a1, $zero, 65
	beq	$a0, $a1, .LBB2_34
# %bb.32:                               # %if.end128
                                        #   in Loop: Header=BB2_10 Depth=1
	beq	$a0, $s0, .LBB2_45
# %bb.33:                               # %if.else158
                                        #   in Loop: Header=BB2_10 Depth=1
	ld.b	$s2, $fp, 1
	ext.w.b	$fp, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	add.w	$a0, $fp, $s7
	blt	$a0, $s0, .LBB2_36
	b	.LBB2_39
	.p2align	4, , 16
.LBB2_34:                               # %if.then140
                                        #   in Loop: Header=BB2_10 Depth=1
	ori	$a0, $zero, 6
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 12
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	andi	$a1, $a0, 2047
	beqz	$a1, .LBB2_41
# %bb.35:                               # %if.end152
                                        #   in Loop: Header=BB2_10 Depth=1
	ori	$a1, $zero, 2048
	slt	$a1, $a0, $a1
	lu12i.w	$a2, 1
	sub.d	$a2, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a0, $a0, $a1
	or	$s2, $a0, $a2
	add.w	$a0, $fp, $s7
	bge	$a0, $s0, .LBB2_39
.LBB2_36:                               # %if.end172
                                        #   in Loop: Header=BB2_10 Depth=1
	ldptr.w	$a2, $s4, 3156
	pcalau12i	$a3, %got_pc_hi20(scan)
	ld.d	$a3, $a3, %got_pc_lo12(scan)
	slli.d	$a2, $a2, 6
	add.d	$a2, $a3, $a2
	ldx.bu	$a2, $a2, $a0
	ori	$a3, $zero, 3168
	ldx.w	$a3, $s4, $a3
	slli.d	$a4, $a2, 2
	ldx.w	$a4, $s6, $a4
	mul.d	$a3, $a3, $s2
	mul.w	$a3, $a3, $a4
	srai.d	$a3, $a3, 4
	sub.d	$a4, $zero, $a3
	maskeqz	$a3, $a3, $a1
	ldptr.w	$a5, $s1, 3148
	masknez	$a1, $a4, $a1
	or	$a1, $a3, $a1
	slli.d	$a2, $a2, 1
	stx.h	$a1, $s5, $a2
	ori	$a1, $zero, 1
	bne	$a5, $a1, .LBB2_9
# %bb.37:                               # %land.lhs.true193
                                        #   in Loop: Header=BB2_10 Depth=1
	ori	$a1, $zero, 3164
	ldx.w	$a1, $s1, $a1
	addi.w	$a1, $a1, -64
	bne	$s3, $a1, .LBB2_9
# %bb.38:                               # %if.then197
                                        #   in Loop: Header=BB2_10 Depth=1
	pcalau12i	$a1, %got_pc_hi20(enhan)
	ld.d	$a1, $a1, %got_pc_lo12(enhan)
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	st.d	$a1, $a2, 0
	b	.LBB2_9
.LBB2_39:                               # %if.then167
	pcalau12i	$a0, %got_pc_hi20(Quiet_Flag)
	ld.d	$a0, $a0, %got_pc_lo12(Quiet_Flag)
	ld.w	$a0, $a0, 0
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	bnez	$a0, .LBB2_44
# %bb.40:                               # %if.then169
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	ori	$a1, $zero, 43
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB2_44
.LBB2_41:                               # %if.then147
	pcalau12i	$a0, %got_pc_hi20(Quiet_Flag)
	ld.d	$a0, $a0, %got_pc_lo12(Quiet_Flag)
	ld.w	$a0, $a0, 0
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	bnez	$a0, .LBB2_44
# %bb.42:                               # %if.then149
	pcalau12i	$a0, %pc_hi20(.Lstr.5)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.5)
.LBB2_43:                               # %cleanup.sink.split
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB2_44:                               # %cleanup.sink.split
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 0
.LBB2_45:                               # %cleanup
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
.LBB2_46:                               # %if.else116
	pcalau12i	$a0, %got_pc_hi20(Quiet_Flag)
	ld.d	$a0, $a0, %got_pc_lo12(Quiet_Flag)
	ld.w	$a0, $a0, 0
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	bnez	$a0, .LBB2_44
# %bb.47:                               # %if.then118
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	b	.LBB2_43
.Lfunc_end2:
	.size	Decode_MPEG2_Intra_Block, .Lfunc_end2-Decode_MPEG2_Intra_Block
                                        # -- End function
	.globl	Decode_MPEG2_Non_Intra_Block    # -- Begin function Decode_MPEG2_Non_Intra_Block
	.p2align	5
	.type	Decode_MPEG2_Non_Intra_Block,@function
Decode_MPEG2_Non_Intra_Block:           # @Decode_MPEG2_Non_Intra_Block
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(ld)
	ld.d	$a1, $a1, %got_pc_lo12(ld)
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a1, $a1, 0
	ldptr.w	$a2, $a1, 3148
	pcalau12i	$a3, %got_pc_hi20(base)
	ld.d	$s1, $a3, %got_pc_lo12(base)
	addi.d	$a2, $a2, -1
	sltui	$a2, $a2, 1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s1, $a2
	or	$s2, $a2, $a1
	ldptr.w	$a2, $s1, 3148
	slli.d	$a1, $a0, 7
	add.d	$a1, $s2, $a1
	ori	$a3, $zero, 1
	addi.d	$a1, $a1, 2047
	bne	$a2, $a3, .LBB3_2
# %bb.1:                                # %if.then
	ldptr.w	$a2, $s1, 3164
	pcalau12i	$a3, %got_pc_hi20(enhan)
	ld.d	$a3, $a3, %got_pc_lo12(enhan)
	slti	$a2, $a2, 64
	masknez	$a4, $s1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a4
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	st.d	$a2, $a3, 0
.LBB3_2:                                # %if.end4
	pcalau12i	$a2, %got_pc_hi20(chroma_format)
	ld.d	$a2, $a2, %got_pc_lo12(chroma_format)
	ld.w	$a2, $a2, 0
	move	$s4, $zero
	move	$s3, $zero
	addi.d	$s5, $a1, 1129
	slti	$a0, $a0, 4
	addi.d	$a1, $a2, -1
	sltui	$a1, $a1, 1
	ori	$a2, $zero, 2872
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 2360
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a1
	add.d	$s6, $s2, $a0
	pcalau12i	$a0, %got_pc_hi20(DCTtabfirst)
	ld.d	$a0, $a0, %got_pc_lo12(DCTtabfirst)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(DCTtabnext)
	ld.d	$a0, $a0, %got_pc_lo12(DCTtabnext)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$s0, $zero, 64
	pcalau12i	$a0, %got_pc_hi20(scan)
	ld.d	$s7, $a0, %got_pc_lo12(scan)
	pcalau12i	$a0, %got_pc_hi20(enhan)
	ld.d	$a0, $a0, %got_pc_lo12(enhan)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(DCTtab0)
	ld.d	$a0, $a0, %got_pc_lo12(DCTtab0)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	b	.LBB3_4
	.p2align	4, , 16
.LBB3_3:                                # %for.inc
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.w	$s3, $a0, 1
	addi.w	$s4, $s4, 1
.LBB3_4:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(Show_Bits)
	jirl	$ra, $ra, 0
	bstrpick.d	$a1, $a0, 31, 14
	beqz	$a1, .LBB3_7
# %bb.5:                                # %if.then14
                                        #   in Loop: Header=BB3_4 Depth=1
	bstrpick.d	$a0, $a0, 31, 12
	addi.d	$a0, $a0, -4
	alsl.d	$a0, $a0, $a0, 1
	beqz	$s3, .LBB3_11
# %bb.6:                                # %if.else19
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	b	.LBB3_20
	.p2align	4, , 16
.LBB3_7:                                # %if.else25
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a1, $zero, 1024
	bltu	$a0, $a1, .LBB3_9
# %bb.8:                                # %if.then27
                                        #   in Loop: Header=BB3_4 Depth=1
	bstrpick.d	$a0, $a0, 31, 8
	addi.d	$a0, $a0, -4
	alsl.d	$a0, $a0, $a0, 1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	b	.LBB3_20
	.p2align	4, , 16
.LBB3_9:                                # %if.else32
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a1, $zero, 512
	bltu	$a0, $a1, .LBB3_12
# %bb.10:                               # %if.then34
                                        #   in Loop: Header=BB3_4 Depth=1
	pcalau12i	$a1, %got_pc_hi20(DCTtab1)
	ld.d	$a1, $a1, %got_pc_lo12(DCTtab1)
	bstrpick.d	$a0, $a0, 31, 6
	addi.d	$a0, $a0, -8
	b	.LBB3_19
.LBB3_11:                               # %if.then16
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	b	.LBB3_20
.LBB3_12:                               # %if.else39
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a1, $zero, 256
	bltu	$a0, $a1, .LBB3_14
# %bb.13:                               # %if.then41
                                        #   in Loop: Header=BB3_4 Depth=1
	pcalau12i	$a1, %got_pc_hi20(DCTtab2)
	ld.d	$a1, $a1, %got_pc_lo12(DCTtab2)
	bstrpick.d	$a0, $a0, 31, 4
	b	.LBB3_18
.LBB3_14:                               # %if.else46
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a1, $zero, 128
	bltu	$a0, $a1, .LBB3_16
# %bb.15:                               # %if.then48
                                        #   in Loop: Header=BB3_4 Depth=1
	pcalau12i	$a1, %got_pc_hi20(DCTtab3)
	ld.d	$a1, $a1, %got_pc_lo12(DCTtab3)
	bstrpick.d	$a0, $a0, 31, 3
	b	.LBB3_18
.LBB3_16:                               # %if.else53
                                        #   in Loop: Header=BB3_4 Depth=1
	bltu	$a0, $s0, .LBB3_28
# %bb.17:                               # %if.then55
                                        #   in Loop: Header=BB3_4 Depth=1
	pcalau12i	$a1, %got_pc_hi20(DCTtab4)
	ld.d	$a1, $a1, %got_pc_lo12(DCTtab4)
	bstrpick.d	$a0, $a0, 31, 2
.LBB3_18:                               # %if.end84
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.d	$a0, $a0, -16
.LBB3_19:                               # %if.end84
                                        #   in Loop: Header=BB3_4 Depth=1
	alsl.d	$a0, $a0, $a0, 1
.LBB3_20:                               # %if.end84
                                        #   in Loop: Header=BB3_4 Depth=1
	add.d	$fp, $a1, $a0
	ld.b	$a0, $fp, 2
	pcaddu18i	$ra, %call36(Flush_Buffer)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 0
	ori	$a1, $zero, 65
	beq	$a0, $a1, .LBB3_23
# %bb.21:                               # %if.end84
                                        #   in Loop: Header=BB3_4 Depth=1
	beq	$a0, $s0, .LBB3_39
# %bb.22:                               # %if.else111
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.b	$s8, $fp, 1
	ext.w.b	$fp, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	add.w	$a0, $fp, $s3
	blt	$a0, $s0, .LBB3_25
	b	.LBB3_33
	.p2align	4, , 16
.LBB3_23:                               # %if.then95
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a0, $zero, 6
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 12
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	andi	$a1, $a0, 2047
	beqz	$a1, .LBB3_35
# %bb.24:                               # %if.end105
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a1, $zero, 2048
	slt	$a1, $a0, $a1
	lu12i.w	$a2, 1
	sub.d	$a2, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a0, $a0, $a1
	or	$s8, $a0, $a2
	add.w	$a0, $fp, $s3
	bge	$a0, $s0, .LBB3_33
.LBB3_25:                               # %if.end125
                                        #   in Loop: Header=BB3_4 Depth=1
	ldptr.w	$a2, $s2, 3156
	slli.d	$a2, $a2, 6
	add.d	$a2, $s7, $a2
	ldx.bu	$a2, $a2, $a0
	ori	$a3, $zero, 3168
	ldx.w	$a3, $s2, $a3
	slli.d	$a4, $a2, 2
	ldx.w	$a4, $s6, $a4
	slli.d	$a5, $s8, 1
	addi.d	$a5, $a5, 1
	mul.d	$a3, $a3, $a5
	mul.w	$a3, $a3, $a4
	srai.d	$a3, $a3, 5
	sub.d	$a4, $zero, $a3
	maskeqz	$a3, $a3, $a1
	ldptr.w	$a5, $s1, 3148
	masknez	$a1, $a4, $a1
	or	$a1, $a3, $a1
	slli.d	$a2, $a2, 1
	stx.h	$a1, $s5, $a2
	ori	$a1, $zero, 1
	bne	$a5, $a1, .LBB3_3
# %bb.26:                               # %land.lhs.true
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a1, $zero, 3164
	ldx.w	$a1, $s1, $a1
	addi.w	$a1, $a1, -64
	bne	$s4, $a1, .LBB3_3
# %bb.27:                               # %if.then150
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	st.d	$a2, $a1, 0
	b	.LBB3_3
.LBB3_28:                               # %if.else60
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a1, $zero, 32
	bltu	$a0, $a1, .LBB3_30
# %bb.29:                               # %if.then62
                                        #   in Loop: Header=BB3_4 Depth=1
	pcalau12i	$a1, %got_pc_hi20(DCTtab5)
	ld.d	$a1, $a1, %got_pc_lo12(DCTtab5)
	bstrpick.d	$a0, $a0, 31, 1
	b	.LBB3_32
.LBB3_30:                               # %if.else67
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a1, $zero, 16
	bltu	$a0, $a1, .LBB3_40
# %bb.31:                               # %if.then69
                                        #   in Loop: Header=BB3_4 Depth=1
	pcalau12i	$a1, %got_pc_hi20(DCTtab6)
	ld.d	$a1, $a1, %got_pc_lo12(DCTtab6)
.LBB3_32:                               # %if.end84
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.w	$a0, $a0, -16
	b	.LBB3_19
.LBB3_33:                               # %if.then120
	pcalau12i	$a0, %got_pc_hi20(Quiet_Flag)
	ld.d	$a0, $a0, %got_pc_lo12(Quiet_Flag)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB3_38
# %bb.34:                               # %if.then122
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	ori	$a1, $zero, 43
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB3_38
.LBB3_35:                               # %if.then100
	pcalau12i	$a0, %got_pc_hi20(Quiet_Flag)
	ld.d	$a0, $a0, %got_pc_lo12(Quiet_Flag)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB3_38
# %bb.36:                               # %if.then102
	pcalau12i	$a0, %pc_hi20(.Lstr.5)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.5)
.LBB3_37:                               # %cleanup.sink.split
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB3_38:                               # %cleanup.sink.split
	pcalau12i	$a0, %got_pc_hi20(Fault_Flag)
	ld.d	$a0, $a0, %got_pc_lo12(Fault_Flag)
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
.LBB3_39:                               # %cleanup
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.LBB3_40:                               # %if.else73
	pcalau12i	$a0, %got_pc_hi20(Quiet_Flag)
	ld.d	$a0, $a0, %got_pc_lo12(Quiet_Flag)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB3_38
# %bb.41:                               # %if.then74
	pcalau12i	$a0, %pc_hi20(.Lstr.4)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.4)
	b	.LBB3_37
.Lfunc_end3:
	.size	Decode_MPEG2_Non_Intra_Block, .Lfunc_end3-Decode_MPEG2_Non_Intra_Block
                                        # -- End function
	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"DCT coeff index (i) out of bounds (intra)\n"
	.size	.L.str.1, 43

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"DCT coeff index (i) out of bounds (inter)\n"
	.size	.L.str.3, 43

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"DCT coeff index (i) out of bounds (intra2)\n"
	.size	.L.str.6, 44

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"DCT coeff index (i) out of bounds (inter2)\n"
	.size	.L.str.8, 44

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"invalid Huffman code in Decode_MPEG1_Intra_Block()"
	.size	.Lstr, 51

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"invalid Huffman code in Decode_MPEG1_Non_Intra_Block()"
	.size	.Lstr.1, 55

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"invalid Huffman code in Decode_MPEG2_Intra_Block()"
	.size	.Lstr.2, 51

	.type	.Lstr.4,@object                 # @str.4
.Lstr.4:
	.asciz	"invalid Huffman code in Decode_MPEG2_Non_Intra_Block()"
	.size	.Lstr.4, 55

	.type	.Lstr.5,@object                 # @str.5
.Lstr.5:
	.asciz	"invalid escape in Decode_MPEG2_Intra_Block()"
	.size	.Lstr.5, 45

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym base
	.addrsig_sym enhan
