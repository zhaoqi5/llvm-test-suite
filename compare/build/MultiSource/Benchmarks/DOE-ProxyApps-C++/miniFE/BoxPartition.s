	.file	"BoxPartition.cpp"
	.text
	.globl	_Z13box_map_localRK3BoxiPKiiii  # -- Begin function _Z13box_map_localRK3BoxiPKiiii
	.p2align	5
	.type	_Z13box_map_localRK3BoxiPKiiii,@function
_Z13box_map_localRK3BoxiPKiiii:         # @_Z13box_map_localRK3BoxiPKiiii
# %bb.0:                                # %entry
	move	$a6, $a0
	add.w	$a3, $a3, $a1
	addi.w	$a0, $zero, -1
	bltz	$a3, .LBB0_8
# %bb.1:                                # %land.lhs.true.i
	ld.w	$a7, $a6, 4
	ld.w	$t0, $a6, 0
	alsl.d	$a7, $a1, $a7, 1
	sub.w	$a7, $a7, $t0
	bge	$a3, $a7, .LBB0_8
# %bb.2:                                # %land.lhs.true.i
	add.w	$a4, $a4, $a1
	bltz	$a4, .LBB0_8
# %bb.3:                                # %land.lhs.true23.i
	ld.w	$t0, $a6, 12
	ld.w	$t1, $a6, 8
	alsl.d	$t0, $a1, $t0, 1
	sub.w	$t0, $t0, $t1
	bge	$a4, $t0, .LBB0_8
# %bb.4:                                # %land.lhs.true23.i
	add.w	$a5, $a5, $a1
	bltz	$a5, .LBB0_8
# %bb.5:                                # %land.lhs.true23.i
	ld.w	$t1, $a6, 20
	ld.w	$a6, $a6, 16
	alsl.d	$a1, $a1, $t1, 1
	sub.w	$a1, $a1, $a6
	bge	$a5, $a1, .LBB0_8
# %bb.6:                                # %_ZL19box_map_local_entryRK3Boxiiii.exit
	mul.d	$a0, $t0, $a5
	add.d	$a0, $a0, $a4
	mul.d	$a0, $a0, $a7
	add.w	$a0, $a0, $a3
	bltz	$a0, .LBB0_8
# %bb.7:                                # %if.then
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a2, $a0
.LBB0_8:                                # %if.end
	ret
.Lfunc_end0:
	.size	_Z13box_map_localRK3BoxiPKiiii, .Lfunc_end0-_Z13box_map_localRK3BoxiPKiiii
                                        # -- End function
	.globl	_Z13box_partitioniiiRK3BoxPS_   # -- Begin function _Z13box_partitioniiiRK3BoxPS_
	.p2align	5
	.type	_Z13box_partitioniiiRK3BoxPS_,@function
_Z13box_partitioniiiRK3BoxPS_:          # @_Z13box_partitioniiiRK3BoxPS_
# %bb.0:                                # %entry
	sub.w	$a5, $a1, $a0
	ori	$a6, $zero, 1
	bne	$a5, $a6, .LBB1_2
# %bb.1:                                # %if.then
	ld.w	$a1, $a3, 0
	slli.d	$a2, $a0, 4
	alsl.d	$a0, $a0, $a2, 3
	stx.w	$a1, $a4, $a0
	ld.w	$a1, $a3, 4
	add.d	$a0, $a4, $a0
	st.w	$a1, $a0, 4
	ld.w	$a1, $a3, 8
	st.w	$a1, $a0, 8
	ld.w	$a1, $a3, 12
	st.w	$a1, $a0, 12
	ld.w	$a1, $a3, 16
	st.w	$a1, $a0, 16
	ld.w	$a1, $a3, 20
	st.w	$a1, $a0, 20
	ret
.LBB1_2:                                # %if.else
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
	slli.w	$s3, $a2, 1
	alsl.d	$a6, $s3, $a3, 2
	slli.d	$s4, $s3, 2
	ld.w	$a6, $a6, 4
	ldx.w	$a7, $a3, $s4
	sub.d	$s5, $a6, $a7
	bstrpick.d	$a6, $a5, 31, 31
	add.w	$a6, $a5, $a6
	srai.d	$a6, $a6, 1
	sub.d	$a7, $a5, $a6
	movgr2fr.w	$fa0, $s5
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a7
	ffint.d.w	$fa1, $fa1
	movgr2fr.w	$fa2, $a5
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa1, $fa1, $fa2
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a7, $fa0
	sub.d	$s6, $s5, $a7
	addi.w	$a2, $a2, 2
	lu12i.w	$a7, 349525
	ori	$a7, $a7, 1366
	mul.d	$a7, $a2, $a7
	srli.d	$t0, $a7, 63
	srli.d	$a7, $a7, 32
	add.d	$a7, $a7, $t0
	alsl.d	$a7, $a7, $a7, 1
	sub.w	$fp, $a2, $a7
	addi.w	$a2, $a5, 1
	ori	$a5, $zero, 3
	add.w	$s0, $a6, $a0
	bltu	$a2, $a5, .LBB1_4
# %bb.3:                                # %if.then45
	vld	$vr0, $a3, 0
	ld.d	$a2, $a3, 16
	vst	$vr0, $sp, 16
	st.d	$a2, $sp, 32
	addi.d	$a2, $sp, 16
	ldx.w	$a5, $s4, $a2
	alsl.d	$a2, $s3, $a2, 2
	add.d	$a5, $a5, $s6
	st.w	$a5, $a2, 4
	move	$s7, $a3
	addi.d	$a3, $sp, 16
	move	$s1, $a0
	move	$s8, $a1
	move	$a1, $s0
	move	$a2, $fp
	move	$s2, $a4
	pcaddu18i	$ra, %call36(_Z13box_partitioniiiRK3BoxPS_)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a3, $s7
	move	$a1, $s8
	move	$a4, $s2
.LBB1_4:                                # %if.end
	beq	$a1, $a0, .LBB1_6
# %bb.5:                                # %if.then77
	vld	$vr0, $a3, 0
	ld.d	$a0, $a3, 16
	vst	$vr0, $sp, 16
	st.d	$a0, $sp, 32
	addi.d	$a0, $sp, 16
	ldx.w	$a2, $s4, $a0
	alsl.d	$a3, $s3, $a0, 2
	add.d	$a5, $a2, $s6
	stx.w	$a5, $s4, $a0
	add.d	$a0, $a2, $s5
	st.w	$a0, $a3, 4
	addi.d	$a3, $sp, 16
	move	$a0, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_Z13box_partitioniiiRK3BoxPS_)
	jirl	$ra, $ra, 0
.LBB1_6:
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
.Lfunc_end1:
	.size	_Z13box_partitioniiiRK3BoxPS_, .Lfunc_end1-_Z13box_partitioniiiRK3BoxPS_
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function _Z17box_partition_rcbiiRK3BoxiPPS_PPiS5_S5_S5_
.LCPI2_0:
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	26                              # 0x1a
	.word	27                              # 0x1b
	.word	28                              # 0x1c
	.word	29                              # 0x1d
	.word	30                              # 0x1e
	.word	31                              # 0x1f
.LCPI2_1:
	.word	16                              # 0x10
	.word	17                              # 0x11
	.word	18                              # 0x12
	.word	19                              # 0x13
	.word	20                              # 0x14
	.word	21                              # 0x15
	.word	22                              # 0x16
	.word	23                              # 0x17
.LCPI2_2:
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	12                              # 0xc
	.word	13                              # 0xd
	.word	14                              # 0xe
	.word	15                              # 0xf
.LCPI2_3:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.text
	.globl	_Z17box_partition_rcbiiRK3BoxiPPS_PPiS5_S5_S5_
	.p2align	5
	.type	_Z17box_partition_rcbiiRK3BoxiPPS_PPiS5_S5_S5_,@function
