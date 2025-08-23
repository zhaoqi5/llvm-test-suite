	.file	"parset.c"
	.text
	.globl	GenerateParameterSets           # -- Begin function GenerateParameterSets
	.p2align	5
	.type	GenerateParameterSets,@function
GenerateParameterSets:                  # @GenerateParameterSets
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(AllocSPS)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(PicParSet)
	addi.d	$s0, $a0, %pc_lo12(PicParSet)
	ori	$a2, $zero, 2048
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(GenerateSequenceParameterSet)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$s1, $a0, %got_pc_lo12(input)
	ld.d	$a0, $s1, 0
	ld.w	$s2, $a0, 1576
	pcaddu18i	$ra, %call36(AllocPPS)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 0
	beqz	$s2, .LBB0_3
# %bb.1:                                # %if.then
	pcaddu18i	$ra, %call36(AllocPPS)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 8
	pcaddu18i	$ra, %call36(AllocPPS)
	jirl	$ra, $ra, 0
	ld.w	$a3, $fp, 4
	ld.d	$a1, $s0, 0
	ld.d	$a2, $s1, 0
	ori	$a4, $zero, 100
	st.d	$a0, $s0, 16
	bltu	$a3, $a4, .LBB0_5
# %bb.2:                                # %if.then5
	ldptr.w	$a5, $a2, 5276
	ldptr.w	$a6, $a2, 5280
	move	$a0, $a1
	move	$a1, $fp
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(GeneratePictureParameterSet)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.d	$a0, $s0, 8
	ldptr.w	$a5, $a1, 5276
	ldptr.w	$a6, $a1, 5280
	ori	$a2, $zero, 1
	ori	$a3, $zero, 1
	ori	$a4, $zero, 1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(GeneratePictureParameterSet)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.d	$a0, $s0, 16
	ldptr.w	$a5, $a1, 5276
	ldptr.w	$a6, $a1, 5280
	ori	$a2, $zero, 2
	ori	$a3, $zero, 1
	ori	$a4, $zero, 2
	move	$a1, $fp
	b	.LBB0_8
.LBB0_3:                                # %if.else12
	ld.d	$a1, $s1, 0
	ld.w	$a2, $fp, 4
	ldptr.w	$a3, $a1, 2928
	ldptr.w	$a4, $a1, 2932
	ori	$a5, $zero, 100
	bltu	$a2, $a5, .LBB0_6
# %bb.4:                                # %if.then16
	ldptr.w	$a5, $a1, 5276
	ldptr.w	$a6, $a1, 5280
	move	$a1, $fp
	move	$a2, $zero
	b	.LBB0_8
.LBB0_5:                                # %if.else
	ldptr.w	$a5, $a2, 4136
	move	$a0, $a1
	move	$a1, $fp
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(GeneratePictureParameterSet)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.d	$a0, $s0, 8
	ldptr.w	$a5, $a1, 4136
	ori	$a2, $zero, 1
	ori	$a3, $zero, 1
	ori	$a4, $zero, 1
	move	$a1, $fp
	move	$a6, $zero
	pcaddu18i	$ra, %call36(GeneratePictureParameterSet)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.d	$a0, $s0, 16
	ldptr.w	$a5, $a1, 4136
	ori	$a2, $zero, 2
	ori	$a3, $zero, 1
	ori	$a4, $zero, 2
	move	$a1, $fp
	b	.LBB0_7
.LBB0_6:                                # %if.else19
	ldptr.w	$a5, $a1, 4136
	move	$a1, $fp
	move	$a2, $zero
.LBB0_7:                                # %if.end24
	move	$a6, $zero
.LBB0_8:                                # %if.end24
	pcaddu18i	$ra, %call36(GeneratePictureParameterSet)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(active_sps)
	st.d	$fp, $a1, %pc_lo12(active_sps)
	pcalau12i	$a1, %pc_hi20(active_pps)
	st.d	$a0, $a1, %pc_lo12(active_pps)
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end0:
	.size	GenerateParameterSets, .Lfunc_end0-GenerateParameterSets
                                        # -- End function
	.globl	GenerateSequenceParameterSet    # -- Begin function GenerateSequenceParameterSet
	.p2align	5
	.type	GenerateSequenceParameterSet,@function
GenerateSequenceParameterSet:           # @GenerateSequenceParameterSet
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
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$s1, $a1, %got_pc_lo12(input)
	ld.d	$a1, $s1, 0
	ld.w	$a3, $a1, 0
	move	$fp, $a0
	move	$a0, $zero
	addi.w	$a2, $a3, -100
	ld.w	$a5, $a1, 4
	lu12i.w	$a4, 1024
	ori	$a4, $a4, 1025
	lu32i.d	$a4, 4096
	st.w	$a5, $fp, 24
	vrepli.b	$vr0, 0
	vinsgr2vr.w	$vr0, $a3, 0
	ori	$a6, $zero, 99
	vst	$vr0, $fp, 4
	bltu	$a6, $a3, .LBB1_3
# %bb.1:                                # %entry
	ori	$a6, $zero, 9
	bne	$a5, $a6, .LBB1_3
# %bb.2:                                # %if.then
	ori	$a0, $zero, 11
	st.w	$a0, $fp, 24
	ori	$a0, $zero, 1
.LBB1_3:                                # %if.end
	st.w	$a0, $fp, 20
	lu12i.w	$s2, 1
	ori	$a0, $s2, 1160
	ldx.w	$a0, $a1, $a0
	ori	$a5, $s2, 1164
	ldx.w	$a5, $a1, $a5
	st.w	$zero, $fp, 28
	addi.d	$a0, $a0, -8
	st.w	$a0, $fp, 72
	addi.d	$a0, $a5, -8
	ori	$a5, $s2, 1188
	ldx.w	$a5, $a1, $a5
	st.w	$a0, $fp, 76
	addi.d	$a0, $a3, -144
	sltui	$a0, $a0, 1
	and	$a5, $a0, $a5
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s0, $a0, %got_pc_lo12(img)
	pcalau12i	$a0, %pc_hi20(log2_max_frame_num_minus4)
	ld.w	$a0, $a0, %pc_lo12(log2_max_frame_num_minus4)
	pcalau12i	$a3, %pc_hi20(log2_max_pic_order_cnt_lsb_minus4)
	ld.w	$a3, $a3, %pc_lo12(log2_max_pic_order_cnt_lsb_minus4)
	ori	$a6, $s2, 992
	ldx.w	$a6, $a1, $a6
	st.w	$a0, $fp, 80
	ld.d	$a0, $s0, 0
	st.w	$a3, $fp, 88
	st.w	$a6, $fp, 84
	lu12i.w	$a3, 3
	ori	$a6, $a3, 2988
	vldx	$vr0, $a0, $a6
	ldptr.w	$a6, $a0, 15288
	srl.d	$a4, $a4, $a2
	sltui	$a2, $a2, 45
	stptr.w	$a5, $a0, 15540
	vst	$vr0, $fp, 92
	beqz	$a6, .LBB1_6
# %bb.4:                                # %for.body.lr.ph
	move	$a5, $zero
	ori	$a6, $a3, 3004
	add.d	$a6, $a0, $a6
	addi.d	$a7, $fp, 108
	ori	$t0, $a3, 3000
	.p2align	4, , 16
.LBB1_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t1, $a6, 0
	st.w	$t1, $a7, 0
	ldx.wu	$t1, $a0, $t0
	addi.d	$a5, $a5, 1
	addi.d	$a6, $a6, 4
	addi.d	$a7, $a7, 4
	bltu	$a5, $t1, .LBB1_5
.LBB1_6:                                # %for.end
	ld.w	$a5, $a1, 32
	and	$s5, $a2, $a4
	st.w	$a5, $fp, 1132
	st.w	$zero, $fp, 1136
	ori	$a2, $s2, 608
	ldx.w	$a2, $a1, $a2
	ori	$a4, $s2, 612
	ldx.w	$a6, $a1, $a4
	ld.w	$a5, $a1, 56
	ori	$s4, $a3, 3296
	ldx.w	$a7, $a0, $s4
	or	$a2, $a2, $a6
	sltu	$t0, $zero, $a2
	sltui	$a4, $a2, 1
	add.w	$a2, $a7, $a5
	bstrpick.d	$a5, $a2, 62, 59
	add.w	$a2, $a2, $a5
	ld.w	$a5, $a1, 60
	ori	$s3, $a3, 3300
	ldx.w	$a3, $a0, $s3
	st.w	$a4, $fp, 1148
	srli.d	$a0, $a2, 4
	addi.d	$a0, $a0, -1
	add.w	$a2, $a3, $a5
	bstrpick.d	$a3, $a2, 62, 59
	add.w	$a2, $a2, $a3
	srai.d	$a2, $a2, 4
	ori	$a3, $zero, 2116
	ldx.w	$a5, $a1, $a3
	srl.w	$a3, $a2, $t0
	addi.d	$a2, $a3, -1
	st.w	$a2, $fp, 1144
	st.w	$a5, $fp, 1156
	ldptr.w	$a7, $a1, 5272
	ld.w	$a5, $a1, 64
	st.w	$a0, $fp, 1140
	sltu	$a2, $zero, $a6
	st.w	$a2, $fp, 1152
	beqz	$a7, .LBB1_9
# %bb.7:                                # %for.end
	ori	$a6, $zero, 3
	bne	$a5, $a6, .LBB1_9
# %bb.8:
	ori	$a1, $zero, 1
	ori	$a5, $zero, 3
	b	.LBB1_10
.LBB1_9:                                # %lor.rhs49
	ld.w	$a1, $a1, 1580
	sltu	$a1, $zero, $a1
.LBB1_10:                               # %lor.end51
	st.w	$a1, $fp, 1180
	st.w	$a5, $fp, 32
	ori	$a1, $zero, 16
	alsl.w	$a0, $a0, $a1, 4
	xori	$a1, $a4, 5
	sll.w	$a1, $a3, $a1
	pcaddu18i	$ra, %call36(alloc_colocated)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(Co_located)
	ld.d	$a1, $a1, %got_pc_lo12(Co_located)
	st.d	$a0, $a1, 0
	beqz	$s5, .LBB1_14
# %bb.11:                               # %if.else79.6
	ld.d	$a0, $s1, 0
	ori	$a1, $s2, 1112
	ldx.wu	$a1, $a0, $a1
	andi	$a1, $a1, 1
	st.w	$a1, $fp, 36
	ori	$a1, $s2, 1116
	ldx.wu	$a1, $a0, $a1
	andi	$a1, $a1, 1
	st.w	$a1, $fp, 40
	ori	$a1, $s2, 1120
	ldx.wu	$a1, $a0, $a1
	andi	$a1, $a1, 1
	st.w	$a1, $fp, 44
	ori	$a1, $s2, 1124
	ldx.wu	$a1, $a0, $a1
	andi	$a1, $a1, 1
	st.w	$a1, $fp, 48
	ori	$a1, $s2, 1128
	ldx.wu	$a1, $a0, $a1
	andi	$a1, $a1, 1
	st.w	$a1, $fp, 52
	ori	$a1, $s2, 1132
	ldx.wu	$a1, $a0, $a1
	andi	$a1, $a1, 1
	st.w	$a1, $fp, 56
	ori	$a1, $s2, 1136
	ldx.wu	$a1, $a0, $a1
	andi	$a1, $a1, 1
	st.w	$a1, $fp, 60
	ldptr.w	$a1, $a0, 5100
	beqz	$a1, .LBB1_15
# %bb.12:                               # %if.then81.6
	ori	$a1, $s2, 1140
	ldx.wu	$a1, $a0, $a1
	andi	$a1, $a1, 1
	st.w	$a1, $fp, 64
	ldptr.w	$a1, $a0, 5100
	beqz	$a1, .LBB1_16
