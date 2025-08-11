	.file	"jdcoefct.c"
	.text
	.globl	jinit_d_coef_controller         # -- Begin function jinit_d_coef_controller
	.p2align	5
	.type	jinit_d_coef_controller,@function
jinit_d_coef_controller:                # @jinit_d_coef_controller
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
	move	$s0, $a0
	ld.d	$a0, $a0, 8
	ld.d	$a3, $a0, 0
	move	$s1, $a1
	ori	$a1, $zero, 1
	ori	$a2, $zero, 224
	ori	$s2, $zero, 1
	move	$a0, $s0
	jirl	$ra, $a3, 0
	move	$fp, $a0
	st.d	$a0, $s0, 544
	pcalau12i	$a0, %pc_hi20(start_input_pass)
	addi.d	$a0, $a0, %pc_lo12(start_input_pass)
	st.d	$a0, $fp, 0
	pcalau12i	$a0, %pc_hi20(start_output_pass)
	addi.d	$a0, $a0, %pc_lo12(start_output_pass)
	st.d	$a0, $fp, 16
	st.d	$zero, $fp, 216
	beqz	$s1, .LBB0_5
# %bb.1:                                # %if.then
	ld.w	$a0, $s0, 48
	blt	$a0, $s2, .LBB0_4
# %bb.2:                                # %for.body.lr.ph
	ld.d	$a0, $s0, 296
	move	$s2, $zero
	addi.d	$s3, $fp, 136
	addi.d	$s4, $a0, 28
	.p2align	4, , 16
.LBB0_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s0, 304
	ld.w	$a2, $s4, -16
	ld.d	$a1, $s0, 8
	sltui	$a3, $a0, 1
	alsl.d	$a4, $a2, $a2, 1
	ld.d	$s5, $a1, 40
	ld.wu	$a0, $s4, 0
	ld.w	$a1, $s4, -20
	masknez	$a4, $a4, $a3
	maskeqz	$a2, $a2, $a3
	or	$s6, $a2, $a4
	pcaddu18i	$ra, %call36(jround_up)
	jirl	$ra, $ra, 0
	ld.wu	$a2, $s4, 4
	ld.w	$a1, $s4, -16
	move	$s1, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(jround_up)
	jirl	$ra, $ra, 0
	addi.w	$a5, $s6, 0
	addi.w	$a3, $s1, 0
	addi.w	$a4, $a0, 0
	ori	$a1, $zero, 1
	ori	$a2, $zero, 1
	move	$a0, $s0
	jirl	$ra, $s5, 0
	ld.w	$a1, $s0, 48
	st.d	$a0, $s3, 0
	addi.d	$s2, $s2, 1
	addi.d	$s3, $s3, 8
	addi.d	$s4, $s4, 96
	blt	$s2, $a1, .LBB0_3
.LBB0_4:                                # %for.end
	addi.d	$a1, $fp, 136
	pcalau12i	$a0, %pc_hi20(consume_data)
	addi.d	$a0, $a0, %pc_lo12(consume_data)
	st.d	$a0, $fp, 8
	pcalau12i	$a0, %pc_hi20(decompress_data)
	addi.d	$a0, $a0, %pc_lo12(decompress_data)
	b	.LBB0_6
.LBB0_5:                                # %if.else
	ld.d	$a0, $s0, 8
	ld.d	$a3, $a0, 8
	ori	$a1, $zero, 1
	ori	$a2, $zero, 1280
	move	$a0, $s0
	jirl	$ra, $a3, 0
	move	$a1, $zero
	addi.d	$a2, $a0, 128
	st.d	$a2, $fp, 64
	addi.d	$a2, $a0, 256
	st.d	$a2, $fp, 72
	addi.d	$a2, $a0, 384
	st.d	$a2, $fp, 80
	addi.d	$a2, $a0, 512
	st.d	$a2, $fp, 88
	addi.d	$a2, $a0, 640
	st.d	$a2, $fp, 96
	addi.d	$a2, $a0, 768
	st.d	$a2, $fp, 104
	addi.d	$a2, $a0, 896
	st.d	$a2, $fp, 112
	addi.d	$a2, $a0, 1024
	st.d	$a2, $fp, 120
	st.d	$a0, $fp, 56
	addi.d	$a0, $a0, 1152
	st.d	$a0, $fp, 128
	pcalau12i	$a0, %pc_hi20(dummy_consume_data)
	addi.d	$a0, $a0, %pc_lo12(dummy_consume_data)
	st.d	$a0, $fp, 8
	pcalau12i	$a0, %pc_hi20(decompress_onepass)
	addi.d	$a0, $a0, %pc_lo12(decompress_onepass)
.LBB0_6:                                # %if.end36
	st.d	$a0, $fp, 24
	st.d	$a1, $fp, 32
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
	.size	jinit_d_coef_controller, .Lfunc_end0-jinit_d_coef_controller
                                        # -- End function
	.p2align	5                               # -- Begin function start_input_pass
	.type	start_input_pass,@function
start_input_pass:                       # @start_input_pass
# %bb.0:                                # %entry
	ld.w	$a2, $a0, 416
	ld.d	$a1, $a0, 544
	ori	$a3, $zero, 2
	st.w	$zero, $a0, 168
	blt	$a2, $a3, .LBB1_2
# %bb.1:                                # %if.then.i
	ori	$a0, $zero, 1
	st.w	$a0, $a1, 48
	st.d	$zero, $a1, 40
	ret
.LBB1_2:                                # %if.else.i
	ld.w	$a2, $a0, 400
	ld.d	$a0, $a0, 424
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB1_4
# %bb.3:                                # %if.else5.i
	ld.w	$a0, $a0, 72
	st.w	$a0, $a1, 48
	st.d	$zero, $a1, 40
	ret
.LBB1_4:                                # %if.then3.i
	ld.w	$a0, $a0, 12
	st.w	$a0, $a1, 48
	st.d	$zero, $a1, 40
	ret
.Lfunc_end1:
	.size	start_input_pass, .Lfunc_end1-start_input_pass
                                        # -- End function
	.p2align	5                               # -- Begin function start_output_pass
	.type	start_output_pass,@function
start_output_pass:                      # @start_output_pass
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	ld.d	$s0, $a0, 544
	ld.d	$a1, $s0, 32
	beqz	$a1, .LBB2_21
# %bb.1:                                # %if.then
	ld.w	$a1, $a0, 96
	beqz	$a1, .LBB2_19
# %bb.2:                                # %land.lhs.true
	ld.w	$a1, $a0, 304
	beqz	$a1, .LBB2_19
# %bb.3:                                # %lor.lhs.false.i
	ld.d	$a1, $a0, 184
	beqz	$a1, .LBB2_19
# %bb.4:                                # %if.end.i
	ld.d	$a1, $s0, 216
	beqz	$a1, .LBB2_6
# %bb.5:                                # %if.end7.i
	ld.w	$a3, $a0, 48
	ori	$a2, $zero, 1
	bge	$a3, $a2, .LBB2_7
	b	.LBB2_19
.LBB2_6:                                # %if.then5.i
	ld.d	$a1, $a0, 8
	ld.w	$a2, $a0, 48
	ld.d	$a3, $a1, 0
	slli.d	$a1, $a2, 4
	alsl.d	$a2, $a2, $a1, 3
	ori	$a1, $zero, 1
	move	$fp, $a0
	jirl	$ra, $a3, 0
	move	$a1, $a0
	move	$a0, $fp
	st.d	$a1, $s0, 216
	ld.w	$a3, $a0, 48
	ori	$a2, $zero, 1
	blt	$a3, $a2, .LBB2_19
