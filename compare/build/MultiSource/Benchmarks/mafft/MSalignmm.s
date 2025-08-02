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
	ld.d	$a7, $sp, 168                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 176                   # 8-byte Folded Reload
	blt	$s8, $a0, .LBB0_18
# %bb.12:                               # %for.body57.lr.ph
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 30, 0
	ori	$a2, $zero, 8
	bltu	$a1, $a2, .LBB0_15
# %bb.13:                               # %vector.memcheck
	alsl.d	$a2, $a1, $a7, 2
	bgeu	$t1, $a2, .LBB0_42
# %bb.14:                               # %vector.memcheck
	alsl.d	$a2, $a1, $t1, 2
	bgeu	$a7, $a2, .LBB0_42
.LBB0_15:
	move	$a2, $zero
.LBB0_16:                               # %for.body57.preheader
	alsl.d	$a3, $a2, $a7, 2
	alsl.d	$a4, $a2, $t1, 2
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
	alsl.d	$a1, $a0, $t0, 2
	bgeu	$s1, $a1, .LBB0_45
# %bb.21:                               # %vector.memcheck225
	alsl.d	$a1, $a0, $s1, 2
	bgeu	$t0, $a1, .LBB0_45
.LBB0_22:
	move	$a1, $zero
.LBB0_23:                               # %for.body82.preheader
	alsl.d	$a2, $a1, $t0, 2
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
	st.d	$t1, $a1, 0
	st.d	$a7, $a1, 8
	st.d	$s1, $a1, 16
	st.d	$t0, $a1, 24
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
	move	$a3, $t1
	move	$a4, $a7
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
	move	$a3, $t0
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
	addi.d	$sp, $sp, -672
	st.d	$ra, $sp, 664                   # 8-byte Folded Spill
	st.d	$fp, $sp, 656                   # 8-byte Folded Spill
	st.d	$s0, $sp, 648                   # 8-byte Folded Spill
	st.d	$s1, $sp, 640                   # 8-byte Folded Spill
	st.d	$s2, $sp, 632                   # 8-byte Folded Spill
	st.d	$s3, $sp, 624                   # 8-byte Folded Spill
	st.d	$s4, $sp, 616                   # 8-byte Folded Spill
	st.d	$s5, $sp, 608                   # 8-byte Folded Spill
	st.d	$s6, $sp, 600                   # 8-byte Folded Spill
	st.d	$s7, $sp, 592                   # 8-byte Folded Spill
	st.d	$s8, $sp, 584                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 576                  # 8-byte Folded Spill
	move	$s1, $a7
	move	$s3, $a3
	move	$s5, $a2
	move	$s4, $a1
	move	$s0, $a0
	ld.d	$s7, $sp, 712
	ld.d	$a0, $sp, 696
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 688
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 680
	ld.d	$a7, $sp, 672
	ld.d	$t1, $s7, 0
	pcalau12i	$a0, %pc_hi20(reccycle)
	ld.w	$a1, $a0, %pc_lo12(reccycle)
	ld.d	$a2, $s7, 8
	st.d	$a2, $sp, 344                   # 8-byte Folded Spill
	ld.d	$t0, $s7, 16
	ld.d	$s2, $s7, 24
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, %pc_lo12(reccycle)
	st.d	$a6, $sp, 376                   # 8-byte Folded Spill
	sub.d	$fp, $s1, $a6
	addi.w	$s6, $fp, 0
	st.d	$a7, $sp, 384                   # 8-byte Folded Spill
	sub.w	$a2, $a3, $a7
	addi.w	$a1, $zero, -1
	addi.w	$a0, $fp, 1
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	st.d	$a1, $sp, 280                   # 8-byte Folded Spill
	bge	$a1, $a2, .LBB1_42
# %bb.1:                                # %if.end
	st.d	$t1, $sp, 336                   # 8-byte Folded Spill
	st.d	$a4, $sp, 224                   # 8-byte Folded Spill
	move	$s8, $a5
	st.d	$t0, $sp, 184                   # 8-byte Folded Spill
	st.d	$a3, $sp, 152                   # 8-byte Folded Spill
	move	$a0, $s0
	move	$a1, $zero
	st.d	$a2, $sp, 472                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a6, $sp, 472                   # 8-byte Folded Reload
	ori	$a1, $zero, 1
	st.d	$s0, $sp, 368                   # 8-byte Folded Spill
	blt	$s0, $a1, .LBB1_9
# %bb.2:                                # %for.body49.preheader
	ori	$a2, $zero, 8
	move	$a5, $zero
	ld.d	$a3, $sp, 368                   # 8-byte Folded Reload
	bltu	$a3, $a2, .LBB1_7
# %bb.3:                                # %for.body49.preheader
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 256                   # 8-byte Folded Reload
	sub.d	$a2, $a3, $a2
	ori	$a3, $zero, 64
	bltu	$a2, $a3, .LBB1_7
# %bb.4:                                # %vector.ph
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	bstrpick.d	$a2, $a2, 30, 3
	slli.d	$a5, $a2, 3
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 32
	ld.d	$a3, $sp, 288                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 32
	move	$a4, $a5
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
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	beq	$a5, $a2, .LBB1_9
.LBB1_7:                                # %for.body49.preheader578
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	alsl.d	$a2, $a5, $a2, 3
	ld.d	$a3, $sp, 288                   # 8-byte Folded Reload
	alsl.d	$a3, $a5, $a3, 3
	ld.d	$a4, $sp, 368                   # 8-byte Folded Reload
	sub.d	$a5, $a4, $a5
	.p2align	4, , 16
.LBB1_8:                                # %for.body49
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a3, 0
	st.d	$a4, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a5, $a5, -1
	addi.d	$a3, $a3, 8
	bnez	$a5, .LBB1_8
.LBB1_9:                                # %for.cond57.preheader
	addi.w	$a5, $a6, 1
	blt	$s4, $a1, .LBB1_17
# %bb.10:                               # %for.body60.preheader
	ori	$a1, $zero, 8
	move	$a4, $zero
	bltu	$s4, $a1, .LBB1_15
# %bb.11:                               # %for.body60.preheader
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	sub.d	$a1, $a0, $a1
	ori	$a2, $zero, 64
	bltu	$a1, $a2, .LBB1_15
# %bb.12:                               # %vector.ph16
	bstrpick.d	$a1, $s4, 30, 3
	slli.d	$a4, $a1, 3
	addi.d	$a1, $a0, 32
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 32
	move	$a3, $a4
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
	beq	$a4, $s4, .LBB1_17
.LBB1_15:                               # %for.body60.preheader577
	alsl.d	$a1, $a4, $a0, 3
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	alsl.d	$a2, $a4, $a2, 3
	sub.d	$a4, $s4, $a4
	.p2align	4, , 16
.LBB1_16:                               # %for.body60
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	st.d	$a3, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a4, $a4, -1
	addi.d	$a2, $a2, 8
	bnez	$a4, .LBB1_16
.LBB1_17:                               # %for.end67
	st.d	$s3, $sp, 200                   # 8-byte Folded Spill
	st.d	$a5, $sp, 568                   # 8-byte Folded Spill
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ori	$a0, $zero, 99
	st.d	$s6, $sp, 536                   # 8-byte Folded Spill
	st.d	$s4, $sp, 160                   # 8-byte Folded Spill
	st.d	$s5, $sp, 208                   # 8-byte Folded Spill
	blt	$s6, $a0, .LBB1_50
# %bb.18:                               # %for.end67
	ori	$a0, $zero, 98
	bgeu	$a0, $a6, .LBB1_50
# %bb.19:                               # %iter.check
	st.d	$s2, $sp, 304                   # 8-byte Folded Spill
	st.d	$s7, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	ld.d	$s0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	alsl.d	$a0, $s0, $a0, 2
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	alsl.d	$a0, $s0, $a0, 2
	st.d	$a0, $sp, 560                   # 8-byte Folded Spill
	addi.w	$s5, $a6, 103
	move	$a0, $s5
	move	$s1, $a6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 448                   # 8-byte Folded Spill
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	addi.w	$s7, $s6, 103
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 432                   # 8-byte Folded Spill
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	sltu	$a0, $s1, $s6
	masknez	$a1, $s1, $a0
	move	$s1, $s3
	maskeqz	$a0, $s6, $a0
	move	$s6, $s2
	or	$a0, $a0, $a1
	addi.w	$s5, $a0, 103
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ori	$a1, $zero, 26
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a1, $zero, 26
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$s2, $a0, $s8, 3
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$s7, $s0, $a0, 3
	ori	$a7, $zero, 1
	ori	$s0, $zero, 1
	move	$a0, $s6
	move	$a1, $s2
	move	$a2, $s7
	move	$a3, $zero
	ld.d	$a4, $sp, 480                   # 8-byte Folded Reload
	move	$a5, $s3
	move	$a6, $s5
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ori	$a7, $zero, 1
	move	$a0, $s1
	st.d	$s7, $sp, 496                   # 8-byte Folded Spill
	move	$a1, $s7
	st.d	$s2, $sp, 504                   # 8-byte Folded Spill
	move	$a2, $s2
	move	$a3, $zero
	ld.d	$a4, $sp, 568                   # 8-byte Folded Reload
	st.d	$s3, $sp, 528                   # 8-byte Folded Spill
	move	$a5, $s3
	st.d	$s5, $sp, 520                   # 8-byte Folded Spill
	move	$a6, $s5
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 2
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$a1, $a0, -1
	ori	$a2, $zero, 3
	bltu	$a2, $a1, .LBB1_129
# %bb.20:
	ld.d	$t2, $sp, 568                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 472                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 464                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 440                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 304                   # 8-byte Folded Reload
.LBB1_21:                               # %for.body139.preheader
	slli.d	$a2, $s0, 2
	alsl.d	$a1, $s0, $s6, 2
	ld.d	$a3, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 2
	ld.d	$a3, $sp, 344                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	addi.d	$a2, $a2, -4
	sub.d	$a0, $a0, $s0
	.p2align	4, , 16
.LBB1_22:                               # %for.body139
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $t1, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a1, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 4
	bnez	$a0, .LBB1_22
.LBB1_23:                               # %iter.check75
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$t5, $a1, $a0, 2
	alsl.d	$s7, $a1, $t4, 2
	addi.w	$t7, $t0, 2
	ori	$a0, $zero, 2
	slt	$a1, $a0, $t7
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $t7, $a1
	or	$a0, $a1, $a0
	addi.d	$a1, $a0, -1
	ori	$a3, $zero, 1
	ori	$a4, $zero, 4
	alsl.d	$a2, $a0, $s1, 2
	blt	$a4, $t7, .LBB1_133
.LBB1_24:                               # %for.body155.preheader
	slli.d	$a5, $a3, 2
	alsl.d	$a4, $a3, $s1, 2
	ld.d	$a6, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a5, $a6, $a5, 2
	add.d	$a5, $a5, $t4
	addi.d	$a5, $a5, -4
	sub.d	$a3, $a0, $a3
	.p2align	4, , 16
.LBB1_25:                               # %for.body155
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $t5, 0
	fld.s	$fa1, $a5, 0
	fld.s	$fa2, $a4, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a4, 0
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, -1
	addi.d	$a5, $a5, 4
	bnez	$a3, .LBB1_25
.LBB1_26:                               # %iter.check127
	addi.d	$t8, $t1, 4
	ori	$a3, $zero, 1
	ori	$a4, $zero, 4
	addi.d	$s0, $t3, 4
	blt	$a4, $t7, .LBB1_137
.LBB1_27:                               # %for.body171.preheader
	alsl.d	$a1, $a3, $t3, 2
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 2
	alsl.d	$a4, $a3, $s1, 2
	addi.d	$a4, $a4, -4
	sub.d	$a0, $a0, $a3
	.p2align	4, , 16
.LBB1_28:                               # %for.body171
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a4, 0
	fld.s	$fa1, $t8, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a1, 0
	st.w	$zero, $a2, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, -1
	addi.d	$a4, $a4, 4
	bnez	$a0, .LBB1_28
.LBB1_29:                               # %for.end183
	st.d	$t8, $sp, 320                   # 8-byte Folded Spill
	st.d	$t7, $sp, 328                   # 8-byte Folded Spill
	st.d	$t5, $sp, 424                   # 8-byte Folded Spill
	st.d	$s6, $sp, 512                   # 8-byte Folded Spill
	st.d	$s8, $sp, 112                   # 8-byte Folded Spill
	slli.d	$a0, $t0, 2
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	fldx.s	$fa0, $s1, $a0
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	fst.s	$fa0, $a0, 0
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a2, $fa0
	ori	$s4, $zero, 1
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 4
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	st.d	$s1, $sp, 88                    # 8-byte Folded Spill
	move	$t4, $s1
	st.d	$s7, $sp, 416                   # 8-byte Folded Spill
	st.d	$a2, $sp, 544                   # 8-byte Folded Spill
	blt	$a2, $s4, .LBB1_72
