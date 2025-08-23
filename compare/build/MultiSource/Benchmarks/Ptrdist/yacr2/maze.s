	.file	"maze.c"
	.text
	.globl	InitAllocMaps                   # -- Begin function InitAllocMaps
	.p2align	5
	.type	InitAllocMaps,@function
InitAllocMaps:                          # @InitAllocMaps
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(channelColumns)
	ld.d	$a0, $a0, %got_pc_lo12(channelColumns)
	pcalau12i	$a1, %got_pc_hi20(channelTracks)
	ld.d	$a1, $a1, %got_pc_lo12(channelTracks)
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	addi.d	$s1, $a0, 1
	addi.d	$a0, $a1, 3
	mul.d	$s0, $a0, $s1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(horzPlane)
	st.d	$s2, $a0, %pc_lo12(horzPlane)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(vertPlane)
	st.d	$fp, $a0, %pc_lo12(vertPlane)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(viaPlane)
	st.d	$s0, $a0, %pc_lo12(viaPlane)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(mazeRoute)
	st.d	$a0, $a1, %pc_lo12(mazeRoute)
	beqz	$s2, .LBB0_5
# %bb.1:                                # %entry
	beqz	$fp, .LBB0_5
# %bb.2:                                # %entry
	beqz	$s0, .LBB0_5
# %bb.3:                                # %entry
	beqz	$a0, .LBB0_5
# %bb.4:                                # %if.end
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB0_5:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 41
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	InitAllocMaps, .Lfunc_end0-InitAllocMaps
                                        # -- End function
	.globl	FreeAllocMaps                   # -- Begin function FreeAllocMaps
	.p2align	5
	.type	FreeAllocMaps,@function
FreeAllocMaps:                          # @FreeAllocMaps
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(horzPlane)
	ld.d	$a0, $a0, %pc_lo12(horzPlane)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(vertPlane)
	ld.d	$a0, $a0, %pc_lo12(vertPlane)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(viaPlane)
	ld.d	$a0, $a0, %pc_lo12(viaPlane)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(mazeRoute)
	ld.d	$a0, $a0, %pc_lo12(mazeRoute)
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end1:
	.size	FreeAllocMaps, .Lfunc_end1-FreeAllocMaps
                                        # -- End function
	.globl	DrawSegment                     # -- Begin function DrawSegment
	.p2align	5
	.type	DrawSegment,@function
DrawSegment:                            # @DrawSegment
# %bb.0:                                # %entry
	bne	$a1, $a3, .LBB2_3
# %bb.1:                                # %if.then
	pcalau12i	$a3, %got_pc_hi20(channelColumns)
	ld.d	$a5, $a3, %got_pc_lo12(channelColumns)
	sltu	$a3, $a2, $a4
	ld.d	$a6, $a5, 0
	masknez	$a7, $a4, $a3
	maskeqz	$a3, $a2, $a3
	or	$a3, $a3, $a7
	mul.d	$a7, $a6, $a3
	add.d	$a6, $a0, $a1
	ldx.b	$t0, $a6, $a7
	ori	$t0, $t0, 8
	stx.b	$t0, $a6, $a7
	sltu	$a7, $a4, $a2
	masknez	$a4, $a4, $a7
	maskeqz	$a2, $a2, $a7
	or	$a2, $a2, $a4
	addi.d	$a4, $a3, 1
	ori	$a3, $zero, 4
	bgeu	$a4, $a2, .LBB2_6
	.p2align	4, , 16
.LBB2_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a5, 0
	mul.d	$a7, $a7, $a4
	ldx.b	$t0, $a6, $a7
	ori	$t0, $t0, 12
	addi.d	$a4, $a4, 1
	stx.b	$t0, $a6, $a7
	bne	$a2, $a4, .LBB2_2
	b	.LBB2_6
.LBB2_3:                                # %if.else
	pcalau12i	$a4, %got_pc_hi20(channelColumns)
	ld.d	$a4, $a4, %got_pc_lo12(channelColumns)
	ld.d	$a5, $a4, 0
	mul.d	$a6, $a5, $a2
	sltu	$a5, $a1, $a3
	masknez	$a7, $a3, $a5
	maskeqz	$a5, $a1, $a5
	or	$a5, $a5, $a7
	add.d	$a6, $a0, $a6
	ldx.b	$a7, $a6, $a5
	ori	$a7, $a7, 2
	stx.b	$a7, $a6, $a5
	sltu	$a6, $a3, $a1
	masknez	$a3, $a3, $a6
	maskeqz	$a1, $a1, $a6
	or	$a1, $a1, $a3
	addi.d	$a6, $a5, 1
	ori	$a3, $zero, 1
	bgeu	$a6, $a1, .LBB2_6
# %bb.4:                                # %for.body64.preheader
	nor	$a5, $a5, $zero
	add.d	$a5, $a5, $a1
	add.d	$a6, $a0, $a6
	ori	$a7, $zero, 3
	.p2align	4, , 16
.LBB2_5:                                # %for.body64
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t0, $a4, 0
	mul.d	$t0, $t0, $a2
	stx.b	$a7, $a6, $t0
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 1
	bnez	$a5, .LBB2_5
.LBB2_6:                                # %if.end
	pcalau12i	$a4, %got_pc_hi20(channelColumns)
	ld.d	$a4, $a4, %got_pc_lo12(channelColumns)
	ld.d	$a4, $a4, 0
	mul.d	$a2, $a4, $a2
	add.d	$a0, $a0, $a2
	ldx.b	$a2, $a0, $a1
	or	$a2, $a2, $a3
	stx.b	$a2, $a0, $a1
	ret
.Lfunc_end2:
	.size	DrawSegment, .Lfunc_end2-DrawSegment
                                        # -- End function
	.globl	DrawVia                         # -- Begin function DrawVia
	.p2align	5
	.type	DrawVia,@function
DrawVia:                                # @DrawVia
# %bb.0:                                # %entry
	pcalau12i	$a2, %got_pc_hi20(channelColumns)
	ld.d	$a2, $a2, %got_pc_lo12(channelColumns)
	pcalau12i	$a3, %pc_hi20(viaPlane)
	ld.d	$a2, $a2, 0
	ld.d	$a3, $a3, %pc_lo12(viaPlane)
	mul.d	$a1, $a2, $a1
	add.d	$a1, $a3, $a1
	ori	$a2, $zero, 1
	stx.b	$a2, $a1, $a0
	ret
.Lfunc_end3:
	.size	DrawVia, .Lfunc_end3-DrawVia
                                        # -- End function
	.globl	HasVia                          # -- Begin function HasVia
	.p2align	5
	.type	HasVia,@function
HasVia:                                 # @HasVia
# %bb.0:                                # %entry
	pcalau12i	$a2, %got_pc_hi20(channelColumns)
	ld.d	$a2, $a2, %got_pc_lo12(channelColumns)
	pcalau12i	$a3, %pc_hi20(viaPlane)
	ld.d	$a2, $a2, 0
	ld.d	$a3, $a3, %pc_lo12(viaPlane)
	mul.d	$a1, $a2, $a1
	add.d	$a1, $a3, $a1
	ldx.b	$a0, $a1, $a0
	ret
.Lfunc_end4:
	.size	HasVia, .Lfunc_end4-HasVia
                                        # -- End function
	.globl	SegmentFree                     # -- Begin function SegmentFree
	.p2align	5
	.type	SegmentFree,@function
SegmentFree:                            # @SegmentFree
# %bb.0:                                # %entry
	bne	$a1, $a3, .LBB5_4
# %bb.1:                                # %if.then
	pcalau12i	$a3, %got_pc_hi20(channelColumns)
	ld.d	$a3, $a3, %got_pc_lo12(channelColumns)
	sltu	$a5, $a2, $a4
	ld.d	$a3, $a3, 0
	masknez	$a6, $a4, $a5
	maskeqz	$a5, $a2, $a5
	or	$a5, $a5, $a6
	mul.d	$a6, $a3, $a5
	add.d	$a6, $a6, $a1
	sltu	$a1, $a4, $a2
	masknez	$a4, $a4, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a4
	add.d	$a0, $a0, $a6
	.p2align	4, , 16
.LBB5_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a2, $a0, 0
	bnez	$a2, .LBB5_8
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB5_2 Depth=1
	addi.d	$a5, $a5, 1
	add.d	$a0, $a0, $a3
	bgeu	$a1, $a5, .LBB5_2
	b	.LBB5_7
.LBB5_4:                                # %if.else
	pcalau12i	$a4, %got_pc_hi20(channelColumns)
	ld.d	$a4, $a4, %got_pc_lo12(channelColumns)
	ld.d	$a4, $a4, 0
	mul.d	$a4, $a4, $a2
	sltu	$a2, $a1, $a3
	masknez	$a5, $a3, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a5
	sltu	$a5, $a3, $a1
	masknez	$a3, $a3, $a5
	maskeqz	$a1, $a1, $a5
	or	$a1, $a1, $a3
	add.d	$a0, $a0, $a4
	.p2align	4, , 16
.LBB5_5:                                # %for.body34
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a3, $a0, $a2
	bnez	$a3, .LBB5_8
# %bb.6:                                # %for.inc39
                                        #   in Loop: Header=BB5_5 Depth=1
	addi.d	$a2, $a2, 1
	bgeu	$a1, $a2, .LBB5_5
.LBB5_7:
	ori	$a0, $zero, 1
	ret
.LBB5_8:
	move	$a0, $zero
	ret
.Lfunc_end5:
	.size	SegmentFree, .Lfunc_end5-SegmentFree
                                        # -- End function
	.globl	PrintChannel                    # -- Begin function PrintChannel
	.p2align	5
	.type	PrintChannel,@function
PrintChannel:                           # @PrintChannel
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
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(channelColumns)
	ld.d	$s2, $a0, %got_pc_lo12(channelColumns)
	ld.d	$a0, $s2, 0
	lu12i.w	$s5, 377487
	beqz	$a0, .LBB6_3
# %bb.1:                                # %for.body.preheader
	ori	$s0, $zero, 1
	ori	$s1, $zero, 8
	pcalau12i	$a0, %got_pc_hi20(TOP)
	ld.d	$s3, $a0, %got_pc_lo12(TOP)
	ori	$a0, $s5, 1475
	lu32i.d	$a0, 377487
	lu52i.d	$s4, $a0, 655
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$fp, $a0, %pc_lo12(.L.str.2)
	.p2align	4, , 16
.LBB6_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	ldx.d	$a0, $a0, $s1
	srli.d	$a0, $a0, 2
	mulh.du	$a0, $a0, $s4
	srli.d	$a1, $a0, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	addi.d	$s0, $s0, 1
	addi.d	$s1, $s1, 8
	bgeu	$a0, $s0, .LBB6_2
.LBB6_3:                                # %for.end
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB6_6
# %bb.4:                                # %for.body6.preheader
	ori	$s0, $zero, 1
	ori	$s1, $zero, 8
	pcalau12i	$a0, %got_pc_hi20(TOP)
	ld.d	$s3, $a0, %got_pc_lo12(TOP)
	ori	$a0, $s5, 1475
	lu32i.d	$a0, 377487
	lu52i.d	$s4, $a0, 655
	ori	$s5, $zero, 100
	ori	$s6, $zero, 103
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$fp, $a0, %pc_lo12(.L.str.2)
	.p2align	4, , 16
.LBB6_5:                                # %for.body6
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	ldx.d	$a0, $a0, $s1
	srli.d	$a1, $a0, 2
	mulh.du	$a1, $a1, $s4
	srli.d	$a1, $a1, 2
	mul.d	$a1, $a1, $s5
	sub.d	$a0, $a0, $a1
	mul.d	$a0, $a0, $s6
	srli.d	$a1, $a0, 10
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	addi.d	$s0, $s0, 1
	addi.d	$s1, $s1, 8
	bgeu	$a0, $s0, .LBB6_5
.LBB6_6:                                # %for.end14
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	lu12i.w	$a1, -209716
	beqz	$a0, .LBB6_9
# %bb.7:                                # %for.body19.preheader
	ori	$s0, $zero, 1
	ori	$s1, $zero, 8
	pcalau12i	$a0, %got_pc_hi20(TOP)
	ld.d	$s3, $a0, %got_pc_lo12(TOP)
	ori	$a0, $a1, 3277
	lu32i.d	$a0, -209716
	lu52i.d	$s4, $a0, -820
	addi.w	$a0, $zero, -2
	lu52i.d	$s5, $a0, 1023
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$fp, $a0, %pc_lo12(.L.str.2)
	.p2align	4, , 16
.LBB6_8:                                # %for.body19
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	ldx.d	$a0, $a0, $s1
	mulh.du	$a1, $a0, $s4
	srli.d	$a2, $a1, 2
	and	$a2, $a2, $s5
	bstrins.d	$a1, $zero, 2, 0
	add.d	$a1, $a1, $a2
	sub.d	$a1, $a0, $a1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	addi.d	$s0, $s0, 1
	addi.d	$s1, $s1, 8
	bgeu	$a0, $s0, .LBB6_8
.LBB6_9:                                # %for.end24
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	pcalau12i	$s5, %pc_hi20(vertPlane)
	beqz	$a0, .LBB6_12
# %bb.10:                               # %for.body29.preheader
	ori	$s0, $zero, 1
	ori	$s1, $zero, 124
	ori	$s3, $zero, 32
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$fp, $a0, %pc_lo12(.L.str.4)
	.p2align	4, , 16
.LBB6_11:                               # %for.body29
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s5, %pc_lo12(vertPlane)
	ldx.bu	$a0, $a0, $s0
	sltui	$a0, $a0, 1
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $s3, $a0
	or	$a1, $a0, $a1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	addi.d	$s0, $s0, 1
	bgeu	$a0, $s0, .LBB6_11
.LBB6_12:                               # %for.end35
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(channelTracks)
	ld.d	$s6, $a0, %got_pc_lo12(channelTracks)
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB6_28
# %bb.13:                               # %for.body40.preheader
	ori	$fp, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s0, $a0, %pc_lo12(.L.str.5)
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$s8, $a0, %pc_lo12(.L.str.6)
	pcalau12i	$s4, %pc_hi20(horzPlane)
	pcalau12i	$a0, %pc_hi20(viaPlane)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB6_15
	.p2align	4, , 16
.LBB6_14:                               # %for.end199
                                        #   in Loop: Header=BB6_15 Depth=1
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $s6, 0
	addi.d	$fp, $fp, 1
	bltu	$a0, $fp, .LBB6_28
.LBB6_15:                               # %for.body40
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_17 Depth 2
                                        #     Child Loop BB6_22 Depth 2
                                        #     Child Loop BB6_27 Depth 2
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB6_18
# %bb.16:                               # %for.body45.preheader
                                        #   in Loop: Header=BB6_15 Depth=1
	ori	$s6, $zero, 1
	.p2align	4, , 16
.LBB6_17:                               # %for.body45
                                        #   Parent Loop BB6_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s5, %pc_lo12(vertPlane)
	mul.d	$a0, $fp, $a0
	add.d	$a0, $a1, $a0
	ldx.bu	$a0, $a0, $s6
	andi	$a0, $a0, 4
	sltui	$a0, $a0, 1
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $s8, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	addi.d	$s6, $s6, 1
	bgeu	$a0, $s6, .LBB6_17
.LBB6_18:                               # %for.end55
                                        #   in Loop: Header=BB6_15 Depth=1
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ori	$s3, $zero, 61
	ori	$s0, $zero, 94
	ori	$s1, $zero, 32
	ori	$s7, $zero, 45
	beqz	$a0, .LBB6_25
# %bb.19:                               # %for.body61.preheader
                                        #   in Loop: Header=BB6_15 Depth=1
	ori	$s6, $zero, 1
	b	.LBB6_22
.LBB6_20:                               # %if.else126
                                        #   in Loop: Header=BB6_22 Depth=2
	ori	$a1, $zero, 124
	masknez	$a1, $a1, $a0
	ori	$s1, $zero, 32
	maskeqz	$a0, $s1, $a0
	or	$a0, $a0, $a1
	ori	$s3, $zero, 61
	ori	$s0, $zero, 94
	ori	$s7, $zero, 45
	.p2align	4, , 16
.LBB6_21:                               # %if.end138
                                        #   in Loop: Header=BB6_22 Depth=2
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.d	$a1, $s4, %pc_lo12(horzPlane)
	ld.d	$a2, $s5, %pc_lo12(vertPlane)
	mul.d	$a0, $fp, $a0
	add.d	$a1, $a1, $a0
	ldx.bu	$a1, $a1, $s6
	add.d	$a0, $a2, $a0
	ldx.bu	$a0, $a0, $s6
	andi	$a1, $a1, 2
	sltui	$a1, $a1, 1
	andi	$a0, $a0, 2
	sltui	$a0, $a0, 1
	masknez	$a2, $s3, $a0
	maskeqz	$a3, $s7, $a0
	or	$a2, $a3, $a2
	masknez	$a3, $s0, $a0
	maskeqz	$a0, $s1, $a0
	or	$a0, $a0, $a3
	masknez	$a2, $a2, $a1
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a2
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	addi.d	$s6, $s6, 1
	bltu	$a0, $s6, .LBB6_25
.LBB6_22:                               # %for.body61
                                        #   Parent Loop BB6_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s4, %pc_lo12(horzPlane)
	ld.d	$a2, $s5, %pc_lo12(vertPlane)
	mul.d	$a0, $fp, $a0
	add.d	$a1, $a1, $a0
	ldx.bu	$a1, $a1, $s6
	add.d	$a0, $a2, $a0
	ldx.bu	$a0, $a0, $s6
	andi	$a1, $a1, 1
	sltui	$a1, $a1, 1
	andi	$a0, $a0, 1
	sltui	$a0, $a0, 1
	masknez	$a2, $s3, $a0
	maskeqz	$a3, $s7, $a0
	or	$a2, $a3, $a2
	masknez	$a3, $s0, $a0
	maskeqz	$a0, $s1, $a0
	or	$a0, $a0, $a3
	masknez	$a2, $a2, $a1
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a2
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(viaPlane)
	mul.d	$a1, $fp, $a0
	add.d	$a0, $a2, $a1
	ldx.bu	$a2, $a0, $s6
	ori	$a0, $zero, 88
	bnez	$a2, .LBB6_21
# %bb.23:                               # %if.else105
                                        #   in Loop: Header=BB6_22 Depth=2
	ld.d	$a0, $s4, %pc_lo12(horzPlane)
	ld.d	$a2, $s5, %pc_lo12(vertPlane)
	add.d	$a0, $a0, $a1
	ldx.bu	$a3, $a0, $s6
	add.d	$a0, $a2, $a1
	ldx.bu	$a0, $a0, $s6
	sltui	$a0, $a0, 1
	beqz	$a3, .LBB6_20
# %bb.24:                               # %land.lhs.true111
                                        #   in Loop: Header=BB6_22 Depth=2
	ori	$a1, $zero, 43
	masknez	$a1, $a1, $a0
	ori	$s7, $zero, 45
	maskeqz	$a0, $s7, $a0
	or	$a0, $a0, $a1
	ori	$s3, $zero, 61
	ori	$s0, $zero, 94
	ori	$s1, $zero, 32
	b	.LBB6_21
	.p2align	4, , 16
.LBB6_25:                               # %for.end179
                                        #   in Loop: Header=BB6_15 Depth=1
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	beqz	$a0, .LBB6_14
# %bb.26:                               # %for.body185.preheader
                                        #   in Loop: Header=BB6_15 Depth=1
	ori	$s6, $zero, 1
	.p2align	4, , 16
.LBB6_27:                               # %for.body185
                                        #   Parent Loop BB6_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s5, %pc_lo12(vertPlane)
	mul.d	$a0, $fp, $a0
	add.d	$a0, $a1, $a0
	ldx.bu	$a0, $a0, $s6
	andi	$a0, $a0, 8
	sltui	$a0, $a0, 1
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $s8, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	addi.d	$s6, $s6, 1
	bgeu	$a0, $s6, .LBB6_27
	b	.LBB6_14
.LBB6_28:                               # %for.end203
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB6_31
# %bb.29:                               # %for.body208.preheader
	ori	$s0, $zero, 1
	ori	$s1, $zero, 124
	ori	$s3, $zero, 32
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$fp, $a1, %pc_lo12(.L.str.4)
	.p2align	4, , 16