.LBB2_7:                                # %for.body.preheader.i
	ld.d	$a6, $a0, 296
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $zero
	addi.d	$a6, $a6, 80
	addi.d	$a1, $a1, 12
.LBB2_8:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a6, 0
	beqz	$a7, .LBB2_19
# %bb.9:                                # %if.end15.i
                                        #   in Loop: Header=BB2_8 Depth=1
	ld.hu	$t0, $a7, 0
	beqz	$t0, .LBB2_19
# %bb.10:                               # %lor.lhs.false19.i
                                        #   in Loop: Header=BB2_8 Depth=1
	ld.hu	$t0, $a7, 2
	beqz	$t0, .LBB2_19
# %bb.11:                               # %lor.lhs.false25.i
                                        #   in Loop: Header=BB2_8 Depth=1
	ld.hu	$t0, $a7, 16
	beqz	$t0, .LBB2_19
# %bb.12:                               # %lor.lhs.false31.i
                                        #   in Loop: Header=BB2_8 Depth=1
	ld.hu	$t0, $a7, 32
	beqz	$t0, .LBB2_19
# %bb.13:                               # %lor.lhs.false37.i
                                        #   in Loop: Header=BB2_8 Depth=1
	ld.hu	$t0, $a7, 18
	beqz	$t0, .LBB2_19
# %bb.14:                               # %lor.lhs.false43.i
                                        #   in Loop: Header=BB2_8 Depth=1
	ld.hu	$a7, $a7, 4
	beqz	$a7, .LBB2_19
# %bb.15:                               # %if.end50.i
                                        #   in Loop: Header=BB2_8 Depth=1
	ld.d	$a7, $a0, 184
	ldx.w	$t0, $a7, $a3
	bltz	$t0, .LBB2_19
# %bb.16:                               # %for.body61.preheader.i
                                        #   in Loop: Header=BB2_8 Depth=1
	add.d	$a7, $a7, $a3
	ld.w	$t0, $a7, 4
	st.w	$t0, $a1, -8
	ld.w	$t1, $a7, 8
	st.w	$t1, $a1, -4
	ld.w	$t2, $a7, 12
	st.w	$t2, $a1, 0
	ld.w	$t3, $a7, 16
	st.w	$t3, $a1, 4
	ld.w	$a7, $a7, 20
	or	$t0, $t1, $t0
	or	$t0, $t2, $t0
	st.w	$a7, $a1, 8
	or	$a7, $a7, $t3
	or	$a7, $a7, $t0
	sltui	$a7, $a7, 1
	masknez	$t0, $a2, $a7
	maskeqz	$a5, $a5, $a7
	or	$a5, $a5, $t0
	ld.w	$a7, $a0, 48
	addi.d	$a4, $a4, 1
	addi.d	$a3, $a3, 256
	addi.d	$a6, $a6, 96
	addi.d	$a1, $a1, 24
	blt	$a4, $a7, .LBB2_8
# %bb.17:                               # %smoothing_ok.exit
	beqz	$a5, .LBB2_19
# %bb.18:
	pcalau12i	$a1, %pc_hi20(decompress_smooth_data)
	addi.d	$a1, $a1, %pc_lo12(decompress_smooth_data)
	b	.LBB2_20
.LBB2_19:                               # %if.else
	pcalau12i	$a1, %pc_hi20(decompress_data)
	addi.d	$a1, $a1, %pc_lo12(decompress_data)
.LBB2_20:                               # %if.end7.sink.split
	st.d	$a1, $s0, 24
.LBB2_21:                               # %if.end7
	st.w	$zero, $a0, 176
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end2:
	.size	start_output_pass, .Lfunc_end2-start_output_pass
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function consume_data
.LCPI3_0:
	.dword	0                               # 0x0
	.dword	128                             # 0x80
	.dword	256                             # 0x100
	.dword	384                             # 0x180
.LCPI3_1:
	.dword	512                             # 0x200
	.dword	640                             # 0x280
	.dword	768                             # 0x300
	.dword	896                             # 0x380
	.text
	.p2align	5
	.type	consume_data,@function
consume_data:                           # @consume_data
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
	move	$fp, $a0
	ld.w	$a0, $a0, 416
	ld.d	$s1, $fp, 544
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB3_3
# %bb.1:                                # %for.body.lr.ph
	move	$s0, $zero
	move	$s2, $zero
	addi.d	$s3, $s1, 136
	addi.d	$s4, $sp, 8
	.p2align	4, , 16
.LBB3_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a0, $fp, $s0
	ld.d	$a0, $a0, 424
	ld.d	$a1, $fp, 8
	ld.w	$a2, $a0, 4
	ld.d	$a5, $a1, 64
	slli.d	$a1, $a2, 3
	ld.w	$a2, $fp, 168
	ld.w	$a3, $a0, 12
	ldx.d	$a1, $s3, $a1
	mul.w	$a2, $a3, $a2
	ori	$a4, $zero, 1
	move	$a0, $fp
	jirl	$ra, $a5, 0
	ld.w	$a1, $fp, 416
	stx.d	$a0, $s0, $s4
	addi.d	$s2, $s2, 1
	addi.d	$s0, $s0, 8
	blt	$s2, $a1, .LBB3_2
.LBB3_3:                                # %for.end
	ld.w	$s2, $s1, 44
	ld.w	$a0, $s1, 48
	bge	$s2, $a0, .LBB3_24
# %bb.4:                                # %for.body9.lr.ph
	addi.d	$s3, $fp, 424
	addi.d	$s0, $s1, 56
	ld.w	$s8, $s1, 40
	ld.w	$a1, $fp, 456
	addi.d	$s4, $s1, 88
	ori	$s5, $zero, 1
	addi.d	$s6, $sp, 8
	ori	$s7, $zero, 8
	b	.LBB3_7
	.p2align	4, , 16
.LBB3_5:                                # %for.end50.loopexit
                                        #   in Loop: Header=BB3_7 Depth=1
	ld.w	$a0, $s1, 48
.LBB3_6:                                # %for.end50
                                        #   in Loop: Header=BB3_7 Depth=1
	move	$s8, $zero
	addi.d	$s2, $s2, 1
	st.w	$zero, $s1, 40
	bge	$s2, $a0, .LBB3_24
.LBB3_7:                                # %for.body9
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_8 Depth 2
                                        #       Child Loop BB3_11 Depth 3
                                        #         Child Loop BB3_15 Depth 4
                                        #           Child Loop BB3_18 Depth 5
                                        #           Child Loop BB3_21 Depth 5
	bgeu	$s8, $a1, .LBB3_6
	.p2align	4, , 16
.LBB3_8:                                # %for.cond13.preheader
                                        #   Parent Loop BB3_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_11 Depth 3
                                        #         Child Loop BB3_15 Depth 4
                                        #           Child Loop BB3_18 Depth 5
                                        #           Child Loop BB3_21 Depth 5
	ld.w	$a0, $fp, 416
	blt	$a0, $s5, .LBB3_22
# %bb.9:                                # %for.body16.preheader
                                        #   in Loop: Header=BB3_8 Depth=2
	move	$a1, $zero
	move	$a2, $zero
	b	.LBB3_11
	.p2align	4, , 16