_Z17box_partition_rcbiiRK3BoxiPPS_PPiS5_S5_S5_: # @_Z17box_partition_rcbiiRK3BoxiPPS_PPiS5_S5_S5_
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -704
	.cfi_def_cfa_offset 704
	st.d	$ra, $sp, 696                   # 8-byte Folded Spill
	st.d	$fp, $sp, 688                   # 8-byte Folded Spill
	st.d	$s0, $sp, 680                   # 8-byte Folded Spill
	st.d	$s1, $sp, 672                   # 8-byte Folded Spill
	st.d	$s2, $sp, 664                   # 8-byte Folded Spill
	st.d	$s3, $sp, 656                   # 8-byte Folded Spill
	st.d	$s4, $sp, 648                   # 8-byte Folded Spill
	st.d	$s5, $sp, 640                   # 8-byte Folded Spill
	st.d	$s6, $sp, 632                   # 8-byte Folded Spill
	st.d	$s7, $sp, 624                   # 8-byte Folded Spill
	st.d	$s8, $sp, 616                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 30, -80
	.cfi_offset 31, -88
	st.d	$a7, $sp, 112                   # 8-byte Folded Spill
	st.d	$a6, $sp, 104                   # 8-byte Folded Spill
	st.d	$a5, $sp, 96                    # 8-byte Folded Spill
	move	$s0, $a4
	move	$s1, $a3
	move	$s2, $a2
	move	$s3, $a1
	move	$s7, $a0
	ori	$fp, $zero, 24
	mul.d	$a0, $a0, $fp
	mulh.du	$a1, $s7, $fp
	sltu	$a1, $zero, $a1
	masknez	$a0, $a0, $a1
	addi.w	$a2, $zero, -1
	st.d	$a2, $sp, 320                   # 8-byte Folded Spill
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.d	$a0, $s0, 0
	ori	$a2, $zero, 2
	move	$a0, $zero
	move	$a1, $s7
	move	$a3, $s2
	move	$a4, $s4
	pcaddu18i	$ra, %call36(_Z13box_partitioniiiRK3BoxPS_)
	jirl	$ra, $ra, 0
	st.d	$s3, $sp, 168                   # 8-byte Folded Spill
	mul.d	$a0, $s3, $fp
	add.d	$s6, $s4, $a0
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	ldx.w	$a0, $s4, $a0
	ld.w	$a1, $s6, 8
	ld.w	$a2, $s6, 16
	ld.w	$a3, $s6, 4
	ld.w	$a4, $s6, 12
	ld.w	$s2, $s6, 20
	st.d	$a0, $sp, 496                   # 8-byte Folded Spill
	st.d	$a3, $sp, 608                   # 8-byte Folded Spill
	sub.d	$s3, $a3, $a0
	st.d	$a1, $sp, 376                   # 8-byte Folded Spill
	st.d	$a4, $sp, 600                   # 8-byte Folded Spill
	sub.d	$s4, $a4, $a1
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	sub.d	$s5, $s2, $a2
	alsl.d	$a0, $s1, $s3, 1
	alsl.d	$a1, $s1, $s4, 1
	st.d	$s1, $sp, 504                   # 8-byte Folded Spill
	alsl.d	$a2, $s1, $s5, 1
	mul.d	$a0, $a1, $a0
	mul.w	$fp, $a0, $a2
	slli.d	$s0, $fp, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	slli.d	$a0, $s7, 2
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	addi.d	$s8, $a0, 4
	move	$a0, $s8
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	move	$a0, $s8
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ori	$s7, $zero, 1
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	blt	$fp, $s7, .LBB2_2
# %bb.1:                                # %for.body.preheader.i
	ori	$a1, $zero, 255
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB2_2:                                # %for.cond68.preheader.i
	st.d	$s1, $sp, 512                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	blt	$a4, $s7, .LBB2_92
# %bb.3:                                # %for.body70.lr.ph.i
	addi.w	$a0, $s5, 0
	ld.d	$t5, $sp, 504                   # 8-byte Folded Reload
	sub.w	$a3, $zero, $t5
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	add.w	$a0, $a0, $t5
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	bge	$a3, $a0, .LBB2_90
# %bb.4:                                # %for.body70.lr.ph.split.us.i
	addi.w	$t7, $s4, 0
	add.w	$a0, $t7, $t5
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	bge	$a3, $a0, .LBB2_90
# %bb.5:                                # %for.body70.us.us.i.preheader
	addi.w	$t8, $s3, 0
	add.w	$ra, $t8, $t5
	bge	$a3, $ra, .LBB2_94
# %bb.6:                                # %for.body70.us.us.i.us.preheader
	move	$a6, $zero
	move	$s7, $zero
	move	$s8, $zero
	move	$a0, $zero
	move	$a1, $zero
	ld.d	$t6, $sp, 496                   # 8-byte Folded Reload
	sub.w	$t3, $t6, $t5
	ld.d	$a2, $sp, 608                   # 8-byte Folded Reload
	add.w	$a7, $a2, $t5
	ld.d	$a2, $sp, 376                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $t5
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a2, $sp, 600                   # 8-byte Folded Reload
	add.w	$a2, $a2, $t5
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $t5
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	add.w	$a2, $s2, $t5
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	slli.d	$t1, $t5, 1
	add.w	$s5, $t8, $t1
	addi.w	$a2, $s5, -1
	st.d	$a2, $sp, 304                   # 8-byte Folded Spill
	xvreplgr2vr.w	$xr12, $t5
	st.d	$a3, $sp, 336                   # 8-byte Folded Spill
	xvreplgr2vr.w	$xr0, $a3
	pcalau12i	$a2, %pc_hi20(.LCPI2_0)
	xvld	$xr1, $a2, %pc_lo12(.LCPI2_0)
	pcalau12i	$a2, %pc_hi20(.LCPI2_1)
	xvld	$xr2, $a2, %pc_lo12(.LCPI2_1)
	pcalau12i	$a2, %pc_hi20(.LCPI2_2)
	xvld	$xr3, $a2, %pc_lo12(.LCPI2_2)
	pcalau12i	$a2, %pc_hi20(.LCPI2_3)
	xvld	$xr4, $a2, %pc_lo12(.LCPI2_3)
	xvadd.w	$xr1, $xr0, $xr1
	xvst	$xr1, $sp, 272                  # 32-byte Folded Spill
	xvadd.w	$xr1, $xr0, $xr2
	xvst	$xr1, $sp, 240                  # 32-byte Folded Spill
	xvadd.w	$xr1, $xr0, $xr3
	xvst	$xr1, $sp, 208                  # 32-byte Folded Spill
	xvadd.w	$xr0, $xr0, $xr4
	xvst	$xr0, $sp, 176                  # 32-byte Folded Spill
	xvrepli.w	$xr13, 32
	ld.d	$t4, $sp, 512                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	st.d	$t7, $sp, 480                   # 8-byte Folded Spill
	st.d	$t8, $sp, 472                   # 8-byte Folded Spill
	st.d	$ra, $sp, 464                   # 8-byte Folded Spill
	st.d	$t3, $sp, 520                   # 8-byte Folded Spill
	st.d	$t1, $sp, 544                   # 8-byte Folded Spill
	xvst	$xr12, $sp, 432                 # 32-byte Folded Spill
	xvst	$xr13, $sp, 400                 # 32-byte Folded Spill
	b	.LBB2_8
	.p2align	4, , 16
.LBB2_7:                                # %if.end188.us.us.i.us
                                        #   in Loop: Header=BB2_8 Depth=1
	addi.d	$a6, $a6, 1
	beq	$a6, $a4, .LBB2_93
.LBB2_8:                                # %for.body70.us.us.i.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_16 Depth 2
                                        #       Child Loop BB2_70 Depth 3
                                        #         Child Loop BB2_82 Depth 4
                                        #         Child Loop BB2_87 Depth 4
                                        #         Child Loop BB2_75 Depth 4
                                        #       Child Loop BB2_20 Depth 3
                                        #         Child Loop BB2_59 Depth 4
                                        #         Child Loop BB2_64 Depth 4
                                        #         Child Loop BB2_52 Depth 4
                                        #         Child Loop BB2_27 Depth 4
                                        #           Child Loop BB2_43 Depth 5
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	add.w	$a2, $a2, $a6
	mod.w	$t0, $a2, $a4
	slli.d	$a2, $t0, 4
	alsl.d	$a2, $t0, $a2, 3
	ldx.w	$s3, $a5, $a2
	slli.d	$a3, $a6, 2
	stx.w	$s7, $s0, $a3
	stx.w	$s8, $s1, $a3
	bge	$s3, $a7, .LBB2_7
# %bb.9:                                # %lor.lhs.false.i.us.us.i.us
                                        #   in Loop: Header=BB2_8 Depth=1
	add.d	$a2, $a5, $a2
	ld.w	$a3, $a2, 4
	st.d	$a3, $sp, 552                   # 8-byte Folded Spill
	bge	$t3, $a3, .LBB2_7
# %bb.10:                               # %lor.lhs.false8.i.us.us.i.us
                                        #   in Loop: Header=BB2_8 Depth=1
	ld.w	$t2, $a2, 8
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	st.d	$t2, $sp, 368                   # 8-byte Folded Spill
	bge	$t2, $a3, .LBB2_7