.LBB1_13:                               # %if.then81.7
	ori	$a1, $s2, 1144
	ldx.wu	$a0, $a0, $a1
	andi	$a0, $a0, 1
	st.w	$a0, $fp, 68
	b	.LBB1_17
.LBB1_14:                               # %if.else98
	st.w	$zero, $fp, 68
	xvrepli.b	$xr0, 0
	xvst	$xr0, $fp, 36
	b	.LBB1_17
.LBB1_15:
	move	$a1, $zero
	st.w	$a1, $fp, 64
	ldptr.w	$a1, $a0, 5100
	bnez	$a1, .LBB1_13
.LBB1_16:                               # %if.else89.7
	st.w	$zero, $fp, 68
.LBB1_17:                               # %if.end110
	ld.d	$a0, $s0, 0
	ldx.w	$a1, $a0, $s4
	ldx.w	$a0, $a0, $s3
	or	$a2, $a1, $a0
	bnez	$a2, .LBB1_19
# %bb.18:                               # %if.else148
	st.w	$zero, $fp, 1160
	b	.LBB1_23
.LBB1_19:                               # %if.then116
	ld.wu	$a2, $fp, 32
	ori	$a3, $zero, 1
	st.d	$a3, $fp, 1160
	st.w	$zero, $fp, 1172
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %pc_hi20(.L__const.GenerateSequenceParameterSet.SubWidthC)
	addi.d	$a3, $a3, %pc_lo12(.L__const.GenerateSequenceParameterSet.SubWidthC)
	ldx.w	$a3, $a3, $a2
	div.w	$a4, $a1, $a3
	st.w	$a4, $fp, 1168
	pcalau12i	$a5, %pc_hi20(.L__const.GenerateSequenceParameterSet.SubHeightC)
	addi.d	$s1, $a5, %pc_lo12(.L__const.GenerateSequenceParameterSet.SubHeightC)
	ld.w	$a5, $fp, 1148
	ldx.w	$a2, $s1, $a2
	ori	$s2, $zero, 2
	sub.d	$a5, $s2, $a5
	mul.w	$a2, $a5, $a2
	div.wu	$a5, $a0, $a2
	mul.d	$a3, $a4, $a3
	sub.w	$a1, $a1, $a3
	st.w	$a5, $fp, 1176
	beqz	$a1, .LBB1_21
# %bb.20:                               # %if.then135
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 500
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $fp, 32
	ld.d	$a1, $s0, 0
	slli.d	$a0, $a0, 2
	ld.w	$a2, $fp, 1148
	ldx.w	$a3, $s1, $a0
	ldx.w	$a0, $a1, $s3
	sub.d	$a1, $s2, $a2
	mul.w	$a2, $a1, $a3
.LBB1_21:                               # %if.end136
	mod.wu	$a0, $a0, $a2
	beqz	$a0, .LBB1_23
# %bb.22:                               # %if.then146
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 500
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(error)
	jr	$t8
.LBB1_23:                               # %if.end150
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
.Lfunc_end1:
	.size	GenerateSequenceParameterSet, .Lfunc_end1-GenerateSequenceParameterSet
                                        # -- End function
	.globl	GeneratePictureParameterSet     # -- Begin function GeneratePictureParameterSet
	.p2align	5
	.type	GeneratePictureParameterSet,@function
GeneratePictureParameterSet:            # @GeneratePictureParameterSet
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
	pcalau12i	$a7, %got_pc_hi20(input)
	ld.d	$s5, $a7, %got_pc_lo12(input)
	ld.d	$s8, $s5, 0
	ld.w	$a7, $s8, 0
	move	$s3, $a6
	move	$s0, $a5
	move	$s6, $a4
	move	$t2, $a3
	move	$s4, $a1
	move	$fp, $a0
	addi.w	$a0, $a7, -100
	sltui	$a1, $a0, 45
	lu12i.w	$a3, 1024
	ori	$a3, $a3, 1025
	lu32i.d	$a3, 4096
	ld.w	$a4, $s4, 28
	srl.d	$a0, $a3, $a0
	ldptr.w	$a3, $s8, 4008
	and	$s7, $a1, $a0
	st.w	$a4, $fp, 8
	st.w	$a2, $fp, 4
	sltu	$a0, $zero, $a3
	st.w	$a0, $fp, 12
	ori	$a0, $zero, 1
	lu12i.w	$t3, 1
	bne	$s7, $a0, .LBB2_3
# %bb.1:                                # %if.then
	ori	$a0, $t3, 1004
	ldx.w	$a0, $s8, $a0
	ori	$a1, $t3, 1112
	ldx.w	$a1, $s8, $a1
	sltu	$a2, $zero, $a0
	st.w	$a2, $fp, 16
	bstrpick.d	$a1, $a1, 1, 1
	st.w	$a1, $fp, 20
	ori	$a1, $t3, 1116
	ldx.w	$a1, $s8, $a1
	bstrpick.d	$a1, $a1, 1, 1
	st.w	$a1, $fp, 24
	ori	$a1, $t3, 1120
	ldx.w	$a1, $s8, $a1
	bstrpick.d	$a1, $a1, 1, 1
	st.w	$a1, $fp, 28
	ori	$a1, $t3, 1124
	ldx.w	$a1, $s8, $a1
	bstrpick.d	$a1, $a1, 1, 1
	st.w	$a1, $fp, 32
	ori	$a1, $t3, 1128
	ldx.w	$a1, $s8, $a1
	bstrpick.d	$a1, $a1, 1, 1
	st.w	$a1, $fp, 36
	ori	$a1, $t3, 1132
	ldx.w	$a1, $s8, $a1
	bstrpick.d	$a1, $a1, 1, 1
	st.w	$a1, $fp, 40
	ori	$a1, $t3, 1136
	ldx.w	$a1, $s8, $a1
	bstrpick.d	$a1, $a1, 1, 1
	st.w	$a1, $fp, 44
	beqz	$a0, .LBB2_4
# %bb.2:                                # %for.inc.us.7
	ori	$a0, $t3, 1140
	ldx.w	$a0, $s8, $a0
	bstrpick.d	$a0, $a0, 1, 1
	st.w	$a0, $fp, 48
	ori	$a0, $t3, 1144
	ldx.w	$a0, $s8, $a0
	bstrpick.d	$a0, $a0, 1, 1
	st.w	$a0, $fp, 52
	b	.LBB2_5
.LBB2_3:                                # %if.else35
	st.d	$zero, $fp, 48
	xvrepli.b	$xr0, 0
	xvst	$xr0, $fp, 16
	stptr.w	$zero, $s8, 5100
	b	.LBB2_5
.LBB2_4:                                # %for.inc.7
	st.d	$zero, $fp, 48
.LBB2_5:                                # %if.end48
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s2, $a0, %got_pc_lo12(img)
	ld.d	$a0, $s2, 0
	lu12i.w	$s1, 3
	ori	$a1, $s1, 3068
	ldx.w	$a0, $a0, $a1
	ldptr.w	$a1, $s8, 5032
	st.w	$a0, $fp, 56
	st.w	$a1, $fp, 60
	beqz	$a1, .LBB2_23
# %bb.6:                                # %if.then53
	st.d	$t2, $sp, 16                    # 8-byte Folded Spill
	ld.w	$a0, $s4, 1144
	ld.w	$a1, $s4, 1140
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 1
	mul.d	$a0, $a1, $a0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 176
	bnez	$a0, .LBB2_8
# %bb.7:                                # %if.then58
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$s8, $s5, 0
.LBB2_8:                                # %if.end59
	ldptr.w	$a0, $s8, 5036
	ori	$a1, $zero, 6
	bltu	$a1, $a0, .LBB2_11
# %bb.9:                                # %if.end59
	slli.d	$a1, $a0, 2
	pcalau12i	$a2, %pc_hi20(.LJTI2_0)
	addi.d	$a2, $a2, %pc_lo12(.LJTI2_0)
	ldx.w	$a1, $a2, $a1
	add.d	$a1, $a2, $a1
	jr	$a1
.LBB2_10:                               # %sw.bb96
	st.w	$a0, $fp, 64
	ldptr.d	$a0, $s8, 5072
	st.d	$a0, $fp, 164
	b	.LBB2_22
.LBB2_11:                               # %sw.default
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	b	.LBB2_22
.LBB2_12:                               # %sw.bb76
	ld.wu	$a0, $fp, 60
	ori	$a1, $zero, 2
	addi.w	$a2, $a0, 0
	st.w	$a1, $fp, 64
	ld.d	$t2, $sp, 16                    # 8-byte Folded Reload
	lu12i.w	$t3, 1
	beqz	$a2, .LBB2_23
# %bb.13:                               # %for.body82.lr.ph
	ldptr.d	$a2, $s8, 5040
	ldptr.d	$a1, $s8, 5048
	ori	$a3, $zero, 16
	bgeu	$a0, $a3, .LBB2_26
# %bb.14:
	move	$a3, $zero
.LBB2_15:                               # %for.body82.preheader
	alsl.d	$a2, $a3, $a2, 2
	alsl.d	$a4, $a3, $fp, 2
	addi.d	$a4, $a4, 132
	alsl.d	$a1, $a3, $a1, 2
	sub.d	$a0, $a0, $a3
	.p2align	4, , 16
.LBB2_16:                               # %for.body82
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, 0
	st.w	$a3, $a4, -32
	ld.w	$a3, $a1, 0
	st.w	$a3, $a4, 0
	addi.d	$a2, $a2, 4
	addi.d	$a4, $a4, 4
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	bnez	$a0, .LBB2_16
	b	.LBB2_23
.LBB2_17:                               # %sw.bb101
	ld.d	$a1, $s2, 0
	ld.w	$a2, $s8, 60
	ori	$a0, $s1, 3300
	ldx.w	$a3, $a1, $a0
	move	$a0, $zero
	ori	$a4, $zero, 6
	st.w	$a4, $fp, 64
	add.w	$a2, $a3, $a2
	bstrpick.d	$a3, $a2, 62, 59
	add.w	$a2, $a2, $a3
	srai.d	$a2, $a2, 4
	ld.w	$a3, $s4, 1148
	ld.w	$a4, $s8, 56
	ori	$a5, $s1, 3296
	ldx.w	$a1, $a1, $a5
	ori	$a5, $zero, 2
	sub.w	$a3, $a5, $a3
	div.wu	$a2, $a2, $a3
	add.w	$a1, $a1, $a4
	bstrpick.d	$a3, $a1, 62, 59
	add.w	$a1, $a1, $a3
	srli.d	$a1, $a1, 4
	mul.d	$a1, $a1, $a2
	addi.d	$a1, $a1, -1
	st.w	$a1, $fp, 172
	ld.d	$t2, $sp, 16                    # 8-byte Folded Reload
	lu12i.w	$t3, 1
	.p2align	4, , 16
.LBB2_18:                               # %for.body113
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s5, 0
	ldptr.d	$a1, $a1, 5056
	bstrpick.d	$a2, $a0, 31, 0
	ldx.b	$a1, $a1, $a2
	ld.d	$a3, $fp, 176
	stx.b	$a1, $a3, $a2
	ld.w	$a1, $fp, 172
	addi.w	$a0, $a0, 1
	bgeu	$a1, $a0, .LBB2_18
	b	.LBB2_23
.LBB2_19:                               # %iter.check
	ld.w	$a1, $fp, 60
	st.w	$zero, $fp, 64
	ldptr.d	$a0, $s8, 5064
	addi.w	$a2, $a1, 1
	ori	$a1, $zero, 1
	sltu	$a3, $a1, $a2
	masknez	$a1, $a1, $a3
	maskeqz	$a3, $a2, $a3
	or	$a1, $a3, $a1
	ori	$a3, $zero, 4
	bstrpick.d	$a1, $a1, 31, 0
	bgeu	$a2, $a3, .LBB2_24