.LBB6_30:                               # %for.body208
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s6, 0
	ld.d	$a2, $s5, %pc_lo12(vertPlane)
	addi.d	$a1, $a1, 1
	mul.d	$a0, $a1, $a0
	add.d	$a0, $a2, $a0
	ldx.bu	$a0, $a0, $s0
	sltui	$a0, $a0, 1
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $s3, $a0
	or	$a1, $a0, $a1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	addi.d	$s0, $s0, 1
	bgeu	$a0, $s0, .LBB6_30
.LBB6_31:                               # %for.end219
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	lu12i.w	$s5, 377487
	beqz	$a0, .LBB6_34
# %bb.32:                               # %for.body225.preheader
	ori	$s0, $zero, 1
	ori	$s1, $zero, 8
	pcalau12i	$a0, %got_pc_hi20(BOT)
	ld.d	$s3, $a0, %got_pc_lo12(BOT)
	ori	$a0, $s5, 1475
	lu32i.d	$a0, 377487
	lu52i.d	$s4, $a0, 655
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$fp, $a0, %pc_lo12(.L.str.2)
	.p2align	4, , 16
.LBB6_33:                               # %for.body225
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	ldx.d	$a0, $a0, $s1
	srli.d	$a0, $a0, 2
	mulh.du	$a0, $a0, $s4
	srli.d	$a1, $a0, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	addi.d	$s0, $s0, 1
	addi.d	$s1, $s1, 8
	bgeu	$a0, $s0, .LBB6_33
.LBB6_34:                               # %for.end231
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB6_37
# %bb.35:                               # %for.body237.preheader
	ori	$s0, $zero, 1
	ori	$s1, $zero, 8
	pcalau12i	$a0, %got_pc_hi20(BOT)
	ld.d	$s3, $a0, %got_pc_lo12(BOT)
	ori	$a0, $s5, 1475
	lu32i.d	$a0, 377487
	lu52i.d	$s4, $a0, 655
	ori	$s5, $zero, 100
	ori	$s6, $zero, 103
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$fp, $a0, %pc_lo12(.L.str.2)
	.p2align	4, , 16
.LBB6_36:                               # %for.body237
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	ldx.d	$a0, $a0, $s1
	srli.d	$a1, $a0, 2
	mulh.du	$a1, $a1, $s4
	srli.d	$a1, $a1, 2
	mul.d	$a1, $a1, $s5
	sub.d	$a0, $a0, $a1
	mul.d	$a0, $a0, $s6
	srli.d	$a1, $a0, 10
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	addi.d	$s0, $s0, 1
	addi.d	$s1, $s1, 8
	bgeu	$a0, $s0, .LBB6_36
.LBB6_37:                               # %for.end247
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB6_40
# %bb.38:                               # %for.body253.preheader
	ori	$s0, $zero, 1
	ori	$s1, $zero, 8
	pcalau12i	$a0, %got_pc_hi20(BOT)
	ld.d	$s3, $a0, %got_pc_lo12(BOT)
	lu12i.w	$a0, -209716
	ori	$a0, $a0, 3277
	lu32i.d	$a0, -209716
	lu52i.d	$s4, $a0, -820
	addi.w	$a0, $zero, -2
	lu52i.d	$s5, $a0, 1023
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$fp, $a0, %pc_lo12(.L.str.2)
	.p2align	4, , 16
.LBB6_39:                               # %for.body253
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	ldx.d	$a0, $a0, $s1
	mulh.du	$a1, $a0, $s4
	srli.d	$a2, $a1, 2
	and	$a2, $a2, $s5
	bstrins.d	$a1, $zero, 2, 0
	add.d	$a1, $a1, $a2
	sub.d	$a1, $a0, $a1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	addi.d	$s0, $s0, 1
	addi.d	$s1, $s1, 8
	bgeu	$a0, $s0, .LBB6_39
.LBB6_40:                               # %for.end259
	ori	$a0, $zero, 10
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
	pcaddu18i	$t8, %call36(putchar)
	jr	$t8
.Lfunc_end6:
	.size	PrintChannel, .Lfunc_end6-PrintChannel
                                        # -- End function
	.globl	DrawNets                        # -- Begin function DrawNets
	.p2align	5
	.type	DrawNets,@function
DrawNets:                               # @DrawNets
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
	pcalau12i	$a0, %got_pc_hi20(channelColumns)
	pcalau12i	$a1, %got_pc_hi20(channelTracks)
	ld.d	$s3, $a1, %got_pc_lo12(channelTracks)
	ld.d	$s4, $a0, %got_pc_lo12(channelColumns)
	ld.d	$a0, $s3, 0
	ld.d	$a1, $s4, 0
	pcalau12i	$a2, %pc_hi20(horzPlane)
	ld.d	$s2, $a2, %pc_lo12(horzPlane)
	addi.d	$a0, $a0, 2
	slli.d	$a1, $a1, 32
	ori	$s5, $zero, 0
	lu32i.d	$s5, 1
	add.d	$a1, $a1, $s5
	mul.d	$a0, $a1, $a0
	srai.d	$a2, $a0, 32
	move	$a0, $s2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ld.d	$a1, $s4, 0
	pcalau12i	$a2, %pc_hi20(vertPlane)
	ld.d	$fp, $a2, %pc_lo12(vertPlane)
	addi.d	$a0, $a0, 2
	slli.d	$a1, $a1, 32
	add.d	$a1, $a1, $s5
	mul.d	$a0, $a1, $a0
	srai.d	$a2, $a0, 32
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ld.d	$a1, $s4, 0
	pcalau12i	$a2, %pc_hi20(viaPlane)
	ld.d	$s0, $a2, %pc_lo12(viaPlane)
	addi.d	$a0, $a0, 2
	slli.d	$a1, $a1, 32
	add.d	$a1, $a1, $s5
	mul.d	$a0, $a1, $a0
	srai.d	$a2, $a0, 32
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	pcalau12i	$a1, %pc_hi20(mazeRoute)
	ld.d	$s1, $a1, %pc_lo12(mazeRoute)
	slli.d	$a0, $a0, 32
	add.d	$a0, $a0, $s5
	srai.d	$a2, $a0, 32
	move	$a0, $s1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(channelNets)
	ld.d	$a0, $a0, %got_pc_lo12(channelNets)
	ld.d	$a7, $a0, 0
	beqz	$a7, .LBB7_8
# %bb.1:                                # %for.body.preheader
	pcalau12i	$a1, %got_pc_hi20(FIRST)
	ld.d	$a1, $a1, %got_pc_lo12(FIRST)
	pcalau12i	$a2, %got_pc_hi20(LAST)
	ld.d	$a2, $a2, %got_pc_lo12(LAST)
	ld.d	$t0, $a1, 0
	ld.d	$t1, $a2, 0
	pcalau12i	$a3, %got_pc_hi20(netsAssign)
	ld.d	$a3, $a3, %got_pc_lo12(netsAssign)
	addi.d	$a4, $s2, 1
	ori	$a5, $zero, 1
	ori	$a6, $zero, 3
	b	.LBB7_4
	.p2align	4, , 16
.LBB7_2:                                # %DrawSegment.exit
                                        #   in Loop: Header=BB7_4 Depth=1
	ld.d	$t1, $s4, 0
	mul.d	$a7, $t1, $a7
	add.d	$a7, $s2, $a7
	ldx.b	$t1, $a7, $t0
	ori	$t1, $t1, 1
	stx.b	$t1, $a7, $t0
	ld.d	$t0, $a1, 0
	ld.d	$t1, $a2, 0
	ld.d	$a7, $a0, 0
.LBB7_3:                                # %for.inc
                                        #   in Loop: Header=BB7_4 Depth=1
	addi.d	$a5, $a5, 1
	bltu	$a7, $a5, .LBB7_8
.LBB7_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_7 Depth 2
	slli.d	$t4, $a5, 3
	ldx.d	$t2, $t0, $t4
	ldx.d	$t3, $t1, $t4
	beq	$t2, $t3, .LBB7_3
# %bb.5:                                # %if.else.i
                                        #   in Loop: Header=BB7_4 Depth=1
	ld.d	$a7, $a3, 0
	ldx.d	$a7, $a7, $t4
	ld.d	$t0, $s4, 0
	mul.d	$t0, $t0, $a7
	sltu	$t1, $t2, $t3
	masknez	$t4, $t3, $t1
	maskeqz	$t1, $t2, $t1
	or	$t1, $t1, $t4
	add.d	$t4, $s2, $t0
	ldx.b	$t0, $t4, $t1
	sltu	$t5, $t3, $t2
	masknez	$t3, $t3, $t5
	maskeqz	$t2, $t2, $t5
	ori	$t5, $t0, 2
	or	$t0, $t2, $t3
	addi.d	$t2, $t1, 1
	stx.b	$t5, $t4, $t1
	bgeu	$t2, $t0, .LBB7_2
# %bb.6:                                # %for.body64.i.preheader
                                        #   in Loop: Header=BB7_4 Depth=1
	nor	$t2, $t1, $zero
	add.d	$t2, $t2, $t0
	add.d	$t1, $a4, $t1
	.p2align	4, , 16
.LBB7_7:                                # %for.body64.i
                                        #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t3, $s4, 0
	mul.d	$t3, $t3, $a7
	stx.b	$a6, $t1, $t3
	addi.d	$t2, $t2, -1
	addi.d	$t1, $t1, 1
	bnez	$t2, .LBB7_7
	b	.LBB7_2
.LBB7_8:                                # %for.cond24.preheader
	ld.d	$t0, $s4, 0
	beqz	$t0, .LBB7_38
# %bb.9:                                # %for.body27.preheader
	move	$a0, $zero
	pcalau12i	$a1, %got_pc_hi20(BOT)
	ld.d	$a1, $a1, %got_pc_lo12(BOT)
	pcalau12i	$a2, %got_pc_hi20(TOP)
	ld.d	$a2, $a2, %got_pc_lo12(TOP)
	pcalau12i	$a3, %got_pc_hi20(netsAssign)
	ld.d	$a3, $a3, %got_pc_lo12(netsAssign)
	ori	$a4, $zero, 1
	ori	$a5, $zero, 2
	ori	$a6, $zero, 1
	b	.LBB7_13
	.p2align	4, , 16
.LBB7_10:                               # %DrawSegment.exit125
                                        #   in Loop: Header=BB7_13 Depth=1
	ld.d	$t0, $s4, 0
	mul.d	$t0, $t0, $t1
	add.d	$t0, $fp, $t0
	ldx.b	$t1, $t0, $a6
	ori	$t1, $t1, 4
	stx.b	$t1, $t0, $a6
	ld.d	$t0, $a1, 0
.LBB7_11:                               # %for.inc110
                                        #   in Loop: Header=BB7_13 Depth=1
	ldx.d	$a7, $t0, $a7
	ld.d	$t0, $a3, 0
	slli.d	$a7, $a7, 3
	ldx.d	$a7, $t0, $a7
	ld.d	$t0, $s4, 0
	mul.d	$a7, $t0, $a7
	add.d	$a7, $s0, $a7
	stx.b	$a4, $a7, $a6
.LBB7_12:                               # %for.inc110
                                        #   in Loop: Header=BB7_13 Depth=1
	ld.d	$t0, $s4, 0
	addi.d	$a6, $a6, 1
	bltu	$t0, $a6, .LBB7_39
.LBB7_13:                               # %for.body27
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_31 Depth 2
                                        #     Child Loop BB7_33 Depth 2
                                        #     Child Loop BB7_36 Depth 2
                                        #     Child Loop BB7_19 Depth 2
                                        #     Child Loop BB7_27 Depth 2
                                        #     Child Loop BB7_24 Depth 2
	ld.d	$t1, $a1, 0
	ld.d	$t2, $a2, 0
	slli.d	$a7, $a6, 3
	ldx.d	$t3, $t1, $a7
	ldx.d	$t2, $t2, $a7
	beqz	$t3, .LBB7_21
# %bb.14:                               # %if.else47.thread
                                        #   in Loop: Header=BB7_13 Depth=1
	slli.d	$t1, $t3, 3
	beqz	$t2, .LBB7_26
# %bb.15:                               # %if.else61
                                        #   in Loop: Header=BB7_13 Depth=1
	bne	$t2, $t3, .LBB7_28
# %bb.16:                               # %land.lhs.true66
                                        #   in Loop: Header=BB7_13 Depth=1
	pcalau12i	$t0, %got_pc_hi20(FIRST)
	ld.d	$t0, $t0, %got_pc_lo12(FIRST)
	pcalau12i	$t2, %got_pc_hi20(LAST)
	ld.d	$t2, $t2, %got_pc_lo12(LAST)
	ld.d	$t3, $t0, 0
	ld.d	$t2, $t2, 0
	ld.d	$t0, $s3, 0
	ldx.d	$t3, $t3, $t1
	ldx.b	$t4, $fp, $a6
	ldx.d	$t5, $t2, $t1
	addi.d	$t1, $t0, 1
	add.d	$t2, $fp, $a6
	ori	$t4, $t4, 8
	stx.b	$t4, $fp, $a6
	bne	$t3, $t5, .LBB7_34
# %bb.17:                               # %if.then73
                                        #   in Loop: Header=BB7_13 Depth=1
	bltu	$t1, $a5, .LBB7_20
# %bb.18:                               # %for.body.i154.preheader
                                        #   in Loop: Header=BB7_13 Depth=1
	move	$a7, $zero
	.p2align	4, , 16
.LBB7_19:                               # %for.body.i154
                                        #   Parent Loop BB7_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t3, $s4, 0
	addi.d	$a7, $a7, 1
	mul.d	$t3, $t3, $a7
	ldx.b	$t4, $t2, $t3
	ori	$t4, $t4, 12
	stx.b	$t4, $t2, $t3
	bne	$t0, $a7, .LBB7_19
.LBB7_20:                               # %DrawSegment.exit160
                                        #   in Loop: Header=BB7_13 Depth=1
	ld.d	$a7, $s4, 0
	mul.d	$a7, $a7, $t1
	add.d	$a7, $fp, $a7
	ldx.b	$t0, $a7, $a6
	ori	$t0, $t0, 4
	stx.b	$t0, $a7, $a6
	b	.LBB7_12
	.p2align	4, , 16
.LBB7_21:                               # %land.lhs.true
                                        #   in Loop: Header=BB7_13 Depth=1
	beqz	$t2, .LBB7_12
# %bb.22:                               # %if.then42
                                        #   in Loop: Header=BB7_13 Depth=1
	ld.d	$t0, $a3, 0
	slli.d	$t1, $t2, 3
	ldx.b	$t2, $fp, $a6
	ldx.d	$t0, $t0, $t1
	ori	$t1, $t2, 8
	stx.b	$t1, $fp, $a6
	bltu	$t0, $a5, .LBB7_25
# %bb.23:                               # %for.body.i86.preheader
                                        #   in Loop: Header=BB7_13 Depth=1
	add.d	$t1, $fp, $a6
	ori	$t2, $zero, 1
	.p2align	4, , 16
.LBB7_24:                               # %for.body.i86
                                        #   Parent Loop BB7_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t3, $s4, 0
	mul.d	$t3, $t3, $t2
	ldx.b	$t4, $t1, $t3
	ori	$t4, $t4, 12
	addi.d	$t2, $t2, 1
	stx.b	$t4, $t1, $t3
	bne	$t0, $t2, .LBB7_24
.LBB7_25:                               # %DrawSegment.exit92
                                        #   in Loop: Header=BB7_13 Depth=1
	ld.d	$t1, $s4, 0
	mul.d	$t0, $t1, $t0
	add.d	$t0, $fp, $t0
	ldx.b	$t1, $t0, $a6
	ori	$t1, $t1, 4
	stx.b	$t1, $t0, $a6
	ld.d	$t0, $a2, 0
	b	.LBB7_11
	.p2align	4, , 16
.LBB7_26:                               # %if.then55
                                        #   in Loop: Header=BB7_13 Depth=1
	ld.d	$t2, $a3, 0
	ld.d	$t3, $s3, 0
	ldx.d	$t1, $t2, $t1
	addi.d	$t2, $t3, 1
	sltu	$t3, $t1, $t2
	maskeqz	$t4, $t1, $t3
	masknez	$t3, $t2, $t3
	or	$t3, $t4, $t3
	mul.d	$t4, $t3, $t0
	add.d	$t0, $fp, $a6
	ldx.b	$t5, $t0, $t4
	sltu	$t6, $t2, $t1
	maskeqz	$t1, $t1, $t6
	masknez	$t2, $t2, $t6
	ori	$t5, $t5, 8
	or	$t1, $t1, $t2
	addi.d	$t2, $t3, 1
	stx.b	$t5, $t0, $t4
	bgeu	$t2, $t1, .LBB7_10
	.p2align	4, , 16
.LBB7_27:                               # %for.body.i119
                                        #   Parent Loop BB7_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t3, $s4, 0
	mul.d	$t3, $t3, $t2
	ldx.b	$t4, $t0, $t3
	ori	$t4, $t4, 12
	addi.d	$t2, $t2, 1
	stx.b	$t4, $t0, $t3
	bne	$t1, $t2, .LBB7_27
	b	.LBB7_10
.LBB7_28:                               # %if.else84
                                        #   in Loop: Header=BB7_13 Depth=1
	ld.d	$t0, $a3, 0
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $t0, $t2
	ldx.d	$t0, $t0, $t1
	bgeu	$t2, $t0, .LBB7_37
# %bb.29:                               # %if.then91
                                        #   in Loop: Header=BB7_13 Depth=1
	ldx.b	$t1, $fp, $a6
	add.d	$t0, $fp, $a6
	ori	$t1, $t1, 8
	stx.b	$t1, $fp, $a6
	bltu	$t2, $a5, .LBB7_32
# %bb.30:                               # %for.body.i222.preheader
                                        #   in Loop: Header=BB7_13 Depth=1
	ori	$t1, $zero, 1
	.p2align	4, , 16
.LBB7_31:                               # %for.body.i222
                                        #   Parent Loop BB7_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t3, $s4, 0
	mul.d	$t3, $t3, $t1
	ldx.b	$t4, $t0, $t3
	ori	$t4, $t4, 12
	addi.d	$t1, $t1, 1
	stx.b	$t4, $t0, $t3
	bne	$t2, $t1, .LBB7_31
.LBB7_32:                               # %DrawSegment.exit228
                                        #   in Loop: Header=BB7_13 Depth=1
	ld.d	$t1, $s4, 0
	mul.d	$t1, $t1, $t2
	add.d	$t1, $fp, $t1
	ldx.b	$t2, $t1, $a6
	ori	$t2, $t2, 4
	stx.b	$t2, $t1, $a6
	ld.d	$t1, $a2, 0
	ldx.d	$t1, $t1, $a7
	ld.d	$t2, $a3, 0
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $t2, $t1
	ld.d	$t2, $s4, 0
	mul.d	$t1, $t2, $t1
	add.d	$t1, $s0, $t1
	stx.b	$a4, $t1, $a6
	ld.d	$t1, $a1, 0
	ldx.d	$t1, $t1, $a7
	ld.d	$t2, $a3, 0
	slli.d	$t1, $t1, 3
	ld.d	$t3, $s3, 0
	ldx.d	$t1, $t2, $t1
	addi.d	$t2, $t3, 1
	sltu	$t3, $t1, $t2
	ld.d	$t4, $s4, 0
	maskeqz	$t5, $t1, $t3
	masknez	$t3, $t2, $t3
	or	$t3, $t5, $t3
	mul.d	$t4, $t3, $t4
	add.d	$t4, $fp, $t4
	ldx.b	$t5, $t4, $a6
	sltu	$t6, $t2, $t1
	maskeqz	$t1, $t1, $t6
	masknez	$t2, $t2, $t6
	ori	$t5, $t5, 8
	or	$t1, $t1, $t2
	addi.d	$t2, $t3, 1
	stx.b	$t5, $t4, $a6
	bgeu	$t2, $t1, .LBB7_10
	.p2align	4, , 16
.LBB7_33:                               # %for.body.i257
                                        #   Parent Loop BB7_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t3, $s4, 0
	mul.d	$t3, $t3, $t2
	ldx.b	$t4, $t0, $t3
	ori	$t4, $t4, 12
	addi.d	$t2, $t2, 1
	stx.b	$t4, $t0, $t3
	bne	$t1, $t2, .LBB7_33
	b	.LBB7_10
.LBB7_34:                               # %if.then80
                                        #   in Loop: Header=BB7_13 Depth=1
	bltu	$t1, $a5, .LBB7_10
# %bb.35:                               # %for.body.i187.preheader
                                        #   in Loop: Header=BB7_13 Depth=1
	move	$t3, $zero
	.p2align	4, , 16