# %bb.11:                               # %lor.lhs.false14.i.us.us.i.us
                                        #   in Loop: Header=BB2_8 Depth=1
	ld.w	$t2, $a2, 12
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	st.d	$t2, $sp, 360                   # 8-byte Folded Spill
	bge	$a3, $t2, .LBB2_7
# %bb.12:                               # %lor.lhs.false20.i.us.us.i.us
                                        #   in Loop: Header=BB2_8 Depth=1
	ld.w	$t2, $a2, 16
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	st.d	$t2, $sp, 80                    # 8-byte Folded Spill
	bge	$t2, $a3, .LBB2_7
# %bb.13:                               # %_ZL12box_disjointRK3BoxS1_.exit.us.us.i.us
                                        #   in Loop: Header=BB2_8 Depth=1
	ld.w	$a3, $a2, 20
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	bge	$a2, $a3, .LBB2_7
# %bb.14:                               # %if.then.us.us.i.us
                                        #   in Loop: Header=BB2_8 Depth=1
	st.d	$t0, $sp, 72                    # 8-byte Folded Spill
	st.d	$zero, $sp, 344                 # 8-byte Folded Spill
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	sub.w	$a2, $a2, $t5
	st.d	$a2, $sp, 600                   # 8-byte Folded Spill
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	add.w	$a2, $a3, $t5
	st.d	$a2, $sp, 592                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $t5
	st.d	$a2, $sp, 584                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 360                   # 8-byte Folded Reload
	add.w	$a2, $a2, $t5
	st.d	$a2, $sp, 576                   # 8-byte Folded Spill
	sub.w	$a2, $s3, $t5
	st.d	$a2, $sp, 568                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 552                   # 8-byte Folded Reload
	add.w	$a2, $a2, $t5
	st.d	$a2, $sp, 560                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 336                   # 8-byte Folded Reload
	st.d	$a6, $sp, 56                    # 8-byte Folded Spill
	st.d	$a7, $sp, 48                    # 8-byte Folded Spill
	b	.LBB2_16
	.p2align	4, , 16
.LBB2_15:                               # %for.cond109.for.inc185_crit_edge.split.us.split.us.us.us.us.us.i.us
                                        #   in Loop: Header=BB2_16 Depth=2
	ld.d	$a3, $sp, 328                   # 8-byte Folded Reload
	addi.w	$a3, $a3, 1
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	st.d	$a2, $sp, 344                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 48                    # 8-byte Folded Reload
	beq	$a3, $a2, .LBB2_7
.LBB2_16:                               # %for.cond109.preheader.us.us.us.us.i.us
                                        #   Parent Loop BB2_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_70 Depth 3
                                        #         Child Loop BB2_82 Depth 4
                                        #         Child Loop BB2_87 Depth 4
                                        #         Child Loop BB2_75 Depth 4
                                        #       Child Loop BB2_20 Depth 3
                                        #         Child Loop BB2_59 Depth 4
                                        #         Child Loop BB2_64 Depth 4
                                        #         Child Loop BB2_52 Depth 4
                                        #         Child Loop BB2_27 Depth 4
                                        #           Child Loop BB2_43 Depth 5
	st.d	$a3, $sp, 328                   # 8-byte Folded Spill
	add.w	$a2, $a3, $t5
	ld.d	$s0, $sp, 552                   # 8-byte Folded Reload
	st.d	$a2, $sp, 608                   # 8-byte Folded Spill
	bltz	$a2, .LBB2_95
# %bb.17:                               # %for.cond114.preheader.lr.ph.split.us.split.us.us.us.us.us.i.us
                                        #   in Loop: Header=BB2_16 Depth=2
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 328                   # 8-byte Folded Reload
	add.w	$t2, $a6, $a2
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	slt	$a2, $t2, $a2
	xori	$a2, $a2, 1
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	slt	$a3, $t2, $a3
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 72                    # 8-byte Folded Reload
	xor	$a4, $a4, $a5
	sltu	$a4, $zero, $a4
	ld.d	$a5, $sp, 320                   # 8-byte Folded Reload
	slt	$a5, $a5, $a6
	and	$a4, $a4, $a5
	and	$a2, $a2, $a3
	st.d	$a2, $sp, 384                   # 8-byte Folded Spill
	beqz	$a4, .LBB2_67
# %bb.18:                               # %for.cond114.preheader.us.us.us.us.us.us.us.i.us.preheader
                                        #   in Loop: Header=BB2_16 Depth=2
	st.d	$zero, $sp, 392                 # 8-byte Folded Spill
	ld.d	$a7, $sp, 336                   # 8-byte Folded Reload
	st.d	$t2, $sp, 488                   # 8-byte Folded Spill
	b	.LBB2_20
	.p2align	4, , 16
.LBB2_19:                               # %for.cond114.for.inc182_crit_edge.split.us.us.us.us.us.us.us.us.i.us
                                        #   in Loop: Header=BB2_20 Depth=3
	addi.w	$a7, $a7, 1
	ld.d	$a2, $sp, 392                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	st.d	$a2, $sp, 392                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 352                   # 8-byte Folded Reload
	beq	$a7, $a2, .LBB2_15
.LBB2_20:                               # %for.cond114.preheader.us.us.us.us.us.us.us.i.us
                                        #   Parent Loop BB2_8 Depth=1
                                        #     Parent Loop BB2_16 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_59 Depth 4
                                        #         Child Loop BB2_64 Depth 4
                                        #         Child Loop BB2_52 Depth 4
                                        #         Child Loop BB2_27 Depth 4
                                        #           Child Loop BB2_43 Depth 5
	add.w	$s2, $a7, $t5
	bltz	$s2, .LBB2_95
# %bb.21:                               # %for.body117.lr.ph.split.us356.us.us.us.us.us.us.i.us
                                        #   in Loop: Header=BB2_20 Depth=3
	ld.d	$a2, $sp, 376                   # 8-byte Folded Reload
	add.w	$s1, $a7, $a2
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	slt	$a2, $s1, $a2
	xori	$a2, $a2, 1
	ld.d	$a3, $sp, 360                   # 8-byte Folded Reload
	slt	$a3, $s1, $a3
	and	$a2, $a2, $a3
	ld.d	$a3, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 328                   # 8-byte Folded Reload
	slt	$a3, $a4, $a3
	ld.d	$a4, $sp, 320                   # 8-byte Folded Reload
	slt	$a4, $a4, $a7
	and	$a3, $a3, $a4
	ld.d	$a4, $sp, 384                   # 8-byte Folded Reload
	and	$t0, $a4, $a2
	ori	$a6, $zero, 1
	st.d	$a7, $sp, 536                   # 8-byte Folded Spill
	bne	$a3, $a6, .LBB2_48
# %bb.22:                               #   in Loop: Header=BB2_20 Depth=3
	ld.d	$fp, $sp, 336                   # 8-byte Folded Reload
	st.d	$t0, $sp, 528                   # 8-byte Folded Spill
	b	.LBB2_27
.LBB2_23:                               # %if.then.i160.us.us.us.us.us.us.us.us.us.i.us
                                        #   in Loop: Header=BB2_27 Depth=4
	slli.d	$a0, $s5, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
.LBB2_24:                               # %_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.us.us.i.us
                                        #   in Loop: Header=BB2_27 Depth=4
	ld.d	$t0, $sp, 528                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 536                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 488                   # 8-byte Folded Reload
	xvld	$xr13, $sp, 400                 # 32-byte Folded Reload
	xvld	$xr12, $sp, 432                 # 32-byte Folded Reload
	ld.d	$t1, $sp, 544                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 520                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 464                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 472                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 480                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 496                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 504                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 512                   # 8-byte Folded Reload
.LBB2_25:                               # %_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.us.us.i.us
                                        #   in Loop: Header=BB2_27 Depth=4
	slli.d	$a1, $s4, 2
	ldx.w	$a1, $t4, $a1
	slli.d	$a2, $s8, 2
	addi.w	$s8, $s8, 1
	stx.w	$a1, $a0, $a2
	move	$a1, $s5
	move	$s5, $s3
	move	$s3, $s7
	move	$s7, $s0
	ld.d	$s0, $sp, 552                   # 8-byte Folded Reload
.LBB2_26:                               # %if.end178.us.us.us.us.us.us.us.us.us.i.us
                                        #   in Loop: Header=BB2_27 Depth=4
	addi.w	$fp, $fp, 1
	beq	$fp, $ra, .LBB2_19