# %bb.30:                               # %for.body194.lr.ph
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	addi.d	$t6, $a0, 4
	ori	$a0, $zero, 2
	ld.d	$a3, $sp, 328                   # 8-byte Folded Reload
	slt	$a1, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$a0, $a1, $a0
	addi.d	$a1, $a2, 1
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a1, $sp, 408                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	addi.d	$s2, $a1, 4
	addi.d	$a1, $a0, -1
	st.d	$a1, $sp, 360                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	addi.d	$t7, $a1, 4
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	addi.d	$s5, $a1, 4
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	addi.d	$s6, $a1, 4
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	addi.d	$s8, $a1, 4
	slli.d	$a0, $a0, 2
	addi.d	$s3, $a0, -4
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	st.d	$t6, $sp, 456                   # 8-byte Folded Spill
	st.d	$t7, $sp, 352                   # 8-byte Folded Spill
	b	.LBB1_32
	.p2align	4, , 16
.LBB1_31:                               # %for.end278
                                        #   in Loop: Header=BB1_32 Depth=1
	ld.d	$a1, $sp, 488                   # 8-byte Folded Reload
	fldx.s	$fa0, $t4, $a1
	addi.d	$s4, $s4, 1
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	fstx.s	$fa0, $a1, $a0
	move	$a0, $t4
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	beq	$s4, $a1, .LBB1_72
.LBB1_32:                               # %for.body194
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_40 Depth 2
                                        #     Child Loop BB1_36 Depth 2
	addi.d	$s1, $s4, -1
	slli.d	$a1, $s1, 2
	ld.d	$s7, $sp, 512                   # 8-byte Folded Reload
	fldx.s	$fa0, $s7, $a1
	st.d	$a0, $sp, 552                   # 8-byte Folded Spill
	fst.s	$fa0, $a0, 0
	move	$a0, $fp
	ld.d	$a1, $sp, 496                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 504                   # 8-byte Folded Reload
	move	$a3, $s4
	move	$a4, $t2
	ld.d	$a5, $sp, 528                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 520                   # 8-byte Folded Reload
	move	$a7, $zero
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	move	$t4, $fp
	slli.d	$a0, $s4, 2
	fldx.s	$fa0, $s7, $a0
	fst.s	$fa0, $fp, 0
	ld.d	$a1, $sp, 464                   # 8-byte Folded Reload
	fldx.s	$fa0, $a1, $a0
	alsl.d	$a1, $s4, $a1, 2
	ld.d	$a2, $sp, 440                   # 8-byte Folded Reload
	fst.s	$fa0, $a2, 0
	ld.d	$a2, $sp, 560                   # 8-byte Folded Reload
	alsl.d	$a2, $s1, $a2, 2
	ld.d	$a3, $sp, 544                   # 8-byte Folded Reload
	bne	$s4, $a3, .LBB1_38
# %bb.33:                               # %for.body225.us.preheader
                                        #   in Loop: Header=BB1_32 Depth=1
	ld.d	$a3, $sp, 448                   # 8-byte Folded Reload
	fst.s	$fa0, $a3, 0
	ld.d	$fp, $sp, 552                   # 8-byte Folded Reload
	fld.s	$fa0, $fp, 0
	ld.d	$a3, $sp, 424                   # 8-byte Folded Reload
	fld.s	$fa1, $a3, 4
	move	$a3, $zero
	move	$a4, $zero
	move	$a6, $zero
	fadd.s	$fa0, $fa0, $fa1
	addi.d	$a5, $t4, 4
	ld.d	$t2, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 416                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 400                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 456                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 352                   # 8-byte Folded Reload
	b	.LBB1_36
	.p2align	4, , 16
.LBB1_34:                               # %for.body225.us.if.end257.us_crit_edge
                                        #   in Loop: Header=BB1_36 Depth=2
	ldx.w	$a7, $t6, $a4
.LBB1_35:                               # %if.end257.us
                                        #   in Loop: Header=BB1_36 Depth=2
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
	fstx.s	$fa1, $s6, $a4
	fldx.s	$fa1, $s0, $a4
	or	$a6, $a6, $t1
	stx.w	$a7, $t7, $a4
	stx.w	$a6, $s5, $a4
	fstx.s	$fa1, $t3, $a4
	fstx.s	$fa0, $s8, $a4
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, 1
	beq	$s3, $a4, .LBB1_31
.LBB1_36:                               # %for.body225.us
                                        #   Parent Loop BB1_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$fa3, $fp, $a4
	fldx.s	$fa4, $s7, $a4
	fld.s	$fa6, $a1, 0
	fldx.s	$fa1, $s0, $a4
	fldx.s	$fa5, $s2, $a4
	fld.s	$fa2, $a2, 0
	fadd.s	$fa6, $fa3, $fa6
	fcmp.cle.s	$fcc0, $fa1, $fa6
	bceqz	$fcc0, .LBB1_34
# %bb.37:                               # %if.then255.us
                                        #   in Loop: Header=BB1_36 Depth=2
	fstx.s	$fa6, $s0, $a4
	stx.w	$s1, $t6, $a4
	move	$a7, $s1
	b	.LBB1_35
	.p2align	4, , 16
.LBB1_38:                               # %for.body225.preheader
                                        #   in Loop: Header=BB1_32 Depth=1
	ld.d	$fp, $sp, 552                   # 8-byte Folded Reload
	fld.s	$fa0, $fp, 0
	ld.d	$a3, $sp, 424                   # 8-byte Folded Reload
	fld.s	$fa1, $a3, 4
	addi.d	$a3, $t4, 4
	fadd.s	$fa0, $fa0, $fa1
	ld.d	$a4, $sp, 360                   # 8-byte Folded Reload
	move	$a5, $s2
	ld.d	$s7, $sp, 416                   # 8-byte Folded Reload
	move	$a6, $s7
	move	$a7, $s0
	ld.d	$t0, $sp, 456                   # 8-byte Folded Reload
	move	$t1, $fp
	ld.d	$t2, $sp, 568                   # 8-byte Folded Reload
	b	.LBB1_40
	.p2align	4, , 16
.LBB1_39:                               # %if.end257
                                        #   in Loop: Header=BB1_40 Depth=2
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
	beqz	$a4, .LBB1_31
.LBB1_40:                               # %for.body225
                                        #   Parent Loop BB1_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa2, $t1, 0
	fld.s	$fa4, $a6, 0
	fld.s	$fa6, $a1, 0
	fld.s	$fa1, $a7, 0
	fld.s	$fa5, $a5, 0
	fld.s	$fa3, $a2, 0
	fadd.s	$fa6, $fa2, $fa6
	fcmp.cult.s	$fcc0, $fa6, $fa1
	bcnez	$fcc0, .LBB1_39
# %bb.41:                               # %if.then255
                                        #   in Loop: Header=BB1_40 Depth=2
	fst.s	$fa6, $a7, 0
	st.w	$s1, $t0, 0
	b	.LBB1_39
.LBB1_42:                               # %for.cond.preheader
	ori	$fp, $zero, 1
	ld.d	$s1, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 288                   # 8-byte Folded Reload
	blt	$s0, $fp, .LBB1_44
	.p2align	4, , 16
.LBB1_43:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s5, 0
	ld.d	$a0, $s3, 0
	add.d	$a1, $a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	stx.b	$zero, $a0, $s2
	addi.d	$s5, $s5, 8
	addi.d	$s0, $s0, -1
	addi.d	$s3, $s3, 8
	bnez	$s0, .LBB1_43
.LBB1_44:                               # %for.cond24.preheader
	movgr2fr.w	$fs0, $zero
	blt	$s4, $fp, .LBB1_257
# %bb.45:                               # %for.body27.lr.ph
	move	$fp, $zero
	ori	$s0, $zero, 45
	ld.d	$s5, $sp, 240                   # 8-byte Folded Reload
	b	.LBB1_47
	.p2align	4, , 16
.LBB1_46:                               # %for.inc41
                                        #   in Loop: Header=BB1_47 Depth=1
	addi.d	$fp, $fp, 1
	beq	$fp, $s4, .LBB1_257
.LBB1_47:                               # %for.body27
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_49 Depth 2
	slli.d	$a0, $fp, 3
	ldx.d	$a0, $s5, $a0
	st.b	$zero, $a0, 0
	bltz	$s6, .LBB1_46
# %bb.48:                               # %for.body34.preheader
                                        #   in Loop: Header=BB1_47 Depth=1
	alsl.d	$s2, $fp, $s5, 3
	ld.d	$s3, $sp, 480                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_49:                               # %for.body34
                                        #   Parent Loop BB1_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s1, $s2, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$s3, $s3, -1
	stx.h	$s0, $s1, $a0
	bnez	$s3, .LBB1_49
	b	.LBB1_46
.LBB1_50:                               # %if.then72
	ld.d	$a0, $s7, 0
	move	$s0, $s8
	ld.d	$a2, $s7, 8
	ld.d	$a1, $s7, 16
	st.d	$a1, $sp, 464                   # 8-byte Folded Spill
	ld.d	$a1, $s7, 24
	st.d	$a1, $sp, 488                   # 8-byte Folded Spill
	ld.d	$fp, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$s3, $fp, $a0, 2
	st.d	$a2, $sp, 456                   # 8-byte Folded Spill
	alsl.d	$a0, $fp, $a2, 2
	st.d	$a0, $sp, 512                   # 8-byte Folded Spill
	addi.w	$s1, $a6, 103
	move	$a0, $s1
	move	$s6, $a6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 536                   # 8-byte Folded Reload
	addi.w	$s7, $a0, 103
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 544                   # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 536                   # 8-byte Folded Reload
	slt	$a0, $s6, $a0
	masknez	$a1, $s6, $a0
	ld.d	$a2, $sp, 536                   # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
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
	move	$s1, $a0
	ld.d	$a0, $sp, 536                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 102
	addi.w	$a1, $s6, 102
	ld.d	$s2, $sp, 536                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 552                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$s0, $a0, $s0, 3
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$s6, $fp, $a0, 3
	ori	$a7, $zero, 1
	ori	$fp, $zero, 1
	st.d	$s8, $sp, 560                   # 8-byte Folded Spill
	move	$a0, $s8
	move	$a1, $s0
	move	$a2, $s6
	move	$a3, $zero
	ld.d	$a4, $sp, 480                   # 8-byte Folded Reload
	move	$a5, $s7
	move	$a6, $s1
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ori	$a7, $zero, 1
	st.d	$s4, $sp, 432                   # 8-byte Folded Spill
	move	$a0, $s4
	st.d	$s6, $sp, 496                   # 8-byte Folded Spill
	move	$a1, $s6
	st.d	$s0, $sp, 504                   # 8-byte Folded Spill
	move	$a2, $s0
	move	$a3, $zero
	ld.d	$a4, $sp, 568                   # 8-byte Folded Reload
	st.d	$s7, $sp, 528                   # 8-byte Folded Spill
	move	$a5, $s7
	st.d	$s1, $sp, 520                   # 8-byte Folded Spill
	move	$a6, $s1
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	addi.w	$t4, $s2, 2
	bltz	$s2, .LBB1_54
# %bb.51:                               # %iter.check334
	ori	$a0, $zero, 2
	slt	$a1, $a0, $t4
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $t4, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	blt	$a1, $t4, .LBB1_148
.LBB1_52:                               # %for.body.i.preheader
	sub.d	$a0, $a0, $a2
	slli.d	$a3, $a2, 2
	ld.d	$a1, $sp, 560                   # 8-byte Folded Reload
	alsl.d	$a1, $a2, $a1, 2
	ld.d	$a2, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a3, 2
	ld.d	$a3, $sp, 456                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	addi.d	$a2, $a2, -4
	.p2align	4, , 16
.LBB1_53:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $s3, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a1, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	bnez	$a0, .LBB1_53
.LBB1_54:                               # %iter.check386
	ld.d	$s8, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	alsl.d	$s6, $s8, $a0, 2
	ld.d	$a7, $sp, 488                   # 8-byte Folded Reload
	alsl.d	$s8, $s8, $a7, 2
	ld.d	$t0, $sp, 472                   # 8-byte Folded Reload
	addi.w	$t5, $t0, 2
	ori	$a0, $zero, 2
	slt	$a1, $a0, $t5
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $t5, $a1
	or	$a0, $a1, $a0
	ori	$a2, $zero, 4
	addi.d	$a1, $a0, -1
	blt	$a2, $t5, .LBB1_121
