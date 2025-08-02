	.file	"Lalignmm.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function Lalignmm_hmout
.LCPI0_0:
	.word	0xcb189680                      # float -1.0E+7
	.text
	.globl	Lalignmm_hmout
	.p2align	5
	.type	Lalignmm_hmout,@function
Lalignmm_hmout:                         # @Lalignmm_hmout
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -592
	st.d	$ra, $sp, 584                   # 8-byte Folded Spill
	st.d	$fp, $sp, 576                   # 8-byte Folded Spill
	st.d	$s0, $sp, 568                   # 8-byte Folded Spill
	st.d	$s1, $sp, 560                   # 8-byte Folded Spill
	st.d	$s2, $sp, 552                   # 8-byte Folded Spill
	st.d	$s3, $sp, 544                   # 8-byte Folded Spill
	st.d	$s4, $sp, 536                   # 8-byte Folded Spill
	st.d	$s5, $sp, 528                   # 8-byte Folded Spill
	st.d	$s6, $sp, 520                   # 8-byte Folded Spill
	st.d	$s7, $sp, 512                   # 8-byte Folded Spill
	st.d	$s8, $sp, 504                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 496                  # 8-byte Folded Spill
	pcalau12i	$a6, %got_pc_hi20(RNApenalty)
	ld.d	$a6, $a6, %got_pc_lo12(RNApenalty)
	move	$s4, $a0
	ld.w	$s5, $a6, 0
	ld.d	$a0, $a0, 0
	move	$s3, $a7
	move	$s0, $a5
	move	$s7, $a4
	move	$s1, $a3
	move	$s2, $a2
	move	$fp, $a1
	pcaddu18i	$ra, %call36(seqlen)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(seqlen)
	jirl	$ra, $ra, 0
	st.d	$s4, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $s4, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a1, $fp, 0
	move	$s6, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	add.d	$a0, $s6, $a0
	addi.w	$fp, $a0, 200
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	ori	$a0, $zero, 4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	addi.w	$s0, $s6, 102
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	st.d	$s4, $sp, 112                   # 8-byte Folded Spill
	addi.w	$fp, $s4, 102
	move	$a0, $fp
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	move	$a0, $fp
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	ori	$a1, $zero, 27
	st.d	$s0, $sp, 472                   # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	ori	$a1, $zero, 27
	st.d	$fp, $sp, 480                   # 8-byte Folded Spill
	move	$a0, $fp
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	ori	$s4, $zero, 1
	st.d	$s6, $sp, 176                   # 8-byte Folded Spill
	addi.w	$s0, $s6, 0
	st.d	$s7, $sp, 120                   # 8-byte Folded Spill
	blt	$s7, $s4, .LBB0_4
# %bb.1:                                # %for.body.lr.ph
	move	$fp, $zero
	ld.d	$s7, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 96                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s8, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$a0, $s0, .LBB0_260
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB0_2 Depth=1
	addi.w	$fp, $fp, 1
	addi.d	$s7, $s7, -1
	addi.d	$s8, $s8, 8
	bnez	$s7, .LBB0_2
.LBB0_4:                                # %for.cond35.preheader
	st.d	$s0, $sp, 488                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	addi.w	$fp, $a0, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	blt	$a0, $s4, .LBB0_8
# %bb.5:                                # %for.body38.lr.ph
	move	$s4, $zero
	ld.d	$s7, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_6:                                # %for.body38
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s8, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB0_261
# %bb.7:                                # %for.inc49
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.w	$s4, $s4, 1
	addi.d	$s7, $s7, -1
	addi.d	$s8, $s8, 8
	bnez	$s7, .LBB0_6