.LBB3_10:                               # %for.inc41
                                        #   in Loop: Header=BB3_11 Depth=3
	addi.d	$a1, $a1, 1
	beq	$a1, $a0, .LBB3_22
.LBB3_11:                               # %for.body16
                                        #   Parent Loop BB3_7 Depth=1
                                        #     Parent Loop BB3_8 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_15 Depth 4
                                        #           Child Loop BB3_18 Depth 5
                                        #           Child Loop BB3_21 Depth 5
	slli.d	$a5, $a1, 3
	ldx.d	$a4, $s3, $a5
	ld.w	$a3, $a4, 56
	blt	$a3, $s5, .LBB3_10
# %bb.12:                               # %for.body23.lr.ph
                                        #   in Loop: Header=BB3_11 Depth=3
	ld.w	$a4, $a4, 52
	blt	$a4, $s5, .LBB3_10
# %bb.13:                               # %for.body23.us.preheader
                                        #   in Loop: Header=BB3_11 Depth=3
	ldx.d	$a6, $a5, $s6
	move	$a5, $zero
	mul.d	$a7, $a4, $s8
	bstrpick.d	$t2, $a7, 31, 0
	alsl.d	$a6, $s2, $a6, 3
	bstrpick.d	$t0, $a4, 30, 3
	slli.d	$a7, $t0, 3
	slli.d	$t0, $t0, 10
	sub.d	$t1, $zero, $a4
	slli.d	$t2, $t2, 7
	b	.LBB3_15
	.p2align	4, , 16
.LBB3_14:                               # %for.cond28.for.inc38_crit_edge.us
                                        #   in Loop: Header=BB3_15 Depth=4
	addi.d	$a5, $a5, 1
	add.w	$a2, $a2, $a4
	beq	$a5, $a3, .LBB3_10
.LBB3_15:                               # %for.body23.us
                                        #   Parent Loop BB3_7 Depth=1
                                        #     Parent Loop BB3_8 Depth=2
                                        #       Parent Loop BB3_11 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB3_18 Depth 5
                                        #           Child Loop BB3_21 Depth 5
	slli.d	$t3, $a5, 3
	ldx.d	$t3, $a6, $t3
	add.d	$t5, $t3, $t2
	bgeu	$a4, $s7, .LBB3_17
# %bb.16:                               #   in Loop: Header=BB3_15 Depth=4
	move	$t4, $a2
	move	$t3, $t5
	b	.LBB3_20
	.p2align	4, , 16
.LBB3_17:                               # %vector.ph
                                        #   in Loop: Header=BB3_15 Depth=4
	alsl.d	$t6, $a2, $s4, 3
	add.d	$t4, $a7, $a2
	add.d	$t3, $t5, $t0
	move	$t7, $a7
	.p2align	4, , 16
.LBB3_18:                               # %vector.body
                                        #   Parent Loop BB3_7 Depth=1
                                        #     Parent Loop BB3_8 Depth=2
                                        #       Parent Loop BB3_11 Depth=3
                                        #         Parent Loop BB3_15 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	pcalau12i	$t8, %pc_hi20(.LCPI3_0)
	xvld	$xr0, $t8, %pc_lo12(.LCPI3_0)
	pcalau12i	$t8, %pc_hi20(.LCPI3_1)
	xvld	$xr1, $t8, %pc_lo12(.LCPI3_1)
	xvreplgr2vr.d	$xr2, $t5
	xvadd.d	$xr0, $xr2, $xr0
	xvadd.d	$xr1, $xr2, $xr1
	xvst	$xr0, $t6, -32
	xvst	$xr1, $t6, 0
	addi.d	$t5, $t5, 1024
	addi.d	$t7, $t7, -8
	addi.d	$t6, $t6, 64
	bnez	$t7, .LBB3_18
# %bb.19:                               # %middle.block
                                        #   in Loop: Header=BB3_15 Depth=4
	beq	$a7, $a4, .LBB3_14
.LBB3_20:                               # %for.body31.us.preheader
                                        #   in Loop: Header=BB3_15 Depth=4
	alsl.d	$t5, $t4, $s0, 3
	add.d	$t4, $t1, $t4
	.p2align	4, , 16
.LBB3_21:                               # %for.body31.us
                                        #   Parent Loop BB3_7 Depth=1
                                        #     Parent Loop BB3_8 Depth=2
                                        #       Parent Loop BB3_11 Depth=3
                                        #         Parent Loop BB3_15 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	st.d	$t3, $t5, 0
	addi.d	$t3, $t3, 128
	addi.w	$t4, $t4, 1
	addi.d	$t5, $t5, 8
	bne	$a2, $t4, .LBB3_21
	b	.LBB3_14
	.p2align	4, , 16
.LBB3_22:                               # %for.end43
                                        #   in Loop: Header=BB3_8 Depth=2
	ld.d	$a0, $fp, 576
	ld.d	$a2, $a0, 8
	move	$a0, $fp
	move	$a1, $s0
	jirl	$ra, $a2, 0
	beqz	$a0, .LBB3_27
# %bb.23:                               # %for.inc48
                                        #   in Loop: Header=BB3_8 Depth=2
	ld.w	$a1, $fp, 456
	addi.w	$s8, $s8, 1
	bltu	$s8, $a1, .LBB3_8
	b	.LBB3_5
.LBB3_24:                               # %for.end54
	ld.w	$a0, $fp, 168
	ld.w	$a1, $fp, 400
	addi.w	$a2, $a0, 1
	st.w	$a2, $fp, 168
	bgeu	$a2, $a1, .LBB3_28
# %bb.25:                               # %if.then58
	ld.w	$a3, $fp, 416
	ld.d	$a0, $fp, 544
	ori	$a4, $zero, 2
	blt	$a3, $a4, .LBB3_29
# %bb.26:                               # %if.then.i
	ori	$a1, $zero, 1
	b	.LBB3_32
.LBB3_27:                               # %if.then
	move	$a0, $zero
	st.w	$s2, $s1, 44
	st.w	$s8, $s1, 40
	b	.LBB3_33
.LBB3_28:                               # %if.end59
	ld.d	$a0, $fp, 560
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ori	$a0, $zero, 4
	b	.LBB3_33
.LBB3_29:                               # %if.else.i
	ld.d	$a3, $fp, 424
	addi.w	$a1, $a1, -1
	bgeu	$a2, $a1, .LBB3_31
# %bb.30:                               # %if.then3.i
	ld.w	$a1, $a3, 12
	b	.LBB3_32
.LBB3_31:                               # %if.else5.i
	ld.w	$a1, $a3, 72
.LBB3_32:                               # %start_iMCU_row.exit
	st.w	$a1, $a0, 48
	st.d	$zero, $a0, 40
	ori	$a0, $zero, 3
.LBB3_33:                               # %cleanup
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
.Lfunc_end3:
	.size	consume_data, .Lfunc_end3-consume_data
                                        # -- End function
	.p2align	5                               # -- Begin function decompress_data
	.type	decompress_data,@function
decompress_data:                        # @decompress_data
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
	move	$fp, $a0
	ld.w	$a0, $a0, 400
	ld.d	$s0, $fp, 544
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	addi.w	$a0, $a0, -1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	b	.LBB4_2
	.p2align	4, , 16
.LBB4_1:                                # %while.body
                                        #   in Loop: Header=BB4_2 Depth=1
	ld.d	$a0, $fp, 560
	ld.d	$a1, $a0, 0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB4_20