# %bb.55:
	ld.d	$t1, $sp, 568                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 424                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 432                   # 8-byte Folded Reload
.LBB1_56:                               # %for.body57.i.preheader
	sub.d	$a2, $a0, $fp
	slli.d	$a4, $fp, 2
	alsl.d	$a3, $fp, $t8, 2
	ld.d	$a5, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a4, $a5, $a4, 2
	add.d	$a4, $a4, $a7
	addi.d	$a4, $a4, -4
	.p2align	4, , 16
.LBB1_57:                               # %for.body57.i
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
	bnez	$a2, .LBB1_57
.LBB1_58:                               # %iter.check438
	addi.d	$a2, $s3, 4
	ori	$a3, $zero, 1
	ori	$a4, $zero, 4
	addi.d	$s0, $t6, 4
	blt	$a4, $t5, .LBB1_125
.LBB1_59:                               # %for.body72.i.preheader
	sub.d	$a1, $a0, $a3
	ld.d	$a4, $sp, 440                   # 8-byte Folded Reload
	alsl.d	$a4, $a3, $a4, 2
	alsl.d	$a5, $a3, $t6, 2
	alsl.d	$a3, $a3, $t8, 2
	addi.d	$a3, $a3, -4
	.p2align	4, , 16
.LBB1_60:                               # %for.body72.i
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
	bnez	$a1, .LBB1_60
.LBB1_61:                               # %for.end84.i
	slli.d	$a1, $t0, 2
	st.d	$a1, $sp, 488                   # 8-byte Folded Spill
	fldx.s	$fa0, $t8, $a1
	ld.d	$a1, $sp, 544                   # 8-byte Folded Reload
	fst.s	$fa0, $a1, 0
	st.d	$t4, $sp, 400                   # 8-byte Folded Spill
	st.d	$t5, $sp, 408                   # 8-byte Folded Spill
	bltz	$s2, .LBB1_144
# %bb.62:                               # %for.body92.lr.ph.i
	st.d	$s3, $sp, 464                   # 8-byte Folded Spill
	ori	$a1, $zero, 2
	slt	$a2, $a1, $t4
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $t4, $a2
	or	$a1, $a2, $a1
	st.d	$a1, $sp, 448                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 2
	addi.d	$s3, $a0, -4
	addi.d	$s5, $s6, 4
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	addi.d	$fp, $a0, 4
	ori	$s7, $zero, 1
	move	$a2, $t8
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	move	$a4, $t1
	st.d	$s6, $sp, 456                   # 8-byte Folded Spill
	b	.LBB1_64
	.p2align	4, , 16
.LBB1_63:                               # %for.end153.i
                                        #   in Loop: Header=BB1_64 Depth=1
	ld.d	$a1, $sp, 488                   # 8-byte Folded Reload
	fldx.s	$fa0, $t2, $a1
	addi.d	$s7, $s7, 1
	ld.d	$a1, $sp, 544                   # 8-byte Folded Reload
	fstx.s	$fa0, $a1, $a0
	move	$a2, $t2
	move	$a0, $s1
	ld.d	$a4, $sp, 568                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 448                   # 8-byte Folded Reload
	beq	$s7, $a1, .LBB1_145
.LBB1_64:                               # %for.body92.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_66 Depth 2
	addi.d	$s4, $s7, -1
	slli.d	$a1, $s4, 2
	ld.d	$a3, $sp, 560                   # 8-byte Folded Reload
	fldx.s	$fa0, $a3, $a1
	move	$s1, $a2
	addi.d	$s2, $a0, 4
	fst.s	$fa0, $a2, 0
	ld.d	$a1, $sp, 496                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 504                   # 8-byte Folded Reload
	move	$a3, $s7
	ld.d	$a5, $sp, 528                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 520                   # 8-byte Folded Reload
	move	$a7, $zero
	move	$s6, $s8
	move	$s8, $a0
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	move	$t2, $s8
	move	$s8, $s6
	slli.d	$a0, $s7, 2
	ld.d	$a1, $sp, 560                   # 8-byte Folded Reload
	fldx.s	$fa0, $a1, $a0
	ld.d	$s6, $sp, 456                   # 8-byte Folded Reload
	fst.s	$fa0, $t2, 0
	fld.s	$fa0, $s1, 0
	fld.s	$fa1, $s6, 4
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	slli.d	$a4, $s7, 3
	ld.d	$a5, $sp, 552                   # 8-byte Folded Reload
	ldx.d	$a6, $a5, $a4
	fadd.s	$fa0, $fa0, $fa1
	ld.d	$a4, $sp, 512                   # 8-byte Folded Reload
	alsl.d	$a4, $s4, $a4, 2
	ld.d	$a5, $sp, 464                   # 8-byte Folded Reload
	alsl.d	$a5, $s7, $a5, 2
	addi.d	$a6, $a6, 4
	addi.d	$a7, $zero, -1
	b	.LBB1_66
	.p2align	4, , 16
.LBB1_65:                               # %if.end145.i
                                        #   in Loop: Header=BB1_66 Depth=2
	fadd.s	$fa1, $fa1, $fa2
	fcmp.cult.s	$fcc0, $fa1, $fa0
	fsel	$fa0, $fa1, $fa0, $fcc0
	movcf2gr	$t0, $fcc0
	fldx.s	$fa1, $s2, $a2
	masknez	$t1, $a1, $t0
	maskeqz	$a3, $a3, $t0
	or	$a3, $a3, $t1
	fadd.s	$fa1, $fs0, $fa1
	fstx.s	$fa1, $s2, $a2
	addi.d	$a7, $a7, -1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 1
	beq	$s3, $a2, .LBB1_63
.LBB1_66:                               # %for.body116.i
                                        #   Parent Loop BB1_64 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$fa2, $s8, $a2
	fldx.s	$fa1, $s1, $a2
	fadd.s	$fa2, $fa0, $fa2
	fcmp.cule.s	$fcc0, $fa2, $fa1
	stx.w	$zero, $a6, $a2
	fmov.s	$fs0, $fa1
	bcnez	$fcc0, .LBB1_68
# %bb.67:                               # %if.then.i
                                        #   in Loop: Header=BB1_66 Depth=2
	add.d	$t0, $a7, $a3
	stx.w	$t0, $a6, $a2
	fmov.s	$fs0, $fa2
.LBB1_68:                               # %if.end.i
                                        #   in Loop: Header=BB1_66 Depth=2
	fldx.s	$fa3, $s0, $a2
	fld.s	$fa4, $a4, 0
	fldx.s	$fa2, $s5, $a2
	fadd.s	$fa4, $fa3, $fa4
	fcmp.cule.s	$fcc0, $fa4, $fs0
	bcnez	$fcc0, .LBB1_70
# %bb.69:                               # %if.then136.i
                                        #   in Loop: Header=BB1_66 Depth=2
	ldx.w	$t0, $fp, $a2
	sub.d	$t0, $s7, $t0
	stx.w	$t0, $a6, $a2
	fmov.s	$fs0, $fa4
.LBB1_70:                               # %if.end138.i
                                        #   in Loop: Header=BB1_66 Depth=2
	fld.s	$fa4, $a5, 0
	fadd.s	$fa4, $fa1, $fa4
	fcmp.cult.s	$fcc0, $fa4, $fa3
	bcnez	$fcc0, .LBB1_65
# %bb.71:                               # %if.then143.i
                                        #   in Loop: Header=BB1_66 Depth=2
	fstx.s	$fa4, $s0, $a2
	stx.w	$s4, $fp, $a2
	b	.LBB1_65
.LBB1_72:                               # %for.end286
	st.d	$fp, $sp, 552                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 704
	st.d	$a0, $sp, 456                   # 8-byte Folded Spill
	ori	$a7, $zero, 1
	ori	$s0, $zero, 1
	ld.d	$s5, $sp, 512                   # 8-byte Folded Reload
	move	$a0, $s5
	ld.d	$s3, $sp, 504                   # 8-byte Folded Reload
	move	$a1, $s3
	ld.d	$s6, $sp, 496                   # 8-byte Folded Reload
	move	$a2, $s6
	ld.d	$a3, $sp, 472                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 528                   # 8-byte Folded Reload
	move	$a5, $s2
	ld.d	$s4, $sp, 520                   # 8-byte Folded Reload
	move	$a6, $s4
	move	$s1, $t2
	move	$s8, $t4
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ori	$a7, $zero, 1
	move	$fp, $s8
	move	$a0, $s8
	move	$a1, $s6
	move	$a2, $s3
	ld.d	$s3, $sp, 536                   # 8-byte Folded Reload
	move	$a3, $s3
	move	$a4, $s1
	move	$a5, $s2
	move	$a6, $s4
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ld.d	$t4, $sp, 544                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 376                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 336                   # 8-byte Folded Reload
	blt	$s3, $s0, .LBB1_77
# %bb.73:                               # %iter.check175
	ori	$a1, $zero, 3
	ld.d	$a0, $sp, 560                   # 8-byte Folded Reload
	alsl.d	$a0, $s3, $a0, 2
	bltu	$a1, $s3, .LBB1_152
# %bb.74:
	move	$a1, $zero
.LBB1_75:                               # %for.body301.preheader
	slli.d	$a3, $a1, 2
	alsl.d	$a2, $a1, $s5, 2
	sub.d	$a1, $s3, $a1
	alsl.d	$a3, $a5, $a3, 2
	add.d	$a3, $a3, $a6
	addi.d	$a3, $a3, 4
	.p2align	4, , 16
.LBB1_76:                               # %for.body301
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
	bnez	$a1, .LBB1_76
.LBB1_77:                               # %for.cond315.preheader
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.d	$t3, $sp, 568                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 472                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 440                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 328                   # 8-byte Folded Reload
	move	$t6, $fp
	beqz	$t0, .LBB1_86
# %bb.78:                               # %iter.check225
	alsl.d	$a0, $t0, $s7, 2
	ori	$a1, $zero, 1
	slt	$a2, $a1, $t0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $t0, $a2
	ori	$a3, $zero, 3
	or	$a1, $a2, $a1
	blt	$a3, $t0, .LBB1_156
# %bb.79:
	move	$a2, $zero
	ld.d	$a6, $sp, 384                   # 8-byte Folded Reload
.LBB1_80:                               # %for.body319.preheader
	slli.d	$a4, $a2, 2
	alsl.d	$a3, $a2, $t6, 2
	sub.d	$a1, $a1, $a2
	alsl.d	$a2, $a6, $a4, 2
	add.d	$a2, $a2, $t2
	addi.d	$a2, $a2, 4
	.p2align	4, , 16
.LBB1_81:                               # %for.body319
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
	bnez	$a1, .LBB1_81
.LBB1_82:                               # %for.body337.lr.ph
	slti	$a2, $t0, 1
	ori	$a1, $zero, 1
	masknez	$a3, $a1, $a2
	maskeqz	$a2, $t0, $a2
	or	$a2, $a2, $a3
	add.d	$a2, $a6, $a2
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	sub.d	$a4, $a3, $a2
	addi.w	$a3, $a4, 0
	ori	$a5, $zero, 23
	addi.d	$a2, $a0, -4
	bgeu	$a3, $a5, .LBB1_160
.LBB1_83:
	move	$a0, $t0
.LBB1_84:                               # %for.body337.preheader
	addi.d	$a3, $a0, 1
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$a4, $a0, $a4, 2
	alsl.d	$a5, $a0, $t6, 2
	alsl.d	$a0, $a0, $t1, 2
	addi.d	$a0, $a0, -4
	.p2align	4, , 16
.LBB1_85:                               # %for.body337
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a5, 0
	fld.s	$fa1, $a2, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a0, 0
	st.w	$s3, $a4, 0
	addi.w	$a3, $a3, -1
	addi.d	$a4, $a4, -4
	addi.d	$a5, $a5, -4
	addi.d	$a0, $a0, -4
	blt	$a1, $a3, .LBB1_85
