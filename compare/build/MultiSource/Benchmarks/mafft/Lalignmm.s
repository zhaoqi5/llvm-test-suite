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
	addi.d	$sp, $sp, -560
	st.d	$ra, $sp, 552                   # 8-byte Folded Spill
	st.d	$fp, $sp, 544                   # 8-byte Folded Spill
	st.d	$s0, $sp, 536                   # 8-byte Folded Spill
	st.d	$s1, $sp, 528                   # 8-byte Folded Spill
	st.d	$s2, $sp, 520                   # 8-byte Folded Spill
	st.d	$s3, $sp, 512                   # 8-byte Folded Spill
	st.d	$s4, $sp, 504                   # 8-byte Folded Spill
	st.d	$s5, $sp, 496                   # 8-byte Folded Spill
	st.d	$s6, $sp, 488                   # 8-byte Folded Spill
	st.d	$s7, $sp, 480                   # 8-byte Folded Spill
	st.d	$s8, $sp, 472                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 464                  # 8-byte Folded Spill
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
	move	$s8, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	add.d	$a0, $s8, $a0
	addi.w	$fp, $a0, 200
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s0, $sp, 112                   # 8-byte Folded Spill
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	ori	$a0, $zero, 4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	addi.w	$fp, $s8, 102
	move	$a0, $fp
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	addi.w	$s0, $s4, 102
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	move	$a0, $fp
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	ori	$a1, $zero, 27
	st.d	$fp, $sp, 448                   # 8-byte Folded Spill
	move	$a0, $fp
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	ori	$a1, $zero, 27
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	ori	$s4, $zero, 1
	st.d	$s8, $sp, 160                   # 8-byte Folded Spill
	addi.w	$a0, $s8, 0
	st.d	$a0, $sp, 456                   # 8-byte Folded Spill
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
	ld.d	$a1, $sp, 456                   # 8-byte Folded Reload
	bne	$a0, $a1, .LBB0_254
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB0_2 Depth=1
	addi.w	$fp, $fp, 1
	addi.d	$s7, $s7, -1
	addi.d	$s8, $s8, 8
	bnez	$s7, .LBB0_2
.LBB0_4:                                # %for.cond35.preheader
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	addi.w	$fp, $a0, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	blt	$a0, $s4, .LBB0_8
# %bb.5:                                # %for.body38.lr.ph
	move	$s4, $zero
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_6:                                # %for.body38
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s8, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB0_255
# %bb.7:                                # %for.inc49
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.w	$s4, $s4, 1
	addi.d	$s7, $s7, -1
	addi.d	$s8, $s8, 8
	bnez	$s7, .LBB0_6