.LBB4_2:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, 164
	ld.w	$a1, $fp, 172
	blt	$a0, $a1, .LBB4_1
# %bb.3:                                # %lor.rhs
                                        #   in Loop: Header=BB4_2 Depth=1
	bne	$a0, $a1, .LBB4_5
# %bb.4:                                # %land.rhs
                                        #   in Loop: Header=BB4_2 Depth=1
	ld.w	$a0, $fp, 168
	ld.w	$a1, $fp, 176
	bgeu	$a1, $a0, .LBB4_1
.LBB4_5:                                # %while.end
	ld.w	$a0, $fp, 48
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB4_19
# %bb.6:                                # %for.body.lr.ph
	ld.d	$s1, $fp, 296
	move	$s8, $zero
	addi.d	$a0, $s0, 136
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB4_8
	.p2align	4, , 16
.LBB4_7:                                # %for.inc40
                                        #   in Loop: Header=BB4_8 Depth=1
	ld.w	$a0, $fp, 48
	addi.d	$s8, $s8, 1
	addi.d	$s1, $s1, 96
	bge	$s8, $a0, .LBB4_19
.LBB4_8:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_16 Depth 2
                                        #       Child Loop BB4_18 Depth 3
	ld.w	$a0, $s1, 48
	beqz	$a0, .LBB4_7
# %bb.9:                                # %if.end9
                                        #   in Loop: Header=BB4_8 Depth=1
	ld.d	$a0, $fp, 8
	ld.d	$a5, $a0, 64
	slli.d	$s0, $s8, 3
	ld.w	$a0, $fp, 176
	ld.w	$a3, $s1, 12
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ldx.d	$a1, $a1, $s0
	mul.w	$a2, $a3, $a0
	move	$a0, $fp
	move	$a4, $zero
	jirl	$ra, $a5, 0
	ld.w	$a1, $fp, 176
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	bgeu	$a1, $a0, .LBB4_11
# %bb.10:                               # %if.then15
                                        #   in Loop: Header=BB4_8 Depth=1
	ld.wu	$s7, $s1, 12
	addi.w	$a0, $s7, 0
	ori	$a1, $zero, 1
	bge	$a0, $a1, .LBB4_12
	b	.LBB4_7
	.p2align	4, , 16
.LBB4_11:                               # %if.else
                                        #   in Loop: Header=BB4_8 Depth=1
	ld.wu	$a0, $s1, 32
	ld.wu	$a1, $s1, 12
	mod.du	$a0, $a0, $a1
	sltui	$a2, $a0, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$s7, $a1, $a0
	addi.w	$a0, $s7, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB4_7
.LBB4_12:                               # %for.body30.lr.ph
                                        #   in Loop: Header=BB4_8 Depth=1
	ld.w	$a0, $s1, 28
	beqz	$a0, .LBB4_7
# %bb.13:                               # %for.body30.preheader
                                        #   in Loop: Header=BB4_8 Depth=1
	ld.d	$a0, $fp, 584
	alsl.d	$a0, $s8, $a0, 3
	ld.d	$s6, $a0, 8
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ldx.d	$s3, $a0, $s0
	move	$s0, $zero
	ori	$a0, $zero, 1
	b	.LBB4_16
	.p2align	4, , 16
.LBB4_14:                               # %for.body30.for.end_crit_edge
                                        #   in Loop: Header=BB4_16 Depth=2
	ld.w	$a1, $s1, 36
	move	$a0, $zero
.LBB4_15:                               # %for.end
                                        #   in Loop: Header=BB4_16 Depth=2
	addi.d	$s0, $s0, 1
	alsl.d	$s3, $a1, $s3, 3
	beq	$s0, $s7, .LBB4_7
.LBB4_16:                               # %for.body30
                                        #   Parent Loop BB4_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_18 Depth 3
	beqz	$a0, .LBB4_14
# %bb.17:                               # %for.body35.preheader
                                        #   in Loop: Header=BB4_16 Depth=2
	slli.d	$a0, $s0, 3
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ldx.d	$s4, $a1, $a0
	move	$s5, $zero
	move	$s2, $zero
	.p2align	4, , 16
.LBB4_18:                               # %for.body35
                                        #   Parent Loop BB4_8 Depth=1
                                        #     Parent Loop BB4_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s4
	move	$a3, $s3
	move	$a4, $s5
	jirl	$ra, $s6, 0
	ld.w	$a1, $s1, 36
	ld.w	$a0, $s1, 28
	addi.d	$s4, $s4, 128
	addi.w	$s2, $s2, 1
	add.w	$s5, $a1, $s5
	bltu	$s2, $a0, .LBB4_18
	b	.LBB4_15
.LBB4_19:                               # %for.end43
	ld.w	$a0, $fp, 176
	ld.w	$a1, $fp, 400
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, 176
	sltu	$a0, $a0, $a1
	ori	$a1, $zero, 4
	sub.d	$a0, $a1, $a0
	b	.LBB4_21
.LBB4_20:
	move	$a0, $zero
.LBB4_21:                               # %cleanup
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
.Lfunc_end4:
	.size	decompress_data, .Lfunc_end4-decompress_data
                                        # -- End function
	.p2align	5                               # -- Begin function dummy_consume_data
	.type	dummy_consume_data,@function
dummy_consume_data:                     # @dummy_consume_data
# %bb.0:                                # %entry
	move	$a0, $zero
	ret
.Lfunc_end5:
	.size	dummy_consume_data, .Lfunc_end5-dummy_consume_data
                                        # -- End function
	.p2align	5                               # -- Begin function decompress_onepass
	.type	decompress_onepass,@function
decompress_onepass:                     # @decompress_onepass
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a3, $a0, 544
	ld.w	$a4, $a3, 44
	ld.w	$a0, $a3, 48
	ld.w	$a2, $fp, 400
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	st.d	$a4, $sp, 56                    # 8-byte Folded Spill
	bge	$a4, $a0, .LBB6_24
# %bb.1:                                # %for.body.lr.ph
	ld.w	$a1, $fp, 456
	addi.w	$a1, $a1, -1
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	addi.w	$a1, $a2, -1
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	addi.d	$a1, $a3, 56
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	addi.d	$s1, $fp, 424
	ld.w	$s4, $a3, 40
	ori	$s3, $zero, 1
	move	$a1, $a3
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
.LBB6_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_4 Depth 2
                                        #       Child Loop BB6_9 Depth 3
                                        #         Child Loop BB6_14 Depth 4
                                        #           Child Loop BB6_17 Depth 5
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	bgeu	$a2, $s4, .LBB6_4
	b	.LBB6_22
	.p2align	4, , 16
.LBB6_3:                                # %for.inc58
                                        #   in Loop: Header=BB6_4 Depth=2
	addi.w	$s4, $s4, 1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	bltu	$a0, $s4, .LBB6_21
.LBB6_4:                                # %for.body5
                                        #   Parent Loop BB6_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_9 Depth 3
                                        #         Child Loop BB6_14 Depth 4
                                        #           Child Loop BB6_17 Depth 5
	ld.w	$a1, $fp, 464
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $s0, 0
	slli.d	$a1, $a1, 7
	pcaddu18i	$ra, %call36(jzero_far)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 576
	ld.d	$a2, $a0, 8
	move	$a0, $fp
	move	$a1, $s0
	jirl	$ra, $a2, 0
	beqz	$a0, .LBB6_27