.LBB1_86:                               # %for.cond354.preheader
	move	$a4, $s7
	move	$s7, $zero
	st.d	$zero, $sp, 480                 # 8-byte Folded Spill
	st.d	$zero, $sp, 408                 # 8-byte Folded Spill
	bstrpick.d	$t7, $t3, 31, 0
	alsl.d	$a0, $t7, $t1, 2
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$a1, $t7, $a1, 2
	addi.w	$a2, $t0, -1
	bstrpick.d	$a3, $a2, 31, 0
	alsl.d	$a4, $a3, $a4, 2
	st.d	$a4, $sp, 360                   # 8-byte Folded Spill
	addi.d	$s2, $a0, -8
	addi.d	$t8, $a1, -8
	addi.w	$a0, $t4, -1
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	srai.d	$a0, $a2, 63
	and	$a0, $a0, $a2
	addi.w	$a0, $a0, -1
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	ori	$a1, $zero, 1
	slt	$a0, $a1, $t5
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $t5, $a0
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	move	$s4, $s3
	bstrpick.d	$s6, $t4, 31, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	alsl.d	$t5, $a3, $a0, 2
	ld.d	$a2, $sp, 392                   # 8-byte Folded Reload
	alsl.d	$fp, $a3, $a2, 2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	alsl.d	$s1, $a3, $a0, 2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$s3, $a3, $a0, 2
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	alsl.d	$a0, $a3, $a0, 2
	ld.d	$a4, $sp, 304                   # 8-byte Folded Reload
	add.d	$s8, $a4, $a0
	ld.d	$a4, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$ra, $a3, $a4, 2
	add.d	$a0, $a0, $t2
	addi.d	$s5, $a0, 4
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	fld.s	$fs0, $a0, %pc_lo12(.LCPI1_0)
	addi.d	$a0, $a2, 8
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	addi.d	$a0, $t0, -2
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 552                   # 8-byte Folded Reload
	st.d	$t8, $sp, 352                   # 8-byte Folded Spill
	st.d	$t5, $sp, 336                   # 8-byte Folded Spill
	st.d	$fp, $sp, 328                   # 8-byte Folded Spill
	st.d	$s1, $sp, 320                   # 8-byte Folded Spill
	st.d	$s3, $sp, 312                   # 8-byte Folded Spill
	st.d	$s8, $sp, 304                   # 8-byte Folded Spill
	st.d	$ra, $sp, 296                   # 8-byte Folded Spill
	b	.LBB1_89
	.p2align	4, , 16
.LBB1_87:                               # %if.then545
                                        #   in Loop: Header=BB1_89 Depth=1
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
.LBB1_88:                               # %if.end552
                                        #   in Loop: Header=BB1_89 Depth=1
	movcf2gr	$a0, $fcc0
	ld.d	$a1, $sp, 536                   # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s4, $a0
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 536                   # 8-byte Folded Spill
	move	$a0, $a5
	ld.d	$s4, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 480                   # 8-byte Folded Reload
	beq	$s0, $a1, .LBB1_141
.LBB1_89:                               # %for.cond354
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_93 Depth 2
                                        #     Child Loop BB1_111 Depth 2
                                        #     Child Loop BB1_113 Depth 2
	addi.w	$a1, $s4, 0
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB1_120
# %bb.90:                               # %for.body357
                                        #   in Loop: Header=BB1_89 Depth=1
	slli.d	$a1, $s4, 2
	ld.d	$s8, $sp, 512                   # 8-byte Folded Reload
	fldx.s	$fa0, $s8, $a1
	addi.d	$a1, $s4, -1
	st.d	$a1, $sp, 456                   # 8-byte Folded Spill
	addi.w	$s0, $a1, 0
	ld.d	$s3, $sp, 488                   # 8-byte Folded Reload
	fstx.s	$fa0, $t6, $s3
	ld.d	$a1, $sp, 496                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 504                   # 8-byte Folded Reload
	move	$a3, $s0
	move	$a4, $t3
	st.d	$t6, $sp, 552                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 528                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 520                   # 8-byte Folded Reload
	move	$a7, $zero
	move	$fp, $a0
	move	$s1, $t7
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 552                   # 8-byte Folded Reload
	move	$t7, $s1
	move	$t6, $fp
	ld.d	$t0, $sp, 472                   # 8-byte Folded Reload
	slli.d	$a0, $s0, 2
	fldx.s	$fa0, $s8, $a0
	fstx.s	$fa0, $fp, $s3
	alsl.d	$a1, $s1, $a5, 2
	addi.d	$a1, $a1, -4
	beqz	$t0, .LBB1_105
# %bb.91:                               # %for.body397.lr.ph
                                        #   in Loop: Header=BB1_89 Depth=1
	alsl.d	$a2, $t0, $a5, 2
	fld.s	$fa0, $a2, 0
	ld.d	$a2, $sp, 360                   # 8-byte Folded Reload
	fld.s	$fa1, $a2, 0
	move	$a2, $zero
	alsl.d	$a3, $t7, $t6, 2
	addi.d	$a3, $a3, -8
	fadd.s	$fa0, $fa0, $fa1
	ld.d	$a4, $sp, 464                   # 8-byte Folded Reload
	alsl.d	$a4, $s4, $a4, 2
	ld.d	$a5, $sp, 560                   # 8-byte Folded Reload
	alsl.d	$a5, $s0, $a5, 2
	ld.d	$a6, $sp, 480                   # 8-byte Folded Reload
	xor	$a6, $s0, $a6
	sltui	$a6, $a6, 1
	xor	$a7, $s4, $s6
	sltui	$a7, $a7, 1
	or	$a6, $a7, $a6
	move	$a7, $t0
	ld.d	$t3, $sp, 568                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 544                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 352                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 336                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 296                   # 8-byte Folded Reload
	b	.LBB1_93
	.p2align	4, , 16
.LBB1_92:                               # %if.end464
                                        #   in Loop: Header=BB1_93 Depth=2
	movcf2gr	$t1, $fcc0
	fldx.s	$fa2, $a3, $a2
	masknez	$t2, $a7, $t1
	maskeqz	$t0, $t0, $t1
	or	$t0, $t0, $t2
	fadd.s	$fa1, $fa1, $fa2
	fstx.s	$fa1, $a3, $a2
	addi.w	$a7, $a7, -1
	addi.d	$a2, $a2, -4
	blez	$a7, .LBB1_104
.LBB1_93:                               # %for.body397
                                        #   Parent Loop BB1_89 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$fa1, $s5, $a2
	fldx.s	$fa2, $a1, $a2
	fldx.s	$fa3, $s2, $a2
	fld.s	$fa4, $a4, 0
	fadd.s	$fa1, $fa0, $fa1
	fcmp.clt.s	$fcc0, $fa2, $fa1
	fsel	$fa1, $fa2, $fa1, $fcc0
	fadd.s	$fa4, $fa3, $fa4
	fcmp.cule.s	$fcc1, $fa4, $fa1
	bcnez	$fcc1, .LBB1_95
# %bb.94:                               # %if.then423
                                        #   in Loop: Header=BB1_93 Depth=2
	ldx.w	$t1, $t8, $a2
	fmov.s	$fa1, $fa4
	move	$t2, $a7
	b	.LBB1_96
	.p2align	4, , 16
.LBB1_95:                               #   in Loop: Header=BB1_93 Depth=2
	movcf2gr	$t1, $fcc0
	masknez	$t2, $a7, $t1
	maskeqz	$t1, $t0, $t1
	or	$t2, $t1, $t2
	move	$t1, $s4
.LBB1_96:                               # %if.end425
                                        #   in Loop: Header=BB1_93 Depth=2
	fld.s	$fa5, $a5, 0
	fldx.s	$fa4, $s8, $a2
	fadd.s	$fa5, $fa2, $fa5
	fcmp.cult.s	$fcc0, $fa5, $fa3
	bceqz	$fcc0, .LBB1_100
# %bb.97:                               # %if.end433
                                        #   in Loop: Header=BB1_93 Depth=2
	beqz	$a6, .LBB1_101
.LBB1_98:                               # %if.then440
                                        #   in Loop: Header=BB1_93 Depth=2
	stx.w	$t1, $s3, $a2
	stx.w	$t2, $s1, $a2
	beq	$s0, $t4, .LBB1_102
.LBB1_99:                               # %if.end456
                                        #   in Loop: Header=BB1_93 Depth=2
	fadd.s	$fa2, $fa2, $fa4
	fcmp.cult.s	$fcc0, $fa2, $fa0
	fsel	$fa0, $fa2, $fa0, $fcc0
	bne	$s4, $s6, .LBB1_92
	b	.LBB1_103
	.p2align	4, , 16
.LBB1_100:                              # %if.then431
                                        #   in Loop: Header=BB1_93 Depth=2
	fstx.s	$fa5, $s2, $a2
	stx.w	$s4, $t8, $a2
	bnez	$a6, .LBB1_98
.LBB1_101:                              # %if.end445
                                        #   in Loop: Header=BB1_93 Depth=2
	bne	$s0, $t4, .LBB1_99
.LBB1_102:                              # %if.then448
                                        #   in Loop: Header=BB1_93 Depth=2
	fldx.s	$fa3, $fp, $a2
	fadd.s	$fa3, $fa1, $fa3
	fstx.s	$fa3, $fp, $a2
	fldx.s	$fa3, $s2, $a2
	fldx.s	$fa5, $ra, $a2
	fadd.s	$fa3, $fa3, $fa5
	fstx.s	$fa3, $ra, $a2
	fadd.s	$fa2, $fa2, $fa4
	fcmp.cult.s	$fcc0, $fa2, $fa0
	fsel	$fa0, $fa2, $fa0, $fcc0
	bne	$s4, $s6, .LBB1_92
.LBB1_103:                              # %if.then460
                                        #   in Loop: Header=BB1_93 Depth=2
	fldx.s	$fa2, $t5, $a2
	fadd.s	$fa2, $fa0, $fa2
	fstx.s	$fa2, $t5, $a2
	b	.LBB1_92
	.p2align	4, , 16
.LBB1_104:                              # %for.end472.loopexit
                                        #   in Loop: Header=BB1_89 Depth=1
	add.d	$a1, $a1, $a2
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 472                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 552                   # 8-byte Folded Reload
	b	.LBB1_106
	.p2align	4, , 16
.LBB1_105:                              #   in Loop: Header=BB1_89 Depth=1
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 568                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 544                   # 8-byte Folded Reload
.LBB1_106:                              # %for.end472
                                        #   in Loop: Header=BB1_89 Depth=1
	fld.s	$fa0, $a1, 0
	ld.d	$a1, $sp, 560                   # 8-byte Folded Reload
	fldx.s	$fa1, $a1, $a0
	fadd.s	$fa0, $fa0, $fa1
	fcmp.clt.s	$fcc0, $fs0, $fa0
	fsel	$fs0, $fs0, $fa0, $fcc0
	bne	$s0, $t4, .LBB1_108
# %bb.107:                              # %if.then483
                                        #   in Loop: Header=BB1_89 Depth=1
	slli.d	$a0, $a2, 2
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	fldx.s	$fa0, $a1, $a0
	fadd.s	$fa0, $fs0, $fa0
	fstx.s	$fa0, $a1, $a0
.LBB1_108:                              # %if.end488
                                        #   in Loop: Header=BB1_89 Depth=1
	bne	$s4, $s6, .LBB1_88
# %bb.109:                              # %if.then492
                                        #   in Loop: Header=BB1_89 Depth=1
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	fld.s	$fa0, $a0, 4
	move	$s7, $zero
	ori	$a0, $zero, 3
	blt	$t0, $a0, .LBB1_112
# %bb.110:                              # %for.body498.preheader
                                        #   in Loop: Header=BB1_89 Depth=1
	ori	$a0, $zero, 2
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_111:                              # %for.body498
                                        #   Parent Loop BB1_89 Depth=1
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
	bnez	$a1, .LBB1_111
.LBB1_112:                              # %for.body512.preheader
                                        #   in Loop: Header=BB1_89 Depth=1
	move	$a0, $zero
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 448                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_113:                              # %for.body512
                                        #   Parent Loop BB1_89 Depth=1
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
	bnez	$a1, .LBB1_113
# %bb.114:                              # %for.end521
                                        #   in Loop: Header=BB1_89 Depth=1
	slli.d	$a0, $s7, 2
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	fldx.s	$fa0, $a1, $a0
	addi.w	$a3, $s7, -1
	ori	$a1, $zero, 1
	st.d	$a3, $sp, 408                   # 8-byte Folded Spill
	blt	$s7, $a1, .LBB1_118
# %bb.115:                              # %land.lhs.true
                                        #   in Loop: Header=BB1_89 Depth=1
	slli.d	$a1, $a3, 2
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	fldx.s	$fa1, $a2, $a1
	fcmp.cule.s	$fcc1, $fa1, $fa0
	move	$a1, $a3
	bcnez	$fcc1, .LBB1_117
# %bb.116:                              # %if.then533
                                        #   in Loop: Header=BB1_89 Depth=1
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a0
	fmov.s	$fa0, $fa1