.LBB2_27:                               # %for.body117.us281.us.us.us.us.us.us.us.us.i.us
                                        #   Parent Loop BB2_8 Depth=1
                                        #     Parent Loop BB2_16 Depth=2
                                        #       Parent Loop BB2_20 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB2_43 Depth 5
	ld.w	$a2, $s6, 4
	ld.w	$a3, $s6, 0
	add.d	$a2, $a2, $t1
	sub.w	$a2, $a2, $a3
	add.w	$a3, $fp, $t5
	bge	$a3, $a2, .LBB2_95
# %bb.28:                               # %land.lhs.true23.i.us301.us.us.us.us.us.us.us.us.i.us
                                        #   in Loop: Header=BB2_27 Depth=4
	ld.w	$a4, $s6, 12
	ld.w	$a5, $s6, 8
	add.d	$a4, $a4, $t1
	sub.w	$a4, $a4, $a5
	bge	$s2, $a4, .LBB2_95
# %bb.29:                               # %land.lhs.true23.i.us301.us.us.us.us.us.us.us.us.i.us
                                        #   in Loop: Header=BB2_27 Depth=4
	ld.w	$a5, $s6, 20
	ld.w	$a6, $s6, 16
	add.d	$a5, $a5, $t1
	sub.w	$a5, $a5, $a6
	ld.d	$a6, $sp, 608                   # 8-byte Folded Reload
	bge	$a6, $a5, .LBB2_95
# %bb.30:                               # %_ZL19box_map_local_entryRK3Boxiiii.exit.us.us.us.us.us.us.us.us.us.i.us
                                        #   in Loop: Header=BB2_27 Depth=4
	ld.d	$a5, $sp, 608                   # 8-byte Folded Reload
	mul.d	$a4, $a4, $a5
	add.d	$a4, $a4, $s2
	mul.d	$a2, $a4, $a2
	add.w	$s4, $a2, $a3
	bltz	$s4, .LBB2_95
# %bb.31:                               # %if.end.us.us.us.us.us.us.us.us.us.i.us
                                        #   in Loop: Header=BB2_27 Depth=4
	add.w	$a2, $fp, $t6
	slt	$a3, $a2, $s3
	xori	$a3, $a3, 1
	slt	$a4, $a2, $s0
	and	$a3, $a3, $a4
	and	$a3, $t0, $a3
	andi	$a3, $a3, 1
	beqz	$a3, .LBB2_33
# %bb.32:                               # %if.then135.us.us.us.us.us.us.us.us.us.i.us
                                        #   in Loop: Header=BB2_27 Depth=4
	addi.d	$a3, $s7, 1
	slli.d	$a4, $s4, 2
	stx.w	$s7, $t4, $a4
	move	$s7, $a3
.LBB2_33:                               # %if.end139.us.us.us.us.us.us.us.us.us.i.us
                                        #   in Loop: Header=BB2_27 Depth=4
	bge	$fp, $t8, .LBB2_26
# %bb.34:                               # %if.end139.us.us.us.us.us.us.us.us.us.i.us
                                        #   in Loop: Header=BB2_27 Depth=4
	bge	$a7, $t7, .LBB2_26
# %bb.35:                               # %if.end139.us.us.us.us.us.us.us.us.us.i.us
                                        #   in Loop: Header=BB2_27 Depth=4
	bltz	$fp, .LBB2_26
# %bb.36:                               # %if.end139.us.us.us.us.us.us.us.us.us.i.us
                                        #   in Loop: Header=BB2_27 Depth=4
	ld.d	$a3, $sp, 600                   # 8-byte Folded Reload
	blt	$t2, $a3, .LBB2_26
# %bb.37:                               # %if.end139.us.us.us.us.us.us.us.us.us.i.us
                                        #   in Loop: Header=BB2_27 Depth=4
	ld.d	$a3, $sp, 592                   # 8-byte Folded Reload
	bge	$t2, $a3, .LBB2_26
# %bb.38:                               # %if.end139.us.us.us.us.us.us.us.us.us.i.us
                                        #   in Loop: Header=BB2_27 Depth=4
	ld.d	$a3, $sp, 584                   # 8-byte Folded Reload
	blt	$s1, $a3, .LBB2_26
# %bb.39:                               # %if.end139.us.us.us.us.us.us.us.us.us.i.us
                                        #   in Loop: Header=BB2_27 Depth=4
	ld.d	$a3, $sp, 576                   # 8-byte Folded Reload
	bge	$s1, $a3, .LBB2_26
# %bb.40:                               # %if.end139.us.us.us.us.us.us.us.us.us.i.us
                                        #   in Loop: Header=BB2_27 Depth=4
	ld.d	$a3, $sp, 568                   # 8-byte Folded Reload
	blt	$a2, $a3, .LBB2_26
# %bb.41:                               # %if.end139.us.us.us.us.us.us.us.us.us.i.us
                                        #   in Loop: Header=BB2_27 Depth=4
	ld.d	$a3, $sp, 560                   # 8-byte Folded Reload
	bge	$a2, $a3, .LBB2_26
# %bb.42:                               # %while.cond.i.us.us.us.us.us.us.us.us.us.i.us.preheader
                                        #   in Loop: Header=BB2_27 Depth=4
	move	$s0, $s7
	move	$s7, $s3
	move	$s3, $s5
	ori	$a2, $zero, 32
	.p2align	4, , 16
.LBB2_43:                               # %while.cond.i.us.us.us.us.us.us.us.us.us.i.us
                                        #   Parent Loop BB2_8 Depth=1
                                        #     Parent Loop BB2_16 Depth=2
                                        #       Parent Loop BB2_20 Depth=3
                                        #         Parent Loop BB2_27 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	move	$s5, $a2
	slli.w	$a2, $a2, 1
	bge	$s8, $s5, .LBB2_43
# %bb.44:                               # %while.end.i.us.us.us.us.us.us.us.us.us.i.us
                                        #   in Loop: Header=BB2_27 Depth=4
	beqz	$a0, .LBB2_23
# %bb.45:                               # %if.else.i.us.us.us.us.us.us.us.us.us.i.us
                                        #   in Loop: Header=BB2_27 Depth=4
	bge	$a1, $s5, .LBB2_47
# %bb.46:                               # %if.then3.i.us.us.us.us.us.us.us.us.us.i.us
                                        #   in Loop: Header=BB2_27 Depth=4
	slli.d	$a1, $s5, 2
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	b	.LBB2_24
.LBB2_47:                               #   in Loop: Header=BB2_27 Depth=4
	move	$s5, $a1
	b	.LBB2_25
	.p2align	4, , 16
.LBB2_48:                               # %for.body117.lr.ph.split.split.split.us.us.us.us.split.us567.us.us.us.i.us
                                        #   in Loop: Header=BB2_20 Depth=3
	ld.w	$a2, $s6, 12
	ld.w	$a3, $s6, 8
	ld.w	$a4, $s6, 20
	ld.w	$a5, $s6, 16
	add.d	$a2, $a2, $t1
	sub.w	$a3, $a2, $a3
	add.d	$a2, $a4, $t1
	sub.w	$a2, $a2, $a5
	slt	$a4, $s2, $a3
	ld.d	$a5, $sp, 608                   # 8-byte Folded Reload
	slt	$a2, $a5, $a2
	and	$a2, $a4, $a2
	bne	$a2, $a6, .LBB2_95
# %bb.49:                               # %for.body117.lr.ph.split.split.split.us.us.us.us.split.us567.split.us.us.us.us.i.us
                                        #   in Loop: Header=BB2_20 Depth=3
	ld.w	$a2, $s6, 4
	ld.w	$a4, $s6, 0
	add.d	$a2, $a2, $t1
	andi	$a5, $t0, 1
	sub.w	$a2, $a2, $a4
	beqz	$a5, .LBB2_57
# %bb.50:                               # %for.body117.us281.us.us.us.us525.us.us619.us.us.i.us.preheader
                                        #   in Loop: Header=BB2_20 Depth=3
	move	$a4, $zero
	ld.d	$a5, $sp, 344                   # 8-byte Folded Reload
	mul.d	$a3, $a5, $a3
	ld.d	$a5, $sp, 392                   # 8-byte Folded Reload
	add.w	$a3, $a5, $a3
	mul.d	$a3, $a2, $a3
	bstrpick.d	$a5, $a3, 31, 0
	alsl.d	$a5, $a5, $t4, 2
	b	.LBB2_52
	.p2align	4, , 16
.LBB2_51:                               # %if.end139.us.us.us.us.us561.us.us.us.us.i.us
                                        #   in Loop: Header=BB2_52 Depth=4
	addi.w	$a4, $a4, 1
	addi.d	$a5, $a5, 4
	beq	$s5, $a4, .LBB2_19