# %bb.5:                                # %for.cond9.preheader
                                        #   in Loop: Header=BB6_4 Depth=2
	ld.w	$a1, $fp, 416
	blt	$a1, $s3, .LBB6_3
# %bb.6:                                # %for.body12.lr.ph
                                        #   in Loop: Header=BB6_4 Depth=2
	move	$a6, $zero
	move	$s5, $zero
	st.d	$s4, $sp, 32                    # 8-byte Folded Spill
	b	.LBB6_9
	.p2align	4, , 16
.LBB6_7:                                # %if.then15
                                        #   in Loop: Header=BB6_9 Depth=3
	ld.w	$a0, $s2, 60
	add.w	$s5, $a0, $s5
.LBB6_8:                                # %for.inc55
                                        #   in Loop: Header=BB6_9 Depth=3
	addi.d	$a6, $a6, 1
	bge	$a6, $a1, .LBB6_3
.LBB6_9:                                # %for.body12
                                        #   Parent Loop BB6_2 Depth=1
                                        #     Parent Loop BB6_4 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB6_14 Depth 4
                                        #           Child Loop BB6_17 Depth 5
	slli.d	$a2, $a6, 3
	ldx.d	$s2, $s1, $a2
	ld.w	$a0, $s2, 48
	beqz	$a0, .LBB6_7
# %bb.10:                               # %if.end16
                                        #   in Loop: Header=BB6_9 Depth=3
	ld.w	$a0, $s2, 56
	blt	$a0, $s3, .LBB6_8
# %bb.11:                               # %for.body29.lr.ph
                                        #   in Loop: Header=BB6_9 Depth=3
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	sltu	$a3, $s4, $a3
	ori	$a4, $zero, 68
	masknez	$a4, $a4, $a3
	ori	$a5, $zero, 52
	maskeqz	$a3, $a5, $a3
	or	$a3, $a3, $a4
	ldx.w	$a3, $s2, $a3
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	blt	$a3, $s3, .LBB6_20
# %bb.12:                               # %for.body29.us.preheader
                                        #   in Loop: Header=BB6_9 Depth=3
	st.d	$a6, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a1, $fp, 584
	ld.w	$a3, $s2, 4
	move	$s6, $zero
	alsl.d	$a3, $a3, $a1, 3
	ld.w	$a4, $s2, 64
	ld.w	$a1, $s2, 36
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	ldx.d	$a2, $a5, $a2
	ld.d	$s1, $a3, 8
	mul.w	$s8, $a4, $s4
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	mul.w	$a3, $a1, $a3
	alsl.d	$s3, $a3, $a2, 3
	b	.LBB6_14
	.p2align	4, , 16
.LBB6_13:                               # %if.end46.us
                                        #   in Loop: Header=BB6_14 Depth=4
	ld.w	$a2, $s2, 52
	add.w	$s5, $a2, $s5
	addi.w	$s6, $s6, 1
	alsl.d	$s3, $a1, $s3, 3
	bge	$s6, $a0, .LBB6_19
.LBB6_14:                               # %for.body29.us
                                        #   Parent Loop BB6_2 Depth=1
                                        #     Parent Loop BB6_4 Depth=2
                                        #       Parent Loop BB6_9 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB6_17 Depth 5
	ld.w	$a2, $fp, 168
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	bltu	$a2, $a3, .LBB6_16
# %bb.15:                               # %lor.lhs.false.us
                                        #   in Loop: Header=BB6_14 Depth=4
	ld.w	$a2, $s2, 72
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	add.w	$a3, $s6, $a3
	bge	$a3, $a2, .LBB6_13
.LBB6_16:                               # %if.then35.us
                                        #   in Loop: Header=BB6_14 Depth=4
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$s0, $s5, $a0, 3
	ld.d	$s7, $sp, 72                    # 8-byte Folded Reload
	move	$s4, $s8
	.p2align	4, , 16
.LBB6_17:                               # %for.body39.us
                                        #   Parent Loop BB6_2 Depth=1
                                        #     Parent Loop BB6_4 Depth=2
                                        #       Parent Loop BB6_9 Depth=3
                                        #         Parent Loop BB6_14 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.d	$a2, $s0, 0
	move	$a0, $fp
	move	$a1, $s2
	move	$a3, $s3
	move	$a4, $s4
	jirl	$ra, $s1, 0
	ld.w	$a1, $s2, 36
	add.w	$s4, $a1, $s4
	addi.d	$s7, $s7, -1
	addi.d	$s0, $s0, 8
	bnez	$s7, .LBB6_17
# %bb.18:                               # %if.end46.us.loopexit
                                        #   in Loop: Header=BB6_14 Depth=4
	ld.w	$a0, $s2, 56
	b	.LBB6_13
	.p2align	4, , 16
.LBB6_19:                               # %for.inc55.loopexit
                                        #   in Loop: Header=BB6_9 Depth=3
	ld.w	$a1, $fp, 416
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ori	$s3, $zero, 1
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 48                    # 8-byte Folded Reload
	b	.LBB6_8
.LBB6_20:                               # %for.body29.lr.ph.split
                                        #   in Loop: Header=BB6_9 Depth=3
	ld.w	$a2, $s2, 52
	mul.d	$a0, $a2, $a0
	add.w	$s5, $s5, $a0
	b	.LBB6_8
	.p2align	4, , 16
.LBB6_21:                               # %for.end60.loopexit
                                        #   in Loop: Header=BB6_2 Depth=1
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a0, $a1, 48
.LBB6_22:                               # %for.end60
                                        #   in Loop: Header=BB6_2 Depth=1
	move	$s4, $zero
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	st.w	$zero, $a1, 40
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	blt	$a2, $a0, .LBB6_2
# %bb.23:                               # %for.end64.loopexit
	ld.w	$a2, $fp, 400
.LBB6_24:                               # %for.end64
	ld.w	$a0, $fp, 176
	ld.w	$a1, $fp, 168
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 176
	addi.w	$a1, $a1, 1
	st.w	$a1, $fp, 168
	bgeu	$a1, $a2, .LBB6_28
# %bb.25:                               # %if.then71
	ld.w	$a3, $fp, 416
	ld.d	$a0, $fp, 544
	ori	$a4, $zero, 2
	blt	$a3, $a4, .LBB6_29
# %bb.26:                               # %if.then.i
	ori	$a1, $zero, 1
	b	.LBB6_32
.LBB6_27:                               # %if.then
	move	$a0, $zero
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	st.w	$a2, $a1, 44
	st.w	$s4, $a1, 40
	b	.LBB6_33
.LBB6_28:                               # %if.end72
	ld.d	$a0, $fp, 560
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ori	$a0, $zero, 4
	b	.LBB6_33
.LBB6_29:                               # %if.else.i
	ld.d	$a3, $fp, 424
	addi.w	$a2, $a2, -1
	bgeu	$a1, $a2, .LBB6_31
# %bb.30:                               # %if.then3.i
	ld.w	$a1, $a3, 12
	b	.LBB6_32
.LBB6_31:                               # %if.else5.i
	ld.w	$a1, $a3, 72
.LBB6_32:                               # %start_iMCU_row.exit
	st.w	$a1, $a0, 48
	st.d	$zero, $a0, 40
	ori	$a0, $zero, 3
.LBB6_33:                               # %cleanup
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.Lfunc_end6:
	.size	decompress_onepass, .Lfunc_end6-decompress_onepass
                                        # -- End function
	.p2align	5                               # -- Begin function decompress_smooth_data
	.type	decompress_smooth_data,@function