# %bb.20:
	move	$a2, $zero
	ld.d	$t2, $sp, 16                    # 8-byte Folded Reload
	lu12i.w	$t3, 1
	b	.LBB2_40
.LBB2_21:                               # %sw.bb74
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 64
.LBB2_22:                               # %if.end124
	ld.d	$t2, $sp, 16                    # 8-byte Folded Reload
	lu12i.w	$t3, 1
.LBB2_23:                               # %if.end124
	ld.w	$a0, $s4, 1148
	ld.w	$a1, $s4, 1132
	sltui	$a0, $a0, 1
	sll.w	$a0, $a1, $a0
	addi.d	$a0, $a0, -1
	st.w	$a0, $fp, 184
	st.w	$a0, $fp, 188
	st.w	$t2, $fp, 192
	st.w	$s6, $fp, 196
	st.w	$zero, $fp, 200
	st.w	$zero, $fp, 204
	st.w	$s0, $fp, 208
	masknez	$a0, $s0, $s7
	maskeqz	$a1, $s3, $s7
	ld.d	$a2, $s5, 0
	or	$a0, $a1, $a0
	st.w	$s0, $fp, 212
	ori	$a1, $t3, 652
	ldx.w	$a1, $a2, $a1
	ld.w	$a3, $a2, 272
	ori	$a4, $t3, 988
	ldx.w	$a2, $a2, $a4
	st.w	$a0, $fp, 216
	st.w	$a1, $fp, 220
	st.w	$a3, $fp, 224
	st.w	$a2, $fp, 228
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
.LBB2_24:                               # %vector.memcheck109
	sub.d	$a3, $fp, $a0
	addi.d	$a3, $a3, 68
	ori	$a4, $zero, 64
	ld.d	$t2, $sp, 16                    # 8-byte Folded Reload
	lu12i.w	$t3, 1
	bgeu	$a3, $a4, .LBB2_31
# %bb.25:
	move	$a2, $zero
	b	.LBB2_40
.LBB2_26:                               # %vector.memcheck
	addi.d	$a4, $fp, 100
	alsl.d	$a3, $a0, $fp, 2
	addi.d	$a5, $a3, 132
	alsl.d	$a3, $a0, $a2, 2
	sltu	$a3, $a4, $a3
	sltu	$a7, $a2, $a5
	and	$a7, $a3, $a7
	move	$a3, $zero
	bnez	$a7, .LBB2_15
# %bb.27:                               # %vector.memcheck
	alsl.d	$a7, $a0, $a1, 2
	sltu	$a4, $a4, $a7
	sltu	$a5, $a1, $a5
	and	$a4, $a4, $a5
	bnez	$a4, .LBB2_15
# %bb.28:                               # %vector.ph
	bstrpick.d	$a3, $a0, 31, 3
	slli.d	$a3, $a3, 3
	addi.d	$a4, $fp, 132
	move	$a5, $a2
	move	$t0, $a1
	move	$a7, $a3
	.p2align	4, , 16
.LBB2_29:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a5, 0
	xvld	$xr1, $t0, 0
	xvst	$xr0, $a4, -32
	xvst	$xr1, $a4, 0
	addi.d	$a7, $a7, -8
	addi.d	$a4, $a4, 32
	addi.d	$t0, $t0, 32
	addi.d	$a5, $a5, 32
	bnez	$a7, .LBB2_29
# %bb.30:                               # %middle.block
	bne	$a3, $a0, .LBB2_15
	b	.LBB2_23
.LBB2_31:                               # %vector.main.loop.iter.check
	ori	$a3, $zero, 16
	bgeu	$a2, $a3, .LBB2_33
# %bb.32:
	move	$a2, $zero
	b	.LBB2_37
.LBB2_33:                               # %vector.ph115
	bstrpick.d	$a2, $a1, 31, 4
	slli.d	$a2, $a2, 4
	addi.d	$a3, $fp, 100
	addi.d	$a4, $a0, 32
	move	$a5, $a2
	.p2align	4, , 16
.LBB2_34:                               # %vector.body118
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a4, -32
	xvld	$xr1, $a4, 0
	xvst	$xr0, $a3, -32
	xvst	$xr1, $a3, 0
	addi.d	$a5, $a5, -16
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB2_34
# %bb.35:                               # %middle.block123
	beq	$a2, $a1, .LBB2_23
# %bb.36:                               # %vec.epilog.iter.check
	andi	$a3, $a1, 12
	beqz	$a3, .LBB2_40
.LBB2_37:                               # %vec.epilog.ph
	move	$a5, $a2
	bstrpick.d	$a2, $a1, 31, 2
	slli.d	$a2, $a2, 2
	sub.d	$a3, $a5, $a2
	alsl.d	$a4, $a5, $fp, 2
	addi.d	$a4, $a4, 68
	alsl.d	$a5, $a5, $a0, 2
	.p2align	4, , 16
.LBB2_38:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, 0
	vst	$vr0, $a4, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	bnez	$a3, .LBB2_38
# %bb.39:                               # %vec.epilog.middle.block
	beq	$a2, $a1, .LBB2_23
.LBB2_40:                               # %for.body65.preheader
	alsl.d	$a0, $a2, $a0, 2
	alsl.d	$a3, $a2, $fp, 2
	addi.d	$a3, $a3, 68
	sub.d	$a1, $a1, $a2
	.p2align	4, , 16
.LBB2_41:                               # %for.body65
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a0, 0
	st.w	$a2, $a3, 0
	addi.d	$a0, $a0, 4
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	bnez	$a1, .LBB2_41
	b	.LBB2_23
.Lfunc_end2:
	.size	GeneratePictureParameterSet, .Lfunc_end2-GeneratePictureParameterSet
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI2_0:
	.word	.LBB2_19-.LJTI2_0
	.word	.LBB2_21-.LJTI2_0
	.word	.LBB2_12-.LJTI2_0
	.word	.LBB2_10-.LJTI2_0
	.word	.LBB2_10-.LJTI2_0
	.word	.LBB2_10-.LJTI2_0
	.word	.LBB2_17-.LJTI2_0
                                        # -- End function
	.text
	.globl	FreeParameterSets               # -- Begin function FreeParameterSets
	.p2align	5
	.type	FreeParameterSets,@function
FreeParameterSets:                      # @FreeParameterSets
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $zero
	pcalau12i	$a0, %pc_hi20(PicParSet)
	addi.d	$s0, $a0, %pc_lo12(PicParSet)
	ori	$s1, $zero, 2048
	b	.LBB3_2
	.p2align	4, , 16
.LBB3_1:                                # %for.inc
                                        #   in Loop: Header=BB3_2 Depth=1
	addi.d	$fp, $fp, 8
	beq	$fp, $s1, .LBB3_4
.LBB3_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$a0, $s0, $fp
	beqz	$a0, .LBB3_1
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB3_2 Depth=1
	pcaddu18i	$ra, %call36(FreePPS)
	jirl	$ra, $ra, 0
	stx.d	$zero, $s0, $fp
	b	.LBB3_1
.LBB3_4:                                # %for.end
	pcalau12i	$a0, %pc_hi20(active_sps)
	ld.d	$a0, $a0, %pc_lo12(active_sps)
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(FreeSPS)
	jr	$t8
.Lfunc_end3:
	.size	FreeParameterSets, .Lfunc_end3-FreeParameterSets
                                        # -- End function
	.globl	GenerateSeq_parameter_set_NALU  # -- Begin function GenerateSeq_parameter_set_NALU
	.p2align	5
	.type	GenerateSeq_parameter_set_NALU,@function
GenerateSeq_parameter_set_NALU:         # @GenerateSeq_parameter_set_NALU
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	lu12i.w	$a0, 15
	ori	$a0, $a0, 560
	sub.d	$sp, $sp, $a0
	lu12i.w	$a0, 15
	ori	$a0, $a0, 2560
	pcaddu18i	$ra, %call36(AllocNALU)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(active_sps)
	ld.d	$a2, $a1, %pc_lo12(active_sps)
	move	$fp, $a0
	addi.d	$a1, $sp, 16
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GenerateSeq_parameter_set_rbsp)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	addi.d	$a0, $sp, 16
	ori	$a3, $zero, 7
	ori	$a4, $zero, 3
	ori	$a6, $zero, 1
	move	$a1, $fp
	move	$a5, $zero
	pcaddu18i	$ra, %call36(RBSPtoNALU)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 4
	st.w	$a0, $fp, 0
	move	$a0, $fp
	lu12i.w	$a1, 15
	ori	$a1, $a1, 560
	add.d	$sp, $sp, $a1
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end4:
	.size	GenerateSeq_parameter_set_NALU, .Lfunc_end4-GenerateSeq_parameter_set_NALU
                                        # -- End function
	.globl	GenerateSeq_parameter_set_rbsp  # -- Begin function GenerateSeq_parameter_set_rbsp
	.p2align	5
	.type	GenerateSeq_parameter_set_rbsp,@function
GenerateSeq_parameter_set_rbsp:         # @GenerateSeq_parameter_set_rbsp
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
	move	$s1, $a1
	move	$fp, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 48
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	bnez	$a0, .LBB5_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB5_2:                                # %if.end
	ld.w	$a2, $fp, 4
	st.d	$s1, $s4, 32
	ori	$a0, $zero, 8
	st.w	$a0, $s4, 4
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 8
	move	$a3, $s4
	pcaddu18i	$ra, %call36(u_v)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 8
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 12
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 20
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a1, $a0, %pc_lo12(.L.str.11)
	ori	$a0, $zero, 4
	move	$a2, $zero
	move	$a3, $s4
	pcaddu18i	$ra, %call36(u_v)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 24
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	ori	$a0, $zero, 8
	move	$a3, $s4
	pcaddu18i	$ra, %call36(u_v)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 28
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(ue_v)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 8                     # 8-byte Folded Spill
	ld.w	$a0, $fp, 4
	addi.d	$a0, $a0, -100
	ori	$a1, $zero, 44
	bltu	$a1, $a0, .LBB5_20
# %bb.3:                                # %if.end
	ori	$a1, $zero, 1
	sll.d	$a0, $a1, $a0
	lu12i.w	$a1, 1024
	ori	$a1, $a1, 1025
	lu32i.d	$a1, 4096
	and	$a0, $a0, $a1
	beqz	$a0, .LBB5_20
# %bb.4:                                # %if.then26
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a1, $s0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(ue_v)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$fp, $a0, %got_pc_lo12(img)
	ld.d	$a0, $fp, 0
	ldptr.w	$a0, $a0, 15536
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB5_6
# %bb.5:                                # %if.then30
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
.LBB5_6:                                # %if.end33
	ld.w	$a1, $s0, 72
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(ue_v)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 76
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(ue_v)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ldptr.w	$a1, $a0, 15540
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 36
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 36
	beqz	$a0, .LBB5_20
# %bb.7:                                # %if.then43
	move	$s3, $zero
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	addi.d	$a0, $a0, 40
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(ScalingList4x4input)
	ld.d	$a0, $a0, %got_pc_lo12(ScalingList4x4input)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(ScalingList4x4)
	ld.d	$a0, $a0, %got_pc_lo12(ScalingList4x4)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(UseDefaultScalingMatrix4x4Flag)
	ld.d	$a0, $a0, %got_pc_lo12(UseDefaultScalingMatrix4x4Flag)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(ZZ_SCAN)
	addi.d	$s7, $a0, %pc_lo12(ZZ_SCAN)
	pcalau12i	$a0, %got_pc_hi20(ScalingList8x8input)
	ld.d	$a0, $a0, %got_pc_lo12(ScalingList8x8input)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(ScalingList8x8)
	ld.d	$a0, $a0, %got_pc_lo12(ScalingList8x8)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$s2, $a0, %pc_lo12(.L.str.4)
	b	.LBB5_9
	.p2align	4, , 16
