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
	.globl	_Z17box_partition_rcbiiRK3BoxiPPS_PPiS5_S5_S5_ # -- Begin function _Z17box_partition_rcbiiRK3BoxiPPS_PPiS5_S5_S5_
	.p2align	5
	.type	_Z17box_partition_rcbiiRK3BoxiPPS_PPiS5_S5_S5_,@function
_Z17box_partition_rcbiiRK3BoxiPPS_PPiS5_S5_S5_: # @_Z17box_partition_rcbiiRK3BoxiPPS_PPiS5_S5_S5_
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -512
	.cfi_def_cfa_offset 512
	st.d	$ra, $sp, 504                   # 8-byte Folded Spill
	st.d	$fp, $sp, 496                   # 8-byte Folded Spill
	st.d	$s0, $sp, 488                   # 8-byte Folded Spill
	st.d	$s1, $sp, 480                   # 8-byte Folded Spill
	st.d	$s2, $sp, 472                   # 8-byte Folded Spill
	st.d	$s3, $sp, 464                   # 8-byte Folded Spill
	st.d	$s4, $sp, 456                   # 8-byte Folded Spill
	st.d	$s5, $sp, 448                   # 8-byte Folded Spill
	st.d	$s6, $sp, 440                   # 8-byte Folded Spill
	st.d	$s7, $sp, 432                   # 8-byte Folded Spill
	st.d	$s8, $sp, 424                   # 8-byte Folded Spill
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
	st.d	$a7, $sp, 72                    # 8-byte Folded Spill
	st.d	$a6, $sp, 64                    # 8-byte Folded Spill
	st.d	$a5, $sp, 56                    # 8-byte Folded Spill
	move	$fp, $a4
	move	$s3, $a3
	move	$s6, $a2
	move	$s1, $a1
	move	$s5, $a0
	ori	$s0, $zero, 24
	mul.d	$a0, $a0, $s0
	mulh.du	$a1, $s5, $s0
	sltu	$a1, $zero, $a1
	masknez	$a0, $a0, $a1
	addi.w	$a2, $zero, -1
	st.d	$a2, $sp, 176                   # 8-byte Folded Spill
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$a0, $fp, 0
	ori	$a2, $zero, 2
	move	$a0, $zero
	move	$a1, $s5
	move	$a3, $s6
	move	$a4, $s2
	pcaddu18i	$ra, %call36(_Z13box_partitioniiiRK3BoxPS_)
	jirl	$ra, $ra, 0
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	mul.d	$a0, $s1, $s0
	add.d	$s1, $s2, $a0
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	ldx.w	$a0, $s2, $a0
	ld.w	$a1, $s1, 8
	ld.w	$a2, $s1, 16
	ld.w	$s2, $s1, 4
	ld.w	$a3, $s1, 12
	ld.w	$s7, $s1, 20
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	sub.d	$a0, $s2, $a0
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	st.d	$a3, $sp, 408                   # 8-byte Folded Spill
	sub.d	$s6, $a3, $a1
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	sub.d	$s0, $s7, $a2
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	alsl.d	$a0, $s3, $a0, 1
	alsl.d	$a1, $s3, $s6, 1
	st.d	$s3, $sp, 312                   # 8-byte Folded Spill
	alsl.d	$a2, $s3, $s0, 1
	mul.d	$a0, $a1, $a0
	mul.w	$s3, $a0, $a2
	slli.d	$fp, $s3, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.d	$s5, $sp, 160                   # 8-byte Folded Spill
	slli.d	$a0, $s5, 2
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	addi.d	$s8, $a0, 4
	move	$a0, $s8
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	move	$a0, $s8
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ori	$s5, $zero, 1
	move	$s8, $a0
	blt	$s3, $s5, .LBB2_2
# %bb.1:                                # %for.body.preheader.i
	ori	$a1, $zero, 255
	move	$a0, $s4
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB2_2:                                # %for.cond68.preheader.i
	st.d	$s4, $sp, 320                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	blt	$a4, $s5, .LBB2_54