.LBB7_36:                               # %for.body.i187
                                        #   Parent Loop BB7_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t4, $s4, 0
	addi.d	$t3, $t3, 1
	mul.d	$t4, $t4, $t3
	ldx.b	$t5, $t2, $t4
	ori	$t5, $t5, 12
	stx.b	$t5, $t2, $t4
	bne	$t0, $t3, .LBB7_36
	b	.LBB7_10
.LBB7_37:                               # %if.else101
                                        #   in Loop: Header=BB7_13 Depth=1
	stx.b	$a4, $s1, $a6
	addi.w	$a0, $a0, 1
	b	.LBB7_12
.LBB7_38:
	move	$a0, $zero
.LBB7_39:                               # %for.end112
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
.Lfunc_end7:
	.size	DrawNets, .Lfunc_end7-DrawNets
                                        # -- End function
	.globl	Maze1                           # -- Begin function Maze1
	.p2align	5
	.type	Maze1,@function
Maze1:                                  # @Maze1
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
	pcalau12i	$a0, %got_pc_hi20(channelColumns)
	ld.d	$s4, $a0, %got_pc_lo12(channelColumns)
	ld.d	$a0, $s4, 0
	beqz	$a0, .LBB8_19
# %bb.1:                                # %for.body.lr.ph
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(mazeRoute)
	ld.d	$s5, $a1, %pc_lo12(mazeRoute)
	ori	$s0, $zero, 1
	pcalau12i	$a1, %got_pc_hi20(netsAssign)
	ld.d	$a1, $a1, %got_pc_lo12(netsAssign)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(TOP)
	ld.d	$s7, $a1, %got_pc_lo12(TOP)
	pcalau12i	$a1, %got_pc_hi20(BOT)
	ld.d	$s8, $a1, %got_pc_lo12(BOT)
	pcalau12i	$a1, %got_pc_hi20(channelTracks)
	ld.d	$a1, $a1, %got_pc_lo12(channelTracks)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ori	$s6, $zero, 8
	ori	$fp, $zero, 2
	addi.w	$s1, $zero, -1
	b	.LBB8_5
.LBB8_2:                                # %land.lhs.true28
                                        #   in Loop: Header=BB8_5 Depth=1
	addi.d	$a3, $a0, 1
	ori	$a6, $zero, 1
	move	$a0, $s0
	move	$a1, $zero
	move	$a2, $s2
	move	$a4, $s3
	move	$a5, $s1
	pcaddu18i	$ra, %call36(Maze1Mech)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB8_15
	.p2align	4, , 16
.LBB8_3:                                # %if.then9
                                        #   in Loop: Header=BB8_5 Depth=1
	stx.b	$zero, $s5, $s0
	ld.d	$a0, $s7, 0
	ldx.d	$a0, $a0, $s6
	pcaddu18i	$ra, %call36(CleanNet)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 0
	ldx.d	$a0, $a0, $s6
	pcaddu18i	$ra, %call36(CleanNet)
	jirl	$ra, $ra, 0
.LBB8_4:                                # %for.inc
                                        #   in Loop: Header=BB8_5 Depth=1
	ld.d	$a0, $s4, 0
	addi.d	$s0, $s0, 1
	addi.d	$s6, $s6, 8
	bltu	$a0, $s0, .LBB8_20
.LBB8_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a1, $s5, $s0
	beqz	$a1, .LBB8_4
# %bb.6:                                # %if.then
                                        #   in Loop: Header=BB8_5 Depth=1
	ld.d	$a1, $s7, 0
	ld.d	$a2, $s8, 0
	ldx.d	$a1, $a1, $s6
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	ldx.d	$a2, $a2, $s6
	slli.d	$a1, $a1, 3
	ldx.d	$s2, $a3, $a1
	slli.d	$a1, $a2, 3
	ldx.d	$s3, $a3, $a1
	bltu	$s0, $fp, .LBB8_10
# %bb.7:                                # %if.then
                                        #   in Loop: Header=BB8_5 Depth=1
	bltu	$s3, $fp, .LBB8_10
# %bb.8:                                # %land.lhs.true7
                                        #   in Loop: Header=BB8_5 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	addi.d	$a1, $a0, 1
	move	$a0, $s0
	move	$a2, $s3
	move	$a3, $zero
	move	$a4, $s2
	move	$a5, $s1
	move	$a6, $s1
	pcaddu18i	$ra, %call36(Maze1Mech)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB8_3
# %bb.9:                                # %land.lhs.true7.if.else_crit_edge
                                        #   in Loop: Header=BB8_5 Depth=1
	ld.d	$a0, $s4, 0
.LBB8_10:                               # %if.else
                                        #   in Loop: Header=BB8_5 Depth=1
	bgeu	$s0, $a0, .LBB8_13
# %bb.11:                               # %if.else
                                        #   in Loop: Header=BB8_5 Depth=1
	bltu	$s3, $fp, .LBB8_13
# %bb.12:                               # %land.lhs.true16
                                        #   in Loop: Header=BB8_5 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	addi.d	$a1, $a0, 1
	ori	$a5, $zero, 1
	move	$a0, $s0
	move	$a2, $s3
	move	$a3, $zero
	move	$a4, $s2
	move	$a6, $s1
	pcaddu18i	$ra, %call36(Maze1Mech)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB8_3
.LBB8_13:                               # %if.else24
                                        #   in Loop: Header=BB8_5 Depth=1
	bltu	$s0, $fp, .LBB8_15
# %bb.14:                               # %land.lhs.true26
                                        #   in Loop: Header=BB8_5 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	bltu	$s2, $a0, .LBB8_2
.LBB8_15:                               # %if.else36
                                        #   in Loop: Header=BB8_5 Depth=1
	ld.d	$a0, $s4, 0
	bgeu	$s0, $a0, .LBB8_18
# %bb.16:                               # %land.lhs.true38
                                        #   in Loop: Header=BB8_5 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	bgeu	$s2, $a0, .LBB8_18
# %bb.17:                               # %land.lhs.true40
                                        #   in Loop: Header=BB8_5 Depth=1
	addi.d	$a3, $a0, 1
	ori	$a5, $zero, 1
	ori	$a6, $zero, 1
	move	$a0, $s0
	move	$a1, $zero
	move	$a2, $s2
	move	$a4, $s3
	pcaddu18i	$ra, %call36(Maze1Mech)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB8_3
	.p2align	4, , 16
.LBB8_18:                               # %if.else48
                                        #   in Loop: Header=BB8_5 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB8_4
.LBB8_19:
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
.LBB8_20:                               # %for.end
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
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
.Lfunc_end8:
	.size	Maze1, .Lfunc_end8-Maze1
                                        # -- End function
	.p2align	5                               # -- Begin function Maze1Mech
	.type	Maze1Mech,@function
Maze1Mech:                              # @Maze1Mech
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$fp, $sp, 8                     # 8-byte Folded Spill
	st.d	$s0, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a7, %got_pc_hi20(channelColumns)
	ld.d	$a7, $a7, %got_pc_lo12(channelColumns)
	pcalau12i	$t0, %pc_hi20(vertPlane)
	ld.d	$t0, $t0, %pc_lo12(vertPlane)
	sltu	$t1, $a1, $a2
	ld.d	$t7, $a7, 0
	masknez	$t2, $a2, $t1
	maskeqz	$t1, $a1, $t1
	or	$t5, $t1, $t2
	mul.d	$t6, $t7, $t5
	sltu	$t1, $a2, $a1
	masknez	$t2, $a2, $t1
	maskeqz	$a1, $a1, $t1
	or	$t3, $a1, $t2
	add.d	$a1, $t0, $t6
	move	$t1, $t5
	.p2align	4, , 16
.LBB9_1:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$t2, $a1, $a0
	bnez	$t2, .LBB9_20
# %bb.2:                                # %for.inc.i
                                        #   in Loop: Header=BB9_1 Depth=1
	addi.d	$t1, $t1, 1
	add.d	$a1, $a1, $t7
	bgeu	$t3, $t1, .LBB9_1
# %bb.3:                                # %land.lhs.true
	add.d	$a6, $a2, $a6
	sltu	$a1, $a3, $a6
	masknez	$t1, $a6, $a1
	maskeqz	$a1, $a3, $a1
	or	$t4, $a1, $t1
	mul.d	$a1, $t7, $t4
	sltu	$t1, $a6, $a3
	masknez	$t2, $a6, $t1
	maskeqz	$a3, $a3, $t1
	or	$t2, $a3, $t2
	add.d	$a1, $t0, $a1
	move	$a3, $t4
	.p2align	4, , 16
.LBB9_4:                                # %for.body.i57
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$t1, $a1, $a0
	bnez	$t1, .LBB9_20
# %bb.5:                                # %for.inc.i62
                                        #   in Loop: Header=BB9_4 Depth=1
	addi.d	$a3, $a3, 1
	add.d	$a1, $a1, $t7
	bgeu	$t2, $a3, .LBB9_4
# %bb.6:                                # %land.lhs.true3
	add.d	$a1, $a0, $a5
	mul.d	$t1, $t7, $a6
	beqz	$a5, .LBB9_10
# %bb.7:                                # %if.else.i
	sltu	$a3, $a0, $a1
	masknez	$t8, $a1, $a3
	maskeqz	$a3, $a0, $a3
	or	$a3, $a3, $t8
	sltu	$t8, $a1, $a0
	masknez	$fp, $a1, $t8
	maskeqz	$t8, $a0, $t8
	or	$t8, $t8, $fp
	add.d	$t1, $t0, $t1
	.p2align	4, , 16
.LBB9_8:                                # %for.body34.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$fp, $t1, $a3
	bnez	$fp, .LBB9_20
# %bb.9:                                # %for.inc39.i
                                        #   in Loop: Header=BB9_8 Depth=1
	addi.d	$a3, $a3, 1
	bgeu	$t8, $a3, .LBB9_8
	b	.LBB9_13
.LBB9_10:                               # %if.then.i
	add.d	$a3, $t1, $a0
	add.d	$a3, $t0, $a3
	move	$t1, $a6
	.p2align	4, , 16
.LBB9_11:                               # %for.body.i72
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$t8, $a3, 0
	bnez	$t8, .LBB9_20
# %bb.12:                               # %for.inc.i77
                                        #   in Loop: Header=BB9_11 Depth=1
	addi.d	$t1, $t1, 1
	add.d	$a3, $a3, $t7
	bgeu	$a6, $t1, .LBB9_11
.LBB9_13:                               # %land.lhs.true12
	sltu	$a3, $a6, $a4
	masknez	$t1, $a4, $a3
	maskeqz	$a3, $a6, $a3
	or	$t1, $a3, $t1
	mul.d	$t8, $t7, $t1
	sltu	$a3, $a4, $a6
	masknez	$fp, $a4, $a3
	maskeqz	$a3, $a6, $a3
	or	$a3, $a3, $fp
	add.d	$t8, $t8, $a5
	add.d	$t8, $t0, $t8
	move	$fp, $t1
	.p2align	4, , 16
.LBB9_14:                               # %for.body.i103
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$s0, $t8, $a0
	bnez	$s0, .LBB9_20
# %bb.15:                               # %for.inc.i108
                                        #   in Loop: Header=BB9_14 Depth=1
	addi.d	$fp, $fp, 1
	add.d	$t8, $t8, $t7
	bgeu	$a3, $fp, .LBB9_14
# %bb.16:                               # %land.lhs.true21
	pcalau12i	$t7, %got_pc_hi20(TOP)
	ld.d	$t7, $t7, %got_pc_lo12(TOP)
	ld.d	$t7, $t7, 0
	slli.d	$t8, $a1, 3
	ldx.d	$t7, $t7, $t8
	beqz	$t7, .LBB9_21
# %bb.17:                               # %land.lhs.true.i
	pcalau12i	$fp, %got_pc_hi20(BOT)
	ld.d	$fp, $fp, %got_pc_lo12(BOT)
	ld.d	$fp, $fp, 0
	ldx.d	$t8, $fp, $t8
	beqz	$t8, .LBB9_21
# %bb.18:                               # %land.lhs.true.i
	beq	$t7, $t8, .LBB9_21
# %bb.19:                               # %HasVCV.exit
	pcalau12i	$fp, %got_pc_hi20(netsAssign)
	ld.d	$fp, $fp, %got_pc_lo12(netsAssign)
	ld.d	$fp, $fp, 0
	slli.d	$t7, $t7, 3
	ldx.d	$t7, $fp, $t7
	slli.d	$t8, $t8, 3
	ldx.d	$t8, $fp, $t8
	bgeu	$t8, $t7, .LBB9_21
.LBB9_20:
	move	$a0, $zero
	ld.d	$s0, $sp, 0                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB9_21:                               # %if.then
	add.d	$t7, $t0, $a0
	ldx.b	$t8, $t7, $t6
	ori	$t8, $t8, 8
	addi.d	$t5, $t5, 1
	stx.b	$t8, $t7, $t6
	bgeu	$t5, $t3, .LBB9_23
	.p2align	4, , 16
.LBB9_22:                               # %for.body.i120
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t6, $a7, 0
	mul.d	$t6, $t6, $t5
	ldx.b	$t8, $t7, $t6
	ori	$t8, $t8, 12
	addi.d	$t5, $t5, 1
	stx.b	$t8, $t7, $t6
	bne	$t3, $t5, .LBB9_22
.LBB9_23:                               # %DrawSegment.exit
	ld.d	$t5, $a7, 0
	mul.d	$t3, $t5, $t3
	add.d	$t3, $t0, $t3
	ldx.b	$t5, $t3, $a0
	ori	$t5, $t5, 4
	stx.b	$t5, $t3, $a0
	pcalau12i	$t3, %pc_hi20(viaPlane)
	ld.d	$t5, $a7, 0
	ld.d	$t3, $t3, %pc_lo12(viaPlane)
	mul.d	$a2, $t5, $a2
	add.d	$a2, $t3, $a2
	ori	$t5, $zero, 1
	stx.b	$t5, $a2, $a0
	ld.d	$a2, $a7, 0
	mul.d	$a2, $a2, $t4
	add.d	$t5, $t0, $a2
	ldx.b	$a2, $t5, $a0
	ori	$t6, $a2, 8
	addi.d	$a2, $t4, 1
	stx.b	$t6, $t5, $a0
	bgeu	$a2, $t2, .LBB9_25
	.p2align	4, , 16
.LBB9_24:                               # %for.body.i135
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t4, $a7, 0
	mul.d	$t4, $t4, $a2
	ldx.b	$t5, $t7, $t4
	ori	$t5, $t5, 12
	addi.d	$a2, $a2, 1
	stx.b	$t5, $t7, $t4
	bne	$t2, $a2, .LBB9_24
.LBB9_25:                               # %DrawSegment.exit141
	ld.d	$a2, $a7, 0
	mul.d	$a2, $a2, $t2
	add.d	$a2, $t0, $a2
	ldx.b	$t2, $a2, $a0
	ori	$t2, $t2, 4
	stx.b	$t2, $a2, $a0
	ld.d	$a2, $a7, 0
	mul.d	$a2, $a2, $a6
	beqz	$a5, .LBB9_29
# %bb.26:                               # %if.else.i143
	sltu	$t2, $a0, $a1
	masknez	$t4, $a1, $t2
	maskeqz	$t2, $a0, $t2
	or	$t4, $t2, $t4
	add.d	$a2, $t0, $a2
	ldx.b	$t2, $a2, $t4
	ori	$t2, $t2, 2
	stx.b	$t2, $a2, $t4
	sltu	$a2, $a1, $a0
	masknez	$t2, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$t2, $a2, $t2
	addi.d	$t5, $t4, 1
	ori	$a2, $zero, 1
	bgeu	$t5, $t2, .LBB9_33
# %bb.27:                               # %for.body64.i.preheader
	nor	$t4, $t4, $zero
	add.d	$t4, $t4, $t2
	add.d	$t5, $t0, $t5
	ori	$t6, $zero, 3
	.p2align	4, , 16
.LBB9_28:                               # %for.body64.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t7, $a7, 0
	mul.d	$t7, $t7, $a6
	stx.b	$t6, $t5, $t7
	addi.d	$t4, $t4, -1
	addi.d	$t5, $t5, 1
	bnez	$t4, .LBB9_28
	b	.LBB9_33
.LBB9_29:                               # %if.then.i146
	add.d	$a2, $t0, $a2
	ldx.b	$t2, $a2, $a0
	ori	$t2, $t2, 8
	stx.b	$t2, $a2, $a0
	addi.w	$t2, $zero, -1
	ori	$a2, $zero, 4
	bne	$a6, $t2, .LBB9_32
# %bb.30:                               # %for.body.i154.preheader
	move	$t4, $zero
	.p2align	4, , 16
.LBB9_31:                               # %for.body.i154
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t5, $a7, 0
	mul.d	$t5, $t5, $t4
	ldx.b	$t6, $t7, $t5
	ori	$t6, $t6, 12
	addi.d	$t4, $t4, 1
	stx.b	$t6, $t7, $t5
	bne	$t4, $t2, .LBB9_31
.LBB9_32:
	move	$t2, $a0
.LBB9_33:                               # %DrawSegment.exit160
	ld.d	$t4, $a7, 0
	mul.d	$a6, $t4, $a6
	add.d	$a6, $t0, $a6
	ldx.b	$t4, $a6, $t2
	or	$a2, $t4, $a2
	stx.b	$a2, $a6, $t2
	ld.d	$a2, $a7, 0
	mul.d	$t2, $a2, $t1
	add.d	$a2, $t0, $a1
	ldx.b	$a6, $a2, $t2
	ori	$t4, $a6, 8
	addi.d	$a6, $t1, 1
	stx.b	$t4, $a2, $t2
	bgeu	$a6, $a3, .LBB9_35
	.p2align	4, , 16
.LBB9_34:                               # %for.body.i187
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t1, $a7, 0
	mul.d	$t1, $t1, $a6
	ldx.b	$t2, $a2, $t1
	ori	$t2, $t2, 12
	addi.d	$a6, $a6, 1
	stx.b	$t2, $a2, $t1
	bne	$a3, $a6, .LBB9_34
.LBB9_35:                               # %DrawSegment.exit193
	ld.d	$a2, $a7, 0
	mul.d	$a2, $a2, $a3
	add.d	$a2, $t0, $a2
	ldx.b	$a3, $a2, $a1
	ori	$a3, $a3, 4
	stx.b	$a3, $a2, $a1
	ld.d	$a2, $a7, 0
	mul.d	$a2, $a2, $a4
	add.d	$a2, $t3, $a2
	ori	$a3, $zero, 1
	stx.b	$a3, $a2, $a1
	pcalau12i	$a2, %pc_hi20(horzPlane)
	ld.d	$a6, $a7, 0
	ld.d	$a2, $a2, %pc_lo12(horzPlane)
	mul.d	$a6, $a6, $a4
	beqz	$a5, .LBB9_39
# %bb.36:                               # %if.else.i197
	sltu	$a5, $a1, $a0
	masknez	$t0, $a0, $a5
	maskeqz	$a5, $a1, $a5
	or	$a5, $a5, $t0
	add.d	$t0, $a2, $a6
	ldx.b	$a6, $t0, $a5
	ori	$t1, $a6, 2
	sltu	$a6, $a0, $a1
	masknez	$a0, $a0, $a6
	maskeqz	$a1, $a1, $a6
	or	$a1, $a1, $a0
	addi.d	$a6, $a5, 1
	stx.b	$t1, $t0, $a5
	bgeu	$a6, $a1, .LBB9_42
# %bb.37:                               # %for.body64.i208.preheader
	nor	$a0, $a5, $zero
	add.d	$a0, $a0, $a1
	add.d	$a5, $a2, $a6
	ori	$a6, $zero, 3
	.p2align	4, , 16
.LBB9_38:                               # %for.body64.i208
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t0, $a7, 0
	mul.d	$t0, $t0, $a4
	stx.b	$a6, $a5, $t0
	addi.d	$a0, $a0, -1
	addi.d	$a5, $a5, 1
	bnez	$a0, .LBB9_38
	b	.LBB9_42
.LBB9_39:                               # %if.then.i214
	add.d	$a0, $a2, $a1
	ldx.b	$a3, $a0, $a6
	ori	$a3, $a3, 8
	stx.b	$a3, $a0, $a6
	addi.w	$a5, $zero, -1
	ori	$a3, $zero, 4
	bne	$a4, $a5, .LBB9_42
# %bb.40:                               # %for.body.i222.preheader
	move	$a6, $zero
	.p2align	4, , 16