.LBB5_8:                                # %for.inc
                                        #   in Loop: Header=BB5_9 Depth=1
	addi.d	$s3, $s3, 1
	move	$s4, $s6
	ori	$a0, $zero, 8
	beq	$s3, $a0, .LBB5_20
.LBB5_9:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_18 Depth 2
                                        #     Child Loop BB5_14 Depth 2
	slli.d	$fp, $s3, 2
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	ldx.w	$a1, $s0, $fp
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	move	$s6, $s4
	move	$a2, $s4
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
	ldx.w	$a0, $s0, $fp
	beqz	$a0, .LBB5_8
# %bb.10:                               # %if.then51
                                        #   in Loop: Header=BB5_9 Depth=1
	ori	$a0, $zero, 5
	bltu	$a0, $s3, .LBB5_16
# %bb.11:                               # %if.then53
                                        #   in Loop: Header=BB5_9 Depth=1
	move	$fp, $zero
	slli.d	$a0, $s3, 5
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	add.d	$s0, $a1, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	add.d	$s1, $a1, $a0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$s4, $s3, $a0, 1
	ori	$a0, $zero, 8
	ori	$s8, $zero, 8
	b	.LBB5_14
	.p2align	4, , 16
.LBB5_12:                               # %if.end28.us.i
                                        #   in Loop: Header=BB5_14 Depth=2
	ldx.h	$a0, $s0, $s5
	sub.w	$a0, $a0, $s8
	ori	$a1, $zero, 127
	slt	$a1, $a1, $a0
	addi.w	$a2, $a0, -256
	slti	$a3, $a0, -128
	addi.w	$a4, $a0, 256
	masknez	$a0, $a0, $a3
	maskeqz	$a3, $a4, $a3
	or	$a0, $a3, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a0
	move	$a0, $s2
	move	$a2, $s6
	pcaddu18i	$ra, %call36(se_v)
	jirl	$ra, $ra, 0
	ldx.h	$a0, $s0, $s5
	bstrpick.d	$a1, $a0, 15, 0
	ext.w.h	$a0, $a0
	ld.h	$a2, $s4, 0
	or	$a3, $fp, $a1
	sltui	$a1, $a1, 1
	sltui	$a3, $a3, 1
	or	$a2, $a2, $a3
	st.h	$a2, $s4, 0
	masknez	$a2, $a0, $a1
	maskeqz	$a1, $s8, $a1
	or	$s8, $a1, $a2
.LBB5_13:                               # %if.end28.thread.us.i
                                        #   in Loop: Header=BB5_14 Depth=2
	addi.d	$fp, $fp, 1
	stx.h	$s8, $s1, $s5
	ori	$a1, $zero, 16
	beq	$fp, $a1, .LBB5_8
.LBB5_14:                               # %for.body.us.i
                                        #   Parent Loop BB5_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a1, $s7, $fp
	slli.d	$s5, $a1, 1
	bnez	$a0, .LBB5_12
# %bb.15:                               #   in Loop: Header=BB5_14 Depth=2
	move	$a0, $zero
	b	.LBB5_13
	.p2align	4, , 16
.LBB5_16:                               # %if.else
                                        #   in Loop: Header=BB5_9 Depth=1
	move	$s0, $zero
	addi.d	$a0, $s3, -6
	pcalau12i	$a1, %got_pc_hi20(UseDefaultScalingMatrix8x8Flag)
	ld.d	$a1, $a1, %got_pc_lo12(UseDefaultScalingMatrix8x8Flag)
	slli.d	$a2, $a0, 7
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	add.d	$s1, $a3, $a2
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	add.d	$s4, $a3, $a2
	alsl.d	$fp, $a0, $a1, 1
	ori	$a0, $zero, 8
	ori	$s8, $zero, 8
	b	.LBB5_18
	.p2align	4, , 16
.LBB5_17:                               #   in Loop: Header=BB5_18 Depth=2
	move	$a0, $zero
	addi.d	$s0, $s0, 1
	stx.h	$s8, $s4, $s5
	ori	$a1, $zero, 64
	beq	$s0, $a1, .LBB5_8
.LBB5_18:                               # %for.body.i
                                        #   Parent Loop BB5_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a1, %pc_hi20(ZZ_SCAN8)
	addi.d	$a1, $a1, %pc_lo12(ZZ_SCAN8)
	ldx.bu	$a1, $a1, $s0
	slli.d	$s5, $a1, 1
	beqz	$a0, .LBB5_17
# %bb.19:                               # %if.end28.i
                                        #   in Loop: Header=BB5_18 Depth=2
	ldx.h	$a0, $s1, $s5
	sub.w	$a0, $a0, $s8
	ori	$a1, $zero, 127
	slt	$a1, $a1, $a0
	addi.w	$a2, $a0, -256
	slti	$a3, $a0, -128
	addi.w	$a4, $a0, 256
	masknez	$a0, $a0, $a3
	maskeqz	$a3, $a4, $a3
	or	$a0, $a3, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	move	$a2, $s6
	pcaddu18i	$ra, %call36(se_v)
	jirl	$ra, $ra, 0
	ldx.h	$a0, $s1, $s5
	bstrpick.d	$a1, $a0, 15, 0
	ext.w.h	$a0, $a0
	ld.h	$a2, $fp, 0
	or	$a3, $s0, $a1
	sltui	$a1, $a1, 1
	sltui	$a3, $a3, 1
	or	$a2, $a2, $a3
	st.h	$a2, $fp, 0
	masknez	$a2, $a0, $a1
	maskeqz	$a1, $s8, $a1
	or	$s8, $a1, $a2
	addi.d	$s0, $s0, 1
	stx.h	$s8, $s4, $s5
	ori	$a1, $zero, 64
	bne	$s0, $a1, .LBB5_18
	b	.LBB5_8
.LBB5_20:                               # %if.end78
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a1, $s2, 80
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(ue_v)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 84
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(ue_v)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 84
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB5_23
# %bb.21:                               # %if.end78
	bnez	$a0, .LBB5_26
# %bb.22:                               # %if.then85
	ld.w	$a1, $s2, 88
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(ue_v)
	jirl	$ra, $ra, 0
	b	.LBB5_26
.LBB5_23:                               # %if.then91
	ld.w	$a1, $s2, 92
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 96
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(se_v)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 100
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(se_v)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 104
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(ue_v)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 104
	beqz	$a0, .LBB5_26
# %bb.24:                               # %for.body103.lr.ph
	move	$fp, $zero
	addi.d	$s0, $s2, 108
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$s1, $a0, %pc_lo12(.L.str.28)
	.p2align	4, , 16
.LBB5_25:                               # %for.body103
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s0, 0
	move	$a0, $s1
	move	$a2, $s4
	pcaddu18i	$ra, %call36(se_v)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s2, 104
	addi.d	$fp, $fp, 1
	addi.d	$s0, $s0, 4
	bltu	$fp, $a0, .LBB5_25
.LBB5_26:                               # %if.end112
	ld.w	$a1, $s2, 1132
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(ue_v)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 1136
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 1140
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a0, $a0, %pc_lo12(.L.str.31)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(ue_v)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 1144
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(ue_v)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 1148
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 1148
	bnez	$a0, .LBB5_28
# %bb.27:                               # %if.then125
	ld.w	$a1, $s2, 1152
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a0, $a0, %pc_lo12(.L.str.34)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
.LBB5_28:                               # %if.end128
	ld.w	$a1, $s2, 1156
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a0, $a0, %pc_lo12(.L.str.35)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 1160
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a0, $a0, %pc_lo12(.L.str.36)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 1160
	beqz	$a0, .LBB5_30
# %bb.29:                               # %if.then135
	ld.w	$a1, $s2, 1164
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a0, $a0, %pc_lo12(.L.str.37)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(ue_v)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 1168
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a0, $a0, %pc_lo12(.L.str.38)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(ue_v)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 1172
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a0, $a0, %pc_lo12(.L.str.39)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(ue_v)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 1176
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a0, $a0, %pc_lo12(.L.str.40)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(ue_v)
	jirl	$ra, $ra, 0
.LBB5_30:                               # %if.end144
	ld.w	$a1, $s2, 1180
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a0, $a0, %pc_lo12(.L.str.41)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 1180
	beqz	$a0, .LBB5_37
# %bb.31:                               # %if.then149
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ldptr.w	$a1, $a0, 5272
	beqz	$a1, .LBB5_34
# %bb.32:                               # %land.lhs.true.i
	ld.w	$a1, $a0, 64
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB5_34
# %bb.33:                               # %if.then.i
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.77)
	addi.d	$a0, $a0, %pc_lo12(.L.str.77)
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.78)
	addi.d	$a0, $a0, %pc_lo12(.L.str.78)
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.79)
	addi.d	$a0, $a0, %pc_lo12(.L.str.79)
	ori	$a1, $zero, 1
	move	$a2, $s4
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a1, $a0, %pc_lo12(.L.str.80)
	ori	$a0, $zero, 3
	ori	$a2, $zero, 2
	move	$a3, $s4
	pcaddu18i	$ra, %call36(u_v)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.81)
	addi.d	$a0, $a0, %pc_lo12(.L.str.81)
	ori	$a1, $zero, 1
	move	$a2, $s4
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.82)
	addi.d	$a0, $a0, %pc_lo12(.L.str.82)
	ori	$a1, $zero, 1
	move	$a2, $s4
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.83)
	addi.d	$a1, $a0, %pc_lo12(.L.str.83)
	ori	$a0, $zero, 8
	ori	$a2, $zero, 2
	move	$a3, $s4
	pcaddu18i	$ra, %call36(u_v)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.84)
	addi.d	$a1, $a0, %pc_lo12(.L.str.84)
	ori	$a0, $zero, 8
	ori	$a2, $zero, 2
	move	$a3, $s4
	pcaddu18i	$ra, %call36(u_v)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.85)
	addi.d	$a1, $a0, %pc_lo12(.L.str.85)
	ori	$a0, $zero, 8
	move	$a2, $zero
	move	$a3, $s4
	pcaddu18i	$ra, %call36(u_v)
	jirl	$ra, $ra, 0
	b	.LBB5_36
.LBB5_34:                               # %if.else.i
	ld.w	$a0, $a0, 1580
	beqz	$a0, .LBB5_38
# %bb.35:                               # %if.then31.i
	pcalau12i	$a0, %pc_hi20(.L.str.77)
	addi.d	$a0, $a0, %pc_lo12(.L.str.77)
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.78)
	addi.d	$a0, $a0, %pc_lo12(.L.str.78)
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.79)
	addi.d	$a0, $a0, %pc_lo12(.L.str.79)
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
.LBB5_36:                               # %if.end152.sink.split
	pcalau12i	$a0, %pc_hi20(.L.str.86)
	addi.d	$a0, $a0, %pc_lo12(.L.str.86)
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.87)
	addi.d	$a0, $a0, %pc_lo12(.L.str.87)
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.88)
	addi.d	$a0, $a0, %pc_lo12(.L.str.88)
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a0, $a0, %pc_lo12(.L.str.89)
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.90)
	addi.d	$a0, $a0, %pc_lo12(.L.str.90)
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.91)
	addi.d	$a0, $a0, %pc_lo12(.L.str.91)
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
.LBB5_37:                               # %if.end152
	move	$a0, $s4
	pcaddu18i	$ra, %call36(SODBtoRBSP)
	jirl	$ra, $ra, 0
	ld.w	$s0, $s4, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
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
.LBB5_38:                               # %if.else80.i
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	GenerateSeq_parameter_set_rbsp, .Lfunc_end5-GenerateSeq_parameter_set_rbsp
                                        # -- End function
	.globl	GeneratePic_parameter_set_NALU  # -- Begin function GeneratePic_parameter_set_NALU
	.p2align	5
	.type	GeneratePic_parameter_set_NALU,@function