# %bb.3:                                # %for.body70.lr.ph.i
	addi.w	$a0, $s0, 0
	ld.d	$t0, $sp, 312                   # 8-byte Folded Reload
	sub.w	$a7, $zero, $t0
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	add.w	$a0, $a0, $t0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	bge	$a7, $a0, .LBB2_55
# %bb.4:                                # %for.body70.us.i.preheader
	move	$t3, $zero
	move	$s0, $zero
	move	$s5, $zero
	move	$a0, $zero
	move	$a1, $zero
	ld.d	$t2, $sp, 304                   # 8-byte Folded Reload
	sub.w	$t4, $t2, $t0
	add.w	$t5, $s2, $t0
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $t0
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a2, $sp, 408                   # 8-byte Folded Reload
	add.w	$a2, $a2, $t0
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $t0
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	add.w	$a2, $s7, $t0
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a2, $sp, 416                   # 8-byte Folded Reload
	addi.w	$t6, $a2, 0
	addi.w	$t7, $s6, 0
	slli.d	$fp, $t0, 1
	add.w	$a2, $t7, $t0
	st.d	$a2, $sp, 208                   # 8-byte Folded Spill
	add.w	$t8, $t6, $t0
	add.d	$a2, $s2, $fp
	sub.w	$ra, $a2, $t2
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	st.d	$a7, $sp, 184                   # 8-byte Folded Spill
	st.d	$t4, $sp, 296                   # 8-byte Folded Spill
	st.d	$t6, $sp, 288                   # 8-byte Folded Spill
	st.d	$t7, $sp, 280                   # 8-byte Folded Spill
	st.d	$t8, $sp, 272                   # 8-byte Folded Spill
	st.d	$ra, $sp, 264                   # 8-byte Folded Spill
	b	.LBB2_6
	.p2align	4, , 16
.LBB2_5:                                # %if.end188.us.i
                                        #   in Loop: Header=BB2_6 Depth=1
	addi.d	$t3, $t3, 1
	beq	$t3, $a4, .LBB2_56
.LBB2_6:                                # %for.body70.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_15 Depth 2
                                        #       Child Loop BB2_18 Depth 3
                                        #         Child Loop BB2_50 Depth 4
                                        #         Child Loop BB2_25 Depth 4
                                        #           Child Loop BB2_42 Depth 5
	add.w	$a2, $a5, $t3
	mod.w	$s3, $a2, $a4
	slli.d	$a2, $s3, 4
	alsl.d	$a2, $s3, $a2, 3
	ldx.w	$s4, $a6, $a2
	slli.d	$a3, $t3, 2
	stx.w	$s0, $s2, $a3
	stx.w	$s5, $s8, $a3
	st.d	$s4, $sp, 328                   # 8-byte Folded Spill
	bge	$s4, $t5, .LBB2_5
# %bb.7:                                # %lor.lhs.false.i.us.i
                                        #   in Loop: Header=BB2_6 Depth=1
	add.d	$a2, $a6, $a2
	ld.w	$s7, $a2, 4
	bge	$t4, $s7, .LBB2_5
# %bb.8:                                # %lor.lhs.false8.i.us.i
                                        #   in Loop: Header=BB2_6 Depth=1
	ld.w	$s4, $a2, 8
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	st.d	$s4, $sp, 248                   # 8-byte Folded Spill
	bge	$s4, $a3, .LBB2_5
# %bb.9:                                # %lor.lhs.false14.i.us.i
                                        #   in Loop: Header=BB2_6 Depth=1
	ld.w	$s4, $a2, 12
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	st.d	$s4, $sp, 240                   # 8-byte Folded Spill
	bge	$a3, $s4, .LBB2_5