.LBB9_41:                               # %for.body.i222
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t0, $a7, 0
	mul.d	$t0, $t0, $a6
	ldx.b	$t1, $a0, $t0
	ori	$t1, $t1, 12
	addi.d	$a6, $a6, 1
	stx.b	$t1, $a0, $t0
	bne	$a6, $a5, .LBB9_41
.LBB9_42:                               # %DrawSegment.exit228
	ld.d	$a0, $a7, 0
	mul.d	$a0, $a0, $a4
	add.d	$a0, $a2, $a0
	ldx.b	$a2, $a0, $a1
	or	$a2, $a2, $a3
	stx.b	$a2, $a0, $a1
	ori	$a0, $zero, 1
	ld.d	$s0, $sp, 0                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end9:
	.size	Maze1Mech, .Lfunc_end9-Maze1Mech
                                        # -- End function
	.p2align	5                               # -- Begin function CleanNet
	.type	CleanNet,@function
CleanNet:                               # @CleanNet
# %bb.0:                                # %entry
	pcalau12i	$a1, %got_pc_hi20(FIRST)
	ld.d	$a1, $a1, %got_pc_lo12(FIRST)
	pcalau12i	$a2, %got_pc_hi20(LAST)
	ld.d	$a2, $a2, %got_pc_lo12(LAST)
	ld.d	$a3, $a1, 0
	ld.d	$a2, $a2, 0
	slli.d	$a1, $a0, 3
	ldx.d	$a4, $a3, $a1
	ldx.d	$a3, $a2, $a1
	bgeu	$a3, $a4, .LBB10_7
.LBB10_1:                               # %for.end
	pcalau12i	$a0, %got_pc_hi20(netsAssign)
	ld.d	$a0, $a0, %got_pc_lo12(netsAssign)
	ld.d	$a2, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(channelColumns)
	ld.d	$a0, $a0, %got_pc_lo12(channelColumns)
	ldx.d	$a1, $a2, $a1
	pcalau12i	$a2, %pc_hi20(horzPlane)
	ld.d	$a5, $a0, 0
	ld.d	$a2, $a2, %pc_lo12(horzPlane)
	mul.d	$a6, $a5, $a1
	add.d	$a5, $a2, $a6
	.p2align	4, , 16
.LBB10_2:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a7, $a5, $a4
	andi	$a7, $a7, 1
	addi.d	$a4, $a4, -1
	bnez	$a7, .LBB10_2
# %bb.3:                                # %while.cond13.preheader
	addi.d	$a4, $a4, 1
	.p2align	4, , 16
.LBB10_4:                               # %while.cond13
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a7, $a5, $a3
	andi	$a7, $a7, 2
	addi.d	$a3, $a3, 1
	bnez	$a7, .LBB10_4
# %bb.5:                                # %for.cond23.preheader
	addi.d	$a3, $a3, -1
	lu12i.w	$t0, 2441
	bgeu	$a3, $a4, .LBB10_12
# %bb.6:
	move	$a5, $zero
	ori	$a6, $t0, 1663
	b	.LBB10_14
.LBB10_7:                               # %for.body.lr.ph
	pcalau12i	$a2, %got_pc_hi20(TOP)
	ld.d	$a2, $a2, %got_pc_lo12(TOP)
	pcalau12i	$a5, %got_pc_hi20(BOT)
	ld.d	$a5, $a5, %got_pc_lo12(BOT)
	ld.d	$a6, $a2, 0
	ld.d	$a5, $a5, 0
	pcalau12i	$a2, %pc_hi20(mazeRoute)
	ld.d	$a2, $a2, %pc_lo12(mazeRoute)
	alsl.d	$a5, $a4, $a5, 3
	alsl.d	$a6, $a4, $a6, 3
	move	$a7, $a4
	b	.LBB10_10
	.p2align	4, , 16
.LBB10_8:                               # %land.lhs.true
                                        #   in Loop: Header=BB10_10 Depth=1
	ldx.bu	$t0, $a2, $a7
	bnez	$t0, .LBB10_20
.LBB10_9:                               # %for.inc
                                        #   in Loop: Header=BB10_10 Depth=1
	addi.d	$a7, $a7, 1
	addi.d	$a5, $a5, 8
	addi.d	$a6, $a6, 8
	bltu	$a3, $a7, .LBB10_1
.LBB10_10:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t0, $a6, 0
	beq	$t0, $a0, .LBB10_8
# %bb.11:                               # %lor.lhs.false
                                        #   in Loop: Header=BB10_10 Depth=1
	ld.d	$t0, $a5, 0
	beq	$t0, $a0, .LBB10_8
	b	.LBB10_9
.LBB10_12:                              # %for.body26.lr.ph
	pcalau12i	$a5, %pc_hi20(viaPlane)
	ld.d	$a7, $a5, %pc_lo12(viaPlane)
	move	$a5, $zero
	add.d	$a7, $a7, $a6
	ori	$a6, $t0, 1663
	move	$t0, $a4
	.p2align	4, , 16
.LBB10_13:                              # %for.body26
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$t1, $a7, $t0
	sltui	$t1, $t1, 1
	sltu	$t2, $t0, $a6
	masknez	$t3, $a6, $t2
	maskeqz	$t2, $t0, $t2
	or	$t2, $t2, $t3
	sltu	$t3, $a5, $t0
	masknez	$t4, $a5, $t3
	maskeqz	$t3, $t0, $t3
	or	$t3, $t3, $t4
	masknez	$t2, $t2, $t1
	maskeqz	$a6, $a6, $t1
	or	$a6, $a6, $t2
	masknez	$t2, $t3, $t1
	maskeqz	$a5, $a5, $t1
	addi.d	$t0, $t0, 1
	or	$a5, $a5, $t2
	bgeu	$a3, $t0, .LBB10_13
.LBB10_14:                              # %for.end40
	bgeu	$a4, $a6, .LBB10_17
	.p2align	4, , 16
.LBB10_15:                              # %for.body47
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a0, 0
	mul.d	$a7, $a7, $a1
	add.d	$a7, $a2, $a7
	stx.b	$zero, $a7, $a4
	addi.d	$a4, $a4, 1
	bltu	$a4, $a6, .LBB10_15
# %bb.16:                               # %for.end53
	ld.d	$a4, $a0, 0
	mul.d	$a4, $a4, $a1
	add.d	$a4, $a2, $a4
	ldx.bu	$a7, $a4, $a6
	andi	$a7, $a7, 254
	stx.b	$a7, $a4, $a6
.LBB10_17:                              # %if.end60
	bgeu	$a5, $a3, .LBB10_20
# %bb.18:                               # %if.then63
	ld.d	$a4, $a0, 0
	mul.d	$a4, $a4, $a1
	add.d	$a4, $a2, $a4
	ldx.bu	$a6, $a4, $a5
	andi	$a6, $a6, 253
	stx.b	$a6, $a4, $a5
	addi.d	$a2, $a2, 1
	.p2align	4, , 16
.LBB10_19:                              # %for.body74
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a0, 0
	addi.d	$a6, $a5, 1
	mul.d	$a4, $a4, $a1
	add.d	$a4, $a2, $a4
	stx.b	$zero, $a4, $a5
	move	$a5, $a6
	bltu	$a6, $a3, .LBB10_19
.LBB10_20:                              # %cleanup
	ret
.Lfunc_end10:
	.size	CleanNet, .Lfunc_end10-CleanNet
                                        # -- End function
	.globl	ExtendOK                        # -- Begin function ExtendOK
	.p2align	5
	.type	ExtendOK,@function
ExtendOK:                               # @ExtendOK
# %bb.0:                                # %entry
	sltu	$a6, $a2, $a4
	masknez	$a7, $a4, $a6
	maskeqz	$a6, $a2, $a6
	or	$a6, $a6, $a7
	sltu	$a7, $a3, $a5
	pcalau12i	$t0, %got_pc_hi20(FIRST)
	ld.d	$t0, $t0, %got_pc_lo12(FIRST)
	pcalau12i	$t1, %got_pc_hi20(LAST)
	ld.d	$t1, $t1, %got_pc_lo12(LAST)
	masknez	$a5, $a5, $a7
	maskeqz	$a3, $a3, $a7
	ld.d	$a7, $t0, 0
	ld.d	$t0, $t1, 0
	or	$a3, $a3, $a5
	slli.d	$a5, $a0, 3
	ldx.d	$a0, $a7, $a5
	ldx.d	$a5, $t0, $a5
	sltu	$a7, $a4, $a2
	masknez	$a4, $a4, $a7
	maskeqz	$a2, $a2, $a7
	or	$a2, $a2, $a4
	bgeu	$a6, $a0, .LBB11_6
# %bb.1:                                # %land.lhs.true21
	pcalau12i	$a4, %got_pc_hi20(channelColumns)
	ld.d	$a4, $a4, %got_pc_lo12(channelColumns)
	ld.d	$a4, $a4, 0
	addi.d	$a7, $a0, -1
	mul.d	$a0, $a4, $a3
	add.d	$t0, $a0, $a6
	bgeu	$a5, $a2, .LBB11_11
# %bb.2:                                # %if.then24
	bne	$a6, $a7, .LBB11_16
# %bb.3:                                # %for.body.i.preheader
	add.d	$a6, $a1, $t0
	move	$a7, $a3
	.p2align	4, , 16
.LBB11_4:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$t0, $a6, 0
	bnez	$t0, .LBB11_34
# %bb.5:                                # %for.inc.i
                                        #   in Loop: Header=BB11_4 Depth=1
	addi.d	$a7, $a7, 1
	add.d	$a6, $a6, $a4
	bgeu	$a3, $a7, .LBB11_4
	b	.LBB11_19
.LBB11_6:                               # %land.lhs.true
	ori	$a0, $zero, 1
	bgeu	$a5, $a2, .LBB11_33
# %bb.7:                                # %if.then38
	pcalau12i	$a4, %got_pc_hi20(channelColumns)
	ld.d	$a4, $a4, %got_pc_lo12(channelColumns)
	ld.d	$a4, $a4, 0
	addi.d	$a5, $a5, 1
	mul.d	$a6, $a4, $a3
	bne	$a5, $a2, .LBB11_27
# %bb.8:                                # %if.then.i116
	add.d	$a2, $a6, $a2
	add.d	$a1, $a1, $a2
	move	$a2, $a3
	.p2align	4, , 16
.LBB11_9:                               # %for.body.i119
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a5, $a1, 0
	bnez	$a5, .LBB11_34
# %bb.10:                               # %for.inc.i124
                                        #   in Loop: Header=BB11_9 Depth=1
	addi.d	$a2, $a2, 1
	add.d	$a1, $a1, $a4
	bgeu	$a3, $a2, .LBB11_9
	b	.LBB11_33
.LBB11_11:                              # %if.then31
	bne	$a6, $a7, .LBB11_23
# %bb.12:                               # %for.body.i90.preheader
	add.d	$a0, $a1, $t0
	move	$a1, $a3
	.p2align	4, , 16
.LBB11_13:                              # %for.body.i90
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a2, $a0, 0
	bnez	$a2, .LBB11_34
# %bb.14:                               # %for.inc.i95
                                        #   in Loop: Header=BB11_13 Depth=1
	addi.d	$a1, $a1, 1
	add.d	$a0, $a0, $a4
	bgeu	$a3, $a1, .LBB11_13
# %bb.15:
	ori	$a0, $zero, 1
	ret
.LBB11_16:                              # %for.body34.i.preheader
	add.d	$t0, $a1, $a0
	.p2align	4, , 16
.LBB11_17:                              # %for.body34.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$t1, $t0, $a6
	bnez	$t1, .LBB11_34
# %bb.18:                               # %for.inc39.i
                                        #   in Loop: Header=BB11_17 Depth=1
	addi.d	$a6, $a6, 1
	bgeu	$a7, $a6, .LBB11_17
.LBB11_19:                              # %land.rhs
	addi.d	$a5, $a5, 1
	bne	$a5, $a2, .LBB11_30
# %bb.20:                               # %if.then.i58
	add.d	$a0, $a0, $a2
	add.d	$a1, $a1, $a0
	move	$a2, $a3
	.p2align	4, , 16
.LBB11_21:                              # %for.body.i61
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $a1, 0
	bnez	$a0, .LBB11_34
# %bb.22:                               # %for.inc.i66
                                        #   in Loop: Header=BB11_21 Depth=1
	addi.d	$a2, $a2, 1
	add.d	$a1, $a1, $a4
	ori	$a0, $zero, 1
	bgeu	$a3, $a2, .LBB11_21
	b	.LBB11_33
.LBB11_23:                              # %for.body34.i77.preheader
	add.d	$a0, $a1, $a0
	.p2align	4, , 16
.LBB11_24:                              # %for.body34.i77
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a1, $a0, $a6
	bnez	$a1, .LBB11_34
# %bb.25:                               # %for.inc39.i83
                                        #   in Loop: Header=BB11_24 Depth=1
	addi.d	$a6, $a6, 1
	bgeu	$a7, $a6, .LBB11_24
# %bb.26:
	ori	$a0, $zero, 1
	ret
.LBB11_27:                              # %if.else.i101
	add.d	$a1, $a1, $a6
	.p2align	4, , 16
.LBB11_28:                              # %for.body34.i106
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a3, $a1, $a5
	bnez	$a3, .LBB11_34
# %bb.29:                               # %for.inc39.i112
                                        #   in Loop: Header=BB11_28 Depth=1
	addi.d	$a5, $a5, 1
	bgeu	$a2, $a5, .LBB11_28
	b	.LBB11_33
.LBB11_30:                              # %if.else.i43
	sltu	$a3, $a5, $a2
	masknez	$a4, $a2, $a3
	maskeqz	$a3, $a5, $a3
	or	$a3, $a3, $a4
	sltu	$a4, $a2, $a5
	masknez	$a2, $a2, $a4
	maskeqz	$a4, $a5, $a4
	or	$a2, $a4, $a2
	add.d	$a1, $a1, $a0
	.p2align	4, , 16
.LBB11_31:                              # %for.body34.i48
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a0, $a1, $a3
	bnez	$a0, .LBB11_34
# %bb.32:                               # %for.inc39.i54
                                        #   in Loop: Header=BB11_31 Depth=1
	addi.d	$a3, $a3, 1
	ori	$a0, $zero, 1
	bgeu	$a2, $a3, .LBB11_31
.LBB11_33:                              # %cleanup
	ret
.LBB11_34:
	move	$a0, $zero
	ret
.Lfunc_end11:
	.size	ExtendOK, .Lfunc_end11-ExtendOK
                                        # -- End function
	.globl	Maze2                           # -- Begin function Maze2
	.p2align	5
	.type	Maze2,@function
Maze2:                                  # @Maze2
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(channelColumns)
	ld.d	$s4, $a0, %got_pc_lo12(channelColumns)
	ld.d	$a7, $s4, 0
	beqz	$a7, .LBB12_19
# %bb.1:                                # %for.body.preheader
	st.d	$zero, $sp, 48                  # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(mazeRoute)
	ld.d	$s5, $a0, %pc_lo12(mazeRoute)
	ori	$s7, $zero, 8
	pcalau12i	$a0, %got_pc_hi20(netsAssign)
	ld.d	$a0, $a0, %got_pc_lo12(netsAssign)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(TOP)
	ld.d	$s6, $a0, %got_pc_lo12(TOP)
	pcalau12i	$a0, %got_pc_hi20(BOT)
	ld.d	$fp, $a0, %got_pc_lo12(BOT)
	pcalau12i	$a0, %got_pc_hi20(channelTracks)
	ld.d	$a0, $a0, %got_pc_lo12(channelTracks)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ori	$s8, $zero, 2
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ori	$s0, $zero, 1
	b	.LBB12_5
.LBB12_2:                               # %land.lhs.true33
                                        #   in Loop: Header=BB12_5 Depth=1
	ld.d	$a0, $fp, 0
	ldx.d	$a0, $a0, $s7
	addi.d	$a4, $a1, 1
	addi.d	$a6, $s1, -1
	addi.d	$a2, $s2, 1
	st.d	$a1, $sp, 16
	st.d	$a2, $sp, 8
	ori	$a7, $zero, 1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.d	$a1, $sp, 0
	move	$a1, $s1
	move	$a2, $zero
	move	$a3, $s2
	move	$a5, $s3
	pcaddu18i	$ra, %call36(Maze2Mech)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB12_15
	.p2align	4, , 16
.LBB12_3:                               # %if.then11
                                        #   in Loop: Header=BB12_5 Depth=1
	stx.b	$zero, $s5, $s1
	ld.d	$a0, $s6, 0
	ldx.d	$a0, $a0, $s7
	pcaddu18i	$ra, %call36(CleanNet)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ldx.d	$a0, $a0, $s7
	pcaddu18i	$ra, %call36(CleanNet)
	jirl	$ra, $ra, 0
.LBB12_4:                               # %for.inc
                                        #   in Loop: Header=BB12_5 Depth=1
	ld.d	$a7, $s4, 0
	addi.d	$s7, $s7, 8
	bltu	$a7, $s0, .LBB12_20
.LBB12_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	move	$s1, $s0
	ldx.bu	$a0, $s5, $s0
	addi.d	$s0, $s0, 1
	beqz	$a0, .LBB12_4
# %bb.6:                                # %if.then
                                        #   in Loop: Header=BB12_5 Depth=1
	ld.d	$a0, $s6, 0
	ld.d	$a1, $fp, 0
	ldx.d	$a0, $a0, $s7
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	ldx.d	$a1, $a1, $s7
	slli.d	$a3, $a0, 3
	ldx.d	$s2, $a2, $a3
	slli.d	$a1, $a1, 3
	ldx.d	$s3, $a2, $a1
	bltu	$s1, $s8, .LBB12_10
# %bb.7:                                # %if.then
                                        #   in Loop: Header=BB12_5 Depth=1
	bltu	$s3, $s8, .LBB12_10
# %bb.8:                                # %land.lhs.true7
                                        #   in Loop: Header=BB12_5 Depth=1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	addi.d	$a2, $a1, 1
	addi.d	$a6, $s1, -1
	addi.d	$a1, $s3, -1
	st.d	$a1, $sp, 16
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 8
	ori	$a7, $zero, 1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.d	$a1, $sp, 0
	move	$a1, $s1
	move	$a3, $s3
	move	$a4, $zero
	move	$a5, $s2
	pcaddu18i	$ra, %call36(Maze2Mech)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB12_3
# %bb.9:                                # %land.lhs.true7.if.else_crit_edge
                                        #   in Loop: Header=BB12_5 Depth=1
	ld.d	$a7, $s4, 0
.LBB12_10:                              # %if.else
                                        #   in Loop: Header=BB12_5 Depth=1
	bgeu	$s1, $a7, .LBB12_13
# %bb.11:                               # %if.else
                                        #   in Loop: Header=BB12_5 Depth=1
	bltu	$s3, $s8, .LBB12_13
# %bb.12:                               # %land.lhs.true18
                                        #   in Loop: Header=BB12_5 Depth=1
	ld.d	$a0, $s6, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ldx.d	$a0, $a0, $s7
	addi.d	$a2, $a1, 1
	addi.d	$a1, $s3, -1
	st.d	$a1, $sp, 16
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 8
	st.d	$a1, $sp, 0
	move	$a1, $s1
	move	$a3, $s3
	move	$a4, $zero
	move	$a5, $s2
	move	$a6, $s0
	pcaddu18i	$ra, %call36(Maze2Mech)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB12_3
.LBB12_13:                              # %if.else29
                                        #   in Loop: Header=BB12_5 Depth=1
	bltu	$s1, $s8, .LBB12_15
# %bb.14:                               # %land.lhs.true31
                                        #   in Loop: Header=BB12_5 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	bltu	$s2, $a1, .LBB12_2
.LBB12_15:                              # %if.else44
                                        #   in Loop: Header=BB12_5 Depth=1
	ld.d	$a7, $s4, 0
	bgeu	$s1, $a7, .LBB12_18
# %bb.16:                               # %land.lhs.true46
                                        #   in Loop: Header=BB12_5 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	bgeu	$s2, $a1, .LBB12_18
# %bb.17:                               # %land.lhs.true48
                                        #   in Loop: Header=BB12_5 Depth=1
	ld.d	$a0, $fp, 0
	ldx.d	$a0, $a0, $s7
	addi.d	$a4, $a1, 1
	addi.d	$a2, $s2, 1
	st.d	$a1, $sp, 16
	st.d	$a2, $sp, 8
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 0
	move	$a1, $s1
	move	$a2, $zero
	move	$a3, $s2
	move	$a5, $s3
	move	$a6, $s0
	pcaddu18i	$ra, %call36(Maze2Mech)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB12_3
	.p2align	4, , 16