GeneratePic_parameter_set_NALU:         # @GeneratePic_parameter_set_NALU
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	lu12i.w	$a1, 15
	ori	$a1, $a1, 560
	sub.d	$sp, $sp, $a1
	move	$fp, $a0
	lu12i.w	$a0, 15
	ori	$a0, $a0, 2560
	pcaddu18i	$ra, %call36(AllocNALU)
	jirl	$ra, $ra, 0
	slli.d	$a1, $fp, 3
	pcalau12i	$a2, %pc_hi20(PicParSet)
	addi.d	$a2, $a2, %pc_lo12(PicParSet)
	ldx.d	$a2, $a2, $a1
	move	$fp, $a0
	addi.d	$a1, $sp, 16
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GeneratePic_parameter_set_rbsp)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	addi.d	$a0, $sp, 16
	ori	$a3, $zero, 8
	ori	$a4, $zero, 3
	ori	$a6, $zero, 1
	move	$a1, $fp
	move	$a5, $zero
	pcaddu18i	$ra, %call36(RBSPtoNALU)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 4
	st.w	$a0, $fp, 0
	move	$a0, $fp
	lu12i.w	$a1, 15
	ori	$a1, $a1, 560
	add.d	$sp, $sp, $a1
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end6:
	.size	GeneratePic_parameter_set_NALU, .Lfunc_end6-GeneratePic_parameter_set_NALU
                                        # -- End function
	.globl	GeneratePic_parameter_set_rbsp  # -- Begin function GeneratePic_parameter_set_rbsp
	.p2align	5
	.type	GeneratePic_parameter_set_rbsp,@function
GeneratePic_parameter_set_rbsp:         # @GeneratePic_parameter_set_rbsp
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
	move	$s1, $a1
	move	$s6, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 48
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	bnez	$a0, .LBB7_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a0, $a0, %pc_lo12(.L.str.42)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB7_2:                                # %if.end
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	st.d	$s1, $s4, 32
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3068
	ldx.w	$a0, $a0, $a1
	ld.w	$a1, $s6, 4
	ori	$a2, $zero, 8
	st.w	$a2, $s4, 4
	st.w	$a0, $s6, 56
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a0, $a0, %pc_lo12(.L.str.43)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(ue_v)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, 8
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(ue_v)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, 12
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a0, $a0, %pc_lo12(.L.str.45)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, 56
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a0, $a0, %pc_lo12(.L.str.46)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, 60
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a0, $a0, %pc_lo12(.L.str.47)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(ue_v)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 60
	beqz	$a0, .LBB7_13
# %bb.3:                                # %if.then14
	ld.w	$a1, $s6, 64
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a0, $a0, %pc_lo12(.L.str.48)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(ue_v)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 64
	ori	$a1, $zero, 6
	bltu	$a1, $a0, .LBB7_13
# %bb.4:                                # %if.then14
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI7_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI7_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB7_5:                                # %if.then50
	ld.w	$a1, $s6, 164
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, 168
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(ue_v)
	jirl	$ra, $ra, 0
	b	.LBB7_13
.LBB7_6:                                # %if.then58
	ld.w	$a0, $s6, 60
	ori	$a2, $zero, 3
	sltu	$a3, $a2, $a0
	sltui	$a1, $a0, 2
	ori	$a4, $zero, 2
	masknez	$a4, $a4, $a1
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a4
	ld.w	$a1, $s6, 172
	masknez	$a0, $a0, $a3
	maskeqz	$a2, $a2, $a3
	or	$s1, $a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a0, $a0, %pc_lo12(.L.str.54)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(ue_v)
	jirl	$ra, $ra, 0
	move	$fp, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$s2, $a0, %pc_lo12(.L.str.55)
	.p2align	4, , 16
.LBB7_7:                                # %for.body79
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 176
	bstrpick.d	$a1, $fp, 31, 0
	ldx.bu	$a2, $a0, $a1
	move	$a0, $s1
	move	$a1, $s2
	move	$a3, $s4
	pcaddu18i	$ra, %call36(u_v)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 172
	addi.w	$fp, $fp, 1
	bgeu	$a0, $fp, .LBB7_7
	b	.LBB7_13
.LBB7_8:                                # %for.cond.preheader
	move	$fp, $zero
	addi.d	$s0, $s6, 68
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$s1, $a0, %pc_lo12(.L.str.49)
	.p2align	4, , 16
.LBB7_9:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a0, $fp, 31, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a1, $s0, $a0
	move	$a0, $s1
	move	$a2, $s4
	pcaddu18i	$ra, %call36(ue_v)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 60
	addi.w	$fp, $fp, 1
	bgeu	$a0, $fp, .LBB7_9
	b	.LBB7_13
.LBB7_10:                               # %for.cond27.preheader
	ld.w	$a0, $s6, 60
	beqz	$a0, .LBB7_13
# %bb.11:                               # %for.body30.lr.ph
	move	$fp, $zero
	addi.d	$s0, $s6, 132
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$s1, $a0, %pc_lo12(.L.str.50)
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$s2, $a0, %pc_lo12(.L.str.51)
	.p2align	4, , 16
.LBB7_12:                               # %for.body30
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s0, -32
	move	$a0, $s1
	move	$a2, $s4
	pcaddu18i	$ra, %call36(ue_v)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	move	$a0, $s2
	move	$a2, $s4
	pcaddu18i	$ra, %call36(ue_v)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s6, 60
	addi.d	$fp, $fp, 1
	addi.d	$s0, $s0, 4
	bltu	$fp, $a0, .LBB7_12
.LBB7_13:                               # %if.end91
	ld.w	$a1, $s6, 184
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a0, $a0, %pc_lo12(.L.str.56)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(ue_v)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, 188
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a0, $a0, %pc_lo12(.L.str.57)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(ue_v)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, 192
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a0, $a0, %pc_lo12(.L.str.58)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s6, 196
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a1, $a0, %pc_lo12(.L.str.59)
	ori	$a0, $zero, 2
	move	$a3, $s4
	pcaddu18i	$ra, %call36(u_v)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, 200
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a0, $a0, %pc_lo12(.L.str.60)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(se_v)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, 204
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a0, $a0, %pc_lo12(.L.str.61)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(se_v)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ld.w	$a0, $a0, 0
	addi.d	$s0, $a0, -100
	ori	$a0, $zero, 44
	lu12i.w	$s1, 1024
	bltu	$a0, $s0, .LBB7_34
# %bb.14:                               # %if.end91
	ori	$a0, $zero, 1
	sll.d	$a0, $a0, $s0
	ori	$a1, $s1, 1025
	lu32i.d	$a1, 4096
	and	$a1, $a0, $a1
	ori	$a0, $zero, 212
	beqz	$a1, .LBB7_34
.LBB7_15:                               # %if.end122
	ldx.w	$a1, $s6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$a0, $a0, %pc_lo12(.L.str.62)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(se_v)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, 220
	pcalau12i	$a0, %pc_hi20(.L.str.63)
	addi.d	$a0, $a0, %pc_lo12(.L.str.63)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, 224
	pcalau12i	$a0, %pc_hi20(.L.str.64)
	addi.d	$a0, $a0, %pc_lo12(.L.str.64)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, 228
	pcalau12i	$a0, %pc_hi20(.L.str.65)
	addi.d	$a0, $a0, %pc_lo12(.L.str.65)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 44
	bltu	$a0, $s0, .LBB7_20
# %bb.16:                               # %if.end122
	ori	$a0, $zero, 1
	sll.d	$a0, $a0, $s0
	ori	$a1, $s1, 1025
	lu32i.d	$a1, 4096
	and	$a0, $a0, $a1
	beqz	$a0, .LBB7_20
# %bb.17:                               # %if.then140
	ld.w	$a1, $s6, 16
	pcalau12i	$a0, %pc_hi20(.L.str.66)
	addi.d	$a0, $a0, %pc_lo12(.L.str.66)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, 20
	pcalau12i	$a0, %pc_hi20(.L.str.67)
	addi.d	$a0, $a0, %pc_lo12(.L.str.67)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 20
	beqz	$a0, .LBB7_19
# %bb.18:                               # %if.then146
	ld.wu	$a0, $s6, 16
	bstrpick.d	$a0, $a0, 30, 0
	lu12i.w	$a1, 524287
	ori	$a1, $a1, 4093
	bne	$a0, $a1, .LBB7_21
.LBB7_19:                               # %if.end192
	ld.w	$a1, $s6, 216
	pcalau12i	$a0, %pc_hi20(.L.str.69)
	addi.d	$a0, $a0, %pc_lo12(.L.str.69)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(se_v)
	jirl	$ra, $ra, 0
.LBB7_20:                               # %if.end195
	move	$a0, $s4
	pcaddu18i	$ra, %call36(SODBtoRBSP)
	jirl	$ra, $ra, 0
	ld.w	$s0, $s4, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
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
.LBB7_21:                               # %for.body152.lr.ph
	move	$s3, $zero
	addi.d	$a0, $s6, 24
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$a0, $a0, %pc_lo12(.L.str.68)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(ScalingList4x4input)
	ld.d	$a0, $a0, %got_pc_lo12(ScalingList4x4input)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(ScalingList4x4)
	ld.d	$a0, $a0, %got_pc_lo12(ScalingList4x4)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(UseDefaultScalingMatrix4x4Flag)
	ld.d	$a0, $a0, %got_pc_lo12(UseDefaultScalingMatrix4x4Flag)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(ZZ_SCAN)
	addi.d	$s5, $a0, %pc_lo12(ZZ_SCAN)
	pcalau12i	$a0, %got_pc_hi20(ScalingList8x8input)
	ld.d	$a0, $a0, %got_pc_lo12(ScalingList8x8input)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(ScalingList8x8)
	ld.d	$a0, $a0, %got_pc_lo12(ScalingList8x8)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(UseDefaultScalingMatrix8x8Flag)
	ld.d	$a0, $a0, %got_pc_lo12(UseDefaultScalingMatrix8x8Flag)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$s2, $a0, %pc_lo12(.L.str.4)
	st.d	$s6, $sp, 80                    # 8-byte Folded Spill
	b	.LBB7_23
	.p2align	4, , 16
.LBB7_22:                               # %for.inc189
                                        #   in Loop: Header=BB7_23 Depth=1
	ld.d	$s6, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a0, $s6, 16
	addi.d	$s3, $s3, 1
	slli.d	$a0, $a0, 1
	addi.d	$a0, $a0, 6
	bstrpick.d	$a0, $a0, 31, 1
	slli.d	$a0, $a0, 1
	move	$s4, $s7
	bgeu	$s3, $a0, .LBB7_19
.LBB7_23:                               # %for.body152
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_32 Depth 2
                                        #     Child Loop BB7_28 Depth 2
	slli.d	$fp, $s3, 2
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ldx.w	$a1, $s0, $fp
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	move	$s7, $s4
	move	$a2, $s4
	pcaddu18i	$ra, %call36(u_1)
	jirl	$ra, $ra, 0
	ldx.w	$a0, $s0, $fp
	beqz	$a0, .LBB7_22
# %bb.24:                               # %if.then161
                                        #   in Loop: Header=BB7_23 Depth=1
	ori	$a0, $zero, 5
	bltu	$a0, $s3, .LBB7_30
# %bb.25:                               # %if.then164
                                        #   in Loop: Header=BB7_23 Depth=1
	move	$s0, $zero
	slli.d	$a0, $s3, 5
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	add.d	$s1, $a1, $a0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	add.d	$s4, $a1, $a0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	alsl.d	$s6, $s3, $a0, 1
	ori	$a0, $zero, 8
	ori	$s8, $zero, 8
	b	.LBB7_28
	.p2align	4, , 16