# %bb.10:                               # %lor.lhs.false20.i.us.i
                                        #   in Loop: Header=BB2_6 Depth=1
	ld.w	$s4, $a2, 16
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	bge	$s4, $a3, .LBB2_5
# %bb.11:                               # %_ZL12box_disjointRK3BoxS1_.exit.us.i
                                        #   in Loop: Header=BB2_6 Depth=1
	ld.w	$a3, $a2, 20
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	bge	$a2, $a3, .LBB2_5
# %bb.12:                               # %if.then.us.i
                                        #   in Loop: Header=BB2_6 Depth=1
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	bge	$a7, $a2, .LBB2_5
# %bb.13:                               # %for.cond109.preheader.us.us.i.preheader
                                        #   in Loop: Header=BB2_6 Depth=1
	st.d	$zero, $sp, 192                 # 8-byte Folded Spill
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	sub.w	$a2, $a2, $t0
	st.d	$a2, $sp, 392                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	add.w	$a2, $a2, $t0
	st.d	$a2, $sp, 384                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $t0
	st.d	$a2, $sp, 376                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	add.w	$a2, $a2, $t0
	st.d	$a2, $sp, 368                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 328                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $t0
	st.d	$a2, $sp, 360                   # 8-byte Folded Spill
	add.w	$a2, $s7, $t0
	st.d	$a2, $sp, 352                   # 8-byte Folded Spill
	st.d	$a7, $sp, 200                   # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	st.d	$t3, $sp, 96                    # 8-byte Folded Spill
	st.d	$t5, $sp, 88                    # 8-byte Folded Spill
	b	.LBB2_15
	.p2align	4, , 16
.LBB2_14:                               # %for.cond109.for.inc185_crit_edge.us.us.i
                                        #   in Loop: Header=BB2_15 Depth=2
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	addi.w	$a3, $a3, 1
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	st.d	$a2, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	st.d	$a3, $sp, 200                   # 8-byte Folded Spill
	beq	$a3, $a2, .LBB2_5
.LBB2_15:                               # %for.cond109.preheader.us.us.i
                                        #   Parent Loop BB2_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_18 Depth 3
                                        #         Child Loop BB2_50 Depth 4
                                        #         Child Loop BB2_25 Depth 4
                                        #           Child Loop BB2_42 Depth 5
	bge	$a7, $t8, .LBB2_14
# %bb.16:                               # %for.cond114.preheader.us.us.us.i.preheader
                                        #   in Loop: Header=BB2_15 Depth=2
	st.d	$zero, $sp, 256                 # 8-byte Folded Spill
	xor	$a2, $a5, $s3
	sltu	$a2, $zero, $a2
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 200                   # 8-byte Folded Reload
	add.w	$s8, $a5, $a3
	add.w	$a3, $a5, $t0
	st.d	$a3, $sp, 416                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	slt	$a3, $s8, $a3
	xori	$a3, $a3, 1
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	slt	$a4, $s8, $a4
	and	$a3, $a3, $a4
	st.d	$a3, $sp, 224                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	slt	$a3, $a3, $a5
	and	$a2, $a2, $a3
	st.d	$a2, $sp, 216                   # 8-byte Folded Spill
	ori	$t3, $zero, 1
	ld.d	$t5, $sp, 328                   # 8-byte Folded Reload
	st.d	$s8, $sp, 344                   # 8-byte Folded Spill
	b	.LBB2_18
	.p2align	4, , 16
.LBB2_17:                               # %for.cond114.for.inc182_crit_edge.us.us.us.i
                                        #   in Loop: Header=BB2_18 Depth=3
	ld.d	$a7, $sp, 400                   # 8-byte Folded Reload
	addi.w	$a7, $a7, 1
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	st.d	$a2, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	beq	$a7, $a2, .LBB2_14
.LBB2_18:                               # %for.cond114.preheader.us.us.us.i
                                        #   Parent Loop BB2_6 Depth=1
                                        #     Parent Loop BB2_15 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_50 Depth 4
                                        #         Child Loop BB2_25 Depth 4
                                        #           Child Loop BB2_42 Depth 5
	st.d	$a7, $sp, 400                   # 8-byte Folded Spill
	add.w	$s3, $a7, $t0
	ld.d	$a2, $sp, 416                   # 8-byte Folded Reload
	or	$a2, $s3, $a2
	bltz	$a2, .LBB2_57