.LBB2_52:                               # %for.body117.us281.us.us.us.us525.us.us619.us.us.i.us
                                        #   Parent Loop BB2_8 Depth=1
                                        #     Parent Loop BB2_16 Depth=2
                                        #       Parent Loop BB2_20 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	bge	$a4, $a2, .LBB2_95
# %bb.53:                               # %land.lhs.true23.i.us301.us.us.us.us542.us.us625.us.us.i.us
                                        #   in Loop: Header=BB2_52 Depth=4
	add.w	$a6, $a3, $a4
	bltz	$a6, .LBB2_95
# %bb.54:                               # %if.end.us.us.us.us.us552.us.us628.us.us.i.us
                                        #   in Loop: Header=BB2_52 Depth=4
	add.w	$a6, $t3, $a4
	blt	$a6, $s3, .LBB2_51
# %bb.55:                               # %if.end.us.us.us.us.us552.us.us628.us.us.i.us
                                        #   in Loop: Header=BB2_52 Depth=4
	bge	$a6, $s0, .LBB2_51
# %bb.56:                               # %if.then135.us.us.us.us.us557.us.us.us.us.i.us
                                        #   in Loop: Header=BB2_52 Depth=4
	addi.d	$a6, $s7, 1
	st.w	$s7, $a5, 0
	move	$s7, $a6
	b	.LBB2_51
	.p2align	4, , 16
.LBB2_57:                               # %for.body117.us281.us.us.us.us525.us.us.us.us.us.i.us.preheader
                                        #   in Loop: Header=BB2_20 Depth=3
	srai.d	$a4, $a2, 63
	andn	$a4, $a2, $a4
	ld.d	$a6, $sp, 304                   # 8-byte Folded Reload
	sltu	$a5, $a4, $a6
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $a6, $a5
	or	$a5, $a4, $a5
	ld.d	$a4, $sp, 336                   # 8-byte Folded Reload
	ori	$a6, $zero, 31
	bltu	$a5, $a6, .LBB2_63
# %bb.58:                               # %vector.ph
                                        #   in Loop: Header=BB2_20 Depth=3
	ld.d	$a4, $sp, 608                   # 8-byte Folded Reload
	mul.d	$a4, $a3, $a4
	add.d	$a4, $a4, $s2
	addi.w	$a5, $a5, 1
	mulw.d.w	$a7, $a4, $a2
	move	$a6, $a5
	bstrins.d	$a6, $zero, 4, 0
	sub.d	$a4, $a6, $t5
	xvreplgr2vr.w	$xr0, $a2
	xvreplgr2vr.w	$xr1, $a7
	xvadd.w	$xr1, $xr12, $xr1
	addi.w	$a7, $a6, -32
	xvld	$xr2, $sp, 176                  # 32-byte Folded Reload
	xvld	$xr3, $sp, 208                  # 32-byte Folded Reload
	xvld	$xr4, $sp, 240                  # 32-byte Folded Reload
	xvld	$xr5, $sp, 272                  # 32-byte Folded Reload
	.p2align	4, , 16
.LBB2_59:                               # %vector.body
                                        #   Parent Loop BB2_8 Depth=1
                                        #     Parent Loop BB2_16 Depth=2
                                        #       Parent Loop BB2_20 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvadd.w	$xr7, $xr5, $xr12
	xvadd.w	$xr8, $xr4, $xr12
	xvadd.w	$xr9, $xr3, $xr12
	xvadd.w	$xr6, $xr2, $xr12
	xvsle.w	$xr10, $xr0, $xr6
	xvpickve2gr.w	$t0, $xr10, 0
	vinsgr2vr.b	$vr6, $t0, 0
	xvpickve2gr.w	$t0, $xr10, 1
	vinsgr2vr.b	$vr6, $t0, 1
	xvpickve2gr.w	$t0, $xr10, 2
	vinsgr2vr.b	$vr6, $t0, 2
	xvpickve2gr.w	$t0, $xr10, 3
	vinsgr2vr.b	$vr6, $t0, 3
	xvpickve2gr.w	$t0, $xr10, 4
	vinsgr2vr.b	$vr6, $t0, 4
	xvpickve2gr.w	$t0, $xr10, 5
	vinsgr2vr.b	$vr6, $t0, 5
	xvpickve2gr.w	$t0, $xr10, 6
	vinsgr2vr.b	$vr6, $t0, 6
	xvpickve2gr.w	$t0, $xr10, 7
	vinsgr2vr.b	$vr6, $t0, 7
	xvsle.w	$xr9, $xr0, $xr9
	xvpickve2gr.w	$t0, $xr9, 0
	vinsgr2vr.b	$vr6, $t0, 8
	xvpickve2gr.w	$t0, $xr9, 1
	vinsgr2vr.b	$vr6, $t0, 9
	xvpickve2gr.w	$t0, $xr9, 2
	vinsgr2vr.b	$vr6, $t0, 10
	xvpickve2gr.w	$t0, $xr9, 3
	vinsgr2vr.b	$vr6, $t0, 11
	xvpickve2gr.w	$t0, $xr9, 4
	vinsgr2vr.b	$vr6, $t0, 12
	xvpickve2gr.w	$t0, $xr9, 5
	vinsgr2vr.b	$vr6, $t0, 13
	xvpickve2gr.w	$t0, $xr9, 6
	vinsgr2vr.b	$vr6, $t0, 14
	xvpickve2gr.w	$t0, $xr9, 7
	vinsgr2vr.b	$vr6, $t0, 15
	xvsle.w	$xr8, $xr0, $xr8
	xvpickve2gr.w	$t0, $xr8, 0
	vinsgr2vr.b	$vr9, $t0, 0
	xvpickve2gr.w	$t0, $xr8, 1
	vinsgr2vr.b	$vr9, $t0, 1
	xvpickve2gr.w	$t0, $xr8, 2
	vinsgr2vr.b	$vr9, $t0, 2
	xvpickve2gr.w	$t0, $xr8, 3
	vinsgr2vr.b	$vr9, $t0, 3
	xvpickve2gr.w	$t0, $xr8, 4
	vinsgr2vr.b	$vr9, $t0, 4
	xvpickve2gr.w	$t0, $xr8, 5
	vinsgr2vr.b	$vr9, $t0, 5
	xvpickve2gr.w	$t0, $xr8, 6
	vinsgr2vr.b	$vr9, $t0, 6
	xvpickve2gr.w	$t0, $xr8, 7
	vinsgr2vr.b	$vr9, $t0, 7
	xvsle.w	$xr7, $xr0, $xr7
	xvpickve2gr.w	$t0, $xr7, 0
	vinsgr2vr.b	$vr9, $t0, 8
	xvpickve2gr.w	$t0, $xr7, 1
	vinsgr2vr.b	$vr9, $t0, 9
	xvpickve2gr.w	$t0, $xr7, 2
	vinsgr2vr.b	$vr9, $t0, 10
	xvpickve2gr.w	$t0, $xr7, 3
	vinsgr2vr.b	$vr9, $t0, 11
	xvpickve2gr.w	$t0, $xr7, 4
	vinsgr2vr.b	$vr9, $t0, 12
	xvpickve2gr.w	$t0, $xr7, 5
	vinsgr2vr.b	$vr9, $t0, 13
	xvpickve2gr.w	$t0, $xr7, 6
	vinsgr2vr.b	$vr9, $t0, 14
	xvpickve2gr.w	$t0, $xr7, 7
	vinsgr2vr.b	$vr9, $t0, 15
	xvpermi.q	$xr6, $xr9, 2
	xvadd.w	$xr8, $xr5, $xr1
	xvadd.w	$xr9, $xr4, $xr1
	xvadd.w	$xr10, $xr3, $xr1
	xvadd.w	$xr7, $xr2, $xr1
	xvslti.w	$xr11, $xr7, 0
	xvpickve2gr.w	$t0, $xr11, 0
	vinsgr2vr.b	$vr7, $t0, 0
	xvpickve2gr.w	$t0, $xr11, 1
	vinsgr2vr.b	$vr7, $t0, 1
	xvpickve2gr.w	$t0, $xr11, 2
	vinsgr2vr.b	$vr7, $t0, 2
	xvpickve2gr.w	$t0, $xr11, 3
	vinsgr2vr.b	$vr7, $t0, 3
	xvpickve2gr.w	$t0, $xr11, 4
	vinsgr2vr.b	$vr7, $t0, 4
	xvpickve2gr.w	$t0, $xr11, 5
	vinsgr2vr.b	$vr7, $t0, 5
	xvpickve2gr.w	$t0, $xr11, 6
	vinsgr2vr.b	$vr7, $t0, 6
	xvpickve2gr.w	$t0, $xr11, 7
	vinsgr2vr.b	$vr7, $t0, 7
	xvslti.w	$xr10, $xr10, 0
	xvpickve2gr.w	$t0, $xr10, 0
	vinsgr2vr.b	$vr7, $t0, 8
	xvpickve2gr.w	$t0, $xr10, 1
	vinsgr2vr.b	$vr7, $t0, 9
	xvpickve2gr.w	$t0, $xr10, 2
	vinsgr2vr.b	$vr7, $t0, 10
	xvpickve2gr.w	$t0, $xr10, 3
	vinsgr2vr.b	$vr7, $t0, 11
	xvpickve2gr.w	$t0, $xr10, 4
	vinsgr2vr.b	$vr7, $t0, 12
	xvpickve2gr.w	$t0, $xr10, 5
	vinsgr2vr.b	$vr7, $t0, 13
	xvpickve2gr.w	$t0, $xr10, 6
	vinsgr2vr.b	$vr7, $t0, 14
	xvpickve2gr.w	$t0, $xr10, 7
	vinsgr2vr.b	$vr7, $t0, 15
	xvslti.w	$xr9, $xr9, 0
	xvpickve2gr.w	$t0, $xr9, 0
	vinsgr2vr.b	$vr10, $t0, 0
	xvpickve2gr.w	$t0, $xr9, 1
	vinsgr2vr.b	$vr10, $t0, 1
	xvpickve2gr.w	$t0, $xr9, 2
	vinsgr2vr.b	$vr10, $t0, 2
	xvpickve2gr.w	$t0, $xr9, 3
	vinsgr2vr.b	$vr10, $t0, 3
	xvpickve2gr.w	$t0, $xr9, 4
	vinsgr2vr.b	$vr10, $t0, 4
	xvpickve2gr.w	$t0, $xr9, 5
	vinsgr2vr.b	$vr10, $t0, 5
	xvpickve2gr.w	$t0, $xr9, 6
	vinsgr2vr.b	$vr10, $t0, 6
	xvpickve2gr.w	$t0, $xr9, 7
	vinsgr2vr.b	$vr10, $t0, 7
	xvslti.w	$xr8, $xr8, 0
	xvpickve2gr.w	$t0, $xr8, 0
	vinsgr2vr.b	$vr10, $t0, 8
	xvpickve2gr.w	$t0, $xr8, 1
	vinsgr2vr.b	$vr10, $t0, 9
	xvpickve2gr.w	$t0, $xr8, 2
	vinsgr2vr.b	$vr10, $t0, 10
	xvpickve2gr.w	$t0, $xr8, 3
	vinsgr2vr.b	$vr10, $t0, 11
	xvpickve2gr.w	$t0, $xr8, 4
	vinsgr2vr.b	$vr10, $t0, 12
	xvpickve2gr.w	$t0, $xr8, 5
	vinsgr2vr.b	$vr10, $t0, 13
	xvpickve2gr.w	$t0, $xr8, 6
	vinsgr2vr.b	$vr10, $t0, 14
	xvpickve2gr.w	$t0, $xr8, 7
	vinsgr2vr.b	$vr10, $t0, 15
	xvpermi.q	$xr7, $xr10, 2
	xvor.v	$xr6, $xr6, $xr7
	xvslli.b	$xr6, $xr6, 7
	xvmskltz.b	$xr6, $xr6
	xvpickve2gr.wu	$t0, $xr6, 0
	xvpickve2gr.wu	$t1, $xr6, 4
	bstrins.d	$t0, $t1, 31, 16
	addi.w	$t0, $t0, 0
	bnez	$t0, .LBB2_61