.LBB7_26:                               # %if.end28.us.i
                                        #   in Loop: Header=BB7_28 Depth=2
	ldx.h	$a0, $s1, $fp
	sub.w	$a0, $a0, $s8
	ori	$a1, $zero, 127
	slt	$a1, $a1, $a0
	addi.w	$a2, $a0, -256
	slti	$a3, $a0, -128
	addi.w	$a4, $a0, 256
	masknez	$a0, $a0, $a3
	maskeqz	$a3, $a4, $a3
	or	$a0, $a3, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a0
	move	$a0, $s2
	move	$a2, $s7
	pcaddu18i	$ra, %call36(se_v)
	jirl	$ra, $ra, 0
	ldx.h	$a0, $s1, $fp
	bstrpick.d	$a1, $a0, 15, 0
	ext.w.h	$a0, $a0
	ld.h	$a2, $s6, 0
	or	$a3, $s0, $a1
	sltui	$a1, $a1, 1
	sltui	$a3, $a3, 1
	or	$a2, $a2, $a3
	st.h	$a2, $s6, 0
	masknez	$a2, $a0, $a1
	maskeqz	$a1, $s8, $a1
	or	$s8, $a1, $a2
.LBB7_27:                               # %if.end28.thread.us.i
                                        #   in Loop: Header=BB7_28 Depth=2
	addi.d	$s0, $s0, 1
	stx.h	$s8, $s4, $fp
	ori	$a1, $zero, 16
	beq	$s0, $a1, .LBB7_22
.LBB7_28:                               # %for.body.us.i
                                        #   Parent Loop BB7_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a1, $s5, $s0
	slli.d	$fp, $a1, 1
	bnez	$a0, .LBB7_26
# %bb.29:                               #   in Loop: Header=BB7_28 Depth=2
	move	$a0, $zero
	b	.LBB7_27
	.p2align	4, , 16
.LBB7_30:                               # %if.else174
                                        #   in Loop: Header=BB7_23 Depth=1
	move	$s1, $zero
	addi.d	$a0, $s3, -6
	slli.d	$a1, $a0, 7
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	add.d	$s0, $a2, $a1
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	add.d	$s4, $a2, $a1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$s6, $a0, $a1, 1
	ori	$a0, $zero, 8
	ori	$s8, $zero, 8
	b	.LBB7_32
	.p2align	4, , 16
.LBB7_31:                               # %if.end28.i
                                        #   in Loop: Header=BB7_32 Depth=2
	ldx.h	$a0, $s0, $fp
	sub.w	$a0, $a0, $s8
	ori	$a1, $zero, 127
	slt	$a1, $a1, $a0
	addi.w	$a2, $a0, -256
	slti	$a3, $a0, -128
	addi.w	$a4, $a0, 256
	masknez	$a0, $a0, $a3
	maskeqz	$a3, $a4, $a3
	or	$a0, $a3, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	move	$a2, $s7
	pcaddu18i	$ra, %call36(se_v)
	jirl	$ra, $ra, 0
	ldx.h	$a0, $s0, $fp
	bstrpick.d	$a1, $a0, 15, 0
	ext.w.h	$a0, $a0
	ld.h	$a2, $s6, 0
	or	$a3, $s1, $a1
	sltui	$a1, $a1, 1
	sltui	$a3, $a3, 1
	or	$a2, $a2, $a3
	st.h	$a2, $s6, 0
	masknez	$a2, $a0, $a1
	maskeqz	$a1, $s8, $a1
	or	$s8, $a1, $a2
	addi.d	$s1, $s1, 1
	stx.h	$s8, $s4, $fp
	ori	$a1, $zero, 64
	beq	$s1, $a1, .LBB7_22
.LBB7_32:                               # %for.body.i
                                        #   Parent Loop BB7_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a1, %pc_hi20(ZZ_SCAN8)
	addi.d	$a1, $a1, %pc_lo12(ZZ_SCAN8)
	ldx.bu	$a1, $a1, $s1
	slli.d	$fp, $a1, 1
	bnez	$a0, .LBB7_31
# %bb.33:                               #   in Loop: Header=BB7_32 Depth=2
	move	$a0, $zero
	addi.d	$s1, $s1, 1
	stx.h	$s8, $s4, $fp
	ori	$a1, $zero, 64
	bne	$s1, $a1, .LBB7_32
	b	.LBB7_22
.LBB7_34:                               # %if.else119
	ori	$a0, $zero, 208
	b	.LBB7_15
.Lfunc_end7:
	.size	GeneratePic_parameter_set_rbsp, .Lfunc_end7-GeneratePic_parameter_set_rbsp
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI7_0:
	.word	.LBB7_8-.LJTI7_0
	.word	.LBB7_13-.LJTI7_0
	.word	.LBB7_10-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_5-.LJTI7_0
	.word	.LBB7_6-.LJTI7_0
                                        # -- End function
	.text
	.globl	Scaling_List                    # -- Begin function Scaling_List
	.p2align	5
	.type	Scaling_List,@function
Scaling_List:                           # @Scaling_List
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
	ori	$a5, $zero, 1
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	blt	$a2, $a5, .LBB8_6
# %bb.1:                                # %for.body.lr.ph
	move	$s0, $a3
	move	$s1, $a1
	move	$s2, $a0
	ori	$s5, $zero, 16
	bne	$a2, $s5, .LBB8_7
# %bb.2:                                # %for.body.us.preheader
	move	$s6, $zero
	move	$s3, $zero
	ori	$a0, $zero, 8
	pcalau12i	$a1, %pc_hi20(ZZ_SCAN)
	addi.d	$s7, $a1, %pc_lo12(ZZ_SCAN)
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$s4, $a1, %pc_lo12(.L.str.4)
	ori	$s8, $zero, 8
	b	.LBB8_4
	.p2align	4, , 16
.LBB8_3:                                # %if.end28.us
                                        #   in Loop: Header=BB8_4 Depth=1
	ldx.h	$a0, $s2, $fp
	sub.w	$a0, $a0, $s8
	ori	$a1, $zero, 127
	slt	$a1, $a1, $a0
	addi.w	$a2, $a0, -256
	slti	$a3, $a0, -128
	addi.w	$a4, $a0, 256
	masknez	$a0, $a0, $a3
	maskeqz	$a3, $a4, $a3
	or	$a0, $a3, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a0
	move	$a0, $s4
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(se_v)
	jirl	$ra, $ra, 0
	ldx.h	$a1, $s2, $fp
	add.w	$s3, $a0, $s3
	bstrpick.d	$a2, $a1, 15, 0
	ext.w.h	$a0, $a1
	ld.h	$a1, $s0, 0
	or	$a3, $s6, $a2
	sltui	$a2, $a2, 1
	sltui	$a3, $a3, 1
	or	$a1, $a1, $a3
	st.h	$a1, $s0, 0
	masknez	$a1, $a0, $a2
	maskeqz	$a2, $s8, $a2
	or	$s8, $a2, $a1
	addi.d	$s6, $s6, 1
	stx.h	$s8, $s1, $fp
	beq	$s6, $s5, .LBB8_11
.LBB8_4:                                # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a1, $s7, $s6
	slli.d	$fp, $a1, 1
	bnez	$a0, .LBB8_3
# %bb.5:                                #   in Loop: Header=BB8_4 Depth=1
	move	$a0, $zero
	addi.d	$s6, $s6, 1
	stx.h	$s8, $s1, $fp
	bne	$s6, $s5, .LBB8_4
	b	.LBB8_11
.LBB8_6:
	move	$s3, $zero
	b	.LBB8_11
.LBB8_7:                                # %for.body.preheader
	move	$s5, $zero
	move	$s3, $zero
	bstrpick.d	$s6, $a2, 31, 0
	ori	$a0, $zero, 8
	pcalau12i	$a1, %pc_hi20(ZZ_SCAN8)
	addi.d	$s7, $a1, %pc_lo12(ZZ_SCAN8)
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$s4, $a1, %pc_lo12(.L.str.4)
	ori	$s8, $zero, 8
	b	.LBB8_9
	.p2align	4, , 16
.LBB8_8:                                # %if.end28
                                        #   in Loop: Header=BB8_9 Depth=1
	ldx.h	$a0, $s2, $fp
	sub.w	$a0, $a0, $s8
	ori	$a1, $zero, 127
	slt	$a1, $a1, $a0
	addi.w	$a2, $a0, -256
	slti	$a3, $a0, -128
	addi.w	$a4, $a0, 256
	masknez	$a0, $a0, $a3
	maskeqz	$a3, $a4, $a3
	or	$a0, $a3, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a0
	move	$a0, $s4
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(se_v)
	jirl	$ra, $ra, 0
	ldx.h	$a1, $s2, $fp
	add.w	$s3, $a0, $s3
	bstrpick.d	$a2, $a1, 15, 0
	ext.w.h	$a0, $a1
	ld.h	$a1, $s0, 0
	or	$a3, $s5, $a2
	sltui	$a2, $a2, 1
	sltui	$a3, $a3, 1
	or	$a1, $a1, $a3
	st.h	$a1, $s0, 0
	masknez	$a1, $a0, $a2
	maskeqz	$a2, $s8, $a2
	or	$s8, $a2, $a1
	addi.d	$s5, $s5, 1
	stx.h	$s8, $s1, $fp
	beq	$s6, $s5, .LBB8_11
.LBB8_9:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a1, $s7, $s5
	slli.d	$fp, $a1, 1
	bnez	$a0, .LBB8_8
# %bb.10:                               #   in Loop: Header=BB8_9 Depth=1
	move	$a0, $zero
	addi.d	$s5, $s5, 1
	stx.h	$s8, $s1, $fp
	bne	$s6, $s5, .LBB8_9
.LBB8_11:                               # %for.end
	move	$a0, $s3
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
.Lfunc_end8:
	.size	Scaling_List, .Lfunc_end8-Scaling_List
                                        # -- End function
	.globl	GenerateSEImessage_NALU         # -- Begin function GenerateSEImessage_NALU
	.p2align	5
	.type	GenerateSEImessage_NALU,@function
GenerateSEImessage_NALU:                # @GenerateSEImessage_NALU
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	lu12i.w	$a0, 15
	ori	$a0, $a0, 560
	sub.d	$sp, $sp, $a0
	lu12i.w	$a0, 15
	ori	$a0, $a0, 2560
	pcaddu18i	$ra, %call36(AllocNALU)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(GenerateSEImessage_rbsp)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	addi.d	$a0, $sp, 16
	ori	$a3, $zero, 6
	ori	$a6, $zero, 1
	move	$a1, $fp
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(RBSPtoNALU)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 4
	st.w	$a0, $fp, 0
	move	$a0, $fp
	lu12i.w	$a1, 15
	ori	$a1, $a1, 560
	add.d	$sp, $sp, $a1
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end9:
	.size	GenerateSEImessage_NALU, .Lfunc_end9-GenerateSEImessage_NALU
                                        # -- End function
	.globl	GenerateSEImessage_rbsp         # -- Begin function GenerateSEImessage_rbsp
	.p2align	5
	.type	GenerateSEImessage_rbsp,@function
GenerateSEImessage_rbsp:                # @GenerateSEImessage_rbsp
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -576
	st.d	$ra, $sp, 568                   # 8-byte Folded Spill
	st.d	$fp, $sp, 560                   # 8-byte Folded Spill
	st.d	$s0, $sp, 552                   # 8-byte Folded Spill
	st.d	$s1, $sp, 544                   # 8-byte Folded Spill
	st.d	$s2, $sp, 536                   # 8-byte Folded Spill
	st.d	$s3, $sp, 528                   # 8-byte Folded Spill
	move	$s0, $a1
	ori	$a0, $zero, 1
	ori	$a1, $zero, 48
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	bnez	$a0, .LBB10_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB10_2:                               # %if.end
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$s1, $a0, %got_pc_lo12(input)
	ld.d	$a0, $s1, 0
	st.d	$s0, $fp, 32
	ori	$a1, $zero, 8
	st.w	$a1, $fp, 4
	addi.d	$a0, $a0, 1584
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.w	$s2, $a0, 0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(ftime)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB10_6
# %bb.3:                                # %if.end14
	ld.d	$a0, $s1, 0
	addi.d	$a1, $a0, 1584
	bstrpick.d	$a2, $s0, 31, 0
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	addi.w	$s0, $s0, 17
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a1, $a0, %pc_lo12(.L.str.71)
	ori	$a0, $zero, 8
	ori	$a2, $zero, 5
	move	$a3, $fp
	pcaddu18i	$ra, %call36(u_v)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 255
	bltu	$s0, $a0, .LBB10_7