.LBB0_8:                                # %for.end51
	movgr2fr.w	$fa0, $s5
	ffint.s.w	$fs0, $fa0
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
	move	$a0, $s6
	ld.d	$a1, $sp, 416                   # 8-byte Folded Reload
	move	$a2, $s2
	ld.d	$s0, $sp, 488                   # 8-byte Folded Reload
	move	$a3, $s0
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	move	$a4, $s5
	pcaddu18i	$ra, %call36(MScpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	move	$a0, $s8
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	move	$a2, $s1
	move	$a3, $fp
	ld.d	$s7, $sp, 104                   # 8-byte Folded Reload
	move	$a4, $s7
	pcaddu18i	$ra, %call36(MScpmx_calc_new)
	jirl	$ra, $ra, 0
	beqz	$s3, .LBB0_10
# %bb.9:                                # %if.then52
	ld.d	$s4, $sp, 608
	ld.d	$s5, $sp, 592
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	move	$a2, $s6
	move	$a3, $s2
	move	$a4, $s0
	move	$a5, $s3
	pcaddu18i	$ra, %call36(new_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	move	$a1, $s7
	move	$a2, $s8
	move	$a3, $s1
	move	$a4, $fp
	move	$a5, $s5
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(new_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 424                   # 8-byte Folded Reload
	move	$a0, $s3
	move	$a1, $s5
	move	$a2, $s6
	move	$a3, $s2
	move	$a4, $s0
	move	$a5, $s4
	pcaddu18i	$ra, %call36(new_FinalGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	move	$a1, $s7
	move	$a2, $s8
	move	$a3, $s1
	move	$a4, $fp
	move	$a5, $s4
	pcaddu18i	$ra, %call36(new_FinalGapCount)
	jirl	$ra, $ra, 0
	b	.LBB0_11
.LBB0_10:                               # %if.else
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	move	$a1, $s5
	move	$a2, $s6
	move	$a3, $s2
	move	$a4, $s0
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	move	$a1, $s7
	move	$a2, $s8
	move	$a3, $s1
	move	$a4, $fp
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 424                   # 8-byte Folded Reload
	move	$a0, $s3
	move	$a1, $s5
	move	$a2, $s6
	move	$a3, $s2
	move	$a4, $s0
	pcaddu18i	$ra, %call36(st_FinalGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	move	$a1, $s7
	move	$a2, $s8
	move	$a3, $s1
	move	$a4, $fp
	pcaddu18i	$ra, %call36(st_FinalGapCount)
	jirl	$ra, $ra, 0
.LBB0_11:                               # %if.end53
	ori	$a0, $zero, 1
	fcvt.d.s	$fa0, $fs0
	ld.d	$a7, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	blt	$s0, $a0, .LBB0_18
# %bb.12:                               # %for.body57.lr.ph
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 30, 0
	ori	$a2, $zero, 8
	bltu	$a1, $a2, .LBB0_15
# %bb.13:                               # %vector.memcheck
	alsl.d	$a2, $a1, $s3, 2
	ld.d	$a4, $sp, 400                   # 8-byte Folded Reload
	bgeu	$a4, $a2, .LBB0_68
# %bb.14:                               # %vector.memcheck
	alsl.d	$a2, $a1, $a4, 2
	bgeu	$s3, $a2, .LBB0_68
.LBB0_15:
	move	$a2, $zero
.LBB0_16:                               # %for.body57.preheader
	alsl.d	$a3, $a2, $s3, 2
	ld.d	$a4, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$a4, $a2, $a4, 2
	sub.d	$a1, $a1, $a2
	vldi	$vr1, -912
	vldi	$vr2, -928
	.p2align	4, , 16
.LBB0_17:                               # %for.body57
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa3, $a4, 0
	fcvt.d.s	$fa3, $fa3
	fsub.d	$fa3, $fa1, $fa3
	fmul.d	$fa3, $fa3, $fa2
	fmul.d	$fa3, $fa3, $fa0
	fcvt.s.d	$fa3, $fa3
	fst.s	$fa3, $a4, 0
	fld.s	$fa3, $a3, 0
	fcvt.d.s	$fa3, $fa3
	fsub.d	$fa3, $fa1, $fa3
	fmul.d	$fa3, $fa3, $fa2
	fmul.d	$fa3, $fa3, $fa0
	fcvt.s.d	$fa3, $fa3
	fst.s	$fa3, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 4
	bnez	$a1, .LBB0_17
.LBB0_18:                               # %for.cond79.preheader
	blt	$fp, $a0, .LBB0_25
# %bb.19:                               # %for.body82.lr.ph
	bstrpick.d	$a0, $s1, 30, 0
	ori	$a1, $zero, 8
	bltu	$a0, $a1, .LBB0_22
# %bb.20:                               # %vector.memcheck198
	alsl.d	$a1, $a0, $a7, 2
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	bgeu	$a3, $a1, .LBB0_71
# %bb.21:                               # %vector.memcheck198
	alsl.d	$a1, $a0, $a3, 2
	bgeu	$a7, $a1, .LBB0_71
.LBB0_22:
	move	$a1, $zero
.LBB0_23:                               # %for.body82.preheader
	alsl.d	$a2, $a1, $a7, 2
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$a3, $a1, $a3, 2
	sub.d	$a0, $a0, $a1
	vldi	$vr1, -912
	vldi	$vr2, -928
	.p2align	4, , 16
.LBB0_24:                               # %for.body82
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa3, $a3, 0
	fcvt.d.s	$fa3, $fa3
	fsub.d	$fa3, $fa1, $fa3
	fmul.d	$fa3, $fa3, $fa2
	fmul.d	$fa3, $fa3, $fa0
	fcvt.s.d	$fa3, $fa3
	fst.s	$fa3, $a3, 0
	fld.s	$fa3, $a2, 0
	fcvt.d.s	$fa3, $fa3
	fsub.d	$fa3, $fa1, $fa3
	fmul.d	$fa3, $fa3, $fa2
	fmul.d	$fa3, $fa3, $fa0
	fcvt.s.d	$fa3, $fa3
	fst.s	$fa3, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 4
	bnez	$a0, .LBB0_24
.LBB0_25:                               # %for.end105
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	st.d	$a0, $a2, 0
	pcalau12i	$a0, %pc_hi20(reccycle)
	ld.w	$a1, $a0, %pc_lo12(reccycle)
	st.d	$s3, $a2, 8
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	st.d	$a3, $a2, 16
	st.d	$a7, $a2, 24
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, %pc_lo12(reccycle)
	blez	$fp, .LBB0_58
# %bb.26:                               # %if.end.i
	move	$a0, $s5
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s7
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	blt	$s5, $a1, .LBB0_34
# %bb.27:                               # %for.body54.preheader.i
	ori	$a3, $zero, 8
	move	$a2, $zero
	bltu	$s5, $a3, .LBB0_32
# %bb.28:                               # %for.body54.preheader.i
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	sub.d	$a3, $fp, $a3
	ori	$a4, $zero, 64
	bltu	$a3, $a4, .LBB0_32
# %bb.29:                               # %vector.ph224
	bstrpick.d	$a2, $s5, 30, 3
	slli.d	$a2, $a2, 3
	addi.d	$a3, $fp, 32
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a4, $a4, 32
	move	$a5, $a2
	.p2align	4, , 16
.LBB0_30:                               # %vector.body227
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a4, -32
	xvld	$xr1, $a4, 0
	xvst	$xr0, $a3, -32
	xvst	$xr1, $a3, 0
	addi.d	$a5, $a5, -8
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB0_30
# %bb.31:                               # %middle.block232
	beq	$a2, $s5, .LBB0_34
.LBB0_32:                               # %for.body54.i.preheader
	sub.d	$a3, $s5, $a2
	alsl.d	$a4, $a2, $fp, 3
	ld.d	$a5, $sp, 88                    # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a5, 3
	.p2align	4, , 16
.LBB0_33:                               # %for.body54.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a2, 0
	st.d	$a5, $a4, 0
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 8
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB0_33
.LBB0_34:                               # %for.cond62.preheader.i
	blt	$s7, $a1, .LBB0_42
# %bb.35:                               # %for.body65.preheader.i
	ori	$a2, $zero, 8
	move	$a1, $zero
	bltu	$s7, $a2, .LBB0_40
# %bb.36:                               # %for.body65.preheader.i
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	sub.d	$a2, $a0, $a2
	ori	$a3, $zero, 64
	bltu	$a2, $a3, .LBB0_40
# %bb.37:                               # %vector.ph241
	bstrpick.d	$a1, $s7, 30, 3
	slli.d	$a1, $a1, 3
	addi.d	$a2, $a0, 32
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 32
	move	$a4, $a1
	.p2align	4, , 16
.LBB0_38:                               # %vector.body244
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a3, -32
	xvld	$xr1, $a3, 0
	xvst	$xr0, $a2, -32
	xvst	$xr1, $a2, 0
	addi.d	$a4, $a4, -8
	addi.d	$a2, $a2, 64
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB0_38
# %bb.39:                               # %middle.block249
	beq	$a1, $s7, .LBB0_42
.LBB0_40:                               # %for.body65.i.preheader
	sub.d	$a2, $s7, $a1
	alsl.d	$a3, $a1, $a0, 3
	ld.d	$a4, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a4, 3
	.p2align	4, , 16
.LBB0_41:                               # %for.body65.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a1, 0
	st.d	$a4, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 8
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB0_41
.LBB0_42:                               # %for.end72.i
	ori	$a1, $zero, 10
	blt	$s0, $a1, .LBB0_67
# %bb.43:                               # %for.end72.i
	addi.w	$a2, $s1, 0
	ori	$a1, $zero, 9
	bgeu	$a1, $a2, .LBB0_67
# %bb.44:                               # %iter.check
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	addi.w	$s2, $a0, 100
	addi.w	$s3, $s1, 100
	ld.d	$s1, $sp, 480                   # 8-byte Folded Reload
	move	$a0, $s1
	move	$s8, $a2
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$s5, $sp, 472                   # 8-byte Folded Reload
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	move	$s4, $s0
	move	$s6, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	sltu	$a0, $s3, $s2
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $s2, $a0
	or	$a0, $a0, $a1
	addi.w	$s7, $a0, 2
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 26
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	ori	$a1, $zero, 26
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	move	$a0, $s2
	move	$a1, $s3
	move	$s3, $fp
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	ori	$a7, $zero, 1
	ori	$fp, $zero, 1
	move	$a0, $s6
	ld.d	$s1, $sp, 408                   # 8-byte Folded Reload
	move	$a1, $s1
	ld.d	$s0, $sp, 416                   # 8-byte Folded Reload
	move	$a2, $s0
	move	$a3, $zero
	move	$a4, $s4
	move	$a5, $s5
	move	$a6, $s7
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ori	$a7, $zero, 1
	move	$a0, $s3
	move	$a1, $s0
	move	$a2, $s1
	move	$a3, $zero
	st.d	$s8, $sp, 392                   # 8-byte Folded Spill
	move	$a4, $s8
	st.d	$s5, $sp, 360                   # 8-byte Folded Spill
	move	$a5, $s5
	st.d	$s7, $sp, 352                   # 8-byte Folded Spill
	move	$a6, $s7
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	addi.w	$a1, $a0, 1
	ori	$a0, $zero, 2
	slt	$a2, $a0, $a1
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $a1, $a2
	or	$s0, $a2, $a0
	ori	$a0, $zero, 4
	ld.d	$t7, $sp, 400                   # 8-byte Folded Reload
	addi.d	$s5, $t7, 4
	blt	$a0, $a1, .LBB0_74
# %bb.45:
	ld.d	$s8, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 224                   # 8-byte Folded Reload
.LBB0_46:                               # %for.body145.i.preheader
	ld.d	$a7, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 112                   # 8-byte Folded Reload
.LBB0_47:                               # %for.body145.i.preheader
	sub.d	$a0, $s0, $fp
	alsl.d	$a1, $fp, $s6, 2
	alsl.d	$a2, $fp, $a5, 2
	addi.d	$a2, $a2, -4
	.p2align	4, , 16
.LBB0_48:                               # %for.body145.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $t7, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a1, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	bnez	$a0, .LBB0_48
.LBB0_49:                               # %iter.check306
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	addi.w	$t2, $a0, -1
	addi.w	$t1, $t4, -1
	addi.w	$t5, $t4, 1
	ori	$a0, $zero, 2
	slt	$a1, $a0, $t5
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $t5, $a1
	or	$a0, $a1, $a0
	addi.d	$a1, $a0, -1
	st.d	$a1, $sp, 472                   # 8-byte Folded Spill
	ori	$a1, $zero, 1
	ori	$a2, $zero, 4
	addi.d	$a4, $s8, 4
	st.d	$a4, $sp, 464                   # 8-byte Folded Spill
	blt	$a2, $t5, .LBB0_78
.LBB0_50:                               # %for.body161.i.preheader
	sub.d	$a2, $a0, $a1
	alsl.d	$a3, $a1, $s3, 2
	alsl.d	$a1, $a1, $a6, 2
	addi.d	$a1, $a1, -4
	.p2align	4, , 16
.LBB0_51:                               # %for.body161.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $s8, 0
	fld.s	$fa1, $a1, 0
	fld.s	$fa2, $a3, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB0_51
.LBB0_52:                               # %for.body180.preheader.i
	fld.s	$fa0, $s6, 0
	ld.d	$a1, $t0, 0
	ld.d	$t3, $sp, 616
	fst.s	$fa0, $a1, 0
	slli.d	$a2, $s0, 2
	ori	$a3, $zero, 4
	ori	$a4, $zero, 8
	.p2align	4, , 16
.LBB0_53:                               # %for.body180.i
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa0, $s6, $a3
	ldx.d	$a5, $t0, $a4
	fst.s	$fa0, $a5, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 8
	bne	$a2, $a3, .LBB0_53
# %bb.54:                               # %iter.check349
	ori	$a2, $zero, 5
	ori	$a3, $zero, 1
	blt	$t5, $a2, .LBB0_104
# %bb.55:                               # %iter.check349
	sub.d	$a2, $a1, $s3
	ori	$a4, $zero, 63
	bgeu	$a4, $a2, .LBB0_104
# %bb.56:                               # %vector.main.loop.iter.check351
	ori	$a2, $zero, 17
	bge	$t5, $a2, .LBB0_82
# %bb.57:
	move	$a2, $zero
	b	.LBB0_86
.LBB0_58:                               # %for.cond.preheader.i
	ori	$fp, $zero, 1
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
	blt	$s5, $fp, .LBB0_61
# %bb.59:                               # %for.body.lr.ph.i
	move	$s3, $s0
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	move	$s1, $s6
	move	$s2, $s5
	.p2align	4, , 16
.LBB0_60:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s1, 0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	stx.b	$zero, $a0, $s3
	addi.d	$s2, $s2, -1
	addi.d	$s1, $s1, 8
	addi.d	$s0, $s0, 8
	bnez	$s2, .LBB0_60
.LBB0_61:                               # %for.cond29.preheader.i
	blt	$s7, $fp, .LBB0_198
# %bb.62:                               # %for.body32.lr.ph.i
	move	$s0, $zero
	ori	$s1, $zero, 1
	ori	$s2, $zero, 45
	b	.LBB0_64
	.p2align	4, , 16
.LBB0_63:                               # %for.inc46.i
                                        #   in Loop: Header=BB0_64 Depth=1
	addi.d	$s0, $s0, 1
	beq	$s0, $s7, .LBB0_198
.LBB0_64:                               # %for.body32.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_66 Depth 2
	slli.d	$a0, $s0, 3
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	blt	$a0, $s1, .LBB0_63
# %bb.65:                               # %for.body39.i.preheader
                                        #   in Loop: Header=BB0_64 Depth=1
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$s3, $s0, $a0, 3
	ld.d	$s4, $sp, 176                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_66:                               # %for.body39.i
                                        #   Parent Loop BB0_64 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$fp, $s3, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$s4, $s4, -1
	stx.h	$s2, $fp, $a0
	bnez	$s4, .LBB0_66
	b	.LBB0_63
.LBB0_67:                               # %if.then77.i
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
	b	.LBB0_198
.LBB0_68:                               # %vector.ph
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	bstrpick.d	$a2, $a2, 30, 3
	slli.d	$a2, $a2, 3
	xvreplve0.d	$xr1, $xr0
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr2, $a3
	lu52i.d	$a3, $zero, 1022
	xvreplgr2vr.d	$xr3, $a3
	move	$a3, $a4
	move	$a4, $s3
	move	$a5, $a2
	.p2align	4, , 16
.LBB0_69:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr4, $a3, 0
	xvpermi.q	$xr5, $xr4, 1
	vreplvei.w	$vr6, $vr5, 1
	fcvt.d.s	$fa6, $fa6
	vreplvei.w	$vr7, $vr5, 0
	fcvt.d.s	$fa7, $fa7
	xvinsve0.d	$xr7, $xr6, 1
	vreplvei.w	$vr6, $vr5, 2
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr7, $xr6, 2
	vreplvei.w	$vr5, $vr5, 3
	fcvt.d.s	$fa5, $fa5
	xvinsve0.d	$xr7, $xr5, 3
	vreplvei.w	$vr5, $vr4, 1
	fcvt.d.s	$fa5, $fa5
	vreplvei.w	$vr6, $vr4, 0
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr6, $xr5, 1
	vreplvei.w	$vr5, $vr4, 2
	fcvt.d.s	$fa5, $fa5
	xvinsve0.d	$xr6, $xr5, 2
	vreplvei.w	$vr4, $vr4, 3
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr6, $xr4, 3
	xvfsub.d	$xr4, $xr2, $xr7
	xvfsub.d	$xr5, $xr2, $xr6
	xvfmul.d	$xr4, $xr4, $xr3
	xvfmul.d	$xr5, $xr5, $xr3
	xvfmul.d	$xr4, $xr4, $xr1
	xvfmul.d	$xr5, $xr5, $xr1
	xvpickve2gr.d	$a6, $xr5, 1
	movgr2fr.d	$fa6, $a6
	fcvt.s.d	$fa6, $fa6
	xvpickve2gr.d	$a6, $xr5, 0
	movgr2fr.d	$fa7, $a6
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr7, $xr6, 1
	xvpickve2gr.d	$a6, $xr5, 2
	movgr2fr.d	$fa6, $a6
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr7, $xr6, 2
	xvpickve2gr.d	$a6, $xr5, 3
	movgr2fr.d	$fa5, $a6
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 3
	xvpickve2gr.d	$a6, $xr4, 0
	movgr2fr.d	$fa5, $a6
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 4
	xvpickve2gr.d	$a6, $xr4, 1
	movgr2fr.d	$fa5, $a6
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 5
	xvpickve2gr.d	$a6, $xr4, 2
	movgr2fr.d	$fa5, $a6
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 6
	xvpickve2gr.d	$a6, $xr4, 3
	movgr2fr.d	$fa4, $a6
	xvld	$xr5, $a4, 0
	fcvt.s.d	$fa4, $fa4
	xvinsve0.w	$xr7, $xr4, 7
	xvst	$xr7, $a3, 0
	xvpermi.q	$xr4, $xr5, 1
	vreplvei.w	$vr6, $vr4, 1
	fcvt.d.s	$fa6, $fa6
	vreplvei.w	$vr7, $vr4, 0
	fcvt.d.s	$fa7, $fa7
	xvinsve0.d	$xr7, $xr6, 1
	vreplvei.w	$vr6, $vr4, 2
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr7, $xr6, 2
	vreplvei.w	$vr4, $vr4, 3
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr7, $xr4, 3
	vreplvei.w	$vr4, $vr5, 1
	fcvt.d.s	$fa4, $fa4
	vreplvei.w	$vr6, $vr5, 0
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr6, $xr4, 1
	vreplvei.w	$vr4, $vr5, 2
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr6, $xr4, 2
	vreplvei.w	$vr4, $vr5, 3
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr6, $xr4, 3
	xvfsub.d	$xr4, $xr2, $xr7
	xvfsub.d	$xr5, $xr2, $xr6
	xvfmul.d	$xr4, $xr4, $xr3
	xvfmul.d	$xr5, $xr5, $xr3
	xvfmul.d	$xr4, $xr4, $xr1
	xvfmul.d	$xr5, $xr5, $xr1
	xvpickve2gr.d	$a6, $xr5, 1
	movgr2fr.d	$fa6, $a6
	fcvt.s.d	$fa6, $fa6
	xvpickve2gr.d	$a6, $xr5, 0
	movgr2fr.d	$fa7, $a6
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr7, $xr6, 1
	xvpickve2gr.d	$a6, $xr5, 2
	movgr2fr.d	$fa6, $a6
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr7, $xr6, 2
	xvpickve2gr.d	$a6, $xr5, 3
	movgr2fr.d	$fa5, $a6
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 3
	xvpickve2gr.d	$a6, $xr4, 0
	movgr2fr.d	$fa5, $a6
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 4
	xvpickve2gr.d	$a6, $xr4, 1
	movgr2fr.d	$fa5, $a6
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 5
	xvpickve2gr.d	$a6, $xr4, 2
	movgr2fr.d	$fa5, $a6
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 6
	xvpickve2gr.d	$a6, $xr4, 3
	movgr2fr.d	$fa4, $a6
	fcvt.s.d	$fa4, $fa4
	xvinsve0.w	$xr7, $xr4, 7
	xvst	$xr7, $a4, 0
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 32
	addi.d	$a3, $a3, 32
	bnez	$a5, .LBB0_69
# %bb.70:                               # %middle.block
	beq	$a1, $a2, .LBB0_18
	b	.LBB0_16
.LBB0_71:                               # %vector.ph206
	bstrpick.d	$a1, $s1, 30, 3
	slli.d	$a1, $a1, 3
	xvreplve0.d	$xr1, $xr0
	lu52i.d	$a2, $zero, 1023
	xvreplgr2vr.d	$xr2, $a2
	lu52i.d	$a2, $zero, 1022
	xvreplgr2vr.d	$xr3, $a2
	move	$a2, $a3
	move	$a3, $a7
	move	$a4, $a1
	.p2align	4, , 16
.LBB0_72:                               # %vector.body211
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr4, $a2, 0
	xvpermi.q	$xr5, $xr4, 1
	vreplvei.w	$vr6, $vr5, 1
	fcvt.d.s	$fa6, $fa6
	vreplvei.w	$vr7, $vr5, 0
	fcvt.d.s	$fa7, $fa7
	xvinsve0.d	$xr7, $xr6, 1
	vreplvei.w	$vr6, $vr5, 2
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr7, $xr6, 2
	vreplvei.w	$vr5, $vr5, 3
	fcvt.d.s	$fa5, $fa5
	xvinsve0.d	$xr7, $xr5, 3
	vreplvei.w	$vr5, $vr4, 1
	fcvt.d.s	$fa5, $fa5
	vreplvei.w	$vr6, $vr4, 0
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr6, $xr5, 1
	vreplvei.w	$vr5, $vr4, 2
	fcvt.d.s	$fa5, $fa5
	xvinsve0.d	$xr6, $xr5, 2
	vreplvei.w	$vr4, $vr4, 3
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr6, $xr4, 3
	xvfsub.d	$xr4, $xr2, $xr7
	xvfsub.d	$xr5, $xr2, $xr6
	xvfmul.d	$xr4, $xr4, $xr3
	xvfmul.d	$xr5, $xr5, $xr3
	xvfmul.d	$xr4, $xr4, $xr1
	xvfmul.d	$xr5, $xr5, $xr1
	xvpickve2gr.d	$a5, $xr5, 1
	movgr2fr.d	$fa6, $a5
	fcvt.s.d	$fa6, $fa6
	xvpickve2gr.d	$a5, $xr5, 0
	movgr2fr.d	$fa7, $a5
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr7, $xr6, 1
	xvpickve2gr.d	$a5, $xr5, 2
	movgr2fr.d	$fa6, $a5
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr7, $xr6, 2
	xvpickve2gr.d	$a5, $xr5, 3
	movgr2fr.d	$fa5, $a5
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 3
	xvpickve2gr.d	$a5, $xr4, 0
	movgr2fr.d	$fa5, $a5
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 4
	xvpickve2gr.d	$a5, $xr4, 1
	movgr2fr.d	$fa5, $a5
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 5
	xvpickve2gr.d	$a5, $xr4, 2
	movgr2fr.d	$fa5, $a5
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 6
	xvpickve2gr.d	$a5, $xr4, 3
	movgr2fr.d	$fa4, $a5
	xvld	$xr5, $a3, 0
	fcvt.s.d	$fa4, $fa4
	xvinsve0.w	$xr7, $xr4, 7
	xvst	$xr7, $a2, 0
	xvpermi.q	$xr4, $xr5, 1
	vreplvei.w	$vr6, $vr4, 1
	fcvt.d.s	$fa6, $fa6
	vreplvei.w	$vr7, $vr4, 0
	fcvt.d.s	$fa7, $fa7
	xvinsve0.d	$xr7, $xr6, 1
	vreplvei.w	$vr6, $vr4, 2
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr7, $xr6, 2
	vreplvei.w	$vr4, $vr4, 3
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr7, $xr4, 3
	vreplvei.w	$vr4, $vr5, 1
	fcvt.d.s	$fa4, $fa4
	vreplvei.w	$vr6, $vr5, 0
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr6, $xr4, 1
	vreplvei.w	$vr4, $vr5, 2
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr6, $xr4, 2
	vreplvei.w	$vr4, $vr5, 3
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr6, $xr4, 3
	xvfsub.d	$xr4, $xr2, $xr7
	xvfsub.d	$xr5, $xr2, $xr6
	xvfmul.d	$xr4, $xr4, $xr3
	xvfmul.d	$xr5, $xr5, $xr3
	xvfmul.d	$xr4, $xr4, $xr1
	xvfmul.d	$xr5, $xr5, $xr1
	xvpickve2gr.d	$a5, $xr5, 1
	movgr2fr.d	$fa6, $a5
	fcvt.s.d	$fa6, $fa6
	xvpickve2gr.d	$a5, $xr5, 0
	movgr2fr.d	$fa7, $a5
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr7, $xr6, 1
	xvpickve2gr.d	$a5, $xr5, 2
	movgr2fr.d	$fa6, $a5
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr7, $xr6, 2
	xvpickve2gr.d	$a5, $xr5, 3
	movgr2fr.d	$fa5, $a5
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 3
	xvpickve2gr.d	$a5, $xr4, 0
	movgr2fr.d	$fa5, $a5
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 4
	xvpickve2gr.d	$a5, $xr4, 1
	movgr2fr.d	$fa5, $a5
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 5
	xvpickve2gr.d	$a5, $xr4, 2
	movgr2fr.d	$fa5, $a5
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 6
	xvpickve2gr.d	$a5, $xr4, 3
	movgr2fr.d	$fa4, $a5
	fcvt.s.d	$fa4, $fa4
	xvinsve0.w	$xr7, $xr4, 7
	xvst	$xr7, $a3, 0
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 32
	addi.d	$a2, $a2, 32
	bnez	$a4, .LBB0_72
# %bb.73:                               # %middle.block216
	beq	$a0, $a1, .LBB0_25
	b	.LBB0_23
.LBB0_74:                               # %vector.memcheck252
	addi.d	$a0, $s6, 4
	alsl.d	$a2, $s0, $s6, 2
	sltu	$a3, $a0, $s5
	sltu	$a4, $t7, $a2
	and	$a3, $a3, $a4
	ld.d	$s8, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 224                   # 8-byte Folded Reload
	bnez	$a3, .LBB0_46
# %bb.75:                               # %vector.memcheck252
	alsl.d	$a3, $s0, $a5, 2
	addi.d	$a3, $a3, -4
	sltu	$a0, $a0, $a3
	sltu	$a2, $a5, $a2
	and	$a0, $a0, $a2
	ld.d	$a7, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 112                   # 8-byte Folded Reload
	bnez	$a0, .LBB0_47
# %bb.76:                               # %vector.main.loop.iter.check
	ori	$a2, $zero, 17
	addi.d	$a0, $s0, -1
	bge	$a1, $a2, .LBB0_89
# %bb.77:
	move	$a1, $zero
	b	.LBB0_93
.LBB0_78:                               # %vector.memcheck291
	addi.d	$a2, $s3, 4
	alsl.d	$a3, $a0, $s3, 2
	sltu	$a4, $a2, $a4
	sltu	$a5, $s8, $a3
	and	$a4, $a4, $a5
	bnez	$a4, .LBB0_50
# %bb.79:                               # %vector.memcheck291
	alsl.d	$a4, $a0, $a6, 2
	addi.d	$a4, $a4, -4
	sltu	$a2, $a2, $a4
	sltu	$a3, $a6, $a3
	and	$a2, $a2, $a3
	bnez	$a2, .LBB0_50
# %bb.80:                               # %vector.main.loop.iter.check308
	ori	$a1, $zero, 17
	bge	$t5, $a1, .LBB0_96
# %bb.81:
	move	$a2, $zero
	b	.LBB0_100
.LBB0_82:                               # %vector.ph352
	ld.d	$a2, $sp, 472                   # 8-byte Folded Reload
	bstrins.d	$a2, $zero, 3, 0
	addi.d	$a3, $s3, 36
	addi.d	$a4, $a1, 36
	move	$a5, $a2
	.p2align	4, , 16
.LBB0_83:                               # %vector.body355
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a3, -32
	xvld	$xr1, $a3, 0
	xvst	$xr0, $a4, -32
	xvst	$xr1, $a4, 0
	addi.d	$a3, $a3, 64
	addi.d	$a5, $a5, -16
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB0_83
# %bb.84:                               # %middle.block360
	ld.d	$a3, $sp, 472                   # 8-byte Folded Reload
	beq	$a3, $a2, .LBB0_106
# %bb.85:                               # %vec.epilog.iter.check365
	ld.d	$a3, $sp, 472                   # 8-byte Folded Reload
	andi	$a3, $a3, 12
	beqz	$a3, .LBB0_103
.LBB0_86:                               # %vec.epilog.ph364
	ld.d	$a3, $sp, 472                   # 8-byte Folded Reload
	move	$a4, $a3
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	bstrins.d	$a3, $a5, 1, 0
	slli.d	$a5, $a2, 2
	addi.d	$a6, $a5, 4
	add.d	$a5, $s3, $a6
	add.d	$a6, $a1, $a6
	sub.d	$a2, $a2, $a4
	.p2align	4, , 16
.LBB0_87:                               # %vec.epilog.vector.body370
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, 0
	vst	$vr0, $a6, 0
	addi.d	$a5, $a5, 16
	addi.d	$a2, $a2, 4
	addi.d	$a6, $a6, 16
	bnez	$a2, .LBB0_87
# %bb.88:                               # %vec.epilog.middle.block375
	ld.d	$a2, $sp, 472                   # 8-byte Folded Reload
	bne	$a2, $a4, .LBB0_104
	b	.LBB0_106
.LBB0_89:                               # %vector.ph267
	move	$a1, $a0
	xvldrepl.w	$xr0, $t7, 0
	bstrins.d	$a1, $zero, 3, 0
	addi.d	$a2, $s6, 36
	addi.d	$a3, $a5, 32
	move	$a4, $a1
	.p2align	4, , 16
.LBB0_90:                               # %vector.body270
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a3, -32
	xvld	$xr2, $a3, 0
	xvld	$xr3, $a2, -32
	xvld	$xr4, $a2, 0
	xvfadd.s	$xr1, $xr0, $xr1
	xvfadd.s	$xr2, $xr0, $xr2
	xvfadd.s	$xr1, $xr3, $xr1
	xvfadd.s	$xr2, $xr4, $xr2
	xvst	$xr1, $a2, -32
	xvst	$xr2, $a2, 0
	addi.d	$a2, $a2, 64
	addi.d	$a4, $a4, -16
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB0_90
# %bb.91:                               # %middle.block279
	beq	$a0, $a1, .LBB0_49
# %bb.92:                               # %vec.epilog.iter.check
	andi	$a2, $a0, 12
	beqz	$a2, .LBB0_257
.LBB0_93:                               # %vec.epilog.ph
	move	$a2, $a0
	bstrins.d	$a2, $zero, 1, 0
	ori	$a3, $zero, 1
	move	$fp, $a0
	bstrins.d	$fp, $a3, 1, 0
	vldrepl.w	$vr0, $t7, 0
	alsl.d	$a3, $a1, $s6, 2
	addi.d	$a3, $a3, 4
	alsl.d	$a4, $a1, $a5, 2
	sub.d	$a1, $a1, $a2
	.p2align	4, , 16
.LBB0_94:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a4, 0
	vld	$vr2, $a3, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $a3, 0
	addi.d	$a3, $a3, 16
	addi.d	$a1, $a1, 4
	addi.d	$a4, $a4, 16
	bnez	$a1, .LBB0_94
# %bb.95:                               # %vec.epilog.middle.block
	bne	$a0, $a2, .LBB0_47
	b	.LBB0_49
.LBB0_96:                               # %vector.ph309
	ld.d	$a2, $sp, 472                   # 8-byte Folded Reload
	xvldrepl.w	$xr0, $s8, 0
	bstrins.d	$a2, $zero, 3, 0
	addi.d	$a1, $s3, 36
	addi.d	$a3, $a6, 32
	move	$a4, $a2
	.p2align	4, , 16
.LBB0_97:                               # %vector.body312
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a3, -32
	xvld	$xr2, $a3, 0
	xvld	$xr3, $a1, -32
	xvld	$xr4, $a1, 0
	xvfadd.s	$xr1, $xr0, $xr1
	xvfadd.s	$xr2, $xr0, $xr2
	xvfadd.s	$xr1, $xr3, $xr1
	xvfadd.s	$xr2, $xr4, $xr2
	xvst	$xr1, $a1, -32
	xvst	$xr2, $a1, 0
	addi.d	$a1, $a1, 64
	addi.d	$a4, $a4, -16
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB0_97
# %bb.98:                               # %middle.block321
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	beq	$a1, $a2, .LBB0_52
# %bb.99:                               # %vec.epilog.iter.check326
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	andi	$a1, $a1, 12
	beqz	$a1, .LBB0_258
.LBB0_100:                              # %vec.epilog.ph325
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	move	$a3, $a1
	bstrins.d	$a3, $zero, 1, 0
	ori	$a4, $zero, 1
	bstrins.d	$a1, $a4, 1, 0
	vldrepl.w	$vr0, $s8, 0
	alsl.d	$a4, $a2, $s3, 2
	addi.d	$a4, $a4, 4
	alsl.d	$a5, $a2, $a6, 2
	sub.d	$a2, $a2, $a3
	.p2align	4, , 16
.LBB0_101:                              # %vec.epilog.vector.body331
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a5, 0
	vld	$vr2, $a4, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $a4, 0
	addi.d	$a4, $a4, 16
	addi.d	$a2, $a2, 4
	addi.d	$a5, $a5, 16
	bnez	$a2, .LBB0_101
# %bb.102:                              # %vec.epilog.middle.block339
	ld.d	$a2, $sp, 472                   # 8-byte Folded Reload
	bne	$a2, $a3, .LBB0_50
	b	.LBB0_52
.LBB0_103:
	addi.d	$a3, $a2, 1
.LBB0_104:                              # %for.body193.i.preheader
	sub.d	$a2, $a0, $a3
	alsl.d	$a1, $a3, $a1, 2
	alsl.d	$a3, $a3, $s3, 2
	.p2align	4, , 16
.LBB0_105:                              # %for.body193.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a3, 0
	fst.s	$fa0, $a1, 0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a3, 4
	bnez	$a2, .LBB0_105
.LBB0_106:                              # %iter.check394
	ori	$a1, $zero, 1
	ori	$a2, $zero, 4
	addi.d	$t8, $a7, 4
	blt	$a2, $t5, .LBB0_207
.LBB0_107:                              # %for.body206.i.preheader
	sub.d	$a2, $a0, $a1
	ld.d	$a3, $sp, 480                   # 8-byte Folded Reload
	alsl.d	$a3, $a1, $a3, 2
	alsl.d	$a4, $a1, $a7, 2
	alsl.d	$a1, $a1, $s3, 2
	addi.d	$a1, $a1, -4
	.p2align	4, , 16
.LBB0_108:                              # %for.body206.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $s5, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a4, 0
	st.w	$zero, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 4
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB0_108
.LBB0_109:                              # %for.body229.lr.ph.i
	st.d	$t8, $sp, 456                   # 8-byte Folded Spill
	st.d	$t5, $sp, 432                   # 8-byte Folded Spill
	st.d	$t3, $sp, 16                    # 8-byte Folded Spill
	st.d	$t2, $sp, 336                   # 8-byte Folded Spill
	st.d	$s6, $sp, 344                   # 8-byte Folded Spill
	slli.d	$s6, $t1, 2
	fldx.s	$fa0, $s3, $s6
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 31, 0
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	fst.s	$fa0, $a2, 0
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a2, $fa0
	ld.d	$a1, $sp, 480                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 4
	st.d	$a1, $sp, 448                   # 8-byte Folded Spill
	st.d	$t1, $sp, 184                   # 8-byte Folded Spill
	alsl.d	$s7, $t1, $a7, 2
	bstrpick.d	$a1, $t4, 30, 0
	st.d	$a1, $sp, 328                   # 8-byte Folded Spill
	st.d	$a2, $sp, 312                   # 8-byte Folded Spill
	bstrpick.d	$s1, $a2, 31, 0
	slli.d	$s4, $a0, 2
	ori	$s2, $zero, 1
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	move	$a0, $s3
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$a1, $sp, 440                   # 8-byte Folded Spill
	st.d	$s6, $sp, 320                   # 8-byte Folded Spill
	b	.LBB0_111
	.p2align	4, , 16
.LBB0_110:                              # %for.end321.i
                                        #   in Loop: Header=BB0_111 Depth=1
	ld.d	$s6, $sp, 320                   # 8-byte Folded Reload
	fldx.s	$fa0, $s3, $s6
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	fstx.s	$fa0, $a2, $a0
	fld.s	$fa0, $s7, 0
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	addi.d	$s2, $s2, 1
	fstx.s	$fa0, $a1, $a0
	move	$a0, $s3
	beq	$s2, $s0, .LBB0_123
.LBB0_111:                              # %for.body229.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_121 Depth 2
                                        #     Child Loop BB0_117 Depth 2
	addi.d	$s6, $s2, -1
	slli.d	$a1, $s6, 2
	ld.d	$fp, $sp, 344                   # 8-byte Folded Reload
	fldx.s	$fa0, $fp, $a1
	ld.d	$s3, $sp, 440                   # 8-byte Folded Reload
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
	fst.s	$fa0, $a0, 0
	move	$a0, $s3
	ld.d	$a1, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 408                   # 8-byte Folded Reload
	move	$a3, $s2
	ld.d	$a4, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 352                   # 8-byte Folded Reload
	move	$a7, $zero
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s2, 2
	fldx.s	$fa0, $fp, $a0
	fst.s	$fa0, $s3, 0
	ld.d	$a3, $sp, 400                   # 8-byte Folded Reload
	fldx.s	$fa0, $a3, $a0
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	fst.s	$fa0, $ra, 0
	ld.d	$t8, $sp, 368                   # 8-byte Folded Reload
	bne	$s2, $s1, .LBB0_113
# %bb.112:                              # %if.then246.i
                                        #   in Loop: Header=BB0_111 Depth=1
	fst.s	$fa0, $t8, 0
.LBB0_113:                              # %for.body260.lr.ph.i
                                        #   in Loop: Header=BB0_111 Depth=1
	ld.d	$fp, $sp, 440                   # 8-byte Folded Reload
	fld.s	$fa0, $fp, 0
	fld.s	$fa1, $s8, 4
	slli.d	$a1, $s2, 3
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	ldx.d	$a4, $a2, $a1
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	ldx.d	$a1, $a2, $a1
	alsl.d	$a2, $s2, $a3, 2
	fadd.s	$fa0, $fa0, $fa1
	ld.d	$a3, $sp, 424                   # 8-byte Folded Reload
	alsl.d	$a3, $s6, $a3, 2
	ld.d	$t3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 384                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 376                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 208                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 240                   # 8-byte Folded Reload
	bne	$s2, $s1, .LBB0_119
# %bb.114:                              # %for.body260.us.i.preheader
                                        #   in Loop: Header=BB0_111 Depth=1
	move	$a5, $zero
	move	$a7, $zero
	ori	$a6, $zero, 4
	b	.LBB0_117
	.p2align	4, , 16
.LBB0_115:                              # %if.then290.us.i
                                        #   in Loop: Header=BB0_117 Depth=2
	fstx.s	$fa6, $ra, $a6
	ld.d	$t0, $sp, 480                   # 8-byte Folded Reload
	stx.w	$s6, $t0, $a6
	move	$t0, $s6
.LBB0_116:                              # %if.end292.us.i
                                        #   in Loop: Header=BB0_117 Depth=2
	fadd.s	$fa5, $fa0, $fa5
	fcmp.clt.s	$fcc0, $fa1, $fa5
	fadd.s	$fa3, $fa3, $fa4
	fldx.s	$fa4, $s3, $a6
	fsel	$fa5, $fa1, $fa5, $fcc0
	fcmp.clt.s	$fcc0, $fa5, $fa3
	fsel	$fa3, $fa5, $fa3, $fcc0
	fadd.s	$fa3, $fa3, $fa4
	fstx.s	$fa3, $s3, $a6
	fstx.s	$fa3, $a4, $a6
	fldx.s	$fa3, $ra, $a6
	fadd.s	$fa1, $fa1, $fa2
	fcmp.cult.s	$fcc0, $fa1, $fa0
	fstx.s	$fa3, $a1, $a6
	fldx.s	$fa2, $s3, $a6
	fsel	$fa0, $fa1, $fa0, $fcc0
	movcf2gr	$t1, $fcc0
	masknez	$t2, $a5, $t1
	maskeqz	$a7, $a7, $t1
	fstx.s	$fa2, $t5, $a6
	fldx.s	$fa1, $ra, $a6
	or	$a7, $a7, $t2
	stx.w	$t0, $t7, $a6
	stx.w	$a7, $t6, $a6
	fstx.s	$fa1, $t8, $a6
	fstx.s	$fa0, $t4, $a6
	addi.d	$a6, $a6, 4
	addi.d	$a5, $a5, 1
	beq	$s4, $a6, .LBB0_110
.LBB0_117:                              # %for.body260.us.i
                                        #   Parent Loop BB0_111 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t0, $fp, $a6
	fld.s	$fa1, $t0, -4
	add.d	$t0, $t3, $a6
	fld.s	$fa5, $t0, -4
	fld.s	$fa6, $a2, 0
	fldx.s	$fa3, $ra, $a6
	fldx.s	$fa2, $s8, $a6
	fld.s	$fa4, $a3, 0
	fadd.s	$fa6, $fa1, $fa6
	fcmp.cle.s	$fcc0, $fa3, $fa6
	bcnez	$fcc0, .LBB0_115
# %bb.118:                              # %for.body260.us.if.end292.us_crit_edge.i
                                        #   in Loop: Header=BB0_117 Depth=2
	ld.d	$t0, $sp, 480                   # 8-byte Folded Reload
	ldx.w	$t0, $t0, $a6
	b	.LBB0_116
	.p2align	4, , 16
.LBB0_119:                              # %for.body260.i.preheader
                                        #   in Loop: Header=BB0_111 Depth=1
	addi.d	$a5, $s3, 4
	addi.d	$a6, $a1, 4
	addi.d	$a4, $a4, 4
	move	$a7, $t3
	ld.d	$t0, $sp, 464                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 472                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 456                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 448                   # 8-byte Folded Reload
	move	$t4, $fp
	b	.LBB0_121
	.p2align	4, , 16
.LBB0_120:                              # %if.end292.i
                                        #   in Loop: Header=BB0_121 Depth=2
	fadd.s	$fa4, $fa0, $fa4
	fcmp.clt.s	$fcc0, $fa1, $fa4
	fadd.s	$fa3, $fa3, $fa5
	fld.s	$fa5, $a5, 0
	fsel	$fa4, $fa1, $fa4, $fcc0
	fcmp.clt.s	$fcc0, $fa4, $fa3
	fsel	$fa3, $fa4, $fa3, $fcc0
	fadd.s	$fa3, $fa3, $fa5
	fst.s	$fa3, $a5, 0
	fst.s	$fa3, $a4, 0
	fld.s	$fa3, $t2, 0
	fadd.s	$fa1, $fa1, $fa2
	fcmp.cle.s	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc0
	fst.s	$fa3, $a6, 0
	addi.d	$t4, $t4, 4
	addi.d	$a5, $a5, 4
	addi.d	$t3, $t3, 4
	addi.d	$t2, $t2, 4
	addi.d	$t1, $t1, -1
	addi.d	$a6, $a6, 4
	addi.d	$a4, $a4, 4
	addi.d	$t0, $t0, 4
	addi.d	$a7, $a7, 4
	beqz	$t1, .LBB0_110
.LBB0_121:                              # %for.body260.i
                                        #   Parent Loop BB0_111 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa1, $t4, 0
	fld.s	$fa4, $a7, 0
	fld.s	$fa6, $a2, 0
	fld.s	$fa3, $t2, 0
	fld.s	$fa2, $t0, 0
	fld.s	$fa5, $a3, 0
	fadd.s	$fa6, $fa1, $fa6
	fcmp.cult.s	$fcc0, $fa6, $fa3
	bcnez	$fcc0, .LBB0_120
# %bb.122:                              # %if.then290.i
                                        #   in Loop: Header=BB0_121 Depth=2
	fst.s	$fa6, $t2, 0
	st.w	$s6, $t3, 0
	b	.LBB0_120
.LBB0_123:                              # %iter.check442
	ori	$a7, $zero, 1
	ld.d	$s4, $sp, 344                   # 8-byte Folded Reload
	move	$a0, $s4
	ld.d	$s0, $sp, 408                   # 8-byte Folded Reload
	move	$a1, $s0
	ld.d	$fp, $sp, 416                   # 8-byte Folded Reload
	move	$a2, $fp
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 360                   # 8-byte Folded Reload
	move	$a5, $s1
	ld.d	$s2, $sp, 352                   # 8-byte Folded Reload
	move	$a6, $s2
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ori	$a7, $zero, 1
	move	$a0, $s3
	move	$a1, $fp
	move	$a2, $s0
	ld.d	$fp, $sp, 336                   # 8-byte Folded Reload
	move	$a3, $fp
	ld.d	$a4, $sp, 392                   # 8-byte Folded Reload
	move	$a5, $s1
	move	$a6, $s2
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	move	$t4, $fp
	bstrpick.d	$a2, $fp, 31, 0
	ori	$a0, $zero, 3
	ld.d	$a4, $sp, 424                   # 8-byte Folded Reload
	alsl.d	$a1, $a2, $a4, 2
	bltu	$a0, $fp, .LBB0_211
# %bb.124:
	move	$s2, $a2
	move	$a0, $zero
	ld.d	$t1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 384                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 376                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 368                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 256                   # 8-byte Folded Reload
.LBB0_125:                              # %for.body351.i.preheader
	ld.d	$a7, $sp, 392                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 328                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 432                   # 8-byte Folded Reload
.LBB0_126:                              # %for.body351.i.preheader
	alsl.d	$a2, $a0, $s4, 2
	sub.d	$a3, $s2, $a0
	ld.d	$a4, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a4, 2
	addi.d	$a0, $a0, 4
	.p2align	4, , 16
.LBB0_127:                              # %for.body351.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a0, 0
	fld.s	$fa2, $a2, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 4
	bnez	$a3, .LBB0_127
.LBB0_128:                              # %for.cond365.preheader.i
	alsl.d	$a0, $t6, $t1, 2
	beqz	$t6, .LBB0_133
# %bb.129:                              # %iter.check493
	ori	$a2, $zero, 4
	bltu	$a2, $a7, .LBB0_215
# %bb.130:
	move	$a2, $zero
.LBB0_131:                              # %for.body369.i.preheader
	alsl.d	$a3, $a2, $s3, 2
	sub.d	$a4, $t6, $a2
	alsl.d	$a2, $a2, $s8, 2
	addi.d	$a2, $a2, 4
	.p2align	4, , 16
.LBB0_132:                              # %for.body369.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a3, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, -1
	addi.d	$a2, $a2, 4
	bnez	$a4, .LBB0_132
.LBB0_133:                              # %for.body387.i.preheader
	move	$a2, $s2
	move	$a3, $a6
	.p2align	4, , 16
.LBB0_134:                              # %for.body387.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a3, 0
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $s5, 0
	fldx.s	$fa2, $a4, $s6
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa0, $fa2
	fstx.s	$fa0, $a4, $s6
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, -1
	addi.d	$s5, $s5, 4
	bnez	$a2, .LBB0_134
# %bb.135:                              # %for.cond404.preheader.i
	beqz	$t6, .LBB0_144
# %bb.136:                              # %iter.check543
	slli.d	$a1, $s2, 3
	ldx.d	$a1, $a6, $a1
	ori	$a2, $zero, 4
	bltu	$a2, $a7, .LBB0_219
# %bb.137:
	move	$a2, $zero
	ld.d	$a6, $sp, 112                   # 8-byte Folded Reload
.LBB0_138:                              # %for.body408.i.preheader
	alsl.d	$a1, $a2, $a1, 2
	sub.d	$a3, $t6, $a2
	alsl.d	$a2, $a2, $s8, 2
	addi.d	$a2, $a2, 4
	.p2align	4, , 16
.LBB0_139:                              # %for.body408.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a1, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa0, $fa2
	fst.s	$fa0, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB0_139
.LBB0_140:                              # %for.body429.lr.ph.i
	slti	$a2, $t6, 1
	ori	$a1, $zero, 1
	masknez	$a3, $a1, $a2
	maskeqz	$a2, $t6, $a2
	or	$a4, $a2, $a3
	nor	$a2, $a4, $zero
	add.w	$a3, $a2, $a6
	ori	$a5, $zero, 23
	addi.d	$a2, $a0, -4
	bgeu	$a3, $a5, .LBB0_223
.LBB0_141:
	move	$a0, $t6
.LBB0_142:                              # %for.body429.i.preheader
	addi.d	$a3, $a0, 1
	ld.d	$a4, $sp, 480                   # 8-byte Folded Reload
	alsl.d	$a4, $a0, $a4, 2
	alsl.d	$a5, $a0, $t5, 2
	addi.d	$a5, $a5, -4
	alsl.d	$a0, $a0, $s3, 2
	.p2align	4, , 16
.LBB0_143:                              # %for.body429.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a2, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a5, 0
	st.w	$t4, $a4, 0
	addi.w	$a3, $a3, -1
	addi.d	$a4, $a4, -4
	addi.d	$a5, $a5, -4
	addi.d	$a0, $a0, -4
	blt	$a1, $a3, .LBB0_143
.LBB0_144:                              # %for.cond446.preheader.i
	move	$s6, $zero
	move	$a4, $zero
	move	$a5, $zero
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	alsl.d	$a0, $t8, $a0, 2
	alsl.d	$a1, $t8, $t5, 2
	addi.w	$a2, $zero, -2
	lu32i.d	$a2, 0
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	bstrpick.d	$a2, $a2, 31, 0
	alsl.d	$a3, $a2, $t1, 2
	st.d	$a3, $sp, 160                   # 8-byte Folded Spill
	slli.d	$a3, $a2, 2
	addi.d	$s1, $a1, -8
	addi.d	$a0, $a0, -8
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	ori	$a1, $zero, 1
	slt	$a0, $a1, $fp
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $fp, $a0
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	alsl.d	$a0, $a2, $a0, 2
	st.d	$a0, $sp, 472                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$a0, $a2, $a0, 2
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
	alsl.d	$a0, $a2, $t3, 2
	st.d	$a0, $sp, 456                   # 8-byte Folded Spill
	alsl.d	$a0, $a2, $t2, 2
	st.d	$a0, $sp, 448                   # 8-byte Folded Spill
	st.d	$a3, $sp, 168                   # 8-byte Folded Spill
	addi.d	$a0, $a3, 4
	add.d	$fp, $t7, $a0
	add.d	$s8, $s8, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.s	$fs0, $a0, %pc_lo12(.LCPI0_0)
	addi.d	$a0, $t6, -2
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	addi.d	$a0, $t3, 8
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	movgr2fr.w	$fa6, $zero
	move	$t1, $s2
	b	.LBB0_147
	.p2align	4, , 16
.LBB0_145:                              #   in Loop: Header=BB0_147 Depth=1
	move	$a0, $a5
	move	$t7, $a4
	move	$a2, $s6
.LBB0_146:                              # %for.inc675.i
                                        #   in Loop: Header=BB0_147 Depth=1
	st.d	$s5, $sp, 312                   # 8-byte Folded Spill
	move	$s6, $a2
	move	$a4, $t7
	move	$a5, $a0
	move	$s3, $s0
	ori	$a0, $zero, 1
	bge	$a0, $s2, .LBB0_182
.LBB0_147:                              # %for.body449.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_150 Depth 2
                                        #     Child Loop BB0_167 Depth 2
                                        #     Child Loop BB0_169 Depth 2
	st.d	$a5, $sp, 432                   # 8-byte Folded Spill
	st.d	$a4, $sp, 264                   # 8-byte Folded Spill
	xvst	$xr6, $sp, 272                  # 32-byte Folded Spill
	st.d	$t4, $sp, 336                   # 8-byte Folded Spill
	move	$s2, $t1
	slli.d	$a0, $t1, 2
	ld.d	$s4, $sp, 344                   # 8-byte Folded Reload
	fldx.s	$fa0, $s4, $a0
	ld.d	$s0, $sp, 440                   # 8-byte Folded Reload
	addi.d	$s7, $t1, -1
	ld.d	$s5, $sp, 320                   # 8-byte Folded Reload
	fstx.s	$fa0, $s3, $s5
	move	$a0, $s0
	ld.d	$a1, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 408                   # 8-byte Folded Reload
	move	$a3, $s7
	move	$a4, $a7
	ld.d	$a5, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 352                   # 8-byte Folded Reload
	move	$a7, $zero
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	move	$t1, $s7
	ld.d	$ra, $sp, 328                   # 8-byte Folded Reload
	slli.d	$a0, $s7, 2
	fldx.s	$fa0, $s4, $a0
	fstx.s	$fa0, $s0, $s5
	alsl.d	$a1, $ra, $s3, 2
	addi.d	$a1, $a1, -4
	ld.d	$t7, $sp, 184                   # 8-byte Folded Reload
	st.d	$s3, $sp, 440                   # 8-byte Folded Spill
	beqz	$t7, .LBB0_162
# %bb.148:                              # %for.body489.lr.ph.i
                                        #   in Loop: Header=BB0_147 Depth=1
	alsl.d	$a2, $t7, $s3, 2
	fld.s	$fa0, $a2, 0
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	fld.s	$fa1, $a4, 0
	move	$a3, $zero
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	alsl.d	$a2, $ra, $s0, 2
	move	$s0, $a4
	addi.d	$a4, $a2, -8
	fadd.s	$fa0, $fa0, $fa1
	ld.d	$a2, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$a5, $s2, $a2, 2
	ld.d	$t6, $sp, 424                   # 8-byte Folded Reload
	alsl.d	$a6, $t1, $t6, 2
	ld.d	$a2, $sp, 432                   # 8-byte Folded Reload
	bstrpick.d	$a2, $a2, 31, 0
	xor	$a2, $t1, $a2
	sltui	$a7, $a2, 1
	ld.d	$s5, $sp, 312                   # 8-byte Folded Reload
	bstrpick.d	$a2, $s5, 31, 0
	xor	$t0, $s2, $a2
	move	$s7, $t1
	slli.d	$t1, $t1, 3
	ld.d	$t2, $sp, 248                   # 8-byte Folded Reload
	ldx.d	$t2, $t2, $t1
	ld.d	$t3, $sp, 256                   # 8-byte Folded Reload
	ldx.d	$t1, $t3, $t1
	sltui	$t0, $t0, 1
	or	$a7, $a7, $t0
	ld.d	$t3, $sp, 168                   # 8-byte Folded Reload
	add.d	$t0, $t2, $t3
	add.d	$t1, $t1, $t3
	move	$t2, $t7
	move	$t3, $t7
	ld.d	$t8, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 336                   # 8-byte Folded Reload
	xvld	$xr6, $sp, 272                  # 32-byte Folded Reload
	b	.LBB0_150
	.p2align	4, , 16
.LBB0_149:                              # %if.end556.i
                                        #   in Loop: Header=BB0_150 Depth=2
	fldx.s	$fa2, $t1, $a3
	fadd.s	$fa2, $fa1, $fa2
	fstx.s	$fa2, $t1, $a3
	fldx.s	$fa2, $a4, $a3
	fldx.s	$fa3, $t0, $a3
	movcf2gr	$t4, $fcc0
	fadd.s	$fa2, $fa2, $fa3
	fstx.s	$fa2, $t0, $a3
	fldx.s	$fa2, $a4, $a3
	masknez	$t5, $t2, $t4
	maskeqz	$t3, $t3, $t4
	or	$t3, $t3, $t5
	fadd.s	$fa1, $fa1, $fa2
	fstx.s	$fa1, $a4, $a3
	addi.w	$t2, $t2, -1
	addi.d	$a3, $a3, -4
	blez	$t2, .LBB0_161
.LBB0_150:                              # %for.body489.i
                                        #   Parent Loop BB0_147 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$fa1, $s8, $a3
	fldx.s	$fa2, $a1, $a3
	fldx.s	$fa3, $s1, $a3
	fld.s	$fa4, $a5, 0
	fadd.s	$fa1, $fa0, $fa1
	fcmp.clt.s	$fcc0, $fa2, $fa1
	fsel	$fa1, $fa2, $fa1, $fcc0
	fadd.s	$fa4, $fa3, $fa4
	fcmp.cule.s	$fcc1, $fa4, $fa1
	bcnez	$fcc1, .LBB0_152
# %bb.151:                              # %if.then515.i
                                        #   in Loop: Header=BB0_150 Depth=2
	ld.d	$t4, $sp, 488                   # 8-byte Folded Reload
	ldx.w	$t4, $t4, $a3
	fmov.s	$fa1, $fa4
	move	$t5, $t2
	b	.LBB0_153
	.p2align	4, , 16
.LBB0_152:                              #   in Loop: Header=BB0_150 Depth=2
	movcf2gr	$t4, $fcc0
	masknez	$t5, $t2, $t4
	maskeqz	$t4, $t3, $t4
	or	$t5, $t4, $t5
	move	$t4, $s2
.LBB0_153:                              # %if.end517.i
                                        #   in Loop: Header=BB0_150 Depth=2
	fld.s	$fa5, $a6, 0
	fldx.s	$fa4, $s0, $a3
	fadd.s	$fa5, $fa2, $fa5
	fcmp.cult.s	$fcc0, $fa5, $fa3
	bceqz	$fcc0, .LBB0_157
# %bb.154:                              # %if.end525.i
                                        #   in Loop: Header=BB0_150 Depth=2
	beqz	$a7, .LBB0_158
.LBB0_155:                              # %if.then532.i
                                        #   in Loop: Header=BB0_150 Depth=2
	ld.d	$s3, $sp, 464                   # 8-byte Folded Reload
	stx.w	$t4, $s3, $a3
	ld.d	$t4, $sp, 472                   # 8-byte Folded Reload
	stx.w	$t5, $t4, $a3
	beq	$s7, $a2, .LBB0_159
.LBB0_156:                              # %if.end548.i
                                        #   in Loop: Header=BB0_150 Depth=2
	fadd.s	$fa2, $fa2, $fa4
	fcmp.cult.s	$fcc0, $fa2, $fa0
	fsel	$fa0, $fa2, $fa0, $fcc0
	bne	$s2, $a2, .LBB0_149
	b	.LBB0_160
	.p2align	4, , 16
.LBB0_157:                              # %if.then523.i
                                        #   in Loop: Header=BB0_150 Depth=2
	fstx.s	$fa5, $s1, $a3
	ld.d	$s3, $sp, 488                   # 8-byte Folded Reload
	stx.w	$s2, $s3, $a3
	bnez	$a7, .LBB0_155
.LBB0_158:                              # %if.end537.i
                                        #   in Loop: Header=BB0_150 Depth=2
	bne	$s7, $a2, .LBB0_156
.LBB0_159:                              # %if.then540.i
                                        #   in Loop: Header=BB0_150 Depth=2
	ld.d	$t4, $sp, 456                   # 8-byte Folded Reload
	fldx.s	$fa3, $t4, $a3
	fadd.s	$fa3, $fa1, $fa3
	fstx.s	$fa3, $t4, $a3
	fldx.s	$fa3, $s1, $a3
	fldx.s	$fa5, $fp, $a3
	fadd.s	$fa3, $fa3, $fa5
	fstx.s	$fa3, $fp, $a3
	fadd.s	$fa2, $fa2, $fa4
	fcmp.cult.s	$fcc0, $fa2, $fa0
	fsel	$fa0, $fa2, $fa0, $fcc0
	bne	$s2, $a2, .LBB0_149
.LBB0_160:                              # %if.then552.i
                                        #   in Loop: Header=BB0_150 Depth=2
	ld.d	$t4, $sp, 448                   # 8-byte Folded Reload
	fldx.s	$fa2, $t4, $a3
	fadd.s	$fa2, $fa0, $fa2
	fstx.s	$fa2, $t4, $a3
	b	.LBB0_149
	.p2align	4, , 16
.LBB0_161:                              # %for.end574.i.loopexit
                                        #   in Loop: Header=BB0_147 Depth=1
	add.d	$a1, $a1, $a3
	ld.d	$a6, $sp, 376                   # 8-byte Folded Reload
	move	$t1, $s7
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 432                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 384                   # 8-byte Folded Reload
	b	.LBB0_163
	.p2align	4, , 16
.LBB0_162:                              # %for.body449.for.end574_crit_edge.i
                                        #   in Loop: Header=BB0_147 Depth=1
	ld.d	$s5, $sp, 312                   # 8-byte Folded Reload
	bstrpick.d	$a2, $s5, 31, 0
	ld.d	$t6, $sp, 424                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 376                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 336                   # 8-byte Folded Reload
	xvld	$xr6, $sp, 272                  # 32-byte Folded Reload
	ld.d	$a5, $sp, 432                   # 8-byte Folded Reload
.LBB0_163:                              # %for.end574.i
                                        #   in Loop: Header=BB0_147 Depth=1
	fld.s	$fa0, $a1, 0
	fldx.s	$fa1, $t6, $a0
	fadd.s	$fa0, $fa0, $fa1
	fcmp.clt.s	$fcc0, $fs0, $fa0
	fsel	$fs0, $fs0, $fa0, $fcc0
	ld.d	$a7, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	bne	$t1, $a2, .LBB0_165
# %bb.164:                              # %if.then585.i
                                        #   in Loop: Header=BB0_147 Depth=1
	fld.s	$fa0, $t8, 0
	fadd.s	$fa0, $fs0, $fa0
	fst.s	$fa0, $t8, 0
.LBB0_165:                              # %if.end590.i
                                        #   in Loop: Header=BB0_147 Depth=1
	addi.w	$a0, $s5, -1
	bne	$s2, $a2, .LBB0_177
# %bb.166:                              # %if.then594.i
                                        #   in Loop: Header=BB0_147 Depth=1
	fld.s	$fa6, $a6, 4
	move	$s6, $zero
	ori	$a1, $zero, 2
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_167:                              # %for.body600.i
                                        #   Parent Loop BB0_147 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $a2, 0
	fcmp.clt.s	$fcc1, $fa6, $fa0
	fsel	$fa6, $fa6, $fa0, $fcc1
	movcf2gr	$a4, $fcc1
	masknez	$a5, $s6, $a4
	maskeqz	$a4, $a1, $a4
	or	$s6, $a4, $a5
	addi.d	$a3, $a3, -1
	addi.w	$a1, $a1, 1
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB0_167
# %bb.168:                              # %for.body614.i.preheader
                                        #   in Loop: Header=BB0_147 Depth=1
	move	$a1, $zero
	move	$a2, $t8
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_169:                              # %for.body614.i
                                        #   Parent Loop BB0_147 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $a2, 0
	fcmp.clt.s	$fcc1, $fa6, $fa0
	fsel	$fa6, $fa6, $fa0, $fcc1
	movcf2gr	$a4, $fcc1
	masknez	$a5, $s6, $a4
	maskeqz	$a4, $a1, $a4
	or	$s6, $a4, $a5
	addi.d	$a3, $a3, -1
	addi.w	$a1, $a1, 1
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB0_169
# %bb.170:                              # %for.end623.i
                                        #   in Loop: Header=BB0_147 Depth=1
	slli.d	$a1, $s6, 2
	fldx.s	$fa0, $a6, $a1
	addi.w	$a4, $s6, -1
	ori	$a2, $zero, 1
	blt	$s6, $a2, .LBB0_175
# %bb.171:                              # %land.lhs.true.i
                                        #   in Loop: Header=BB0_147 Depth=1
	slli.d	$a2, $a4, 2
	fldx.s	$fa1, $t2, $a2
	fcmp.cule.s	$fcc1, $fa1, $fa0
	move	$a2, $a4
	ld.d	$a3, $sp, 240                   # 8-byte Folded Reload
	bcnez	$fcc1, .LBB0_173
# %bb.172:                              # %if.then635.i
                                        #   in Loop: Header=BB0_147 Depth=1
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ldx.w	$a2, $a2, $a1
	fmov.s	$fa0, $fa1
.LBB0_173:                              # %if.end642.i
                                        #   in Loop: Header=BB0_147 Depth=1
	fldx.s	$fa1, $t8, $a1
	fcmp.cule.s	$fcc1, $fa1, $fa0
	bcnez	$fcc1, .LBB0_176
.LBB0_174:                              # %if.then647.i
                                        #   in Loop: Header=BB0_147 Depth=1
	ldx.w	$a5, $a3, $a1
	b	.LBB0_177
.LBB0_175:                              #   in Loop: Header=BB0_147 Depth=1
	move	$a2, $a4
	ld.d	$a3, $sp, 240                   # 8-byte Folded Reload
	fldx.s	$fa1, $t8, $a1
	fcmp.cule.s	$fcc1, $fa1, $fa0
	bceqz	$fcc1, .LBB0_174
.LBB0_176:                              #   in Loop: Header=BB0_147 Depth=1
	move	$a5, $a0
	move	$a4, $a2
.LBB0_177:                              # %if.end654.i
                                        #   in Loop: Header=BB0_147 Depth=1
	movcf2gr	$a1, $fcc0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $s2, $a1
	bstrpick.d	$a3, $a5, 31, 0
	or	$t4, $a1, $a2
	bne	$t1, $a3, .LBB0_145
# %bb.178:                              # %if.then657.i
                                        #   in Loop: Header=BB0_147 Depth=1
	beqz	$s6, .LBB0_181
# %bb.179:                              # %if.else.i
                                        #   in Loop: Header=BB0_147 Depth=1
	move	$a2, $a7
	bge	$s6, $a7, .LBB0_146
# %bb.180:                              # %if.else667.i
                                        #   in Loop: Header=BB0_147 Depth=1
	slli.d	$a0, $a4, 2
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ldx.w	$s5, $a1, $a0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ldx.w	$a2, $a1, $a0
	move	$a0, $a5
	move	$t7, $a4
	b	.LBB0_146
.LBB0_181:                              # %if.then660.i
                                        #   in Loop: Header=BB0_147 Depth=1
	move	$t7, $zero
	addi.w	$a0, $t4, -1
	ori	$a2, $zero, 1
	move	$s5, $t4
	b	.LBB0_146
.LBB0_182:                              # %for.cond682.preheader.preheader.i
	move	$t6, $zero
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 30, 0
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	bstrpick.d	$a2, $a4, 30, 4
	slli.d	$a2, $a2, 4
	xvreplve0.w	$xr0, $xr6
	andi	$a3, $a4, 12
	bstrpick.d	$a4, $a4, 30, 2
	slli.d	$a4, $a4, 2
	vreplvei.w	$vr1, $vr6, 0
	sub.d	$a5, $zero, $a4
	ori	$a6, $zero, 4
	ori	$a7, $zero, 64
	ori	$t0, $zero, 16
	ld.d	$s7, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 16                    # 8-byte Folded Reload
	b	.LBB0_184
	.p2align	4, , 16
.LBB0_183:                              # %for.cond682.for.inc697_crit_edge.i
                                        #   in Loop: Header=BB0_184 Depth=1
	addi.d	$t6, $t6, 1
	beq	$t6, $a1, .LBB0_197
.LBB0_184:                              # %iter.check616
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_189 Depth 2
                                        #     Child Loop BB0_193 Depth 2
                                        #     Child Loop BB0_196 Depth 2
	slli.d	$t2, $t6, 3
	ldx.d	$t1, $fp, $t2
	ldx.d	$t2, $t7, $t2
	move	$t4, $zero
	bltu	$ra, $a6, .LBB0_195
# %bb.185:                              # %iter.check616
                                        #   in Loop: Header=BB0_184 Depth=1
	sub.d	$t3, $t2, $t1
	bltu	$t3, $a7, .LBB0_195
# %bb.186:                              # %vector.main.loop.iter.check618
                                        #   in Loop: Header=BB0_184 Depth=1
	bgeu	$ra, $t0, .LBB0_188
# %bb.187:                              #   in Loop: Header=BB0_184 Depth=1
	move	$t5, $zero
	b	.LBB0_192
	.p2align	4, , 16
.LBB0_188:                              # %vector.body624.preheader
                                        #   in Loop: Header=BB0_184 Depth=1
	addi.d	$t3, $t2, 32
	addi.d	$t4, $t1, 32
	move	$t5, $a2
	.p2align	4, , 16
.LBB0_189:                              # %vector.body624
                                        #   Parent Loop BB0_184 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr2, $t4, -32
	xvld	$xr3, $t4, 0
	xvfdiv.s	$xr2, $xr2, $xr0
	xvfdiv.s	$xr3, $xr3, $xr0
	xvst	$xr2, $t3, -32
	xvst	$xr3, $t3, 0
	addi.d	$t5, $t5, -16
	addi.d	$t3, $t3, 64
	addi.d	$t4, $t4, 64
	bnez	$t5, .LBB0_189
# %bb.190:                              # %middle.block629
                                        #   in Loop: Header=BB0_184 Depth=1
	beq	$ra, $a2, .LBB0_183
# %bb.191:                              # %vec.epilog.iter.check634
                                        #   in Loop: Header=BB0_184 Depth=1
	move	$t5, $a2
	move	$t4, $a2
	beqz	$a3, .LBB0_195
.LBB0_192:                              # %vec.epilog.ph633
                                        #   in Loop: Header=BB0_184 Depth=1
	add.d	$t3, $a5, $t5
	alsl.d	$t4, $t5, $t2, 2
	alsl.d	$t5, $t5, $t1, 2
	.p2align	4, , 16
.LBB0_193:                              # %vec.epilog.vector.body641
                                        #   Parent Loop BB0_184 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $t5, 0
	vfdiv.s	$vr2, $vr2, $vr1
	vst	$vr2, $t4, 0
	addi.d	$t3, $t3, 4
	addi.d	$t4, $t4, 16
	addi.d	$t5, $t5, 16
	bnez	$t3, .LBB0_193
# %bb.194:                              # %vec.epilog.middle.block645
                                        #   in Loop: Header=BB0_184 Depth=1
	move	$t4, $a4
	beq	$ra, $a4, .LBB0_183
.LBB0_195:                              # %for.body685.i.preheader
                                        #   in Loop: Header=BB0_184 Depth=1
	sub.d	$t3, $ra, $t4
	alsl.d	$t2, $t4, $t2, 2
	alsl.d	$t1, $t4, $t1, 2
	.p2align	4, , 16
.LBB0_196:                              # %for.body685.i
                                        #   Parent Loop BB0_184 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa2, $t1, 0
	fdiv.s	$fa2, $fa2, $fa6
	fst.s	$fa2, $t2, 0
	addi.d	$t3, $t3, -1
	addi.d	$t2, $t2, 4
	addi.d	$t1, $t1, 4
	bnez	$t3, .LBB0_196
	b	.LBB0_183
.LBB0_197:                              # %for.end699.i
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
.LBB0_198:                              # %MSalignmm_rec.exit
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 1
	move	$fp, $a0
	blt	$s5, $s1, .LBB0_202
# %bb.199:                              # %for.body122.lr.ph
	ld.d	$a0, $s6, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $zero
	addi.w	$s2, $a0, 0
	move	$s3, $s5
	.p2align	4, , 16
.LBB0_200:                              # %for.body122
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB0_263
# %bb.201:                              # %for.inc133
                                        #   in Loop: Header=BB0_200 Depth=1
	addi.w	$s0, $s0, 1
	addi.d	$s3, $s3, -1
	addi.d	$s6, $s6, 8
	bnez	$s3, .LBB0_200
.LBB0_202:                              # %for.cond136.preheader
	blt	$s7, $s1, .LBB0_206
# %bb.203:                              # %for.body139.lr.ph
	move	$s0, $zero
	addi.w	$fp, $fp, 0
	move	$s1, $s7
	.p2align	4, , 16
.LBB0_204:                              # %for.body139
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s8, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB0_264
# %bb.205:                              # %for.inc150
                                        #   in Loop: Header=BB0_204 Depth=1
	addi.w	$s0, $s0, 1
	addi.d	$s1, $s1, -1
	addi.d	$s8, $s8, 8
	bnez	$s1, .LBB0_204
.LBB0_206:                              # %for.end152
	movgr2fr.w	$fa0, $zero
	fld.d	$fs0, $sp, 496                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 504                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 512                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 520                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 536                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 544                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 568                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 576                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 584                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 592
	ret
.LBB0_207:                              # %vector.memcheck379
	alsl.d	$a2, $a0, $a7, 2
	alsl.d	$a3, $a0, $s3, 2
	addi.d	$a3, $a3, -4
	sltu	$a3, $t8, $a3
	sltu	$a4, $s3, $a2
	and	$a3, $a3, $a4
	bnez	$a3, .LBB0_107
# %bb.208:                              # %vector.memcheck379
	addi.d	$a3, $t7, 8
	sltu	$a3, $t8, $a3
	sltu	$a2, $s5, $a2
	and	$a2, $a3, $a2
	bnez	$a2, .LBB0_107
# %bb.209:                              # %vector.main.loop.iter.check396
	ori	$a1, $zero, 17
	bge	$t5, $a1, .LBB0_229
# %bb.210:
	move	$a2, $zero
	b	.LBB0_233
.LBB0_211:                              # %vector.memcheck428
	slli.d	$a0, $a2, 2
	move	$s2, $a2
	alsl.d	$a2, $a2, $s4, 2
	addi.d	$a3, $a0, 4
	add.d	$a0, $a4, $a3
	sltu	$a0, $s4, $a0
	sltu	$a4, $a1, $a2
	and	$a4, $a0, $a4
	move	$a0, $zero
	ld.d	$t1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 256                   # 8-byte Folded Reload
	bnez	$a4, .LBB0_228
# %bb.212:                              # %vector.memcheck428
	ld.d	$a4, $sp, 400                   # 8-byte Folded Reload
	add.d	$a3, $a4, $a3
	sltu	$a3, $s4, $a3
	sltu	$a2, $s5, $a2
	and	$a2, $a3, $a2
	ld.d	$t2, $sp, 384                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 376                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 392                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 328                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 432                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_126
# %bb.213:                              # %vector.main.loop.iter.check444
	ori	$a0, $zero, 16
	bgeu	$t4, $a0, .LBB0_236
# %bb.214:
	move	$a0, $zero
	b	.LBB0_240
.LBB0_215:                              # %vector.memcheck477
	alsl.d	$a3, $t6, $s3, 2
	addi.d	$a4, $s6, 4
	add.d	$a2, $t1, $a4
	sltu	$a2, $s3, $a2
	sltu	$a5, $a0, $a3
	and	$a5, $a2, $a5
	move	$a2, $zero
	bnez	$a5, .LBB0_131
# %bb.216:                              # %vector.memcheck477
	addi.d	$a5, $s8, 4
	add.d	$a4, $s8, $a4
	sltu	$a4, $s3, $a4
	sltu	$a3, $a5, $a3
	and	$a3, $a4, $a3
	bnez	$a3, .LBB0_131
# %bb.217:                              # %vector.main.loop.iter.check495
	ori	$a2, $zero, 17
	bgeu	$a7, $a2, .LBB0_243
# %bb.218:
	move	$a2, $zero
	b	.LBB0_247
.LBB0_219:                              # %vector.memcheck528
	alsl.d	$a3, $t6, $a1, 2
	addi.d	$a4, $s6, 4
	add.d	$a2, $t1, $a4
	sltu	$a2, $a1, $a2
	sltu	$a5, $a0, $a3
	and	$a5, $a2, $a5
	move	$a2, $zero
	ld.d	$a6, $sp, 112                   # 8-byte Folded Reload
	bnez	$a5, .LBB0_138
# %bb.220:                              # %vector.memcheck528
	addi.d	$a5, $s8, 4
	add.d	$a4, $s8, $a4
	sltu	$a4, $a1, $a4
	sltu	$a3, $a5, $a3
	and	$a3, $a4, $a3
	bnez	$a3, .LBB0_138
# %bb.221:                              # %vector.main.loop.iter.check545
	ori	$a2, $zero, 17
	bgeu	$a7, $a2, .LBB0_250
# %bb.222:
	move	$a2, $zero
	b	.LBB0_254
.LBB0_223:                              # %vector.memcheck578
	sub.d	$a4, $a4, $a6
	nor	$a4, $a4, $zero
	bstrpick.d	$a4, $a4, 31, 0
	slli.d	$a4, $a4, 2
	sub.d	$a5, $s6, $a4
	add.d	$a4, $a5, $t5
	addi.d	$a4, $a4, -4
	add.d	$a5, $s3, $a5
	alsl.d	$a6, $t6, $s3, 2
	addi.d	$a6, $a6, 4
	sltu	$a6, $a4, $a6
	sltu	$a5, $a5, $s7
	and	$a5, $a6, $a5
	bnez	$a5, .LBB0_141
# %bb.224:                              # %vector.memcheck578
	sltu	$a0, $a4, $a0
	sltu	$a4, $a2, $s7
	and	$a4, $a0, $a4
	move	$a0, $t6
	bnez	$a4, .LBB0_142
# %bb.225:                              # %vector.ph594
	bstrpick.d	$a0, $a3, 31, 0
	addi.d	$a3, $a0, 1
	bstrpick.d	$a0, $a3, 32, 3
	slli.d	$a4, $a0, 3
	sub.d	$a0, $t6, $a4
	xvreplgr2vr.w	$xr0, $t4
	xvldrepl.w	$xr1, $a2, 0
	addi.d	$a7, $s6, -28
	ld.d	$a5, $sp, 480                   # 8-byte Folded Reload
	add.d	$a5, $a5, $a7
	addi.d	$a6, $s7, -32
	add.d	$a7, $s3, $a7
	move	$t0, $a4
	.p2align	4, , 16
.LBB0_226:                              # %vector.body599
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a7, 0
	xvfadd.s	$xr2, $xr2, $xr1
	xvst	$xr2, $a6, 0
	xvst	$xr0, $a5, 0
	addi.d	$t0, $t0, -8
	addi.d	$a5, $a5, -32
	addi.d	$a6, $a6, -32
	addi.d	$a7, $a7, -32
	bnez	$t0, .LBB0_226
# %bb.227:                              # %middle.block608
	ld.d	$a7, $sp, 392                   # 8-byte Folded Reload
	bne	$a3, $a4, .LBB0_142
	b	.LBB0_144
.LBB0_228:
	ld.d	$t2, $sp, 384                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 376                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 200                   # 8-byte Folded Reload
	b	.LBB0_125
.LBB0_229:                              # %vector.ph397
	ld.d	$a2, $sp, 472                   # 8-byte Folded Reload
	bstrins.d	$a2, $zero, 3, 0
	xvldrepl.w	$xr0, $s5, 0
	addi.d	$a1, $s3, 32
	addi.d	$a3, $a7, 36
	ld.d	$a4, $sp, 480                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 36
	xvrepli.b	$xr1, 0
	move	$a5, $a2
	.p2align	4, , 16
.LBB0_230:                              # %vector.body400
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a1, -32
	xvld	$xr3, $a1, 0
	xvfadd.s	$xr2, $xr2, $xr0
	xvfadd.s	$xr3, $xr3, $xr0
	xvst	$xr2, $a3, -32
	xvst	$xr3, $a3, 0
	xvst	$xr1, $a4, -32
	xvst	$xr1, $a4, 0
	addi.d	$a5, $a5, -16
	addi.d	$a1, $a1, 64
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB0_230
# %bb.231:                              # %middle.block407
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	beq	$a1, $a2, .LBB0_109
# %bb.232:                              # %vec.epilog.iter.check412
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	andi	$a1, $a1, 12
	beqz	$a1, .LBB0_259
.LBB0_233:                              # %vec.epilog.ph411
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	move	$a3, $a1
	bstrins.d	$a3, $zero, 1, 0
	ori	$a4, $zero, 1
	bstrins.d	$a1, $a4, 1, 0
	vldrepl.w	$vr0, $s5, 0
	slli.d	$a5, $a2, 2
	alsl.d	$a4, $a2, $s3, 2
	addi.d	$a6, $a5, 4
	add.d	$a5, $a7, $a6
	ld.d	$t0, $sp, 480                   # 8-byte Folded Reload
	add.d	$a6, $t0, $a6
	sub.d	$a2, $a2, $a3
	vrepli.b	$vr1, 0
	.p2align	4, , 16
.LBB0_234:                              # %vec.epilog.vector.body417
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a4, 0
	vfadd.s	$vr2, $vr2, $vr0
	vst	$vr2, $a5, 0
	vst	$vr1, $a6, 0
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	addi.d	$a2, $a2, 4
	addi.d	$a6, $a6, 16
	bnez	$a2, .LBB0_234
# %bb.235:                              # %vec.epilog.middle.block424
	ld.d	$a2, $sp, 472                   # 8-byte Folded Reload
	bne	$a2, $a3, .LBB0_107
	b	.LBB0_109
.LBB0_236:                              # %vector.ph445
	bstrpick.d	$a0, $s2, 30, 4
	xvldrepl.w	$xr0, $a1, 0
	slli.d	$a0, $a0, 4
	ld.d	$a2, $sp, 400                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 36
	addi.d	$a3, $s4, 32
	move	$a4, $a0
	.p2align	4, , 16
.LBB0_237:                              # %vector.body448
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a2, -32
	xvld	$xr2, $a2, 0
	xvld	$xr3, $a3, -32
	xvld	$xr4, $a3, 0
	xvfadd.s	$xr1, $xr0, $xr1
	xvfadd.s	$xr2, $xr0, $xr2
	xvfadd.s	$xr1, $xr3, $xr1
	xvfadd.s	$xr2, $xr4, $xr2
	xvst	$xr1, $a3, -32
	xvst	$xr2, $a3, 0
	addi.d	$a2, $a2, 64
	addi.d	$a4, $a4, -16
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB0_237
# %bb.238:                              # %middle.block457
	beq	$a0, $s2, .LBB0_128
# %bb.239:                              # %vec.epilog.iter.check462
	andi	$a2, $s2, 12
	beqz	$a2, .LBB0_126
.LBB0_240:                              # %vec.epilog.ph461
	move	$a4, $a0
	bstrpick.d	$a0, $s2, 30, 2
	slli.d	$a0, $a0, 2
	vldrepl.w	$vr0, $a1, 0
	ld.d	$a2, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$a2, $a4, $a2, 2
	addi.d	$a2, $a2, 4
	sub.d	$a3, $a4, $a0
	alsl.d	$a4, $a4, $s4, 2
	.p2align	4, , 16
.LBB0_241:                              # %vec.epilog.vector.body467
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a2, 0
	vld	$vr2, $a4, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $a4, 0
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 16
	bnez	$a3, .LBB0_241
# %bb.242:                              # %vec.epilog.middle.block474
	bne	$a0, $s2, .LBB0_126
	b	.LBB0_128
.LBB0_243:                              # %vector.ph496
	bstrpick.d	$a2, $t6, 30, 4
	xvldrepl.w	$xr0, $a0, 0
	slli.d	$a2, $a2, 4
	addi.d	$a3, $s8, 36
	addi.d	$a4, $s3, 32
	move	$a5, $a2
	.p2align	4, , 16
.LBB0_244:                              # %vector.body499
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a3, -32
	xvld	$xr2, $a3, 0
	xvld	$xr3, $a4, -32
	xvld	$xr4, $a4, 0
	xvfadd.s	$xr1, $xr0, $xr1
	xvfadd.s	$xr2, $xr0, $xr2
	xvfadd.s	$xr1, $xr3, $xr1
	xvfadd.s	$xr2, $xr4, $xr2
	xvst	$xr1, $a4, -32
	xvst	$xr2, $a4, 0
	addi.d	$a3, $a3, 64
	addi.d	$a5, $a5, -16
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB0_244
# %bb.245:                              # %middle.block508
	beq	$a2, $t6, .LBB0_133
# %bb.246:                              # %vec.epilog.iter.check513
	andi	$a3, $t6, 12
	beqz	$a3, .LBB0_131
.LBB0_247:                              # %vec.epilog.ph512
	move	$a5, $a2
	bstrpick.d	$a2, $t6, 30, 2
	slli.d	$a2, $a2, 2
	vldrepl.w	$vr0, $a0, 0
	alsl.d	$a3, $a5, $s8, 2
	addi.d	$a3, $a3, 4
	sub.d	$a4, $a5, $a2
	alsl.d	$a5, $a5, $s3, 2
	.p2align	4, , 16
.LBB0_248:                              # %vec.epilog.vector.body518
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a3, 0
	vld	$vr2, $a5, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $a5, 0
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 16
	bnez	$a4, .LBB0_248
# %bb.249:                              # %vec.epilog.middle.block525
	bne	$a2, $t6, .LBB0_131
	b	.LBB0_133
.LBB0_250:                              # %vector.ph546
	bstrpick.d	$a2, $t6, 30, 4
	xvldrepl.w	$xr0, $a0, 0
	slli.d	$a2, $a2, 4
	addi.d	$a3, $s8, 36
	addi.d	$a4, $a1, 32
	move	$a5, $a2
	.p2align	4, , 16
.LBB0_251:                              # %vector.body549
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a3, -32
	xvld	$xr2, $a3, 0
	xvld	$xr3, $a4, -32
	xvld	$xr4, $a4, 0
	xvfadd.s	$xr1, $xr0, $xr1
	xvfadd.s	$xr2, $xr0, $xr2
	xvfadd.s	$xr1, $xr1, $xr3
	xvfadd.s	$xr2, $xr2, $xr4
	xvst	$xr1, $a4, -32
	xvst	$xr2, $a4, 0
	addi.d	$a3, $a3, 64
	addi.d	$a5, $a5, -16
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB0_251
# %bb.252:                              # %middle.block558
	beq	$a2, $t6, .LBB0_140
# %bb.253:                              # %vec.epilog.iter.check563
	andi	$a3, $t6, 12
	beqz	$a3, .LBB0_138
.LBB0_254:                              # %vec.epilog.ph562
	move	$a5, $a2
	bstrpick.d	$a2, $t6, 30, 2
	slli.d	$a2, $a2, 2
	vldrepl.w	$vr0, $a0, 0
	alsl.d	$a3, $a5, $s8, 2
	addi.d	$a3, $a3, 4
	sub.d	$a4, $a5, $a2
	alsl.d	$a5, $a5, $a1, 2
	.p2align	4, , 16
.LBB0_255:                              # %vec.epilog.vector.body568
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a3, 0
	vld	$vr2, $a5, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr1, $vr2
	vst	$vr1, $a5, 0
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 16
	bnez	$a4, .LBB0_255
# %bb.256:                              # %vec.epilog.middle.block575
	bne	$a2, $t6, .LBB0_138
	b	.LBB0_140
.LBB0_257:
	addi.d	$fp, $a1, 1
	b	.LBB0_47
.LBB0_258:
	addi.d	$a1, $a2, 1
	b	.LBB0_50
.LBB0_259:
	addi.d	$a1, $a2, 1
	b	.LBB0_107
.LBB0_260:                              # %if.then
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	move	$a2, $fp
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	b	.LBB0_262
.LBB0_261:                              # %if.then45
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	move	$a2, $s4
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
.LBB0_262:                              # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 27
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_263:                              # %if.then129
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	move	$a2, $s0
	move	$a3, $s5
	b	.LBB0_265
.LBB0_264:                              # %if.then146
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	move	$a2, $s0
	move	$a3, $s7
.LBB0_265:                              # %if.then129
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 42
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	Lalignmm_hmout, .Lfunc_end0-Lalignmm_hmout
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function Lalign2m2m_hmout
.LCPI1_0:
	.word	0xcb189680                      # float -1.0E+7
	.text
	.globl	Lalign2m2m_hmout
	.p2align	5
	.type	Lalign2m2m_hmout,@function
Lalign2m2m_hmout:                       # @Lalign2m2m_hmout
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -592
	st.d	$ra, $sp, 584                   # 8-byte Folded Spill
	st.d	$fp, $sp, 576                   # 8-byte Folded Spill
	st.d	$s0, $sp, 568                   # 8-byte Folded Spill
	st.d	$s1, $sp, 560                   # 8-byte Folded Spill
	st.d	$s2, $sp, 552                   # 8-byte Folded Spill
	st.d	$s3, $sp, 544                   # 8-byte Folded Spill
	st.d	$s4, $sp, 536                   # 8-byte Folded Spill
	st.d	$s5, $sp, 528                   # 8-byte Folded Spill
	st.d	$s6, $sp, 520                   # 8-byte Folded Spill
	st.d	$s7, $sp, 512                   # 8-byte Folded Spill
	st.d	$s8, $sp, 504                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 496                  # 8-byte Folded Spill
	pcalau12i	$t0, %got_pc_hi20(penalty)
	ld.d	$t0, $t0, %got_pc_lo12(penalty)
	move	$s8, $a0
	ld.d	$s0, $sp, 600
	ld.d	$s3, $sp, 592
	ld.w	$s6, $t0, 0
	ld.d	$a0, $a0, 0
	move	$s1, $a7
	move	$s2, $a6
	st.d	$a5, $sp, 480                   # 8-byte Folded Spill
	move	$s5, $a4
	st.d	$a3, $sp, 472                   # 8-byte Folded Spill
	move	$s7, $a2
	move	$fp, $a1
	pcaddu18i	$ra, %call36(seqlen)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(seqlen)
	jirl	$ra, $ra, 0
	st.d	$s8, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a0, $s8, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a1, $fp, 0
	move	$s4, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	add.d	$a0, $s4, $a0
	addi.w	$fp, $a0, 200
	move	$a0, $s3
	move	$a1, $fp
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	ori	$a0, $zero, 4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	addi.w	$s0, $s4, 102
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	addi.w	$fp, $s8, 102
	move	$a0, $fp
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	move	$a0, $fp
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	ori	$a1, $zero, 39
	st.d	$s0, $sp, 456                   # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	ori	$a1, $zero, 39
	st.d	$fp, $sp, 464                   # 8-byte Folded Spill
	move	$a0, $fp
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	ori	$s8, $zero, 1
	st.d	$s4, $sp, 176                   # 8-byte Folded Spill
	addi.w	$s4, $s4, 0
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	blt	$s3, $s8, .LBB1_4
# %bb.1:                                # %for.body.lr.ph
	move	$fp, $zero
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$a0, $s4, .LBB1_259
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB1_2 Depth=1
	addi.w	$fp, $fp, 1
	addi.d	$s0, $s0, -1
	addi.d	$s3, $s3, 8
	bnez	$s0, .LBB1_2
.LBB1_4:                                # %for.cond35.preheader
	st.d	$s4, $sp, 488                   # 8-byte Folded Spill
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	addi.w	$fp, $s4, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	blt	$a0, $s8, .LBB1_8
# %bb.5:                                # %for.body38.lr.ph
	move	$s8, $zero
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_6:                                # %for.body38
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB1_260
# %bb.7:                                # %for.inc49
                                        #   in Loop: Header=BB1_6 Depth=1
	addi.w	$s8, $s8, 1
	addi.d	$s0, $s0, -1
	addi.d	$s3, $s3, 8
	bnez	$s0, .LBB1_6
.LBB1_8:                                # %for.end51
	ld.d	$s8, $sp, 616
	movgr2fr.w	$fa0, $s6
	ffint.s.w	$fs0, $fa0
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	move	$a0, $s0
	move	$a1, $s7
	move	$a2, $s5
	ld.d	$a3, $sp, 416                   # 8-byte Folded Reload
	move	$a4, $s2
	ld.d	$s7, $sp, 488                   # 8-byte Folded Reload
	move	$a5, $s7
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	move	$a6, $s5
	pcaddu18i	$ra, %call36(cpmx_ribosum)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	move	$a0, $s6
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 480                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 408                   # 8-byte Folded Reload
	move	$a4, $s1
	move	$a5, $fp
	move	$s4, $s1
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
	move	$a6, $s1
	pcaddu18i	$ra, %call36(cpmx_ribosum)
	jirl	$ra, $ra, 0
	beqz	$s8, .LBB1_10
# %bb.9:                                # %if.then52
	ld.d	$s3, $sp, 640
	ld.d	$a0, $sp, 624
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	move	$a1, $s5
	move	$a2, $s0
	move	$a3, $s2
	move	$a4, $s7
	move	$a5, $s8
	pcaddu18i	$ra, %call36(new_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	move	$a1, $s1
	move	$a2, $s6
	move	$a3, $s4
	move	$a4, $fp
	ld.d	$a5, $sp, 480                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(new_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	move	$a1, $s5
	move	$a2, $s0
	move	$a3, $s2
	move	$a4, $s7
	move	$a5, $s3
	pcaddu18i	$ra, %call36(new_FinalGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	move	$a1, $s1
	move	$a2, $s6
	move	$a3, $s4
	move	$a4, $fp
	move	$a5, $s3
	pcaddu18i	$ra, %call36(new_FinalGapCount)
	jirl	$ra, $ra, 0
	b	.LBB1_11
.LBB1_10:                               # %if.else
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	move	$a1, $s5
	move	$a2, $s0
	move	$a3, $s2
	move	$a4, $s7
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	move	$a1, $s1
	move	$a2, $s6
	move	$a3, $s4
	move	$a4, $fp
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	move	$a1, $s5
	move	$a2, $s0
	move	$a3, $s2
	move	$a4, $s7
	pcaddu18i	$ra, %call36(st_FinalGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	move	$a1, $s1
	move	$a2, $s6
	move	$a3, $s4
	move	$a4, $fp
	pcaddu18i	$ra, %call36(st_FinalGapCount)
	jirl	$ra, $ra, 0
.LBB1_11:                               # %if.end53
	move	$s8, $s0
	move	$s5, $s1
	ori	$a0, $zero, 1
	fcvt.d.s	$fa0, $fs0
	ld.d	$a7, $sp, 424                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 224                   # 8-byte Folded Reload
	blt	$s7, $a0, .LBB1_18
# %bb.12:                               # %for.body57.lr.ph
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 30, 0
	ori	$a2, $zero, 8
	bltu	$a1, $a2, .LBB1_15
# %bb.13:                               # %vector.memcheck
	alsl.d	$a2, $a1, $a7, 2
	ld.d	$a4, $sp, 400                   # 8-byte Folded Reload
	bgeu	$a4, $a2, .LBB1_68
# %bb.14:                               # %vector.memcheck
	alsl.d	$a2, $a1, $a4, 2
	bgeu	$a7, $a2, .LBB1_68
.LBB1_15:
	move	$a2, $zero
.LBB1_16:                               # %for.body57.preheader
	alsl.d	$a3, $a2, $a7, 2
	ld.d	$a4, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$a4, $a2, $a4, 2
	sub.d	$a1, $a1, $a2
	vldi	$vr1, -912
	vldi	$vr2, -928
	.p2align	4, , 16
.LBB1_17:                               # %for.body57
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa3, $a4, 0
	fcvt.d.s	$fa3, $fa3
	fsub.d	$fa3, $fa1, $fa3
	fmul.d	$fa3, $fa3, $fa2
	fmul.d	$fa3, $fa3, $fa0
	fcvt.s.d	$fa3, $fa3
	fst.s	$fa3, $a4, 0
	fld.s	$fa3, $a3, 0
	fcvt.d.s	$fa3, $fa3
	fsub.d	$fa3, $fa1, $fa3
	fmul.d	$fa3, $fa3, $fa2
	fmul.d	$fa3, $fa3, $fa0
	fcvt.s.d	$fa3, $fa3
	fst.s	$fa3, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 4
	bnez	$a1, .LBB1_17
.LBB1_18:                               # %for.cond79.preheader
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	blt	$fp, $a0, .LBB1_25
# %bb.19:                               # %for.body82.lr.ph
	bstrpick.d	$a0, $s0, 30, 0
	ori	$a1, $zero, 8
	bltu	$a0, $a1, .LBB1_22
# %bb.20:                               # %vector.memcheck198
	alsl.d	$a1, $a0, $t0, 2
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	bgeu	$a3, $a1, .LBB1_71
# %bb.21:                               # %vector.memcheck198
	alsl.d	$a1, $a0, $a3, 2
	bgeu	$t0, $a1, .LBB1_71
.LBB1_22:
	move	$a1, $zero
.LBB1_23:                               # %for.body82.preheader
	alsl.d	$a2, $a1, $t0, 2
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$a3, $a1, $a3, 2
	sub.d	$a0, $a0, $a1
	vldi	$vr1, -912
	vldi	$vr2, -928
	.p2align	4, , 16
.LBB1_24:                               # %for.body82
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa3, $a3, 0
	fcvt.d.s	$fa3, $fa3
	fsub.d	$fa3, $fa1, $fa3
	fmul.d	$fa3, $fa3, $fa2
	fmul.d	$fa3, $fa3, $fa0
	fcvt.s.d	$fa3, $fa3
	fst.s	$fa3, $a3, 0
	fld.s	$fa3, $a2, 0
	fcvt.d.s	$fa3, $fa3
	fsub.d	$fa3, $fa1, $fa3
	fmul.d	$fa3, $fa3, $fa2
	fmul.d	$fa3, $fa3, $fa0
	fcvt.s.d	$fa3, $fa3
	fst.s	$fa3, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 4
	bnez	$a0, .LBB1_24
.LBB1_25:                               # %for.end105
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	st.d	$a0, $a2, 0
	pcalau12i	$a0, %pc_hi20(reccycle)
	ld.w	$a1, $a0, %pc_lo12(reccycle)
	st.d	$a7, $a2, 8
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	st.d	$a3, $a2, 16
	st.d	$t0, $a2, 24
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, %pc_lo12(reccycle)
	blez	$fp, .LBB1_58
# %bb.26:                               # %if.end.i
	move	$a0, $s7
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s5
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	blt	$s7, $a1, .LBB1_34
# %bb.27:                               # %for.body54.preheader.i
	ori	$a3, $zero, 8
	move	$a2, $zero
	bltu	$s7, $a3, .LBB1_32
# %bb.28:                               # %for.body54.preheader.i
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	sub.d	$a3, $fp, $a3
	ori	$a4, $zero, 64
	bltu	$a3, $a4, .LBB1_32
# %bb.29:                               # %vector.ph224
	bstrpick.d	$a2, $s7, 30, 3
	slli.d	$a2, $a2, 3
	addi.d	$a3, $fp, 32
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a4, $a4, 32
	move	$a5, $a2
	.p2align	4, , 16
.LBB1_30:                               # %vector.body227
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a4, -32
	xvld	$xr1, $a4, 0
	xvst	$xr0, $a3, -32
	xvst	$xr1, $a3, 0
	addi.d	$a5, $a5, -8
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB1_30
# %bb.31:                               # %middle.block232
	beq	$a2, $s7, .LBB1_34
.LBB1_32:                               # %for.body54.i.preheader
	sub.d	$a3, $s7, $a2
	alsl.d	$a4, $a2, $fp, 3
	ld.d	$a5, $sp, 96                    # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a5, 3
	.p2align	4, , 16
.LBB1_33:                               # %for.body54.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a2, 0
	st.d	$a5, $a4, 0
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 8
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB1_33
.LBB1_34:                               # %for.cond62.preheader.i
	blt	$s5, $a1, .LBB1_42
# %bb.35:                               # %for.body65.preheader.i
	ori	$a2, $zero, 8
	move	$a1, $zero
	bltu	$s5, $a2, .LBB1_40
# %bb.36:                               # %for.body65.preheader.i
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	sub.d	$a2, $a0, $a2
	ori	$a3, $zero, 64
	bltu	$a2, $a3, .LBB1_40
# %bb.37:                               # %vector.ph241
	bstrpick.d	$a1, $s5, 30, 3
	slli.d	$a1, $a1, 3
	addi.d	$a2, $a0, 32
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 32
	move	$a4, $a1
	.p2align	4, , 16
.LBB1_38:                               # %vector.body244
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a3, -32
	xvld	$xr1, $a3, 0
	xvst	$xr0, $a2, -32
	xvst	$xr1, $a2, 0
	addi.d	$a4, $a4, -8
	addi.d	$a2, $a2, 64
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB1_38
# %bb.39:                               # %middle.block249
	beq	$a1, $s5, .LBB1_42
.LBB1_40:                               # %for.body65.i.preheader
	sub.d	$a2, $s5, $a1
	alsl.d	$a3, $a1, $a0, 3
	ld.d	$a4, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a4, 3
	.p2align	4, , 16
.LBB1_41:                               # %for.body65.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a1, 0
	st.d	$a4, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 8
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB1_41
.LBB1_42:                               # %for.end72.i
	ori	$a1, $zero, 10
	ld.d	$a2, $sp, 488                   # 8-byte Folded Reload
	blt	$a2, $a1, .LBB1_67
# %bb.43:                               # %for.end72.i
	addi.w	$a2, $s0, 0
	ori	$a1, $zero, 9
	bgeu	$a1, $a2, .LBB1_67
# %bb.44:                               # %iter.check
	ld.d	$s4, $sp, 176                   # 8-byte Folded Reload
	addi.w	$s2, $s4, 100
	addi.w	$s3, $s0, 100
	ld.d	$fp, $sp, 464                   # 8-byte Folded Reload
	move	$a0, $fp
	move	$s8, $a2
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	move	$a0, $fp
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	move	$a0, $fp
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	move	$a0, $fp
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	move	$a0, $fp
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	move	$a0, $fp
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	move	$a0, $fp
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	move	$a0, $fp
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	move	$a0, $fp
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	move	$a0, $fp
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$s0, $sp, 456                   # 8-byte Folded Reload
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	move	$a0, $fp
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	move	$a0, $fp
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	sltu	$a0, $s3, $s2
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $s2, $a0
	or	$a0, $a0, $a1
	addi.w	$s7, $a0, 2
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 26
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	ori	$a1, $zero, 26
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	move	$a0, $s2
	move	$a1, $s3
	move	$s3, $s1
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	ori	$a7, $zero, 1
	ori	$fp, $zero, 1
	move	$a0, $s6
	ld.d	$s1, $sp, 408                   # 8-byte Folded Reload
	move	$a1, $s1
	ld.d	$s0, $sp, 416                   # 8-byte Folded Reload
	move	$a2, $s0
	move	$a3, $zero
	ld.d	$a4, $sp, 488                   # 8-byte Folded Reload
	move	$a5, $s5
	move	$a6, $s7
	pcaddu18i	$ra, %call36(match_ribosum)
	jirl	$ra, $ra, 0
	ori	$a7, $zero, 1
	move	$a0, $s3
	move	$a1, $s0
	move	$a2, $s1
	move	$a3, $zero
	st.d	$s8, $sp, 392                   # 8-byte Folded Spill
	move	$a4, $s8
	st.d	$s5, $sp, 360                   # 8-byte Folded Spill
	move	$a5, $s5
	st.d	$s7, $sp, 352                   # 8-byte Folded Spill
	move	$a6, $s7
	pcaddu18i	$ra, %call36(match_ribosum)
	jirl	$ra, $ra, 0
	addi.w	$a1, $s4, 1
	ori	$a0, $zero, 2
	slt	$a2, $a0, $a1
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $a1, $a2
	or	$s0, $a2, $a0
	ori	$a0, $zero, 4
	ld.d	$t7, $sp, 400                   # 8-byte Folded Reload
	addi.d	$s5, $t7, 4
	blt	$a0, $a1, .LBB1_74
# %bb.45:
	ld.d	$s8, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 224                   # 8-byte Folded Reload
.LBB1_46:                               # %for.body145.i.preheader
	ld.d	$a7, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 256                   # 8-byte Folded Reload
.LBB1_47:                               # %for.body145.i.preheader
	sub.d	$a0, $s0, $fp
	alsl.d	$a1, $fp, $s6, 2
	alsl.d	$a2, $fp, $a5, 2
	addi.d	$a2, $a2, -4
	.p2align	4, , 16
.LBB1_48:                               # %for.body145.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $t7, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a1, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	bnez	$a0, .LBB1_48
.LBB1_49:                               # %iter.check306
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	addi.w	$t3, $a0, -1
	addi.w	$t2, $a7, -1
	addi.w	$t5, $a7, 1
	ori	$a0, $zero, 2
	slt	$a1, $a0, $t5
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $t5, $a1
	or	$a0, $a1, $a0
	addi.d	$a1, $a0, -1
	st.d	$a1, $sp, 472                   # 8-byte Folded Spill
	ori	$a1, $zero, 1
	ori	$a2, $zero, 4
	addi.d	$a4, $s8, 4
	st.d	$a4, $sp, 464                   # 8-byte Folded Spill
	blt	$a2, $t5, .LBB1_78
.LBB1_50:                               # %for.body161.i.preheader
	sub.d	$a2, $a0, $a1
	alsl.d	$a3, $a1, $s3, 2
	alsl.d	$a1, $a1, $a6, 2
	addi.d	$a1, $a1, -4
	.p2align	4, , 16
.LBB1_51:                               # %for.body161.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $s8, 0
	fld.s	$fa1, $a1, 0
	fld.s	$fa2, $a3, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB1_51
.LBB1_52:                               # %for.body180.preheader.i
	fld.s	$fa0, $s6, 0
	ld.d	$a1, $t1, 0
	ld.d	$t4, $sp, 648
	fst.s	$fa0, $a1, 0
	slli.d	$a2, $s0, 2
	ori	$a3, $zero, 4
	ori	$a4, $zero, 8
	.p2align	4, , 16
.LBB1_53:                               # %for.body180.i
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa0, $s6, $a3
	ldx.d	$a5, $t1, $a4
	fst.s	$fa0, $a5, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 8
	bne	$a2, $a3, .LBB1_53
# %bb.54:                               # %iter.check349
	ori	$a2, $zero, 5
	ori	$a3, $zero, 1
	blt	$t5, $a2, .LBB1_104
# %bb.55:                               # %iter.check349
	sub.d	$a2, $a1, $s3
	ori	$a4, $zero, 63
	bgeu	$a4, $a2, .LBB1_104
# %bb.56:                               # %vector.main.loop.iter.check351
	ori	$a2, $zero, 17
	bge	$t5, $a2, .LBB1_82
# %bb.57:
	move	$a2, $zero
	b	.LBB1_86
.LBB1_58:                               # %for.cond.preheader.i
	ori	$fp, $zero, 1
	ld.d	$s3, $sp, 488                   # 8-byte Folded Reload
	blt	$s7, $fp, .LBB1_61
# %bb.59:                               # %for.body.lr.ph.i
	ld.d	$s0, $sp, 96                    # 8-byte Folded Reload
	move	$s1, $s8
	move	$s2, $s7
	.p2align	4, , 16
.LBB1_60:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s1, 0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	stx.b	$zero, $a0, $s3
	addi.d	$s2, $s2, -1
	addi.d	$s1, $s1, 8
	addi.d	$s0, $s0, 8
	bnez	$s2, .LBB1_60
.LBB1_61:                               # %for.cond29.preheader.i
	blt	$s5, $fp, .LBB1_197
# %bb.62:                               # %for.body32.lr.ph.i
	move	$s0, $zero
	ori	$s1, $zero, 1
	ori	$s2, $zero, 45
	b	.LBB1_64
	.p2align	4, , 16
.LBB1_63:                               # %for.inc46.i
                                        #   in Loop: Header=BB1_64 Depth=1
	addi.d	$s0, $s0, 1
	ld.d	$s3, $sp, 488                   # 8-byte Folded Reload
	beq	$s0, $s5, .LBB1_197
.LBB1_64:                               # %for.body32.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_66 Depth 2
	slli.d	$a0, $s0, 3
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	st.b	$zero, $a0, 0
	blt	$s3, $s1, .LBB1_63
# %bb.65:                               # %for.body39.i.preheader
                                        #   in Loop: Header=BB1_64 Depth=1
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$s3, $s0, $a0, 3
	ld.d	$s4, $sp, 176                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_66:                               # %for.body39.i
                                        #   Parent Loop BB1_64 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$fp, $s3, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$s4, $s4, -1
	stx.h	$s2, $fp, $a0
	bnez	$s4, .LBB1_66
	b	.LBB1_63
.LBB1_67:                               # %if.then77.i
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB1_197
.LBB1_68:                               # %vector.ph
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	bstrpick.d	$a2, $a2, 30, 3
	slli.d	$a2, $a2, 3
	xvreplve0.d	$xr1, $xr0
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr2, $a3
	lu52i.d	$a3, $zero, 1022
	xvreplgr2vr.d	$xr3, $a3
	move	$a3, $a4
	move	$a4, $a7
	move	$a5, $a2
	.p2align	4, , 16
.LBB1_69:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr4, $a3, 0
	xvpermi.q	$xr5, $xr4, 1
	vreplvei.w	$vr6, $vr5, 1
	fcvt.d.s	$fa6, $fa6
	vreplvei.w	$vr7, $vr5, 0
	fcvt.d.s	$fa7, $fa7
	xvinsve0.d	$xr7, $xr6, 1
	vreplvei.w	$vr6, $vr5, 2
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr7, $xr6, 2
	vreplvei.w	$vr5, $vr5, 3
	fcvt.d.s	$fa5, $fa5
	xvinsve0.d	$xr7, $xr5, 3
	vreplvei.w	$vr5, $vr4, 1
	fcvt.d.s	$fa5, $fa5
	vreplvei.w	$vr6, $vr4, 0
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr6, $xr5, 1
	vreplvei.w	$vr5, $vr4, 2
	fcvt.d.s	$fa5, $fa5
	xvinsve0.d	$xr6, $xr5, 2
	vreplvei.w	$vr4, $vr4, 3
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr6, $xr4, 3
	xvfsub.d	$xr4, $xr2, $xr7
	xvfsub.d	$xr5, $xr2, $xr6
	xvfmul.d	$xr4, $xr4, $xr3
	xvfmul.d	$xr5, $xr5, $xr3
	xvfmul.d	$xr4, $xr4, $xr1
	xvfmul.d	$xr5, $xr5, $xr1
	xvpickve2gr.d	$a6, $xr5, 1
	movgr2fr.d	$fa6, $a6
	fcvt.s.d	$fa6, $fa6
	xvpickve2gr.d	$a6, $xr5, 0
	movgr2fr.d	$fa7, $a6
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr7, $xr6, 1
	xvpickve2gr.d	$a6, $xr5, 2
	movgr2fr.d	$fa6, $a6
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr7, $xr6, 2
	xvpickve2gr.d	$a6, $xr5, 3
	movgr2fr.d	$fa5, $a6
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 3
	xvpickve2gr.d	$a6, $xr4, 0
	movgr2fr.d	$fa5, $a6
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 4
	xvpickve2gr.d	$a6, $xr4, 1
	movgr2fr.d	$fa5, $a6
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 5
	xvpickve2gr.d	$a6, $xr4, 2
	movgr2fr.d	$fa5, $a6
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 6
	xvpickve2gr.d	$a6, $xr4, 3
	movgr2fr.d	$fa4, $a6
	xvld	$xr5, $a4, 0
	fcvt.s.d	$fa4, $fa4
	xvinsve0.w	$xr7, $xr4, 7
	xvst	$xr7, $a3, 0
	xvpermi.q	$xr4, $xr5, 1
	vreplvei.w	$vr6, $vr4, 1
	fcvt.d.s	$fa6, $fa6
	vreplvei.w	$vr7, $vr4, 0
	fcvt.d.s	$fa7, $fa7
	xvinsve0.d	$xr7, $xr6, 1
	vreplvei.w	$vr6, $vr4, 2
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr7, $xr6, 2
	vreplvei.w	$vr4, $vr4, 3
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr7, $xr4, 3
	vreplvei.w	$vr4, $vr5, 1
	fcvt.d.s	$fa4, $fa4
	vreplvei.w	$vr6, $vr5, 0
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr6, $xr4, 1
	vreplvei.w	$vr4, $vr5, 2
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr6, $xr4, 2
	vreplvei.w	$vr4, $vr5, 3
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr6, $xr4, 3
	xvfsub.d	$xr4, $xr2, $xr7
	xvfsub.d	$xr5, $xr2, $xr6
	xvfmul.d	$xr4, $xr4, $xr3
	xvfmul.d	$xr5, $xr5, $xr3
	xvfmul.d	$xr4, $xr4, $xr1
	xvfmul.d	$xr5, $xr5, $xr1
	xvpickve2gr.d	$a6, $xr5, 1
	movgr2fr.d	$fa6, $a6
	fcvt.s.d	$fa6, $fa6
	xvpickve2gr.d	$a6, $xr5, 0
	movgr2fr.d	$fa7, $a6
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr7, $xr6, 1
	xvpickve2gr.d	$a6, $xr5, 2
	movgr2fr.d	$fa6, $a6
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr7, $xr6, 2
	xvpickve2gr.d	$a6, $xr5, 3
	movgr2fr.d	$fa5, $a6
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 3
	xvpickve2gr.d	$a6, $xr4, 0
	movgr2fr.d	$fa5, $a6
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 4
	xvpickve2gr.d	$a6, $xr4, 1
	movgr2fr.d	$fa5, $a6
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 5
	xvpickve2gr.d	$a6, $xr4, 2
	movgr2fr.d	$fa5, $a6
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 6
	xvpickve2gr.d	$a6, $xr4, 3
	movgr2fr.d	$fa4, $a6
	fcvt.s.d	$fa4, $fa4
	xvinsve0.w	$xr7, $xr4, 7
	xvst	$xr7, $a4, 0
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 32
	addi.d	$a3, $a3, 32
	bnez	$a5, .LBB1_69
# %bb.70:                               # %middle.block
	beq	$a1, $a2, .LBB1_18
	b	.LBB1_16
.LBB1_71:                               # %vector.ph206
	bstrpick.d	$a1, $s0, 30, 3
	slli.d	$a1, $a1, 3
	xvreplve0.d	$xr1, $xr0
	lu52i.d	$a2, $zero, 1023
	xvreplgr2vr.d	$xr2, $a2
	lu52i.d	$a2, $zero, 1022
	xvreplgr2vr.d	$xr3, $a2
	move	$a2, $a3
	move	$a3, $t0
	move	$a4, $a1
	.p2align	4, , 16
.LBB1_72:                               # %vector.body211
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr4, $a2, 0
	xvpermi.q	$xr5, $xr4, 1
	vreplvei.w	$vr6, $vr5, 1
	fcvt.d.s	$fa6, $fa6
	vreplvei.w	$vr7, $vr5, 0
	fcvt.d.s	$fa7, $fa7
	xvinsve0.d	$xr7, $xr6, 1
	vreplvei.w	$vr6, $vr5, 2
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr7, $xr6, 2
	vreplvei.w	$vr5, $vr5, 3
	fcvt.d.s	$fa5, $fa5
	xvinsve0.d	$xr7, $xr5, 3
	vreplvei.w	$vr5, $vr4, 1
	fcvt.d.s	$fa5, $fa5
	vreplvei.w	$vr6, $vr4, 0
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr6, $xr5, 1
	vreplvei.w	$vr5, $vr4, 2
	fcvt.d.s	$fa5, $fa5
	xvinsve0.d	$xr6, $xr5, 2
	vreplvei.w	$vr4, $vr4, 3
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr6, $xr4, 3
	xvfsub.d	$xr4, $xr2, $xr7
	xvfsub.d	$xr5, $xr2, $xr6
	xvfmul.d	$xr4, $xr4, $xr3
	xvfmul.d	$xr5, $xr5, $xr3
	xvfmul.d	$xr4, $xr4, $xr1
	xvfmul.d	$xr5, $xr5, $xr1
	xvpickve2gr.d	$a5, $xr5, 1
	movgr2fr.d	$fa6, $a5
	fcvt.s.d	$fa6, $fa6
	xvpickve2gr.d	$a5, $xr5, 0
	movgr2fr.d	$fa7, $a5
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr7, $xr6, 1
	xvpickve2gr.d	$a5, $xr5, 2
	movgr2fr.d	$fa6, $a5
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr7, $xr6, 2
	xvpickve2gr.d	$a5, $xr5, 3
	movgr2fr.d	$fa5, $a5
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 3
	xvpickve2gr.d	$a5, $xr4, 0
	movgr2fr.d	$fa5, $a5
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 4
	xvpickve2gr.d	$a5, $xr4, 1
	movgr2fr.d	$fa5, $a5
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 5
	xvpickve2gr.d	$a5, $xr4, 2
	movgr2fr.d	$fa5, $a5
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 6
	xvpickve2gr.d	$a5, $xr4, 3
	movgr2fr.d	$fa4, $a5
	xvld	$xr5, $a3, 0
	fcvt.s.d	$fa4, $fa4
	xvinsve0.w	$xr7, $xr4, 7
	xvst	$xr7, $a2, 0
	xvpermi.q	$xr4, $xr5, 1
	vreplvei.w	$vr6, $vr4, 1
	fcvt.d.s	$fa6, $fa6
	vreplvei.w	$vr7, $vr4, 0
	fcvt.d.s	$fa7, $fa7
	xvinsve0.d	$xr7, $xr6, 1
	vreplvei.w	$vr6, $vr4, 2
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr7, $xr6, 2
	vreplvei.w	$vr4, $vr4, 3
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr7, $xr4, 3
	vreplvei.w	$vr4, $vr5, 1
	fcvt.d.s	$fa4, $fa4
	vreplvei.w	$vr6, $vr5, 0
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr6, $xr4, 1
	vreplvei.w	$vr4, $vr5, 2
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr6, $xr4, 2
	vreplvei.w	$vr4, $vr5, 3
	fcvt.d.s	$fa4, $fa4
	xvinsve0.d	$xr6, $xr4, 3
	xvfsub.d	$xr4, $xr2, $xr7
	xvfsub.d	$xr5, $xr2, $xr6
	xvfmul.d	$xr4, $xr4, $xr3
	xvfmul.d	$xr5, $xr5, $xr3
	xvfmul.d	$xr4, $xr4, $xr1
	xvfmul.d	$xr5, $xr5, $xr1
	xvpickve2gr.d	$a5, $xr5, 1
	movgr2fr.d	$fa6, $a5
	fcvt.s.d	$fa6, $fa6
	xvpickve2gr.d	$a5, $xr5, 0
	movgr2fr.d	$fa7, $a5
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr7, $xr6, 1
	xvpickve2gr.d	$a5, $xr5, 2
	movgr2fr.d	$fa6, $a5
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr7, $xr6, 2
	xvpickve2gr.d	$a5, $xr5, 3
	movgr2fr.d	$fa5, $a5
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 3
	xvpickve2gr.d	$a5, $xr4, 0
	movgr2fr.d	$fa5, $a5
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 4
	xvpickve2gr.d	$a5, $xr4, 1
	movgr2fr.d	$fa5, $a5
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 5
	xvpickve2gr.d	$a5, $xr4, 2
	movgr2fr.d	$fa5, $a5
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 6
	xvpickve2gr.d	$a5, $xr4, 3
	movgr2fr.d	$fa4, $a5
	fcvt.s.d	$fa4, $fa4
	xvinsve0.w	$xr7, $xr4, 7
	xvst	$xr7, $a3, 0
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 32
	addi.d	$a2, $a2, 32
	bnez	$a4, .LBB1_72
# %bb.73:                               # %middle.block216
	beq	$a0, $a1, .LBB1_25
	b	.LBB1_23
.LBB1_74:                               # %vector.memcheck252
	addi.d	$a0, $s6, 4
	alsl.d	$a2, $s0, $s6, 2
	sltu	$a3, $a0, $s5
	sltu	$a4, $t7, $a2
	and	$a3, $a3, $a4
	ld.d	$s8, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 224                   # 8-byte Folded Reload
	bnez	$a3, .LBB1_46
# %bb.75:                               # %vector.memcheck252
	alsl.d	$a3, $s0, $a5, 2
	addi.d	$a3, $a3, -4
	sltu	$a0, $a0, $a3
	sltu	$a2, $a5, $a2
	and	$a0, $a0, $a2
	ld.d	$a7, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 256                   # 8-byte Folded Reload
	bnez	$a0, .LBB1_47
# %bb.76:                               # %vector.main.loop.iter.check
	ori	$a2, $zero, 17
	addi.d	$a0, $s0, -1
	bge	$a1, $a2, .LBB1_89
# %bb.77:
	move	$a1, $zero
	b	.LBB1_93
.LBB1_78:                               # %vector.memcheck291
	addi.d	$a2, $s3, 4
	alsl.d	$a3, $a0, $s3, 2
	sltu	$a4, $a2, $a4
	sltu	$a5, $s8, $a3
	and	$a4, $a4, $a5
	bnez	$a4, .LBB1_50
# %bb.79:                               # %vector.memcheck291
	alsl.d	$a4, $a0, $a6, 2
	addi.d	$a4, $a4, -4
	sltu	$a2, $a2, $a4
	sltu	$a3, $a6, $a3
	and	$a2, $a2, $a3
	bnez	$a2, .LBB1_50
# %bb.80:                               # %vector.main.loop.iter.check308
	ori	$a1, $zero, 17
	bge	$t5, $a1, .LBB1_96
# %bb.81:
	move	$a2, $zero
	b	.LBB1_100
.LBB1_82:                               # %vector.ph352
	ld.d	$a2, $sp, 472                   # 8-byte Folded Reload
	bstrins.d	$a2, $zero, 3, 0
	addi.d	$a3, $s3, 36
	addi.d	$a4, $a1, 36
	move	$a5, $a2
	.p2align	4, , 16
.LBB1_83:                               # %vector.body355
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a3, -32
	xvld	$xr1, $a3, 0
	xvst	$xr0, $a4, -32
	xvst	$xr1, $a4, 0
	addi.d	$a3, $a3, 64
	addi.d	$a5, $a5, -16
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB1_83
# %bb.84:                               # %middle.block360
	ld.d	$a3, $sp, 472                   # 8-byte Folded Reload
	beq	$a3, $a2, .LBB1_106
# %bb.85:                               # %vec.epilog.iter.check365
	ld.d	$a3, $sp, 472                   # 8-byte Folded Reload
	andi	$a3, $a3, 12
	beqz	$a3, .LBB1_103
.LBB1_86:                               # %vec.epilog.ph364
	ld.d	$a3, $sp, 472                   # 8-byte Folded Reload
	move	$a4, $a3
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	bstrins.d	$a3, $a5, 1, 0
	slli.d	$a5, $a2, 2
	addi.d	$a6, $a5, 4
	add.d	$a5, $s3, $a6
	add.d	$a6, $a1, $a6
	sub.d	$a2, $a2, $a4
	.p2align	4, , 16
.LBB1_87:                               # %vec.epilog.vector.body370
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, 0
	vst	$vr0, $a6, 0
	addi.d	$a5, $a5, 16
	addi.d	$a2, $a2, 4
	addi.d	$a6, $a6, 16
	bnez	$a2, .LBB1_87
# %bb.88:                               # %vec.epilog.middle.block375
	ld.d	$a2, $sp, 472                   # 8-byte Folded Reload
	bne	$a2, $a4, .LBB1_104
	b	.LBB1_106
.LBB1_89:                               # %vector.ph267
	move	$a1, $a0
	xvldrepl.w	$xr0, $t7, 0
	bstrins.d	$a1, $zero, 3, 0
	addi.d	$a2, $s6, 36
	addi.d	$a3, $a5, 32
	move	$a4, $a1
	.p2align	4, , 16
.LBB1_90:                               # %vector.body270
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a3, -32
	xvld	$xr2, $a3, 0
	xvld	$xr3, $a2, -32
	xvld	$xr4, $a2, 0
	xvfadd.s	$xr1, $xr0, $xr1
	xvfadd.s	$xr2, $xr0, $xr2
	xvfadd.s	$xr1, $xr3, $xr1
	xvfadd.s	$xr2, $xr4, $xr2
	xvst	$xr1, $a2, -32
	xvst	$xr2, $a2, 0
	addi.d	$a2, $a2, 64
	addi.d	$a4, $a4, -16
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB1_90
# %bb.91:                               # %middle.block279
	beq	$a0, $a1, .LBB1_49
# %bb.92:                               # %vec.epilog.iter.check
	andi	$a2, $a0, 12
	beqz	$a2, .LBB1_256
.LBB1_93:                               # %vec.epilog.ph
	move	$a2, $a0
	bstrins.d	$a2, $zero, 1, 0
	ori	$a3, $zero, 1
	move	$fp, $a0
	bstrins.d	$fp, $a3, 1, 0
	vldrepl.w	$vr0, $t7, 0
	alsl.d	$a3, $a1, $s6, 2
	addi.d	$a3, $a3, 4
	alsl.d	$a4, $a1, $a5, 2
	sub.d	$a1, $a1, $a2
	.p2align	4, , 16
.LBB1_94:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a4, 0
	vld	$vr2, $a3, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $a3, 0
	addi.d	$a3, $a3, 16
	addi.d	$a1, $a1, 4
	addi.d	$a4, $a4, 16
	bnez	$a1, .LBB1_94
# %bb.95:                               # %vec.epilog.middle.block
	bne	$a0, $a2, .LBB1_47
	b	.LBB1_49
.LBB1_96:                               # %vector.ph309
	ld.d	$a2, $sp, 472                   # 8-byte Folded Reload
	xvldrepl.w	$xr0, $s8, 0
	bstrins.d	$a2, $zero, 3, 0
	addi.d	$a1, $s3, 36
	addi.d	$a3, $a6, 32
	move	$a4, $a2
	.p2align	4, , 16
.LBB1_97:                               # %vector.body312
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a3, -32
	xvld	$xr2, $a3, 0
	xvld	$xr3, $a1, -32
	xvld	$xr4, $a1, 0
	xvfadd.s	$xr1, $xr0, $xr1
	xvfadd.s	$xr2, $xr0, $xr2
	xvfadd.s	$xr1, $xr3, $xr1
	xvfadd.s	$xr2, $xr4, $xr2
	xvst	$xr1, $a1, -32
	xvst	$xr2, $a1, 0
	addi.d	$a1, $a1, 64
	addi.d	$a4, $a4, -16
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB1_97
# %bb.98:                               # %middle.block321
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	beq	$a1, $a2, .LBB1_52
# %bb.99:                               # %vec.epilog.iter.check326
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	andi	$a1, $a1, 12
	beqz	$a1, .LBB1_257
.LBB1_100:                              # %vec.epilog.ph325
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	move	$a3, $a1
	bstrins.d	$a3, $zero, 1, 0
	ori	$a4, $zero, 1
	bstrins.d	$a1, $a4, 1, 0
	vldrepl.w	$vr0, $s8, 0
	alsl.d	$a4, $a2, $s3, 2
	addi.d	$a4, $a4, 4
	alsl.d	$a5, $a2, $a6, 2
	sub.d	$a2, $a2, $a3
	.p2align	4, , 16
.LBB1_101:                              # %vec.epilog.vector.body331
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a5, 0
	vld	$vr2, $a4, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $a4, 0
	addi.d	$a4, $a4, 16
	addi.d	$a2, $a2, 4
	addi.d	$a5, $a5, 16
	bnez	$a2, .LBB1_101
# %bb.102:                              # %vec.epilog.middle.block339
	ld.d	$a2, $sp, 472                   # 8-byte Folded Reload
	bne	$a2, $a3, .LBB1_50
	b	.LBB1_52
.LBB1_103:
	addi.d	$a3, $a2, 1
.LBB1_104:                              # %for.body193.i.preheader
	sub.d	$a2, $a0, $a3
	alsl.d	$a1, $a3, $a1, 2
	alsl.d	$a3, $a3, $s3, 2
	.p2align	4, , 16
.LBB1_105:                              # %for.body193.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a3, 0
	fst.s	$fa0, $a1, 0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a3, 4
	bnez	$a2, .LBB1_105
.LBB1_106:                              # %iter.check394
	ori	$a1, $zero, 1
	ori	$a2, $zero, 4
	addi.d	$t8, $t0, 4
	blt	$a2, $t5, .LBB1_206
.LBB1_107:                              # %for.body206.i.preheader
	sub.d	$a2, $a0, $a1
	ld.d	$a3, $sp, 480                   # 8-byte Folded Reload
	alsl.d	$a3, $a1, $a3, 2
	alsl.d	$a4, $a1, $t0, 2
	alsl.d	$a1, $a1, $s3, 2
	addi.d	$a1, $a1, -4
	.p2align	4, , 16
.LBB1_108:                              # %for.body206.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $s5, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a4, 0
	st.w	$zero, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 4
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB1_108
.LBB1_109:                              # %for.body229.lr.ph.i
	st.d	$t8, $sp, 456                   # 8-byte Folded Spill
	st.d	$t5, $sp, 432                   # 8-byte Folded Spill
	st.d	$t4, $sp, 16                    # 8-byte Folded Spill
	st.d	$t3, $sp, 336                   # 8-byte Folded Spill
	st.d	$s6, $sp, 344                   # 8-byte Folded Spill
	slli.d	$s6, $t2, 2
	fldx.s	$fa0, $s3, $s6
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 31, 0
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	fst.s	$fa0, $a2, 0
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a2, $fa0
	ld.d	$a1, $sp, 480                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 4
	st.d	$a1, $sp, 448                   # 8-byte Folded Spill
	st.d	$t2, $sp, 184                   # 8-byte Folded Spill
	alsl.d	$s7, $t2, $t0, 2
	bstrpick.d	$a1, $a7, 30, 0
	st.d	$a1, $sp, 328                   # 8-byte Folded Spill
	st.d	$a2, $sp, 312                   # 8-byte Folded Spill
	bstrpick.d	$s1, $a2, 31, 0
	slli.d	$s4, $a0, 2
	ori	$s2, $zero, 1
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	move	$a0, $s3
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$a1, $sp, 440                   # 8-byte Folded Spill
	st.d	$s6, $sp, 320                   # 8-byte Folded Spill
	b	.LBB1_111
	.p2align	4, , 16
.LBB1_110:                              # %for.end321.i
                                        #   in Loop: Header=BB1_111 Depth=1
	ld.d	$s6, $sp, 320                   # 8-byte Folded Reload
	fldx.s	$fa0, $s3, $s6
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	fstx.s	$fa0, $a2, $a0
	fld.s	$fa0, $s7, 0
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	addi.d	$s2, $s2, 1
	fstx.s	$fa0, $a1, $a0
	move	$a0, $s3
	beq	$s2, $s0, .LBB1_123
.LBB1_111:                              # %for.body229.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_121 Depth 2
                                        #     Child Loop BB1_117 Depth 2
	addi.d	$s6, $s2, -1
	slli.d	$a1, $s6, 2
	ld.d	$fp, $sp, 344                   # 8-byte Folded Reload
	fldx.s	$fa0, $fp, $a1
	ld.d	$s3, $sp, 440                   # 8-byte Folded Reload
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
	fst.s	$fa0, $a0, 0
	move	$a0, $s3
	ld.d	$a1, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 408                   # 8-byte Folded Reload
	move	$a3, $s2
	ld.d	$a4, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 352                   # 8-byte Folded Reload
	move	$a7, $zero
	pcaddu18i	$ra, %call36(match_ribosum)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s2, 2
	fldx.s	$fa0, $fp, $a0
	fst.s	$fa0, $s3, 0
	ld.d	$a3, $sp, 400                   # 8-byte Folded Reload
	fldx.s	$fa0, $a3, $a0
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	fst.s	$fa0, $ra, 0
	ld.d	$t8, $sp, 368                   # 8-byte Folded Reload
	bne	$s2, $s1, .LBB1_113
# %bb.112:                              # %if.then246.i
                                        #   in Loop: Header=BB1_111 Depth=1
	fst.s	$fa0, $t8, 0
.LBB1_113:                              # %for.body260.lr.ph.i
                                        #   in Loop: Header=BB1_111 Depth=1
	ld.d	$fp, $sp, 440                   # 8-byte Folded Reload
	fld.s	$fa0, $fp, 0
	fld.s	$fa1, $s8, 4
	slli.d	$a1, $s2, 3
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	ldx.d	$a4, $a2, $a1
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	ldx.d	$a1, $a2, $a1
	alsl.d	$a2, $s2, $a3, 2
	fadd.s	$fa0, $fa0, $fa1
	ld.d	$a3, $sp, 424                   # 8-byte Folded Reload
	alsl.d	$a3, $s6, $a3, 2
	ld.d	$t3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 384                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 376                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 208                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 240                   # 8-byte Folded Reload
	bne	$s2, $s1, .LBB1_119
# %bb.114:                              # %for.body260.us.i.preheader
                                        #   in Loop: Header=BB1_111 Depth=1
	move	$a5, $zero
	move	$a7, $zero
	ori	$a6, $zero, 4
	b	.LBB1_117
	.p2align	4, , 16
.LBB1_115:                              # %if.then290.us.i
                                        #   in Loop: Header=BB1_117 Depth=2
	fstx.s	$fa6, $ra, $a6
	ld.d	$t0, $sp, 480                   # 8-byte Folded Reload
	stx.w	$s6, $t0, $a6
	move	$t0, $s6
.LBB1_116:                              # %if.end292.us.i
                                        #   in Loop: Header=BB1_117 Depth=2
	fadd.s	$fa5, $fa0, $fa5
	fcmp.clt.s	$fcc0, $fa1, $fa5
	fadd.s	$fa3, $fa3, $fa4
	fldx.s	$fa4, $s3, $a6
	fsel	$fa5, $fa1, $fa5, $fcc0
	fcmp.clt.s	$fcc0, $fa5, $fa3
	fsel	$fa3, $fa5, $fa3, $fcc0
	fadd.s	$fa3, $fa3, $fa4
	fstx.s	$fa3, $s3, $a6
	fstx.s	$fa3, $a4, $a6
	fldx.s	$fa3, $ra, $a6
	fadd.s	$fa1, $fa1, $fa2
	fcmp.cult.s	$fcc0, $fa1, $fa0
	fstx.s	$fa3, $a1, $a6
	fldx.s	$fa2, $s3, $a6
	fsel	$fa0, $fa1, $fa0, $fcc0
	movcf2gr	$t1, $fcc0
	masknez	$t2, $a5, $t1
	maskeqz	$a7, $a7, $t1
	fstx.s	$fa2, $t5, $a6
	fldx.s	$fa1, $ra, $a6
	or	$a7, $a7, $t2
	stx.w	$t0, $t7, $a6
	stx.w	$a7, $t6, $a6
	fstx.s	$fa1, $t8, $a6
	fstx.s	$fa0, $t4, $a6
	addi.d	$a6, $a6, 4
	addi.d	$a5, $a5, 1
	beq	$s4, $a6, .LBB1_110
.LBB1_117:                              # %for.body260.us.i
                                        #   Parent Loop BB1_111 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t0, $fp, $a6
	fld.s	$fa1, $t0, -4
	add.d	$t0, $t3, $a6
	fld.s	$fa5, $t0, -4
	fld.s	$fa6, $a2, 0
	fldx.s	$fa3, $ra, $a6
	fldx.s	$fa2, $s8, $a6
	fld.s	$fa4, $a3, 0
	fadd.s	$fa6, $fa1, $fa6
	fcmp.cle.s	$fcc0, $fa3, $fa6
	bcnez	$fcc0, .LBB1_115
# %bb.118:                              # %for.body260.us.if.end292.us_crit_edge.i
                                        #   in Loop: Header=BB1_117 Depth=2
	ld.d	$t0, $sp, 480                   # 8-byte Folded Reload
	ldx.w	$t0, $t0, $a6
	b	.LBB1_116
	.p2align	4, , 16
.LBB1_119:                              # %for.body260.i.preheader
                                        #   in Loop: Header=BB1_111 Depth=1
	addi.d	$a5, $s3, 4
	addi.d	$a6, $a1, 4
	addi.d	$a4, $a4, 4
	move	$a7, $t3
	ld.d	$t0, $sp, 464                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 472                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 456                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 448                   # 8-byte Folded Reload
	move	$t4, $fp
	b	.LBB1_121
	.p2align	4, , 16
.LBB1_120:                              # %if.end292.i
                                        #   in Loop: Header=BB1_121 Depth=2
	fadd.s	$fa4, $fa0, $fa4
	fcmp.clt.s	$fcc0, $fa1, $fa4
	fadd.s	$fa3, $fa3, $fa5
	fld.s	$fa5, $a5, 0
	fsel	$fa4, $fa1, $fa4, $fcc0
	fcmp.clt.s	$fcc0, $fa4, $fa3
	fsel	$fa3, $fa4, $fa3, $fcc0
	fadd.s	$fa3, $fa3, $fa5
	fst.s	$fa3, $a5, 0
	fst.s	$fa3, $a4, 0
	fld.s	$fa3, $t2, 0
	fadd.s	$fa1, $fa1, $fa2
	fcmp.cle.s	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc0
	fst.s	$fa3, $a6, 0
	addi.d	$t4, $t4, 4
	addi.d	$a5, $a5, 4
	addi.d	$t3, $t3, 4
	addi.d	$t2, $t2, 4
	addi.d	$t1, $t1, -1
	addi.d	$a6, $a6, 4
	addi.d	$a4, $a4, 4
	addi.d	$t0, $t0, 4
	addi.d	$a7, $a7, 4
	beqz	$t1, .LBB1_110
.LBB1_121:                              # %for.body260.i
                                        #   Parent Loop BB1_111 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa1, $t4, 0
	fld.s	$fa4, $a7, 0
	fld.s	$fa6, $a2, 0
	fld.s	$fa3, $t2, 0
	fld.s	$fa2, $t0, 0
	fld.s	$fa5, $a3, 0
	fadd.s	$fa6, $fa1, $fa6
	fcmp.cult.s	$fcc0, $fa6, $fa3
	bcnez	$fcc0, .LBB1_120
# %bb.122:                              # %if.then290.i
                                        #   in Loop: Header=BB1_121 Depth=2
	fst.s	$fa6, $t2, 0
	st.w	$s6, $t3, 0
	b	.LBB1_120
.LBB1_123:                              # %iter.check442
	ori	$a7, $zero, 1
	ld.d	$s4, $sp, 344                   # 8-byte Folded Reload
	move	$a0, $s4
	ld.d	$s0, $sp, 408                   # 8-byte Folded Reload
	move	$a1, $s0
	ld.d	$fp, $sp, 416                   # 8-byte Folded Reload
	move	$a2, $fp
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 360                   # 8-byte Folded Reload
	move	$a5, $s1
	ld.d	$s2, $sp, 352                   # 8-byte Folded Reload
	move	$a6, $s2
	pcaddu18i	$ra, %call36(match_ribosum)
	jirl	$ra, $ra, 0
	ori	$a7, $zero, 1
	move	$a0, $s3
	move	$a1, $fp
	move	$a2, $s0
	ld.d	$fp, $sp, 336                   # 8-byte Folded Reload
	move	$a3, $fp
	ld.d	$a4, $sp, 392                   # 8-byte Folded Reload
	move	$a5, $s1
	move	$a6, $s2
	pcaddu18i	$ra, %call36(match_ribosum)
	jirl	$ra, $ra, 0
	move	$t8, $fp
	bstrpick.d	$a2, $fp, 31, 0
	ori	$a0, $zero, 3
	ld.d	$a4, $sp, 424                   # 8-byte Folded Reload
	alsl.d	$a1, $a2, $a4, 2
	bltu	$a0, $fp, .LBB1_210
# %bb.124:
	move	$ra, $a2
	move	$a0, $zero
	ld.d	$t1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 384                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 376                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 368                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 392                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 432                   # 8-byte Folded Reload
.LBB1_125:                              # %for.body351.i.preheader
	alsl.d	$a2, $a0, $s4, 2
	sub.d	$a3, $ra, $a0
	ld.d	$a4, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a4, 2
	addi.d	$a0, $a0, 4
	.p2align	4, , 16
.LBB1_126:                              # %for.body351.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a0, 0
	fld.s	$fa2, $a2, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 4
	bnez	$a3, .LBB1_126
.LBB1_127:                              # %for.cond365.preheader.i
	alsl.d	$a0, $t7, $t1, 2
	beqz	$t7, .LBB1_132
# %bb.128:                              # %iter.check493
	ori	$a2, $zero, 4
	bltu	$a2, $a7, .LBB1_214
# %bb.129:
	move	$a2, $zero
.LBB1_130:                              # %for.body369.i.preheader
	alsl.d	$a3, $a2, $s3, 2
	sub.d	$a4, $t7, $a2
	alsl.d	$a2, $a2, $s8, 2
	addi.d	$a2, $a2, 4
	.p2align	4, , 16
.LBB1_131:                              # %for.body369.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a3, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, -1
	addi.d	$a2, $a2, 4
	bnez	$a4, .LBB1_131
.LBB1_132:                              # %for.body387.i.preheader
	move	$a2, $ra
	move	$a3, $a6
	.p2align	4, , 16
.LBB1_133:                              # %for.body387.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a3, 0
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $s5, 0
	fldx.s	$fa2, $a4, $s6
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa0, $fa2
	fstx.s	$fa0, $a4, $s6
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, -1
	addi.d	$s5, $s5, 4
	bnez	$a2, .LBB1_133
# %bb.134:                              # %for.cond404.preheader.i
	beqz	$t7, .LBB1_143
# %bb.135:                              # %iter.check543
	slli.d	$a1, $ra, 3
	ldx.d	$a1, $a6, $a1
	ori	$a2, $zero, 4
	bltu	$a2, $a7, .LBB1_218
# %bb.136:
	move	$a2, $zero
.LBB1_137:                              # %for.body408.i.preheader
	alsl.d	$a1, $a2, $a1, 2
	sub.d	$a3, $t7, $a2
	alsl.d	$a2, $a2, $s8, 2
	addi.d	$a2, $a2, 4
	.p2align	4, , 16
.LBB1_138:                              # %for.body408.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a1, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa0, $fa2
	fst.s	$fa0, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB1_138
.LBB1_139:                              # %for.body429.lr.ph.i
	slti	$a2, $t7, 1
	ori	$a1, $zero, 1
	masknez	$a3, $a1, $a2
	maskeqz	$a2, $t7, $a2
	or	$a4, $a2, $a3
	nor	$a2, $a4, $zero
	add.w	$a3, $a2, $t2
	ori	$a5, $zero, 23
	addi.d	$a2, $a0, -4
	bgeu	$a3, $a5, .LBB1_222
.LBB1_140:
	move	$a0, $t7
.LBB1_141:                              # %for.body429.i.preheader
	addi.d	$a3, $a0, 1
	ld.d	$a4, $sp, 480                   # 8-byte Folded Reload
	alsl.d	$a4, $a0, $a4, 2
	alsl.d	$a5, $a0, $t6, 2
	addi.d	$a5, $a5, -4
	alsl.d	$a0, $a0, $s3, 2
	.p2align	4, , 16
.LBB1_142:                              # %for.body429.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a2, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a5, 0
	st.w	$t8, $a4, 0
	addi.w	$a3, $a3, -1
	addi.d	$a4, $a4, -4
	addi.d	$a5, $a5, -4
	addi.d	$a0, $a0, -4
	blt	$a1, $a3, .LBB1_142
.LBB1_143:                              # %for.cond446.preheader.i
	move	$s6, $zero
	move	$a4, $zero
	move	$a5, $zero
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	alsl.d	$a0, $fp, $a0, 2
	alsl.d	$a1, $fp, $t6, 2
	addi.w	$a2, $zero, -2
	lu32i.d	$a2, 0
	add.d	$a2, $t2, $a2
	bstrpick.d	$a2, $a2, 31, 0
	alsl.d	$a3, $a2, $t1, 2
	st.d	$a3, $sp, 160                   # 8-byte Folded Spill
	slli.d	$a3, $a2, 2
	addi.d	$s1, $a1, -8
	addi.d	$a0, $a0, -8
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	ori	$a1, $zero, 1
	slt	$a0, $a1, $s2
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s2, $a0
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	alsl.d	$a0, $a2, $a0, 2
	st.d	$a0, $sp, 472                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$a0, $a2, $a0, 2
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
	alsl.d	$a0, $a2, $t4, 2
	st.d	$a0, $sp, 456                   # 8-byte Folded Spill
	alsl.d	$a0, $a2, $t3, 2
	st.d	$a0, $sp, 448                   # 8-byte Folded Spill
	st.d	$a3, $sp, 168                   # 8-byte Folded Spill
	addi.d	$a0, $a3, 4
	add.d	$fp, $t5, $a0
	add.d	$s8, $s8, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	fld.s	$fs0, $a0, %pc_lo12(.LCPI1_0)
	addi.d	$a0, $t7, -2
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	addi.d	$a0, $t4, 8
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	movgr2fr.w	$fa6, $zero
	move	$t1, $ra
	b	.LBB1_146
	.p2align	4, , 16
.LBB1_144:                              #   in Loop: Header=BB1_146 Depth=1
	move	$a0, $a5
	move	$t7, $a4
	move	$a2, $s6
.LBB1_145:                              # %for.inc675.i
                                        #   in Loop: Header=BB1_146 Depth=1
	st.d	$s5, $sp, 312                   # 8-byte Folded Spill
	move	$s6, $a2
	move	$a4, $t7
	move	$a5, $a0
	move	$s3, $s0
	ori	$a0, $zero, 1
	bge	$a0, $s2, .LBB1_181
.LBB1_146:                              # %for.body449.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_149 Depth 2
                                        #     Child Loop BB1_166 Depth 2
                                        #     Child Loop BB1_168 Depth 2
	st.d	$a5, $sp, 432                   # 8-byte Folded Spill
	st.d	$a4, $sp, 264                   # 8-byte Folded Spill
	xvst	$xr6, $sp, 272                  # 32-byte Folded Spill
	st.d	$t8, $sp, 336                   # 8-byte Folded Spill
	move	$s2, $t1
	slli.d	$a0, $t1, 2
	ld.d	$s4, $sp, 344                   # 8-byte Folded Reload
	fldx.s	$fa0, $s4, $a0
	ld.d	$s0, $sp, 440                   # 8-byte Folded Reload
	addi.d	$s7, $t1, -1
	ld.d	$s5, $sp, 320                   # 8-byte Folded Reload
	fstx.s	$fa0, $s3, $s5
	move	$a0, $s0
	ld.d	$a1, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 408                   # 8-byte Folded Reload
	move	$a3, $s7
	move	$a4, $a7
	ld.d	$a5, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 352                   # 8-byte Folded Reload
	move	$a7, $zero
	pcaddu18i	$ra, %call36(match_ribosum)
	jirl	$ra, $ra, 0
	move	$t1, $s7
	ld.d	$ra, $sp, 328                   # 8-byte Folded Reload
	slli.d	$a0, $s7, 2
	fldx.s	$fa0, $s4, $a0
	fstx.s	$fa0, $s0, $s5
	alsl.d	$a1, $ra, $s3, 2
	addi.d	$a1, $a1, -4
	ld.d	$t7, $sp, 184                   # 8-byte Folded Reload
	st.d	$s3, $sp, 440                   # 8-byte Folded Spill
	beqz	$t7, .LBB1_161
# %bb.147:                              # %for.body489.lr.ph.i
                                        #   in Loop: Header=BB1_146 Depth=1
	alsl.d	$a2, $t7, $s3, 2
	fld.s	$fa0, $a2, 0
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	fld.s	$fa1, $a4, 0
	move	$a3, $zero
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	alsl.d	$a2, $ra, $s0, 2
	move	$s0, $a4
	addi.d	$a4, $a2, -8
	fadd.s	$fa0, $fa0, $fa1
	ld.d	$a2, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$a5, $s2, $a2, 2
	ld.d	$t6, $sp, 424                   # 8-byte Folded Reload
	alsl.d	$a6, $t1, $t6, 2
	ld.d	$a2, $sp, 432                   # 8-byte Folded Reload
	bstrpick.d	$a2, $a2, 31, 0
	xor	$a2, $t1, $a2
	sltui	$a7, $a2, 1
	ld.d	$s5, $sp, 312                   # 8-byte Folded Reload
	bstrpick.d	$a2, $s5, 31, 0
	xor	$t0, $s2, $a2
	move	$s7, $t1
	slli.d	$t1, $t1, 3
	ld.d	$t2, $sp, 248                   # 8-byte Folded Reload
	ldx.d	$t2, $t2, $t1
	ld.d	$t3, $sp, 256                   # 8-byte Folded Reload
	ldx.d	$t1, $t3, $t1
	sltui	$t0, $t0, 1
	or	$a7, $a7, $t0
	ld.d	$t3, $sp, 168                   # 8-byte Folded Reload
	add.d	$t0, $t2, $t3
	add.d	$t1, $t1, $t3
	move	$t2, $t7
	move	$t3, $t7
	ld.d	$t8, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 336                   # 8-byte Folded Reload
	xvld	$xr6, $sp, 272                  # 32-byte Folded Reload
	b	.LBB1_149
	.p2align	4, , 16
.LBB1_148:                              # %if.end556.i
                                        #   in Loop: Header=BB1_149 Depth=2
	fldx.s	$fa2, $t1, $a3
	fadd.s	$fa2, $fa1, $fa2
	fstx.s	$fa2, $t1, $a3
	fldx.s	$fa2, $a4, $a3
	fldx.s	$fa3, $t0, $a3
	movcf2gr	$t4, $fcc0
	fadd.s	$fa2, $fa2, $fa3
	fstx.s	$fa2, $t0, $a3
	fldx.s	$fa2, $a4, $a3
	masknez	$t5, $t2, $t4
	maskeqz	$t3, $t3, $t4
	or	$t3, $t3, $t5
	fadd.s	$fa1, $fa1, $fa2
	fstx.s	$fa1, $a4, $a3
	addi.w	$t2, $t2, -1
	addi.d	$a3, $a3, -4
	blez	$t2, .LBB1_160
.LBB1_149:                              # %for.body489.i
                                        #   Parent Loop BB1_146 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$fa1, $s8, $a3
	fldx.s	$fa2, $a1, $a3
	fldx.s	$fa3, $s1, $a3
	fld.s	$fa4, $a5, 0
	fadd.s	$fa1, $fa0, $fa1
	fcmp.clt.s	$fcc0, $fa2, $fa1
	fsel	$fa1, $fa2, $fa1, $fcc0
	fadd.s	$fa4, $fa3, $fa4
	fcmp.cule.s	$fcc1, $fa4, $fa1
	bcnez	$fcc1, .LBB1_151
# %bb.150:                              # %if.then515.i
                                        #   in Loop: Header=BB1_149 Depth=2
	ld.d	$t4, $sp, 488                   # 8-byte Folded Reload
	ldx.w	$t4, $t4, $a3
	fmov.s	$fa1, $fa4
	move	$t5, $t2
	b	.LBB1_152
	.p2align	4, , 16
.LBB1_151:                              #   in Loop: Header=BB1_149 Depth=2
	movcf2gr	$t4, $fcc0
	masknez	$t5, $t2, $t4
	maskeqz	$t4, $t3, $t4
	or	$t5, $t4, $t5
	move	$t4, $s2
.LBB1_152:                              # %if.end517.i
                                        #   in Loop: Header=BB1_149 Depth=2
	fld.s	$fa5, $a6, 0
	fldx.s	$fa4, $s0, $a3
	fadd.s	$fa5, $fa2, $fa5
	fcmp.cult.s	$fcc0, $fa5, $fa3
	bceqz	$fcc0, .LBB1_156
# %bb.153:                              # %if.end525.i
                                        #   in Loop: Header=BB1_149 Depth=2
	beqz	$a7, .LBB1_157
.LBB1_154:                              # %if.then532.i
                                        #   in Loop: Header=BB1_149 Depth=2
	ld.d	$s3, $sp, 464                   # 8-byte Folded Reload
	stx.w	$t4, $s3, $a3
	ld.d	$t4, $sp, 472                   # 8-byte Folded Reload
	stx.w	$t5, $t4, $a3
	beq	$s7, $a2, .LBB1_158
.LBB1_155:                              # %if.end548.i
                                        #   in Loop: Header=BB1_149 Depth=2
	fadd.s	$fa2, $fa2, $fa4
	fcmp.cult.s	$fcc0, $fa2, $fa0
	fsel	$fa0, $fa2, $fa0, $fcc0
	bne	$s2, $a2, .LBB1_148
	b	.LBB1_159
	.p2align	4, , 16
.LBB1_156:                              # %if.then523.i
                                        #   in Loop: Header=BB1_149 Depth=2
	fstx.s	$fa5, $s1, $a3
	ld.d	$s3, $sp, 488                   # 8-byte Folded Reload
	stx.w	$s2, $s3, $a3
	bnez	$a7, .LBB1_154
.LBB1_157:                              # %if.end537.i
                                        #   in Loop: Header=BB1_149 Depth=2
	bne	$s7, $a2, .LBB1_155
.LBB1_158:                              # %if.then540.i
                                        #   in Loop: Header=BB1_149 Depth=2
	ld.d	$t4, $sp, 456                   # 8-byte Folded Reload
	fldx.s	$fa3, $t4, $a3
	fadd.s	$fa3, $fa1, $fa3
	fstx.s	$fa3, $t4, $a3
	fldx.s	$fa3, $s1, $a3
	fldx.s	$fa5, $fp, $a3
	fadd.s	$fa3, $fa3, $fa5
	fstx.s	$fa3, $fp, $a3
	fadd.s	$fa2, $fa2, $fa4
	fcmp.cult.s	$fcc0, $fa2, $fa0
	fsel	$fa0, $fa2, $fa0, $fcc0
	bne	$s2, $a2, .LBB1_148
.LBB1_159:                              # %if.then552.i
                                        #   in Loop: Header=BB1_149 Depth=2
	ld.d	$t4, $sp, 448                   # 8-byte Folded Reload
	fldx.s	$fa2, $t4, $a3
	fadd.s	$fa2, $fa0, $fa2
	fstx.s	$fa2, $t4, $a3
	b	.LBB1_148
	.p2align	4, , 16
.LBB1_160:                              # %for.end574.i.loopexit
                                        #   in Loop: Header=BB1_146 Depth=1
	add.d	$a1, $a1, $a3
	ld.d	$a6, $sp, 376                   # 8-byte Folded Reload
	move	$t1, $s7
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 432                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 384                   # 8-byte Folded Reload
	b	.LBB1_162
	.p2align	4, , 16
.LBB1_161:                              # %for.body449.for.end574_crit_edge.i
                                        #   in Loop: Header=BB1_146 Depth=1
	ld.d	$s5, $sp, 312                   # 8-byte Folded Reload
	bstrpick.d	$a2, $s5, 31, 0
	ld.d	$t6, $sp, 424                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 376                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 336                   # 8-byte Folded Reload
	xvld	$xr6, $sp, 272                  # 32-byte Folded Reload
	ld.d	$a5, $sp, 432                   # 8-byte Folded Reload
.LBB1_162:                              # %for.end574.i
                                        #   in Loop: Header=BB1_146 Depth=1
	fld.s	$fa0, $a1, 0
	fldx.s	$fa1, $t6, $a0
	fadd.s	$fa0, $fa0, $fa1
	fcmp.clt.s	$fcc0, $fs0, $fa0
	fsel	$fs0, $fs0, $fa0, $fcc0
	ld.d	$a7, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	bne	$t1, $a2, .LBB1_164
# %bb.163:                              # %if.then585.i
                                        #   in Loop: Header=BB1_146 Depth=1
	fld.s	$fa0, $t8, 0
	fadd.s	$fa0, $fs0, $fa0
	fst.s	$fa0, $t8, 0
.LBB1_164:                              # %if.end590.i
                                        #   in Loop: Header=BB1_146 Depth=1
	addi.w	$a0, $s5, -1
	bne	$s2, $a2, .LBB1_176
# %bb.165:                              # %if.then594.i
                                        #   in Loop: Header=BB1_146 Depth=1
	fld.s	$fa6, $a6, 4
	move	$s6, $zero
	ori	$a1, $zero, 2
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_166:                              # %for.body600.i
                                        #   Parent Loop BB1_146 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $a2, 0
	fcmp.clt.s	$fcc1, $fa6, $fa0
	fsel	$fa6, $fa6, $fa0, $fcc1
	movcf2gr	$a4, $fcc1
	masknez	$a5, $s6, $a4
	maskeqz	$a4, $a1, $a4
	or	$s6, $a4, $a5
	addi.d	$a3, $a3, -1
	addi.w	$a1, $a1, 1
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB1_166
# %bb.167:                              # %for.body614.i.preheader
                                        #   in Loop: Header=BB1_146 Depth=1
	move	$a1, $zero
	move	$a2, $t8
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_168:                              # %for.body614.i
                                        #   Parent Loop BB1_146 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $a2, 0
	fcmp.clt.s	$fcc1, $fa6, $fa0
	fsel	$fa6, $fa6, $fa0, $fcc1
	movcf2gr	$a4, $fcc1
	masknez	$a5, $s6, $a4
	maskeqz	$a4, $a1, $a4
	or	$s6, $a4, $a5
	addi.d	$a3, $a3, -1
	addi.w	$a1, $a1, 1
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB1_168
# %bb.169:                              # %for.end623.i
                                        #   in Loop: Header=BB1_146 Depth=1
	slli.d	$a1, $s6, 2
	fldx.s	$fa0, $a6, $a1
	addi.w	$a4, $s6, -1
	ori	$a2, $zero, 1
	blt	$s6, $a2, .LBB1_174
# %bb.170:                              # %land.lhs.true.i
                                        #   in Loop: Header=BB1_146 Depth=1
	slli.d	$a2, $a4, 2
	fldx.s	$fa1, $t2, $a2
	fcmp.cule.s	$fcc1, $fa1, $fa0
	move	$a2, $a4
	ld.d	$a3, $sp, 240                   # 8-byte Folded Reload
	bcnez	$fcc1, .LBB1_172
# %bb.171:                              # %if.then635.i
                                        #   in Loop: Header=BB1_146 Depth=1
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ldx.w	$a2, $a2, $a1
	fmov.s	$fa0, $fa1
.LBB1_172:                              # %if.end642.i
                                        #   in Loop: Header=BB1_146 Depth=1
	fldx.s	$fa1, $t8, $a1
	fcmp.cule.s	$fcc1, $fa1, $fa0
	bcnez	$fcc1, .LBB1_175
.LBB1_173:                              # %if.then647.i
                                        #   in Loop: Header=BB1_146 Depth=1
	ldx.w	$a5, $a3, $a1
	b	.LBB1_176
.LBB1_174:                              #   in Loop: Header=BB1_146 Depth=1
	move	$a2, $a4
	ld.d	$a3, $sp, 240                   # 8-byte Folded Reload
	fldx.s	$fa1, $t8, $a1
	fcmp.cule.s	$fcc1, $fa1, $fa0
	bceqz	$fcc1, .LBB1_173
.LBB1_175:                              #   in Loop: Header=BB1_146 Depth=1
	move	$a5, $a0
	move	$a4, $a2
.LBB1_176:                              # %if.end654.i
                                        #   in Loop: Header=BB1_146 Depth=1
	movcf2gr	$a1, $fcc0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $s2, $a1
	bstrpick.d	$a3, $a5, 31, 0
	or	$t8, $a1, $a2
	bne	$t1, $a3, .LBB1_144
# %bb.177:                              # %if.then657.i
                                        #   in Loop: Header=BB1_146 Depth=1
	beqz	$s6, .LBB1_180
# %bb.178:                              # %if.else.i
                                        #   in Loop: Header=BB1_146 Depth=1
	move	$a2, $a7
	bge	$s6, $a7, .LBB1_145
# %bb.179:                              # %if.else667.i
                                        #   in Loop: Header=BB1_146 Depth=1
	slli.d	$a0, $a4, 2
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ldx.w	$s5, $a1, $a0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ldx.w	$a2, $a1, $a0
	move	$a0, $a5
	move	$t7, $a4
	b	.LBB1_145
.LBB1_180:                              # %if.then660.i
                                        #   in Loop: Header=BB1_146 Depth=1
	move	$t7, $zero
	addi.w	$a0, $t8, -1
	ori	$a2, $zero, 1
	move	$s5, $t8
	b	.LBB1_145
.LBB1_181:                              # %for.cond682.preheader.preheader.i
	move	$a0, $zero
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 30, 0
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	bstrpick.d	$a2, $a4, 30, 4
	slli.d	$a2, $a2, 4
	xvreplve0.w	$xr0, $xr6
	andi	$a3, $a4, 12
	bstrpick.d	$a4, $a4, 30, 2
	slli.d	$a4, $a4, 2
	vreplvei.w	$vr1, $vr6, 0
	sub.d	$a5, $zero, $a4
	ori	$a6, $zero, 4
	ori	$a7, $zero, 64
	ori	$t0, $zero, 16
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 16                    # 8-byte Folded Reload
	b	.LBB1_183
	.p2align	4, , 16
.LBB1_182:                              # %for.cond682.for.inc697_crit_edge.i
                                        #   in Loop: Header=BB1_183 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $a1, .LBB1_196
.LBB1_183:                              # %iter.check616
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_188 Depth 2
                                        #     Child Loop BB1_192 Depth 2
                                        #     Child Loop BB1_195 Depth 2
	slli.d	$t2, $a0, 3
	ldx.d	$t1, $fp, $t2
	ldx.d	$t2, $t6, $t2
	move	$t4, $zero
	bltu	$ra, $a6, .LBB1_194
# %bb.184:                              # %iter.check616
                                        #   in Loop: Header=BB1_183 Depth=1
	sub.d	$t3, $t2, $t1
	bltu	$t3, $a7, .LBB1_194
# %bb.185:                              # %vector.main.loop.iter.check618
                                        #   in Loop: Header=BB1_183 Depth=1
	bgeu	$ra, $t0, .LBB1_187
# %bb.186:                              #   in Loop: Header=BB1_183 Depth=1
	move	$t5, $zero
	b	.LBB1_191
	.p2align	4, , 16
.LBB1_187:                              # %vector.body624.preheader
                                        #   in Loop: Header=BB1_183 Depth=1
	addi.d	$t3, $t2, 32
	addi.d	$t4, $t1, 32
	move	$t5, $a2
	.p2align	4, , 16
.LBB1_188:                              # %vector.body624
                                        #   Parent Loop BB1_183 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr2, $t4, -32
	xvld	$xr3, $t4, 0
	xvfdiv.s	$xr2, $xr2, $xr0
	xvfdiv.s	$xr3, $xr3, $xr0
	xvst	$xr2, $t3, -32
	xvst	$xr3, $t3, 0
	addi.d	$t5, $t5, -16
	addi.d	$t3, $t3, 64
	addi.d	$t4, $t4, 64
	bnez	$t5, .LBB1_188
# %bb.189:                              # %middle.block629
                                        #   in Loop: Header=BB1_183 Depth=1
	beq	$ra, $a2, .LBB1_182
# %bb.190:                              # %vec.epilog.iter.check634
                                        #   in Loop: Header=BB1_183 Depth=1
	move	$t5, $a2
	move	$t4, $a2
	beqz	$a3, .LBB1_194
.LBB1_191:                              # %vec.epilog.ph633
                                        #   in Loop: Header=BB1_183 Depth=1
	add.d	$t3, $a5, $t5
	alsl.d	$t4, $t5, $t2, 2
	alsl.d	$t5, $t5, $t1, 2
	.p2align	4, , 16
.LBB1_192:                              # %vec.epilog.vector.body641
                                        #   Parent Loop BB1_183 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $t5, 0
	vfdiv.s	$vr2, $vr2, $vr1
	vst	$vr2, $t4, 0
	addi.d	$t3, $t3, 4
	addi.d	$t4, $t4, 16
	addi.d	$t5, $t5, 16
	bnez	$t3, .LBB1_192
# %bb.193:                              # %vec.epilog.middle.block645
                                        #   in Loop: Header=BB1_183 Depth=1
	move	$t4, $a4
	beq	$ra, $a4, .LBB1_182
.LBB1_194:                              # %for.body685.i.preheader
                                        #   in Loop: Header=BB1_183 Depth=1
	sub.d	$t3, $ra, $t4
	alsl.d	$t2, $t4, $t2, 2
	alsl.d	$t1, $t4, $t1, 2
	.p2align	4, , 16
.LBB1_195:                              # %for.body685.i
                                        #   Parent Loop BB1_183 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa2, $t1, 0
	fdiv.s	$fa2, $fa2, $fa6
	fst.s	$fa2, $t2, 0
	addi.d	$t3, $t3, -1
	addi.d	$t2, $t2, 4
	addi.d	$t1, $t1, 4
	bnez	$t3, .LBB1_195
	b	.LBB1_182
.LBB1_196:                              # %for.end699.i
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
.LBB1_197:                              # %MSalign2m2m_rec.exit
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 1
	move	$fp, $a0
	blt	$s7, $s1, .LBB1_201
# %bb.198:                              # %for.body122.lr.ph
	ld.d	$a0, $s8, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $zero
	addi.w	$s2, $a0, 0
	move	$s3, $s7
	.p2align	4, , 16
.LBB1_199:                              # %for.body122
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s8, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB1_262
# %bb.200:                              # %for.inc133
                                        #   in Loop: Header=BB1_199 Depth=1
	addi.w	$s0, $s0, 1
	addi.d	$s3, $s3, -1
	addi.d	$s8, $s8, 8
	bnez	$s3, .LBB1_199
.LBB1_201:                              # %for.cond136.preheader
	blt	$s5, $s1, .LBB1_205
# %bb.202:                              # %for.body139.lr.ph
	move	$s0, $zero
	addi.w	$fp, $fp, 0
	move	$s1, $s5
	.p2align	4, , 16
.LBB1_203:                              # %for.body139
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB1_263
# %bb.204:                              # %for.inc150
                                        #   in Loop: Header=BB1_203 Depth=1
	addi.w	$s0, $s0, 1
	addi.d	$s1, $s1, -1
	addi.d	$s6, $s6, 8
	bnez	$s1, .LBB1_203
.LBB1_205:                              # %for.end152
	movgr2fr.w	$fa0, $zero
	fld.d	$fs0, $sp, 496                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 504                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 512                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 520                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 536                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 544                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 568                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 576                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 584                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 592
	ret
.LBB1_206:                              # %vector.memcheck379
	alsl.d	$a2, $a0, $t0, 2
	alsl.d	$a3, $a0, $s3, 2
	addi.d	$a3, $a3, -4
	sltu	$a3, $t8, $a3
	sltu	$a4, $s3, $a2
	and	$a3, $a3, $a4
	bnez	$a3, .LBB1_107
# %bb.207:                              # %vector.memcheck379
	addi.d	$a3, $t7, 8
	sltu	$a3, $t8, $a3
	sltu	$a2, $s5, $a2
	and	$a2, $a3, $a2
	bnez	$a2, .LBB1_107
# %bb.208:                              # %vector.main.loop.iter.check396
	ori	$a1, $zero, 17
	bge	$t5, $a1, .LBB1_228
# %bb.209:
	move	$a2, $zero
	b	.LBB1_232
.LBB1_210:                              # %vector.memcheck428
	slli.d	$a0, $a2, 2
	move	$ra, $a2
	alsl.d	$a2, $a2, $s4, 2
	addi.d	$a3, $a0, 4
	add.d	$a0, $a4, $a3
	sltu	$a0, $s4, $a0
	sltu	$a4, $a1, $a2
	and	$a4, $a0, $a4
	move	$a0, $zero
	ld.d	$t1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 432                   # 8-byte Folded Reload
	bnez	$a4, .LBB1_227
# %bb.211:                              # %vector.memcheck428
	ld.d	$a4, $sp, 400                   # 8-byte Folded Reload
	add.d	$a3, $a4, $a3
	sltu	$a3, $s4, $a3
	sltu	$a2, $s5, $a2
	and	$a2, $a3, $a2
	ld.d	$t3, $sp, 384                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 376                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 392                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 328                   # 8-byte Folded Reload
	bnez	$a2, .LBB1_125
# %bb.212:                              # %vector.main.loop.iter.check444
	ori	$a0, $zero, 16
	bgeu	$t8, $a0, .LBB1_235
# %bb.213:
	move	$a0, $zero
	b	.LBB1_239
.LBB1_214:                              # %vector.memcheck477
	alsl.d	$a3, $t7, $s3, 2
	addi.d	$a4, $s6, 4
	add.d	$a2, $t1, $a4
	sltu	$a2, $s3, $a2
	sltu	$a5, $a0, $a3
	and	$a5, $a2, $a5
	move	$a2, $zero
	bnez	$a5, .LBB1_130
# %bb.215:                              # %vector.memcheck477
	addi.d	$a5, $s8, 4
	add.d	$a4, $s8, $a4
	sltu	$a4, $s3, $a4
	sltu	$a3, $a5, $a3
	and	$a3, $a4, $a3
	bnez	$a3, .LBB1_130
# %bb.216:                              # %vector.main.loop.iter.check495
	ori	$a2, $zero, 17
	bgeu	$a7, $a2, .LBB1_242
# %bb.217:
	move	$a2, $zero
	b	.LBB1_246
.LBB1_218:                              # %vector.memcheck528
	alsl.d	$a3, $t7, $a1, 2
	addi.d	$a4, $s6, 4
	add.d	$a2, $t1, $a4
	sltu	$a2, $a1, $a2
	sltu	$a5, $a0, $a3
	and	$a5, $a2, $a5
	move	$a2, $zero
	bnez	$a5, .LBB1_137
# %bb.219:                              # %vector.memcheck528
	addi.d	$a5, $s8, 4
	add.d	$a4, $s8, $a4
	sltu	$a4, $a1, $a4
	sltu	$a3, $a5, $a3
	and	$a3, $a4, $a3
	bnez	$a3, .LBB1_137
# %bb.220:                              # %vector.main.loop.iter.check545
	ori	$a2, $zero, 17
	bgeu	$a7, $a2, .LBB1_249
# %bb.221:
	move	$a2, $zero
	b	.LBB1_253
.LBB1_222:                              # %vector.memcheck578
	sub.d	$a4, $a4, $t2
	nor	$a4, $a4, $zero
	bstrpick.d	$a4, $a4, 31, 0
	slli.d	$a4, $a4, 2
	sub.d	$a5, $s6, $a4
	add.d	$a4, $a5, $t6
	addi.d	$a4, $a4, -4
	add.d	$a5, $s3, $a5
	alsl.d	$a6, $t7, $s3, 2
	addi.d	$a6, $a6, 4
	sltu	$a6, $a4, $a6
	sltu	$a5, $a5, $s7
	and	$a5, $a6, $a5
	bnez	$a5, .LBB1_140
# %bb.223:                              # %vector.memcheck578
	sltu	$a0, $a4, $a0
	sltu	$a4, $a2, $s7
	and	$a4, $a0, $a4
	move	$a0, $t7
	bnez	$a4, .LBB1_141
# %bb.224:                              # %vector.ph594
	bstrpick.d	$a0, $a3, 31, 0
	addi.d	$a3, $a0, 1
	bstrpick.d	$a0, $a3, 32, 3
	slli.d	$a4, $a0, 3
	sub.d	$a0, $t7, $a4
	xvreplgr2vr.w	$xr0, $t8
	xvldrepl.w	$xr1, $a2, 0
	addi.d	$a7, $s6, -28
	ld.d	$a5, $sp, 480                   # 8-byte Folded Reload
	add.d	$a5, $a5, $a7
	addi.d	$a6, $s7, -32
	add.d	$a7, $s3, $a7
	move	$t0, $a4
	.p2align	4, , 16
.LBB1_225:                              # %vector.body599
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a7, 0
	xvfadd.s	$xr2, $xr2, $xr1
	xvst	$xr2, $a6, 0
	xvst	$xr0, $a5, 0
	addi.d	$t0, $t0, -8
	addi.d	$a5, $a5, -32
	addi.d	$a6, $a6, -32
	addi.d	$a7, $a7, -32
	bnez	$t0, .LBB1_225
# %bb.226:                              # %middle.block608
	ld.d	$a7, $sp, 392                   # 8-byte Folded Reload
	bne	$a3, $a4, .LBB1_141
	b	.LBB1_143
.LBB1_227:
	ld.d	$t3, $sp, 384                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 376                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 392                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 328                   # 8-byte Folded Reload
	b	.LBB1_125
.LBB1_228:                              # %vector.ph397
	ld.d	$a2, $sp, 472                   # 8-byte Folded Reload
	bstrins.d	$a2, $zero, 3, 0
	xvldrepl.w	$xr0, $s5, 0
	addi.d	$a1, $s3, 32
	addi.d	$a3, $t0, 36
	ld.d	$a4, $sp, 480                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 36
	xvrepli.b	$xr1, 0
	move	$a5, $a2
	.p2align	4, , 16
.LBB1_229:                              # %vector.body400
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a1, -32
	xvld	$xr3, $a1, 0
	xvfadd.s	$xr2, $xr2, $xr0
	xvfadd.s	$xr3, $xr3, $xr0
	xvst	$xr2, $a3, -32
	xvst	$xr3, $a3, 0
	xvst	$xr1, $a4, -32
	xvst	$xr1, $a4, 0
	addi.d	$a5, $a5, -16
	addi.d	$a1, $a1, 64
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB1_229
# %bb.230:                              # %middle.block407
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	beq	$a1, $a2, .LBB1_109
# %bb.231:                              # %vec.epilog.iter.check412
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	andi	$a1, $a1, 12
	beqz	$a1, .LBB1_258
.LBB1_232:                              # %vec.epilog.ph411
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	move	$a3, $a1
	bstrins.d	$a3, $zero, 1, 0
	ori	$a4, $zero, 1
	bstrins.d	$a1, $a4, 1, 0
	vldrepl.w	$vr0, $s5, 0
	slli.d	$a5, $a2, 2
	alsl.d	$a4, $a2, $s3, 2
	addi.d	$a6, $a5, 4
	add.d	$a5, $t0, $a6
	ld.d	$t1, $sp, 480                   # 8-byte Folded Reload
	add.d	$a6, $t1, $a6
	sub.d	$a2, $a2, $a3
	vrepli.b	$vr1, 0
	.p2align	4, , 16
.LBB1_233:                              # %vec.epilog.vector.body417
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a4, 0
	vfadd.s	$vr2, $vr2, $vr0
	vst	$vr2, $a5, 0
	vst	$vr1, $a6, 0
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	addi.d	$a2, $a2, 4
	addi.d	$a6, $a6, 16
	bnez	$a2, .LBB1_233
# %bb.234:                              # %vec.epilog.middle.block424
	ld.d	$a2, $sp, 472                   # 8-byte Folded Reload
	bne	$a2, $a3, .LBB1_107
	b	.LBB1_109
.LBB1_235:                              # %vector.ph445
	bstrpick.d	$a0, $ra, 30, 4
	xvldrepl.w	$xr0, $a1, 0
	slli.d	$a0, $a0, 4
	ld.d	$a2, $sp, 400                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 36
	addi.d	$a3, $s4, 32
	move	$a4, $a0
	.p2align	4, , 16
.LBB1_236:                              # %vector.body448
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a2, -32
	xvld	$xr2, $a2, 0
	xvld	$xr3, $a3, -32
	xvld	$xr4, $a3, 0
	xvfadd.s	$xr1, $xr0, $xr1
	xvfadd.s	$xr2, $xr0, $xr2
	xvfadd.s	$xr1, $xr3, $xr1
	xvfadd.s	$xr2, $xr4, $xr2
	xvst	$xr1, $a3, -32
	xvst	$xr2, $a3, 0
	addi.d	$a2, $a2, 64
	addi.d	$a4, $a4, -16
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB1_236
# %bb.237:                              # %middle.block457
	beq	$a0, $ra, .LBB1_127
# %bb.238:                              # %vec.epilog.iter.check462
	andi	$a2, $ra, 12
	beqz	$a2, .LBB1_125
.LBB1_239:                              # %vec.epilog.ph461
	move	$a4, $a0
	bstrpick.d	$a0, $ra, 30, 2
	slli.d	$a0, $a0, 2
	vldrepl.w	$vr0, $a1, 0
	ld.d	$a2, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$a2, $a4, $a2, 2
	addi.d	$a2, $a2, 4
	sub.d	$a3, $a4, $a0
	alsl.d	$a4, $a4, $s4, 2
	.p2align	4, , 16
.LBB1_240:                              # %vec.epilog.vector.body467
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a2, 0
	vld	$vr2, $a4, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $a4, 0
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 16
	bnez	$a3, .LBB1_240
# %bb.241:                              # %vec.epilog.middle.block474
	bne	$a0, $ra, .LBB1_125
	b	.LBB1_127
.LBB1_242:                              # %vector.ph496
	bstrpick.d	$a2, $t7, 30, 4
	xvldrepl.w	$xr0, $a0, 0
	slli.d	$a2, $a2, 4
	addi.d	$a3, $s8, 36
	addi.d	$a4, $s3, 32
	move	$a5, $a2
	.p2align	4, , 16
.LBB1_243:                              # %vector.body499
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a3, -32
	xvld	$xr2, $a3, 0
	xvld	$xr3, $a4, -32
	xvld	$xr4, $a4, 0
	xvfadd.s	$xr1, $xr0, $xr1
	xvfadd.s	$xr2, $xr0, $xr2
	xvfadd.s	$xr1, $xr3, $xr1
	xvfadd.s	$xr2, $xr4, $xr2
	xvst	$xr1, $a4, -32
	xvst	$xr2, $a4, 0
	addi.d	$a3, $a3, 64
	addi.d	$a5, $a5, -16
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB1_243
# %bb.244:                              # %middle.block508
	beq	$a2, $t7, .LBB1_132
# %bb.245:                              # %vec.epilog.iter.check513
	andi	$a3, $t7, 12
	beqz	$a3, .LBB1_130
.LBB1_246:                              # %vec.epilog.ph512
	move	$a5, $a2
	bstrpick.d	$a2, $t7, 30, 2
	slli.d	$a2, $a2, 2
	vldrepl.w	$vr0, $a0, 0
	alsl.d	$a3, $a5, $s8, 2
	addi.d	$a3, $a3, 4
	sub.d	$a4, $a5, $a2
	alsl.d	$a5, $a5, $s3, 2
	.p2align	4, , 16
.LBB1_247:                              # %vec.epilog.vector.body518
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a3, 0
	vld	$vr2, $a5, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $a5, 0
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 16
	bnez	$a4, .LBB1_247
# %bb.248:                              # %vec.epilog.middle.block525
	bne	$a2, $t7, .LBB1_130
	b	.LBB1_132
.LBB1_249:                              # %vector.ph546
	bstrpick.d	$a2, $t7, 30, 4
	xvldrepl.w	$xr0, $a0, 0
	slli.d	$a2, $a2, 4
	addi.d	$a3, $s8, 36
	addi.d	$a4, $a1, 32
	move	$a5, $a2
	.p2align	4, , 16
.LBB1_250:                              # %vector.body549
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a3, -32
	xvld	$xr2, $a3, 0
	xvld	$xr3, $a4, -32
	xvld	$xr4, $a4, 0
	xvfadd.s	$xr1, $xr0, $xr1
	xvfadd.s	$xr2, $xr0, $xr2
	xvfadd.s	$xr1, $xr1, $xr3
	xvfadd.s	$xr2, $xr2, $xr4
	xvst	$xr1, $a4, -32
	xvst	$xr2, $a4, 0
	addi.d	$a3, $a3, 64
	addi.d	$a5, $a5, -16
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB1_250
# %bb.251:                              # %middle.block558
	beq	$a2, $t7, .LBB1_139
# %bb.252:                              # %vec.epilog.iter.check563
	andi	$a3, $t7, 12
	beqz	$a3, .LBB1_137
.LBB1_253:                              # %vec.epilog.ph562
	move	$a5, $a2
	bstrpick.d	$a2, $t7, 30, 2
	slli.d	$a2, $a2, 2
	vldrepl.w	$vr0, $a0, 0
	alsl.d	$a3, $a5, $s8, 2
	addi.d	$a3, $a3, 4
	sub.d	$a4, $a5, $a2
	alsl.d	$a5, $a5, $a1, 2
	.p2align	4, , 16
.LBB1_254:                              # %vec.epilog.vector.body568
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a3, 0
	vld	$vr2, $a5, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr1, $vr2
	vst	$vr1, $a5, 0
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 16
	bnez	$a4, .LBB1_254
# %bb.255:                              # %vec.epilog.middle.block575
	bne	$a2, $t7, .LBB1_137
	b	.LBB1_139
.LBB1_256:
	addi.d	$fp, $a1, 1
	b	.LBB1_47
.LBB1_257:
	addi.d	$a1, $a2, 1
	b	.LBB1_50
.LBB1_258:
	addi.d	$a1, $a2, 1
	b	.LBB1_107
.LBB1_259:                              # %if.then
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	move	$a2, $fp
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	b	.LBB1_261
.LBB1_260:                              # %if.then45
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	move	$a2, $s8
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
.LBB1_261:                              # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 27
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB1_262:                              # %if.then129
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	move	$a2, $s0
	move	$a3, $s7
	b	.LBB1_264
.LBB1_263:                              # %if.then146
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	move	$a2, $s0
	move	$a3, $s5
.LBB1_264:                              # %if.then129
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 42
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	Lalign2m2m_hmout, .Lfunc_end1-Lalign2m2m_hmout
                                        # -- End function
	.p2align	5                               # -- Begin function match_calc
	.type	match_calc,@function
match_calc:                             # @match_calc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -976
	st.d	$fp, $sp, 968                   # 8-byte Folded Spill
	st.d	$s0, $sp, 960                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 952                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 944                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 936                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 928                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 920                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 912                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 904                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 896                  # 8-byte Folded Spill
	beqz	$a7, .LBB2_7
# %bb.1:                                # %for.cond1.preheader.preheader
	move	$a7, $zero
	movgr2fr.w	$fa0, $zero
	ori	$t0, $zero, 104
	addi.w	$t1, $zero, -1
	lu32i.d	$t1, 0
	b	.LBB2_3
	.p2align	4, , 16
.LBB2_2:                                # %for.end
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$t2, $t6, 0
	slli.d	$t3, $t3, 2
	addi.d	$a7, $a7, 1
	stx.w	$t1, $t2, $t3
	beq	$a7, $a4, .LBB2_7
.LBB2_3:                                # %for.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_5 Depth 2
	slli.d	$t2, $a7, 3
	ldx.d	$t2, $a2, $t2
	move	$t4, $zero
	move	$t5, $zero
	move	$t3, $zero
	alsl.d	$t7, $a7, $a5, 3
	alsl.d	$t6, $a7, $a6, 3
	b	.LBB2_5
	.p2align	4, , 16
.LBB2_4:                                # %for.inc
                                        #   in Loop: Header=BB2_5 Depth=2
	addi.d	$t4, $t4, 4
	addi.d	$t5, $t5, 1
	beq	$t4, $t0, .LBB2_2
.LBB2_5:                                # %for.body3
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$fa1, $t2, $t4
	fcmp.ceq.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_4
# %bb.6:                                # %if.then7
                                        #   in Loop: Header=BB2_5 Depth=2
	ld.d	$t8, $t7, 0
	ld.d	$fp, $t6, 0
	slli.d	$s0, $t3, 2
	fstx.s	$fa1, $t8, $s0
	stx.w	$t5, $fp, $s0
	addi.w	$t3, $t3, 1
	b	.LBB2_4
.LBB2_7:                                # %if.end28
	pcalau12i	$a2, %got_pc_hi20(RNAthr)
	ld.d	$a7, $a2, %got_pc_lo12(RNAthr)
	slli.d	$a2, $a3, 3
	ldx.d	$a2, $a1, $a2
	move	$a3, $zero
	ld.w	$a1, $a7, 0
	fld.s	$fa1, $a2, 48
	fld.s	$fa0, $a2, 52
	fld.s	$fs2, $a2, 0
	fld.s	$fs1, $a2, 4
	fld.s	$fs0, $a2, 8
	fld.s	$ft15, $a2, 12
	fld.s	$ft13, $a2, 16
	fld.s	$fa2, $a2, 20
	fld.s	$fa3, $a2, 24
	fld.s	$fa4, $a2, 28
	fld.s	$fa5, $a2, 32
	fld.s	$fa6, $a2, 36
	fld.s	$fa7, $a2, 40
	fld.s	$ft0, $a2, 44
	fld.s	$ft1, $a2, 56
	fld.s	$ft2, $a2, 60
	fld.s	$ft3, $a2, 64
	fld.s	$ft4, $a2, 68
	fld.s	$ft5, $a2, 72
	fld.s	$ft6, $a2, 76
	fld.s	$ft7, $a2, 80
	fld.s	$ft8, $a2, 84
	fld.s	$ft9, $a2, 88
	fld.s	$ft10, $a2, 92
	fld.s	$ft11, $a2, 96
	fld.s	$ft12, $a2, 100
	xvreplgr2vr.w	$xr22, $a1
	xvst	$xr1, $sp, 656                  # 32-byte Folded Spill
	xvreplve0.w	$xr27, $xr1
	xvst	$xr0, $sp, 688                  # 32-byte Folded Spill
	xvreplve0.w	$xr28, $xr0
	xvreplve0.w	$xr29, $xr26
	xvreplve0.w	$xr30, $xr25
	xvst	$xr24, $sp, 16                  # 32-byte Folded Spill
	xvreplve0.w	$xr31, $xr24
	pcalau12i	$a2, %got_pc_hi20(n_dis)
	ld.d	$a2, $a2, %got_pc_lo12(n_dis)
	ori	$a7, $zero, 2080
	ori	$t0, $zero, 2184
	ori	$t1, $zero, 2288
	ori	$t2, $zero, 2392
	ori	$t3, $zero, 2496
	ori	$t4, $zero, 2600
	addi.d	$t5, $sp, 792
	ori	$t6, $zero, 96
	xvst	$xr23, $sp, 48                  # 32-byte Folded Spill
	xvreplve0.w	$xr0, $xr23
	xvst	$xr21, $sp, 80                  # 32-byte Folded Spill
	xvreplve0.w	$xr1, $xr21
	xvst	$xr2, $sp, 112                  # 32-byte Folded Spill
	xvreplve0.w	$xr2, $xr2
	xvst	$xr3, $sp, 144                  # 32-byte Folded Spill
	xvreplve0.w	$xr3, $xr3
	xvst	$xr4, $sp, 176                  # 32-byte Folded Spill
	xvreplve0.w	$xr4, $xr4
	xvst	$xr5, $sp, 208                  # 32-byte Folded Spill
	xvreplve0.w	$xr5, $xr5
	xvst	$xr6, $sp, 240                  # 32-byte Folded Spill
	xvreplve0.w	$xr6, $xr6
	xvst	$xr7, $sp, 272                  # 32-byte Folded Spill
	xvreplve0.w	$xr7, $xr7
	xvst	$xr8, $sp, 304                  # 32-byte Folded Spill
	xvreplve0.w	$xr8, $xr8
	xvst	$xr9, $sp, 336                  # 32-byte Folded Spill
	xvreplve0.w	$xr9, $xr9
	xvst	$xr10, $sp, 368                 # 32-byte Folded Spill
	xvreplve0.w	$xr10, $xr10
	xvst	$xr11, $sp, 400                 # 32-byte Folded Spill
	xvreplve0.w	$xr11, $xr11
	xvst	$xr12, $sp, 432                 # 32-byte Folded Spill
	xvreplve0.w	$xr12, $xr12
	xvst	$xr13, $sp, 464                 # 32-byte Folded Spill
	xvreplve0.w	$xr13, $xr13
	xvst	$xr14, $sp, 496                 # 32-byte Folded Spill
	xvreplve0.w	$xr14, $xr14
	xvst	$xr15, $sp, 528                 # 32-byte Folded Spill
	xvreplve0.w	$xr15, $xr15
	xvst	$xr16, $sp, 560                 # 32-byte Folded Spill
	xvreplve0.w	$xr16, $xr16
	xvst	$xr17, $sp, 592                 # 32-byte Folded Spill
	xvreplve0.w	$xr17, $xr17
	xvst	$xr18, $sp, 624                 # 32-byte Folded Spill
	xvreplve0.w	$xr18, $xr18
	xvst	$xr19, $sp, 720                 # 32-byte Folded Spill
	xvreplve0.w	$xr19, $xr19
	xvst	$xr20, $sp, 752                 # 32-byte Folded Spill
	xvreplve0.w	$xr20, $xr20
	.p2align	4, , 16
.LBB2_8:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvldx	$xr21, $a2, $a3
	add.d	$t7, $a2, $a3
	xvsub.w	$xr21, $xr21, $xr22
	xvld	$xr23, $t7, 104
	xvffint.s.w	$xr21, $xr21
	xvrepli.b	$xr24, 0
	xvfmadd.s	$xr21, $xr21, $xr29, $xr24
	xvsub.w	$xr23, $xr23, $xr22
	xvld	$xr24, $t7, 208
	xvffint.s.w	$xr23, $xr23
	xvfmadd.s	$xr21, $xr23, $xr30, $xr21
	xvld	$xr23, $t7, 312
	xvsub.w	$xr24, $xr24, $xr22
	xvffint.s.w	$xr24, $xr24
	xvfmadd.s	$xr21, $xr24, $xr31, $xr21
	xvsub.w	$xr23, $xr23, $xr22
	xvld	$xr24, $t7, 416
	xvffint.s.w	$xr23, $xr23
	xvfmadd.s	$xr21, $xr23, $xr0, $xr21
	xvld	$xr23, $t7, 520
	xvsub.w	$xr24, $xr24, $xr22
	xvffint.s.w	$xr24, $xr24
	xvfmadd.s	$xr21, $xr24, $xr1, $xr21
	xvsub.w	$xr23, $xr23, $xr22
	xvld	$xr24, $t7, 624
	xvffint.s.w	$xr23, $xr23
	xvfmadd.s	$xr21, $xr23, $xr2, $xr21
	xvld	$xr23, $t7, 728
	xvsub.w	$xr24, $xr24, $xr22
	xvffint.s.w	$xr24, $xr24
	xvfmadd.s	$xr21, $xr24, $xr3, $xr21
	xvsub.w	$xr23, $xr23, $xr22
	xvld	$xr24, $t7, 832
	xvffint.s.w	$xr23, $xr23
	xvfmadd.s	$xr21, $xr23, $xr4, $xr21
	xvld	$xr23, $t7, 936
	xvsub.w	$xr24, $xr24, $xr22
	xvffint.s.w	$xr24, $xr24
	xvfmadd.s	$xr21, $xr24, $xr5, $xr21
	xvsub.w	$xr23, $xr23, $xr22
	xvld	$xr24, $t7, 1040
	xvffint.s.w	$xr23, $xr23
	xvfmadd.s	$xr21, $xr23, $xr6, $xr21
	xvld	$xr23, $t7, 1144
	xvsub.w	$xr24, $xr24, $xr22
	xvffint.s.w	$xr24, $xr24
	xvfmadd.s	$xr21, $xr24, $xr7, $xr21
	xvsub.w	$xr23, $xr23, $xr22
	xvld	$xr24, $t7, 1248
	xvffint.s.w	$xr23, $xr23
	xvfmadd.s	$xr21, $xr23, $xr8, $xr21
	xvld	$xr23, $t7, 1352
	xvsub.w	$xr24, $xr24, $xr22
	xvffint.s.w	$xr24, $xr24
	xvfmadd.s	$xr21, $xr24, $xr27, $xr21
	xvsub.w	$xr23, $xr23, $xr22
	xvld	$xr24, $t7, 1456
	xvffint.s.w	$xr23, $xr23
	xvfmadd.s	$xr21, $xr23, $xr28, $xr21
	xvld	$xr23, $t7, 1560
	xvsub.w	$xr24, $xr24, $xr22
	xvffint.s.w	$xr24, $xr24
	xvfmadd.s	$xr21, $xr24, $xr9, $xr21
	xvsub.w	$xr23, $xr23, $xr22
	xvld	$xr24, $t7, 1664
	xvffint.s.w	$xr23, $xr23
	xvfmadd.s	$xr21, $xr23, $xr10, $xr21
	xvld	$xr23, $t7, 1768
	xvsub.w	$xr24, $xr24, $xr22
	xvffint.s.w	$xr24, $xr24
	xvfmadd.s	$xr21, $xr24, $xr11, $xr21
	xvsub.w	$xr23, $xr23, $xr22
	xvld	$xr24, $t7, 1872
	xvffint.s.w	$xr23, $xr23
	xvfmadd.s	$xr21, $xr23, $xr12, $xr21
	xvld	$xr23, $t7, 1976
	xvsub.w	$xr24, $xr24, $xr22
	xvffint.s.w	$xr24, $xr24
	xvfmadd.s	$xr21, $xr24, $xr13, $xr21
	xvsub.w	$xr23, $xr23, $xr22
	xvldx	$xr24, $t7, $a7
	xvffint.s.w	$xr23, $xr23
	xvfmadd.s	$xr21, $xr23, $xr14, $xr21
	xvldx	$xr23, $t7, $t0
	xvsub.w	$xr24, $xr24, $xr22
	xvffint.s.w	$xr24, $xr24
	xvfmadd.s	$xr21, $xr24, $xr15, $xr21
	xvsub.w	$xr23, $xr23, $xr22
	xvldx	$xr24, $t7, $t1
	xvffint.s.w	$xr23, $xr23
	xvfmadd.s	$xr21, $xr23, $xr16, $xr21
	xvldx	$xr23, $t7, $t2
	xvsub.w	$xr24, $xr24, $xr22
	xvffint.s.w	$xr24, $xr24
	xvfmadd.s	$xr21, $xr24, $xr17, $xr21
	xvsub.w	$xr23, $xr23, $xr22
	xvldx	$xr24, $t7, $t3
	xvffint.s.w	$xr23, $xr23
	xvfmadd.s	$xr21, $xr23, $xr18, $xr21
	xvldx	$xr23, $t7, $t4
	xvsub.w	$xr24, $xr24, $xr22
	xvffint.s.w	$xr24, $xr24
	xvfmadd.s	$xr21, $xr24, $xr19, $xr21
	xvsub.w	$xr23, $xr23, $xr22
	xvffint.s.w	$xr23, $xr23
	xvfmadd.s	$xr21, $xr23, $xr20, $xr21
	xvstx	$xr21, $a3, $t5
	addi.d	$a3, $a3, 32
	bne	$a3, $t6, .LBB2_8
# %bb.9:                                # %for.body31
	ld.w	$a3, $a2, 96
	sub.d	$a3, $a3, $a1
	movgr2fr.w	$fa0, $a3
	ld.w	$a3, $a2, 200
	ffint.s.w	$fa0, $fa0
	movgr2fr.w	$ft14, $zero
	fmadd.s	$fa0, $fa0, $fs2, $ft14
	sub.d	$a3, $a3, $a1
	ld.w	$a7, $a2, 304
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	fmadd.s	$fa0, $fa1, $fs1, $fa0
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 408
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	xvld	$xr11, $sp, 16                  # 32-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft3, $fa0
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 512
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	xvld	$xr9, $sp, 48                   # 32-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft1, $fa0
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 616
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	xvld	$xr8, $sp, 80                   # 32-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft0, $fa0
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 720
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	xvld	$xr7, $sp, 112                  # 32-byte Folded Reload
	fmadd.s	$fa0, $fa1, $fa7, $fa0
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 824
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	xvld	$xr5, $sp, 144                  # 32-byte Folded Reload
	fmadd.s	$fa0, $fa1, $fa5, $fa0
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 928
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	xvld	$xr3, $sp, 176                  # 32-byte Folded Reload
	fmadd.s	$fa0, $fa1, $fa3, $fa0
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 1032
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	xvld	$xr4, $sp, 208                  # 32-byte Folded Reload
	fmadd.s	$fa0, $fa1, $fa4, $fa0
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 1136
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	xvld	$xr6, $sp, 240                  # 32-byte Folded Reload
	fmadd.s	$fa0, $fa1, $fa6, $fa0
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 1240
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	xvld	$xr10, $sp, 272                 # 32-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft2, $fa0
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 1344
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	xvld	$xr13, $sp, 304                 # 32-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft5, $fa0
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 1448
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	xvld	$xr17, $sp, 656                 # 32-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft9, $fa0
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 1552
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	xvld	$xr16, $sp, 688                 # 32-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft8, $fa0
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 1656
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	xvld	$xr30, $sp, 336                 # 32-byte Folded Reload
	fmadd.s	$fa0, $fa1, $fs6, $fa0
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 1760
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	xvld	$xr29, $sp, 368                 # 32-byte Folded Reload
	fmadd.s	$fa0, $fa1, $fs5, $fa0
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 1864
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	xvld	$xr28, $sp, 400                 # 32-byte Folded Reload
	fmadd.s	$fa0, $fa1, $fs4, $fa0
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 1968
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	xvld	$xr27, $sp, 432                 # 32-byte Folded Reload
	fmadd.s	$fa0, $fa1, $fs3, $fa0
	sub.d	$a3, $a7, $a1
	ori	$a7, $zero, 2072
	ldx.w	$a7, $a2, $a7
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	xvld	$xr24, $sp, 464                 # 32-byte Folded Reload
	fmadd.s	$fa0, $fa1, $fs0, $fa0
	sub.d	$a3, $a7, $a1
	ori	$a7, $zero, 2176
	ldx.w	$a7, $a2, $a7
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	xvld	$xr23, $sp, 496                 # 32-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft15, $fa0
	sub.d	$a3, $a7, $a1
	ori	$a7, $zero, 2280
	ldx.w	$a7, $a2, $a7
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	xvld	$xr21, $sp, 528                 # 32-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft13, $fa0
	sub.d	$a3, $a7, $a1
	ori	$a7, $zero, 2384
	ldx.w	$a7, $a2, $a7
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	xvld	$xr20, $sp, 560                 # 32-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft12, $fa0
	sub.d	$a3, $a7, $a1
	ori	$a7, $zero, 2488
	ldx.w	$a7, $a2, $a7
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	xvld	$xr19, $sp, 592                 # 32-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft11, $fa0
	sub.d	$a3, $a7, $a1
	ori	$a7, $zero, 2592
	ldx.w	$a7, $a2, $a7
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	xvld	$xr18, $sp, 624                 # 32-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft10, $fa0
	sub.d	$a3, $a7, $a1
	ori	$a7, $zero, 2696
	ldx.w	$a7, $a2, $a7
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	xvld	$xr15, $sp, 720                 # 32-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft7, $fa0
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 100
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	xvld	$xr14, $sp, 752                 # 32-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft6, $fa0
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 204
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	fmadd.s	$fa1, $fa1, $fs2, $ft14
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 308
	movgr2fr.w	$fa2, $a3
	ffint.s.w	$fa2, $fa2
	fmadd.s	$fa1, $fa2, $fs1, $fa1
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 412
	movgr2fr.w	$fa2, $a3
	ffint.s.w	$fa2, $fa2
	fmadd.s	$fa1, $fa2, $ft3, $fa1
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 516
	movgr2fr.w	$fa2, $a3
	ffint.s.w	$fa2, $fa2
	fmadd.s	$fa1, $fa2, $ft1, $fa1
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 620
	movgr2fr.w	$fa2, $a3
	ffint.s.w	$fa2, $fa2
	fmadd.s	$fa1, $fa2, $ft0, $fa1
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 724
	movgr2fr.w	$fa2, $a3
	ffint.s.w	$fa2, $fa2
	fmadd.s	$fa1, $fa2, $fa7, $fa1
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 828
	movgr2fr.w	$fa2, $a3
	ffint.s.w	$fa2, $fa2
	fmadd.s	$fa1, $fa2, $fa5, $fa1
	sub.d	$a3, $a7, $a1
	movgr2fr.w	$fa2, $a3
	ld.w	$a3, $a2, 932
	ffint.s.w	$fa2, $fa2
	fmadd.s	$fa1, $fa2, $fa3, $fa1
	ld.w	$a7, $a2, 1036
	sub.d	$a3, $a3, $a1
	movgr2fr.w	$fa2, $a3
	ffint.s.w	$fa2, $fa2
	sub.d	$a3, $a7, $a1
	ld.w	$a7, $a2, 1140
	movgr2fr.w	$fa3, $a3
	ld.w	$a3, $a2, 1244
	fmadd.s	$fa4, $fa2, $fa4, $fa1
	sub.d	$a7, $a7, $a1
	movgr2fr.w	$fa5, $a7
	sub.d	$a3, $a3, $a1
	ld.w	$a7, $a2, 1348
	movgr2fr.w	$fa7, $a3
	ld.w	$a3, $a2, 1452
	ffint.s.w	$fa3, $fa3
	sub.d	$a7, $a7, $a1
	movgr2fr.w	$fa1, $a7
	sub.d	$a3, $a3, $a1
	ld.w	$a7, $a2, 1556
	movgr2fr.w	$fa2, $a3
	ld.w	$a3, $a2, 1660
	fmadd.s	$ft0, $fa3, $fa6, $fa4
	sub.d	$a7, $a7, $a1
	movgr2fr.w	$fa3, $a7
	sub.d	$a3, $a3, $a1
	ld.w	$a7, $a2, 1764
	movgr2fr.w	$fa4, $a3
	ld.w	$a3, $a2, 1868
	ffint.s.w	$ft1, $fa5
	sub.d	$a7, $a7, $a1
	movgr2fr.w	$fa5, $a7
	sub.d	$a3, $a3, $a1
	movgr2fr.w	$fa6, $a3
	ld.w	$a3, $a2, 1972
	ori	$a7, $zero, 2076
	ldx.w	$a7, $a2, $a7
	fmadd.s	$ft0, $ft1, $ft2, $ft0
	sub.d	$a3, $a3, $a1
	movgr2fr.w	$ft1, $a3
	sub.d	$a3, $a7, $a1
	movgr2fr.w	$ft2, $a3
	ori	$a3, $zero, 2180
	ldx.w	$a3, $a2, $a3
	ori	$a7, $zero, 2284
	ldx.w	$a7, $a2, $a7
	ffint.s.w	$fa7, $fa7
	sub.d	$a3, $a3, $a1
	movgr2fr.w	$ft3, $a3
	sub.d	$a3, $a7, $a1
	movgr2fr.w	$ft4, $a3
	ori	$a3, $zero, 2388
	ldx.w	$a3, $a2, $a3
	ori	$a7, $zero, 2492
	ldx.w	$a7, $a2, $a7
	fmadd.s	$fa7, $fa7, $ft5, $ft0
	sub.d	$a3, $a3, $a1
	movgr2fr.w	$ft0, $a3
	sub.d	$a3, $a7, $a1
	movgr2fr.w	$ft5, $a3
	ori	$a3, $zero, 2596
	ldx.w	$a3, $a2, $a3
	ori	$a7, $zero, 2700
	ldx.w	$a2, $a2, $a7
	fst.s	$fa0, $sp, 888
	ffint.s.w	$fa0, $fa1
	fmadd.s	$fa0, $fa0, $ft9, $fa7
	ffint.s.w	$fa1, $fa2
	fmadd.s	$fa0, $fa1, $ft8, $fa0
	ffint.s.w	$fa1, $fa3
	fmadd.s	$fa0, $fa1, $fs6, $fa0
	ffint.s.w	$fa1, $fa4
	fmadd.s	$fa0, $fa1, $fs5, $fa0
	ffint.s.w	$fa1, $fa5
	fmadd.s	$fa0, $fa1, $fs4, $fa0
	ffint.s.w	$fa1, $fa6
	fmadd.s	$fa0, $fa1, $fs3, $fa0
	ffint.s.w	$fa1, $ft1
	fmadd.s	$fa0, $fa1, $fs0, $fa0
	ffint.s.w	$fa1, $ft2
	fmadd.s	$fa0, $fa1, $ft15, $fa0
	ffint.s.w	$fa1, $ft3
	fmadd.s	$fa0, $fa1, $ft13, $fa0
	ffint.s.w	$fa1, $ft4
	fmadd.s	$fa0, $fa1, $ft12, $fa0
	ffint.s.w	$fa1, $ft0
	fmadd.s	$fa0, $fa1, $ft11, $fa0
	ffint.s.w	$fa1, $ft5
	fmadd.s	$fa0, $fa1, $ft10, $fa0
	sub.d	$a3, $a3, $a1
	movgr2fr.w	$fa1, $a3
	ffint.s.w	$fa1, $fa1
	fmadd.s	$fa0, $fa1, $ft7, $fa0
	sub.d	$a1, $a2, $a1
	movgr2fr.w	$fa1, $a1
	ffint.s.w	$fa1, $fa1
	fmadd.s	$fa0, $fa1, $ft6, $fa0
	fst.s	$fa0, $sp, 892
	addi.d	$a1, $sp, 792
	addi.w	$a2, $zero, -1
	b	.LBB2_11
	.p2align	4, , 16
.LBB2_10:                               # %for.end66
                                        #   in Loop: Header=BB2_11 Depth=1
	addi.w	$a4, $a4, -1
	addi.d	$a0, $a0, 4
	addi.d	$a6, $a6, 8
	addi.d	$a5, $a5, 8
	beqz	$a4, .LBB2_14
.LBB2_11:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_13 Depth 2
	ld.d	$t0, $a6, 0
	ld.wu	$a3, $t0, 0
	addi.w	$a7, $a3, 0
	st.w	$zero, $a0, 0
	bltz	$a7, .LBB2_10
# %bb.12:                               # %for.body59.lr.ph
                                        #   in Loop: Header=BB2_11 Depth=1
	ld.d	$a7, $a5, 0
	addi.d	$t0, $t0, 4
	fmov.s	$fa0, $ft14
	.p2align	4, , 16
.LBB2_13:                               # %for.body59
                                        #   Parent Loop BB2_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a3, $a3, 2
	fldx.s	$fa1, $a3, $a1
	fld.s	$fa2, $a7, 0
	ld.wu	$a3, $t0, 0
	fmadd.s	$fa0, $fa1, $fa2, $fa0
	fst.s	$fa0, $a0, 0
	addi.w	$t1, $a3, 0
	addi.d	$a7, $a7, 4
	addi.d	$t0, $t0, 4
	blt	$a2, $t1, .LBB2_13
	b	.LBB2_10
.LBB2_14:                               # %while.end
	fld.d	$fs7, $sp, 896                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 904                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 912                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 920                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 928                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 936                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 944                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 952                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 960                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 968                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 976
	ret
.Lfunc_end2:
	.size	match_calc, .Lfunc_end2-match_calc
                                        # -- End function
	.p2align	5                               # -- Begin function match_ribosum
	.type	match_ribosum,@function
match_ribosum:                          # @match_ribosum
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -288
	st.d	$fp, $sp, 280                   # 8-byte Folded Spill
	st.d	$s0, $sp, 272                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 264                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 256                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 248                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 240                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 232                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 224                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 216                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 208                  # 8-byte Folded Spill
	beqz	$a7, .LBB3_7
# %bb.1:                                # %for.cond1.preheader.preheader
	move	$a7, $zero
	movgr2fr.w	$fa0, $zero
	ori	$t0, $zero, 148
	addi.w	$t1, $zero, -1
	lu32i.d	$t1, 0
	b	.LBB3_3
	.p2align	4, , 16
.LBB3_2:                                # %for.end
                                        #   in Loop: Header=BB3_3 Depth=1
	ld.d	$t2, $t6, 0
	slli.d	$t3, $t3, 2
	addi.d	$a7, $a7, 1
	stx.w	$t1, $t2, $t3
	beq	$a7, $a4, .LBB3_7
.LBB3_3:                                # %for.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_5 Depth 2
	slli.d	$t2, $a7, 3
	ldx.d	$t2, $a2, $t2
	move	$t4, $zero
	move	$t5, $zero
	move	$t3, $zero
	alsl.d	$t7, $a7, $a5, 3
	alsl.d	$t6, $a7, $a6, 3
	b	.LBB3_5
	.p2align	4, , 16
.LBB3_4:                                # %for.inc
                                        #   in Loop: Header=BB3_5 Depth=2
	addi.d	$t4, $t4, 4
	addi.d	$t5, $t5, 1
	beq	$t4, $t0, .LBB3_2
.LBB3_5:                                # %for.body3
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$fa1, $t2, $t4
	fcmp.ceq.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB3_4
# %bb.6:                                # %if.then7
                                        #   in Loop: Header=BB3_5 Depth=2
	ld.d	$t8, $t7, 0
	ld.d	$fp, $t6, 0
	slli.d	$s0, $t3, 2
	fstx.s	$fa1, $t8, $s0
	stx.w	$t5, $fp, $s0
	addi.w	$t3, $t3, 1
	b	.LBB3_4
.LBB3_7:                                # %if.end28
	slli.d	$a2, $a3, 3
	ldx.d	$a2, $a1, $a2
	fld.s	$fa0, $a2, 0
	fst.s	$fa0, $sp, 52                   # 4-byte Folded Spill
	fld.s	$fa0, $a2, 4
	fst.s	$fa0, $sp, 48                   # 4-byte Folded Spill
	fld.s	$fa0, $a2, 8
	fst.s	$fa0, $sp, 44                   # 4-byte Folded Spill
	fld.s	$fa0, $a2, 12
	fst.s	$fa0, $sp, 40                   # 4-byte Folded Spill
	fld.s	$fa0, $a2, 16
	fst.s	$fa0, $sp, 36                   # 4-byte Folded Spill
	fld.s	$fa0, $a2, 20
	fst.s	$fa0, $sp, 32                   # 4-byte Folded Spill
	fld.s	$fa0, $a2, 24
	fst.s	$fa0, $sp, 28                   # 4-byte Folded Spill
	fld.s	$fa0, $a2, 28
	fst.s	$fa0, $sp, 24                   # 4-byte Folded Spill
	fld.s	$fa0, $a2, 32
	fst.s	$fa0, $sp, 20                   # 4-byte Folded Spill
	fld.s	$ft2, $a2, 36
	fld.s	$ft3, $a2, 40
	fld.s	$ft4, $a2, 44
	fld.s	$ft5, $a2, 48
	fld.s	$ft6, $a2, 52
	fld.s	$ft7, $a2, 56
	fld.s	$ft8, $a2, 60
	fld.s	$ft9, $a2, 64
	fld.s	$ft10, $a2, 68
	fld.s	$ft11, $a2, 72
	fld.s	$ft12, $a2, 76
	fld.s	$ft13, $a2, 80
	fld.s	$ft14, $a2, 84
	fld.s	$ft15, $a2, 88
	fld.s	$fs0, $a2, 92
	fld.s	$fs1, $a2, 96
	fld.s	$fs2, $a2, 100
	fld.s	$fs3, $a2, 104
	fld.s	$fs4, $a2, 108
	fld.s	$fs5, $a2, 112
	fld.s	$fs6, $a2, 116
	fld.s	$fs7, $a2, 120
	fld.s	$fa0, $a2, 124
	pcalau12i	$a1, %got_pc_hi20(ribosumdis)
	ld.d	$a1, $a1, %got_pc_lo12(ribosumdis)
	fld.s	$fa1, $a2, 128
	fld.s	$fa3, $a2, 132
	fld.s	$fa4, $a2, 136
	fld.s	$fa5, $a2, 140
	fld.s	$fa6, $a2, 144
	move	$a2, $zero
	addi.d	$a3, $sp, 56
	ori	$a7, $zero, 148
	.p2align	4, , 16
.LBB3_8:                                # %for.body31
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$t1, $a1, $a2
	add.d	$t0, $a1, $a2
	movgr2fr.w	$fa2, $t1
	ffint.s.w	$fa7, $fa2
	ld.w	$t1, $t0, 148
	movgr2fr.w	$fa2, $zero
	fld.s	$ft0, $sp, 52                   # 4-byte Folded Reload
	fmadd.s	$fa7, $fa7, $ft0, $fa2
	ld.w	$t2, $t0, 296
	movgr2fr.w	$ft0, $t1
	ffint.s.w	$ft0, $ft0
	fld.s	$ft1, $sp, 48                   # 4-byte Folded Reload
	fmadd.s	$fa7, $ft0, $ft1, $fa7
	movgr2fr.w	$ft0, $t2
	ld.w	$t1, $t0, 444
	ffint.s.w	$ft0, $ft0
	fld.s	$ft1, $sp, 44                   # 4-byte Folded Reload
	fmadd.s	$fa7, $ft0, $ft1, $fa7
	ld.w	$t2, $t0, 592
	movgr2fr.w	$ft0, $t1
	ffint.s.w	$ft0, $ft0
	fld.s	$ft1, $sp, 40                   # 4-byte Folded Reload
	fmadd.s	$fa7, $ft0, $ft1, $fa7
	movgr2fr.w	$ft0, $t2
	ld.w	$t1, $t0, 740
	ffint.s.w	$ft0, $ft0
	fld.s	$ft1, $sp, 36                   # 4-byte Folded Reload
	fmadd.s	$fa7, $ft0, $ft1, $fa7
	ld.w	$t2, $t0, 888
	movgr2fr.w	$ft0, $t1
	ffint.s.w	$ft0, $ft0
	fld.s	$ft1, $sp, 32                   # 4-byte Folded Reload
	fmadd.s	$fa7, $ft0, $ft1, $fa7
	movgr2fr.w	$ft0, $t2
	ld.w	$t1, $t0, 1036
	ffint.s.w	$ft0, $ft0
	fld.s	$ft1, $sp, 28                   # 4-byte Folded Reload
	fmadd.s	$fa7, $ft0, $ft1, $fa7
	ld.w	$t2, $t0, 1184
	movgr2fr.w	$ft0, $t1
	ffint.s.w	$ft0, $ft0
	fld.s	$ft1, $sp, 24                   # 4-byte Folded Reload
	fmadd.s	$fa7, $ft0, $ft1, $fa7
	movgr2fr.w	$ft0, $t2
	ld.w	$t1, $t0, 1332
	ffint.s.w	$ft0, $ft0
	fld.s	$ft1, $sp, 20                   # 4-byte Folded Reload
	fmadd.s	$fa7, $ft0, $ft1, $fa7
	ld.w	$t2, $t0, 1480
	movgr2fr.w	$ft0, $t1
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $ft2, $fa7
	movgr2fr.w	$ft0, $t2
	ld.w	$t1, $t0, 1628
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $ft3, $fa7
	ld.w	$t2, $t0, 1776
	movgr2fr.w	$ft0, $t1
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $ft4, $fa7
	movgr2fr.w	$ft0, $t2
	ld.w	$t1, $t0, 1924
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $ft5, $fa7
	ldptr.w	$t2, $t0, 2072
	movgr2fr.w	$ft0, $t1
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $ft6, $fa7
	movgr2fr.w	$ft0, $t2
	ldptr.w	$t1, $t0, 2220
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $ft7, $fa7
	ldptr.w	$t2, $t0, 2368
	movgr2fr.w	$ft0, $t1
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $ft8, $fa7
	movgr2fr.w	$ft0, $t2
	ldptr.w	$t1, $t0, 2516
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $ft9, $fa7
	ldptr.w	$t2, $t0, 2664
	movgr2fr.w	$ft0, $t1
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $ft10, $fa7
	movgr2fr.w	$ft0, $t2
	ldptr.w	$t1, $t0, 2812
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $ft11, $fa7
	ldptr.w	$t2, $t0, 2960
	movgr2fr.w	$ft0, $t1
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $ft12, $fa7
	movgr2fr.w	$ft0, $t2
	ldptr.w	$t1, $t0, 3108
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $ft13, $fa7
	ldptr.w	$t2, $t0, 3256
	movgr2fr.w	$ft0, $t1
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $ft14, $fa7
	movgr2fr.w	$ft0, $t2
	ldptr.w	$t1, $t0, 3404
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $ft15, $fa7
	ldptr.w	$t2, $t0, 3552
	movgr2fr.w	$ft0, $t1
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $fs0, $fa7
	movgr2fr.w	$ft0, $t2
	ldptr.w	$t1, $t0, 3700
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $fs1, $fa7
	ldptr.w	$t2, $t0, 3848
	movgr2fr.w	$ft0, $t1
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $fs2, $fa7
	movgr2fr.w	$ft0, $t2
	ldptr.w	$t1, $t0, 3996
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $fs3, $fa7
	ldptr.w	$t2, $t0, 4144
	movgr2fr.w	$ft0, $t1
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $fs4, $fa7
	movgr2fr.w	$ft0, $t2
	ldptr.w	$t1, $t0, 4292
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $fs5, $fa7
	ldptr.w	$t2, $t0, 4440
	movgr2fr.w	$ft0, $t1
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $fs6, $fa7
	movgr2fr.w	$ft0, $t2
	ldptr.w	$t1, $t0, 4588
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $fs7, $fa7
	ldptr.w	$t2, $t0, 4736
	movgr2fr.w	$ft0, $t1
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $fa0, $fa7
	movgr2fr.w	$ft0, $t2
	ldptr.w	$t1, $t0, 4884
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $fa1, $fa7
	ldptr.w	$t2, $t0, 5032
	movgr2fr.w	$ft0, $t1
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $fa3, $fa7
	movgr2fr.w	$ft0, $t2
	ldptr.w	$t1, $t0, 5180
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $fa4, $fa7
	ldptr.w	$t0, $t0, 5328
	movgr2fr.w	$ft0, $t1
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $fa5, $fa7
	movgr2fr.w	$ft0, $t0
	ffint.s.w	$ft0, $ft0
	fmadd.s	$fa7, $ft0, $fa6, $fa7
	fstx.s	$fa7, $a2, $a3
	addi.d	$a2, $a2, 4
	bne	$a2, $a7, .LBB3_8
# %bb.9:                                # %while.body.preheader
	addi.d	$a1, $sp, 56
	addi.w	$a2, $zero, -1
	b	.LBB3_11
	.p2align	4, , 16
.LBB3_10:                               # %for.end66
                                        #   in Loop: Header=BB3_11 Depth=1
	addi.w	$a4, $a4, -1
	addi.d	$a0, $a0, 4
	addi.d	$a6, $a6, 8
	addi.d	$a5, $a5, 8
	beqz	$a4, .LBB3_14
.LBB3_11:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_13 Depth 2
	ld.d	$t0, $a6, 0
	ld.wu	$a3, $t0, 0
	addi.w	$a7, $a3, 0
	st.w	$zero, $a0, 0
	bltz	$a7, .LBB3_10
# %bb.12:                               # %for.body59.lr.ph
                                        #   in Loop: Header=BB3_11 Depth=1
	ld.d	$a7, $a5, 0
	addi.d	$t0, $t0, 4
	fmov.s	$fa0, $fa2
	.p2align	4, , 16
.LBB3_13:                               # %for.body59
                                        #   Parent Loop BB3_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a3, $a3, 2
	fldx.s	$fa1, $a3, $a1
	fld.s	$fa3, $a7, 0
	ld.wu	$a3, $t0, 0
	fmadd.s	$fa0, $fa1, $fa3, $fa0
	fst.s	$fa0, $a0, 0
	addi.w	$t1, $a3, 0
	addi.d	$a7, $a7, 4
	addi.d	$t0, $t0, 4
	blt	$a2, $t1, .LBB3_13
	b	.LBB3_10
.LBB3_14:                               # %while.end
	fld.d	$fs7, $sp, 208                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 224                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 232                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 240                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 248                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 256                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 264                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 280                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 288
	ret
.Lfunc_end3:
	.size	match_ribosum, .Lfunc_end3-match_ribosum
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"i = %d / %d\n"
	.size	.L.str, 13

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"bug! hairetsu ga kowareta!\n"
	.size	.L.str.1, 28

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"j = %d / %d\n"
	.size	.L.str.2, 13

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"hairetsu ga kowareta (end of MSalignmm) !\n"
	.size	.L.str.3, 43

	.type	reccycle,@object                # @reccycle
	.local	reccycle
	.comm	reccycle,4,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