.LBB12_18:                              # %if.else59
                                        #   in Loop: Header=BB12_5 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	b	.LBB12_4
.LBB12_19:
	st.d	$zero, $sp, 48                  # 8-byte Folded Spill
.LBB12_20:                              # %for.end
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end12:
	.size	Maze2, .Lfunc_end12-Maze2
                                        # -- End function
	.p2align	5                               # -- Begin function Maze2Mech
	.type	Maze2Mech,@function
Maze2Mech:                              # @Maze2Mech
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
	ld.d	$t4, $sp, 272
	ld.d	$t0, $sp, 264
	addi.d	$t1, $t4, 1
	beq	$t0, $t1, .LBB13_2
# %bb.1:                                # %for.cond4.preheader.lr.ph
	move	$t2, $a5
	move	$s6, $a4
	move	$a4, $a0
	ld.d	$a5, $sp, 256
	add.d	$a0, $a7, $a5
	bne	$a6, $a0, .LBB13_4
.LBB13_2:
	move	$a0, $zero
.LBB13_3:                               # %cleanup
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
.LBB13_4:                               # %for.cond4.preheader.us.preheader
	move	$s1, $a1
	pcalau12i	$a0, %got_pc_hi20(channelColumns)
	ld.d	$a1, $a0, %got_pc_lo12(channelColumns)
	pcalau12i	$a0, %pc_hi20(horzPlane)
	ld.d	$t3, $a0, %pc_lo12(horzPlane)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	ld.d	$s0, $a1, 0
	pcalau12i	$a0, %pc_hi20(vertPlane)
	ld.d	$t5, $a0, %pc_lo12(vertPlane)
	sltu	$a0, $a2, $a3
	masknez	$a1, $a3, $a0
	maskeqz	$a0, $a2, $a0
	or	$t1, $a0, $a1
	mul.d	$t6, $s0, $t1
	sltu	$a0, $a3, $a2
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	masknez	$a1, $a3, $a0
	maskeqz	$a0, $a2, $a0
	or	$s7, $a0, $a1
	pcalau12i	$a0, %got_pc_hi20(TOP)
	ld.d	$a0, $a0, %got_pc_lo12(TOP)
	pcalau12i	$a1, %got_pc_hi20(BOT)
	ld.d	$a1, $a1, %got_pc_lo12(BOT)
	pcalau12i	$a2, %got_pc_hi20(netsAssign)
	ld.d	$a2, $a2, %got_pc_lo12(netsAssign)
	addi.d	$s5, $t2, -1
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a0, $a1, 0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a0, $a2, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	mul.d	$a0, $s0, $t0
	add.d	$fp, $t3, $a0
	st.d	$t6, $sp, 8                     # 8-byte Folded Spill
	add.d	$a3, $t5, $t6
	st.d	$t2, $sp, 120                   # 8-byte Folded Spill
	st.d	$t3, $sp, 112                   # 8-byte Folded Spill
	st.d	$t5, $sp, 104                   # 8-byte Folded Spill
	st.d	$t4, $sp, 96                    # 8-byte Folded Spill
	st.d	$a7, $sp, 88                    # 8-byte Folded Spill
	st.d	$a6, $sp, 80                    # 8-byte Folded Spill
	st.d	$a4, $sp, 72                    # 8-byte Folded Spill
	st.d	$a5, $sp, 64                    # 8-byte Folded Spill
	st.d	$t1, $sp, 56                    # 8-byte Folded Spill
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	b	.LBB13_6
	.p2align	4, , 16
.LBB13_5:                               # %for.cond4.for.inc25_crit_edge.us
                                        #   in Loop: Header=BB13_6 Depth=1
	addi.d	$t0, $s8, 1
	add.d	$fp, $fp, $s0
	beq	$s8, $t4, .LBB13_2
.LBB13_6:                               # %for.cond4.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_7 Depth 2
                                        #       Child Loop BB13_11 Depth 3
                                        #       Child Loop BB13_8 Depth 3
                                        #       Child Loop BB13_14 Depth 3
                                        #       Child Loop BB13_17 Depth 3
                                        #       Child Loop BB13_20 Depth 3
	move	$s8, $t0
	sltu	$a0, $t0, $s5
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $t0, $a0
	or	$t6, $a0, $a1
	mul.d	$a0, $s0, $t6
	add.d	$t7, $t5, $a0
	sltu	$a0, $s6, $t0
	masknez	$a1, $t0, $a0
	maskeqz	$a0, $s6, $a0
	or	$t0, $a0, $a1
	mul.d	$a0, $s0, $t0
	add.d	$t8, $t5, $a0
	sltu	$a0, $s8, $s6
	masknez	$a1, $s8, $a0
	maskeqz	$a0, $s6, $a0
	or	$s3, $a0, $a1
	sltu	$a0, $s5, $s8
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s8, $a0
	or	$s4, $a0, $a1
	move	$a0, $a6
.LBB13_7:                               # %for.body7.us
                                        #   Parent Loop BB13_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_11 Depth 3
                                        #       Child Loop BB13_8 Depth 3
                                        #       Child Loop BB13_14 Depth 3
                                        #       Child Loop BB13_17 Depth 3
                                        #       Child Loop BB13_20 Depth 3
	move	$s2, $a0
	move	$a0, $s1
	move	$a1, $s8
	bne	$s1, $s2, .LBB13_10
	.p2align	4, , 16
.LBB13_8:                               # %for.body.i.us
                                        #   Parent Loop BB13_6 Depth=1
                                        #     Parent Loop BB13_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.bu	$a2, $fp, $a0
	bnez	$a2, .LBB13_5
# %bb.9:                                # %for.inc.i.us
                                        #   in Loop: Header=BB13_8 Depth=3
	addi.d	$a1, $a1, 1
	add.d	$a0, $a0, $s0
	bgeu	$s8, $a1, .LBB13_8
	b	.LBB13_13
	.p2align	4, , 16
.LBB13_10:                              # %if.else.i.us
                                        #   in Loop: Header=BB13_7 Depth=2
	sltu	$a0, $s1, $s2
	masknez	$a1, $s2, $a0
	maskeqz	$a0, $s1, $a0
	or	$a0, $a0, $a1
	sltu	$a1, $s2, $s1
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $s1, $a1
	or	$a1, $a1, $a2
	.p2align	4, , 16
.LBB13_11:                              # %for.body34.i.us
                                        #   Parent Loop BB13_6 Depth=1
                                        #     Parent Loop BB13_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.bu	$a2, $fp, $a0
	bnez	$a2, .LBB13_5
# %bb.12:                               # %for.inc39.i.us
                                        #   in Loop: Header=BB13_11 Depth=3
	addi.d	$a0, $a0, 1
	bgeu	$a1, $a0, .LBB13_11
.LBB13_13:                              # %for.body.i70.us.preheader
                                        #   in Loop: Header=BB13_7 Depth=2
	move	$a0, $a3
	move	$a1, $t1
	.p2align	4, , 16
.LBB13_14:                              # %for.body.i70.us
                                        #   Parent Loop BB13_6 Depth=1
                                        #     Parent Loop BB13_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.bu	$a2, $a0, $s1
	bnez	$a2, .LBB13_27
# %bb.15:                               # %for.inc.i75.us
                                        #   in Loop: Header=BB13_14 Depth=3
	addi.d	$a1, $a1, 1
	add.d	$a0, $a0, $s0
	bgeu	$s7, $a1, .LBB13_14
# %bb.16:                               # %for.body.i101.us.preheader
                                        #   in Loop: Header=BB13_7 Depth=2
	move	$a0, $t8
	move	$a1, $t0
	.p2align	4, , 16
.LBB13_17:                              # %for.body.i101.us
                                        #   Parent Loop BB13_6 Depth=1
                                        #     Parent Loop BB13_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.bu	$a2, $a0, $s1
	bnez	$a2, .LBB13_27
# %bb.18:                               # %for.inc.i106.us
                                        #   in Loop: Header=BB13_17 Depth=3
	addi.d	$a1, $a1, 1
	add.d	$a0, $a0, $s0
	bgeu	$s3, $a1, .LBB13_17
# %bb.19:                               # %land.lhs.true14.us
                                        #   in Loop: Header=BB13_7 Depth=2
	move	$a0, $t7
	move	$a1, $t6
	.p2align	4, , 16
.LBB13_20:                              # %for.body.i132.us
                                        #   Parent Loop BB13_6 Depth=1
                                        #     Parent Loop BB13_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.bu	$a2, $a0, $s2
	bnez	$a2, .LBB13_27
# %bb.21:                               # %for.inc.i137.us
                                        #   in Loop: Header=BB13_20 Depth=3
	addi.d	$a1, $a1, 1
	add.d	$a0, $a0, $s0
	bgeu	$s4, $a1, .LBB13_20
# %bb.22:                               # %land.lhs.true17.us
                                        #   in Loop: Header=BB13_7 Depth=2
	slli.d	$a1, $s2, 3
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	beqz	$a0, .LBB13_26
# %bb.23:                               # %land.lhs.true.i.us
                                        #   in Loop: Header=BB13_7 Depth=2
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ldx.d	$a1, $a2, $a1
	beqz	$a1, .LBB13_26
# %bb.24:                               # %land.lhs.true.i.us
                                        #   in Loop: Header=BB13_7 Depth=2
	beq	$a0, $a1, .LBB13_26
# %bb.25:                               # %HasVCV.exit.us
                                        #   in Loop: Header=BB13_7 Depth=2
	slli.d	$a0, $a0, 3
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ldx.d	$a0, $a2, $a0
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	bltu	$a1, $a0, .LBB13_27
.LBB13_26:                              # %land.lhs.true20.us
                                        #   in Loop: Header=BB13_7 Depth=2
	move	$a0, $a4
	move	$a1, $t3
	move	$a2, $s2
	move	$a3, $t2
	move	$a4, $s1
	move	$a5, $t2
	st.d	$t0, $sp, 160                   # 8-byte Folded Spill
	st.d	$t6, $sp, 152                   # 8-byte Folded Spill
	st.d	$t7, $sp, 144                   # 8-byte Folded Spill
	st.d	$t8, $sp, 136                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(ExtendOK)
	jirl	$ra, $ra, 0
	ld.d	$t8, $sp, 136                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 120                   # 8-byte Folded Reload
	bnez	$a0, .LBB13_28
	.p2align	4, , 16
.LBB13_27:                              # %for.inc.us
                                        #   in Loop: Header=BB13_7 Depth=2
	add.d	$a0, $s2, $a5
	bne	$s2, $a7, .LBB13_7
	b	.LBB13_5
.LBB13_28:                              # %if.then
	add.d	$a1, $t5, $s1
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	ldx.b	$a0, $a1, $a3
	ori	$a2, $a0, 8
	addi.d	$a0, $t1, 1
	stx.b	$a2, $a1, $a3
	ld.d	$t4, $sp, 24                    # 8-byte Folded Reload
	bgeu	$a0, $s7, .LBB13_30
	.p2align	4, , 16
.LBB13_29:                              # %for.body.i149
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $t4, 0
	mul.d	$a2, $a2, $a0
	ldx.b	$a3, $a1, $a2
	ori	$a3, $a3, 12
	addi.d	$a0, $a0, 1
	stx.b	$a3, $a1, $a2
	bne	$s7, $a0, .LBB13_29
.LBB13_30:                              # %DrawSegment.exit
	ld.d	$a0, $t4, 0
	mul.d	$a0, $a0, $s7
	add.d	$a0, $t5, $a0
	ldx.b	$a2, $a0, $s1
	ori	$a2, $a2, 4
	stx.b	$a2, $a0, $s1
	pcalau12i	$a0, %pc_hi20(viaPlane)
	ld.d	$a2, $t4, 0
	ld.d	$a0, $a0, %pc_lo12(viaPlane)
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	mul.d	$a2, $a2, $a3
	add.d	$a3, $a0, $a2
	ori	$a2, $zero, 1
	stx.b	$a2, $a3, $s1
	ld.d	$a3, $t4, 0
	mul.d	$a3, $a3, $t0
	add.d	$a4, $t5, $a3
	ldx.b	$a3, $a4, $s1
	ori	$a5, $a3, 8
	addi.d	$a3, $t0, 1
	stx.b	$a5, $a4, $s1
	bgeu	$a3, $s3, .LBB13_32
	.p2align	4, , 16
.LBB13_31:                              # %for.body.i164
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $t4, 0
	mul.d	$a4, $a4, $a3
	ldx.b	$a5, $a1, $a4
	ori	$a5, $a5, 12
	addi.d	$a3, $a3, 1
	stx.b	$a5, $a1, $a4
	bne	$s3, $a3, .LBB13_31
.LBB13_32:                              # %DrawSegment.exit170
	ld.d	$a1, $t4, 0
	mul.d	$a1, $a1, $s3
	add.d	$a1, $t5, $a1
	ldx.b	$a3, $a1, $s1
	ori	$a3, $a3, 4
	stx.b	$a3, $a1, $s1
	ld.d	$a1, $t4, 0
	mul.d	$a1, $a1, $s8
	add.d	$a1, $a0, $a1
	stx.b	$a2, $a1, $s1
	ld.d	$a1, $t4, 0
	mul.d	$a2, $a1, $s8
	add.d	$a1, $t3, $s1
	bne	$s1, $s2, .LBB13_37
# %bb.33:                               # %if.then.i177
	ldx.b	$a3, $a1, $a2
	ori	$a3, $a3, 8
	stx.b	$a3, $a1, $a2
	addi.w	$a3, $zero, -1
	ori	$a2, $zero, 4
	bne	$s8, $a3, .LBB13_36
# %bb.34:                               # %for.body.i185.preheader
	move	$a4, $zero
.LBB13_35:                              # %for.body.i185
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $t4, 0
	mul.d	$a5, $a5, $a4
	ldx.b	$a6, $a1, $a5
	ori	$a6, $a6, 12
	addi.d	$a4, $a4, 1
	stx.b	$a6, $a1, $a5
	bne	$a4, $a3, .LBB13_35
.LBB13_36:
	move	$a3, $s1
	b	.LBB13_40
.LBB13_37:                              # %if.else.i174
	sltu	$a3, $s1, $s2
	masknez	$a4, $s2, $a3
	maskeqz	$a3, $s1, $a3
	or	$a5, $a3, $a4
	add.d	$a2, $t3, $a2
	ldx.b	$a3, $a2, $a5
	ori	$a3, $a3, 2
	stx.b	$a3, $a2, $a5
	sltu	$a2, $s2, $s1
	masknez	$a4, $s2, $a2
	maskeqz	$a6, $s1, $a2
	or	$a3, $a6, $a4
	addi.d	$a7, $a5, 1
	ori	$a2, $zero, 1
	bgeu	$a7, $a3, .LBB13_40
# %bb.38:                               # %for.body64.i.preheader
	or	$a4, $a6, $a4
	nor	$a6, $a5, $zero
	add.d	$a4, $a6, $a4
	add.d	$a5, $t3, $a5
	addi.d	$a5, $a5, 1
	ori	$a6, $zero, 3
.LBB13_39:                              # %for.body64.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $t4, 0
	mul.d	$a7, $s8, $a7
	stx.b	$a6, $a5, $a7
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 1
	bnez	$a4, .LBB13_39
.LBB13_40:                              # %DrawSegment.exit191
	ld.d	$a4, $t4, 0
	mul.d	$a4, $a4, $s8
	add.d	$a4, $t3, $a4
	ldx.b	$a5, $a4, $a3
	or	$a2, $a5, $a2
	stx.b	$a2, $a4, $a3
	ld.d	$a2, $t4, 0
	mul.d	$a2, $a2, $s8
	add.d	$a3, $a0, $a2
	ori	$a2, $zero, 1
	stx.b	$a2, $a3, $s2
	sltu	$a5, $s8, $t2
	ld.d	$a3, $t4, 0
	masknez	$a4, $t2, $a5
	maskeqz	$a6, $s8, $a5
	or	$a6, $a6, $a4
	mul.d	$a7, $a3, $a6
	add.d	$a3, $t5, $s2
	ldx.b	$t0, $a3, $a7
	sltu	$a4, $t2, $s8
	masknez	$t1, $t2, $a4
	maskeqz	$a4, $s8, $a4
	or	$a4, $a4, $t1
	ori	$t0, $t0, 8
	addi.d	$a6, $a6, 1
	stx.b	$t0, $a3, $a7
	bgeu	$a6, $a4, .LBB13_43
# %bb.41:                               # %for.body.i220.preheader
	masknez	$a7, $s8, $a5
	maskeqz	$a5, $t2, $a5
	or	$a5, $a5, $a7
	.p2align	4, , 16
.LBB13_42:                              # %for.body.i220
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $t4, 0
	mul.d	$a7, $a7, $a6
	ldx.b	$t0, $a3, $a7
	ori	$t0, $t0, 12
	addi.d	$a6, $a6, 1
	stx.b	$t0, $a3, $a7
	bne	$a5, $a6, .LBB13_42
.LBB13_43:                              # %DrawSegment.exit226
	ld.d	$a3, $t4, 0
	mul.d	$a3, $a3, $a4
	add.d	$a3, $t5, $a3
	ldx.b	$a4, $a3, $s2
	ori	$a4, $a4, 4
	stx.b	$a4, $a3, $s2
	ld.d	$a3, $t4, 0
	mul.d	$a3, $a3, $t2
	add.d	$a0, $a0, $a3
	stx.b	$a2, $a0, $s2
	ld.d	$a0, $t4, 0
	mul.d	$a0, $a0, $t2
	bne	$s1, $s2, .LBB13_48
# %bb.44:                               # %if.then.i247
	ldx.b	$a2, $a1, $a0
	ori	$a2, $a2, 8
	stx.b	$a2, $a1, $a0
	addi.w	$a2, $zero, -1
	ori	$a0, $zero, 4
	bne	$t2, $a2, .LBB13_47
# %bb.45:                               # %for.body.i255.preheader
	move	$a3, $zero
.LBB13_46:                              # %for.body.i255
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $t4, 0
	mul.d	$a4, $a4, $a3
	ldx.b	$a5, $a1, $a4
	ori	$a5, $a5, 12
	addi.d	$a3, $a3, 1
	stx.b	$a5, $a1, $a4
	bne	$a3, $a2, .LBB13_46
.LBB13_47:
	move	$a1, $s1
	b	.LBB13_51
.LBB13_48:                              # %if.else.i230
	sltu	$a2, $s2, $s1
	masknez	$a1, $s1, $a2
	maskeqz	$a3, $s2, $a2
	or	$a4, $a3, $a1
	add.d	$a0, $t3, $a0
	ldx.b	$a1, $a0, $a4
	ori	$a1, $a1, 2
	stx.b	$a1, $a0, $a4
	sltu	$a3, $s1, $s2
	masknez	$a0, $s1, $a3
	maskeqz	$a1, $s2, $a3
	or	$a1, $a1, $a0
	addi.d	$a4, $a4, 1
	ori	$a0, $zero, 1
	bgeu	$a4, $a1, .LBB13_51
# %bb.49:                               # %for.body64.i241.preheader
	masknez	$a4, $s2, $a2
	maskeqz	$a2, $s1, $a2
	or	$a2, $a2, $a4
	masknez	$a4, $s2, $a3
	maskeqz	$a3, $s1, $a3
	or	$a3, $a3, $a4
	nor	$a4, $a3, $zero
	add.d	$a2, $a4, $a2
	add.d	$a3, $t3, $a3
	addi.d	$a3, $a3, 1
	ori	$a4, $zero, 3
.LBB13_50:                              # %for.body64.i241
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $t4, 0
	mul.d	$a5, $a5, $t2
	stx.b	$a4, $a3, $a5
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 1
	bnez	$a2, .LBB13_50
.LBB13_51:                              # %DrawSegment.exit261
	ld.d	$a2, $t4, 0
	mul.d	$a2, $a2, $t2
	add.d	$a2, $t3, $a2
	ldx.b	$a3, $a2, $a1
	or	$a0, $a3, $a0
	stx.b	$a0, $a2, $a1
	ori	$a0, $zero, 1
	b	.LBB13_3
.Lfunc_end13:
	.size	Maze2Mech, .Lfunc_end13-Maze2Mech
                                        # -- End function
	.globl	FindFreeHorzSeg                 # -- Begin function FindFreeHorzSeg
	.p2align	5
	.type	FindFreeHorzSeg,@function
FindFreeHorzSeg:                        # @FindFreeHorzSeg
# %bb.0:                                # %entry
	pcalau12i	$a4, %pc_hi20(horzPlane)
	beqz	$a0, .LBB14_6