# %bb.4:                                # %while.body.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$s1, $a0, %pc_lo12(.L.str.72)
	ori	$s2, $zero, 254
	.p2align	4, , 16
.LBB10_5:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 8
	ori	$a2, $zero, 255
	move	$a1, $s1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(u_v)
	jirl	$ra, $ra, 0
	addi.w	$s0, $s0, -255
	bltu	$s2, $s0, .LBB10_5
	b	.LBB10_7
.LBB10_6:                               # %if.end14.thread
	pcalau12i	$a0, %pc_hi20(.L.str.70)
	addi.d	$a0, $a0, %pc_lo12(.L.str.70)
	ld.d	$a1, $a0, 5
	ld.d	$a0, $a0, 0
	st.d	$a1, $sp, 29
	st.d	$a0, $sp, 24
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a1, $a0, %pc_lo12(.L.str.71)
	ori	$a0, $zero, 8
	ori	$a2, $zero, 5
	move	$a3, $fp
	pcaddu18i	$ra, %call36(u_v)
	jirl	$ra, $ra, 0
	ori	$s0, $zero, 30
.LBB10_7:                               # %while.end
	pcalau12i	$a0, %pc_hi20(.L.str.73)
	addi.d	$a1, $a0, %pc_lo12(.L.str.73)
	ori	$a0, $zero, 8
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(u_v)
	jirl	$ra, $ra, 0
	ld.h	$a2, $sp, 18
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$s0, $a0, %pc_lo12(.L.str.74)
	ori	$a0, $zero, 32
	move	$a1, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(u_v)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 8
	ld.hu	$a1, $sp, 16
	ori	$a2, $zero, 1000
	mul.d	$a0, $a0, $a2
	add.w	$a2, $a0, $a1
	ori	$a0, $zero, 32
	move	$a1, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(u_v)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 337430
	ori	$a2, $a0, 3684
	ori	$a0, $zero, 32
	move	$a1, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(u_v)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 456404
	ori	$a2, $a0, 3411
	ori	$a0, $zero, 32
	move	$a1, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(u_v)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $sp, 24
	beqz	$a0, .LBB10_10
# %bb.8:                                # %for.body.preheader
	move	$s3, $zero
	ori	$s1, $zero, 1
	addi.d	$s2, $sp, 24
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$s0, $a0, %pc_lo12(.L.str.75)
	.p2align	4, , 16
.LBB10_9:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ldx.b	$a2, $s3, $s2
	ori	$a0, $zero, 8
	move	$a1, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(u_v)
	jirl	$ra, $ra, 0
	bstrpick.d	$s3, $s1, 31, 0
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$s1, $s1, 1
	bltu	$s3, $a0, .LBB10_9
.LBB10_10:                              # %for.end
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a1, $a0, %pc_lo12(.L.str.75)
	ori	$a0, $zero, 8
	move	$a2, $zero
	move	$a3, $fp
	pcaddu18i	$ra, %call36(u_v)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(SODBtoRBSP)
	jirl	$ra, $ra, 0
	ld.w	$s0, $fp, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$s3, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 536                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 544                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 552                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 560                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 568                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 576
	ret
.Lfunc_end10:
	.size	GenerateSEImessage_rbsp, .Lfunc_end10-GenerateSEImessage_rbsp
                                        # -- End function
	.type	PicParSet,@object               # @PicParSet
	.comm	PicParSet,2048,8
	.type	active_sps,@object              # @active_sps
	.comm	active_sps,8,8
	.type	active_pps,@object              # @active_pps
	.comm	active_pps,8,8
	.type	.L__const.GenerateSequenceParameterSet.SubWidthC,@object # @__const.GenerateSequenceParameterSet.SubWidthC
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	2, 0x0
.L__const.GenerateSequenceParameterSet.SubWidthC:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	1                               # 0x1
	.size	.L__const.GenerateSequenceParameterSet.SubWidthC, 16

	.type	.L__const.GenerateSequenceParameterSet.SubHeightC,@object # @__const.GenerateSequenceParameterSet.SubHeightC
	.p2align	2, 0x0
.L__const.GenerateSequenceParameterSet.SubHeightC:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.size	.L__const.GenerateSequenceParameterSet.SubHeightC, 16

	.type	log2_max_frame_num_minus4,@object # @log2_max_frame_num_minus4
	.comm	log2_max_frame_num_minus4,4,4
	.type	log2_max_pic_order_cnt_lsb_minus4,@object # @log2_max_pic_order_cnt_lsb_minus4
	.comm	log2_max_pic_order_cnt_lsb_minus4,4,4
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"automatic frame cropping (width) not possible"
	.size	.L.str, 46

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"automatic frame cropping (height) not possible"
	.size	.L.str.1, 47

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"GeneratePictureParameterSet: slice_group_id"
	.size	.L.str.2, 44

	.type	ZZ_SCAN,@object                 # @ZZ_SCAN
	.section	.rodata.cst16,"aM",@progbits,16
ZZ_SCAN:
	.ascii	"\000\001\004\b\005\002\003\006\t\f\r\n\007\013\016\017"
	.size	ZZ_SCAN, 16

	.type	ZZ_SCAN8,@object                # @ZZ_SCAN8
	.section	.rodata,"a",@progbits