# %bb.60:                               # %vector.body
                                        #   in Loop: Header=BB2_59 Depth=4
	move	$t1, $a7
	xvadd.w	$xr2, $xr2, $xr13
	xvadd.w	$xr3, $xr3, $xr13
	xvadd.w	$xr4, $xr4, $xr13
	xvadd.w	$xr5, $xr5, $xr13
	addi.w	$a7, $a7, -32
	bnez	$t1, .LBB2_59
.LBB2_61:                               # %middle.split
                                        #   in Loop: Header=BB2_20 Depth=3
	ld.d	$t1, $sp, 544                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 536                   # 8-byte Folded Reload
	bnez	$t0, .LBB2_95
# %bb.62:                               # %middle.block
                                        #   in Loop: Header=BB2_20 Depth=3
	beq	$a5, $a6, .LBB2_19
.LBB2_63:                               # %for.body117.us281.us.us.us.us525.us.us.us.us.us.i.us.preheader102
                                        #   in Loop: Header=BB2_20 Depth=3
	sub.d	$a5, $ra, $a4
	ld.d	$a6, $sp, 344                   # 8-byte Folded Reload
	mul.d	$a3, $a6, $a3
	ld.d	$a6, $sp, 392                   # 8-byte Folded Reload
	add.d	$a3, $a6, $a3
	mul.d	$a3, $a2, $a3
	add.w	$a4, $t5, $a4
	.p2align	4, , 16
.LBB2_64:                               # %for.body117.us281.us.us.us.us525.us.us.us.us.us.i.us
                                        #   Parent Loop BB2_8 Depth=1
                                        #     Parent Loop BB2_16 Depth=2
                                        #       Parent Loop BB2_20 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	bge	$a4, $a2, .LBB2_95
# %bb.65:                               # %for.body117.us281.us.us.us.us525.us.us.us.us.us.i.us
                                        #   in Loop: Header=BB2_64 Depth=4
	add.w	$a6, $a3, $a4
	bltz	$a6, .LBB2_95
# %bb.66:                               # %if.end.us.us.us.us.us552.us.us.us.us.us.i.us
                                        #   in Loop: Header=BB2_64 Depth=4
	addi.w	$a5, $a5, -1
	addi.w	$a4, $a4, 1
	bnez	$a5, .LBB2_64
	b	.LBB2_19
	.p2align	4, , 16
.LBB2_67:                               # %for.cond114.preheader.us.us.us508.us.us.us.i.us.preheader
                                        #   in Loop: Header=BB2_16 Depth=2
	move	$a2, $zero
	ld.d	$a3, $sp, 336                   # 8-byte Folded Reload
	b	.LBB2_70
.LBB2_68:                               #   in Loop: Header=BB2_70 Depth=3
	ld.d	$t1, $sp, 544                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_69:                               # %for.cond114.for.inc182_crit_edge.split.us354.split.us.us.us.us.us.us.i.us
                                        #   in Loop: Header=BB2_70 Depth=3
	addi.w	$a3, $a3, 1
	addi.d	$a2, $a2, 1
	ld.d	$a4, $sp, 352                   # 8-byte Folded Reload
	beq	$a3, $a4, .LBB2_15
.LBB2_70:                               # %for.cond114.preheader.us.us.us508.us.us.us.i.us
                                        #   Parent Loop BB2_8 Depth=1
                                        #     Parent Loop BB2_16 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_82 Depth 4
                                        #         Child Loop BB2_87 Depth 4
                                        #         Child Loop BB2_75 Depth 4
	add.w	$a7, $a3, $t5
	bltz	$a7, .LBB2_95
# %bb.71:                               # %for.body117.lr.ph.split.us356.us.us519.us.us.us.i.us
                                        #   in Loop: Header=BB2_70 Depth=3
	ld.w	$a4, $s6, 12
	ld.w	$a5, $s6, 8
	ld.w	$a6, $s6, 20
	ld.w	$t0, $s6, 16
	add.d	$a4, $a4, $t1
	sub.w	$a5, $a4, $a5
	add.d	$a4, $a6, $t1
	sub.w	$a4, $a4, $t0
	slt	$a6, $a7, $a5
	ld.d	$t0, $sp, 608                   # 8-byte Folded Reload
	slt	$a4, $t0, $a4
	and	$a4, $a6, $a4
	ori	$a6, $zero, 1
	bne	$a4, $a6, .LBB2_95
# %bb.72:                               # %for.body117.lr.ph.split.split.split.us358.split.us.us.us.us.us.us.i.us
                                        #   in Loop: Header=BB2_70 Depth=3
	ld.d	$a4, $sp, 376                   # 8-byte Folded Reload
	add.w	$a4, $a3, $a4
	ld.d	$a6, $sp, 368                   # 8-byte Folded Reload
	slt	$a6, $a4, $a6
	xori	$a6, $a6, 1
	ld.d	$t0, $sp, 360                   # 8-byte Folded Reload
	slt	$a4, $a4, $t0
	ld.w	$t0, $s6, 4
	move	$t2, $t1
	ld.w	$t1, $s6, 0
	and	$a4, $a6, $a4
	ld.d	$a6, $sp, 384                   # 8-byte Folded Reload
	and	$a6, $a6, $a4
	add.d	$a4, $t0, $t2
	sub.w	$a4, $a4, $t1
	beqz	$a6, .LBB2_80