# %bb.1:                                # %for.body.lr.ph
	pcalau12i	$a5, %got_pc_hi20(channelColumns)
	ld.d	$a5, $a5, %got_pc_lo12(channelColumns)
	ld.d	$a5, $a5, 0
	ld.d	$a6, $a4, %pc_lo12(horzPlane)
	mul.d	$a5, $a5, $a1
	add.d	$a6, $a6, $a5
	move	$a5, $a0
	.p2align	4, , 16
.LBB14_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a7, $a6, $a5
	bnez	$a7, .LBB14_5
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB14_2 Depth=1
	addi.d	$a5, $a5, -1
	bnez	$a5, .LBB14_2
# %bb.4:
	move	$a5, $zero
.LBB14_5:                               # %for.end.loopexit
	addi.d	$a5, $a5, 1
	b	.LBB14_7
.LBB14_6:
	ori	$a5, $zero, 1
.LBB14_7:                               # %for.end
	pcalau12i	$a6, %got_pc_hi20(channelColumns)
	ld.d	$a6, $a6, %got_pc_lo12(channelColumns)
	st.d	$a5, $a2, 0
	ld.d	$a2, $a6, 0
	bltu	$a2, $a0, .LBB14_11
# %bb.8:                                # %for.body4.lr.ph
	ld.d	$a4, $a4, %pc_lo12(horzPlane)
	mul.d	$a1, $a2, $a1
	add.d	$a1, $a4, $a1
	.p2align	4, , 16
.LBB14_9:                               # %for.body4
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a4, $a1, $a0
	bnez	$a4, .LBB14_11
# %bb.10:                               # %for.inc11
                                        #   in Loop: Header=BB14_9 Depth=1
	addi.d	$a0, $a0, 1
	bgeu	$a2, $a0, .LBB14_9
.LBB14_11:                              # %for.end12
	addi.d	$a0, $a0, -1
	st.d	$a0, $a3, 0
	ret
.Lfunc_end14:
	.size	FindFreeHorzSeg, .Lfunc_end14-FindFreeHorzSeg
                                        # -- End function
	.globl	Maze3                           # -- Begin function Maze3
	.p2align	5
	.type	Maze3,@function
Maze3:                                  # @Maze3
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -480
	st.d	$ra, $sp, 472                   # 8-byte Folded Spill
	st.d	$fp, $sp, 464                   # 8-byte Folded Spill
	st.d	$s0, $sp, 456                   # 8-byte Folded Spill
	st.d	$s1, $sp, 448                   # 8-byte Folded Spill
	st.d	$s2, $sp, 440                   # 8-byte Folded Spill
	st.d	$s3, $sp, 432                   # 8-byte Folded Spill
	st.d	$s4, $sp, 424                   # 8-byte Folded Spill
	st.d	$s5, $sp, 416                   # 8-byte Folded Spill
	st.d	$s6, $sp, 408                   # 8-byte Folded Spill
	st.d	$s7, $sp, 400                   # 8-byte Folded Spill
	st.d	$s8, $sp, 392                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(channelColumns)
	ld.d	$s2, $a0, %got_pc_lo12(channelColumns)
	ld.d	$a4, $s2, 0
	beqz	$a4, .LBB15_148
# %bb.1:                                # %for.body.lr.ph
	st.d	$zero, $sp, 80                  # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(mazeRoute)
	ld.d	$s4, $a0, %pc_lo12(mazeRoute)
	pcalau12i	$a0, %pc_hi20(horzPlane)
	ld.d	$s5, $a0, %pc_lo12(horzPlane)
	pcalau12i	$a0, %pc_hi20(vertPlane)
	ld.d	$a0, $a0, %pc_lo12(vertPlane)
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(viaPlane)
	ld.d	$s6, $a0, %pc_lo12(viaPlane)
	addi.d	$a0, $s5, 1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(netsAssign)
	ld.d	$a0, $a0, %got_pc_lo12(netsAssign)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(TOP)
	ld.d	$a0, $a0, %got_pc_lo12(TOP)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(BOT)
	ld.d	$a0, $a0, %got_pc_lo12(BOT)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(channelTracks)
	ld.d	$a0, $a0, %got_pc_lo12(channelTracks)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(FIRST)
	ld.d	$a0, $a0, %got_pc_lo12(FIRST)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(LAST)
	ld.d	$a0, $a0, %got_pc_lo12(LAST)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$fp, $zero, 1
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 56                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	b	.LBB15_4
	.p2align	4, , 16
.LBB15_2:                               # %if.else
                                        #   in Loop: Header=BB15_4 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
.LBB15_3:                               # %for.inc
                                        #   in Loop: Header=BB15_4 Depth=1
	addi.d	$fp, $fp, 1
	bltu	$a4, $fp, .LBB15_149
.LBB15_4:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_8 Depth 2
                                        #       Child Loop BB15_10 Depth 3
                                        #       Child Loop BB15_16 Depth 3
                                        #       Child Loop BB15_22 Depth 3
                                        #         Child Loop BB15_24 Depth 4
                                        #         Child Loop BB15_30 Depth 4
                                        #         Child Loop BB15_36 Depth 4
                                        #           Child Loop BB15_39 Depth 5
                                        #             Child Loop BB15_42 Depth 6
                                        #             Child Loop BB15_45 Depth 6
                                        #             Child Loop BB15_48 Depth 6
                                        #             Child Loop BB15_71 Depth 6
                                        #             Child Loop BB15_69 Depth 6
                                        #             Child Loop BB15_77 Depth 6
                                        #             Child Loop BB15_75 Depth 6
                                        #             Child Loop BB15_60 Depth 6
                                        #             Child Loop BB15_58 Depth 6
                                        #             Child Loop BB15_80 Depth 6
                                        #             Child Loop BB15_64 Depth 6
                                        #             Child Loop BB15_83 Depth 6
                                        #             Child Loop BB15_86 Depth 6
                                        #             Child Loop BB15_89 Depth 6
                                        #             Child Loop BB15_112 Depth 6
                                        #             Child Loop BB15_110 Depth 6
                                        #             Child Loop BB15_118 Depth 6
                                        #             Child Loop BB15_116 Depth 6
                                        #             Child Loop BB15_101 Depth 6
                                        #             Child Loop BB15_99 Depth 6
                                        #             Child Loop BB15_121 Depth 6
                                        #             Child Loop BB15_105 Depth 6
                                        #     Child Loop BB15_125 Depth 2
                                        #     Child Loop BB15_128 Depth 2
                                        #     Child Loop BB15_131 Depth 2
                                        #     Child Loop BB15_134 Depth 2
                                        #     Child Loop BB15_137 Depth 2
                                        #     Child Loop BB15_140 Depth 2
                                        #     Child Loop BB15_143 Depth 2
                                        #     Child Loop BB15_146 Depth 2
	ldx.bu	$a0, $s4, $fp
	beqz	$a0, .LBB15_3
# %bb.5:                                # %if.then
                                        #   in Loop: Header=BB15_4 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a5, $a0, 0
	slli.d	$a1, $fp, 3
	st.d	$a2, $sp, 272                   # 8-byte Folded Spill
	ldx.d	$a3, $a2, $a1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	st.d	$a5, $sp, 264                   # 8-byte Folded Spill
	ldx.d	$a0, $a5, $a1
	slli.d	$a1, $a3, 3
	ldx.d	$s3, $a2, $a1
	slli.d	$a1, $a0, 3
	st.d	$a2, $sp, 200                   # 8-byte Folded Spill
	ldx.d	$a1, $a2, $a1
	addi.d	$a2, $s3, -1
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	addi.d	$a1, $a1, 1
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	bgeu	$a1, $a2, .LBB15_2
# %bb.6:                                # %for.body.lr.ph.i
                                        #   in Loop: Header=BB15_4 Depth=1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a5, $a5, 0
	ld.d	$a6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a6, $a6, 0
	addi.d	$a2, $a2, 1
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	addi.d	$a2, $s3, 1
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	alsl.d	$a2, $a3, $a5, 3
	st.d	$a2, $sp, 320                   # 8-byte Folded Spill
	alsl.d	$a2, $a3, $a6, 3
	st.d	$a2, $sp, 312                   # 8-byte Folded Spill
	mul.d	$a2, $s3, $a4
	ld.d	$a7, $sp, 208                   # 8-byte Folded Reload
	addi.d	$a3, $a7, -1
	st.d	$a3, $sp, 160                   # 8-byte Folded Spill
	alsl.d	$a3, $a0, $a5, 3
	st.d	$a3, $sp, 128                   # 8-byte Folded Spill
	alsl.d	$a0, $a0, $a6, 3
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	mul.d	$a0, $a7, $a4
	mul.d	$a3, $a4, $a1
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	add.d	$s6, $a5, $a3
	addi.d	$a3, $a7, 2
	mul.d	$a3, $a4, $a3
	add.d	$a3, $a5, $a3
	st.d	$a3, $sp, 176                   # 8-byte Folded Spill
	add.d	$s2, $a5, $a2
	add.d	$ra, $a5, $a0
	move	$a3, $a7
	move	$a5, $a7
	b	.LBB15_8
	.p2align	4, , 16
.LBB15_7:                               # %for.inc59.i
                                        #   in Loop: Header=BB15_8 Depth=2
	addi.d	$a1, $a5, 1
	add.d	$s6, $s6, $a4
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a4
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB15_2
.LBB15_8:                               # %for.body.i
                                        #   Parent Loop BB15_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_10 Depth 3
                                        #       Child Loop BB15_16 Depth 3
                                        #       Child Loop BB15_22 Depth 3
                                        #         Child Loop BB15_24 Depth 4
                                        #         Child Loop BB15_30 Depth 4
                                        #         Child Loop BB15_36 Depth 4
                                        #           Child Loop BB15_39 Depth 5
                                        #             Child Loop BB15_42 Depth 6
                                        #             Child Loop BB15_45 Depth 6
                                        #             Child Loop BB15_48 Depth 6
                                        #             Child Loop BB15_71 Depth 6
                                        #             Child Loop BB15_69 Depth 6
                                        #             Child Loop BB15_77 Depth 6
                                        #             Child Loop BB15_75 Depth 6
                                        #             Child Loop BB15_60 Depth 6
                                        #             Child Loop BB15_58 Depth 6
                                        #             Child Loop BB15_80 Depth 6
                                        #             Child Loop BB15_64 Depth 6
                                        #             Child Loop BB15_83 Depth 6
                                        #             Child Loop BB15_86 Depth 6
                                        #             Child Loop BB15_89 Depth 6
                                        #             Child Loop BB15_112 Depth 6
                                        #             Child Loop BB15_110 Depth 6
                                        #             Child Loop BB15_118 Depth 6
                                        #             Child Loop BB15_116 Depth 6
                                        #             Child Loop BB15_101 Depth 6
                                        #             Child Loop BB15_99 Depth 6
                                        #             Child Loop BB15_121 Depth 6
                                        #             Child Loop BB15_105 Depth 6
	move	$a0, $a5
	move	$a5, $a1
	st.d	$a3, $sp, 168                   # 8-byte Folded Spill
	beqz	$fp, .LBB15_14
# %bb.9:                                # %for.body.lr.ph.i.i
                                        #   in Loop: Header=BB15_8 Depth=2
	move	$a1, $fp
	.p2align	4, , 16
.LBB15_10:                              # %for.body.i.i
                                        #   Parent Loop BB15_4 Depth=1
                                        #     Parent Loop BB15_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.bu	$a2, $s6, $a1
	bnez	$a2, .LBB15_13
# %bb.11:                               # %for.inc.i.i
                                        #   in Loop: Header=BB15_10 Depth=3
	addi.d	$a1, $a1, -1
	bnez	$a1, .LBB15_10
# %bb.12:                               #   in Loop: Header=BB15_8 Depth=2
	move	$a1, $zero
.LBB15_13:                              # %for.end.loopexit.i.i
                                        #   in Loop: Header=BB15_8 Depth=2
	addi.d	$a6, $a1, 1
	b	.LBB15_15
	.p2align	4, , 16
.LBB15_14:                              #   in Loop: Header=BB15_8 Depth=2
	ori	$a6, $zero, 1
.LBB15_15:                              # %for.body4.lr.ph.i.i
                                        #   in Loop: Header=BB15_8 Depth=2
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	sltu	$a1, $a5, $a2
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a5, $a1
	or	$a1, $a1, $a2
	st.d	$a1, $sp, 376                   # 8-byte Folded Spill
	mul.d	$a1, $a4, $a1
	ld.d	$a2, $sp, 384                   # 8-byte Folded Reload
	add.d	$a1, $a2, $a1
	st.d	$a1, $sp, 368                   # 8-byte Folded Spill
	move	$a1, $fp
	.p2align	4, , 16
.LBB15_16:                              # %for.body4.i.i
                                        #   Parent Loop BB15_4 Depth=1
                                        #     Parent Loop BB15_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.bu	$a2, $s6, $a1
	bnez	$a2, .LBB15_18
# %bb.17:                               # %for.inc11.i.i
                                        #   in Loop: Header=BB15_16 Depth=3
	addi.d	$a1, $a1, 1
	bgeu	$a4, $a1, .LBB15_16
.LBB15_18:                              # %FindFreeHorzSeg.exit.i
                                        #   in Loop: Header=BB15_8 Depth=2
	addi.d	$a1, $a1, -1
	st.d	$a1, $sp, 344                   # 8-byte Folded Spill
	bgeu	$a6, $a1, .LBB15_7
# %bb.19:                               # %if.end.i
                                        #   in Loop: Header=BB15_8 Depth=2
	addi.d	$a7, $a0, 2
	bgeu	$a7, $s3, .LBB15_7
# %bb.20:                               # %for.body5.lr.ph.i
                                        #   in Loop: Header=BB15_8 Depth=2
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	sltu	$a0, $a1, $a5
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a5, $a0
	or	$t5, $a0, $a1
	ld.d	$t7, $sp, 176                   # 8-byte Folded Reload
	st.d	$a6, $sp, 152                   # 8-byte Folded Spill
	b	.LBB15_22
	.p2align	4, , 16
.LBB15_21:                              # %for.inc56.i
                                        #   in Loop: Header=BB15_22 Depth=3
	addi.d	$a7, $a7, 1
	add.d	$t7, $t7, $a4
	ld.d	$a6, $sp, 152                   # 8-byte Folded Reload
	bgeu	$a7, $s3, .LBB15_7
.LBB15_22:                              # %for.body5.i
                                        #   Parent Loop BB15_4 Depth=1
                                        #     Parent Loop BB15_8 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB15_24 Depth 4
                                        #         Child Loop BB15_30 Depth 4
                                        #         Child Loop BB15_36 Depth 4
                                        #           Child Loop BB15_39 Depth 5
                                        #             Child Loop BB15_42 Depth 6
                                        #             Child Loop BB15_45 Depth 6
                                        #             Child Loop BB15_48 Depth 6
                                        #             Child Loop BB15_71 Depth 6
                                        #             Child Loop BB15_69 Depth 6
                                        #             Child Loop BB15_77 Depth 6
                                        #             Child Loop BB15_75 Depth 6
                                        #             Child Loop BB15_60 Depth 6
                                        #             Child Loop BB15_58 Depth 6
                                        #             Child Loop BB15_80 Depth 6
                                        #             Child Loop BB15_64 Depth 6
                                        #             Child Loop BB15_83 Depth 6
                                        #             Child Loop BB15_86 Depth 6
                                        #             Child Loop BB15_89 Depth 6
                                        #             Child Loop BB15_112 Depth 6
                                        #             Child Loop BB15_110 Depth 6
                                        #             Child Loop BB15_118 Depth 6
                                        #             Child Loop BB15_116 Depth 6
                                        #             Child Loop BB15_101 Depth 6
                                        #             Child Loop BB15_99 Depth 6
                                        #             Child Loop BB15_121 Depth 6
                                        #             Child Loop BB15_105 Depth 6
	beqz	$fp, .LBB15_28
# %bb.23:                               # %for.body.lr.ph.i97.i
                                        #   in Loop: Header=BB15_22 Depth=3
	move	$a0, $fp
	.p2align	4, , 16
.LBB15_24:                              # %for.body.i99.i
                                        #   Parent Loop BB15_4 Depth=1
                                        #     Parent Loop BB15_8 Depth=2
                                        #       Parent Loop BB15_22 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ldx.bu	$a1, $t7, $a0
	bnez	$a1, .LBB15_27
# %bb.25:                               # %for.inc.i119.i
                                        #   in Loop: Header=BB15_24 Depth=4
	addi.d	$a0, $a0, -1
	bnez	$a0, .LBB15_24
# %bb.26:                               #   in Loop: Header=BB15_22 Depth=3
	move	$a0, $zero
.LBB15_27:                              # %for.end.loopexit.i103.i
                                        #   in Loop: Header=BB15_22 Depth=3
	addi.d	$a0, $a0, 1
	b	.LBB15_29
	.p2align	4, , 16
.LBB15_28:                              #   in Loop: Header=BB15_22 Depth=3
	ori	$a0, $zero, 1
.LBB15_29:                              # %for.body4.lr.ph.i108.i
                                        #   in Loop: Header=BB15_22 Depth=3
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	sltu	$a0, $a7, $a1
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a7, $a0
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	mul.d	$a0, $a4, $a0
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	sltu	$a1, $a7, $a2
	masknez	$a2, $a2, $a1
	maskeqz	$a3, $a7, $a1
	or	$a2, $a3, $a2
	mul.d	$a2, $a4, $a2
	ld.d	$a3, $sp, 384                   # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	st.d	$a2, $sp, 240                   # 8-byte Folded Spill
	move	$a3, $fp
	.p2align	4, , 16
.LBB15_30:                              # %for.body4.i110.i
                                        #   Parent Loop BB15_4 Depth=1
                                        #     Parent Loop BB15_8 Depth=2
                                        #       Parent Loop BB15_22 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ldx.bu	$a2, $t7, $a3
	bnez	$a2, .LBB15_32
# %bb.31:                               # %for.inc11.i116.i
                                        #   in Loop: Header=BB15_30 Depth=4
	addi.d	$a3, $a3, 1
	bgeu	$a4, $a3, .LBB15_30
.LBB15_32:                              # %FindFreeHorzSeg.exit122.i
                                        #   in Loop: Header=BB15_22 Depth=3
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	bltu	$a2, $a6, .LBB15_21
# %bb.33:                               # %FindFreeHorzSeg.exit122.i
                                        #   in Loop: Header=BB15_22 Depth=3
	addi.d	$s5, $a3, -1
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	bgeu	$a2, $s5, .LBB15_21
# %bb.34:                               # %for.cond12.preheader.lr.ph.i
                                        #   in Loop: Header=BB15_22 Depth=3
	ld.d	$a6, $sp, 184                   # 8-byte Folded Reload
	sltu	$a3, $a6, $a7
	masknez	$a2, $a7, $a3
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	maskeqz	$a3, $a6, $a3
	or	$a2, $a3, $a2
	st.d	$a2, $sp, 216                   # 8-byte Folded Spill
	masknez	$a2, $a7, $a1
	maskeqz	$a1, $a6, $a1
	or	$t8, $a1, $a2
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	sltu	$a1, $a2, $a7
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a7, $a1
	or	$a1, $a1, $a2
	st.d	$a1, $sp, 360                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 384                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
	st.d	$a7, $sp, 328                   # 8-byte Folded Spill
	b	.LBB15_36
	.p2align	4, , 16
.LBB15_35:                              # %for.cond12.for.inc53_crit_edge.i
                                        #   in Loop: Header=BB15_36 Depth=4
	addi.d	$s1, $s1, 1
	ld.d	$a7, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	bltu	$a0, $s1, .LBB15_21
.LBB15_36:                              # %for.cond12.preheader.i
                                        #   Parent Loop BB15_4 Depth=1
                                        #     Parent Loop BB15_8 Depth=2
                                        #       Parent Loop BB15_22 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB15_39 Depth 5
                                        #             Child Loop BB15_42 Depth 6
                                        #             Child Loop BB15_45 Depth 6
                                        #             Child Loop BB15_48 Depth 6
                                        #             Child Loop BB15_71 Depth 6
                                        #             Child Loop BB15_69 Depth 6
                                        #             Child Loop BB15_77 Depth 6
                                        #             Child Loop BB15_75 Depth 6
                                        #             Child Loop BB15_60 Depth 6
                                        #             Child Loop BB15_58 Depth 6
                                        #             Child Loop BB15_80 Depth 6
                                        #             Child Loop BB15_64 Depth 6
                                        #             Child Loop BB15_83 Depth 6
                                        #             Child Loop BB15_86 Depth 6
                                        #             Child Loop BB15_89 Depth 6
                                        #             Child Loop BB15_112 Depth 6
                                        #             Child Loop BB15_110 Depth 6
                                        #             Child Loop BB15_118 Depth 6
                                        #             Child Loop BB15_116 Depth 6
                                        #             Child Loop BB15_101 Depth 6
                                        #             Child Loop BB15_99 Depth 6
                                        #             Child Loop BB15_121 Depth 6
                                        #             Child Loop BB15_105 Depth 6
	xor	$a0, $a5, $a7
	sltui	$a0, $a0, 1
	xor	$a1, $s1, $fp
	sltui	$a1, $a1, 1
	or	$a0, $a0, $a1
	bnez	$a0, .LBB15_35