# %bb.19:                               # %for.body117.lr.ph.split.split.us357.us.us.i
                                        #   in Loop: Header=BB2_18 Depth=3
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 400                   # 8-byte Folded Reload
	add.w	$a7, $a4, $a2
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	slt	$a2, $a7, $a2
	xori	$a2, $a2, 1
	ld.d	$a3, $sp, 240                   # 8-byte Folded Reload
	slt	$a3, $a7, $a3
	and	$a2, $a2, $a3
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	and	$s6, $a3, $a2
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	beqz	$a2, .LBB2_47
# %bb.20:                               #   in Loop: Header=BB2_18 Depth=3
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	slt	$a2, $a3, $a2
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	slt	$a3, $a3, $a4
	and	$a2, $a2, $a3
	st.d	$a2, $sp, 408                   # 8-byte Folded Spill
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	st.d	$a7, $sp, 336                   # 8-byte Folded Spill
	b	.LBB2_25
.LBB2_21:                               # %if.then.i160.us.us.us.us.i
                                        #   in Loop: Header=BB2_25 Depth=4
	slli.d	$a0, $s7, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
.LBB2_22:                               # %_ZL10resize_intPPiS_i.exit.us.us.us.us.i
                                        #   in Loop: Header=BB2_25 Depth=4
	ld.d	$a7, $sp, 336                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 328                   # 8-byte Folded Reload
	ori	$t3, $zero, 1
	ld.d	$ra, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 272                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 312                   # 8-byte Folded Reload
.LBB2_23:                               # %_ZL10resize_intPPiS_i.exit.us.us.us.us.i
                                        #   in Loop: Header=BB2_25 Depth=4
	slli.d	$a1, $s4, 2
	ldx.w	$a1, $t1, $a1
	slli.d	$a2, $s5, 2
	addi.w	$s5, $s5, 1
	stx.w	$a1, $a0, $a2
	move	$a1, $s7
	move	$s7, $s0
	move	$s0, $fp
	move	$fp, $s8
	ld.d	$s8, $sp, 344                   # 8-byte Folded Reload
.LBB2_24:                               # %if.end178.us.us.us.us.i
                                        #   in Loop: Header=BB2_25 Depth=4
	addi.w	$s2, $s2, 1
	beq	$s2, $t8, .LBB2_17
.LBB2_25:                               # %for.body117.us281.us.us.us.i
                                        #   Parent Loop BB2_6 Depth=1
                                        #     Parent Loop BB2_15 Depth=2
                                        #       Parent Loop BB2_18 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB2_42 Depth 5
	ld.w	$a2, $s1, 4
	ld.w	$a3, $s1, 0
	add.d	$a2, $a2, $fp
	sub.w	$a2, $a2, $a3
	add.w	$a3, $s2, $t0
	bge	$a3, $a2, .LBB2_57
# %bb.26:                               # %land.lhs.true23.i.us301.us.us.us.i
                                        #   in Loop: Header=BB2_25 Depth=4
	ld.w	$a4, $s1, 12
	ld.w	$a5, $s1, 8
	add.d	$a4, $a4, $fp
	sub.w	$a4, $a4, $a5
	bge	$s3, $a4, .LBB2_57
# %bb.27:                               # %land.lhs.true23.i.us301.us.us.us.i
                                        #   in Loop: Header=BB2_25 Depth=4
	ld.w	$a5, $s1, 20
	ld.w	$a6, $s1, 16
	add.d	$a5, $a5, $fp
	sub.w	$a5, $a5, $a6
	ld.d	$a6, $sp, 416                   # 8-byte Folded Reload
	bge	$a6, $a5, .LBB2_57
# %bb.28:                               # %_ZL19box_map_local_entryRK3Boxiiii.exit.us.us.us.us.i
                                        #   in Loop: Header=BB2_25 Depth=4
	ld.d	$a5, $sp, 416                   # 8-byte Folded Reload
	mul.d	$a4, $a4, $a5
	add.d	$a4, $a4, $s3
	mul.d	$a2, $a4, $a2
	add.w	$s4, $a2, $a3
	bltz	$s4, .LBB2_57
# %bb.29:                               # %if.end.us.us.us.us.i
                                        #   in Loop: Header=BB2_25 Depth=4
	add.w	$a2, $s2, $t2
	slt	$a3, $a2, $t5
	xori	$a3, $a3, 1
	slt	$a4, $a2, $s7
	and	$a3, $a3, $a4
	and	$a3, $s6, $a3
	bne	$a3, $t3, .LBB2_31