decompress_smooth_data:                 # @decompress_smooth_data
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -496
	st.d	$ra, $sp, 488                   # 8-byte Folded Spill
	st.d	$fp, $sp, 480                   # 8-byte Folded Spill
	st.d	$s0, $sp, 472                   # 8-byte Folded Spill
	st.d	$s1, $sp, 464                   # 8-byte Folded Spill
	st.d	$s2, $sp, 456                   # 8-byte Folded Spill
	st.d	$s3, $sp, 448                   # 8-byte Folded Spill
	st.d	$s4, $sp, 440                   # 8-byte Folded Spill
	st.d	$s5, $sp, 432                   # 8-byte Folded Spill
	st.d	$s6, $sp, 424                   # 8-byte Folded Spill
	st.d	$s7, $sp, 416                   # 8-byte Folded Spill
	st.d	$s8, $sp, 408                   # 8-byte Folded Spill
	move	$s6, $a0
	ld.w	$a0, $a0, 400
	ld.d	$a2, $s6, 544
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	addi.w	$a0, $a0, -1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	b	.LBB7_2
	.p2align	4, , 16
.LBB7_1:                                # %if.end8
                                        #   in Loop: Header=BB7_2 Depth=1
	ld.d	$a1, $a0, 0
	move	$a0, $s6
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB7_62
.LBB7_2:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s6, 164
	ld.w	$a2, $s6, 172
	blt	$a2, $a1, .LBB7_6
# %bb.3:                                # %land.rhs
                                        #   in Loop: Header=BB7_2 Depth=1
	ld.d	$a0, $s6, 560
	ld.w	$a3, $a0, 36
	bnez	$a3, .LBB7_6
# %bb.4:                                # %while.body
                                        #   in Loop: Header=BB7_2 Depth=1
	bne	$a1, $a2, .LBB7_1
# %bb.5:                                # %if.then
                                        #   in Loop: Header=BB7_2 Depth=1
	ld.w	$a1, $s6, 508
	ld.w	$a2, $s6, 176
	ld.w	$a3, $s6, 168
	sltui	$a1, $a1, 1
	add.w	$a1, $a2, $a1
	bgeu	$a1, $a3, .LBB7_1
.LBB7_6:                                # %while.end
	ld.w	$a0, $s6, 48
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB7_61
# %bb.7:                                # %for.body.lr.ph
	ld.d	$s0, $s6, 296
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 136
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 184                   # 8-byte Folded Spill
	b	.LBB7_9
	.p2align	4, , 16
.LBB7_8:                                # %for.inc396
                                        #   in Loop: Header=BB7_9 Depth=1
	ld.w	$a0, $s6, 48
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	addi.d	$s0, $s0, 96
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	bge	$a1, $a0, .LBB7_61
.LBB7_9:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_17 Depth 2
                                        #       Child Loop BB7_26 Depth 3
	ld.w	$a0, $s0, 48
	beqz	$a0, .LBB7_8
# %bb.10:                               # %if.end16
                                        #   in Loop: Header=BB7_9 Depth=1
	ld.w	$s1, $s6, 176
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	bltu	$s1, $a0, .LBB7_13
# %bb.11:                               # %if.else
                                        #   in Loop: Header=BB7_9 Depth=1
	ld.w	$a1, $s0, 32
	ld.w	$a0, $s0, 12
	mod.wu	$a1, $a1, $a0
	sltui	$a2, $a1, 1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a3, $a2, $a1
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	slli.d	$fp, $a1, 3
	beqz	$s1, .LBB7_14
.LBB7_12:                               # %if.then28
                                        #   in Loop: Header=BB7_9 Depth=1
	ld.d	$a1, $s6, 8
	ld.d	$a5, $a1, 64
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ldx.d	$a1, $a1, $fp
	add.w	$a3, $a0, $a3
	addi.d	$a2, $s1, -1
	mul.w	$a2, $a0, $a2
	move	$a0, $s6
	move	$a4, $zero
	jirl	$ra, $a5, 0
	ld.w	$a1, $s0, 12
	alsl.d	$a0, $a1, $a0, 3
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	bge	$a1, $a0, .LBB7_15
	b	.LBB7_8
	.p2align	4, , 16
.LBB7_13:                               # %if.then19
                                        #   in Loop: Header=BB7_9 Depth=1
	ld.w	$a0, $s0, 12
	slli.w	$a3, $a0, 1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	slli.d	$fp, $a1, 3
	bnez	$s1, .LBB7_12
.LBB7_14:                               # %if.else37
                                        #   in Loop: Header=BB7_9 Depth=1
	ld.d	$a0, $s6, 8
	ld.d	$a5, $a0, 64
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ldx.d	$a1, $a0, $fp
	move	$a0, $s6
	move	$a2, $zero
	move	$a4, $zero
	jirl	$ra, $a5, 0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	blt	$a1, $a0, .LBB7_8
.LBB7_15:                               # %for.body72.lr.ph
                                        #   in Loop: Header=BB7_9 Depth=1
	ld.d	$a0, $s6, 584
	move	$t1, $zero
	ld.d	$a1, $s0, 80
	ld.d	$t0, $sp, 40                    # 8-byte Folded Reload
	alsl.d	$a0, $t0, $a0, 3
	ld.d	$a0, $a0, 8
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ldx.d	$a0, $a0, $fp
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	ld.hu	$a0, $a1, 4
	ld.hu	$a2, $a1, 18
	ld.hu	$a3, $a1, 32
	ld.hu	$a4, $a1, 16
	ld.hu	$a5, $a1, 2
	ld.d	$a6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a6, $a6, 216
	ld.hu	$a1, $a1, 0
	slli.d	$a7, $t0, 4
	alsl.d	$a7, $t0, $a7, 3
	add.d	$a6, $a6, $a7
	st.d	$a6, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a6, $sp, 80                    # 8-byte Folded Reload
	addi.w	$a6, $a6, -1
	st.d	$a6, $sp, 48                    # 8-byte Folded Spill
	slli.d	$a6, $a1, 5
	alsl.d	$a6, $a1, $a6, 2
	st.d	$a6, $sp, 208                   # 8-byte Folded Spill
	slli.d	$a6, $a5, 7
	st.d	$a6, $sp, 176                   # 8-byte Folded Spill
	slli.d	$a5, $a5, 8
	st.d	$a5, $sp, 168                   # 8-byte Folded Spill
	slli.d	$a5, $a4, 7
	st.d	$a5, $sp, 160                   # 8-byte Folded Spill
	slli.d	$a4, $a4, 8
	st.d	$a4, $sp, 152                   # 8-byte Folded Spill
	alsl.d	$a4, $a1, $a1, 3
	st.d	$a4, $sp, 200                   # 8-byte Folded Spill
	slli.d	$a4, $a3, 7
	st.d	$a4, $sp, 144                   # 8-byte Folded Spill
	slli.d	$a3, $a3, 8
	st.d	$a3, $sp, 136                   # 8-byte Folded Spill
	alsl.d	$a1, $a1, $a1, 2
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	slli.d	$a1, $a2, 7
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	slli.d	$a1, $a2, 8
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	slli.d	$a1, $a0, 7
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 8
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 224                   # 8-byte Folded Spill
	st.d	$s1, $sp, 56                    # 8-byte Folded Spill
	b	.LBB7_17
	.p2align	4, , 16