# %bb.37:                               # %for.body14.i.preheader
                                        #   in Loop: Header=BB15_36 Depth=4
	sltu	$a0, $s1, $fp
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $fp, $a0
	or	$a1, $a0, $a1
	add.d	$a0, $s2, $a1
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	sltu	$a0, $fp, $s1
	masknez	$a2, $s1, $a0
	maskeqz	$a0, $fp, $a0
	st.d	$a2, $sp, 232                   # 8-byte Folded Spill
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	or	$t3, $a0, $a2
	add.d	$a0, $s2, $t3
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	add.d	$a0, $s2, $t3
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	add.d	$a0, $s2, $a1
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	alsl.d	$a0, $s1, $a0, 3
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	alsl.d	$a0, $s1, $a0, 3
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 304                   # 8-byte Folded Reload
	b	.LBB15_39
	.p2align	4, , 16
.LBB15_38:                              # %for.inc.i
                                        #   in Loop: Header=BB15_39 Depth=5
	addi.d	$a6, $a6, 1
	addi.d	$a0, $a0, 1
	bltu	$s5, $a6, .LBB15_35
.LBB15_39:                              # %for.body14.i
                                        #   Parent Loop BB15_4 Depth=1
                                        #     Parent Loop BB15_8 Depth=2
                                        #       Parent Loop BB15_22 Depth=3
                                        #         Parent Loop BB15_36 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB15_42 Depth 6
                                        #             Child Loop BB15_45 Depth 6
                                        #             Child Loop BB15_48 Depth 6
                                        #             Child Loop BB15_71 Depth 6
                                        #             Child Loop BB15_69 Depth 6
                                        #             Child Loop BB15_77 Depth 6
                                        #             Child Loop BB15_75 Depth 6
                                        #             Child Loop BB15_60 Depth 6
                                        #             Child Loop BB15_58 Depth 6
                                        #             Child Loop BB15_80 Depth 6
                                        #             Child Loop BB15_64 Depth 6
                                        #             Child Loop BB15_83 Depth 6
                                        #             Child Loop BB15_86 Depth 6
                                        #             Child Loop BB15_89 Depth 6
                                        #             Child Loop BB15_112 Depth 6
                                        #             Child Loop BB15_110 Depth 6
                                        #             Child Loop BB15_118 Depth 6
                                        #             Child Loop BB15_116 Depth 6
                                        #             Child Loop BB15_101 Depth 6
                                        #             Child Loop BB15_99 Depth 6
                                        #             Child Loop BB15_121 Depth 6
                                        #             Child Loop BB15_105 Depth 6
	beq	$s1, $a6, .LBB15_38
# %bb.40:                               # %for.body14.i
                                        #   in Loop: Header=BB15_39 Depth=5
	beq	$a6, $fp, .LBB15_38
# %bb.41:                               # %for.body.i124.i.preheader
                                        #   in Loop: Header=BB15_39 Depth=5
	move	$a3, $zero
	sltu	$a2, $a6, $fp
	masknez	$a7, $a6, $a2
	maskeqz	$a2, $fp, $a2
	or	$a7, $a2, $a7
	add.d	$t4, $ra, $a7
	sltu	$a2, $fp, $a6
	masknez	$t0, $a6, $a2
	maskeqz	$t1, $fp, $a2
	or	$t2, $t1, $t0
	add.d	$s0, $ra, $t2
	add.d	$s4, $ra, $t2
	add.d	$t6, $ra, $a7
	ld.d	$s7, $sp, 384                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB15_42:                              # %for.body.i124.i
                                        #   Parent Loop BB15_4 Depth=1
                                        #     Parent Loop BB15_8 Depth=2
                                        #       Parent Loop BB15_22 Depth=3
                                        #         Parent Loop BB15_36 Depth=4
                                        #           Parent Loop BB15_39 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ldx.bu	$a2, $s7, $fp
	bnez	$a2, .LBB15_38
# %bb.43:                               # %for.inc.i127.i
                                        #   in Loop: Header=BB15_42 Depth=6
	addi.d	$a3, $a3, 1
	add.d	$s7, $s7, $a4
	bgeu	$a5, $a3, .LBB15_42
# %bb.44:                               # %for.body34.i.i.preheader
                                        #   in Loop: Header=BB15_39 Depth=5
	move	$a2, $t3
	.p2align	4, , 16
.LBB15_45:                              # %for.body34.i.i
                                        #   Parent Loop BB15_4 Depth=1
                                        #     Parent Loop BB15_8 Depth=2
                                        #       Parent Loop BB15_22 Depth=3
                                        #         Parent Loop BB15_36 Depth=4
                                        #           Parent Loop BB15_39 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ldx.bu	$a3, $s6, $a2
	bnez	$a3, .LBB15_38
# %bb.46:                               # %for.inc39.i.i
                                        #   in Loop: Header=BB15_45 Depth=6
	addi.d	$a2, $a2, 1
	bgeu	$a1, $a2, .LBB15_45
# %bb.47:                               # %for.body.i160.i.preheader
                                        #   in Loop: Header=BB15_39 Depth=5
	ld.d	$a3, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 376                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB15_48:                              # %for.body.i160.i
                                        #   Parent Loop BB15_4 Depth=1
                                        #     Parent Loop BB15_8 Depth=2
                                        #       Parent Loop BB15_22 Depth=3
                                        #         Parent Loop BB15_36 Depth=4
                                        #           Parent Loop BB15_39 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ldx.bu	$a2, $a3, $s1
	bnez	$a2, .LBB15_38
# %bb.49:                               # %for.inc.i165.i
                                        #   in Loop: Header=BB15_48 Depth=6
	addi.d	$s7, $s7, 1
	add.d	$a3, $a3, $a4
	bgeu	$t5, $s7, .LBB15_48
# %bb.50:                               # %land.lhs.true29.i
                                        #   in Loop: Header=BB15_39 Depth=5
	ld.d	$a2, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	beqz	$a2, .LBB15_54
# %bb.51:                               # %land.lhs.true.i.i
                                        #   in Loop: Header=BB15_39 Depth=5
	ld.d	$a3, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	beqz	$a3, .LBB15_54
# %bb.52:                               # %land.lhs.true.i.i
                                        #   in Loop: Header=BB15_39 Depth=5
	beq	$a2, $a3, .LBB15_54
# %bb.53:                               # %HasVCV.exit.i
                                        #   in Loop: Header=BB15_39 Depth=5
	slli.d	$a2, $a2, 3
	ld.d	$s7, $sp, 200                   # 8-byte Folded Reload
	ldx.d	$a2, $s7, $a2
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $s7, $a3
	bltu	$a3, $a2, .LBB15_38
.LBB15_54:                              # %land.lhs.true32.i
                                        #   in Loop: Header=BB15_39 Depth=5
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	ld.d	$a3, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	bgeu	$t3, $a2, .LBB15_66
# %bb.55:                               # %land.lhs.true21.i.i
                                        #   in Loop: Header=BB15_39 Depth=5
	addi.d	$s7, $a2, -1
	move	$a2, $t3
	bgeu	$a3, $a1, .LBB15_73
# %bb.56:                               # %if.then24.i.i
                                        #   in Loop: Header=BB15_39 Depth=5
	bne	$t3, $s7, .LBB15_60
# %bb.57:                               # %for.body.i.i.i.preheader
                                        #   in Loop: Header=BB15_39 Depth=5
	ld.d	$s7, $sp, 296                   # 8-byte Folded Reload
	move	$a2, $s3
	.p2align	4, , 16
.LBB15_58:                              # %for.body.i.i.i
                                        #   Parent Loop BB15_4 Depth=1
                                        #     Parent Loop BB15_8 Depth=2
                                        #       Parent Loop BB15_22 Depth=3
                                        #         Parent Loop BB15_36 Depth=4
                                        #           Parent Loop BB15_39 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ld.bu	$s8, $s7, 0
	bnez	$s8, .LBB15_38
# %bb.59:                               # %for.inc.i.i.i
                                        #   in Loop: Header=BB15_58 Depth=6
	addi.d	$a2, $a2, 1
	add.d	$s7, $s7, $a4
	bgeu	$s3, $a2, .LBB15_58
	b	.LBB15_62
	.p2align	4, , 16
.LBB15_60:                              # %for.body34.i.i.i
                                        #   Parent Loop BB15_4 Depth=1
                                        #     Parent Loop BB15_8 Depth=2
                                        #       Parent Loop BB15_22 Depth=3
                                        #         Parent Loop BB15_36 Depth=4
                                        #           Parent Loop BB15_39 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ldx.bu	$s8, $s2, $a2
	bnez	$s8, .LBB15_38
# %bb.61:                               # %for.inc39.i.i.i
                                        #   in Loop: Header=BB15_60 Depth=6
	addi.d	$a2, $a2, 1
	bgeu	$s7, $a2, .LBB15_60
.LBB15_62:                              # %land.rhs.i177.i
                                        #   in Loop: Header=BB15_39 Depth=5
	addi.d	$a2, $a3, 1
	bne	$a2, $a1, .LBB15_79
# %bb.63:                               # %for.body.i61.i.i.preheader
                                        #   in Loop: Header=BB15_39 Depth=5
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	move	$a2, $s3
	.p2align	4, , 16
.LBB15_64:                              # %for.body.i61.i.i
                                        #   Parent Loop BB15_4 Depth=1
                                        #     Parent Loop BB15_8 Depth=2
                                        #       Parent Loop BB15_22 Depth=3
                                        #         Parent Loop BB15_36 Depth=4
                                        #           Parent Loop BB15_39 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ld.bu	$s7, $a3, 0
	bnez	$s7, .LBB15_38
# %bb.65:                               # %for.inc.i66.i.i
                                        #   in Loop: Header=BB15_64 Depth=6
	addi.d	$a2, $a2, 1
	add.d	$a3, $a3, $a4
	bgeu	$s3, $a2, .LBB15_64
	b	.LBB15_82
.LBB15_66:                              # %land.lhs.true.i174.i
                                        #   in Loop: Header=BB15_39 Depth=5
	bgeu	$a3, $a1, .LBB15_82
# %bb.67:                               # %if.then38.i.i
                                        #   in Loop: Header=BB15_39 Depth=5
	addi.d	$a3, $a3, 1
	bne	$a3, $a1, .LBB15_71
# %bb.68:                               # %for.body.i119.i.i.preheader
                                        #   in Loop: Header=BB15_39 Depth=5
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	move	$a2, $s3
	.p2align	4, , 16
.LBB15_69:                              # %for.body.i119.i.i
                                        #   Parent Loop BB15_4 Depth=1
                                        #     Parent Loop BB15_8 Depth=2
                                        #       Parent Loop BB15_22 Depth=3
                                        #         Parent Loop BB15_36 Depth=4
                                        #           Parent Loop BB15_39 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ld.bu	$s7, $a3, 0
	bnez	$s7, .LBB15_38
# %bb.70:                               # %for.inc.i124.i.i
                                        #   in Loop: Header=BB15_69 Depth=6
	addi.d	$a2, $a2, 1
	add.d	$a3, $a3, $a4
	bgeu	$s3, $a2, .LBB15_69
	b	.LBB15_82
	.p2align	4, , 16
.LBB15_71:                              # %for.body34.i106.i.i
                                        #   Parent Loop BB15_4 Depth=1
                                        #     Parent Loop BB15_8 Depth=2
                                        #       Parent Loop BB15_22 Depth=3
                                        #         Parent Loop BB15_36 Depth=4
                                        #           Parent Loop BB15_39 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ldx.bu	$a2, $s2, $a3
	bnez	$a2, .LBB15_38
# %bb.72:                               # %for.inc39.i112.i.i
                                        #   in Loop: Header=BB15_71 Depth=6
	addi.d	$a3, $a3, 1
	bgeu	$a1, $a3, .LBB15_71
	b	.LBB15_82
.LBB15_73:                              # %if.then31.i.i
                                        #   in Loop: Header=BB15_39 Depth=5
	bne	$t3, $s7, .LBB15_77
# %bb.74:                               # %for.body.i90.i.i.preheader
                                        #   in Loop: Header=BB15_39 Depth=5
	ld.d	$a3, $sp, 288                   # 8-byte Folded Reload
	move	$a2, $s3
	.p2align	4, , 16
.LBB15_75:                              # %for.body.i90.i.i
                                        #   Parent Loop BB15_4 Depth=1
                                        #     Parent Loop BB15_8 Depth=2
                                        #       Parent Loop BB15_22 Depth=3
                                        #         Parent Loop BB15_36 Depth=4
                                        #           Parent Loop BB15_39 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ld.bu	$s7, $a3, 0
	bnez	$s7, .LBB15_38
# %bb.76:                               # %for.inc.i95.i.i
                                        #   in Loop: Header=BB15_75 Depth=6
	addi.d	$a2, $a2, 1
	add.d	$a3, $a3, $a4
	bgeu	$s3, $a2, .LBB15_75
	b	.LBB15_82
	.p2align	4, , 16
.LBB15_77:                              # %for.body34.i77.i.i
                                        #   Parent Loop BB15_4 Depth=1
                                        #     Parent Loop BB15_8 Depth=2
                                        #       Parent Loop BB15_22 Depth=3
                                        #         Parent Loop BB15_36 Depth=4
                                        #           Parent Loop BB15_39 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ldx.bu	$a3, $s2, $a2
	bnez	$a3, .LBB15_38
# %bb.78:                               # %for.inc39.i83.i.i
                                        #   in Loop: Header=BB15_77 Depth=6
	addi.d	$a2, $a2, 1
	bgeu	$s7, $a2, .LBB15_77
	b	.LBB15_82
.LBB15_79:                              # %if.else.i43.i.i
                                        #   in Loop: Header=BB15_39 Depth=5
	sltu	$a3, $a2, $a1
	masknez	$s7, $a1, $a3
	maskeqz	$a3, $a2, $a3
	or	$a3, $a3, $s7
	sltu	$s7, $a1, $a2
	masknez	$s8, $a1, $s7
	maskeqz	$a2, $a2, $s7
	or	$a2, $a2, $s8
	.p2align	4, , 16
.LBB15_80:                              # %for.body34.i48.i.i
                                        #   Parent Loop BB15_4 Depth=1
                                        #     Parent Loop BB15_8 Depth=2
                                        #       Parent Loop BB15_22 Depth=3
                                        #         Parent Loop BB15_36 Depth=4
                                        #           Parent Loop BB15_39 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ldx.bu	$s7, $s2, $a3
	bnez	$s7, .LBB15_38
# %bb.81:                               # %for.inc39.i54.i.i
                                        #   in Loop: Header=BB15_80 Depth=6
	addi.d	$a3, $a3, 1
	bgeu	$a2, $a3, .LBB15_80
.LBB15_82:                              # %for.body.i200.i.preheader
                                        #   in Loop: Header=BB15_39 Depth=5
	ld.d	$a3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB15_83:                              # %for.body.i200.i
                                        #   Parent Loop BB15_4 Depth=1
                                        #     Parent Loop BB15_8 Depth=2
                                        #       Parent Loop BB15_22 Depth=3
                                        #         Parent Loop BB15_36 Depth=4
                                        #           Parent Loop BB15_39 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ldx.bu	$s7, $a3, $fp
	bnez	$s7, .LBB15_38
# %bb.84:                               # %for.inc.i205.i
                                        #   in Loop: Header=BB15_83 Depth=6
	addi.d	$a2, $a2, 1
	add.d	$a3, $a3, $a4
	bgeu	$t8, $a2, .LBB15_83
# %bb.85:                               # %if.else.i211.i
                                        #   in Loop: Header=BB15_39 Depth=5
	move	$a2, $t2
	.p2align	4, , 16
.LBB15_86:                              # %for.body34.i216.i
                                        #   Parent Loop BB15_4 Depth=1
                                        #     Parent Loop BB15_8 Depth=2
                                        #       Parent Loop BB15_22 Depth=3
                                        #         Parent Loop BB15_36 Depth=4
                                        #           Parent Loop BB15_39 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ldx.bu	$a3, $t7, $a2
	bnez	$a3, .LBB15_38
# %bb.87:                               # %for.inc39.i222.i
                                        #   in Loop: Header=BB15_86 Depth=6
	addi.d	$a2, $a2, 1
	bgeu	$a7, $a2, .LBB15_86
# %bb.88:                               # %land.lhs.true41.i
                                        #   in Loop: Header=BB15_39 Depth=5
	move	$a3, $a0
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB15_89:                              # %for.body.i262.i
                                        #   Parent Loop BB15_4 Depth=1
                                        #     Parent Loop BB15_8 Depth=2
                                        #       Parent Loop BB15_22 Depth=3
                                        #         Parent Loop BB15_36 Depth=4
                                        #           Parent Loop BB15_39 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ld.bu	$s7, $a3, 0
	bnez	$s7, .LBB15_38
# %bb.90:                               # %for.inc.i267.i
                                        #   in Loop: Header=BB15_89 Depth=6
	addi.d	$a2, $a2, 1
	add.d	$a3, $a3, $a4
	ld.d	$s7, $sp, 360                   # 8-byte Folded Reload
	bgeu	$s7, $a2, .LBB15_89
# %bb.91:                               # %land.lhs.true45.i
                                        #   in Loop: Header=BB15_39 Depth=5
	slli.d	$a3, $a6, 3
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	ldx.d	$a2, $a2, $a3
	beqz	$a2, .LBB15_95
# %bb.92:                               # %land.lhs.true.i274.i
                                        #   in Loop: Header=BB15_39 Depth=5
	ld.d	$s7, $sp, 264                   # 8-byte Folded Reload
	ldx.d	$a3, $s7, $a3
	beqz	$a3, .LBB15_95
# %bb.93:                               # %land.lhs.true.i274.i
                                        #   in Loop: Header=BB15_39 Depth=5
	beq	$a2, $a3, .LBB15_95
# %bb.94:                               # %HasVCV.exit284.i
                                        #   in Loop: Header=BB15_39 Depth=5
	slli.d	$a2, $a2, 3
	ld.d	$s7, $sp, 200                   # 8-byte Folded Reload
	ldx.d	$a2, $s7, $a2
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $s7, $a3
	bltu	$a3, $a2, .LBB15_38
.LBB15_95:                              # %land.lhs.true48.i
                                        #   in Loop: Header=BB15_39 Depth=5
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	bgeu	$t2, $a2, .LBB15_107
# %bb.96:                               # %land.lhs.true21.i
                                        #   in Loop: Header=BB15_39 Depth=5
	addi.d	$t6, $a2, -1
	move	$a2, $t2
	bgeu	$a3, $a7, .LBB15_114
# %bb.97:                               # %if.then24.i
                                        #   in Loop: Header=BB15_39 Depth=5
	bne	$t2, $t6, .LBB15_101
# %bb.98:                               # %for.body.i.i25.preheader
                                        #   in Loop: Header=BB15_39 Depth=5
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB15_99:                              # %for.body.i.i25
                                        #   Parent Loop BB15_4 Depth=1
                                        #     Parent Loop BB15_8 Depth=2
                                        #       Parent Loop BB15_22 Depth=3
                                        #         Parent Loop BB15_36 Depth=4
                                        #           Parent Loop BB15_39 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ld.bu	$t6, $s0, 0
	bnez	$t6, .LBB15_38
# %bb.100:                              # %for.inc.i.i30
                                        #   in Loop: Header=BB15_99 Depth=6
	addi.d	$a2, $a2, 1
	add.d	$s0, $s0, $a4
	ld.d	$t6, $sp, 208                   # 8-byte Folded Reload
	bgeu	$t6, $a2, .LBB15_99
	b	.LBB15_103
	.p2align	4, , 16