# %bb.30:                               # %if.then135.us.us.us.us.i
                                        #   in Loop: Header=BB2_25 Depth=4
	addi.d	$a3, $s0, 1
	slli.d	$a4, $s4, 2
	stx.w	$s0, $t1, $a4
	move	$s0, $a3
.LBB2_31:                               # %if.end139.us.us.us.us.i
                                        #   in Loop: Header=BB2_25 Depth=4
	ld.d	$a3, $sp, 408                   # 8-byte Folded Reload
	beqz	$a3, .LBB2_24
# %bb.32:                               # %land.lhs.true147.us.us.us.us.i
                                        #   in Loop: Header=BB2_25 Depth=4
	bge	$s2, $t6, .LBB2_24
# %bb.33:                               # %land.lhs.true147.us.us.us.us.i
                                        #   in Loop: Header=BB2_25 Depth=4
	ld.d	$a3, $sp, 400                   # 8-byte Folded Reload
	bge	$a3, $t7, .LBB2_24
# %bb.34:                               # %land.lhs.true147.us.us.us.us.i
                                        #   in Loop: Header=BB2_25 Depth=4
	bltz	$s2, .LBB2_24
# %bb.35:                               # %land.lhs.true147.us.us.us.us.i
                                        #   in Loop: Header=BB2_25 Depth=4
	ld.d	$a3, $sp, 392                   # 8-byte Folded Reload
	blt	$s8, $a3, .LBB2_24
# %bb.36:                               # %land.lhs.true147.us.us.us.us.i
                                        #   in Loop: Header=BB2_25 Depth=4
	ld.d	$a3, $sp, 384                   # 8-byte Folded Reload
	bge	$s8, $a3, .LBB2_24
# %bb.37:                               # %land.lhs.true147.us.us.us.us.i
                                        #   in Loop: Header=BB2_25 Depth=4
	ld.d	$a3, $sp, 376                   # 8-byte Folded Reload
	blt	$a7, $a3, .LBB2_24
# %bb.38:                               # %land.lhs.true147.us.us.us.us.i
                                        #   in Loop: Header=BB2_25 Depth=4
	ld.d	$a3, $sp, 368                   # 8-byte Folded Reload
	bge	$a7, $a3, .LBB2_24
# %bb.39:                               # %land.lhs.true147.us.us.us.us.i
                                        #   in Loop: Header=BB2_25 Depth=4
	ld.d	$a3, $sp, 360                   # 8-byte Folded Reload
	blt	$a2, $a3, .LBB2_24
# %bb.40:                               # %land.lhs.true147.us.us.us.us.i
                                        #   in Loop: Header=BB2_25 Depth=4
	ld.d	$a3, $sp, 352                   # 8-byte Folded Reload
	bge	$a2, $a3, .LBB2_24
# %bb.41:                               # %while.cond.i.us.us.us.us.i.preheader
                                        #   in Loop: Header=BB2_25 Depth=4
	move	$s8, $fp
	move	$fp, $s0
	move	$s0, $s7
	ori	$a2, $zero, 32
	.p2align	4, , 16
.LBB2_42:                               # %while.cond.i.us.us.us.us.i
                                        #   Parent Loop BB2_6 Depth=1
                                        #     Parent Loop BB2_15 Depth=2
                                        #       Parent Loop BB2_18 Depth=3
                                        #         Parent Loop BB2_25 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	move	$s7, $a2
	slli.w	$a2, $a2, 1
	bge	$s5, $s7, .LBB2_42
# %bb.43:                               # %while.end.i.us.us.us.us.i
                                        #   in Loop: Header=BB2_25 Depth=4
	beqz	$a0, .LBB2_21
# %bb.44:                               # %if.else.i.us.us.us.us.i
                                        #   in Loop: Header=BB2_25 Depth=4
	bge	$a1, $s7, .LBB2_46
# %bb.45:                               # %if.then3.i.us.us.us.us.i
                                        #   in Loop: Header=BB2_25 Depth=4
	slli.d	$a1, $s7, 2
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	b	.LBB2_22
.LBB2_46:                               #   in Loop: Header=BB2_25 Depth=4
	move	$s7, $a1
	b	.LBB2_23
	.p2align	4, , 16