ZZ_SCAN8:
	.ascii	"\000\001\b\020\t\002\003\n\021\030 \031\022\013\004\005\f\023\032!(0)\"\033\024\r\006\007\016\025\034#*1892+$\035\026\017\027\036%,3:;4-&\037'.5<=6/7>?"
	.size	ZZ_SCAN8, 64

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"   : delta_sl   "
	.size	.L.str.4, 17

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"SeqParameterSet:bitstream"
	.size	.L.str.5, 26

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"SPS: profile_idc"
	.size	.L.str.6, 17

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"SPS: constrained_set0_flag"
	.size	.L.str.7, 27

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"SPS: constrained_set1_flag"
	.size	.L.str.8, 27

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"SPS: constrained_set2_flag"
	.size	.L.str.9, 27

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"SPS: constrained_set3_flag"
	.size	.L.str.10, 27

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"SPS: reserved_zero_4bits"
	.size	.L.str.11, 25

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"SPS: level_idc"
	.size	.L.str.12, 15

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"SPS: seq_parameter_set_id"
	.size	.L.str.13, 26

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"SPS: chroma_format_idc"
	.size	.L.str.14, 23

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"SPS: residue_transform_flag"
	.size	.L.str.15, 28

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"SPS: bit_depth_luma_minus8"
	.size	.L.str.16, 27

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"SPS: bit_depth_chroma_minus8"
	.size	.L.str.17, 29

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"SPS: lossless_qpprime_y_zero_flag"
	.size	.L.str.18, 34

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"SPS: seq_scaling_matrix_present_flag"
	.size	.L.str.19, 37

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"SPS: seq_scaling_list_present_flag"
	.size	.L.str.20, 35

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"SPS: log2_max_frame_num_minus4"
	.size	.L.str.21, 31

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"SPS: pic_order_cnt_type"
	.size	.L.str.22, 24

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"SPS: log2_max_pic_order_cnt_lsb_minus4"
	.size	.L.str.23, 39

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"SPS: delta_pic_order_always_zero_flag"
	.size	.L.str.24, 38

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"SPS: offset_for_non_ref_pic"
	.size	.L.str.25, 28

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"SPS: offset_for_top_to_bottom_field"
	.size	.L.str.26, 36

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"SPS: num_ref_frames_in_pic_order_cnt_cycle"
	.size	.L.str.27, 43

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"SPS: offset_for_ref_frame"
	.size	.L.str.28, 26

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"SPS: num_ref_frames"
	.size	.L.str.29, 20

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"SPS: gaps_in_frame_num_value_allowed_flag"
	.size	.L.str.30, 42

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"SPS: pic_width_in_mbs_minus1"
	.size	.L.str.31, 29

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"SPS: pic_height_in_map_units_minus1"
	.size	.L.str.32, 36

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"SPS: frame_mbs_only_flag"
	.size	.L.str.33, 25

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"SPS: mb_adaptive_frame_field_flag"
	.size	.L.str.34, 34

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"SPS: direct_8x8_inference_flag"
	.size	.L.str.35, 31

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"SPS: frame_cropping_flag"
	.size	.L.str.36, 25

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"SPS: frame_cropping_rect_left_offset"
	.size	.L.str.37, 37

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"SPS: frame_cropping_rect_right_offset"
	.size	.L.str.38, 38

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"SPS: frame_cropping_rect_top_offset"
	.size	.L.str.39, 36

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"SPS: frame_cropping_rect_bottom_offset"
	.size	.L.str.40, 39

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"SPS: vui_parameters_present_flag"
	.size	.L.str.41, 33

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"PicParameterSet:bitstream"
	.size	.L.str.42, 26

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"PPS: pic_parameter_set_id"
	.size	.L.str.43, 26

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"PPS: seq_parameter_set_id"
	.size	.L.str.44, 26

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"PPS: entropy_coding_mode_flag"
	.size	.L.str.45, 30

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"PPS: pic_order_present_flag"
	.size	.L.str.46, 28

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"PPS: num_slice_groups_minus1"
	.size	.L.str.47, 29

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"PPS: slice_group_map_type"
	.size	.L.str.48, 26

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"PPS: run_length_minus1[i]"
	.size	.L.str.49, 26

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"PPS: top_left[i]"
	.size	.L.str.50, 17

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"PPS: bottom_right[i]"
	.size	.L.str.51, 21

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"PPS: slice_group_change_direction_flag"
	.size	.L.str.52, 39

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"PPS: slice_group_change_rate_minus1"
	.size	.L.str.53, 36

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"PPS: pic_size_in_map_units_minus1"
	.size	.L.str.54, 34

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"PPS: >slice_group_id[i]"
	.size	.L.str.55, 24

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"PPS: num_ref_idx_l0_active_minus1"
	.size	.L.str.56, 34

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"PPS: num_ref_idx_l1_active_minus1"
	.size	.L.str.57, 34

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"PPS: weighted_pred_flag"
	.size	.L.str.58, 24

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"PPS: weighted_bipred_idc"
	.size	.L.str.59, 25

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"PPS: pic_init_qp_minus26"
	.size	.L.str.60, 25

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"PPS: pic_init_qs_minus26"
	.size	.L.str.61, 25

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"PPS: chroma_qp_index_offset"
	.size	.L.str.62, 28

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"PPS: deblocking_filter_control_present_flag"
	.size	.L.str.63, 44

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"PPS: constrained_intra_pred_flag"
	.size	.L.str.64, 33

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"PPS: redundant_pic_cnt_present_flag"
	.size	.L.str.65, 36

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"PPS: transform_8x8_mode_flag"
	.size	.L.str.66, 29

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"PPS: pic_scaling_matrix_present_flag"
	.size	.L.str.67, 37

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"PPS: pic_scaling_list_present_flag"
	.size	.L.str.68, 35

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"PPS: second_chroma_qp_index_offset"
	.size	.L.str.69, 35

	.type	.L.str.70,@object               # @.str.70
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.70:
	.asciz	"Empty Message"
	.size	.L.str.70, 14

	.type	.L.str.71,@object               # @.str.71
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.71:
	.asciz	"SEI: last_payload_type_byte"
	.size	.L.str.71, 28

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"SEI: ff_byte"
	.size	.L.str.72, 13

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"SEI: last_payload_size_byte"
	.size	.L.str.73, 28

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"SEI: uuid_iso_iec_11578"
	.size	.L.str.74, 24

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"SEI: user_data_payload_byte"
	.size	.L.str.75, 28

	.type	color_formats,@object           # @color_formats
	.comm	color_formats,4,4
	.type	top_pic,@object                 # @top_pic
	.comm	top_pic,8,8
	.type	bottom_pic,@object              # @bottom_pic
	.comm	bottom_pic,8,8
	.type	frame_pic,@object               # @frame_pic
	.comm	frame_pic,8,8
	.type	frame_pic_1,@object             # @frame_pic_1
	.comm	frame_pic_1,8,8
	.type	frame_pic_2,@object             # @frame_pic_2
	.comm	frame_pic_2,8,8
	.type	frame_pic_3,@object             # @frame_pic_3
	.comm	frame_pic_3,8,8
	.type	frame_pic_si,@object            # @frame_pic_si
	.comm	frame_pic_si,8,8
	.type	Bit_Buffer,@object              # @Bit_Buffer
	.comm	Bit_Buffer,8,8
	.type	imgY_org,@object                # @imgY_org
	.comm	imgY_org,8,8
	.type	imgUV_org,@object               # @imgUV_org
	.comm	imgUV_org,8,8
	.type	imgY_sub_tmp,@object            # @imgY_sub_tmp
	.comm	imgY_sub_tmp,8,8
	.type	PicPos,@object                  # @PicPos
	.comm	PicPos,8,8
	.type	me_tot_time,@object             # @me_tot_time
	.comm	me_tot_time,8,8
	.type	me_time,@object                 # @me_time
	.comm	me_time,8,8
	.type	dsr_new_search_range,@object    # @dsr_new_search_range
	.comm	dsr_new_search_range,4,4
	.type	mb_adaptive,@object             # @mb_adaptive
	.comm	mb_adaptive,4,4
	.type	MBPairIsField,@object           # @MBPairIsField
	.comm	MBPairIsField,4,4
	.type	wp_weight,@object               # @wp_weight
	.comm	wp_weight,8,8
	.type	wp_offset,@object               # @wp_offset
	.comm	wp_offset,8,8
	.type	wbp_weight,@object              # @wbp_weight
	.comm	wbp_weight,8,8
	.type	luma_log_weight_denom,@object   # @luma_log_weight_denom
	.comm	luma_log_weight_denom,4,4
	.type	chroma_log_weight_denom,@object # @chroma_log_weight_denom
	.comm	chroma_log_weight_denom,4,4
	.type	wp_luma_round,@object           # @wp_luma_round
	.comm	wp_luma_round,4,4
	.type	wp_chroma_round,@object         # @wp_chroma_round
	.comm	wp_chroma_round,4,4
	.type	imgY_org_top,@object            # @imgY_org_top
	.comm	imgY_org_top,8,8
	.type	imgY_org_bot,@object            # @imgY_org_bot
	.comm	imgY_org_bot,8,8
	.type	imgUV_org_top,@object           # @imgUV_org_top
	.comm	imgUV_org_top,8,8
	.type	imgUV_org_bot,@object           # @imgUV_org_bot
	.comm	imgUV_org_bot,8,8
	.type	imgY_org_frm,@object            # @imgY_org_frm
	.comm	imgY_org_frm,8,8
	.type	imgUV_org_frm,@object           # @imgUV_org_frm
	.comm	imgUV_org_frm,8,8
	.type	imgY_com,@object                # @imgY_com
	.comm	imgY_com,8,8
	.type	imgUV_com,@object               # @imgUV_com
	.comm	imgUV_com,8,8
	.type	direct_ref_idx,@object          # @direct_ref_idx
	.comm	direct_ref_idx,8,8
	.type	direct_pdir,@object             # @direct_pdir
	.comm	direct_pdir,8,8
	.type	pixel_map,@object               # @pixel_map
	.comm	pixel_map,8,8
	.type	refresh_map,@object             # @refresh_map
	.comm	refresh_map,8,8
	.type	intras,@object                  # @intras
	.comm	intras,4,4
	.type	frame_ctr,@object               # @frame_ctr
	.comm	frame_ctr,20,4
	.type	frame_no,@object                # @frame_no
	.comm	frame_no,4,4
	.type	nextP_tr_fld,@object            # @nextP_tr_fld
	.comm	nextP_tr_fld,4,4
	.type	nextP_tr_frm,@object            # @nextP_tr_frm
	.comm	nextP_tr_frm,4,4
	.type	tot_time,@object                # @tot_time
	.comm	tot_time,8,8
	.type	errortext,@object               # @errortext
	.comm	errortext,300,1
	.type	b8_ipredmode8x8,@object         # @b8_ipredmode8x8
	.comm	b8_ipredmode8x8,16,1
	.type	b8_intra_pred_modes8x8,@object  # @b8_intra_pred_modes8x8
	.comm	b8_intra_pred_modes8x8,16,1
	.type	gop_structure,@object           # @gop_structure
	.comm	gop_structure,8,8
	.type	rdopt,@object                   # @rdopt
	.comm	rdopt,8,8
	.type	rddata_top_frame_mb,@object     # @rddata_top_frame_mb
	.comm	rddata_top_frame_mb,1752,8
	.type	rddata_bot_frame_mb,@object     # @rddata_bot_frame_mb
	.comm	rddata_bot_frame_mb,1752,8
	.type	rddata_top_field_mb,@object     # @rddata_top_field_mb
	.comm	rddata_top_field_mb,1752,8
	.type	rddata_bot_field_mb,@object     # @rddata_bot_field_mb
	.comm	rddata_bot_field_mb,1752,8
	.type	p_stat,@object                  # @p_stat
	.comm	p_stat,8,8
	.type	p_log,@object                   # @p_log
	.comm	p_log,8,8
	.type	p_trace,@object                 # @p_trace
	.comm	p_trace,8,8
	.type	p_in,@object                    # @p_in
	.comm	p_in,4,4
	.type	p_dec,@object                   # @p_dec
	.comm	p_dec,4,4
	.type	mb16x16_cost_frame,@object      # @mb16x16_cost_frame
	.comm	mb16x16_cost_frame,8,8
	.type	Bytes_After_Header,@object      # @Bytes_After_Header
	.comm	Bytes_After_Header,4,4
	.type	encode_one_macroblock,@object   # @encode_one_macroblock
	.comm	encode_one_macroblock,8,8
	.type	lrec,@object                    # @lrec
	.comm	lrec,8,8
	.type	lrec_uv,@object                 # @lrec_uv
	.comm	lrec_uv,8,8
	.type	si_frame_indicator,@object      # @si_frame_indicator
	.comm	si_frame_indicator,4,4
	.type	sp2_frame_indicator,@object     # @sp2_frame_indicator
	.comm	sp2_frame_indicator,4,4
	.type	number_sp2_frames,@object       # @number_sp2_frames
	.comm	number_sp2_frames,4,4
	.type	giRDOpt_B8OnlyFlag,@object      # @giRDOpt_B8OnlyFlag
	.comm	giRDOpt_B8OnlyFlag,4,4
	.type	imgY_tmp,@object                # @imgY_tmp
	.comm	imgY_tmp,8,8
	.type	imgUV_tmp,@object               # @imgUV_tmp
	.comm	imgUV_tmp,16,8
	.type	frameNuminGOP,@object           # @frameNuminGOP
	.comm	frameNuminGOP,4,4
	.type	redundant_coding,@object        # @redundant_coding
	.comm	redundant_coding,4,4
	.type	key_frame,@object               # @key_frame
	.comm	key_frame,4,4
	.type	redundant_ref_idx,@object       # @redundant_ref_idx
	.comm	redundant_ref_idx,4,4
	.type	img_pad_size_uv_x,@object       # @img_pad_size_uv_x
	.comm	img_pad_size_uv_x,4,4
	.type	img_pad_size_uv_y,@object       # @img_pad_size_uv_y
	.comm	img_pad_size_uv_y,4,4
	.type	chroma_mask_mv_y,@object        # @chroma_mask_mv_y
	.comm	chroma_mask_mv_y,1,1
	.type	chroma_mask_mv_x,@object        # @chroma_mask_mv_x
	.comm	chroma_mask_mv_x,1,1
	.type	chroma_shift_y,@object          # @chroma_shift_y
	.comm	chroma_shift_y,4,4
	.type	chroma_shift_x,@object          # @chroma_shift_x
	.comm	chroma_shift_x,4,4
	.type	shift_cr_x,@object              # @shift_cr_x
	.comm	shift_cr_x,4,4
	.type	shift_cr_y,@object              # @shift_cr_y
	.comm	shift_cr_y,4,4
	.type	img_padded_size_x,@object       # @img_padded_size_x
	.comm	img_padded_size_x,4,4
	.type	img_cr_padded_size_x,@object    # @img_cr_padded_size_x
	.comm	img_cr_padded_size_x,4,4
	.type	start_me_refinement_hp,@object  # @start_me_refinement_hp
	.comm	start_me_refinement_hp,4,4
	.type	start_me_refinement_qp,@object  # @start_me_refinement_qp
	.comm	start_me_refinement_qp,4,4
	.type	WriteNALU,@object               # @WriteNALU
	.comm	WriteNALU,8,8
	.type	seiHasBufferingPeriod_info,@object # @seiHasBufferingPeriod_info
	.comm	seiHasBufferingPeriod_info,4,4
	.type	seiBufferingPeriod,@object      # @seiBufferingPeriod
	.comm	seiBufferingPeriod,280,8
	.type	seiHasPicTiming_info,@object    # @seiHasPicTiming_info
	.comm	seiHasPicTiming_info,4,4
	.type	seiPicTiming,@object            # @seiPicTiming
	.comm	seiPicTiming,152,8
	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"VUI: aspect_ratio_info_present_flag"
	.size	.L.str.77, 36

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"VUI: overscan_info_present_flag"
	.size	.L.str.78, 32

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"VUI: video_signal_type_present_flag"
	.size	.L.str.79, 36

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"VUI: video format"
	.size	.L.str.80, 18

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"VUI: video_full_range_flag"
	.size	.L.str.81, 27

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"VUI: color_description_present_flag"
	.size	.L.str.82, 36

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"VUI: colour primaries"
	.size	.L.str.83, 22

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"VUI: transfer characteristics"
	.size	.L.str.84, 30

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"VUI: matrix coefficients"
	.size	.L.str.85, 25

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"VUI: chroma_loc_info_present_flag"
	.size	.L.str.86, 34

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"VUI: timing_info_present_flag"
	.size	.L.str.87, 30

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	"VUI: nal_hrd_parameters_present_flag"
	.size	.L.str.88, 37

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	"VUI: vcl_hrd_parameters_present_flag"
	.size	.L.str.89, 37

	.type	.L.str.90,@object               # @.str.90
.L.str.90:
	.asciz	"VUI: pic_struc_present_flag"
	.size	.L.str.90, 28

	.type	.L.str.91,@object               # @.str.91
.L.str.91:
	.asciz	"VUI: bitstream_restriction_flag"
	.size	.L.str.91, 32

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"Parset.c: slice_group_map_type invalid, default"
	.size	.Lstr, 48

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"Sequence Parameter VUI not yet implemented, this should never happen, exit"
	.size	.Lstr.1, 75

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"VUI: writing Sequence Parameter VUI to signal RGB format"
	.size	.Lstr.2, 57

	.section	".note.GNU-stack","",@progbits
	.addrsig
