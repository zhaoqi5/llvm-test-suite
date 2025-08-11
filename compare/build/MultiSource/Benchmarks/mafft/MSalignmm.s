	.file	"MSalignmm.c"
	.text
	.globl	MSalignmm                       # -- Begin function MSalignmm
	.p2align	5
	.type	MSalignmm,@function
MSalignmm:                              # @MSalignmm
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
	fst.d	$fs0, $sp, 192                  # 8-byte Folded Spill
	pcalau12i	$a6, %got_pc_hi20(penalty)
	ld.d	$a6, $a6, %got_pc_lo12(penalty)
	move	$s6, $a0
	ld.w	$fp, $a6, 0
	ld.d	$a0, $a0, 0
	st.d	$a7, $sp, 72                    # 8-byte Folded Spill
	move	$s1, $a5
	move	$s2, $a4
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	move	$s5, $a2
	move	$s0, $a1
	pcaddu18i	$ra, %call36(seqlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	move	$a0, $a1
	pcaddu18i	$ra, %call36(seqlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	move	$s8, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	add.d	$a0, $s8, $a0
	addi.w	$s3, $a0, 200
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	move	$s4, $s1
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ori	$a0, $zero, 4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	addi.w	$s3, $s8, 102
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	st.d	$s7, $sp, 136                   # 8-byte Folded Spill
	addi.w	$s7, $s7, 102
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ori	$a1, $zero, 27
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ori	$a1, $zero, 27
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ori	$s7, $zero, 1
	st.d	$s8, $sp, 112                   # 8-byte Folded Spill
	addi.w	$s8, $s8, 0
	st.d	$s2, $sp, 184                   # 8-byte Folded Spill
	blt	$s2, $s7, .LBB0_4
# %bb.1:                                # %for.body.lr.ph
	move	$s3, $zero
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	move	$s1, $s6
	.p2align	4, , 16
.LBB0_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$a0, $s8, .LBB0_48
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB0_2 Depth=1
	addi.w	$s3, $s3, 1
	addi.d	$s2, $s2, -1
	addi.d	$s1, $s1, 8
	bnez	$s2, .LBB0_2
.LBB0_4:                                # %for.cond35.preheader
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	addi.w	$s3, $a0, 0
	blt	$s4, $s7, .LBB0_8
# %bb.5:                                # %for.body38.lr.ph
	move	$s7, $zero
	move	$s2, $s4
	move	$s1, $s0
	.p2align	4, , 16
.LBB0_6:                                # %for.body38
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB0_49
# %bb.7:                                # %for.inc49
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.w	$s7, $s7, 1
	addi.d	$s2, $s2, -1
	addi.d	$s1, $s1, 8
	bnez	$s2, .LBB0_6
.LBB0_8:                                # %for.end51
	movgr2fr.w	$fa0, $fp
	ffint.s.w	$fs0, $fa0
	move	$a0, $s6
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	move	$a2, $s5
	move	$a3, $s8
	ld.d	$fp, $sp, 184                   # 8-byte Folded Reload
	move	$a4, $fp
	pcaddu18i	$ra, %call36(MScpmx_calc_new)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 80                    # 8-byte Folded Reload
	move	$a2, $s2
	move	$a3, $s3
	move	$s7, $s4
	move	$a4, $s4
	pcaddu18i	$ra, %call36(MScpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 72                    # 8-byte Folded Reload
	beqz	$a5, .LBB0_10
# %bb.9:                                # %if.then52
	ld.d	$s7, $sp, 304
	ld.d	$s1, $sp, 288
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	move	$a1, $fp
	move	$a2, $s6
	move	$a3, $s5
	move	$a4, $s8
	pcaddu18i	$ra, %call36(new_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	move	$a1, $s4
	move	$a2, $s0
	move	$a3, $s2
	move	$a4, $s3
	move	$a5, $s1
	move	$s1, $a0
	pcaddu18i	$ra, %call36(new_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	move	$a1, $fp
	move	$a2, $s6
	move	$a3, $s5
	move	$a4, $s8
	move	$a5, $s7
	pcaddu18i	$ra, %call36(new_FinalGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	move	$a1, $s4
	move	$a2, $s0
	move	$a3, $s2
	move	$a4, $s3
	move	$a5, $s7
	move	$s7, $s4
	pcaddu18i	$ra, %call36(new_FinalGapCount)
	jirl	$ra, $ra, 0
	b	.LBB0_11
.LBB0_10:                               # %if.else
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	move	$a1, $fp
	move	$a2, $s6
	move	$a3, $s5
	move	$a4, $s8
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	move	$s1, $a0
	move	$a1, $s7
	move	$a2, $s0
	move	$a3, $s2
	move	$a4, $s3
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	move	$a1, $fp
	move	$a2, $s6
	move	$a3, $s5
	move	$a4, $s8
	pcaddu18i	$ra, %call36(st_FinalGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	move	$a1, $s7
	move	$a2, $s0
	move	$a3, $s2
	move	$a4, $s3
	pcaddu18i	$ra, %call36(st_FinalGapCount)
	jirl	$ra, $ra, 0
.LBB0_11:                               # %if.end53
	ori	$a0, $zero, 1
	fcvt.d.s	$fa0, $fs0
	ld.d	$s4, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 176                   # 8-byte Folded Reload
	blt	$s8, $a0, .LBB0_18
# %bb.12:                               # %for.body57.lr.ph
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 30, 0
	ori	$a2, $zero, 8
	bltu	$a1, $a2, .LBB0_15
# %bb.13:                               # %vector.memcheck
	alsl.d	$a2, $a1, $a6, 2
	bgeu	$t0, $a2, .LBB0_42
# %bb.14:                               # %vector.memcheck
	alsl.d	$a2, $a1, $t0, 2
	bgeu	$a6, $a2, .LBB0_42
.LBB0_15:
	move	$a2, $zero
.LBB0_16:                               # %for.body57.preheader
	alsl.d	$a3, $a2, $a6, 2
	alsl.d	$a4, $a2, $t0, 2
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
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	blt	$s3, $a0, .LBB0_25
# %bb.19:                               # %for.body82.lr.ph
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 30, 0
	ori	$a1, $zero, 8
	bltu	$a0, $a1, .LBB0_22
# %bb.20:                               # %vector.memcheck225
	alsl.d	$a1, $a0, $a7, 2
	bgeu	$s1, $a1, .LBB0_45
# %bb.21:                               # %vector.memcheck225
	alsl.d	$a1, $a0, $s1, 2
	bgeu	$a7, $a1, .LBB0_45
.LBB0_22:
	move	$a1, $zero
.LBB0_23:                               # %for.body82.preheader
	alsl.d	$a2, $a1, $a7, 2
	alsl.d	$a3, $a1, $s1, 2
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
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	st.d	$t0, $a1, 0
	st.d	$a6, $a1, 8
	st.d	$s1, $a1, 16
	st.d	$a7, $a1, 24
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	addi.w	$a7, $a0, -1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	addi.w	$a0, $a0, -1
	st.d	$a1, $sp, 40
	st.d	$zero, $sp, 32
	st.d	$s8, $sp, 24
	st.d	$s4, $sp, 16
	st.d	$a0, $sp, 8
	st.d	$zero, $sp, 0
	ld.d	$s1, $sp, 184                   # 8-byte Folded Reload
	move	$a0, $s1
	move	$a1, $s7
	move	$a2, $s6
	move	$a3, $s0
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	move	$a6, $zero
	pcaddu18i	$ra, %call36(MSalignmm_rec)
	jirl	$ra, $ra, 0
	ori	$fp, $zero, 1
	fmov.s	$fs0, $fa0
	blt	$s1, $fp, .LBB0_28
# %bb.26:                               # %for.body116.preheader
	ld.d	$s1, $sp, 184                   # 8-byte Folded Reload
	move	$s2, $s6
	move	$s3, $s4
	.p2align	4, , 16
.LBB0_27:                               # %for.body116
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a1, $s3, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, 8
	addi.d	$s1, $s1, -1
	addi.d	$s2, $s2, 8
	bnez	$s1, .LBB0_27
.LBB0_28:                               # %for.cond125.preheader
	blt	$s7, $fp, .LBB0_31
# %bb.29:                               # %for.body128.preheader
	move	$fp, $s7
	move	$s1, $s0
	move	$s2, $s8
	.p2align	4, , 16
.LBB0_30:                               # %for.body128
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s2, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 8
	addi.d	$fp, $fp, -1
	addi.d	$s1, $s1, 8
	bnez	$fp, .LBB0_30
.LBB0_31:                               # %for.end136
	ld.d	$a0, $s6, 0
	pcaddu18i	$ra, %call36(seqlen)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 104                   # 8-byte Folded Reload
	bne	$a0, $s1, .LBB0_54
# %bb.32:                               # %if.end147
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(seqlen)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	bne	$a0, $s1, .LBB0_55
# %bb.33:                               # %if.end156
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$fp, $zero, 1
	move	$s3, $a0
	blt	$s2, $fp, .LBB0_37
# %bb.34:                               # %for.body166.lr.ph
	ld.d	$a0, $s6, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s4, $zero
	addi.w	$s5, $a0, 0
	move	$s1, $s2
	.p2align	4, , 16
.LBB0_35:                               # %for.body166
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$a0, $s5, .LBB0_51
# %bb.36:                               # %for.inc177
                                        #   in Loop: Header=BB0_35 Depth=1
	addi.w	$s4, $s4, 1
	addi.d	$s1, $s1, -1
	addi.d	$s6, $s6, 8
	bnez	$s1, .LBB0_35
.LBB0_37:                               # %for.cond180.preheader
	blt	$s7, $fp, .LBB0_41
# %bb.38:                               # %for.body183.lr.ph
	move	$s1, $zero
	addi.w	$fp, $s3, 0
	move	$s2, $s7
	.p2align	4, , 16
.LBB0_39:                               # %for.body183
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB0_52
# %bb.40:                               # %for.inc194
                                        #   in Loop: Header=BB0_39 Depth=1
	addi.w	$s1, $s1, 1
	addi.d	$s2, $s2, -1
	addi.d	$s0, $s0, 8
	bnez	$s2, .LBB0_39
.LBB0_41:                               # %for.end196
	fmov.s	$fa0, $fs0
	fld.d	$fs0, $sp, 192                  # 8-byte Folded Reload
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
.LBB0_42:                               # %vector.ph
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	bstrpick.d	$a2, $a2, 30, 3
	slli.d	$a2, $a2, 3
	xvreplve0.d	$xr1, $xr0
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr2, $a3
	lu52i.d	$a3, $zero, 1022
	xvreplgr2vr.d	$xr3, $a3
	move	$a3, $t0
	move	$a4, $a6
	move	$a5, $a2
	.p2align	4, , 16
.LBB0_43:                               # %vector.body
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
	bnez	$a5, .LBB0_43
# %bb.44:                               # %middle.block
	beq	$a1, $a2, .LBB0_18
	b	.LBB0_16
.LBB0_45:                               # %vector.ph233
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 30, 3
	slli.d	$a1, $a1, 3
	xvreplve0.d	$xr1, $xr0
	lu52i.d	$a2, $zero, 1023
	xvreplgr2vr.d	$xr2, $a2
	lu52i.d	$a2, $zero, 1022
	xvreplgr2vr.d	$xr3, $a2
	move	$a2, $s1
	move	$a3, $a7
	move	$a4, $a1
	.p2align	4, , 16
.LBB0_46:                               # %vector.body238
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
	bnez	$a4, .LBB0_46
# %bb.47:                               # %middle.block243
	beq	$a0, $a1, .LBB0_25
	b	.LBB0_23
.LBB0_48:                               # %if.then
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	move	$a2, $s3
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	b	.LBB0_50
.LBB0_49:                               # %if.then45
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	move	$a2, $s7
	move	$a3, $s4
.LBB0_50:                               # %if.then45
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 27
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_51:                               # %if.then173
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	move	$a2, $s4
	move	$a3, $s2
	b	.LBB0_53
.LBB0_52:                               # %if.then190
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	move	$a2, $s1
	move	$a3, $s7
.LBB0_53:                               # %if.then173
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	ori	$a1, $zero, 42
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_54:                               # %if.then141
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s0, $a0, %got_pc_lo12(stderr)
	ld.d	$fp, $s0, 0
	ld.d	$a0, $s6, 0
	pcaddu18i	$ra, %call36(seqlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	move	$a0, $fp
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a2, $s6, 0
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_55:                               # %if.then152
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$fp, $a0, 0
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(seqlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	move	$a0, $fp
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	MSalignmm, .Lfunc_end0-MSalignmm
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function MSalignmm_rec
.LCPI1_0:
	.word	0xcb189680                      # float -1.0E+7
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI1_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI1_3:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI1_2:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.text
	.p2align	5
	.type	MSalignmm_rec,@function
MSalignmm_rec:                          # @MSalignmm_rec
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -656
	st.d	$ra, $sp, 648                   # 8-byte Folded Spill
	st.d	$fp, $sp, 640                   # 8-byte Folded Spill
	st.d	$s0, $sp, 632                   # 8-byte Folded Spill
	st.d	$s1, $sp, 624                   # 8-byte Folded Spill
	st.d	$s2, $sp, 616                   # 8-byte Folded Spill
	st.d	$s3, $sp, 608                   # 8-byte Folded Spill
	st.d	$s4, $sp, 600                   # 8-byte Folded Spill
	st.d	$s5, $sp, 592                   # 8-byte Folded Spill
	st.d	$s6, $sp, 584                   # 8-byte Folded Spill
	st.d	$s7, $sp, 576                   # 8-byte Folded Spill
	st.d	$s8, $sp, 568                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 560                  # 8-byte Folded Spill
	move	$s1, $a7
	move	$s3, $a6
	st.d	$a5, $sp, 264                   # 8-byte Folded Spill
	st.d	$a4, $sp, 256                   # 8-byte Folded Spill
	st.d	$a3, $sp, 248                   # 8-byte Folded Spill
	move	$s2, $a2
	move	$s5, $a1
	move	$s0, $a0
	ld.d	$a4, $sp, 696
	ld.d	$s8, $sp, 680
	ld.d	$a0, $sp, 672
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 664
	ld.d	$a2, $sp, 656
	ld.d	$s4, $a4, 0
	pcalau12i	$a0, %pc_hi20(reccycle)
	ld.w	$a1, $a0, %pc_lo12(reccycle)
	ld.d	$a3, $a4, 8
	st.d	$a3, $sp, 352                   # 8-byte Folded Spill
	ld.d	$a6, $a4, 16
	ld.d	$a7, $a4, 24
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, %pc_lo12(reccycle)
	sub.d	$fp, $s1, $s3
	addi.w	$s7, $fp, 0
	sub.w	$a3, $a5, $a2
	addi.w	$a0, $zero, -1
	addi.w	$s6, $fp, 1
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	bge	$a0, $a3, .LBB1_43
# %bb.1:                                # %if.end
	st.d	$a7, $sp, 312                   # 8-byte Folded Spill
	st.d	$a6, $sp, 168                   # 8-byte Folded Spill
	st.d	$s8, $sp, 224                   # 8-byte Folded Spill
	st.d	$s6, $sp, 360                   # 8-byte Folded Spill
	st.d	$a5, $sp, 136                   # 8-byte Folded Spill
	st.d	$a4, $sp, 176                   # 8-byte Folded Spill
	st.d	$a2, $sp, 376                   # 8-byte Folded Spill
	move	$a0, $s0
	move	$a1, $zero
	st.d	$a3, $sp, 448                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	move	$a0, $s5
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 448                   # 8-byte Folded Reload
	ori	$a1, $zero, 1
	move	$a6, $a0
	blt	$s0, $a1, .LBB1_9
# %bb.2:                                # %for.body49.preheader
	ori	$a2, $zero, 8
	move	$a0, $zero
	bltu	$s0, $a2, .LBB1_7
# %bb.3:                                # %for.body49.preheader
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	sub.d	$a2, $s6, $a2
	ori	$a3, $zero, 64
	bltu	$a2, $a3, .LBB1_7
# %bb.4:                                # %vector.ph
	bstrpick.d	$a0, $s0, 30, 3
	slli.d	$a0, $a0, 3
	addi.d	$a2, $s6, 32
	ld.d	$a3, $sp, 304                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 32
	move	$a4, $a0
	.p2align	4, , 16
.LBB1_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a3, -32
	xvld	$xr1, $a3, 0
	xvst	$xr0, $a2, -32
	xvst	$xr1, $a2, 0
	addi.d	$a4, $a4, -8
	addi.d	$a2, $a2, 64
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB1_5
# %bb.6:                                # %middle.block
	beq	$a0, $s0, .LBB1_9
.LBB1_7:                                # %for.body49.preheader578
	alsl.d	$a2, $a0, $s6, 3
	ld.d	$a3, $sp, 304                   # 8-byte Folded Reload
	alsl.d	$a3, $a0, $a3, 3
	sub.d	$a0, $s0, $a0
	.p2align	4, , 16
.LBB1_8:                                # %for.body49
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a3, 0
	st.d	$a4, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 8
	bnez	$a0, .LBB1_8
.LBB1_9:                                # %for.cond57.preheader
	addi.w	$a0, $a5, 1
	st.d	$a0, $sp, 552                   # 8-byte Folded Spill
	blt	$s5, $a1, .LBB1_17
# %bb.10:                               # %for.body60.preheader
	ori	$a1, $zero, 8
	move	$a0, $zero
	bltu	$s5, $a1, .LBB1_15
# %bb.11:                               # %for.body60.preheader
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	sub.d	$a1, $a6, $a1
	ori	$a2, $zero, 64
	bltu	$a1, $a2, .LBB1_15
# %bb.12:                               # %vector.ph16
	bstrpick.d	$a0, $s5, 30, 3
	slli.d	$a0, $a0, 3
	addi.d	$a1, $a6, 32
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 32
	move	$a3, $a0
	.p2align	4, , 16
.LBB1_13:                               # %vector.body19
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a2, -32
	xvld	$xr1, $a2, 0
	xvst	$xr0, $a1, -32
	xvst	$xr1, $a1, 0
	addi.d	$a3, $a3, -8
	addi.d	$a1, $a1, 64
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB1_13
# %bb.14:                               # %middle.block24
	beq	$a0, $s5, .LBB1_17
.LBB1_15:                               # %for.body60.preheader577
	alsl.d	$a1, $a0, $a6, 3
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a2, 3
	sub.d	$a0, $s5, $a0
	.p2align	4, , 16
.LBB1_16:                               # %for.body60
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	st.d	$a3, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB1_16
.LBB1_17:                               # %for.end67
	st.d	$a6, $sp, 184                   # 8-byte Folded Spill
	st.d	$s0, $sp, 144                   # 8-byte Folded Spill
	ori	$a0, $zero, 99
	st.d	$s3, $sp, 232                   # 8-byte Folded Spill
	st.d	$s7, $sp, 520                   # 8-byte Folded Spill
	st.d	$s5, $sp, 152                   # 8-byte Folded Spill
	st.d	$s6, $sp, 216                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	blt	$s7, $a0, .LBB1_51
# %bb.18:                               # %for.end67
	ori	$a0, $zero, 98
	bgeu	$a0, $a5, .LBB1_51
# %bb.19:                               # %iter.check
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 336                   # 8-byte Folded Spill
	alsl.d	$a0, $s3, $s4, 2
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	alsl.d	$a0, $s3, $a0, 2
	st.d	$a0, $sp, 544                   # 8-byte Folded Spill
	addi.w	$s1, $a5, 103
	move	$a0, $s1
	move	$s0, $a5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 472                   # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 520                   # 8-byte Folded Reload
	addi.w	$s7, $a0, 103
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s7
	ld.d	$s7, $sp, 520                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	sltu	$a0, $s0, $s7
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $s7, $a0
	or	$a0, $a0, $a1
	addi.w	$s1, $a0, 103
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ori	$a1, $zero, 26
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	ori	$a1, $zero, 26
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	alsl.d	$s1, $a0, $a1, 3
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	alsl.d	$s6, $s3, $a0, 3
	ori	$a7, $zero, 1
	ori	$s0, $zero, 1
	move	$a0, $s4
	move	$a1, $s1
	move	$a2, $s6
	move	$a3, $zero
	ld.d	$a4, $sp, 360                   # 8-byte Folded Reload
	move	$a5, $s7
	move	$a6, $s8
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ori	$a7, $zero, 1
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	move	$a0, $s5
	st.d	$s6, $sp, 480                   # 8-byte Folded Spill
	move	$a1, $s6
	st.d	$s1, $sp, 488                   # 8-byte Folded Spill
	move	$a2, $s1
	move	$a3, $zero
	ld.d	$a4, $sp, 552                   # 8-byte Folded Reload
	st.d	$s7, $sp, 512                   # 8-byte Folded Spill
	move	$a5, $s7
	st.d	$s8, $sp, 504                   # 8-byte Folded Spill
	move	$a6, $s8
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 2
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$a1, $a0, -1
	ori	$a2, $zero, 3
	bltu	$a2, $a1, .LBB1_130
# %bb.20:
	ld.d	$t0, $sp, 448                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 440                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 424                   # 8-byte Folded Reload
	move	$t4, $s4
	ld.d	$t6, $sp, 312                   # 8-byte Folded Reload
.LBB1_21:                               # %for.body139.preheader
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
.LBB1_22:                               # %for.body139.preheader
	slli.d	$a1, $s0, 2
	alsl.d	$a1, $s3, $a1, 2
	ld.d	$a2, $sp, 352                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, -4
	alsl.d	$a2, $s0, $t4, 2
	sub.d	$a0, $a0, $s0
	.p2align	4, , 16
.LBB1_23:                               # %for.body139
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $t1, 0
	fld.s	$fa1, $a1, 0
	fld.s	$fa2, $a2, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a2, 0
	addi.d	$a1, $a1, 4
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 4
	bnez	$a0, .LBB1_23
.LBB1_24:                               # %iter.check75
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	alsl.d	$t5, $a0, $a1, 2
	alsl.d	$t3, $a0, $t6, 2
	addi.w	$t8, $t0, 2
	ori	$a0, $zero, 2
	slt	$a1, $a0, $t8
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $t8, $a1
	or	$a0, $a1, $a0
	addi.d	$a1, $a0, -1
	ori	$a3, $zero, 1
	ori	$a4, $zero, 4
	alsl.d	$a2, $a0, $s4, 2
	blt	$a4, $t8, .LBB1_134
.LBB1_25:                               # %for.body155.preheader
	slli.d	$a4, $a3, 2
	ld.d	$a5, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$a4, $a5, $a4, 2
	add.d	$a4, $a4, $t6
	addi.d	$a4, $a4, -4
	alsl.d	$a5, $a3, $s4, 2
	sub.d	$a3, $a0, $a3
	.p2align	4, , 16
.LBB1_26:                               # %for.body155
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $t5, 0
	fld.s	$fa1, $a4, 0
	fld.s	$fa2, $a5, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a5, 0
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, -1
	addi.d	$a5, $a5, 4
	bnez	$a3, .LBB1_26
.LBB1_27:                               # %iter.check127
	addi.d	$t6, $t1, 4
	ori	$a3, $zero, 1
	ori	$a4, $zero, 4
	addi.d	$s3, $t2, 4
	st.d	$t3, $sp, 416                   # 8-byte Folded Spill
	blt	$a4, $t8, .LBB1_138
.LBB1_28:                               # %for.body171.preheader
	alsl.d	$a1, $a3, $s4, 2
	addi.d	$a1, $a1, -4
	alsl.d	$a2, $a3, $t2, 2
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$a4, $a3, $a4, 2
	sub.d	$a0, $a0, $a3
	.p2align	4, , 16
.LBB1_29:                               # %for.body171
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $t6, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 0
	st.w	$zero, $a4, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, -1
	addi.d	$a4, $a4, 4
	bnez	$a0, .LBB1_29
.LBB1_30:                               # %for.end183
	st.d	$t6, $sp, 328                   # 8-byte Folded Spill
	st.d	$t8, $sp, 344                   # 8-byte Folded Spill
	st.d	$t5, $sp, 400                   # 8-byte Folded Spill
	slli.d	$a0, $t0, 2
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
	fldx.s	$fa0, $s4, $a0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	vldi	$vr2, -928
	fmul.d	$fa1, $fa1, $fa2
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a2, $fa1
	ori	$t5, $zero, 1
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	fst.s	$fa0, $a0, 0
	ld.d	$fp, $sp, 120                   # 8-byte Folded Reload
	move	$s5, $s4
	st.d	$t4, $sp, 496                   # 8-byte Folded Spill
	st.d	$a2, $sp, 528                   # 8-byte Folded Spill
	blt	$a2, $t5, .LBB1_73
# %bb.31:                               # %for.body194.lr.ph
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	addi.d	$t6, $a0, 4
	ori	$a0, $zero, 2
	ld.d	$a3, $sp, 344                   # 8-byte Folded Reload
	slt	$a1, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$a0, $a1, $a0
	addi.d	$a1, $a2, 1
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a1, $sp, 432                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	addi.d	$s2, $a1, 4
	addi.d	$a1, $a0, -1
	st.d	$a1, $sp, 384                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	addi.d	$t7, $a1, 4
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	addi.d	$s6, $a1, 4
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	addi.d	$s8, $a1, 4
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	addi.d	$s4, $a1, 4
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	addi.d	$s0, $a1, 4
	slli.d	$a0, $a0, 2
	addi.d	$s1, $a0, -4
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 120                   # 8-byte Folded Reload
	st.d	$t6, $sp, 456                   # 8-byte Folded Spill
	st.d	$t7, $sp, 368                   # 8-byte Folded Spill
	b	.LBB1_33
	.p2align	4, , 16
.LBB1_32:                               # %for.end278
                                        #   in Loop: Header=BB1_33 Depth=1
	ld.d	$a1, $sp, 464                   # 8-byte Folded Reload
	fldx.s	$fa0, $s5, $a1
	addi.d	$t5, $t5, 1
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	fstx.s	$fa0, $a1, $a0
	move	$a0, $s5
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	beq	$t5, $a1, .LBB1_73
.LBB1_33:                               # %for.body194
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_41 Depth 2
                                        #     Child Loop BB1_37 Depth 2
	addi.d	$s7, $t5, -1
	slli.d	$a1, $s7, 2
	fldx.s	$fa0, $t4, $a1
	st.d	$a0, $sp, 536                   # 8-byte Folded Spill
	fst.s	$fa0, $a0, 0
	move	$a0, $fp
	ld.d	$a1, $sp, 480                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 488                   # 8-byte Folded Reload
	move	$a3, $t5
	ld.d	$a4, $sp, 552                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 512                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 504                   # 8-byte Folded Reload
	move	$a7, $zero
	move	$s5, $t5
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	move	$t5, $s5
	move	$s5, $fp
	ld.d	$t4, $sp, 496                   # 8-byte Folded Reload
	slli.d	$a0, $t5, 2
	fldx.s	$fa0, $t4, $a0
	fst.s	$fa0, $fp, 0
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	fldx.s	$fa0, $a1, $a0
	alsl.d	$a1, $t5, $a1, 2
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	fst.s	$fa0, $a2, 0
	ld.d	$a2, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$a2, $s7, $a2, 2
	ld.d	$a3, $sp, 528                   # 8-byte Folded Reload
	bne	$t5, $a3, .LBB1_39
# %bb.34:                               # %for.body225.us.preheader
                                        #   in Loop: Header=BB1_33 Depth=1
	ld.d	$a3, $sp, 472                   # 8-byte Folded Reload
	fst.s	$fa0, $a3, 0
	ld.d	$fp, $sp, 536                   # 8-byte Folded Reload
	fld.s	$fa0, $fp, 0
	ld.d	$a3, $sp, 400                   # 8-byte Folded Reload
	fld.s	$fa1, $a3, 4
	move	$a3, $zero
	move	$a4, $zero
	move	$a6, $zero
	fadd.s	$fa0, $fa0, $fa1
	addi.d	$a5, $s5, 4
	ld.d	$t2, $sp, 416                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 456                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 368                   # 8-byte Folded Reload
	b	.LBB1_37
	.p2align	4, , 16
.LBB1_35:                               # %for.body225.us.if.end257.us_crit_edge
                                        #   in Loop: Header=BB1_37 Depth=2
	ldx.w	$a7, $t6, $a4
.LBB1_36:                               # %if.end257.us
                                        #   in Loop: Header=BB1_37 Depth=2
	fadd.s	$fa4, $fa0, $fa4
	fcmp.clt.s	$fcc0, $fa3, $fa4
	fsel	$fa4, $fa3, $fa4, $fcc0
	fadd.s	$fa3, $fa3, $fa5
	fcmp.cult.s	$fcc0, $fa3, $fa0
	fsel	$fa0, $fa3, $fa0, $fcc0
	movcf2gr	$t0, $fcc0
	masknez	$t1, $a3, $t0
	maskeqz	$a6, $a6, $t0
	fldx.s	$fa3, $a5, $a4
	fadd.s	$fa1, $fa1, $fa2
	fcmp.clt.s	$fcc0, $fa4, $fa1
	fsel	$fa1, $fa4, $fa1, $fcc0
	fadd.s	$fa1, $fa1, $fa3
	fstx.s	$fa1, $a5, $a4
	fstx.s	$fa1, $s8, $a4
	fldx.s	$fa1, $s3, $a4
	or	$a6, $a6, $t1
	stx.w	$a7, $t7, $a4
	stx.w	$a6, $s6, $a4
	fstx.s	$fa1, $s4, $a4
	fstx.s	$fa0, $s0, $a4
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, 1
	beq	$s1, $a4, .LBB1_32
.LBB1_37:                               # %for.body225.us
                                        #   Parent Loop BB1_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$fa3, $fp, $a4
	fldx.s	$fa4, $t2, $a4
	fld.s	$fa6, $a1, 0
	fldx.s	$fa1, $s3, $a4
	fldx.s	$fa5, $s2, $a4
	fld.s	$fa2, $a2, 0
	fadd.s	$fa6, $fa3, $fa6
	fcmp.cle.s	$fcc0, $fa1, $fa6
	bceqz	$fcc0, .LBB1_35
# %bb.38:                               # %if.then255.us
                                        #   in Loop: Header=BB1_37 Depth=2
	fstx.s	$fa6, $s3, $a4
	stx.w	$s7, $t6, $a4
	move	$a7, $s7
	b	.LBB1_36
	.p2align	4, , 16
.LBB1_39:                               # %for.body225.preheader
                                        #   in Loop: Header=BB1_33 Depth=1
	ld.d	$fp, $sp, 536                   # 8-byte Folded Reload
	fld.s	$fa0, $fp, 0
	ld.d	$a3, $sp, 400                   # 8-byte Folded Reload
	fld.s	$fa1, $a3, 4
	addi.d	$a3, $s5, 4
	fadd.s	$fa0, $fa0, $fa1
	ld.d	$a4, $sp, 384                   # 8-byte Folded Reload
	move	$a5, $s2
	ld.d	$a6, $sp, 416                   # 8-byte Folded Reload
	move	$a7, $s3
	ld.d	$t0, $sp, 456                   # 8-byte Folded Reload
	move	$t1, $fp
	b	.LBB1_41
	.p2align	4, , 16
.LBB1_40:                               # %if.end257
                                        #   in Loop: Header=BB1_41 Depth=2
	fadd.s	$fa4, $fa0, $fa4
	fcmp.clt.s	$fcc0, $fa2, $fa4
	fsel	$fa4, $fa2, $fa4, $fcc0
	fadd.s	$fa2, $fa2, $fa5
	fcmp.cle.s	$fcc0, $fa0, $fa2
	fsel	$fa0, $fa0, $fa2, $fcc0
	fld.s	$fa2, $a3, 0
	fadd.s	$fa1, $fa1, $fa3
	fcmp.clt.s	$fcc0, $fa4, $fa1
	fsel	$fa1, $fa4, $fa1, $fcc0
	fadd.s	$fa1, $fa1, $fa2
	fst.s	$fa1, $a3, 0
	addi.d	$t1, $t1, 4
	addi.d	$t0, $t0, 4
	addi.d	$a7, $a7, 4
	addi.d	$a6, $a6, 4
	addi.d	$a5, $a5, 4
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 4
	beqz	$a4, .LBB1_32
.LBB1_41:                               # %for.body225
                                        #   Parent Loop BB1_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa2, $t1, 0
	fld.s	$fa4, $a6, 0
	fld.s	$fa6, $a1, 0
	fld.s	$fa1, $a7, 0
	fld.s	$fa5, $a5, 0
	fld.s	$fa3, $a2, 0
	fadd.s	$fa6, $fa2, $fa6
	fcmp.cult.s	$fcc0, $fa6, $fa1
	bcnez	$fcc0, .LBB1_40
# %bb.42:                               # %if.then255
                                        #   in Loop: Header=BB1_41 Depth=2
	fst.s	$fa6, $a7, 0
	st.w	$s7, $t0, 0
	b	.LBB1_40
.LBB1_43:                               # %for.cond.preheader
	ori	$fp, $zero, 1
	ld.d	$s1, $sp, 304                   # 8-byte Folded Reload
	blt	$s0, $fp, .LBB1_45
	.p2align	4, , 16
.LBB1_44:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s2, 0
	ld.d	$a0, $s1, 0
	add.d	$a1, $a1, $s3
	move	$a2, $s6
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	stx.b	$zero, $a0, $s6
	addi.d	$s2, $s2, 8
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	bnez	$s0, .LBB1_44
.LBB1_45:                               # %for.cond24.preheader
	movgr2fr.w	$fs0, $zero
	blt	$s5, $fp, .LBB1_258
# %bb.46:                               # %for.body27.lr.ph
	move	$fp, $zero
	ori	$s0, $zero, 45
	b	.LBB1_48
	.p2align	4, , 16
.LBB1_47:                               # %for.inc41
                                        #   in Loop: Header=BB1_48 Depth=1
	addi.d	$fp, $fp, 1
	beq	$fp, $s5, .LBB1_258
.LBB1_48:                               # %for.body27
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_50 Depth 2
	slli.d	$a0, $fp, 3
	ldx.d	$a0, $s8, $a0
	st.b	$zero, $a0, 0
	bltz	$s7, .LBB1_47
# %bb.49:                               # %for.body34.preheader
                                        #   in Loop: Header=BB1_48 Depth=1
	alsl.d	$s2, $fp, $s8, 3
	move	$s3, $s6
	.p2align	4, , 16
.LBB1_50:                               # %for.body34
                                        #   Parent Loop BB1_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s1, $s2, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$s3, $s3, -1
	stx.h	$s0, $s1, $a0
	bnez	$s3, .LBB1_50
	b	.LBB1_47
.LBB1_51:                               # %if.then72
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a1, 0
	ld.d	$a3, $a1, 8
	ld.d	$a2, $a1, 16
	st.d	$a2, $sp, 464                   # 8-byte Folded Spill
	ld.d	$a1, $a1, 24
	st.d	$a1, $sp, 472                   # 8-byte Folded Spill
	alsl.d	$a0, $s3, $a0, 2
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	st.d	$a3, $sp, 456                   # 8-byte Folded Spill
	alsl.d	$a0, $s3, $a3, 2
	st.d	$a0, $sp, 496                   # 8-byte Folded Spill
	addi.w	$s1, $a5, 103
	move	$a0, $s1
	move	$fp, $a5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 520                   # 8-byte Folded Reload
	addi.w	$s7, $a0, 103
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s7
	ld.d	$s4, $sp, 520                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 528                   # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 432                   # 8-byte Folded Spill
	slt	$a0, $fp, $s4
	masknez	$a1, $fp, $a0
	maskeqz	$a0, $s4, $a0
	or	$a0, $a0, $a1
	addi.w	$s1, $a0, 103
	ori	$a1, $zero, 27
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	ori	$a1, $zero, 27
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	addi.w	$a0, $s4, 102
	addi.w	$a1, $fp, 102
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 536                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	alsl.d	$fp, $a0, $a1, 3
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	alsl.d	$s0, $s3, $a0, 3
	ori	$a7, $zero, 1
	ori	$s1, $zero, 1
	st.d	$s2, $sp, 544                   # 8-byte Folded Spill
	move	$a0, $s2
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $zero
	ld.d	$a4, $sp, 360                   # 8-byte Folded Reload
	move	$a5, $s7
	move	$a6, $s6
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ori	$a7, $zero, 1
	st.d	$s8, $sp, 424                   # 8-byte Folded Spill
	move	$a0, $s8
	st.d	$s0, $sp, 480                   # 8-byte Folded Spill
	move	$a1, $s0
	st.d	$fp, $sp, 488                   # 8-byte Folded Spill
	move	$a2, $fp
	move	$a3, $zero
	ld.d	$a4, $sp, 552                   # 8-byte Folded Reload
	st.d	$s7, $sp, 512                   # 8-byte Folded Spill
	move	$a5, $s7
	st.d	$s6, $sp, 504                   # 8-byte Folded Spill
	move	$a6, $s6
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ld.d	$t5, $sp, 392                   # 8-byte Folded Reload
	addi.w	$t6, $s4, 2
	bltz	$s4, .LBB1_55
# %bb.52:                               # %iter.check334
	ori	$a0, $zero, 2
	slt	$a1, $a0, $t6
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $t6, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	blt	$a1, $t6, .LBB1_149
.LBB1_53:                               # %for.body.i.preheader
	sub.d	$a0, $a0, $a2
	slli.d	$a3, $a2, 2
	ld.d	$a1, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$a1, $a2, $a1, 2
	alsl.d	$a2, $s3, $a3, 2
	ld.d	$a3, $sp, 456                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	addi.d	$a2, $a2, -4
	.p2align	4, , 16
.LBB1_54:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $t5, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a1, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	bnez	$a0, .LBB1_54
.LBB1_55:                               # %iter.check386
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 464                   # 8-byte Folded Reload
	alsl.d	$s6, $a0, $a1, 2
	ld.d	$a6, $sp, 472                   # 8-byte Folded Reload
	alsl.d	$s8, $a0, $a6, 2
	ld.d	$t1, $sp, 448                   # 8-byte Folded Reload
	addi.w	$t8, $t1, 2
	ori	$a0, $zero, 2
	slt	$a1, $a0, $t8
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $t8, $a1
	or	$a0, $a1, $a0
	ori	$a2, $zero, 4
	addi.d	$a1, $a0, -1
	blt	$a2, $t8, .LBB1_122
# %bb.56:
	ld.d	$t2, $sp, 424                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 416                   # 8-byte Folded Reload
.LBB1_57:                               # %for.body57.i.preheader
	sub.d	$a2, $a0, $s1
	slli.d	$a4, $s1, 2
	alsl.d	$a3, $s1, $t2, 2
	ld.d	$a5, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$a4, $a5, $a4, 2
	add.d	$a4, $a4, $a6
	addi.d	$a4, $a4, -4
	.p2align	4, , 16
.LBB1_58:                               # %for.body57.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $s6, 0
	fld.s	$fa1, $a4, 0
	fld.s	$fa2, $a3, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 4
	bnez	$a2, .LBB1_58
.LBB1_59:                               # %iter.check438
	addi.d	$a2, $t5, 4
	ori	$a3, $zero, 1
	ori	$a4, $zero, 4
	addi.d	$s2, $fp, 4
	blt	$a4, $t8, .LBB1_126
.LBB1_60:                               # %for.body72.i.preheader
	sub.d	$a1, $a0, $a3
	ld.d	$a4, $sp, 432                   # 8-byte Folded Reload
	alsl.d	$a4, $a3, $a4, 2
	alsl.d	$a5, $a3, $fp, 2
	alsl.d	$a3, $a3, $t2, 2
	addi.d	$a3, $a3, -4
	.p2align	4, , 16
.LBB1_61:                               # %for.body72.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a3, 0
	fld.s	$fa1, $a2, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a5, 0
	st.w	$zero, $a4, 0
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 4
	addi.d	$a3, $a3, 4
	bnez	$a1, .LBB1_61
.LBB1_62:                               # %for.end84.i
	slli.d	$a1, $t1, 2
	st.d	$a1, $sp, 472                   # 8-byte Folded Spill
	fldx.s	$fa0, $t2, $a1
	ld.d	$a1, $sp, 528                   # 8-byte Folded Reload
	fst.s	$fa0, $a1, 0
	st.d	$t6, $sp, 384                   # 8-byte Folded Spill
	st.d	$t8, $sp, 400                   # 8-byte Folded Spill
	bltz	$s4, .LBB1_145
# %bb.63:                               # %for.body92.lr.ph.i
	ori	$a1, $zero, 2
	slt	$a2, $a1, $t6
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $t6, $a2
	or	$a1, $a2, $a1
	st.d	$a1, $sp, 456                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 2
	addi.d	$s3, $a0, -4
	addi.d	$s5, $s6, 4
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	addi.d	$fp, $a0, 4
	ori	$s7, $zero, 1
	move	$a2, $t2
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	st.d	$s6, $sp, 464                   # 8-byte Folded Spill
	st.d	$s8, $sp, 440                   # 8-byte Folded Spill
	b	.LBB1_65
	.p2align	4, , 16
.LBB1_64:                               # %for.end153.i
                                        #   in Loop: Header=BB1_65 Depth=1
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	fldx.s	$fa0, $t2, $a1
	addi.d	$s7, $s7, 1
	ld.d	$a1, $sp, 528                   # 8-byte Folded Reload
	fstx.s	$fa0, $a1, $a0
	move	$a2, $t2
	move	$a0, $s1
	ld.d	$a1, $sp, 456                   # 8-byte Folded Reload
	beq	$s7, $a1, .LBB1_146
.LBB1_65:                               # %for.body92.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_67 Depth 2
	addi.d	$s4, $s7, -1
	slli.d	$a1, $s4, 2
	ld.d	$a3, $sp, 544                   # 8-byte Folded Reload
	fldx.s	$fa0, $a3, $a1
	move	$s1, $a2
	addi.d	$s0, $a0, 4
	fst.s	$fa0, $a2, 0
	ld.d	$a1, $sp, 480                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 488                   # 8-byte Folded Reload
	move	$a3, $s7
	ld.d	$a4, $sp, 552                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 512                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 504                   # 8-byte Folded Reload
	move	$a7, $zero
	move	$s8, $t5
	move	$s6, $a0
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	move	$t2, $s6
	move	$t5, $s8
	ld.d	$s8, $sp, 440                   # 8-byte Folded Reload
	slli.d	$a0, $s7, 2
	ld.d	$a1, $sp, 544                   # 8-byte Folded Reload
	fldx.s	$fa0, $a1, $a0
	ld.d	$s6, $sp, 464                   # 8-byte Folded Reload
	fst.s	$fa0, $t2, 0
	fld.s	$fa0, $s1, 0
	fld.s	$fa1, $s6, 4
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	slli.d	$a4, $s7, 3
	ld.d	$a5, $sp, 536                   # 8-byte Folded Reload
	ldx.d	$a6, $a5, $a4
	fadd.s	$fa0, $fa0, $fa1
	ld.d	$a4, $sp, 496                   # 8-byte Folded Reload
	alsl.d	$a4, $s4, $a4, 2
	alsl.d	$a5, $s7, $t5, 2
	addi.d	$a6, $a6, 4
	addi.d	$a7, $zero, -1
	b	.LBB1_67
	.p2align	4, , 16
.LBB1_66:                               # %if.end145.i
                                        #   in Loop: Header=BB1_67 Depth=2
	fadd.s	$fa1, $fa1, $fa2
	fcmp.cult.s	$fcc0, $fa1, $fa0
	fsel	$fa0, $fa1, $fa0, $fcc0
	movcf2gr	$t0, $fcc0
	fldx.s	$fa1, $s0, $a2
	masknez	$t1, $a1, $t0
	maskeqz	$a3, $a3, $t0
	or	$a3, $a3, $t1
	fadd.s	$fa1, $fs0, $fa1
	fstx.s	$fa1, $s0, $a2
	addi.d	$a7, $a7, -1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 1
	beq	$s3, $a2, .LBB1_64
.LBB1_67:                               # %for.body116.i
                                        #   Parent Loop BB1_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$fa2, $s8, $a2
	fldx.s	$fa1, $s1, $a2
	fadd.s	$fa2, $fa0, $fa2
	fcmp.cule.s	$fcc0, $fa2, $fa1
	stx.w	$zero, $a6, $a2
	fmov.s	$fs0, $fa1
	bcnez	$fcc0, .LBB1_69
# %bb.68:                               # %if.then.i
                                        #   in Loop: Header=BB1_67 Depth=2
	add.d	$t0, $a7, $a3
	stx.w	$t0, $a6, $a2
	fmov.s	$fs0, $fa2
.LBB1_69:                               # %if.end.i
                                        #   in Loop: Header=BB1_67 Depth=2
	fldx.s	$fa3, $s2, $a2
	fld.s	$fa4, $a4, 0
	fldx.s	$fa2, $s5, $a2
	fadd.s	$fa4, $fa3, $fa4
	fcmp.cule.s	$fcc0, $fa4, $fs0
	bcnez	$fcc0, .LBB1_71
# %bb.70:                               # %if.then136.i
                                        #   in Loop: Header=BB1_67 Depth=2
	ldx.w	$t0, $fp, $a2
	sub.d	$t0, $s7, $t0
	stx.w	$t0, $a6, $a2
	fmov.s	$fs0, $fa4
.LBB1_71:                               # %if.end138.i
                                        #   in Loop: Header=BB1_67 Depth=2
	fld.s	$fa4, $a5, 0
	fadd.s	$fa4, $fa1, $fa4
	fcmp.cult.s	$fcc0, $fa4, $fa3
	bcnez	$fcc0, .LBB1_66
# %bb.72:                               # %if.then143.i
                                        #   in Loop: Header=BB1_67 Depth=2
	fstx.s	$fa4, $s2, $a2
	stx.w	$s4, $fp, $a2
	b	.LBB1_66
.LBB1_73:                               # %for.end286
	st.d	$fp, $sp, 536                   # 8-byte Folded Spill
	ld.d	$fp, $sp, 688
	ori	$a7, $zero, 1
	ori	$s0, $zero, 1
	move	$a0, $t4
	ld.d	$s1, $sp, 488                   # 8-byte Folded Reload
	move	$a1, $s1
	ld.d	$s2, $sp, 480                   # 8-byte Folded Reload
	move	$a2, $s2
	ld.d	$a3, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 512                   # 8-byte Folded Reload
	move	$a5, $s3
	ld.d	$s4, $sp, 504                   # 8-byte Folded Reload
	move	$a6, $s4
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ori	$a7, $zero, 1
	move	$s6, $s5
	move	$a0, $s5
	move	$a1, $s2
	move	$a2, $s1
	ld.d	$s2, $sp, 520                   # 8-byte Folded Reload
	move	$a3, $s2
	ld.d	$s1, $sp, 552                   # 8-byte Folded Reload
	move	$a4, $s1
	move	$a5, $s3
	move	$a6, $s4
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ld.d	$t6, $sp, 528                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 496                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 336                   # 8-byte Folded Reload
	blt	$s2, $s0, .LBB1_78
# %bb.74:                               # %iter.check175
	ori	$a1, $zero, 3
	ld.d	$a0, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$a0, $s2, $a0, 2
	bltu	$a1, $s2, .LBB1_153
# %bb.75:
	move	$a1, $zero
.LBB1_76:                               # %for.body301.preheader
	slli.d	$a3, $a1, 2
	alsl.d	$a2, $a1, $t3, 2
	sub.d	$a1, $s2, $a1
	alsl.d	$a3, $a5, $a3, 2
	add.d	$a3, $a3, $a6
	addi.d	$a3, $a3, 4
	.p2align	4, , 16
.LBB1_77:                               # %for.body301
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a3, 0
	fld.s	$fa2, $a2, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	bnez	$a1, .LBB1_77
.LBB1_78:                               # %for.cond315.preheader
	addi.w	$a0, $fp, 1
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$t1, $sp, 448                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 424                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 344                   # 8-byte Folded Reload
	move	$t8, $s6
	beqz	$t1, .LBB1_87
# %bb.79:                               # %iter.check225
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	alsl.d	$a0, $t1, $a0, 2
	ori	$a1, $zero, 1
	slt	$a2, $a1, $t1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $t1, $a2
	ori	$a3, $zero, 3
	or	$a1, $a2, $a1
	blt	$a3, $t1, .LBB1_157
# %bb.80:
	move	$a2, $zero
	ld.d	$a6, $sp, 376                   # 8-byte Folded Reload
.LBB1_81:                               # %for.body319.preheader
	slli.d	$a4, $a2, 2
	alsl.d	$a3, $a2, $t8, 2
	sub.d	$a1, $a1, $a2
	alsl.d	$a2, $a6, $a4, 2
	add.d	$a2, $a2, $t4
	addi.d	$a2, $a2, 4
	.p2align	4, , 16
.LBB1_82:                               # %for.body319
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a3, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB1_82
.LBB1_83:                               # %for.body337.lr.ph
	slti	$a2, $t1, 1
	ori	$a1, $zero, 1
	masknez	$a3, $a1, $a2
	maskeqz	$a2, $t1, $a2
	or	$a2, $a2, $a3
	add.d	$a2, $a6, $a2
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	sub.d	$a4, $a3, $a2
	addi.w	$a3, $a4, 0
	ori	$a5, $zero, 23
	addi.d	$a2, $a0, -4
	bgeu	$a3, $a5, .LBB1_161
.LBB1_84:
	move	$a0, $t1
.LBB1_85:                               # %for.body337.preheader
	addi.d	$a3, $a0, 1
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$a4, $a0, $a4, 2
	alsl.d	$a5, $a0, $t8, 2
	alsl.d	$a0, $a0, $t2, 2
	addi.d	$a0, $a0, -4
	.p2align	4, , 16
.LBB1_86:                               # %for.body337
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a5, 0
	fld.s	$fa1, $a2, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a0, 0
	st.w	$s2, $a4, 0
	addi.w	$a3, $a3, -1
	addi.d	$a4, $a4, -4
	addi.d	$a5, $a5, -4
	addi.d	$a0, $a0, -4
	blt	$a1, $a3, .LBB1_86
.LBB1_87:                               # %for.cond354.preheader
	move	$s7, $zero
	st.d	$zero, $sp, 456                 # 8-byte Folded Spill
	st.d	$zero, $sp, 384                 # 8-byte Folded Spill
	addi.w	$a0, $t1, -1
	bstrpick.d	$a1, $a0, 31, 0
	ld.d	$a2, $sp, 416                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a2, 2
	st.d	$a2, $sp, 368                   # 8-byte Folded Spill
	bstrpick.d	$s5, $s1, 31, 0
	alsl.d	$a2, $s5, $t2, 2
	addi.d	$s3, $a2, -8
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$a2, $s5, $a2, 2
	addi.d	$fp, $a2, -8
	addi.w	$a2, $t6, -1
	st.d	$a2, $sp, 272                   # 8-byte Folded Spill
	srai.d	$a2, $a0, 63
	and	$a0, $a2, $a0
	addi.w	$a0, $a0, -1
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	ori	$a2, $zero, 1
	slt	$a0, $a2, $t7
	masknez	$a2, $a2, $a0
	maskeqz	$a0, $t7, $a0
	or	$a0, $a0, $a2
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	bstrpick.d	$s4, $t6, 31, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	alsl.d	$t7, $a1, $a0, 2
	ld.d	$a2, $sp, 392                   # 8-byte Folded Reload
	alsl.d	$ra, $a1, $a2, 2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	alsl.d	$s6, $a1, $a0, 2
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	alsl.d	$a4, $a1, $a0, 2
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	alsl.d	$a0, $a1, $a0, 2
	add.d	$t5, $t5, $a0
	ld.d	$a3, $sp, 472                   # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a3, 2
	addi.d	$s8, $a1, 4
	add.d	$a0, $a0, $t4
	addi.d	$s1, $a0, 4
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	fld.s	$fs0, $a0, %pc_lo12(.LCPI1_0)
	addi.d	$a0, $a2, 8
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	addi.d	$a0, $t1, -2
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 536                   # 8-byte Folded Reload
	st.d	$fp, $sp, 360                   # 8-byte Folded Spill
	st.d	$t7, $sp, 344                   # 8-byte Folded Spill
	st.d	$s6, $sp, 336                   # 8-byte Folded Spill
	st.d	$ra, $sp, 328                   # 8-byte Folded Spill
	st.d	$a4, $sp, 320                   # 8-byte Folded Spill
	st.d	$t5, $sp, 312                   # 8-byte Folded Spill
	b	.LBB1_90
	.p2align	4, , 16
.LBB1_88:                               # %if.then545
                                        #   in Loop: Header=BB1_90 Depth=1
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	st.d	$a0, $sp, 456                   # 8-byte Folded Spill
.LBB1_89:                               # %if.end552
                                        #   in Loop: Header=BB1_90 Depth=1
	movcf2gr	$a0, $fcc0
	ld.d	$a1, $sp, 520                   # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s2, $a0
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 520                   # 8-byte Folded Spill
	move	$a0, $a5
	ld.d	$s2, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 456                   # 8-byte Folded Reload
	beq	$s0, $a1, .LBB1_142
.LBB1_90:                               # %for.cond354
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_94 Depth 2
                                        #     Child Loop BB1_112 Depth 2
                                        #     Child Loop BB1_114 Depth 2
	addi.w	$a1, $s2, 0
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB1_121
# %bb.91:                               # %for.body357
                                        #   in Loop: Header=BB1_90 Depth=1
	slli.d	$a1, $s2, 2
	fldx.s	$fa0, $t3, $a1
	addi.d	$a1, $s2, -1
	st.d	$a1, $sp, 432                   # 8-byte Folded Spill
	addi.w	$s0, $a1, 0
	ld.d	$s6, $sp, 464                   # 8-byte Folded Reload
	fstx.s	$fa0, $t8, $s6
	ld.d	$a1, $sp, 480                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 488                   # 8-byte Folded Reload
	move	$a3, $s0
	ld.d	$a4, $sp, 552                   # 8-byte Folded Reload
	st.d	$t8, $sp, 536                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 512                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 504                   # 8-byte Folded Reload
	move	$a7, $zero
	move	$fp, $s5
	move	$s5, $a0
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 536                   # 8-byte Folded Reload
	move	$t8, $s5
	move	$s5, $fp
	ld.d	$t3, $sp, 496                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 448                   # 8-byte Folded Reload
	slli.d	$a0, $s0, 2
	fldx.s	$fa0, $t3, $a0
	fstx.s	$fa0, $t8, $s6
	alsl.d	$a1, $fp, $a5, 2
	addi.d	$a1, $a1, -4
	beqz	$t0, .LBB1_106
# %bb.92:                               # %for.body397.lr.ph
                                        #   in Loop: Header=BB1_90 Depth=1
	alsl.d	$a2, $t0, $a5, 2
	fld.s	$fa0, $a2, 0
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	fld.s	$fa1, $a2, 0
	move	$a2, $zero
	alsl.d	$a3, $s5, $t8, 2
	addi.d	$a3, $a3, -8
	fadd.s	$fa0, $fa0, $fa1
	ld.d	$a4, $sp, 440                   # 8-byte Folded Reload
	alsl.d	$a4, $s2, $a4, 2
	ld.d	$a5, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$a5, $s0, $a5, 2
	ld.d	$a6, $sp, 456                   # 8-byte Folded Reload
	xor	$a6, $s0, $a6
	sltui	$a6, $a6, 1
	xor	$a7, $s2, $s4
	sltui	$a7, $a7, 1
	or	$a6, $a7, $a6
	move	$a7, $t0
	ld.d	$t6, $sp, 528                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 360                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 336                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 328                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 320                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 312                   # 8-byte Folded Reload
	b	.LBB1_94
	.p2align	4, , 16
.LBB1_93:                               # %if.end464
                                        #   in Loop: Header=BB1_94 Depth=2
	movcf2gr	$t1, $fcc0
	fldx.s	$fa2, $a3, $a2
	masknez	$t2, $a7, $t1
	maskeqz	$t0, $t0, $t1
	or	$t0, $t0, $t2
	fadd.s	$fa1, $fa1, $fa2
	fstx.s	$fa1, $a3, $a2
	addi.w	$a7, $a7, -1
	addi.d	$a2, $a2, -4
	blez	$a7, .LBB1_105
.LBB1_94:                               # %for.body397
                                        #   Parent Loop BB1_90 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$fa1, $s1, $a2
	fldx.s	$fa2, $a1, $a2
	fldx.s	$fa3, $s3, $a2
	fld.s	$fa4, $a4, 0
	fadd.s	$fa1, $fa0, $fa1
	fcmp.clt.s	$fcc0, $fa2, $fa1
	fsel	$fa1, $fa2, $fa1, $fcc0
	fadd.s	$fa4, $fa3, $fa4
	fcmp.cule.s	$fcc1, $fa4, $fa1
	bcnez	$fcc1, .LBB1_96
# %bb.95:                               # %if.then423
                                        #   in Loop: Header=BB1_94 Depth=2
	ldx.w	$t1, $fp, $a2
	fmov.s	$fa1, $fa4
	move	$t2, $a7
	b	.LBB1_97
	.p2align	4, , 16
.LBB1_96:                               #   in Loop: Header=BB1_94 Depth=2
	movcf2gr	$t1, $fcc0
	masknez	$t2, $a7, $t1
	maskeqz	$t1, $t0, $t1
	or	$t2, $t1, $t2
	move	$t1, $s2
.LBB1_97:                               # %if.end425
                                        #   in Loop: Header=BB1_94 Depth=2
	fld.s	$fa5, $a5, 0
	fldx.s	$fa4, $t5, $a2
	fadd.s	$fa5, $fa2, $fa5
	fcmp.cult.s	$fcc0, $fa5, $fa3
	bceqz	$fcc0, .LBB1_101
# %bb.98:                               # %if.end433
                                        #   in Loop: Header=BB1_94 Depth=2
	beqz	$a6, .LBB1_102
.LBB1_99:                               # %if.then440
                                        #   in Loop: Header=BB1_94 Depth=2
	stx.w	$t1, $t4, $a2
	stx.w	$t2, $s6, $a2
	beq	$s0, $t6, .LBB1_103
.LBB1_100:                              # %if.end456
                                        #   in Loop: Header=BB1_94 Depth=2
	fadd.s	$fa2, $fa2, $fa4
	fcmp.cult.s	$fcc0, $fa2, $fa0
	fsel	$fa0, $fa2, $fa0, $fcc0
	bne	$s2, $s4, .LBB1_93
	b	.LBB1_104
	.p2align	4, , 16
.LBB1_101:                              # %if.then431
                                        #   in Loop: Header=BB1_94 Depth=2
	fstx.s	$fa5, $s3, $a2
	stx.w	$s2, $fp, $a2
	bnez	$a6, .LBB1_99
.LBB1_102:                              # %if.end445
                                        #   in Loop: Header=BB1_94 Depth=2
	bne	$s0, $t6, .LBB1_100
.LBB1_103:                              # %if.then448
                                        #   in Loop: Header=BB1_94 Depth=2
	fldx.s	$fa3, $ra, $a2
	fadd.s	$fa3, $fa1, $fa3
	fstx.s	$fa3, $ra, $a2
	fldx.s	$fa3, $s3, $a2
	fldx.s	$fa5, $s8, $a2
	fadd.s	$fa3, $fa3, $fa5
	fstx.s	$fa3, $s8, $a2
	fadd.s	$fa2, $fa2, $fa4
	fcmp.cult.s	$fcc0, $fa2, $fa0
	fsel	$fa0, $fa2, $fa0, $fcc0
	bne	$s2, $s4, .LBB1_93
.LBB1_104:                              # %if.then460
                                        #   in Loop: Header=BB1_94 Depth=2
	fldx.s	$fa2, $t7, $a2
	fadd.s	$fa2, $fa0, $fa2
	fstx.s	$fa2, $t7, $a2
	b	.LBB1_93
	.p2align	4, , 16
.LBB1_105:                              # %for.end472.loopexit
                                        #   in Loop: Header=BB1_90 Depth=1
	add.d	$a1, $a1, $a2
	ld.d	$a2, $sp, 352                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 536                   # 8-byte Folded Reload
	b	.LBB1_107
	.p2align	4, , 16
.LBB1_106:                              #   in Loop: Header=BB1_90 Depth=1
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 528                   # 8-byte Folded Reload
.LBB1_107:                              # %for.end472
                                        #   in Loop: Header=BB1_90 Depth=1
	fld.s	$fa0, $a1, 0
	ld.d	$a1, $sp, 544                   # 8-byte Folded Reload
	fldx.s	$fa1, $a1, $a0
	fadd.s	$fa0, $fa0, $fa1
	fcmp.clt.s	$fcc0, $fs0, $fa0
	fsel	$fs0, $fs0, $fa0, $fcc0
	bne	$s0, $t6, .LBB1_109
# %bb.108:                              # %if.then483
                                        #   in Loop: Header=BB1_90 Depth=1
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	alsl.d	$a0, $a2, $a0, 2
	fld.s	$fa0, $a0, 4
	fadd.s	$fa0, $fs0, $fa0
	fst.s	$fa0, $a0, 4
.LBB1_109:                              # %if.end488
                                        #   in Loop: Header=BB1_90 Depth=1
	bne	$s2, $s4, .LBB1_89
# %bb.110:                              # %if.then492
                                        #   in Loop: Header=BB1_90 Depth=1
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	fld.s	$fa0, $a0, 4
	move	$s7, $zero
	ori	$a0, $zero, 3
	blt	$t0, $a0, .LBB1_113
# %bb.111:                              # %for.body498.preheader
                                        #   in Loop: Header=BB1_90 Depth=1
	ori	$a0, $zero, 2
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_112:                              # %for.body498
                                        #   Parent Loop BB1_90 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa1, $a2, 0
	fcmp.clt.s	$fcc1, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc1
	movcf2gr	$a3, $fcc1
	masknez	$a4, $s7, $a3
	maskeqz	$a3, $a0, $a3
	or	$s7, $a3, $a4
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, -1
	addi.w	$a0, $a0, 1
	bnez	$a1, .LBB1_112
.LBB1_113:                              # %for.body512.preheader
                                        #   in Loop: Header=BB1_90 Depth=1
	move	$a0, $zero
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 472                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_114:                              # %for.body512
                                        #   Parent Loop BB1_90 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa1, $a2, 0
	fcmp.clt.s	$fcc1, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc1
	movcf2gr	$a3, $fcc1
	masknez	$a4, $s7, $a3
	maskeqz	$a3, $a0, $a3
	or	$s7, $a3, $a4
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, -1
	addi.w	$a0, $a0, 1
	bnez	$a1, .LBB1_114
# %bb.115:                              # %for.end521
                                        #   in Loop: Header=BB1_90 Depth=1
	slli.d	$a0, $s7, 2
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	fldx.s	$fa0, $a1, $a0
	addi.w	$a3, $s7, -1
	ori	$a1, $zero, 1
	st.d	$a3, $sp, 384                   # 8-byte Folded Spill
	blt	$s7, $a1, .LBB1_119
# %bb.116:                              # %land.lhs.true
                                        #   in Loop: Header=BB1_90 Depth=1
	slli.d	$a1, $a3, 2
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	fldx.s	$fa1, $a2, $a1
	fcmp.cule.s	$fcc1, $fa1, $fa0
	move	$a1, $a3
	bcnez	$fcc1, .LBB1_118
# %bb.117:                              # %if.then533
                                        #   in Loop: Header=BB1_90 Depth=1
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a0
	fmov.s	$fa0, $fa1
.LBB1_118:                              # %if.end540
                                        #   in Loop: Header=BB1_90 Depth=1
	ld.d	$a2, $sp, 472                   # 8-byte Folded Reload
	fldx.s	$fa1, $a2, $a0
	fcmp.cule.s	$fcc1, $fa1, $fa0
	bceqz	$fcc1, .LBB1_88
	b	.LBB1_120
.LBB1_119:                              #   in Loop: Header=BB1_90 Depth=1
	move	$a1, $a3
	ld.d	$a2, $sp, 472                   # 8-byte Folded Reload
	fldx.s	$fa1, $a2, $a0
	fcmp.cule.s	$fcc1, $fa1, $fa0
	bceqz	$fcc1, .LBB1_88
.LBB1_120:                              #   in Loop: Header=BB1_90 Depth=1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	st.d	$a0, $sp, 456                   # 8-byte Folded Spill
	st.d	$a1, $sp, 384                   # 8-byte Folded Spill
	b	.LBB1_89
.LBB1_121:
	move	$fp, $s7
	ld.d	$s1, $sp, 456                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
	b	.LBB1_222
.LBB1_122:                              # %vector.memcheck371
	ld.d	$t2, $sp, 424                   # 8-byte Folded Reload
	addi.d	$a2, $t2, 4
	alsl.d	$a3, $a0, $t2, 2
	addi.d	$a4, $s6, 4
	sltu	$a4, $a2, $a4
	sltu	$a5, $s6, $a3
	and	$a4, $a4, $a5
	ld.d	$fp, $sp, 416                   # 8-byte Folded Reload
	bnez	$a4, .LBB1_57
# %bb.123:                              # %vector.memcheck371
	alsl.d	$a4, $a0, $s8, 2
	addi.d	$a4, $a4, -4
	sltu	$a2, $a2, $a4
	sltu	$a3, $s8, $a3
	and	$a2, $a2, $a3
	bnez	$a2, .LBB1_57
# %bb.124:                              # %vector.main.loop.iter.check388
	ori	$a2, $zero, 17
	bge	$t8, $a2, .LBB1_259
# %bb.125:
	move	$a2, $zero
	b	.LBB1_263
.LBB1_126:                              # %vector.memcheck423
	alsl.d	$a4, $a0, $fp, 2
	alsl.d	$a5, $a0, $t2, 2
	addi.d	$a5, $a5, -4
	sltu	$a5, $s2, $a5
	sltu	$a6, $t2, $a4
	and	$a5, $a5, $a6
	bnez	$a5, .LBB1_60
# %bb.127:                              # %vector.memcheck423
	addi.d	$a5, $t5, 8
	sltu	$a5, $s2, $a5
	sltu	$a4, $a2, $a4
	and	$a4, $a5, $a4
	bnez	$a4, .LBB1_60
# %bb.128:                              # %vector.main.loop.iter.check440
	ori	$a3, $zero, 17
	bge	$t8, $a3, .LBB1_266
# %bb.129:
	move	$a4, $zero
	b	.LBB1_270
.LBB1_130:                              # %vector.memcheck27
	addi.d	$a2, $s4, 4
	alsl.d	$a3, $a0, $s4, 2
	ld.d	$t1, $sp, 440                   # 8-byte Folded Reload
	addi.d	$a4, $t1, 4
	sltu	$a4, $a2, $a4
	sltu	$a5, $t1, $a3
	and	$a4, $a4, $a5
	move	$t4, $s4
	ld.d	$t6, $sp, 312                   # 8-byte Folded Reload
	bnez	$a4, .LBB1_273
# %bb.131:                              # %vector.memcheck27
	ld.d	$a5, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$a4, $a0, $a5, 2
	addi.d	$a4, $a4, -4
	sltu	$a2, $a2, $a4
	sltu	$a3, $a5, $a3
	and	$a2, $a2, $a3
	ld.d	$t0, $sp, 448                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
	bnez	$a2, .LBB1_22
# %bb.132:                              # %vector.main.loop.iter.check
	ori	$a2, $zero, 16
	bgeu	$a1, $a2, .LBB1_274
# %bb.133:
	move	$a2, $zero
	b	.LBB1_278
.LBB1_134:                              # %vector.memcheck60
	addi.d	$a4, $s4, 4
	addi.d	$a5, $t5, 4
	sltu	$a5, $a4, $a5
	sltu	$a6, $t5, $a2
	and	$a5, $a5, $a6
	bnez	$a5, .LBB1_25
# %bb.135:                              # %vector.memcheck60
	alsl.d	$a5, $a0, $t3, 2
	addi.d	$a5, $a5, -4
	sltu	$a4, $a4, $a5
	sltu	$a5, $t3, $a2
	and	$a4, $a4, $a5
	bnez	$a4, .LBB1_25
# %bb.136:                              # %vector.main.loop.iter.check77
	ori	$a3, $zero, 17
	bge	$t8, $a3, .LBB1_281
# %bb.137:
	move	$a4, $zero
	b	.LBB1_285
.LBB1_138:                              # %vector.memcheck112
	alsl.d	$a4, $a0, $t2, 2
	addi.d	$a2, $a2, -4
	sltu	$a2, $s3, $a2
	sltu	$a5, $s4, $a4
	and	$a2, $a2, $a5
	bnez	$a2, .LBB1_28
# %bb.139:                              # %vector.memcheck112
	addi.d	$a2, $t1, 8
	sltu	$a2, $s3, $a2
	sltu	$a4, $t6, $a4
	and	$a2, $a2, $a4
	bnez	$a2, .LBB1_28
# %bb.140:                              # %vector.main.loop.iter.check129
	ori	$a2, $zero, 17
	bge	$t8, $a2, .LBB1_288
# %bb.141:
	move	$a2, $zero
	b	.LBB1_292
.LBB1_142:                              # %if.then555
	ld.d	$s5, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
	beqz	$s7, .LBB1_221
# %bb.143:                              # %if.else
	ld.d	$s6, $sp, 376                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 272                   # 8-byte Folded Reload
	blt	$t0, $s7, .LBB1_222
# %bb.144:                              # %if.else565
	ld.d	$t0, $sp, 384                   # 8-byte Folded Reload
	slli.d	$a0, $t0, 2
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ldx.w	$t6, $a1, $a0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.w	$fp, $a1, $a0
	move	$s1, $s0
	b	.LBB1_222
.LBB1_145:
	movgr2fr.w	$fs0, $zero
.LBB1_146:                              # %for.end161.i
	ld.d	$s5, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 360                   # 8-byte Folded Reload
	add.w	$fp, $s5, $s6
	addi.w	$s1, $fp, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	move	$s1, $a0
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 520                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 400                   # 8-byte Folded Reload
	blt	$a0, $a1, .LBB1_171
# %bb.147:                              # %for.body.preheader.i.i
	ori	$a2, $zero, 4
	ld.d	$a3, $sp, 384                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a3, 31, 0
	bgeu	$a3, $a2, .LBB1_166
# %bb.148:
	move	$a2, $zero
	b	.LBB1_169
.LBB1_149:                              # %vector.memcheck319
	ld.d	$a3, $sp, 544                   # 8-byte Folded Reload
	addi.d	$a1, $a3, 4
	alsl.d	$a3, $a0, $a3, 2
	addi.d	$a4, $t5, 4
	sltu	$a4, $a1, $a4
	sltu	$a5, $t5, $a3
	and	$a4, $a4, $a5
	bnez	$a4, .LBB1_53
# %bb.150:                              # %vector.memcheck319
	ld.d	$a5, $sp, 496                   # 8-byte Folded Reload
	alsl.d	$a4, $a0, $a5, 2
	addi.d	$a4, $a4, -4
	sltu	$a1, $a1, $a4
	sltu	$a3, $a5, $a3
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_53
# %bb.151:                              # %vector.main.loop.iter.check336
	ori	$a2, $zero, 17
	addi.d	$a1, $a0, -1
	bge	$t6, $a2, .LBB1_295
# %bb.152:
	move	$a3, $zero
	b	.LBB1_299
.LBB1_153:                              # %vector.memcheck161
	alsl.d	$a2, $s2, $t3, 2
	add.d	$a1, $a5, $s2
	slli.d	$a1, $a1, 2
	addi.d	$a3, $a1, 4
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a3
	sltu	$a1, $t3, $a1
	sltu	$a4, $a0, $a2
	and	$a4, $a1, $a4
	move	$a1, $zero
	bnez	$a4, .LBB1_76
# %bb.154:                              # %vector.memcheck161
	add.d	$a3, $a6, $a3
	sltu	$a3, $t3, $a3
	ld.d	$a4, $sp, 328                   # 8-byte Folded Reload
	sltu	$a2, $a4, $a2
	and	$a2, $a3, $a2
	bnez	$a2, .LBB1_76
# %bb.155:                              # %vector.main.loop.iter.check177
	ori	$a1, $zero, 16
	bgeu	$s2, $a1, .LBB1_302
# %bb.156:
	move	$a1, $zero
	b	.LBB1_306
.LBB1_157:                              # %vector.memcheck210
	alsl.d	$a3, $a1, $t8, 2
	ld.d	$a6, $sp, 376                   # 8-byte Folded Reload
	add.d	$a2, $a6, $t1
	alsl.d	$a2, $a2, $t5, 2
	addi.d	$a2, $a2, 4
	sltu	$a2, $t8, $a2
	sltu	$a4, $a0, $a3
	and	$a4, $a2, $a4
	move	$a2, $zero
	ld.d	$a7, $sp, 400                   # 8-byte Folded Reload
	bnez	$a4, .LBB1_81
# %bb.158:                              # %vector.memcheck210
	addi.d	$a4, $a7, 4
	alsl.d	$a5, $a1, $a4, 2
	sltu	$a5, $t8, $a5
	sltu	$a3, $a4, $a3
	and	$a3, $a5, $a3
	bnez	$a3, .LBB1_81
# %bb.159:                              # %vector.main.loop.iter.check227
	ori	$a2, $zero, 16
	bge	$t1, $a2, .LBB1_309
# %bb.160:
	move	$a2, $zero
	b	.LBB1_313
.LBB1_161:                              # %vector.memcheck260
	bstrpick.d	$a4, $a4, 31, 0
	slli.d	$a4, $a4, 2
	ld.d	$a5, $sp, 464                   # 8-byte Folded Reload
	sub.d	$a5, $a5, $a4
	add.d	$a4, $a5, $t2
	addi.d	$a4, $a4, -4
	alsl.d	$a6, $t1, $t2, 2
	add.d	$a5, $t8, $a5
	alsl.d	$a7, $t1, $t8, 2
	addi.d	$a7, $a7, 4
	sltu	$a7, $a4, $a7
	sltu	$a5, $a5, $a6
	and	$a5, $a7, $a5
	bnez	$a5, .LBB1_84
# %bb.162:                              # %vector.memcheck260
	sltu	$a0, $a4, $a0
	sltu	$a4, $a2, $a6
	and	$a4, $a0, $a4
	move	$a0, $t1
	bnez	$a4, .LBB1_85
# %bb.163:                              # %vector.ph276
	bstrpick.d	$a0, $a3, 31, 0
	addi.d	$a3, $a0, 1
	bstrpick.d	$a0, $a3, 32, 3
	slli.d	$a4, $a0, 3
	sub.d	$a0, $t1, $a4
	xvreplgr2vr.w	$xr0, $s2
	xvldrepl.w	$xr1, $a2, 0
	ld.d	$a5, $sp, 464                   # 8-byte Folded Reload
	addi.d	$a7, $a5, -28
	ld.d	$a5, $sp, 208                   # 8-byte Folded Reload
	add.d	$a5, $a5, $a7
	addi.d	$a6, $a6, -32
	add.d	$a7, $t8, $a7
	move	$t0, $a4
	.p2align	4, , 16
.LBB1_164:                              # %vector.body281
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a7, 0
	xvfadd.s	$xr2, $xr2, $xr1
	xvst	$xr2, $a6, 0
	xvst	$xr0, $a5, 0
	addi.d	$t0, $t0, -8
	addi.d	$a5, $a5, -32
	addi.d	$a6, $a6, -32
	addi.d	$a7, $a7, -32
	bnez	$t0, .LBB1_164
# %bb.165:                              # %middle.block290
	bne	$a3, $a4, .LBB1_85
	b	.LBB1_87
.LBB1_166:                              # %vector.ph474
	pcalau12i	$a2, %pc_hi20(.LCPI1_1)
	vld	$vr0, $a2, %pc_lo12(.LCPI1_1)
	bstrpick.d	$a2, $a0, 31, 2
	slli.d	$a2, $a2, 2
	ld.d	$a3, $sp, 536                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 16
	move	$a4, $a2
	.p2align	4, , 16
.LBB1_167:                              # %vector.body477
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a3, -16
	vld	$vr2, $a3, 0
	vshuf4i.w	$vr3, $vr0, 8
	vaddi.wu	$vr4, $vr3, 1
	vaddi.wu	$vr3, $vr3, 3
	vpickve2gr.d	$a5, $vr1, 0
	vstelm.w	$vr4, $a5, 0, 0
	vpickve2gr.d	$a5, $vr1, 1
	vstelm.w	$vr4, $a5, 0, 1
	vpickve2gr.d	$a5, $vr2, 0
	vstelm.w	$vr3, $a5, 0, 0
	vpickve2gr.d	$a5, $vr2, 1
	vstelm.w	$vr3, $a5, 0, 1
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB1_167
# %bb.168:                              # %middle.block482
	beq	$a2, $a0, .LBB1_171
.LBB1_169:                              # %for.body.i.i.preheader
	ld.d	$a3, $sp, 536                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a3, 3
	sub.d	$a0, $a0, $a2
	addi.d	$a2, $a2, 1
	.p2align	4, , 16
.LBB1_170:                              # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a3, 0
	st.w	$a2, $a4, 0
	addi.d	$a3, $a3, 8
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 1
	bnez	$a0, .LBB1_170
.LBB1_171:                              # %iter.check488
	ld.d	$a0, $sp, 536                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ori	$a3, $zero, 1
	bstrpick.d	$a2, $a7, 31, 0
	bltu	$a3, $a6, .LBB1_173
# %bb.172:
	move	$a3, $zero
	b	.LBB1_182
.LBB1_173:                              # %vector.main.loop.iter.check490
	ori	$a3, $zero, 14
	bgeu	$a6, $a3, .LBB1_175
# %bb.174:
	move	$a3, $zero
	b	.LBB1_179
.LBB1_175:                              # %vector.ph491
	bstrpick.d	$a3, $a2, 31, 4
	slli.d	$a3, $a3, 4
	pcalau12i	$a4, %pc_hi20(.LCPI1_2)
	xvld	$xr0, $a4, %pc_lo12(.LCPI1_2)
	addi.d	$a4, $a0, 32
	xvrepli.b	$xr1, -1
	xvrepli.w	$xr2, -9
	move	$a5, $a3
	.p2align	4, , 16
.LBB1_176:                              # %vector.body494
                                        # =>This Inner Loop Header: Depth=1
	xvxor.v	$xr3, $xr0, $xr1
	xvsub.w	$xr4, $xr2, $xr0
	xvst	$xr3, $a4, -32
	xvst	$xr4, $a4, 0
	xvaddi.wu	$xr0, $xr0, 16
	addi.d	$a5, $a5, -16
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB1_176
# %bb.177:                              # %middle.block500
	beq	$a3, $a2, .LBB1_184
# %bb.178:                              # %vec.epilog.iter.check505
	andi	$a4, $a2, 12
	beqz	$a4, .LBB1_182
.LBB1_179:                              # %vec.epilog.ph504
	move	$a5, $a3
	pcalau12i	$a3, %pc_hi20(.LCPI1_3)
	vld	$vr0, $a3, %pc_lo12(.LCPI1_3)
	bstrpick.d	$a3, $a2, 31, 2
	slli.d	$a3, $a3, 2
	vreplgr2vr.w	$vr1, $a5
	vor.v	$vr0, $vr1, $vr0
	sub.d	$a4, $a5, $a3
	alsl.d	$a5, $a5, $a0, 2
	vrepli.b	$vr1, -1
	.p2align	4, , 16
.LBB1_180:                              # %vec.epilog.vector.body512
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr2, $vr0, $vr1
	vst	$vr2, $a5, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 16
	bnez	$a4, .LBB1_180
# %bb.181:                              # %vec.epilog.middle.block517
	beq	$a3, $a2, .LBB1_184
.LBB1_182:                              # %for.body14.i.i.preheader
	alsl.d	$a0, $a3, $a0, 2
	nor	$a4, $a3, $zero
	sub.d	$a2, $a2, $a3
	.p2align	4, , 16
.LBB1_183:                              # %for.body14.i.i
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a4, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $a2, -1
	addi.d	$a4, $a4, -1
	bnez	$a2, .LBB1_183
.LBB1_184:                              # %for.end22.i.i
	st.d	$s0, $sp, 520                   # 8-byte Folded Spill
	add.d	$a0, $s0, $s6
	add.d	$s8, $a0, $s5
	stx.b	$zero, $a0, $s5
	add.d	$a0, $s1, $s6
	add.d	$s7, $a0, $s5
	stx.b	$zero, $a0, $s5
	bltz	$fp, .LBB1_213
# %bb.185:                              # %for.body32.i.i.preheader
	move	$a7, $zero
	ori	$a0, $zero, 1
	ori	$a2, $zero, 111
	ori	$a3, $zero, 45
	ori	$a4, $zero, 16
	xvrepli.b	$xr0, 0
	vrepli.b	$vr1, 45
	vrepli.b	$vr2, 111
	ori	$a5, $zero, 32
	xvrepli.b	$xr3, 111
	xvrepli.b	$xr4, 45
	.p2align	4, , 16
.LBB1_186:                              # %for.body32.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_192 Depth 2
                                        #     Child Loop BB1_203 Depth 2
                                        #     Child Loop BB1_199 Depth 2
                                        #     Child Loop BB1_208 Depth 2
	slli.d	$a6, $s6, 3
	ld.d	$t0, $sp, 536                   # 8-byte Folded Reload
	ldx.d	$a6, $t0, $a6
	slli.d	$t0, $s5, 2
	ldx.w	$t0, $a6, $t0
	bge	$a1, $t0, .LBB1_194
# %bb.187:                              # %if.else.i.i
                                        #   in Loop: Header=BB1_186 Depth=1
	beqz	$t0, .LBB1_212
# %bb.188:                              # %if.then49.i.i
                                        #   in Loop: Header=BB1_186 Depth=1
	sub.w	$a6, $s6, $t0
	move	$t0, $a1
	nor	$t1, $a6, $zero
	add.w	$t2, $s6, $t1
	beqz	$t2, .LBB1_195
.LBB1_189:                              # %while.body.i.i.preheader
                                        #   in Loop: Header=BB1_186 Depth=1
	bltu	$t2, $a5, .LBB1_201
# %bb.190:                              # %while.body.i.i.preheader
                                        #   in Loop: Header=BB1_186 Depth=1
	sub.d	$t3, $s8, $s7
	bltu	$t3, $a5, .LBB1_201
# %bb.191:                              # %vector.ph547
                                        #   in Loop: Header=BB1_186 Depth=1
	bstrpick.d	$t5, $t2, 31, 0
	bstrpick.d	$t3, $t5, 31, 5
	slli.d	$t6, $t3, 5
	sub.d	$t2, $t2, $t6
	sub.d	$t3, $s7, $t6
	sub.d	$t4, $s8, $t6
	addi.d	$t7, $s8, -32
	addi.d	$t8, $s7, -32
	move	$s0, $t6
	.p2align	4, , 16
.LBB1_192:                              # %vector.body551
                                        #   Parent Loop BB1_186 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr3, $t7, 0
	xvst	$xr4, $t8, 0
	addi.d	$s0, $s0, -32
	addi.d	$t7, $t7, -32
	addi.d	$t8, $t8, -32
	bnez	$s0, .LBB1_192
# %bb.193:                              # %middle.block558
                                        #   in Loop: Header=BB1_186 Depth=1
	bne	$t6, $t5, .LBB1_202
	b	.LBB1_204
	.p2align	4, , 16
.LBB1_194:                              # %if.then.i.i
                                        #   in Loop: Header=BB1_186 Depth=1
	addi.w	$a6, $s6, -1
	nor	$t1, $a6, $zero
	add.w	$t2, $s6, $t1
	bnez	$t2, .LBB1_189
	.p2align	4, , 16
.LBB1_195:                              # %while.end.i.i
                                        #   in Loop: Header=BB1_186 Depth=1
	beq	$t0, $a1, .LBB1_205
.LBB1_196:                              # %while.body67.preheader.i.i
                                        #   in Loop: Header=BB1_186 Depth=1
	addi.w	$t1, $zero, -17
	nor	$t4, $t0, $zero
	bltu	$t1, $t0, .LBB1_206
# %bb.197:                              # %while.body67.preheader.i.i
                                        #   in Loop: Header=BB1_186 Depth=1
	sub.d	$t1, $s8, $s7
	bltu	$t1, $a4, .LBB1_206
# %bb.198:                              # %vector.ph526
                                        #   in Loop: Header=BB1_186 Depth=1
	bstrpick.d	$t1, $t4, 30, 4
	slli.d	$t5, $t1, 4
	sub.d	$t3, $t4, $t5
	sub.d	$t1, $s7, $t5
	sub.d	$t2, $s8, $t5
	xvori.b	$xr5, $xr0, 0
	xvinsgr2vr.w	$xr5, $a7, 0
	addi.d	$a7, $s8, -8
	addi.d	$t6, $s7, -8
	move	$t7, $t5
	xvori.b	$xr6, $xr0, 0
	.p2align	4, , 16
.LBB1_199:                              # %vector.body529
                                        #   Parent Loop BB1_186 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr1, $a7, -8
	vst	$vr2, $t6, -8
	xvaddi.wu	$xr5, $xr5, 1
	xvaddi.wu	$xr6, $xr6, 1
	addi.d	$t7, $t7, -16
	addi.d	$a7, $a7, -16
	addi.d	$t6, $t6, -16
	bnez	$t7, .LBB1_199
# %bb.200:                              # %middle.block536
                                        #   in Loop: Header=BB1_186 Depth=1
	xvadd.w	$xr5, $xr6, $xr5
	xvpermi.d	$xr6, $xr5, 78
	xvshuf4i.w	$xr6, $xr6, 228
	xvadd.w	$xr5, $xr5, $xr6
	xvpermi.d	$xr6, $xr5, 68
	xvshuf4i.w	$xr6, $xr6, 14
	xvadd.w	$xr5, $xr5, $xr6
	xvpermi.d	$xr6, $xr5, 68
	xvrepl128vei.w	$xr6, $xr6, 1
	xvadd.w	$xr5, $xr5, $xr6
	xvpickve2gr.w	$a7, $xr5, 0
	bne	$t5, $t4, .LBB1_207
	b	.LBB1_209
	.p2align	4, , 16
.LBB1_201:                              #   in Loop: Header=BB1_186 Depth=1
	move	$t3, $s7
	move	$t4, $s8
.LBB1_202:                              # %while.body.i.i.preheader567
                                        #   in Loop: Header=BB1_186 Depth=1
	move	$t5, $t3
	move	$t6, $t4
	.p2align	4, , 16
.LBB1_203:                              # %while.body.i.i
                                        #   Parent Loop BB1_186 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t4, $t6, -1
	st.b	$a2, $t6, -1
	addi.d	$t3, $t5, -1
	addi.w	$t2, $t2, -1
	st.b	$a3, $t5, -1
	move	$t5, $t3
	move	$t6, $t4
	bnez	$t2, .LBB1_203
.LBB1_204:                              # %while.end.loopexit.i.i
                                        #   in Loop: Header=BB1_186 Depth=1
	add.d	$a7, $s6, $a7
	add.d	$a7, $t1, $a7
	move	$s8, $t4
	move	$s7, $t3
	bne	$t0, $a1, .LBB1_196
.LBB1_205:                              #   in Loop: Header=BB1_186 Depth=1
	move	$t2, $s8
	move	$t1, $s7
	bge	$s6, $a0, .LBB1_210
	b	.LBB1_214
	.p2align	4, , 16
.LBB1_206:                              #   in Loop: Header=BB1_186 Depth=1
	move	$t3, $t4
	move	$t1, $s7
	move	$t2, $s8
.LBB1_207:                              # %while.body67.i.i.preheader
                                        #   in Loop: Header=BB1_186 Depth=1
	add.d	$a7, $a7, $t3
	.p2align	4, , 16
.LBB1_208:                              # %while.body67.i.i
                                        #   Parent Loop BB1_186 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a3, $t2, -1
	addi.d	$t2, $t2, -1
	st.b	$a2, $t1, -1
	addi.w	$t3, $t3, -1
	addi.d	$t1, $t1, -1
	bnez	$t3, .LBB1_208
.LBB1_209:                              # %while.end71.i.i
                                        #   in Loop: Header=BB1_186 Depth=1
	blt	$s6, $a0, .LBB1_214
.LBB1_210:                              # %while.end71.i.i
                                        #   in Loop: Header=BB1_186 Depth=1
	blt	$s5, $a0, .LBB1_214
# %bb.211:                              # %if.end75.i.i
                                        #   in Loop: Header=BB1_186 Depth=1
	add.w	$s5, $t0, $s5
	addi.d	$s8, $t2, -1
	st.b	$a2, $t2, -1
	addi.d	$s7, $t1, -1
	addi.w	$a7, $a7, 2
	st.b	$a2, $t1, -1
	move	$s6, $a6
	bge	$fp, $a7, .LBB1_186
	b	.LBB1_213
	.p2align	4, , 16
.LBB1_212:                              # %if.else56.i.i
                                        #   in Loop: Header=BB1_186 Depth=1
	addi.w	$a6, $s6, -1
	move	$t0, $a1
	nor	$t1, $a6, $zero
	add.w	$t2, $s6, $t1
	bnez	$t2, .LBB1_189
	b	.LBB1_195
.LBB1_213:                              # %for.end81.i.i
	ori	$fp, $zero, 1
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 232                   # 8-byte Folded Reload
	bge	$s5, $fp, .LBB1_215
	b	.LBB1_217
.LBB1_214:
	move	$s8, $t2
	move	$s7, $t1
	ori	$fp, $zero, 1
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 232                   # 8-byte Folded Reload
	blt	$s5, $fp, .LBB1_217
.LBB1_215:                              # %for.body84.lr.ph.i.i
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_216:                              # %for.body84.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s3, 0
	ld.d	$a0, $s0, 0
	add.d	$a1, $a1, $s6
	move	$a2, $s8
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, -1
	addi.d	$s3, $s3, 8
	addi.d	$s0, $s0, 8
	bnez	$s5, .LBB1_216
.LBB1_217:                              # %for.cond94.preheader.i.i
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 376                   # 8-byte Folded Reload
	blt	$s2, $fp, .LBB1_220
# %bb.218:                              # %for.body96.lr.ph.i.i
	move	$fp, $s8
	.p2align	4, , 16
.LBB1_219:                              # %for.body96.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s4, 0
	ld.d	$a0, $fp, 0
	add.d	$a1, $a1, $s0
	move	$a2, $s7
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, -1
	addi.d	$s4, $s4, 8
	addi.d	$fp, $fp, 8
	bnez	$s2, .LBB1_219
.LBB1_220:                              # %MSalignmm_tanni.exit
	ld.d	$a0, $sp, 520                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 544                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 528                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 512                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 536                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 216                   # 8-byte Folded Reload
	b	.LBB1_257
.LBB1_221:                              # %if.then558
	move	$t0, $zero
	ld.d	$t6, $sp, 520                   # 8-byte Folded Reload
	addi.w	$s1, $t6, -1
	ori	$fp, $zero, 1
	ld.d	$s6, $sp, 376                   # 8-byte Folded Reload
.LBB1_222:                              # %for.end575
	st.d	$t6, $sp, 528                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	move	$s8, $t0
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 496                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 512                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	st.d	$s1, $sp, 272                   # 8-byte Folded Spill
	add.w	$a7, $s1, $s3
	add.w	$a0, $s8, $s6
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	st.d	$a1, $sp, 40
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$a1, $sp, 32
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	st.d	$a1, $sp, 24
	st.d	$s2, $sp, 16
	st.d	$a0, $sp, 8
	st.d	$s6, $sp, 0
	ld.d	$s2, $sp, 144                   # 8-byte Folded Reload
	move	$a0, $s2
	move	$a1, $s5
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
	move	$a6, $s3
	pcaddu18i	$ra, %call36(MSalignmm_rec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s1, $a0, 0
	fmov.s	$fs0, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	nor	$a1, $s8, $zero
	st.d	$fp, $sp, 552                   # 8-byte Folded Spill
	add.w	$s0, $fp, $a1
	ori	$fp, $zero, 1
	blt	$s0, $fp, .LBB1_230
# %bb.223:                              # %for.body590.preheader
	move	$s7, $a0
	ori	$a1, $zero, 45
	move	$a0, $s4
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	stx.b	$zero, $s4, $s0
	add.w	$s1, $s0, $s7
	move	$s7, $s2
	blt	$s2, $fp, .LBB1_226
# %bb.224:                              # %for.body601.lr.ph
	move	$s2, $s7
	ld.d	$s3, $sp, 304                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_225:                              # %for.body601
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	stx.b	$zero, $a0, $s1
	addi.d	$s2, $s2, -1
	addi.d	$s3, $s3, 8
	bnez	$s2, .LBB1_225
.LBB1_226:                              # %for.cond613.preheader
	ori	$a0, $zero, 1
	move	$a2, $s8
	blt	$s5, $a0, .LBB1_229
# %bb.227:                              # %for.body616.lr.ph
	move	$s2, $s5
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 248                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_228:                              # %for.body616
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s4, 0
	ld.d	$a0, $s3, 0
	add.d	$a1, $a1, $s6
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(strncat)
	jirl	$ra, $ra, 0
	move	$a2, $s8
	ld.d	$a0, $s3, 0
	stx.b	$zero, $a0, $s1
	addi.d	$s4, $s4, 8
	addi.d	$s2, $s2, -1
	addi.d	$s3, $s3, 8
	bnez	$s2, .LBB1_228
.LBB1_229:                              # %for.end635
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$a0, $a2, $a0, 2
	fld.s	$fa0, $a0, 4
	ld.d	$a0, $sp, 552                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 416                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 2
	fld.s	$fa1, $a0, -4
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s1, $a0, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fs0, $fs0, $fa0
	ld.d	$s3, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
	b	.LBB1_231
.LBB1_230:
	move	$s7, $s2
.LBB1_231:                              # %if.end644
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 272                   # 8-byte Folded Reload
	nor	$a1, $s2, $zero
	ld.d	$a2, $sp, 528                   # 8-byte Folded Reload
	add.w	$s0, $a2, $a1
	ld.d	$s8, $sp, 224                   # 8-byte Folded Reload
	blt	$s0, $fp, .LBB1_239
# %bb.232:                              # %for.body656.preheader
	move	$s1, $a0
	ori	$a1, $zero, 45
	move	$a0, $s4
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	stx.b	$zero, $s4, $s0
	ori	$a0, $zero, 1
	add.w	$fp, $s0, $s1
	ld.d	$s4, $sp, 304                   # 8-byte Folded Reload
	blt	$s7, $a0, .LBB1_235
# %bb.233:                              # %for.body667.lr.ph
	move	$s6, $s3
	move	$s1, $s7
	ld.d	$s3, $sp, 200                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_234:                              # %for.body667
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s3, 0
	ld.d	$a0, $s4, 0
	add.d	$a1, $a1, $s6
	add.d	$a1, $a1, $s2
	addi.d	$a1, $a1, 1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(strncat)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	stx.b	$zero, $a0, $fp
	addi.d	$s3, $s3, 8
	addi.d	$s1, $s1, -1
	addi.d	$s4, $s4, 8
	bnez	$s1, .LBB1_234
.LBB1_235:                              # %for.cond687.preheader
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
	ori	$a0, $zero, 1
	blt	$s5, $a0, .LBB1_238
# %bb.236:                              # %for.body690.lr.ph
	move	$s0, $s5
	.p2align	4, , 16
.LBB1_237:                              # %for.body690
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s8, 0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 0
	stx.b	$zero, $a0, $fp
	addi.d	$s0, $s0, -1
	addi.d	$s8, $s8, 8
	bnez	$s0, .LBB1_237
.LBB1_238:                              # %for.end701
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 2
	fld.s	$fa0, $a0, 4
	ld.d	$a0, $sp, 528                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ld.d	$a1, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 2
	fld.s	$fa1, $a0, -4
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fs0, $fs0, $fa0
	ld.d	$s3, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 376                   # 8-byte Folded Reload
	b	.LBB1_240
.LBB1_239:
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
.LBB1_240:                              # %if.end710
	ld.d	$fp, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	addi.w	$a0, $a0, 0
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	blt	$s7, $a1, .LBB1_248
# %bb.241:                              # %for.body717.lr.ph
	ori	$a3, $zero, 8
	bgeu	$s7, $a3, .LBB1_243
# %bb.242:
	move	$a6, $zero
	b	.LBB1_246
.LBB1_243:                              # %vector.ph295
	bstrpick.d	$a3, $s7, 30, 3
	slli.d	$a6, $a3, 3
	addi.d	$a3, $fp, 32
	xvreplgr2vr.d	$xr0, $a0
	move	$a4, $a6
	.p2align	4, , 16
.LBB1_244:                              # %vector.body298
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a3, -32
	xvld	$xr2, $a3, 0
	xvadd.d	$xr1, $xr1, $xr0
	xvadd.d	$xr2, $xr2, $xr0
	xvst	$xr1, $a3, -32
	xvst	$xr2, $a3, 0
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB1_244
# %bb.245:                              # %middle.block303
	beq	$a6, $s7, .LBB1_248
.LBB1_246:                              # %for.body717.preheader
	alsl.d	$a3, $a6, $fp, 3
	sub.d	$a6, $s7, $a6
	.p2align	4, , 16
.LBB1_247:                              # %for.body717
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a3, 0
	add.d	$a4, $a4, $a0
	st.d	$a4, $a3, 0
	addi.d	$a6, $a6, -1
	addi.d	$a3, $a3, 8
	bnez	$a6, .LBB1_247
.LBB1_248:                              # %for.cond725.preheader
	ld.d	$a4, $sp, 528                   # 8-byte Folded Reload
	blt	$s5, $a1, .LBB1_256
# %bb.249:                              # %for.body728.lr.ph
	ori	$a1, $zero, 8
	bgeu	$s5, $a1, .LBB1_251
# %bb.250:
	move	$a1, $zero
	b	.LBB1_254
.LBB1_251:                              # %vector.ph308
	bstrpick.d	$a1, $s5, 30, 3
	slli.d	$a1, $a1, 3
	addi.d	$a6, $s8, 32
	xvreplgr2vr.d	$xr0, $a0
	move	$a3, $a1
	.p2align	4, , 16
.LBB1_252:                              # %vector.body311
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a6, -32
	xvld	$xr2, $a6, 0
	xvadd.d	$xr1, $xr1, $xr0
	xvadd.d	$xr2, $xr2, $xr0
	xvst	$xr1, $a6, -32
	xvst	$xr2, $a6, 0
	addi.d	$a3, $a3, -8
	addi.d	$a6, $a6, 64
	bnez	$a3, .LBB1_252
# %bb.253:                              # %middle.block316
	beq	$a1, $s5, .LBB1_256
.LBB1_254:                              # %for.body728.preheader
	alsl.d	$a6, $a1, $s8, 3
	sub.d	$a1, $s5, $a1
	.p2align	4, , 16
.LBB1_255:                              # %for.body728
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a6, 0
	add.d	$a3, $a3, $a0
	st.d	$a3, $a6, 0
	addi.d	$a1, $a1, -1
	addi.d	$a6, $a6, 8
	bnez	$a1, .LBB1_255
.LBB1_256:                              # %for.end735
	add.w	$a6, $a4, $s3
	ld.d	$a0, $sp, 552                   # 8-byte Folded Reload
	add.w	$a0, $a0, $s6
	st.d	$a5, $sp, 40
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$a1, $sp, 32
	st.d	$s8, $sp, 24
	st.d	$fp, $sp, 16
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	st.d	$a1, $sp, 8
	st.d	$a0, $sp, 0
	move	$a0, $s7
	move	$a1, $s5
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
	move	$a7, $s1
	pcaddu18i	$ra, %call36(MSalignmm_rec)
	jirl	$ra, $ra, 0
	fadd.s	$fs0, $fs0, $fa0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_257:                              # %common.ret.sink.split
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_258:                              # %common.ret
	fmov.s	$fa0, $fs0
	fld.d	$fs0, $sp, 560                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 576                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 584                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 592                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 600                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 608                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 616                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 624                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 632                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 640                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 648                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 656
	ret
.LBB1_259:                              # %vector.ph389
	move	$a2, $a1
	xvldrepl.w	$xr0, $s6, 0
	bstrins.d	$a2, $zero, 3, 0
	addi.d	$a3, $s8, 32
	addi.d	$a4, $t2, 36
	move	$a5, $a2
	.p2align	4, , 16
.LBB1_260:                              # %vector.body392
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
	bnez	$a5, .LBB1_260
# %bb.261:                              # %middle.block401
	beq	$a1, $a2, .LBB1_59
# %bb.262:                              # %vec.epilog.iter.check406
	andi	$a3, $a1, 12
	beqz	$a3, .LBB1_316
.LBB1_263:                              # %vec.epilog.ph405
	move	$a3, $a1
	bstrins.d	$a3, $zero, 1, 0
	ori	$a4, $zero, 1
	move	$s1, $a1
	bstrins.d	$s1, $a4, 1, 0
	vldrepl.w	$vr0, $s6, 0
	slli.d	$a4, $a2, 2
	ld.d	$a5, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$a4, $a5, $a4, 2
	add.d	$a4, $a6, $a4
	alsl.d	$a5, $a2, $t2, 2
	addi.d	$a5, $a5, 4
	sub.d	$a2, $a2, $a3
	.p2align	4, , 16
.LBB1_264:                              # %vec.epilog.vector.body411
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a4, 0
	vld	$vr2, $a5, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $a5, 0
	addi.d	$a4, $a4, 16
	addi.d	$a2, $a2, 4
	addi.d	$a5, $a5, 16
	bnez	$a2, .LBB1_264
# %bb.265:                              # %vec.epilog.middle.block419
	bne	$a1, $a3, .LBB1_57
	b	.LBB1_59
.LBB1_266:                              # %vector.ph441
	move	$a4, $a1
	bstrins.d	$a4, $zero, 3, 0
	xvldrepl.w	$xr0, $a2, 0
	addi.d	$a3, $t2, 32
	addi.d	$a5, $fp, 36
	ld.d	$a6, $sp, 432                   # 8-byte Folded Reload
	addi.d	$a6, $a6, 36
	xvrepli.b	$xr1, 0
	move	$a7, $a4
	.p2align	4, , 16
.LBB1_267:                              # %vector.body444
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a3, -32
	xvld	$xr3, $a3, 0
	xvfadd.s	$xr2, $xr2, $xr0
	xvfadd.s	$xr3, $xr3, $xr0
	xvst	$xr2, $a5, -32
	xvst	$xr3, $a5, 0
	xvst	$xr1, $a6, -32
	xvst	$xr1, $a6, 0
	addi.d	$a7, $a7, -16
	addi.d	$a3, $a3, 64
	addi.d	$a5, $a5, 64
	addi.d	$a6, $a6, 64
	bnez	$a7, .LBB1_267
# %bb.268:                              # %middle.block451
	beq	$a1, $a4, .LBB1_62
# %bb.269:                              # %vec.epilog.iter.check456
	andi	$a3, $a1, 12
	beqz	$a3, .LBB1_317
.LBB1_270:                              # %vec.epilog.ph455
	move	$a5, $a1
	bstrins.d	$a5, $zero, 1, 0
	ori	$a6, $zero, 1
	move	$a3, $a1
	bstrins.d	$a3, $a6, 1, 0
	vldrepl.w	$vr0, $a2, 0
	slli.d	$a7, $a4, 2
	alsl.d	$a6, $a4, $t2, 2
	addi.d	$t0, $a7, 4
	add.d	$a7, $fp, $t0
	ld.d	$t3, $sp, 432                   # 8-byte Folded Reload
	add.d	$t0, $t3, $t0
	sub.d	$a4, $a4, $a5
	vrepli.b	$vr1, 0
	.p2align	4, , 16
.LBB1_271:                              # %vec.epilog.vector.body461
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a6, 0
	vfadd.s	$vr2, $vr2, $vr0
	vst	$vr2, $a7, 0
	vst	$vr1, $t0, 0
	addi.d	$a6, $a6, 16
	addi.d	$a7, $a7, 16
	addi.d	$a4, $a4, 4
	addi.d	$t0, $t0, 16
	bnez	$a4, .LBB1_271
# %bb.272:                              # %vec.epilog.middle.block468
	bne	$a1, $a5, .LBB1_60
	b	.LBB1_62
.LBB1_273:
	ld.d	$t0, $sp, 448                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 424                   # 8-byte Folded Reload
	b	.LBB1_21
.LBB1_274:                              # %vector.ph38
	move	$a2, $a1
	xvldrepl.w	$xr0, $t1, 0
	bstrins.d	$a2, $zero, 3, 0
	ld.d	$a3, $sp, 544                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 32
	addi.d	$a4, $t4, 36
	move	$a5, $a2
	.p2align	4, , 16
.LBB1_275:                              # %vector.body41
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
	bnez	$a5, .LBB1_275
# %bb.276:                              # %middle.block48
	beq	$a1, $a2, .LBB1_24
# %bb.277:                              # %vec.epilog.iter.check
	andi	$a3, $a1, 12
	beqz	$a3, .LBB1_318
.LBB1_278:                              # %vec.epilog.ph
	move	$a3, $a1
	bstrins.d	$a3, $zero, 1, 0
	ori	$a4, $zero, 1
	move	$s0, $a1
	bstrins.d	$s0, $a4, 1, 0
	vldrepl.w	$vr0, $t1, 0
	slli.d	$a4, $a2, 2
	alsl.d	$a4, $s3, $a4, 2
	ld.d	$a5, $sp, 352                   # 8-byte Folded Reload
	add.d	$a4, $a5, $a4
	alsl.d	$a5, $a2, $t4, 2
	addi.d	$a5, $a5, 4
	sub.d	$a2, $a2, $a3
	.p2align	4, , 16
.LBB1_279:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a4, 0
	vld	$vr2, $a5, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $a5, 0
	addi.d	$a4, $a4, 16
	addi.d	$a2, $a2, 4
	addi.d	$a5, $a5, 16
	bnez	$a2, .LBB1_279
# %bb.280:                              # %vec.epilog.middle.block
	bne	$a1, $a3, .LBB1_22
	b	.LBB1_24
.LBB1_281:                              # %vector.ph78
	move	$a4, $a1
	bstrins.d	$a4, $zero, 3, 0
	xvldrepl.w	$xr0, $t5, 0
	ld.d	$a3, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$a3, $a3, $t6, 2
	addi.d	$a3, $a3, 32
	addi.d	$a5, $s4, 36
	move	$a6, $a4
	.p2align	4, , 16
.LBB1_282:                              # %vector.body81
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a3, -32
	xvld	$xr2, $a3, 0
	xvld	$xr3, $a5, -32
	xvld	$xr4, $a5, 0
	xvfadd.s	$xr1, $xr0, $xr1
	xvfadd.s	$xr2, $xr0, $xr2
	xvfadd.s	$xr1, $xr3, $xr1
	xvfadd.s	$xr2, $xr4, $xr2
	xvst	$xr1, $a5, -32
	xvst	$xr2, $a5, 0
	addi.d	$a3, $a3, 64
	addi.d	$a6, $a6, -16
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB1_282
# %bb.283:                              # %middle.block90
	beq	$a1, $a4, .LBB1_27
# %bb.284:                              # %vec.epilog.iter.check95
	andi	$a3, $a1, 12
	beqz	$a3, .LBB1_319
.LBB1_285:                              # %vec.epilog.ph94
	move	$a5, $a1
	bstrins.d	$a5, $zero, 1, 0
	ori	$a6, $zero, 1
	move	$a3, $a1
	bstrins.d	$a3, $a6, 1, 0
	vldrepl.w	$vr0, $t5, 0
	slli.d	$a6, $a4, 2
	ld.d	$a7, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$a6, $a7, $a6, 2
	add.d	$a6, $t6, $a6
	alsl.d	$a7, $a4, $s4, 2
	addi.d	$a7, $a7, 4
	sub.d	$a4, $a4, $a5
	.p2align	4, , 16
.LBB1_286:                              # %vec.epilog.vector.body100
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a6, 0
	vld	$vr2, $a7, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $a7, 0
	addi.d	$a6, $a6, 16
	addi.d	$a4, $a4, 4
	addi.d	$a7, $a7, 16
	bnez	$a4, .LBB1_286
# %bb.287:                              # %vec.epilog.middle.block108
	bne	$a1, $a5, .LBB1_25
	b	.LBB1_27
.LBB1_288:                              # %vector.ph130
	move	$a2, $a1
	bstrins.d	$a2, $zero, 3, 0
	xvldrepl.w	$xr0, $t6, 0
	addi.d	$a3, $s4, 32
	addi.d	$a4, $t2, 36
	ld.d	$a5, $sp, 208                   # 8-byte Folded Reload
	addi.d	$a5, $a5, 36
	xvrepli.b	$xr1, 0
	move	$a6, $a2
	.p2align	4, , 16
.LBB1_289:                              # %vector.body133
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a3, -32
	xvld	$xr3, $a3, 0
	xvfadd.s	$xr2, $xr2, $xr0
	xvfadd.s	$xr3, $xr3, $xr0
	xvst	$xr2, $a4, -32
	xvst	$xr3, $a4, 0
	xvst	$xr1, $a5, -32
	xvst	$xr1, $a5, 0
	addi.d	$a6, $a6, -16
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 64
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB1_289
# %bb.290:                              # %middle.block140
	beq	$a1, $a2, .LBB1_30
# %bb.291:                              # %vec.epilog.iter.check145
	andi	$a3, $a1, 12
	beqz	$a3, .LBB1_320
.LBB1_292:                              # %vec.epilog.ph144
	move	$a4, $a1
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a3, $a1
	bstrins.d	$a3, $a5, 1, 0
	vldrepl.w	$vr0, $t6, 0
	slli.d	$a6, $a2, 2
	alsl.d	$a5, $a2, $s4, 2
	addi.d	$a7, $a6, 4
	add.d	$a6, $t2, $a7
	ld.d	$t3, $sp, 208                   # 8-byte Folded Reload
	add.d	$a7, $t3, $a7
	sub.d	$a2, $a2, $a4
	vrepli.b	$vr1, 0
	.p2align	4, , 16
.LBB1_293:                              # %vec.epilog.vector.body150
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a5, 0
	vfadd.s	$vr2, $vr2, $vr0
	vst	$vr2, $a6, 0
	vst	$vr1, $a7, 0
	addi.d	$a5, $a5, 16
	addi.d	$a6, $a6, 16
	addi.d	$a2, $a2, 4
	addi.d	$a7, $a7, 16
	bnez	$a2, .LBB1_293
# %bb.294:                              # %vec.epilog.middle.block157
	bne	$a1, $a4, .LBB1_28
	b	.LBB1_30
.LBB1_295:                              # %vector.ph337
	move	$a3, $a1
	xvldrepl.w	$xr0, $t5, 0
	bstrins.d	$a3, $zero, 3, 0
	ld.d	$a2, $sp, 496                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 32
	ld.d	$a4, $sp, 544                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 36
	move	$a5, $a3
	.p2align	4, , 16
.LBB1_296:                              # %vector.body340
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
	bnez	$a5, .LBB1_296
# %bb.297:                              # %middle.block349
	beq	$a1, $a3, .LBB1_55
# %bb.298:                              # %vec.epilog.iter.check354
	andi	$a2, $a1, 12
	beqz	$a2, .LBB1_321
.LBB1_299:                              # %vec.epilog.ph353
	move	$a4, $a1
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a2, $a1
	bstrins.d	$a2, $a5, 1, 0
	vldrepl.w	$vr0, $t5, 0
	slli.d	$a5, $a3, 2
	alsl.d	$a5, $s3, $a5, 2
	ld.d	$a6, $sp, 456                   # 8-byte Folded Reload
	add.d	$a5, $a6, $a5
	ld.d	$a6, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$a6, $a3, $a6, 2
	addi.d	$a6, $a6, 4
	sub.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB1_300:                              # %vec.epilog.vector.body359
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a5, 0
	vld	$vr2, $a6, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $a6, 0
	addi.d	$a5, $a5, 16
	addi.d	$a3, $a3, 4
	addi.d	$a6, $a6, 16
	bnez	$a3, .LBB1_300
# %bb.301:                              # %vec.epilog.middle.block367
	bne	$a1, $a4, .LBB1_53
	b	.LBB1_55
.LBB1_302:                              # %vector.ph178
	bstrpick.d	$a1, $s2, 30, 4
	xvldrepl.w	$xr0, $a0, 0
	slli.d	$a1, $a1, 4
	ld.d	$a2, $sp, 440                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 36
	addi.d	$a3, $t3, 32
	move	$a4, $a1
	.p2align	4, , 16
.LBB1_303:                              # %vector.body181
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
	bnez	$a4, .LBB1_303
# %bb.304:                              # %middle.block190
	beq	$a1, $s2, .LBB1_78
# %bb.305:                              # %vec.epilog.iter.check195
	andi	$a2, $s2, 12
	beqz	$a2, .LBB1_76
.LBB1_306:                              # %vec.epilog.ph194
	move	$a4, $a1
	bstrpick.d	$a1, $s2, 30, 2
	slli.d	$a1, $a1, 2
	vldrepl.w	$vr0, $a0, 0
	slli.d	$a2, $a4, 2
	alsl.d	$a2, $a5, $a2, 2
	add.d	$a2, $a2, $a6
	addi.d	$a2, $a2, 4
	sub.d	$a3, $a4, $a1
	alsl.d	$a4, $a4, $t3, 2
	.p2align	4, , 16
.LBB1_307:                              # %vec.epilog.vector.body200
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a2, 0
	vld	$vr2, $a4, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $a4, 0
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 16
	bnez	$a3, .LBB1_307
# %bb.308:                              # %vec.epilog.middle.block207
	bne	$a1, $s2, .LBB1_76
	b	.LBB1_78
.LBB1_309:                              # %vector.ph228
	bstrpick.d	$a2, $a1, 30, 4
	xvldrepl.w	$xr0, $a0, 0
	slli.d	$a2, $a2, 4
	addi.d	$a3, $a7, 36
	addi.d	$a4, $t8, 32
	move	$a5, $a2
	.p2align	4, , 16
.LBB1_310:                              # %vector.body231
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
	bnez	$a5, .LBB1_310
# %bb.311:                              # %middle.block240
	beq	$a2, $a1, .LBB1_83
# %bb.312:                              # %vec.epilog.iter.check245
	andi	$a3, $a1, 12
	beqz	$a3, .LBB1_81
.LBB1_313:                              # %vec.epilog.ph244
	move	$a5, $a2
	bstrpick.d	$a2, $a1, 30, 2
	slli.d	$a2, $a2, 2
	vldrepl.w	$vr0, $a0, 0
	slli.d	$a3, $a5, 2
	alsl.d	$a3, $a6, $a3, 2
	add.d	$a3, $a3, $t4
	addi.d	$a3, $a3, 4
	sub.d	$a4, $a5, $a2
	alsl.d	$a5, $a5, $t8, 2
	.p2align	4, , 16
.LBB1_314:                              # %vec.epilog.vector.body250
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a3, 0
	vld	$vr2, $a5, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $a5, 0
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 16
	bnez	$a4, .LBB1_314
# %bb.315:                              # %vec.epilog.middle.block257
	bne	$a2, $a1, .LBB1_81
	b	.LBB1_83
.LBB1_316:
	addi.d	$s1, $a2, 1
	b	.LBB1_57
.LBB1_317:
	addi.d	$a3, $a4, 1
	b	.LBB1_60
.LBB1_318:
	addi.d	$s0, $a2, 1
	b	.LBB1_22
.LBB1_319:
	addi.d	$a3, $a4, 1
	b	.LBB1_25
.LBB1_320:
	addi.d	$a3, $a2, 1
	b	.LBB1_28
.LBB1_321:
	addi.d	$a2, $a3, 1
	b	.LBB1_53
.Lfunc_end1:
	.size	MSalignmm_rec, .Lfunc_end1-MSalignmm_rec
                                        # -- End function
	.p2align	5                               # -- Begin function match_calc
	.type	match_calc,@function
match_calc:                             # @match_calc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -176
	st.d	$fp, $sp, 168                   # 8-byte Folded Spill
	st.d	$s0, $sp, 160                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 152                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 144                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 120                  # 8-byte Folded Spill
	beqz	$a7, .LBB2_8
# %bb.1:                                # %entry
	ori	$a7, $zero, 1
	blt	$a4, $a7, .LBB2_8
# %bb.2:                                # %for.cond1.preheader.preheader
	move	$a7, $zero
	movgr2fr.w	$fa0, $zero
	ori	$t0, $zero, 104
	addi.w	$t1, $zero, -1
	lu32i.d	$t1, 0
	b	.LBB2_4
	.p2align	4, , 16
.LBB2_3:                                # %for.end
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$t2, $t6, 0
	slli.d	$t3, $t3, 2
	addi.d	$a7, $a7, 1
	stx.w	$t1, $t2, $t3
	beq	$a7, $a4, .LBB2_8
.LBB2_4:                                # %for.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_6 Depth 2
	slli.d	$t2, $a7, 3
	ldx.d	$t2, $a2, $t2
	move	$t4, $zero
	move	$t5, $zero
	move	$t3, $zero
	alsl.d	$t7, $a7, $a5, 3
	alsl.d	$t6, $a7, $a6, 3
	b	.LBB2_6
	.p2align	4, , 16
.LBB2_5:                                # %for.inc
                                        #   in Loop: Header=BB2_6 Depth=2
	addi.d	$t4, $t4, 4
	addi.d	$t5, $t5, 1
	beq	$t4, $t0, .LBB2_3
.LBB2_6:                                # %for.body3
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$fa1, $t2, $t4
	fcmp.ceq.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_5
# %bb.7:                                # %if.then7
                                        #   in Loop: Header=BB2_6 Depth=2
	ld.d	$t8, $t7, 0
	ld.d	$fp, $t6, 0
	slli.d	$s0, $t3, 2
	fstx.s	$fa1, $t8, $s0
	stx.w	$t5, $fp, $s0
	addi.w	$t3, $t3, 1
	b	.LBB2_5
.LBB2_8:                                # %if.end28
	slli.d	$a2, $a3, 3
	ldx.d	$a2, $a1, $a2
	move	$a1, $zero
	fld.s	$fa1, $a2, 40
	fld.s	$fa2, $a2, 44
	fld.s	$fa3, $a2, 48
	fld.s	$fa4, $a2, 52
	fld.s	$fa5, $a2, 56
	fld.s	$fa6, $a2, 60
	fld.s	$fa7, $a2, 64
	fld.s	$ft0, $a2, 0
	fld.s	$ft1, $a2, 4
	fld.s	$ft2, $a2, 8
	fld.s	$ft3, $a2, 12
	fld.s	$ft4, $a2, 16
	fld.s	$ft5, $a2, 20
	fld.s	$ft6, $a2, 24
	fld.s	$ft7, $a2, 28
	fld.s	$ft8, $a2, 32
	fld.s	$ft9, $a2, 36
	fld.s	$ft10, $a2, 68
	fld.s	$ft11, $a2, 72
	fld.s	$ft12, $a2, 76
	fld.s	$ft13, $a2, 80
	fld.s	$ft14, $a2, 84
	fld.s	$ft15, $a2, 88
	fld.s	$fs0, $a2, 92
	fld.s	$fs1, $a2, 96
	fld.s	$fs2, $a2, 100
	pcalau12i	$a2, %got_pc_hi20(n_dis)
	ld.d	$a2, $a2, %got_pc_lo12(n_dis)
	movgr2fr.w	$fa0, $zero
	addi.d	$a3, $sp, 16
	ori	$a7, $zero, 104
	.p2align	4, , 16
.LBB2_9:                                # %for.body31
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$t1, $a2, $a1
	add.d	$t0, $a2, $a1
	ld.w	$t2, $t0, 104
	movgr2fr.w	$fs3, $t1
	ffint.s.w	$fs3, $fs3
	fmadd.s	$fs3, $fs3, $ft0, $fa0
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 208
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft1, $fs3
	ld.w	$t2, $t0, 312
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft2, $fs3
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 416
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft3, $fs3
	ld.w	$t2, $t0, 520
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft4, $fs3
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 624
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft5, $fs3
	ld.w	$t2, $t0, 728
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft6, $fs3
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 832
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft7, $fs3
	ld.w	$t2, $t0, 936
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft8, $fs3
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 1040
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft9, $fs3
	ld.w	$t2, $t0, 1144
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fa1, $fs3
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 1248
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fa2, $fs3
	ld.w	$t2, $t0, 1352
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fa3, $fs3
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 1456
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fa4, $fs3
	ld.w	$t2, $t0, 1560
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fa5, $fs3
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 1664
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fa6, $fs3
	ld.w	$t2, $t0, 1768
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fa7, $fs3
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 1872
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft10, $fs3
	ld.w	$t2, $t0, 1976
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft11, $fs3
	movgr2fr.w	$fs4, $t2
	ldptr.w	$t1, $t0, 2080
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft12, $fs3
	ldptr.w	$t2, $t0, 2184
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft13, $fs3
	movgr2fr.w	$fs4, $t2
	ldptr.w	$t1, $t0, 2288
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft14, $fs3
	ldptr.w	$t2, $t0, 2392
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft15, $fs3
	movgr2fr.w	$fs4, $t2
	ldptr.w	$t1, $t0, 2496
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fs0, $fs3
	ldptr.w	$t0, $t0, 2600
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fs1, $fs3
	movgr2fr.w	$fs4, $t0
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fs2, $fs3
	fstx.s	$fs3, $a1, $a3
	addi.d	$a1, $a1, 4
	bne	$a1, $a7, .LBB2_9
# %bb.10:                               # %while.cond.preheader
	beqz	$a4, .LBB2_16
# %bb.11:
	addi.d	$a1, $sp, 16
	addi.w	$a2, $zero, -1
	b	.LBB2_13
	.p2align	4, , 16
.LBB2_12:                               # %for.end66
                                        #   in Loop: Header=BB2_13 Depth=1
	addi.w	$a4, $a4, -1
	addi.d	$a0, $a0, 4
	addi.d	$a6, $a6, 8
	addi.d	$a5, $a5, 8
	beqz	$a4, .LBB2_16
.LBB2_13:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_15 Depth 2
	ld.d	$t0, $a6, 0
	ld.wu	$a3, $t0, 0
	addi.w	$a7, $a3, 0
	st.w	$zero, $a0, 0
	bltz	$a7, .LBB2_12
# %bb.14:                               # %for.body59.lr.ph
                                        #   in Loop: Header=BB2_13 Depth=1
	ld.d	$a7, $a5, 0
	addi.d	$t0, $t0, 4
	fmov.s	$fa1, $fa0
	.p2align	4, , 16
.LBB2_15:                               # %for.body59
                                        #   Parent Loop BB2_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a3, $a3, 2
	fldx.s	$fa2, $a3, $a1
	fld.s	$fa3, $a7, 0
	ld.wu	$a3, $t0, 0
	fmadd.s	$fa1, $fa2, $fa3, $fa1
	fst.s	$fa1, $a0, 0
	addi.w	$t1, $a3, 0
	addi.d	$a7, $a7, 4
	addi.d	$t0, $t0, 4
	blt	$a2, $t1, .LBB2_15
	b	.LBB2_12
.LBB2_16:                               # %while.end
	fld.d	$fs4, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 144                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 152                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.Lfunc_end2:
	.size	match_calc, .Lfunc_end2-match_calc
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
	.asciz	"bug! hairetsu ga kowareta! (nglen1) seqlen(seq1[0])=%d but nglen1=%d\n"
	.size	.L.str.3, 70

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"seq1[0] = %s\n"
	.size	.L.str.4, 14

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"bug! hairetsu ga kowareta! (nglen2) seqlen(seq2[0])=%d but nglen2=%d\n"
	.size	.L.str.5, 70

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"hairetsu ga kowareta (end of MSalignmm) !\n"
	.size	.L.str.6, 43

	.type	reccycle,@object                # @reccycle
	.local	reccycle
	.comm	reccycle,4,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