.LBB7_16:                               # %for.end
                                        #   in Loop: Header=BB7_17 Depth=2
	ld.d	$t1, $sp, 88                    # 8-byte Folded Reload
	addi.d	$t1, $t1, 1
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	ld.d	$s0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	beq	$t1, $a0, .LBB7_8
.LBB7_17:                               # %for.body72
                                        #   Parent Loop BB7_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_26 Depth 3
	slli.d	$a0, $t1, 3
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ldx.d	$s4, $a2, $a0
	or	$a0, $s1, $t1
	addi.w	$a1, $a0, 0
	alsl.d	$a2, $t1, $a2, 3
	move	$a0, $s4
	beqz	$a1, .LBB7_19
# %bb.18:                               # %if.else79
                                        #   in Loop: Header=BB7_17 Depth=2
	ld.d	$a0, $a2, -8
.LBB7_19:                               # %if.end83
                                        #   in Loop: Header=BB7_17 Depth=2
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	bltu	$s1, $a1, .LBB7_21
# %bb.20:                               # %if.end83
                                        #   in Loop: Header=BB7_17 Depth=2
	move	$a1, $s4
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	beq	$t1, $a3, .LBB7_22
.LBB7_21:                               # %if.else90
                                        #   in Loop: Header=BB7_17 Depth=2
	ld.d	$a1, $a2, 8
.LBB7_22:                               # %if.end94
                                        #   in Loop: Header=BB7_17 Depth=2
	st.d	$t1, $sp, 88                    # 8-byte Folded Spill
	ld.h	$s7, $a0, 0
	ld.w	$a2, $s0, 28
	ld.h	$s0, $s4, 0
	ld.h	$fp, $a1, 0
	move	$s2, $zero
	move	$s5, $zero
	addi.w	$a2, $a2, -1
	addi.d	$a0, $a0, 128
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	addi.d	$s1, $a1, 128
	move	$s8, $fp
	st.d	$s0, $sp, 272                   # 8-byte Folded Spill
	st.d	$s7, $sp, 248                   # 8-byte Folded Spill
	st.d	$s7, $sp, 264                   # 8-byte Folded Spill
	move	$s7, $a2
	b	.LBB7_26
.LBB7_23:                               # %if.else365
                                        #   in Loop: Header=BB7_26 Depth=3
	slt	$a2, $zero, $a0
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	sub.d	$a1, $a3, $a1
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	div.du	$a1, $a1, $a3
	addi.w	$a3, $a1, 0
	addi.d	$a4, $zero, -1
	sll.w	$a0, $a4, $a0
	nor	$a0, $a0, $zero
	addi.w	$a0, $a0, 0
	slt	$a4, $a3, $a0
	masknez	$a0, $a0, $a4
	maskeqz	$a3, $a3, $a4
	or	$a0, $a3, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	sub.d	$a1, $zero, $a0
.LBB7_24:                               # %if.end382
                                        #   in Loop: Header=BB7_26 Depth=3
	st.h	$a1, $sp, 284
.LBB7_25:                               # %if.end385
                                        #   in Loop: Header=BB7_26 Depth=3
	addi.d	$a2, $sp, 280
	ld.d	$s6, $sp, 184                   # 8-byte Folded Reload
	move	$a0, $s6
	move	$fp, $s0
	ld.d	$s0, $sp, 224                   # 8-byte Folded Reload
	move	$a1, $s0
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	move	$a4, $s5
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	jirl	$ra, $a5, 0
	ld.w	$a0, $s0, 36
	move	$s0, $fp
	addi.d	$s4, $s4, 128
	add.w	$s5, $a0, $s5
	addi.w	$s2, $s2, 1
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 128
	st.d	$a1, $sp, 256                   # 8-byte Folded Spill
	addi.d	$s1, $s1, 128
	move	$fp, $s7
	move	$s7, $s3
	bltu	$s3, $s2, .LBB7_16
.LBB7_26:                               # %for.body108
                                        #   Parent Loop BB7_9 Depth=1
                                        #     Parent Loop BB7_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	ld.d	$s3, $sp, 272                   # 8-byte Folded Reload
	st.d	$s0, $sp, 272                   # 8-byte Folded Spill
	move	$s6, $fp
	addi.d	$a1, $sp, 280
	ori	$a2, $zero, 1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(jcopy_block_row)
	jirl	$ra, $ra, 0
	bgeu	$s2, $s7, .LBB7_28
# %bb.27:                               # %if.then111
                                        #   in Loop: Header=BB7_26 Depth=3
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.h	$a0, $a0, 0
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	ld.h	$s0, $s4, 128
	ld.h	$fp, $s1, 0
.LBB7_28:                               # %if.end121
                                        #   in Loop: Header=BB7_26 Depth=3
	ld.d	$a5, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a0, $a5, 4
	beqz	$a0, .LBB7_35
# %bb.29:                               # %if.end121
                                        #   in Loop: Header=BB7_26 Depth=3
	ld.hu	$a1, $sp, 282
	bnez	$a1, .LBB7_35
# %bb.30:                               # %if.then130
                                        #   in Loop: Header=BB7_26 Depth=3
	sub.w	$a1, $s3, $s0
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	mul.d	$a1, $a2, $a1
	bltz	$a1, .LBB7_33
# %bb.31:                               # %if.then137
                                        #   in Loop: Header=BB7_26 Depth=3
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	div.du	$a1, $a1, $a2
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB7_34
# %bb.32:                               # %land.lhs.true143
                                        #   in Loop: Header=BB7_26 Depth=3
	addi.w	$a1, $a1, 0
	addi.d	$a2, $zero, -1
	sll.w	$a0, $a2, $a0
	nor	$a0, $a0, $zero
	addi.w	$a0, $a0, 0
	slt	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $a0
	b	.LBB7_34
.LBB7_33:                               # %if.else151
                                        #   in Loop: Header=BB7_26 Depth=3
	slt	$a2, $zero, $a0
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	sub.d	$a1, $a3, $a1
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	div.du	$a1, $a1, $a3
	addi.w	$a3, $a1, 0
	addi.d	$a4, $zero, -1
	sll.w	$a0, $a4, $a0
	nor	$a0, $a0, $zero
	addi.w	$a0, $a0, 0
	slt	$a4, $a3, $a0
	masknez	$a0, $a0, $a4
	maskeqz	$a3, $a3, $a4
	or	$a0, $a3, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	sub.d	$a1, $zero, $a0
.LBB7_34:                               # %if.end168
                                        #   in Loop: Header=BB7_26 Depth=3
	st.h	$a1, $sp, 282
.LBB7_35:                               # %if.end171
                                        #   in Loop: Header=BB7_26 Depth=3
	ld.w	$a0, $a5, 8
	beqz	$a0, .LBB7_42
# %bb.36:                               # %if.end171
                                        #   in Loop: Header=BB7_26 Depth=3
	ld.hu	$a1, $sp, 296
	bnez	$a1, .LBB7_42
# %bb.37:                               # %if.then180
                                        #   in Loop: Header=BB7_26 Depth=3
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	sub.w	$a1, $a1, $s6
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	mul.d	$a1, $a2, $a1
	bltz	$a1, .LBB7_40