.LBB0_8:                                # %for.end51
	st.d	$s6, $sp, 384                   # 8-byte Folded Spill
	movgr2fr.w	$fa0, $s5
	ffint.s.w	$fs0, $fa0
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
	move	$a0, $s6
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	move	$a2, $s2
	ld.d	$s4, $sp, 456                   # 8-byte Folded Reload
	move	$a3, $s4
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	move	$a4, $s5
	pcaddu18i	$ra, %call36(MScpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	move	$a0, $s8
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	move	$a2, $s1
	move	$a3, $fp
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	move	$a4, $s7
	pcaddu18i	$ra, %call36(MScpmx_calc_new)
	jirl	$ra, $ra, 0
	beqz	$s3, .LBB0_10
# %bb.9:                                # %if.then52
	ld.d	$s4, $sp, 576
	ld.d	$s5, $sp, 560
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	move	$a2, $s6
	move	$a3, $s2
	ld.d	$a4, $sp, 456                   # 8-byte Folded Reload
	move	$a5, $s3
	pcaddu18i	$ra, %call36(new_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	move	$a1, $s7
	move	$a2, $s8
	move	$a3, $s1
	move	$a4, $fp
	move	$a5, $s5
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(new_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	move	$a1, $s5
	move	$a2, $s6
	move	$a3, $s2
	ld.d	$a4, $sp, 456                   # 8-byte Folded Reload
	move	$a5, $s4
	pcaddu18i	$ra, %call36(new_FinalGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	move	$a1, $s7
	move	$a2, $s8
	move	$a3, $s1
	move	$a4, $fp
	move	$a5, $s4
	ld.d	$s4, $sp, 456                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(new_FinalGapCount)
	jirl	$ra, $ra, 0
	b	.LBB0_11
.LBB0_10:                               # %if.else
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	move	$a1, $s5
	move	$a2, $s6
	move	$a3, $s2
	move	$a4, $s4
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	move	$a1, $s7
	move	$a2, $s8
	move	$a3, $s1
	move	$a4, $fp
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	move	$a1, $s5
	move	$a2, $s6
	move	$a3, $s2
	move	$a4, $s4
	pcaddu18i	$ra, %call36(st_FinalGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	move	$a1, $s7
	move	$a2, $s8
	move	$a3, $s1
	move	$a4, $fp
	pcaddu18i	$ra, %call36(st_FinalGapCount)
	jirl	$ra, $ra, 0
.LBB0_11:                               # %if.end53
	ori	$a0, $zero, 1
	fcvt.d.s	$fa0, $fs0
	ld.d	$s6, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 104                   # 8-byte Folded Reload
	blt	$s4, $a0, .LBB0_18
# %bb.12:                               # %for.body57.lr.ph
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 30, 0
	ori	$a2, $zero, 8
	bltu	$a1, $a2, .LBB0_15
# %bb.13:                               # %vector.memcheck
	ld.d	$a4, $sp, 392                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a4, 2
	bgeu	$s6, $a2, .LBB0_68
# %bb.14:                               # %vector.memcheck
	alsl.d	$a2, $a1, $s6, 2
	bgeu	$a4, $a2, .LBB0_68
.LBB0_15:
	move	$a2, $zero
.LBB0_16:                               # %for.body57.preheader
	ld.d	$a3, $sp, 392                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a3, 2
	alsl.d	$a4, $a2, $s6, 2
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
# %bb.20:                               # %vector.memcheck199
	alsl.d	$a1, $a0, $a6, 2
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	bgeu	$a3, $a1, .LBB0_71
# %bb.21:                               # %vector.memcheck199
	alsl.d	$a1, $a0, $a3, 2
	bgeu	$a6, $a1, .LBB0_71
.LBB0_22:
	move	$a1, $zero
.LBB0_23:                               # %for.body82.preheader
	alsl.d	$a2, $a1, $a6, 2
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
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
	st.d	$s6, $a2, 0
	pcalau12i	$a0, %pc_hi20(reccycle)
	ld.w	$a1, $a0, %pc_lo12(reccycle)
	ld.d	$a3, $sp, 392                   # 8-byte Folded Reload
	st.d	$a3, $a2, 8
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	st.d	$a3, $a2, 16
	st.d	$a6, $a2, 24
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
# %bb.29:                               # %vector.ph225
	bstrpick.d	$a2, $s5, 30, 3
	slli.d	$a2, $a2, 3
	addi.d	$a3, $fp, 32
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a4, $a4, 32
	move	$a5, $a2
	.p2align	4, , 16
.LBB0_30:                               # %vector.body228
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a4, -32
	xvld	$xr1, $a4, 0
	xvst	$xr0, $a3, -32
	xvst	$xr1, $a3, 0
	addi.d	$a5, $a5, -8
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB0_30
# %bb.31:                               # %middle.block233
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
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	sub.d	$a2, $a0, $a2
	ori	$a3, $zero, 64
	bltu	$a2, $a3, .LBB0_40
# %bb.37:                               # %vector.ph242
	bstrpick.d	$a1, $s7, 30, 3
	slli.d	$a1, $a1, 3
	addi.d	$a2, $a0, 32
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 32
	move	$a4, $a1
	.p2align	4, , 16
.LBB0_38:                               # %vector.body245
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a3, -32
	xvld	$xr1, $a3, 0
	xvst	$xr0, $a2, -32
	xvst	$xr1, $a2, 0
	addi.d	$a4, $a4, -8
	addi.d	$a2, $a2, 64
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB0_38
# %bb.39:                               # %middle.block250
	beq	$a1, $s7, .LBB0_42
.LBB0_40:                               # %for.body65.i.preheader
	sub.d	$a2, $s7, $a1
	alsl.d	$a3, $a1, $a0, 3
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
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
	blt	$s4, $a1, .LBB0_67
# %bb.43:                               # %for.end72.i
	addi.w	$a2, $s1, 0
	ori	$a1, $zero, 9
	bgeu	$a1, $a2, .LBB0_67
# %bb.44:                               # %iter.check
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	addi.w	$s2, $a0, 100
	st.d	$a2, $sp, 416                   # 8-byte Folded Spill
	addi.w	$s3, $s1, 100
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$s1, $sp, 448                   # 8-byte Folded Reload
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	move	$s8, $s4
	move	$s4, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
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
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	move	$a0, $s2
	move	$a1, $s3
	move	$s3, $fp
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	ori	$a7, $zero, 1
	ori	$fp, $zero, 1
	move	$a0, $s4
	ld.d	$s1, $sp, 368                   # 8-byte Folded Reload
	move	$a1, $s1
	ld.d	$s0, $sp, 376                   # 8-byte Folded Reload
	move	$a2, $s0
	move	$a3, $zero
	move	$a4, $s8
	move	$a5, $s5
	move	$a6, $s7
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ori	$a7, $zero, 1
	move	$a0, $s3
	move	$a1, $s0
	move	$a2, $s1
	move	$a3, $zero
	ld.d	$a4, $sp, 416                   # 8-byte Folded Reload
	st.d	$s5, $sp, 328                   # 8-byte Folded Spill
	move	$a5, $s5
	st.d	$s7, $sp, 320                   # 8-byte Folded Spill
	move	$a6, $s7
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	addi.w	$a1, $a0, 1
	ori	$a0, $zero, 2
	slt	$a2, $a0, $a1
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $a1, $a2
	or	$t7, $a2, $a0
	ori	$a0, $zero, 4
	addi.d	$s5, $s6, 4
	blt	$a0, $a1, .LBB0_74
# %bb.45:
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
.LBB0_46:                               # %for.body145.i.preheader
	ld.d	$t0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 360                   # 8-byte Folded Reload
.LBB0_47:                               # %for.body145.i.preheader
	sub.d	$a0, $t7, $fp
	alsl.d	$a1, $fp, $s4, 2
	alsl.d	$a2, $fp, $a5, 2
	addi.d	$a2, $a2, -4
	.p2align	4, , 16
.LBB0_48:                               # %for.body145.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $s6, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a1, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	bnez	$a0, .LBB0_48
.LBB0_49:                               # %iter.check307
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	addi.w	$t4, $a0, -1
	addi.w	$t3, $t0, -1
	addi.w	$t6, $t0, 1
	ori	$a0, $zero, 2
	slt	$a1, $a0, $t6
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $t6, $a1
	or	$a0, $a1, $a0
	addi.d	$a1, $a0, -1
	st.d	$a1, $sp, 424                   # 8-byte Folded Spill
	ori	$a2, $zero, 1
	ori	$a3, $zero, 4
	alsl.d	$a1, $a0, $s3, 2
	addi.d	$a4, $s7, 4
	st.d	$a4, $sp, 256                   # 8-byte Folded Spill
	blt	$a3, $t6, .LBB0_78
.LBB0_50:                               # %for.body161.i.preheader
	sub.d	$a3, $a0, $a2
	alsl.d	$a4, $a2, $s3, 2
	alsl.d	$a2, $a2, $a7, 2
	addi.d	$a2, $a2, -4
	.p2align	4, , 16
.LBB0_51:                               # %for.body161.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $s7, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a4, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a4, 0
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 4
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB0_51
.LBB0_52:                               # %for.body180.preheader.i
	fld.s	$fa0, $s4, 0
	ld.d	$a2, $t2, 0
	ld.d	$t5, $sp, 584
	fst.s	$fa0, $a2, 0
	slli.d	$a3, $t7, 2
	ori	$a4, $zero, 4
	ori	$a5, $zero, 8
	.p2align	4, , 16
.LBB0_53:                               # %for.body180.i
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa0, $s4, $a4
	ldx.d	$a6, $t2, $a5
	fst.s	$fa0, $a6, 0
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 8
	bne	$a3, $a4, .LBB0_53
# %bb.54:                               # %iter.check350
	ori	$a3, $zero, 5
	ori	$a4, $zero, 1
	blt	$t6, $a3, .LBB0_104
# %bb.55:                               # %iter.check350
	sub.d	$a3, $a2, $s3
	ori	$a5, $zero, 63
	bgeu	$a5, $a3, .LBB0_104
# %bb.56:                               # %vector.main.loop.iter.check352
	ori	$a3, $zero, 17
	bge	$t6, $a3, .LBB0_82
# %bb.57:
	move	$a3, $zero
	b	.LBB0_86
.LBB0_58:                               # %for.cond.preheader.i
	ori	$fp, $zero, 1
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
	blt	$s5, $fp, .LBB0_61
# %bb.59:                               # %for.body.lr.ph.i
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	move	$s1, $s6
	move	$s2, $s5
	.p2align	4, , 16
.LBB0_60:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s1, 0
	move	$a2, $s4
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	stx.b	$zero, $a0, $s4
	addi.d	$s2, $s2, -1
	addi.d	$s1, $s1, 8
	addi.d	$s0, $s0, 8
	bnez	$s2, .LBB0_60
.LBB0_61:                               # %for.cond29.preheader.i
	blt	$s7, $fp, .LBB0_191
# %bb.62:                               # %for.body32.lr.ph.i
	move	$s0, $zero
	ori	$s1, $zero, 1
	ori	$s2, $zero, 45
	b	.LBB0_64
	.p2align	4, , 16
.LBB0_63:                               # %for.inc46.i
                                        #   in Loop: Header=BB0_64 Depth=1
	addi.d	$s0, $s0, 1
	ld.d	$s4, $sp, 456                   # 8-byte Folded Reload
	beq	$s0, $s7, .LBB0_191
.LBB0_64:                               # %for.body32.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_66 Depth 2
	slli.d	$a0, $s0, 3
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	st.b	$zero, $a0, 0
	blt	$s4, $s1, .LBB0_63
# %bb.65:                               # %for.body39.i.preheader
                                        #   in Loop: Header=BB0_64 Depth=1
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$s3, $s0, $a0, 3
	ld.d	$s4, $sp, 160                   # 8-byte Folded Reload
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
	b	.LBB0_191
.LBB0_68:                               # %vector.ph
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	bstrpick.d	$a2, $a2, 30, 3
	slli.d	$a2, $a2, 3
	xvreplve0.d	$xr1, $xr0
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr2, $a3
	lu52i.d	$a3, $zero, 1022
	xvreplgr2vr.d	$xr3, $a3
	move	$a3, $s6
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
	xvpickve.d	$xr6, $xr5, 1
	fcvt.s.d	$fa6, $fa6
	xvpickve.d	$xr7, $xr5, 0
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr7, $xr6, 1
	xvpickve.d	$xr6, $xr5, 2
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr7, $xr6, 2
	xvpickve.d	$xr5, $xr5, 3
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 3
	xvpickve.d	$xr5, $xr4, 0
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 4
	xvpickve.d	$xr5, $xr4, 1
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 5
	xvpickve.d	$xr5, $xr4, 2
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 6
	xvpickve.d	$xr4, $xr4, 3
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
	xvpickve.d	$xr6, $xr5, 1
	fcvt.s.d	$fa6, $fa6
	xvpickve.d	$xr7, $xr5, 0
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr7, $xr6, 1
	xvpickve.d	$xr6, $xr5, 2
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr7, $xr6, 2
	xvpickve.d	$xr5, $xr5, 3
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 3
	xvpickve.d	$xr5, $xr4, 0
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 4
	xvpickve.d	$xr5, $xr4, 1
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 5
	xvpickve.d	$xr5, $xr4, 2
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 6
	xvpickve.d	$xr4, $xr4, 3
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
.LBB0_71:                               # %vector.ph207
	bstrpick.d	$a1, $s1, 30, 3
	slli.d	$a1, $a1, 3
	xvreplve0.d	$xr1, $xr0
	lu52i.d	$a2, $zero, 1023
	xvreplgr2vr.d	$xr2, $a2
	lu52i.d	$a2, $zero, 1022
	xvreplgr2vr.d	$xr3, $a2
	move	$a2, $a3
	move	$a3, $a6
	move	$a4, $a1
	.p2align	4, , 16
.LBB0_72:                               # %vector.body212
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
	xvpickve.d	$xr6, $xr5, 1
	fcvt.s.d	$fa6, $fa6
	xvpickve.d	$xr7, $xr5, 0
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr7, $xr6, 1
	xvpickve.d	$xr6, $xr5, 2
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr7, $xr6, 2
	xvpickve.d	$xr5, $xr5, 3
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 3
	xvpickve.d	$xr5, $xr4, 0
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 4
	xvpickve.d	$xr5, $xr4, 1
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 5
	xvpickve.d	$xr5, $xr4, 2
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 6
	xvpickve.d	$xr4, $xr4, 3
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
	xvpickve.d	$xr6, $xr5, 1
	fcvt.s.d	$fa6, $fa6
	xvpickve.d	$xr7, $xr5, 0
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr7, $xr6, 1
	xvpickve.d	$xr6, $xr5, 2
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr7, $xr6, 2
	xvpickve.d	$xr5, $xr5, 3
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 3
	xvpickve.d	$xr5, $xr4, 0
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 4
	xvpickve.d	$xr5, $xr4, 1
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 5
	xvpickve.d	$xr5, $xr4, 2
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 6
	xvpickve.d	$xr4, $xr4, 3
	fcvt.s.d	$fa4, $fa4
	xvinsve0.w	$xr7, $xr4, 7
	xvst	$xr7, $a3, 0
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 32
	addi.d	$a2, $a2, 32
	bnez	$a4, .LBB0_72
# %bb.73:                               # %middle.block217
	beq	$a0, $a1, .LBB0_25
	b	.LBB0_23
.LBB0_74:                               # %vector.memcheck253
	addi.d	$a0, $s4, 4
	alsl.d	$a2, $t7, $s4, 2
	sltu	$a3, $a0, $s5
	sltu	$a4, $s6, $a2
	and	$a3, $a3, $a4
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	bnez	$a3, .LBB0_46
# %bb.75:                               # %vector.memcheck253
	alsl.d	$a3, $t7, $a5, 2
	addi.d	$a3, $a3, -4
	sltu	$a0, $a0, $a3
	sltu	$a2, $a5, $a2
	and	$a0, $a0, $a2
	ld.d	$t0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 360                   # 8-byte Folded Reload
	bnez	$a0, .LBB0_47
# %bb.76:                               # %vector.main.loop.iter.check
	ori	$a2, $zero, 17
	addi.d	$a0, $t7, -1
	bge	$a1, $a2, .LBB0_89
# %bb.77:
	move	$a1, $zero
	b	.LBB0_93
.LBB0_78:                               # %vector.memcheck292
	addi.d	$a3, $s3, 4
	sltu	$a4, $a3, $a4
	sltu	$a5, $s7, $a1
	and	$a4, $a4, $a5
	bnez	$a4, .LBB0_50
# %bb.79:                               # %vector.memcheck292
	alsl.d	$a4, $a0, $a7, 2
	addi.d	$a4, $a4, -4
	sltu	$a3, $a3, $a4
	sltu	$a4, $a7, $a1
	and	$a3, $a3, $a4
	bnez	$a3, .LBB0_50
# %bb.80:                               # %vector.main.loop.iter.check309
	ori	$a2, $zero, 17
	bge	$t6, $a2, .LBB0_96
# %bb.81:
	move	$a3, $zero
	b	.LBB0_100
.LBB0_82:                               # %vector.ph353
	ld.d	$a3, $sp, 424                   # 8-byte Folded Reload
	bstrins.d	$a3, $zero, 3, 0
	addi.d	$a4, $s3, 36
	addi.d	$a5, $a2, 36
	move	$a6, $a3
	.p2align	4, , 16
.LBB0_83:                               # %vector.body356
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a4, -32
	xvld	$xr1, $a4, 0
	xvst	$xr0, $a5, -32
	xvst	$xr1, $a5, 0
	addi.d	$a4, $a4, 64
	addi.d	$a6, $a6, -16
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB0_83
# %bb.84:                               # %middle.block361
	ld.d	$a4, $sp, 424                   # 8-byte Folded Reload
	beq	$a4, $a3, .LBB0_106
# %bb.85:                               # %vec.epilog.iter.check366
	ld.d	$a4, $sp, 424                   # 8-byte Folded Reload
	andi	$a4, $a4, 12
	beqz	$a4, .LBB0_103
.LBB0_86:                               # %vec.epilog.ph365
	ld.d	$a4, $sp, 424                   # 8-byte Folded Reload
	move	$a5, $a4
	bstrins.d	$a5, $zero, 1, 0
	ori	$a6, $zero, 1
	bstrins.d	$a4, $a6, 1, 0
	slli.d	$a6, $a3, 2
	addi.d	$a7, $a6, 4
	add.d	$a6, $s3, $a7
	add.d	$a7, $a2, $a7
	sub.d	$a3, $a3, $a5
	.p2align	4, , 16
.LBB0_87:                               # %vec.epilog.vector.body371
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a6, 0
	vst	$vr0, $a7, 0
	addi.d	$a6, $a6, 16
	addi.d	$a3, $a3, 4
	addi.d	$a7, $a7, 16
	bnez	$a3, .LBB0_87
# %bb.88:                               # %vec.epilog.middle.block376
	ld.d	$a3, $sp, 424                   # 8-byte Folded Reload
	bne	$a3, $a5, .LBB0_104
	b	.LBB0_106
.LBB0_89:                               # %vector.ph268
	move	$a1, $a0
	xvldrepl.w	$xr0, $s6, 0
	bstrins.d	$a1, $zero, 3, 0
	addi.d	$a2, $a5, 32
	addi.d	$a3, $s4, 36
	move	$a4, $a1
	.p2align	4, , 16
.LBB0_90:                               # %vector.body271
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
	bnez	$a4, .LBB0_90
# %bb.91:                               # %middle.block280
	beq	$a0, $a1, .LBB0_49
# %bb.92:                               # %vec.epilog.iter.check
	andi	$a2, $a0, 12
	beqz	$a2, .LBB0_251
.LBB0_93:                               # %vec.epilog.ph
	move	$a2, $a0
	bstrins.d	$a2, $zero, 1, 0
	ori	$a3, $zero, 1
	move	$fp, $a0
	bstrins.d	$fp, $a3, 1, 0
	vldrepl.w	$vr0, $s6, 0
	alsl.d	$a3, $a1, $a5, 2
	alsl.d	$a4, $a1, $s4, 2
	addi.d	$a4, $a4, 4
	sub.d	$a1, $a1, $a2
	.p2align	4, , 16
.LBB0_94:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a3, 0
	vld	$vr2, $a4, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $a4, 0
	addi.d	$a3, $a3, 16
	addi.d	$a1, $a1, 4
	addi.d	$a4, $a4, 16
	bnez	$a1, .LBB0_94
# %bb.95:                               # %vec.epilog.middle.block
	bne	$a0, $a2, .LBB0_47
	b	.LBB0_49
.LBB0_96:                               # %vector.ph310
	ld.d	$a3, $sp, 424                   # 8-byte Folded Reload
	xvldrepl.w	$xr0, $s7, 0
	bstrins.d	$a3, $zero, 3, 0
	addi.d	$a2, $a7, 32
	addi.d	$a4, $s3, 36
	move	$a5, $a3
	.p2align	4, , 16
.LBB0_97:                               # %vector.body313
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a2, -32
	xvld	$xr2, $a2, 0
	xvld	$xr3, $a4, -32
	xvld	$xr4, $a4, 0
	xvfadd.s	$xr1, $xr0, $xr1
	xvfadd.s	$xr2, $xr0, $xr2
	xvfadd.s	$xr1, $xr3, $xr1
	xvfadd.s	$xr2, $xr4, $xr2
	xvst	$xr1, $a4, -32
	xvst	$xr2, $a4, 0
	addi.d	$a2, $a2, 64
	addi.d	$a5, $a5, -16
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB0_97
# %bb.98:                               # %middle.block322
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	beq	$a2, $a3, .LBB0_52
# %bb.99:                               # %vec.epilog.iter.check327
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	andi	$a2, $a2, 12
	beqz	$a2, .LBB0_252
.LBB0_100:                              # %vec.epilog.ph326
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	move	$a4, $a2
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	bstrins.d	$a2, $a5, 1, 0
	vldrepl.w	$vr0, $s7, 0
	alsl.d	$a5, $a3, $a7, 2
	alsl.d	$a6, $a3, $s3, 2
	addi.d	$a6, $a6, 4
	sub.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB0_101:                              # %vec.epilog.vector.body332
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a5, 0
	vld	$vr2, $a6, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $a6, 0
	addi.d	$a5, $a5, 16
	addi.d	$a3, $a3, 4
	addi.d	$a6, $a6, 16
	bnez	$a3, .LBB0_101
# %bb.102:                              # %vec.epilog.middle.block340
	ld.d	$a3, $sp, 424                   # 8-byte Folded Reload
	bne	$a3, $a4, .LBB0_50
	b	.LBB0_52
.LBB0_103:
	addi.d	$a4, $a3, 1
.LBB0_104:                              # %for.body193.i.preheader
	sub.d	$a3, $a0, $a4
	alsl.d	$a2, $a4, $a2, 2
	alsl.d	$a4, $a4, $s3, 2
	.p2align	4, , 16
.LBB0_105:                              # %for.body193.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a4, 0
	fst.s	$fa0, $a2, 0
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	addi.d	$a4, $a4, 4
	bnez	$a3, .LBB0_105
.LBB0_106:                              # %iter.check395
	ori	$a2, $zero, 1
	ori	$a3, $zero, 4
	addi.d	$t2, $t1, 4
	blt	$a3, $t6, .LBB0_200
.LBB0_107:                              # %for.body206.i.preheader
	sub.d	$a1, $a0, $a2
	ld.d	$a3, $sp, 440                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a3, 2
	alsl.d	$a4, $a2, $t1, 2
	alsl.d	$a2, $a2, $s3, 2
	addi.d	$a2, $a2, -4
	.p2align	4, , 16
.LBB0_108:                              # %for.body206.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $s5, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a4, 0
	st.w	$zero, $a3, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 4
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB0_108
.LBB0_109:                              # %for.body229.lr.ph.i
	st.d	$t2, $sp, 248                   # 8-byte Folded Spill
	st.d	$t6, $sp, 232                   # 8-byte Folded Spill
	st.d	$t5, $sp, 16                    # 8-byte Folded Spill
	st.d	$t4, $sp, 304                   # 8-byte Folded Spill
	st.d	$s4, $sp, 408                   # 8-byte Folded Spill
	slli.d	$s8, $t3, 2
	fldx.s	$fa0, $s3, $s8
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 31, 0
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	fst.s	$fa0, $a2, 0
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a2, $fa0
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 4
	st.d	$a1, $sp, 240                   # 8-byte Folded Spill
	st.d	$t3, $sp, 176                   # 8-byte Folded Spill
	alsl.d	$a1, $t3, $t1, 2
	st.d	$a1, $sp, 432                   # 8-byte Folded Spill
	bstrpick.d	$a1, $t0, 30, 0
	st.d	$a1, $sp, 296                   # 8-byte Folded Spill
	st.d	$a2, $sp, 288                   # 8-byte Folded Spill
	bstrpick.d	$s0, $a2, 31, 0
	slli.d	$s1, $a0, 2
	ori	$s2, $zero, 1
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	move	$a0, $s3
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$a1, $sp, 448                   # 8-byte Folded Spill
	st.d	$s8, $sp, 400                   # 8-byte Folded Spill
	b	.LBB0_111
	.p2align	4, , 16
.LBB0_110:                              # %for.end321.i
                                        #   in Loop: Header=BB0_111 Depth=1
	fldx.s	$fa0, $s3, $s8
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	fstx.s	$fa0, $a2, $a0
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	fld.s	$fa0, $a0, 0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	addi.d	$s2, $s2, 1
	fstx.s	$fa0, $a1, $a0
	move	$a0, $s3
	move	$t7, $fp
	beq	$s2, $fp, .LBB0_123
.LBB0_111:                              # %for.body229.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_121 Depth 2
                                        #     Child Loop BB0_117 Depth 2
	move	$fp, $t7
	addi.d	$s4, $s2, -1
	slli.d	$a1, $s4, 2
	ld.d	$s8, $sp, 408                   # 8-byte Folded Reload
	fldx.s	$fa0, $s8, $a1
	ld.d	$s6, $sp, 448                   # 8-byte Folded Reload
	st.d	$a0, $sp, 448                   # 8-byte Folded Spill
	fst.s	$fa0, $a0, 0
	move	$a0, $s6
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	move	$a3, $s2
	ld.d	$a4, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 320                   # 8-byte Folded Reload
	move	$a7, $zero
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s2, 2
	fldx.s	$fa0, $s8, $a0
	move	$s3, $s6
	fst.s	$fa0, $s6, 0
	ld.d	$a3, $sp, 384                   # 8-byte Folded Reload
	fldx.s	$fa0, $a3, $a0
	ld.d	$ra, $sp, 192                   # 8-byte Folded Reload
	fst.s	$fa0, $ra, 0
	ld.d	$t8, $sp, 336                   # 8-byte Folded Reload
	bne	$s2, $s0, .LBB0_113
# %bb.112:                              # %if.then246.i
                                        #   in Loop: Header=BB0_111 Depth=1
	fst.s	$fa0, $t8, 0
.LBB0_113:                              # %for.body260.lr.ph.i
                                        #   in Loop: Header=BB0_111 Depth=1
	ld.d	$s8, $sp, 448                   # 8-byte Folded Reload
	fld.s	$fa0, $s8, 0
	fld.s	$fa1, $s7, 4
	slli.d	$a1, $s2, 3
	ld.d	$a2, $sp, 360                   # 8-byte Folded Reload
	ldx.d	$a4, $a2, $a1
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ldx.d	$a1, $a2, $a1
	alsl.d	$a2, $s2, $a3, 2
	fadd.s	$fa0, $fa0, $fa1
	ld.d	$a3, $sp, 392                   # 8-byte Folded Reload
	alsl.d	$a3, $s4, $a3, 2
	ld.d	$t3, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 352                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 208                   # 8-byte Folded Reload
	bne	$s2, $s0, .LBB0_119
# %bb.114:                              # %for.body260.us.i.preheader
                                        #   in Loop: Header=BB0_111 Depth=1
	move	$a5, $zero
	move	$a7, $zero
	ori	$a6, $zero, 4
	ld.d	$s8, $sp, 400                   # 8-byte Folded Reload
	b	.LBB0_117
	.p2align	4, , 16
.LBB0_115:                              # %if.then290.us.i
                                        #   in Loop: Header=BB0_117 Depth=2
	fstx.s	$fa6, $ra, $a6
	ld.d	$t0, $sp, 440                   # 8-byte Folded Reload
	stx.w	$s4, $t0, $a6
	move	$t0, $s4
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
	beq	$s1, $a6, .LBB0_110
.LBB0_117:                              # %for.body260.us.i
                                        #   Parent Loop BB0_111 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t0, $sp, 448                   # 8-byte Folded Reload
	add.d	$t0, $t0, $a6
	fld.s	$fa1, $t0, -4
	add.d	$t0, $t3, $a6
	fld.s	$fa5, $t0, -4
	fld.s	$fa6, $a2, 0
	fldx.s	$fa3, $ra, $a6
	fldx.s	$fa2, $s7, $a6
	fld.s	$fa4, $a3, 0
	fadd.s	$fa6, $fa1, $fa6
	fcmp.cle.s	$fcc0, $fa3, $fa6
	bcnez	$fcc0, .LBB0_115
# %bb.118:                              # %for.body260.us.if.end292.us_crit_edge.i
                                        #   in Loop: Header=BB0_117 Depth=2
	ld.d	$t0, $sp, 440                   # 8-byte Folded Reload
	ldx.w	$t0, $t0, $a6
	b	.LBB0_116
	.p2align	4, , 16
.LBB0_119:                              # %for.body260.i.preheader
                                        #   in Loop: Header=BB0_111 Depth=1
	addi.d	$a5, $s3, 4
	addi.d	$a6, $a1, 4
	addi.d	$a4, $a4, 4
	move	$a7, $t3
	ld.d	$t0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 424                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 240                   # 8-byte Folded Reload
	move	$t4, $s8
	ld.d	$s8, $sp, 400                   # 8-byte Folded Reload
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
	st.w	$s4, $t3, 0
	b	.LBB0_120
.LBB0_123:                              # %iter.check443
	ori	$a7, $zero, 1
	ld.d	$fp, $sp, 408                   # 8-byte Folded Reload
	move	$a0, $fp
	ld.d	$s0, $sp, 368                   # 8-byte Folded Reload
	move	$a1, $s0
	ld.d	$s4, $sp, 376                   # 8-byte Folded Reload
	move	$a2, $s4
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 328                   # 8-byte Folded Reload
	move	$a5, $s1
	ld.d	$s2, $sp, 320                   # 8-byte Folded Reload
	move	$a6, $s2
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ori	$a7, $zero, 1
	move	$a0, $s3
	move	$a1, $s4
	move	$a2, $s0
	ld.d	$s0, $sp, 304                   # 8-byte Folded Reload
	move	$a3, $s0
	ld.d	$a4, $sp, 416                   # 8-byte Folded Reload
	move	$a5, $s1
	move	$a6, $s2
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	move	$t3, $s0
	bstrpick.d	$s2, $s0, 31, 0
	ori	$a0, $zero, 3
	ld.d	$a4, $sp, 392                   # 8-byte Folded Reload
	alsl.d	$a2, $s2, $a4, 2
	bltu	$a0, $s0, .LBB0_204
# %bb.124:
	move	$a0, $zero
	ld.d	$t1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 352                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 336                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 360                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 384                   # 8-byte Folded Reload
.LBB0_125:                              # %for.body351.i.preheader
	alsl.d	$a1, $a0, $fp, 2
	sub.d	$a3, $s2, $a0
	alsl.d	$a0, $a0, $a5, 2
	addi.d	$a0, $a0, 4
	.p2align	4, , 16
.LBB0_126:                              # %for.body351.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $a0, 0
	fld.s	$fa2, $a1, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 4
	bnez	$a3, .LBB0_126
.LBB0_127:                              # %iter.check494
	alsl.d	$a0, $t7, $t1, 2
	ori	$a3, $zero, 4
	alsl.d	$a1, $t7, $s3, 2
	ld.d	$a4, $sp, 416                   # 8-byte Folded Reload
	bltu	$a3, $a4, .LBB0_208
# %bb.128:
	move	$a3, $zero
.LBB0_129:                              # %for.body369.i.preheader
	alsl.d	$a4, $a3, $s3, 2
	sub.d	$a5, $t7, $a3
	alsl.d	$a3, $a3, $s7, 2
	addi.d	$a3, $a3, 4
	.p2align	4, , 16
.LBB0_130:                              # %for.body369.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a3, 0
	fld.s	$fa2, $a4, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a4, 0
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, -1
	addi.d	$a3, $a3, 4
	bnez	$a5, .LBB0_130
.LBB0_131:                              # %for.body387.i.preheader
	move	$a3, $s2
	move	$a4, $a7
	.p2align	4, , 16
.LBB0_132:                              # %for.body387.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $s5, 0
	fldx.s	$fa2, $a5, $s8
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa0, $fa2
	fstx.s	$fa0, $a5, $s8
	addi.d	$a4, $a4, 8
	addi.d	$a3, $a3, -1
	addi.d	$s5, $s5, 4
	bnez	$a3, .LBB0_132
# %bb.133:                              # %iter.check544
	slli.d	$a2, $s2, 3
	ldx.d	$a2, $a7, $a2
	ori	$a3, $zero, 4
	ld.d	$a4, $sp, 416                   # 8-byte Folded Reload
	bltu	$a3, $a4, .LBB0_212
# %bb.134:
	move	$a3, $zero
.LBB0_135:                              # %for.body408.i.preheader
	alsl.d	$a2, $a3, $a2, 2
	sub.d	$a4, $t7, $a3
	alsl.d	$a3, $a3, $s7, 2
	addi.d	$a3, $a3, 4
	.p2align	4, , 16
.LBB0_136:                              # %for.body408.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a3, 0
	fld.s	$fa2, $a2, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa0, $fa2
	fst.s	$fa0, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 4
	bnez	$a4, .LBB0_136
.LBB0_137:                              # %for.body429.lr.ph.i
	slti	$a3, $t7, 1
	ori	$a2, $zero, 1
	masknez	$a4, $a2, $a3
	maskeqz	$a3, $t7, $a3
	or	$a5, $a3, $a4
	nor	$a3, $a5, $zero
	add.w	$a4, $a3, $t2
	ori	$a6, $zero, 23
	addi.d	$a3, $a0, -4
	bgeu	$a4, $a6, .LBB0_216
# %bb.138:
	move	$a0, $t7
	ld.d	$t8, $sp, 296                   # 8-byte Folded Reload
.LBB0_139:                              # %for.body429.i.preheader
	addi.d	$a1, $a0, 1
	ld.d	$a4, $sp, 440                   # 8-byte Folded Reload
	alsl.d	$a4, $a0, $a4, 2
	alsl.d	$a5, $a0, $t6, 2
	addi.d	$a5, $a5, -4
	alsl.d	$a0, $a0, $s3, 2
	.p2align	4, , 16
.LBB0_140:                              # %for.body429.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a3, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a5, 0
	st.w	$t3, $a4, 0
	addi.w	$a1, $a1, -1
	addi.d	$a4, $a4, -4
	addi.d	$a5, $a5, -4
	addi.d	$a0, $a0, -4
	blt	$a2, $a1, .LBB0_140
.LBB0_141:                              # %for.body449.lr.ph.i
	move	$s8, $zero
	move	$a5, $zero
	move	$a6, $zero
	addi.w	$a0, $zero, -2
	lu32i.d	$a0, 0
	add.d	$a0, $t2, $a0
	bstrpick.d	$a0, $a0, 31, 0
	alsl.d	$s0, $a0, $t1, 2
	slli.d	$a4, $a0, 2
	alsl.d	$a1, $t8, $t6, 2
	addi.d	$s1, $a1, -8
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	alsl.d	$a1, $t8, $a1, 2
	addi.d	$a1, $a1, -8
	st.d	$a1, $sp, 456                   # 8-byte Folded Spill
	ori	$a2, $zero, 1
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	slt	$a1, $a2, $a3
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 2
	st.d	$a1, $sp, 432                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 2
	st.d	$a1, $sp, 424                   # 8-byte Folded Spill
	alsl.d	$s5, $a0, $t4, 2
	alsl.d	$s7, $a0, $t5, 2
	st.d	$a4, $sp, 168                   # 8-byte Folded Spill
	addi.d	$a0, $a4, 4
	add.d	$s6, $s6, $a0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	add.d	$fp, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.s	$fs0, $a0, %pc_lo12(.LCPI0_0)
	addi.d	$a0, $t7, -2
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	addi.d	$a0, $t4, 8
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	movgr2fr.w	$fa4, $zero
	move	$a4, $s2
	b	.LBB0_144
	.p2align	4, , 16
.LBB0_142:                              #   in Loop: Header=BB0_144 Depth=1
	move	$a0, $t7
	move	$a1, $a5
	move	$a2, $s8
.LBB0_143:                              # %for.inc675.i
                                        #   in Loop: Header=BB0_144 Depth=1
	st.d	$t5, $sp, 288                   # 8-byte Folded Spill
	move	$s8, $a2
	move	$a5, $a1
	move	$a6, $a0
	move	$s3, $t6
	ori	$a0, $zero, 1
	bge	$a0, $s2, .LBB0_175
.LBB0_144:                              # %for.body489.lr.ph.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_146 Depth 2
                                        #     Child Loop BB0_160 Depth 2
                                        #     Child Loop BB0_162 Depth 2
	st.d	$a6, $sp, 240                   # 8-byte Folded Spill
	st.d	$a5, $sp, 248                   # 8-byte Folded Spill
	xvst	$xr4, $sp, 256                  # 32-byte Folded Spill
	st.d	$t3, $sp, 304                   # 8-byte Folded Spill
	move	$s2, $a4
	slli.d	$a0, $a4, 2
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	fldx.s	$fa0, $a1, $a0
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	addi.d	$s4, $a4, -1
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	fstx.s	$fa0, $s3, $a1
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	move	$a3, $s4
	ld.d	$a4, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 320                   # 8-byte Folded Reload
	move	$a7, $zero
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ld.d	$t2, $sp, 360                   # 8-byte Folded Reload
	slli.d	$a0, $s4, 2
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	fldx.s	$fa0, $a1, $a0
	ld.d	$ra, $sp, 296                   # 8-byte Folded Reload
	move	$a0, $zero
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 400                   # 8-byte Folded Reload
	fstx.s	$fa0, $a3, $a2
	alsl.d	$a1, $ra, $s3, 2
	st.d	$s3, $sp, 448                   # 8-byte Folded Spill
	fldx.s	$fa0, $s3, $a2
	fld.s	$fa1, $s0, 0
	addi.d	$a2, $a1, -4
	move	$t6, $a3
	alsl.d	$a1, $ra, $a3, 2
	addi.d	$a3, $a1, -8
	fadd.s	$fa0, $fa0, $fa1
	ld.d	$a1, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a5, $s2, $a1, 2
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	alsl.d	$a4, $s4, $a1, 2
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	move	$t7, $a1
	bstrpick.d	$a1, $a1, 31, 0
	xor	$a1, $s4, $a1
	sltui	$a6, $a1, 1
	ld.d	$t5, $sp, 288                   # 8-byte Folded Reload
	bstrpick.d	$a1, $t5, 31, 0
	xor	$a7, $s2, $a1
	move	$s3, $s4
	slli.d	$t0, $s4, 3
	ld.d	$t1, $sp, 312                   # 8-byte Folded Reload
	ldx.d	$t1, $t1, $t0
	ldx.d	$t0, $t2, $t0
	sltui	$a7, $a7, 1
	or	$a6, $a6, $a7
	ld.d	$t2, $sp, 168                   # 8-byte Folded Reload
	add.d	$a7, $t1, $t2
	add.d	$t0, $t0, $t2
	ld.d	$t8, $sp, 176                   # 8-byte Folded Reload
	move	$t1, $t8
	move	$t2, $t8
	b	.LBB0_146
	.p2align	4, , 16
.LBB0_145:                              # %if.end556.i
                                        #   in Loop: Header=BB0_146 Depth=2
	fldx.s	$fa2, $t0, $a0
	fadd.s	$fa2, $fa1, $fa2
	fstx.s	$fa2, $t0, $a0
	fldx.s	$fa2, $a3, $a0
	fldx.s	$fa3, $a7, $a0
	movcf2gr	$t3, $fcc0
	fadd.s	$fa2, $fa2, $fa3
	fstx.s	$fa2, $a7, $a0
	fldx.s	$fa2, $a3, $a0
	masknez	$t4, $t1, $t3
	maskeqz	$t2, $t2, $t3
	or	$t2, $t2, $t4
	fadd.s	$fa1, $fa1, $fa2
	fstx.s	$fa1, $a3, $a0
	addi.w	$t1, $t1, -1
	addi.d	$a0, $a0, -4
	blez	$t1, .LBB0_156
.LBB0_146:                              # %for.body489.i
                                        #   Parent Loop BB0_144 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$fa1, $fp, $a0
	fldx.s	$fa2, $a2, $a0
	fadd.s	$fa1, $fa0, $fa1
	fldx.s	$fa4, $s1, $a0
	fld.s	$fa5, $a5, 0
	fcmp.clt.s	$fcc0, $fa2, $fa1
	fsel	$fa1, $fa2, $fa1, $fcc0
	fldx.s	$fa3, $s0, $a0
	fadd.s	$fa5, $fa4, $fa5
	fcmp.cule.s	$fcc1, $fa5, $fa1
	bcnez	$fcc1, .LBB0_148
# %bb.147:                              # %if.then515.i
                                        #   in Loop: Header=BB0_146 Depth=2
	ld.d	$t3, $sp, 456                   # 8-byte Folded Reload
	ldx.w	$t3, $t3, $a0
	fmov.s	$fa1, $fa5
	move	$t4, $t1
	fld.s	$fa5, $a4, 0
	fadd.s	$fa5, $fa2, $fa5
	fcmp.cult.s	$fcc0, $fa5, $fa4
	bceqz	$fcc0, .LBB0_149
	b	.LBB0_150
	.p2align	4, , 16
.LBB0_148:                              #   in Loop: Header=BB0_146 Depth=2
	movcf2gr	$t3, $fcc0
	masknez	$t4, $t1, $t3
	maskeqz	$t3, $t2, $t3
	or	$t4, $t3, $t4
	move	$t3, $s2
	fld.s	$fa5, $a4, 0
	fadd.s	$fa5, $fa2, $fa5
	fcmp.cult.s	$fcc0, $fa5, $fa4
	bcnez	$fcc0, .LBB0_150
.LBB0_149:                              # %if.then523.i
                                        #   in Loop: Header=BB0_146 Depth=2
	fstx.s	$fa5, $s1, $a0
	ld.d	$s4, $sp, 456                   # 8-byte Folded Reload
	stx.w	$s2, $s4, $a0
.LBB0_150:                              # %if.end525.i
                                        #   in Loop: Header=BB0_146 Depth=2
	beqz	$a6, .LBB0_153
# %bb.151:                              # %if.then532.i
                                        #   in Loop: Header=BB0_146 Depth=2
	ld.d	$s4, $sp, 424                   # 8-byte Folded Reload
	stx.w	$t3, $s4, $a0
	ld.d	$t3, $sp, 432                   # 8-byte Folded Reload
	stx.w	$t4, $t3, $a0
	beq	$s3, $a1, .LBB0_154
.LBB0_152:                              # %if.end548.i
                                        #   in Loop: Header=BB0_146 Depth=2
	fadd.s	$fa2, $fa2, $fa3
	fcmp.cult.s	$fcc0, $fa2, $fa0
	fsel	$fa0, $fa2, $fa0, $fcc0
	bne	$s2, $a1, .LBB0_145
	b	.LBB0_155
	.p2align	4, , 16
.LBB0_153:                              # %if.end537.i
                                        #   in Loop: Header=BB0_146 Depth=2
	bne	$s3, $a1, .LBB0_152
.LBB0_154:                              # %if.then540.i
                                        #   in Loop: Header=BB0_146 Depth=2
	fldx.s	$fa4, $s5, $a0
	fadd.s	$fa4, $fa1, $fa4
	fstx.s	$fa4, $s5, $a0
	fldx.s	$fa4, $s1, $a0
	fldx.s	$fa5, $s6, $a0
	fadd.s	$fa4, $fa4, $fa5
	fstx.s	$fa4, $s6, $a0
	fadd.s	$fa2, $fa2, $fa3
	fcmp.cult.s	$fcc0, $fa2, $fa0
	fsel	$fa0, $fa2, $fa0, $fcc0
	bne	$s2, $a1, .LBB0_145
.LBB0_155:                              # %if.then552.i
                                        #   in Loop: Header=BB0_146 Depth=2
	fldx.s	$fa2, $s7, $a0
	fadd.s	$fa2, $fa0, $fa2
	fstx.s	$fa2, $s7, $a0
	b	.LBB0_145
	.p2align	4, , 16
.LBB0_156:                              # %for.end574.i
                                        #   in Loop: Header=BB0_144 Depth=1
	fldx.s	$fa0, $a2, $a0
	fld.s	$fa1, $a4, 0
	fadd.s	$fa0, $fa0, $fa1
	fcmp.clt.s	$fcc0, $fs0, $fa0
	fsel	$fs0, $fs0, $fa0, $fcc0
	ld.d	$t0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 304                   # 8-byte Folded Reload
	move	$a4, $s3
	bne	$s3, $a1, .LBB0_158
# %bb.157:                              # %if.then585.i
                                        #   in Loop: Header=BB0_144 Depth=1
	fld.s	$fa0, $t0, 0
	fadd.s	$fa0, $fs0, $fa0
	fst.s	$fa0, $t0, 0
.LBB0_158:                              # %if.end590.i
                                        #   in Loop: Header=BB0_144 Depth=1
	addi.w	$a0, $t5, -1
	ld.d	$a6, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 416                   # 8-byte Folded Reload
	xvld	$xr4, $sp, 256                  # 32-byte Folded Reload
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
	bne	$s2, $a1, .LBB0_170
# %bb.159:                              # %for.body600.preheader.i
                                        #   in Loop: Header=BB0_144 Depth=1
	fld.s	$fa4, $a7, 4
	move	$s8, $zero
	ori	$a1, $zero, 2
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_160:                              # %for.body600.i
                                        #   Parent Loop BB0_144 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $a2, 0
	fcmp.clt.s	$fcc1, $fa4, $fa0
	fsel	$fa4, $fa4, $fa0, $fcc1
	movcf2gr	$a4, $fcc1
	masknez	$a5, $s8, $a4
	maskeqz	$a4, $a1, $a4
	or	$s8, $a4, $a5
	addi.d	$a3, $a3, -1
	addi.w	$a1, $a1, 1
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB0_160
# %bb.161:                              # %for.body614.i.preheader
                                        #   in Loop: Header=BB0_144 Depth=1
	move	$a1, $zero
	move	$a2, $t0
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_162:                              # %for.body614.i
                                        #   Parent Loop BB0_144 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $a2, 0
	fcmp.clt.s	$fcc1, $fa4, $fa0
	fsel	$fa4, $fa4, $fa0, $fcc1
	movcf2gr	$a4, $fcc1
	masknez	$a5, $s8, $a4
	maskeqz	$a4, $a1, $a4
	or	$s8, $a4, $a5
	addi.d	$a3, $a3, -1
	addi.w	$a1, $a1, 1
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB0_162
# %bb.163:                              # %for.end623.i
                                        #   in Loop: Header=BB0_144 Depth=1
	slli.d	$a1, $s8, 2
	fldx.s	$fa0, $a7, $a1
	addi.w	$a5, $s8, -1
	ori	$a2, $zero, 1
	blt	$s8, $a2, .LBB0_168
# %bb.164:                              # %land.lhs.true.i
                                        #   in Loop: Header=BB0_144 Depth=1
	slli.d	$a2, $a5, 2
	fldx.s	$fa1, $a6, $a2
	fcmp.cule.s	$fcc1, $fa1, $fa0
	move	$a2, $a5
	move	$a4, $s3
	bcnez	$fcc1, .LBB0_166
# %bb.165:                              # %if.then635.i
                                        #   in Loop: Header=BB0_144 Depth=1
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	ldx.w	$a2, $a2, $a1
	fmov.s	$fa0, $fa1
.LBB0_166:                              # %if.end642.i
                                        #   in Loop: Header=BB0_144 Depth=1
	fldx.s	$fa1, $t0, $a1
	fcmp.cule.s	$fcc1, $fa1, $fa0
	bcnez	$fcc1, .LBB0_169
.LBB0_167:                              # %if.then647.i
                                        #   in Loop: Header=BB0_144 Depth=1
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ldx.w	$t7, $a2, $a1
	b	.LBB0_170
.LBB0_168:                              #   in Loop: Header=BB0_144 Depth=1
	move	$a2, $a5
	move	$a4, $s3
	fldx.s	$fa1, $t0, $a1
	fcmp.cule.s	$fcc1, $fa1, $fa0
	bceqz	$fcc1, .LBB0_167
.LBB0_169:                              #   in Loop: Header=BB0_144 Depth=1
	move	$t7, $a0
	move	$a5, $a2
.LBB0_170:                              # %if.end654.i
                                        #   in Loop: Header=BB0_144 Depth=1
	movcf2gr	$a1, $fcc0
	masknez	$a2, $t2, $a1
	maskeqz	$a1, $s2, $a1
	bstrpick.d	$a3, $t7, 31, 0
	or	$t3, $a1, $a2
	bne	$a4, $a3, .LBB0_142
# %bb.171:                              # %if.then657.i
                                        #   in Loop: Header=BB0_144 Depth=1
	beqz	$s8, .LBB0_174
# %bb.172:                              # %if.else.i
                                        #   in Loop: Header=BB0_144 Depth=1
	move	$a1, $t8
	move	$a2, $t1
	bge	$s8, $t1, .LBB0_143
# %bb.173:                              # %if.else667.i
                                        #   in Loop: Header=BB0_144 Depth=1
	slli.d	$a0, $a5, 2
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ldx.w	$t5, $a1, $a0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ldx.w	$a2, $a1, $a0
	move	$a0, $t7
	move	$a1, $a5
	b	.LBB0_143
.LBB0_174:                              # %if.then660.i
                                        #   in Loop: Header=BB0_144 Depth=1
	move	$a1, $zero
	addi.w	$a0, $t3, -1
	ori	$a2, $zero, 1
	move	$t5, $t3
	b	.LBB0_143
.LBB0_175:                              # %for.cond682.preheader.preheader.i
	move	$t6, $zero
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 30, 0
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	bstrpick.d	$a2, $a4, 30, 4
	slli.d	$a2, $a2, 4
	xvreplve0.w	$xr0, $xr4
	andi	$a3, $a4, 12
	bstrpick.d	$a4, $a4, 30, 2
	slli.d	$a4, $a4, 2
	vreplvei.w	$vr1, $vr4, 0
	sub.d	$a5, $zero, $a4
	ori	$a6, $zero, 4
	ori	$a7, $zero, 64
	ori	$t0, $zero, 16
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 16                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 360                   # 8-byte Folded Reload
	b	.LBB0_177
	.p2align	4, , 16
.LBB0_176:                              # %for.cond682.for.inc697_crit_edge.i
                                        #   in Loop: Header=BB0_177 Depth=1
	addi.d	$t6, $t6, 1
	beq	$t6, $a1, .LBB0_190
.LBB0_177:                              # %iter.check617
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_182 Depth 2
                                        #     Child Loop BB0_186 Depth 2
                                        #     Child Loop BB0_189 Depth 2
	slli.d	$t2, $t6, 3
	ldx.d	$t1, $fp, $t2
	ldx.d	$t2, $t8, $t2
	move	$t4, $zero
	bltu	$ra, $a6, .LBB0_188
# %bb.178:                              # %iter.check617
                                        #   in Loop: Header=BB0_177 Depth=1
	sub.d	$t3, $t2, $t1
	bltu	$t3, $a7, .LBB0_188
# %bb.179:                              # %vector.main.loop.iter.check619
                                        #   in Loop: Header=BB0_177 Depth=1
	bgeu	$ra, $t0, .LBB0_181
# %bb.180:                              #   in Loop: Header=BB0_177 Depth=1
	move	$t5, $zero
	b	.LBB0_185
	.p2align	4, , 16
.LBB0_181:                              # %vector.body625.preheader
                                        #   in Loop: Header=BB0_177 Depth=1
	addi.d	$t3, $t2, 32
	addi.d	$t4, $t1, 32
	move	$t5, $a2
	.p2align	4, , 16
.LBB0_182:                              # %vector.body625
                                        #   Parent Loop BB0_177 Depth=1
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
	bnez	$t5, .LBB0_182
# %bb.183:                              # %middle.block630
                                        #   in Loop: Header=BB0_177 Depth=1
	beq	$ra, $a2, .LBB0_176
# %bb.184:                              # %vec.epilog.iter.check635
                                        #   in Loop: Header=BB0_177 Depth=1
	move	$t5, $a2
	move	$t4, $a2
	beqz	$a3, .LBB0_188
.LBB0_185:                              # %vec.epilog.ph634
                                        #   in Loop: Header=BB0_177 Depth=1
	add.d	$t3, $a5, $t5
	alsl.d	$t4, $t5, $t2, 2
	alsl.d	$t5, $t5, $t1, 2
	.p2align	4, , 16
.LBB0_186:                              # %vec.epilog.vector.body642
                                        #   Parent Loop BB0_177 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $t5, 0
	vfdiv.s	$vr2, $vr2, $vr1
	vst	$vr2, $t4, 0
	addi.d	$t3, $t3, 4
	addi.d	$t4, $t4, 16
	addi.d	$t5, $t5, 16
	bnez	$t3, .LBB0_186
# %bb.187:                              # %vec.epilog.middle.block646
                                        #   in Loop: Header=BB0_177 Depth=1
	move	$t4, $a4
	beq	$ra, $a4, .LBB0_176
.LBB0_188:                              # %for.body685.i.preheader
                                        #   in Loop: Header=BB0_177 Depth=1
	sub.d	$t3, $ra, $t4
	alsl.d	$t2, $t4, $t2, 2
	alsl.d	$t1, $t4, $t1, 2
	.p2align	4, , 16
.LBB0_189:                              # %for.body685.i
                                        #   Parent Loop BB0_177 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa2, $t1, 0
	fdiv.s	$fa2, $fa2, $fa4
	fst.s	$fa2, $t2, 0
	addi.d	$t3, $t3, -1
	addi.d	$t2, $t2, 4
	addi.d	$t1, $t1, 4
	bnez	$t3, .LBB0_189
	b	.LBB0_176
.LBB0_190:                              # %for.end699.i
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
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
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
.LBB0_191:                              # %MSalignmm_rec.exit
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 1
	move	$fp, $a0
	blt	$s5, $s1, .LBB0_195
# %bb.192:                              # %for.body122.lr.ph
	ld.d	$a0, $s6, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $zero
	addi.w	$s2, $a0, 0
	move	$s3, $s5
	.p2align	4, , 16
.LBB0_193:                              # %for.body122
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB0_257
# %bb.194:                              # %for.inc133
                                        #   in Loop: Header=BB0_193 Depth=1
	addi.w	$s0, $s0, 1
	addi.d	$s3, $s3, -1
	addi.d	$s6, $s6, 8
	bnez	$s3, .LBB0_193
.LBB0_195:                              # %for.cond136.preheader
	blt	$s7, $s1, .LBB0_199
# %bb.196:                              # %for.body139.lr.ph
	move	$s0, $zero
	addi.w	$fp, $fp, 0
	move	$s1, $s7
	.p2align	4, , 16
.LBB0_197:                              # %for.body139
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s8, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB0_258
# %bb.198:                              # %for.inc150
                                        #   in Loop: Header=BB0_197 Depth=1
	addi.w	$s0, $s0, 1
	addi.d	$s1, $s1, -1
	addi.d	$s8, $s8, 8
	bnez	$s1, .LBB0_197
.LBB0_199:                              # %for.end152
	movgr2fr.w	$fa0, $zero
	fld.d	$fs0, $sp, 464                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 496                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 504                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 512                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 520                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 536                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 544                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 552                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 560
	ret
.LBB0_200:                              # %vector.memcheck380
	alsl.d	$a3, $a0, $t1, 2
	addi.d	$a1, $a1, -4
	sltu	$a1, $t2, $a1
	sltu	$a4, $s3, $a3
	and	$a1, $a1, $a4
	bnez	$a1, .LBB0_107
# %bb.201:                              # %vector.memcheck380
	addi.d	$a1, $s6, 8
	sltu	$a1, $t2, $a1
	sltu	$a3, $s5, $a3
	and	$a1, $a1, $a3
	bnez	$a1, .LBB0_107
# %bb.202:                              # %vector.main.loop.iter.check397
	ori	$a1, $zero, 17
	bge	$t6, $a1, .LBB0_223
# %bb.203:
	move	$a1, $zero
	b	.LBB0_227
.LBB0_204:                              # %vector.memcheck429
	slli.d	$a0, $s2, 2
	alsl.d	$a1, $s2, $fp, 2
	addi.d	$a3, $a0, 4
	add.d	$a0, $a4, $a3
	sltu	$a0, $fp, $a0
	sltu	$a4, $a2, $a1
	and	$a4, $a0, $a4
	move	$a0, $zero
	ld.d	$t1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 384                   # 8-byte Folded Reload
	bnez	$a4, .LBB0_221
# %bb.205:                              # %vector.memcheck429
	add.d	$a3, $a5, $a3
	sltu	$a3, $fp, $a3
	sltu	$a1, $s5, $a1
	and	$a1, $a3, $a1
	ld.d	$t5, $sp, 352                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 176                   # 8-byte Folded Reload
	bnez	$a1, .LBB0_125
# %bb.206:                              # %vector.main.loop.iter.check445
	ori	$a0, $zero, 16
	bgeu	$t3, $a0, .LBB0_230
# %bb.207:
	move	$a0, $zero
	b	.LBB0_234
.LBB0_208:                              # %vector.memcheck478
	addi.d	$a4, $s8, 4
	add.d	$a3, $t1, $a4
	sltu	$a3, $s3, $a3
	sltu	$a5, $a0, $a1
	and	$a5, $a3, $a5
	move	$a3, $zero
	bnez	$a5, .LBB0_129
# %bb.209:                              # %vector.memcheck478
	addi.d	$a5, $s7, 4
	add.d	$a4, $s7, $a4
	sltu	$a4, $s3, $a4
	sltu	$a5, $a5, $a1
	and	$a4, $a4, $a5
	bnez	$a4, .LBB0_129
# %bb.210:                              # %vector.main.loop.iter.check496
	ori	$a3, $zero, 17
	ld.d	$a4, $sp, 416                   # 8-byte Folded Reload
	bgeu	$a4, $a3, .LBB0_237
# %bb.211:
	move	$a3, $zero
	b	.LBB0_241
.LBB0_212:                              # %vector.memcheck529
	alsl.d	$a4, $t7, $a2, 2
	addi.d	$a5, $s8, 4
	add.d	$a3, $t1, $a5
	sltu	$a3, $a2, $a3
	sltu	$a6, $a0, $a4
	and	$a6, $a3, $a6
	move	$a3, $zero
	bnez	$a6, .LBB0_135
# %bb.213:                              # %vector.memcheck529
	addi.d	$a6, $s7, 4
	add.d	$a5, $s7, $a5
	sltu	$a5, $a2, $a5
	sltu	$a4, $a6, $a4
	and	$a4, $a5, $a4
	bnez	$a4, .LBB0_135
# %bb.214:                              # %vector.main.loop.iter.check546
	ori	$a3, $zero, 17
	ld.d	$a4, $sp, 416                   # 8-byte Folded Reload
	bgeu	$a4, $a3, .LBB0_244
# %bb.215:
	move	$a3, $zero
	b	.LBB0_248
.LBB0_216:                              # %vector.memcheck579
	sub.d	$a5, $a5, $t2
	nor	$a5, $a5, $zero
	bstrpick.d	$a5, $a5, 31, 0
	slli.d	$a5, $a5, 2
	sub.d	$a6, $s8, $a5
	add.d	$a5, $a6, $t6
	addi.d	$a5, $a5, -4
	add.d	$a6, $s3, $a6
	addi.d	$a1, $a1, 4
	sltu	$a1, $a5, $a1
	ld.d	$t0, $sp, 432                   # 8-byte Folded Reload
	sltu	$a6, $a6, $t0
	and	$a1, $a1, $a6
	ld.d	$t8, $sp, 296                   # 8-byte Folded Reload
	bnez	$a1, .LBB0_222
# %bb.217:                              # %vector.memcheck579
	sltu	$a0, $a5, $a0
	sltu	$a1, $a3, $t0
	and	$a1, $a0, $a1
	move	$a0, $t7
	bnez	$a1, .LBB0_139
# %bb.218:                              # %vector.ph595
	bstrpick.d	$a0, $a4, 31, 0
	addi.d	$a1, $a0, 1
	bstrpick.d	$a0, $a1, 32, 3
	slli.d	$a4, $a0, 3
	sub.d	$a0, $t7, $a4
	xvreplgr2vr.w	$xr0, $t3
	xvldrepl.w	$xr1, $a3, 0
	addi.d	$a7, $s8, -28
	ld.d	$a5, $sp, 440                   # 8-byte Folded Reload
	add.d	$a5, $a5, $a7
	addi.d	$a6, $t0, -32
	add.d	$a7, $s3, $a7
	move	$t0, $a4
	.p2align	4, , 16
.LBB0_219:                              # %vector.body600
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a7, 0
	xvfadd.s	$xr2, $xr2, $xr1
	xvst	$xr2, $a6, 0
	xvst	$xr0, $a5, 0
	addi.d	$t0, $t0, -8
	addi.d	$a5, $a5, -32
	addi.d	$a6, $a6, -32
	addi.d	$a7, $a7, -32
	bnez	$t0, .LBB0_219
# %bb.220:                              # %middle.block609
	bne	$a1, $a4, .LBB0_139
	b	.LBB0_141
.LBB0_221:
	ld.d	$t5, $sp, 352                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 176                   # 8-byte Folded Reload
	b	.LBB0_125
.LBB0_222:
	move	$a0, $t7
	b	.LBB0_139
.LBB0_223:                              # %vector.ph398
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	bstrins.d	$a1, $zero, 3, 0
	xvldrepl.w	$xr0, $s5, 0
	addi.d	$a2, $s3, 32
	addi.d	$a3, $t1, 36
	ld.d	$a4, $sp, 440                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 36
	xvrepli.b	$xr1, 0
	move	$a5, $a1
	.p2align	4, , 16
.LBB0_224:                              # %vector.body401
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a2, -32
	xvld	$xr3, $a2, 0
	xvfadd.s	$xr2, $xr2, $xr0
	xvfadd.s	$xr3, $xr3, $xr0
	xvst	$xr2, $a3, -32
	xvst	$xr3, $a3, 0
	xvst	$xr1, $a4, -32
	xvst	$xr1, $a4, 0
	addi.d	$a5, $a5, -16
	addi.d	$a2, $a2, 64
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB0_224
# %bb.225:                              # %middle.block408
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	beq	$a2, $a1, .LBB0_109
# %bb.226:                              # %vec.epilog.iter.check413
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	andi	$a2, $a2, 12
	beqz	$a2, .LBB0_253
.LBB0_227:                              # %vec.epilog.ph412
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	move	$a3, $a2
	bstrins.d	$a3, $zero, 1, 0
	ori	$a4, $zero, 1
	bstrins.d	$a2, $a4, 1, 0
	vldrepl.w	$vr0, $s5, 0
	slli.d	$a5, $a1, 2
	alsl.d	$a4, $a1, $s3, 2
	addi.d	$a6, $a5, 4
	add.d	$a5, $t1, $a6
	ld.d	$a7, $sp, 440                   # 8-byte Folded Reload
	add.d	$a6, $a7, $a6
	sub.d	$a1, $a1, $a3
	vrepli.b	$vr1, 0
	.p2align	4, , 16
.LBB0_228:                              # %vec.epilog.vector.body418
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a4, 0
	vfadd.s	$vr2, $vr2, $vr0
	vst	$vr2, $a5, 0
	vst	$vr1, $a6, 0
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	addi.d	$a1, $a1, 4
	addi.d	$a6, $a6, 16
	bnez	$a1, .LBB0_228
# %bb.229:                              # %vec.epilog.middle.block425
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	bne	$a1, $a3, .LBB0_107
	b	.LBB0_109
.LBB0_230:                              # %vector.ph446
	bstrpick.d	$a0, $s2, 30, 4
	xvldrepl.w	$xr0, $a2, 0
	slli.d	$a0, $a0, 4
	addi.d	$a1, $a5, 36
	addi.d	$a3, $fp, 32
	move	$a4, $a0
	.p2align	4, , 16
.LBB0_231:                              # %vector.body449
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a1, -32
	xvld	$xr2, $a1, 0
	xvld	$xr3, $a3, -32
	xvld	$xr4, $a3, 0
	xvfadd.s	$xr1, $xr0, $xr1
	xvfadd.s	$xr2, $xr0, $xr2
	xvfadd.s	$xr1, $xr3, $xr1
	xvfadd.s	$xr2, $xr4, $xr2
	xvst	$xr1, $a3, -32
	xvst	$xr2, $a3, 0
	addi.d	$a1, $a1, 64
	addi.d	$a4, $a4, -16
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB0_231
# %bb.232:                              # %middle.block458
	beq	$a0, $s2, .LBB0_127
# %bb.233:                              # %vec.epilog.iter.check463
	andi	$a1, $s2, 12
	beqz	$a1, .LBB0_125
.LBB0_234:                              # %vec.epilog.ph462
	move	$a4, $a0
	bstrpick.d	$a0, $s2, 30, 2
	slli.d	$a0, $a0, 2
	vldrepl.w	$vr0, $a2, 0
	alsl.d	$a1, $a4, $a5, 2
	addi.d	$a1, $a1, 4
	sub.d	$a3, $a4, $a0
	alsl.d	$a4, $a4, $fp, 2
	.p2align	4, , 16
.LBB0_235:                              # %vec.epilog.vector.body468
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a1, 0
	vld	$vr2, $a4, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $a4, 0
	addi.d	$a1, $a1, 16
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 16
	bnez	$a3, .LBB0_235
# %bb.236:                              # %vec.epilog.middle.block475
	bne	$a0, $s2, .LBB0_125
	b	.LBB0_127
.LBB0_237:                              # %vector.ph497
	bstrpick.d	$a3, $t7, 30, 4
	xvldrepl.w	$xr0, $a0, 0
	slli.d	$a3, $a3, 4
	addi.d	$a4, $s7, 36
	addi.d	$a5, $s3, 32
	move	$a6, $a3
	.p2align	4, , 16
.LBB0_238:                              # %vector.body500
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a4, -32
	xvld	$xr2, $a4, 0
	xvld	$xr3, $a5, -32
	xvld	$xr4, $a5, 0
	xvfadd.s	$xr1, $xr0, $xr1
	xvfadd.s	$xr2, $xr0, $xr2
	xvfadd.s	$xr1, $xr3, $xr1
	xvfadd.s	$xr2, $xr4, $xr2
	xvst	$xr1, $a5, -32
	xvst	$xr2, $a5, 0
	addi.d	$a4, $a4, 64
	addi.d	$a6, $a6, -16
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB0_238
# %bb.239:                              # %middle.block509
	beq	$a3, $t7, .LBB0_131
# %bb.240:                              # %vec.epilog.iter.check514
	andi	$a4, $t7, 12
	beqz	$a4, .LBB0_129
.LBB0_241:                              # %vec.epilog.ph513
	move	$a6, $a3
	bstrpick.d	$a3, $t7, 30, 2
	slli.d	$a3, $a3, 2
	vldrepl.w	$vr0, $a0, 0
	alsl.d	$a4, $a6, $s7, 2
	addi.d	$a4, $a4, 4
	sub.d	$a5, $a6, $a3
	alsl.d	$a6, $a6, $s3, 2
	.p2align	4, , 16
.LBB0_242:                              # %vec.epilog.vector.body519
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a4, 0
	vld	$vr2, $a6, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $a6, 0
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 16
	bnez	$a5, .LBB0_242
# %bb.243:                              # %vec.epilog.middle.block526
	bne	$a3, $t7, .LBB0_129
	b	.LBB0_131
.LBB0_244:                              # %vector.ph547
	bstrpick.d	$a3, $t7, 30, 4
	xvldrepl.w	$xr0, $a0, 0
	slli.d	$a3, $a3, 4
	addi.d	$a4, $s7, 36
	addi.d	$a5, $a2, 32
	move	$a6, $a3
	.p2align	4, , 16
.LBB0_245:                              # %vector.body550
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a4, -32
	xvld	$xr2, $a4, 0
	xvld	$xr3, $a5, -32
	xvld	$xr4, $a5, 0
	xvfadd.s	$xr1, $xr0, $xr1
	xvfadd.s	$xr2, $xr0, $xr2
	xvfadd.s	$xr1, $xr1, $xr3
	xvfadd.s	$xr2, $xr2, $xr4
	xvst	$xr1, $a5, -32
	xvst	$xr2, $a5, 0
	addi.d	$a4, $a4, 64
	addi.d	$a6, $a6, -16
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB0_245
# %bb.246:                              # %middle.block559
	beq	$a3, $t7, .LBB0_137
# %bb.247:                              # %vec.epilog.iter.check564
	andi	$a4, $t7, 12
	beqz	$a4, .LBB0_135
.LBB0_248:                              # %vec.epilog.ph563
	move	$a6, $a3
	bstrpick.d	$a3, $t7, 30, 2
	slli.d	$a3, $a3, 2
	vldrepl.w	$vr0, $a0, 0
	alsl.d	$a4, $a6, $s7, 2
	addi.d	$a4, $a4, 4
	sub.d	$a5, $a6, $a3
	alsl.d	$a6, $a6, $a2, 2
	.p2align	4, , 16
.LBB0_249:                              # %vec.epilog.vector.body569
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a4, 0
	vld	$vr2, $a6, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr1, $vr2
	vst	$vr1, $a6, 0
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 16
	bnez	$a5, .LBB0_249
# %bb.250:                              # %vec.epilog.middle.block576
	bne	$a3, $t7, .LBB0_135
	b	.LBB0_137
.LBB0_251:
	addi.d	$fp, $a1, 1
	b	.LBB0_47
.LBB0_252:
	addi.d	$a2, $a3, 1
	b	.LBB0_50
.LBB0_253:
	addi.d	$a2, $a1, 1
	b	.LBB0_107
.LBB0_254:                              # %if.then
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
	b	.LBB0_256
.LBB0_255:                              # %if.then45
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	move	$a2, $s4
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
.LBB0_256:                              # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 27
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_257:                              # %if.then129
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	move	$a2, $s0
	move	$a3, $s5
	b	.LBB0_259
.LBB0_258:                              # %if.then146
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	move	$a2, $s0
	move	$a3, $s7
.LBB0_259:                              # %if.then129
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
	addi.d	$sp, $sp, -560
	st.d	$ra, $sp, 552                   # 8-byte Folded Spill
	st.d	$fp, $sp, 544                   # 8-byte Folded Spill
	st.d	$s0, $sp, 536                   # 8-byte Folded Spill
	st.d	$s1, $sp, 528                   # 8-byte Folded Spill
	st.d	$s2, $sp, 520                   # 8-byte Folded Spill
	st.d	$s3, $sp, 512                   # 8-byte Folded Spill
	st.d	$s4, $sp, 504                   # 8-byte Folded Spill
	st.d	$s5, $sp, 496                   # 8-byte Folded Spill
	st.d	$s6, $sp, 488                   # 8-byte Folded Spill
	st.d	$s7, $sp, 480                   # 8-byte Folded Spill
	st.d	$s8, $sp, 472                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 464                  # 8-byte Folded Spill
	pcalau12i	$t0, %got_pc_hi20(penalty)
	ld.d	$t0, $t0, %got_pc_lo12(penalty)
	move	$s8, $a0
	ld.d	$s0, $sp, 568
	ld.d	$s3, $sp, 560
	ld.w	$s6, $t0, 0
	ld.d	$a0, $a0, 0
	move	$s1, $a7
	move	$s2, $a6
	st.d	$a5, $sp, 448                   # 8-byte Folded Spill
	move	$s5, $a4
	st.d	$a3, $sp, 440                   # 8-byte Folded Spill
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
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	ori	$a0, $zero, 4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	addi.w	$s0, $s4, 102
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	addi.w	$fp, $s8, 102
	move	$a0, $fp
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	move	$a0, $fp
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	ori	$a1, $zero, 39
	st.d	$s0, $sp, 424                   # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	ori	$a1, $zero, 39
	st.d	$fp, $sp, 432                   # 8-byte Folded Spill
	move	$a0, $fp
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	ori	$s8, $zero, 1
	st.d	$s4, $sp, 160                   # 8-byte Folded Spill
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
	bne	$a0, $s4, .LBB1_254
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB1_2 Depth=1
	addi.w	$fp, $fp, 1
	addi.d	$s0, $s0, -1
	addi.d	$s3, $s3, 8
	bnez	$s0, .LBB1_2
.LBB1_4:                                # %for.cond35.preheader
	st.d	$s4, $sp, 456                   # 8-byte Folded Spill
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
	bne	$a0, $fp, .LBB1_255
# %bb.7:                                # %for.inc49
                                        #   in Loop: Header=BB1_6 Depth=1
	addi.w	$s8, $s8, 1
	addi.d	$s0, $s0, -1
	addi.d	$s3, $s3, 8
	bnez	$s0, .LBB1_6
.LBB1_8:                                # %for.end51
	ld.d	$s8, $sp, 584
	movgr2fr.w	$fa0, $s6
	ffint.s.w	$fs0, $fa0
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	move	$a0, $s0
	move	$a1, $s7
	move	$a2, $s5
	ld.d	$a3, $sp, 376                   # 8-byte Folded Reload
	move	$a4, $s2
	ld.d	$s7, $sp, 456                   # 8-byte Folded Reload
	move	$a5, $s7
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	move	$a6, $s5
	pcaddu18i	$ra, %call36(cpmx_ribosum)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	move	$a0, $s6
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 368                   # 8-byte Folded Reload
	move	$a4, $s1
	move	$a5, $fp
	move	$s4, $s1
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
	move	$a6, $s1
	pcaddu18i	$ra, %call36(cpmx_ribosum)
	jirl	$ra, $ra, 0
	beqz	$s8, .LBB1_10
# %bb.9:                                # %if.then52
	ld.d	$s3, $sp, 608
	ld.d	$a0, $sp, 592
	st.d	$a0, $sp, 448                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	move	$a1, $s5
	move	$a2, $s0
	move	$a3, $s2
	move	$a4, $s7
	move	$a5, $s8
	pcaddu18i	$ra, %call36(new_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	move	$a1, $s1
	move	$a2, $s6
	move	$a3, $s4
	move	$a4, $fp
	ld.d	$a5, $sp, 448                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(new_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	move	$a1, $s5
	move	$a2, $s0
	move	$a3, $s2
	move	$a4, $s7
	move	$a5, $s3
	pcaddu18i	$ra, %call36(new_FinalGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	move	$a1, $s1
	move	$a2, $s6
	move	$a3, $s4
	move	$a4, $fp
	move	$a5, $s3
	pcaddu18i	$ra, %call36(new_FinalGapCount)
	jirl	$ra, $ra, 0
	b	.LBB1_11
.LBB1_10:                               # %if.else
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	move	$a1, $s5
	move	$a2, $s0
	move	$a3, $s2
	move	$a4, $s7
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	move	$a1, $s1
	move	$a2, $s6
	move	$a3, $s4
	move	$a4, $fp
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	move	$a1, $s5
	move	$a2, $s0
	move	$a3, $s2
	move	$a4, $s7
	pcaddu18i	$ra, %call36(st_FinalGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
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
	ld.d	$a6, $sp, 216                   # 8-byte Folded Reload
	blt	$s7, $a0, .LBB1_18
# %bb.12:                               # %for.body57.lr.ph
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 30, 0
	ori	$a2, $zero, 8
	bltu	$a1, $a2, .LBB1_15
# %bb.13:                               # %vector.memcheck
	ld.d	$a5, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a5, 2
	ld.d	$a4, $sp, 392                   # 8-byte Folded Reload
	bgeu	$a4, $a2, .LBB1_68
# %bb.14:                               # %vector.memcheck
	alsl.d	$a2, $a1, $a4, 2
	bgeu	$a5, $a2, .LBB1_68
.LBB1_15:
	move	$a2, $zero
.LBB1_16:                               # %for.body57.preheader
	ld.d	$a3, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a3, 2
	ld.d	$a4, $sp, 392                   # 8-byte Folded Reload
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
# %bb.20:                               # %vector.memcheck199
	alsl.d	$a1, $a0, $a6, 2
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	bgeu	$a3, $a1, .LBB1_71
# %bb.21:                               # %vector.memcheck199
	alsl.d	$a1, $a0, $a3, 2
	bgeu	$a6, $a1, .LBB1_71
.LBB1_22:
	move	$a1, $zero
.LBB1_23:                               # %for.body82.preheader
	alsl.d	$a2, $a1, $a6, 2
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
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
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	st.d	$a0, $a2, 0
	pcalau12i	$a0, %pc_hi20(reccycle)
	ld.w	$a1, $a0, %pc_lo12(reccycle)
	ld.d	$a3, $sp, 384                   # 8-byte Folded Reload
	st.d	$a3, $a2, 8
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	st.d	$a3, $a2, 16
	st.d	$a6, $a2, 24
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
# %bb.29:                               # %vector.ph225
	bstrpick.d	$a2, $s7, 30, 3
	slli.d	$a2, $a2, 3
	addi.d	$a3, $fp, 32
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a4, $a4, 32
	move	$a5, $a2
	.p2align	4, , 16
.LBB1_30:                               # %vector.body228
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a4, -32
	xvld	$xr1, $a4, 0
	xvst	$xr0, $a3, -32
	xvst	$xr1, $a3, 0
	addi.d	$a5, $a5, -8
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB1_30
# %bb.31:                               # %middle.block233
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
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	sub.d	$a2, $a0, $a2
	ori	$a3, $zero, 64
	bltu	$a2, $a3, .LBB1_40
# %bb.37:                               # %vector.ph242
	bstrpick.d	$a1, $s5, 30, 3
	slli.d	$a1, $a1, 3
	addi.d	$a2, $a0, 32
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 32
	move	$a4, $a1
	.p2align	4, , 16
.LBB1_38:                               # %vector.body245
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a3, -32
	xvld	$xr1, $a3, 0
	xvst	$xr0, $a2, -32
	xvst	$xr1, $a2, 0
	addi.d	$a4, $a4, -8
	addi.d	$a2, $a2, 64
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB1_38
# %bb.39:                               # %middle.block250
	beq	$a1, $s5, .LBB1_42
.LBB1_40:                               # %for.body65.i.preheader
	sub.d	$a2, $s5, $a1
	alsl.d	$a3, $a1, $a0, 3
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
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
	ld.d	$a2, $sp, 456                   # 8-byte Folded Reload
	blt	$a2, $a1, .LBB1_67
# %bb.43:                               # %for.end72.i
	addi.w	$a2, $s0, 0
	ori	$a1, $zero, 9
	bgeu	$a1, $a2, .LBB1_67
# %bb.44:                               # %iter.check
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	addi.w	$s2, $a1, 100
	move	$s8, $a2
	addi.w	$s3, $s0, 100
	ld.d	$s0, $sp, 432                   # 8-byte Folded Reload
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$s1, $sp, 424                   # 8-byte Folded Reload
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
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
	move	$s6, $a0
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	move	$a0, $s2
	move	$a1, $s3
	move	$s3, $fp
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	ori	$a7, $zero, 1
	ori	$fp, $zero, 1
	move	$a0, $s4
	ld.d	$s1, $sp, 368                   # 8-byte Folded Reload
	move	$a1, $s1
	ld.d	$s0, $sp, 376                   # 8-byte Folded Reload
	move	$a2, $s0
	move	$a3, $zero
	ld.d	$a4, $sp, 456                   # 8-byte Folded Reload
	move	$a5, $s5
	move	$a6, $s6
	pcaddu18i	$ra, %call36(match_ribosum)
	jirl	$ra, $ra, 0
	ori	$a7, $zero, 1
	move	$a0, $s3
	move	$a1, $s0
	move	$a2, $s1
	move	$a3, $zero
	st.d	$s8, $sp, 416                   # 8-byte Folded Spill
	move	$a4, $s8
	st.d	$s5, $sp, 328                   # 8-byte Folded Spill
	move	$a5, $s5
	st.d	$s6, $sp, 320                   # 8-byte Folded Spill
	move	$a6, $s6
	pcaddu18i	$ra, %call36(match_ribosum)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	addi.w	$a1, $a0, 1
	ori	$a0, $zero, 2
	slt	$a2, $a0, $a1
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $a1, $a2
	or	$t7, $a2, $a0
	ori	$a0, $zero, 4
	ld.d	$a5, $sp, 392                   # 8-byte Folded Reload
	addi.d	$s5, $a5, 4
	blt	$a0, $a1, .LBB1_74
# %bb.45:
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
.LBB1_46:                               # %for.body145.i.preheader
	ld.d	$t0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 360                   # 8-byte Folded Reload
.LBB1_47:                               # %for.body145.i.preheader
	sub.d	$a0, $t7, $fp
	alsl.d	$a1, $fp, $s4, 2
	alsl.d	$a2, $fp, $a6, 2
	addi.d	$a2, $a2, -4
	.p2align	4, , 16
.LBB1_48:                               # %for.body145.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a5, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a1, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	bnez	$a0, .LBB1_48
.LBB1_49:                               # %iter.check307
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	addi.w	$t4, $a0, -1
	addi.w	$t3, $t0, -1
	addi.w	$t6, $t0, 1
	ori	$a0, $zero, 2
	slt	$a1, $a0, $t6
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $t6, $a1
	or	$a0, $a1, $a0
	addi.d	$a1, $a0, -1
	st.d	$a1, $sp, 424                   # 8-byte Folded Spill
	ori	$a2, $zero, 1
	ori	$a3, $zero, 4
	alsl.d	$a1, $a0, $s3, 2
	addi.d	$a4, $s7, 4
	st.d	$a4, $sp, 256                   # 8-byte Folded Spill
	blt	$a3, $t6, .LBB1_78
.LBB1_50:                               # %for.body161.i.preheader
	sub.d	$a3, $a0, $a2
	alsl.d	$a4, $a2, $s3, 2
	alsl.d	$a2, $a2, $a7, 2
	addi.d	$a2, $a2, -4
	.p2align	4, , 16
.LBB1_51:                               # %for.body161.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $s7, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a4, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a4, 0
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 4
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB1_51
.LBB1_52:                               # %for.body180.preheader.i
	fld.s	$fa0, $s4, 0
	ld.d	$a2, $t2, 0
	ld.d	$t5, $sp, 616
	fst.s	$fa0, $a2, 0
	slli.d	$a3, $t7, 2
	ori	$a4, $zero, 4
	ori	$a5, $zero, 8
	.p2align	4, , 16
.LBB1_53:                               # %for.body180.i
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa0, $s4, $a4
	ldx.d	$a6, $t2, $a5
	fst.s	$fa0, $a6, 0
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 8
	bne	$a3, $a4, .LBB1_53
# %bb.54:                               # %iter.check350
	ori	$a3, $zero, 5
	ori	$a4, $zero, 1
	blt	$t6, $a3, .LBB1_104
# %bb.55:                               # %iter.check350
	sub.d	$a3, $a2, $s3
	ori	$a5, $zero, 63
	bgeu	$a5, $a3, .LBB1_104
# %bb.56:                               # %vector.main.loop.iter.check352
	ori	$a3, $zero, 17
	bge	$t6, $a3, .LBB1_82
# %bb.57:
	move	$a3, $zero
	b	.LBB1_86
.LBB1_58:                               # %for.cond.preheader.i
	ori	$fp, $zero, 1
	ld.d	$s3, $sp, 456                   # 8-byte Folded Reload
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
	blt	$s5, $fp, .LBB1_191
# %bb.62:                               # %for.body32.lr.ph.i
	move	$s0, $zero
	ori	$s1, $zero, 1
	ori	$s2, $zero, 45
	b	.LBB1_64
	.p2align	4, , 16
.LBB1_63:                               # %for.inc46.i
                                        #   in Loop: Header=BB1_64 Depth=1
	addi.d	$s0, $s0, 1
	ld.d	$s3, $sp, 456                   # 8-byte Folded Reload
	beq	$s0, $s5, .LBB1_191
.LBB1_64:                               # %for.body32.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_66 Depth 2
	slli.d	$a0, $s0, 3
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	st.b	$zero, $a0, 0
	blt	$s3, $s1, .LBB1_63
# %bb.65:                               # %for.body39.i.preheader
                                        #   in Loop: Header=BB1_64 Depth=1
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$s3, $s0, $a0, 3
	ld.d	$s4, $sp, 160                   # 8-byte Folded Reload
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
	b	.LBB1_191
.LBB1_68:                               # %vector.ph
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	bstrpick.d	$a2, $a2, 30, 3
	slli.d	$a2, $a2, 3
	xvreplve0.d	$xr1, $xr0
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr2, $a3
	lu52i.d	$a3, $zero, 1022
	xvreplgr2vr.d	$xr3, $a3
	move	$a3, $a4
	move	$a4, $a5
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
	xvpickve.d	$xr6, $xr5, 1
	fcvt.s.d	$fa6, $fa6
	xvpickve.d	$xr7, $xr5, 0
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr7, $xr6, 1
	xvpickve.d	$xr6, $xr5, 2
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr7, $xr6, 2
	xvpickve.d	$xr5, $xr5, 3
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 3
	xvpickve.d	$xr5, $xr4, 0
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 4
	xvpickve.d	$xr5, $xr4, 1
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 5
	xvpickve.d	$xr5, $xr4, 2
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 6
	xvpickve.d	$xr4, $xr4, 3
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
	xvpickve.d	$xr6, $xr5, 1
	fcvt.s.d	$fa6, $fa6
	xvpickve.d	$xr7, $xr5, 0
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr7, $xr6, 1
	xvpickve.d	$xr6, $xr5, 2
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr7, $xr6, 2
	xvpickve.d	$xr5, $xr5, 3
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 3
	xvpickve.d	$xr5, $xr4, 0
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 4
	xvpickve.d	$xr5, $xr4, 1
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 5
	xvpickve.d	$xr5, $xr4, 2
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 6
	xvpickve.d	$xr4, $xr4, 3
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
.LBB1_71:                               # %vector.ph207
	bstrpick.d	$a1, $s0, 30, 3
	slli.d	$a1, $a1, 3
	xvreplve0.d	$xr1, $xr0
	lu52i.d	$a2, $zero, 1023
	xvreplgr2vr.d	$xr2, $a2
	lu52i.d	$a2, $zero, 1022
	xvreplgr2vr.d	$xr3, $a2
	move	$a2, $a3
	move	$a3, $a6
	move	$a4, $a1
	.p2align	4, , 16
.LBB1_72:                               # %vector.body212
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
	xvpickve.d	$xr6, $xr5, 1
	fcvt.s.d	$fa6, $fa6
	xvpickve.d	$xr7, $xr5, 0
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr7, $xr6, 1
	xvpickve.d	$xr6, $xr5, 2
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr7, $xr6, 2
	xvpickve.d	$xr5, $xr5, 3
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 3
	xvpickve.d	$xr5, $xr4, 0
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 4
	xvpickve.d	$xr5, $xr4, 1
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 5
	xvpickve.d	$xr5, $xr4, 2
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 6
	xvpickve.d	$xr4, $xr4, 3
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
	xvpickve.d	$xr6, $xr5, 1
	fcvt.s.d	$fa6, $fa6
	xvpickve.d	$xr7, $xr5, 0
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr7, $xr6, 1
	xvpickve.d	$xr6, $xr5, 2
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr7, $xr6, 2
	xvpickve.d	$xr5, $xr5, 3
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 3
	xvpickve.d	$xr5, $xr4, 0
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 4
	xvpickve.d	$xr5, $xr4, 1
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 5
	xvpickve.d	$xr5, $xr4, 2
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr7, $xr5, 6
	xvpickve.d	$xr4, $xr4, 3
	fcvt.s.d	$fa4, $fa4
	xvinsve0.w	$xr7, $xr4, 7
	xvst	$xr7, $a3, 0
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 32
	addi.d	$a2, $a2, 32
	bnez	$a4, .LBB1_72
# %bb.73:                               # %middle.block217
	beq	$a0, $a1, .LBB1_25
	b	.LBB1_23
.LBB1_74:                               # %vector.memcheck253
	addi.d	$a0, $s4, 4
	alsl.d	$a2, $t7, $s4, 2
	sltu	$a3, $a0, $s5
	sltu	$a4, $a5, $a2
	and	$a3, $a3, $a4
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	bnez	$a3, .LBB1_46
# %bb.75:                               # %vector.memcheck253
	alsl.d	$a3, $t7, $a6, 2
	addi.d	$a3, $a3, -4
	sltu	$a0, $a0, $a3
	sltu	$a2, $a6, $a2
	and	$a0, $a0, $a2
	ld.d	$t0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 360                   # 8-byte Folded Reload
	bnez	$a0, .LBB1_47
# %bb.76:                               # %vector.main.loop.iter.check
	ori	$a2, $zero, 17
	addi.d	$a0, $t7, -1
	bge	$a1, $a2, .LBB1_89
# %bb.77:
	move	$a1, $zero
	b	.LBB1_93
.LBB1_78:                               # %vector.memcheck292
	addi.d	$a3, $s3, 4
	sltu	$a4, $a3, $a4
	sltu	$a5, $s7, $a1
	and	$a4, $a4, $a5
	bnez	$a4, .LBB1_50
# %bb.79:                               # %vector.memcheck292
	alsl.d	$a4, $a0, $a7, 2
	addi.d	$a4, $a4, -4
	sltu	$a3, $a3, $a4
	sltu	$a4, $a7, $a1
	and	$a3, $a3, $a4
	bnez	$a3, .LBB1_50
# %bb.80:                               # %vector.main.loop.iter.check309
	ori	$a2, $zero, 17
	bge	$t6, $a2, .LBB1_96
# %bb.81:
	move	$a3, $zero
	b	.LBB1_100
.LBB1_82:                               # %vector.ph353
	ld.d	$a3, $sp, 424                   # 8-byte Folded Reload
	bstrins.d	$a3, $zero, 3, 0
	addi.d	$a4, $s3, 36
	addi.d	$a5, $a2, 36
	move	$a6, $a3
	.p2align	4, , 16
.LBB1_83:                               # %vector.body356
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a4, -32
	xvld	$xr1, $a4, 0
	xvst	$xr0, $a5, -32
	xvst	$xr1, $a5, 0
	addi.d	$a4, $a4, 64
	addi.d	$a6, $a6, -16
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB1_83
# %bb.84:                               # %middle.block361
	ld.d	$a4, $sp, 424                   # 8-byte Folded Reload
	beq	$a4, $a3, .LBB1_106
# %bb.85:                               # %vec.epilog.iter.check366
	ld.d	$a4, $sp, 424                   # 8-byte Folded Reload
	andi	$a4, $a4, 12
	beqz	$a4, .LBB1_103
.LBB1_86:                               # %vec.epilog.ph365
	ld.d	$a4, $sp, 424                   # 8-byte Folded Reload
	move	$a5, $a4
	bstrins.d	$a5, $zero, 1, 0
	ori	$a6, $zero, 1
	bstrins.d	$a4, $a6, 1, 0
	slli.d	$a6, $a3, 2
	addi.d	$a7, $a6, 4
	add.d	$a6, $s3, $a7
	add.d	$a7, $a2, $a7
	sub.d	$a3, $a3, $a5
	.p2align	4, , 16
.LBB1_87:                               # %vec.epilog.vector.body371
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a6, 0
	vst	$vr0, $a7, 0
	addi.d	$a6, $a6, 16
	addi.d	$a3, $a3, 4
	addi.d	$a7, $a7, 16
	bnez	$a3, .LBB1_87
# %bb.88:                               # %vec.epilog.middle.block376
	ld.d	$a3, $sp, 424                   # 8-byte Folded Reload
	bne	$a3, $a5, .LBB1_104
	b	.LBB1_106
.LBB1_89:                               # %vector.ph268
	move	$a1, $a0
	xvldrepl.w	$xr0, $a5, 0
	bstrins.d	$a1, $zero, 3, 0
	addi.d	$a2, $a6, 32
	addi.d	$a3, $s4, 36
	move	$a4, $a1
	.p2align	4, , 16
.LBB1_90:                               # %vector.body271
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
	bnez	$a4, .LBB1_90
# %bb.91:                               # %middle.block280
	beq	$a0, $a1, .LBB1_49
# %bb.92:                               # %vec.epilog.iter.check
	andi	$a2, $a0, 12
	beqz	$a2, .LBB1_251
.LBB1_93:                               # %vec.epilog.ph
	move	$a2, $a0
	bstrins.d	$a2, $zero, 1, 0
	ori	$a3, $zero, 1
	move	$fp, $a0
	bstrins.d	$fp, $a3, 1, 0
	vldrepl.w	$vr0, $a5, 0
	alsl.d	$a3, $a1, $a6, 2
	alsl.d	$a4, $a1, $s4, 2
	addi.d	$a4, $a4, 4
	sub.d	$a1, $a1, $a2
	.p2align	4, , 16
.LBB1_94:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a3, 0
	vld	$vr2, $a4, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $a4, 0
	addi.d	$a3, $a3, 16
	addi.d	$a1, $a1, 4
	addi.d	$a4, $a4, 16
	bnez	$a1, .LBB1_94
# %bb.95:                               # %vec.epilog.middle.block
	bne	$a0, $a2, .LBB1_47
	b	.LBB1_49
.LBB1_96:                               # %vector.ph310
	ld.d	$a3, $sp, 424                   # 8-byte Folded Reload
	xvldrepl.w	$xr0, $s7, 0
	bstrins.d	$a3, $zero, 3, 0
	addi.d	$a2, $a7, 32
	addi.d	$a4, $s3, 36
	move	$a5, $a3
	.p2align	4, , 16
.LBB1_97:                               # %vector.body313
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a2, -32
	xvld	$xr2, $a2, 0
	xvld	$xr3, $a4, -32
	xvld	$xr4, $a4, 0
	xvfadd.s	$xr1, $xr0, $xr1
	xvfadd.s	$xr2, $xr0, $xr2
	xvfadd.s	$xr1, $xr3, $xr1
	xvfadd.s	$xr2, $xr4, $xr2
	xvst	$xr1, $a4, -32
	xvst	$xr2, $a4, 0
	addi.d	$a2, $a2, 64
	addi.d	$a5, $a5, -16
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB1_97
# %bb.98:                               # %middle.block322
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	beq	$a2, $a3, .LBB1_52
# %bb.99:                               # %vec.epilog.iter.check327
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	andi	$a2, $a2, 12
	beqz	$a2, .LBB1_252
.LBB1_100:                              # %vec.epilog.ph326
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	move	$a4, $a2
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	bstrins.d	$a2, $a5, 1, 0
	vldrepl.w	$vr0, $s7, 0
	alsl.d	$a5, $a3, $a7, 2
	alsl.d	$a6, $a3, $s3, 2
	addi.d	$a6, $a6, 4
	sub.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB1_101:                              # %vec.epilog.vector.body332
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a5, 0
	vld	$vr2, $a6, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $a6, 0
	addi.d	$a5, $a5, 16
	addi.d	$a3, $a3, 4
	addi.d	$a6, $a6, 16
	bnez	$a3, .LBB1_101
# %bb.102:                              # %vec.epilog.middle.block340
	ld.d	$a3, $sp, 424                   # 8-byte Folded Reload
	bne	$a3, $a4, .LBB1_50
	b	.LBB1_52
.LBB1_103:
	addi.d	$a4, $a3, 1
.LBB1_104:                              # %for.body193.i.preheader
	sub.d	$a3, $a0, $a4
	alsl.d	$a2, $a4, $a2, 2
	alsl.d	$a4, $a4, $s3, 2
	.p2align	4, , 16
.LBB1_105:                              # %for.body193.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a4, 0
	fst.s	$fa0, $a2, 0
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	addi.d	$a4, $a4, 4
	bnez	$a3, .LBB1_105
.LBB1_106:                              # %iter.check395
	ori	$a2, $zero, 1
	ori	$a3, $zero, 4
	addi.d	$t2, $t1, 4
	blt	$a3, $t6, .LBB1_200
.LBB1_107:                              # %for.body206.i.preheader
	sub.d	$a1, $a0, $a2
	ld.d	$a3, $sp, 440                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a3, 2
	alsl.d	$a4, $a2, $t1, 2
	alsl.d	$a2, $a2, $s3, 2
	addi.d	$a2, $a2, -4
	.p2align	4, , 16
.LBB1_108:                              # %for.body206.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $s5, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a4, 0
	st.w	$zero, $a3, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 4
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB1_108
.LBB1_109:                              # %for.body229.lr.ph.i
	st.d	$t2, $sp, 248                   # 8-byte Folded Spill
	st.d	$t6, $sp, 232                   # 8-byte Folded Spill
	st.d	$t5, $sp, 16                    # 8-byte Folded Spill
	st.d	$t4, $sp, 304                   # 8-byte Folded Spill
	st.d	$s4, $sp, 408                   # 8-byte Folded Spill
	slli.d	$s8, $t3, 2
	fldx.s	$fa0, $s3, $s8
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 31, 0
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	fst.s	$fa0, $a2, 0
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a2, $fa0
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 4
	st.d	$a1, $sp, 240                   # 8-byte Folded Spill
	st.d	$t3, $sp, 176                   # 8-byte Folded Spill
	alsl.d	$a1, $t3, $t1, 2
	st.d	$a1, $sp, 432                   # 8-byte Folded Spill
	bstrpick.d	$a1, $t0, 30, 0
	st.d	$a1, $sp, 296                   # 8-byte Folded Spill
	st.d	$a2, $sp, 288                   # 8-byte Folded Spill
	bstrpick.d	$s0, $a2, 31, 0
	slli.d	$s1, $a0, 2
	ori	$s2, $zero, 1
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	move	$a0, $s3
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$a1, $sp, 448                   # 8-byte Folded Spill
	st.d	$s8, $sp, 400                   # 8-byte Folded Spill
	b	.LBB1_111
	.p2align	4, , 16
.LBB1_110:                              # %for.end321.i
                                        #   in Loop: Header=BB1_111 Depth=1
	fldx.s	$fa0, $s6, $s8
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	fstx.s	$fa0, $a2, $a0
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	fld.s	$fa0, $a0, 0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	addi.d	$s2, $s2, 1
	fstx.s	$fa0, $a1, $a0
	move	$a0, $s6
	move	$t7, $fp
	beq	$s2, $fp, .LBB1_123
.LBB1_111:                              # %for.body229.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_121 Depth 2
                                        #     Child Loop BB1_117 Depth 2
	move	$fp, $t7
	addi.d	$s4, $s2, -1
	slli.d	$a1, $s4, 2
	ld.d	$s8, $sp, 408                   # 8-byte Folded Reload
	fldx.s	$fa0, $s8, $a1
	ld.d	$s3, $sp, 448                   # 8-byte Folded Reload
	st.d	$a0, $sp, 448                   # 8-byte Folded Spill
	fst.s	$fa0, $a0, 0
	move	$a0, $s3
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	move	$a3, $s2
	ld.d	$a4, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 320                   # 8-byte Folded Reload
	move	$a7, $zero
	pcaddu18i	$ra, %call36(match_ribosum)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s2, 2
	fldx.s	$fa0, $s8, $a0
	move	$s6, $s3
	fst.s	$fa0, $s3, 0
	ld.d	$a3, $sp, 392                   # 8-byte Folded Reload
	fldx.s	$fa0, $a3, $a0
	ld.d	$ra, $sp, 192                   # 8-byte Folded Reload
	fst.s	$fa0, $ra, 0
	ld.d	$t8, $sp, 336                   # 8-byte Folded Reload
	bne	$s2, $s0, .LBB1_113
# %bb.112:                              # %if.then246.i
                                        #   in Loop: Header=BB1_111 Depth=1
	fst.s	$fa0, $t8, 0
.LBB1_113:                              # %for.body260.lr.ph.i
                                        #   in Loop: Header=BB1_111 Depth=1
	ld.d	$s8, $sp, 448                   # 8-byte Folded Reload
	fld.s	$fa0, $s8, 0
	fld.s	$fa1, $s7, 4
	slli.d	$a1, $s2, 3
	ld.d	$a2, $sp, 360                   # 8-byte Folded Reload
	ldx.d	$a4, $a2, $a1
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ldx.d	$a1, $a2, $a1
	alsl.d	$a2, $s2, $a3, 2
	fadd.s	$fa0, $fa0, $fa1
	ld.d	$a3, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a3, $s4, $a3, 2
	ld.d	$t3, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 352                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 208                   # 8-byte Folded Reload
	bne	$s2, $s0, .LBB1_119
# %bb.114:                              # %for.body260.us.i.preheader
                                        #   in Loop: Header=BB1_111 Depth=1
	move	$a5, $zero
	move	$a7, $zero
	ori	$a6, $zero, 4
	ld.d	$s8, $sp, 400                   # 8-byte Folded Reload
	b	.LBB1_117
	.p2align	4, , 16
.LBB1_115:                              # %if.then290.us.i
                                        #   in Loop: Header=BB1_117 Depth=2
	fstx.s	$fa6, $ra, $a6
	ld.d	$t0, $sp, 440                   # 8-byte Folded Reload
	stx.w	$s4, $t0, $a6
	move	$t0, $s4
.LBB1_116:                              # %if.end292.us.i
                                        #   in Loop: Header=BB1_117 Depth=2
	fadd.s	$fa5, $fa0, $fa5
	fcmp.clt.s	$fcc0, $fa1, $fa5
	fadd.s	$fa3, $fa3, $fa4
	fldx.s	$fa4, $s6, $a6
	fsel	$fa5, $fa1, $fa5, $fcc0
	fcmp.clt.s	$fcc0, $fa5, $fa3
	fsel	$fa3, $fa5, $fa3, $fcc0
	fadd.s	$fa3, $fa3, $fa4
	fstx.s	$fa3, $s6, $a6
	fstx.s	$fa3, $a4, $a6
	fldx.s	$fa3, $ra, $a6
	fadd.s	$fa1, $fa1, $fa2
	fcmp.cult.s	$fcc0, $fa1, $fa0
	fstx.s	$fa3, $a1, $a6
	fldx.s	$fa2, $s6, $a6
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
	beq	$s1, $a6, .LBB1_110
.LBB1_117:                              # %for.body260.us.i
                                        #   Parent Loop BB1_111 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t0, $sp, 448                   # 8-byte Folded Reload
	add.d	$t0, $t0, $a6
	fld.s	$fa1, $t0, -4
	add.d	$t0, $t3, $a6
	fld.s	$fa5, $t0, -4
	fld.s	$fa6, $a2, 0
	fldx.s	$fa3, $ra, $a6
	fldx.s	$fa2, $s7, $a6
	fld.s	$fa4, $a3, 0
	fadd.s	$fa6, $fa1, $fa6
	fcmp.cle.s	$fcc0, $fa3, $fa6
	bcnez	$fcc0, .LBB1_115
# %bb.118:                              # %for.body260.us.if.end292.us_crit_edge.i
                                        #   in Loop: Header=BB1_117 Depth=2
	ld.d	$t0, $sp, 440                   # 8-byte Folded Reload
	ldx.w	$t0, $t0, $a6
	b	.LBB1_116
	.p2align	4, , 16
.LBB1_119:                              # %for.body260.i.preheader
                                        #   in Loop: Header=BB1_111 Depth=1
	addi.d	$a5, $s6, 4
	addi.d	$a6, $a1, 4
	addi.d	$a4, $a4, 4
	move	$a7, $t3
	ld.d	$t0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 424                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 240                   # 8-byte Folded Reload
	move	$t4, $s8
	ld.d	$s8, $sp, 400                   # 8-byte Folded Reload
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
	st.w	$s4, $t3, 0
	b	.LBB1_120
.LBB1_123:                              # %iter.check443
	ori	$a7, $zero, 1
	ld.d	$s4, $sp, 408                   # 8-byte Folded Reload
	move	$a0, $s4
	ld.d	$s0, $sp, 368                   # 8-byte Folded Reload
	move	$a1, $s0
	ld.d	$fp, $sp, 376                   # 8-byte Folded Reload
	move	$a2, $fp
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 328                   # 8-byte Folded Reload
	move	$a5, $s1
	ld.d	$s2, $sp, 320                   # 8-byte Folded Reload
	move	$a6, $s2
	pcaddu18i	$ra, %call36(match_ribosum)
	jirl	$ra, $ra, 0
	ori	$a7, $zero, 1
	move	$a0, $s6
	move	$a1, $fp
	move	$a2, $s0
	ld.d	$fp, $sp, 304                   # 8-byte Folded Reload
	move	$a3, $fp
	ld.d	$a4, $sp, 416                   # 8-byte Folded Reload
	move	$a5, $s1
	move	$a6, $s2
	pcaddu18i	$ra, %call36(match_ribosum)
	jirl	$ra, $ra, 0
	move	$t3, $fp
	bstrpick.d	$s2, $fp, 31, 0
	ori	$a0, $zero, 3
	ld.d	$a4, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a2, $s2, $a4, 2
	bltu	$a0, $fp, .LBB1_204
# %bb.124:
	move	$a0, $zero
	ld.d	$t1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 352                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 336                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 360                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 392                   # 8-byte Folded Reload
.LBB1_125:                              # %for.body351.i.preheader
	alsl.d	$a1, $a0, $s4, 2
	sub.d	$a3, $s2, $a0
	alsl.d	$a0, $a0, $a5, 2
	addi.d	$a0, $a0, 4
	.p2align	4, , 16
.LBB1_126:                              # %for.body351.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $a0, 0
	fld.s	$fa2, $a1, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 4
	bnez	$a3, .LBB1_126
.LBB1_127:                              # %iter.check494
	alsl.d	$a0, $t7, $t1, 2
	ori	$a3, $zero, 4
	move	$s3, $s6
	alsl.d	$a1, $t7, $s6, 2
	ld.d	$a4, $sp, 416                   # 8-byte Folded Reload
	bltu	$a3, $a4, .LBB1_208
# %bb.128:
	move	$a3, $zero
.LBB1_129:                              # %for.body369.i.preheader
	alsl.d	$a4, $a3, $s3, 2
	sub.d	$a5, $t7, $a3
	alsl.d	$a3, $a3, $s7, 2
	addi.d	$a3, $a3, 4
	.p2align	4, , 16
.LBB1_130:                              # %for.body369.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a3, 0
	fld.s	$fa2, $a4, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a4, 0
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, -1
	addi.d	$a3, $a3, 4
	bnez	$a5, .LBB1_130
.LBB1_131:                              # %for.body387.i.preheader
	move	$a3, $s2
	move	$a4, $a7
	.p2align	4, , 16
.LBB1_132:                              # %for.body387.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $s5, 0
	fldx.s	$fa2, $a5, $s8
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa0, $fa2
	fstx.s	$fa0, $a5, $s8
	addi.d	$a4, $a4, 8
	addi.d	$a3, $a3, -1
	addi.d	$s5, $s5, 4
	bnez	$a3, .LBB1_132
# %bb.133:                              # %iter.check544
	slli.d	$a2, $s2, 3
	ldx.d	$a2, $a7, $a2
	ori	$a3, $zero, 4
	ld.d	$a4, $sp, 416                   # 8-byte Folded Reload
	bltu	$a3, $a4, .LBB1_212
# %bb.134:
	move	$a3, $zero
.LBB1_135:                              # %for.body408.i.preheader
	alsl.d	$a2, $a3, $a2, 2
	sub.d	$a4, $t7, $a3
	alsl.d	$a3, $a3, $s7, 2
	addi.d	$a3, $a3, 4
	.p2align	4, , 16
.LBB1_136:                              # %for.body408.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a3, 0
	fld.s	$fa2, $a2, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa0, $fa2
	fst.s	$fa0, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 4
	bnez	$a4, .LBB1_136
.LBB1_137:                              # %for.body429.lr.ph.i
	slti	$a3, $t7, 1
	ori	$a2, $zero, 1
	masknez	$a4, $a2, $a3
	maskeqz	$a3, $t7, $a3
	or	$a5, $a3, $a4
	nor	$a3, $a5, $zero
	add.w	$a4, $a3, $t2
	ori	$a6, $zero, 23
	addi.d	$a3, $a0, -4
	bgeu	$a4, $a6, .LBB1_216
# %bb.138:
	move	$a0, $t7
	ld.d	$t8, $sp, 296                   # 8-byte Folded Reload
.LBB1_139:                              # %for.body429.i.preheader
	addi.d	$a1, $a0, 1
	ld.d	$a4, $sp, 440                   # 8-byte Folded Reload
	alsl.d	$a4, $a0, $a4, 2
	alsl.d	$a5, $a0, $t6, 2
	addi.d	$a5, $a5, -4
	alsl.d	$a0, $a0, $s3, 2
	.p2align	4, , 16
.LBB1_140:                              # %for.body429.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a3, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a5, 0
	st.w	$t3, $a4, 0
	addi.w	$a1, $a1, -1
	addi.d	$a4, $a4, -4
	addi.d	$a5, $a5, -4
	addi.d	$a0, $a0, -4
	blt	$a2, $a1, .LBB1_140
.LBB1_141:                              # %for.body449.lr.ph.i
	move	$s8, $zero
	move	$a5, $zero
	move	$a6, $zero
	addi.w	$a0, $zero, -2
	lu32i.d	$a0, 0
	add.d	$a0, $t2, $a0
	bstrpick.d	$a0, $a0, 31, 0
	alsl.d	$s0, $a0, $t1, 2
	slli.d	$a4, $a0, 2
	alsl.d	$a1, $t8, $t6, 2
	addi.d	$s1, $a1, -8
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	alsl.d	$a1, $t8, $a1, 2
	addi.d	$a1, $a1, -8
	st.d	$a1, $sp, 456                   # 8-byte Folded Spill
	ori	$a2, $zero, 1
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	slt	$a1, $a2, $a3
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 2
	st.d	$a1, $sp, 432                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 2
	st.d	$a1, $sp, 424                   # 8-byte Folded Spill
	alsl.d	$s5, $a0, $t4, 2
	alsl.d	$s7, $a0, $t5, 2
	st.d	$a4, $sp, 168                   # 8-byte Folded Spill
	addi.d	$a0, $a4, 4
	add.d	$s6, $fp, $a0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	add.d	$fp, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	fld.s	$fs0, $a0, %pc_lo12(.LCPI1_0)
	addi.d	$a0, $t7, -2
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	addi.d	$a0, $t4, 8
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	movgr2fr.w	$fa4, $zero
	move	$a4, $s2
	b	.LBB1_144
	.p2align	4, , 16
.LBB1_142:                              #   in Loop: Header=BB1_144 Depth=1
	move	$a0, $t7
	move	$a1, $a5
	move	$a2, $s8
.LBB1_143:                              # %for.inc675.i
                                        #   in Loop: Header=BB1_144 Depth=1
	st.d	$t5, $sp, 288                   # 8-byte Folded Spill
	move	$s8, $a2
	move	$a5, $a1
	move	$a6, $a0
	move	$s3, $t6
	ori	$a0, $zero, 1
	bge	$a0, $s2, .LBB1_175
.LBB1_144:                              # %for.body489.lr.ph.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_146 Depth 2
                                        #     Child Loop BB1_160 Depth 2
                                        #     Child Loop BB1_162 Depth 2
	st.d	$a6, $sp, 240                   # 8-byte Folded Spill
	st.d	$a5, $sp, 248                   # 8-byte Folded Spill
	xvst	$xr4, $sp, 256                  # 32-byte Folded Spill
	st.d	$t3, $sp, 304                   # 8-byte Folded Spill
	move	$s2, $a4
	slli.d	$a0, $a4, 2
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	fldx.s	$fa0, $a1, $a0
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	addi.d	$s4, $a4, -1
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	fstx.s	$fa0, $s3, $a1
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	move	$a3, $s4
	ld.d	$a4, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 320                   # 8-byte Folded Reload
	move	$a7, $zero
	pcaddu18i	$ra, %call36(match_ribosum)
	jirl	$ra, $ra, 0
	ld.d	$t2, $sp, 360                   # 8-byte Folded Reload
	slli.d	$a0, $s4, 2
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	fldx.s	$fa0, $a1, $a0
	ld.d	$ra, $sp, 296                   # 8-byte Folded Reload
	move	$a0, $zero
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 400                   # 8-byte Folded Reload
	fstx.s	$fa0, $a3, $a2
	alsl.d	$a1, $ra, $s3, 2
	st.d	$s3, $sp, 448                   # 8-byte Folded Spill
	fldx.s	$fa0, $s3, $a2
	fld.s	$fa1, $s0, 0
	addi.d	$a2, $a1, -4
	move	$t6, $a3
	alsl.d	$a1, $ra, $a3, 2
	addi.d	$a3, $a1, -8
	fadd.s	$fa0, $fa0, $fa1
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	alsl.d	$a5, $s2, $a1, 2
	ld.d	$a1, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a4, $s4, $a1, 2
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	move	$t7, $a1
	bstrpick.d	$a1, $a1, 31, 0
	xor	$a1, $s4, $a1
	sltui	$a6, $a1, 1
	ld.d	$t5, $sp, 288                   # 8-byte Folded Reload
	bstrpick.d	$a1, $t5, 31, 0
	xor	$a7, $s2, $a1
	move	$s3, $s4
	slli.d	$t0, $s4, 3
	ld.d	$t1, $sp, 312                   # 8-byte Folded Reload
	ldx.d	$t1, $t1, $t0
	ldx.d	$t0, $t2, $t0
	sltui	$a7, $a7, 1
	or	$a6, $a6, $a7
	ld.d	$t2, $sp, 168                   # 8-byte Folded Reload
	add.d	$a7, $t1, $t2
	add.d	$t0, $t0, $t2
	ld.d	$t8, $sp, 176                   # 8-byte Folded Reload
	move	$t1, $t8
	move	$t2, $t8
	b	.LBB1_146
	.p2align	4, , 16
.LBB1_145:                              # %if.end556.i
                                        #   in Loop: Header=BB1_146 Depth=2
	fldx.s	$fa2, $t0, $a0
	fadd.s	$fa2, $fa1, $fa2
	fstx.s	$fa2, $t0, $a0
	fldx.s	$fa2, $a3, $a0
	fldx.s	$fa3, $a7, $a0
	movcf2gr	$t3, $fcc0
	fadd.s	$fa2, $fa2, $fa3
	fstx.s	$fa2, $a7, $a0
	fldx.s	$fa2, $a3, $a0
	masknez	$t4, $t1, $t3
	maskeqz	$t2, $t2, $t3
	or	$t2, $t2, $t4
	fadd.s	$fa1, $fa1, $fa2
	fstx.s	$fa1, $a3, $a0
	addi.w	$t1, $t1, -1
	addi.d	$a0, $a0, -4
	blez	$t1, .LBB1_156
.LBB1_146:                              # %for.body489.i
                                        #   Parent Loop BB1_144 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$fa1, $fp, $a0
	fldx.s	$fa2, $a2, $a0
	fadd.s	$fa1, $fa0, $fa1
	fldx.s	$fa4, $s1, $a0
	fld.s	$fa5, $a5, 0
	fcmp.clt.s	$fcc0, $fa2, $fa1
	fsel	$fa1, $fa2, $fa1, $fcc0
	fldx.s	$fa3, $s0, $a0
	fadd.s	$fa5, $fa4, $fa5
	fcmp.cule.s	$fcc1, $fa5, $fa1
	bcnez	$fcc1, .LBB1_148
# %bb.147:                              # %if.then515.i
                                        #   in Loop: Header=BB1_146 Depth=2
	ld.d	$t3, $sp, 456                   # 8-byte Folded Reload
	ldx.w	$t3, $t3, $a0
	fmov.s	$fa1, $fa5
	move	$t4, $t1
	fld.s	$fa5, $a4, 0
	fadd.s	$fa5, $fa2, $fa5
	fcmp.cult.s	$fcc0, $fa5, $fa4
	bceqz	$fcc0, .LBB1_149
	b	.LBB1_150
	.p2align	4, , 16
.LBB1_148:                              #   in Loop: Header=BB1_146 Depth=2
	movcf2gr	$t3, $fcc0
	masknez	$t4, $t1, $t3
	maskeqz	$t3, $t2, $t3
	or	$t4, $t3, $t4
	move	$t3, $s2
	fld.s	$fa5, $a4, 0
	fadd.s	$fa5, $fa2, $fa5
	fcmp.cult.s	$fcc0, $fa5, $fa4
	bcnez	$fcc0, .LBB1_150
.LBB1_149:                              # %if.then523.i
                                        #   in Loop: Header=BB1_146 Depth=2
	fstx.s	$fa5, $s1, $a0
	ld.d	$s4, $sp, 456                   # 8-byte Folded Reload
	stx.w	$s2, $s4, $a0
.LBB1_150:                              # %if.end525.i
                                        #   in Loop: Header=BB1_146 Depth=2
	beqz	$a6, .LBB1_153
# %bb.151:                              # %if.then532.i
                                        #   in Loop: Header=BB1_146 Depth=2
	ld.d	$s4, $sp, 424                   # 8-byte Folded Reload
	stx.w	$t3, $s4, $a0
	ld.d	$t3, $sp, 432                   # 8-byte Folded Reload
	stx.w	$t4, $t3, $a0
	beq	$s3, $a1, .LBB1_154
.LBB1_152:                              # %if.end548.i
                                        #   in Loop: Header=BB1_146 Depth=2
	fadd.s	$fa2, $fa2, $fa3
	fcmp.cult.s	$fcc0, $fa2, $fa0
	fsel	$fa0, $fa2, $fa0, $fcc0
	bne	$s2, $a1, .LBB1_145
	b	.LBB1_155
	.p2align	4, , 16
.LBB1_153:                              # %if.end537.i
                                        #   in Loop: Header=BB1_146 Depth=2
	bne	$s3, $a1, .LBB1_152
.LBB1_154:                              # %if.then540.i
                                        #   in Loop: Header=BB1_146 Depth=2
	fldx.s	$fa4, $s5, $a0
	fadd.s	$fa4, $fa1, $fa4
	fstx.s	$fa4, $s5, $a0
	fldx.s	$fa4, $s1, $a0
	fldx.s	$fa5, $s6, $a0
	fadd.s	$fa4, $fa4, $fa5
	fstx.s	$fa4, $s6, $a0
	fadd.s	$fa2, $fa2, $fa3
	fcmp.cult.s	$fcc0, $fa2, $fa0
	fsel	$fa0, $fa2, $fa0, $fcc0
	bne	$s2, $a1, .LBB1_145
.LBB1_155:                              # %if.then552.i
                                        #   in Loop: Header=BB1_146 Depth=2
	fldx.s	$fa2, $s7, $a0
	fadd.s	$fa2, $fa0, $fa2
	fstx.s	$fa2, $s7, $a0
	b	.LBB1_145
	.p2align	4, , 16
.LBB1_156:                              # %for.end574.i
                                        #   in Loop: Header=BB1_144 Depth=1
	fldx.s	$fa0, $a2, $a0
	fld.s	$fa1, $a4, 0
	fadd.s	$fa0, $fa0, $fa1
	fcmp.clt.s	$fcc0, $fs0, $fa0
	fsel	$fs0, $fs0, $fa0, $fcc0
	ld.d	$t0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 304                   # 8-byte Folded Reload
	move	$a4, $s3
	bne	$s3, $a1, .LBB1_158
# %bb.157:                              # %if.then585.i
                                        #   in Loop: Header=BB1_144 Depth=1
	fld.s	$fa0, $t0, 0
	fadd.s	$fa0, $fs0, $fa0
	fst.s	$fa0, $t0, 0
.LBB1_158:                              # %if.end590.i
                                        #   in Loop: Header=BB1_144 Depth=1
	addi.w	$a0, $t5, -1
	ld.d	$a6, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 416                   # 8-byte Folded Reload
	xvld	$xr4, $sp, 256                  # 32-byte Folded Reload
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
	bne	$s2, $a1, .LBB1_170
# %bb.159:                              # %for.body600.preheader.i
                                        #   in Loop: Header=BB1_144 Depth=1
	fld.s	$fa4, $a7, 4
	move	$s8, $zero
	ori	$a1, $zero, 2
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_160:                              # %for.body600.i
                                        #   Parent Loop BB1_144 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $a2, 0
	fcmp.clt.s	$fcc1, $fa4, $fa0
	fsel	$fa4, $fa4, $fa0, $fcc1
	movcf2gr	$a4, $fcc1
	masknez	$a5, $s8, $a4
	maskeqz	$a4, $a1, $a4
	or	$s8, $a4, $a5
	addi.d	$a3, $a3, -1
	addi.w	$a1, $a1, 1
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB1_160
# %bb.161:                              # %for.body614.i.preheader
                                        #   in Loop: Header=BB1_144 Depth=1
	move	$a1, $zero
	move	$a2, $t0
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_162:                              # %for.body614.i
                                        #   Parent Loop BB1_144 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $a2, 0
	fcmp.clt.s	$fcc1, $fa4, $fa0
	fsel	$fa4, $fa4, $fa0, $fcc1
	movcf2gr	$a4, $fcc1
	masknez	$a5, $s8, $a4
	maskeqz	$a4, $a1, $a4
	or	$s8, $a4, $a5
	addi.d	$a3, $a3, -1
	addi.w	$a1, $a1, 1
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB1_162
# %bb.163:                              # %for.end623.i
                                        #   in Loop: Header=BB1_144 Depth=1
	slli.d	$a1, $s8, 2
	fldx.s	$fa0, $a7, $a1
	addi.w	$a5, $s8, -1
	ori	$a2, $zero, 1
	blt	$s8, $a2, .LBB1_168
# %bb.164:                              # %land.lhs.true.i
                                        #   in Loop: Header=BB1_144 Depth=1
	slli.d	$a2, $a5, 2
	fldx.s	$fa1, $a6, $a2
	fcmp.cule.s	$fcc1, $fa1, $fa0
	move	$a2, $a5
	move	$a4, $s3
	bcnez	$fcc1, .LBB1_166
# %bb.165:                              # %if.then635.i
                                        #   in Loop: Header=BB1_144 Depth=1
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	ldx.w	$a2, $a2, $a1
	fmov.s	$fa0, $fa1
.LBB1_166:                              # %if.end642.i
                                        #   in Loop: Header=BB1_144 Depth=1
	fldx.s	$fa1, $t0, $a1
	fcmp.cule.s	$fcc1, $fa1, $fa0
	bcnez	$fcc1, .LBB1_169
.LBB1_167:                              # %if.then647.i
                                        #   in Loop: Header=BB1_144 Depth=1
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ldx.w	$t7, $a2, $a1
	b	.LBB1_170
.LBB1_168:                              #   in Loop: Header=BB1_144 Depth=1
	move	$a2, $a5
	move	$a4, $s3
	fldx.s	$fa1, $t0, $a1
	fcmp.cule.s	$fcc1, $fa1, $fa0
	bceqz	$fcc1, .LBB1_167
.LBB1_169:                              #   in Loop: Header=BB1_144 Depth=1
	move	$t7, $a0
	move	$a5, $a2
.LBB1_170:                              # %if.end654.i
                                        #   in Loop: Header=BB1_144 Depth=1
	movcf2gr	$a1, $fcc0
	masknez	$a2, $t2, $a1
	maskeqz	$a1, $s2, $a1
	bstrpick.d	$a3, $t7, 31, 0
	or	$t3, $a1, $a2
	bne	$a4, $a3, .LBB1_142
# %bb.171:                              # %if.then657.i
                                        #   in Loop: Header=BB1_144 Depth=1
	beqz	$s8, .LBB1_174
# %bb.172:                              # %if.else.i
                                        #   in Loop: Header=BB1_144 Depth=1
	move	$a1, $t8
	move	$a2, $t1
	bge	$s8, $t1, .LBB1_143
# %bb.173:                              # %if.else667.i
                                        #   in Loop: Header=BB1_144 Depth=1
	slli.d	$a0, $a5, 2
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ldx.w	$t5, $a1, $a0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ldx.w	$a2, $a1, $a0
	move	$a0, $t7
	move	$a1, $a5
	b	.LBB1_143
.LBB1_174:                              # %if.then660.i
                                        #   in Loop: Header=BB1_144 Depth=1
	move	$a1, $zero
	addi.w	$a0, $t3, -1
	ori	$a2, $zero, 1
	move	$t5, $t3
	b	.LBB1_143
.LBB1_175:                              # %for.cond682.preheader.preheader.i
	move	$t6, $zero
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 30, 0
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	bstrpick.d	$a2, $a4, 30, 4
	slli.d	$a2, $a2, 4
	xvreplve0.w	$xr0, $xr4
	andi	$a3, $a4, 12
	bstrpick.d	$a4, $a4, 30, 2
	slli.d	$a4, $a4, 2
	vreplvei.w	$vr1, $vr4, 0
	sub.d	$a5, $zero, $a4
	ori	$a6, $zero, 4
	ori	$a7, $zero, 64
	ori	$t0, $zero, 16
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 16                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 360                   # 8-byte Folded Reload
	b	.LBB1_177
	.p2align	4, , 16
.LBB1_176:                              # %for.cond682.for.inc697_crit_edge.i
                                        #   in Loop: Header=BB1_177 Depth=1
	addi.d	$t6, $t6, 1
	beq	$t6, $a1, .LBB1_190
.LBB1_177:                              # %iter.check617
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_182 Depth 2
                                        #     Child Loop BB1_186 Depth 2
                                        #     Child Loop BB1_189 Depth 2
	slli.d	$t2, $t6, 3
	ldx.d	$t1, $fp, $t2
	ldx.d	$t2, $t8, $t2
	move	$t4, $zero
	bltu	$ra, $a6, .LBB1_188
# %bb.178:                              # %iter.check617
                                        #   in Loop: Header=BB1_177 Depth=1
	sub.d	$t3, $t2, $t1
	bltu	$t3, $a7, .LBB1_188
# %bb.179:                              # %vector.main.loop.iter.check619
                                        #   in Loop: Header=BB1_177 Depth=1
	bgeu	$ra, $t0, .LBB1_181
# %bb.180:                              #   in Loop: Header=BB1_177 Depth=1
	move	$t5, $zero
	b	.LBB1_185
	.p2align	4, , 16
.LBB1_181:                              # %vector.body625.preheader
                                        #   in Loop: Header=BB1_177 Depth=1
	addi.d	$t3, $t2, 32
	addi.d	$t4, $t1, 32
	move	$t5, $a2
	.p2align	4, , 16
.LBB1_182:                              # %vector.body625
                                        #   Parent Loop BB1_177 Depth=1
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
	bnez	$t5, .LBB1_182
# %bb.183:                              # %middle.block630
                                        #   in Loop: Header=BB1_177 Depth=1
	beq	$ra, $a2, .LBB1_176
# %bb.184:                              # %vec.epilog.iter.check635
                                        #   in Loop: Header=BB1_177 Depth=1
	move	$t5, $a2
	move	$t4, $a2
	beqz	$a3, .LBB1_188
.LBB1_185:                              # %vec.epilog.ph634
                                        #   in Loop: Header=BB1_177 Depth=1
	add.d	$t3, $a5, $t5
	alsl.d	$t4, $t5, $t2, 2
	alsl.d	$t5, $t5, $t1, 2
	.p2align	4, , 16
.LBB1_186:                              # %vec.epilog.vector.body642
                                        #   Parent Loop BB1_177 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $t5, 0
	vfdiv.s	$vr2, $vr2, $vr1
	vst	$vr2, $t4, 0
	addi.d	$t3, $t3, 4
	addi.d	$t4, $t4, 16
	addi.d	$t5, $t5, 16
	bnez	$t3, .LBB1_186
# %bb.187:                              # %vec.epilog.middle.block646
                                        #   in Loop: Header=BB1_177 Depth=1
	move	$t4, $a4
	beq	$ra, $a4, .LBB1_176
.LBB1_188:                              # %for.body685.i.preheader
                                        #   in Loop: Header=BB1_177 Depth=1
	sub.d	$t3, $ra, $t4
	alsl.d	$t2, $t4, $t2, 2
	alsl.d	$t1, $t4, $t1, 2
	.p2align	4, , 16
.LBB1_189:                              # %for.body685.i
                                        #   Parent Loop BB1_177 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa2, $t1, 0
	fdiv.s	$fa2, $fa2, $fa4
	fst.s	$fa2, $t2, 0
	addi.d	$t3, $t3, -1
	addi.d	$t2, $t2, 4
	addi.d	$t1, $t1, 4
	bnez	$t3, .LBB1_189
	b	.LBB1_176
.LBB1_190:                              # %for.end699.i
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
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
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
.LBB1_191:                              # %MSalign2m2m_rec.exit
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 1
	move	$fp, $a0
	blt	$s7, $s1, .LBB1_195
# %bb.192:                              # %for.body122.lr.ph
	ld.d	$a0, $s8, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $zero
	addi.w	$s2, $a0, 0
	move	$s3, $s7
	.p2align	4, , 16
.LBB1_193:                              # %for.body122
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s8, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB1_257
# %bb.194:                              # %for.inc133
                                        #   in Loop: Header=BB1_193 Depth=1
	addi.w	$s0, $s0, 1
	addi.d	$s3, $s3, -1
	addi.d	$s8, $s8, 8
	bnez	$s3, .LBB1_193
.LBB1_195:                              # %for.cond136.preheader
	blt	$s5, $s1, .LBB1_199
# %bb.196:                              # %for.body139.lr.ph
	move	$s0, $zero
	addi.w	$fp, $fp, 0
	move	$s1, $s5
	.p2align	4, , 16
.LBB1_197:                              # %for.body139
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB1_258
# %bb.198:                              # %for.inc150
                                        #   in Loop: Header=BB1_197 Depth=1
	addi.w	$s0, $s0, 1
	addi.d	$s1, $s1, -1
	addi.d	$s6, $s6, 8
	bnez	$s1, .LBB1_197
.LBB1_199:                              # %for.end152
	movgr2fr.w	$fa0, $zero
	fld.d	$fs0, $sp, 464                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 496                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 504                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 512                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 520                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 536                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 544                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 552                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 560
	ret
.LBB1_200:                              # %vector.memcheck380
	alsl.d	$a3, $a0, $t1, 2
	addi.d	$a1, $a1, -4
	sltu	$a1, $t2, $a1
	sltu	$a4, $s3, $a3
	and	$a1, $a1, $a4
	ld.d	$a4, $sp, 392                   # 8-byte Folded Reload
	bnez	$a1, .LBB1_107
# %bb.201:                              # %vector.memcheck380
	addi.d	$a1, $a4, 8
	sltu	$a1, $t2, $a1
	sltu	$a3, $s5, $a3
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_107
# %bb.202:                              # %vector.main.loop.iter.check397
	ori	$a1, $zero, 17
	bge	$t6, $a1, .LBB1_223
# %bb.203:
	move	$a1, $zero
	b	.LBB1_227
.LBB1_204:                              # %vector.memcheck429
	slli.d	$a0, $s2, 2
	alsl.d	$a1, $s2, $s4, 2
	addi.d	$a3, $a0, 4
	add.d	$a0, $a4, $a3
	sltu	$a0, $s4, $a0
	sltu	$a4, $a2, $a1
	and	$a4, $a0, $a4
	move	$a0, $zero
	ld.d	$t1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 392                   # 8-byte Folded Reload
	bnez	$a4, .LBB1_221
# %bb.205:                              # %vector.memcheck429
	add.d	$a3, $a5, $a3
	sltu	$a3, $s4, $a3
	sltu	$a1, $s5, $a1
	and	$a1, $a3, $a1
	ld.d	$t5, $sp, 352                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 176                   # 8-byte Folded Reload
	bnez	$a1, .LBB1_125
# %bb.206:                              # %vector.main.loop.iter.check445
	ori	$a0, $zero, 16
	bgeu	$t3, $a0, .LBB1_230
# %bb.207:
	move	$a0, $zero
	b	.LBB1_234
.LBB1_208:                              # %vector.memcheck478
	addi.d	$a4, $s8, 4
	add.d	$a3, $t1, $a4
	sltu	$a3, $s3, $a3
	sltu	$a5, $a0, $a1
	and	$a5, $a3, $a5
	move	$a3, $zero
	bnez	$a5, .LBB1_129
# %bb.209:                              # %vector.memcheck478
	addi.d	$a5, $s7, 4
	add.d	$a4, $s7, $a4
	sltu	$a4, $s3, $a4
	sltu	$a5, $a5, $a1
	and	$a4, $a4, $a5
	bnez	$a4, .LBB1_129
# %bb.210:                              # %vector.main.loop.iter.check496
	ori	$a3, $zero, 17
	ld.d	$a4, $sp, 416                   # 8-byte Folded Reload
	bgeu	$a4, $a3, .LBB1_237
# %bb.211:
	move	$a3, $zero
	b	.LBB1_241
.LBB1_212:                              # %vector.memcheck529
	alsl.d	$a4, $t7, $a2, 2
	addi.d	$a5, $s8, 4
	add.d	$a3, $t1, $a5
	sltu	$a3, $a2, $a3
	sltu	$a6, $a0, $a4
	and	$a6, $a3, $a6
	move	$a3, $zero
	bnez	$a6, .LBB1_135
# %bb.213:                              # %vector.memcheck529
	addi.d	$a6, $s7, 4
	add.d	$a5, $s7, $a5
	sltu	$a5, $a2, $a5
	sltu	$a4, $a6, $a4
	and	$a4, $a5, $a4
	bnez	$a4, .LBB1_135
# %bb.214:                              # %vector.main.loop.iter.check546
	ori	$a3, $zero, 17
	ld.d	$a4, $sp, 416                   # 8-byte Folded Reload
	bgeu	$a4, $a3, .LBB1_244
# %bb.215:
	move	$a3, $zero
	b	.LBB1_248
.LBB1_216:                              # %vector.memcheck579
	sub.d	$a5, $a5, $t2
	nor	$a5, $a5, $zero
	bstrpick.d	$a5, $a5, 31, 0
	slli.d	$a5, $a5, 2
	sub.d	$a6, $s8, $a5
	add.d	$a5, $a6, $t6
	addi.d	$a5, $a5, -4
	add.d	$a6, $s3, $a6
	addi.d	$a1, $a1, 4
	sltu	$a1, $a5, $a1
	ld.d	$t0, $sp, 432                   # 8-byte Folded Reload
	sltu	$a6, $a6, $t0
	and	$a1, $a1, $a6
	ld.d	$t8, $sp, 296                   # 8-byte Folded Reload
	bnez	$a1, .LBB1_222
# %bb.217:                              # %vector.memcheck579
	sltu	$a0, $a5, $a0
	sltu	$a1, $a3, $t0
	and	$a1, $a0, $a1
	move	$a0, $t7
	bnez	$a1, .LBB1_139
# %bb.218:                              # %vector.ph595
	bstrpick.d	$a0, $a4, 31, 0
	addi.d	$a1, $a0, 1
	bstrpick.d	$a0, $a1, 32, 3
	slli.d	$a4, $a0, 3
	sub.d	$a0, $t7, $a4
	xvreplgr2vr.w	$xr0, $t3
	xvldrepl.w	$xr1, $a3, 0
	addi.d	$a7, $s8, -28
	ld.d	$a5, $sp, 440                   # 8-byte Folded Reload
	add.d	$a5, $a5, $a7
	addi.d	$a6, $t0, -32
	add.d	$a7, $s3, $a7
	move	$t0, $a4
	.p2align	4, , 16
.LBB1_219:                              # %vector.body600
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a7, 0
	xvfadd.s	$xr2, $xr2, $xr1
	xvst	$xr2, $a6, 0
	xvst	$xr0, $a5, 0
	addi.d	$t0, $t0, -8
	addi.d	$a5, $a5, -32
	addi.d	$a6, $a6, -32
	addi.d	$a7, $a7, -32
	bnez	$t0, .LBB1_219
# %bb.220:                              # %middle.block609
	bne	$a1, $a4, .LBB1_139
	b	.LBB1_141
.LBB1_221:
	ld.d	$t5, $sp, 352                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 176                   # 8-byte Folded Reload
	b	.LBB1_125
.LBB1_222:
	move	$a0, $t7
	b	.LBB1_139
.LBB1_223:                              # %vector.ph398
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	bstrins.d	$a1, $zero, 3, 0
	xvldrepl.w	$xr0, $s5, 0
	addi.d	$a2, $s3, 32
	addi.d	$a3, $t1, 36
	ld.d	$a4, $sp, 440                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 36
	xvrepli.b	$xr1, 0
	move	$a5, $a1
	.p2align	4, , 16
.LBB1_224:                              # %vector.body401
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a2, -32
	xvld	$xr3, $a2, 0
	xvfadd.s	$xr2, $xr2, $xr0
	xvfadd.s	$xr3, $xr3, $xr0
	xvst	$xr2, $a3, -32
	xvst	$xr3, $a3, 0
	xvst	$xr1, $a4, -32
	xvst	$xr1, $a4, 0
	addi.d	$a5, $a5, -16
	addi.d	$a2, $a2, 64
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB1_224
# %bb.225:                              # %middle.block408
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	beq	$a2, $a1, .LBB1_109
# %bb.226:                              # %vec.epilog.iter.check413
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	andi	$a2, $a2, 12
	beqz	$a2, .LBB1_253
.LBB1_227:                              # %vec.epilog.ph412
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	move	$a3, $a2
	bstrins.d	$a3, $zero, 1, 0
	ori	$a4, $zero, 1
	bstrins.d	$a2, $a4, 1, 0
	vldrepl.w	$vr0, $s5, 0
	slli.d	$a5, $a1, 2
	alsl.d	$a4, $a1, $s3, 2
	addi.d	$a6, $a5, 4
	add.d	$a5, $t1, $a6
	ld.d	$a7, $sp, 440                   # 8-byte Folded Reload
	add.d	$a6, $a7, $a6
	sub.d	$a1, $a1, $a3
	vrepli.b	$vr1, 0
	.p2align	4, , 16
.LBB1_228:                              # %vec.epilog.vector.body418
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a4, 0
	vfadd.s	$vr2, $vr2, $vr0
	vst	$vr2, $a5, 0
	vst	$vr1, $a6, 0
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	addi.d	$a1, $a1, 4
	addi.d	$a6, $a6, 16
	bnez	$a1, .LBB1_228
# %bb.229:                              # %vec.epilog.middle.block425
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	bne	$a1, $a3, .LBB1_107
	b	.LBB1_109
.LBB1_230:                              # %vector.ph446
	bstrpick.d	$a0, $s2, 30, 4
	xvldrepl.w	$xr0, $a2, 0
	slli.d	$a0, $a0, 4
	addi.d	$a1, $a5, 36
	addi.d	$a3, $s4, 32
	move	$a4, $a0
	.p2align	4, , 16
.LBB1_231:                              # %vector.body449
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a1, -32
	xvld	$xr2, $a1, 0
	xvld	$xr3, $a3, -32
	xvld	$xr4, $a3, 0
	xvfadd.s	$xr1, $xr0, $xr1
	xvfadd.s	$xr2, $xr0, $xr2
	xvfadd.s	$xr1, $xr3, $xr1
	xvfadd.s	$xr2, $xr4, $xr2
	xvst	$xr1, $a3, -32
	xvst	$xr2, $a3, 0
	addi.d	$a1, $a1, 64
	addi.d	$a4, $a4, -16
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB1_231
# %bb.232:                              # %middle.block458
	beq	$a0, $s2, .LBB1_127
# %bb.233:                              # %vec.epilog.iter.check463
	andi	$a1, $s2, 12
	beqz	$a1, .LBB1_125
.LBB1_234:                              # %vec.epilog.ph462
	move	$a4, $a0
	bstrpick.d	$a0, $s2, 30, 2
	slli.d	$a0, $a0, 2
	vldrepl.w	$vr0, $a2, 0
	alsl.d	$a1, $a4, $a5, 2
	addi.d	$a1, $a1, 4
	sub.d	$a3, $a4, $a0
	alsl.d	$a4, $a4, $s4, 2
	.p2align	4, , 16
.LBB1_235:                              # %vec.epilog.vector.body468
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a1, 0
	vld	$vr2, $a4, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $a4, 0
	addi.d	$a1, $a1, 16
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 16
	bnez	$a3, .LBB1_235
# %bb.236:                              # %vec.epilog.middle.block475
	bne	$a0, $s2, .LBB1_125
	b	.LBB1_127
.LBB1_237:                              # %vector.ph497
	bstrpick.d	$a3, $t7, 30, 4
	xvldrepl.w	$xr0, $a0, 0
	slli.d	$a3, $a3, 4
	addi.d	$a4, $s7, 36
	addi.d	$a5, $s3, 32
	move	$a6, $a3
	.p2align	4, , 16
.LBB1_238:                              # %vector.body500
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a4, -32
	xvld	$xr2, $a4, 0
	xvld	$xr3, $a5, -32
	xvld	$xr4, $a5, 0
	xvfadd.s	$xr1, $xr0, $xr1
	xvfadd.s	$xr2, $xr0, $xr2
	xvfadd.s	$xr1, $xr3, $xr1
	xvfadd.s	$xr2, $xr4, $xr2
	xvst	$xr1, $a5, -32
	xvst	$xr2, $a5, 0
	addi.d	$a4, $a4, 64
	addi.d	$a6, $a6, -16
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB1_238
# %bb.239:                              # %middle.block509
	beq	$a3, $t7, .LBB1_131
# %bb.240:                              # %vec.epilog.iter.check514
	andi	$a4, $t7, 12
	beqz	$a4, .LBB1_129
.LBB1_241:                              # %vec.epilog.ph513
	move	$a6, $a3
	bstrpick.d	$a3, $t7, 30, 2
	slli.d	$a3, $a3, 2
	vldrepl.w	$vr0, $a0, 0
	alsl.d	$a4, $a6, $s7, 2
	addi.d	$a4, $a4, 4
	sub.d	$a5, $a6, $a3
	alsl.d	$a6, $a6, $s3, 2
	.p2align	4, , 16
.LBB1_242:                              # %vec.epilog.vector.body519
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a4, 0
	vld	$vr2, $a6, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $a6, 0
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 16
	bnez	$a5, .LBB1_242
# %bb.243:                              # %vec.epilog.middle.block526
	bne	$a3, $t7, .LBB1_129
	b	.LBB1_131
.LBB1_244:                              # %vector.ph547
	bstrpick.d	$a3, $t7, 30, 4
	xvldrepl.w	$xr0, $a0, 0
	slli.d	$a3, $a3, 4
	addi.d	$a4, $s7, 36
	addi.d	$a5, $a2, 32
	move	$a6, $a3
	.p2align	4, , 16
.LBB1_245:                              # %vector.body550
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a4, -32
	xvld	$xr2, $a4, 0
	xvld	$xr3, $a5, -32
	xvld	$xr4, $a5, 0
	xvfadd.s	$xr1, $xr0, $xr1
	xvfadd.s	$xr2, $xr0, $xr2
	xvfadd.s	$xr1, $xr1, $xr3
	xvfadd.s	$xr2, $xr2, $xr4
	xvst	$xr1, $a5, -32
	xvst	$xr2, $a5, 0
	addi.d	$a4, $a4, 64
	addi.d	$a6, $a6, -16
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB1_245
# %bb.246:                              # %middle.block559
	beq	$a3, $t7, .LBB1_137
# %bb.247:                              # %vec.epilog.iter.check564
	andi	$a4, $t7, 12
	beqz	$a4, .LBB1_135
.LBB1_248:                              # %vec.epilog.ph563
	move	$a6, $a3
	bstrpick.d	$a3, $t7, 30, 2
	slli.d	$a3, $a3, 2
	vldrepl.w	$vr0, $a0, 0
	alsl.d	$a4, $a6, $s7, 2
	addi.d	$a4, $a4, 4
	sub.d	$a5, $a6, $a3
	alsl.d	$a6, $a6, $a2, 2
	.p2align	4, , 16
.LBB1_249:                              # %vec.epilog.vector.body569
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a4, 0
	vld	$vr2, $a6, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr1, $vr2
	vst	$vr1, $a6, 0
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 16
	bnez	$a5, .LBB1_249
# %bb.250:                              # %vec.epilog.middle.block576
	bne	$a3, $t7, .LBB1_135
	b	.LBB1_137
.LBB1_251:
	addi.d	$fp, $a1, 1
	b	.LBB1_47
.LBB1_252:
	addi.d	$a2, $a3, 1
	b	.LBB1_50
.LBB1_253:
	addi.d	$a2, $a1, 1
	b	.LBB1_107
.LBB1_254:                              # %if.then
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
	b	.LBB1_256
.LBB1_255:                              # %if.then45
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
.LBB1_256:                              # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 27
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB1_257:                              # %if.then129
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	move	$a2, $s0
	move	$a3, $s7
	b	.LBB1_259
.LBB1_258:                              # %if.then146
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	move	$a2, $s0
	move	$a3, $s5
.LBB1_259:                              # %if.then129
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
