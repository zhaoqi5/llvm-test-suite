	.file	"libclamav_mspack.c"
	.text
	.globl	mszip_init                      # -- Begin function mszip_init
	.p2align	5
	.type	mszip_init,@function
mszip_init:                             # @mszip_init
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
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	addi.w	$s1, $a2, 1
	bstrins.d	$s1, $zero, 0, 0
	beqz	$s1, .LBB0_5
# %bb.1:                                # %if.end
	move	$fp, $a5
	move	$s0, $a4
	move	$s2, $a3
	move	$s3, $a1
	move	$s4, $a0
	lu12i.w	$s5, 8
	ori	$a0, $s5, 2992
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_5
# %bb.2:                                # %if.end3
	move	$s6, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s6
	st.d	$a1, $s6, 40
	beqz	$a1, .LBB0_4
# %bb.3:                                # %if.end8
	ori	$a2, $s5, 2976
	add.d	$a2, $a0, $a2
	st.w	$s4, $a0, 0
	st.w	$s3, $a0, 4
	ori	$a3, $zero, 1
	st.b	$a3, $a0, 8
	st.w	$s1, $a0, 88
	st.w	$zero, $a0, 24
	st.w	$s2, $a0, 28
	pcalau12i	$a3, %pc_hi20(mszip_flush_window)
	addi.d	$a3, $a3, %pc_lo12(mszip_flush_window)
	st.d	$a3, $a0, 16
	st.w	$zero, $a0, 36
	st.d	$a1, $a0, 56
	st.d	$a1, $a0, 48
	st.d	$zero, $a0, 64
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 72
	st.d	$s0, $a2, 0
	st.d	$fp, $a2, 8
	b	.LBB0_6
.LBB0_4:                                # %if.then7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_5:                                # %cleanup
	move	$a0, $zero
.LBB0_6:                                # %cleanup
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
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
.Lfunc_end0:
	.size	mszip_init, .Lfunc_end0-mszip_init
                                        # -- End function
	.p2align	5                               # -- Begin function mszip_flush_window
	.type	mszip_flush_window,@function
mszip_flush_window:                     # @mszip_flush_window
# %bb.0:                                # %entry
	ld.w	$a2, $a0, 32
	add.w	$a2, $a2, $a1
	lu12i.w	$a3, 8
	ori	$a3, $a3, 1
	st.w	$a2, $a0, 32
	blt	$a2, $a3, .LBB1_2
# %bb.1:                                # %if.then
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB1_2:
	move	$a0, $zero
	ret
.Lfunc_end1:
	.size	mszip_flush_window, .Lfunc_end1-mszip_flush_window
                                        # -- End function
	.globl	mszip_decompress                # -- Begin function mszip_decompress
	.p2align	5
	.type	mszip_decompress,@function
mszip_decompress:                       # @mszip_decompress
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
	addi.w	$s1, $zero, -111
	beqz	$a0, .LBB2_40
# %bb.1:                                # %entry
	move	$s0, $a1
	bltz	$a1, .LBB2_40
# %bb.2:                                # %if.end
	move	$fp, $a0
	ld.w	$s1, $a0, 24
	bnez	$s1, .LBB2_40
# %bb.3:                                # %if.end5
	ld.d	$a0, $fp, 72
	ld.d	$a1, $fp, 64
	sub.w	$a0, $a0, $a1
	slt	$a2, $s0, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s0, $a2
	or	$a0, $a2, $a0
	addi.w	$s1, $a0, 0
	beqz	$s1, .LBB2_8
# %bb.4:                                # %if.then13
	ld.bu	$a0, $fp, 8
	beqz	$a0, .LBB2_7
# %bb.5:                                # %land.lhs.true
	ld.w	$a0, $fp, 4
	move	$a2, $s1
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	bne	$a0, $s1, .LBB2_36
# %bb.6:                                # %land.lhs.true.if.end21_crit_edge
	ld.d	$a1, $fp, 64
.LBB2_7:                                # %if.end21
	add.d	$a0, $a1, $s1
	st.d	$a0, $fp, 64
	sub.d	$s0, $s0, $s1
.LBB2_8:                                # %if.end24
	beqz	$s0, .LBB2_35
# %bb.9:                                # %while.cond.preheader
	addi.w	$s5, $zero, -124
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$s2, $a0, %pc_lo12(.L.str.2)
	blez	$s0, .LBB2_38
# %bb.10:                               # %do.body.lr.ph
	lu12i.w	$a0, 8
	ori	$a0, $a0, 2976
	add.d	$s7, $fp, $a0
	addi.d	$a0, $fp, 2047
	addi.d	$a0, $a0, 925
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$s8, $zero, 7
	addi.w	$s1, $zero, -123
	lu12i.w	$a0, 7
	ori	$a0, $a0, 4095
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
.LBB2_11:                               # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_13 Depth 2
                                        #       Child Loop BB2_17 Depth 3
	move	$s6, $zero
	ld.wu	$a2, $fp, 84
	ld.w	$a3, $fp, 80
	ld.d	$a1, $fp, 48
	ld.d	$a0, $fp, 56
	andi	$a4, $a2, 7
	srl.w	$s4, $a3, $a4
	bstrpick.d	$a2, $a2, 31, 3
	slli.w	$a2, $a2, 3
	b	.LBB2_13
	.p2align	4, , 16
.LBB2_12:                               # %do.end56
                                        #   in Loop: Header=BB2_13 Depth=2
	andi	$a3, $s4, 255
	bstrpick.d	$s4, $s4, 31, 8
	addi.d	$a4, $a3, -67
	addi.d	$a3, $a3, -75
	sltu	$a3, $zero, $a3
	orn	$a3, $a3, $s6
	sltui	$s6, $a4, 1
	andi	$a3, $a3, 1
	addi.w	$a2, $a2, -8
	beqz	$a3, .LBB2_24
.LBB2_13:                               # %do.body36
                                        #   Parent Loop BB2_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_17 Depth 3
	blt	$s8, $a2, .LBB2_12
# %bb.14:                               # %while.body42.preheader
                                        #   in Loop: Header=BB2_13 Depth=2
	move	$a3, $a1
	b	.LBB2_17
	.p2align	4, , 16
.LBB2_15:                               # %if.end50
                                        #   in Loop: Header=BB2_17 Depth=3
	ld.d	$a3, $fp, 40
	st.d	$a3, $fp, 48
	add.d	$a0, $a3, $a0
	st.d	$a0, $fp, 56
.LBB2_16:                               # %if.end53
                                        #   in Loop: Header=BB2_17 Depth=3
	ld.bu	$a2, $a3, 0
	addi.d	$a1, $a3, 1
	sll.w	$a2, $a2, $s3
	or	$s4, $a2, $s4
	addi.w	$a2, $s3, 8
	move	$a3, $a1
	bgez	$s3, .LBB2_12
.LBB2_17:                               # %while.body42
                                        #   Parent Loop BB2_11 Depth=1
                                        #     Parent Loop BB2_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s3, $a2
	bltu	$a3, $a0, .LBB2_16
# %bb.18:                               # %if.then45
                                        #   in Loop: Header=BB2_17 Depth=3
	ld.d	$a3, $s7, 8
	ld.d	$a1, $fp, 40
	ld.w	$a2, $fp, 88
	beqz	$a3, .LBB2_20
# %bb.19:                               # %cond.true.i
                                        #   in Loop: Header=BB2_17 Depth=3
	ld.d	$a0, $s7, 0
	jirl	$ra, $a3, 0
	bgez	$a0, .LBB2_21
	b	.LBB2_39
.LBB2_20:                               # %cond.false.i
                                        #   in Loop: Header=BB2_17 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB2_39
.LBB2_21:                               # %if.end.i
                                        #   in Loop: Header=BB2_17 Depth=3
	bnez	$a0, .LBB2_15
# %bb.22:                               # %if.then7.i
                                        #   in Loop: Header=BB2_17 Depth=3
	ld.w	$a0, $fp, 36
	bnez	$a0, .LBB2_37
# %bb.23:                               # %if.else.i
                                        #   in Loop: Header=BB2_17 Depth=3
	ld.d	$a0, $fp, 40
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 36
	b	.LBB2_15
.LBB2_24:                               # %do.end77
                                        #   in Loop: Header=BB2_11 Depth=1
	st.w	$zero, $fp, 12
	st.w	$zero, $fp, 32
	st.d	$a1, $fp, 48
	st.d	$a0, $fp, 56
	st.w	$s4, $fp, 80
	st.w	$a2, $fp, 84
	move	$a0, $fp
	pcaddu18i	$ra, %call36(mszip_inflate)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_29
# %bb.25:                               # %if.then87
                                        #   in Loop: Header=BB2_11 Depth=1
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 28
	beqz	$a0, .LBB2_41
# %bb.26:                               # %if.then89
                                        #   in Loop: Header=BB2_11 Depth=1
	ld.w	$a0, $fp, 32
	lu12i.w	$a1, 8
	sub.w	$a1, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 32
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	blt	$a0, $a1, .LBB2_28
# %bb.27:                               # %for.body.preheader
                                        #   in Loop: Header=BB2_11 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a1, $a2, $a1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, 1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB2_28:                               # %for.end
                                        #   in Loop: Header=BB2_11 Depth=1
	lu12i.w	$a0, 8
	st.w	$a0, $fp, 32
	b	.LBB2_30
.LBB2_29:                               # %do.end77.if.end101_crit_edge
                                        #   in Loop: Header=BB2_11 Depth=1
	ld.w	$a0, $fp, 32
.LBB2_30:                               # %if.end101
                                        #   in Loop: Header=BB2_11 Depth=1
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	st.d	$a3, $fp, 64
	add.d	$a1, $a3, $a0
	st.d	$a1, $fp, 72
	ld.bu	$a1, $fp, 8
	slt	$a2, $s0, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s0, $a2
	or	$s4, $a2, $a0
	move	$a0, $a3
	beqz	$a1, .LBB2_33
# %bb.31:                               # %land.lhs.true123
                                        #   in Loop: Header=BB2_11 Depth=1
	ld.w	$a0, $fp, 4
	addi.w	$s3, $s4, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB2_39
# %bb.32:                               # %land.lhs.true123.if.end138_crit_edge
                                        #   in Loop: Header=BB2_11 Depth=1
	ld.d	$a0, $fp, 64
.LBB2_33:                               # %if.end138
                                        #   in Loop: Header=BB2_11 Depth=1
	add.d	$a0, $a0, $s4
	sub.d	$s0, $s0, $s4
	st.d	$a0, $fp, 64
	bgtz	$s0, .LBB2_11
# %bb.34:                               # %while.end144
	bnez	$s0, .LBB2_38
.LBB2_35:
	move	$s1, $zero
	b	.LBB2_40
.LBB2_36:
	addi.w	$s1, $zero, -123
	b	.LBB2_39
.LBB2_37:
	addi.w	$s5, $zero, -123
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$s2, $a0, %pc_lo12(.L.str.20)
.LBB2_38:                               # %cleanup.sink.split.sink.split
	move	$a0, $s2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$s1, $s5
.LBB2_39:                               # %cleanup.sink.split
	st.w	$s1, $fp, 24
.LBB2_40:                               # %cleanup
	move	$a0, $s1
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
.LBB2_41:
	addi.w	$s1, $zero, -124
	b	.LBB2_39
.Lfunc_end2:
	.size	mszip_decompress, .Lfunc_end2-mszip_decompress
                                        # -- End function
	.p2align	5                               # -- Begin function mszip_inflate
	.type	mszip_inflate,@function
mszip_inflate:                          # @mszip_inflate
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -816
	st.d	$ra, $sp, 808                   # 8-byte Folded Spill
	st.d	$fp, $sp, 800                   # 8-byte Folded Spill
	st.d	$s0, $sp, 792                   # 8-byte Folded Spill
	st.d	$s1, $sp, 784                   # 8-byte Folded Spill
	st.d	$s2, $sp, 776                   # 8-byte Folded Spill
	st.d	$s3, $sp, 768                   # 8-byte Folded Spill
	st.d	$s4, $sp, 760                   # 8-byte Folded Spill
	st.d	$s5, $sp, 752                   # 8-byte Folded Spill
	st.d	$s6, $sp, 744                   # 8-byte Folded Spill
	st.d	$s7, $sp, 736                   # 8-byte Folded Spill
	st.d	$s8, $sp, 728                   # 8-byte Folded Spill
	move	$fp, $a0
	lu12i.w	$a0, 8
	ori	$a0, $a0, 2976
	add.d	$s7, $fp, $a0
	ld.d	$s2, $fp, 48
	ld.d	$s0, $fp, 56
	ld.w	$s8, $fp, 80
	ld.w	$s5, $fp, 84
	addi.d	$a0, $fp, 2047
	addi.d	$a1, $a0, 669
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a1, $a0, 925
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	addi.d	$a0, $a0, 941
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	addi.w	$a0, $zero, -7
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	lu12i.w	$a0, 15
	ori	$a0, $a0, 4095
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	lu12i.w	$a0, 28784
	ori	$a0, $a0, 1799
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	lu12i.w	$a0, 32896
	ori	$a0, $a0, 2056
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	lu12i.w	$a0, 20560
	ori	$a0, $a0, 1285
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 120                   # 8-byte Folded Spill
.LBB3_1:                                # %do.body5
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_19 Depth 2
                                        #     Child Loop BB3_7 Depth 2
                                        #     Child Loop BB3_205 Depth 2
                                        #     Child Loop BB3_215 Depth 2
                                        #     Child Loop BB3_227 Depth 2
                                        #       Child Loop BB3_231 Depth 3
                                        #     Child Loop BB3_240 Depth 2
                                        #     Child Loop BB3_243 Depth 2
                                        #       Child Loop BB3_250 Depth 3
                                        #       Child Loop BB3_264 Depth 3
                                        #       Child Loop BB3_276 Depth 3
                                        #       Child Loop BB3_296 Depth 3
                                        #       Child Loop BB3_291 Depth 3
                                        #       Child Loop BB3_304 Depth 3
                                        #     Child Loop BB3_36 Depth 2
                                        #       Child Loop BB3_37 Depth 3
                                        #         Child Loop BB3_60 Depth 4
                                        #         Child Loop BB3_117 Depth 4
                                        #         Child Loop BB3_107 Depth 4
                                        #         Child Loop BB3_126 Depth 4
                                        #       Child Loop BB3_137 Depth 3
                                        #         Child Loop BB3_145 Depth 4
                                        #         Child Loop BB3_149 Depth 4
                                        #         Child Loop BB3_151 Depth 4
                                        #       Child Loop BB3_158 Depth 3
                                        #     Child Loop BB3_171 Depth 2
                                        #     Child Loop BB3_183 Depth 2
	move	$s1, $s8
	blez	$s5, .LBB3_15
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	move	$s6, $s2
.LBB3_3:                                # %do.end14
                                        #   in Loop: Header=BB3_1 Depth=1
	bstrpick.d	$s2, $s1, 31, 1
	ori	$a0, $zero, 2
	bltu	$a0, $s5, .LBB3_14
# %bb.4:                                # %while.body22.preheader
                                        #   in Loop: Header=BB3_1 Depth=1
	addi.d	$s3, $s5, -9
	b	.LBB3_7
	.p2align	4, , 16
.LBB3_5:                                # %if.end30
                                        #   in Loop: Header=BB3_7 Depth=2
	ld.d	$s6, $fp, 40
	st.d	$s6, $fp, 48
	add.d	$s0, $s6, $a0
	st.d	$s0, $fp, 56
.LBB3_6:                                # %if.end33
                                        #   in Loop: Header=BB3_7 Depth=2
	ld.bu	$a0, $s6, 0
	addi.w	$s3, $s3, 8
	addi.d	$s6, $s6, 1
	sll.w	$a0, $a0, $s3
	addi.w	$a1, $zero, -6
	or	$s2, $a0, $s2
	bge	$s3, $a1, .LBB3_25
.LBB3_7:                                # %while.body22
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bltu	$s6, $s0, .LBB3_6
# %bb.8:                                # %if.then25
                                        #   in Loop: Header=BB3_7 Depth=2
	ld.d	$a3, $s7, 8
	ld.d	$a1, $fp, 40
	ld.w	$a2, $fp, 88
	beqz	$a3, .LBB3_10
# %bb.9:                                # %cond.true.i280
                                        #   in Loop: Header=BB3_7 Depth=2
	ld.d	$a0, $s7, 0
	jirl	$ra, $a3, 0
	bgez	$a0, .LBB3_11
	b	.LBB3_317
.LBB3_10:                               # %cond.false.i307
                                        #   in Loop: Header=BB3_7 Depth=2
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB3_317
.LBB3_11:                               # %if.end.i288
                                        #   in Loop: Header=BB3_7 Depth=2
	bnez	$a0, .LBB3_5
# %bb.12:                               # %if.then7.i298
                                        #   in Loop: Header=BB3_7 Depth=2
	ld.w	$a0, $fp, 36
	bnez	$a0, .LBB3_316
# %bb.13:                               # %if.else.i303
                                        #   in Loop: Header=BB3_7 Depth=2
	ld.d	$a0, $fp, 40
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 36
	b	.LBB3_5
	.p2align	4, , 16
.LBB3_14:                               #   in Loop: Header=BB3_1 Depth=1
	addi.d	$s3, $s5, -1
	b	.LBB3_26
	.p2align	4, , 16
.LBB3_15:                               # %while.body.preheader
                                        #   in Loop: Header=BB3_1 Depth=1
	ld.d	$s4, $sp, 96                    # 8-byte Folded Reload
	b	.LBB3_19
.LBB3_16:                               # %if.else.i
                                        #   in Loop: Header=BB3_19 Depth=2
	ld.d	$a0, $fp, 40
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 36
.LBB3_17:                               # %if.end
                                        #   in Loop: Header=BB3_19 Depth=2
	ld.d	$s2, $fp, 40
	st.d	$s2, $fp, 48
	add.d	$s0, $s2, $a0
	st.d	$s0, $fp, 56
.LBB3_18:                               # %if.end12
                                        #   in Loop: Header=BB3_19 Depth=2
	ld.bu	$a0, $s2, 0
	addi.d	$s6, $s2, 1
	sll.w	$a0, $a0, $s3
	or	$s1, $a0, $s1
	addi.w	$s5, $s3, 8
	move	$s2, $s6
	bge	$s3, $s4, .LBB3_3
.LBB3_19:                               # %while.body
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$s3, $s5
	bltu	$s2, $s0, .LBB3_18
# %bb.20:                               # %if.then
                                        #   in Loop: Header=BB3_19 Depth=2
	ld.d	$a3, $s7, 8
	ld.d	$a1, $fp, 40
	ld.w	$a2, $fp, 88
	beqz	$a3, .LBB3_22
# %bb.21:                               # %cond.true.i
                                        #   in Loop: Header=BB3_19 Depth=2
	ld.d	$a0, $s7, 0
	jirl	$ra, $a3, 0
	bgez	$a0, .LBB3_23
	b	.LBB3_317
.LBB3_22:                               # %cond.false.i
                                        #   in Loop: Header=BB3_19 Depth=2
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB3_317
.LBB3_23:                               # %if.end.i
                                        #   in Loop: Header=BB3_19 Depth=2
	bnez	$a0, .LBB3_17
# %bb.24:                               # %if.then7.i
                                        #   in Loop: Header=BB3_19 Depth=2
	ld.w	$a0, $fp, 36
	beqz	$a0, .LBB3_16
	b	.LBB3_316
	.p2align	4, , 16
.LBB3_25:                               # %do.end41.loopexit
                                        #   in Loop: Header=BB3_1 Depth=1
	addi.d	$s3, $s3, 8
.LBB3_26:                               # %do.end41
                                        #   in Loop: Header=BB3_1 Depth=1
	andi	$a1, $s2, 3
	bstrpick.d	$s8, $s2, 31, 2
	addi.w	$s5, $s3, -2
	addi.w	$a0, $zero, -1
	slli.d	$a1, $a1, 2
	pcalau12i	$a2, %pc_hi20(.LJTI3_0)
	addi.d	$a2, $a2, %pc_lo12(.LJTI3_0)
	ldx.w	$a1, $a2, $a1
	add.d	$a1, $a2, $a1
	jr	$a1
.LBB3_27:                               # %if.then49
                                        #   in Loop: Header=BB3_1 Depth=1
	andi	$a0, $s5, 7
	bstrins.d	$s5, $zero, 2, 0
	srl.w	$s8, $s8, $a0
	beqz	$s5, .LBB3_166
# %bb.28:                               # %for.body.preheader
                                        #   in Loop: Header=BB3_1 Depth=1
	st.b	$s8, $sp, 128
	bstrpick.d	$a0, $s8, 31, 8
	ori	$s2, $zero, 1
	addi.d	$s3, $sp, 128
	ori	$a1, $zero, 8
	beq	$s5, $a1, .LBB3_31
# %bb.29:                               # %for.body.1
                                        #   in Loop: Header=BB3_1 Depth=1
	st.b	$a0, $sp, 129
	bstrpick.d	$a0, $s8, 31, 16
	ori	$s2, $zero, 2
	ori	$a1, $zero, 16
	beq	$s5, $a1, .LBB3_31
# %bb.30:                               # %for.body.2
                                        #   in Loop: Header=BB3_1 Depth=1
	st.b	$a0, $sp, 130
	bstrpick.d	$a0, $s8, 31, 24
	ori	$s2, $zero, 3
	ori	$a1, $zero, 24
	bne	$s5, $a1, .LBB3_237
.LBB3_31:                               #   in Loop: Header=BB3_1 Depth=1
	move	$s8, $a0
	b	.LBB3_167
	.p2align	4, , 16
.LBB3_32:                               # %for.cond197.preheader
                                        #   in Loop: Header=BB3_1 Depth=1
	ori	$a1, $zero, 8
	ori	$a2, $zero, 144
	addi.d	$s2, $fp, 92
	move	$a0, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 9
	ori	$a2, $zero, 112
	addi.d	$a0, $fp, 236
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	bstrins.d	$a0, $a0, 58, 32
	addi.d	$a1, $fp, 348
	st.d	$a0, $a1, 0
	st.d	$a0, $a1, 8
	st.d	$a0, $a1, 16
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	bstrins.d	$a0, $a0, 59, 32
	st.d	$a0, $fp, 372
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	bstrins.d	$a0, $a0, 58, 32
	addi.d	$a1, $fp, 380
	st.d	$a0, $a1, 0
	st.d	$a0, $a1, 8
	st.d	$a0, $a1, 16
	st.d	$a0, $a1, 24
.LBB3_33:                               # %if.end225
                                        #   in Loop: Header=BB3_1 Depth=1
	ori	$a0, $zero, 288
	ori	$a1, $zero, 9
	move	$a2, $s2
	addi.d	$a3, $fp, 412
	pcaddu18i	$ra, %call36(mszip_make_decode_table)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_322
# %bb.34:                               # %if.end232
                                        #   in Loop: Header=BB3_1 Depth=1
	ori	$a0, $zero, 32
	ori	$a1, $zero, 6
	addi.d	$a2, $fp, 380
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(mszip_make_decode_table)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_323
# %bb.35:                               # %if.end239
                                        #   in Loop: Header=BB3_1 Depth=1
	ld.w	$a0, $fp, 12
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
.LBB3_36:                               # %while.cond241.outer
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_37 Depth 3
                                        #         Child Loop BB3_60 Depth 4
                                        #         Child Loop BB3_117 Depth 4
                                        #         Child Loop BB3_107 Depth 4
                                        #         Child Loop BB3_126 Depth 4
                                        #       Child Loop BB3_137 Depth 3
                                        #         Child Loop BB3_145 Depth 4
                                        #         Child Loop BB3_149 Depth 4
                                        #         Child Loop BB3_151 Depth 4
                                        #       Child Loop BB3_158 Depth 3
	move	$s2, $s6
.LBB3_37:                               # %while.cond241
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_36 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_60 Depth 4
                                        #         Child Loop BB3_117 Depth 4
                                        #         Child Loop BB3_107 Depth 4
                                        #         Child Loop BB3_126 Depth 4
	ori	$a0, $zero, 15
	bge	$a0, $s5, .LBB3_60
# %bb.38:                               #   in Loop: Header=BB3_37 Depth=3
	move	$s6, $s2
.LBB3_39:                               # %do.end267
                                        #   in Loop: Header=BB3_37 Depth=3
	andi	$a0, $s8, 511
	slli.d	$a0, $a0, 1
	addi.d	$a1, $fp, 412
	ldx.hu	$a0, $a1, $a0
	ori	$a3, $zero, 288
	bltu	$a0, $a3, .LBB3_67
# %bb.40:                               # %do.body276.preheader
                                        #   in Loop: Header=BB3_37 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $a0, 15, 7
	slli.d	$a1, $a1, 7
	addi.d	$a2, $fp, 92
	ori	$a4, $zero, 1151
	bltu	$a4, $a1, .LBB3_319
# %bb.41:                               # %if.end292
                                        #   in Loop: Header=BB3_37 Depth=3
	srli.d	$a1, $s8, 9
	bstrpick.d	$a0, $a0, 15, 1
	bstrins.d	$a1, $a0, 63, 1
	slli.d	$a0, $a1, 1
	addi.d	$a1, $fp, 412
	ldx.hu	$a0, $a1, $a0
	bltu	$a0, $a3, .LBB3_68
# %bb.42:                               # %do.body276.1
                                        #   in Loop: Header=BB3_37 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $a0, 15, 7
	slli.d	$a1, $a1, 7
	ori	$a4, $zero, 1151
	bltu	$a4, $a1, .LBB3_319
# %bb.43:                               # %if.end292.1
                                        #   in Loop: Header=BB3_37 Depth=3
	srli.d	$a1, $s8, 10
	bstrpick.d	$a0, $a0, 15, 1
	bstrins.d	$a1, $a0, 63, 1
	slli.d	$a0, $a1, 1
	addi.d	$a1, $fp, 412
	ldx.hu	$a0, $a1, $a0
	bltu	$a0, $a3, .LBB3_68
# %bb.44:                               # %do.body276.2
                                        #   in Loop: Header=BB3_37 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $a0, 15, 7
	slli.d	$a1, $a1, 7
	ori	$a4, $zero, 1151
	bltu	$a4, $a1, .LBB3_319
# %bb.45:                               # %if.end292.2
                                        #   in Loop: Header=BB3_37 Depth=3
	srli.d	$a1, $s8, 11
	bstrpick.d	$a0, $a0, 15, 1
	bstrins.d	$a1, $a0, 63, 1
	slli.d	$a0, $a1, 1
	addi.d	$a1, $fp, 412
	ldx.hu	$a0, $a1, $a0
	bltu	$a0, $a3, .LBB3_68
# %bb.46:                               # %do.body276.3
                                        #   in Loop: Header=BB3_37 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $a0, 15, 7
	slli.d	$a1, $a1, 7
	ori	$a4, $zero, 1151
	bltu	$a4, $a1, .LBB3_319
# %bb.47:                               # %if.end292.3
                                        #   in Loop: Header=BB3_37 Depth=3
	srli.d	$a1, $s8, 12
	bstrpick.d	$a0, $a0, 15, 1
	bstrins.d	$a1, $a0, 63, 1
	slli.d	$a0, $a1, 1
	addi.d	$a1, $fp, 412
	ldx.hu	$a0, $a1, $a0
	bltu	$a0, $a3, .LBB3_68
# %bb.48:                               # %do.body276.4
                                        #   in Loop: Header=BB3_37 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $a0, 15, 7
	slli.d	$a1, $a1, 7
	ori	$a4, $zero, 1151
	bltu	$a4, $a1, .LBB3_319
# %bb.49:                               # %if.end292.4
                                        #   in Loop: Header=BB3_37 Depth=3
	srli.d	$a1, $s8, 13
	bstrpick.d	$a0, $a0, 15, 1
	bstrins.d	$a1, $a0, 63, 1
	slli.d	$a0, $a1, 1
	addi.d	$a1, $fp, 412
	ldx.hu	$a0, $a1, $a0
	bltu	$a0, $a3, .LBB3_68
# %bb.50:                               # %do.body276.5
                                        #   in Loop: Header=BB3_37 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $a0, 15, 7
	slli.d	$a1, $a1, 7
	ori	$a4, $zero, 1151
	bltu	$a4, $a1, .LBB3_319
# %bb.51:                               # %if.end292.5
                                        #   in Loop: Header=BB3_37 Depth=3
	srli.d	$a1, $s8, 14
	bstrpick.d	$a0, $a0, 15, 1
	bstrins.d	$a1, $a0, 63, 1
	slli.d	$a0, $a1, 1
	addi.d	$a1, $fp, 412
	ldx.hu	$a0, $a1, $a0
	bltu	$a0, $a3, .LBB3_68
# %bb.52:                               # %do.body276.6
                                        #   in Loop: Header=BB3_37 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $a0, 15, 7
	slli.d	$a1, $a1, 7
	ori	$a4, $zero, 1151
	bltu	$a4, $a1, .LBB3_319
# %bb.53:                               # %if.end292.6
                                        #   in Loop: Header=BB3_37 Depth=3
	srli.d	$a1, $s8, 15
	bstrpick.d	$a0, $a0, 15, 1
	bstrins.d	$a1, $a0, 63, 1
	slli.d	$a0, $a1, 1
	addi.d	$a1, $fp, 412
	ldx.hu	$a0, $a1, $a0
	bltu	$a0, $a3, .LBB3_68
# %bb.54:                               # %do.body276.7
                                        #   in Loop: Header=BB3_37 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $a0, 15, 7
	slli.d	$a1, $a1, 7
	ori	$a4, $zero, 1151
	bltu	$a4, $a1, .LBB3_319
# %bb.55:                               # %if.end292.7
                                        #   in Loop: Header=BB3_37 Depth=3
	srli.d	$a1, $s8, 16
	bstrpick.d	$a0, $a0, 15, 1
	bstrins.d	$a1, $a0, 63, 1
	slli.d	$a0, $a1, 1
	addi.d	$a1, $fp, 412
	ldx.hu	$a0, $a1, $a0
	bltu	$a0, $a3, .LBB3_68
# %bb.56:                               # %do.body276.8
                                        #   in Loop: Header=BB3_37 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $a0, 15, 7
	slli.d	$a1, $a1, 7
	ori	$a3, $zero, 1151
	bltu	$a3, $a1, .LBB3_319
# %bb.57:                               # %if.end292.8
                                        #   in Loop: Header=BB3_37 Depth=3
	srli.d	$a1, $s8, 17
	bstrpick.d	$a0, $a0, 15, 1
	bstrins.d	$a1, $a0, 63, 1
	slli.d	$a0, $a1, 1
	addi.d	$a1, $fp, 412
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 287
	bgeu	$a1, $a0, .LBB3_68
	b	.LBB3_331
	.p2align	4, , 16
.LBB3_58:                               # %if.end256
                                        #   in Loop: Header=BB3_60 Depth=4
	ld.d	$s2, $fp, 40
	st.d	$s2, $fp, 48
	add.d	$s0, $s2, $a0
	st.d	$s0, $fp, 56
.LBB3_59:                               # %if.end259
                                        #   in Loop: Header=BB3_60 Depth=4
	ld.bu	$a0, $s2, 0
	addi.d	$s6, $s2, 1
	sll.w	$a0, $a0, $s3
	or	$s8, $a0, $s8
	addi.w	$s5, $s3, 8
	move	$s2, $s6
	ori	$a0, $zero, 8
	bge	$s3, $a0, .LBB3_39
.LBB3_60:                               # %while.body248
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_36 Depth=2
                                        #       Parent Loop BB3_37 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	move	$s3, $s5
	bltu	$s2, $s0, .LBB3_59
# %bb.61:                               # %if.then251
                                        #   in Loop: Header=BB3_60 Depth=4
	ld.d	$a3, $s7, 8
	ld.d	$a1, $fp, 40
	ld.w	$a2, $fp, 88
	beqz	$a3, .LBB3_63
# %bb.62:                               # %cond.true.i387
                                        #   in Loop: Header=BB3_60 Depth=4
	ld.d	$a0, $s7, 0
	jirl	$ra, $a3, 0
	bgez	$a0, .LBB3_64
	b	.LBB3_317
.LBB3_63:                               # %cond.false.i414
                                        #   in Loop: Header=BB3_60 Depth=4
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB3_317
.LBB3_64:                               # %if.end.i395
                                        #   in Loop: Header=BB3_60 Depth=4
	bnez	$a0, .LBB3_58
# %bb.65:                               # %if.then7.i405
                                        #   in Loop: Header=BB3_60 Depth=4
	ld.w	$a0, $fp, 36
	bnez	$a0, .LBB3_316
# %bb.66:                               # %if.else.i410
                                        #   in Loop: Header=BB3_60 Depth=4
	ld.d	$a0, $fp, 40
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 36
	b	.LBB3_58
.LBB3_67:                               #   in Loop: Header=BB3_37 Depth=3
	addi.d	$a2, $fp, 92
.LBB3_68:                               # %if.end301
                                        #   in Loop: Header=BB3_37 Depth=3
	ldx.bu	$a1, $a2, $a0
	srl.w	$s8, $s8, $a1
	sub.w	$s5, $s5, $a1
	ori	$a1, $zero, 255
	bgeu	$a1, $a0, .LBB3_132
# %bb.69:                               # %if.else328
                                        #   in Loop: Header=BB3_37 Depth=3
	ori	$a1, $zero, 256
	beq	$a0, $a1, .LBB3_312
# %bb.70:                               # %if.else332
                                        #   in Loop: Header=BB3_37 Depth=3
	addi.d	$s3, $a0, -257
	ori	$a0, $zero, 29
	bltu	$a0, $s3, .LBB3_321
# %bb.71:                               # %while.cond340.preheader
                                        #   in Loop: Header=BB3_37 Depth=3
	pcalau12i	$a0, %pc_hi20(mszip_lit_extrabits)
	addi.d	$a0, $a0, %pc_lo12(mszip_lit_extrabits)
	ldx.bu	$s4, $a0, $s3
	blt	$s5, $s4, .LBB3_117
# %bb.72:                               #   in Loop: Header=BB3_37 Depth=3
	move	$a2, $s6
.LBB3_73:                               # %do.end365
                                        #   in Loop: Header=BB3_37 Depth=3
	slli.d	$a0, $s4, 1
	pcalau12i	$a1, %pc_hi20(mszip_bit_mask_tab)
	addi.d	$s6, $a1, %pc_lo12(mszip_bit_mask_tab)
	ldx.hu	$a0, $s6, $a0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	srl.w	$s2, $s8, $s4
	sub.w	$a0, $s5, $s4
	slli.d	$a1, $s3, 1
	pcalau12i	$a3, %pc_hi20(mszip_lit_lengths)
	addi.d	$a3, $a3, %pc_lo12(mszip_lit_lengths)
	ldx.hu	$s4, $a3, $a1
	ori	$a1, $zero, 15
	bgeu	$a1, $a0, .LBB3_107
# %bb.74:                               #   in Loop: Header=BB3_37 Depth=3
	move	$a1, $a2
.LBB3_75:                               # %do.end410
                                        #   in Loop: Header=BB3_37 Depth=3
	andi	$a2, $s2, 63
	slli.d	$a2, $a2, 1
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	ldx.hu	$s5, $a3, $a2
	ori	$a4, $zero, 32
	bltu	$s5, $a4, .LBB3_100
# %bb.76:                               # %do.body419.preheader
                                        #   in Loop: Header=BB3_37 Depth=3
	bstrpick.d	$a2, $s5, 14, 6
	slli.d	$a2, $a2, 6
	bnez	$a2, .LBB3_319
# %bb.77:                               # %if.end435
                                        #   in Loop: Header=BB3_37 Depth=3
	srli.d	$a2, $s2, 6
	andi	$a3, $s5, 63
	bstrins.d	$a2, $a3, 63, 1
	slli.d	$a2, $a2, 1
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	ldx.hu	$s5, $a3, $a2
	bltu	$s5, $a4, .LBB3_100
# %bb.78:                               # %do.body419.1
                                        #   in Loop: Header=BB3_37 Depth=3
	bstrpick.d	$a2, $s5, 14, 6
	slli.d	$a2, $a2, 6
	bnez	$a2, .LBB3_319
# %bb.79:                               # %if.end435.1
                                        #   in Loop: Header=BB3_37 Depth=3
	srli.d	$a2, $s2, 7
	andi	$a3, $s5, 63
	bstrins.d	$a2, $a3, 63, 1
	slli.d	$a2, $a2, 1
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	ldx.hu	$s5, $a3, $a2
	bltu	$s5, $a4, .LBB3_100
# %bb.80:                               # %do.body419.2
                                        #   in Loop: Header=BB3_37 Depth=3
	bstrpick.d	$a2, $s5, 14, 6
	slli.d	$a2, $a2, 6
	bnez	$a2, .LBB3_319
# %bb.81:                               # %if.end435.2
                                        #   in Loop: Header=BB3_37 Depth=3
	srli.d	$a2, $s2, 8
	andi	$a3, $s5, 63
	bstrins.d	$a2, $a3, 63, 1
	slli.d	$a2, $a2, 1
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	ldx.hu	$s5, $a3, $a2
	bltu	$s5, $a4, .LBB3_100
# %bb.82:                               # %do.body419.3
                                        #   in Loop: Header=BB3_37 Depth=3
	bstrpick.d	$a2, $s5, 14, 6
	slli.d	$a2, $a2, 6
	bnez	$a2, .LBB3_319
# %bb.83:                               # %if.end435.3
                                        #   in Loop: Header=BB3_37 Depth=3
	srli.d	$a2, $s2, 9
	andi	$a3, $s5, 63
	bstrins.d	$a2, $a3, 63, 1
	slli.d	$a2, $a2, 1
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	ldx.hu	$s5, $a3, $a2
	bltu	$s5, $a4, .LBB3_100
# %bb.84:                               # %do.body419.4
                                        #   in Loop: Header=BB3_37 Depth=3
	bstrpick.d	$a2, $s5, 14, 6
	slli.d	$a2, $a2, 6
	bnez	$a2, .LBB3_319
# %bb.85:                               # %if.end435.4
                                        #   in Loop: Header=BB3_37 Depth=3
	srli.d	$a2, $s2, 10
	andi	$a3, $s5, 63
	bstrins.d	$a2, $a3, 63, 1
	slli.d	$a2, $a2, 1
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	ldx.hu	$s5, $a3, $a2
	bltu	$s5, $a4, .LBB3_100
# %bb.86:                               # %do.body419.5
                                        #   in Loop: Header=BB3_37 Depth=3
	bstrpick.d	$a2, $s5, 14, 6
	slli.d	$a2, $a2, 6
	bnez	$a2, .LBB3_319
# %bb.87:                               # %if.end435.5
                                        #   in Loop: Header=BB3_37 Depth=3
	srli.d	$a2, $s2, 11
	andi	$a3, $s5, 63
	bstrins.d	$a2, $a3, 63, 1
	slli.d	$a2, $a2, 1
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	ldx.hu	$s5, $a3, $a2
	bltu	$s5, $a4, .LBB3_100
# %bb.88:                               # %do.body419.6
                                        #   in Loop: Header=BB3_37 Depth=3
	bstrpick.d	$a2, $s5, 14, 6
	slli.d	$a2, $a2, 6
	bnez	$a2, .LBB3_319
# %bb.89:                               # %if.end435.6
                                        #   in Loop: Header=BB3_37 Depth=3
	srli.d	$a2, $s2, 12
	andi	$a3, $s5, 63
	bstrins.d	$a2, $a3, 63, 1
	slli.d	$a2, $a2, 1
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	ldx.hu	$s5, $a3, $a2
	bltu	$s5, $a4, .LBB3_100
# %bb.90:                               # %do.body419.7
                                        #   in Loop: Header=BB3_37 Depth=3
	bstrpick.d	$a2, $s5, 14, 6
	slli.d	$a2, $a2, 6
	bnez	$a2, .LBB3_319
# %bb.91:                               # %if.end435.7
                                        #   in Loop: Header=BB3_37 Depth=3
	srli.d	$a2, $s2, 13
	andi	$a3, $s5, 63
	bstrins.d	$a2, $a3, 63, 1
	slli.d	$a2, $a2, 1
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	ldx.hu	$s5, $a3, $a2
	bltu	$s5, $a4, .LBB3_100
# %bb.92:                               # %do.body419.8
                                        #   in Loop: Header=BB3_37 Depth=3
	bstrpick.d	$a2, $s5, 14, 6
	slli.d	$a2, $a2, 6
	bnez	$a2, .LBB3_319
# %bb.93:                               # %if.end435.8
                                        #   in Loop: Header=BB3_37 Depth=3
	srli.d	$a2, $s2, 14
	andi	$a3, $s5, 63
	bstrins.d	$a2, $a3, 63, 1
	slli.d	$a2, $a2, 1
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	ldx.hu	$s5, $a3, $a2
	bltu	$s5, $a4, .LBB3_100
# %bb.94:                               # %do.body419.9
                                        #   in Loop: Header=BB3_37 Depth=3
	bstrpick.d	$a2, $s5, 14, 6
	slli.d	$a2, $a2, 6
	bnez	$a2, .LBB3_319
# %bb.95:                               # %if.end435.9
                                        #   in Loop: Header=BB3_37 Depth=3
	srli.d	$a2, $s2, 15
	andi	$a3, $s5, 63
	bstrins.d	$a2, $a3, 63, 1
	slli.d	$a2, $a2, 1
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	ldx.hu	$s5, $a3, $a2
	bltu	$s5, $a4, .LBB3_100
# %bb.96:                               # %do.body419.10
                                        #   in Loop: Header=BB3_37 Depth=3
	bstrpick.d	$a2, $s5, 14, 6
	slli.d	$a2, $a2, 6
	bnez	$a2, .LBB3_319
# %bb.97:                               # %if.end435.10
                                        #   in Loop: Header=BB3_37 Depth=3
	srli.d	$a2, $s2, 16
	andi	$a3, $s5, 63
	bstrins.d	$a2, $a3, 63, 1
	slli.d	$a2, $a2, 1
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	ldx.hu	$a2, $a3, $a2
	move	$s5, $a2
	bltu	$a2, $a4, .LBB3_100
# %bb.98:                               # %do.body419.11
                                        #   in Loop: Header=BB3_37 Depth=3
	bstrpick.d	$a2, $s5, 14, 6
	slli.d	$a2, $a2, 6
	bnez	$a2, .LBB3_319
# %bb.99:                               # %if.end435.11
                                        #   in Loop: Header=BB3_37 Depth=3
	srli.d	$a2, $s2, 17
	andi	$a3, $s5, 63
	bstrins.d	$a2, $a3, 63, 1
	slli.d	$a2, $a2, 1
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	ldx.hu	$s5, $a3, $a2
	ori	$a2, $zero, 31
	bltu	$a2, $s5, .LBB3_331
.LBB3_100:                              # %if.end444
                                        #   in Loop: Header=BB3_37 Depth=3
	ori	$a2, $zero, 31
	beq	$s5, $a2, .LBB3_324
# %bb.101:                              # %while.cond460.preheader
                                        #   in Loop: Header=BB3_37 Depth=3
	st.d	$s6, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a2, $fp, 380
	ldx.bu	$a2, $a2, $s5
	sub.w	$s7, $a0, $a2
	srl.w	$s3, $s2, $a2
	pcalau12i	$a0, %pc_hi20(mszip_dist_extrabits)
	addi.d	$a0, $a0, %pc_lo12(mszip_dist_extrabits)
	ldx.bu	$s6, $a0, $s5
	blt	$s7, $s6, .LBB3_126
# %bb.102:                              #   in Loop: Header=BB3_37 Depth=3
	move	$s2, $a1
.LBB3_103:                              # %do.end485
                                        #   in Loop: Header=BB3_37 Depth=3
	move	$a2, $s5
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	and	$a0, $s8, $a0
	add.d	$s4, $a0, $s4
	srl.w	$s8, $s3, $s6
	sub.w	$s5, $s7, $s6
	ori	$a0, $zero, 12
	bgeu	$s4, $a0, .LBB3_134
# %bb.104:                              # %while.cond513.preheader
                                        #   in Loop: Header=BB3_37 Depth=3
	ld.d	$s7, $sp, 120                   # 8-byte Folded Reload
	beqz	$s4, .LBB3_37
	b	.LBB3_155
	.p2align	4, , 16
.LBB3_105:                              # %if.end399
                                        #   in Loop: Header=BB3_107 Depth=4
	ld.d	$a2, $fp, 40
	st.d	$a2, $fp, 48
	add.d	$s0, $a2, $a0
	st.d	$s0, $fp, 56
.LBB3_106:                              # %if.end402
                                        #   in Loop: Header=BB3_107 Depth=4
	ld.bu	$a0, $a2, 0
	addi.d	$a1, $a2, 1
	sll.w	$a0, $a0, $s3
	or	$s2, $a0, $s2
	addi.w	$a0, $s3, 8
	move	$a2, $a1
	ori	$a3, $zero, 8
	bgeu	$s3, $a3, .LBB3_75
.LBB3_107:                              # %while.body391
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_36 Depth=2
                                        #       Parent Loop BB3_37 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	move	$s3, $a0
	bltu	$a2, $s0, .LBB3_106
# %bb.108:                              # %if.then394
                                        #   in Loop: Header=BB3_107 Depth=4
	ld.d	$a3, $s7, 8
	ld.d	$a1, $fp, 40
	ld.w	$a2, $fp, 88
	beqz	$a3, .LBB3_110
# %bb.109:                              # %cond.true.i455
                                        #   in Loop: Header=BB3_107 Depth=4
	ld.d	$a0, $s7, 0
	jirl	$ra, $a3, 0
	bgez	$a0, .LBB3_111
	b	.LBB3_317
.LBB3_110:                              # %cond.false.i482
                                        #   in Loop: Header=BB3_107 Depth=4
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB3_317
.LBB3_111:                              # %if.end.i463
                                        #   in Loop: Header=BB3_107 Depth=4
	bnez	$a0, .LBB3_105
# %bb.112:                              # %if.then7.i473
                                        #   in Loop: Header=BB3_107 Depth=4
	ld.w	$a0, $fp, 36
	bnez	$a0, .LBB3_316
# %bb.113:                              # %if.else.i478
                                        #   in Loop: Header=BB3_107 Depth=4
	ld.d	$a0, $fp, 40
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 36
	b	.LBB3_105
.LBB3_114:                              # %if.else.i444
                                        #   in Loop: Header=BB3_117 Depth=4
	ld.d	$a0, $fp, 40
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 36
.LBB3_115:                              # %if.end354
                                        #   in Loop: Header=BB3_117 Depth=4
	ld.d	$s6, $fp, 40
	st.d	$s6, $fp, 48
	add.d	$s0, $s6, $a0
	st.d	$s0, $fp, 56
.LBB3_116:                              # %if.end357
                                        #   in Loop: Header=BB3_117 Depth=4
	ld.bu	$a0, $s6, 0
	addi.d	$a2, $s6, 1
	sll.w	$a0, $a0, $s5
	addi.w	$s5, $s5, 8
	or	$s8, $a0, $s8
	move	$s6, $a2
	bge	$s5, $s4, .LBB3_73
.LBB3_117:                              # %while.body346
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_36 Depth=2
                                        #       Parent Loop BB3_37 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	bltu	$s6, $s0, .LBB3_116
# %bb.118:                              # %if.then349
                                        #   in Loop: Header=BB3_117 Depth=4
	ld.d	$a3, $s7, 8
	ld.d	$a1, $fp, 40
	ld.w	$a2, $fp, 88
	beqz	$a3, .LBB3_120
# %bb.119:                              # %cond.true.i421
                                        #   in Loop: Header=BB3_117 Depth=4
	ld.d	$a0, $s7, 0
	jirl	$ra, $a3, 0
	bgez	$a0, .LBB3_121
	b	.LBB3_317
.LBB3_120:                              # %cond.false.i448
                                        #   in Loop: Header=BB3_117 Depth=4
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB3_317
.LBB3_121:                              # %if.end.i429
                                        #   in Loop: Header=BB3_117 Depth=4
	bnez	$a0, .LBB3_115
# %bb.122:                              # %if.then7.i439
                                        #   in Loop: Header=BB3_117 Depth=4
	ld.w	$a0, $fp, 36
	beqz	$a0, .LBB3_114
	b	.LBB3_316
.LBB3_123:                              # %if.else.i512
                                        #   in Loop: Header=BB3_126 Depth=4
	ld.d	$a0, $fp, 40
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 36
.LBB3_124:                              # %if.end474
                                        #   in Loop: Header=BB3_126 Depth=4
	ld.d	$a1, $fp, 40
	st.d	$a1, $fp, 48
	add.d	$s0, $a1, $a0
	st.d	$s0, $fp, 56
.LBB3_125:                              # %if.end477
                                        #   in Loop: Header=BB3_126 Depth=4
	ld.bu	$a0, $a1, 0
	addi.d	$s2, $a1, 1
	sll.w	$a0, $a0, $s7
	addi.w	$s7, $s7, 8
	or	$s3, $a0, $s3
	move	$a1, $s2
	bge	$s7, $s6, .LBB3_103
.LBB3_126:                              # %while.body466
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_36 Depth=2
                                        #       Parent Loop BB3_37 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	bltu	$a1, $s0, .LBB3_125
# %bb.127:                              # %if.then469
                                        #   in Loop: Header=BB3_126 Depth=4
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a3, $a0, 8
	ld.d	$a1, $fp, 40
	ld.w	$a2, $fp, 88
	beqz	$a3, .LBB3_129
# %bb.128:                              # %cond.true.i489
                                        #   in Loop: Header=BB3_126 Depth=4
	ld.d	$a0, $a0, 0
	jirl	$ra, $a3, 0
	bgez	$a0, .LBB3_130
	b	.LBB3_317
.LBB3_129:                              # %cond.false.i516
                                        #   in Loop: Header=BB3_126 Depth=4
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB3_317
.LBB3_130:                              # %if.end.i497
                                        #   in Loop: Header=BB3_126 Depth=4
	bnez	$a0, .LBB3_124
# %bb.131:                              # %if.then7.i507
                                        #   in Loop: Header=BB3_126 Depth=4
	ld.w	$a0, $fp, 36
	beqz	$a0, .LBB3_123
	b	.LBB3_316
.LBB3_132:                              # %if.then313
                                        #   in Loop: Header=BB3_36 Depth=2
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	addi.w	$a1, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	stx.b	$a0, $a3, $a2
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	lu12i.w	$a0, 8
	bne	$a1, $a0, .LBB3_36
# %bb.133:                              # %if.then321
                                        #   in Loop: Header=BB3_36 Depth=2
	ld.d	$a2, $fp, 16
	move	$a0, $fp
	lu12i.w	$a1, 8
	jirl	$ra, $a2, 0
	move	$a1, $a0
	st.d	$zero, $sp, 48                  # 8-byte Folded Spill
	addi.w	$a0, $zero, -3
	beqz	$a1, .LBB3_36
	b	.LBB3_318
.LBB3_134:                              # %do.body536.preheader
                                        #   in Loop: Header=BB3_36 Depth=2
	slli.d	$a0, $s6, 1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	and	$a0, $s3, $a0
	slli.d	$a1, $a2, 1
	pcalau12i	$a2, %pc_hi20(mszip_dist_offsets)
	addi.d	$a2, $a2, %pc_lo12(mszip_dist_offsets)
	ldx.hu	$a1, $a2, $a1
	add.d	$a0, $a0, $a1
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	sltu	$a1, $a4, $a0
	slli.d	$a1, $a1, 15
	sub.d	$a0, $a4, $a0
	add.w	$s3, $a0, $a1
	lu12i.w	$a1, 8
	ld.d	$s7, $sp, 120                   # 8-byte Folded Reload
	b	.LBB3_137
.LBB3_135:                              #   in Loop: Header=BB3_137 Depth=3
	st.d	$zero, $sp, 48                  # 8-byte Folded Spill
	lu12i.w	$a1, 8
.LBB3_136:                              # %if.end573
                                        #   in Loop: Header=BB3_137 Depth=3
	add.w	$a0, $s6, $s3
	sub.w	$s4, $s4, $s6
	xor	$a2, $a0, $a1
	sltui	$a2, $a2, 1
	masknez	$s3, $a0, $a2
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	beqz	$s4, .LBB3_161
.LBB3_137:                              # %do.body536
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_36 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_145 Depth 4
                                        #         Child Loop BB3_149 Depth 4
                                        #         Child Loop BB3_151 Depth 4
	add.w	$a0, $s3, $s4
	sltu	$a0, $a1, $a0
	sub.w	$a2, $a1, $s3
	maskeqz	$a2, $a2, $a0
	masknez	$a0, $s4, $a0
	or	$a0, $a2, $a0
	add.w	$a2, $a0, $a4
	sltu	$a3, $a1, $a2
	move	$t2, $a4
	sub.w	$a2, $a1, $a4
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a2, $a3
	or	$s6, $a1, $a0
	addi.w	$a3, $s6, 0
	beqz	$a3, .LBB3_152
# %bb.138:                              # %iter.check
                                        #   in Loop: Header=BB3_137 Depth=3
	bstrpick.d	$a4, $s3, 31, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	add.d	$a1, $a0, $a4
	bstrpick.d	$a5, $t2, 31, 0
	add.d	$a0, $a0, $a5
	ori	$a2, $zero, 8
	bltu	$a3, $a2, .LBB3_143
# %bb.139:                              # %iter.check
                                        #   in Loop: Header=BB3_137 Depth=3
	sub.d	$a2, $a5, $a4
	ori	$a6, $zero, 32
	bltu	$a2, $a6, .LBB3_142
# %bb.140:                              # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB3_137 Depth=3
	bstrpick.d	$a2, $s6, 31, 0
	bgeu	$a3, $a6, .LBB3_144
# %bb.141:                              #   in Loop: Header=BB3_137 Depth=3
	move	$a6, $zero
	b	.LBB3_148
.LBB3_142:                              #   in Loop: Header=BB3_137 Depth=3
	move	$a3, $s6
	b	.LBB3_151
.LBB3_143:                              #   in Loop: Header=BB3_137 Depth=3
	move	$a3, $s6
	b	.LBB3_151
.LBB3_144:                              # %vector.ph
                                        #   in Loop: Header=BB3_137 Depth=3
	andi	$a3, $a2, 24
	bstrpick.d	$a6, $a2, 31, 5
	slli.d	$a6, $a6, 5
	ld.d	$t0, $sp, 56                    # 8-byte Folded Reload
	add.d	$a7, $t0, $a5
	add.d	$t0, $t0, $a4
	move	$t1, $a6
	.p2align	4, , 16
.LBB3_145:                              # %vector.body
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_36 Depth=2
                                        #       Parent Loop BB3_137 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr0, $t0, -16
	vld	$vr1, $t0, 0
	vst	$vr0, $a7, -16
	vst	$vr1, $a7, 0
	addi.d	$t1, $t1, -32
	addi.d	$a7, $a7, 32
	addi.d	$t0, $t0, 32
	bnez	$t1, .LBB3_145
# %bb.146:                              # %middle.block
                                        #   in Loop: Header=BB3_137 Depth=3
	beq	$a6, $a2, .LBB3_152
# %bb.147:                              # %vec.epilog.iter.check
                                        #   in Loop: Header=BB3_137 Depth=3
	beqz	$a3, .LBB3_154
.LBB3_148:                              # %vec.epilog.ph
                                        #   in Loop: Header=BB3_137 Depth=3
	bstrpick.d	$a3, $a2, 31, 3
	slli.d	$a7, $a3, 3
	alsl.d	$a0, $a3, $a0, 3
	alsl.d	$a1, $a3, $a1, 3
	sub.d	$a3, $s6, $a7
	sub.d	$t0, $a6, $a7
	add.d	$a4, $a6, $a4
	ld.d	$t1, $sp, 112                   # 8-byte Folded Reload
	add.d	$a4, $t1, $a4
	add.d	$a5, $a6, $a5
	add.d	$a5, $t1, $a5
	.p2align	4, , 16
.LBB3_149:                              # %vec.epilog.vector.body
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_36 Depth=2
                                        #       Parent Loop BB3_137 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a6, $a4, 0
	st.d	$a6, $a5, 0
	addi.d	$t0, $t0, 8
	addi.d	$a4, $a4, 8
	addi.d	$a5, $a5, 8
	bnez	$t0, .LBB3_149
# %bb.150:                              # %vec.epilog.middle.block
                                        #   in Loop: Header=BB3_137 Depth=3
	beq	$a7, $a2, .LBB3_152
	.p2align	4, , 16
.LBB3_151:                              # %while.body561
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_36 Depth=2
                                        #       Parent Loop BB3_137 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.b	$a2, $a1, 0
	addi.w	$a3, $a3, -1
	addi.d	$a1, $a1, 1
	addi.d	$a4, $a0, 1
	st.b	$a2, $a0, 0
	move	$a0, $a4
	bnez	$a3, .LBB3_151
.LBB3_152:                              # %while.end564
                                        #   in Loop: Header=BB3_137 Depth=3
	add.w	$t2, $s6, $t2
	lu12i.w	$a1, 8
	st.d	$t2, $sp, 48                    # 8-byte Folded Spill
	bne	$t2, $a1, .LBB3_136
# %bb.153:                              # %if.then567
                                        #   in Loop: Header=BB3_137 Depth=3
	ld.d	$a2, $fp, 16
	move	$a0, $fp
	jirl	$ra, $a2, 0
	beqz	$a0, .LBB3_135
	b	.LBB3_315
.LBB3_154:                              #   in Loop: Header=BB3_137 Depth=3
	add.d	$a0, $a0, $a6
	add.d	$a1, $a1, $a6
	sub.d	$a3, $s6, $a6
	b	.LBB3_151
.LBB3_155:                              # %while.body515.preheader
                                        #   in Loop: Header=BB3_36 Depth=2
	slli.d	$a0, $s6, 1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	and	$a0, $s3, $a0
	slli.d	$a1, $a2, 1
	pcalau12i	$a2, %pc_hi20(mszip_dist_offsets)
	addi.d	$a2, $a2, %pc_lo12(mszip_dist_offsets)
	ldx.hu	$a1, $a2, $a1
	add.d	$a0, $a0, $a1
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	sltu	$a1, $a2, $a0
	slli.d	$a1, $a1, 15
	sub.d	$a0, $a2, $a0
	add.w	$s3, $a0, $a1
	b	.LBB3_158
.LBB3_156:                              #   in Loop: Header=BB3_158 Depth=3
	move	$a2, $zero
.LBB3_157:                              # %if.end533
                                        #   in Loop: Header=BB3_158 Depth=3
	addi.w	$s4, $s4, -1
	addi.d	$a0, $s3, 1
	bstrpick.d	$s3, $a0, 14, 0
	beqz	$s4, .LBB3_160
.LBB3_158:                              # %while.body515
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_36 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bstrpick.d	$a0, $s3, 31, 0
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	ldx.b	$a0, $a3, $a0
	addi.w	$a1, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	stx.b	$a0, $a3, $a2
	move	$a2, $a1
	lu12i.w	$a0, 8
	bne	$a1, $a0, .LBB3_157
# %bb.159:                              # %if.then527
                                        #   in Loop: Header=BB3_158 Depth=3
	ld.d	$a2, $fp, 16
	move	$a0, $fp
	lu12i.w	$a1, 8
	jirl	$ra, $a2, 0
	beqz	$a0, .LBB3_156
	b	.LBB3_315
.LBB3_160:                              #   in Loop: Header=BB3_36 Depth=2
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	move	$s6, $s2
	b	.LBB3_36
.LBB3_161:                              #   in Loop: Header=BB3_36 Depth=2
	move	$s6, $s2
	b	.LBB3_36
	.p2align	4, , 16
.LBB3_162:                              # %do.body207
                                        #   in Loop: Header=BB3_1 Depth=1
	st.d	$s6, $fp, 48
	st.d	$s0, $fp, 56
	st.w	$s8, $fp, 80
	st.w	$s5, $fp, 84
	ori	$a0, $zero, 4
	bltu	$a0, $s5, .LBB3_200
# %bb.163:                              # %while.body.i
                                        #   in Loop: Header=BB3_1 Depth=1
	bltu	$s6, $s0, .LBB3_199
# %bb.164:                              # %if.then.i382
                                        #   in Loop: Header=BB3_1 Depth=1
	ld.d	$a3, $s7, 8
	ld.d	$a1, $fp, 40
	ld.w	$a2, $fp, 88
	beqz	$a3, .LBB3_193
# %bb.165:                              # %cond.true.i.i
                                        #   in Loop: Header=BB3_1 Depth=1
	ld.d	$a0, $s7, 0
	jirl	$ra, $a3, 0
	b	.LBB3_194
.LBB3_166:                              #   in Loop: Header=BB3_1 Depth=1
	move	$s2, $zero
	addi.d	$s3, $sp, 128
.LBB3_167:                              # %while.body70.preheader
                                        #   in Loop: Header=BB3_1 Depth=1
	lu12i.w	$s5, 8
	b	.LBB3_171
.LBB3_168:                              # %if.else.i337
                                        #   in Loop: Header=BB3_171 Depth=2
	ld.d	$a0, $fp, 40
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 36
.LBB3_169:                              # %if.end78
                                        #   in Loop: Header=BB3_171 Depth=2
	ld.d	$s6, $fp, 40
	st.d	$s6, $fp, 48
	add.d	$s0, $s6, $a0
	st.d	$s0, $fp, 56
.LBB3_170:                              # %if.end81
                                        #   in Loop: Header=BB3_171 Depth=2
	ld.b	$a0, $s6, 0
	addi.d	$s6, $s6, 1
	addi.d	$a1, $s2, 1
	stx.b	$a0, $s2, $s3
	move	$s2, $a1
	ori	$a0, $zero, 4
	beq	$a1, $a0, .LBB3_177
.LBB3_171:                              # %while.body70
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bltu	$s6, $s0, .LBB3_170
# %bb.172:                              # %if.then73
                                        #   in Loop: Header=BB3_171 Depth=2
	ld.d	$a3, $s7, 8
	ld.d	$a1, $fp, 40
	ld.w	$a2, $fp, 88
	beqz	$a3, .LBB3_174
# %bb.173:                              # %cond.true.i314
                                        #   in Loop: Header=BB3_171 Depth=2
	ld.d	$a0, $s7, 0
	jirl	$ra, $a3, 0
	bgez	$a0, .LBB3_175
	b	.LBB3_317
.LBB3_174:                              # %cond.false.i341
                                        #   in Loop: Header=BB3_171 Depth=2
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB3_317
.LBB3_175:                              # %if.end.i322
                                        #   in Loop: Header=BB3_171 Depth=2
	bnez	$a0, .LBB3_169
# %bb.176:                              # %if.then7.i332
                                        #   in Loop: Header=BB3_171 Depth=2
	ld.w	$a0, $fp, 36
	beqz	$a0, .LBB3_168
	b	.LBB3_316
.LBB3_177:                              # %while.end86.loopexit
                                        #   in Loop: Header=BB3_1 Depth=1
	ld.bu	$a0, $sp, 128
.LBB3_178:                              # %while.end86
                                        #   in Loop: Header=BB3_1 Depth=1
	ld.bu	$a1, $sp, 129
	ld.hu	$a2, $sp, 130
	slli.d	$a1, $a1, 8
	or	$s2, $a1, $a0
	xor	$a0, $a2, $s2
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	bne	$a0, $a1, .LBB3_325
# %bb.179:                              # %while.cond104.preheader
                                        #   in Loop: Header=BB3_1 Depth=1
	bnez	$s2, .LBB3_183
.LBB3_180:                              # %cleanup
                                        #   in Loop: Header=BB3_1 Depth=1
	move	$s5, $zero
	move	$s2, $s6
	andi	$a0, $s1, 1
	beqz	$a0, .LBB3_1
	b	.LBB3_313
	.p2align	4, , 16
.LBB3_181:                              # %if.end149
                                        #   in Loop: Header=BB3_183 Depth=2
	st.w	$zero, $fp, 12
.LBB3_182:                              # %if.end151
                                        #   in Loop: Header=BB3_183 Depth=2
	sub.w	$s2, $s2, $s3
	add.d	$s6, $s6, $s7
	ld.d	$s7, $sp, 120                   # 8-byte Folded Reload
	beqz	$s2, .LBB3_180
.LBB3_183:                              # %while.body107
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bltu	$s6, $s0, .LBB3_191
# %bb.184:                              # %if.then110
                                        #   in Loop: Header=BB3_183 Depth=2
	ld.d	$a3, $s7, 8
	ld.d	$a1, $fp, 40
	ld.w	$a2, $fp, 88
	beqz	$a3, .LBB3_186
# %bb.185:                              # %cond.true.i348
                                        #   in Loop: Header=BB3_183 Depth=2
	ld.d	$a0, $s7, 0
	jirl	$ra, $a3, 0
	bgez	$a0, .LBB3_187
	b	.LBB3_317
.LBB3_186:                              # %cond.false.i375
                                        #   in Loop: Header=BB3_183 Depth=2
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB3_317
.LBB3_187:                              # %if.end.i356
                                        #   in Loop: Header=BB3_183 Depth=2
	bnez	$a0, .LBB3_190
# %bb.188:                              # %if.then7.i366
                                        #   in Loop: Header=BB3_183 Depth=2
	ld.w	$a0, $fp, 36
	bnez	$a0, .LBB3_316
# %bb.189:                              # %if.else.i371
                                        #   in Loop: Header=BB3_183 Depth=2
	ld.d	$a0, $fp, 40
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 36
.LBB3_190:                              # %if.end115
                                        #   in Loop: Header=BB3_183 Depth=2
	ld.d	$s6, $fp, 40
	st.d	$s6, $fp, 48
	add.d	$s0, $s6, $a0
	st.d	$s0, $fp, 56
.LBB3_191:                              # %if.end118
                                        #   in Loop: Header=BB3_183 Depth=2
	sub.w	$a0, $s0, $s6
	addi.w	$a1, $s2, 0
	sltu	$a2, $a1, $a0
	ld.wu	$s4, $fp, 12
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	sub.w	$a1, $s5, $s4
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s3, $a0, $a1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	add.d	$a0, $a0, $s4
	bstrpick.d	$s7, $s3, 31, 0
	move	$a1, $s6
	move	$a2, $s7
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	add.w	$a0, $s3, $s4
	st.w	$a0, $fp, 12
	bne	$a0, $s5, .LBB3_182
# %bb.192:                              # %if.then145
                                        #   in Loop: Header=BB3_183 Depth=2
	ld.d	$a2, $fp, 16
	move	$a0, $fp
	move	$a1, $s5
	jirl	$ra, $a2, 0
	beqz	$a0, .LBB3_181
	b	.LBB3_315
.LBB3_193:                              # %cond.false.i.i
                                        #   in Loop: Header=BB3_1 Depth=1
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB3_194:                              # %cond.end.i.i
                                        #   in Loop: Header=BB3_1 Depth=1
	bltz	$a0, .LBB3_317
# %bb.195:                              # %if.end.i.i
                                        #   in Loop: Header=BB3_1 Depth=1
	bnez	$a0, .LBB3_198
# %bb.196:                              # %if.then7.i.i
                                        #   in Loop: Header=BB3_1 Depth=1
	ld.w	$a0, $fp, 36
	bnez	$a0, .LBB3_316
# %bb.197:                              # %if.else.i.i
                                        #   in Loop: Header=BB3_1 Depth=1
	ld.d	$a0, $fp, 40
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 36
.LBB3_198:                              # %if.end.i383
                                        #   in Loop: Header=BB3_1 Depth=1
	ld.d	$s6, $fp, 40
	st.d	$s6, $fp, 48
	add.d	$s0, $s6, $a0
	st.d	$s0, $fp, 56
.LBB3_199:                              # %do.end13.i.loopexit
                                        #   in Loop: Header=BB3_1 Depth=1
	ld.bu	$a0, $s6, 0
	sll.w	$a0, $a0, $s5
	addi.w	$s5, $s3, 6
	or	$s8, $a0, $s8
	addi.d	$s6, $s6, 1
.LBB3_200:                              # %do.end13.i
                                        #   in Loop: Header=BB3_1 Depth=1
	bstrpick.d	$s2, $s8, 31, 5
	ori	$a0, $zero, 9
	bltu	$a0, $s5, .LBB3_211
# %bb.201:                              # %while.body22.i.preheader
                                        #   in Loop: Header=BB3_1 Depth=1
	addi.d	$s3, $s5, -13
	b	.LBB3_205
.LBB3_202:                              # %if.else.i185.i
                                        #   in Loop: Header=BB3_205 Depth=2
	ld.d	$a0, $fp, 40
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 36
.LBB3_203:                              # %if.end30.i
                                        #   in Loop: Header=BB3_205 Depth=2
	ld.d	$s6, $fp, 40
	st.d	$s6, $fp, 48
	add.d	$s0, $s6, $a0
	st.d	$s0, $fp, 56
.LBB3_204:                              # %if.end33.i
                                        #   in Loop: Header=BB3_205 Depth=2
	ld.bu	$a0, $s6, 0
	addi.w	$s3, $s3, 8
	addi.d	$s6, $s6, 1
	sll.w	$a0, $a0, $s3
	addi.w	$a1, $zero, -3
	or	$s2, $a0, $s2
	bge	$s3, $a1, .LBB3_222
.LBB3_205:                              # %while.body22.i
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bltu	$s6, $s0, .LBB3_204
# %bb.206:                              # %if.then25.i
                                        #   in Loop: Header=BB3_205 Depth=2
	ld.d	$a3, $s7, 8
	ld.d	$a1, $fp, 40
	ld.w	$a2, $fp, 88
	beqz	$a3, .LBB3_208
# %bb.207:                              # %cond.true.i162.i
                                        #   in Loop: Header=BB3_205 Depth=2
	ld.d	$a0, $s7, 0
	jirl	$ra, $a3, 0
	bgez	$a0, .LBB3_209
	b	.LBB3_317
.LBB3_208:                              # %cond.false.i189.i
                                        #   in Loop: Header=BB3_205 Depth=2
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB3_317
.LBB3_209:                              # %if.end.i170.i
                                        #   in Loop: Header=BB3_205 Depth=2
	bnez	$a0, .LBB3_203
# %bb.210:                              # %if.then7.i180.i
                                        #   in Loop: Header=BB3_205 Depth=2
	ld.w	$a0, $fp, 36
	beqz	$a0, .LBB3_202
	b	.LBB3_316
.LBB3_211:                              #   in Loop: Header=BB3_1 Depth=1
	addi.w	$a0, $s5, -5
	bstrpick.d	$s3, $s2, 31, 5
	ori	$a1, $zero, 8
	blt	$a1, $a0, .LBB3_223
.LBB3_212:                              # %while.body53.i.preheader
                                        #   in Loop: Header=BB3_1 Depth=1
	addi.d	$s4, $a0, -13
	b	.LBB3_215
	.p2align	4, , 16
.LBB3_213:                              # %if.end61.i
                                        #   in Loop: Header=BB3_215 Depth=2
	ld.d	$s6, $fp, 40
	st.d	$s6, $fp, 48
	add.d	$s0, $s6, $a0
	st.d	$s0, $fp, 56
.LBB3_214:                              # %if.end64.i
                                        #   in Loop: Header=BB3_215 Depth=2
	ld.bu	$a0, $s6, 0
	addi.w	$s4, $s4, 8
	addi.d	$s6, $s6, 1
	sll.w	$a0, $a0, $s4
	addi.w	$a1, $zero, -4
	or	$s3, $a0, $s3
	bge	$s4, $a1, .LBB3_224
.LBB3_215:                              # %while.body53.i
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bltu	$s6, $s0, .LBB3_214
# %bb.216:                              # %if.then56.i
                                        #   in Loop: Header=BB3_215 Depth=2
	ld.d	$a3, $s7, 8
	ld.d	$a1, $fp, 40
	ld.w	$a2, $fp, 88
	beqz	$a3, .LBB3_218
# %bb.217:                              # %cond.true.i196.i
                                        #   in Loop: Header=BB3_215 Depth=2
	ld.d	$a0, $s7, 0
	jirl	$ra, $a3, 0
	bgez	$a0, .LBB3_219
	b	.LBB3_317
.LBB3_218:                              # %cond.false.i223.i
                                        #   in Loop: Header=BB3_215 Depth=2
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB3_317
.LBB3_219:                              # %if.end.i204.i
                                        #   in Loop: Header=BB3_215 Depth=2
	bnez	$a0, .LBB3_213
# %bb.220:                              # %if.then7.i214.i
                                        #   in Loop: Header=BB3_215 Depth=2
	ld.w	$a0, $fp, 36
	bnez	$a0, .LBB3_316
# %bb.221:                              # %if.else.i219.i
                                        #   in Loop: Header=BB3_215 Depth=2
	ld.d	$a0, $fp, 40
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 36
	b	.LBB3_213
.LBB3_222:                              # %do.end41.i.loopexit
                                        #   in Loop: Header=BB3_1 Depth=1
	addi.w	$a0, $s3, 8
	bstrpick.d	$s3, $s2, 31, 5
	ori	$a1, $zero, 8
	bge	$a1, $a0, .LBB3_212
.LBB3_223:                              #   in Loop: Header=BB3_1 Depth=1
	addi.d	$a0, $a0, -5
	b	.LBB3_225
.LBB3_224:                              # %do.end72.i.loopexit
                                        #   in Loop: Header=BB3_1 Depth=1
	addi.d	$a0, $s4, 8
.LBB3_225:                              # %do.end72.i
                                        #   in Loop: Header=BB3_1 Depth=1
	move	$s4, $zero
	andi	$a1, $s8, 31
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	addi.d	$a1, $a1, 257
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	andi	$a1, $s2, 31
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	andi	$s2, $s3, 15
	bstrpick.d	$s8, $s3, 31, 4
	addi.w	$s5, $a0, -4
	addi.d	$s3, $s2, 4
	b	.LBB3_227
	.p2align	4, , 16
.LBB3_226:                              # %do.end113.i
                                        #   in Loop: Header=BB3_227 Depth=2
	andi	$a1, $s8, 7
	pcalau12i	$a0, %pc_hi20(mszip_bitlen_order)
	addi.d	$a0, $a0, %pc_lo12(mszip_bitlen_order)
	ldx.bu	$a2, $a0, $s4
	addi.d	$a3, $sp, 453
	stx.b	$a1, $a2, $a3
	bstrpick.d	$s8, $s8, 31, 3
	addi.d	$s4, $s4, 1
	addi.w	$s5, $s5, -3
	beq	$s4, $s3, .LBB3_239
.LBB3_227:                              # %while.cond91.preheader.i
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_231 Depth 3
	ori	$a0, $zero, 2
	bge	$a0, $s5, .LBB3_231
	b	.LBB3_226
.LBB3_228:                              # %if.else.i253.i
                                        #   in Loop: Header=BB3_231 Depth=3
	ld.d	$a0, $fp, 40
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 36
.LBB3_229:                              # %if.end102.i
                                        #   in Loop: Header=BB3_231 Depth=3
	ld.d	$s6, $fp, 40
	st.d	$s6, $fp, 48
	add.d	$s0, $s6, $a0
	st.d	$s0, $fp, 56
.LBB3_230:                              # %if.end105.i
                                        #   in Loop: Header=BB3_231 Depth=3
	ld.bu	$a0, $s6, 0
	addi.d	$s6, $s6, 1
	sll.w	$a0, $a0, $s7
	or	$s8, $a0, $s8
	addi.w	$a0, $zero, -5
	addi.w	$s5, $s7, 8
	bge	$s7, $a0, .LBB3_226
.LBB3_231:                              # %while.body94.i
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_227 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s7, $s5
	bltu	$s6, $s0, .LBB3_230
# %bb.232:                              # %if.then97.i
                                        #   in Loop: Header=BB3_231 Depth=3
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a3, $a0, 8
	ld.d	$a1, $fp, 40
	ld.w	$a2, $fp, 88
	beqz	$a3, .LBB3_234
# %bb.233:                              # %cond.true.i230.i
                                        #   in Loop: Header=BB3_231 Depth=3
	ld.d	$a0, $a0, 0
	jirl	$ra, $a3, 0
	bgez	$a0, .LBB3_235
	b	.LBB3_317
.LBB3_234:                              # %cond.false.i257.i
                                        #   in Loop: Header=BB3_231 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB3_317
.LBB3_235:                              # %if.end.i238.i
                                        #   in Loop: Header=BB3_231 Depth=3
	bnez	$a0, .LBB3_229
# %bb.236:                              # %if.then7.i248.i
                                        #   in Loop: Header=BB3_231 Depth=3
	ld.w	$a0, $fp, 36
	beqz	$a0, .LBB3_228
	b	.LBB3_316
.LBB3_237:                              # %for.body.3
                                        #   in Loop: Header=BB3_1 Depth=1
	st.b	$a0, $sp, 131
	ori	$a0, $zero, 32
	bne	$s5, $a0, .LBB3_327
# %bb.238:                              #   in Loop: Header=BB3_1 Depth=1
	andi	$a0, $s8, 255
	move	$s8, $zero
	lu12i.w	$s5, 8
	b	.LBB3_178
.LBB3_239:                              # %while.cond122.preheader.i
                                        #   in Loop: Header=BB3_1 Depth=1
	ori	$a2, $zero, 15
	beq	$s2, $a2, .LBB3_241
	.p2align	4, , 16
.LBB3_240:                              # %while.body125.i
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a1, $a0, $s2
	ld.bu	$a1, $a1, 4
	addi.d	$s2, $s2, 1
	stx.b	$zero, $a1, $a3
	bne	$s2, $a2, .LBB3_240
.LBB3_241:                              # %while.end131.i
                                        #   in Loop: Header=BB3_1 Depth=1
	ori	$a0, $zero, 19
	ori	$a1, $zero, 7
	addi.d	$a2, $sp, 453
	addi.d	$a3, $sp, 472
	pcaddu18i	$ra, %call36(mszip_make_decode_table)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	bnez	$a0, .LBB3_328
# %bb.242:                              # %for.cond138.preheader.i
                                        #   in Loop: Header=BB3_1 Depth=1
	move	$s2, $zero
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
	addi.d	$a0, $a1, 257
	add.d	$a0, $s4, $a0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
.LBB3_243:                              # %while.cond144.preheader.i
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_250 Depth 3
                                        #       Child Loop BB3_264 Depth 3
                                        #       Child Loop BB3_276 Depth 3
                                        #       Child Loop BB3_296 Depth 3
                                        #       Child Loop BB3_291 Depth 3
                                        #       Child Loop BB3_304 Depth 3
	ori	$a0, $zero, 6
	bge	$a0, $s5, .LBB3_250
# %bb.244:                              #   in Loop: Header=BB3_243 Depth=2
	move	$a2, $s6
.LBB3_245:                              # %do.end166.i
                                        #   in Loop: Header=BB3_243 Depth=2
	andi	$a0, $s8, 127
	slli.d	$a0, $a0, 1
	addi.d	$a1, $sp, 472
	ldx.hu	$a1, $a0, $a1
	addi.d	$a0, $sp, 453
	ldx.bu	$a0, $a1, $a0
	srl.w	$s8, $s8, $a0
	sub.w	$s5, $s5, $a0
	ori	$a0, $zero, 15
	bltu	$a0, $a1, .LBB3_256
# %bb.246:                              # %if.then181.i
                                        #   in Loop: Header=BB3_243 Depth=2
	bstrpick.d	$a0, $s2, 31, 0
	addi.d	$s3, $sp, 128
	stx.b	$a1, $a0, $s3
	addi.w	$a3, $s2, 1
	move	$s6, $a2
	b	.LBB3_306
.LBB3_247:                              # %if.else.i287.i
                                        #   in Loop: Header=BB3_250 Depth=3
	ld.d	$a0, $fp, 40
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 36
.LBB3_248:                              # %if.end155.i
                                        #   in Loop: Header=BB3_250 Depth=3
	ld.d	$s6, $fp, 40
	st.d	$s6, $fp, 48
	add.d	$s0, $s6, $a0
	st.d	$s0, $fp, 56
.LBB3_249:                              # %if.end158.i
                                        #   in Loop: Header=BB3_250 Depth=3
	ld.bu	$a0, $s6, 0
	addi.d	$a2, $s6, 1
	sll.w	$a0, $a0, $s3
	or	$s8, $a0, $s8
	addi.w	$a0, $zero, -1
	addi.w	$s5, $s3, 8
	move	$s6, $a2
	bge	$s3, $a0, .LBB3_245
.LBB3_250:                              # %while.body147.i
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_243 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s3, $s5
	bltu	$s6, $s0, .LBB3_249
# %bb.251:                              # %if.then150.i
                                        #   in Loop: Header=BB3_250 Depth=3
	ld.d	$a3, $s7, 8
	ld.d	$a1, $fp, 40
	ld.w	$a2, $fp, 88
	beqz	$a3, .LBB3_253
# %bb.252:                              # %cond.true.i264.i
                                        #   in Loop: Header=BB3_250 Depth=3
	ld.d	$a0, $s7, 0
	jirl	$ra, $a3, 0
	bgez	$a0, .LBB3_254
	b	.LBB3_317
.LBB3_253:                              # %cond.false.i291.i
                                        #   in Loop: Header=BB3_250 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB3_317
.LBB3_254:                              # %if.end.i272.i
                                        #   in Loop: Header=BB3_250 Depth=3
	bnez	$a0, .LBB3_248
# %bb.255:                              # %if.then7.i282.i
                                        #   in Loop: Header=BB3_250 Depth=3
	ld.w	$a0, $fp, 36
	beqz	$a0, .LBB3_247
	b	.LBB3_316
.LBB3_256:                              # %if.else.i381
                                        #   in Loop: Header=BB3_243 Depth=2
	ori	$a0, $zero, 16
	beq	$a1, $a0, .LBB3_284
# %bb.257:                              # %if.else.i381
                                        #   in Loop: Header=BB3_243 Depth=2
	ori	$a0, $zero, 17
	beq	$a1, $a0, .LBB3_271
# %bb.258:                              # %if.else.i381
                                        #   in Loop: Header=BB3_243 Depth=2
	ori	$a0, $zero, 18
	bne	$a1, $a0, .LBB3_330
# %bb.259:                              # %while.cond251.preheader.i
                                        #   in Loop: Header=BB3_243 Depth=2
	ori	$a0, $zero, 6
	bge	$a0, $s5, .LBB3_264
.LBB3_260:                              # %do.end273.i
                                        #   in Loop: Header=BB3_243 Depth=2
	move	$a0, $zero
	andi	$a1, $s8, 127
	bstrpick.d	$s8, $s8, 31, 7
	addi.w	$s5, $s5, -7
	addi.d	$a1, $a1, 11
	b	.LBB3_273
.LBB3_261:                              # %if.else.i389.i
                                        #   in Loop: Header=BB3_264 Depth=3
	ld.d	$a0, $fp, 40
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 36
.LBB3_262:                              # %if.end262.i
                                        #   in Loop: Header=BB3_264 Depth=3
	ld.d	$a2, $fp, 40
	st.d	$a2, $fp, 48
	add.d	$s0, $a2, $a0
	st.d	$s0, $fp, 56
.LBB3_263:                              # %if.end265.i
                                        #   in Loop: Header=BB3_264 Depth=3
	ld.bu	$a0, $a2, 0
	addi.d	$a2, $a2, 1
	sll.w	$a0, $a0, $s3
	or	$s8, $a0, $s8
	addi.w	$a0, $zero, -1
	addi.w	$s5, $s3, 8
	bge	$s3, $a0, .LBB3_260
.LBB3_264:                              # %while.body254.i
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_243 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s3, $s5
	bltu	$a2, $s0, .LBB3_263
# %bb.265:                              # %if.then257.i
                                        #   in Loop: Header=BB3_264 Depth=3
	ld.d	$a3, $s7, 8
	ld.d	$a1, $fp, 40
	ld.w	$a2, $fp, 88
	beqz	$a3, .LBB3_267
# %bb.266:                              # %cond.true.i366.i
                                        #   in Loop: Header=BB3_264 Depth=3
	ld.d	$a0, $s7, 0
	jirl	$ra, $a3, 0
	b	.LBB3_268
.LBB3_267:                              # %cond.false.i393.i
                                        #   in Loop: Header=BB3_264 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB3_268:                              # %cond.end.i371.i
                                        #   in Loop: Header=BB3_264 Depth=3
	bltz	$a0, .LBB3_317
# %bb.269:                              # %if.end.i374.i
                                        #   in Loop: Header=BB3_264 Depth=3
	bnez	$a0, .LBB3_262
# %bb.270:                              # %if.then7.i384.i
                                        #   in Loop: Header=BB3_264 Depth=3
	ld.w	$a0, $fp, 36
	beqz	$a0, .LBB3_261
	b	.LBB3_316
.LBB3_271:                              # %while.cond219.preheader.i
                                        #   in Loop: Header=BB3_243 Depth=2
	ori	$a0, $zero, 2
	bge	$a0, $s5, .LBB3_276
.LBB3_272:                              # %do.end241.i
                                        #   in Loop: Header=BB3_243 Depth=2
	move	$a0, $zero
	andi	$a1, $s8, 7
	bstrpick.d	$s8, $s8, 31, 3
	addi.w	$s5, $s5, -3
	addi.d	$a1, $a1, 3
.LBB3_273:                              # %sw.epilog.i
                                        #   in Loop: Header=BB3_243 Depth=2
	move	$s6, $a2
	b	.LBB3_287
.LBB3_274:                              # %if.end230.i
                                        #   in Loop: Header=BB3_276 Depth=3
	ld.d	$a2, $fp, 40
	st.d	$a2, $fp, 48
	add.d	$s0, $a2, $a0
	st.d	$s0, $fp, 56
.LBB3_275:                              # %if.end233.i
                                        #   in Loop: Header=BB3_276 Depth=3
	ld.bu	$a0, $a2, 0
	addi.d	$a2, $a2, 1
	sll.w	$a0, $a0, $s3
	or	$s8, $a0, $s8
	addi.w	$a0, $zero, -5
	addi.w	$s5, $s3, 8
	bge	$s3, $a0, .LBB3_272
.LBB3_276:                              # %while.body222.i
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_243 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s3, $s5
	bltu	$a2, $s0, .LBB3_275
# %bb.277:                              # %if.then225.i
                                        #   in Loop: Header=BB3_276 Depth=3
	ld.d	$a3, $s7, 8
	ld.d	$a1, $fp, 40
	ld.w	$a2, $fp, 88
	beqz	$a3, .LBB3_279
# %bb.278:                              # %cond.true.i332.i
                                        #   in Loop: Header=BB3_276 Depth=3
	ld.d	$a0, $s7, 0
	jirl	$ra, $a3, 0
	b	.LBB3_280
.LBB3_279:                              # %cond.false.i359.i
                                        #   in Loop: Header=BB3_276 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB3_280:                              # %cond.end.i337.i
                                        #   in Loop: Header=BB3_276 Depth=3
	bltz	$a0, .LBB3_317
# %bb.281:                              # %if.end.i340.i
                                        #   in Loop: Header=BB3_276 Depth=3
	bnez	$a0, .LBB3_274
# %bb.282:                              # %if.then7.i350.i
                                        #   in Loop: Header=BB3_276 Depth=3
	ld.w	$a0, $fp, 36
	bnez	$a0, .LBB3_316
# %bb.283:                              # %if.else.i355.i
                                        #   in Loop: Header=BB3_276 Depth=3
	ld.d	$a0, $fp, 40
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 36
	b	.LBB3_274
.LBB3_284:                              # %while.cond187.preheader.i
                                        #   in Loop: Header=BB3_243 Depth=2
	ori	$a0, $zero, 1
	bge	$a0, $s5, .LBB3_296
# %bb.285:                              #   in Loop: Header=BB3_243 Depth=2
	move	$s6, $a2
.LBB3_286:                              # %do.end209.i
                                        #   in Loop: Header=BB3_243 Depth=2
	andi	$a0, $s8, 3
	bstrpick.d	$s8, $s8, 31, 2
	addi.w	$s5, $s5, -2
	addi.d	$a1, $a0, 3
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
.LBB3_287:                              # %sw.epilog.i
                                        #   in Loop: Header=BB3_243 Depth=2
	add.w	$a2, $a1, $s2
	addi.d	$s3, $sp, 128
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	bltu	$a3, $a2, .LBB3_329
# %bb.288:                              # %while.body288.i.preheader
                                        #   in Loop: Header=BB3_243 Depth=2
	ori	$a2, $zero, 32
	bltu	$a1, $a2, .LBB3_303
# %bb.289:                              # %while.body288.i.preheader
                                        #   in Loop: Header=BB3_243 Depth=2
	sub.d	$a2, $zero, $a1
	bltu	$a2, $s2, .LBB3_303
# %bb.290:                              # %vector.ph1139
                                        #   in Loop: Header=BB3_243 Depth=2
	andi	$a4, $a1, 224
	andi	$a2, $a1, 31
	add.w	$a3, $s2, $a4
	vreplgr2vr.b	$vr0, $a0
	move	$a5, $a4
	.p2align	4, , 16
.LBB3_291:                              # %vector.body1142
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_243 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bstrpick.d	$a6, $s2, 31, 0
	add.d	$a7, $s3, $a6
	vstx	$vr0, $a6, $s3
	vst	$vr0, $a7, 16
	addi.w	$a5, $a5, -32
	addi.w	$s2, $s2, 32
	bnez	$a5, .LBB3_291
# %bb.292:                              # %middle.block1145
                                        #   in Loop: Header=BB3_243 Depth=2
	bne	$a1, $a4, .LBB3_304
	b	.LBB3_305
.LBB3_293:                              # %if.else.i321.i
                                        #   in Loop: Header=BB3_296 Depth=3
	ld.d	$a0, $fp, 40
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 36
.LBB3_294:                              # %if.end198.i
                                        #   in Loop: Header=BB3_296 Depth=3
	ld.d	$a2, $fp, 40
	st.d	$a2, $fp, 48
	add.d	$s0, $a2, $a0
	st.d	$s0, $fp, 56
.LBB3_295:                              # %if.end201.i
                                        #   in Loop: Header=BB3_296 Depth=3
	ld.bu	$a0, $a2, 0
	addi.d	$s6, $a2, 1
	sll.w	$a0, $a0, $s3
	or	$s8, $a0, $s8
	addi.w	$a0, $zero, -6
	addi.w	$s5, $s3, 8
	move	$a2, $s6
	bge	$s3, $a0, .LBB3_286
.LBB3_296:                              # %while.body190.i
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_243 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s3, $s5
	bltu	$a2, $s0, .LBB3_295
# %bb.297:                              # %if.then193.i
                                        #   in Loop: Header=BB3_296 Depth=3
	ld.d	$a3, $s7, 8
	ld.d	$a1, $fp, 40
	ld.w	$a2, $fp, 88
	beqz	$a3, .LBB3_299
# %bb.298:                              # %cond.true.i298.i
                                        #   in Loop: Header=BB3_296 Depth=3
	ld.d	$a0, $s7, 0
	jirl	$ra, $a3, 0
	b	.LBB3_300
.LBB3_299:                              # %cond.false.i325.i
                                        #   in Loop: Header=BB3_296 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB3_300:                              # %cond.end.i303.i
                                        #   in Loop: Header=BB3_296 Depth=3
	bltz	$a0, .LBB3_317
# %bb.301:                              # %if.end.i306.i
                                        #   in Loop: Header=BB3_296 Depth=3
	bnez	$a0, .LBB3_294
# %bb.302:                              # %if.then7.i316.i
                                        #   in Loop: Header=BB3_296 Depth=3
	ld.w	$a0, $fp, 36
	beqz	$a0, .LBB3_293
	b	.LBB3_316
.LBB3_303:                              #   in Loop: Header=BB3_243 Depth=2
	move	$a2, $a1
	move	$a3, $s2
	.p2align	4, , 16
.LBB3_304:                              # %while.body288.i
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_243 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.w	$a2, $a2, -1
	bstrpick.d	$a1, $a3, 31, 0
	addi.w	$a3, $a3, 1
	stx.b	$a0, $a1, $s3
	bnez	$a2, .LBB3_304
.LBB3_305:                              #   in Loop: Header=BB3_243 Depth=2
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
.LBB3_306:                              # %for.inc296.i
                                        #   in Loop: Header=BB3_243 Depth=2
	move	$s2, $a3
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	bltu	$a3, $a0, .LBB3_243
# %bb.307:                              # %for.end298.i
                                        #   in Loop: Header=BB3_1 Depth=1
	addi.d	$a1, $sp, 128
	addi.d	$s2, $fp, 92
	move	$a0, $s2
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a2, $s4, 257
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 31
	beq	$s4, $a0, .LBB3_309
# %bb.308:                              # %while.body305.preheader.i
                                        #   in Loop: Header=BB3_1 Depth=1
	add.d	$a0, $fp, $s4
	addi.d	$a0, $a0, 349
	xori	$a2, $s4, 31
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB3_309:                              # %while.end310.i
                                        #   in Loop: Header=BB3_1 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	add.d	$a1, $s3, $a0
	addi.d	$a0, $fp, 380
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 31
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB3_311
# %bb.310:                              # %while.body318.preheader.i
                                        #   in Loop: Header=BB3_1 Depth=1
	add.d	$a0, $fp, $a1
	addi.d	$a0, $a0, 381
	xori	$a2, $a1, 31
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB3_311:                              # %do.body218
                                        #   in Loop: Header=BB3_1 Depth=1
	st.d	$s6, $fp, 48
	st.d	$s0, $fp, 56
	st.w	$s8, $fp, 80
	st.w	$s5, $fp, 84
	b	.LBB3_33
.LBB3_312:                              # %cleanup591
                                        #   in Loop: Header=BB3_1 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.w	$a0, $fp, 12
	move	$s2, $s6
	andi	$a0, $s1, 1
	beqz	$a0, .LBB3_1
.LBB3_313:                              # %do.end601
	ld.w	$a1, $fp, 12
	beqz	$a1, .LBB3_326
# %bb.314:                              # %if.then604
	ld.d	$a2, $fp, 16
	move	$a0, $fp
	jirl	$ra, $a2, 0
	beqz	$a0, .LBB3_326
.LBB3_315:
	addi.w	$a0, $zero, -3
	b	.LBB3_318
.LBB3_316:                              # %if.then9.i
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB3_317:                              # %if.then.i
	addi.w	$a0, $zero, -123
	move	$a1, $a0
	lu32i.d	$a1, 0
	st.w	$a1, $fp, 24
.LBB3_318:                              # %cleanup619
	ld.d	$s8, $sp, 728                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 736                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 744                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 752                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 760                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 768                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 776                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 784                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 792                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 800                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 808                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 816
	ret
.LBB3_319:                              # %if.then291
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
.LBB3_320:                              # %cleanup619
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -14
	b	.LBB3_318
.LBB3_321:
	addi.w	$a0, $zero, -11
	b	.LBB3_318
.LBB3_322:
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	b	.LBB3_318
.LBB3_323:
	addi.w	$a0, $zero, -8
	b	.LBB3_318
.LBB3_324:
	addi.w	$a0, $zero, -12
	b	.LBB3_318
.LBB3_325:
	addi.w	$a0, $zero, -2
	b	.LBB3_318
.LBB3_326:                              # %do.body612
	move	$a0, $zero
	st.d	$s2, $fp, 48
	st.d	$s0, $fp, 56
	st.w	$s8, $fp, 80
	st.w	$s5, $fp, 84
	b	.LBB3_318
.LBB3_327:
	addi.w	$a0, $zero, -4
	b	.LBB3_318
.LBB3_328:
	addi.w	$a0, $zero, -6
	b	.LBB3_318
.LBB3_329:
	addi.w	$a0, $zero, -9
	b	.LBB3_318
.LBB3_330:                              # %sw.default.i
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -10
	b	.LBB3_318
.LBB3_331:                              # %if.then280
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	b	.LBB3_320
.Lfunc_end3:
	.size	mszip_inflate, .Lfunc_end3-mszip_inflate
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI3_0:
	.word	.LBB3_27-.LJTI3_0
	.word	.LBB3_32-.LJTI3_0
	.word	.LBB3_162-.LJTI3_0
	.word	.LBB3_318-.LJTI3_0
                                        # -- End function
	.text
	.globl	mszip_free                      # -- Begin function mszip_free
	.p2align	5
	.type	mszip_free,@function
mszip_free:                             # @mszip_free
# %bb.0:                                # %entry
	beqz	$a0, .LBB4_2
# %bb.1:                                # %if.then
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.d	$a1, $a0, 40
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB4_2:                                # %if.end
	ret
.Lfunc_end4:
	.size	mszip_free, .Lfunc_end4-mszip_free
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function lzx_init
.LCPI5_0:
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	8                               # 0x8
.LCPI5_1:
	.byte	9                               # 0x9
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	10                              # 0xa
	.byte	11                              # 0xb
	.byte	11                              # 0xb
	.byte	12                              # 0xc
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	13                              # 0xd
	.byte	14                              # 0xe
	.byte	14                              # 0xe
	.byte	15                              # 0xf
	.byte	15                              # 0xf
	.byte	16                              # 0x10
	.byte	16                              # 0x10
	.text
	.globl	lzx_init
	.p2align	5
	.type	lzx_init,@function
lzx_init:                               # @lzx_init
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
	move	$fp, $a2
	addi.w	$a2, $a2, -22
	addi.w	$t0, $zero, -7
	bltu	$a2, $t0, .LBB5_11
# %bb.1:                                # %if.end
	addi.w	$s0, $a4, 1
	bstrins.d	$s0, $zero, 0, 0
	beqz	$s0, .LBB5_11
# %bb.2:                                # %if.end3
	move	$s6, $a0
	move	$s5, $a1
	move	$s4, $a5
	move	$s3, $a6
	st.d	$a7, $sp, 8                     # 8-byte Folded Spill
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	lu12i.w	$s2, 13
	ori	$a1, $s2, 1648
	ori	$a0, $zero, 1
	ori	$s8, $zero, 1
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_11
# %bb.3:                                # %if.end16.25
	move	$a1, $zero
	ori	$a2, $zero, 1
	sll.w	$s1, $a2, $fp
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $s2, 1632
	lu12i.w	$s7, 5
	ori	$a3, $s7, 1580
	vstx	$vr0, $a0, $a3
	pcalau12i	$a3, %pc_hi20(.LCPI5_1)
	vld	$vr0, $a3, %pc_lo12(.LCPI5_1)
	add.d	$s2, $a0, $a2
	stptr.w	$zero, $a0, 22056
	ori	$a2, $s7, 1596
	vstx	$vr0, $a0, $a2
	ori	$a2, $s7, 1612
	add.d	$a2, $a0, $a2
	lu12i.w	$a3, 69905
	ori	$a3, $a3, 273
	bstrins.d	$a3, $a3, 60, 32
	stptr.d	$a3, $a0, 22092
	st.d	$a3, $a2, 7
	addi.w	$a2, $zero, -204
	ori	$a3, $s7, 1576
	.p2align	4, , 16
.LBB5_4:                                # %for.body27
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a4, $a0, $a2
	stptr.w	$a1, $a4, 22056
	ldx.bu	$a4, $a0, $a3
	sll.w	$a4, $s8, $a4
	add.d	$a1, $a4, $a1
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 1
	bnez	$a2, .LBB5_4
# %bb.5:                                # %for.end38
	bstrpick.d	$a1, $s1, 31, 0
	move	$s8, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s8, 32
	beqz	$a0, .LBB5_8
# %bb.6:                                # %if.end44
	ori	$a0, $zero, 1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	move	$a1, $s8
	st.d	$a0, $s8, 104
	beqz	$a0, .LBB5_9
# %bb.7:                                # %if.end51
	st.w	$s6, $a1, 0
	st.w	$s5, $a1, 4
	ori	$a6, $zero, 1
	st.b	$a6, $a1, 8
	st.d	$zero, $a1, 16
	st.d	$s4, $a1, 24
	st.d	$s3, $s2, 0
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	st.d	$a2, $s2, 8
	st.w	$s0, $a1, 152
	st.w	$s1, $a1, 40
	st.d	$zero, $a1, 44
	st.w	$zero, $a1, 52
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	st.w	$a2, $a1, 56
	st.d	$zero, $a1, 80
	addi.d	$a2, $fp, -21
	sltui	$a2, $a2, 1
	addi.d	$a3, $fp, -20
	sltui	$a3, $a3, 1
	slli.d	$a4, $fp, 1
	masknez	$a4, $a4, $a3
	ori	$a5, $zero, 42
	maskeqz	$a3, $a5, $a3
	or	$a3, $a3, $a4
	masknez	$a3, $a3, $a2
	ori	$a4, $zero, 50
	maskeqz	$a2, $a4, $a2
	or	$a2, $a2, $a3
	st.b	$a2, $a1, 91
	st.b	$zero, $a1, 88
	st.b	$zero, $a1, 92
	st.w	$zero, $a1, 96
	st.d	$a0, $a1, 120
	st.d	$a0, $a1, 112
	ori	$a0, $s7, 1627
	add.d	$a0, $a1, $a0
	st.d	$a0, $a1, 136
	st.d	$a0, $a1, 128
	st.d	$zero, $a1, 144
	ori	$a0, $zero, 1
	lu32i.d	$a0, 1
	st.d	$a0, $a1, 60
	st.w	$a6, $a1, 68
	st.w	$zero, $a1, 76
	st.h	$zero, $a1, 89
	addi.d	$a0, $a1, 240
	ori	$a2, $zero, 656
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s8, 960
	ori	$a2, $zero, 250
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	b	.LBB5_12
.LBB5_8:                                # %if.then43
	move	$a0, $s8
	b	.LBB5_10
.LBB5_9:                                # %if.then49
	ld.d	$a0, $a1, 32
	move	$fp, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB5_10:                               # %cleanup
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB5_11:                               # %cleanup
	move	$a0, $zero
.LBB5_12:                               # %cleanup
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
.Lfunc_end5:
	.size	lzx_init, .Lfunc_end5-lzx_init
                                        # -- End function
	.globl	lzx_set_output_length           # -- Begin function lzx_set_output_length
	.p2align	5
	.type	lzx_set_output_length,@function
lzx_set_output_length:                  # @lzx_set_output_length
# %bb.0:                                # %entry
	beqz	$a0, .LBB6_2
# %bb.1:                                # %if.then
	st.d	$a1, $a0, 24
.LBB6_2:                                # %if.end
	ret
.Lfunc_end6:
	.size	lzx_set_output_length, .Lfunc_end6-lzx_set_output_length
                                        # -- End function
	.globl	lzx_decompress                  # -- Begin function lzx_decompress
	.p2align	5
	.type	lzx_decompress,@function
lzx_decompress:                         # @lzx_decompress
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
	move	$fp, $a0
	addi.w	$a0, $zero, -111
	beqz	$fp, .LBB7_625
# %bb.1:                                # %entry
	move	$s0, $a1
	bltz	$a1, .LBB7_625
# %bb.2:                                # %if.end
	ld.w	$a0, $fp, 96
	bnez	$a0, .LBB7_625
# %bb.3:                                # %if.end4
	ld.d	$a0, $fp, 136
	ld.d	$a1, $fp, 128
	sub.w	$a0, $a0, $a1
	slt	$a2, $s0, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s0, $a2
	or	$a0, $a2, $a0
	addi.w	$s1, $a0, 0
	beqz	$s1, .LBB7_8
# %bb.4:                                # %if.then12
	ld.bu	$a0, $fp, 8
	beqz	$a0, .LBB7_7
# %bb.5:                                # %land.lhs.true
	ld.w	$a0, $fp, 4
	move	$a2, $s1
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	bne	$a0, $s1, .LBB7_623
# %bb.6:                                # %land.lhs.true.if.end20_crit_edge
	ld.d	$a1, $fp, 128
.LBB7_7:                                # %if.end20
	ld.d	$a0, $fp, 16
	add.d	$a1, $a1, $s1
	st.d	$a1, $fp, 128
	add.d	$a0, $a0, $s1
	st.d	$a0, $fp, 16
	sub.d	$s0, $s0, $s1
.LBB7_8:                                # %if.end24
	beqz	$s0, .LBB7_621
# %bb.9:                                # %do.body
	ld.d	$a0, $fp, 16
	add.d	$a1, $a0, $s0
	srai.d	$a0, $a1, 63
	srli.d	$a2, $a0, 49
	ld.w	$a0, $fp, 52
	add.d	$a1, $a1, $a2
	srli.d	$a1, $a1, 15
	addi.w	$a1, $a1, 1
	bgeu	$a0, $a1, .LBB7_620
# %bb.10:                               # %while.body.lr.ph
	st.d	$s0, $sp, 128                   # 8-byte Folded Spill
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	lu12i.w	$a1, 13
	ori	$a1, $a1, 1632
	add.d	$s6, $fp, $a1
	lu12i.w	$a1, 5
	ori	$a2, $a1, 1627
	add.d	$a2, $fp, $a2
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a3, $fp, 32
	ld.w	$a2, $fp, 68
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	ld.w	$a2, $fp, 64
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	ld.w	$a2, $fp, 60
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	ld.w	$s2, $fp, 44
	ld.w	$s7, $fp, 148
	ld.w	$s1, $fp, 144
	ld.d	$s5, $fp, 120
	ld.d	$s8, $fp, 112
	addi.d	$s4, $fp, 240
	ori	$a2, $a1, 1082
	add.d	$a2, $fp, $a2
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	lu12i.w	$a2, 3
	ori	$a2, $a2, 82
	add.d	$a2, $fp, $a2
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	ori	$a2, $a1, 1576
	add.d	$a2, $fp, $a2
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	ori	$a1, $a1, 1372
	add.d	$a1, $fp, $a1
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	st.d	$a3, $sp, 120                   # 8-byte Folded Spill
	addi.d	$a1, $a3, 16
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ori	$s3, $zero, 1
	lu12i.w	$a2, 8
	lu12i.w	$a1, -256
	lu32i.d	$a1, 0
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	lu12i.w	$a1, -8192
	lu32i.d	$a1, 0
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	st.d	$s6, $sp, 168                   # 8-byte Folded Spill
.LBB7_11:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_24 Depth 2
                                        #     Child Loop BB7_35 Depth 2
                                        #     Child Loop BB7_48 Depth 2
                                        #     Child Loop BB7_62 Depth 2
                                        #       Child Loop BB7_285 Depth 3
                                        #       Child Loop BB7_485 Depth 3
                                        #       Child Loop BB7_504 Depth 3
                                        #       Child Loop BB7_518 Depth 3
                                        #         Child Loop BB7_523 Depth 4
                                        #       Child Loop BB7_534 Depth 3
                                        #       Child Loop BB7_67 Depth 3
                                        #         Child Loop BB7_72 Depth 4
                                        #         Child Loop BB7_129 Depth 4
                                        #         Child Loop BB7_217 Depth 4
                                        #         Child Loop BB7_198 Depth 4
                                        #         Child Loop BB7_221 Depth 4
                                        #         Child Loop BB7_189 Depth 4
                                        #         Child Loop BB7_208 Depth 4
                                        #         Child Loop BB7_244 Depth 4
                                        #         Child Loop BB7_248 Depth 4
                                        #         Child Loop BB7_251 Depth 4
                                        #         Child Loop BB7_235 Depth 4
                                        #         Child Loop BB7_254 Depth 4
                                        #         Child Loop BB7_263 Depth 4
                                        #         Child Loop BB7_267 Depth 4
                                        #         Child Loop BB7_270 Depth 4
                                        #       Child Loop BB7_295 Depth 3
                                        #       Child Loop BB7_307 Depth 3
                                        #         Child Loop BB7_312 Depth 4
                                        #         Child Loop BB7_368 Depth 4
                                        #         Child Loop BB7_427 Depth 4
                                        #         Child Loop BB7_448 Depth 4
                                        #         Child Loop BB7_452 Depth 4
                                        #         Child Loop BB7_455 Depth 4
                                        #         Child Loop BB7_439 Depth 4
                                        #         Child Loop BB7_458 Depth 4
                                        #         Child Loop BB7_467 Depth 4
                                        #         Child Loop BB7_471 Depth 4
                                        #         Child Loop BB7_474 Depth 4
                                        #     Child Loop BB7_602 Depth 2
	ld.w	$a1, $fp, 56
	beqz	$a1, .LBB7_13
# %bb.12:                               # %land.lhs.true45
                                        #   in Loop: Header=BB7_11 Depth=1
	mod.wu	$a0, $a0, $a1
	beqz	$a0, .LBB7_14
.LBB7_13:                               # %if.end56
                                        #   in Loop: Header=BB7_11 Depth=1
	ld.bu	$a0, $fp, 90
	bnez	$a0, .LBB7_59
	b	.LBB7_16
.LBB7_14:                               # %if.then50
                                        #   in Loop: Header=BB7_11 Depth=1
	ld.w	$a1, $fp, 76
	bnez	$a1, .LBB7_634
# %bb.15:                               # %if.end56.thread
                                        #   in Loop: Header=BB7_11 Depth=1
	ori	$a0, $zero, 1
	lu32i.d	$a0, 1
	st.d	$a0, $fp, 60
	st.w	$s3, $fp, 68
	st.h	$zero, $fp, 89
	ori	$a2, $zero, 656
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 250
	addi.d	$a0, $fp, 960
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB7_16:                               # %while.cond60.preheader
                                        #   in Loop: Header=BB7_11 Depth=1
	st.d	$s2, $sp, 192                   # 8-byte Folded Spill
	ori	$s2, $zero, 1
	addi.w	$a0, $s7, 0
	blez	$a0, .LBB7_20
# %bb.17:                               #   in Loop: Header=BB7_11 Depth=1
	move	$a0, $s7
.LBB7_18:                               # %while.end
                                        #   in Loop: Header=BB7_11 Depth=1
	slli.d	$s3, $s1, 1
	addi.w	$s7, $a0, -1
	bltz	$s1, .LBB7_30
# %bb.19:                               #   in Loop: Header=BB7_11 Depth=1
	move	$a1, $zero
	b	.LBB7_58
.LBB7_20:                               # %while.body63.preheader
                                        #   in Loop: Header=BB7_11 Depth=1
	ori	$a0, $zero, 16
	sub.d	$s3, $a0, $s7
	b	.LBB7_24
.LBB7_21:                               # %if.else.i
                                        #   in Loop: Header=BB7_24 Depth=2
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 1
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 0
	st.b	$s2, $fp, 92
	ori	$a0, $zero, 2
.LBB7_22:                               # %if.end72
                                        #   in Loop: Header=BB7_24 Depth=2
	ld.d	$s8, $fp, 104
	st.d	$s8, $fp, 112
	add.d	$s5, $s8, $a0
	st.d	$s5, $fp, 120
.LBB7_23:                               # %if.end75
                                        #   in Loop: Header=BB7_24 Depth=2
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s3
	or	$s1, $a0, $s1
	addi.d	$a0, $s7, 16
	addi.w	$a1, $s7, 0
	addi.d	$s8, $s8, 2
	addi.w	$a2, $zero, -15
	addi.d	$s3, $s3, -16
	move	$s7, $a0
	bge	$a1, $a2, .LBB7_18
.LBB7_24:                               # %while.body63
                                        #   Parent Loop BB7_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $s8, 1
	bltu	$a0, $s5, .LBB7_23
# %bb.25:                               # %if.then67
                                        #   in Loop: Header=BB7_24 Depth=2
	ld.d	$a3, $s6, 8
	ld.d	$a1, $fp, 104
	ld.w	$a2, $fp, 152
	beqz	$a3, .LBB7_27
# %bb.26:                               # %cond.true.i
                                        #   in Loop: Header=BB7_24 Depth=2
	ld.d	$a0, $s6, 0
	jirl	$ra, $a3, 0
	bgez	$a0, .LBB7_28
	b	.LBB7_623
.LBB7_27:                               # %cond.false.i
                                        #   in Loop: Header=BB7_24 Depth=2
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB7_623
.LBB7_28:                               # %if.end.i
                                        #   in Loop: Header=BB7_24 Depth=2
	bnez	$a0, .LBB7_22
# %bb.29:                               # %if.then7.i
                                        #   in Loop: Header=BB7_24 Depth=2
	ld.bu	$a0, $fp, 92
	beqz	$a0, .LBB7_21
	b	.LBB7_622
.LBB7_30:                               # %while.cond92.preheader
                                        #   in Loop: Header=BB7_11 Depth=1
	addi.w	$a1, $a0, 0
	ori	$a2, $zero, 16
	bltu	$a2, $a1, .LBB7_43
# %bb.31:                               # %while.body95.preheader
                                        #   in Loop: Header=BB7_11 Depth=1
	addi.d	$s1, $a0, -17
	ori	$a1, $zero, 17
	sub.d	$s4, $a1, $a0
	b	.LBB7_35
.LBB7_32:                               # %if.else.i882
                                        #   in Loop: Header=BB7_35 Depth=2
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 1
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 0
	st.b	$s2, $fp, 92
	ori	$a0, $zero, 2
.LBB7_33:                               # %if.end104
                                        #   in Loop: Header=BB7_35 Depth=2
	ld.d	$s8, $fp, 104
	st.d	$s8, $fp, 112
	add.d	$s5, $s8, $a0
	st.d	$s5, $fp, 120
.LBB7_34:                               # %if.end107
                                        #   in Loop: Header=BB7_35 Depth=2
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s4
	or	$s3, $a0, $s3
	addi.d	$s8, $s8, 2
	addi.w	$s1, $s1, 16
	addi.d	$s4, $s4, -16
	bgez	$s1, .LBB7_42
.LBB7_35:                               # %while.body95
                                        #   Parent Loop BB7_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $s8, 1
	bltu	$a0, $s5, .LBB7_34
# %bb.36:                               # %if.then99
                                        #   in Loop: Header=BB7_35 Depth=2
	ld.d	$a3, $s6, 8
	ld.d	$a1, $fp, 104
	ld.w	$a2, $fp, 152
	beqz	$a3, .LBB7_38
# %bb.37:                               # %cond.true.i859
                                        #   in Loop: Header=BB7_35 Depth=2
	ld.d	$a0, $s6, 0
	jirl	$ra, $a3, 0
	b	.LBB7_39
.LBB7_38:                               # %cond.false.i887
                                        #   in Loop: Header=BB7_35 Depth=2
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB7_39:                               # %cond.end.i864
                                        #   in Loop: Header=BB7_35 Depth=2
	bltz	$a0, .LBB7_623
# %bb.40:                               # %if.end.i867
                                        #   in Loop: Header=BB7_35 Depth=2
	bnez	$a0, .LBB7_33
# %bb.41:                               # %if.then7.i877
                                        #   in Loop: Header=BB7_35 Depth=2
	ld.bu	$a0, $fp, 92
	beqz	$a0, .LBB7_32
	b	.LBB7_622
.LBB7_42:                               # %while.end121.loopexit
                                        #   in Loop: Header=BB7_11 Depth=1
	addi.w	$s7, $s1, 16
	addi.d	$s4, $fp, 240
.LBB7_43:                               # %while.end121
                                        #   in Loop: Header=BB7_11 Depth=1
	slli.d	$s1, $s3, 16
	ori	$a0, $zero, 31
	blt	$a0, $s7, .LBB7_55
# %bb.44:                               # %while.body131.preheader
                                        #   in Loop: Header=BB7_11 Depth=1
	addi.d	$s4, $s7, -32
	ori	$a0, $zero, 32
	sub.d	$s6, $a0, $s7
	b	.LBB7_48
.LBB7_45:                               # %if.else.i917
                                        #   in Loop: Header=BB7_48 Depth=2
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 1
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 0
	st.b	$s2, $fp, 92
	ori	$a0, $zero, 2
.LBB7_46:                               # %if.end140
                                        #   in Loop: Header=BB7_48 Depth=2
	ld.d	$s8, $fp, 104
	st.d	$s8, $fp, 112
	add.d	$s5, $s8, $a0
	st.d	$s5, $fp, 120
.LBB7_47:                               # %if.end143
                                        #   in Loop: Header=BB7_48 Depth=2
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s6
	or	$s1, $a0, $s1
	addi.d	$s8, $s8, 2
	addi.w	$s4, $s4, 16
	addi.d	$s6, $s6, -16
	bgez	$s4, .LBB7_56
.LBB7_48:                               # %while.body131
                                        #   Parent Loop BB7_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $s8, 1
	bltu	$a0, $s5, .LBB7_47
# %bb.49:                               # %if.then135
                                        #   in Loop: Header=BB7_48 Depth=2
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a3, $a0, 8
	ld.d	$a1, $fp, 104
	ld.w	$a2, $fp, 152
	beqz	$a3, .LBB7_51
# %bb.50:                               # %cond.true.i894
                                        #   in Loop: Header=BB7_48 Depth=2
	ld.d	$a0, $a0, 0
	jirl	$ra, $a3, 0
	b	.LBB7_52
.LBB7_51:                               # %cond.false.i922
                                        #   in Loop: Header=BB7_48 Depth=2
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB7_52:                               # %cond.end.i899
                                        #   in Loop: Header=BB7_48 Depth=2
	bltz	$a0, .LBB7_623
# %bb.53:                               # %if.end.i902
                                        #   in Loop: Header=BB7_48 Depth=2
	bnez	$a0, .LBB7_46
# %bb.54:                               # %if.then7.i912
                                        #   in Loop: Header=BB7_48 Depth=2
	ld.bu	$a0, $fp, 92
	beqz	$a0, .LBB7_45
	b	.LBB7_622
.LBB7_55:                               #   in Loop: Header=BB7_11 Depth=1
	addi.d	$a0, $s7, -16
	b	.LBB7_57
.LBB7_56:                               # %while.end157.loopexit
                                        #   in Loop: Header=BB7_11 Depth=1
	addi.d	$a0, $s4, 16
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	addi.d	$s4, $fp, 240
.LBB7_57:                               # %while.end157
                                        #   in Loop: Header=BB7_11 Depth=1
	bstrins.d	$s3, $zero, 15, 0
	bstrpick.d	$a1, $s1, 31, 16
	or	$a1, $a1, $s3
	slli.d	$s3, $s1, 16
	addi.w	$s7, $a0, -16
.LBB7_58:                               # %if.end163
                                        #   in Loop: Header=BB7_11 Depth=1
	lu12i.w	$a2, 8
	st.w	$a1, $fp, 80
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 90
	move	$s1, $s3
	ori	$s3, $zero, 1
	ld.d	$s2, $sp, 192                   # 8-byte Folded Reload
.LBB7_59:                               # %if.end167
                                        #   in Loop: Header=BB7_11 Depth=1
	ld.d	$a0, $fp, 24
	move	$a1, $a2
	beqz	$a0, .LBB7_61
# %bb.60:                               # %land.lhs.true169
                                        #   in Loop: Header=BB7_11 Depth=1
	ld.d	$a1, $fp, 16
	sub.d	$a0, $a0, $a1
	slt	$a1, $a0, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a1, $a0, $a1
.LBB7_61:                               # %if.end181
                                        #   in Loop: Header=BB7_11 Depth=1
	ld.w	$a0, $fp, 48
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	sub.d	$a1, $a1, $s2
	add.w	$a1, $a1, $a0
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	blez	$a1, .LBB7_589
.LBB7_62:                               # %while.body187
                                        #   Parent Loop BB7_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_285 Depth 3
                                        #       Child Loop BB7_485 Depth 3
                                        #       Child Loop BB7_504 Depth 3
                                        #       Child Loop BB7_518 Depth 3
                                        #         Child Loop BB7_523 Depth 4
                                        #       Child Loop BB7_534 Depth 3
                                        #       Child Loop BB7_67 Depth 3
                                        #         Child Loop BB7_72 Depth 4
                                        #         Child Loop BB7_129 Depth 4
                                        #         Child Loop BB7_217 Depth 4
                                        #         Child Loop BB7_198 Depth 4
                                        #         Child Loop BB7_221 Depth 4
                                        #         Child Loop BB7_189 Depth 4
                                        #         Child Loop BB7_208 Depth 4
                                        #         Child Loop BB7_244 Depth 4
                                        #         Child Loop BB7_248 Depth 4
                                        #         Child Loop BB7_251 Depth 4
                                        #         Child Loop BB7_235 Depth 4
                                        #         Child Loop BB7_254 Depth 4
                                        #         Child Loop BB7_263 Depth 4
                                        #         Child Loop BB7_267 Depth 4
                                        #         Child Loop BB7_270 Depth 4
                                        #       Child Loop BB7_295 Depth 3
                                        #       Child Loop BB7_307 Depth 3
                                        #         Child Loop BB7_312 Depth 4
                                        #         Child Loop BB7_368 Depth 4
                                        #         Child Loop BB7_427 Depth 4
                                        #         Child Loop BB7_448 Depth 4
                                        #         Child Loop BB7_452 Depth 4
                                        #         Child Loop BB7_455 Depth 4
                                        #         Child Loop BB7_439 Depth 4
                                        #         Child Loop BB7_458 Depth 4
                                        #         Child Loop BB7_467 Depth 4
                                        #         Child Loop BB7_471 Depth 4
                                        #         Child Loop BB7_474 Depth 4
	ld.w	$a0, $fp, 76
	beqz	$a0, .LBB7_275
.LBB7_63:                               # %if.end574
                                        #   in Loop: Header=BB7_62 Depth=2
	ld.w	$a0, $fp, 76
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	slt	$a2, $a0, $a1
	masknez	$a3, $a1, $a2
	ld.bu	$a1, $fp, 89
	maskeqz	$a2, $a0, $a2
	or	$a2, $a2, $a3
	st.d	$a2, $sp, 176                   # 8-byte Folded Spill
	sub.d	$a2, $a0, $a2
	st.w	$a2, $fp, 76
	beq	$a1, $s3, .LBB7_305
# %bb.64:                               # %if.end574
                                        #   in Loop: Header=BB7_62 Depth=2
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB7_292
# %bb.65:                               # %if.end574
                                        #   in Loop: Header=BB7_62 Depth=2
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB7_632
# %bb.66:                               # %while.cond875.preheader
                                        #   in Loop: Header=BB7_62 Depth=2
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	blez	$a0, .LBB7_494
.LBB7_67:                               # %while.cond880.preheader
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_72 Depth 4
                                        #         Child Loop BB7_129 Depth 4
                                        #         Child Loop BB7_217 Depth 4
                                        #         Child Loop BB7_198 Depth 4
                                        #         Child Loop BB7_221 Depth 4
                                        #         Child Loop BB7_189 Depth 4
                                        #         Child Loop BB7_208 Depth 4
                                        #         Child Loop BB7_244 Depth 4
                                        #         Child Loop BB7_248 Depth 4
                                        #         Child Loop BB7_251 Depth 4
                                        #         Child Loop BB7_235 Depth 4
                                        #         Child Loop BB7_254 Depth 4
                                        #         Child Loop BB7_263 Depth 4
                                        #         Child Loop BB7_267 Depth 4
                                        #         Child Loop BB7_270 Depth 4
	ori	$s2, $zero, 1
	addi.w	$a0, $s7, 0
	ori	$a1, $zero, 15
	blt	$a1, $a0, .LBB7_78
# %bb.68:                               # %while.body883.preheader
                                        #   in Loop: Header=BB7_67 Depth=3
	ori	$a0, $zero, 16
	sub.d	$s3, $a0, $s7
	b	.LBB7_72
.LBB7_69:                               # %if.else.i1197
                                        #   in Loop: Header=BB7_72 Depth=4
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 1
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 0
	st.b	$s2, $fp, 92
	ori	$a0, $zero, 2
.LBB7_70:                               # %if.end892
                                        #   in Loop: Header=BB7_72 Depth=4
	ld.d	$s8, $fp, 104
	st.d	$s8, $fp, 112
	add.d	$s5, $s8, $a0
	st.d	$s5, $fp, 120
.LBB7_71:                               # %if.end895
                                        #   in Loop: Header=BB7_72 Depth=4
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s3
	or	$s1, $a0, $s1
	addi.d	$a0, $s7, 16
	addi.w	$a1, $s7, 0
	addi.d	$s8, $s8, 2
	addi.d	$s3, $s3, -16
	move	$s7, $a0
	bgez	$a1, .LBB7_79
.LBB7_72:                               # %while.body883
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        #       Parent Loop BB7_67 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.d	$a0, $s8, 1
	bltu	$a0, $s5, .LBB7_71
# %bb.73:                               # %if.then887
                                        #   in Loop: Header=BB7_72 Depth=4
	ld.d	$a3, $s6, 8
	ld.d	$a1, $fp, 104
	ld.w	$a2, $fp, 152
	beqz	$a3, .LBB7_75
# %bb.74:                               # %cond.true.i1174
                                        #   in Loop: Header=BB7_72 Depth=4
	ld.d	$a0, $s6, 0
	jirl	$ra, $a3, 0
	bgez	$a0, .LBB7_76
	b	.LBB7_623
.LBB7_75:                               # %cond.false.i1202
                                        #   in Loop: Header=BB7_72 Depth=4
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB7_623
.LBB7_76:                               # %if.end.i1182
                                        #   in Loop: Header=BB7_72 Depth=4
	bnez	$a0, .LBB7_70
# %bb.77:                               # %if.then7.i1192
                                        #   in Loop: Header=BB7_72 Depth=4
	ld.bu	$a0, $fp, 92
	beqz	$a0, .LBB7_69
	b	.LBB7_622
.LBB7_78:                               #   in Loop: Header=BB7_67 Depth=3
	move	$a0, $s7
.LBB7_79:                               # %while.end909
                                        #   in Loop: Header=BB7_67 Depth=3
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	and	$a1, $s1, $a1
	srli.d	$a1, $a1, 19
	addi.d	$a2, $fp, 1554
	ldx.hu	$s3, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s3, $a1, .LBB7_121
# %bb.80:                               # %do.body918.preheader
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $s3, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_626
# %bb.81:                               # %if.end939
                                        #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a1, $s3, 1
	bstrpick.d	$a2, $s1, 19, 19
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	addi.d	$a2, $fp, 1554
	ldx.hu	$s3, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s3, $a1, .LBB7_121
# %bb.82:                               # %do.body918.1
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $s3, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_626
# %bb.83:                               # %if.end939.1
                                        #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a1, $s3, 1
	bstrpick.d	$a2, $s1, 18, 18
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	addi.d	$a2, $fp, 1554
	ldx.hu	$s3, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s3, $a1, .LBB7_121
# %bb.84:                               # %do.body918.2
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $s3, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_626
# %bb.85:                               # %if.end939.2
                                        #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a1, $s3, 1
	bstrpick.d	$a2, $s1, 17, 17
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	addi.d	$a2, $fp, 1554
	ldx.hu	$s3, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s3, $a1, .LBB7_121
# %bb.86:                               # %do.body918.3
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $s3, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_626
# %bb.87:                               # %if.end939.3
                                        #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a1, $s3, 1
	bstrpick.d	$a2, $s1, 16, 16
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	addi.d	$a2, $fp, 1554
	ldx.hu	$s3, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s3, $a1, .LBB7_121
# %bb.88:                               # %do.body918.4
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $s3, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_626
# %bb.89:                               # %if.end939.4
                                        #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a1, $s3, 1
	bstrpick.d	$a2, $s1, 15, 15
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	addi.d	$a2, $fp, 1554
	ldx.hu	$s3, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s3, $a1, .LBB7_121
# %bb.90:                               # %do.body918.5
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $s3, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_626
# %bb.91:                               # %if.end939.5
                                        #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a1, $s3, 1
	bstrpick.d	$a2, $s1, 14, 14
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	addi.d	$a2, $fp, 1554
	ldx.hu	$s3, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s3, $a1, .LBB7_121
# %bb.92:                               # %do.body918.6
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $s3, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_626
# %bb.93:                               # %if.end939.6
                                        #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a1, $s3, 1
	bstrpick.d	$a2, $s1, 13, 13
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	addi.d	$a2, $fp, 1554
	ldx.hu	$s3, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s3, $a1, .LBB7_121
# %bb.94:                               # %do.body918.7
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $s3, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_626
# %bb.95:                               # %if.end939.7
                                        #   in Loop: Header=BB7_67 Depth=3
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	slli.d	$a1, $s3, 1
	bstrpick.d	$a2, $s1, 12, 12
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	addi.d	$a2, $fp, 1554
	ldx.hu	$s3, $a2, $a1
	ori	$a1, $zero, 656
	st.d	$s0, $sp, 128                   # 8-byte Folded Spill
	bltu	$s3, $a1, .LBB7_120
# %bb.96:                               # %do.body918.8
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $s3, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_626
# %bb.97:                               # %if.end939.8
                                        #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a1, $s3, 1
	bstrpick.d	$a2, $s1, 11, 11
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	addi.d	$a2, $fp, 1554
	ldx.hu	$s3, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s3, $a1, .LBB7_120
# %bb.98:                               # %do.body918.9
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $s3, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_626
# %bb.99:                               # %if.end939.9
                                        #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a1, $s3, 1
	bstrpick.d	$a2, $s1, 10, 10
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	addi.d	$a2, $fp, 1554
	ldx.hu	$s3, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s3, $a1, .LBB7_120
# %bb.100:                              # %do.body918.10
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $s3, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_626
# %bb.101:                              # %if.end939.10
                                        #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a1, $s3, 1
	bstrpick.d	$a2, $s1, 9, 9
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	addi.d	$a2, $fp, 1554
	ldx.hu	$s3, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s3, $a1, .LBB7_120
# %bb.102:                              # %do.body918.11
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $s3, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_626
# %bb.103:                              # %if.end939.11
                                        #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a1, $s3, 1
	bstrpick.d	$a2, $s1, 8, 8
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	addi.d	$a2, $fp, 1554
	ldx.hu	$s3, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s3, $a1, .LBB7_120
# %bb.104:                              # %do.body918.12
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $s3, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_626
# %bb.105:                              # %if.end939.12
                                        #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a1, $s3, 1
	bstrpick.d	$a2, $s1, 7, 7
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	addi.d	$a2, $fp, 1554
	ldx.hu	$s3, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s3, $a1, .LBB7_120
# %bb.106:                              # %do.body918.13
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $s3, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_626
# %bb.107:                              # %if.end939.13
                                        #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a1, $s3, 1
	bstrpick.d	$a2, $s1, 6, 6
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	addi.d	$a2, $fp, 1554
	ldx.hu	$s3, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s3, $a1, .LBB7_120
# %bb.108:                              # %do.body918.14
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $s3, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_626
# %bb.109:                              # %if.end939.14
                                        #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a1, $s3, 1
	bstrpick.d	$a2, $s1, 5, 5
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	addi.d	$a2, $fp, 1554
	ldx.hu	$s3, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s3, $a1, .LBB7_120
# %bb.110:                              # %do.body918.15
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $s3, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_626
# %bb.111:                              # %if.end939.15
                                        #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a1, $s3, 1
	bstrpick.d	$a2, $s1, 4, 4
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	addi.d	$a2, $fp, 1554
	ldx.hu	$s3, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s3, $a1, .LBB7_120
# %bb.112:                              # %do.body918.16
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $s3, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_626
# %bb.113:                              # %if.end939.16
                                        #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a1, $s3, 1
	bstrpick.d	$a2, $s1, 3, 3
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	addi.d	$a2, $fp, 1554
	ldx.hu	$s3, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s3, $a1, .LBB7_120
# %bb.114:                              # %do.body918.17
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $s3, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_626
# %bb.115:                              # %if.end939.17
                                        #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a1, $s3, 1
	bstrpick.d	$a2, $s1, 2, 2
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	addi.d	$a2, $fp, 1554
	ldx.hu	$s3, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s3, $a1, .LBB7_120
# %bb.116:                              # %do.body918.18
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $s3, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_626
# %bb.117:                              # %if.end939.18
                                        #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a1, $s3, 1
	bstrpick.d	$a2, $s1, 1, 1
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	addi.d	$a2, $fp, 1554
	ldx.hu	$s3, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s3, $a1, .LBB7_120
# %bb.118:                              # %do.body918.19
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $s3, 14, 4
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	addi.d	$s4, $fp, 240
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_626
# %bb.119:                              # %if.end939.19
                                        #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a1, $s3, 1
	andi	$a2, $s1, 1
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	addi.d	$a2, $fp, 1554
	ldx.hu	$s3, $a2, $a1
	ori	$a1, $zero, 655
	bgeu	$a1, $s3, .LBB7_121
	b	.LBB7_638
.LBB7_120:                              #   in Loop: Header=BB7_67 Depth=3
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	addi.d	$s4, $fp, 240
.LBB7_121:                              # %if.end948
                                        #   in Loop: Header=BB7_67 Depth=3
	ldx.bu	$a1, $s4, $s3
	sll.w	$s1, $s1, $a1
	sub.w	$s7, $a0, $a1
	ori	$a2, $zero, 255
	bltu	$a2, $s3, .LBB7_123
# %bb.122:                              # %if.then960
                                        #   in Loop: Header=BB7_67 Depth=3
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	addi.w	$s2, $a0, 1
	bstrpick.d	$a0, $a0, 31, 0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	stx.b	$s3, $a1, $a0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	addi.w	$a0, $a0, -1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	ori	$s3, $zero, 1
	b	.LBB7_272
.LBB7_123:                              # %if.else966
                                        #   in Loop: Header=BB7_67 Depth=3
	andi	$a7, $s3, 7
	ori	$a2, $zero, 7
	bne	$a7, $a2, .LBB7_179
# %bb.124:                              # %while.cond973.preheader
                                        #   in Loop: Header=BB7_67 Depth=3
	ori	$a2, $zero, 15
	blt	$a2, $s7, .LBB7_136
# %bb.125:                              # %while.body976.preheader
                                        #   in Loop: Header=BB7_67 Depth=3
	sub.d	$a0, $a1, $a0
	addi.d	$s4, $a0, 16
	b	.LBB7_129
.LBB7_126:                              # %if.else.i1232
                                        #   in Loop: Header=BB7_129 Depth=4
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 1
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 0
	st.b	$s2, $fp, 92
	ori	$a0, $zero, 2
.LBB7_127:                              # %if.end985
                                        #   in Loop: Header=BB7_129 Depth=4
	ld.d	$s8, $fp, 104
	st.d	$s8, $fp, 112
	add.d	$s5, $s8, $a0
	st.d	$s5, $fp, 120
.LBB7_128:                              # %if.end988
                                        #   in Loop: Header=BB7_129 Depth=4
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s4
	or	$s1, $a0, $s1
	addi.w	$s7, $s6, 16
	addi.d	$s8, $s8, 2
	addi.d	$s4, $s4, -16
	bgez	$s6, .LBB7_136
.LBB7_129:                              # %while.body976
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        #       Parent Loop BB7_67 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.d	$a0, $s8, 1
	move	$s6, $s7
	bltu	$a0, $s5, .LBB7_128
# %bb.130:                              # %if.then980
                                        #   in Loop: Header=BB7_129 Depth=4
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a3, $a0, 8
	ld.d	$a1, $fp, 104
	ld.w	$a2, $fp, 152
	beqz	$a3, .LBB7_132
# %bb.131:                              # %cond.true.i1209
                                        #   in Loop: Header=BB7_129 Depth=4
	ld.d	$a0, $a0, 0
	jirl	$ra, $a3, 0
	b	.LBB7_133
.LBB7_132:                              # %cond.false.i1237
                                        #   in Loop: Header=BB7_129 Depth=4
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB7_133:                              # %cond.end.i1214
                                        #   in Loop: Header=BB7_129 Depth=4
	bltz	$a0, .LBB7_623
# %bb.134:                              # %if.end.i1217
                                        #   in Loop: Header=BB7_129 Depth=4
	bnez	$a0, .LBB7_127
# %bb.135:                              # %if.then7.i1227
                                        #   in Loop: Header=BB7_129 Depth=4
	ld.bu	$a0, $fp, 92
	beqz	$a0, .LBB7_126
	b	.LBB7_622
.LBB7_136:                              # %while.end1002
                                        #   in Loop: Header=BB7_67 Depth=3
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	and	$a0, $s1, $a0
	srli.d	$a0, $a0, 19
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_177
# %bb.137:                              # %do.body1011.preheader
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	addi.d	$s4, $fp, 240
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_626
# %bb.138:                              # %if.end1032
                                        #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s1, 19, 19
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_178
# %bb.139:                              # %do.body1011.1
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_626
# %bb.140:                              # %if.end1032.1
                                        #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s1, 18, 18
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_178
# %bb.141:                              # %do.body1011.2
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_626
# %bb.142:                              # %if.end1032.2
                                        #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s1, 17, 17
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_178
# %bb.143:                              # %do.body1011.3
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_626
# %bb.144:                              # %if.end1032.3
                                        #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s1, 16, 16
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_178
# %bb.145:                              # %do.body1011.4
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_626
# %bb.146:                              # %if.end1032.4
                                        #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s1, 15, 15
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_178
# %bb.147:                              # %do.body1011.5
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_626
# %bb.148:                              # %if.end1032.5
                                        #   in Loop: Header=BB7_67 Depth=3
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s1, 14, 14
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	st.d	$s0, $sp, 128                   # 8-byte Folded Spill
	bltu	$a0, $a1, .LBB7_177
# %bb.149:                              # %do.body1011.6
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_626
# %bb.150:                              # %if.end1032.6
                                        #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s1, 13, 13
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_177
# %bb.151:                              # %do.body1011.7
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_626
# %bb.152:                              # %if.end1032.7
                                        #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s1, 12, 12
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_177
# %bb.153:                              # %do.body1011.8
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_626
# %bb.154:                              # %if.end1032.8
                                        #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s1, 11, 11
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_177
# %bb.155:                              # %do.body1011.9
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_626
# %bb.156:                              # %if.end1032.9
                                        #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s1, 10, 10
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_177
# %bb.157:                              # %do.body1011.10
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_626
# %bb.158:                              # %if.end1032.10
                                        #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s1, 9, 9
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_177
# %bb.159:                              # %do.body1011.11
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_626
# %bb.160:                              # %if.end1032.11
                                        #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s1, 8, 8
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_177
# %bb.161:                              # %do.body1011.12
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_626
# %bb.162:                              # %if.end1032.12
                                        #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s1, 7, 7
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_177
# %bb.163:                              # %do.body1011.13
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_626
# %bb.164:                              # %if.end1032.13
                                        #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s1, 6, 6
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_177
# %bb.165:                              # %do.body1011.14
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_626
# %bb.166:                              # %if.end1032.14
                                        #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s1, 5, 5
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_177
# %bb.167:                              # %do.body1011.15
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_626
# %bb.168:                              # %if.end1032.15
                                        #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s1, 4, 4
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_177
# %bb.169:                              # %do.body1011.16
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_626
# %bb.170:                              # %if.end1032.16
                                        #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s1, 3, 3
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_177
# %bb.171:                              # %do.body1011.17
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_626
# %bb.172:                              # %if.end1032.17
                                        #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s1, 2, 2
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_177
# %bb.173:                              # %do.body1011.18
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_626
# %bb.174:                              # %if.end1032.18
                                        #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s1, 1, 1
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_177
# %bb.175:                              # %do.body1011.19
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	addi.d	$s4, $fp, 240
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_626
# %bb.176:                              # %if.end1032.19
                                        #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a0, $a0, 1
	andi	$a1, $s1, 1
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 249
	bgeu	$a1, $a0, .LBB7_178
	b	.LBB7_638
.LBB7_177:                              #   in Loop: Header=BB7_67 Depth=3
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	addi.d	$s4, $fp, 240
.LBB7_178:                              # %if.end1041
                                        #   in Loop: Header=BB7_67 Depth=3
	addi.d	$a1, $fp, 960
	ldx.bu	$a1, $a1, $a0
	sll.w	$s1, $s1, $a1
	sub.w	$s7, $s7, $a1
	addi.d	$a0, $a0, 7
	bstrpick.d	$a7, $a0, 15, 0
.LBB7_179:                              # %if.end1052
                                        #   in Loop: Header=BB7_67 Depth=3
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	addi.d	$a0, $s3, -256
	bstrpick.d	$a0, $a0, 31, 3
	beqz	$a0, .LBB7_184
# %bb.180:                              # %if.end1052
                                        #   in Loop: Header=BB7_67 Depth=3
	ori	$s3, $zero, 1
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB7_183
# %bb.181:                              # %if.end1052
                                        #   in Loop: Header=BB7_67 Depth=3
	bne	$a0, $s3, .LBB7_185
# %bb.182:                              #   in Loop: Header=BB7_67 Depth=3
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	b	.LBB7_227
.LBB7_183:                              #   in Loop: Header=BB7_67 Depth=3
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	b	.LBB7_227
.LBB7_184:                              #   in Loop: Header=BB7_67 Depth=3
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ori	$s3, $zero, 1
	b	.LBB7_227
.LBB7_185:                              # %sw.default1058
                                        #   in Loop: Header=BB7_67 Depth=3
	addi.w	$a0, $a0, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ldx.bu	$s3, $a1, $a0
	slli.d	$a0, $a0, 2
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	addi.d	$a0, $a0, -2
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ori	$a0, $zero, 4
	st.d	$a7, $sp, 144                   # 8-byte Folded Spill
	bltu	$s3, $a0, .LBB7_192
# %bb.186:                              # %if.then1069
                                        #   in Loop: Header=BB7_67 Depth=3
	addi.d	$s4, $s3, -3
	bge	$s7, $s4, .LBB7_200
# %bb.187:                              # %while.body1075.preheader
                                        #   in Loop: Header=BB7_67 Depth=3
	ori	$a0, $zero, 16
	sub.d	$s2, $a0, $s7
	b	.LBB7_189
.LBB7_188:                              # %if.end1087
                                        #   in Loop: Header=BB7_189 Depth=4
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s2
	or	$s1, $a0, $s1
	addi.w	$s7, $s7, 16
	addi.d	$s8, $s8, 2
	addi.d	$s2, $s2, -16
	bge	$s7, $s4, .LBB7_200
.LBB7_189:                              # %while.body1075
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        #       Parent Loop BB7_67 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.d	$a0, $s8, 1
	bltu	$a0, $s5, .LBB7_188
# %bb.190:                              # %if.then1079
                                        #   in Loop: Header=BB7_189 Depth=4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_627
# %bb.191:                              # %if.end1084
                                        #   in Loop: Header=BB7_189 Depth=4
	ld.d	$s8, $fp, 112
	ld.d	$s5, $fp, 120
	ld.d	$a7, $sp, 144                   # 8-byte Folded Reload
	b	.LBB7_188
.LBB7_192:                              # %if.else1192
                                        #   in Loop: Header=BB7_67 Depth=3
	beqz	$s3, .LBB7_212
# %bb.193:                              # %if.else1192
                                        #   in Loop: Header=BB7_67 Depth=3
	ori	$a0, $zero, 3
	bne	$s3, $a0, .LBB7_213
# %bb.194:                              # %while.cond1197.preheader
                                        #   in Loop: Header=BB7_67 Depth=3
	ori	$a0, $zero, 15
	blt	$a0, $s7, .LBB7_219
# %bb.195:                              # %while.body1200.preheader
                                        #   in Loop: Header=BB7_67 Depth=3
	ori	$a0, $zero, 16
	sub.d	$s2, $a0, $s7
	b	.LBB7_198
.LBB7_196:                              # %if.end1209
                                        #   in Loop: Header=BB7_198 Depth=4
	ld.d	$s8, $fp, 112
	ld.d	$s5, $fp, 120
	ld.d	$a7, $sp, 144                   # 8-byte Folded Reload
.LBB7_197:                              # %if.end1212
                                        #   in Loop: Header=BB7_198 Depth=4
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s2
	or	$s1, $a0, $s1
	addi.w	$s7, $s3, 16
	addi.d	$s8, $s8, 2
	addi.d	$s2, $s2, -16
	bgez	$s3, .LBB7_219
.LBB7_198:                              # %while.body1200
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        #       Parent Loop BB7_67 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.d	$a0, $s8, 1
	move	$s3, $s7
	bltu	$a0, $s5, .LBB7_197
# %bb.199:                              # %if.then1204
                                        #   in Loop: Header=BB7_198 Depth=4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_196
	b	.LBB7_627
.LBB7_200:                              # %while.end1101
                                        #   in Loop: Header=BB7_67 Depth=3
	sub.w	$s7, $s7, $s4
	sll.w	$s4, $s1, $s4
	ori	$a0, $zero, 15
	bltu	$a0, $s7, .LBB7_205
# %bb.201:                              # %while.body1116.lr.ph
                                        #   in Loop: Header=BB7_67 Depth=3
	addi.d	$a0, $s8, 1
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	bltu	$a0, $s5, .LBB7_204
# %bb.202:                              # %if.then1120
                                        #   in Loop: Header=BB7_67 Depth=3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_627
# %bb.203:                              # %if.end1125
                                        #   in Loop: Header=BB7_67 Depth=3
	ld.d	$s8, $fp, 112
	ld.d	$s5, $fp, 120
	ld.d	$a7, $sp, 144                   # 8-byte Folded Reload
.LBB7_204:                              # %if.end1128
                                        #   in Loop: Header=BB7_67 Depth=3
	ld.hu	$a0, $s8, 0
	ori	$a1, $zero, 16
	sub.d	$a1, $a1, $s7
	ori	$s7, $s7, 16
	sll.w	$a0, $a0, $a1
	or	$s4, $a0, $s4
	addi.d	$s8, $s8, 2
	b	.LBB7_206
.LBB7_205:                              #   in Loop: Header=BB7_67 Depth=3
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
.LBB7_206:                              # %while.end1142
                                        #   in Loop: Header=BB7_67 Depth=3
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	and	$a0, $s4, $a0
	srli.d	$a0, $a0, 24
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 8
	bltu	$a0, $a1, .LBB7_211
# %bb.207:                              # %do.body1151.preheader
                                        #   in Loop: Header=BB7_67 Depth=3
	lu12i.w	$a1, 8192
.LBB7_208:                              # %do.body1151
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        #       Parent Loop BB7_67 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.w	$a2, $a1, 0
	ori	$a3, $zero, 1
	bgeu	$a3, $a2, .LBB7_638
# %bb.209:                              # %if.end1157
                                        #   in Loop: Header=BB7_208 Depth=4
	slli.d	$a0, $a0, 1
	bstrpick.d	$a2, $a0, 15, 1
	slli.d	$a2, $a2, 1
	ori	$a3, $zero, 144
	bgeu	$a2, $a3, .LBB7_626
# %bb.210:                              # %if.end1172
                                        #   in Loop: Header=BB7_208 Depth=4
	bstrpick.d	$a1, $a1, 31, 1
	and	$a2, $a1, $s4
	addi.w	$a2, $a2, 0
	sltu	$a2, $zero, $a2
	or	$a0, $a0, $a2
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ldx.hu	$a0, $a2, $a0
	ori	$a2, $zero, 7
	bltu	$a2, $a0, .LBB7_208
.LBB7_211:                              # %if.end1181
                                        #   in Loop: Header=BB7_67 Depth=3
	addi.d	$a1, $fp, 1274
	ldx.bu	$a1, $a1, $a0
	ori	$a2, $zero, 35
	sub.d	$a2, $a2, $s3
	srl.w	$a2, $s1, $a2
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	alsl.w	$a2, $a2, $a3, 3
	sll.w	$s1, $s4, $a1
	sub.w	$s7, $s7, $a1
	add.w	$a1, $a2, $a0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	addi.d	$s4, $fp, 240
	ori	$s3, $zero, 1
	b	.LBB7_227
.LBB7_212:                              #   in Loop: Header=BB7_67 Depth=3
	ori	$a1, $zero, 1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ori	$s3, $zero, 1
	b	.LBB7_227
.LBB7_213:                              # %while.cond1281.preheader
                                        #   in Loop: Header=BB7_67 Depth=3
	bge	$s7, $s3, .LBB7_224
# %bb.214:                              # %while.body1284.preheader
                                        #   in Loop: Header=BB7_67 Depth=3
	ori	$a0, $zero, 16
	sub.d	$s2, $a0, $s7
	b	.LBB7_217
.LBB7_215:                              # %if.end1293
                                        #   in Loop: Header=BB7_217 Depth=4
	ld.d	$s8, $fp, 112
	ld.d	$s5, $fp, 120
	ld.d	$a7, $sp, 144                   # 8-byte Folded Reload
.LBB7_216:                              # %if.end1296
                                        #   in Loop: Header=BB7_217 Depth=4
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s2
	or	$s1, $a0, $s1
	addi.w	$s7, $s7, 16
	addi.d	$s8, $s8, 2
	addi.d	$s2, $s2, -16
	bge	$s7, $s3, .LBB7_224
.LBB7_217:                              # %while.body1284
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        #       Parent Loop BB7_67 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.d	$a0, $s8, 1
	bltu	$a0, $s5, .LBB7_216
# %bb.218:                              # %if.then1288
                                        #   in Loop: Header=BB7_217 Depth=4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_215
	b	.LBB7_627
.LBB7_219:                              # %while.end1226
                                        #   in Loop: Header=BB7_67 Depth=3
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	and	$a0, $s1, $a0
	srli.d	$a0, $a0, 24
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ldx.hu	$a1, $a1, $a0
	ori	$a0, $zero, 8
	bltu	$a1, $a0, .LBB7_225
# %bb.220:                              # %do.body1235.preheader
                                        #   in Loop: Header=BB7_67 Depth=3
	lu12i.w	$a0, 8192
	addi.d	$s4, $fp, 240
	ori	$s3, $zero, 1
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
.LBB7_221:                              # %do.body1235
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        #       Parent Loop BB7_67 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.w	$a2, $a0, 0
	bgeu	$s3, $a2, .LBB7_638
# %bb.222:                              # %if.end1241
                                        #   in Loop: Header=BB7_221 Depth=4
	slli.d	$a1, $a1, 1
	bstrpick.d	$a2, $a1, 15, 1
	slli.d	$a2, $a2, 1
	ori	$a3, $zero, 144
	bgeu	$a2, $a3, .LBB7_626
# %bb.223:                              # %if.end1256
                                        #   in Loop: Header=BB7_221 Depth=4
	bstrpick.d	$a0, $a0, 31, 1
	and	$a2, $a0, $s1
	addi.w	$a2, $a2, 0
	sltu	$a2, $zero, $a2
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ldx.hu	$a1, $a2, $a1
	ori	$a2, $zero, 7
	bltu	$a2, $a1, .LBB7_221
	b	.LBB7_226
.LBB7_224:                              # %while.end1310
                                        #   in Loop: Header=BB7_67 Depth=3
	sub.d	$a0, $zero, $s3
	srl.w	$a0, $s1, $a0
	sll.w	$s1, $s1, $s3
	sub.w	$s7, $s7, $s3
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	add.w	$a1, $a0, $a1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	addi.d	$s4, $fp, 240
	ori	$s3, $zero, 1
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	b	.LBB7_227
.LBB7_225:                              #   in Loop: Header=BB7_67 Depth=3
	addi.d	$s4, $fp, 240
	ori	$s3, $zero, 1
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
.LBB7_226:                              # %if.end1265
                                        #   in Loop: Header=BB7_67 Depth=3
	addi.d	$a0, $fp, 1274
	ldx.bu	$a0, $a0, $a1
	sll.w	$s1, $s1, $a0
	sub.w	$s7, $s7, $a0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	add.w	$a1, $a0, $a1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
.LBB7_227:                              # %sw.epilog1324
                                        #   in Loop: Header=BB7_67 Depth=3
	ld.w	$a2, $fp, 40
	addi.w	$a0, $a7, 2
	move	$a6, $s2
	add.w	$s2, $a0, $s2
	bltu	$a2, $s2, .LBB7_633
# %bb.228:                              # %if.end1331
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a4, $a6, 31, 0
	addi.w	$a3, $a1, 0
	move	$a5, $a1
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a4
	st.d	$a5, $sp, 136                   # 8-byte Folded Spill
	bgeu	$a6, $a3, .LBB7_237
# %bb.229:                              # %if.then1336
                                        #   in Loop: Header=BB7_67 Depth=3
	sub.w	$a5, $a5, $a6
	blt	$a2, $a5, .LBB7_636
# %bb.230:                              # %if.end1343
                                        #   in Loop: Header=BB7_67 Depth=3
	sub.d	$a2, $a2, $a5
	bstrpick.d	$t0, $a2, 31, 0
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	add.d	$a3, $a2, $t0
	bge	$a5, $a0, .LBB7_242
# %bb.231:                              # %if.then1350
                                        #   in Loop: Header=BB7_67 Depth=3
	sub.w	$a2, $a0, $a5
	blez	$a5, .LBB7_255
# %bb.232:                              # %while.body1356.preheader
                                        #   in Loop: Header=BB7_67 Depth=3
	ori	$a7, $zero, 32
	bltu	$a5, $a7, .LBB7_252
# %bb.233:                              # %while.body1356.preheader
                                        #   in Loop: Header=BB7_67 Depth=3
	sub.d	$a6, $a4, $t0
	bltu	$a6, $a7, .LBB7_252
# %bb.234:                              # %vector.ph3745
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a6, $a5, 30, 5
	slli.d	$a7, $a6, 5
	add.d	$a1, $a1, $a7
	add.d	$a3, $a3, $a7
	sub.d	$a6, $a5, $a7
	ld.d	$t1, $sp, 40                    # 8-byte Folded Reload
	add.d	$t0, $t1, $t0
	add.d	$a4, $t1, $a4
	move	$t1, $a7
.LBB7_235:                              # %vector.body3749
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        #       Parent Loop BB7_67 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr0, $t0, -16
	vld	$vr1, $t0, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$t1, $t1, -32
	addi.d	$t0, $t0, 32
	addi.d	$a4, $a4, 32
	bnez	$t1, .LBB7_235
# %bb.236:                              # %middle.block3756
                                        #   in Loop: Header=BB7_67 Depth=3
	bne	$a7, $a5, .LBB7_253
	b	.LBB7_255
.LBB7_237:                              # %iter.check3766
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a5, $a5, 31, 0
	sub.d	$a2, $a1, $a5
	ori	$a6, $zero, 6
	bltu	$a7, $a6, .LBB7_241
# %bb.238:                              # %iter.check3766
                                        #   in Loop: Header=BB7_67 Depth=3
	ori	$a6, $zero, 32
	bltu	$a3, $a6, .LBB7_241
# %bb.239:                              # %vector.main.loop.iter.check3768
                                        #   in Loop: Header=BB7_67 Depth=3
	sub.d	$a3, $zero, $a5
	ori	$a5, $zero, 30
	bgeu	$a7, $a5, .LBB7_243
# %bb.240:                              #   in Loop: Header=BB7_67 Depth=3
	move	$a6, $zero
	b	.LBB7_247
.LBB7_241:                              #   in Loop: Header=BB7_67 Depth=3
	move	$a5, $a0
	b	.LBB7_250
.LBB7_242:                              #   in Loop: Header=BB7_67 Depth=3
	move	$a2, $a0
	b	.LBB7_256
.LBB7_243:                              # %vector.ph3769
                                        #   in Loop: Header=BB7_67 Depth=3
	andi	$a5, $a0, 24
	bstrpick.d	$a6, $a0, 15, 5
	slli.d	$a6, $a6, 5
	ld.d	$a7, $sp, 40                    # 8-byte Folded Reload
	add.d	$a7, $a7, $a4
	move	$t0, $a6
.LBB7_244:                              # %vector.body3772
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        #       Parent Loop BB7_67 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.d	$t1, $a7, $a3
	vld	$vr0, $t1, -16
	vldx	$vr1, $a7, $a3
	vst	$vr0, $a7, -16
	vst	$vr1, $a7, 0
	addi.d	$t0, $t0, -32
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB7_244
# %bb.245:                              # %middle.block3779
                                        #   in Loop: Header=BB7_67 Depth=3
	beq	$a6, $a0, .LBB7_271
# %bb.246:                              # %vec.epilog.iter.check3783
                                        #   in Loop: Header=BB7_67 Depth=3
	beqz	$a5, .LBB7_273
.LBB7_247:                              # %vec.epilog.ph3785
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$t0, $a0, 15, 3
	slli.d	$a7, $t0, 3
	sub.d	$a5, $a0, $a7
	alsl.d	$a1, $t0, $a1, 3
	alsl.d	$a2, $t0, $a2, 3
	sub.d	$t0, $a6, $a7
	add.d	$a4, $a6, $a4
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	add.d	$a4, $a6, $a4
.LBB7_248:                              # %vec.epilog.vector.body3789
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        #       Parent Loop BB7_67 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ldx.d	$a6, $a4, $a3
	st.d	$a6, $a4, 0
	addi.d	$t0, $t0, 8
	addi.d	$a4, $a4, 8
	bnez	$t0, .LBB7_248
# %bb.249:                              # %vec.epilog.middle.block3795
                                        #   in Loop: Header=BB7_67 Depth=3
	beq	$a7, $a0, .LBB7_271
.LBB7_250:                              # %while.body1377.preheader
                                        #   in Loop: Header=BB7_67 Depth=3
	addi.d	$a3, $a5, 1
.LBB7_251:                              # %while.body1377
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        #       Parent Loop BB7_67 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.b	$a4, $a2, 0
	addi.d	$a2, $a2, 1
	addi.d	$a5, $a1, 1
	addi.w	$a3, $a3, -1
	st.b	$a4, $a1, 0
	move	$a1, $a5
	blt	$s3, $a3, .LBB7_251
	b	.LBB7_271
.LBB7_252:                              #   in Loop: Header=BB7_67 Depth=3
	move	$a6, $a5
.LBB7_253:                              # %while.body1356.preheader3814
                                        #   in Loop: Header=BB7_67 Depth=3
	addi.d	$a4, $a6, 1
.LBB7_254:                              # %while.body1356
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        #       Parent Loop BB7_67 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.b	$a5, $a3, 0
	addi.d	$a3, $a3, 1
	st.b	$a5, $a1, 0
	addi.w	$a4, $a4, -1
	addi.d	$a1, $a1, 1
	bltu	$s3, $a4, .LBB7_254
.LBB7_255:                              #   in Loop: Header=BB7_67 Depth=3
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
.LBB7_256:                              # %if.end1360
                                        #   in Loop: Header=BB7_67 Depth=3
	blez	$a2, .LBB7_271
# %bb.257:                              # %iter.check3703
                                        #   in Loop: Header=BB7_67 Depth=3
	ori	$a4, $zero, 8
	bltu	$a2, $a4, .LBB7_261
# %bb.258:                              # %iter.check3703
                                        #   in Loop: Header=BB7_67 Depth=3
	sub.d	$a4, $a1, $a3
	ori	$a5, $zero, 32
	bltu	$a4, $a5, .LBB7_261
# %bb.259:                              # %vector.main.loop.iter.check3705
                                        #   in Loop: Header=BB7_67 Depth=3
	bgeu	$a2, $a5, .LBB7_262
# %bb.260:                              #   in Loop: Header=BB7_67 Depth=3
	move	$a7, $zero
	b	.LBB7_266
.LBB7_261:                              #   in Loop: Header=BB7_67 Depth=3
	move	$a6, $a2
	move	$a4, $a1
	move	$a5, $a3
	b	.LBB7_269
.LBB7_262:                              # %vector.ph3706
                                        #   in Loop: Header=BB7_67 Depth=3
	andi	$a4, $a2, 24
	bstrpick.d	$a5, $a2, 30, 5
	slli.d	$a7, $a5, 5
	addi.d	$a5, $a3, 16
	addi.d	$a6, $a1, 16
	move	$t0, $a7
.LBB7_263:                              # %vector.body3709
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        #       Parent Loop BB7_67 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vst	$vr0, $a6, -16
	vst	$vr1, $a6, 0
	addi.d	$t0, $t0, -32
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, 32
	bnez	$t0, .LBB7_263
# %bb.264:                              # %middle.block3716
                                        #   in Loop: Header=BB7_67 Depth=3
	beq	$a7, $a2, .LBB7_271
# %bb.265:                              # %vec.epilog.iter.check3720
                                        #   in Loop: Header=BB7_67 Depth=3
	beqz	$a4, .LBB7_274
.LBB7_266:                              # %vec.epilog.ph3722
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a5, $a2, 30, 3
	slli.d	$t0, $a5, 3
	sub.d	$a6, $a2, $t0
	alsl.d	$a4, $a5, $a1, 3
	alsl.d	$a5, $a5, $a3, 3
	sub.d	$t1, $a7, $t0
	add.d	$a3, $a3, $a7
	add.d	$a1, $a1, $a7
.LBB7_267:                              # %vec.epilog.vector.body3726
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        #       Parent Loop BB7_67 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a7, $a3, 0
	st.d	$a7, $a1, 0
	addi.d	$t1, $t1, 8
	addi.d	$a3, $a3, 8
	addi.d	$a1, $a1, 8
	bnez	$t1, .LBB7_267
# %bb.268:                              # %vec.epilog.middle.block3732
                                        #   in Loop: Header=BB7_67 Depth=3
	beq	$t0, $a2, .LBB7_271
.LBB7_269:                              # %while.body1365.preheader
                                        #   in Loop: Header=BB7_67 Depth=3
	addi.d	$a1, $a6, 1
.LBB7_270:                              # %while.body1365
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        #       Parent Loop BB7_67 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.b	$a2, $a5, 0
	addi.d	$a5, $a5, 1
	addi.d	$a3, $a4, 1
	addi.w	$a1, $a1, -1
	st.b	$a2, $a4, 0
	move	$a4, $a3
	bltu	$s3, $a1, .LBB7_270
.LBB7_271:                              # %if.end1381
                                        #   in Loop: Header=BB7_67 Depth=3
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	sub.w	$a0, $a1, $a0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
.LBB7_272:                              # %if.end1384
                                        #   in Loop: Header=BB7_67 Depth=3
	st.d	$s2, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	bgtz	$a0, .LBB7_67
	b	.LBB7_494
.LBB7_273:                              #   in Loop: Header=BB7_67 Depth=3
	sub.d	$a5, $a0, $a6
	add.d	$a1, $a1, $a6
	add.d	$a2, $a2, $a6
	b	.LBB7_250
.LBB7_274:                              #   in Loop: Header=BB7_67 Depth=3
	sub.d	$a6, $a2, $a7
	add.d	$a4, $a1, $a7
	add.d	$a5, $a3, $a7
	b	.LBB7_269
.LBB7_275:                              # %if.then191
                                        #   in Loop: Header=BB7_62 Depth=2
	ld.bu	$a0, $fp, 89
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB7_281
# %bb.276:                              # %land.lhs.true195
                                        #   in Loop: Header=BB7_62 Depth=2
	ld.bu	$a0, $fp, 72
	andi	$a0, $a0, 1
	beqz	$a0, .LBB7_281
# %bb.277:                              # %if.then197
                                        #   in Loop: Header=BB7_62 Depth=2
	bne	$s8, $s5, .LBB7_280
# %bb.278:                              # %if.then200
                                        #   in Loop: Header=BB7_62 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_627
# %bb.279:                              # %if.end205
                                        #   in Loop: Header=BB7_62 Depth=2
	ld.d	$s8, $fp, 112
	ld.d	$s5, $fp, 120
.LBB7_280:                              # %if.end208
                                        #   in Loop: Header=BB7_62 Depth=2
	addi.d	$s8, $s8, 1
.LBB7_281:                              # %do.body210
                                        #   in Loop: Header=BB7_62 Depth=2
	addi.w	$a0, $s7, 0
	ori	$a1, $zero, 2
	blt	$a1, $a0, .LBB7_479
# %bb.282:                              # %while.body214.preheader
                                        #   in Loop: Header=BB7_62 Depth=2
	ori	$a0, $zero, 16
	sub.d	$s3, $a0, $s7
	b	.LBB7_285
.LBB7_283:                              # %if.end223
                                        #   in Loop: Header=BB7_285 Depth=3
	ld.d	$s8, $fp, 104
	st.d	$s8, $fp, 112
	add.d	$s5, $s8, $a0
	st.d	$s5, $fp, 120
.LBB7_284:                              # %if.end226
                                        #   in Loop: Header=BB7_285 Depth=3
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s3
	or	$s1, $a0, $s1
	addi.d	$a0, $s7, 16
	addi.w	$a1, $s7, 0
	addi.d	$s8, $s8, 2
	addi.w	$a2, $zero, -13
	addi.d	$s3, $s3, -16
	move	$s7, $a0
	bge	$a1, $a2, .LBB7_480
.LBB7_285:                              # %while.body214
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.d	$a0, $s8, 1
	bltu	$a0, $s5, .LBB7_284
# %bb.286:                              # %if.then218
                                        #   in Loop: Header=BB7_285 Depth=3
	ld.d	$a3, $s6, 8
	ld.d	$a1, $fp, 104
	ld.w	$a2, $fp, 152
	beqz	$a3, .LBB7_288
# %bb.287:                              # %cond.true.i929
                                        #   in Loop: Header=BB7_285 Depth=3
	ld.d	$a0, $s6, 0
	jirl	$ra, $a3, 0
	bgez	$a0, .LBB7_289
	b	.LBB7_623
.LBB7_288:                              # %cond.false.i957
                                        #   in Loop: Header=BB7_285 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB7_623
.LBB7_289:                              # %if.end.i937
                                        #   in Loop: Header=BB7_285 Depth=3
	bnez	$a0, .LBB7_283
# %bb.290:                              # %if.then7.i947
                                        #   in Loop: Header=BB7_285 Depth=3
	ld.bu	$a0, $fp, 92
	bnez	$a0, .LBB7_622
# %bb.291:                              # %if.else.i952
                                        #   in Loop: Header=BB7_285 Depth=3
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 1
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 92
	ori	$a0, $zero, 2
	b	.LBB7_283
.LBB7_292:                              # %sw.bb1386
                                        #   in Loop: Header=BB7_62 Depth=2
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	add.w	$a2, $a1, $s2
	blez	$a0, .LBB7_492
# %bb.293:                              # %while.body1393.preheader
                                        #   in Loop: Header=BB7_62 Depth=2
	bstrpick.d	$a0, $s2, 31, 0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	add.d	$s4, $a1, $a0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	move	$s2, $a2
	b	.LBB7_295
.LBB7_294:                              # %if.then1399
                                        #   in Loop: Header=BB7_295 Depth=3
	move	$s0, $s6
	move	$s6, $s2
	ld.d	$s2, $sp, 192                   # 8-byte Folded Reload
	slt	$a1, $s2, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s2, $a1
	or	$s3, $a1, $a0
	move	$a0, $s4
	move	$a1, $s8
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$s2, $s6
	move	$s6, $s0
	add.d	$s4, $s4, $s3
	add.d	$s8, $s8, $s3
	sub.w	$a0, $a0, $s3
	ori	$s3, $zero, 1
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	blez	$a0, .LBB7_304
.LBB7_295:                              # %while.body1393
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	sub.w	$a0, $s5, $s8
	bnez	$a0, .LBB7_294
# %bb.296:                              # %if.else1410
                                        #   in Loop: Header=BB7_295 Depth=3
	ld.d	$a3, $s6, 8
	ld.d	$a1, $fp, 104
	ld.w	$a2, $fp, 152
	beqz	$a3, .LBB7_298
# %bb.297:                              # %cond.true.i1244
                                        #   in Loop: Header=BB7_295 Depth=3
	ld.d	$a0, $s6, 0
	jirl	$ra, $a3, 0
	b	.LBB7_299
.LBB7_298:                              # %cond.false.i1272
                                        #   in Loop: Header=BB7_295 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB7_299:                              # %cond.end.i1249
                                        #   in Loop: Header=BB7_295 Depth=3
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	bltz	$a0, .LBB7_623
# %bb.300:                              # %if.end.i1252
                                        #   in Loop: Header=BB7_295 Depth=3
	bnez	$a0, .LBB7_303
# %bb.301:                              # %if.then7.i1262
                                        #   in Loop: Header=BB7_295 Depth=3
	ld.bu	$a0, $fp, 92
	bnez	$a0, .LBB7_622
# %bb.302:                              # %if.else.i1267
                                        #   in Loop: Header=BB7_295 Depth=3
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 1
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 0
	st.b	$s3, $fp, 92
	ori	$a0, $zero, 2
.LBB7_303:                              # %if.end1415
                                        #   in Loop: Header=BB7_295 Depth=3
	ld.d	$s8, $fp, 104
	st.d	$s8, $fp, 112
	add.d	$s5, $s8, $a0
	st.d	$s5, $fp, 120
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	bgtz	$a0, .LBB7_295
.LBB7_304:                              #   in Loop: Header=BB7_62 Depth=2
	addi.d	$s4, $fp, 240
	b	.LBB7_494
.LBB7_305:                              # %while.cond586.preheader
                                        #   in Loop: Header=BB7_62 Depth=2
	blez	$a0, .LBB7_493
# %bb.306:                              # %while.cond591.preheader.preheader
                                        #   in Loop: Header=BB7_62 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
.LBB7_307:                              # %while.cond591.preheader
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_312 Depth 4
                                        #         Child Loop BB7_368 Depth 4
                                        #         Child Loop BB7_427 Depth 4
                                        #         Child Loop BB7_448 Depth 4
                                        #         Child Loop BB7_452 Depth 4
                                        #         Child Loop BB7_455 Depth 4
                                        #         Child Loop BB7_439 Depth 4
                                        #         Child Loop BB7_458 Depth 4
                                        #         Child Loop BB7_467 Depth 4
                                        #         Child Loop BB7_471 Depth 4
                                        #         Child Loop BB7_474 Depth 4
	ori	$s2, $zero, 1
	addi.w	$a0, $s7, 0
	ori	$a1, $zero, 15
	blt	$a1, $a0, .LBB7_318
# %bb.308:                              # %while.body594.preheader
                                        #   in Loop: Header=BB7_307 Depth=3
	ori	$a0, $zero, 16
	sub.d	$s3, $a0, $s7
	b	.LBB7_312
.LBB7_309:                              # %if.else.i1127
                                        #   in Loop: Header=BB7_312 Depth=4
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 1
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 0
	st.b	$s2, $fp, 92
	ori	$a0, $zero, 2
.LBB7_310:                              # %if.end603
                                        #   in Loop: Header=BB7_312 Depth=4
	ld.d	$s8, $fp, 104
	st.d	$s8, $fp, 112
	add.d	$s5, $s8, $a0
	st.d	$s5, $fp, 120
.LBB7_311:                              # %if.end606
                                        #   in Loop: Header=BB7_312 Depth=4
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s3
	or	$s1, $a0, $s1
	addi.d	$a0, $s7, 16
	addi.w	$a1, $s7, 0
	addi.d	$s8, $s8, 2
	addi.d	$s3, $s3, -16
	move	$s7, $a0
	bgez	$a1, .LBB7_319
.LBB7_312:                              # %while.body594
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        #       Parent Loop BB7_307 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.d	$a0, $s8, 1
	bltu	$a0, $s5, .LBB7_311
# %bb.313:                              # %if.then598
                                        #   in Loop: Header=BB7_312 Depth=4
	ld.d	$a3, $s6, 8
	ld.d	$a1, $fp, 104
	ld.w	$a2, $fp, 152
	beqz	$a3, .LBB7_315
# %bb.314:                              # %cond.true.i1104
                                        #   in Loop: Header=BB7_312 Depth=4
	ld.d	$a0, $s6, 0
	jirl	$ra, $a3, 0
	bgez	$a0, .LBB7_316
	b	.LBB7_623
.LBB7_315:                              # %cond.false.i1132
                                        #   in Loop: Header=BB7_312 Depth=4
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB7_623
.LBB7_316:                              # %if.end.i1112
                                        #   in Loop: Header=BB7_312 Depth=4
	bnez	$a0, .LBB7_310
# %bb.317:                              # %if.then7.i1122
                                        #   in Loop: Header=BB7_312 Depth=4
	ld.bu	$a0, $fp, 92
	beqz	$a0, .LBB7_309
	b	.LBB7_622
.LBB7_318:                              #   in Loop: Header=BB7_307 Depth=3
	move	$a0, $s7
.LBB7_319:                              # %while.end620
                                        #   in Loop: Header=BB7_307 Depth=3
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	and	$a1, $s1, $a1
	srli.d	$a1, $a1, 19
	addi.d	$a2, $fp, 1554
	ldx.hu	$s3, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s3, $a1, .LBB7_361
# %bb.320:                              # %do.body629.preheader
                                        #   in Loop: Header=BB7_307 Depth=3
	bstrpick.d	$a1, $s3, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_626
# %bb.321:                              # %if.end649
                                        #   in Loop: Header=BB7_307 Depth=3
	slli.d	$a1, $s3, 1
	bstrpick.d	$a2, $s1, 19, 19
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	addi.d	$a2, $fp, 1554
	ldx.hu	$s3, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s3, $a1, .LBB7_361
# %bb.322:                              # %do.body629.1
                                        #   in Loop: Header=BB7_307 Depth=3
	bstrpick.d	$a1, $s3, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_626
# %bb.323:                              # %if.end649.1
                                        #   in Loop: Header=BB7_307 Depth=3
	slli.d	$a1, $s3, 1
	bstrpick.d	$a2, $s1, 18, 18
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	addi.d	$a2, $fp, 1554
	ldx.hu	$s3, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s3, $a1, .LBB7_361
# %bb.324:                              # %do.body629.2
                                        #   in Loop: Header=BB7_307 Depth=3
	bstrpick.d	$a1, $s3, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_626
# %bb.325:                              # %if.end649.2
                                        #   in Loop: Header=BB7_307 Depth=3
	slli.d	$a1, $s3, 1
	bstrpick.d	$a2, $s1, 17, 17
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	addi.d	$a2, $fp, 1554
	ldx.hu	$s3, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s3, $a1, .LBB7_361
# %bb.326:                              # %do.body629.3
                                        #   in Loop: Header=BB7_307 Depth=3
	bstrpick.d	$a1, $s3, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_626
# %bb.327:                              # %if.end649.3
                                        #   in Loop: Header=BB7_307 Depth=3
	slli.d	$a1, $s3, 1
	bstrpick.d	$a2, $s1, 16, 16
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	addi.d	$a2, $fp, 1554
	ldx.hu	$s3, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s3, $a1, .LBB7_361
# %bb.328:                              # %do.body629.4
                                        #   in Loop: Header=BB7_307 Depth=3
	bstrpick.d	$a1, $s3, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_626
# %bb.329:                              # %if.end649.4
                                        #   in Loop: Header=BB7_307 Depth=3
	slli.d	$a1, $s3, 1
	bstrpick.d	$a2, $s1, 15, 15
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	addi.d	$a2, $fp, 1554
	ldx.hu	$s3, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s3, $a1, .LBB7_361
# %bb.330:                              # %do.body629.5
                                        #   in Loop: Header=BB7_307 Depth=3
	bstrpick.d	$a1, $s3, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_626
# %bb.331:                              # %if.end649.5
                                        #   in Loop: Header=BB7_307 Depth=3
	slli.d	$a1, $s3, 1
	bstrpick.d	$a2, $s1, 14, 14
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	addi.d	$a2, $fp, 1554
	ldx.hu	$s3, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s3, $a1, .LBB7_361
# %bb.332:                              # %do.body629.6
                                        #   in Loop: Header=BB7_307 Depth=3
	bstrpick.d	$a1, $s3, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_626
# %bb.333:                              # %if.end649.6
                                        #   in Loop: Header=BB7_307 Depth=3
	slli.d	$a1, $s3, 1
	bstrpick.d	$a2, $s1, 13, 13
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	addi.d	$a2, $fp, 1554
	ldx.hu	$s3, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s3, $a1, .LBB7_361
# %bb.334:                              # %do.body629.7
                                        #   in Loop: Header=BB7_307 Depth=3
	bstrpick.d	$a1, $s3, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_626
# %bb.335:                              # %if.end649.7
                                        #   in Loop: Header=BB7_307 Depth=3
	slli.d	$a1, $s3, 1
	bstrpick.d	$a2, $s1, 12, 12
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	addi.d	$a2, $fp, 1554
	ldx.hu	$s3, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s3, $a1, .LBB7_361
# %bb.336:                              # %do.body629.8
                                        #   in Loop: Header=BB7_307 Depth=3
	bstrpick.d	$a1, $s3, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_626
# %bb.337:                              # %if.end649.8
                                        #   in Loop: Header=BB7_307 Depth=3
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	slli.d	$a1, $s3, 1
	bstrpick.d	$a2, $s1, 11, 11
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	addi.d	$a2, $fp, 1554
	ldx.hu	$s3, $a2, $a1
	ori	$a1, $zero, 656
	st.d	$s0, $sp, 128                   # 8-byte Folded Spill
	bltu	$s3, $a1, .LBB7_360
# %bb.338:                              # %do.body629.9
                                        #   in Loop: Header=BB7_307 Depth=3
	bstrpick.d	$a1, $s3, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_626
# %bb.339:                              # %if.end649.9
                                        #   in Loop: Header=BB7_307 Depth=3
	slli.d	$a1, $s3, 1
	bstrpick.d	$a2, $s1, 10, 10
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	addi.d	$a2, $fp, 1554
	ldx.hu	$s3, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s3, $a1, .LBB7_360
# %bb.340:                              # %do.body629.10
                                        #   in Loop: Header=BB7_307 Depth=3
	bstrpick.d	$a1, $s3, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_626
# %bb.341:                              # %if.end649.10
                                        #   in Loop: Header=BB7_307 Depth=3
	slli.d	$a1, $s3, 1
	bstrpick.d	$a2, $s1, 9, 9
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	addi.d	$a2, $fp, 1554
	ldx.hu	$s3, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s3, $a1, .LBB7_360
# %bb.342:                              # %do.body629.11
                                        #   in Loop: Header=BB7_307 Depth=3
	bstrpick.d	$a1, $s3, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_626
# %bb.343:                              # %if.end649.11
                                        #   in Loop: Header=BB7_307 Depth=3
	slli.d	$a1, $s3, 1
	bstrpick.d	$a2, $s1, 8, 8
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	addi.d	$a2, $fp, 1554
	ldx.hu	$s3, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s3, $a1, .LBB7_360
# %bb.344:                              # %do.body629.12
                                        #   in Loop: Header=BB7_307 Depth=3
	bstrpick.d	$a1, $s3, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_626
# %bb.345:                              # %if.end649.12
                                        #   in Loop: Header=BB7_307 Depth=3
	slli.d	$a1, $s3, 1
	bstrpick.d	$a2, $s1, 7, 7
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	addi.d	$a2, $fp, 1554
	ldx.hu	$s3, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s3, $a1, .LBB7_360
# %bb.346:                              # %do.body629.13
                                        #   in Loop: Header=BB7_307 Depth=3
	bstrpick.d	$a1, $s3, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_626
# %bb.347:                              # %if.end649.13
                                        #   in Loop: Header=BB7_307 Depth=3
	slli.d	$a1, $s3, 1
	bstrpick.d	$a2, $s1, 6, 6
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	addi.d	$a2, $fp, 1554
	ldx.hu	$s3, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s3, $a1, .LBB7_360
# %bb.348:                              # %do.body629.14
                                        #   in Loop: Header=BB7_307 Depth=3
	bstrpick.d	$a1, $s3, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_626
# %bb.349:                              # %if.end649.14
                                        #   in Loop: Header=BB7_307 Depth=3
	slli.d	$a1, $s3, 1
	bstrpick.d	$a2, $s1, 5, 5
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	addi.d	$a2, $fp, 1554
	ldx.hu	$s3, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s3, $a1, .LBB7_360
# %bb.350:                              # %do.body629.15
                                        #   in Loop: Header=BB7_307 Depth=3
	bstrpick.d	$a1, $s3, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_626
# %bb.351:                              # %if.end649.15
                                        #   in Loop: Header=BB7_307 Depth=3
	slli.d	$a1, $s3, 1
	bstrpick.d	$a2, $s1, 4, 4
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	addi.d	$a2, $fp, 1554
	ldx.hu	$s3, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s3, $a1, .LBB7_360
# %bb.352:                              # %do.body629.16
                                        #   in Loop: Header=BB7_307 Depth=3
	bstrpick.d	$a1, $s3, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_626
# %bb.353:                              # %if.end649.16
                                        #   in Loop: Header=BB7_307 Depth=3
	slli.d	$a1, $s3, 1
	bstrpick.d	$a2, $s1, 3, 3
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	addi.d	$a2, $fp, 1554
	ldx.hu	$s3, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s3, $a1, .LBB7_360
# %bb.354:                              # %do.body629.17
                                        #   in Loop: Header=BB7_307 Depth=3
	bstrpick.d	$a1, $s3, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_626
# %bb.355:                              # %if.end649.17
                                        #   in Loop: Header=BB7_307 Depth=3
	slli.d	$a1, $s3, 1
	bstrpick.d	$a2, $s1, 2, 2
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	addi.d	$a2, $fp, 1554
	ldx.hu	$s3, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s3, $a1, .LBB7_360
# %bb.356:                              # %do.body629.18
                                        #   in Loop: Header=BB7_307 Depth=3
	bstrpick.d	$a1, $s3, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_626
# %bb.357:                              # %if.end649.18
                                        #   in Loop: Header=BB7_307 Depth=3
	slli.d	$a1, $s3, 1
	bstrpick.d	$a2, $s1, 1, 1
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	addi.d	$a2, $fp, 1554
	ldx.hu	$s3, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s3, $a1, .LBB7_360
# %bb.358:                              # %do.body629.19
                                        #   in Loop: Header=BB7_307 Depth=3
	bstrpick.d	$a1, $s3, 14, 4
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	addi.d	$s4, $fp, 240
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_626
# %bb.359:                              # %if.end649.19
                                        #   in Loop: Header=BB7_307 Depth=3
	slli.d	$a1, $s3, 1
	andi	$a2, $s1, 1
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	addi.d	$a2, $fp, 1554
	ldx.hu	$s3, $a2, $a1
	ori	$a1, $zero, 655
	bgeu	$a1, $s3, .LBB7_361
	b	.LBB7_638
.LBB7_360:                              #   in Loop: Header=BB7_307 Depth=3
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	addi.d	$s4, $fp, 240
.LBB7_361:                              # %if.end658
                                        #   in Loop: Header=BB7_307 Depth=3
	ldx.bu	$a1, $s4, $s3
	sll.w	$s1, $s1, $a1
	sub.w	$s7, $a0, $a1
	ori	$a2, $zero, 255
	bltu	$a2, $s3, .LBB7_363
# %bb.362:                              # %if.then670
                                        #   in Loop: Header=BB7_307 Depth=3
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	addi.w	$s2, $a0, 1
	bstrpick.d	$a0, $a0, 31, 0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	stx.b	$s3, $a1, $a0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	addi.w	$a0, $a0, -1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	ori	$s3, $zero, 1
	b	.LBB7_476
.LBB7_363:                              # %if.else
                                        #   in Loop: Header=BB7_307 Depth=3
	andi	$s4, $s3, 7
	ori	$a2, $zero, 7
	bne	$s4, $a2, .LBB7_419
# %bb.364:                              # %while.cond681.preheader
                                        #   in Loop: Header=BB7_307 Depth=3
	ori	$a2, $zero, 15
	blt	$a2, $s7, .LBB7_376
# %bb.365:                              # %while.body684.preheader
                                        #   in Loop: Header=BB7_307 Depth=3
	sub.d	$a0, $a1, $a0
	addi.d	$s4, $a0, 16
	b	.LBB7_368
.LBB7_366:                              # %if.end693
                                        #   in Loop: Header=BB7_368 Depth=4
	ld.d	$s8, $fp, 104
	st.d	$s8, $fp, 112
	add.d	$s5, $s8, $a0
	st.d	$s5, $fp, 120
.LBB7_367:                              # %if.end696
                                        #   in Loop: Header=BB7_368 Depth=4
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s4
	or	$s1, $a0, $s1
	addi.w	$s7, $s6, 16
	addi.d	$s8, $s8, 2
	addi.d	$s4, $s4, -16
	bgez	$s6, .LBB7_376
.LBB7_368:                              # %while.body684
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        #       Parent Loop BB7_307 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.d	$a0, $s8, 1
	move	$s6, $s7
	bltu	$a0, $s5, .LBB7_367
# %bb.369:                              # %if.then688
                                        #   in Loop: Header=BB7_368 Depth=4
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a3, $a0, 8
	ld.d	$a1, $fp, 104
	ld.w	$a2, $fp, 152
	beqz	$a3, .LBB7_371
# %bb.370:                              # %cond.true.i1139
                                        #   in Loop: Header=BB7_368 Depth=4
	ld.d	$a0, $a0, 0
	jirl	$ra, $a3, 0
	b	.LBB7_372
.LBB7_371:                              # %cond.false.i1167
                                        #   in Loop: Header=BB7_368 Depth=4
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB7_372:                              # %cond.end.i1144
                                        #   in Loop: Header=BB7_368 Depth=4
	bltz	$a0, .LBB7_623
# %bb.373:                              # %if.end.i1147
                                        #   in Loop: Header=BB7_368 Depth=4
	bnez	$a0, .LBB7_366
# %bb.374:                              # %if.then7.i1157
                                        #   in Loop: Header=BB7_368 Depth=4
	ld.bu	$a0, $fp, 92
	bnez	$a0, .LBB7_622
# %bb.375:                              # %if.else.i1162
                                        #   in Loop: Header=BB7_368 Depth=4
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 1
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 0
	st.b	$s2, $fp, 92
	ori	$a0, $zero, 2
	b	.LBB7_366
.LBB7_376:                              # %while.end710
                                        #   in Loop: Header=BB7_307 Depth=3
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	and	$a0, $s1, $a0
	srli.d	$a0, $a0, 19
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_417
# %bb.377:                              # %do.body719.preheader
                                        #   in Loop: Header=BB7_307 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_626
# %bb.378:                              # %if.end740
                                        #   in Loop: Header=BB7_307 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s1, 19, 19
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_418
# %bb.379:                              # %do.body719.1
                                        #   in Loop: Header=BB7_307 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_626
# %bb.380:                              # %if.end740.1
                                        #   in Loop: Header=BB7_307 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s1, 18, 18
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_418
# %bb.381:                              # %do.body719.2
                                        #   in Loop: Header=BB7_307 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_626
# %bb.382:                              # %if.end740.2
                                        #   in Loop: Header=BB7_307 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s1, 17, 17
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_418
# %bb.383:                              # %do.body719.3
                                        #   in Loop: Header=BB7_307 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_626
# %bb.384:                              # %if.end740.3
                                        #   in Loop: Header=BB7_307 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s1, 16, 16
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_418
# %bb.385:                              # %do.body719.4
                                        #   in Loop: Header=BB7_307 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_626
# %bb.386:                              # %if.end740.4
                                        #   in Loop: Header=BB7_307 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s1, 15, 15
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_418
# %bb.387:                              # %do.body719.5
                                        #   in Loop: Header=BB7_307 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_626
# %bb.388:                              # %if.end740.5
                                        #   in Loop: Header=BB7_307 Depth=3
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s1, 14, 14
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	st.d	$s0, $sp, 128                   # 8-byte Folded Spill
	bltu	$a0, $a1, .LBB7_417
# %bb.389:                              # %do.body719.6
                                        #   in Loop: Header=BB7_307 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_626
# %bb.390:                              # %if.end740.6
                                        #   in Loop: Header=BB7_307 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s1, 13, 13
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_417
# %bb.391:                              # %do.body719.7
                                        #   in Loop: Header=BB7_307 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_626
# %bb.392:                              # %if.end740.7
                                        #   in Loop: Header=BB7_307 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s1, 12, 12
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_417
# %bb.393:                              # %do.body719.8
                                        #   in Loop: Header=BB7_307 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_626
# %bb.394:                              # %if.end740.8
                                        #   in Loop: Header=BB7_307 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s1, 11, 11
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_417
# %bb.395:                              # %do.body719.9
                                        #   in Loop: Header=BB7_307 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_626
# %bb.396:                              # %if.end740.9
                                        #   in Loop: Header=BB7_307 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s1, 10, 10
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_417
# %bb.397:                              # %do.body719.10
                                        #   in Loop: Header=BB7_307 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_626
# %bb.398:                              # %if.end740.10
                                        #   in Loop: Header=BB7_307 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s1, 9, 9
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_417
# %bb.399:                              # %do.body719.11
                                        #   in Loop: Header=BB7_307 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_626
# %bb.400:                              # %if.end740.11
                                        #   in Loop: Header=BB7_307 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s1, 8, 8
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_417
# %bb.401:                              # %do.body719.12
                                        #   in Loop: Header=BB7_307 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_626
# %bb.402:                              # %if.end740.12
                                        #   in Loop: Header=BB7_307 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s1, 7, 7
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_417
# %bb.403:                              # %do.body719.13
                                        #   in Loop: Header=BB7_307 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_626
# %bb.404:                              # %if.end740.13
                                        #   in Loop: Header=BB7_307 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s1, 6, 6
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_417
# %bb.405:                              # %do.body719.14
                                        #   in Loop: Header=BB7_307 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_626
# %bb.406:                              # %if.end740.14
                                        #   in Loop: Header=BB7_307 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s1, 5, 5
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_417
# %bb.407:                              # %do.body719.15
                                        #   in Loop: Header=BB7_307 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_626
# %bb.408:                              # %if.end740.15
                                        #   in Loop: Header=BB7_307 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s1, 4, 4
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_417
# %bb.409:                              # %do.body719.16
                                        #   in Loop: Header=BB7_307 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_626
# %bb.410:                              # %if.end740.16
                                        #   in Loop: Header=BB7_307 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s1, 3, 3
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_417
# %bb.411:                              # %do.body719.17
                                        #   in Loop: Header=BB7_307 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_626
# %bb.412:                              # %if.end740.17
                                        #   in Loop: Header=BB7_307 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s1, 2, 2
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_417
# %bb.413:                              # %do.body719.18
                                        #   in Loop: Header=BB7_307 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_626
# %bb.414:                              # %if.end740.18
                                        #   in Loop: Header=BB7_307 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s1, 1, 1
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_417
# %bb.415:                              # %do.body719.19
                                        #   in Loop: Header=BB7_307 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_626
# %bb.416:                              # %if.end740.19
                                        #   in Loop: Header=BB7_307 Depth=3
	slli.d	$a0, $a0, 1
	andi	$a1, $s1, 1
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 249
	bgeu	$a1, $a0, .LBB7_418
	b	.LBB7_638
.LBB7_417:                              #   in Loop: Header=BB7_307 Depth=3
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
.LBB7_418:                              # %if.end749
                                        #   in Loop: Header=BB7_307 Depth=3
	addi.d	$a1, $fp, 960
	ldx.bu	$a1, $a1, $a0
	sll.w	$s1, $s1, $a1
	sub.w	$s7, $s7, $a1
	addi.d	$a0, $a0, 7
	bstrpick.d	$s4, $a0, 15, 0
.LBB7_419:                              # %if.end760
                                        #   in Loop: Header=BB7_307 Depth=3
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	addi.d	$a0, $s3, -256
	bstrpick.d	$a0, $a0, 31, 3
	ori	$a1, $zero, 3
	bltu	$a1, $a0, .LBB7_424
# %bb.420:                              # %if.end760
                                        #   in Loop: Header=BB7_307 Depth=3
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI7_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI7_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $a4
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	jr	$a0
.LBB7_421:                              # %sw.bb764
                                        #   in Loop: Header=BB7_307 Depth=3
	move	$a1, $a2
	st.d	$a4, $sp, 144                   # 8-byte Folded Spill
	b	.LBB7_431
.LBB7_422:                              # %sw.bb765
                                        #   in Loop: Header=BB7_307 Depth=3
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	st.d	$a4, $sp, 104                   # 8-byte Folded Spill
	b	.LBB7_431
.LBB7_423:                              # %sw.bb766
                                        #   in Loop: Header=BB7_307 Depth=3
	ori	$a1, $zero, 1
	st.d	$a4, $sp, 144                   # 8-byte Folded Spill
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	b	.LBB7_431
.LBB7_424:                              # %sw.default767
                                        #   in Loop: Header=BB7_307 Depth=3
	addi.w	$s6, $a0, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ldx.bu	$s3, $a0, $s6
	bge	$s7, $s3, .LBB7_430
# %bb.425:                              # %while.body775.preheader
                                        #   in Loop: Header=BB7_307 Depth=3
	ori	$a0, $zero, 16
	sub.d	$s2, $a0, $s7
	b	.LBB7_427
.LBB7_426:                              # %if.end787
                                        #   in Loop: Header=BB7_427 Depth=4
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s2
	or	$s1, $a0, $s1
	addi.w	$s7, $s7, 16
	addi.d	$s8, $s8, 2
	addi.d	$s2, $s2, -16
	bge	$s7, $s3, .LBB7_430
.LBB7_427:                              # %while.body775
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        #       Parent Loop BB7_307 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.d	$a0, $s8, 1
	bltu	$a0, $s5, .LBB7_426
# %bb.428:                              # %if.then779
                                        #   in Loop: Header=BB7_427 Depth=4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_627
# %bb.429:                              # %if.end784
                                        #   in Loop: Header=BB7_427 Depth=4
	ld.d	$s8, $fp, 112
	ld.d	$s5, $fp, 120
	b	.LBB7_426
.LBB7_430:                              # %while.end801
                                        #   in Loop: Header=BB7_307 Depth=3
	ori	$a0, $zero, 32
	sub.d	$a0, $a0, $s3
	slli.d	$a1, $s6, 2
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ldx.w	$a1, $a2, $a1
	srl.w	$a0, $s1, $a0
	sll.w	$s1, $s1, $s3
	sub.w	$s7, $s7, $s3
	add.d	$a0, $a0, $a1
	addi.w	$a1, $a0, -2
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
.LBB7_431:                              # %sw.epilog814
                                        #   in Loop: Header=BB7_307 Depth=3
	ld.w	$a2, $fp, 40
	addi.w	$a0, $s4, 2
	add.w	$s2, $a0, $a3
	ori	$s3, $zero, 1
	bltu	$a2, $s2, .LBB7_633
# %bb.432:                              # %if.end820
                                        #   in Loop: Header=BB7_307 Depth=3
	move	$a6, $a3
	bstrpick.d	$a4, $a3, 31, 0
	addi.w	$a3, $a1, 0
	move	$a5, $a1
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a4
	st.d	$a5, $sp, 136                   # 8-byte Folded Spill
	bgeu	$a6, $a3, .LBB7_441
# %bb.433:                              # %if.then825
                                        #   in Loop: Header=BB7_307 Depth=3
	sub.w	$a5, $a5, $a6
	blt	$a2, $a5, .LBB7_636
# %bb.434:                              # %if.end832
                                        #   in Loop: Header=BB7_307 Depth=3
	sub.d	$a2, $a2, $a5
	bstrpick.d	$t0, $a2, 31, 0
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	add.d	$a3, $a2, $t0
	bge	$a5, $a0, .LBB7_446
# %bb.435:                              # %if.then839
                                        #   in Loop: Header=BB7_307 Depth=3
	sub.w	$a2, $a0, $a5
	addi.d	$s4, $fp, 240
	blez	$a5, .LBB7_459
# %bb.436:                              # %while.body845.preheader
                                        #   in Loop: Header=BB7_307 Depth=3
	ori	$a7, $zero, 32
	bltu	$a5, $a7, .LBB7_456
# %bb.437:                              # %while.body845.preheader
                                        #   in Loop: Header=BB7_307 Depth=3
	sub.d	$a6, $a4, $t0
	bltu	$a6, $a7, .LBB7_456
# %bb.438:                              # %vector.ph3637
                                        #   in Loop: Header=BB7_307 Depth=3
	bstrpick.d	$a6, $a5, 30, 5
	slli.d	$a7, $a6, 5
	add.d	$a1, $a1, $a7
	add.d	$a3, $a3, $a7
	sub.d	$a6, $a5, $a7
	ld.d	$t1, $sp, 40                    # 8-byte Folded Reload
	add.d	$t0, $t1, $t0
	add.d	$a4, $t1, $a4
	move	$t1, $a7
.LBB7_439:                              # %vector.body3641
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        #       Parent Loop BB7_307 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr0, $t0, -16
	vld	$vr1, $t0, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$t1, $t1, -32
	addi.d	$t0, $t0, 32
	addi.d	$a4, $a4, 32
	bnez	$t1, .LBB7_439
# %bb.440:                              # %middle.block3648
                                        #   in Loop: Header=BB7_307 Depth=3
	bne	$a7, $a5, .LBB7_457
	b	.LBB7_459
.LBB7_441:                              # %iter.check3658
                                        #   in Loop: Header=BB7_307 Depth=3
	bstrpick.d	$a5, $a5, 31, 0
	sub.d	$a2, $a1, $a5
	ori	$a6, $zero, 6
	bltu	$s4, $a6, .LBB7_445
# %bb.442:                              # %iter.check3658
                                        #   in Loop: Header=BB7_307 Depth=3
	ori	$a6, $zero, 32
	bltu	$a3, $a6, .LBB7_445
# %bb.443:                              # %vector.main.loop.iter.check3660
                                        #   in Loop: Header=BB7_307 Depth=3
	sub.d	$a3, $zero, $a5
	ori	$a5, $zero, 30
	bgeu	$s4, $a5, .LBB7_447
# %bb.444:                              #   in Loop: Header=BB7_307 Depth=3
	move	$a6, $zero
	addi.d	$s4, $fp, 240
	b	.LBB7_451
.LBB7_445:                              #   in Loop: Header=BB7_307 Depth=3
	move	$a5, $a0
	addi.d	$s4, $fp, 240
	b	.LBB7_454
.LBB7_446:                              #   in Loop: Header=BB7_307 Depth=3
	move	$a2, $a0
	addi.d	$s4, $fp, 240
	b	.LBB7_460
.LBB7_447:                              # %vector.ph3661
                                        #   in Loop: Header=BB7_307 Depth=3
	andi	$a5, $a0, 24
	bstrpick.d	$a6, $a0, 15, 5
	slli.d	$a6, $a6, 5
	ld.d	$a7, $sp, 40                    # 8-byte Folded Reload
	add.d	$a7, $a7, $a4
	move	$t0, $a6
	addi.d	$s4, $fp, 240
.LBB7_448:                              # %vector.body3664
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        #       Parent Loop BB7_307 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.d	$t1, $a7, $a3
	vld	$vr0, $t1, -16
	vldx	$vr1, $a7, $a3
	vst	$vr0, $a7, -16
	vst	$vr1, $a7, 0
	addi.d	$t0, $t0, -32
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB7_448
# %bb.449:                              # %middle.block3671
                                        #   in Loop: Header=BB7_307 Depth=3
	beq	$a6, $a0, .LBB7_475
# %bb.450:                              # %vec.epilog.iter.check3675
                                        #   in Loop: Header=BB7_307 Depth=3
	beqz	$a5, .LBB7_477
.LBB7_451:                              # %vec.epilog.ph3677
                                        #   in Loop: Header=BB7_307 Depth=3
	bstrpick.d	$t0, $a0, 15, 3
	slli.d	$a7, $t0, 3
	sub.d	$a5, $a0, $a7
	alsl.d	$a1, $t0, $a1, 3
	alsl.d	$a2, $t0, $a2, 3
	sub.d	$t0, $a6, $a7
	add.d	$a4, $a6, $a4
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	add.d	$a4, $a6, $a4
.LBB7_452:                              # %vec.epilog.vector.body3681
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        #       Parent Loop BB7_307 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ldx.d	$a6, $a4, $a3
	st.d	$a6, $a4, 0
	addi.d	$t0, $t0, 8
	addi.d	$a4, $a4, 8
	bnez	$t0, .LBB7_452
# %bb.453:                              # %vec.epilog.middle.block3687
                                        #   in Loop: Header=BB7_307 Depth=3
	beq	$a7, $a0, .LBB7_475
.LBB7_454:                              # %while.body865.preheader
                                        #   in Loop: Header=BB7_307 Depth=3
	addi.d	$a3, $a5, 1
.LBB7_455:                              # %while.body865
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        #       Parent Loop BB7_307 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.b	$a4, $a2, 0
	addi.d	$a2, $a2, 1
	addi.d	$a5, $a1, 1
	addi.w	$a3, $a3, -1
	st.b	$a4, $a1, 0
	move	$a1, $a5
	blt	$s3, $a3, .LBB7_455
	b	.LBB7_475
.LBB7_456:                              #   in Loop: Header=BB7_307 Depth=3
	move	$a6, $a5
.LBB7_457:                              # %while.body845.preheader3812
                                        #   in Loop: Header=BB7_307 Depth=3
	addi.d	$a4, $a6, 1
.LBB7_458:                              # %while.body845
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        #       Parent Loop BB7_307 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.b	$a5, $a3, 0
	addi.d	$a3, $a3, 1
	st.b	$a5, $a1, 0
	addi.w	$a4, $a4, -1
	addi.d	$a1, $a1, 1
	bltu	$s3, $a4, .LBB7_458
.LBB7_459:                              #   in Loop: Header=BB7_307 Depth=3
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
.LBB7_460:                              # %if.end849
                                        #   in Loop: Header=BB7_307 Depth=3
	blez	$a2, .LBB7_475
# %bb.461:                              # %iter.check
                                        #   in Loop: Header=BB7_307 Depth=3
	ori	$a4, $zero, 8
	bltu	$a2, $a4, .LBB7_465
# %bb.462:                              # %iter.check
                                        #   in Loop: Header=BB7_307 Depth=3
	sub.d	$a4, $a1, $a3
	ori	$a5, $zero, 32
	bltu	$a4, $a5, .LBB7_465
# %bb.463:                              # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB7_307 Depth=3
	bgeu	$a2, $a5, .LBB7_466
# %bb.464:                              #   in Loop: Header=BB7_307 Depth=3
	move	$a7, $zero
	b	.LBB7_470
.LBB7_465:                              #   in Loop: Header=BB7_307 Depth=3
	move	$a6, $a2
	move	$a4, $a1
	move	$a5, $a3
	b	.LBB7_473
.LBB7_466:                              # %vector.ph
                                        #   in Loop: Header=BB7_307 Depth=3
	andi	$a4, $a2, 24
	bstrpick.d	$a5, $a2, 30, 5
	slli.d	$a7, $a5, 5
	addi.d	$a5, $a3, 16
	addi.d	$a6, $a1, 16
	move	$t0, $a7
.LBB7_467:                              # %vector.body
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        #       Parent Loop BB7_307 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vst	$vr0, $a6, -16
	vst	$vr1, $a6, 0
	addi.d	$t0, $t0, -32
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, 32
	bnez	$t0, .LBB7_467
# %bb.468:                              # %middle.block
                                        #   in Loop: Header=BB7_307 Depth=3
	beq	$a7, $a2, .LBB7_475
# %bb.469:                              # %vec.epilog.iter.check
                                        #   in Loop: Header=BB7_307 Depth=3
	beqz	$a4, .LBB7_478
.LBB7_470:                              # %vec.epilog.ph
                                        #   in Loop: Header=BB7_307 Depth=3
	bstrpick.d	$a5, $a2, 30, 3
	slli.d	$t0, $a5, 3
	sub.d	$a6, $a2, $t0
	alsl.d	$a4, $a5, $a1, 3
	alsl.d	$a5, $a5, $a3, 3
	sub.d	$t1, $a7, $t0
	add.d	$a3, $a3, $a7
	add.d	$a1, $a1, $a7
.LBB7_471:                              # %vec.epilog.vector.body
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        #       Parent Loop BB7_307 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a7, $a3, 0
	st.d	$a7, $a1, 0
	addi.d	$t1, $t1, 8
	addi.d	$a3, $a3, 8
	addi.d	$a1, $a1, 8
	bnez	$t1, .LBB7_471
# %bb.472:                              # %vec.epilog.middle.block
                                        #   in Loop: Header=BB7_307 Depth=3
	beq	$t0, $a2, .LBB7_475
.LBB7_473:                              # %while.body854.preheader
                                        #   in Loop: Header=BB7_307 Depth=3
	addi.d	$a1, $a6, 1
.LBB7_474:                              # %while.body854
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        #       Parent Loop BB7_307 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.b	$a2, $a5, 0
	addi.d	$a5, $a5, 1
	addi.d	$a3, $a4, 1
	addi.w	$a1, $a1, -1
	st.b	$a2, $a4, 0
	move	$a4, $a3
	bltu	$s3, $a1, .LBB7_474
.LBB7_475:                              # %if.end869
                                        #   in Loop: Header=BB7_307 Depth=3
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	sub.w	$a0, $a1, $a0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
.LBB7_476:                              # %if.end872
                                        #   in Loop: Header=BB7_307 Depth=3
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	bgtz	$a0, .LBB7_307
	b	.LBB7_494
.LBB7_477:                              #   in Loop: Header=BB7_307 Depth=3
	sub.d	$a5, $a0, $a6
	add.d	$a1, $a1, $a6
	add.d	$a2, $a2, $a6
	b	.LBB7_454
.LBB7_478:                              #   in Loop: Header=BB7_307 Depth=3
	sub.d	$a6, $a2, $a7
	add.d	$a4, $a1, $a7
	add.d	$a5, $a3, $a7
	b	.LBB7_473
.LBB7_479:                              #   in Loop: Header=BB7_62 Depth=2
	move	$a0, $s7
.LBB7_480:                              # %while.end240
                                        #   in Loop: Header=BB7_62 Depth=2
	st.d	$s2, $sp, 192                   # 8-byte Folded Spill
	bstrpick.d	$a1, $s1, 31, 29
	st.b	$a1, $fp, 89
	addi.w	$a1, $a0, 0
	slli.d	$s1, $s1, 3
	ori	$a2, $zero, 18
	bltu	$a2, $a1, .LBB7_491
# %bb.481:                              # %while.body252.preheader
                                        #   in Loop: Header=BB7_62 Depth=2
	addi.d	$s3, $a0, -19
	ori	$a1, $zero, 19
	sub.d	$s4, $a1, $a0
	ori	$s2, $zero, 32
	b	.LBB7_485
.LBB7_482:                              # %if.else.i987
                                        #   in Loop: Header=BB7_485 Depth=3
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 1
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 92
	ori	$a0, $zero, 2
.LBB7_483:                              # %if.end261
                                        #   in Loop: Header=BB7_485 Depth=3
	ld.d	$s8, $fp, 104
	st.d	$s8, $fp, 112
	add.d	$s5, $s8, $a0
	st.d	$s5, $fp, 120
.LBB7_484:                              # %if.end264
                                        #   in Loop: Header=BB7_485 Depth=3
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s4
	or	$s1, $a0, $s1
	addi.d	$s8, $s8, 2
	addi.w	$s3, $s3, 16
	addi.d	$s4, $s4, -16
	bgez	$s3, .LBB7_498
.LBB7_485:                              # %while.body252
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.d	$a0, $s8, 1
	bltu	$a0, $s5, .LBB7_484
# %bb.486:                              # %if.then256
                                        #   in Loop: Header=BB7_485 Depth=3
	ld.d	$a3, $s6, 8
	ld.d	$a1, $fp, 104
	ld.w	$a2, $fp, 152
	beqz	$a3, .LBB7_488
# %bb.487:                              # %cond.true.i964
                                        #   in Loop: Header=BB7_485 Depth=3
	ld.d	$a0, $s6, 0
	jirl	$ra, $a3, 0
	bgez	$a0, .LBB7_489
	b	.LBB7_623
.LBB7_488:                              # %cond.false.i992
                                        #   in Loop: Header=BB7_485 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB7_623
.LBB7_489:                              # %if.end.i972
                                        #   in Loop: Header=BB7_485 Depth=3
	bnez	$a0, .LBB7_483
# %bb.490:                              # %if.then7.i982
                                        #   in Loop: Header=BB7_485 Depth=3
	ld.bu	$a0, $fp, 92
	beqz	$a0, .LBB7_482
	b	.LBB7_622
.LBB7_491:                              #   in Loop: Header=BB7_62 Depth=2
	addi.w	$a0, $a0, -3
	ori	$s2, $zero, 32
	b	.LBB7_499
.LBB7_492:                              #   in Loop: Header=BB7_62 Depth=2
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	move	$s2, $a2
	b	.LBB7_494
.LBB7_493:                              #   in Loop: Header=BB7_62 Depth=2
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
.LBB7_494:                              # %sw.epilog1422
                                        #   in Loop: Header=BB7_62 Depth=2
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	bgez	$a0, .LBB7_497
# %bb.495:                              # %if.then1425
                                        #   in Loop: Header=BB7_62 Depth=2
	ld.w	$a2, $fp, 76
	sub.w	$a1, $zero, $a0
	bltu	$a2, $a1, .LBB7_635
# %bb.496:                              # %if.end1434
                                        #   in Loop: Header=BB7_62 Depth=2
	add.d	$a0, $a2, $a0
	st.w	$a0, $fp, 76
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
.LBB7_497:                              # %if.end1438
                                        #   in Loop: Header=BB7_62 Depth=2
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	sub.w	$a0, $a0, $a1
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	bgtz	$a0, .LBB7_62
	b	.LBB7_588
.LBB7_498:                              # %while.end278.loopexit
                                        #   in Loop: Header=BB7_62 Depth=2
	addi.w	$a0, $s3, 16
.LBB7_499:                              # %while.end278
                                        #   in Loop: Header=BB7_62 Depth=2
	slli.d	$s3, $s1, 16
	ori	$a1, $zero, 23
	blt	$a1, $a0, .LBB7_511
# %bb.500:                              # %while.body288.preheader
                                        #   in Loop: Header=BB7_62 Depth=2
	addi.d	$s4, $a0, -32
	sub.d	$s6, $s2, $a0
	b	.LBB7_504
.LBB7_501:                              # %if.else.i1022
                                        #   in Loop: Header=BB7_504 Depth=3
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 1
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 92
	ori	$a0, $zero, 2
.LBB7_502:                              # %if.end297
                                        #   in Loop: Header=BB7_504 Depth=3
	ld.d	$s8, $fp, 104
	st.d	$s8, $fp, 112
	add.d	$s5, $s8, $a0
	st.d	$s5, $fp, 120
.LBB7_503:                              # %if.end300
                                        #   in Loop: Header=BB7_504 Depth=3
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s6
	or	$s3, $a0, $s3
	addi.d	$s8, $s8, 2
	addi.w	$s4, $s4, 16
	addi.w	$a0, $zero, -8
	addi.d	$s6, $s6, -16
	bge	$s4, $a0, .LBB7_512
.LBB7_504:                              # %while.body288
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.d	$a0, $s8, 1
	bltu	$a0, $s5, .LBB7_503
# %bb.505:                              # %if.then292
                                        #   in Loop: Header=BB7_504 Depth=3
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a3, $a0, 8
	ld.d	$a1, $fp, 104
	ld.w	$a2, $fp, 152
	beqz	$a3, .LBB7_507
# %bb.506:                              # %cond.true.i999
                                        #   in Loop: Header=BB7_504 Depth=3
	ld.d	$a0, $a0, 0
	jirl	$ra, $a3, 0
	b	.LBB7_508
.LBB7_507:                              # %cond.false.i1027
                                        #   in Loop: Header=BB7_504 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB7_508:                              # %cond.end.i1004
                                        #   in Loop: Header=BB7_504 Depth=3
	bltz	$a0, .LBB7_623
# %bb.509:                              # %if.end.i1007
                                        #   in Loop: Header=BB7_504 Depth=3
	bnez	$a0, .LBB7_502
# %bb.510:                              # %if.then7.i1017
                                        #   in Loop: Header=BB7_504 Depth=3
	ld.bu	$a0, $fp, 92
	beqz	$a0, .LBB7_501
	b	.LBB7_622
.LBB7_511:                              #   in Loop: Header=BB7_62 Depth=2
	addi.w	$a0, $a0, -16
	b	.LBB7_513
.LBB7_512:                              # %while.end314.loopexit
                                        #   in Loop: Header=BB7_62 Depth=2
	addi.w	$a0, $s4, 16
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
.LBB7_513:                              # %while.end314
                                        #   in Loop: Header=BB7_62 Depth=2
	bstrpick.d	$a2, $s3, 31, 24
	slli.d	$s3, $s3, 8
	addi.w	$s4, $a0, -8
	ld.bu	$a1, $fp, 89
	srli.d	$a3, $s1, 16
	bstrins.d	$a2, $a3, 23, 8
	st.w	$a2, $fp, 72
	st.w	$a2, $fp, 76
	ori	$a2, $zero, 1
	beq	$a1, $a2, .LBB7_581
# %bb.514:                              # %while.end314
                                        #   in Loop: Header=BB7_62 Depth=2
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB7_530
# %bb.515:                              # %while.end314
                                        #   in Loop: Header=BB7_62 Depth=2
	ori	$a0, $zero, 2
	bne	$a1, $a0, .LBB7_640
# %bb.516:                              # %while.cond329.preheader.preheader
                                        #   in Loop: Header=BB7_62 Depth=2
	move	$s1, $zero
	b	.LBB7_518
.LBB7_517:                              # %while.end358
                                        #   in Loop: Header=BB7_518 Depth=3
	bstrpick.d	$a0, $s3, 31, 29
	slli.d	$s3, $s3, 3
	addi.d	$a1, $fp, 1274
	stx.b	$a0, $a1, $s1
	addi.d	$s1, $s1, 1
	addi.w	$s4, $s4, -3
	ori	$a0, $zero, 8
	beq	$s1, $a0, .LBB7_580
.LBB7_518:                              # %while.cond329.preheader
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_523 Depth 4
	ori	$a0, $zero, 2
	blt	$a0, $s4, .LBB7_517
# %bb.519:                              # %while.body332.preheader
                                        #   in Loop: Header=BB7_518 Depth=3
	ori	$a0, $zero, 16
	sub.d	$s6, $a0, $s4
	b	.LBB7_523
.LBB7_520:                              # %if.else.i1057
                                        #   in Loop: Header=BB7_523 Depth=4
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 1
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 92
	ori	$a0, $zero, 2
.LBB7_521:                              # %if.end341
                                        #   in Loop: Header=BB7_523 Depth=4
	ld.d	$s8, $fp, 104
	st.d	$s8, $fp, 112
	add.d	$s5, $s8, $a0
	st.d	$s5, $fp, 120
.LBB7_522:                              # %if.end344
                                        #   in Loop: Header=BB7_523 Depth=4
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s6
	or	$s3, $a0, $s3
	addi.w	$s4, $s7, 16
	addi.d	$s8, $s8, 2
	addi.w	$a0, $zero, -13
	addi.d	$s6, $s6, -16
	bge	$s7, $a0, .LBB7_517
.LBB7_523:                              # %while.body332
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        #       Parent Loop BB7_518 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.d	$a0, $s8, 1
	move	$s7, $s4
	bltu	$a0, $s5, .LBB7_522
# %bb.524:                              # %if.then336
                                        #   in Loop: Header=BB7_523 Depth=4
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a3, $a0, 8
	ld.d	$a1, $fp, 104
	ld.w	$a2, $fp, 152
	beqz	$a3, .LBB7_526
# %bb.525:                              # %cond.true.i1034
                                        #   in Loop: Header=BB7_523 Depth=4
	ld.d	$a0, $a0, 0
	jirl	$ra, $a3, 0
	b	.LBB7_527
.LBB7_526:                              # %cond.false.i1062
                                        #   in Loop: Header=BB7_523 Depth=4
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB7_527:                              # %cond.end.i1039
                                        #   in Loop: Header=BB7_523 Depth=4
	bltz	$a0, .LBB7_623
# %bb.528:                              # %if.end.i1042
                                        #   in Loop: Header=BB7_523 Depth=4
	bnez	$a0, .LBB7_521
# %bb.529:                              # %if.then7.i1052
                                        #   in Loop: Header=BB7_523 Depth=4
	ld.bu	$a0, $fp, 92
	beqz	$a0, .LBB7_520
	b	.LBB7_622
.LBB7_530:                              # %sw.bb471
                                        #   in Loop: Header=BB7_62 Depth=2
	ori	$s2, $zero, 1
	st.b	$s2, $fp, 88
	ori	$a1, $zero, 23
	blt	$a1, $a0, .LBB7_543
# %bb.531:                              # %while.body476.preheader
                                        #   in Loop: Header=BB7_62 Depth=2
	addi.d	$s1, $a0, -24
	b	.LBB7_534
.LBB7_532:                              # %if.end485
                                        #   in Loop: Header=BB7_534 Depth=3
	ld.d	$s8, $fp, 104
	st.d	$s8, $fp, 112
	add.d	$s5, $s8, $a0
	st.d	$s5, $fp, 120
.LBB7_533:                              # %if.end488
                                        #   in Loop: Header=BB7_534 Depth=3
	addi.w	$s1, $s1, 16
	addi.d	$s8, $s8, 2
	bgez	$s1, .LBB7_542
.LBB7_534:                              # %while.body476
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.d	$a0, $s8, 1
	bltu	$a0, $s5, .LBB7_533
# %bb.535:                              # %if.then480
                                        #   in Loop: Header=BB7_534 Depth=3
	ld.d	$a3, $s6, 8
	ld.d	$a1, $fp, 104
	ld.w	$a2, $fp, 152
	beqz	$a3, .LBB7_537
# %bb.536:                              # %cond.true.i1069
                                        #   in Loop: Header=BB7_534 Depth=3
	ld.d	$a0, $s6, 0
	jirl	$ra, $a3, 0
	b	.LBB7_538
.LBB7_537:                              # %cond.false.i1097
                                        #   in Loop: Header=BB7_534 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB7_538:                              # %cond.end.i1074
                                        #   in Loop: Header=BB7_534 Depth=3
	bltz	$a0, .LBB7_623
# %bb.539:                              # %if.end.i1077
                                        #   in Loop: Header=BB7_534 Depth=3
	bnez	$a0, .LBB7_532
# %bb.540:                              # %if.then7.i1087
                                        #   in Loop: Header=BB7_534 Depth=3
	ld.bu	$a0, $fp, 92
	bnez	$a0, .LBB7_622
# %bb.541:                              # %if.else.i1092
                                        #   in Loop: Header=BB7_534 Depth=3
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 1
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 0
	st.b	$s2, $fp, 92
	ori	$a0, $zero, 2
	b	.LBB7_532
.LBB7_542:                              # %while.end502.loopexit
                                        #   in Loop: Header=BB7_62 Depth=2
	addi.w	$s4, $s1, 16
.LBB7_543:                              # %while.end502
                                        #   in Loop: Header=BB7_62 Depth=2
	addi.d	$a0, $s4, -16
	sltui	$a0, $a0, 1
	addi.w	$a1, $zero, -2
	masknez	$a0, $a1, $a0
	add.d	$a0, $s8, $a0
	ld.d	$s2, $sp, 192                   # 8-byte Folded Reload
	bne	$a0, $s5, .LBB7_546
# %bb.544:                              # %if.then515
                                        #   in Loop: Header=BB7_62 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_627
# %bb.545:                              # %if.end520
                                        #   in Loop: Header=BB7_62 Depth=2
	ld.d	$a0, $fp, 112
	ld.d	$s5, $fp, 120
.LBB7_546:                              # %if.end523
                                        #   in Loop: Header=BB7_62 Depth=2
	ld.bu	$s1, $a0, 0
	addi.d	$a0, $a0, 1
	bne	$a0, $s5, .LBB7_549
# %bb.547:                              # %if.then515.1
                                        #   in Loop: Header=BB7_62 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_627
# %bb.548:                              # %if.end520.1
                                        #   in Loop: Header=BB7_62 Depth=2
	ld.d	$a0, $fp, 112
	ld.d	$s5, $fp, 120
.LBB7_549:                              # %if.end523.1
                                        #   in Loop: Header=BB7_62 Depth=2
	ld.bu	$s7, $a0, 0
	addi.d	$a0, $a0, 1
	bne	$a0, $s5, .LBB7_552
# %bb.550:                              # %if.then515.2
                                        #   in Loop: Header=BB7_62 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_627
# %bb.551:                              # %if.end520.2
                                        #   in Loop: Header=BB7_62 Depth=2
	ld.d	$a0, $fp, 112
	ld.d	$s5, $fp, 120
.LBB7_552:                              # %if.end523.2
                                        #   in Loop: Header=BB7_62 Depth=2
	ld.bu	$s8, $a0, 0
	addi.d	$a0, $a0, 1
	bne	$a0, $s5, .LBB7_555
# %bb.553:                              # %if.then515.3
                                        #   in Loop: Header=BB7_62 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_627
# %bb.554:                              # %if.end520.3
                                        #   in Loop: Header=BB7_62 Depth=2
	ld.d	$a0, $fp, 112
	ld.d	$s5, $fp, 120
.LBB7_555:                              # %if.end523.3
                                        #   in Loop: Header=BB7_62 Depth=2
	ld.bu	$a1, $a0, 0
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	addi.d	$a0, $a0, 1
	bne	$a0, $s5, .LBB7_558
# %bb.556:                              # %if.then515.4
                                        #   in Loop: Header=BB7_62 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_627
# %bb.557:                              # %if.end520.4
                                        #   in Loop: Header=BB7_62 Depth=2
	ld.d	$a0, $fp, 112
	ld.d	$s5, $fp, 120
.LBB7_558:                              # %if.end523.4
                                        #   in Loop: Header=BB7_62 Depth=2
	ld.bu	$a1, $a0, 0
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	addi.d	$a0, $a0, 1
	bne	$a0, $s5, .LBB7_561
# %bb.559:                              # %if.then515.5
                                        #   in Loop: Header=BB7_62 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_627
# %bb.560:                              # %if.end520.5
                                        #   in Loop: Header=BB7_62 Depth=2
	ld.d	$a0, $fp, 112
	ld.d	$s5, $fp, 120
.LBB7_561:                              # %if.end523.5
                                        #   in Loop: Header=BB7_62 Depth=2
	ld.bu	$a1, $a0, 0
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a0, $a0, 1
	bne	$a0, $s5, .LBB7_564
# %bb.562:                              # %if.then515.6
                                        #   in Loop: Header=BB7_62 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_627
# %bb.563:                              # %if.end520.6
                                        #   in Loop: Header=BB7_62 Depth=2
	ld.d	$a0, $fp, 112
	ld.d	$s5, $fp, 120
.LBB7_564:                              # %if.end523.6
                                        #   in Loop: Header=BB7_62 Depth=2
	ld.bu	$a1, $a0, 0
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a0, $a0, 1
	bne	$a0, $s5, .LBB7_567
# %bb.565:                              # %if.then515.7
                                        #   in Loop: Header=BB7_62 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_627
# %bb.566:                              # %if.end520.7
                                        #   in Loop: Header=BB7_62 Depth=2
	ld.d	$a0, $fp, 112
	ld.d	$s5, $fp, 120
.LBB7_567:                              # %if.end523.7
                                        #   in Loop: Header=BB7_62 Depth=2
	ld.bu	$a1, $a0, 0
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $a0, 1
	bne	$a0, $s5, .LBB7_570
# %bb.568:                              # %if.then515.8
                                        #   in Loop: Header=BB7_62 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_627
# %bb.569:                              # %if.end520.8
                                        #   in Loop: Header=BB7_62 Depth=2
	ld.d	$a0, $fp, 112
	ld.d	$s5, $fp, 120
.LBB7_570:                              # %if.end523.8
                                        #   in Loop: Header=BB7_62 Depth=2
	ld.bu	$s6, $a0, 0
	addi.d	$a0, $a0, 1
	bne	$a0, $s5, .LBB7_573
# %bb.571:                              # %if.then515.9
                                        #   in Loop: Header=BB7_62 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_627
# %bb.572:                              # %if.end520.9
                                        #   in Loop: Header=BB7_62 Depth=2
	ld.d	$a0, $fp, 112
	ld.d	$s5, $fp, 120
.LBB7_573:                              # %if.end523.9
                                        #   in Loop: Header=BB7_62 Depth=2
	ld.bu	$s3, $a0, 0
	addi.d	$a0, $a0, 1
	bne	$a0, $s5, .LBB7_576
# %bb.574:                              # %if.then515.10
                                        #   in Loop: Header=BB7_62 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_627
# %bb.575:                              # %if.end520.10
                                        #   in Loop: Header=BB7_62 Depth=2
	ld.d	$a0, $fp, 112
	ld.d	$s5, $fp, 120
.LBB7_576:                              # %if.end523.10
                                        #   in Loop: Header=BB7_62 Depth=2
	ld.bu	$s4, $a0, 0
	addi.d	$a0, $a0, 1
	bne	$a0, $s5, .LBB7_579
# %bb.577:                              # %if.then515.11
                                        #   in Loop: Header=BB7_62 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_627
# %bb.578:                              # %if.end520.11
                                        #   in Loop: Header=BB7_62 Depth=2
	ld.d	$a0, $fp, 112
	ld.d	$s5, $fp, 120
.LBB7_579:                              # %if.end523.11
                                        #   in Loop: Header=BB7_62 Depth=2
	move	$a1, $s7
	move	$s7, $zero
	move	$a2, $s1
	move	$s1, $zero
	slli.d	$a1, $a1, 8
	or	$a1, $a1, $a2
	slli.d	$a2, $s8, 16
	or	$a1, $a1, $a2
	addi.d	$s8, $a0, 1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	slli.d	$a2, $a2, 24
	or	$a1, $a1, $a2
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 8
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	or	$a1, $a1, $a2
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	slli.d	$a2, $a2, 16
	or	$a1, $a1, $a2
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	slli.d	$a2, $a2, 24
	or	$a1, $a1, $a2
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	slli.d	$a1, $s3, 8
	ld.b	$a0, $a0, 0
	or	$a1, $a1, $s6
	slli.d	$a2, $s4, 16
	or	$a1, $a1, $a2
	slli.d	$a0, $a0, 24
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	addi.d	$s4, $fp, 240
	ori	$s3, $zero, 1
	b	.LBB7_63
.LBB7_580:                              # %for.end
                                        #   in Loop: Header=BB7_62 Depth=2
	ori	$a0, $zero, 8
	ori	$a1, $zero, 7
	addi.d	$a2, $fp, 1274
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(lzx_make_decode_table)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	bnez	$a0, .LBB7_642
.LBB7_581:                              # %do.body376
                                        #   in Loop: Header=BB7_62 Depth=2
	st.d	$s8, $fp, 112
	st.d	$s5, $fp, 120
	st.w	$s3, $fp, 144
	st.w	$s4, $fp, 148
	ori	$a3, $zero, 256
	move	$a0, $fp
	addi.d	$s4, $fp, 240
	move	$a1, $s4
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lzx_read_lens)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_627
# %bb.582:                              # %do.body389
                                        #   in Loop: Header=BB7_62 Depth=2
	ld.bu	$a0, $fp, 91
	slli.d	$a0, $a0, 3
	addi.d	$a3, $a0, 256
	ori	$a2, $zero, 256
	move	$a0, $fp
	move	$a1, $s4
	pcaddu18i	$ra, %call36(lzx_read_lens)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_627
# %bb.583:                              # %do.body416
                                        #   in Loop: Header=BB7_62 Depth=2
	vld	$vr0, $fp, 112
	vst	$vr0, $sp, 176                  # 16-byte Folded Spill
	ld.w	$s1, $fp, 144
	ld.w	$s2, $fp, 148
	ori	$a0, $zero, 656
	ori	$a1, $zero, 12
	move	$a2, $s4
	addi.d	$a3, $fp, 1554
	pcaddu18i	$ra, %call36(lzx_make_decode_table)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_639
# %bb.584:                              # %if.end432
                                        #   in Loop: Header=BB7_62 Depth=2
	ld.bu	$a0, $fp, 472
	beqz	$a0, .LBB7_586
# %bb.585:                              # %if.then438
                                        #   in Loop: Header=BB7_62 Depth=2
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 88
.LBB7_586:                              # %do.body441
                                        #   in Loop: Header=BB7_62 Depth=2
	vld	$vr0, $sp, 176                  # 16-byte Folded Reload
	vst	$vr0, $fp, 112
	st.w	$s1, $fp, 144
	st.w	$s2, $fp, 148
	ori	$a3, $zero, 249
	move	$a0, $fp
	addi.d	$s2, $fp, 960
	move	$a1, $s2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lzx_read_lens)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_627
# %bb.587:                              # %do.body454
                                        #   in Loop: Header=BB7_62 Depth=2
	ld.d	$s8, $fp, 112
	ld.d	$s5, $fp, 120
	ld.w	$s1, $fp, 144
	ld.w	$s7, $fp, 148
	ori	$a0, $zero, 250
	ori	$a1, $zero, 12
	move	$a2, $s2
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(lzx_make_decode_table)
	jirl	$ra, $ra, 0
	ori	$s3, $zero, 1
	ld.d	$s2, $sp, 192                   # 8-byte Folded Reload
	beqz	$a0, .LBB7_63
	b	.LBB7_641
.LBB7_588:                              # %while.end1439.loopexit
                                        #   in Loop: Header=BB7_11 Depth=1
	ld.w	$a0, $fp, 48
.LBB7_589:                              # %while.end1439
                                        #   in Loop: Header=BB7_11 Depth=1
	sub.w	$a1, $s2, $a0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	addi.w	$s3, $a0, 0
	bne	$a1, $s3, .LBB7_628
# %bb.590:                              # %if.end1448
                                        #   in Loop: Header=BB7_11 Depth=1
	addi.w	$a0, $s7, -1
	ori	$a1, $zero, 14
	bltu	$a1, $a0, .LBB7_595
# %bb.591:                              # %while.body1455
                                        #   in Loop: Header=BB7_11 Depth=1
	addi.d	$a0, $s8, 1
	bltu	$a0, $s5, .LBB7_594
# %bb.592:                              # %if.then1459
                                        #   in Loop: Header=BB7_11 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_627
# %bb.593:                              # %if.end1464
                                        #   in Loop: Header=BB7_11 Depth=1
	ld.d	$s8, $fp, 112
	ld.d	$s5, $fp, 120
.LBB7_594:                              # %if.end1467
                                        #   in Loop: Header=BB7_11 Depth=1
	ld.hu	$a0, $s8, 0
	ori	$a1, $zero, 16
	sub.d	$a1, $a1, $s7
	sll.w	$a0, $a0, $a1
	or	$s1, $a0, $s1
	ori	$s7, $s7, 16
	addi.d	$s8, $s8, 2
.LBB7_595:                              # %if.end1482
                                        #   in Loop: Header=BB7_11 Depth=1
	ld.d	$a0, $fp, 128
	ld.d	$a1, $fp, 136
	bne	$a0, $a1, .LBB7_629
# %bb.596:                              # %if.end1502
                                        #   in Loop: Header=BB7_11 Depth=1
	ld.bu	$a0, $fp, 88
	ld.w	$s6, $fp, 80
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	bstrpick.d	$s4, $a1, 31, 0
	beqz	$a0, .LBB7_608
# %bb.597:                              # %land.lhs.true1506
                                        #   in Loop: Header=BB7_11 Depth=1
	beqz	$s6, .LBB7_609
# %bb.598:                              # %land.lhs.true1509
                                        #   in Loop: Header=BB7_11 Depth=1
	ori	$a0, $zero, 11
	bltu	$s3, $a0, .LBB7_610
# %bb.599:                              # %land.lhs.true1509
                                        #   in Loop: Header=BB7_11 Depth=1
	ld.w	$a0, $fp, 52
	lu12i.w	$a1, 8
	ori	$a1, $a1, 1
	bgeu	$a0, $a1, .LBB7_610
# %bb.600:                              # %while.body1532.preheader
                                        #   in Loop: Header=BB7_11 Depth=1
	st.d	$s2, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	addi.d	$a0, $a0, -10
	bstrpick.d	$a0, $a0, 31, 0
	ld.d	$a1, $fp, 32
	ld.wu	$a2, $fp, 48
	ld.w	$s3, $fp, 84
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	st.d	$a3, $sp, 128                   # 8-byte Folded Spill
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	add.d	$s2, $s0, $a0
	st.d	$s0, $fp, 128
	add.d	$a1, $a1, $a2
	move	$a0, $s0
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	b	.LBB7_602
.LBB7_601:                              #   in Loop: Header=BB7_602 Depth=2
	addi.d	$s0, $s0, 1
	ori	$a1, $zero, 1
	add.d	$s3, $s3, $a1
	bgeu	$s0, $s2, .LBB7_607
.LBB7_602:                              # %while.body1532
                                        #   Parent Loop BB7_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a1, $s0, 0
	ori	$a2, $zero, 232
	bne	$a1, $a2, .LBB7_601
# %bb.603:                              # %if.end1539
                                        #   in Loop: Header=BB7_602 Depth=2
	ld.bu	$a1, $s0, 3
	ld.hu	$a2, $s0, 1
	ld.b	$a3, $s0, 4
	slli.w	$a1, $a1, 16
	or	$a1, $a2, $a1
	slli.w	$a2, $a3, 24
	or	$a1, $a1, $a2
	sub.w	$a3, $zero, $s3
	blt	$a1, $a3, .LBB7_606
# %bb.604:                              # %if.end1539
                                        #   in Loop: Header=BB7_602 Depth=2
	bge	$a1, $s6, .LBB7_606
# %bb.605:                              # %if.then1560
                                        #   in Loop: Header=BB7_602 Depth=2
	slti	$a2, $a2, 0
	masknez	$a3, $a3, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	add.d	$a1, $a2, $a1
	st.w	$a1, $s0, 1
.LBB7_606:                              # %if.end1577
                                        #   in Loop: Header=BB7_602 Depth=2
	addi.d	$s0, $s0, 5
	ori	$a1, $zero, 5
	add.d	$s3, $s3, $a1
	bltu	$s0, $s2, .LBB7_602
.LBB7_607:                              # %while.end1580
                                        #   in Loop: Header=BB7_11 Depth=1
	ld.w	$a0, $fp, 84
	ld.d	$a1, $fp, 128
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	st.w	$a0, $fp, 84
	ld.d	$s2, $sp, 192                   # 8-byte Folded Reload
	b	.LBB7_612
.LBB7_608:                              # %if.else1583
                                        #   in Loop: Header=BB7_11 Depth=1
	ld.d	$a0, $fp, 32
	ld.wu	$a1, $fp, 48
	add.d	$a1, $a0, $a1
	st.d	$a1, $fp, 128
	bnez	$s6, .LBB7_611
	b	.LBB7_612
.LBB7_609:                              # %if.else1583.thread
                                        #   in Loop: Header=BB7_11 Depth=1
	ld.d	$a0, $fp, 32
	ld.wu	$a1, $fp, 48
	add.d	$a1, $a0, $a1
	st.d	$a1, $fp, 128
	b	.LBB7_612
.LBB7_610:                              # %if.else1583.thread3374
                                        #   in Loop: Header=BB7_11 Depth=1
	ld.d	$a0, $fp, 32
	ld.wu	$a1, $fp, 48
	add.d	$a1, $a0, $a1
	st.d	$a1, $fp, 128
.LBB7_611:                              # %if.then1591
                                        #   in Loop: Header=BB7_11 Depth=1
	ld.w	$a0, $fp, 84
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	st.w	$a0, $fp, 84
.LBB7_612:                              # %if.end1595
                                        #   in Loop: Header=BB7_11 Depth=1
	add.d	$a0, $a1, $s4
	st.d	$a0, $fp, 136
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	slt	$a0, $a4, $s4
	ld.bu	$a2, $fp, 8
	masknez	$a3, $s4, $a0
	maskeqz	$a0, $a4, $a0
	or	$a0, $a0, $a3
	addi.w	$s3, $a0, 0
	beqz	$a2, .LBB7_615
# %bb.613:                              # %land.lhs.true1611
                                        #   in Loop: Header=BB7_11 Depth=1
	ld.w	$a0, $fp, 4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	addi.d	$s4, $fp, 240
	bne	$a0, $s3, .LBB7_623
# %bb.614:                              # %land.lhs.true1611.if.end1619_crit_edge
                                        #   in Loop: Header=BB7_11 Depth=1
	ld.d	$a1, $fp, 128
	b	.LBB7_616
.LBB7_615:                              #   in Loop: Header=BB7_11 Depth=1
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	addi.d	$s4, $fp, 240
.LBB7_616:                              # %if.end1619
                                        #   in Loop: Header=BB7_11 Depth=1
	ld.d	$a0, $fp, 16
	add.d	$a1, $a1, $s3
	st.d	$a1, $fp, 128
	add.d	$a0, $a0, $s3
	ld.w	$a2, $fp, 48
	st.d	$a0, $fp, 16
	ld.w	$a0, $fp, 52
	ld.w	$a1, $fp, 40
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	add.w	$a2, $a2, $a3
	st.w	$a2, $fp, 48
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, 52
	bne	$a2, $a1, .LBB7_618
# %bb.617:                              # %if.then1641
                                        #   in Loop: Header=BB7_11 Depth=1
	st.w	$zero, $fp, 48
.LBB7_618:                              # %if.end1643
                                        #   in Loop: Header=BB7_11 Depth=1
	andi	$a2, $s7, 15
	sll.w	$s1, $s1, $a2
	bstrins.d	$s7, $zero, 3, 0
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	sub.d	$a2, $a2, $s3
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	xor	$a1, $s2, $a1
	sltui	$a1, $a1, 1
	masknez	$s2, $s2, $a1
	ori	$s3, $zero, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	lu12i.w	$a2, 8
	bltu	$a0, $a1, .LBB7_11
# %bb.619:                              # %while.end1644
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	beqz	$a0, .LBB7_637
.LBB7_620:                              # %if.then1646
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -124
	b	.LBB7_624
.LBB7_621:
	move	$a0, $zero
	b	.LBB7_625
.LBB7_622:                              # %if.then9.i
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB7_623:                              # %if.then18
	addi.w	$a0, $zero, -123
.LBB7_624:                              # %cleanup
	move	$a1, $a0
	lu32i.d	$a1, 0
	st.w	$a1, $fp, 96
.LBB7_625:                              # %cleanup
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
.LBB7_626:                              # %if.then647
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -124
	b	.LBB7_624
.LBB7_627:                              # %if.then203
	ld.w	$a0, $fp, 96
	b	.LBB7_625
.LBB7_628:                              # %if.then1444
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	b	.LBB7_630
.LBB7_629:                              # %if.then1495
	sub.d	$a1, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
.LBB7_630:                              # %cleanup
	move	$a2, $s3
.LBB7_631:                              # %cleanup
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB7_632:                              # %sw.default1420
	addi.w	$a0, $zero, -124
	b	.LBB7_624
.LBB7_633:                              # %if.then818
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -124
	b	.LBB7_624
.LBB7_634:                              # %if.then52
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -124
	b	.LBB7_624
.LBB7_635:                              # %if.then1430
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	b	.LBB7_631
.LBB7_636:                              # %if.then830
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -124
	b	.LBB7_624
.LBB7_637:                              # %do.body1649
	move	$a0, $zero
	st.d	$s8, $fp, 112
	st.d	$s5, $fp, 120
	st.w	$s1, $fp, 144
	st.w	$s7, $fp, 148
	st.w	$s2, $fp, 44
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	st.w	$a1, $fp, 60
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	st.w	$a1, $fp, 64
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.w	$a1, $fp, 68
	b	.LBB7_625
.LBB7_638:                              # %if.then633
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -124
	b	.LBB7_624
.LBB7_639:                              # %if.then430
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -124
	b	.LBB7_624
.LBB7_640:                              # %sw.default
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -124
	b	.LBB7_624
.LBB7_641:                              # %if.then468
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -124
	b	.LBB7_624
.LBB7_642:                              # %if.then371
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -124
	b	.LBB7_624
.Lfunc_end7:
	.size	lzx_decompress, .Lfunc_end7-lzx_decompress
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI7_0:
	.word	.LBB7_431-.LJTI7_0
	.word	.LBB7_421-.LJTI7_0
	.word	.LBB7_422-.LJTI7_0
	.word	.LBB7_423-.LJTI7_0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function lzx_read_input
	.type	lzx_read_input,@function
lzx_read_input:                         # @lzx_read_input
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	lu12i.w	$a0, 13
	ori	$a0, $a0, 1632
	add.d	$a0, $fp, $a0
	ld.d	$a3, $a0, 8
	beqz	$a3, .LBB8_2
# %bb.1:                                # %cond.true
	ld.d	$a0, $a0, 0
	ld.d	$a1, $fp, 104
	ld.w	$a2, $fp, 152
	jirl	$ra, $a3, 0
	bgez	$a0, .LBB8_3
	b	.LBB8_7
.LBB8_2:                                # %cond.false
	ld.w	$a0, $fp, 0
	ld.d	$a1, $fp, 104
	ld.w	$a2, $fp, 152
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB8_7
.LBB8_3:                                # %if.end
	beqz	$a0, .LBB8_5
.LBB8_4:                                # %if.end17
	ld.d	$a2, $fp, 104
	move	$a1, $zero
	st.d	$a2, $fp, 112
	add.d	$a0, $a2, $a0
	st.d	$a0, $fp, 120
	b	.LBB8_8
.LBB8_5:                                # %if.then7
	ld.bu	$a0, $fp, 92
	beqz	$a0, .LBB8_9
# %bb.6:                                # %if.then9
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB8_7:                                # %if.then
	addi.w	$a1, $zero, -123
	move	$a0, $a1
	lu32i.d	$a0, 0
	st.w	$a0, $fp, 96
.LBB8_8:                                # %cleanup
	move	$a0, $a1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB8_9:                                # %if.else
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 1
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 92
	ori	$a0, $zero, 2
	b	.LBB8_4
.Lfunc_end8:
	.size	lzx_read_input, .Lfunc_end8-lzx_read_input
                                        # -- End function
	.p2align	5                               # -- Begin function lzx_make_decode_table
	.type	lzx_make_decode_table,@function
lzx_make_decode_table:                  # @lzx_make_decode_table
# %bb.0:                                # %entry
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
	move	$a7, $zero
	ori	$t5, $zero, 1
	sll.w	$a6, $t5, $a1
	bstrpick.d	$a5, $a6, 31, 1
	andi	$t0, $a1, 255
	bstrpick.d	$a4, $a0, 15, 0
	ori	$a0, $zero, 4
	ori	$t1, $zero, 16
	move	$t2, $a5
	b	.LBB9_2
	.p2align	4, , 16
.LBB9_1:                                # %for.end22
                                        #   in Loop: Header=BB9_2 Depth=1
	bstrpick.d	$t2, $t2, 31, 1
	addi.d	$t5, $t3, 1
	bgeu	$t3, $t0, .LBB9_28
.LBB9_2:                                # %for.cond2.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_6 Depth 2
                                        #       Child Loop BB9_14 Depth 3
                                        #       Child Loop BB9_18 Depth 3
                                        #       Child Loop BB9_20 Depth 3
                                        #     Child Loop BB9_24 Depth 2
	addi.w	$t4, $t2, 0
	move	$t3, $t5
	beqz	$t4, .LBB9_22
# %bb.3:                                # %for.body6.preheader
                                        #   in Loop: Header=BB9_2 Depth=1
	move	$t5, $zero
	sub.w	$t6, $zero, $t2
	andi	$t7, $t2, 12
	bstrpick.d	$t8, $t2, 30, 4
	slli.w	$t8, $t8, 4
	andi	$fp, $t2, 15
	bstrpick.d	$s0, $t2, 30, 2
	slli.w	$s0, $s0, 2
	andi	$s1, $t2, 3
	bstrpick.d	$s2, $t2, 31, 2
	slli.d	$s2, $s2, 2
	sub.d	$s2, $zero, $s2
	b	.LBB9_6
	.p2align	4, , 16
.LBB9_4:                                #   in Loop: Header=BB9_6 Depth=2
	move	$a7, $s3
.LBB9_5:                                # %for.inc
                                        #   in Loop: Header=BB9_6 Depth=2
	addi.d	$t5, $t5, 1
	bstrpick.d	$s3, $t5, 15, 0
	bgeu	$s3, $a4, .LBB9_1
.LBB9_6:                                # %for.body6
                                        #   Parent Loop BB9_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_14 Depth 3
                                        #       Child Loop BB9_18 Depth 3
                                        #       Child Loop BB9_20 Depth 3
	bstrpick.d	$s3, $t5, 15, 0
	ldx.bu	$s3, $a2, $s3
	bne	$s3, $t3, .LBB9_5
# %bb.7:                                # %if.end
                                        #   in Loop: Header=BB9_6 Depth=2
	add.w	$s3, $a7, $t2
	bltu	$a6, $s3, .LBB9_26
# %bb.8:                                # %iter.check
                                        #   in Loop: Header=BB9_6 Depth=2
	bltu	$t4, $a0, .LBB9_12
# %bb.9:                                # %iter.check
                                        #   in Loop: Header=BB9_6 Depth=2
	bltu	$t6, $a7, .LBB9_12
# %bb.10:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB9_6 Depth=2
	bgeu	$t4, $t1, .LBB9_13
# %bb.11:                               #   in Loop: Header=BB9_6 Depth=2
	move	$s6, $zero
	b	.LBB9_17
	.p2align	4, , 16
.LBB9_12:                               #   in Loop: Header=BB9_6 Depth=2
	move	$s5, $t2
	move	$s4, $a7
	b	.LBB9_20
.LBB9_13:                               # %vector.ph
                                        #   in Loop: Header=BB9_6 Depth=2
	vreplgr2vr.h	$vr0, $t5
	move	$s4, $a7
	move	$s5, $t8
	.p2align	4, , 16
.LBB9_14:                               # %vector.body
                                        #   Parent Loop BB9_2 Depth=1
                                        #     Parent Loop BB9_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bstrpick.d	$s6, $s4, 31, 0
	alsl.d	$s7, $s6, $a3, 1
	slli.d	$s6, $s6, 1
	vstx	$vr0, $a3, $s6
	vst	$vr0, $s7, 16
	addi.w	$s5, $s5, -16
	addi.w	$s4, $s4, 16
	bnez	$s5, .LBB9_14
# %bb.15:                               # %middle.block
                                        #   in Loop: Header=BB9_6 Depth=2
	beq	$t4, $t8, .LBB9_4
# %bb.16:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB9_6 Depth=2
	move	$s6, $t8
	beqz	$t7, .LBB9_21
.LBB9_17:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB9_6 Depth=2
	add.w	$s4, $a7, $s0
	vinsgr2vr.h	$vr0, $t5, 0
	vinsgr2vr.h	$vr0, $t5, 1
	vinsgr2vr.h	$vr0, $t5, 2
	vinsgr2vr.h	$vr0, $t5, 3
	add.d	$s5, $s2, $s6
	add.w	$a7, $a7, $s6
	.p2align	4, , 16
.LBB9_18:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB9_2 Depth=1
                                        #     Parent Loop BB9_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bstrpick.d	$s6, $a7, 31, 0
	alsl.d	$s6, $s6, $a3, 1
	vstelm.d	$vr0, $s6, 0, 0
	addi.w	$s5, $s5, 4
	addi.w	$a7, $a7, 4
	bnez	$s5, .LBB9_18
# %bb.19:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB9_6 Depth=2
	move	$s5, $s1
	beq	$t4, $s0, .LBB9_4
	.p2align	4, , 16
.LBB9_20:                               # %for.body18
                                        #   Parent Loop BB9_2 Depth=1
                                        #     Parent Loop BB9_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.w	$s5, $s5, -1
	bstrpick.d	$a7, $s4, 31, 0
	addi.w	$s4, $s4, 1
	slli.d	$a7, $a7, 1
	stx.h	$t5, $a3, $a7
	bnez	$s5, .LBB9_20
	b	.LBB9_4
.LBB9_21:                               #   in Loop: Header=BB9_6 Depth=2
	add.w	$s4, $a7, $t8
	move	$s5, $fp
	b	.LBB9_20
	.p2align	4, , 16
.LBB9_22:                               # %for.body6.us.preheader
                                        #   in Loop: Header=BB9_2 Depth=1
	move	$t4, $zero
	b	.LBB9_24
	.p2align	4, , 16
.LBB9_23:                               # %for.inc.us
                                        #   in Loop: Header=BB9_24 Depth=2
	addi.d	$t4, $t4, 1
	bgeu	$t4, $a4, .LBB9_1
.LBB9_24:                               # %for.body6.us
                                        #   Parent Loop BB9_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$t5, $a2, $t4
	bne	$t5, $t3, .LBB9_23
# %bb.25:                               # %for.body6.us
                                        #   in Loop: Header=BB9_24 Depth=2
	bgeu	$a6, $a7, .LBB9_23
.LBB9_26:
	ori	$a0, $zero, 1
.LBB9_27:                               # %cleanup
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
.LBB9_28:                               # %for.end26
	bne	$a7, $a6, .LBB9_30
.LBB9_29:
	move	$a0, $zero
	b	.LBB9_27
.LBB9_30:                               # %if.end30
	bstrpick.d	$t0, $a7, 15, 0
	lu12i.w	$a0, 15
	bgeu	$t0, $a6, .LBB9_47
# %bb.31:                               # %iter.check133
	addi.d	$t0, $a7, 1
	bstrpick.d	$t0, $t0, 15, 0
	sub.d	$t0, $a6, $t0
	sltu	$t1, $a6, $t0
	masknez	$t2, $t0, $t1
	addi.w	$t0, $t2, 1
	ori	$t3, $zero, 4
	move	$t1, $a7
	bltu	$t0, $t3, .LBB9_45
# %bb.32:                               # %vector.scevcheck128
	bstrpick.d	$t1, $t2, 15, 0
	addi.w	$t3, $zero, -2
	sub.d	$t3, $t3, $a7
	bstrpick.d	$t3, $t3, 15, 0
	bltu	$t3, $t1, .LBB9_37
# %bb.33:                               # %vector.scevcheck128
	nor	$t3, $a7, $zero
	bstrpick.d	$t3, $t3, 15, 0
	bltu	$t3, $t1, .LBB9_37
# %bb.34:                               # %vector.scevcheck128
	bstrpick.d	$t2, $t2, 31, 16
	move	$t1, $a7
	bnez	$t2, .LBB9_45
# %bb.35:                               # %vector.main.loop.iter.check135
	ori	$t1, $zero, 16
	bgeu	$t0, $t1, .LBB9_38
# %bb.36:
	move	$t2, $zero
	b	.LBB9_42
.LBB9_37:
	move	$t1, $a7
	b	.LBB9_45
.LBB9_38:                               # %vector.ph136
	move	$t3, $zero
	andi	$t1, $t0, 12
	move	$t2, $t0
	bstrins.d	$t2, $zero, 3, 0
	vrepli.b	$vr0, -1
.LBB9_39:                               # %vector.body139
                                        # =>This Inner Loop Header: Depth=1
	add.d	$t4, $a7, $t3
	bstrpick.d	$t4, $t4, 15, 0
	alsl.d	$t5, $t4, $a3, 1
	slli.d	$t4, $t4, 1
	vstx	$vr0, $a3, $t4
	addi.w	$t3, $t3, 16
	vst	$vr0, $t5, 16
	bne	$t2, $t3, .LBB9_39
# %bb.40:                               # %middle.block142
	beq	$t0, $t2, .LBB9_47
# %bb.41:                               # %vec.epilog.iter.check146
	beqz	$t1, .LBB9_61
.LBB9_42:                               # %vec.epilog.ph148
	move	$t3, $t0
	bstrins.d	$t3, $zero, 1, 0
	add.d	$t1, $a7, $t3
	addi.w	$t4, $zero, -1
.LBB9_43:                               # %vec.epilog.vector.body152
                                        # =>This Inner Loop Header: Depth=1
	add.d	$t5, $a7, $t2
	bstrpick.d	$t5, $t5, 15, 0
	slli.d	$t5, $t5, 1
	addi.w	$t2, $t2, 4
	stx.d	$t4, $a3, $t5
	bne	$t3, $t2, .LBB9_43
# %bb.44:                               # %vec.epilog.middle.block157
	beq	$t0, $t3, .LBB9_47
.LBB9_45:                               # %for.body36.preheader
	ori	$t0, $a0, 4095
	.p2align	4, , 16
.LBB9_46:                               # %for.body36
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$t2, $t1, 15, 0
	slli.d	$t2, $t2, 1
	addi.d	$t1, $t1, 1
	bstrpick.d	$t3, $t1, 15, 0
	stx.h	$t0, $a3, $t2
	bltu	$t3, $a6, .LBB9_46
.LBB9_47:                               # %for.cond51.preheader.preheader
	lu12i.w	$a6, 16
	sll.w	$a6, $a6, $a1
	slli.d	$a7, $a7, 16
	addi.w	$a1, $a1, 1
	lu12i.w	$t0, 8
	ori	$t1, $zero, 1
	ori	$a0, $a0, 4095
	ori	$t2, $zero, 15
	ori	$t3, $zero, 17
	b	.LBB9_49
.LBB9_48:                               # %for.end109
                                        #   in Loop: Header=BB9_49 Depth=1
	bstrpick.d	$t0, $t0, 31, 1
	addi.w	$a1, $a1, 1
	addi.d	$t1, $t1, 1
	beq	$a1, $t3, .LBB9_57
.LBB9_49:                               # %for.body55.us.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_52 Depth 2
                                        #       Child Loop BB9_55 Depth 3
	move	$t4, $zero
	b	.LBB9_52
	.p2align	4, , 16
.LBB9_50:                               # %for.cond65.for.end99_crit_edge.us
                                        #   in Loop: Header=BB9_52 Depth=2
	addi.w	$t5, $t6, 0
	slli.d	$t5, $t5, 1
	add.w	$a7, $a7, $t0
	stx.h	$t4, $a3, $t5
	bltu	$a6, $a7, .LBB9_26
.LBB9_51:                               # %for.inc107.us
                                        #   in Loop: Header=BB9_52 Depth=2
	addi.d	$t4, $t4, 1
	bgeu	$t4, $a4, .LBB9_48
.LBB9_52:                               # %for.body55.us
                                        #   Parent Loop BB9_49 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_55 Depth 3
	ldx.bu	$t5, $a2, $t4
	bne	$a1, $t5, .LBB9_51
# %bb.53:                               # %if.end63.us
                                        #   in Loop: Header=BB9_52 Depth=2
	bstrpick.d	$t6, $a7, 31, 16
	ori	$t5, $zero, 15
	b	.LBB9_55
	.p2align	4, , 16
.LBB9_54:                               # %if.end87.us
                                        #   in Loop: Header=BB9_55 Depth=3
	bstrpick.d	$t7, $t6, 15, 0
	srl.w	$t6, $a7, $t5
	addi.d	$t5, $t5, -1
	add.w	$t8, $t1, $t5
	bstrins.d	$t6, $t7, 63, 1
	beq	$t8, $t2, .LBB9_50
.LBB9_55:                               # %for.body69.us
                                        #   Parent Loop BB9_49 Depth=1
                                        #     Parent Loop BB9_52 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.w	$t7, $t6, 0
	slli.d	$t6, $t7, 1
	ldx.hu	$t6, $a3, $t6
	bne	$t6, $a0, .LBB9_54
# %bb.56:                               # %if.then75.us
                                        #   in Loop: Header=BB9_55 Depth=3
	alsl.d	$t6, $t7, $a3, 1
	slli.d	$t7, $a5, 1
	slli.d	$t8, $a5, 2
	bstrpick.d	$t8, $t8, 32, 2
	slli.d	$t8, $t8, 2
	stx.h	$a0, $a3, $t8
	addi.d	$t7, $t7, 1
	bstrpick.d	$t7, $t7, 31, 0
	slli.d	$t7, $t7, 1
	stx.h	$a0, $a3, $t7
	addi.w	$t7, $a5, 1
	st.h	$a5, $t6, 0
	move	$t6, $a5
	move	$a5, $t7
	b	.LBB9_54
.LBB9_57:                               # %for.end113
	addi.w	$a0, $a7, 0
	beq	$a0, $a6, .LBB9_29
# %bb.58:                               # %for.body122.preheader
	move	$a1, $zero
.LBB9_59:                               # %for.body122
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a0, $a2, $a1
	bnez	$a0, .LBB9_26
# %bb.60:                               # %for.cond118
                                        #   in Loop: Header=BB9_59 Depth=1
	addi.d	$a1, $a1, 1
	move	$a0, $zero
	bltu	$a1, $a4, .LBB9_59
	b	.LBB9_27
.LBB9_61:
	add.d	$t1, $a7, $t2
	b	.LBB9_45
.Lfunc_end9:
	.size	lzx_make_decode_table, .Lfunc_end9-lzx_make_decode_table
                                        # -- End function
	.p2align	5                               # -- Begin function lzx_read_lens
	.type	lzx_read_lens,@function
lzx_read_lens:                          # @lzx_read_lens
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
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	move	$fp, $a0
	move	$s1, $zero
	lu12i.w	$a0, 13
	ori	$a0, $a0, 1632
	add.d	$s5, $fp, $a0
	ld.d	$s8, $fp, 112
	ld.d	$s4, $fp, 120
	ld.w	$s6, $fp, 144
	ld.w	$s2, $fp, 148
	addi.w	$s7, $zero, -12
	b	.LBB10_2
	.p2align	4, , 16
.LBB10_1:                               # %while.end
                                        #   in Loop: Header=BB10_2 Depth=1
	bstrpick.d	$a0, $s6, 31, 28
	slli.d	$s6, $s6, 4
	addi.d	$a2, $fp, 156
	stx.b	$a0, $a2, $s1
	addi.d	$s1, $s1, 1
	addi.w	$s2, $s2, -4
	ori	$a0, $zero, 20
	beq	$s1, $a0, .LBB10_13
.LBB10_2:                               # %while.cond.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_6 Depth 2
	ori	$a0, $zero, 3
	blt	$a0, $s2, .LBB10_1
# %bb.3:                                # %while.body.preheader
                                        #   in Loop: Header=BB10_2 Depth=1
	ori	$a0, $zero, 16
	sub.d	$s3, $a0, $s2
	b	.LBB10_6
	.p2align	4, , 16
.LBB10_4:                               # %if.end
                                        #   in Loop: Header=BB10_6 Depth=2
	ld.d	$s8, $fp, 104
	st.d	$s8, $fp, 112
	add.d	$s4, $s8, $a0
	st.d	$s4, $fp, 120
.LBB10_5:                               # %if.end11
                                        #   in Loop: Header=BB10_6 Depth=2
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s3
	or	$s6, $a0, $s6
	addi.w	$s2, $s0, 16
	addi.d	$s8, $s8, 2
	addi.d	$s3, $s3, -16
	bge	$s0, $s7, .LBB10_1
.LBB10_6:                               # %while.body
                                        #   Parent Loop BB10_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $s8, 1
	move	$s0, $s2
	bltu	$a0, $s4, .LBB10_5
# %bb.7:                                # %if.then
                                        #   in Loop: Header=BB10_6 Depth=2
	ld.d	$a3, $s5, 8
	ld.d	$a1, $fp, 104
	ld.w	$a2, $fp, 152
	beqz	$a3, .LBB10_9
# %bb.8:                                # %cond.true.i
                                        #   in Loop: Header=BB10_6 Depth=2
	ld.d	$a0, $s5, 0
	jirl	$ra, $a3, 0
	bgez	$a0, .LBB10_10
	b	.LBB10_119
.LBB10_9:                               # %cond.false.i
                                        #   in Loop: Header=BB10_6 Depth=2
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB10_119
.LBB10_10:                              # %if.end.i
                                        #   in Loop: Header=BB10_6 Depth=2
	bnez	$a0, .LBB10_4
# %bb.11:                               # %if.then7.i
                                        #   in Loop: Header=BB10_6 Depth=2
	ld.bu	$a0, $fp, 92
	bnez	$a0, .LBB10_118
# %bb.12:                               # %if.else.i
                                        #   in Loop: Header=BB10_6 Depth=2
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 1
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 92
	ori	$a0, $zero, 2
	b	.LBB10_4
.LBB10_13:                              # %for.end
	addi.d	$a3, $fp, 1346
	ori	$a0, $zero, 20
	ori	$a1, $zero, 6
	pcaddu18i	$ra, %call36(lzx_make_decode_table)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_15
# %bb.14:                               # %if.then29
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -124
	b	.LBB10_120
.LBB10_15:                              # %for.cond32.preheader
	ld.d	$t0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 48                    # 8-byte Folded Reload
	bgeu	$a6, $t0, .LBB10_122
# %bb.16:
	ori	$a0, $zero, 15
	lu12i.w	$a1, -16384
	lu32i.d	$a1, 0
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
.LBB10_17:                              # %while.cond37.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_21 Depth 2
                                        #     Child Loop BB10_30 Depth 2
                                        #     Child Loop BB10_95 Depth 2
                                        #     Child Loop BB10_43 Depth 2
                                        #     Child Loop BB10_105 Depth 2
                                        #     Child Loop BB10_109 Depth 2
                                        #     Child Loop BB10_56 Depth 2
                                        #     Child Loop BB10_86 Depth 2
                                        #     Child Loop BB10_89 Depth 2
                                        #     Child Loop BB10_67 Depth 2
                                        #     Child Loop BB10_115 Depth 2
	st.d	$a6, $sp, 48                    # 8-byte Folded Spill
	blt	$a0, $s2, .LBB10_28
# %bb.18:                               # %while.body40.preheader
                                        #   in Loop: Header=BB10_17 Depth=1
	ori	$s3, $zero, 1
	ori	$a0, $zero, 16
	sub.d	$s1, $a0, $s2
	b	.LBB10_21
.LBB10_19:                              # %if.end49
                                        #   in Loop: Header=BB10_21 Depth=2
	ld.d	$s8, $fp, 104
	st.d	$s8, $fp, 112
	add.d	$s4, $s8, $a0
	st.d	$s4, $fp, 120
.LBB10_20:                              # %if.end52
                                        #   in Loop: Header=BB10_21 Depth=2
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s1
	or	$s6, $a0, $s6
	addi.w	$s2, $s0, 16
	addi.d	$s8, $s8, 2
	addi.d	$s1, $s1, -16
	bgez	$s0, .LBB10_28
.LBB10_21:                              # %while.body40
                                        #   Parent Loop BB10_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $s8, 1
	move	$s0, $s2
	bltu	$a0, $s4, .LBB10_20
# %bb.22:                               # %if.then44
                                        #   in Loop: Header=BB10_21 Depth=2
	ld.d	$a3, $s5, 8
	ld.d	$a1, $fp, 104
	ld.w	$a2, $fp, 152
	beqz	$a3, .LBB10_24
# %bb.23:                               # %cond.true.i179
                                        #   in Loop: Header=BB10_21 Depth=2
	ld.d	$a0, $s5, 0
	jirl	$ra, $a3, 0
	bgez	$a0, .LBB10_25
	b	.LBB10_119
.LBB10_24:                              # %cond.false.i207
                                        #   in Loop: Header=BB10_21 Depth=2
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB10_119
.LBB10_25:                              # %if.end.i187
                                        #   in Loop: Header=BB10_21 Depth=2
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	bnez	$a0, .LBB10_19
# %bb.26:                               # %if.then7.i197
                                        #   in Loop: Header=BB10_21 Depth=2
	ld.bu	$a0, $fp, 92
	bnez	$a0, .LBB10_118
# %bb.27:                               # %if.else.i202
                                        #   in Loop: Header=BB10_21 Depth=2
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 1
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 0
	st.b	$s3, $fp, 92
	ori	$a0, $zero, 2
	b	.LBB10_19
.LBB10_28:                              # %while.end66
                                        #   in Loop: Header=BB10_17 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	and	$a0, $s6, $a0
	srli.d	$a0, $a0, 25
	addi.d	$a3, $fp, 1346
	ldx.hu	$a0, $a3, $a0
	ori	$a4, $zero, 1
	ori	$a1, $zero, 20
	ori	$a5, $zero, 19
	bltu	$a0, $a1, .LBB10_33
# %bb.29:                               # %do.body75.preheader
                                        #   in Loop: Header=BB10_17 Depth=1
	lu12i.w	$a1, 16384
	ld.d	$a6, $sp, 48                    # 8-byte Folded Reload
	ori	$s3, $zero, 104
.LBB10_30:                              # %do.body75
                                        #   Parent Loop BB10_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a2, $a1, 0
	bgeu	$a4, $a2, .LBB10_124
# %bb.31:                               # %if.end81
                                        #   in Loop: Header=BB10_30 Depth=2
	slli.d	$a0, $a0, 1
	bstrpick.d	$a2, $a0, 15, 1
	slli.d	$a2, $a2, 1
	bgeu	$a2, $s3, .LBB10_125
# %bb.32:                               # %if.end94
                                        #   in Loop: Header=BB10_30 Depth=2
	bstrpick.d	$a1, $a1, 31, 1
	and	$a2, $a1, $s6
	addi.w	$a2, $a2, 0
	sltu	$a2, $zero, $a2
	or	$a0, $a0, $a2
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $a3, $a0
	bltu	$a5, $a0, .LBB10_30
	b	.LBB10_34
.LBB10_33:                              #   in Loop: Header=BB10_17 Depth=1
	ld.d	$a6, $sp, 48                    # 8-byte Folded Reload
	ori	$s3, $zero, 104
.LBB10_34:                              # %if.end103
                                        #   in Loop: Header=BB10_17 Depth=1
	addi.d	$a1, $fp, 156
	ldx.bu	$a2, $a1, $a0
	sll.w	$s6, $s6, $a2
	sub.w	$a1, $s2, $a2
	ori	$a3, $zero, 17
	beq	$a0, $a3, .LBB10_63
# %bb.35:                               # %if.end103
                                        #   in Loop: Header=BB10_17 Depth=1
	ori	$a3, $zero, 18
	beq	$a0, $a3, .LBB10_51
# %bb.36:                               # %if.end103
                                        #   in Loop: Header=BB10_17 Depth=1
	bne	$a0, $a5, .LBB10_75
# %bb.37:                               # %while.cond213.preheader
                                        #   in Loop: Header=BB10_17 Depth=1
	blez	$a1, .LBB10_91
# %bb.38:                               #   in Loop: Header=BB10_17 Depth=1
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
.LBB10_39:                              # %while.end242
                                        #   in Loop: Header=BB10_17 Depth=1
	slli.d	$s0, $s6, 1
	ori	$a0, $zero, 16
	bltu	$a0, $a1, .LBB10_84
# %bb.40:                               # %while.body253.preheader
                                        #   in Loop: Header=BB10_17 Depth=1
	addi.d	$s1, $a1, -17
	ori	$a0, $zero, 17
	sub.d	$s2, $a0, $a1
	b	.LBB10_43
.LBB10_41:                              # %if.end262
                                        #   in Loop: Header=BB10_43 Depth=2
	ld.d	$s8, $fp, 104
	st.d	$s8, $fp, 112
	add.d	$s4, $s8, $a0
	st.d	$s4, $fp, 120
.LBB10_42:                              # %if.end265
                                        #   in Loop: Header=BB10_43 Depth=2
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s2
	or	$s0, $a0, $s0
	addi.d	$s8, $s8, 2
	addi.w	$s1, $s1, 16
	addi.d	$s2, $s2, -16
	bgez	$s1, .LBB10_102
.LBB10_43:                              # %while.body253
                                        #   Parent Loop BB10_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $s8, 1
	bltu	$a0, $s4, .LBB10_42
# %bb.44:                               # %if.then257
                                        #   in Loop: Header=BB10_43 Depth=2
	ld.d	$a3, $s5, 8
	ld.d	$a1, $fp, 104
	ld.w	$a2, $fp, 152
	beqz	$a3, .LBB10_46
# %bb.45:                               # %cond.true.i319
                                        #   in Loop: Header=BB10_43 Depth=2
	ld.d	$a0, $s5, 0
	jirl	$ra, $a3, 0
	b	.LBB10_47
.LBB10_46:                              # %cond.false.i347
                                        #   in Loop: Header=BB10_43 Depth=2
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB10_47:                              # %cond.end.i324
                                        #   in Loop: Header=BB10_43 Depth=2
	bltz	$a0, .LBB10_119
# %bb.48:                               # %if.end.i327
                                        #   in Loop: Header=BB10_43 Depth=2
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	bnez	$a0, .LBB10_41
# %bb.49:                               # %if.then7.i337
                                        #   in Loop: Header=BB10_43 Depth=2
	ld.bu	$a0, $fp, 92
	bnez	$a0, .LBB10_118
# %bb.50:                               # %if.else.i342
                                        #   in Loop: Header=BB10_43 Depth=2
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 1
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 92
	ori	$a0, $zero, 2
	b	.LBB10_41
.LBB10_51:                              # %while.cond164.preheader
                                        #   in Loop: Header=BB10_17 Depth=1
	ori	$a0, $zero, 4
	blt	$a0, $a1, .LBB10_76
# %bb.52:                               # %while.body167.preheader
                                        #   in Loop: Header=BB10_17 Depth=1
	sub.d	$a0, $a2, $s2
	addi.d	$s0, $a0, 16
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	b	.LBB10_56
.LBB10_53:                              # %if.else.i272
                                        #   in Loop: Header=BB10_56 Depth=2
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 1
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 92
	ori	$a0, $zero, 2
.LBB10_54:                              # %if.end176
                                        #   in Loop: Header=BB10_56 Depth=2
	ld.d	$s8, $fp, 104
	st.d	$s8, $fp, 112
	add.d	$s4, $s8, $a0
	st.d	$s4, $fp, 120
.LBB10_55:                              # %if.end179
                                        #   in Loop: Header=BB10_56 Depth=2
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s0
	or	$s6, $a0, $s6
	addi.w	$a1, $s1, 16
	addi.d	$s8, $s8, 2
	addi.w	$a0, $zero, -11
	addi.d	$s0, $s0, -16
	bge	$s1, $a0, .LBB10_77
.LBB10_56:                              # %while.body167
                                        #   Parent Loop BB10_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $s8, 1
	move	$s1, $a1
	bltu	$a0, $s4, .LBB10_55
# %bb.57:                               # %if.then171
                                        #   in Loop: Header=BB10_56 Depth=2
	ld.d	$a3, $s5, 8
	ld.d	$a1, $fp, 104
	ld.w	$a2, $fp, 152
	beqz	$a3, .LBB10_59
# %bb.58:                               # %cond.true.i249
                                        #   in Loop: Header=BB10_56 Depth=2
	ld.d	$a0, $s5, 0
	jirl	$ra, $a3, 0
	b	.LBB10_60
.LBB10_59:                              # %cond.false.i277
                                        #   in Loop: Header=BB10_56 Depth=2
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB10_60:                              # %cond.end.i254
                                        #   in Loop: Header=BB10_56 Depth=2
	bltz	$a0, .LBB10_119
# %bb.61:                               # %if.end.i257
                                        #   in Loop: Header=BB10_56 Depth=2
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	bnez	$a0, .LBB10_54
# %bb.62:                               # %if.then7.i267
                                        #   in Loop: Header=BB10_56 Depth=2
	ld.bu	$a0, $fp, 92
	beqz	$a0, .LBB10_53
	b	.LBB10_118
.LBB10_63:                              # %while.cond117.preheader
                                        #   in Loop: Header=BB10_17 Depth=1
	ori	$a0, $zero, 3
	blt	$a0, $a1, .LBB10_79
# %bb.64:                               # %while.body120.preheader
                                        #   in Loop: Header=BB10_17 Depth=1
	sub.d	$a0, $a2, $s2
	addi.d	$s0, $a0, 16
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	b	.LBB10_67
.LBB10_65:                              # %if.end129
                                        #   in Loop: Header=BB10_67 Depth=2
	ld.d	$s8, $fp, 104
	st.d	$s8, $fp, 112
	add.d	$s4, $s8, $a0
	st.d	$s4, $fp, 120
.LBB10_66:                              # %if.end132
                                        #   in Loop: Header=BB10_67 Depth=2
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s0
	or	$s6, $a0, $s6
	addi.w	$a1, $s1, 16
	addi.d	$s8, $s8, 2
	addi.d	$s0, $s0, -16
	bge	$s1, $s7, .LBB10_80
.LBB10_67:                              # %while.body120
                                        #   Parent Loop BB10_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $s8, 1
	move	$s1, $a1
	bltu	$a0, $s4, .LBB10_66
# %bb.68:                               # %if.then124
                                        #   in Loop: Header=BB10_67 Depth=2
	ld.d	$a3, $s5, 8
	ld.d	$a1, $fp, 104
	ld.w	$a2, $fp, 152
	beqz	$a3, .LBB10_70
# %bb.69:                               # %cond.true.i214
                                        #   in Loop: Header=BB10_67 Depth=2
	ld.d	$a0, $s5, 0
	jirl	$ra, $a3, 0
	b	.LBB10_71
.LBB10_70:                              # %cond.false.i242
                                        #   in Loop: Header=BB10_67 Depth=2
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB10_71:                              # %cond.end.i219
                                        #   in Loop: Header=BB10_67 Depth=2
	bltz	$a0, .LBB10_119
# %bb.72:                               # %if.end.i222
                                        #   in Loop: Header=BB10_67 Depth=2
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	bnez	$a0, .LBB10_65
# %bb.73:                               # %if.then7.i232
                                        #   in Loop: Header=BB10_67 Depth=2
	ld.bu	$a0, $fp, 92
	bnez	$a0, .LBB10_118
# %bb.74:                               # %if.else.i237
                                        #   in Loop: Header=BB10_67 Depth=2
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 1
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 92
	ori	$a0, $zero, 2
	b	.LBB10_65
.LBB10_75:                              # %if.else346
                                        #   in Loop: Header=BB10_17 Depth=1
	bstrpick.d	$a2, $a6, 31, 0
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	ldx.bu	$a3, $a5, $a2
	sub.d	$a0, $a3, $a0
	slti	$a3, $a0, 0
	addi.d	$a4, $a0, 17
	masknez	$a0, $a0, $a3
	maskeqz	$a3, $a4, $a3
	or	$a0, $a3, $a0
	addi.w	$a6, $a6, 1
	stx.b	$a0, $a5, $a2
	b	.LBB10_111
.LBB10_76:                              #   in Loop: Header=BB10_17 Depth=1
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
.LBB10_77:                              # %while.end193
                                        #   in Loop: Header=BB10_17 Depth=1
	bstrpick.d	$a0, $s6, 31, 27
	addi.w	$a2, $zero, -20
	sub.d	$a2, $a2, $a0
	addi.w	$a3, $a0, 20
	ld.d	$a7, $sp, 48                    # 8-byte Folded Reload
	bgeu	$a2, $a7, .LBB10_85
# %bb.78:                               #   in Loop: Header=BB10_17 Depth=1
	move	$a2, $a3
	move	$a0, $a7
	ld.d	$t0, $sp, 40                    # 8-byte Folded Reload
	b	.LBB10_88
.LBB10_79:                              #   in Loop: Header=BB10_17 Depth=1
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
.LBB10_80:                              # %while.end146
                                        #   in Loop: Header=BB10_17 Depth=1
	bstrpick.d	$a3, $s6, 31, 28
	bstrpick.d	$a2, $s6, 31, 30
	addi.w	$a0, $a3, 4
	ori	$a4, $zero, 3
	bltu	$a2, $a4, .LBB10_113
# %bb.81:                               # %while.end146
                                        #   in Loop: Header=BB10_17 Depth=1
	addi.d	$a2, $zero, -4
	sub.w	$a2, $a2, $a3
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 40                    # 8-byte Folded Reload
	bltu	$a2, $a4, .LBB10_112
# %bb.82:                               # %vector.body
                                        #   in Loop: Header=BB10_17 Depth=1
	addi.w	$a2, $a4, 16
	bstrpick.d	$a4, $a4, 31, 0
	vstx	$vr0, $s2, $a4
	ori	$a4, $zero, 16
	beq	$a0, $a4, .LBB10_116
# %bb.83:                               #   in Loop: Header=BB10_17 Depth=1
	addi.d	$a0, $a3, -12
	b	.LBB10_114
.LBB10_84:                              #   in Loop: Header=BB10_17 Depth=1
	addi.d	$a0, $a1, -1
	b	.LBB10_103
.LBB10_85:                              # %vector.ph573
                                        #   in Loop: Header=BB10_17 Depth=1
	andi	$a4, $a3, 48
	andi	$a2, $a3, 15
	add.w	$a0, $a7, $a4
	move	$a5, $a4
	ld.d	$t0, $sp, 40                    # 8-byte Folded Reload
.LBB10_86:                              # %vector.body576
                                        #   Parent Loop BB10_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$a6, $a7, 31, 0
	vstx	$vr0, $s2, $a6
	addi.w	$a5, $a5, -16
	addi.w	$a7, $a7, 16
	bnez	$a5, .LBB10_86
# %bb.87:                               # %middle.block580
                                        #   in Loop: Header=BB10_17 Depth=1
	beq	$a3, $a4, .LBB10_90
.LBB10_88:                              # %while.body203.preheader
                                        #   in Loop: Header=BB10_17 Depth=1
	move	$a3, $a0
.LBB10_89:                              # %while.body203
                                        #   Parent Loop BB10_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a2, $a2, -1
	addi.w	$a0, $a3, 1
	bstrpick.d	$a3, $a3, 31, 0
	stx.b	$zero, $s2, $a3
	move	$a3, $a0
	bnez	$a2, .LBB10_89
.LBB10_90:                              # %if.end362.loopexit553
                                        #   in Loop: Header=BB10_17 Depth=1
	slli.d	$s6, $s6, 5
	addi.w	$a1, $a1, -5
	move	$a6, $a0
	b	.LBB10_117
.LBB10_91:                              # %while.body216.preheader
                                        #   in Loop: Header=BB10_17 Depth=1
	sub.d	$a0, $a2, $s2
	addi.d	$s0, $a0, 16
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	b	.LBB10_95
.LBB10_92:                              # %if.else.i307
                                        #   in Loop: Header=BB10_95 Depth=2
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 1
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 92
	ori	$a0, $zero, 2
.LBB10_93:                              # %if.end225
                                        #   in Loop: Header=BB10_95 Depth=2
	ld.d	$s8, $fp, 104
	st.d	$s8, $fp, 112
	add.d	$s4, $s8, $a0
	st.d	$s4, $fp, 120
.LBB10_94:                              # %if.end228
                                        #   in Loop: Header=BB10_95 Depth=2
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s0
	or	$s6, $a0, $s6
	addi.w	$a1, $s1, 16
	addi.d	$s8, $s8, 2
	addi.w	$a0, $zero, -15
	addi.d	$s0, $s0, -16
	bge	$s1, $a0, .LBB10_39
.LBB10_95:                              # %while.body216
                                        #   Parent Loop BB10_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $s8, 1
	move	$s1, $a1
	bltu	$a0, $s4, .LBB10_94
# %bb.96:                               # %if.then220
                                        #   in Loop: Header=BB10_95 Depth=2
	ld.d	$a3, $s5, 8
	ld.d	$a1, $fp, 104
	ld.w	$a2, $fp, 152
	beqz	$a3, .LBB10_98
# %bb.97:                               # %cond.true.i284
                                        #   in Loop: Header=BB10_95 Depth=2
	ld.d	$a0, $s5, 0
	jirl	$ra, $a3, 0
	b	.LBB10_99
.LBB10_98:                              # %cond.false.i312
                                        #   in Loop: Header=BB10_95 Depth=2
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB10_99:                              # %cond.end.i289
                                        #   in Loop: Header=BB10_95 Depth=2
	bltz	$a0, .LBB10_119
# %bb.100:                              # %if.end.i292
                                        #   in Loop: Header=BB10_95 Depth=2
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	bnez	$a0, .LBB10_93
# %bb.101:                              # %if.then7.i302
                                        #   in Loop: Header=BB10_95 Depth=2
	ld.bu	$a0, $fp, 92
	beqz	$a0, .LBB10_92
	b	.LBB10_118
.LBB10_102:                             # %while.end279.loopexit
                                        #   in Loop: Header=BB10_17 Depth=1
	addi.d	$a0, $s1, 16
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
.LBB10_103:                             # %while.end279
                                        #   in Loop: Header=BB10_17 Depth=1
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	and	$a1, $s0, $a1
	srli.d	$a1, $a1, 25
	addi.d	$a4, $fp, 1346
	ldx.hu	$a1, $a4, $a1
	ld.d	$a6, $sp, 48                    # 8-byte Folded Reload
	ori	$a5, $zero, 1
	ori	$a2, $zero, 20
	ori	$a7, $zero, 19
	bltu	$a1, $a2, .LBB10_108
# %bb.104:                              # %do.body288.preheader
                                        #   in Loop: Header=BB10_17 Depth=1
	lu12i.w	$a2, 16384
.LBB10_105:                             # %do.body288
                                        #   Parent Loop BB10_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a3, $a2, 0
	bgeu	$a5, $a3, .LBB10_124
# %bb.106:                              # %if.end294
                                        #   in Loop: Header=BB10_105 Depth=2
	slli.d	$a1, $a1, 1
	bstrpick.d	$a3, $a1, 15, 1
	slli.d	$a3, $a3, 1
	bgeu	$a3, $s3, .LBB10_125
# %bb.107:                              # %if.end309
                                        #   in Loop: Header=BB10_105 Depth=2
	bstrpick.d	$a2, $a2, 31, 1
	and	$a3, $a2, $s0
	addi.w	$a3, $a3, 0
	sltu	$a3, $zero, $a3
	or	$a1, $a1, $a3
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a4, $a1
	bltu	$a7, $a1, .LBB10_105
.LBB10_108:                             # %if.end318
                                        #   in Loop: Header=BB10_17 Depth=1
	bstrpick.d	$a2, $a6, 31, 0
	ldx.bu	$a4, $s2, $a2
	bstrpick.d	$a2, $s6, 31, 31
	ori	$a3, $a2, 4
	addi.d	$a2, $fp, 156
	ldx.bu	$a2, $a2, $a1
	sub.d	$a1, $a4, $a1
	slti	$a4, $a1, 0
	addi.d	$a5, $a1, 17
	masknez	$a1, $a1, $a4
	maskeqz	$a4, $a5, $a4
	or	$a1, $a4, $a1
.LBB10_109:                             # %while.body340
                                        #   Parent Loop BB10_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a3, $a3, -1
	bstrpick.d	$a5, $a6, 31, 0
	addi.w	$a6, $a6, 1
	stx.b	$a1, $s2, $a5
	bnez	$a3, .LBB10_109
# %bb.110:                              # %if.end362.loopexit554
                                        #   in Loop: Header=BB10_17 Depth=1
	sll.w	$s6, $s0, $a2
	sub.w	$a1, $a0, $a2
.LBB10_111:                             # %if.end362
                                        #   in Loop: Header=BB10_17 Depth=1
	ld.d	$t0, $sp, 40                    # 8-byte Folded Reload
	b	.LBB10_117
.LBB10_112:                             #   in Loop: Header=BB10_17 Depth=1
	move	$a2, $a4
	b	.LBB10_114
.LBB10_113:                             #   in Loop: Header=BB10_17 Depth=1
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 40                    # 8-byte Folded Reload
.LBB10_114:                             # %while.body155.preheader
                                        #   in Loop: Header=BB10_17 Depth=1
	move	$a3, $a2
.LBB10_115:                             # %while.body155
                                        #   Parent Loop BB10_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a0, $a0, -1
	addi.w	$a2, $a3, 1
	bstrpick.d	$a3, $a3, 31, 0
	stx.b	$zero, $s2, $a3
	move	$a3, $a2
	bnez	$a0, .LBB10_115
.LBB10_116:                             # %if.end362.loopexit
                                        #   in Loop: Header=BB10_17 Depth=1
	slli.d	$s6, $s6, 4
	addi.w	$a1, $a1, -4
	move	$a6, $a2
.LBB10_117:                             # %if.end362
                                        #   in Loop: Header=BB10_17 Depth=1
	move	$s2, $a1
	ori	$a0, $zero, 15
	bltu	$a6, $t0, .LBB10_17
	b	.LBB10_123
.LBB10_118:                             # %if.then9.i
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB10_119:                             # %if.then.i
	addi.w	$a0, $zero, -123
.LBB10_120:                             # %cleanup
	move	$a1, $a0
	lu32i.d	$a1, 0
	st.w	$a1, $fp, 96
.LBB10_121:                             # %cleanup
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
.LBB10_122:
	move	$a1, $s2
.LBB10_123:                             # %do.body364
	move	$a0, $zero
	st.d	$s8, $fp, 112
	st.d	$s4, $fp, 120
	st.w	$s6, $fp, 144
	st.w	$a1, $fp, 148
	b	.LBB10_121
.LBB10_124:                             # %if.then79
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	b	.LBB10_126
.LBB10_125:                             # %if.then92
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
.LBB10_126:                             # %cleanup
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -124
	b	.LBB10_120
.Lfunc_end10:
	.size	lzx_read_lens, .Lfunc_end10-lzx_read_lens
                                        # -- End function
	.globl	lzx_free                        # -- Begin function lzx_free
	.p2align	5
	.type	lzx_free,@function
lzx_free:                               # @lzx_free
# %bb.0:                                # %entry
	beqz	$a0, .LBB11_2
# %bb.1:                                # %if.then
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.d	$a1, $a0, 104
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 32
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB11_2:                               # %if.end
	ret
.Lfunc_end11:
	.size	lzx_free, .Lfunc_end11-lzx_free
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function qtm_init
.LCPI12_0:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	8                               # 0x8
	.byte	10                              # 0xa
	.byte	12                              # 0xc
	.byte	14                              # 0xe
	.byte	18                              # 0x12
	.byte	22                              # 0x16
	.byte	26                              # 0x1a
	.byte	30                              # 0x1e
	.byte	38                              # 0x26
.LCPI12_1:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	4                               # 0x4
	.byte	4                               # 0x4
.LCPI12_2:
	.byte	46                              # 0x2e
	.byte	54                              # 0x36
	.byte	62                              # 0x3e
	.byte	78                              # 0x4e
	.byte	94                              # 0x5e
	.byte	110                             # 0x6e
	.byte	126                             # 0x7e
	.byte	158                             # 0x9e
	.byte	190                             # 0xbe
	.byte	222                             # 0xde
	.byte	254                             # 0xfe
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI12_3:
	.half	0                               # 0x0
	.half	24                              # 0x18
	.half	1                               # 0x1
	.half	23                              # 0x17
	.half	2                               # 0x2
	.half	22                              # 0x16
	.half	3                               # 0x3
	.half	21                              # 0x15
.LCPI12_4:
	.half	4                               # 0x4
	.half	20                              # 0x14
	.half	5                               # 0x5
	.half	19                              # 0x13
	.half	6                               # 0x6
	.half	18                              # 0x12
	.half	7                               # 0x7
	.half	17                              # 0x11
.LCPI12_5:
	.half	8                               # 0x8
	.half	16                              # 0x10
	.half	9                               # 0x9
	.half	15                              # 0xf
	.half	10                              # 0xa
	.half	14                              # 0xe
	.half	11                              # 0xb
	.half	13                              # 0xd
.LCPI12_6:
	.half	12                              # 0xc
	.half	12                              # 0xc
	.half	13                              # 0xd
	.half	11                              # 0xb
	.half	14                              # 0xe
	.half	10                              # 0xa
	.half	15                              # 0xf
	.half	9                               # 0x9
.LCPI12_7:
	.half	16                              # 0x10
	.half	8                               # 0x8
	.half	17                              # 0x11
	.half	7                               # 0x7
	.half	18                              # 0x12
	.half	6                               # 0x6
	.half	19                              # 0x13
	.half	5                               # 0x5
.LCPI12_8:
	.half	20                              # 0x14
	.half	4                               # 0x4
	.half	21                              # 0x15
	.half	3                               # 0x3
	.half	22                              # 0x16
	.half	2                               # 0x2
	.half	23                              # 0x17
	.half	1                               # 0x1
.LCPI12_9:
	.half	0                               # 0x0
	.half	27                              # 0x1b
	.half	1                               # 0x1
	.half	26                              # 0x1a
	.half	2                               # 0x2
	.half	25                              # 0x19
	.half	3                               # 0x3
	.half	24                              # 0x18
.LCPI12_10:
	.half	4                               # 0x4
	.half	23                              # 0x17
	.half	5                               # 0x5
	.half	22                              # 0x16
	.half	6                               # 0x6
	.half	21                              # 0x15
	.half	7                               # 0x7
	.half	20                              # 0x14
.LCPI12_11:
	.half	8                               # 0x8
	.half	19                              # 0x13
	.half	9                               # 0x9
	.half	18                              # 0x12
	.half	10                              # 0xa
	.half	17                              # 0x11
	.half	11                              # 0xb
	.half	16                              # 0x10
.LCPI12_12:
	.half	12                              # 0xc
	.half	15                              # 0xf
	.half	13                              # 0xd
	.half	14                              # 0xe
	.half	14                              # 0xe
	.half	13                              # 0xd
	.half	15                              # 0xf
	.half	12                              # 0xc
.LCPI12_13:
	.half	16                              # 0x10
	.half	11                              # 0xb
	.half	17                              # 0x11
	.half	10                              # 0xa
	.half	18                              # 0x12
	.half	9                               # 0x9
	.half	19                              # 0x13
	.half	8                               # 0x8
.LCPI12_14:
	.half	20                              # 0x14
	.half	7                               # 0x7
	.half	21                              # 0x15
	.half	6                               # 0x6
	.half	22                              # 0x16
	.half	5                               # 0x5
	.half	23                              # 0x17
	.half	4                               # 0x4
.LCPI12_15:
	.half	24                              # 0x18
	.half	3                               # 0x3
	.half	25                              # 0x19
	.half	2                               # 0x2
	.half	26                              # 0x1a
	.half	1                               # 0x1
	.half	27                              # 0x1b
	.half	0                               # 0x0
.LCPI12_16:
	.half	0                               # 0x0
	.half	7                               # 0x7
	.half	1                               # 0x1
	.half	6                               # 0x6
	.half	2                               # 0x2
	.half	5                               # 0x5
	.half	3                               # 0x3
	.half	4                               # 0x4
.LCPI12_17:
	.half	4                               # 0x4
	.half	3                               # 0x3
	.half	5                               # 0x5
	.half	2                               # 0x2
	.half	6                               # 0x6
	.half	1                               # 0x1
	.half	7                               # 0x7
	.half	0                               # 0x0
	.text
	.globl	qtm_init
	.p2align	5
	.type	qtm_init,@function
qtm_init:                               # @qtm_init
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
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a2
	addi.w	$a2, $a2, -22
	addi.w	$a6, $zero, -7
	bltu	$a2, $a6, .LBB12_14
# %bb.1:                                # %if.end
	blez	$a3, .LBB12_14
# %bb.2:                                # %if.end4
	move	$s0, $a3
	move	$s4, $a0
	move	$s3, $a1
	move	$s1, $a4
	move	$s2, $a5
	ori	$a0, $zero, 2136
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB12_14
# %bb.3:                                # %for.cond.preheader
	move	$a1, $zero
	move	$a2, $zero
	ori	$a3, $zero, 1
	sll.w	$s5, $a3, $fp
	addi.w	$s0, $s0, 1
	bstrins.d	$s0, $zero, 0, 0
	ori	$a3, $zero, 100
	ori	$a4, $zero, 268
	ori	$a5, $zero, 1
	ori	$a6, $zero, 310
	.p2align	4, , 16
.LBB12_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a7, $a1, -2
	sltu	$t0, $a1, $a7
	masknez	$a7, $a7, $t0
	stx.w	$a2, $a0, $a3
	bstrpick.d	$a7, $a7, 31, 1
	stx.b	$a7, $a0, $a4
	sll.w	$a7, $a5, $a7
	add.d	$a2, $a7, $a2
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 1
	addi.w	$a1, $a1, 1
	bne	$a4, $a6, .LBB12_4
# %bb.5:                                # %for.cond17.preheader
	pcalau12i	$a1, %pc_hi20(.LCPI12_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI12_0)
	pcalau12i	$a1, %pc_hi20(.LCPI12_1)
	vld	$vr1, $a1, %pc_lo12(.LCPI12_1)
	vst	$vr0, $a0, 310
	vst	$vr1, $a0, 342
	pcalau12i	$a1, %pc_hi20(.LCPI12_2)
	vld	$vr0, $a1, %pc_lo12(.LCPI12_2)
	lu12i.w	$a1, 20560
	ori	$a1, $a1, 1284
	st.w	$a1, $a0, 358
	ori	$a1, $zero, 5
	st.h	$a1, $a0, 362
	vst	$vr0, $a0, 326
	bstrpick.d	$a1, $s5, 31, 0
	move	$s6, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, 16
	beqz	$a0, .LBB12_16
# %bb.6:                                # %if.end53
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s6
	st.d	$a1, $s6, 48
	beqz	$a1, .LBB12_17
# %bb.7:                                # %if.end60
	move	$a2, $zero
	st.w	$s4, $a0, 0
	st.w	$s3, $a0, 4
	ori	$a3, $zero, 1
	st.b	$a3, $a0, 8
	st.w	$s0, $a0, 92
	st.w	$s5, $a0, 24
	st.d	$zero, $a0, 28
	st.b	$zero, $a0, 42
	ld.d	$a3, $a0, 16
	st.w	$zero, $a0, 44
	st.d	$a1, $a0, 64
	st.d	$a1, $a0, 56
	st.d	$a3, $a0, 80
	st.d	$a3, $a0, 72
	st.b	$zero, $a0, 96
	st.w	$zero, $a0, 88
	addi.d	$a1, $a0, 512
	ori	$a3, $zero, 4
	lu32i.d	$a3, 64
	st.d	$a3, $a0, 368
	st.d	$a1, $a0, 376
	addi.d	$a1, $a0, 518
	ori	$a3, $zero, 64
	.p2align	4, , 16
.LBB12_8:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ori	$a4, $a2, 1
	st.h	$a2, $a1, -6
	st.h	$a4, $a1, -2
	sub.d	$a5, $a3, $a2
	sub.d	$a4, $a3, $a4
	st.h	$a5, $a1, -4
	st.h	$a4, $a1, 0
	addi.d	$a2, $a2, 2
	addi.d	$a1, $a1, 8
	bne	$a2, $a3, .LBB12_8
# %bb.9:                                # %for.body.i
	move	$a1, $zero
	ori	$a4, $zero, 64
	st.w	$a4, $a0, 768
	addi.d	$a2, $a0, 772
	ori	$a6, $zero, 4
	lu32i.d	$a6, 64
	st.d	$a6, $a0, 384
	st.d	$a2, $a0, 392
	lu12i.w	$a2, 1024
	ori	$a2, $a2, 64
	lu32i.d	$a2, -65471
	lu52i.d	$a2, $a2, 3
	st.d	$a2, $a0, 772
	lu12i.w	$a2, 992
	ori	$a2, $a2, 66
	lu32i.d	$a2, -196541
	lu52i.d	$a2, $a2, 3
	st.d	$a2, $a0, 780
	lu12i.w	$a2, 960
	ori	$a2, $a2, 68
	lu32i.d	$a2, -327611
	lu52i.d	$a2, $a2, 3
	st.d	$a2, $a0, 788
	lu12i.w	$a2, 928
	ori	$a2, $a2, 70
	st.w	$a2, $a0, 796
	ori	$a2, $zero, 71
	st.h	$a2, $a0, 800
	lu12i.w	$a2, 1152
	ori	$a2, $a2, 57
	st.w	$a2, $a0, 802
	lu12i.w	$a2, 880
	ori	$a2, $a2, 73
	lu32i.d	$a2, 393290
	lu52i.d	$a2, $a2, 3
	st.d	$a2, $a0, 808
	lu12i.w	$a2, 848
	ori	$a2, $a2, 75
	lu32i.d	$a2, 262220
	lu52i.d	$a2, $a2, 3
	st.d	$a2, $a0, 816
	lu12i.w	$a2, 816
	ori	$a2, $a2, 77
	lu32i.d	$a2, 131150
	lu52i.d	$a2, $a2, 3
	st.d	$a2, $a0, 824
	ori	$a2, $zero, 79
	st.h	$a2, $a0, 832
	ori	$a5, $zero, 56
	st.h	$a5, $a0, 806
	lu12i.w	$a2, 1280
	ori	$a2, $a2, 49
	st.w	$a2, $a0, 834
	ori	$a2, $zero, 81
	st.h	$a2, $a0, 840
	ori	$a2, $zero, 82
	st.h	$a2, $a0, 844
	ori	$a2, $zero, 83
	st.h	$a2, $a0, 848
	ori	$a2, $zero, 84
	st.h	$a2, $a0, 852
	ori	$a2, $zero, 85
	st.h	$a2, $a0, 856
	ori	$a2, $zero, 86
	st.h	$a2, $a0, 860
	ori	$a2, $zero, 87
	st.h	$a2, $a0, 864
	ori	$a3, $zero, 48
	st.h	$a3, $a0, 838
	ori	$a2, $zero, 47
	st.h	$a2, $a0, 842
	lu12i.w	$a7, 1408
	ori	$a7, $a7, 41
	st.w	$a7, $a0, 866
	lu12i.w	$a7, 624
	ori	$a7, $a7, 89
	lu32i.d	$a7, 393306
	lu52i.d	$a7, $a7, 2
	st.d	$a7, $a0, 872
	lu12i.w	$a7, 592
	ori	$a7, $a7, 91
	lu32i.d	$a7, 262236
	lu52i.d	$a7, $a7, 2
	st.d	$a7, $a0, 880
	lu12i.w	$a7, 560
	ori	$a7, $a7, 93
	lu32i.d	$a7, 131166
	lu52i.d	$a7, $a7, 2
	st.d	$a7, $a0, 888
	ori	$a7, $zero, 95
	st.h	$a7, $a0, 896
	lu12i.w	$a7, 1536
	ori	$a7, $a7, 33
	st.w	$a7, $a0, 898
	ori	$a7, $zero, 97
	st.h	$a7, $a0, 904
	ori	$a7, $zero, 98
	st.h	$a7, $a0, 908
	ori	$a7, $zero, 99
	st.h	$a7, $a0, 912
	ori	$a7, $zero, 100
	st.h	$a7, $a0, 916
	ori	$a7, $zero, 101
	st.h	$a7, $a0, 920
	ori	$a7, $zero, 102
	st.h	$a7, $a0, 924
	ori	$a7, $zero, 103
	st.h	$a7, $a0, 928
	lu12i.w	$a7, 1664
	ori	$a7, $a7, 25
	lu32i.d	$a7, -458728
	lu52i.d	$a7, $a7, 6
	st.d	$a7, $a0, 930
	lu12i.w	$a7, 1696
	ori	$a7, $a7, 23
	lu32i.d	$a7, -327658
	lu52i.d	$a7, $a7, 6
	st.d	$a7, $a0, 938
	lu12i.w	$a7, 1728
	ori	$a7, $a7, 21
	lu32i.d	$a7, -196588
	lu52i.d	$a7, $a7, 6
	st.d	$a7, $a0, 946
	lu12i.w	$a7, 1760
	ori	$a7, $a7, 19
	lu32i.d	$a7, -65518
	lu52i.d	$a7, $a7, 6
	st.d	$a7, $a0, 954
	lu12i.w	$a7, 1792
	ori	$a7, $a7, 17
	st.w	$a7, $a0, 962
	ori	$a7, $zero, 113
	st.h	$a7, $a0, 968
	ori	$a7, $zero, 114
	st.h	$a7, $a0, 972
	ori	$a7, $zero, 115
	st.h	$a7, $a0, 976
	ori	$a7, $zero, 116
	st.h	$a7, $a0, 980
	ori	$a7, $zero, 117
	st.h	$a7, $a0, 984
	ori	$a7, $zero, 118
	st.h	$a7, $a0, 988
	ori	$a7, $zero, 119
	st.h	$a7, $a0, 992
	lu12i.w	$a7, 1920
	ori	$a7, $a7, 9
	lu32i.d	$a7, -458744
	lu52i.d	$a7, $a7, 7
	st.d	$a7, $a0, 994
	lu12i.w	$a7, 1952
	ori	$a7, $a7, 7
	lu32i.d	$a7, -327674
	lu52i.d	$a7, $a7, 7
	st.d	$a7, $a0, 1002
	lu12i.w	$a7, 1984
	ori	$a7, $a7, 5
	lu32i.d	$a7, -196604
	lu52i.d	$a7, $a7, 7
	st.d	$a7, $a0, 1010
	lu12i.w	$a7, 2016
	ori	$a7, $a7, 3
	lu32i.d	$a7, -65534
	lu52i.d	$a7, $a7, 7
	st.d	$a7, $a0, 1018
	lu12i.w	$a7, 2048
	ori	$a7, $a7, 1
	lu52i.d	$a7, $a7, 8
	st.d	$a7, $a0, 1026
	addi.d	$a7, $a0, 1032
	st.d	$a7, $a0, 408
	ori	$a7, $zero, 129
	st.h	$a7, $a0, 1036
	ori	$a7, $zero, 130
	st.h	$a7, $a0, 1040
	ori	$a7, $zero, 131
	st.h	$a7, $a0, 1044
	ori	$a7, $zero, 132
	st.h	$a7, $a0, 1048
	ori	$a7, $zero, 133
	st.h	$a7, $a0, 1052
	ori	$a7, $zero, 134
	st.h	$a7, $a0, 1056
	ori	$a7, $zero, 135
	st.h	$a7, $a0, 1060
	lu12i.w	$a7, 2176
	ori	$a7, $a7, 57
	lu32i.d	$a7, -458696
	lu52i.d	$a7, $a7, 8
	st.d	$a7, $a0, 1062
	lu12i.w	$a7, 2208
	ori	$a7, $a7, 55
	lu32i.d	$a7, -327626
	lu52i.d	$a7, $a7, 8
	st.d	$a7, $a0, 1070
	lu12i.w	$a7, 2240
	ori	$a7, $a7, 53
	lu32i.d	$a7, -196556
	lu52i.d	$a7, $a7, 8
	st.d	$a7, $a0, 1078
	lu12i.w	$a7, 2272
	ori	$a7, $a7, 51
	lu32i.d	$a7, -65486
	lu52i.d	$a7, $a7, 8
	st.d	$a7, $a0, 1086
	lu12i.w	$a7, 2304
	ori	$a7, $a7, 49
	st.w	$a7, $a0, 1094
	ori	$a7, $zero, 145
	st.h	$a7, $a0, 1100
	ori	$a7, $zero, 146
	st.h	$a7, $a0, 1104
	ori	$a7, $zero, 147
	st.h	$a7, $a0, 1108
	ori	$a7, $zero, 148
	st.h	$a7, $a0, 1112
	ori	$a7, $zero, 149
	st.h	$a7, $a0, 1116
	ori	$a7, $zero, 150
	st.h	$a7, $a0, 1120
	ori	$a7, $zero, 151
	st.h	$a7, $a0, 1124
	lu12i.w	$a7, 2432
	ori	$a7, $a7, 41
	st.w	$a7, $a0, 1126
	ori	$a7, $zero, 153
	st.h	$a7, $a0, 1132
	ori	$a7, $zero, 154
	st.h	$a7, $a0, 1136
	ori	$a7, $zero, 155
	st.h	$a7, $a0, 1140
	ori	$a7, $zero, 156
	st.h	$a7, $a0, 1144
	ori	$a7, $zero, 157
	st.h	$a7, $a0, 1148
	ori	$a7, $zero, 158
	st.h	$a7, $a0, 1152
	ori	$a7, $zero, 159
	st.h	$a7, $a0, 1156
	lu12i.w	$a7, 2560
	ori	$a7, $a7, 33
	st.w	$a7, $a0, 1158
	ori	$a7, $zero, 161
	st.h	$a7, $a0, 1164
	ori	$a7, $zero, 162
	st.h	$a7, $a0, 1168
	ori	$a7, $zero, 163
	st.h	$a7, $a0, 1172
	ori	$a7, $zero, 164
	st.h	$a7, $a0, 1176
	ori	$a7, $zero, 165
	st.h	$a7, $a0, 1180
	ori	$a7, $zero, 166
	st.h	$a7, $a0, 1184
	ori	$a7, $zero, 167
	st.h	$a7, $a0, 1188
	lu12i.w	$a7, 2688
	ori	$a7, $a7, 25
	st.w	$a7, $a0, 1190
	ori	$a7, $zero, 169
	st.h	$a7, $a0, 1196
	ori	$a7, $zero, 170
	st.h	$a7, $a0, 1200
	ori	$a7, $zero, 171
	st.h	$a7, $a0, 1204
	ori	$a7, $zero, 172
	st.h	$a7, $a0, 1208
	ori	$a7, $zero, 173
	st.h	$a7, $a0, 1212
	ori	$a7, $zero, 174
	st.h	$a7, $a0, 1216
	ori	$a7, $zero, 175
	st.h	$a7, $a0, 1220
	lu12i.w	$a7, 2816
	ori	$a7, $a7, 17
	st.w	$a7, $a0, 1222
	ori	$a7, $zero, 177
	st.h	$a7, $a0, 1228
	ori	$a7, $zero, 178
	st.h	$a7, $a0, 1232
	ori	$a7, $zero, 179
	st.h	$a7, $a0, 1236
	ori	$a7, $zero, 180
	st.h	$a7, $a0, 1240
	ori	$a7, $zero, 181
	st.h	$a7, $a0, 1244
	ori	$a7, $zero, 182
	st.h	$a7, $a0, 1248
	ori	$a7, $zero, 183
	st.h	$a7, $a0, 1252
	lu12i.w	$a7, 2944
	ori	$a7, $a7, 9
	st.w	$a7, $a0, 1254
	ori	$a7, $zero, 185
	st.h	$a7, $a0, 1260
	ori	$a7, $zero, 186
	st.h	$a7, $a0, 1264
	ori	$a7, $zero, 187
	st.h	$a7, $a0, 1268
	ori	$a7, $zero, 188
	st.h	$a7, $a0, 1272
	ori	$a7, $zero, 189
	st.h	$a7, $a0, 1276
	ori	$a7, $zero, 190
	st.h	$a7, $a0, 1280
	ori	$a7, $zero, 191
	st.h	$a7, $a0, 1284
	lu12i.w	$a7, 3072
	ori	$a7, $a7, 1
	st.w	$a7, $a0, 1286
	ori	$a7, $zero, 46
	st.h	$a7, $a0, 846
	st.d	$a6, $a0, 400
	st.d	$a6, $a0, 416
	addi.d	$a6, $a0, 1292
	st.d	$a6, $a0, 424
	ori	$a6, $zero, 192
	st.h	$a6, $a0, 1292
	ori	$a6, $zero, 193
	st.h	$a6, $a0, 1296
	ori	$a6, $zero, 194
	st.h	$a6, $a0, 1300
	ori	$a6, $zero, 195
	st.h	$a6, $a0, 1304
	ori	$a6, $zero, 196
	st.h	$a6, $a0, 1308
	ori	$a6, $zero, 197
	st.h	$a6, $a0, 1312
	ori	$a6, $zero, 198
	st.h	$a6, $a0, 1316
	ori	$a6, $zero, 199
	st.h	$a6, $a0, 1320
	ori	$a6, $zero, 45
	st.h	$a6, $a0, 850
	st.h	$a4, $a0, 1034
	st.h	$a4, $a0, 1294
	ori	$a4, $zero, 63
	st.h	$a4, $a0, 1038
	st.h	$a4, $a0, 1298
	ori	$a4, $zero, 62
	st.h	$a4, $a0, 1042
	st.h	$a4, $a0, 1302
	ori	$a4, $zero, 61
	st.h	$a4, $a0, 1046
	st.h	$a4, $a0, 1306
	ori	$a4, $zero, 60
	st.h	$a4, $a0, 1050
	st.h	$a4, $a0, 1310
	ori	$a4, $zero, 59
	st.h	$a4, $a0, 1054
	st.h	$a4, $a0, 1314
	ori	$a4, $zero, 58
	st.h	$a4, $a0, 1058
	st.h	$a4, $a0, 1318
	lu12i.w	$a4, 3200
	ori	$a4, $a4, 57
	st.w	$a4, $a0, 1322
	ori	$a4, $zero, 201
	st.h	$a4, $a0, 1328
	ori	$a4, $zero, 202
	st.h	$a4, $a0, 1332
	ori	$a4, $zero, 203
	st.h	$a4, $a0, 1336
	ori	$a4, $zero, 204
	st.h	$a4, $a0, 1340
	ori	$a4, $zero, 205
	st.h	$a4, $a0, 1344
	ori	$a4, $zero, 206
	st.h	$a4, $a0, 1348
	ori	$a4, $zero, 207
	st.h	$a4, $a0, 1352
	ori	$a4, $zero, 44
	st.h	$a4, $a0, 854
	st.h	$a5, $a0, 1326
	ori	$a5, $zero, 55
	st.h	$a5, $a0, 1330
	ori	$a5, $zero, 54
	st.h	$a5, $a0, 1334
	ori	$a5, $zero, 53
	st.h	$a5, $a0, 1338
	ori	$a5, $zero, 52
	st.h	$a5, $a0, 1342
	ori	$a5, $zero, 51
	st.h	$a5, $a0, 1346
	ori	$a5, $zero, 50
	st.h	$a5, $a0, 1350
	lu12i.w	$a5, 3328
	ori	$a5, $a5, 49
	st.w	$a5, $a0, 1354
	ori	$a5, $zero, 209
	st.h	$a5, $a0, 1360
	ori	$a5, $zero, 210
	st.h	$a5, $a0, 1364
	ori	$a5, $zero, 211
	st.h	$a5, $a0, 1368
	ori	$a5, $zero, 212
	st.h	$a5, $a0, 1372
	ori	$a5, $zero, 213
	st.h	$a5, $a0, 1376
	ori	$a5, $zero, 214
	st.h	$a5, $a0, 1380
	ori	$a5, $zero, 215
	st.h	$a5, $a0, 1384
	ori	$t0, $zero, 43
	st.h	$t0, $a0, 858
	st.h	$a3, $a0, 1098
	st.h	$a3, $a0, 1358
	ori	$t1, $zero, 42
	st.h	$t1, $a0, 862
	st.h	$a2, $a0, 1102
	st.h	$a2, $a0, 1362
	ori	$t2, $zero, 40
	st.h	$t2, $a0, 870
	st.h	$a7, $a0, 1106
	st.h	$a7, $a0, 1366
	ori	$a2, $zero, 32
	st.h	$a2, $a0, 902
	st.h	$a6, $a0, 1110
	st.h	$a6, $a0, 1370
	ori	$a3, $zero, 31
	st.h	$a3, $a0, 906
	st.h	$a4, $a0, 1114
	st.h	$a4, $a0, 1374
	ori	$a5, $zero, 30
	st.h	$a5, $a0, 910
	st.h	$t0, $a0, 1118
	st.h	$t0, $a0, 1378
	ori	$a6, $zero, 29
	st.h	$a6, $a0, 914
	st.h	$t1, $a0, 1122
	st.h	$t1, $a0, 1382
	lu12i.w	$a4, 3456
	ori	$a4, $a4, 41
	st.w	$a4, $a0, 1386
	ori	$a4, $zero, 217
	st.h	$a4, $a0, 1392
	ori	$a4, $zero, 218
	st.h	$a4, $a0, 1396
	ori	$a4, $zero, 219
	st.h	$a4, $a0, 1400
	ori	$a4, $zero, 220
	st.h	$a4, $a0, 1404
	ori	$a4, $zero, 221
	st.h	$a4, $a0, 1408
	ori	$a4, $zero, 222
	st.h	$a4, $a0, 1412
	ori	$a4, $zero, 223
	st.h	$a4, $a0, 1416
	ori	$a7, $zero, 28
	st.h	$a7, $a0, 918
	st.h	$t2, $a0, 1130
	st.h	$t2, $a0, 1390
	ori	$a4, $zero, 39
	st.h	$a4, $a0, 1134
	st.h	$a4, $a0, 1394
	ori	$a4, $zero, 38
	st.h	$a4, $a0, 1138
	st.h	$a4, $a0, 1398
	ori	$a4, $zero, 37
	st.h	$a4, $a0, 1142
	st.h	$a4, $a0, 1402
	ori	$a4, $zero, 35
	st.h	$a4, $a0, 1150
	st.h	$a4, $a0, 1410
	ori	$a4, $zero, 34
	st.h	$a4, $a0, 1154
	st.h	$a4, $a0, 1414
	lu12i.w	$a4, 3584
	ori	$a4, $a4, 33
	st.w	$a4, $a0, 1418
	ori	$a4, $zero, 225
	st.h	$a4, $a0, 1424
	ori	$a4, $zero, 226
	st.h	$a4, $a0, 1428
	ori	$a4, $zero, 227
	st.h	$a4, $a0, 1432
	ori	$a4, $zero, 228
	st.h	$a4, $a0, 1436
	ori	$a4, $zero, 229
	st.h	$a4, $a0, 1440
	ori	$a4, $zero, 230
	st.h	$a4, $a0, 1444
	ori	$a4, $zero, 231
	st.h	$a4, $a0, 1448
	ori	$t0, $zero, 27
	st.h	$t0, $a0, 922
	st.h	$a2, $a0, 1162
	st.h	$a2, $a0, 1422
	ori	$a2, $zero, 26
	st.h	$a2, $a0, 926
	st.h	$a3, $a0, 1166
	st.h	$a3, $a0, 1426
	ori	$a4, $zero, 16
	st.h	$a4, $a0, 966
	st.h	$a5, $a0, 1170
	st.h	$a5, $a0, 1430
	ori	$a5, $zero, 15
	st.h	$a5, $a0, 970
	st.h	$a6, $a0, 1174
	st.h	$a6, $a0, 1434
	ori	$a6, $zero, 14
	st.h	$a6, $a0, 974
	st.h	$a7, $a0, 1178
	st.h	$a7, $a0, 1438
	ori	$a7, $zero, 13
	st.h	$a7, $a0, 978
	st.h	$t0, $a0, 1182
	st.h	$t0, $a0, 1442
	ori	$a3, $zero, 12
	st.h	$a3, $a0, 982
	st.h	$a2, $a0, 1186
	st.h	$a2, $a0, 1446
	lu12i.w	$a2, 3712
	ori	$a2, $a2, 25
	st.w	$a2, $a0, 1450
	ori	$a2, $zero, 233
	st.h	$a2, $a0, 1456
	ori	$a2, $zero, 234
	st.h	$a2, $a0, 1460
	ori	$a2, $zero, 235
	st.h	$a2, $a0, 1464
	ori	$a2, $zero, 236
	st.h	$a2, $a0, 1468
	ori	$a2, $zero, 237
	st.h	$a2, $a0, 1472
	ori	$a2, $zero, 238
	st.h	$a2, $a0, 1476
	ori	$a2, $zero, 239
	st.h	$a2, $a0, 1480
	ori	$a2, $zero, 23
	st.h	$a2, $a0, 1198
	st.h	$a2, $a0, 1458
	ori	$a2, $zero, 22
	st.h	$a2, $a0, 1202
	st.h	$a2, $a0, 1462
	ori	$a2, $zero, 21
	st.h	$a2, $a0, 1206
	st.h	$a2, $a0, 1466
	ori	$a2, $zero, 20
	st.h	$a2, $a0, 1210
	st.h	$a2, $a0, 1470
	ori	$a2, $zero, 19
	st.h	$a2, $a0, 1214
	st.h	$a2, $a0, 1474
	ori	$a2, $zero, 18
	st.h	$a2, $a0, 1218
	st.h	$a2, $a0, 1478
	lu12i.w	$a2, 3840
	ori	$a2, $a2, 17
	st.w	$a2, $a0, 1482
	ori	$a2, $zero, 241
	st.h	$a2, $a0, 1488
	ori	$a2, $zero, 242
	st.h	$a2, $a0, 1492
	ori	$a2, $zero, 243
	st.h	$a2, $a0, 1496
	ori	$a2, $zero, 244
	st.h	$a2, $a0, 1500
	ori	$a2, $zero, 245
	st.h	$a2, $a0, 1504
	ori	$a2, $zero, 246
	st.h	$a2, $a0, 1508
	ori	$a2, $zero, 247
	st.h	$a2, $a0, 1512
	ori	$a2, $zero, 4
	st.h	$a4, $a0, 1226
	st.h	$a4, $a0, 1486
	ori	$t0, $zero, 11
	st.h	$t0, $a0, 986
	st.h	$a5, $a0, 1230
	st.h	$a5, $a0, 1490
	ori	$t1, $zero, 10
	st.h	$t1, $a0, 990
	st.h	$a6, $a0, 1234
	st.h	$a6, $a0, 1494
	ori	$a4, $zero, 36
	st.h	$a4, $a0, 1146
	st.h	$a7, $a0, 1238
	st.h	$a7, $a0, 1498
	ori	$a5, $zero, 24
	st.h	$a5, $a0, 1194
	st.h	$a3, $a0, 1242
	st.h	$t0, $a0, 1246
	st.h	$t1, $a0, 1250
	st.h	$a3, $a0, 1502
	ori	$a3, $zero, 8
	st.h	$a3, $a0, 1258
	st.h	$t0, $a0, 1506
	ori	$a6, $zero, 7
	st.h	$a6, $a0, 1262
	st.h	$t1, $a0, 1510
	lu12i.w	$a7, 3968
	ori	$a7, $a7, 9
	st.w	$a7, $a0, 1514
	ori	$a7, $zero, 249
	st.h	$a7, $a0, 1520
	ori	$a7, $zero, 250
	st.h	$a7, $a0, 1524
	ori	$a7, $zero, 251
	st.h	$a7, $a0, 1528
	ori	$a7, $zero, 252
	st.h	$a7, $a0, 1532
	ori	$a7, $zero, 253
	st.h	$a7, $a0, 1536
	ori	$a7, $zero, 254
	st.h	$a7, $a0, 1540
	ori	$a7, $zero, 255
	st.h	$a7, $a0, 1544
	ori	$a7, $zero, 6
	st.h	$a7, $a0, 1266
	st.h	$a3, $a0, 1518
	pcalau12i	$a3, %pc_hi20(.LCPI12_3)
	vld	$vr0, $a3, %pc_lo12(.LCPI12_3)
	ori	$a3, $zero, 5
	st.h	$a3, $a0, 1270
	st.h	$a2, $a0, 1274
	st.h	$a6, $a0, 1522
	vst	$vr0, $a0, 1552
	pcalau12i	$a6, %pc_hi20(.LCPI12_4)
	vld	$vr0, $a6, %pc_lo12(.LCPI12_4)
	ori	$a6, $zero, 3
	st.h	$a6, $a0, 1278
	st.h	$a7, $a0, 1526
	vst	$vr0, $a0, 1568
	pcalau12i	$a7, %pc_hi20(.LCPI12_5)
	vld	$vr0, $a7, %pc_lo12(.LCPI12_5)
	ori	$a7, $zero, 2
	st.h	$a7, $a0, 1282
	st.h	$zero, $a0, 1290
	st.h	$a4, $a0, 1406
	st.h	$a5, $a0, 1454
	st.h	$a3, $a0, 1530
	vst	$vr0, $a0, 1584
	pcalau12i	$a3, %pc_hi20(.LCPI12_6)
	vld	$vr0, $a3, %pc_lo12(.LCPI12_6)
	st.h	$a2, $a0, 1534
	st.h	$a6, $a0, 1538
	st.h	$a7, $a0, 1542
	vst	$vr0, $a0, 1600
	pcalau12i	$a3, %pc_hi20(.LCPI12_7)
	vld	$vr0, $a3, %pc_lo12(.LCPI12_7)
	lu12i.w	$a3, 4096
	ori	$a3, $a3, 1
	st.w	$a3, $a0, 1546
	st.h	$zero, $a0, 1550
	addi.d	$a3, $a0, 1552
	vst	$vr0, $a0, 1616
	pcalau12i	$a6, %pc_hi20(.LCPI12_8)
	vld	$vr0, $a6, %pc_lo12(.LCPI12_8)
	ori	$a6, $zero, 4
	lu32i.d	$a6, 24
	st.d	$a6, $a0, 432
	st.d	$a3, $a0, 440
	vst	$vr0, $a0, 1632
	st.w	$a5, $a0, 1648
	slli.d	$a5, $fp, 1
	addi.w	$a3, $a5, 0
	sltui	$a6, $a3, 36
	masknez	$a7, $a4, $a6
	addi.d	$a4, $a0, 1652
	maskeqz	$a6, $a3, $a6
	or	$a6, $a6, $a7
	st.w	$a2, $a0, 448
	st.w	$a6, $a0, 452
	st.d	$a4, $a0, 456
	addi.d	$a2, $a0, 1658
	move	$a7, $a6
	.p2align	4, , 16
.LBB12_10:                              # %vector.body201
                                        # =>This Inner Loop Header: Depth=1
	ori	$t0, $a1, 1
	st.h	$a1, $a2, -6
	st.h	$t0, $a2, -2
	addi.d	$t0, $a7, -1
	st.h	$a7, $a2, -4
	st.h	$t0, $a2, 0
	addi.d	$a1, $a1, 2
	addi.d	$a7, $a7, -2
	addi.d	$a2, $a2, 8
	bne	$a6, $a1, .LBB12_10
# %bb.11:                               # %for.body.i127
	alsl.d	$a1, $a6, $a4, 2
	slli.d	$a2, $a6, 2
	stx.h	$a6, $a4, $a2
	st.h	$zero, $a1, 2
	addi.d	$a1, $a0, 1800
	ori	$a2, $zero, 4
	st.w	$a2, $a0, 464
	st.w	$a5, $a0, 468
	st.d	$a1, $a0, 472
	beqz	$fp, .LBB12_19
# %bb.12:                               # %vector.ph206
	move	$a1, $zero
	addi.d	$a2, $a0, 1806
	move	$a4, $a5
	.p2align	4, , 16
.LBB12_13:                              # %vector.body209
                                        # =>This Inner Loop Header: Depth=1
	ori	$a6, $a1, 1
	st.h	$a1, $a2, -6
	st.h	$a6, $a2, -2
	addi.d	$a6, $a4, -1
	st.h	$a4, $a2, -4
	st.h	$a6, $a2, 0
	addi.d	$a1, $a1, 2
	addi.d	$a4, $a4, -2
	addi.d	$a2, $a2, 8
	bne	$a3, $a1, .LBB12_13
	b	.LBB12_20
.LBB12_14:
	move	$a0, $zero
.LBB12_15:                              # %cleanup
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
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
.LBB12_16:                              # %if.then52
	move	$a0, $s6
	b	.LBB12_18
.LBB12_17:                              # %if.then58
	ld.d	$a1, $a0, 16
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB12_18:                              # %cleanup
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB12_15
.LBB12_19:
	move	$a3, $zero
.LBB12_20:                              # %for.body.i139.preheader
	bstrpick.d	$a1, $a5, 31, 0
	addi.d	$a1, $a1, 1
	alsl.d	$a2, $a3, $a0, 2
	addi.d	$a2, $a2, 1802
	sub.d	$a4, $a5, $a3
	.p2align	4, , 16
.LBB12_21:                              # %for.body.i139
                                        # =>This Inner Loop Header: Depth=1
	st.h	$a3, $a2, -2
	st.h	$a4, $a2, 0
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 4
	addi.d	$a4, $a4, -1
	bne	$a1, $a3, .LBB12_21
# %bb.22:                               # %qtm_init_model.exit147
	pcalau12i	$a1, %pc_hi20(.LCPI12_9)
	vld	$vr0, $a1, %pc_lo12(.LCPI12_9)
	vst	$vr0, $a0, 1972
	pcalau12i	$a1, %pc_hi20(.LCPI12_10)
	vld	$vr0, $a1, %pc_lo12(.LCPI12_10)
	pcalau12i	$a1, %pc_hi20(.LCPI12_11)
	vld	$vr1, $a1, %pc_lo12(.LCPI12_11)
	pcalau12i	$a1, %pc_hi20(.LCPI12_12)
	vld	$vr2, $a1, %pc_lo12(.LCPI12_12)
	pcalau12i	$a1, %pc_hi20(.LCPI12_13)
	vld	$vr3, $a1, %pc_lo12(.LCPI12_13)
	vst	$vr0, $a0, 1988
	vst	$vr1, $a0, 2004
	vst	$vr2, $a0, 2020
	vst	$vr3, $a0, 2036
	pcalau12i	$a1, %pc_hi20(.LCPI12_14)
	vld	$vr0, $a1, %pc_lo12(.LCPI12_14)
	addi.d	$a1, $a0, 1972
	ori	$a2, $zero, 4
	ori	$a3, $zero, 2052
	vstx	$vr0, $a0, $a3
	pcalau12i	$a3, %pc_hi20(.LCPI12_15)
	vld	$vr0, $a3, %pc_lo12(.LCPI12_15)
	ori	$a3, $zero, 4
	lu32i.d	$a3, 27
	st.d	$a3, $a0, 480
	st.d	$a1, $a0, 488
	ori	$a1, $zero, 2068
	vstx	$vr0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(.LCPI12_16)
	vld	$vr0, $a1, %pc_lo12(.LCPI12_16)
	ori	$a1, $zero, 2084
	add.d	$a3, $a0, $a1
	lu32i.d	$a2, 7
	vstx	$vr0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(.LCPI12_17)
	vld	$vr0, $a1, %pc_lo12(.LCPI12_17)
	st.d	$a2, $a0, 496
	st.d	$a3, $a0, 504
	ori	$a1, $zero, 2100
	vstx	$vr0, $a0, $a1
	stptr.d	$s1, $a0, 2120
	stptr.d	$s2, $a0, 2128
	b	.LBB12_15
.Lfunc_end12:
	.size	qtm_init, .Lfunc_end12-qtm_init
                                        # -- End function
	.globl	qtm_decompress                  # -- Begin function qtm_decompress
	.p2align	5
	.type	qtm_decompress,@function
qtm_decompress:                         # @qtm_decompress
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
	move	$fp, $a0
	addi.w	$a0, $zero, -111
	beqz	$fp, .LBB13_315
# %bb.1:                                # %entry
	move	$s4, $a1
	bltz	$a1, .LBB13_315
# %bb.2:                                # %if.end
	ld.w	$a0, $fp, 44
	bnez	$a0, .LBB13_315
# %bb.3:                                # %if.end4
	ld.d	$a0, $fp, 80
	ld.d	$a1, $fp, 72
	sub.w	$a0, $a0, $a1
	slt	$a2, $s4, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s4, $a2
	or	$a0, $a2, $a0
	addi.w	$s1, $a0, 0
	beqz	$s1, .LBB13_8
# %bb.4:                                # %if.then12
	ld.bu	$a0, $fp, 8
	beqz	$a0, .LBB13_7
# %bb.5:                                # %land.lhs.true
	ld.w	$a0, $fp, 4
	move	$a2, $s1
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	bne	$a0, $s1, .LBB13_312
# %bb.6:                                # %land.lhs.true.if.end20_crit_edge
	ld.d	$a1, $fp, 72
.LBB13_7:                               # %if.end20
	add.d	$a1, $a1, $s1
	st.d	$a1, $fp, 72
	sub.d	$s4, $s4, $s1
.LBB13_8:                               # %if.end23
	beqz	$s4, .LBB13_314
# %bb.9:                                # %do.body
	ld.d	$s5, $fp, 56
	ld.d	$t8, $fp, 64
	ld.w	$s7, $fp, 88
	ld.bu	$s8, $fp, 96
	ld.w	$s6, $fp, 28
	ld.w	$a0, $fp, 32
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.hu	$s2, $fp, 36
	ld.d	$a0, $fp, 80
	ld.hu	$s1, $fp, 38
	ld.hu	$s3, $fp, 40
	sub.d	$a2, $a0, $a1
	bge	$a2, $s4, .LBB13_306
# %bb.10:                               # %while.body.lr.ph
	ld.d	$a2, $fp, 16
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	addi.d	$a2, $a2, 16
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	ori	$t7, $zero, 16
	ori	$a4, $zero, 32
	lu12i.w	$a2, 15
	ori	$a2, $a2, 4095
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
.LBB13_11:                              # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_17 Depth 2
                                        #     Child Loop BB13_24 Depth 2
                                        #       Child Loop BB13_26 Depth 3
                                        #       Child Loop BB13_32 Depth 3
                                        #       Child Loop BB13_35 Depth 3
                                        #       Child Loop BB13_43 Depth 3
                                        #       Child Loop BB13_67 Depth 3
                                        #       Child Loop BB13_137 Depth 3
                                        #       Child Loop BB13_140 Depth 3
                                        #       Child Loop BB13_146 Depth 3
                                        #       Child Loop BB13_160 Depth 3
                                        #       Child Loop BB13_95 Depth 3
                                        #       Child Loop BB13_108 Depth 3
                                        #       Child Loop BB13_111 Depth 3
                                        #       Child Loop BB13_119 Depth 3
                                        #       Child Loop BB13_132 Depth 3
                                        #       Child Loop BB13_102 Depth 3
                                        #       Child Loop BB13_168 Depth 3
                                        #       Child Loop BB13_171 Depth 3
                                        #       Child Loop BB13_179 Depth 3
                                        #       Child Loop BB13_191 Depth 3
                                        #       Child Loop BB13_202 Depth 3
                                        #       Child Loop BB13_208 Depth 3
                                        #       Child Loop BB13_211 Depth 3
                                        #       Child Loop BB13_219 Depth 3
                                        #       Child Loop BB13_233 Depth 3
                                        #       Child Loop BB13_255 Depth 3
                                        #       Child Loop BB13_259 Depth 3
                                        #       Child Loop BB13_262 Depth 3
                                        #       Child Loop BB13_245 Depth 3
                                        #       Child Loop BB13_265 Depth 3
                                        #       Child Loop BB13_274 Depth 3
                                        #       Child Loop BB13_278 Depth 3
                                        #       Child Loop BB13_281 Depth 3
                                        #       Child Loop BB13_57 Depth 3
                                        #       Child Loop BB13_73 Depth 3
                                        #       Child Loop BB13_76 Depth 3
                                        #       Child Loop BB13_84 Depth 3
                                        #     Child Loop BB13_294 Depth 2
	ld.bu	$a2, $fp, 42
	bnez	$a2, .LBB13_22
# %bb.12:                               # %do.body51.preheader
                                        #   in Loop: Header=BB13_11 Depth=1
	move	$s0, $zero
	ori	$s1, $zero, 16
	b	.LBB13_17
.LBB13_13:                              # %cond.false.i
                                        #   in Loop: Header=BB13_17 Depth=2
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ori	$t7, $zero, 16
	ori	$a4, $zero, 32
	bltz	$a0, .LBB13_312
.LBB13_14:                              # %if.end63
                                        #   in Loop: Header=BB13_17 Depth=2
	ld.d	$s5, $fp, 48
	st.d	$s5, $fp, 56
	add.d	$t8, $s5, $a0
	st.d	$t8, $fp, 64
.LBB13_15:                              # %if.end66
                                        #   in Loop: Header=BB13_17 Depth=2
	ld.hu	$a0, $s5, 0
	revb.d	$a0, $a0
	srli.d	$a0, $a0, 48
	sub.d	$a1, $t7, $s2
	sll.w	$a0, $a0, $a1
	or	$s7, $a0, $s7
	addi.d	$s8, $s8, 16
	addi.d	$s5, $s5, 2
	andi	$s2, $s8, 255
.LBB13_16:                              # %do.end79
                                        #   in Loop: Header=BB13_17 Depth=2
	sltu	$a0, $s1, $s2
	masknez	$a1, $s2, $a0
	maskeqz	$a0, $s1, $a0
	or	$a0, $a0, $a1
	sll.w	$a1, $s0, $a0
	sub.d	$a2, $a4, $a0
	srl.w	$a2, $s7, $a2
	or	$s0, $a2, $a1
	sll.w	$s7, $s7, $a0
	sub.d	$a1, $s1, $a0
	andi	$s1, $a1, 255
	sub.d	$s8, $s8, $a0
	beqz	$s1, .LBB13_21
.LBB13_17:                              # %do.body51
                                        #   Parent Loop BB13_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$s2, $s8, 255
	bltu	$t7, $s2, .LBB13_16
# %bb.18:                               # %if.then55
                                        #   in Loop: Header=BB13_17 Depth=2
	bltu	$s5, $t8, .LBB13_15
# %bb.19:                               # %if.then58
                                        #   in Loop: Header=BB13_17 Depth=2
	ldptr.d	$a3, $fp, 2128
	ld.d	$a1, $fp, 48
	ld.w	$a2, $fp, 92
	beqz	$a3, .LBB13_13
# %bb.20:                               # %cond.true.i
                                        #   in Loop: Header=BB13_17 Depth=2
	ldptr.d	$a0, $fp, 2120
	jirl	$ra, $a3, 0
	ori	$t7, $zero, 16
	ori	$a4, $zero, 32
	bgez	$a0, .LBB13_14
	b	.LBB13_312
.LBB13_21:                              # %do.end106
                                        #   in Loop: Header=BB13_11 Depth=1
	ld.d	$a0, $fp, 80
	ld.d	$a1, $fp, 72
	move	$s1, $zero
	bstrpick.d	$s3, $s0, 15, 0
	ori	$a2, $zero, 1
	st.b	$a2, $fp, 42
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
.LBB13_22:                              # %if.end108
                                        #   in Loop: Header=BB13_11 Depth=1
	sub.d	$a0, $s4, $a0
	add.d	$a0, $a0, $a1
	add.w	$a0, $s6, $a0
	lu12i.w	$a1, 8
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	add.w	$a1, $a2, $a1
	sltu	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	bgeu	$s6, $a0, .LBB13_287
# %bb.23:                               # %do.body128.preheader
                                        #   in Loop: Header=BB13_11 Depth=1
	st.d	$s4, $sp, 64                    # 8-byte Folded Spill
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
.LBB13_24:                              # %do.body128
                                        #   Parent Loop BB13_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_26 Depth 3
                                        #       Child Loop BB13_32 Depth 3
                                        #       Child Loop BB13_35 Depth 3
                                        #       Child Loop BB13_43 Depth 3
                                        #       Child Loop BB13_67 Depth 3
                                        #       Child Loop BB13_137 Depth 3
                                        #       Child Loop BB13_140 Depth 3
                                        #       Child Loop BB13_146 Depth 3
                                        #       Child Loop BB13_160 Depth 3
                                        #       Child Loop BB13_95 Depth 3
                                        #       Child Loop BB13_108 Depth 3
                                        #       Child Loop BB13_111 Depth 3
                                        #       Child Loop BB13_119 Depth 3
                                        #       Child Loop BB13_132 Depth 3
                                        #       Child Loop BB13_102 Depth 3
                                        #       Child Loop BB13_168 Depth 3
                                        #       Child Loop BB13_171 Depth 3
                                        #       Child Loop BB13_179 Depth 3
                                        #       Child Loop BB13_191 Depth 3
                                        #       Child Loop BB13_202 Depth 3
                                        #       Child Loop BB13_208 Depth 3
                                        #       Child Loop BB13_211 Depth 3
                                        #       Child Loop BB13_219 Depth 3
                                        #       Child Loop BB13_233 Depth 3
                                        #       Child Loop BB13_255 Depth 3
                                        #       Child Loop BB13_259 Depth 3
                                        #       Child Loop BB13_262 Depth 3
                                        #       Child Loop BB13_245 Depth 3
                                        #       Child Loop BB13_265 Depth 3
                                        #       Child Loop BB13_274 Depth 3
                                        #       Child Loop BB13_278 Depth 3
                                        #       Child Loop BB13_281 Depth 3
                                        #       Child Loop BB13_57 Depth 3
                                        #       Child Loop BB13_73 Depth 3
                                        #       Child Loop BB13_76 Depth 3
                                        #       Child Loop BB13_84 Depth 3
	ld.d	$a0, $fp, 504
	bstrpick.d	$a1, $s2, 15, 0
	ld.w	$a2, $fp, 500
	ld.hu	$s2, $a0, 2
	bstrpick.d	$a3, $s1, 15, 0
	sub.d	$s0, $a1, $a3
	ori	$a1, $zero, 1
	ori	$a4, $zero, 2
	blt	$a2, $a4, .LBB13_29
# %bb.25:                               # %for.body146.lr.ph
                                        #   in Loop: Header=BB13_24 Depth=2
	sub.d	$a1, $s3, $a3
	addi.d	$a1, $a1, 1
	mul.d	$a1, $a1, $s2
	addi.w	$a1, $a1, -1
	bstrpick.d	$a3, $s0, 15, 0
	addi.d	$a3, $a3, 1
	div.wu	$a5, $a1, $a3
	addi.d	$a3, $a0, 6
	addi.d	$a4, $a2, -1
	ori	$a1, $zero, 1
	bstrpick.d	$a5, $a5, 15, 0
	.p2align	4, , 16
.LBB13_26:                              # %for.body146
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.hu	$a6, $a3, 0
	bgeu	$a5, $a6, .LBB13_29
# %bb.27:                               # %for.inc157
                                        #   in Loop: Header=BB13_26 Depth=3
	addi.w	$a1, $a1, 1
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 4
	bnez	$a4, .LBB13_26
# %bb.28:                               #   in Loop: Header=BB13_24 Depth=2
	move	$a1, $a2
.LBB13_29:                              # %for.end158
                                        #   in Loop: Header=BB13_24 Depth=2
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	alsl.d	$a4, $a1, $a0, 2
	ld.hu	$t6, $a4, -4
	ld.hu	$s6, $a4, -2
	ld.hu	$s4, $a4, 2
	ori	$a2, $zero, 8
	st.d	$t6, $sp, 72                    # 8-byte Folded Spill
	bge	$a1, $a2, .LBB13_31
# %bb.30:                               #   in Loop: Header=BB13_24 Depth=2
	ori	$a4, $zero, 1
	b	.LBB13_34
.LBB13_31:                              # %vector.ph1865
                                        #   in Loop: Header=BB13_24 Depth=2
	ori	$a3, $zero, 1
	slt	$a2, $a3, $a1
	masknez	$a3, $a3, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	bstrpick.d	$a3, $a2, 30, 3
	slli.d	$a3, $a3, 3
	sub.d	$a1, $a1, $a3
	addi.d	$a4, $a4, -14
	move	$a5, $a3
	.p2align	4, , 16
.LBB13_32:                              # %vector.body1868
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a6, $a4, 12
	ld.h	$a7, $a4, 8
	ld.h	$t0, $a4, 4
	ld.h	$t1, $a4, 0
	ld.h	$t2, $a4, -4
	ld.h	$t3, $a4, -8
	ld.h	$t4, $a4, -12
	ld.h	$t5, $a4, -16
	vinsgr2vr.h	$vr0, $a6, 0
	vinsgr2vr.h	$vr0, $a7, 1
	vinsgr2vr.h	$vr0, $t0, 2
	vinsgr2vr.h	$vr0, $t1, 3
	vinsgr2vr.h	$vr0, $t2, 4
	vinsgr2vr.h	$vr0, $t3, 5
	vinsgr2vr.h	$vr0, $t4, 6
	vinsgr2vr.h	$vr0, $t5, 7
	vaddi.hu	$vr0, $vr0, 8
	vstelm.h	$vr0, $a4, 12, 0
	vstelm.h	$vr0, $a4, 8, 1
	vstelm.h	$vr0, $a4, 4, 2
	vstelm.h	$vr0, $a4, 0, 3
	vstelm.h	$vr0, $a4, -4, 4
	vstelm.h	$vr0, $a4, -8, 5
	vstelm.h	$vr0, $a4, -12, 6
	vstelm.h	$vr0, $a4, -16, 7
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, -32
	bnez	$a5, .LBB13_32
# %bb.33:                               # %middle.block1872
                                        #   in Loop: Header=BB13_24 Depth=2
	ori	$a4, $zero, 1
	beq	$a2, $a3, .LBB13_36
.LBB13_34:                              # %do.body200.preheader
                                        #   in Loop: Header=BB13_24 Depth=2
	addi.d	$a2, $a1, 1
	alsl.d	$a1, $a1, $a0, 2
	addi.d	$a1, $a1, -2
	.p2align	4, , 16
.LBB13_35:                              # %do.body200
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a3, $a1, 0
	addi.d	$a3, $a3, 8
	st.h	$a3, $a1, 0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, -4
	blt	$a4, $a2, .LBB13_35
.LBB13_36:                              # %do.end212
                                        #   in Loop: Header=BB13_24 Depth=2
	ld.hu	$a0, $a0, 2
	ori	$a1, $zero, 3801
	bltu	$a0, $a1, .LBB13_38
# %bb.37:                               # %if.then220
                                        #   in Loop: Header=BB13_24 Depth=2
	addi.d	$a0, $fp, 496
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	move	$s2, $s6
	move	$s6, $s4
	move	$s4, $s0
	move	$s0, $t8
	pcaddu18i	$ra, %call36(qtm_update_model)
	jirl	$ra, $ra, 0
	move	$t8, $s0
	move	$s0, $s4
	move	$s4, $s6
	move	$s6, $s2
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ori	$a4, $zero, 1
	ori	$t7, $zero, 16
.LBB13_38:                              # %while.cond223.preheader
                                        #   in Loop: Header=BB13_24 Depth=2
	addi.d	$a0, $s0, 1
	mul.w	$a1, $a0, $s6
	div.wu	$a1, $a1, $s2
	add.d	$a1, $s1, $a1
	addi.d	$s0, $a1, -1
	mul.w	$a0, $a0, $s4
	div.wu	$a0, $a0, $s2
	add.d	$s1, $s1, $a0
	lu12i.w	$s4, 4
	b	.LBB13_43
.LBB13_39:                              # %cond.false.i701
                                        #   in Loop: Header=BB13_43 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ori	$t7, $zero, 16
	ori	$a4, $zero, 1
	bltz	$a0, .LBB13_312
.LBB13_40:                              # %if.end269
                                        #   in Loop: Header=BB13_43 Depth=3
	ld.d	$s5, $fp, 48
	st.d	$s5, $fp, 56
	add.d	$t8, $s5, $a0
	st.d	$t8, $fp, 64
.LBB13_41:                              # %if.end272
                                        #   in Loop: Header=BB13_43 Depth=3
	ld.hu	$a0, $s5, 0
	revb.d	$a0, $a0
	srli.d	$a0, $a0, 48
	sub.d	$a1, $t7, $s2
	sll.w	$a0, $a0, $a1
	or	$s7, $a0, $s7
	addi.d	$s8, $s8, 16
	addi.d	$s5, $s5, 2
.LBB13_42:                              # %do.end290
                                        #   in Loop: Header=BB13_43 Depth=3
	slli.d	$s1, $s1, 1
	slli.d	$a0, $s0, 1
	addi.d	$s0, $a0, 1
	bstrpick.d	$a0, $s7, 31, 31
	slli.d	$a1, $s3, 1
	or	$a0, $a1, $a0
	bstrpick.d	$s3, $a0, 15, 0
	slli.d	$s7, $s7, 1
	addi.d	$s8, $s8, -1
.LBB13_43:                              # %while.cond223
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xor	$a0, $s1, $s0
	slli.d	$a0, $a0, 48
	bgez	$a0, .LBB13_47
# %bb.44:                               # %if.then231
                                        #   in Loop: Header=BB13_43 Depth=3
	bstrpick.d	$a2, $s0, 15, 0
	slli.d	$a0, $a2, 49
	bstrpick.d	$a3, $s1, 15, 0
	bltz	$a0, .LBB13_51
# %bb.45:                               # %if.then231
                                        #   in Loop: Header=BB13_43 Depth=3
	and	$a0, $a3, $s4
	beqz	$a0, .LBB13_51
# %bb.46:                               # %if.then239
                                        #   in Loop: Header=BB13_43 Depth=3
	xor	$s3, $s3, $s4
	bstrpick.d	$s1, $s1, 13, 0
	or	$s0, $s0, $s4
.LBB13_47:                              # %if.end249
                                        #   in Loop: Header=BB13_43 Depth=3
	andi	$s2, $s8, 255
	bltu	$t7, $s2, .LBB13_42
# %bb.48:                               # %if.then261
                                        #   in Loop: Header=BB13_43 Depth=3
	bltu	$s5, $t8, .LBB13_41
# %bb.49:                               # %if.then264
                                        #   in Loop: Header=BB13_43 Depth=3
	ldptr.d	$a3, $fp, 2128
	ld.d	$a1, $fp, 48
	ld.w	$a2, $fp, 92
	beqz	$a3, .LBB13_39
# %bb.50:                               # %cond.true.i684
                                        #   in Loop: Header=BB13_43 Depth=3
	ldptr.d	$a0, $fp, 2120
	jirl	$ra, $a3, 0
	ori	$t7, $zero, 16
	ori	$a4, $zero, 1
	bgez	$a0, .LBB13_40
	b	.LBB13_312
.LBB13_51:                              # %do.end301
                                        #   in Loop: Header=BB13_24 Depth=2
	ori	$a0, $zero, 3
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	bltu	$a0, $a1, .LBB13_62
# %bb.52:                               # %if.then304
                                        #   in Loop: Header=BB13_24 Depth=2
	addi.d	$a0, $fp, 368
	beqz	$a1, .LBB13_55
# %bb.53:                               # %if.then304
                                        #   in Loop: Header=BB13_24 Depth=2
	addi.d	$a0, $fp, 384
	beq	$a1, $a4, .LBB13_55
# %bb.54:                               # %cond.false312
                                        #   in Loop: Header=BB13_24 Depth=2
	addi.d	$a0, $a1, -2
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 416
	masknez	$a1, $a1, $a0
	ori	$a4, $zero, 400
	maskeqz	$a0, $a4, $a0
	or	$a0, $a0, $a1
	add.d	$a0, $fp, $a0
.LBB13_55:                              # %cond.end321
                                        #   in Loop: Header=BB13_24 Depth=2
	ld.d	$a1, $a0, 8
	ld.w	$a4, $a0, 4
	ld.hu	$s0, $a1, 2
	sub.w	$ra, $a2, $a3
	ori	$a2, $zero, 1
	ori	$a5, $zero, 2
	blt	$a4, $a5, .LBB13_60
# %bb.56:                               # %for.body346.lr.ph
                                        #   in Loop: Header=BB13_24 Depth=2
	sub.d	$a2, $s3, $a3
	addi.d	$a2, $a2, 1
	mul.d	$a2, $a2, $s0
	addi.w	$a2, $a2, -1
	bstrpick.d	$a3, $ra, 15, 0
	addi.d	$a3, $a3, 1
	div.wu	$a6, $a2, $a3
	addi.d	$a3, $a1, 6
	addi.d	$a5, $a4, -1
	ori	$a2, $zero, 1
	bstrpick.d	$a6, $a6, 15, 0
.LBB13_57:                              # %for.body346
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.hu	$a7, $a3, 0
	bgeu	$a6, $a7, .LBB13_60
# %bb.58:                               # %for.inc357
                                        #   in Loop: Header=BB13_57 Depth=3
	addi.w	$a2, $a2, 1
	addi.d	$a5, $a5, -1
	addi.d	$a3, $a3, 4
	bnez	$a5, .LBB13_57
# %bb.59:                               #   in Loop: Header=BB13_24 Depth=2
	move	$a2, $a4
.LBB13_60:                              # %for.end359
                                        #   in Loop: Header=BB13_24 Depth=2
	alsl.d	$a5, $a2, $a1, 2
	ld.hu	$s2, $a5, -4
	ld.hu	$s6, $a5, -2
	ld.hu	$s4, $a5, 2
	ori	$a3, $zero, 8
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	bge	$a2, $a3, .LBB13_72
# %bb.61:                               #   in Loop: Header=BB13_24 Depth=2
	ori	$a5, $zero, 1
	b	.LBB13_75
.LBB13_62:                              # %if.else504
                                        #   in Loop: Header=BB13_24 Depth=2
	ori	$a0, $zero, 6
	beq	$a1, $a0, .LBB13_100
# %bb.63:                               # %if.else504
                                        #   in Loop: Header=BB13_24 Depth=2
	ori	$a0, $zero, 5
	beq	$a1, $a0, .LBB13_93
# %bb.64:                               # %if.else504
                                        #   in Loop: Header=BB13_24 Depth=2
	ori	$a0, $zero, 4
	bne	$a1, $a0, .LBB13_319
# %bb.65:                               # %do.body505
                                        #   in Loop: Header=BB13_24 Depth=2
	ld.d	$a0, $fp, 440
	ld.w	$a4, $fp, 436
	ld.hu	$s0, $a0, 2
	sub.w	$t6, $a2, $a3
	ori	$a1, $zero, 1
	ori	$a2, $zero, 2
	blt	$a4, $a2, .LBB13_70
# %bb.66:                               # %for.body529.lr.ph
                                        #   in Loop: Header=BB13_24 Depth=2
	sub.d	$a1, $s3, $a3
	addi.d	$a1, $a1, 1
	mul.d	$a1, $a1, $s0
	addi.w	$a1, $a1, -1
	bstrpick.d	$a2, $t6, 15, 0
	addi.d	$a2, $a2, 1
	div.wu	$a5, $a1, $a2
	addi.d	$a2, $a0, 6
	addi.d	$a3, $a4, -1
	ori	$a1, $zero, 1
	bstrpick.d	$a5, $a5, 15, 0
.LBB13_67:                              # %for.body529
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.hu	$a6, $a2, 0
	bgeu	$a5, $a6, .LBB13_70
# %bb.68:                               # %for.inc541
                                        #   in Loop: Header=BB13_67 Depth=3
	addi.w	$a1, $a1, 1
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB13_67
# %bb.69:                               #   in Loop: Header=BB13_24 Depth=2
	move	$a1, $a4
.LBB13_70:                              # %for.end543
                                        #   in Loop: Header=BB13_24 Depth=2
	alsl.d	$a4, $a1, $a0, 2
	ld.hu	$a2, $a4, -4
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	ld.hu	$s2, $a4, -2
	ld.hu	$s6, $a4, 2
	ori	$a2, $zero, 8
	bge	$a1, $a2, .LBB13_136
# %bb.71:                               #   in Loop: Header=BB13_24 Depth=2
	ori	$a4, $zero, 1
	b	.LBB13_139
.LBB13_72:                              # %vector.ph
                                        #   in Loop: Header=BB13_24 Depth=2
	ori	$a4, $zero, 1
	slt	$a3, $a4, $a2
	masknez	$a4, $a4, $a3
	maskeqz	$a3, $a2, $a3
	or	$a3, $a3, $a4
	bstrpick.d	$a4, $a3, 30, 3
	slli.d	$a4, $a4, 3
	sub.d	$a2, $a2, $a4
	addi.d	$a5, $a5, -14
	move	$a6, $a4
	.p2align	4, , 16
.LBB13_73:                              # %vector.body
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a7, $a5, 12
	ld.h	$t0, $a5, 8
	ld.h	$t1, $a5, 4
	ld.h	$t2, $a5, 0
	ld.h	$t3, $a5, -4
	ld.h	$t4, $a5, -8
	ld.h	$t5, $a5, -12
	ld.h	$t6, $a5, -16
	vinsgr2vr.h	$vr0, $a7, 0
	vinsgr2vr.h	$vr0, $t0, 1
	vinsgr2vr.h	$vr0, $t1, 2
	vinsgr2vr.h	$vr0, $t2, 3
	vinsgr2vr.h	$vr0, $t3, 4
	vinsgr2vr.h	$vr0, $t4, 5
	vinsgr2vr.h	$vr0, $t5, 6
	vinsgr2vr.h	$vr0, $t6, 7
	vaddi.hu	$vr0, $vr0, 8
	vstelm.h	$vr0, $a5, 12, 0
	vstelm.h	$vr0, $a5, 8, 1
	vstelm.h	$vr0, $a5, 4, 2
	vstelm.h	$vr0, $a5, 0, 3
	vstelm.h	$vr0, $a5, -4, 4
	vstelm.h	$vr0, $a5, -8, 5
	vstelm.h	$vr0, $a5, -12, 6
	vstelm.h	$vr0, $a5, -16, 7
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, -32
	bnez	$a6, .LBB13_73
# %bb.74:                               # %middle.block
                                        #   in Loop: Header=BB13_24 Depth=2
	ori	$a5, $zero, 1
	beq	$a3, $a4, .LBB13_77
.LBB13_75:                              # %do.body397.preheader
                                        #   in Loop: Header=BB13_24 Depth=2
	addi.d	$a3, $a2, 1
	alsl.d	$a2, $a2, $a1, 2
	addi.d	$a2, $a2, -2
	.p2align	4, , 16
.LBB13_76:                              # %do.body397
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a4, $a2, 0
	addi.d	$a4, $a4, 8
	st.h	$a4, $a2, 0
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, -4
	blt	$a5, $a3, .LBB13_76
.LBB13_77:                              # %do.end409
                                        #   in Loop: Header=BB13_24 Depth=2
	ld.hu	$a1, $a1, 2
	ori	$a2, $zero, 3801
	bltu	$a1, $a2, .LBB13_79
# %bb.78:                               # %if.then416
                                        #   in Loop: Header=BB13_24 Depth=2
	move	$s2, $t8
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	move	$s0, $s6
	move	$s6, $s4
	move	$s4, $ra
	pcaddu18i	$ra, %call36(qtm_update_model)
	jirl	$ra, $ra, 0
	move	$ra, $s4
	move	$s4, $s6
	move	$s6, $s0
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	move	$t8, $s2
	ori	$t7, $zero, 16
.LBB13_79:                              # %while.cond418.preheader
                                        #   in Loop: Header=BB13_24 Depth=2
	addi.d	$a0, $ra, 1
	mul.w	$a1, $a0, $s6
	div.wu	$a1, $a1, $s0
	add.d	$a1, $s1, $a1
	addi.d	$s2, $a1, -1
	mul.w	$a0, $a0, $s4
	div.wu	$a0, $a0, $s0
	add.d	$s1, $s1, $a0
	ld.d	$s4, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ori	$a4, $zero, 32
	b	.LBB13_84
.LBB13_80:                              # %cond.false.i725
                                        #   in Loop: Header=BB13_84 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ori	$t7, $zero, 16
	ori	$a4, $zero, 32
	bltz	$a0, .LBB13_312
.LBB13_81:                              # %if.end466
                                        #   in Loop: Header=BB13_84 Depth=3
	ld.d	$s5, $fp, 48
	st.d	$s5, $fp, 56
	add.d	$t8, $s5, $a0
	st.d	$t8, $fp, 64
.LBB13_82:                              # %if.end469
                                        #   in Loop: Header=BB13_84 Depth=3
	ld.hu	$a0, $s5, 0
	revb.d	$a0, $a0
	srli.d	$a0, $a0, 48
	sub.d	$a1, $t7, $s0
	sll.w	$a0, $a0, $a1
	or	$s7, $a0, $s7
	addi.d	$s8, $s8, 16
	addi.d	$s5, $s5, 2
.LBB13_83:                              # %do.end487
                                        #   in Loop: Header=BB13_84 Depth=3
	slli.d	$s1, $s1, 1
	slli.d	$a0, $s2, 1
	addi.d	$s2, $a0, 1
	bstrpick.d	$a0, $s7, 31, 31
	slli.d	$a1, $s3, 1
	or	$a0, $a1, $a0
	bstrpick.d	$s3, $a0, 15, 0
	slli.d	$s7, $s7, 1
	addi.d	$s8, $s8, -1
.LBB13_84:                              # %while.cond418
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xor	$a0, $s1, $s2
	slli.d	$a0, $a0, 48
	bgez	$a0, .LBB13_88
# %bb.85:                               # %if.then426
                                        #   in Loop: Header=BB13_84 Depth=3
	bstrpick.d	$a0, $s2, 15, 0
	slli.d	$a0, $a0, 49
	lu12i.w	$a1, 4
	bltz	$a0, .LBB13_92
# %bb.86:                               # %if.then426
                                        #   in Loop: Header=BB13_84 Depth=3
	bstrpick.d	$a0, $s1, 15, 0
	and	$a0, $a0, $a1
	beqz	$a0, .LBB13_92
# %bb.87:                               # %if.then434
                                        #   in Loop: Header=BB13_84 Depth=3
	xor	$s3, $s3, $a1
	bstrpick.d	$s1, $s1, 13, 0
	or	$s2, $s2, $a1
.LBB13_88:                              # %if.end446
                                        #   in Loop: Header=BB13_84 Depth=3
	andi	$s0, $s8, 255
	bltu	$t7, $s0, .LBB13_83
# %bb.89:                               # %if.then458
                                        #   in Loop: Header=BB13_84 Depth=3
	bltu	$s5, $t8, .LBB13_82
# %bb.90:                               # %if.then461
                                        #   in Loop: Header=BB13_84 Depth=3
	ldptr.d	$a3, $fp, 2128
	ld.d	$a1, $fp, 48
	ld.w	$a2, $fp, 92
	beqz	$a3, .LBB13_80
# %bb.91:                               # %cond.true.i708
                                        #   in Loop: Header=BB13_84 Depth=3
	ldptr.d	$a0, $fp, 2120
	jirl	$ra, $a3, 0
	ori	$t7, $zero, 16
	ori	$a4, $zero, 32
	bgez	$a0, .LBB13_81
	b	.LBB13_312
.LBB13_92:                              # %cleanup.thread
                                        #   in Loop: Header=BB13_24 Depth=2
	bstrpick.d	$a0, $s6, 31, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	stx.b	$a2, $a1, $a0
	ori	$a1, $zero, 1
	b	.LBB13_284
.LBB13_93:                              # %do.body770
                                        #   in Loop: Header=BB13_24 Depth=2
	ld.d	$a0, $fp, 456
	ld.w	$a4, $fp, 452
	ld.hu	$s0, $a0, 2
	sub.w	$t6, $a2, $a3
	ori	$a1, $zero, 1
	ori	$a2, $zero, 2
	blt	$a4, $a2, .LBB13_98
# %bb.94:                               # %for.body794.lr.ph
                                        #   in Loop: Header=BB13_24 Depth=2
	sub.d	$a1, $s3, $a3
	addi.d	$a1, $a1, 1
	mul.d	$a1, $a1, $s0
	addi.w	$a1, $a1, -1
	bstrpick.d	$a2, $t6, 15, 0
	addi.d	$a2, $a2, 1
	div.wu	$a5, $a1, $a2
	addi.d	$a2, $a0, 6
	addi.d	$a3, $a4, -1
	ori	$a1, $zero, 1
	bstrpick.d	$a5, $a5, 15, 0
.LBB13_95:                              # %for.body794
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.hu	$a6, $a2, 0
	bgeu	$a5, $a6, .LBB13_98
# %bb.96:                               # %for.inc806
                                        #   in Loop: Header=BB13_95 Depth=3
	addi.w	$a1, $a1, 1
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB13_95
# %bb.97:                               #   in Loop: Header=BB13_24 Depth=2
	move	$a1, $a4
.LBB13_98:                              # %for.end808
                                        #   in Loop: Header=BB13_24 Depth=2
	alsl.d	$a4, $a1, $a0, 2
	ld.hu	$a2, $a4, -4
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	ld.hu	$s2, $a4, -2
	ld.hu	$s6, $a4, 2
	ori	$a2, $zero, 8
	bge	$a1, $a2, .LBB13_107
# %bb.99:                               #   in Loop: Header=BB13_24 Depth=2
	ori	$a4, $zero, 1
	b	.LBB13_110
.LBB13_100:                             # %do.body1037
                                        #   in Loop: Header=BB13_24 Depth=2
	ld.d	$a0, $fp, 488
	ld.w	$a4, $fp, 484
	ld.hu	$s0, $a0, 2
	sub.w	$s6, $a2, $a3
	ori	$a1, $zero, 1
	ori	$a2, $zero, 2
	blt	$a4, $a2, .LBB13_105
# %bb.101:                              # %for.body1061.lr.ph
                                        #   in Loop: Header=BB13_24 Depth=2
	sub.d	$a1, $s3, $a3
	addi.d	$a1, $a1, 1
	mul.d	$a1, $a1, $s0
	addi.w	$a1, $a1, -1
	bstrpick.d	$a2, $s6, 15, 0
	addi.d	$a2, $a2, 1
	div.wu	$a5, $a1, $a2
	addi.d	$a2, $a0, 6
	addi.d	$a3, $a4, -1
	ori	$a1, $zero, 1
	bstrpick.d	$a5, $a5, 15, 0
.LBB13_102:                             # %for.body1061
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.hu	$a6, $a2, 0
	bgeu	$a5, $a6, .LBB13_105
# %bb.103:                              # %for.inc1073
                                        #   in Loop: Header=BB13_102 Depth=3
	addi.w	$a1, $a1, 1
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB13_102
# %bb.104:                              #   in Loop: Header=BB13_24 Depth=2
	move	$a1, $a4
.LBB13_105:                             # %for.end1075
                                        #   in Loop: Header=BB13_24 Depth=2
	alsl.d	$a4, $a1, $a0, 2
	ld.hu	$a2, $a4, -4
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	ld.hu	$s4, $a4, -2
	ld.hu	$s2, $a4, 2
	ori	$a2, $zero, 8
	bge	$a1, $a2, .LBB13_167
# %bb.106:                              #   in Loop: Header=BB13_24 Depth=2
	ori	$a4, $zero, 1
	b	.LBB13_170
.LBB13_107:                             # %vector.ph1826
                                        #   in Loop: Header=BB13_24 Depth=2
	ori	$a3, $zero, 1
	slt	$a2, $a3, $a1
	masknez	$a3, $a3, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	bstrpick.d	$a3, $a2, 30, 3
	slli.d	$a3, $a3, 3
	sub.d	$a1, $a1, $a3
	addi.d	$a4, $a4, -14
	move	$a5, $a3
.LBB13_108:                             # %vector.body1829
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a6, $a4, 12
	ld.h	$a7, $a4, 8
	ld.h	$t0, $a4, 4
	ld.h	$t1, $a4, 0
	ld.h	$t2, $a4, -4
	ld.h	$t3, $a4, -8
	ld.h	$t4, $a4, -12
	ld.h	$t5, $a4, -16
	vinsgr2vr.h	$vr0, $a6, 0
	vinsgr2vr.h	$vr0, $a7, 1
	vinsgr2vr.h	$vr0, $t0, 2
	vinsgr2vr.h	$vr0, $t1, 3
	vinsgr2vr.h	$vr0, $t2, 4
	vinsgr2vr.h	$vr0, $t3, 5
	vinsgr2vr.h	$vr0, $t4, 6
	vinsgr2vr.h	$vr0, $t5, 7
	vaddi.hu	$vr0, $vr0, 8
	vstelm.h	$vr0, $a4, 12, 0
	vstelm.h	$vr0, $a4, 8, 1
	vstelm.h	$vr0, $a4, 4, 2
	vstelm.h	$vr0, $a4, 0, 3
	vstelm.h	$vr0, $a4, -4, 4
	vstelm.h	$vr0, $a4, -8, 5
	vstelm.h	$vr0, $a4, -12, 6
	vstelm.h	$vr0, $a4, -16, 7
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, -32
	bnez	$a5, .LBB13_108
# %bb.109:                              # %middle.block1833
                                        #   in Loop: Header=BB13_24 Depth=2
	ori	$a4, $zero, 1
	beq	$a2, $a3, .LBB13_112
.LBB13_110:                             # %do.body850.preheader
                                        #   in Loop: Header=BB13_24 Depth=2
	addi.d	$a2, $a1, 1
	alsl.d	$a1, $a1, $a0, 2
	addi.d	$a1, $a1, -2
.LBB13_111:                             # %do.body850
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a3, $a1, 0
	addi.d	$a3, $a3, 8
	st.h	$a3, $a1, 0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, -4
	blt	$a4, $a2, .LBB13_111
.LBB13_112:                             # %do.end863
                                        #   in Loop: Header=BB13_24 Depth=2
	ld.hu	$a0, $a0, 2
	ori	$a1, $zero, 3801
	bltu	$a0, $a1, .LBB13_114
# %bb.113:                              # %if.then871
                                        #   in Loop: Header=BB13_24 Depth=2
	addi.d	$a0, $fp, 448
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	move	$s0, $s2
	move	$s2, $t8
	move	$s4, $t6
	pcaddu18i	$ra, %call36(qtm_update_model)
	jirl	$ra, $ra, 0
	move	$t6, $s4
	move	$t8, $s2
	move	$s2, $s0
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ori	$t7, $zero, 16
.LBB13_114:                             # %while.cond874.preheader
                                        #   in Loop: Header=BB13_24 Depth=2
	addi.d	$a0, $t6, 1
	mul.w	$a1, $a0, $s2
	div.wu	$a1, $a1, $s0
	add.d	$a1, $s1, $a1
	addi.d	$s2, $a1, -1
	mul.w	$a0, $a0, $s6
	div.wu	$a0, $a0, $s0
	add.d	$s1, $s1, $a0
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ori	$a4, $zero, 32
	lu12i.w	$s4, 4
	b	.LBB13_119
.LBB13_115:                             # %cond.false.i797
                                        #   in Loop: Header=BB13_119 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ori	$t7, $zero, 16
	ori	$a4, $zero, 32
	bltz	$a0, .LBB13_312
.LBB13_116:                             # %if.end922
                                        #   in Loop: Header=BB13_119 Depth=3
	ld.d	$s5, $fp, 48
	st.d	$s5, $fp, 56
	add.d	$t8, $s5, $a0
	st.d	$t8, $fp, 64
.LBB13_117:                             # %if.end925
                                        #   in Loop: Header=BB13_119 Depth=3
	ld.hu	$a0, $s5, 0
	revb.d	$a0, $a0
	srli.d	$a0, $a0, 48
	sub.d	$a1, $t7, $s0
	sll.w	$a0, $a0, $a1
	or	$s7, $a0, $s7
	addi.d	$s8, $s8, 16
	addi.d	$s5, $s5, 2
.LBB13_118:                             # %do.end943
                                        #   in Loop: Header=BB13_119 Depth=3
	slli.d	$s1, $s1, 1
	slli.d	$a0, $s2, 1
	addi.d	$s2, $a0, 1
	bstrpick.d	$a0, $s7, 31, 31
	slli.d	$a1, $s3, 1
	or	$a0, $a1, $a0
	bstrpick.d	$s3, $a0, 15, 0
	slli.d	$s7, $s7, 1
	addi.d	$s8, $s8, -1
.LBB13_119:                             # %while.cond874
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xor	$a0, $s1, $s2
	slli.d	$a0, $a0, 48
	bgez	$a0, .LBB13_123
# %bb.120:                              # %if.then882
                                        #   in Loop: Header=BB13_119 Depth=3
	bstrpick.d	$a0, $s2, 15, 0
	slli.d	$a0, $a0, 49
	bltz	$a0, .LBB13_127
# %bb.121:                              # %if.then882
                                        #   in Loop: Header=BB13_119 Depth=3
	bstrpick.d	$a0, $s1, 15, 0
	and	$a0, $a0, $s4
	beqz	$a0, .LBB13_127
# %bb.122:                              # %if.then890
                                        #   in Loop: Header=BB13_119 Depth=3
	xor	$s3, $s3, $s4
	bstrpick.d	$s1, $s1, 13, 0
	or	$s2, $s2, $s4
.LBB13_123:                             # %if.end902
                                        #   in Loop: Header=BB13_119 Depth=3
	andi	$s0, $s8, 255
	bltu	$t7, $s0, .LBB13_118
# %bb.124:                              # %if.then914
                                        #   in Loop: Header=BB13_119 Depth=3
	bltu	$s5, $t8, .LBB13_117
# %bb.125:                              # %if.then917
                                        #   in Loop: Header=BB13_119 Depth=3
	ldptr.d	$a3, $fp, 2128
	ld.d	$a1, $fp, 48
	ld.w	$a2, $fp, 92
	beqz	$a3, .LBB13_115
# %bb.126:                              # %cond.true.i780
                                        #   in Loop: Header=BB13_119 Depth=3
	ldptr.d	$a0, $fp, 2120
	jirl	$ra, $a3, 0
	ori	$t7, $zero, 16
	ori	$a4, $zero, 32
	bgez	$a0, .LBB13_116
	b	.LBB13_312
.LBB13_127:                             # %do.body956
                                        #   in Loop: Header=BB13_24 Depth=2
	addi.d	$a0, $fp, 268
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ldx.bu	$s4, $a0, $a1
	ori	$a0, $zero, 4
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	move	$s0, $zero
	bnez	$s4, .LBB13_132
	b	.LBB13_238
.LBB13_128:                             # %cond.false.i821
                                        #   in Loop: Header=BB13_132 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ori	$t7, $zero, 16
	ori	$a4, $zero, 32
	bltz	$a0, .LBB13_312
.LBB13_129:                             # %if.end977
                                        #   in Loop: Header=BB13_132 Depth=3
	ld.d	$s5, $fp, 48
	st.d	$s5, $fp, 56
	add.d	$t8, $s5, $a0
	st.d	$t8, $fp, 64
.LBB13_130:                             # %if.end980
                                        #   in Loop: Header=BB13_132 Depth=3
	ld.hu	$a0, $s5, 0
	revb.d	$a0, $a0
	srli.d	$a0, $a0, 48
	sub.d	$a1, $t7, $s6
	sll.w	$a0, $a0, $a1
	or	$s7, $a0, $s7
	addi.d	$s8, $s8, 16
	addi.d	$s5, $s5, 2
.LBB13_131:                             # %do.end998
                                        #   in Loop: Header=BB13_132 Depth=3
	andi	$a0, $s4, 255
	andi	$a1, $s8, 255
	sltu	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	sll.w	$a1, $s0, $a0
	sub.d	$a2, $a4, $a0
	srl.w	$a2, $s7, $a2
	or	$s0, $a2, $a1
	sll.w	$s7, $s7, $a0
	sub.d	$s4, $s4, $a0
	andi	$a1, $s4, 255
	sub.d	$s8, $s8, $a0
	beqz	$a1, .LBB13_237
.LBB13_132:                             # %do.body965
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	andi	$s6, $s8, 255
	bltu	$t7, $s6, .LBB13_131
# %bb.133:                              # %if.then969
                                        #   in Loop: Header=BB13_132 Depth=3
	bltu	$s5, $t8, .LBB13_130
# %bb.134:                              # %if.then972
                                        #   in Loop: Header=BB13_132 Depth=3
	ldptr.d	$a3, $fp, 2128
	ld.d	$a1, $fp, 48
	ld.w	$a2, $fp, 92
	beqz	$a3, .LBB13_128
# %bb.135:                              # %cond.true.i804
                                        #   in Loop: Header=BB13_132 Depth=3
	ldptr.d	$a0, $fp, 2120
	jirl	$ra, $a3, 0
	ori	$t7, $zero, 16
	ori	$a4, $zero, 32
	bgez	$a0, .LBB13_129
	b	.LBB13_312
.LBB13_136:                             # %vector.ph1813
                                        #   in Loop: Header=BB13_24 Depth=2
	ori	$a3, $zero, 1
	slt	$a2, $a3, $a1
	masknez	$a3, $a3, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	bstrpick.d	$a3, $a2, 30, 3
	slli.d	$a3, $a3, 3
	sub.d	$a1, $a1, $a3
	addi.d	$a4, $a4, -14
	move	$a5, $a3
.LBB13_137:                             # %vector.body1816
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a6, $a4, 12
	ld.h	$a7, $a4, 8
	ld.h	$t0, $a4, 4
	ld.h	$t1, $a4, 0
	ld.h	$t2, $a4, -4
	ld.h	$t3, $a4, -8
	ld.h	$t4, $a4, -12
	ld.h	$t5, $a4, -16
	vinsgr2vr.h	$vr0, $a6, 0
	vinsgr2vr.h	$vr0, $a7, 1
	vinsgr2vr.h	$vr0, $t0, 2
	vinsgr2vr.h	$vr0, $t1, 3
	vinsgr2vr.h	$vr0, $t2, 4
	vinsgr2vr.h	$vr0, $t3, 5
	vinsgr2vr.h	$vr0, $t4, 6
	vinsgr2vr.h	$vr0, $t5, 7
	vaddi.hu	$vr0, $vr0, 8
	vstelm.h	$vr0, $a4, 12, 0
	vstelm.h	$vr0, $a4, 8, 1
	vstelm.h	$vr0, $a4, 4, 2
	vstelm.h	$vr0, $a4, 0, 3
	vstelm.h	$vr0, $a4, -4, 4
	vstelm.h	$vr0, $a4, -8, 5
	vstelm.h	$vr0, $a4, -12, 6
	vstelm.h	$vr0, $a4, -16, 7
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, -32
	bnez	$a5, .LBB13_137
# %bb.138:                              # %middle.block1820
                                        #   in Loop: Header=BB13_24 Depth=2
	ori	$a4, $zero, 1
	beq	$a2, $a3, .LBB13_141
.LBB13_139:                             # %do.body585.preheader
                                        #   in Loop: Header=BB13_24 Depth=2
	addi.d	$a2, $a1, 1
	alsl.d	$a1, $a1, $a0, 2
	addi.d	$a1, $a1, -2
.LBB13_140:                             # %do.body585
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a3, $a1, 0
	addi.d	$a3, $a3, 8
	st.h	$a3, $a1, 0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, -4
	blt	$a4, $a2, .LBB13_140
.LBB13_141:                             # %do.end598
                                        #   in Loop: Header=BB13_24 Depth=2
	ld.hu	$a0, $a0, 2
	ori	$a1, $zero, 3801
	bltu	$a0, $a1, .LBB13_143
# %bb.142:                              # %if.then606
                                        #   in Loop: Header=BB13_24 Depth=2
	addi.d	$a0, $fp, 432
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	move	$s0, $s2
	move	$s2, $t8
	move	$s4, $t6
	pcaddu18i	$ra, %call36(qtm_update_model)
	jirl	$ra, $ra, 0
	move	$t6, $s4
	move	$t8, $s2
	move	$s2, $s0
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ori	$t7, $zero, 16
.LBB13_143:                             # %while.cond609.preheader
                                        #   in Loop: Header=BB13_24 Depth=2
	addi.d	$a0, $t6, 1
	mul.w	$a1, $a0, $s2
	div.wu	$a1, $a1, $s0
	add.d	$a1, $s1, $a1
	addi.d	$s2, $a1, -1
	mul.w	$a0, $a0, $s6
	div.wu	$a0, $a0, $s0
	add.d	$s1, $s1, $a0
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ori	$a4, $zero, 32
	lu12i.w	$s4, 4
	b	.LBB13_146
.LBB13_144:                             # %if.end660
                                        #   in Loop: Header=BB13_146 Depth=3
	ld.hu	$a0, $s5, 0
	revb.d	$a0, $a0
	srli.d	$a0, $a0, 48
	sub.d	$a1, $t7, $s0
	sll.w	$a0, $a0, $a1
	or	$s7, $a0, $s7
	addi.d	$s8, $s8, 16
	addi.d	$s5, $s5, 2
.LBB13_145:                             # %do.end678
                                        #   in Loop: Header=BB13_146 Depth=3
	slli.d	$s1, $s1, 1
	slli.d	$a0, $s2, 1
	addi.d	$s2, $a0, 1
	bstrpick.d	$a0, $s7, 31, 31
	slli.d	$a1, $s3, 1
	or	$a0, $a1, $a0
	bstrpick.d	$s3, $a0, 15, 0
	slli.d	$s7, $s7, 1
	addi.d	$s8, $s8, -1
.LBB13_146:                             # %while.cond609
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xor	$a0, $s1, $s2
	slli.d	$a0, $a0, 48
	bgez	$a0, .LBB13_150
# %bb.147:                              # %if.then617
                                        #   in Loop: Header=BB13_146 Depth=3
	bstrpick.d	$a0, $s2, 15, 0
	slli.d	$a0, $a0, 49
	bltz	$a0, .LBB13_157
# %bb.148:                              # %if.then617
                                        #   in Loop: Header=BB13_146 Depth=3
	bstrpick.d	$a0, $s1, 15, 0
	and	$a0, $a0, $s4
	beqz	$a0, .LBB13_157
# %bb.149:                              # %if.then625
                                        #   in Loop: Header=BB13_146 Depth=3
	xor	$s3, $s3, $s4
	bstrpick.d	$s1, $s1, 13, 0
	or	$s2, $s2, $s4
.LBB13_150:                             # %if.end637
                                        #   in Loop: Header=BB13_146 Depth=3
	andi	$s0, $s8, 255
	bltu	$t7, $s0, .LBB13_145
# %bb.151:                              # %if.then649
                                        #   in Loop: Header=BB13_146 Depth=3
	bltu	$s5, $t8, .LBB13_144
# %bb.152:                              # %if.then652
                                        #   in Loop: Header=BB13_146 Depth=3
	ldptr.d	$a3, $fp, 2128
	ld.d	$a1, $fp, 48
	ld.w	$a2, $fp, 92
	beqz	$a3, .LBB13_154
# %bb.153:                              # %cond.true.i732
                                        #   in Loop: Header=BB13_146 Depth=3
	ldptr.d	$a0, $fp, 2120
	jirl	$ra, $a3, 0
	b	.LBB13_155
.LBB13_154:                             # %cond.false.i749
                                        #   in Loop: Header=BB13_146 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB13_155:                             # %cond.end.i737
                                        #   in Loop: Header=BB13_146 Depth=3
	ori	$t7, $zero, 16
	ori	$a4, $zero, 32
	bltz	$a0, .LBB13_312
# %bb.156:                              # %if.end657
                                        #   in Loop: Header=BB13_146 Depth=3
	ld.d	$s5, $fp, 48
	st.d	$s5, $fp, 56
	add.d	$t8, $s5, $a0
	st.d	$t8, $fp, 64
	b	.LBB13_144
.LBB13_157:                             # %do.body691
                                        #   in Loop: Header=BB13_24 Depth=2
	addi.d	$a0, $fp, 268
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ldx.bu	$s4, $a0, $a1
	ori	$a0, $zero, 3
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	move	$s0, $zero
	bnez	$s4, .LBB13_160
	b	.LBB13_238
.LBB13_158:                             # %if.end714
                                        #   in Loop: Header=BB13_160 Depth=3
	ld.hu	$a0, $s5, 0
	revb.d	$a0, $a0
	srli.d	$a0, $a0, 48
	sub.d	$a1, $t7, $s6
	sll.w	$a0, $a0, $a1
	or	$s7, $a0, $s7
	addi.d	$s8, $s8, 16
	addi.d	$s5, $s5, 2
.LBB13_159:                             # %do.end732
                                        #   in Loop: Header=BB13_160 Depth=3
	andi	$a0, $s4, 255
	andi	$a1, $s8, 255
	sltu	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	sll.w	$a1, $s0, $a0
	sub.d	$a2, $a4, $a0
	srl.w	$a2, $s7, $a2
	or	$s0, $a2, $a1
	sll.w	$s7, $s7, $a0
	sub.d	$s4, $s4, $a0
	andi	$a1, $s4, 255
	sub.d	$s8, $s8, $a0
	beqz	$a1, .LBB13_237
.LBB13_160:                             # %do.body699
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	andi	$s6, $s8, 255
	bltu	$t7, $s6, .LBB13_159
# %bb.161:                              # %if.then703
                                        #   in Loop: Header=BB13_160 Depth=3
	bltu	$s5, $t8, .LBB13_158
# %bb.162:                              # %if.then706
                                        #   in Loop: Header=BB13_160 Depth=3
	ldptr.d	$a3, $fp, 2128
	ld.d	$a1, $fp, 48
	ld.w	$a2, $fp, 92
	beqz	$a3, .LBB13_164
# %bb.163:                              # %cond.true.i756
                                        #   in Loop: Header=BB13_160 Depth=3
	ldptr.d	$a0, $fp, 2120
	jirl	$ra, $a3, 0
	b	.LBB13_165
.LBB13_164:                             # %cond.false.i773
                                        #   in Loop: Header=BB13_160 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB13_165:                             # %cond.end.i761
                                        #   in Loop: Header=BB13_160 Depth=3
	ori	$t7, $zero, 16
	ori	$a4, $zero, 32
	bltz	$a0, .LBB13_312
# %bb.166:                              # %if.end711
                                        #   in Loop: Header=BB13_160 Depth=3
	ld.d	$s5, $fp, 48
	st.d	$s5, $fp, 56
	add.d	$t8, $s5, $a0
	st.d	$t8, $fp, 64
	b	.LBB13_158
.LBB13_167:                             # %vector.ph1852
                                        #   in Loop: Header=BB13_24 Depth=2
	ori	$a3, $zero, 1
	slt	$a2, $a3, $a1
	masknez	$a3, $a3, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	bstrpick.d	$a3, $a2, 30, 3
	slli.d	$a3, $a3, 3
	sub.d	$a1, $a1, $a3
	addi.d	$a4, $a4, -14
	move	$a5, $a3
.LBB13_168:                             # %vector.body1855
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a6, $a4, 12
	ld.h	$a7, $a4, 8
	ld.h	$t0, $a4, 4
	ld.h	$t1, $a4, 0
	ld.h	$t2, $a4, -4
	ld.h	$t3, $a4, -8
	ld.h	$t4, $a4, -12
	ld.h	$t5, $a4, -16
	vinsgr2vr.h	$vr0, $a6, 0
	vinsgr2vr.h	$vr0, $a7, 1
	vinsgr2vr.h	$vr0, $t0, 2
	vinsgr2vr.h	$vr0, $t1, 3
	vinsgr2vr.h	$vr0, $t2, 4
	vinsgr2vr.h	$vr0, $t3, 5
	vinsgr2vr.h	$vr0, $t4, 6
	vinsgr2vr.h	$vr0, $t5, 7
	vaddi.hu	$vr0, $vr0, 8
	vstelm.h	$vr0, $a4, 12, 0
	vstelm.h	$vr0, $a4, 8, 1
	vstelm.h	$vr0, $a4, 4, 2
	vstelm.h	$vr0, $a4, 0, 3
	vstelm.h	$vr0, $a4, -4, 4
	vstelm.h	$vr0, $a4, -8, 5
	vstelm.h	$vr0, $a4, -12, 6
	vstelm.h	$vr0, $a4, -16, 7
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, -32
	bnez	$a5, .LBB13_168
# %bb.169:                              # %middle.block1859
                                        #   in Loop: Header=BB13_24 Depth=2
	ori	$a4, $zero, 1
	beq	$a2, $a3, .LBB13_172
.LBB13_170:                             # %do.body1117.preheader
                                        #   in Loop: Header=BB13_24 Depth=2
	addi.d	$a2, $a1, 1
	alsl.d	$a1, $a1, $a0, 2
	addi.d	$a1, $a1, -2
.LBB13_171:                             # %do.body1117
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a3, $a1, 0
	addi.d	$a3, $a3, 8
	st.h	$a3, $a1, 0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, -4
	blt	$a4, $a2, .LBB13_171
.LBB13_172:                             # %do.end1130
                                        #   in Loop: Header=BB13_24 Depth=2
	ld.hu	$a0, $a0, 2
	ori	$a1, $zero, 3801
	bltu	$a0, $a1, .LBB13_174
# %bb.173:                              # %if.then1138
                                        #   in Loop: Header=BB13_24 Depth=2
	addi.d	$a0, $fp, 480
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	move	$s0, $s4
	move	$s4, $s2
	move	$s2, $t8
	pcaddu18i	$ra, %call36(qtm_update_model)
	jirl	$ra, $ra, 0
	move	$t8, $s2
	move	$s2, $s4
	move	$s4, $s0
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ori	$t7, $zero, 16
.LBB13_174:                             # %while.cond1141.preheader
                                        #   in Loop: Header=BB13_24 Depth=2
	addi.d	$a0, $s6, 1
	mul.w	$a1, $a0, $s4
	div.wu	$a1, $a1, $s0
	add.d	$a1, $s1, $a1
	addi.d	$s4, $a1, -1
	mul.w	$a0, $a0, $s2
	div.wu	$a0, $a0, $s0
	add.d	$s1, $s1, $a0
	ori	$a3, $zero, 32
	b	.LBB13_179
.LBB13_175:                             # %cond.false.i845
                                        #   in Loop: Header=BB13_179 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ori	$t7, $zero, 16
	ori	$a3, $zero, 32
	bltz	$a0, .LBB13_312
.LBB13_176:                             # %if.end1189
                                        #   in Loop: Header=BB13_179 Depth=3
	ld.d	$s5, $fp, 48
	st.d	$s5, $fp, 56
	add.d	$t8, $s5, $a0
	st.d	$t8, $fp, 64
.LBB13_177:                             # %if.end1192
                                        #   in Loop: Header=BB13_179 Depth=3
	ld.hu	$a0, $s5, 0
	revb.d	$a0, $a0
	srli.d	$a0, $a0, 48
	sub.d	$a1, $t7, $s0
	sll.w	$a0, $a0, $a1
	or	$s7, $a0, $s7
	addi.d	$s8, $s8, 16
	addi.d	$s5, $s5, 2
.LBB13_178:                             # %do.end1210
                                        #   in Loop: Header=BB13_179 Depth=3
	slli.d	$s1, $s1, 1
	slli.d	$a0, $s4, 1
	addi.d	$s4, $a0, 1
	bstrpick.d	$a0, $s7, 31, 31
	slli.d	$a1, $s3, 1
	or	$a0, $a1, $a0
	bstrpick.d	$s3, $a0, 15, 0
	slli.d	$s7, $s7, 1
	addi.d	$s8, $s8, -1
.LBB13_179:                             # %while.cond1141
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xor	$a0, $s1, $s4
	slli.d	$a0, $a0, 48
	bgez	$a0, .LBB13_183
# %bb.180:                              # %if.then1149
                                        #   in Loop: Header=BB13_179 Depth=3
	bstrpick.d	$s0, $s4, 15, 0
	slli.d	$a0, $s0, 49
	bstrpick.d	$s2, $s1, 15, 0
	lu12i.w	$a1, 4
	bltz	$a0, .LBB13_187
# %bb.181:                              # %if.then1149
                                        #   in Loop: Header=BB13_179 Depth=3
	and	$a0, $s2, $a1
	beqz	$a0, .LBB13_187
# %bb.182:                              # %if.then1157
                                        #   in Loop: Header=BB13_179 Depth=3
	xor	$s3, $s3, $a1
	bstrpick.d	$s1, $s1, 13, 0
	or	$s4, $s4, $a1
.LBB13_183:                             # %if.end1169
                                        #   in Loop: Header=BB13_179 Depth=3
	andi	$s0, $s8, 255
	bltu	$t7, $s0, .LBB13_178
# %bb.184:                              # %if.then1181
                                        #   in Loop: Header=BB13_179 Depth=3
	bltu	$s5, $t8, .LBB13_177
# %bb.185:                              # %if.then1184
                                        #   in Loop: Header=BB13_179 Depth=3
	ldptr.d	$a3, $fp, 2128
	ld.d	$a1, $fp, 48
	ld.w	$a2, $fp, 92
	beqz	$a3, .LBB13_175
# %bb.186:                              # %cond.true.i828
                                        #   in Loop: Header=BB13_179 Depth=3
	ldptr.d	$a0, $fp, 2120
	jirl	$ra, $a3, 0
	ori	$t7, $zero, 16
	ori	$a3, $zero, 32
	bgez	$a0, .LBB13_176
	b	.LBB13_312
.LBB13_187:                             # %do.body1223
                                        #   in Loop: Header=BB13_24 Depth=2
	addi.d	$a0, $fp, 337
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ldx.bu	$s4, $a0, $a1
	beqz	$s4, .LBB13_199
# %bb.188:                              # %do.body1231.preheader
                                        #   in Loop: Header=BB13_24 Depth=2
	move	$a4, $zero
	b	.LBB13_191
.LBB13_189:                             # %if.end1246
                                        #   in Loop: Header=BB13_191 Depth=3
	ld.hu	$a0, $s5, 0
	revb.d	$a0, $a0
	srli.d	$a0, $a0, 48
	sub.d	$a1, $t7, $s6
	sll.w	$a0, $a0, $a1
	or	$s7, $a0, $s7
	addi.d	$s8, $s8, 16
	addi.d	$s5, $s5, 2
.LBB13_190:                             # %do.end1264
                                        #   in Loop: Header=BB13_191 Depth=3
	andi	$a0, $s4, 255
	andi	$a1, $s8, 255
	sltu	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	sll.w	$a1, $a4, $a0
	sub.d	$a2, $a3, $a0
	srl.w	$a2, $s7, $a2
	or	$a4, $a2, $a1
	sll.w	$s7, $s7, $a0
	sub.d	$s4, $s4, $a0
	andi	$a1, $s4, 255
	sub.d	$s8, $s8, $a0
	beqz	$a1, .LBB13_198
.LBB13_191:                             # %do.body1231
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	andi	$s6, $s8, 255
	bltu	$t7, $s6, .LBB13_190
# %bb.192:                              # %if.then1235
                                        #   in Loop: Header=BB13_191 Depth=3
	bltu	$s5, $t8, .LBB13_189
# %bb.193:                              # %if.then1238
                                        #   in Loop: Header=BB13_191 Depth=3
	move	$s5, $a4
	ldptr.d	$a3, $fp, 2128
	ld.d	$a1, $fp, 48
	ld.w	$a2, $fp, 92
	beqz	$a3, .LBB13_195
# %bb.194:                              # %cond.true.i852
                                        #   in Loop: Header=BB13_191 Depth=3
	ldptr.d	$a0, $fp, 2120
	jirl	$ra, $a3, 0
	b	.LBB13_196
.LBB13_195:                             # %cond.false.i869
                                        #   in Loop: Header=BB13_191 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB13_196:                             # %cond.end.i857
                                        #   in Loop: Header=BB13_191 Depth=3
	ori	$t7, $zero, 16
	ori	$a3, $zero, 32
	bltz	$a0, .LBB13_312
# %bb.197:                              # %if.end1243
                                        #   in Loop: Header=BB13_191 Depth=3
	move	$a4, $s5
	ld.d	$s5, $fp, 48
	st.d	$s5, $fp, 56
	add.d	$t8, $s5, $a0
	st.d	$t8, $fp, 64
	b	.LBB13_189
.LBB13_198:                             # %do.end1296.loopexit
                                        #   in Loop: Header=BB13_24 Depth=2
	addi.d	$t6, $a4, 5
	b	.LBB13_200
.LBB13_199:                             #   in Loop: Header=BB13_24 Depth=2
	ori	$t6, $zero, 5
.LBB13_200:                             # %do.end1296
                                        #   in Loop: Header=BB13_24 Depth=2
	ld.d	$a0, $fp, 472
	ld.w	$a2, $fp, 468
	ld.hu	$s4, $a0, 2
	sub.w	$s0, $s0, $s2
	ori	$a1, $zero, 1
	ori	$a3, $zero, 2
	blt	$a2, $a3, .LBB13_205
# %bb.201:                              # %for.body1326.lr.ph
                                        #   in Loop: Header=BB13_24 Depth=2
	sub.d	$a1, $s3, $s2
	addi.d	$a1, $a1, 1
	mul.d	$a1, $a1, $s4
	addi.w	$a1, $a1, -1
	bstrpick.d	$a3, $s0, 15, 0
	addi.d	$a3, $a3, 1
	div.wu	$a5, $a1, $a3
	addi.d	$a3, $a0, 6
	addi.d	$a4, $a2, -1
	ori	$a1, $zero, 1
	bstrpick.d	$a5, $a5, 15, 0
.LBB13_202:                             # %for.body1326
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.hu	$a6, $a3, 0
	bgeu	$a5, $a6, .LBB13_205
# %bb.203:                              # %for.inc1338
                                        #   in Loop: Header=BB13_202 Depth=3
	addi.w	$a1, $a1, 1
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 4
	bnez	$a4, .LBB13_202
# %bb.204:                              #   in Loop: Header=BB13_24 Depth=2
	move	$a1, $a2
.LBB13_205:                             # %for.end1340
                                        #   in Loop: Header=BB13_24 Depth=2
	addi.d	$a2, $fp, 310
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ldx.bu	$ra, $a2, $a3
	alsl.d	$a4, $a1, $a0, 2
	ld.hu	$a2, $a4, -4
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	ld.hu	$s2, $a4, -2
	ld.hu	$s6, $a4, 2
	ori	$a2, $zero, 8
	bge	$a1, $a2, .LBB13_207
# %bb.206:                              #   in Loop: Header=BB13_24 Depth=2
	ori	$a4, $zero, 1
	b	.LBB13_210
.LBB13_207:                             # %vector.ph1839
                                        #   in Loop: Header=BB13_24 Depth=2
	ori	$a3, $zero, 1
	slt	$a2, $a3, $a1
	masknez	$a3, $a3, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	bstrpick.d	$a3, $a2, 30, 3
	slli.d	$a3, $a3, 3
	sub.d	$a1, $a1, $a3
	addi.d	$a4, $a4, -14
	move	$a5, $a3
.LBB13_208:                             # %vector.body1842
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a6, $a4, 12
	ld.h	$a7, $a4, 8
	ld.h	$t0, $a4, 4
	ld.h	$t1, $a4, 0
	ld.h	$t2, $a4, -4
	ld.h	$t3, $a4, -8
	ld.h	$t4, $a4, -12
	ld.h	$t5, $a4, -16
	vinsgr2vr.h	$vr0, $a6, 0
	vinsgr2vr.h	$vr0, $a7, 1
	vinsgr2vr.h	$vr0, $t0, 2
	vinsgr2vr.h	$vr0, $t1, 3
	vinsgr2vr.h	$vr0, $t2, 4
	vinsgr2vr.h	$vr0, $t3, 5
	vinsgr2vr.h	$vr0, $t4, 6
	vinsgr2vr.h	$vr0, $t5, 7
	vaddi.hu	$vr0, $vr0, 8
	vstelm.h	$vr0, $a4, 12, 0
	vstelm.h	$vr0, $a4, 8, 1
	vstelm.h	$vr0, $a4, 4, 2
	vstelm.h	$vr0, $a4, 0, 3
	vstelm.h	$vr0, $a4, -4, 4
	vstelm.h	$vr0, $a4, -8, 5
	vstelm.h	$vr0, $a4, -12, 6
	vstelm.h	$vr0, $a4, -16, 7
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, -32
	bnez	$a5, .LBB13_208
# %bb.209:                              # %middle.block1846
                                        #   in Loop: Header=BB13_24 Depth=2
	ori	$a4, $zero, 1
	beq	$a2, $a3, .LBB13_212
.LBB13_210:                             # %do.body1382.preheader
                                        #   in Loop: Header=BB13_24 Depth=2
	addi.d	$a2, $a1, 1
	alsl.d	$a1, $a1, $a0, 2
	addi.d	$a1, $a1, -2
.LBB13_211:                             # %do.body1382
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a3, $a1, 0
	addi.d	$a3, $a3, 8
	st.h	$a3, $a1, 0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, -4
	blt	$a4, $a2, .LBB13_211
.LBB13_212:                             # %do.end1395
                                        #   in Loop: Header=BB13_24 Depth=2
	ld.hu	$a0, $a0, 2
	ori	$a1, $zero, 3801
	bltu	$a0, $a1, .LBB13_214
# %bb.213:                              # %if.then1403
                                        #   in Loop: Header=BB13_24 Depth=2
	addi.d	$a0, $fp, 464
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	move	$s0, $t8
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	move	$s2, $s4
	move	$s4, $t6
	move	$s6, $ra
	pcaddu18i	$ra, %call36(qtm_update_model)
	jirl	$ra, $ra, 0
	move	$ra, $s6
	move	$t6, $s4
	move	$s4, $s2
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	move	$t8, $s0
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ori	$t7, $zero, 16
.LBB13_214:                             # %while.cond1406.preheader
                                        #   in Loop: Header=BB13_24 Depth=2
	add.w	$a0, $t6, $ra
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	addi.d	$a0, $s0, 1
	mul.w	$a1, $a0, $s2
	div.wu	$a1, $a1, $s4
	add.d	$a1, $s1, $a1
	addi.d	$s2, $a1, -1
	mul.w	$a0, $a0, $s6
	div.wu	$a0, $a0, $s4
	add.d	$s1, $s1, $a0
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ori	$a4, $zero, 32
	lu12i.w	$s4, 4
	b	.LBB13_219
.LBB13_215:                             # %cond.false.i893
                                        #   in Loop: Header=BB13_219 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ori	$t7, $zero, 16
	ori	$a4, $zero, 32
	bltz	$a0, .LBB13_312
.LBB13_216:                             # %if.end1454
                                        #   in Loop: Header=BB13_219 Depth=3
	ld.d	$s5, $fp, 48
	st.d	$s5, $fp, 56
	add.d	$t8, $s5, $a0
	st.d	$t8, $fp, 64
.LBB13_217:                             # %if.end1457
                                        #   in Loop: Header=BB13_219 Depth=3
	ld.hu	$a0, $s5, 0
	revb.d	$a0, $a0
	srli.d	$a0, $a0, 48
	sub.d	$a1, $t7, $s0
	sll.w	$a0, $a0, $a1
	or	$s7, $a0, $s7
	addi.d	$s8, $s8, 16
	addi.d	$s5, $s5, 2
.LBB13_218:                             # %do.end1475
                                        #   in Loop: Header=BB13_219 Depth=3
	slli.d	$s1, $s1, 1
	slli.d	$a0, $s2, 1
	addi.d	$s2, $a0, 1
	bstrpick.d	$a0, $s7, 31, 31
	slli.d	$a1, $s3, 1
	or	$a0, $a1, $a0
	bstrpick.d	$s3, $a0, 15, 0
	slli.d	$s7, $s7, 1
	addi.d	$s8, $s8, -1
.LBB13_219:                             # %while.cond1406
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xor	$a0, $s1, $s2
	slli.d	$a0, $a0, 48
	bgez	$a0, .LBB13_223
# %bb.220:                              # %if.then1414
                                        #   in Loop: Header=BB13_219 Depth=3
	bstrpick.d	$a0, $s2, 15, 0
	slli.d	$a0, $a0, 49
	bltz	$a0, .LBB13_227
# %bb.221:                              # %if.then1414
                                        #   in Loop: Header=BB13_219 Depth=3
	bstrpick.d	$a0, $s1, 15, 0
	and	$a0, $a0, $s4
	beqz	$a0, .LBB13_227
# %bb.222:                              # %if.then1422
                                        #   in Loop: Header=BB13_219 Depth=3
	xor	$s3, $s3, $s4
	bstrpick.d	$s1, $s1, 13, 0
	or	$s2, $s2, $s4
.LBB13_223:                             # %if.end1434
                                        #   in Loop: Header=BB13_219 Depth=3
	andi	$s0, $s8, 255
	bltu	$t7, $s0, .LBB13_218
# %bb.224:                              # %if.then1446
                                        #   in Loop: Header=BB13_219 Depth=3
	bltu	$s5, $t8, .LBB13_217
# %bb.225:                              # %if.then1449
                                        #   in Loop: Header=BB13_219 Depth=3
	ldptr.d	$a3, $fp, 2128
	ld.d	$a1, $fp, 48
	ld.w	$a2, $fp, 92
	beqz	$a3, .LBB13_215
# %bb.226:                              # %cond.true.i876
                                        #   in Loop: Header=BB13_219 Depth=3
	ldptr.d	$a0, $fp, 2120
	jirl	$ra, $a3, 0
	ori	$t7, $zero, 16
	ori	$a4, $zero, 32
	bgez	$a0, .LBB13_216
	b	.LBB13_312
.LBB13_227:                             # %do.body1488
                                        #   in Loop: Header=BB13_24 Depth=2
	addi.d	$a0, $fp, 268
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ldx.bu	$s4, $a0, $a1
	beqz	$s4, .LBB13_253
# %bb.228:                              # %do.body1497.preheader
                                        #   in Loop: Header=BB13_24 Depth=2
	move	$s0, $zero
	b	.LBB13_233
.LBB13_229:                             # %cond.false.i917
                                        #   in Loop: Header=BB13_233 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ori	$t7, $zero, 16
	ori	$a4, $zero, 32
	bltz	$a0, .LBB13_312
.LBB13_230:                             # %if.end1509
                                        #   in Loop: Header=BB13_233 Depth=3
	ld.d	$s5, $fp, 48
	st.d	$s5, $fp, 56
	add.d	$t8, $s5, $a0
	st.d	$t8, $fp, 64
.LBB13_231:                             # %if.end1512
                                        #   in Loop: Header=BB13_233 Depth=3
	ld.hu	$a0, $s5, 0
	revb.d	$a0, $a0
	srli.d	$a0, $a0, 48
	sub.d	$a1, $t7, $s6
	sll.w	$a0, $a0, $a1
	or	$s7, $a0, $s7
	addi.d	$s8, $s8, 16
	addi.d	$s5, $s5, 2
.LBB13_232:                             # %do.end1530
                                        #   in Loop: Header=BB13_233 Depth=3
	andi	$a0, $s4, 255
	andi	$a1, $s8, 255
	sltu	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	sll.w	$a1, $s0, $a0
	sub.d	$a2, $a4, $a0
	srl.w	$a2, $s7, $a2
	or	$s0, $a2, $a1
	sll.w	$s7, $s7, $a0
	sub.d	$s4, $s4, $a0
	andi	$a1, $s4, 255
	sub.d	$s8, $s8, $a0
	beqz	$a1, .LBB13_237
.LBB13_233:                             # %do.body1497
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	andi	$s6, $s8, 255
	bltu	$t7, $s6, .LBB13_232
# %bb.234:                              # %if.then1501
                                        #   in Loop: Header=BB13_233 Depth=3
	bltu	$s5, $t8, .LBB13_231
# %bb.235:                              # %if.then1504
                                        #   in Loop: Header=BB13_233 Depth=3
	ldptr.d	$a3, $fp, 2128
	ld.d	$a1, $fp, 48
	ld.w	$a2, $fp, 92
	beqz	$a3, .LBB13_229
# %bb.236:                              # %cond.true.i900
                                        #   in Loop: Header=BB13_233 Depth=3
	ldptr.d	$a0, $fp, 2120
	jirl	$ra, $a3, 0
	ori	$t7, $zero, 16
	ori	$a4, $zero, 32
	bgez	$a0, .LBB13_230
	b	.LBB13_312
.LBB13_237:                             #   in Loop: Header=BB13_24 Depth=2
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
.LBB13_238:                             # %sw.epilog
                                        #   in Loop: Header=BB13_24 Depth=2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	addi.d	$a1, $fp, 100
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a0, $s0
	addi.w	$a2, $a0, 1
	bstrpick.d	$a3, $s6, 31, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a3
	ld.d	$s4, $sp, 64                    # 8-byte Folded Reload
	bgeu	$s6, $a2, .LBB13_247
# %bb.239:                              # %if.then1573
                                        #   in Loop: Header=BB13_24 Depth=2
	ld.w	$a1, $fp, 24
	sub.w	$a4, $a2, $s6
	blt	$a1, $a4, .LBB13_317
# %bb.240:                              # %if.end1579
                                        #   in Loop: Header=BB13_24 Depth=2
	sub.d	$a1, $a1, $a4
	bstrpick.d	$a7, $a1, 31, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	add.d	$a2, $a1, $a7
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	bge	$a4, $a1, .LBB13_267
# %bb.241:                              # %if.then1586
                                        #   in Loop: Header=BB13_24 Depth=2
	sub.w	$a1, $a1, $a4
	blez	$a4, .LBB13_266
# %bb.242:                              # %while.body1592.preheader
                                        #   in Loop: Header=BB13_24 Depth=2
	ori	$a6, $zero, 32
	bltu	$a4, $a6, .LBB13_263
# %bb.243:                              # %while.body1592.preheader
                                        #   in Loop: Header=BB13_24 Depth=2
	sub.d	$a5, $a3, $a7
	bltu	$a5, $a6, .LBB13_263
# %bb.244:                              # %vector.ph1751
                                        #   in Loop: Header=BB13_24 Depth=2
	bstrpick.d	$a5, $a4, 30, 5
	slli.d	$a6, $a5, 5
	sub.d	$a5, $a4, $a6
	add.d	$a0, $a0, $a6
	add.d	$a2, $a2, $a6
	ld.d	$t0, $sp, 32                    # 8-byte Folded Reload
	add.d	$a7, $t0, $a7
	add.d	$a3, $t0, $a3
	move	$t0, $a6
.LBB13_245:                             # %vector.body1755
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a7, -16
	vld	$vr1, $a7, 0
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$t0, $t0, -32
	addi.d	$a7, $a7, 32
	addi.d	$a3, $a3, 32
	bnez	$t0, .LBB13_245
# %bb.246:                              # %middle.block1762
                                        #   in Loop: Header=BB13_24 Depth=2
	bne	$a6, $a4, .LBB13_264
	b	.LBB13_266
.LBB13_247:                             # %if.else1604
                                        #   in Loop: Header=BB13_24 Depth=2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	blez	$a1, .LBB13_284
# %bb.248:                              # %iter.check1772
                                        #   in Loop: Header=BB13_24 Depth=2
	bstrpick.d	$a4, $a2, 31, 0
	move	$a6, $a1
	sub.d	$a1, $a0, $a4
	ori	$a5, $zero, 8
	bltu	$a6, $a5, .LBB13_252
# %bb.249:                              # %iter.check1772
                                        #   in Loop: Header=BB13_24 Depth=2
	ori	$a5, $zero, 32
	bltu	$a2, $a5, .LBB13_252
# %bb.250:                              # %vector.main.loop.iter.check1774
                                        #   in Loop: Header=BB13_24 Depth=2
	sub.d	$a2, $zero, $a4
	ld.d	$a6, $sp, 40                    # 8-byte Folded Reload
	bgeu	$a6, $a5, .LBB13_254
# %bb.251:                              #   in Loop: Header=BB13_24 Depth=2
	move	$a5, $zero
	b	.LBB13_258
.LBB13_252:                             #   in Loop: Header=BB13_24 Depth=2
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	b	.LBB13_261
.LBB13_253:                             #   in Loop: Header=BB13_24 Depth=2
	move	$s0, $zero
	b	.LBB13_238
.LBB13_254:                             # %vector.ph1775
                                        #   in Loop: Header=BB13_24 Depth=2
	andi	$a4, $a6, 24
	bstrpick.d	$a5, $a6, 30, 5
	slli.d	$a5, $a5, 5
	ld.d	$a6, $sp, 32                    # 8-byte Folded Reload
	add.d	$a6, $a6, $a3
	move	$a7, $a5
.LBB13_255:                             # %vector.body1778
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t0, $a6, $a2
	vld	$vr0, $t0, -16
	vldx	$vr1, $a6, $a2
	vst	$vr0, $a6, -16
	vst	$vr1, $a6, 0
	addi.d	$a7, $a7, -32
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB13_255
# %bb.256:                              # %middle.block1785
                                        #   in Loop: Header=BB13_24 Depth=2
	ld.d	$a6, $sp, 40                    # 8-byte Folded Reload
	beq	$a5, $a6, .LBB13_282
# %bb.257:                              # %vec.epilog.iter.check1789
                                        #   in Loop: Header=BB13_24 Depth=2
	beqz	$a4, .LBB13_285
.LBB13_258:                             # %vec.epilog.ph1791
                                        #   in Loop: Header=BB13_24 Depth=2
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	bstrpick.d	$a7, $a4, 30, 3
	slli.d	$a6, $a7, 3
	sub.d	$a4, $a4, $a6
	alsl.d	$a0, $a7, $a0, 3
	alsl.d	$a1, $a7, $a1, 3
	sub.d	$a7, $a5, $a6
	add.d	$a3, $a5, $a3
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	add.d	$a3, $a5, $a3
.LBB13_259:                             # %vec.epilog.vector.body1795
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$a5, $a3, $a2
	st.d	$a5, $a3, 0
	addi.d	$a7, $a7, 8
	addi.d	$a3, $a3, 8
	bnez	$a7, .LBB13_259
# %bb.260:                              # %vec.epilog.middle.block1801
                                        #   in Loop: Header=BB13_24 Depth=2
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	beq	$a6, $a2, .LBB13_282
.LBB13_261:                             # %while.body1611.preheader
                                        #   in Loop: Header=BB13_24 Depth=2
	addi.d	$a2, $a4, 1
	ori	$a5, $zero, 1
.LBB13_262:                             # %while.body1611
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.b	$a3, $a1, 0
	addi.d	$a1, $a1, 1
	addi.d	$a4, $a0, 1
	addi.w	$a2, $a2, -1
	st.b	$a3, $a0, 0
	move	$a0, $a4
	bltu	$a5, $a2, .LBB13_262
	b	.LBB13_282
.LBB13_263:                             #   in Loop: Header=BB13_24 Depth=2
	move	$a5, $a4
.LBB13_264:                             # %while.body1592.preheader1878
                                        #   in Loop: Header=BB13_24 Depth=2
	addi.d	$a3, $a5, 1
	ori	$a5, $zero, 1
.LBB13_265:                             # %while.body1592
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.b	$a4, $a2, 0
	addi.d	$a2, $a2, 1
	st.b	$a4, $a0, 0
	addi.w	$a3, $a3, -1
	addi.d	$a0, $a0, 1
	bltu	$a5, $a3, .LBB13_265
.LBB13_266:                             #   in Loop: Header=BB13_24 Depth=2
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
.LBB13_267:                             # %if.end1595
                                        #   in Loop: Header=BB13_24 Depth=2
	ori	$a4, $zero, 32
	blez	$a1, .LBB13_283
# %bb.268:                              # %iter.check
                                        #   in Loop: Header=BB13_24 Depth=2
	ori	$a3, $zero, 8
	bltu	$a1, $a3, .LBB13_272
# %bb.269:                              # %iter.check
                                        #   in Loop: Header=BB13_24 Depth=2
	sub.d	$a3, $a0, $a2
	bltu	$a3, $a4, .LBB13_272
# %bb.270:                              # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB13_24 Depth=2
	bgeu	$a1, $a4, .LBB13_273
# %bb.271:                              #   in Loop: Header=BB13_24 Depth=2
	move	$a6, $zero
	b	.LBB13_277
.LBB13_272:                             #   in Loop: Header=BB13_24 Depth=2
	move	$a5, $a1
	move	$a3, $a0
	move	$a4, $a2
	b	.LBB13_280
.LBB13_273:                             # %vector.ph1723
                                        #   in Loop: Header=BB13_24 Depth=2
	andi	$a3, $a1, 24
	bstrpick.d	$a4, $a1, 30, 5
	slli.d	$a6, $a4, 5
	addi.d	$a4, $a2, 16
	addi.d	$a5, $a0, 16
	move	$a7, $a6
.LBB13_274:                             # %vector.body1726
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vst	$vr0, $a5, -16
	vst	$vr1, $a5, 0
	addi.d	$a7, $a7, -32
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a7, .LBB13_274
# %bb.275:                              # %middle.block1731
                                        #   in Loop: Header=BB13_24 Depth=2
	beq	$a6, $a1, .LBB13_282
# %bb.276:                              # %vec.epilog.iter.check
                                        #   in Loop: Header=BB13_24 Depth=2
	beqz	$a3, .LBB13_286
.LBB13_277:                             # %vec.epilog.ph
                                        #   in Loop: Header=BB13_24 Depth=2
	bstrpick.d	$a4, $a1, 30, 3
	slli.d	$a7, $a4, 3
	sub.d	$a5, $a1, $a7
	alsl.d	$a3, $a4, $a0, 3
	alsl.d	$a4, $a4, $a2, 3
	sub.d	$t0, $a6, $a7
	add.d	$a2, $a2, $a6
	add.d	$a0, $a0, $a6
.LBB13_278:                             # %vec.epilog.vector.body
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a6, $a2, 0
	st.d	$a6, $a0, 0
	addi.d	$t0, $t0, 8
	addi.d	$a2, $a2, 8
	addi.d	$a0, $a0, 8
	bnez	$t0, .LBB13_278
# %bb.279:                              # %vec.epilog.middle.block
                                        #   in Loop: Header=BB13_24 Depth=2
	beq	$a7, $a1, .LBB13_282
.LBB13_280:                             # %while.body1600.preheader
                                        #   in Loop: Header=BB13_24 Depth=2
	addi.d	$a0, $a5, 1
	ori	$a5, $zero, 1
.LBB13_281:                             # %while.body1600
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.b	$a1, $a4, 0
	addi.d	$a4, $a4, 1
	addi.d	$a2, $a3, 1
	addi.w	$a0, $a0, -1
	st.b	$a1, $a3, 0
	move	$a3, $a2
	bltu	$a5, $a0, .LBB13_281
.LBB13_282:                             #   in Loop: Header=BB13_24 Depth=2
	ori	$a4, $zero, 32
.LBB13_283:                             # %if.end1617
                                        #   in Loop: Header=BB13_24 Depth=2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
.LBB13_284:                             # %if.end1617
                                        #   in Loop: Header=BB13_24 Depth=2
	add.w	$s6, $a1, $s6
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	bltu	$s6, $a0, .LBB13_24
	b	.LBB13_287
.LBB13_285:                             #   in Loop: Header=BB13_24 Depth=2
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	sub.d	$a4, $a2, $a5
	add.d	$a0, $a0, $a5
	add.d	$a1, $a1, $a5
	b	.LBB13_261
.LBB13_286:                             #   in Loop: Header=BB13_24 Depth=2
	sub.d	$a5, $a1, $a6
	add.d	$a3, $a0, $a6
	add.d	$a4, $a2, $a6
	b	.LBB13_280
.LBB13_287:                             # %while.end1618
                                        #   in Loop: Header=BB13_11 Depth=1
	bstrpick.d	$a0, $s6, 31, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	sub.w	$a1, $s6, $a1
	bstrpick.d	$a2, $a1, 31, 15
	st.d	$a0, $fp, 80
	beqz	$a2, .LBB13_303
# %bb.288:                              # %if.then1625
                                        #   in Loop: Header=BB13_11 Depth=1
	lu12i.w	$a0, 8
	bne	$a1, $a0, .LBB13_316
# %bb.289:                              # %if.end1631
                                        #   in Loop: Header=BB13_11 Depth=1
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s4, $sp, 64                    # 8-byte Folded Spill
	move	$s4, $zero
	andi	$a0, $s8, 7
	sll.w	$s7, $s7, $a0
	andi	$s8, $s8, 248
	ori	$s0, $zero, 8
	b	.LBB13_294
.LBB13_290:                             # %cond.false.i941
                                        #   in Loop: Header=BB13_294 Depth=2
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ori	$t7, $zero, 16
	ori	$a4, $zero, 32
	bltz	$a0, .LBB13_312
.LBB13_291:                             # %if.end1664
                                        #   in Loop: Header=BB13_294 Depth=2
	ld.d	$s5, $fp, 48
	st.d	$s5, $fp, 56
	add.d	$t8, $s5, $a0
	st.d	$t8, $fp, 64
.LBB13_292:                             # %if.end1667
                                        #   in Loop: Header=BB13_294 Depth=2
	ld.hu	$a0, $s5, 0
	revb.d	$a0, $a0
	srli.d	$a0, $a0, 48
	sub.d	$a1, $t7, $s6
	sll.w	$a0, $a0, $a1
	or	$s7, $a0, $s7
	addi.d	$s8, $s8, 16
	addi.d	$s5, $s5, 2
	andi	$s6, $s8, 255
.LBB13_293:                             # %do.end1685
                                        #   in Loop: Header=BB13_294 Depth=2
	sltu	$a0, $s0, $s6
	masknez	$a1, $s6, $a0
	maskeqz	$a0, $s0, $a0
	or	$a1, $a0, $a1
	sll.w	$a0, $s4, $a1
	sub.d	$a2, $a4, $a1
	srl.w	$a2, $s7, $a2
	or	$a0, $a2, $a0
	sll.w	$s7, $s7, $a1
	sub.d	$a2, $s0, $a1
	andi	$s0, $a2, 255
	sub.d	$s8, $s8, $a1
	move	$s4, $a0
	beqz	$s0, .LBB13_298
.LBB13_294:                             # %do.body1652
                                        #   Parent Loop BB13_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$s6, $s8, 255
	bltu	$t7, $s6, .LBB13_293
# %bb.295:                              # %if.then1656
                                        #   in Loop: Header=BB13_294 Depth=2
	bltu	$s5, $t8, .LBB13_292
# %bb.296:                              # %if.then1659
                                        #   in Loop: Header=BB13_294 Depth=2
	ldptr.d	$a3, $fp, 2128
	ld.d	$a1, $fp, 48
	ld.w	$a2, $fp, 92
	beqz	$a3, .LBB13_290
# %bb.297:                              # %cond.true.i924
                                        #   in Loop: Header=BB13_294 Depth=2
	ldptr.d	$a0, $fp, 2120
	jirl	$ra, $a3, 0
	ori	$t7, $zero, 16
	ori	$a4, $zero, 32
	bgez	$a0, .LBB13_291
	b	.LBB13_312
	.p2align	4, , 16
.LBB13_298:                             # %do.cond1718
                                        #   in Loop: Header=BB13_294 Depth=2
	move	$s4, $zero
	ori	$s0, $zero, 8
	ori	$a1, $zero, 255
	bne	$a0, $a1, .LBB13_294
# %bb.299:                              # %do.end1721
                                        #   in Loop: Header=BB13_11 Depth=1
	ld.w	$a2, $fp, 24
	ld.d	$a0, $fp, 80
	ld.d	$a1, $fp, 72
	st.b	$zero, $fp, 42
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	bne	$s6, $a2, .LBB13_304
# %bb.300:                              # %if.then1726
                                        #   in Loop: Header=BB13_11 Depth=1
	ld.bu	$a3, $fp, 8
	sub.w	$a2, $a0, $a1
	ld.d	$s4, $sp, 64                    # 8-byte Folded Reload
	beqz	$a3, .LBB13_302
# %bb.301:                              # %land.lhs.true1736
                                        #   in Loop: Header=BB13_11 Depth=1
	ld.w	$a0, $fp, 4
	move	$s0, $t8
	move	$s6, $a2
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a2, $s6
	move	$t8, $s0
	ori	$a4, $zero, 32
	ori	$t7, $zero, 16
	bne	$a0, $s6, .LBB13_312
.LBB13_302:                             # %if.end1744
                                        #   in Loop: Header=BB13_11 Depth=1
	move	$s6, $zero
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	sub.d	$s4, $s4, $a2
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $fp, 72
	st.d	$a0, $fp, 80
	move	$a1, $a0
	b	.LBB13_305
.LBB13_303:                             # %while.end1618.if.end1752_crit_edge
                                        #   in Loop: Header=BB13_11 Depth=1
	ld.d	$a1, $fp, 72
	b	.LBB13_305
.LBB13_304:                             #   in Loop: Header=BB13_11 Depth=1
	st.d	$s6, $sp, 96                    # 8-byte Folded Spill
	ld.d	$s4, $sp, 64                    # 8-byte Folded Reload
.LBB13_305:                             # %if.end1752
                                        #   in Loop: Header=BB13_11 Depth=1
	sub.d	$a2, $a0, $a1
	blt	$a2, $s4, .LBB13_11
.LBB13_306:                             # %while.end1753
	beqz	$s4, .LBB13_311
# %bb.307:                              # %if.then1755
	ld.bu	$a0, $fp, 8
	addi.w	$s0, $s4, 0
	beqz	$a0, .LBB13_310
# %bb.308:                              # %land.lhs.true1760
	move	$s4, $t8
	ld.w	$a0, $fp, 4
	move	$a2, $s0
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	bne	$a0, $s0, .LBB13_312
# %bb.309:                              # %land.lhs.true1760.if.end1768_crit_edge
	ld.d	$a1, $fp, 72
	move	$t8, $s4
.LBB13_310:                             # %if.end1768
	add.d	$a0, $a1, $s0
	st.d	$a0, $fp, 72
.LBB13_311:                             # %do.body1773
	move	$a0, $zero
	st.d	$s5, $fp, 56
	st.d	$t8, $fp, 64
	st.w	$s7, $fp, 88
	st.b	$s8, $fp, 96
	st.w	$s6, $fp, 28
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.w	$a1, $fp, 32
	st.h	$s2, $fp, 36
	st.h	$s1, $fp, 38
	st.h	$s3, $fp, 40
	b	.LBB13_315
.LBB13_312:                             # %if.then18
	addi.w	$a0, $zero, -123
.LBB13_313:                             # %cleanup1785
	move	$a1, $a0
	lu32i.d	$a1, 0
	st.w	$a1, $fp, 44
	b	.LBB13_315
.LBB13_314:
	move	$a0, $zero
.LBB13_315:                             # %cleanup1785
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
.LBB13_316:                             # %if.then1629
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	b	.LBB13_318
.LBB13_317:                             # %if.then1577
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
.LBB13_318:                             # %cleanup1785
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB13_319:                             # %sw.default
	addi.w	$a0, $zero, -124
	b	.LBB13_313
.Lfunc_end13:
	.size	qtm_decompress, .Lfunc_end13-qtm_decompress
                                        # -- End function
	.p2align	5                               # -- Begin function qtm_update_model
	.type	qtm_update_model,@function
qtm_update_model:                       # @qtm_update_model
# %bb.0:                                # %entry
	ld.w	$a1, $a0, 0
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 0
	beqz	$a1, .LBB14_4
# %bb.1:                                # %if.then
	ld.w	$a1, $a0, 4
	blez	$a1, .LBB14_24
# %bb.2:                                # %for.body.lr.ph
	ld.d	$a0, $a0, 8
	alsl.d	$a2, $a1, $a0, 2
	ld.hu	$a3, $a2, 2
	addi.d	$a0, $a1, 1
	addi.d	$a1, $a2, -2
	ori	$a2, $zero, 1
	.p2align	4, , 16
.LBB14_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a4, $a1, 0
	srli.d	$a4, $a4, 1
	bstrpick.d	$a5, $a3, 15, 0
	sltu	$a5, $a5, $a4
	addi.d	$a3, $a3, 1
	masknez	$a3, $a3, $a5
	maskeqz	$a4, $a4, $a5
	or	$a3, $a4, $a3
	st.h	$a3, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, -4
	bltu	$a2, $a0, .LBB14_3
	b	.LBB14_24
.LBB14_4:                               # %if.else
	ld.w	$a1, $a0, 4
	ori	$a2, $zero, 50
	st.w	$a2, $a0, 0
	blez	$a1, .LBB14_24
# %bb.5:                                # %for.body33.lr.ph
	ld.d	$a2, $a0, 8
	ld.hu	$a3, $a2, 2
	ori	$a4, $zero, 8
	bgeu	$a1, $a4, .LBB14_7
# %bb.6:
	move	$a4, $zero
	b	.LBB14_10
.LBB14_7:                               # %vector.ph
	bstrpick.d	$a4, $a1, 30, 3
	slli.d	$a4, $a4, 3
	vinsgr2vr.h	$vr0, $a3, 7
	addi.d	$a5, $a2, 18
	move	$a6, $a4
	.p2align	4, , 16
.LBB14_8:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a7, $a5, -12
	ld.h	$t0, $a5, -8
	ld.h	$t1, $a5, -4
	ld.h	$t2, $a5, 0
	ld.h	$t3, $a5, 4
	ld.h	$t4, $a5, 8
	ld.h	$t5, $a5, 12
	ld.hu	$a3, $a5, 16
	vbsrl.v	$vr0, $vr0, 14
	vinsgr2vr.h	$vr1, $a7, 0
	vinsgr2vr.h	$vr1, $t0, 1
	vinsgr2vr.h	$vr1, $t1, 2
	vinsgr2vr.h	$vr1, $t2, 3
	vinsgr2vr.h	$vr1, $t3, 4
	vinsgr2vr.h	$vr1, $t4, 5
	vinsgr2vr.h	$vr1, $t5, 6
	vbsll.v	$vr2, $vr1, 2
	vinsgr2vr.h	$vr1, $a3, 7
	vor.v	$vr0, $vr2, $vr0
	vsub.h	$vr0, $vr0, $vr1
	vaddi.hu	$vr0, $vr0, 1
	vsrli.h	$vr0, $vr0, 1
	vstelm.h	$vr0, $a5, -16, 0
	vstelm.h	$vr0, $a5, -12, 1
	vstelm.h	$vr0, $a5, -8, 2
	vstelm.h	$vr0, $a5, -4, 3
	vstelm.h	$vr0, $a5, 0, 4
	vstelm.h	$vr0, $a5, 4, 5
	vstelm.h	$vr0, $a5, 8, 6
	vstelm.h	$vr0, $a5, 12, 7
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	vori.b	$vr0, $vr1, 0
	bnez	$a6, .LBB14_8
# %bb.9:                                # %middle.block
	beq	$a4, $a1, .LBB14_12
.LBB14_10:                              # %for.body33.preheader
	alsl.d	$a2, $a4, $a2, 2
	addi.d	$a2, $a2, 6
	sub.d	$a4, $a1, $a4
	.p2align	4, , 16
.LBB14_11:                              # %for.body33
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a5, $a2, 0
	sub.d	$a3, $a3, $a5
	addi.d	$a3, $a3, 1
	bstrpick.d	$a3, $a3, 15, 1
	st.h	$a3, $a2, -4
	addi.d	$a4, $a4, -1
	addi.d	$a2, $a2, 4
	move	$a3, $a5
	bnez	$a4, .LBB14_11
.LBB14_12:                              # %for.cond61.preheader
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB14_14
# %bb.13:
	move	$a5, $zero
	b	.LBB14_22
.LBB14_14:                              # %for.body66.lr.ph
	move	$a3, $zero
	move	$a4, $zero
	b	.LBB14_16
	.p2align	4, , 16
.LBB14_15:                              # %for.cond61.loopexit
                                        #   in Loop: Header=BB14_16 Depth=1
	addi.w	$a5, $a1, -1
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 4
	bge	$a4, $a5, .LBB14_21
.LBB14_16:                              # %for.body66
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_19 Depth 2
	move	$a5, $a4
	addi.d	$a4, $a4, 1
	bge	$a4, $a1, .LBB14_15
# %bb.17:                               # %for.body72.preheader
                                        #   in Loop: Header=BB14_16 Depth=1
	move	$a6, $a3
	move	$a7, $a2
	b	.LBB14_19
	.p2align	4, , 16
.LBB14_18:                              # %for.inc99
                                        #   in Loop: Header=BB14_19 Depth=2
	addi.d	$a7, $a7, 1
	addi.d	$a6, $a6, 4
	bge	$a7, $a1, .LBB14_15
.LBB14_19:                              # %for.body72
                                        #   Parent Loop BB14_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t1, $a0, 8
	alsl.d	$t0, $a5, $t1, 2
	ld.hu	$t2, $t0, 2
	add.d	$t1, $t1, $a6
	ld.hu	$t3, $t1, 6
	bgeu	$t2, $t3, .LBB14_18
# %bb.20:                               # %if.then85
                                        #   in Loop: Header=BB14_19 Depth=2
	ld.w	$a1, $t1, 4
	ld.w	$t1, $t0, 0
	st.w	$a1, $t0, 0
	ld.d	$a1, $a0, 8
	add.d	$a1, $a1, $a6
	st.w	$t1, $a1, 4
	ld.w	$a1, $a0, 4
	b	.LBB14_18
.LBB14_21:                              # %for.cond107.preheader
	blez	$a1, .LBB14_24
.LBB14_22:                              # %for.body110.lr.ph
	ld.d	$a0, $a0, 8
	bstrpick.d	$a1, $a5, 31, 0
	slli.d	$a1, $a1, 2
	addi.w	$a2, $zero, -4
	.p2align	4, , 16
.LBB14_23:                              # %for.body110
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a0, $a1
	ld.h	$a4, $a3, 6
	ld.h	$a5, $a3, 2
	add.d	$a4, $a5, $a4
	addi.d	$a1, $a1, -4
	st.h	$a4, $a3, 2
	bne	$a1, $a2, .LBB14_23
.LBB14_24:                              # %if.end127
	ret
.Lfunc_end14:
	.size	qtm_update_model, .Lfunc_end14-qtm_update_model
                                        # -- End function
	.globl	qtm_free                        # -- Begin function qtm_free
	.p2align	5
	.type	qtm_free,@function
qtm_free:                               # @qtm_free
# %bb.0:                                # %entry
	beqz	$a0, .LBB15_2
# %bb.1:                                # %if.then
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.d	$a1, $a0, 16
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 48
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB15_2:                               # %if.end
	ret
.Lfunc_end15:
	.size	qtm_free, .Lfunc_end15-qtm_free
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function mszip_make_decode_table
.LCPI16_0:
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
.LCPI16_1:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.p2align	5
	.type	mszip_make_decode_table,@function
mszip_make_decode_table:                # @mszip_make_decode_table
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	move	$a5, $zero
	ori	$a6, $zero, 1
	sll.w	$a7, $a6, $a1
	bstrpick.d	$t4, $a7, 31, 1
	andi	$a4, $a1, 255
	st.d	$a4, $sp, 24                    # 8-byte Folded Spill
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	bstrpick.d	$a4, $a0, 15, 0
	addi.w	$t2, $zero, -1
	pcalau12i	$t3, %pc_hi20(.LCPI16_0)
	vld	$vr0, $t3, %pc_lo12(.LCPI16_0)
	pcalau12i	$t3, %pc_hi20(.LCPI16_1)
	vld	$vr1, $t3, %pc_lo12(.LCPI16_1)
	ori	$t3, $zero, 16
	vrepli.b	$vr2, 0
	ori	$t7, $zero, 1
	st.d	$t4, $sp, 8                     # 8-byte Folded Spill
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	b	.LBB16_2
	.p2align	4, , 16
.LBB16_1:                               # %for.end
                                        #   in Loop: Header=BB16_2 Depth=1
	bstrpick.d	$t4, $t4, 31, 1
	addi.w	$t7, $t5, 1
	addi.w	$t2, $t2, -1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ori	$a6, $zero, 1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	bgeu	$t5, $a0, .LBB16_15
.LBB16_2:                               # %for.cond2.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_4 Depth 2
                                        #       Child Loop BB16_6 Depth 3
                                        #       Child Loop BB16_13 Depth 3
                                        #       Child Loop BB16_11 Depth 3
	move	$t6, $zero
	move	$t5, $t7
	sll.w	$t7, $a6, $t7
	bstrpick.d	$t7, $t7, 15, 0
	sub.d	$t8, $a1, $t5
	addi.d	$fp, $t4, -1
	bstrpick.d	$fp, $fp, 31, 0
	mul.d	$fp, $t7, $fp
	srli.d	$s0, $fp, 32
	sltu	$s0, $zero, $s0
	bstrpick.d	$s1, $t4, 14, 3
	slli.w	$s1, $s1, 3
	mul.d	$a1, $s1, $t7
	slli.d	$s3, $t7, 3
	vreplgr2vr.w	$vr3, $s3
	andi	$s3, $t4, 7
	vreplgr2vr.w	$vr5, $t7
	vmul.w	$vr4, $vr5, $vr0
	vmul.w	$vr5, $vr5, $vr1
	b	.LBB16_4
	.p2align	4, , 16
.LBB16_3:                               # %for.inc
                                        #   in Loop: Header=BB16_4 Depth=2
	addi.d	$t6, $t6, 1
	bgeu	$t6, $a4, .LBB16_1
.LBB16_4:                               # %for.body6
                                        #   Parent Loop BB16_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_6 Depth 3
                                        #       Child Loop BB16_13 Depth 3
                                        #       Child Loop BB16_11 Depth 3
	ldx.bu	$s4, $a2, $t6
	bne	$s4, $t5, .LBB16_3
# %bb.5:                                # %if.end
                                        #   in Loop: Header=BB16_4 Depth=2
	move	$s6, $zero
	srl.w	$s8, $a5, $t8
	move	$s5, $t2
	.p2align	4, , 16
.LBB16_6:                               # %do.body
                                        #   Parent Loop BB16_2 Depth=1
                                        #     Parent Loop BB16_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s4, $s8
	move	$s7, $s6
	move	$s6, $s8
	bstrins.d	$s6, $s7, 63, 1
	bstrpick.d	$s5, $s5, 31, 0
	addi.d	$s5, $s5, 1
	slli.d	$ra, $s5, 31
	bstrpick.d	$s8, $s8, 31, 1
	bgez	$ra, .LBB16_6
# %bb.7:                                # %do.end
                                        #   in Loop: Header=BB16_4 Depth=2
	add.w	$a5, $a5, $t4
	bltu	$a7, $a5, .LBB16_34
# %bb.8:                                # %do.body24.preheader
                                        #   in Loop: Header=BB16_4 Depth=2
	addi.w	$s5, $t4, 0
	bltu	$s5, $t3, .LBB16_10
# %bb.9:                                # %vector.scevcheck
                                        #   in Loop: Header=BB16_4 Depth=2
	bstrins.d	$s4, $s7, 63, 1
	nor	$s4, $s4, $zero
	addi.w	$s4, $s4, 0
	addi.w	$s7, $fp, 0
	sltu	$s4, $s4, $s7
	or	$s4, $s4, $s0
	beqz	$s4, .LBB16_12
.LBB16_10:                              #   in Loop: Header=BB16_4 Depth=2
	move	$s4, $s6
	move	$s6, $t4
	.p2align	4, , 16
.LBB16_11:                              # %do.body24
                                        #   Parent Loop BB16_2 Depth=1
                                        #     Parent Loop BB16_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bstrpick.d	$a0, $s4, 31, 0
	slli.d	$a0, $a0, 1
	stx.h	$t6, $a3, $a0
	addi.w	$s6, $s6, -1
	add.w	$s4, $s4, $t7
	bnez	$s6, .LBB16_11
	b	.LBB16_3
.LBB16_12:                              # %vector.ph
                                        #   in Loop: Header=BB16_4 Depth=2
	add.w	$s4, $s6, $a1
	vreplgr2vr.w	$vr7, $s6
	vadd.w	$vr6, $vr7, $vr4
	vadd.w	$vr7, $vr7, $vr5
	move	$s6, $s1
	.p2align	4, , 16
.LBB16_13:                              # %vector.body
                                        #   Parent Loop BB16_2 Depth=1
                                        #     Parent Loop BB16_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vilvh.w	$vr8, $vr2, $vr6
	vilvl.w	$vr9, $vr2, $vr6
	vilvh.w	$vr10, $vr2, $vr7
	vilvl.w	$vr11, $vr2, $vr7
	vpickve2gr.d	$s7, $vr11, 0
	vpickve2gr.d	$s8, $vr11, 1
	vpickve2gr.d	$ra, $vr10, 0
	vpickve2gr.d	$a6, $vr10, 1
	vpickve2gr.d	$a0, $vr9, 0
	vpickve2gr.d	$t0, $vr9, 1
	vpickve2gr.d	$t1, $vr8, 0
	vpickve2gr.d	$s2, $vr8, 1
	slli.d	$s7, $s7, 1
	slli.d	$s8, $s8, 1
	slli.d	$ra, $ra, 1
	slli.d	$a6, $a6, 1
	slli.d	$a0, $a0, 1
	slli.d	$t0, $t0, 1
	slli.d	$t1, $t1, 1
	slli.d	$s2, $s2, 1
	stx.h	$t6, $a3, $s7
	stx.h	$t6, $a3, $s8
	stx.h	$t6, $a3, $ra
	stx.h	$t6, $a3, $a6
	stx.h	$t6, $a3, $a0
	stx.h	$t6, $a3, $t0
	stx.h	$t6, $a3, $t1
	stx.h	$t6, $a3, $s2
	vadd.w	$vr7, $vr7, $vr3
	addi.w	$s6, $s6, -8
	vadd.w	$vr6, $vr6, $vr3
	bnez	$s6, .LBB16_13
# %bb.14:                               # %middle.block
                                        #   in Loop: Header=BB16_4 Depth=2
	move	$s6, $s3
	bne	$s5, $s1, .LBB16_11
	b	.LBB16_3
.LBB16_15:                              # %for.end36
	bne	$a5, $a7, .LBB16_17
# %bb.16:
	move	$a0, $zero
	b	.LBB16_35
.LBB16_17:                              # %if.end40
	bstrpick.d	$t3, $a5, 15, 0
	lu12i.w	$t2, 15
	bgeu	$t3, $a7, .LBB16_22
# %bb.18:                               # %do.body48.preheader.preheader
	ori	$t0, $t2, 4095
	move	$t1, $a5
	.p2align	4, , 16
.LBB16_19:                              # %do.body48.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_20 Depth 2
	move	$t4, $zero
	move	$t5, $a1
	.p2align	4, , 16
.LBB16_20:                              # %do.body48
                                        #   Parent Loop BB16_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $t4
	move	$t4, $t3
	bstrpick.d	$t3, $t3, 31, 1
	addi.w	$t5, $t5, -1
	bstrins.d	$t4, $a0, 63, 1
	bnez	$t5, .LBB16_20
# %bb.21:                               # %do.end56
                                        #   in Loop: Header=BB16_19 Depth=1
	bstrpick.d	$a0, $t4, 31, 0
	slli.d	$a0, $a0, 1
	addi.d	$t1, $t1, 1
	bstrpick.d	$t3, $t1, 15, 0
	stx.h	$t0, $a3, $a0
	bltu	$t3, $a7, .LBB16_19
.LBB16_22:                              # %for.cond76.preheader.preheader
	lu12i.w	$a0, 16
	sll.w	$a7, $a0, $a1
	slli.d	$a5, $a5, 16
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ld.d	$a6, $sp, 16                    # 8-byte Folded Reload
	sltu	$t0, $a6, $a0
	masknez	$a6, $a6, $t0
	maskeqz	$a0, $a0, $t0
	or	$a6, $a0, $a6
	addi.w	$a0, $a1, 1
	lu12i.w	$t0, 8
	ori	$t1, $zero, 1
	ori	$t2, $t2, 4095
	ori	$t3, $zero, 15
	ori	$t4, $zero, 17
	b	.LBB16_24
.LBB16_23:                              # %for.end144
                                        #   in Loop: Header=BB16_24 Depth=1
	bstrpick.d	$t0, $t0, 31, 1
	addi.w	$a0, $a0, 1
	addi.d	$t1, $t1, 1
	beq	$a0, $t4, .LBB16_36
.LBB16_24:                              # %for.body80.us.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_27 Depth 2
                                        #       Child Loop BB16_29 Depth 3
                                        #       Child Loop BB16_32 Depth 3
	move	$t5, $zero
	b	.LBB16_27
	.p2align	4, , 16
.LBB16_25:                              # %for.cond99.for.end134_crit_edge.us
                                        #   in Loop: Header=BB16_27 Depth=2
	addi.w	$t6, $t7, 0
	slli.d	$t6, $t6, 1
	add.w	$a5, $a5, $t0
	stx.h	$t5, $a3, $t6
	bltu	$a7, $a5, .LBB16_34
.LBB16_26:                              # %for.inc142.us
                                        #   in Loop: Header=BB16_27 Depth=2
	addi.d	$t5, $t5, 1
	bgeu	$t5, $a4, .LBB16_23
.LBB16_27:                              # %for.body80.us
                                        #   Parent Loop BB16_24 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_29 Depth 3
                                        #       Child Loop BB16_32 Depth 3
	ldx.bu	$t6, $a2, $t5
	bne	$a0, $t6, .LBB16_26
# %bb.28:                               # %if.end88.us
                                        #   in Loop: Header=BB16_27 Depth=2
	move	$t7, $zero
	bstrpick.d	$t8, $a5, 31, 16
	move	$t6, $a1
	.p2align	4, , 16
.LBB16_29:                              # %do.body90.us
                                        #   Parent Loop BB16_24 Depth=1
                                        #     Parent Loop BB16_27 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$fp, $t7
	move	$t7, $t8
	bstrpick.d	$t8, $t8, 31, 1
	addi.w	$t6, $t6, -1
	bstrins.d	$t7, $fp, 63, 1
	bnez	$t6, .LBB16_29
# %bb.30:                               # %for.body104.us.preheader
                                        #   in Loop: Header=BB16_27 Depth=2
	ori	$t6, $zero, 15
	b	.LBB16_32
	.p2align	4, , 16
.LBB16_31:                              # %if.end123.us
                                        #   in Loop: Header=BB16_32 Depth=3
	bstrpick.d	$fp, $t7, 15, 0
	srl.w	$t7, $a5, $t6
	addi.d	$t6, $t6, -1
	add.w	$t8, $t1, $t6
	bstrins.d	$t7, $fp, 63, 1
	beq	$t8, $t3, .LBB16_25
.LBB16_32:                              # %for.body104.us
                                        #   Parent Loop BB16_24 Depth=1
                                        #     Parent Loop BB16_27 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bstrpick.d	$t8, $t7, 31, 0
	slli.d	$t7, $t8, 1
	ldx.hu	$t7, $a3, $t7
	bne	$t7, $t2, .LBB16_31
# %bb.33:                               # %if.then110.us
                                        #   in Loop: Header=BB16_32 Depth=3
	alsl.d	$fp, $t8, $a3, 1
	bstrpick.d	$t7, $a6, 15, 0
	slli.d	$t7, $t7, 2
	addi.w	$t8, $zero, -1
	lu32i.d	$t8, 0
	stx.w	$t8, $a3, $t7
	addi.d	$t8, $a6, 1
	st.h	$a6, $fp, 0
	move	$t7, $a6
	move	$a6, $t8
	b	.LBB16_31
.LBB16_34:
	ori	$a0, $zero, 1
.LBB16_35:                              # %cleanup
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB16_36:                              # %for.end148
	addi.w	$a0, $a5, 0
	xor	$a0, $a0, $a7
	sltu	$a0, $zero, $a0
	b	.LBB16_35
.Lfunc_end16:
	.size	mszip_make_decode_table, .Lfunc_end16-mszip_make_decode_table
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"mszip_decompress: inflate error %d\n"
	.size	.L.str, 36

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"mszip_decompress: MSZIP error, %u bytes of data lost\n"
	.size	.L.str.1, 54

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"mszip_decompress: bytes left to output\n"
	.size	.L.str.2, 40

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"lzx_decompress: %d bytes remaining at reset interval\n"
	.size	.L.str.3, 54

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"lzx: failed to build %s table\n"
	.size	.L.str.4, 31

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"ALIGNED"
	.size	.L.str.5, 8

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"MAINTREE"
	.size	.L.str.6, 9

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"LENGTH"
	.size	.L.str.7, 7

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"lzx_decompress: bad block type (0x%x)\n"
	.size	.L.str.8, 39

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"lzx: out of bits in huffman decode\n"
	.size	.L.str.9, 36

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"lzx: index out of table\n"
	.size	.L.str.10, 25

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"lzx_decompress: match ran over window wrap\n"
	.size	.L.str.11, 44

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"lzx_decompress: match offset beyond window boundaries\n"
	.size	.L.str.12, 55

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"lzx_decompress: overrun went past end of block by %d (%d remaining)\n"
	.size	.L.str.13, 69

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"lzx_decompress: decode beyond output frame limits! %d != %d\n"
	.size	.L.str.14, 61

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"lzx_decompress: %d avail bytes, new %d frame\n"
	.size	.L.str.15, 46

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"lzx_decompress: bytes left to output\n"
	.size	.L.str.16, 38

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"qtm_decompress: match offset beyond window boundaries\n"
	.size	.L.str.17, 55

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"qtm_decompress: overshot frame alignment\n"
	.size	.L.str.18, 42

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"mszip_flush_window: overflow: %u bytes flushed, total is now %u\n"
	.size	.L.str.19, 65

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"mszip_read_input: out of input bytes\n"
	.size	.L.str.20, 38

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"zip_inflate: out of bits in huffman decode\n"
	.size	.L.str.21, 44

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"zip_inflate: index out of table\n"
	.size	.L.str.22, 33

	.type	mszip_lit_extrabits,@object     # @mszip_lit_extrabits
	.section	.rodata,"a",@progbits
mszip_lit_extrabits:
	.asciz	"\000\000\000\000\000\000\000\000\001\001\001\001\002\002\002\002\003\003\003\003\004\004\004\004\005\005\005\005"
	.size	mszip_lit_extrabits, 29

	.type	mszip_bit_mask_tab,@object      # @mszip_bit_mask_tab
	.p2align	1, 0x0
mszip_bit_mask_tab:
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
	.size	mszip_bit_mask_tab, 34

	.type	mszip_lit_lengths,@object       # @mszip_lit_lengths
	.p2align	1, 0x0
mszip_lit_lengths:
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
	.size	mszip_lit_lengths, 58

	.type	mszip_dist_extrabits,@object    # @mszip_dist_extrabits
mszip_dist_extrabits:
	.ascii	"\000\000\000\000\001\001\002\002\003\003\004\004\005\005\006\006\007\007\b\b\t\t\n\n\013\013\f\f\r\r"
	.size	mszip_dist_extrabits, 30

	.type	mszip_dist_offsets,@object      # @mszip_dist_offsets
	.p2align	1, 0x0
mszip_dist_offsets:
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
	.size	mszip_dist_offsets, 60

	.type	mszip_bitlen_order,@object      # @mszip_bitlen_order
mszip_bitlen_order:
	.ascii	"\020\021\022\000\b\007\t\006\n\005\013\004\f\003\r\002\016\001\017"
	.size	mszip_bitlen_order, 19

	.type	.L.str.23,@object               # @.str.23
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.23:
	.asciz	"zip_read_lens: bad code!: %u\n"
	.size	.L.str.23, 30

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"lzx_read_input: out of input bytes\n"
	.size	.L.str.24, 36

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"PRETREE"
	.size	.L.str.25, 8

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym mszip_flush_window