# %bb.73:                               # %for.body117.us314.us.us381.us.us.us.us.i.us.preheader
                                        #   in Loop: Header=BB2_70 Depth=3
	move	$a6, $zero
	ld.d	$a7, $sp, 344                   # 8-byte Folded Reload
	mul.d	$a5, $a7, $a5
	add.w	$a5, $a2, $a5
	mul.d	$a5, $a4, $a5
	bstrpick.d	$a7, $a5, 31, 0
	alsl.d	$a7, $a7, $t4, 2
	ld.d	$t1, $sp, 544                   # 8-byte Folded Reload
	b	.LBB2_75
	.p2align	4, , 16
.LBB2_74:                               # %if.end139.us350.us.us.us.us.us.us.i.us
                                        #   in Loop: Header=BB2_75 Depth=4
	addi.w	$a6, $a6, 1
	addi.d	$a7, $a7, 4
	beq	$s5, $a6, .LBB2_69
.LBB2_75:                               # %for.body117.us314.us.us381.us.us.us.us.i.us
                                        #   Parent Loop BB2_8 Depth=1
                                        #     Parent Loop BB2_16 Depth=2
                                        #       Parent Loop BB2_70 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	bge	$a6, $a4, .LBB2_95
# %bb.76:                               # %land.lhs.true23.i.us331.us.us387.us.us.us.us.i.us
                                        #   in Loop: Header=BB2_75 Depth=4
	add.w	$t0, $a5, $a6
	bltz	$t0, .LBB2_95
# %bb.77:                               # %if.end.us341.us.us390.us.us.us.us.i.us
                                        #   in Loop: Header=BB2_75 Depth=4
	add.w	$t0, $t3, $a6
	blt	$t0, $s3, .LBB2_74
# %bb.78:                               # %if.end.us341.us.us390.us.us.us.us.i.us
                                        #   in Loop: Header=BB2_75 Depth=4
	bge	$t0, $s0, .LBB2_74
# %bb.79:                               # %if.then135.us346.us.us.us.us.us.us.i.us
                                        #   in Loop: Header=BB2_75 Depth=4
	addi.d	$t0, $s7, 1
	st.w	$s7, $a7, 0
	move	$s7, $t0
	b	.LBB2_74
	.p2align	4, , 16
.LBB2_80:                               # %for.body117.us314.us.us.us.us.us.us.us.i.us.preheader
                                        #   in Loop: Header=BB2_70 Depth=3
	srai.d	$a6, $a4, 63
	andn	$a6, $a4, $a6
	ld.d	$t1, $sp, 304                   # 8-byte Folded Reload
	sltu	$t0, $a6, $t1
	maskeqz	$a6, $a6, $t0
	masknez	$t0, $t1, $t0
	or	$t0, $a6, $t0
	ld.d	$a6, $sp, 336                   # 8-byte Folded Reload
	ori	$t1, $zero, 31
	bltu	$t0, $t1, .LBB2_86
# %bb.81:                               # %vector.ph78
                                        #   in Loop: Header=BB2_70 Depth=3
	ld.d	$a6, $sp, 608                   # 8-byte Folded Reload
	mul.d	$a6, $a5, $a6
	add.d	$a6, $a6, $a7
	addi.w	$a7, $t0, 1
	mulw.d.w	$t1, $a6, $a4
	move	$t0, $a7
	bstrins.d	$t0, $zero, 4, 0
	sub.d	$a6, $t0, $t5
	xvreplgr2vr.w	$xr0, $a4
	xvreplgr2vr.w	$xr1, $t1
	xvadd.w	$xr1, $xr12, $xr1
	addi.w	$t1, $t0, -32
	xvld	$xr2, $sp, 176                  # 32-byte Folded Reload
	xvld	$xr3, $sp, 208                  # 32-byte Folded Reload
	xvld	$xr4, $sp, 240                  # 32-byte Folded Reload
	xvld	$xr5, $sp, 272                  # 32-byte Folded Reload
	.p2align	4, , 16