.LBB15_101:                             # %for.body34.i.i16
                                        #   Parent Loop BB15_4 Depth=1
                                        #     Parent Loop BB15_8 Depth=2
                                        #       Parent Loop BB15_22 Depth=3
                                        #         Parent Loop BB15_36 Depth=4
                                        #           Parent Loop BB15_39 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ldx.bu	$s0, $ra, $a2
	bnez	$s0, .LBB15_38
# %bb.102:                              # %for.inc39.i.i21
                                        #   in Loop: Header=BB15_101 Depth=6
	addi.d	$a2, $a2, 1
	bgeu	$t6, $a2, .LBB15_101
.LBB15_103:                             # %land.rhs.i
                                        #   in Loop: Header=BB15_39 Depth=5
	addi.d	$a2, $a3, 1
	bne	$a2, $a7, .LBB15_120
# %bb.104:                              # %if.then.i58.i
                                        #   in Loop: Header=BB15_39 Depth=5
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB15_105:                             # %for.body.i61.i
                                        #   Parent Loop BB15_4 Depth=1
                                        #     Parent Loop BB15_8 Depth=2
                                        #       Parent Loop BB15_22 Depth=3
                                        #         Parent Loop BB15_36 Depth=4
                                        #           Parent Loop BB15_39 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ld.bu	$a3, $t4, 0
	bnez	$a3, .LBB15_38
# %bb.106:                              # %for.inc.i66.i
                                        #   in Loop: Header=BB15_105 Depth=6
	addi.d	$a2, $a2, 1
	add.d	$t4, $t4, $a4
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	bgeu	$a3, $a2, .LBB15_105
	b	.LBB15_123
.LBB15_107:                             # %land.lhs.true.i
                                        #   in Loop: Header=BB15_39 Depth=5
	bgeu	$a3, $a7, .LBB15_123
# %bb.108:                              # %if.then38.i
                                        #   in Loop: Header=BB15_39 Depth=5
	addi.d	$a3, $a3, 1
	bne	$a3, $a7, .LBB15_112
# %bb.109:                              # %if.then.i116.i
                                        #   in Loop: Header=BB15_39 Depth=5
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB15_110:                             # %for.body.i119.i
                                        #   Parent Loop BB15_4 Depth=1
                                        #     Parent Loop BB15_8 Depth=2
                                        #       Parent Loop BB15_22 Depth=3
                                        #         Parent Loop BB15_36 Depth=4
                                        #           Parent Loop BB15_39 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ld.bu	$a3, $t6, 0
	bnez	$a3, .LBB15_38
# %bb.111:                              # %for.inc.i124.i
                                        #   in Loop: Header=BB15_110 Depth=6
	addi.d	$a2, $a2, 1
	add.d	$t6, $t6, $a4
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	bgeu	$a3, $a2, .LBB15_110
	b	.LBB15_123
	.p2align	4, , 16
.LBB15_112:                             # %for.body34.i106.i
                                        #   Parent Loop BB15_4 Depth=1
                                        #     Parent Loop BB15_8 Depth=2
                                        #       Parent Loop BB15_22 Depth=3
                                        #         Parent Loop BB15_36 Depth=4
                                        #           Parent Loop BB15_39 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ldx.bu	$a2, $ra, $a3
	bnez	$a2, .LBB15_38
# %bb.113:                              # %for.inc39.i112.i
                                        #   in Loop: Header=BB15_112 Depth=6
	addi.d	$a3, $a3, 1
	bgeu	$a7, $a3, .LBB15_112
	b	.LBB15_123
.LBB15_114:                             # %if.then31.i
                                        #   in Loop: Header=BB15_39 Depth=5
	bne	$t2, $t6, .LBB15_118
# %bb.115:                              # %for.body.i90.i.preheader
                                        #   in Loop: Header=BB15_39 Depth=5
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB15_116:                             # %for.body.i90.i
                                        #   Parent Loop BB15_4 Depth=1
                                        #     Parent Loop BB15_8 Depth=2
                                        #       Parent Loop BB15_22 Depth=3
                                        #         Parent Loop BB15_36 Depth=4
                                        #           Parent Loop BB15_39 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ld.bu	$a3, $s4, 0
	bnez	$a3, .LBB15_38
# %bb.117:                              # %for.inc.i95.i
                                        #   in Loop: Header=BB15_116 Depth=6
	addi.d	$a2, $a2, 1
	add.d	$s4, $s4, $a4
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	bgeu	$a3, $a2, .LBB15_116
	b	.LBB15_123
	.p2align	4, , 16
.LBB15_118:                             # %for.body34.i77.i
                                        #   Parent Loop BB15_4 Depth=1
                                        #     Parent Loop BB15_8 Depth=2
                                        #       Parent Loop BB15_22 Depth=3
                                        #         Parent Loop BB15_36 Depth=4
                                        #           Parent Loop BB15_39 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ldx.bu	$a3, $ra, $a2
	bnez	$a3, .LBB15_38
# %bb.119:                              # %for.inc39.i83.i
                                        #   in Loop: Header=BB15_118 Depth=6
	addi.d	$a2, $a2, 1
	bgeu	$t6, $a2, .LBB15_118
	b	.LBB15_123
.LBB15_120:                             # %if.else.i43.i
                                        #   in Loop: Header=BB15_39 Depth=5
	sltu	$a3, $a2, $a7
	masknez	$t4, $a7, $a3
	maskeqz	$a3, $a2, $a3
	or	$a3, $a3, $t4
	sltu	$t4, $a7, $a2
	masknez	$t6, $a7, $t4
	maskeqz	$a2, $a2, $t4
	or	$a2, $a2, $t6
	.p2align	4, , 16
.LBB15_121:                             # %for.body34.i48.i
                                        #   Parent Loop BB15_4 Depth=1
                                        #     Parent Loop BB15_8 Depth=2
                                        #       Parent Loop BB15_22 Depth=3
                                        #         Parent Loop BB15_36 Depth=4
                                        #           Parent Loop BB15_39 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ldx.bu	$t4, $ra, $a3
	bnez	$t4, .LBB15_38
# %bb.122:                              # %for.inc39.i54.i
                                        #   in Loop: Header=BB15_121 Depth=6
	addi.d	$a3, $a3, 1
	bgeu	$a2, $a3, .LBB15_121
	.p2align	4, , 16
.LBB15_123:                             # %if.then51.i
                                        #   in Loop: Header=BB15_4 Depth=1
	ld.d	$a3, $sp, 384                   # 8-byte Folded Reload
	ldx.b	$a2, $a3, $fp
	add.d	$a0, $a3, $fp
	ori	$a2, $a2, 8
	stx.b	$a2, $a3, $fp
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ori	$a2, $zero, 2
	ld.d	$t4, $sp, 168                   # 8-byte Folded Reload
	bltu	$a5, $a2, .LBB15_126
# %bb.124:                              # %for.body.i291.i.preheader
                                        #   in Loop: Header=BB15_4 Depth=1
	move	$a2, $zero
	.p2align	4, , 16
.LBB15_125:                             # %for.body.i291.i
                                        #   Parent Loop BB15_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $s2, 0
	addi.d	$a2, $a2, 1
	mul.d	$a3, $a3, $a2
	ldx.b	$a4, $a0, $a3
	ori	$a4, $a4, 12
	stx.b	$a4, $a0, $a3
	bne	$t4, $a2, .LBB15_125
.LBB15_126:                             # %if.else.i295.i
                                        #   in Loop: Header=BB15_4 Depth=1
	ld.d	$a2, $s2, 0
	mul.d	$a2, $a2, $a5
	ld.d	$a3, $sp, 384                   # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	ldx.b	$a3, $a2, $fp
	ori	$a3, $a3, 4
	stx.b	$a3, $a2, $fp
	ld.d	$a2, $s2, 0
	mul.d	$a2, $a2, $a5
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	add.d	$a2, $s6, $a2
	ori	$a3, $zero, 1
	stx.b	$a3, $a2, $fp
	ld.d	$a2, $s2, 0
	mul.d	$a2, $a2, $a5
	ld.d	$s5, $sp, 56                    # 8-byte Folded Reload
	add.d	$a2, $s5, $a2
	ldx.b	$a3, $a2, $t3
	ori	$a3, $a3, 2
	addi.d	$a4, $t3, 1
	stx.b	$a3, $a2, $t3
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ori	$s7, $zero, 3
	ld.d	$s8, $sp, 208                   # 8-byte Folded Reload
	move	$s0, $s3
	bgeu	$a4, $a1, .LBB15_129
# %bb.127:                              # %for.body64.i.i.preheader
                                        #   in Loop: Header=BB15_4 Depth=1
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	or	$a2, $a3, $a2
	nor	$a3, $a2, $zero
	add.d	$a3, $a3, $a1
	ld.d	$t4, $sp, 48                    # 8-byte Folded Reload
	add.d	$t4, $t4, $a2
	.p2align	4, , 16
.LBB15_128:                             # %for.body64.i.i
                                        #   Parent Loop BB15_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $s2, 0
	mul.d	$a2, $a5, $a2
	stx.b	$s7, $t4, $a2
	addi.d	$a3, $a3, -1
	addi.d	$t4, $t4, 1
	bnez	$a3, .LBB15_128
.LBB15_129:                             # %DrawSegment.exit310.i
                                        #   in Loop: Header=BB15_4 Depth=1
	ld.d	$a2, $s2, 0
	mul.d	$a2, $a2, $a5
	add.d	$a2, $s5, $a2
	ldx.b	$a3, $a2, $a1
	ori	$a3, $a3, 1
	stx.b	$a3, $a2, $a1
	ld.d	$a2, $s2, 0
	mul.d	$a2, $a2, $a5
	add.d	$a2, $s6, $a2
	ori	$a3, $zero, 1
	stx.b	$a3, $a2, $s1
	sltu	$t5, $a5, $s0
	ld.d	$a2, $s2, 0
	masknez	$a3, $s0, $t5
	maskeqz	$t4, $a5, $t5
	or	$t6, $t4, $a3
	mul.d	$a2, $a2, $t6
	ld.d	$a3, $sp, 384                   # 8-byte Folded Reload
	add.d	$a3, $a3, $s1
	ldx.b	$t7, $a3, $a2
	sltu	$t4, $s0, $a5
	masknez	$s0, $s3, $t4
	maskeqz	$t4, $a5, $t4
	or	$t4, $t4, $s0
	ori	$t7, $t7, 8
	addi.d	$t6, $t6, 1
	stx.b	$t7, $a3, $a2
	bgeu	$t6, $t4, .LBB15_132
# %bb.130:                              # %for.body.i338.i.preheader
                                        #   in Loop: Header=BB15_4 Depth=1
	masknez	$a2, $a5, $t5
	maskeqz	$a5, $s3, $t5
	or	$a5, $a5, $a2
	.p2align	4, , 16
.LBB15_131:                             # %for.body.i338.i
                                        #   Parent Loop BB15_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $s2, 0
	mul.d	$a2, $a2, $t6
	ldx.b	$t5, $a3, $a2
	ori	$t5, $t5, 12
	addi.d	$t6, $t6, 1
	stx.b	$t5, $a3, $a2
	bne	$a5, $t6, .LBB15_131
.LBB15_132:                             # %if.else.i348.i
                                        #   in Loop: Header=BB15_4 Depth=1
	ld.d	$a2, $s2, 0
	mul.d	$a2, $a2, $t4
	ld.d	$a3, $sp, 384                   # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	ldx.b	$a3, $a2, $s1
	ori	$a3, $a3, 4
	stx.b	$a3, $a2, $s1
	ld.d	$a2, $s2, 0
	mul.d	$a2, $a2, $s3
	add.d	$a2, $s6, $a2
	ori	$a3, $zero, 1
	stx.b	$a3, $a2, $s1
	ld.d	$a2, $s2, 0
	mul.d	$a2, $a2, $s3
	add.d	$a2, $s5, $a2
	ldx.b	$a3, $a2, $t3
	ori	$a3, $a3, 2
	stx.b	$a3, $a2, $t3
	bgeu	$a4, $a1, .LBB15_135
# %bb.133:                              # %for.body64.i359.i.preheader
                                        #   in Loop: Header=BB15_4 Depth=1
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	or	$a2, $a3, $a2
	nor	$a3, $a2, $zero
	add.d	$a3, $a3, $a1
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	add.d	$a4, $a4, $a2
	.p2align	4, , 16
.LBB15_134:                             # %for.body64.i359.i
                                        #   Parent Loop BB15_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $s2, 0
	mul.d	$a2, $a2, $s3
	stx.b	$s7, $a4, $a2
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 1
	bnez	$a3, .LBB15_134
.LBB15_135:                             # %DrawSegment.exit379.i
                                        #   in Loop: Header=BB15_4 Depth=1
	ld.d	$a2, $s2, 0
	mul.d	$a2, $a2, $s3
	add.d	$a2, $s5, $a2
	ldx.b	$a3, $a2, $a1
	ori	$a3, $a3, 1
	stx.b	$a3, $a2, $a1
	ld.d	$a1, $s2, 0
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	mul.d	$a1, $a1, $a4
	ld.d	$a2, $sp, 384                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a1
	ldx.b	$a1, $a2, $fp
	ori	$a3, $a1, 8
	addi.d	$a1, $a4, 1
	stx.b	$a3, $a2, $fp
	ld.d	$t5, $sp, 328                   # 8-byte Folded Reload
	bgeu	$a1, $t8, .LBB15_138
# %bb.136:                              # %for.body.i406.i.preheader
                                        #   in Loop: Header=BB15_4 Depth=1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $t5, $a3
	or	$a2, $a3, $a2
	.p2align	4, , 16
.LBB15_137:                             # %for.body.i406.i
                                        #   Parent Loop BB15_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $s2, 0
	mul.d	$a3, $a3, $a1
	ldx.b	$a4, $a0, $a3
	ori	$a4, $a4, 12
	addi.d	$a1, $a1, 1
	stx.b	$a4, $a0, $a3
	bne	$a2, $a1, .LBB15_137
.LBB15_138:                             # %if.else.i416.i
                                        #   in Loop: Header=BB15_4 Depth=1
	ld.d	$a0, $s2, 0
	mul.d	$a0, $a0, $t8
	ld.d	$a1, $sp, 384                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ldx.b	$a1, $a0, $fp
	ori	$a1, $a1, 4
	stx.b	$a1, $a0, $fp
	ld.d	$a0, $s2, 0
	mul.d	$a0, $a0, $t5
	add.d	$a0, $s6, $a0
	ori	$a1, $zero, 1
	stx.b	$a1, $a0, $fp
	ld.d	$a0, $s2, 0
	mul.d	$a0, $a0, $t5
	add.d	$a1, $s5, $a0
	ldx.b	$a0, $a1, $t2
	ori	$a2, $a0, 2
	addi.d	$a0, $t2, 1
	stx.b	$a2, $a1, $t2
	bgeu	$a0, $a7, .LBB15_141
# %bb.139:                              # %for.body64.i427.i.preheader
                                        #   in Loop: Header=BB15_4 Depth=1
	or	$a2, $t1, $t0
	nor	$a1, $a2, $zero
	add.d	$a1, $a1, $a7
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	.p2align	4, , 16
.LBB15_140:                             # %for.body64.i427.i
                                        #   Parent Loop BB15_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $s2, 0
	mul.d	$a3, $t5, $a3
	stx.b	$s7, $a2, $a3
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 1
	bnez	$a1, .LBB15_140
.LBB15_141:                             # %DrawSegment.exit447.i
                                        #   in Loop: Header=BB15_4 Depth=1
	ld.d	$a1, $s2, 0
	mul.d	$a1, $a1, $t5
	add.d	$a1, $s5, $a1
	ldx.b	$a2, $a1, $a7
	ori	$a2, $a2, 1
	stx.b	$a2, $a1, $a7
	ld.d	$a1, $s2, 0
	mul.d	$a1, $a1, $t5
	add.d	$a1, $s6, $a1
	ori	$a2, $zero, 1
	stx.b	$a2, $a1, $a6
	sltu	$a3, $t5, $s8
	ld.d	$a1, $s2, 0
	masknez	$a2, $s8, $a3
	maskeqz	$a4, $t5, $a3
	or	$a4, $a4, $a2
	mul.d	$a5, $a1, $a4
	ld.d	$a1, $sp, 384                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a6
	ldx.b	$t3, $a1, $a5
	sltu	$a2, $s8, $t5
	masknez	$t4, $s8, $a2
	maskeqz	$a2, $t5, $a2
	or	$a2, $a2, $t4
	ori	$t3, $t3, 8
	addi.d	$a4, $a4, 1
	stx.b	$t3, $a1, $a5
	bgeu	$a4, $a2, .LBB15_144
# %bb.142:                              # %for.body.i476.i.preheader
                                        #   in Loop: Header=BB15_4 Depth=1
	masknez	$a5, $t5, $a3
	maskeqz	$a3, $s8, $a3
	or	$a3, $a3, $a5
	.p2align	4, , 16
.LBB15_143:                             # %for.body.i476.i
                                        #   Parent Loop BB15_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $s2, 0
	mul.d	$a5, $a5, $a4
	ldx.b	$t3, $a1, $a5
	ori	$t3, $t3, 12
	addi.d	$a4, $a4, 1
	stx.b	$t3, $a1, $a5
	bne	$a3, $a4, .LBB15_143
.LBB15_144:                             # %if.else.i486.i
                                        #   in Loop: Header=BB15_4 Depth=1
	ld.d	$a1, $s2, 0
	mul.d	$a1, $a1, $a2
	ld.d	$a2, $sp, 384                   # 8-byte Folded Reload
	add.d	$a1, $a2, $a1
	ldx.b	$a2, $a1, $a6
	ori	$a2, $a2, 4
	stx.b	$a2, $a1, $a6
	ld.d	$a1, $s2, 0
	mul.d	$a1, $a1, $s8
	add.d	$a1, $s6, $a1
	ori	$a2, $zero, 1
	stx.b	$a2, $a1, $a6
	ld.d	$a1, $s2, 0
	mul.d	$a1, $a1, $s8
	add.d	$a1, $s5, $a1
	ldx.b	$a2, $a1, $t2
	ori	$a2, $a2, 2
	stx.b	$a2, $a1, $t2
	bgeu	$a0, $a7, .LBB15_147
# %bb.145:                              # %for.body64.i497.i.preheader
                                        #   in Loop: Header=BB15_4 Depth=1
	or	$a1, $t1, $t0
	nor	$a0, $a1, $zero
	add.d	$a0, $a0, $a7
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	add.d	$a1, $a2, $a1
	.p2align	4, , 16
.LBB15_146:                             # %for.body64.i497.i
                                        #   Parent Loop BB15_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $s2, 0
	mul.d	$a2, $a2, $s8
	stx.b	$s7, $a1, $a2
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 1
	bnez	$a0, .LBB15_146
.LBB15_147:                             # %if.then8
                                        #   in Loop: Header=BB15_4 Depth=1
	ld.d	$a0, $s2, 0
	mul.d	$a0, $a0, $s8
	add.d	$a0, $s5, $a0
	ldx.b	$a1, $a0, $a7
	ori	$a1, $a1, 1
	stx.b	$a1, $a0, $a7
	stx.b	$zero, $s4, $fp
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$s0, $sp, 96                    # 8-byte Folded Reload
	ldx.d	$a0, $a0, $s0
	pcaddu18i	$ra, %call36(CleanNet)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $s0
	pcaddu18i	$ra, %call36(CleanNet)
	jirl	$ra, $ra, 0
	ld.d	$a4, $s2, 0
	b	.LBB15_3
.LBB15_148:
	st.d	$zero, $sp, 80                  # 8-byte Folded Spill
.LBB15_149:                             # %for.end
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 456                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 464                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 472                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 480
	ret
.Lfunc_end15:
	.size	Maze3, .Lfunc_end15-Maze3
                                        # -- End function
	.type	horzPlane,@object               # @horzPlane
	.local	horzPlane
	.comm	horzPlane,8,8
	.type	vertPlane,@object               # @vertPlane
	.local	vertPlane
	.comm	vertPlane,8,8
	.type	viaPlane,@object                # @viaPlane
	.local	viaPlane
	.comm	viaPlane,8,8
	.type	mazeRoute,@object               # @mazeRoute
	.local	mazeRoute
	.comm	mazeRoute,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"unable to allocate plane allocation maps\n"
	.size	.L.str, 42

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"           "
	.size	.L.str.1, 12

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	" %d "
	.size	.L.str.2, 5

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"%%%c%%"
	.size	.L.str.4, 7

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	" | "
	.size	.L.str.5, 4

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"   "
	.size	.L.str.6, 4

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Track %3d: "
	.size	.L.str.7, 12

	.section	".note.GNU-stack","",@progbits
	.addrsig