.LBB2_47:                               # %for.body117.lr.ph.split.split.split.us358.us.us.i
                                        #   in Loop: Header=BB2_18 Depth=3
	ld.w	$a2, $s1, 12
	ld.w	$a3, $s1, 8
	ld.w	$a5, $s1, 20
	ld.w	$a6, $s1, 16
	add.d	$a2, $a2, $fp
	sub.w	$a4, $a2, $a3
	add.d	$a2, $a5, $fp
	sub.w	$a2, $a2, $a6
	slt	$a3, $s3, $a4
	ld.d	$a5, $sp, 416                   # 8-byte Folded Reload
	slt	$a2, $a5, $a2
	and	$a2, $a3, $a2
	bne	$a2, $t3, .LBB2_57
# %bb.48:                               # %for.body117.us314.us.us.us.preheader.i
                                        #   in Loop: Header=BB2_18 Depth=3
	ld.w	$a3, $s1, 4
	ld.w	$a5, $s1, 0
	move	$a2, $zero
	add.d	$a3, $a3, $fp
	sub.w	$a3, $a3, $a5
	ld.d	$a5, $sp, 192                   # 8-byte Folded Reload
	mul.d	$a4, $a5, $a4
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	add.w	$a4, $a5, $a4
	mul.d	$a4, $a3, $a4
	bstrpick.d	$a5, $a4, 31, 0
	alsl.d	$a5, $a5, $t1, 2
	b	.LBB2_50
	.p2align	4, , 16
.LBB2_49:                               # %if.end139.us350.us.us.us.i
                                        #   in Loop: Header=BB2_50 Depth=4
	addi.w	$a2, $a2, 1
	addi.d	$a5, $a5, 4
	beq	$ra, $a2, .LBB2_17
.LBB2_50:                               # %for.body117.us314.us.us.us.i
                                        #   Parent Loop BB2_6 Depth=1
                                        #     Parent Loop BB2_15 Depth=2
                                        #       Parent Loop BB2_18 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	bge	$a2, $a3, .LBB2_57
# %bb.51:                               # %land.lhs.true23.i.us331.us.us.us.i
                                        #   in Loop: Header=BB2_50 Depth=4
	add.w	$a6, $a4, $a2
	bltz	$a6, .LBB2_57
# %bb.52:                               # %if.end.us341.us.us.us.i
                                        #   in Loop: Header=BB2_50 Depth=4
	add.w	$a6, $t4, $a2
	slt	$a7, $a6, $t5
	xori	$a7, $a7, 1
	slt	$a6, $a6, $s7
	and	$a6, $a7, $a6
	and	$a6, $s6, $a6
	bne	$a6, $t3, .LBB2_49
# %bb.53:                               # %if.then135.us346.us.us.us.i
                                        #   in Loop: Header=BB2_50 Depth=4
	addi.d	$a6, $s0, 1
	st.w	$s0, $a5, 0
	move	$s0, $a6
	b	.LBB2_49
.LBB2_54:
	move	$a0, $zero
	move	$s5, $zero
	move	$s0, $zero
	ld.d	$t1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	b	.LBB2_56
.LBB2_55:                               # %for.body70.preheader.i
	slli.d	$fp, $a4, 2
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	move	$a0, $s2
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	move	$s5, $zero
	move	$s0, $zero
	ld.d	$t1, $sp, 320                   # 8-byte Folded Reload
.LBB2_56:                               # %_ZL18box_partition_mapsiiPK3BoxiPPiS3_S3_S3_.exit
	ld.d	$a1, $sp, 512
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	stx.w	$s0, $s2, $a2
	stx.w	$s5, $s8, $a2
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	st.d	$t1, $a2, 0
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	st.d	$s2, $a2, 0
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	st.d	$s8, $a2, 0
	st.d	$a0, $a1, 0
	ld.d	$s8, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 488                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 496                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 504                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 512
	ret
.LBB2_57:                               # %if.then124.i
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	_Z17box_partition_rcbiiRK3BoxiPPS_PPiS5_S5_S5_, .Lfunc_end2-_Z17box_partition_rcbiiRK3BoxiPPS_PPiS5_S5_S5_
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