.LBB1_117:                              # %if.end540
                                        #   in Loop: Header=BB1_89 Depth=1
	ld.d	$a2, $sp, 448                   # 8-byte Folded Reload
	fldx.s	$fa1, $a2, $a0
	fcmp.cule.s	$fcc1, $fa1, $fa0
	bceqz	$fcc1, .LBB1_87
	b	.LBB1_119
.LBB1_118:                              #   in Loop: Header=BB1_89 Depth=1
	move	$a1, $a3
	ld.d	$a2, $sp, 448                   # 8-byte Folded Reload
	fldx.s	$fa1, $a2, $a0
	fcmp.cule.s	$fcc1, $fa1, $fa0
	bceqz	$fcc1, .LBB1_87
.LBB1_119:                              #   in Loop: Header=BB1_89 Depth=1
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	st.d	$a1, $sp, 408                   # 8-byte Folded Spill
	b	.LBB1_88
.LBB1_120:
	move	$t3, $s7
	ld.d	$s2, $sp, 480                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	b	.LBB1_221
.LBB1_121:                              # %vector.memcheck371
	ld.d	$t8, $sp, 432                   # 8-byte Folded Reload
	addi.d	$a2, $t8, 4
	alsl.d	$a3, $a0, $t8, 2
	addi.d	$a4, $s6, 4
	sltu	$a4, $a2, $a4
	sltu	$a5, $s6, $a3
	and	$a4, $a4, $a5
	ld.d	$t1, $sp, 568                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 424                   # 8-byte Folded Reload
	bnez	$a4, .LBB1_56
# %bb.122:                              # %vector.memcheck371
	alsl.d	$a4, $a0, $s8, 2
	addi.d	$a4, $a4, -4
	sltu	$a2, $a2, $a4
	sltu	$a3, $s8, $a3
	and	$a2, $a2, $a3
	bnez	$a2, .LBB1_56
# %bb.123:                              # %vector.main.loop.iter.check388
	ori	$a2, $zero, 17
	bge	$t5, $a2, .LBB1_258
# %bb.124:
	move	$a2, $zero
	b	.LBB1_262
.LBB1_125:                              # %vector.memcheck423
	alsl.d	$a4, $a0, $t6, 2
	alsl.d	$a5, $a0, $t8, 2
	addi.d	$a5, $a5, -4
	sltu	$a5, $s0, $a5
	sltu	$a6, $t8, $a4
	and	$a5, $a5, $a6
	bnez	$a5, .LBB1_59
# %bb.126:                              # %vector.memcheck423
	addi.d	$a5, $s3, 8
	sltu	$a5, $s0, $a5
	sltu	$a4, $a2, $a4
	and	$a4, $a5, $a4
	bnez	$a4, .LBB1_59
# %bb.127:                              # %vector.main.loop.iter.check440
	ori	$a3, $zero, 17
	bge	$t5, $a3, .LBB1_265
# %bb.128:
	move	$a4, $zero
	b	.LBB1_269
.LBB1_129:                              # %vector.memcheck27
	addi.d	$a2, $s6, 4
	alsl.d	$a3, $a0, $s6, 2
	ld.d	$t1, $sp, 464                   # 8-byte Folded Reload
	addi.d	$a4, $t1, 4
	sltu	$a4, $a2, $a4
	sltu	$a5, $t1, $a3
	and	$a4, $a4, $a5
	ld.d	$t4, $sp, 304                   # 8-byte Folded Reload
	bnez	$a4, .LBB1_272
# %bb.130:                              # %vector.memcheck27
	ld.d	$a5, $sp, 560                   # 8-byte Folded Reload
	alsl.d	$a4, $a0, $a5, 2
	addi.d	$a4, $a4, -4
	sltu	$a2, $a2, $a4
	sltu	$a3, $a5, $a3
	and	$a2, $a2, $a3
	ld.d	$t2, $sp, 568                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 472                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 440                   # 8-byte Folded Reload
	bnez	$a2, .LBB1_21
# %bb.131:                              # %vector.main.loop.iter.check
	ori	$a2, $zero, 16
	bgeu	$a1, $a2, .LBB1_273
# %bb.132:
	move	$a2, $zero
	b	.LBB1_277
.LBB1_133:                              # %vector.memcheck60
	addi.d	$a4, $s1, 4
	addi.d	$a5, $t5, 4
	sltu	$a5, $a4, $a5
	sltu	$a6, $t5, $a2
	and	$a5, $a5, $a6
	bnez	$a5, .LBB1_24
# %bb.134:                              # %vector.memcheck60
	alsl.d	$a5, $a0, $s7, 2
	addi.d	$a5, $a5, -4
	sltu	$a4, $a4, $a5
	sltu	$a5, $s7, $a2
	and	$a4, $a4, $a5
	bnez	$a4, .LBB1_24
# %bb.135:                              # %vector.main.loop.iter.check77
	ori	$a3, $zero, 17
	bge	$t7, $a3, .LBB1_280
# %bb.136:
	move	$a4, $zero
	b	.LBB1_284
.LBB1_137:                              # %vector.memcheck112
	alsl.d	$a4, $a0, $t3, 2
	addi.d	$a2, $a2, -4
	sltu	$a2, $s0, $a2
	sltu	$a5, $s1, $a4
	and	$a2, $a2, $a5
	bnez	$a2, .LBB1_27
# %bb.138:                              # %vector.memcheck112
	addi.d	$a2, $t1, 8
	sltu	$a2, $s0, $a2
	sltu	$a4, $t8, $a4
	and	$a2, $a2, $a4
	bnez	$a2, .LBB1_27
# %bb.139:                              # %vector.main.loop.iter.check129
	ori	$a2, $zero, 17
	bge	$t7, $a2, .LBB1_287
# %bb.140:
	move	$a2, $zero
	b	.LBB1_291
.LBB1_141:                              # %if.then555
	ld.d	$s6, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	beqz	$s7, .LBB1_220
# %bb.142:                              # %if.else
	ld.d	$s2, $sp, 248                   # 8-byte Folded Reload
	blt	$t0, $s7, .LBB1_221
# %bb.143:                              # %if.else565
	ld.d	$t0, $sp, 408                   # 8-byte Folded Reload
	slli.d	$a0, $t0, 2
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ldx.w	$t4, $a1, $a0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ldx.w	$t3, $a1, $a0
	move	$s2, $s0
	b	.LBB1_221
.LBB1_144:
	movgr2fr.w	$fs0, $zero
	move	$a4, $t1
.LBB1_145:                              # %for.end161.i
	ld.d	$s0, $sp, 480                   # 8-byte Folded Reload
	add.w	$fp, $a4, $s0
	addi.w	$s1, $fp, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	move	$t0, $a0
	ld.d	$s2, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 472                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 536                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 408                   # 8-byte Folded Reload
	blt	$a0, $a1, .LBB1_170
# %bb.146:                              # %for.body.preheader.i.i
	ori	$a2, $zero, 4
	ld.d	$a3, $sp, 400                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a3, 31, 0
	bgeu	$a3, $a2, .LBB1_165
# %bb.147:
	move	$a2, $zero
	b	.LBB1_168
.LBB1_148:                              # %vector.memcheck319
	ld.d	$a3, $sp, 560                   # 8-byte Folded Reload
	addi.d	$a1, $a3, 4
	alsl.d	$a3, $a0, $a3, 2
	addi.d	$a4, $s3, 4
	sltu	$a4, $a1, $a4
	sltu	$a5, $s3, $a3
	and	$a4, $a4, $a5
	bnez	$a4, .LBB1_52
# %bb.149:                              # %vector.memcheck319
	ld.d	$a5, $sp, 512                   # 8-byte Folded Reload
	alsl.d	$a4, $a0, $a5, 2
	addi.d	$a4, $a4, -4
	sltu	$a1, $a1, $a4
	sltu	$a3, $a5, $a3
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_52
# %bb.150:                              # %vector.main.loop.iter.check336
	ori	$a2, $zero, 17
	addi.d	$a1, $a0, -1
	bge	$t4, $a2, .LBB1_294
# %bb.151:
	move	$a3, $zero
	b	.LBB1_298
.LBB1_152:                              # %vector.memcheck161
	alsl.d	$a2, $s3, $s5, 2
	add.d	$a1, $a5, $s3
	slli.d	$a1, $a1, 2
	addi.d	$a3, $a1, 4
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a3
	sltu	$a1, $s5, $a1
	sltu	$a4, $a0, $a2
	and	$a4, $a1, $a4
	move	$a1, $zero
	bnez	$a4, .LBB1_75
# %bb.153:                              # %vector.memcheck161
	add.d	$a3, $a6, $a3
	sltu	$a3, $s5, $a3
	ld.d	$a4, $sp, 320                   # 8-byte Folded Reload
	sltu	$a2, $a4, $a2
	and	$a2, $a3, $a2
	bnez	$a2, .LBB1_75
# %bb.154:                              # %vector.main.loop.iter.check177
	ori	$a1, $zero, 16
	bgeu	$s3, $a1, .LBB1_301
# %bb.155:
	move	$a1, $zero
	b	.LBB1_305
.LBB1_156:                              # %vector.memcheck210
	alsl.d	$a3, $a1, $t6, 2
	ld.d	$a6, $sp, 384                   # 8-byte Folded Reload
	add.d	$a2, $a6, $t0
	ld.d	$a4, $sp, 304                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a4, 2
	addi.d	$a2, $a2, 4
	sltu	$a2, $t6, $a2
	sltu	$a4, $a0, $a3
	and	$a4, $a2, $a4
	move	$a2, $zero
	bnez	$a4, .LBB1_80
# %bb.157:                              # %vector.memcheck210
	ld.d	$a4, $sp, 424                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 4
	alsl.d	$a5, $a1, $a4, 2
	sltu	$a5, $t6, $a5
	sltu	$a3, $a4, $a3
	and	$a3, $a5, $a3
	bnez	$a3, .LBB1_80
# %bb.158:                              # %vector.main.loop.iter.check227
	ori	$a2, $zero, 16
	bge	$t0, $a2, .LBB1_308
# %bb.159:
	move	$a2, $zero
	b	.LBB1_312
.LBB1_160:                              # %vector.memcheck260
	bstrpick.d	$a4, $a4, 31, 0
	slli.d	$a4, $a4, 2
	ld.d	$a5, $sp, 488                   # 8-byte Folded Reload
	sub.d	$a5, $a5, $a4
	add.d	$a4, $a5, $t1
	addi.d	$a4, $a4, -4
	alsl.d	$a6, $t0, $t1, 2
	add.d	$a5, $t6, $a5
	alsl.d	$a7, $t0, $t6, 2
	addi.d	$a7, $a7, 4
	sltu	$a7, $a4, $a7
	sltu	$a5, $a5, $a6
	and	$a5, $a7, $a5
	bnez	$a5, .LBB1_83
# %bb.161:                              # %vector.memcheck260
	sltu	$a0, $a4, $a0
	sltu	$a4, $a2, $a6
	and	$a4, $a0, $a4
	move	$a0, $t0
	bnez	$a4, .LBB1_84
# %bb.162:                              # %vector.ph276
	bstrpick.d	$a0, $a3, 31, 0
	addi.d	$a3, $a0, 1
	bstrpick.d	$a0, $a3, 32, 3
	slli.d	$a4, $a0, 3
	sub.d	$a0, $t0, $a4
	xvreplgr2vr.w	$xr0, $s3
	xvldrepl.w	$xr1, $a2, 0
	ld.d	$a5, $sp, 488                   # 8-byte Folded Reload
	addi.d	$a7, $a5, -28
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	add.d	$a5, $a5, $a7
	addi.d	$a6, $a6, -32
	add.d	$a7, $t6, $a7
	move	$t0, $a4
	.p2align	4, , 16
.LBB1_163:                              # %vector.body281
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a7, 0
	xvfadd.s	$xr2, $xr2, $xr1
	xvst	$xr2, $a6, 0
	xvst	$xr0, $a5, 0
	addi.d	$t0, $t0, -8
	addi.d	$a5, $a5, -32
	addi.d	$a6, $a6, -32
	addi.d	$a7, $a7, -32
	bnez	$t0, .LBB1_163
# %bb.164:                              # %middle.block290
	ld.d	$t0, $sp, 472                   # 8-byte Folded Reload
	bne	$a3, $a4, .LBB1_84
	b	.LBB1_86
.LBB1_165:                              # %vector.ph474
	pcalau12i	$a2, %pc_hi20(.LCPI1_1)
	vld	$vr0, $a2, %pc_lo12(.LCPI1_1)
	bstrpick.d	$a2, $a0, 31, 2
	slli.d	$a2, $a2, 2
	ld.d	$a3, $sp, 552                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 16
	move	$a4, $a2
	.p2align	4, , 16