.LBB2_82:                               # %vector.body90
                                        #   Parent Loop BB2_8 Depth=1
                                        #     Parent Loop BB2_16 Depth=2
                                        #       Parent Loop BB2_70 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvadd.w	$xr7, $xr5, $xr12
	xvadd.w	$xr8, $xr4, $xr12
	xvadd.w	$xr9, $xr3, $xr12
	xvadd.w	$xr6, $xr2, $xr12
	xvsle.w	$xr10, $xr0, $xr6
	xvpickve2gr.w	$t2, $xr10, 0
	vinsgr2vr.b	$vr6, $t2, 0
	xvpickve2gr.w	$t2, $xr10, 1
	vinsgr2vr.b	$vr6, $t2, 1
	xvpickve2gr.w	$t2, $xr10, 2
	vinsgr2vr.b	$vr6, $t2, 2
	xvpickve2gr.w	$t2, $xr10, 3
	vinsgr2vr.b	$vr6, $t2, 3
	xvpickve2gr.w	$t2, $xr10, 4
	vinsgr2vr.b	$vr6, $t2, 4
	xvpickve2gr.w	$t2, $xr10, 5
	vinsgr2vr.b	$vr6, $t2, 5
	xvpickve2gr.w	$t2, $xr10, 6
	vinsgr2vr.b	$vr6, $t2, 6
	xvpickve2gr.w	$t2, $xr10, 7
	vinsgr2vr.b	$vr6, $t2, 7
	xvsle.w	$xr9, $xr0, $xr9
	xvpickve2gr.w	$t2, $xr9, 0
	vinsgr2vr.b	$vr6, $t2, 8
	xvpickve2gr.w	$t2, $xr9, 1
	vinsgr2vr.b	$vr6, $t2, 9
	xvpickve2gr.w	$t2, $xr9, 2
	vinsgr2vr.b	$vr6, $t2, 10
	xvpickve2gr.w	$t2, $xr9, 3
	vinsgr2vr.b	$vr6, $t2, 11
	xvpickve2gr.w	$t2, $xr9, 4
	vinsgr2vr.b	$vr6, $t2, 12
	xvpickve2gr.w	$t2, $xr9, 5
	vinsgr2vr.b	$vr6, $t2, 13
	xvpickve2gr.w	$t2, $xr9, 6
	vinsgr2vr.b	$vr6, $t2, 14
	xvpickve2gr.w	$t2, $xr9, 7
	vinsgr2vr.b	$vr6, $t2, 15
	xvsle.w	$xr8, $xr0, $xr8
	xvpickve2gr.w	$t2, $xr8, 0
	vinsgr2vr.b	$vr9, $t2, 0
	xvpickve2gr.w	$t2, $xr8, 1
	vinsgr2vr.b	$vr9, $t2, 1
	xvpickve2gr.w	$t2, $xr8, 2
	vinsgr2vr.b	$vr9, $t2, 2
	xvpickve2gr.w	$t2, $xr8, 3
	vinsgr2vr.b	$vr9, $t2, 3
	xvpickve2gr.w	$t2, $xr8, 4
	vinsgr2vr.b	$vr9, $t2, 4
	xvpickve2gr.w	$t2, $xr8, 5
	vinsgr2vr.b	$vr9, $t2, 5
	xvpickve2gr.w	$t2, $xr8, 6
	vinsgr2vr.b	$vr9, $t2, 6
	xvpickve2gr.w	$t2, $xr8, 7
	vinsgr2vr.b	$vr9, $t2, 7
	xvsle.w	$xr7, $xr0, $xr7
	xvpickve2gr.w	$t2, $xr7, 0
	vinsgr2vr.b	$vr9, $t2, 8
	xvpickve2gr.w	$t2, $xr7, 1
	vinsgr2vr.b	$vr9, $t2, 9
	xvpickve2gr.w	$t2, $xr7, 2
	vinsgr2vr.b	$vr9, $t2, 10
	xvpickve2gr.w	$t2, $xr7, 3
	vinsgr2vr.b	$vr9, $t2, 11
	xvpickve2gr.w	$t2, $xr7, 4
	vinsgr2vr.b	$vr9, $t2, 12
	xvpickve2gr.w	$t2, $xr7, 5
	vinsgr2vr.b	$vr9, $t2, 13
	xvpickve2gr.w	$t2, $xr7, 6
	vinsgr2vr.b	$vr9, $t2, 14
	xvpickve2gr.w	$t2, $xr7, 7
	vinsgr2vr.b	$vr9, $t2, 15
	xvpermi.q	$xr6, $xr9, 2
	xvadd.w	$xr8, $xr5, $xr1
	xvadd.w	$xr9, $xr4, $xr1
	xvadd.w	$xr10, $xr3, $xr1
	xvadd.w	$xr7, $xr2, $xr1
	xvslti.w	$xr11, $xr7, 0
	xvpickve2gr.w	$t2, $xr11, 0
	vinsgr2vr.b	$vr7, $t2, 0
	xvpickve2gr.w	$t2, $xr11, 1
	vinsgr2vr.b	$vr7, $t2, 1
	xvpickve2gr.w	$t2, $xr11, 2
	vinsgr2vr.b	$vr7, $t2, 2
	xvpickve2gr.w	$t2, $xr11, 3
	vinsgr2vr.b	$vr7, $t2, 3
	xvpickve2gr.w	$t2, $xr11, 4
	vinsgr2vr.b	$vr7, $t2, 4
	xvpickve2gr.w	$t2, $xr11, 5
	vinsgr2vr.b	$vr7, $t2, 5
	xvpickve2gr.w	$t2, $xr11, 6
	vinsgr2vr.b	$vr7, $t2, 6
	xvpickve2gr.w	$t2, $xr11, 7
	vinsgr2vr.b	$vr7, $t2, 7
	xvslti.w	$xr10, $xr10, 0
	xvpickve2gr.w	$t2, $xr10, 0
	vinsgr2vr.b	$vr7, $t2, 8
	xvpickve2gr.w	$t2, $xr10, 1
	vinsgr2vr.b	$vr7, $t2, 9
	xvpickve2gr.w	$t2, $xr10, 2
	vinsgr2vr.b	$vr7, $t2, 10
	xvpickve2gr.w	$t2, $xr10, 3
	vinsgr2vr.b	$vr7, $t2, 11
	xvpickve2gr.w	$t2, $xr10, 4
	vinsgr2vr.b	$vr7, $t2, 12
	xvpickve2gr.w	$t2, $xr10, 5
	vinsgr2vr.b	$vr7, $t2, 13
	xvpickve2gr.w	$t2, $xr10, 6
	vinsgr2vr.b	$vr7, $t2, 14
	xvpickve2gr.w	$t2, $xr10, 7
	vinsgr2vr.b	$vr7, $t2, 15
	xvslti.w	$xr9, $xr9, 0
	xvpickve2gr.w	$t2, $xr9, 0
	vinsgr2vr.b	$vr10, $t2, 0
	xvpickve2gr.w	$t2, $xr9, 1
	vinsgr2vr.b	$vr10, $t2, 1
	xvpickve2gr.w	$t2, $xr9, 2
	vinsgr2vr.b	$vr10, $t2, 2
	xvpickve2gr.w	$t2, $xr9, 3
	vinsgr2vr.b	$vr10, $t2, 3
	xvpickve2gr.w	$t2, $xr9, 4
	vinsgr2vr.b	$vr10, $t2, 4
	xvpickve2gr.w	$t2, $xr9, 5
	vinsgr2vr.b	$vr10, $t2, 5
	xvpickve2gr.w	$t2, $xr9, 6
	vinsgr2vr.b	$vr10, $t2, 6
	xvpickve2gr.w	$t2, $xr9, 7
	vinsgr2vr.b	$vr10, $t2, 7
	xvslti.w	$xr8, $xr8, 0
	xvpickve2gr.w	$t2, $xr8, 0
	vinsgr2vr.b	$vr10, $t2, 8
	xvpickve2gr.w	$t2, $xr8, 1
	vinsgr2vr.b	$vr10, $t2, 9
	xvpickve2gr.w	$t2, $xr8, 2
	vinsgr2vr.b	$vr10, $t2, 10
	xvpickve2gr.w	$t2, $xr8, 3
	vinsgr2vr.b	$vr10, $t2, 11
	xvpickve2gr.w	$t2, $xr8, 4
	vinsgr2vr.b	$vr10, $t2, 12
	xvpickve2gr.w	$t2, $xr8, 5
	vinsgr2vr.b	$vr10, $t2, 13
	xvpickve2gr.w	$t2, $xr8, 6
	vinsgr2vr.b	$vr10, $t2, 14
	xvpickve2gr.w	$t2, $xr8, 7
	vinsgr2vr.b	$vr10, $t2, 15
	xvpermi.q	$xr7, $xr10, 2
	xvor.v	$xr6, $xr6, $xr7
	xvslli.b	$xr6, $xr6, 7
	xvmskltz.b	$xr6, $xr6
	xvpickve2gr.wu	$t2, $xr6, 0
	xvpickve2gr.wu	$t3, $xr6, 4
	bstrins.d	$t2, $t3, 31, 16
	addi.w	$t2, $t2, 0
	bnez	$t2, .LBB2_84
# %bb.83:                               # %vector.body90
                                        #   in Loop: Header=BB2_82 Depth=4
	move	$t3, $t1
	xvadd.w	$xr2, $xr2, $xr13
	xvadd.w	$xr3, $xr3, $xr13
	xvadd.w	$xr4, $xr4, $xr13
	xvadd.w	$xr5, $xr5, $xr13
	addi.w	$t1, $t1, -32
	bnez	$t3, .LBB2_82
.LBB2_84:                               # %middle.split95
                                        #   in Loop: Header=BB2_70 Depth=3
	ld.d	$t3, $sp, 520                   # 8-byte Folded Reload
	bnez	$t2, .LBB2_95
# %bb.85:                               # %middle.block96
                                        #   in Loop: Header=BB2_70 Depth=3
	beq	$a7, $t0, .LBB2_68
.LBB2_86:                               # %for.body117.us314.us.us.us.us.us.us.us.i.us.preheader106
                                        #   in Loop: Header=BB2_70 Depth=3
	sub.d	$a7, $ra, $a6
	ld.d	$t0, $sp, 344                   # 8-byte Folded Reload
	mul.d	$a5, $t0, $a5
	add.d	$a5, $a2, $a5
	mul.d	$a5, $a4, $a5
	add.w	$a6, $t5, $a6
	ld.d	$t1, $sp, 544                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_87:                               # %for.body117.us314.us.us.us.us.us.us.us.i.us
                                        #   Parent Loop BB2_8 Depth=1
                                        #     Parent Loop BB2_16 Depth=2
                                        #       Parent Loop BB2_70 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	bge	$a6, $a4, .LBB2_95
# %bb.88:                               # %for.body117.us314.us.us.us.us.us.us.us.i.us
                                        #   in Loop: Header=BB2_87 Depth=4
	add.w	$t0, $a5, $a6
	bltz	$t0, .LBB2_95
# %bb.89:                               # %if.end.us341.us.us.us.us.us.us.us.i.us
                                        #   in Loop: Header=BB2_87 Depth=4
	addi.w	$a7, $a7, -1
	addi.w	$a6, $a6, 1
	bnez	$a7, .LBB2_87
	b	.LBB2_69
.LBB2_90:                               # %for.end191.sink.split.i
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	move	$a0, $s0
	move	$a1, $zero
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
.LBB2_91:                               # %_ZL18box_partition_mapsiiPK3BoxiPPiS3_S3_S3_.exit
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	move	$a0, $s1
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	move	$s8, $zero
	move	$s7, $zero
	ld.d	$t4, $sp, 512                   # 8-byte Folded Reload
	b	.LBB2_93
.LBB2_92:
	move	$a0, $zero
	move	$s8, $zero
	move	$s7, $zero
	ld.d	$t4, $sp, 512                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
.LBB2_93:                               # %_ZL18box_partition_mapsiiPK3BoxiPPiS3_S3_S3_.exit
	ld.d	$a1, $sp, 704
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	stx.w	$s7, $s0, $a2
	stx.w	$s8, $s1, $a2
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	st.d	$t4, $a2, 0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	st.d	$s0, $a2, 0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	st.d	$s1, $a2, 0
	st.d	$a0, $a1, 0
	ld.d	$s8, $sp, 616                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 624                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 632                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 640                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 648                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 656                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 664                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 672                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 680                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 688                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 696                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 704
	ret
.LBB2_94:                               # %for.body70.us.us.i.preheader37
	slli.d	$fp, $a4, 2
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	move	$a0, $s0
	move	$a1, $zero
	b	.LBB2_91
.LBB2_95:                               # %if.then124.i
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	_Z17box_partition_rcbiiRK3BoxiPPS_PPiS5_S5_S5_, .Lfunc_end2-_Z17box_partition_rcbiiRK3BoxiPPS_PPiS5_S5_S5_
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