# %bb.38:                               # %if.then187
                                        #   in Loop: Header=BB7_26 Depth=3
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	div.du	$a1, $a1, $a2
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB7_41
# %bb.39:                               # %land.lhs.true195
                                        #   in Loop: Header=BB7_26 Depth=3
	addi.w	$a1, $a1, 0
	addi.d	$a2, $zero, -1
	sll.w	$a0, $a2, $a0
	nor	$a0, $a0, $zero
	addi.w	$a0, $a0, 0
	slt	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $a0
	b	.LBB7_41
.LBB7_40:                               # %if.else203
                                        #   in Loop: Header=BB7_26 Depth=3
	slt	$a2, $zero, $a0
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	sub.d	$a1, $a3, $a1
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	div.du	$a1, $a1, $a3
	addi.w	$a3, $a1, 0
	addi.d	$a4, $zero, -1
	sll.w	$a0, $a4, $a0
	nor	$a0, $a0, $zero
	addi.w	$a0, $a0, 0
	slt	$a4, $a3, $a0
	masknez	$a0, $a0, $a4
	maskeqz	$a3, $a3, $a4
	or	$a0, $a3, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	sub.d	$a1, $zero, $a0
.LBB7_41:                               # %if.end220
                                        #   in Loop: Header=BB7_26 Depth=3
	st.h	$a1, $sp, 296
.LBB7_42:                               # %if.end223
                                        #   in Loop: Header=BB7_26 Depth=3
	ld.w	$a0, $a5, 12
	beqz	$a0, .LBB7_49
# %bb.43:                               # %if.end223
                                        #   in Loop: Header=BB7_26 Depth=3
	ld.hu	$a1, $sp, 312
	bnez	$a1, .LBB7_49
# %bb.44:                               # %if.then232
                                        #   in Loop: Header=BB7_26 Depth=3
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	sub.d	$a1, $a2, $a1
	add.w	$a1, $a1, $s6
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	mul.d	$a1, $a2, $a1
	bltz	$a1, .LBB7_47
# %bb.45:                               # %if.then241
                                        #   in Loop: Header=BB7_26 Depth=3
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	div.du	$a1, $a1, $a2
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB7_48
# %bb.46:                               # %land.lhs.true249
                                        #   in Loop: Header=BB7_26 Depth=3
	addi.w	$a1, $a1, 0
	addi.d	$a2, $zero, -1
	sll.w	$a0, $a2, $a0
	nor	$a0, $a0, $zero
	addi.w	$a0, $a0, 0
	slt	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $a0
	b	.LBB7_48
.LBB7_47:                               # %if.else257
                                        #   in Loop: Header=BB7_26 Depth=3
	slt	$a2, $zero, $a0
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	sub.d	$a1, $a3, $a1
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	div.du	$a1, $a1, $a3
	addi.w	$a3, $a1, 0
	addi.d	$a4, $zero, -1
	sll.w	$a0, $a4, $a0
	nor	$a0, $a0, $zero
	addi.w	$a0, $a0, 0
	slt	$a4, $a3, $a0
	masknez	$a0, $a0, $a4
	maskeqz	$a3, $a3, $a4
	or	$a0, $a3, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	sub.d	$a1, $zero, $a0
.LBB7_48:                               # %if.end274
                                        #   in Loop: Header=BB7_26 Depth=3
	st.h	$a1, $sp, 312
.LBB7_49:                               # %if.end277
                                        #   in Loop: Header=BB7_26 Depth=3
	ld.w	$a0, $a5, 16
	beqz	$a0, .LBB7_56
# %bb.50:                               # %if.end277
                                        #   in Loop: Header=BB7_26 Depth=3
	ld.hu	$a1, $sp, 298
	bnez	$a1, .LBB7_56
# %bb.51:                               # %if.then286
                                        #   in Loop: Header=BB7_26 Depth=3
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	add.d	$a1, $s8, $a1
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	sub.d	$a1, $a2, $a1
	add.w	$a1, $a1, $fp
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	mul.d	$a1, $a2, $a1
	bltz	$a1, .LBB7_54
# %bb.52:                               # %if.then295
                                        #   in Loop: Header=BB7_26 Depth=3
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	div.du	$a1, $a1, $a2
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB7_55
# %bb.53:                               # %land.lhs.true303
                                        #   in Loop: Header=BB7_26 Depth=3
	addi.w	$a1, $a1, 0
	addi.d	$a2, $zero, -1
	sll.w	$a0, $a2, $a0
	nor	$a0, $a0, $zero
	addi.w	$a0, $a0, 0
	slt	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $a0
	b	.LBB7_55
.LBB7_54:                               # %if.else311
                                        #   in Loop: Header=BB7_26 Depth=3
	slt	$a2, $zero, $a0
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	sub.d	$a1, $a3, $a1
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	div.du	$a1, $a1, $a3
	addi.w	$a3, $a1, 0
	addi.d	$a4, $zero, -1
	sll.w	$a0, $a4, $a0
	nor	$a0, $a0, $zero
	addi.w	$a0, $a0, 0
	slt	$a4, $a3, $a0
	masknez	$a0, $a0, $a4
	maskeqz	$a3, $a3, $a4
	or	$a0, $a3, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	sub.d	$a1, $zero, $a0
.LBB7_55:                               # %if.end328
                                        #   in Loop: Header=BB7_26 Depth=3
	st.h	$a1, $sp, 298
.LBB7_56:                               # %if.end331
                                        #   in Loop: Header=BB7_26 Depth=3
	move	$a2, $s3
	move	$s8, $s6
	move	$s3, $s7
	move	$s7, $fp
	ld.w	$a0, $a5, 20
	beqz	$a0, .LBB7_25
# %bb.57:                               # %if.end331
                                        #   in Loop: Header=BB7_26 Depth=3
	ld.hu	$a1, $sp, 284
	bnez	$a1, .LBB7_25
# %bb.58:                               # %if.then340
                                        #   in Loop: Header=BB7_26 Depth=3
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 1
	sub.d	$a1, $a2, $a1
	add.w	$a1, $a1, $s0
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	mul.d	$a1, $a2, $a1
	bltz	$a1, .LBB7_23
# %bb.59:                               # %if.then349
                                        #   in Loop: Header=BB7_26 Depth=3
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	div.du	$a1, $a1, $a2
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB7_24
# %bb.60:                               # %land.lhs.true357
                                        #   in Loop: Header=BB7_26 Depth=3
	addi.w	$a1, $a1, 0
	addi.d	$a2, $zero, -1
	sll.w	$a0, $a2, $a0
	nor	$a0, $a0, $zero
	addi.w	$a0, $a0, 0
	slt	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $a0
	b	.LBB7_24
.LBB7_61:                               # %for.end399
	ld.w	$a0, $s6, 176
	ld.w	$a1, $s6, 400
	addi.w	$a0, $a0, 1
	st.w	$a0, $s6, 176
	sltu	$a0, $a0, $a1
	ori	$a1, $zero, 4
	sub.d	$a0, $a1, $a0
	b	.LBB7_63
.LBB7_62:
	move	$a0, $zero
.LBB7_63:                               # %cleanup407
	ld.d	$s8, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 472                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 480                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 488                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 496
	ret
.Lfunc_end7:
	.size	decompress_smooth_data, .Lfunc_end7-decompress_smooth_data
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym start_input_pass
	.addrsig_sym start_output_pass
	.addrsig_sym consume_data
	.addrsig_sym decompress_data
	.addrsig_sym dummy_consume_data
	.addrsig_sym decompress_onepass
	.addrsig_sym decompress_smooth_data