.LBB1_166:                              # %vector.body477
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
	bnez	$a4, .LBB1_166
# %bb.167:                              # %middle.block482
	beq	$a2, $a0, .LBB1_170
.LBB1_168:                              # %for.body.i.i.preheader
	ld.d	$a3, $sp, 552                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a3, 3
	sub.d	$a0, $a0, $a2
	addi.d	$a2, $a2, 1
	.p2align	4, , 16
.LBB1_169:                              # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a3, 0
	st.w	$a2, $a4, 0
	addi.d	$a3, $a3, 8
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 1
	bnez	$a0, .LBB1_169
.LBB1_170:                              # %iter.check488
	ld.d	$a0, $sp, 552                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ori	$a3, $zero, 1
	bstrpick.d	$a2, $a7, 31, 0
	ld.d	$ra, $sp, 568                   # 8-byte Folded Reload
	bltu	$a3, $a6, .LBB1_172
# %bb.171:
	move	$a3, $zero
	b	.LBB1_181
.LBB1_172:                              # %vector.main.loop.iter.check490
	ori	$a3, $zero, 14
	bgeu	$a6, $a3, .LBB1_174
# %bb.173:
	move	$a3, $zero
	b	.LBB1_178
.LBB1_174:                              # %vector.ph491
	bstrpick.d	$a3, $a2, 31, 4
	slli.d	$a3, $a3, 4
	pcalau12i	$a4, %pc_hi20(.LCPI1_2)
	xvld	$xr0, $a4, %pc_lo12(.LCPI1_2)
	addi.d	$a4, $a0, 32
	xvrepli.b	$xr1, -1
	xvrepli.w	$xr2, -9
	move	$a5, $a3
	.p2align	4, , 16
.LBB1_175:                              # %vector.body494
                                        # =>This Inner Loop Header: Depth=1
	xvxor.v	$xr3, $xr0, $xr1
	xvsub.w	$xr4, $xr2, $xr0
	xvst	$xr3, $a4, -32
	xvst	$xr4, $a4, 0
	xvaddi.wu	$xr0, $xr0, 16
	addi.d	$a5, $a5, -16
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB1_175
# %bb.176:                              # %middle.block500
	beq	$a3, $a2, .LBB1_183
# %bb.177:                              # %vec.epilog.iter.check505
	andi	$a4, $a2, 12
	beqz	$a4, .LBB1_181
.LBB1_178:                              # %vec.epilog.ph504
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
.LBB1_179:                              # %vec.epilog.vector.body512
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr2, $vr0, $vr1
	vst	$vr2, $a5, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 16
	bnez	$a4, .LBB1_179
# %bb.180:                              # %vec.epilog.middle.block517
	beq	$a3, $a2, .LBB1_183
.LBB1_181:                              # %for.body14.i.i.preheader
	alsl.d	$a0, $a3, $a0, 2
	nor	$a4, $a3, $zero
	sub.d	$a2, $a2, $a3
	.p2align	4, , 16
.LBB1_182:                              # %for.body14.i.i
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a4, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $a2, -1
	addi.d	$a4, $a4, -1
	bnez	$a2, .LBB1_182
.LBB1_183:                              # %for.end22.i.i
	st.d	$s7, $sp, 536                   # 8-byte Folded Spill
	add.d	$a0, $s7, $s0
	add.d	$s8, $a0, $ra
	stx.b	$zero, $a0, $ra
	st.d	$t0, $sp, 512                   # 8-byte Folded Spill
	add.d	$a0, $t0, $s0
	add.d	$s7, $a0, $ra
	stx.b	$zero, $a0, $ra
	bltz	$fp, .LBB1_212
# %bb.184:                              # %for.body32.i.i.preheader
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
.LBB1_185:                              # %for.body32.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_191 Depth 2
                                        #     Child Loop BB1_202 Depth 2
                                        #     Child Loop BB1_198 Depth 2
                                        #     Child Loop BB1_207 Depth 2
	slli.d	$a6, $s0, 3
	ld.d	$t0, $sp, 552                   # 8-byte Folded Reload
	ldx.d	$a6, $t0, $a6
	slli.d	$t0, $ra, 2
	ldx.w	$t0, $a6, $t0
	bge	$a1, $t0, .LBB1_193
# %bb.186:                              # %if.else.i.i
                                        #   in Loop: Header=BB1_185 Depth=1
	beqz	$t0, .LBB1_211
# %bb.187:                              # %if.then49.i.i
                                        #   in Loop: Header=BB1_185 Depth=1
	sub.w	$a6, $s0, $t0
	move	$t0, $a1
	nor	$t1, $a6, $zero
	add.w	$t2, $s0, $t1
	beqz	$t2, .LBB1_194
.LBB1_188:                              # %while.body.i.i.preheader
                                        #   in Loop: Header=BB1_185 Depth=1
	bltu	$t2, $a5, .LBB1_200
# %bb.189:                              # %while.body.i.i.preheader
                                        #   in Loop: Header=BB1_185 Depth=1
	sub.d	$t3, $s8, $s7
	bltu	$t3, $a5, .LBB1_200
# %bb.190:                              # %vector.ph547
                                        #   in Loop: Header=BB1_185 Depth=1
	move	$s1, $s0
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
.LBB1_191:                              # %vector.body551
                                        #   Parent Loop BB1_185 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr3, $t7, 0
	xvst	$xr4, $t8, 0
	addi.d	$s0, $s0, -32
	addi.d	$t7, $t7, -32
	addi.d	$t8, $t8, -32
	bnez	$s0, .LBB1_191
# %bb.192:                              # %middle.block558
                                        #   in Loop: Header=BB1_185 Depth=1
	move	$s0, $s1
	bne	$t6, $t5, .LBB1_201
	b	.LBB1_203
	.p2align	4, , 16
.LBB1_193:                              # %if.then.i.i
                                        #   in Loop: Header=BB1_185 Depth=1
	addi.w	$a6, $s0, -1
	nor	$t1, $a6, $zero
	add.w	$t2, $s0, $t1
	bnez	$t2, .LBB1_188
	.p2align	4, , 16
.LBB1_194:                              # %while.end.i.i
                                        #   in Loop: Header=BB1_185 Depth=1
	beq	$t0, $a1, .LBB1_204
.LBB1_195:                              # %while.body67.preheader.i.i
                                        #   in Loop: Header=BB1_185 Depth=1
	addi.w	$t1, $zero, -17
	nor	$t4, $t0, $zero
	bltu	$t1, $t0, .LBB1_205
# %bb.196:                              # %while.body67.preheader.i.i
                                        #   in Loop: Header=BB1_185 Depth=1
	sub.d	$t1, $s8, $s7
	bltu	$t1, $a4, .LBB1_205
# %bb.197:                              # %vector.ph526
                                        #   in Loop: Header=BB1_185 Depth=1
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
.LBB1_198:                              # %vector.body529
                                        #   Parent Loop BB1_185 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr1, $a7, -8
	vst	$vr2, $t6, -8
	xvaddi.wu	$xr5, $xr5, 1
	xvaddi.wu	$xr6, $xr6, 1
	addi.d	$t7, $t7, -16
	addi.d	$a7, $a7, -16
	addi.d	$t6, $t6, -16
	bnez	$t7, .LBB1_198
# %bb.199:                              # %middle.block536
                                        #   in Loop: Header=BB1_185 Depth=1
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
	bne	$t5, $t4, .LBB1_206
	b	.LBB1_208
	.p2align	4, , 16
.LBB1_200:                              #   in Loop: Header=BB1_185 Depth=1
	move	$t3, $s7
	move	$t4, $s8
.LBB1_201:                              # %while.body.i.i.preheader567
                                        #   in Loop: Header=BB1_185 Depth=1
	move	$t5, $t3
	move	$t6, $t4
	.p2align	4, , 16
.LBB1_202:                              # %while.body.i.i
                                        #   Parent Loop BB1_185 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t4, $t6, -1
	st.b	$a2, $t6, -1
	addi.d	$t3, $t5, -1
	addi.w	$t2, $t2, -1
	st.b	$a3, $t5, -1
	move	$t5, $t3
	move	$t6, $t4
	bnez	$t2, .LBB1_202
.LBB1_203:                              # %while.end.loopexit.i.i
                                        #   in Loop: Header=BB1_185 Depth=1
	add.d	$a7, $s0, $a7
	add.d	$a7, $t1, $a7
	move	$s8, $t4
	move	$s7, $t3
	bne	$t0, $a1, .LBB1_195
.LBB1_204:                              #   in Loop: Header=BB1_185 Depth=1
	move	$t2, $s8
	move	$t1, $s7
	bge	$s0, $a0, .LBB1_209
	b	.LBB1_213
	.p2align	4, , 16
.LBB1_205:                              #   in Loop: Header=BB1_185 Depth=1
	move	$t3, $t4
	move	$t1, $s7
	move	$t2, $s8
.LBB1_206:                              # %while.body67.i.i.preheader
                                        #   in Loop: Header=BB1_185 Depth=1
	add.d	$a7, $a7, $t3
	.p2align	4, , 16
.LBB1_207:                              # %while.body67.i.i
                                        #   Parent Loop BB1_185 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a3, $t2, -1
	addi.d	$t2, $t2, -1
	st.b	$a2, $t1, -1
	addi.w	$t3, $t3, -1
	addi.d	$t1, $t1, -1
	bnez	$t3, .LBB1_207
.LBB1_208:                              # %while.end71.i.i
                                        #   in Loop: Header=BB1_185 Depth=1
	blt	$s0, $a0, .LBB1_213
.LBB1_209:                              # %while.end71.i.i
                                        #   in Loop: Header=BB1_185 Depth=1
	blt	$ra, $a0, .LBB1_213
# %bb.210:                              # %if.end75.i.i
                                        #   in Loop: Header=BB1_185 Depth=1
	add.w	$ra, $t0, $ra
	addi.d	$s8, $t2, -1
	st.b	$a2, $t2, -1
	addi.d	$s7, $t1, -1
	addi.w	$a7, $a7, 2
	st.b	$a2, $t1, -1
	move	$s0, $a6
	bge	$fp, $a7, .LBB1_185
	b	.LBB1_212
	.p2align	4, , 16
.LBB1_211:                              # %if.else56.i.i
                                        #   in Loop: Header=BB1_185 Depth=1
	addi.w	$a6, $s0, -1
	move	$t0, $a1
	nor	$t1, $a6, $zero
	add.w	$t2, $s0, $t1
	bnez	$t2, .LBB1_188
	b	.LBB1_194
.LBB1_212:                              # %for.end81.i.i
	ori	$fp, $zero, 1
	bge	$s5, $fp, .LBB1_214
	b	.LBB1_216
.LBB1_213:
	move	$s8, $t2
	move	$s7, $t1
	ori	$fp, $zero, 1
	blt	$s5, $fp, .LBB1_216
.LBB1_214:                              # %for.body84.lr.ph.i.i
	ld.d	$s0, $sp, 256                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_215:                              # %for.body84.i.i
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
	bnez	$s5, .LBB1_215
.LBB1_216:                              # %for.cond94.preheader.i.i
	ld.d	$s0, $sp, 384                   # 8-byte Folded Reload
	blt	$s2, $fp, .LBB1_219
# %bb.217:                              # %for.body96.lr.ph.i.i
	ld.d	$fp, $sp, 168                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_218:                              # %for.body96.i.i
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
	bnez	$s2, .LBB1_218
.LBB1_219:                              # %MSalignmm_tanni.exit
	ld.d	$a0, $sp, 536                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 512                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 560                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 544                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 528                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 520                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 552                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 168                   # 8-byte Folded Reload
	b	.LBB1_256
.LBB1_220:                              # %if.then558
	move	$t0, $zero
	ld.d	$t4, $sp, 536                   # 8-byte Folded Reload
	addi.w	$s2, $t4, -1
	ori	$t3, $zero, 1
.LBB1_221:                              # %for.end575
	st.d	$t4, $sp, 544                   # 8-byte Folded Spill
	st.d	$t3, $sp, 568                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	move	$fp, $t0
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 512                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 528                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 520                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a6, $sp, 376                   # 8-byte Folded Reload
	st.d	$s2, $sp, 248                   # 8-byte Folded Spill
	add.w	$a7, $s2, $a6
	ld.d	$a1, $sp, 384                   # 8-byte Folded Reload
	add.w	$a0, $fp, $a1
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	st.d	$a2, $sp, 40
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	st.d	$a2, $sp, 32
	ld.d	$s7, $sp, 168                   # 8-byte Folded Reload
	st.d	$s7, $sp, 24
	st.d	$s5, $sp, 16
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 0
	ld.d	$s2, $sp, 368                   # 8-byte Folded Reload
	move	$a0, $s2
	move	$a1, $s6
	move	$a2, $s1
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	move	$a4, $s3
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(MSalignmm_rec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s1, $a0, 0
	fmov.s	$fs0, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	nor	$a1, $fp, $zero
	ld.d	$a2, $sp, 568                   # 8-byte Folded Reload
	add.w	$s0, $a2, $a1
	ori	$s8, $zero, 1
	blt	$s0, $s8, .LBB1_229
# %bb.222:                              # %for.body590.preheader
	move	$s5, $a0
	ori	$a1, $zero, 45
	move	$a0, $s4
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	stx.b	$zero, $s4, $s0
	add.w	$s1, $s0, $s5
	blt	$s2, $s8, .LBB1_225
# %bb.223:                              # %for.body601.lr.ph
	ld.d	$s2, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 288                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_224:                              # %for.body601
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	stx.b	$zero, $a0, $s1
	addi.d	$s2, $s2, -1
	addi.d	$s3, $s3, 8
	bnez	$s2, .LBB1_224
.LBB1_225:                              # %for.cond613.preheader
	ori	$a0, $zero, 1
	ld.d	$s5, $sp, 384                   # 8-byte Folded Reload
	move	$a2, $fp
	blt	$s6, $a0, .LBB1_228
# %bb.226:                              # %for.body616.lr.ph
	move	$s2, $s6
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_227:                              # %for.body616
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s4, 0
	ld.d	$a0, $s3, 0
	add.d	$a1, $a1, $s5
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(strncat)
	jirl	$ra, $ra, 0
	move	$a2, $fp
	ld.d	$a0, $s3, 0
	stx.b	$zero, $a0, $s1
	addi.d	$s4, $s4, 8
	addi.d	$s2, $s2, -1
	addi.d	$s3, $s3, 8
	bnez	$s2, .LBB1_227
.LBB1_228:                              # %for.end635
	ori	$fp, $zero, 1
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	alsl.d	$a0, $a2, $a0, 2
	fld.s	$fa0, $a0, 4
	ld.d	$a0, $sp, 568                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 416                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 2
	fld.s	$fa1, $a0, -4
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s1, $a0, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fs0, $fs0, $fa0
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	b	.LBB1_230
.LBB1_229:
	ori	$fp, $zero, 1
.LBB1_230:                              # %if.end644
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 248                   # 8-byte Folded Reload
	nor	$a1, $s8, $zero
	ld.d	$a2, $sp, 544                   # 8-byte Folded Reload
	add.w	$s0, $a2, $a1
	ld.d	$s5, $sp, 240                   # 8-byte Folded Reload
	blt	$s0, $fp, .LBB1_238
# %bb.231:                              # %for.body656.preheader
	move	$s1, $a0
	ori	$a1, $zero, 45
	move	$a0, $s4
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	stx.b	$zero, $s4, $s0
	ori	$a1, $zero, 1
	add.w	$fp, $s0, $s1
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 288                   # 8-byte Folded Reload
	blt	$a0, $a1, .LBB1_234
# %bb.232:                              # %for.body667.lr.ph
	ld.d	$s1, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_233:                              # %for.body667
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s3, 0
	ld.d	$a0, $s2, 0
	add.d	$a1, $a1, $s4
	add.d	$a1, $a1, $s8
	addi.d	$a1, $a1, 1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(strncat)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	stx.b	$zero, $a0, $fp
	addi.d	$s3, $s3, 8
	addi.d	$s1, $s1, -1
	addi.d	$s2, $s2, 8
	bnez	$s1, .LBB1_233
.LBB1_234:                              # %for.cond687.preheader
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ori	$a0, $zero, 1
	blt	$s6, $a0, .LBB1_237
# %bb.235:                              # %for.body690.lr.ph
	move	$s0, $s6
	.p2align	4, , 16
.LBB1_236:                              # %for.body690
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s5, 0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	stx.b	$zero, $a0, $fp
	addi.d	$s0, $s0, -1
	addi.d	$s5, $s5, 8
	bnez	$s0, .LBB1_236
.LBB1_237:                              # %for.end701
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 2
	fld.s	$fa0, $a0, 4
	ld.d	$a0, $sp, 544                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ld.d	$a1, $sp, 560                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 2
	fld.s	$fa1, $a0, -4
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fs0, $fs0, $fa0
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	b	.LBB1_239
.LBB1_238:
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
.LBB1_239:                              # %if.end710
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	addi.w	$a0, $a0, 0
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 568                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	blt	$a2, $a1, .LBB1_247
# %bb.240:                              # %for.body717.lr.ph
	ori	$a2, $zero, 8
	ld.d	$a3, $sp, 368                   # 8-byte Folded Reload
	bgeu	$a3, $a2, .LBB1_242
# %bb.241:
	move	$a2, $zero
	b	.LBB1_245
.LBB1_242:                              # %vector.ph295
	bstrpick.d	$a2, $a3, 30, 3
	slli.d	$a2, $a2, 3
	addi.d	$a3, $fp, 32
	xvreplgr2vr.d	$xr0, $a0
	move	$a4, $a2
	.p2align	4, , 16
.LBB1_243:                              # %vector.body298
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a3, -32
	xvld	$xr2, $a3, 0
	xvadd.d	$xr1, $xr1, $xr0
	xvadd.d	$xr2, $xr2, $xr0
	xvst	$xr1, $a3, -32
	xvst	$xr2, $a3, 0
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB1_243
# %bb.244:                              # %middle.block303
	ld.d	$a3, $sp, 368                   # 8-byte Folded Reload
	beq	$a2, $a3, .LBB1_247
.LBB1_245:                              # %for.body717.preheader
	alsl.d	$a3, $a2, $fp, 3
	ld.d	$a4, $sp, 368                   # 8-byte Folded Reload
	sub.d	$a2, $a4, $a2
	.p2align	4, , 16
.LBB1_246:                              # %for.body717
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a3, 0
	add.d	$a4, $a4, $a0
	st.d	$a4, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 8
	bnez	$a2, .LBB1_246
.LBB1_247:                              # %for.cond725.preheader
	ld.d	$a4, $sp, 544                   # 8-byte Folded Reload
	blt	$s6, $a1, .LBB1_255
# %bb.248:                              # %for.body728.lr.ph
	ori	$a1, $zero, 8
	bgeu	$s6, $a1, .LBB1_250
# %bb.249:
	move	$a1, $zero
	b	.LBB1_253
.LBB1_250:                              # %vector.ph308
	bstrpick.d	$a1, $s6, 30, 3
	slli.d	$a1, $a1, 3
	addi.d	$a2, $s7, 32
	xvreplgr2vr.d	$xr0, $a0
	move	$a3, $a1
	.p2align	4, , 16
.LBB1_251:                              # %vector.body311
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a2, -32
	xvld	$xr2, $a2, 0
	xvadd.d	$xr1, $xr1, $xr0
	xvadd.d	$xr2, $xr2, $xr0
	xvst	$xr1, $a2, -32
	xvst	$xr2, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB1_251
# %bb.252:                              # %middle.block316
	beq	$a1, $s6, .LBB1_255
.LBB1_253:                              # %for.body728.preheader
	alsl.d	$a2, $a1, $s7, 3
	sub.d	$a1, $s6, $a1
	.p2align	4, , 16
.LBB1_254:                              # %for.body728
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	add.d	$a3, $a3, $a0
	st.d	$a3, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB1_254
.LBB1_255:                              # %for.end735
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	add.w	$a6, $a4, $a0
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	add.w	$a0, $a7, $a0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.d	$a1, $sp, 40
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.d	$a1, $sp, 32
	st.d	$s7, $sp, 24
	st.d	$fp, $sp, 16
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.d	$a1, $sp, 8
	st.d	$a0, $sp, 0
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	move	$a1, $s6
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	move	$a4, $s3
	move	$a7, $s1
	pcaddu18i	$ra, %call36(MSalignmm_rec)
	jirl	$ra, $ra, 0
	fadd.s	$fs0, $fs0, $fa0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_256:                              # %common.ret.sink.split
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_257:                              # %common.ret
	fmov.s	$fa0, $fs0
	fld.d	$fs0, $sp, 576                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 584                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 592                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 600                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 608                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 616                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 624                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 632                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 640                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 648                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 656                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 664                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 672
	ret
.LBB1_258:                              # %vector.ph389
	move	$a2, $a1
	xvldrepl.w	$xr0, $s6, 0
	bstrins.d	$a2, $zero, 3, 0
	addi.d	$a3, $t8, 36
	addi.d	$a4, $s8, 32
	move	$a5, $a2
	.p2align	4, , 16
.LBB1_259:                              # %vector.body392
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a4, -32
	xvld	$xr2, $a4, 0
	xvld	$xr3, $a3, -32
	xvld	$xr4, $a3, 0
	xvfadd.s	$xr1, $xr0, $xr1
	xvfadd.s	$xr2, $xr0, $xr2
	xvfadd.s	$xr1, $xr3, $xr1
	xvfadd.s	$xr2, $xr4, $xr2
	xvst	$xr1, $a3, -32
	xvst	$xr2, $a3, 0
	addi.d	$a3, $a3, 64
	addi.d	$a5, $a5, -16
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB1_259
# %bb.260:                              # %middle.block401
	beq	$a1, $a2, .LBB1_58
# %bb.261:                              # %vec.epilog.iter.check406
	andi	$a3, $a1, 12
	beqz	$a3, .LBB1_315
.LBB1_262:                              # %vec.epilog.ph405
	move	$a3, $a1
	bstrins.d	$a3, $zero, 1, 0
	ori	$a4, $zero, 1
	move	$fp, $a1
	bstrins.d	$fp, $a4, 1, 0
	vldrepl.w	$vr0, $s6, 0
	slli.d	$a5, $a2, 2
	alsl.d	$a4, $a2, $t8, 2
	addi.d	$a4, $a4, 4
	ld.d	$a6, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a5, $a6, $a5, 2
	add.d	$a5, $a7, $a5
	sub.d	$a2, $a2, $a3
	.p2align	4, , 16
.LBB1_263:                              # %vec.epilog.vector.body411
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a5, 0
	vld	$vr2, $a4, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $a4, 0
	addi.d	$a4, $a4, 16
	addi.d	$a2, $a2, 4
	addi.d	$a5, $a5, 16
	bnez	$a2, .LBB1_263
# %bb.264:                              # %vec.epilog.middle.block419
	bne	$a1, $a3, .LBB1_56
	b	.LBB1_58
.LBB1_265:                              # %vector.ph441
	move	$a4, $a1
	bstrins.d	$a4, $zero, 3, 0
	xvldrepl.w	$xr0, $a2, 0
	addi.d	$a3, $t8, 32
	addi.d	$a5, $t6, 36
	ld.d	$a6, $sp, 440                   # 8-byte Folded Reload
	addi.d	$a6, $a6, 36
	xvrepli.b	$xr1, 0
	move	$a7, $a4
	.p2align	4, , 16
.LBB1_266:                              # %vector.body444
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
	bnez	$a7, .LBB1_266
# %bb.267:                              # %middle.block451
	beq	$a1, $a4, .LBB1_61
# %bb.268:                              # %vec.epilog.iter.check456
	andi	$a3, $a1, 12
	beqz	$a3, .LBB1_316
.LBB1_269:                              # %vec.epilog.ph455
	move	$a5, $a1
	bstrins.d	$a5, $zero, 1, 0
	ori	$a6, $zero, 1
	move	$a3, $a1
	bstrins.d	$a3, $a6, 1, 0
	vldrepl.w	$vr0, $a2, 0
	slli.d	$a7, $a4, 2
	alsl.d	$a6, $a4, $t8, 2
	addi.d	$t0, $a7, 4
	add.d	$a7, $t6, $t0
	ld.d	$t3, $sp, 440                   # 8-byte Folded Reload
	add.d	$t0, $t3, $t0
	sub.d	$a4, $a4, $a5
	vrepli.b	$vr1, 0
	.p2align	4, , 16
.LBB1_270:                              # %vec.epilog.vector.body461
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a6, 0
	vfadd.s	$vr2, $vr2, $vr0
	vst	$vr2, $a7, 0
	vst	$vr1, $t0, 0
	addi.d	$a6, $a6, 16
	addi.d	$a7, $a7, 16
	addi.d	$a4, $a4, 4
	addi.d	$t0, $t0, 16
	bnez	$a4, .LBB1_270
# %bb.271:                              # %vec.epilog.middle.block468
	ld.d	$t0, $sp, 472                   # 8-byte Folded Reload
	bne	$a1, $a5, .LBB1_59
	b	.LBB1_61
.LBB1_272:
	ld.d	$t2, $sp, 568                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 472                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 440                   # 8-byte Folded Reload
	b	.LBB1_21
.LBB1_273:                              # %vector.ph38
	move	$a2, $a1
	xvldrepl.w	$xr0, $t1, 0
	bstrins.d	$a2, $zero, 3, 0
	addi.d	$a3, $s6, 36
	ld.d	$a4, $sp, 560                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 32
	move	$a5, $a2
	.p2align	4, , 16
.LBB1_274:                              # %vector.body41
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a4, -32
	xvld	$xr2, $a4, 0
	xvld	$xr3, $a3, -32
	xvld	$xr4, $a3, 0
	xvfadd.s	$xr1, $xr0, $xr1
	xvfadd.s	$xr2, $xr0, $xr2
	xvfadd.s	$xr1, $xr3, $xr1
	xvfadd.s	$xr2, $xr4, $xr2
	xvst	$xr1, $a3, -32
	xvst	$xr2, $a3, 0
	addi.d	$a3, $a3, 64
	addi.d	$a5, $a5, -16
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB1_274
# %bb.275:                              # %middle.block48
	beq	$a1, $a2, .LBB1_23
# %bb.276:                              # %vec.epilog.iter.check
	andi	$a3, $a1, 12
	beqz	$a3, .LBB1_317
.LBB1_277:                              # %vec.epilog.ph
	move	$a3, $a1
	bstrins.d	$a3, $zero, 1, 0
	ori	$a4, $zero, 1
	move	$s0, $a1
	bstrins.d	$s0, $a4, 1, 0
	vldrepl.w	$vr0, $t1, 0
	slli.d	$a5, $a2, 2
	alsl.d	$a4, $a2, $s6, 2
	addi.d	$a4, $a4, 4
	ld.d	$a6, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$a5, $a6, $a5, 2
	ld.d	$a6, $sp, 344                   # 8-byte Folded Reload
	add.d	$a5, $a6, $a5
	sub.d	$a2, $a2, $a3
	.p2align	4, , 16
.LBB1_278:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a5, 0
	vld	$vr2, $a4, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $a4, 0
	addi.d	$a4, $a4, 16
	addi.d	$a2, $a2, 4
	addi.d	$a5, $a5, 16
	bnez	$a2, .LBB1_278
# %bb.279:                              # %vec.epilog.middle.block
	bne	$a1, $a3, .LBB1_21
	b	.LBB1_23
.LBB1_280:                              # %vector.ph78
	move	$a4, $a1
	bstrins.d	$a4, $zero, 3, 0
	xvldrepl.w	$xr0, $t5, 0
	addi.d	$a3, $s1, 36
	ld.d	$a5, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a5, $a5, $t4, 2
	addi.d	$a5, $a5, 32
	move	$a6, $a4
	.p2align	4, , 16
.LBB1_281:                              # %vector.body81
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a5, -32
	xvld	$xr2, $a5, 0
	xvld	$xr3, $a3, -32
	xvld	$xr4, $a3, 0
	xvfadd.s	$xr1, $xr0, $xr1
	xvfadd.s	$xr2, $xr0, $xr2
	xvfadd.s	$xr1, $xr3, $xr1
	xvfadd.s	$xr2, $xr4, $xr2
	xvst	$xr1, $a3, -32
	xvst	$xr2, $a3, 0
	addi.d	$a3, $a3, 64
	addi.d	$a6, $a6, -16
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB1_281
# %bb.282:                              # %middle.block90
	beq	$a1, $a4, .LBB1_26
# %bb.283:                              # %vec.epilog.iter.check95
	andi	$a3, $a1, 12
	beqz	$a3, .LBB1_318
.LBB1_284:                              # %vec.epilog.ph94
	move	$a5, $a1
	bstrins.d	$a5, $zero, 1, 0
	ori	$a6, $zero, 1
	move	$a3, $a1
	bstrins.d	$a3, $a6, 1, 0
	vldrepl.w	$vr0, $t5, 0
	slli.d	$a7, $a4, 2
	alsl.d	$a6, $a4, $s1, 2
	addi.d	$a6, $a6, 4
	ld.d	$t8, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a7, $t8, $a7, 2
	add.d	$a7, $t4, $a7
	sub.d	$a4, $a4, $a5
	.p2align	4, , 16
.LBB1_285:                              # %vec.epilog.vector.body100
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a7, 0
	vld	$vr2, $a6, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $a6, 0
	addi.d	$a6, $a6, 16
	addi.d	$a4, $a4, 4
	addi.d	$a7, $a7, 16
	bnez	$a4, .LBB1_285
# %bb.286:                              # %vec.epilog.middle.block108
	bne	$a1, $a5, .LBB1_24
	b	.LBB1_26
.LBB1_287:                              # %vector.ph130
	move	$a2, $a1
	bstrins.d	$a2, $zero, 3, 0
	xvldrepl.w	$xr0, $t8, 0
	addi.d	$a3, $s1, 32
	addi.d	$a4, $t3, 36
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	addi.d	$a5, $a5, 36
	xvrepli.b	$xr1, 0
	move	$a6, $a2
	.p2align	4, , 16
.LBB1_288:                              # %vector.body133
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
	bnez	$a6, .LBB1_288
# %bb.289:                              # %middle.block140
	beq	$a1, $a2, .LBB1_29
# %bb.290:                              # %vec.epilog.iter.check145
	andi	$a3, $a1, 12
	beqz	$a3, .LBB1_319
.LBB1_291:                              # %vec.epilog.ph144
	move	$a4, $a1
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a3, $a1
	bstrins.d	$a3, $a5, 1, 0
	vldrepl.w	$vr0, $t8, 0
	slli.d	$a6, $a2, 2
	alsl.d	$a5, $a2, $s1, 2
	addi.d	$a7, $a6, 4
	add.d	$a6, $t3, $a7
	ld.d	$t4, $sp, 216                   # 8-byte Folded Reload
	add.d	$a7, $t4, $a7
	sub.d	$a2, $a2, $a4
	vrepli.b	$vr1, 0
	.p2align	4, , 16
.LBB1_292:                              # %vec.epilog.vector.body150
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a5, 0
	vfadd.s	$vr2, $vr2, $vr0
	vst	$vr2, $a6, 0
	vst	$vr1, $a7, 0
	addi.d	$a5, $a5, 16
	addi.d	$a6, $a6, 16
	addi.d	$a2, $a2, 4
	addi.d	$a7, $a7, 16
	bnez	$a2, .LBB1_292
# %bb.293:                              # %vec.epilog.middle.block157
	bne	$a1, $a4, .LBB1_27
	b	.LBB1_29
.LBB1_294:                              # %vector.ph337
	move	$a3, $a1
	xvldrepl.w	$xr0, $s3, 0
	bstrins.d	$a3, $zero, 3, 0
	ld.d	$a2, $sp, 560                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 36
	ld.d	$a4, $sp, 512                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 32
	move	$a5, $a3
	.p2align	4, , 16
.LBB1_295:                              # %vector.body340
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a4, -32
	xvld	$xr2, $a4, 0
	xvld	$xr3, $a2, -32
	xvld	$xr4, $a2, 0
	xvfadd.s	$xr1, $xr0, $xr1
	xvfadd.s	$xr2, $xr0, $xr2
	xvfadd.s	$xr1, $xr3, $xr1
	xvfadd.s	$xr2, $xr4, $xr2
	xvst	$xr1, $a2, -32
	xvst	$xr2, $a2, 0
	addi.d	$a2, $a2, 64
	addi.d	$a5, $a5, -16
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB1_295
# %bb.296:                              # %middle.block349
	beq	$a1, $a3, .LBB1_54
# %bb.297:                              # %vec.epilog.iter.check354
	andi	$a2, $a1, 12
	beqz	$a2, .LBB1_320
.LBB1_298:                              # %vec.epilog.ph353
	move	$a4, $a1
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a2, $a1
	bstrins.d	$a2, $a5, 1, 0
	vldrepl.w	$vr0, $s3, 0
	slli.d	$a6, $a3, 2
	ld.d	$a5, $sp, 560                   # 8-byte Folded Reload
	alsl.d	$a5, $a3, $a5, 2
	addi.d	$a5, $a5, 4
	ld.d	$a7, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$a6, $a7, $a6, 2
	ld.d	$a7, $sp, 456                   # 8-byte Folded Reload
	add.d	$a6, $a7, $a6
	sub.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB1_299:                              # %vec.epilog.vector.body359
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a6, 0
	vld	$vr2, $a5, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $a5, 0
	addi.d	$a5, $a5, 16
	addi.d	$a3, $a3, 4
	addi.d	$a6, $a6, 16
	bnez	$a3, .LBB1_299
# %bb.300:                              # %vec.epilog.middle.block367
	bne	$a1, $a4, .LBB1_52
	b	.LBB1_54
.LBB1_301:                              # %vector.ph178
	bstrpick.d	$a1, $s3, 30, 4
	xvldrepl.w	$xr0, $a0, 0
	slli.d	$a1, $a1, 4
	ld.d	$a2, $sp, 464                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 36
	addi.d	$a3, $s5, 32
	move	$a4, $a1
	.p2align	4, , 16
.LBB1_302:                              # %vector.body181
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
	bnez	$a4, .LBB1_302
# %bb.303:                              # %middle.block190
	beq	$a1, $s3, .LBB1_77
# %bb.304:                              # %vec.epilog.iter.check195
	andi	$a2, $s3, 12
	beqz	$a2, .LBB1_75
.LBB1_305:                              # %vec.epilog.ph194
	move	$a4, $a1
	bstrpick.d	$a1, $s3, 30, 2
	slli.d	$a1, $a1, 2
	vldrepl.w	$vr0, $a0, 0
	slli.d	$a2, $a4, 2
	alsl.d	$a2, $a5, $a2, 2
	add.d	$a2, $a2, $a6
	addi.d	$a2, $a2, 4
	sub.d	$a3, $a4, $a1
	alsl.d	$a4, $a4, $s5, 2
	.p2align	4, , 16
.LBB1_306:                              # %vec.epilog.vector.body200
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a2, 0
	vld	$vr2, $a4, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $a4, 0
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 16
	bnez	$a3, .LBB1_306
# %bb.307:                              # %vec.epilog.middle.block207
	bne	$a1, $s3, .LBB1_75
	b	.LBB1_77
.LBB1_308:                              # %vector.ph228
	bstrpick.d	$a2, $a1, 30, 4
	xvldrepl.w	$xr0, $a0, 0
	slli.d	$a2, $a2, 4
	ld.d	$a3, $sp, 424                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 36
	addi.d	$a4, $t6, 32
	move	$a5, $a2
	.p2align	4, , 16
.LBB1_309:                              # %vector.body231
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
	bnez	$a5, .LBB1_309
# %bb.310:                              # %middle.block240
	beq	$a2, $a1, .LBB1_82
# %bb.311:                              # %vec.epilog.iter.check245
	andi	$a3, $a1, 12
	beqz	$a3, .LBB1_80
.LBB1_312:                              # %vec.epilog.ph244
	move	$a5, $a2
	bstrpick.d	$a2, $a1, 30, 2
	slli.d	$a2, $a2, 2
	vldrepl.w	$vr0, $a0, 0
	slli.d	$a3, $a5, 2
	alsl.d	$a3, $a6, $a3, 2
	add.d	$a3, $a3, $t2
	addi.d	$a3, $a3, 4
	sub.d	$a4, $a5, $a2
	alsl.d	$a5, $a5, $t6, 2
	.p2align	4, , 16
.LBB1_313:                              # %vec.epilog.vector.body250
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a3, 0
	vld	$vr2, $a5, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $a5, 0
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 16
	bnez	$a4, .LBB1_313
# %bb.314:                              # %vec.epilog.middle.block257
	bne	$a2, $a1, .LBB1_80
	b	.LBB1_82
.LBB1_315:
	addi.d	$fp, $a2, 1
	b	.LBB1_56
.LBB1_316:
	addi.d	$a3, $a4, 1
	b	.LBB1_59
.LBB1_317:
	addi.d	$s0, $a2, 1
	b	.LBB1_21
.LBB1_318:
	addi.d	$a3, $a4, 1
	b	.LBB1_24
.LBB1_319:
	addi.d	$a3, $a2, 1
	b	.LBB1_27
.LBB1_320:
	addi.d	$a2, $a3, 1
	b	.LBB1_52
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
