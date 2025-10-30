	.file	"LambdaSubsetAbenchmarks.cxx"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.p2align	5                               # -- Begin function _ZL23BM_PRESSURE_CALC_LAMBDARN9benchmark5StateE
	.type	_ZL23BM_PRESSURE_CALC_LAMBDARN9benchmark5StateE,@function
_ZL23BM_PRESSURE_CALC_LAMBDARN9benchmark5StateE: # @_ZL23BM_PRESSURE_CALC_LAMBDARN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -160
	.cfi_def_cfa_offset 160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 8
	ld.d	$s2, $s0, 16
	ld.d	$s3, $s0, 24
	ld.d	$s4, $s0, 32
	ld.d	$s5, $s0, 40
	fld.d	$fa0, $s0, 384
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	fld.d	$fa0, $s0, 392
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	fld.d	$fa0, $s0, 400
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	fld.d	$fa0, $s0, 408
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	ld.w	$s6, $fp, 28
	ld.d	$s0, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	vld	$vr13, $sp, 16                  # 16-byte Folded Reload
	vld	$vr12, $sp, 32                  # 16-byte Folded Reload
	vld	$vr11, $sp, 48                  # 16-byte Folded Reload
	vld	$vr10, $sp, 64                  # 16-byte Folded Reload
	bnez	$s6, .LBB0_26
# %bb.1:                                # %entry
	beqz	$s0, .LBB0_26
# %bb.2:                                # %for.body.lr.ph
	ld.d	$a0, $fp, 32
	ld.d	$a3, $a0, 0
	addi.w	$a0, $a3, 0
	blez	$a0, .LBB0_26
# %bb.3:                                # %for.body.us.us.preheader
	bstrpick.d	$a0, $a3, 30, 0
	alsl.d	$a4, $a0, $s3, 3
	alsl.d	$a5, $a0, $s2, 3
	alsl.d	$a6, $a0, $s4, 3
	alsl.d	$a7, $a0, $s5, 3
	sub.d	$a1, $s2, $s1
	sltui	$a2, $a0, 4
	sltui	$a1, $a1, 32
	or	$a1, $a2, $a1
	bstrpick.d	$a2, $a3, 30, 2
	slli.d	$a2, $a2, 2
	vreplvei.d	$vr0, $vr10, 0
	sltu	$a5, $s3, $a5
	sltu	$t0, $s2, $a4
	and	$a5, $a5, $t0
	sltu	$a6, $s3, $a6
	sltu	$t0, $s4, $a4
	and	$a6, $a6, $t0
	or	$a5, $a5, $a6
	sltu	$a6, $s3, $a7
	sltu	$a4, $s5, $a4
	and	$a4, $a6, $a4
	or	$a6, $a5, $a4
	bstrpick.d	$a3, $a3, 30, 1
	slli.d	$a3, $a3, 1
	vreplvei.d	$vr1, $vr11, 0
	vreplvei.d	$vr2, $vr13, 0
	vreplvei.d	$vr3, $vr12, 0
	addi.d	$a4, $s2, 16
	addi.d	$a5, $s1, 16
	vldi	$vr4, -912
	sltui	$a7, $a0, 2
	or	$a6, $a7, $a6
	andi	$a6, $a6, 1
	movgr2fr.d	$fa5, $zero
	b	.LBB0_5
	.p2align	4, , 16
.LBB0_4:                                # %"for.cond.i24._Z6forallIZL23BM_PRESSURE_CALC_LAMBDARN9benchmark5StateEE3$_1Ev9simd_execiiT_.exit_crit_edge.us.us"
                                        #   in Loop: Header=BB0_5 Depth=1
	addi.d	$s0, $s0, -1
	beqz	$s0, .LBB0_26
.LBB0_5:                                # %for.body.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
                                        #     Child Loop BB0_11 Depth 2
                                        #     Child Loop BB0_16 Depth 2
                                        #     Child Loop BB0_24 Depth 2
	beqz	$a1, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	move	$t1, $zero
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_7:                                # %vector.body92.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$a7, $a5
	move	$t0, $a4
	move	$t1, $a2
	.p2align	4, , 16
.LBB0_8:                                # %vector.body92
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr6, $a7, -16
	vld	$vr7, $a7, 0
	vfadd.d	$vr6, $vr6, $vr4
	vfadd.d	$vr7, $vr7, $vr4
	vfmul.d	$vr6, $vr0, $vr6
	vfmul.d	$vr7, $vr0, $vr7
	vst	$vr6, $t0, -16
	vst	$vr7, $t0, 0
	addi.d	$t1, $t1, -4
	addi.d	$t0, $t0, 32
	addi.d	$a7, $a7, 32
	bnez	$t1, .LBB0_8
# %bb.9:                                # %middle.block97
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$t1, $a2
	beq	$a0, $a2, .LBB0_12
.LBB0_10:                               # %for.body.i.us.us.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	alsl.d	$a7, $t1, $s1, 3
	alsl.d	$t0, $t1, $s2, 3
	sub.d	$t1, $a0, $t1
	.p2align	4, , 16
.LBB0_11:                               # %for.body.i.us.us
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa6, $a7, 0
	fadd.d	$fa6, $fa6, $fa4
	fmul.d	$fa6, $ft2, $fa6
	fst.d	$fa6, $t0, 0
	addi.d	$a7, $a7, 8
	addi.d	$t1, $t1, -1
	addi.d	$t0, $t0, 8
	bnez	$t1, .LBB0_11
.LBB0_12:                               # %for.body.i27.us.us.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	beqz	$a6, .LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_5 Depth=1
	move	$t3, $zero
	b	.LBB0_21
	.p2align	4, , 16
.LBB0_14:                               # %vector.body.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$a7, $s2
	move	$t0, $s4
	move	$t1, $s5
	move	$t2, $a3
	move	$t3, $s3
	b	.LBB0_16
	.p2align	4, , 16
.LBB0_15:                               # %pred.store.continue83
                                        #   in Loop: Header=BB0_16 Depth=2
	addi.d	$t3, $t3, 16
	addi.d	$t2, $t2, -2
	addi.d	$t1, $t1, 16
	addi.d	$t0, $t0, 16
	addi.d	$a7, $a7, 16
	beqz	$t2, .LBB0_20
.LBB0_16:                               # %vector.body
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr6, $a7, 0
	vld	$vr7, $t0, 0
	vfmul.d	$vr6, $vr6, $vr7
	vld	$vr7, $t1, 0
	vbitclri.d	$vr8, $vr6, 63
	vfcmp.cule.d	$vr8, $vr1, $vr8
	vand.v	$vr9, $vr8, $vr6
	vfcmp.cle.d	$vr8, $vr2, $vr7
	vandn.v	$vr6, $vr8, $vr9
	vfcmp.clt.d	$vr7, $vr6, $vr3
	vor.v	$vr8, $vr8, $vr7
	vpickve2gr.d	$t4, $vr8, 0
	andi	$t4, $t4, 1
	vst	$vr9, $t3, 0
	beqz	$t4, .LBB0_18
# %bb.17:                               # %pred.store.if
                                        #   in Loop: Header=BB0_16 Depth=2
	vpickve2gr.d	$t4, $vr7, 0
	andi	$t4, $t4, 1
	vreplvei.d	$vr9, $vr6, 0
	movgr2cf	$fcc0, $t4
	fsel	$ft1, $ft1, $ft4, $fcc0
	fst.d	$ft1, $t3, 0
.LBB0_18:                               # %pred.store.continue
                                        #   in Loop: Header=BB0_16 Depth=2
	vpickve2gr.d	$t4, $vr8, 1
	andi	$t4, $t4, 1
	beqz	$t4, .LBB0_15
# %bb.19:                               # %pred.store.if82
                                        #   in Loop: Header=BB0_16 Depth=2
	vpickve2gr.d	$t4, $vr7, 1
	andi	$t4, $t4, 1
	vreplvei.d	$vr6, $vr6, 1
	movgr2cf	$fcc0, $t4
	fsel	$fa6, $fa6, $ft4, $fcc0
	fst.d	$fa6, $t3, 8
	b	.LBB0_15
	.p2align	4, , 16
.LBB0_20:                               # %middle.block
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$t3, $a3
	beq	$a0, $a3, .LBB0_4
.LBB0_21:                               # %for.body.i27.us.us.preheader100
                                        #   in Loop: Header=BB0_5 Depth=1
	alsl.d	$a7, $t3, $s2, 3
	alsl.d	$t0, $t3, $s4, 3
	alsl.d	$t1, $t3, $s3, 3
	alsl.d	$t2, $t3, $s5, 3
	sub.d	$t3, $a0, $t3
	b	.LBB0_24
	.p2align	4, , 16
.LBB0_22:                               #   in Loop: Header=BB0_24 Depth=2
	fcmp.clt.d	$fcc0, $fa6, $ft4
	fsel	$fa6, $fa6, $ft4, $fcc0
	fst.d	$fa6, $t1, 0
.LBB0_23:                               # %for.cond.i24.us.us
                                        #   in Loop: Header=BB0_24 Depth=2
	addi.d	$a7, $a7, 8
	addi.d	$t0, $t0, 8
	addi.d	$t1, $t1, 8
	addi.d	$t3, $t3, -1
	addi.d	$t2, $t2, 8
	beqz	$t3, .LBB0_4
.LBB0_24:                               # %for.body.i27.us.us
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa6, $a7, 0
	fld.d	$fa7, $t0, 0
	fmul.d	$fa6, $fa6, $fa7
	fabs.d	$fa7, $fa6
	fcmp.clt.d	$fcc0, $fa7, $ft3
	fsel	$fa6, $fa6, $fa5, $fcc0
	fst.d	$fa6, $t1, 0
	fld.d	$fa7, $t2, 0
	fcmp.cle.d	$fcc0, $ft5, $fa7
	fsel	$fa6, $fa6, $fa5, $fcc0
	bcnez	$fcc0, .LBB0_22
# %bb.25:                               # %for.body.i27.us.us
                                        #   in Loop: Header=BB0_24 Depth=2
	fcmp.cule.d	$fcc0, $ft4, $fa6
	bcnez	$fcc0, .LBB0_23
	b	.LBB0_22
.LBB0_26:                               # %for.cond.cleanup
	move	$a0, $fp
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
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.Lfunc_end0:
	.size	_ZL23BM_PRESSURE_CALC_LAMBDARN9benchmark5StateE, .Lfunc_end0-_ZL23BM_PRESSURE_CALC_LAMBDARN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZL21BM_ENERGY_CALC_LAMBDARN9benchmark5StateE
.LCPI1_0:
	.dword	0x3c18987cee7f439d              # double 3.333333E-19
.LCPI1_1:
	.dword	0x3842e7922a37d1a0              # double 1.1111110000000001E-37
	.text
	.p2align	5
	.type	_ZL21BM_ENERGY_CALC_LAMBDARN9benchmark5StateE,@function
_ZL21BM_ENERGY_CALC_LAMBDARN9benchmark5StateE: # @_ZL21BM_ENERGY_CALC_LAMBDARN9benchmark5StateE
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
	fst.d	$fs0, $sp, 416                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 408                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 400                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 392                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 384                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 376                  # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	.cfi_offset 57, -104
	.cfi_offset 58, -112
	.cfi_offset 59, -120
	.cfi_offset 60, -128
	.cfi_offset 61, -136
	move	$s0, $a0
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 3
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a0, $fp, 16
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a0, $fp, 24
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ld.d	$s4, $fp, 32
	ld.d	$s5, $fp, 40
	ld.d	$s6, $fp, 48
	ld.d	$s7, $fp, 56
	ld.d	$s8, $fp, 64
	ld.d	$s1, $fp, 72
	ld.d	$s2, $fp, 80
	ld.d	$a0, $fp, 88
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	ld.d	$a0, $fp, 96
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	ld.d	$a0, $fp, 104
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	ld.d	$a0, $fp, 112
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	ld.d	$a0, $fp, 120
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	fld.d	$fs0, $fp, 384
	fld.d	$fa0, $fp, 392
	vst	$vr0, $sp, 128                  # 16-byte Folded Spill
	fld.d	$fa0, $fp, 400
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	fld.d	$fs1, $fp, 408
	ld.w	$fp, $s0, 28
	ld.d	$s3, $s0, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	vld	$vr9, $sp, 112                  # 16-byte Folded Reload
	vld	$vr8, $sp, 128                  # 16-byte Folded Reload
	ld.d	$t8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 168                   # 8-byte Folded Reload
	move	$t5, $s0
	bnez	$fp, .LBB1_52
# %bb.1:                                # %entry
	beqz	$s3, .LBB1_52
# %bb.2:                                # %for.body.lr.ph
	move	$ra, $s4
	ld.d	$a0, $t5, 32
	ld.d	$a0, $a0, 0
	bstrpick.d	$s0, $a0, 30, 0
	alsl.d	$a1, $s0, $t6, 3
	alsl.d	$a2, $s0, $s8, 3
	alsl.d	$a3, $s0, $t8, 3
	alsl.d	$a4, $s0, $s5, 3
	alsl.d	$a5, $s0, $s7, 3
	alsl.d	$a6, $s0, $s2, 3
	st.d	$s5, $sp, 192                   # 8-byte Folded Spill
	alsl.d	$a7, $s0, $s6, 3
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	sub.d	$t0, $t6, $t7
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	sub.d	$t1, $t6, $t8
	st.d	$s7, $sp, 184                   # 8-byte Folded Spill
	ld.d	$t2, $sp, 192                   # 8-byte Folded Reload
	sub.d	$t2, $t6, $t2
	st.d	$s8, $sp, 176                   # 8-byte Folded Spill
	ld.d	$t3, $sp, 184                   # 8-byte Folded Reload
	sub.d	$t3, $t6, $t3
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	ld.d	$t4, $sp, 176                   # 8-byte Folded Reload
	sub.d	$t4, $t6, $t4
	sltui	$t0, $t0, 32
	sltui	$t1, $t1, 32
	or	$t0, $t0, $t1
	sltui	$t1, $t2, 32
	ld.d	$t2, $sp, 184                   # 8-byte Folded Reload
	or	$t0, $t0, $t1
	sltui	$t1, $t3, 32
	ld.d	$t3, $sp, 176                   # 8-byte Folded Reload
	or	$t0, $t0, $t1
	sltui	$t1, $t4, 32
	ld.d	$t4, $sp, 88                    # 8-byte Folded Reload
	or	$t0, $t0, $t1
	bstrpick.d	$t1, $a0, 30, 2
	slli.d	$t1, $t1, 2
	st.d	$t1, $sp, 320                   # 8-byte Folded Spill
	sltu	$a3, $t6, $a3
	sltu	$t1, $t8, $a1
	and	$a3, $a3, $t1
	sltu	$a4, $t6, $a4
	ld.d	$t1, $sp, 192                   # 8-byte Folded Reload
	sltu	$t1, $t1, $a1
	and	$a4, $a4, $t1
	ld.d	$t1, $sp, 104                   # 8-byte Folded Reload
	or	$a3, $a3, $a4
	sltu	$a4, $t6, $a5
	sltu	$a5, $t2, $a1
	and	$a4, $a4, $a5
	or	$a3, $a3, $a4
	sltu	$a4, $t6, $a6
	move	$a6, $s3
	sltu	$a5, $t4, $a1
	and	$a4, $a4, $a5
	or	$a3, $a3, $a4
	sltu	$a4, $t6, $a7
	ld.d	$a7, $sp, 192                   # 8-byte Folded Reload
	sltu	$a5, $t1, $a1
	and	$a4, $a4, $a5
	or	$a3, $a3, $a4
	st.d	$a3, $sp, 280                   # 8-byte Folded Spill
	bstrpick.d	$a3, $a0, 30, 1
	slli.d	$a3, $a3, 1
	st.d	$a3, $sp, 272                   # 8-byte Folded Spill
	sltu	$a2, $t6, $a2
	sltu	$a1, $t3, $a1
	and	$a1, $a2, $a1
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	vreplvei.d	$vr10, $vr8, 0
	vreplvei.d	$vr11, $vr9, 0
	addi.d	$a1, $t7, 16
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	addi.d	$a1, $t6, 16
	st.d	$a1, $sp, 256                   # 8-byte Folded Spill
	addi.d	$a1, $t8, 16
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	addi.d	$a1, $t3, 16
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	addi.d	$a1, $a7, 16
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	addi.d	$a1, $t2, 16
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	addi.w	$a0, $a0, 0
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	st.d	$s0, $sp, 336                   # 8-byte Folded Spill
	sltui	$a0, $s0, 4
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	or	$a0, $a0, $t0
	ld.d	$t0, $sp, 96                    # 8-byte Folded Reload
	andi	$a0, $a0, 1
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	vldi	$vr12, -800
	vldi	$vr13, -928
	movgr2fr.d	$fs2, $zero
	vldi	$vr14, -880
	vldi	$vr15, -1016
	vldi	$vr16, -864
	vldi	$vr17, -996
	vldi	$vr18, -872
	vldi	$vr19, -912
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_3:                                # %"_Z6forallIZL21BM_ENERGY_CALC_LAMBDARN9benchmark5StateEE3$_5Ev9simd_execiiT_.exit"
                                        #   in Loop: Header=BB1_4 Depth=1
	addi.d	$a6, $a6, -1
	beqz	$a6, .LBB1_52
.LBB1_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_8 Depth 2
                                        #     Child Loop BB1_11 Depth 2
                                        #     Child Loop BB1_16 Depth 2
                                        #     Child Loop BB1_23 Depth 2
                                        #     Child Loop BB1_26 Depth 2
                                        #     Child Loop BB1_30 Depth 2
                                        #     Child Loop BB1_33 Depth 2
                                        #     Child Loop BB1_37 Depth 2
                                        #     Child Loop BB1_45 Depth 2
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	blez	$a0, .LBB1_3
# %bb.5:                                # %for.body.i.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	st.d	$a6, $sp, 296                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	beqz	$a0, .LBB1_7
# %bb.6:                                #   in Loop: Header=BB1_4 Depth=1
	move	$a6, $zero
	b	.LBB1_10
	.p2align	4, , 16
.LBB1_7:                                # %vector.body271.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 320                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_8:                                # %vector.body271
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vld	$vr2, $a1, -16
	vld	$vr3, $a1, 0
	vld	$vr4, $a0, -16
	vld	$vr5, $a0, 0
	vld	$vr6, $a3, -16
	vld	$vr7, $a3, 0
	vfadd.d	$vr2, $vr2, $vr4
	vfadd.d	$vr3, $vr3, $vr5
	vfmul.d	$vr4, $vr6, $vr12
	vfmul.d	$vr5, $vr7, $vr12
	vld	$vr6, $a2, -16
	vld	$vr7, $a2, 0
	vfmadd.d	$vr0, $vr4, $vr2, $vr0
	vfmadd.d	$vr1, $vr5, $vr3, $vr1
	vfmadd.d	$vr0, $vr6, $vr13, $vr0
	vfmadd.d	$vr1, $vr7, $vr13, $vr1
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 32
	addi.d	$a4, $a4, 32
	addi.d	$a3, $a3, 32
	addi.d	$a2, $a2, 32
	addi.d	$a1, $a1, 32
	addi.d	$a0, $a0, 32
	bnez	$a6, .LBB1_8
# %bb.9:                                # %middle.block284
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	move	$a6, $a1
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	move	$fp, $a0
	move	$s0, $t8
	move	$s1, $t0
	ld.d	$s2, $sp, 360                   # 8-byte Folded Reload
	move	$s3, $t6
	ld.d	$s4, $sp, 368                   # 8-byte Folded Reload
	move	$s5, $t4
	ld.d	$s6, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 344                   # 8-byte Folded Reload
	move	$s8, $t1
	beq	$a0, $a1, .LBB1_16
.LBB1_10:                               # %for.body.i.preheader288
                                        #   in Loop: Header=BB1_4 Depth=1
	alsl.d	$a0, $a6, $t6, 3
	alsl.d	$a1, $a6, $t3, 3
	alsl.d	$a2, $a6, $t2, 3
	alsl.d	$a3, $a6, $a7, 3
	alsl.d	$a4, $a6, $t8, 3
	alsl.d	$a5, $a6, $t7, 3
	ld.d	$fp, $sp, 336                   # 8-byte Folded Reload
	sub.d	$a6, $fp, $a6
	.p2align	4, , 16
.LBB1_11:                               # %for.body.i
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a3, 0
	fld.d	$fa1, $a2, 0
	fld.d	$fa2, $a4, 0
	fld.d	$fa3, $a5, 0
	fld.d	$fa4, $a1, 0
	fadd.d	$fa0, $fa0, $fa1
	fmul.d	$fa1, $fa2, $ft4
	fmadd.d	$fa0, $fa1, $fa0, $fa3
	fmadd.d	$fa0, $fa4, $ft5, $fa0
	fst.d	$fa0, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, 8
	addi.d	$a4, $a4, 8
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, 8
	bnez	$a6, .LBB1_11
# %bb.12:                               #   in Loop: Header=BB1_4 Depth=1
	move	$s0, $t8
	move	$s1, $t0
	ld.d	$s2, $sp, 360                   # 8-byte Folded Reload
	move	$s3, $t6
	ld.d	$s4, $sp, 368                   # 8-byte Folded Reload
	move	$s5, $t4
	ld.d	$s6, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 344                   # 8-byte Folded Reload
	move	$s8, $t1
	b	.LBB1_16
	.p2align	4, , 16
.LBB1_13:                               #   in Loop: Header=BB1_16 Depth=2
	fld.d	$fa0, $a0, %pc_lo12(.LCPI1_0)
.LBB1_14:                               # %if.end.i82
                                        #   in Loop: Header=BB1_16 Depth=2
	fld.d	$fa1, $s6, 0
	fld.d	$fa2, $s7, 0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
.LBB1_15:                               # %"_ZZL21BM_ENERGY_CALC_LAMBDARN9benchmark5StateEENK3$_1clEi.exit"
                                        #   in Loop: Header=BB1_16 Depth=2
	fst.d	$fa0, $s8, 0
	addi.d	$s8, $s8, 8
	addi.d	$s7, $s7, 8
	addi.d	$s6, $s6, 8
	addi.d	$s5, $s5, 8
	addi.d	$s4, $s4, 8
	addi.d	$s3, $s3, 8
	addi.d	$s2, $s2, 8
	addi.d	$s1, $s1, 8
	addi.d	$fp, $fp, -1
	addi.d	$s0, $s0, 8
	beqz	$fp, .LBB1_20
.LBB1_16:                               # %for.body.i53
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $s0, 0
	fcmp.clt.d	$fcc0, $fs2, $fa0
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	pcalau12i	$a1, %pc_hi20(.LCPI1_1)
	fmov.d	$fa0, $fs2
	bcnez	$fcc0, .LBB1_15
# %bb.17:                               # %if.else.i
                                        #   in Loop: Header=BB1_16 Depth=2
	fld.d	$fa0, $s1, 0
	fadd.d	$fa0, $fa0, $ft11
	frecip.d	$fa0, $fa0
	fld.d	$fa1, $s2, 0
	fld.d	$fa2, $s4, 0
	fld.d	$fa3, $s3, 0
	fld.d	$fa4, $s5, 0
	fmul.d	$fa0, $fa0, $fa0
	fmul.d	$fa0, $fa0, $fa2
	fld.d	$fa2, $a1, %pc_lo12(.LCPI1_1)
	fmul.d	$fa0, $fa0, $fa4
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fdiv.d	$fa1, $fa0, $fs0
	fcmp.cle.d	$fcc0, $fa1, $fa2
	bcnez	$fcc0, .LBB1_13
# %bb.18:                               # %if.else20.i
                                        #   in Loop: Header=BB1_16 Depth=2
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB1_14
# %bb.19:                               # %call.sqrt
                                        #   in Loop: Header=BB1_16 Depth=2
	fmov.d	$fa0, $fa1
	st.d	$t5, $sp, 80                    # 8-byte Folded Spill
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	vst	$vr10, $sp, 48                  # 16-byte Folded Spill
	vst	$vr11, $sp, 32                  # 16-byte Folded Spill
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	st.d	$a1, $sp, 304                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	vldi	$vr19, -912
	vldi	$vr18, -872
	vldi	$vr17, -996
	vldi	$vr16, -864
	vldi	$vr15, -1016
	vldi	$vr14, -880
	vldi	$vr13, -928
	vldi	$vr12, -800
	vld	$vr11, $sp, 32                  # 16-byte Folded Reload
	vld	$vr10, $sp, 48                  # 16-byte Folded Reload
	vld	$vr9, $sp, 112                  # 16-byte Folded Reload
	vld	$vr8, $sp, 128                  # 16-byte Folded Reload
	ld.d	$t4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 80                    # 8-byte Folded Reload
	b	.LBB1_14
	.p2align	4, , 16
.LBB1_20:                               # %for.cond.i55.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	st.d	$a1, $sp, 304                   # 8-byte Folded Spill
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	ld.d	$s7, $sp, 336                   # 8-byte Folded Reload
	sltui	$a0, $s7, 2
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	or	$a0, $a0, $a1
	andi	$a0, $a0, 1
	beqz	$a0, .LBB1_22
# %bb.21:                               #   in Loop: Header=BB1_4 Depth=1
	move	$a6, $zero
	b	.LBB1_25
	.p2align	4, , 16
.LBB1_22:                               # %vector.body245.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	move	$a0, $t6
	move	$a1, $t8
	move	$a2, $a7
	move	$a3, $t2
	move	$a4, $t4
	move	$a5, $t1
	ld.d	$a6, $sp, 272                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_23:                               # %vector.body245
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a2, 0
	vld	$vr1, $a3, 0
	vld	$vr2, $a1, 0
	vld	$vr3, $a4, 0
	vld	$vr4, $a5, 0
	vfadd.d	$vr0, $vr0, $vr1
	vld	$vr1, $a0, 0
	vfmul.d	$vr2, $vr2, $vr13
	vfadd.d	$vr3, $vr3, $vr4
	vfmul.d	$vr3, $vr3, $vr14
	vfmadd.d	$vr0, $vr0, $vr15, $vr3
	vfmadd.d	$vr0, $vr2, $vr0, $vr1
	vst	$vr0, $a0, 0
	addi.d	$a6, $a6, -2
	addi.d	$a5, $a5, 16
	addi.d	$a4, $a4, 16
	addi.d	$a3, $a3, 16
	addi.d	$a2, $a2, 16
	addi.d	$a1, $a1, 16
	addi.d	$a0, $a0, 16
	bnez	$a6, .LBB1_23
# %bb.24:                               # %middle.block254
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	move	$a6, $a0
	beq	$s7, $a0, .LBB1_27
.LBB1_25:                               # %for.body.i58.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	alsl.d	$a0, $a6, $t1, 3
	alsl.d	$a1, $a6, $t4, 3
	alsl.d	$a2, $a6, $t2, 3
	alsl.d	$a3, $a6, $a7, 3
	alsl.d	$a4, $a6, $t8, 3
	alsl.d	$a5, $a6, $t6, 3
	sub.d	$a6, $s7, $a6
	.p2align	4, , 16
.LBB1_26:                               # %for.body.i58
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a3, 0
	fld.d	$fa1, $a2, 0
	fld.d	$fa2, $a4, 0
	fld.d	$fa3, $a1, 0
	fld.d	$fa4, $a0, 0
	fadd.d	$fa0, $fa0, $fa1
	fld.d	$fa1, $a5, 0
	fmul.d	$fa2, $fa2, $ft5
	fadd.d	$fa3, $fa3, $fa4
	fmul.d	$fa3, $fa3, $ft6
	fmadd.d	$fa0, $fa0, $ft7, $fa3
	fmadd.d	$fa0, $fa2, $fa0, $fa1
	fst.d	$fa0, $a5, 0
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, 8
	addi.d	$a4, $a4, 8
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, 8
	bnez	$a6, .LBB1_26
.LBB1_27:                               # %for.body.i63.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	or	$a0, $a1, $a0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB1_29
# %bb.28:                               #   in Loop: Header=BB1_4 Depth=1
	move	$a2, $zero
	ld.d	$a6, $sp, 296                   # 8-byte Folded Reload
	b	.LBB1_32
	.p2align	4, , 16
.LBB1_29:                               # %vector.body.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 296                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_30:                               # %vector.body
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a0, -16
	vld	$vr1, $a0, 0
	vld	$vr2, $a1, -16
	vld	$vr3, $a1, 0
	vfmadd.d	$vr0, $vr0, $vr13, $vr2
	vfmadd.d	$vr1, $vr1, $vr13, $vr3
	vbitclri.d	$vr2, $vr0, 63
	vbitclri.d	$vr3, $vr1, 63
	vfcmp.cule.d	$vr2, $vr10, $vr2
	vand.v	$vr0, $vr2, $vr0
	vfcmp.cule.d	$vr2, $vr10, $vr3
	vand.v	$vr1, $vr2, $vr1
	vfcmp.clt.d	$vr2, $vr0, $vr11
	vfcmp.clt.d	$vr3, $vr1, $vr11
	vbitsel.v	$vr0, $vr0, $vr11, $vr2
	vbitsel.v	$vr1, $vr1, $vr11, $vr3
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	addi.d	$a0, $a0, 32
	bnez	$a2, .LBB1_30
# %bb.31:                               # %middle.block
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	move	$a2, $a0
	beq	$s7, $a0, .LBB1_34
.LBB1_32:                               # %for.body.i63.preheader287
                                        #   in Loop: Header=BB1_4 Depth=1
	alsl.d	$a0, $a2, $t6, 3
	alsl.d	$a1, $a2, $t3, 3
	sub.d	$a2, $s7, $a2
	.p2align	4, , 16
.LBB1_33:                               # %for.body.i63
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, 0
	fld.d	$fa1, $a0, 0
	fmadd.d	$fa0, $fa0, $ft5, $fa1
	fabs.d	$fa1, $fa0
	fcmp.clt.d	$fcc0, $fa1, $ft0
	fsel	$fa0, $fa0, $fs2, $fcc0
	fcmp.clt.d	$fcc0, $fa0, $ft1
	fsel	$fa0, $fa0, $ft1, $fcc0
	fst.d	$fa0, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB1_33
.LBB1_34:                               # %for.body.i68.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	move	$s3, $t8
	ld.d	$a2, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 344                   # 8-byte Folded Reload
	move	$s5, $a7
	move	$s2, $t2
	move	$fp, $t4
	move	$s0, $t1
	move	$s6, $t6
	move	$s4, $ra
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	b	.LBB1_37
	.p2align	4, , 16
.LBB1_35:                               # %entry.if.end24_crit_edge.i
                                        #   in Loop: Header=BB1_37 Depth=2
	fld.d	$fs4, $s6, 0
	fld.d	$fs5, $s4, 0
	fmov.d	$fa0, $fs2
.LBB1_36:                               # %if.end24.i
                                        #   in Loop: Header=BB1_37 Depth=2
	fld.d	$fa1, $s5, 0
	fld.d	$fa2, $s2, 0
	fld.d	$fa3, $fp, 0
	fld.d	$fa4, $s0, 0
	fadd.d	$fa1, $fa1, $fa2
	fadd.d	$fa2, $fa3, $fa4
	fmul.d	$fa2, $fa2, $ft8
	fmadd.d	$fa1, $fa1, $ft9, $fa2
	fadd.d	$fa0, $fs5, $fa0
	fadd.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fs3, $fa0
	fdiv.d	$fa0, $fa0, $ft10
	fadd.d	$fa0, $fs4, $fa0
	fabs.d	$fa1, $fa0
	fcmp.clt.d	$fcc0, $fa1, $ft0
	fsel	$fa0, $fa0, $fs2, $fcc0
	fcmp.clt.d	$fcc0, $fa0, $ft1
	fsel	$fa0, $fa0, $ft1, $fcc0
	fst.d	$fa0, $s6, 0
	addi.d	$s4, $s4, 8
	addi.d	$s6, $s6, 8
	addi.d	$s0, $s0, 8
	addi.d	$fp, $fp, 8
	addi.d	$s2, $s2, 8
	addi.d	$s5, $s5, 8
	addi.d	$s8, $s8, 8
	addi.d	$s1, $s1, 8
	addi.d	$a4, $a4, 8
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, 8
	addi.d	$s7, $s7, -1
	addi.d	$s3, $s3, 8
	beqz	$s7, .LBB1_43
.LBB1_37:                               # %for.body.i68
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fs3, $s3, 0
	fcmp.cule.d	$fcc0, $fs3, $fs2
	bceqz	$fcc0, .LBB1_35
# %bb.38:                               # %if.else.i101
                                        #   in Loop: Header=BB1_37 Depth=2
	fld.d	$fa0, $a2, 0
	fld.d	$fa1, $a3, 0
	fld.d	$fa2, $a4, 0
	fld.d	$fs4, $s6, 0
	fld.d	$fs5, $s4, 0
	fmul.d	$fa1, $fa1, $fa1
	fmul.d	$fa1, $fa1, $fa2
	fld.d	$fa2, $a1, %pc_lo12(.LCPI1_1)
	fmul.d	$fa1, $fa1, $fs5
	fmadd.d	$fa0, $fa0, $fs4, $fa1
	fdiv.d	$fa1, $fa0, $fs0
	fcmp.cle.d	$fcc0, $fa1, $fa2
	bcnez	$fcc0, .LBB1_41
# %bb.39:                               # %if.else19.i
                                        #   in Loop: Header=BB1_37 Depth=2
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB1_42
# %bb.40:                               # %call.sqrt451
                                        #   in Loop: Header=BB1_37 Depth=2
	fmov.d	$fa0, $fa1
	st.d	$t5, $sp, 80                    # 8-byte Folded Spill
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	vst	$vr10, $sp, 48                  # 16-byte Folded Spill
	vst	$vr11, $sp, 32                  # 16-byte Folded Spill
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	st.d	$a4, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	vldi	$vr19, -912
	vldi	$vr18, -872
	vldi	$vr17, -996
	vldi	$vr16, -864
	vldi	$vr15, -1016
	vldi	$vr14, -880
	vldi	$vr13, -928
	vldi	$vr12, -800
	vld	$vr11, $sp, 32                  # 16-byte Folded Reload
	vld	$vr10, $sp, 48                  # 16-byte Folded Reload
	ld.d	$a6, $sp, 296                   # 8-byte Folded Reload
	vld	$vr9, $sp, 112                  # 16-byte Folded Reload
	vld	$vr8, $sp, 128                  # 16-byte Folded Reload
	ld.d	$t4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 80                    # 8-byte Folded Reload
	b	.LBB1_42
	.p2align	4, , 16
.LBB1_41:                               #   in Loop: Header=BB1_37 Depth=2
	fld.d	$fa0, $a0, %pc_lo12(.LCPI1_0)
.LBB1_42:                               # %if.end.i111
                                        #   in Loop: Header=BB1_37 Depth=2
	fld.d	$fa1, $s1, 0
	fld.d	$fa2, $s8, 0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	b	.LBB1_36
	.p2align	4, , 16
.LBB1_43:                               # %for.body.i73.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.d	$fp, $sp, 336                   # 8-byte Folded Reload
	move	$s0, $t8
	ld.d	$s1, $sp, 360                   # 8-byte Folded Reload
	move	$s2, $t6
	ld.d	$s3, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 368                   # 8-byte Folded Reload
	move	$s5, $ra
	ld.d	$s6, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 344                   # 8-byte Folded Reload
	move	$s8, $t1
	b	.LBB1_45
	.p2align	4, , 16
.LBB1_44:                               # %"_ZZL21BM_ENERGY_CALC_LAMBDARN9benchmark5StateEENK3$_5clEi.exit"
                                        #   in Loop: Header=BB1_45 Depth=2
	addi.d	$s8, $s8, 8
	addi.d	$s7, $s7, 8
	addi.d	$s6, $s6, 8
	addi.d	$s5, $s5, 8
	addi.d	$s4, $s4, 8
	addi.d	$s3, $s3, 8
	addi.d	$s2, $s2, 8
	addi.d	$s1, $s1, 8
	addi.d	$fp, $fp, -1
	addi.d	$s0, $s0, 8
	beqz	$fp, .LBB1_3
.LBB1_45:                               # %for.body.i73
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $s0, 0
	fcmp.cult.d	$fcc0, $fs2, $fa0
	bcnez	$fcc0, .LBB1_44
# %bb.46:                               # %if.then.i121
                                        #   in Loop: Header=BB1_45 Depth=2
	fld.d	$fa0, $s1, 0
	fld.d	$fa1, $s3, 0
	fld.d	$fa2, $s4, 0
	fld.d	$fa3, $s2, 0
	fld.d	$fa4, $s5, 0
	fmul.d	$fa1, $fa1, $fa1
	fmul.d	$fa1, $fa1, $fa2
	fld.d	$fa2, $a1, %pc_lo12(.LCPI1_1)
	fmul.d	$fa1, $fa1, $fa4
	fmadd.d	$fa0, $fa0, $fa3, $fa1
	fdiv.d	$fa1, $fa0, $fs0
	fcmp.cle.d	$fcc0, $fa1, $fa2
	bcnez	$fcc0, .LBB1_49
# %bb.47:                               # %if.else.i136
                                        #   in Loop: Header=BB1_45 Depth=2
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB1_50
# %bb.48:                               # %call.sqrt452
                                        #   in Loop: Header=BB1_45 Depth=2
	fmov.d	$fa0, $fa1
	st.d	$t5, $sp, 80                    # 8-byte Folded Spill
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	vst	$vr10, $sp, 48                  # 16-byte Folded Spill
	vst	$vr11, $sp, 32                  # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	vldi	$vr19, -912
	vldi	$vr18, -872
	vldi	$vr17, -996
	vldi	$vr16, -864
	vldi	$vr15, -1016
	vldi	$vr14, -880
	vldi	$vr13, -928
	vldi	$vr12, -800
	vld	$vr11, $sp, 32                  # 16-byte Folded Reload
	vld	$vr10, $sp, 48                  # 16-byte Folded Reload
	ld.d	$a6, $sp, 296                   # 8-byte Folded Reload
	vld	$vr9, $sp, 112                  # 16-byte Folded Reload
	vld	$vr8, $sp, 128                  # 16-byte Folded Reload
	ld.d	$t4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 80                    # 8-byte Folded Reload
	b	.LBB1_50
	.p2align	4, , 16
.LBB1_49:                               #   in Loop: Header=BB1_45 Depth=2
	fld.d	$fa0, $a0, %pc_lo12(.LCPI1_0)
.LBB1_50:                               # %if.end.i132
                                        #   in Loop: Header=BB1_45 Depth=2
	fld.d	$fa1, $s6, 0
	fld.d	$fa2, $s7, 0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	fabs.d	$fa1, $fa0
	fcmp.cule.d	$fcc0, $fs1, $fa1
	fst.d	$fa0, $s8, 0
	bcnez	$fcc0, .LBB1_44
# %bb.51:                               # %if.then28.i
                                        #   in Loop: Header=BB1_45 Depth=2
	st.d	$zero, $s8, 0
	b	.LBB1_44
.LBB1_52:                               # %for.cond.cleanup
	move	$a0, $t5
	fld.d	$fs5, $sp, 376                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 384                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 392                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 400                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 408                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 416                  # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.Lfunc_end1:
	.size	_ZL21BM_ENERGY_CALC_LAMBDARN9benchmark5StateE, .Lfunc_end1-_ZL21BM_ENERGY_CALC_LAMBDARN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZL20BM_VOL3D_CALC_LAMBDARN9benchmark5StateE
.LCPI2_0:
	.dword	0x3fb5555555555555              # double 0.083333333333333329
	.text
	.p2align	5
	.type	_ZL20BM_VOL3D_CALC_LAMBDARN9benchmark5StateE,@function
_ZL20BM_VOL3D_CALC_LAMBDARN9benchmark5StateE: # @_ZL20BM_VOL3D_CALC_LAMBDARN9benchmark5StateE
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -400
	.cfi_def_cfa_offset 400
	st.d	$ra, $sp, 392                   # 8-byte Folded Spill
	st.d	$fp, $sp, 384                   # 8-byte Folded Spill
	st.d	$s0, $sp, 376                   # 8-byte Folded Spill
	st.d	$s1, $sp, 368                   # 8-byte Folded Spill
	st.d	$s2, $sp, 360                   # 8-byte Folded Spill
	st.d	$s3, $sp, 352                   # 8-byte Folded Spill
	st.d	$s4, $sp, 344                   # 8-byte Folded Spill
	st.d	$s5, $sp, 336                   # 8-byte Folded Spill
	st.d	$s6, $sp, 328                   # 8-byte Folded Spill
	st.d	$s7, $sp, 320                   # 8-byte Folded Spill
	st.d	$s8, $sp, 312                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 304                  # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	move	$s2, $a0
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 5
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 8
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a0, $s2, 32
	ld.d	$a1, $s0, 16
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a1, $s0, 24
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a1, $s0, 32
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	ld.w	$a1, $a0, 0
	addi.d	$a0, $sp, 216
	ori	$a2, $zero, 3
	pcaddu18i	$ra, %call36(_ZN7ADomainC2Eii)
	jirl	$ra, $ra, 0
	ld.w	$fp, $sp, 252
	ld.w	$s0, $sp, 256
	ld.w	$s1, $s2, 28
	ld.d	$s4, $s2, 16
.Ltmp0:                                 # EH_LABEL
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:                                # %for.cond.preheader
	bnez	$s1, .LBB2_4
# %bb.2:                                # %for.cond.preheader
	beqz	$s4, .LBB2_4
# %bb.3:                                # %for.body.lr.ph
	ld.w	$a0, $sp, 280
	ld.w	$a1, $sp, 284
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	bge	$a1, $a0, .LBB2_8
.LBB2_4:                                # %if.end.i
.Ltmp2:                                 # EH_LABEL
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp3:                                 # EH_LABEL
# %bb.5:                                # %for.cond.cleanup
	ld.d	$a0, $sp, 288
	beqz	$a0, .LBB2_7
# %bb.6:                                # %delete.notnull.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB2_7:                                # %_ZN7ADomainD2Ev.exit
	fld.d	$fs0, $sp, 304                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 384                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 392                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 400
	ret
.LBB2_8:                                # %for.body.preheader
	ld.d	$t1, $sp, 176                   # 8-byte Folded Reload
	addi.d	$a0, $t1, 8
	alsl.d	$a1, $fp, $t1, 3
	alsl.d	$a2, $fp, $a0, 3
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	alsl.d	$a0, $s0, $a0, 3
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	alsl.d	$a0, $s0, $a1, 3
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ld.d	$s3, $sp, 168                   # 8-byte Folded Reload
	addi.d	$a0, $s3, 8
	alsl.d	$a1, $fp, $s3, 3
	alsl.d	$a2, $fp, $a0, 3
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	alsl.d	$a0, $s0, $a0, 3
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	alsl.d	$a0, $s0, $a1, 3
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ld.d	$s5, $sp, 200                   # 8-byte Folded Reload
	slli.d	$a5, $s5, 3
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$a7, $s5, $a0, 3
	ld.d	$s6, $sp, 192                   # 8-byte Folded Reload
	sub.d	$a0, $s6, $s5
	bstrpick.d	$a2, $a0, 31, 0
	alsl.d	$a0, $a2, $a7, 3
	addi.d	$a1, $a0, 8
	slli.d	$a0, $s0, 3
	slli.d	$t0, $fp, 3
	alsl.d	$a3, $s5, $a0, 3
	alsl.d	$a0, $fp, $a3, 3
	add.d	$s2, $t1, $a0
	alsl.d	$a4, $a2, $a0, 3
	addi.d	$a4, $a4, 16
	add.d	$t5, $t1, $a4
	add.d	$t2, $t1, $a3
	alsl.d	$a6, $a2, $a3, 3
	addi.d	$a6, $a6, 16
	add.d	$t6, $t1, $a6
	alsl.d	$t3, $s5, $t1, 3
	alsl.d	$a5, $a2, $a5, 3
	addi.d	$a5, $a5, 16
	add.d	$t7, $t1, $a5
	alsl.d	$ra, $s5, $t0, 3
	add.d	$t4, $t1, $ra
	alsl.d	$t0, $a2, $ra, 3
	addi.d	$t0, $t0, 16
	add.d	$t8, $t1, $t0
	add.d	$s1, $s3, $a0
	sltu	$t5, $a7, $t5
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	sltu	$s2, $s2, $a1
	and	$t5, $t5, $s2
	sltu	$t6, $a7, $t6
	sltu	$s2, $t2, $a1
	and	$t6, $t6, $s2
	add.d	$s2, $s3, $a4
	or	$t6, $t5, $t6
	sltu	$t5, $a7, $t7
	sltu	$t7, $t3, $a1
	and	$t7, $t5, $t7
	add.d	$t5, $s3, $a3
	or	$t6, $t6, $t7
	sltu	$t7, $a7, $t8
	sltu	$t8, $t4, $a1
	and	$t7, $t7, $t8
	add.d	$t8, $s3, $a6
	or	$t7, $t6, $t7
	alsl.d	$t6, $s5, $s3, 3
	sltu	$s2, $a7, $s2
	sltu	$s1, $s1, $a1
	and	$s1, $s2, $s1
	add.d	$s2, $s3, $a5
	or	$s1, $t7, $s1
	sltu	$t7, $a7, $t8
	sltu	$t8, $t5, $a1
	and	$t8, $t7, $t8
	add.d	$t7, $s3, $ra
	or	$t8, $s1, $t8
	sltu	$s1, $a7, $s2
	sltu	$s2, $t6, $a1
	and	$s1, $s1, $s2
	add.d	$s2, $s3, $t0
	or	$t8, $t8, $s1
	sltu	$s1, $a7, $s2
	sltu	$s2, $t7, $a1
	and	$s1, $s1, $s2
	ld.d	$t1, $sp, 160                   # 8-byte Folded Reload
	alsl.d	$s2, $fp, $t1, 3
	addi.d	$s2, $s2, 8
	st.d	$s2, $sp, 96                    # 8-byte Folded Spill
	alsl.d	$s0, $s0, $t1, 3
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	alsl.d	$fp, $fp, $s0, 3
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	or	$t8, $t8, $s1
	add.d	$fp, $t1, $a0
	add.d	$a4, $t1, $a4
	add.d	$s7, $t1, $a3
	add.d	$a3, $t1, $a6
	sltu	$a4, $a7, $a4
	sltu	$a6, $fp, $a1
	and	$a4, $a4, $a6
	alsl.d	$s8, $s5, $t1, 3
	add.d	$a5, $t1, $a5
	add.d	$ra, $t1, $ra
	add.d	$a6, $t1, $t0
	addi.d	$t0, $a2, 1
	or	$a2, $t8, $a4
	sltu	$a3, $a7, $a3
	sltu	$a4, $s7, $a1
	and	$a3, $a3, $a4
	or	$a2, $a2, $a3
	sltu	$a3, $a7, $a5
	sltu	$a4, $s8, $a1
	and	$a3, $a3, $a4
	or	$a2, $a2, $a3
	st.d	$a7, $sp, 64                    # 8-byte Folded Spill
	sltu	$a3, $a7, $a6
	sltu	$a1, $ra, $a1
	and	$a1, $a3, $a1
	or	$a1, $a2, $a1
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	bstrpick.d	$a1, $t0, 32, 1
	slli.d	$a2, $a1, 1
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	alsl.d	$a1, $a1, $s5, 1
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	st.d	$t0, $sp, 48                    # 8-byte Folded Spill
	slli.d	$a1, $t0, 3
	bstrpick.d	$a1, $a1, 35, 4
	slli.d	$a1, $a1, 4
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $a0, 8
	add.d	$s0, $t1, $a0
	add.d	$s2, $s3, $a0
	lu12i.w	$a0, 349525
	ori	$a0, $a0, 1365
	lu32i.d	$a0, 349525
	lu52i.d	$a0, $a0, 1019
	vreplgr2vr.d	$vr0, $a0
	addi.d	$a0, $s6, 1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	b	.LBB2_10
	.p2align	4, , 16
.LBB2_9:                                # %for.cond.i.invoke.cont69_crit_edge
                                        #   in Loop: Header=BB2_10 Depth=1
	ld.d	$s4, $sp, 208                   # 8-byte Folded Reload
	addi.d	$s4, $s4, -1
	beqz	$s4, .LBB2_4
.LBB2_10:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_12 Depth 2
                                        #     Child Loop BB2_15 Depth 2
	st.d	$s4, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	xor	$a0, $a0, $a2
	sltui	$a0, $a0, 1
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	or	$a0, $a0, $a1
	andi	$a1, $a0, 1
	move	$a0, $a2
	bnez	$a1, .LBB2_14
# %bb.11:                               # %vector.body.preheader
                                        #   in Loop: Header=BB2_10 Depth=1
	move	$a0, $zero
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_12:                               # %vector.body
                                        #   Parent Loop BB2_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a1, $a5, $a0
	vld	$vr2, $a1, 8
	add.d	$a1, $t3, $a0
	vld	$vr1, $a1, 8
	vfsub.d	$vr1, $vr2, $vr1
	add.d	$a1, $t4, $a0
	vldx	$vr3, $t4, $a0
	vldx	$vr4, $t2, $a0
	vld	$vr5, $a1, 8
	vldx	$vr7, $t3, $a0
	vfsub.d	$vr6, $vr2, $vr3
	add.d	$a1, $t2, $a0
	vfsub.d	$vr2, $vr2, $vr4
	vfsub.d	$vr3, $vr5, $vr7
	vld	$vr4, $a1, 8
	vldx	$vr5, $a5, $a0
	vldx	$vr9, $s2, $a0
	add.d	$a1, $t6, $a0
	vld	$vr10, $a1, 8
	vfsub.d	$vr4, $vr4, $vr7
	vfsub.d	$vr8, $vr5, $vr7
	add.d	$a1, $s2, $a0
	vfsub.d	$vr5, $vr9, $vr10
	add.d	$a2, $t7, $a0
	vldx	$vr7, $t7, $a0
	add.d	$a3, $t5, $a0
	vldx	$vr10, $t5, $a0
	vld	$vr11, $a2, 8
	vldx	$vr12, $t6, $a0
	vld	$vr13, $a3, 8
	vfsub.d	$vr14, $vr9, $vr7
	vfsub.d	$vr9, $vr9, $vr10
	vfsub.d	$vr10, $vr11, $vr12
	vfsub.d	$vr7, $vr13, $vr12
	vld	$vr11, $a1, -8
	vldx	$vr13, $s0, $a0
	add.d	$a1, $s8, $a0
	vld	$vr15, $a1, 8
	vfsub.d	$vr11, $vr11, $vr12
	vldx	$vr12, $ra, $a0
	add.d	$a1, $s0, $a0
	vfsub.d	$vr15, $vr13, $vr15
	add.d	$a2, $ra, $a0
	vfsub.d	$vr12, $vr13, $vr12
	add.d	$a3, $s7, $a0
	vldx	$vr16, $s7, $a0
	vld	$vr17, $a2, 8
	vldx	$vr18, $s8, $a0
	vld	$vr19, $a3, 8
	vld	$vr20, $a1, -8
	vfsub.d	$vr13, $vr13, $vr16
	vfsub.d	$vr16, $vr17, $vr18
	vfsub.d	$vr17, $vr19, $vr18
	vfsub.d	$vr18, $vr20, $vr18
	vfadd.d	$vr19, $vr1, $vr8
	vfadd.d	$vr20, $vr5, $vr11
	vfadd.d	$vr21, $vr15, $vr18
	vbitrevi.d	$vr22, $vr10, 63
	vfmul.d	$vr22, $vr12, $vr22
	vfmadd.d	$vr22, $vr14, $vr16, $vr22
	vbitrevi.d	$vr23, $vr16, 63
	vfmul.d	$vr23, $vr6, $vr23
	vfmadd.d	$vr23, $vr12, $vr3, $vr23
	vbitrevi.d	$vr24, $vr3, 63
	vfmul.d	$vr24, $vr14, $vr24
	vfmadd.d	$vr24, $vr6, $vr10, $vr24
	vfmul.d	$vr20, $vr20, $vr23
	vfmadd.d	$vr19, $vr19, $vr22, $vr20
	vfmadd.d	$vr19, $vr21, $vr24, $vr19
	vfadd.d	$vr6, $vr6, $vr4
	vfadd.d	$vr14, $vr14, $vr7
	vfadd.d	$vr12, $vr12, $vr17
	vbitrevi.d	$vr20, $vr11, 63
	vfmul.d	$vr20, $vr13, $vr20
	vfmadd.d	$vr20, $vr9, $vr18, $vr20
	vbitrevi.d	$vr18, $vr18, 63
	vfmul.d	$vr18, $vr2, $vr18
	vfmadd.d	$vr18, $vr13, $vr8, $vr18
	vbitrevi.d	$vr8, $vr8, 63
	vfmul.d	$vr8, $vr9, $vr8
	vfmadd.d	$vr8, $vr2, $vr11, $vr8
	vfmul.d	$vr11, $vr14, $vr18
	vfmadd.d	$vr6, $vr6, $vr20, $vr11
	vfmadd.d	$vr6, $vr12, $vr8, $vr6
	vfadd.d	$vr6, $vr19, $vr6
	vfadd.d	$vr2, $vr2, $vr3
	vfadd.d	$vr3, $vr9, $vr10
	vfadd.d	$vr8, $vr13, $vr16
	vbitrevi.d	$vr9, $vr7, 63
	vfmul.d	$vr9, $vr15, $vr9
	vfmadd.d	$vr9, $vr5, $vr17, $vr9
	vbitrevi.d	$vr10, $vr17, 63
	vfmul.d	$vr10, $vr1, $vr10
	vfmadd.d	$vr10, $vr15, $vr4, $vr10
	vbitrevi.d	$vr4, $vr4, 63
	vfmul.d	$vr4, $vr5, $vr4
	vfmadd.d	$vr1, $vr1, $vr7, $vr4
	vfmul.d	$vr3, $vr3, $vr10
	vfmadd.d	$vr2, $vr2, $vr9, $vr3
	vfmadd.d	$vr1, $vr8, $vr1, $vr2
	vfadd.d	$vr1, $vr1, $vr6
	vfmul.d	$vr1, $vr1, $vr0
	vstx	$vr1, $a4, $a0
	addi.d	$a0, $a0, 16
	bne	$a6, $a0, .LBB2_12
# %bb.13:                               # %middle.block
                                        #   in Loop: Header=BB2_10 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	beq	$a1, $a2, .LBB2_9
.LBB2_14:                               # %for.body.i.preheader
                                        #   in Loop: Header=BB2_10 Depth=1
	slli.d	$s3, $a0, 3
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	sub.d	$a2, $a1, $a0
	ld.d	$s5, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 128                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_15:                               # %for.body.i
                                        #   Parent Loop BB2_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$s1, $t0, $s3
	add.d	$t1, $a0, $s3
	fld.d	$fa1, $t1, -8
	add.d	$t1, $a1, $s3
	fld.d	$fa2, $t1, -8
	fldx.d	$fa3, $a0, $s3
	fld.d	$fa4, $s1, 8
	fldx.d	$fa6, $a1, $s3
	vldx	$vr7, $t0, $s3
	fldx.d	$ft0, $fp, $s3
	fsub.d	$fa5, $fa4, $fa1
	vldx	$vr9, $fp, $s3
	fsub.d	$fa2, $fa4, $fa2
	fsub.d	$fa3, $fa3, $ft0
	fsub.d	$fa1, $fa6, $ft0
	vfsub.d	$vr8, $vr7, $vr9
	add.d	$t1, $a3, $s3
	add.d	$s1, $a7, $s3
	fld.d	$fa4, $s1, -8
	add.d	$s1, $a6, $s3
	fld.d	$fa6, $s1, -8
	fldx.d	$fa7, $a7, $s3
	fld.d	$ft1, $t1, 8
	fldx.d	$ft2, $a6, $s3
	vldx	$vr11, $a3, $s3
	fldx.d	$ft4, $a5, $s3
	fsub.d	$ft5, $ft1, $fa4
	vldx	$vr14, $a5, $s3
	fsub.d	$fa6, $ft1, $fa6
	fsub.d	$fa7, $fa7, $ft4
	fsub.d	$fa4, $ft2, $ft4
	vfsub.d	$vr9, $vr11, $vr14
	add.d	$t1, $s6, $s3
	add.d	$s1, $t8, $s3
	fld.d	$ft2, $s1, -8
	add.d	$s1, $s5, $s3
	fldx.d	$ft3, $s5, $s3
	fldx.d	$ft4, $t8, $s3
	fld.d	$ft6, $t1, 8
	fld.d	$ft7, $s1, 8
	vldx	$vr16, $s6, $s3
	fldx.d	$ft9, $a4, $s3
	fsub.d	$ft2, $ft6, $ft2
	vldx	$vr18, $a4, $s3
	fsub.d	$ft3, $ft6, $ft3
	fsub.d	$ft4, $ft4, $ft9
	fsub.d	$ft6, $ft7, $ft9
	vfsub.d	$vr15, $vr16, $vr18
	vreplvei.d	$vr16, $vr8, 0
	vreplvei.d	$vr8, $vr8, 1
	fadd.d	$ft9, $ft0, $ft8
	vreplvei.d	$vr18, $vr9, 0
	vreplvei.d	$vr9, $vr9, 1
	fadd.d	$ft11, $ft1, $ft10
	vreplvei.d	$vr20, $vr15, 0
	vreplvei.d	$vr15, $vr15, 1
	fadd.d	$ft13, $ft7, $ft12
	fneg.d	$ft14, $fa7
	fmul.d	$ft14, $ft2, $ft14
	fmadd.d	$ft14, $ft5, $ft4, $ft14
	fneg.d	$ft15, $ft4
	fmul.d	$ft15, $fa5, $ft15
	fmadd.d	$ft15, $ft2, $fa3, $ft15
	fneg.d	$fs0, $fa3
	fmul.d	$fs0, $ft5, $fs0
	fmadd.d	$fs0, $fa5, $fa7, $fs0
	fmul.d	$ft11, $ft11, $ft15
	fmadd.d	$ft9, $ft9, $ft14, $ft11
	fmadd.d	$ft9, $ft13, $fs0, $ft9
	fadd.d	$fa5, $fa5, $fa1
	fadd.d	$ft5, $ft5, $fa4
	fadd.d	$ft2, $ft2, $ft6
	fneg.d	$ft11, $ft10
	fmul.d	$ft11, $ft3, $ft11
	fmadd.d	$ft11, $fa6, $ft12, $ft11
	fneg.d	$ft12, $ft12
	fmul.d	$ft12, $fa2, $ft12
	fmadd.d	$ft12, $ft3, $ft8, $ft12
	fneg.d	$ft8, $ft8
	fmul.d	$ft8, $fa6, $ft8
	fmadd.d	$ft8, $fa2, $ft10, $ft8
	fmul.d	$ft5, $ft5, $ft12
	fmadd.d	$fa5, $fa5, $ft11, $ft5
	fmadd.d	$fa5, $ft2, $ft8, $fa5
	fadd.d	$fa5, $ft9, $fa5
	fadd.d	$fa2, $fa2, $fa3
	fadd.d	$fa3, $fa6, $fa7
	fadd.d	$fa6, $ft3, $ft4
	fneg.d	$fa7, $fa4
	fmul.d	$fa7, $ft7, $fa7
	fmadd.d	$fa7, $ft1, $ft6, $fa7
	fneg.d	$ft2, $ft6
	fmul.d	$ft2, $ft0, $ft2
	fmadd.d	$ft2, $ft7, $fa1, $ft2
	fneg.d	$fa1, $fa1
	fmul.d	$fa1, $ft1, $fa1
	fmadd.d	$fa1, $ft0, $fa4, $fa1
	fmul.d	$fa3, $fa3, $ft2
	pcalau12i	$t1, %pc_hi20(.LCPI2_0)
	fld.d	$fa4, $t1, %pc_lo12(.LCPI2_0)
	fmadd.d	$fa2, $fa2, $fa7, $fa3
	fmadd.d	$fa1, $fa6, $fa1, $fa2
	fadd.d	$fa1, $fa1, $fa5
	fmul.d	$fa1, $fa1, $fa4
	fstx.d	$fa1, $s4, $s3
	addi.d	$t0, $t0, 8
	addi.w	$a2, $a2, -1
	addi.d	$s4, $s4, 8
	addi.d	$a0, $a0, 8
	addi.d	$fp, $fp, 8
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, 8
	addi.d	$s6, $s6, 8
	addi.d	$a4, $a4, 8
	addi.d	$a7, $a7, 8
	addi.d	$a5, $a5, 8
	addi.d	$a6, $a6, 8
	addi.d	$t8, $t8, 8
	addi.d	$s5, $s5, 8
	bnez	$a2, .LBB2_15
	b	.LBB2_9
.LBB2_16:                               # %lpad62
.Ltmp4:                                 # EH_LABEL
	ld.d	$a1, $sp, 288
	move	$fp, $a0
	beqz	$a1, .LBB2_18
# %bb.17:                               # %delete.notnull.i22
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB2_18:                               # %_ZN7ADomainD2Ev.exit24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	_ZL20BM_VOL3D_CALC_LAMBDARN9benchmark5StateE, .Lfunc_end2-_ZL20BM_VOL3D_CALC_LAMBDARN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table2:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    # >> Call Site 1 <<
	.uleb128 .Ltmp0-.Lfunc_begin0           #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp3-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp3
	.uleb128 .Ltmp4-.Lfunc_begin0           #     jumps to .Ltmp4
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Lfunc_end2-.Ltmp3             #   Call between .Ltmp3 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZL24BM_DEL_DOT_VEC_2D_LAMBDARN9benchmark5StateE
.LCPI3_0:
	.dword	0xbfe0000000000000              # double -0.5
	.dword	0x3fe0000000000000              # double 0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI3_1:
	.dword	0x3bc79ca10c924223              # double 9.9999999999999995E-21
	.text
	.p2align	5
	.type	_ZL24BM_DEL_DOT_VEC_2D_LAMBDARN9benchmark5StateE,@function
_ZL24BM_DEL_DOT_VEC_2D_LAMBDARN9benchmark5StateE: # @_ZL24BM_DEL_DOT_VEC_2D_LAMBDARN9benchmark5StateE
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -176
	.cfi_def_cfa_offset 176
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
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 6
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 8
	ld.d	$s2, $s0, 16
	ld.d	$a0, $fp, 32
	ld.d	$s3, $s0, 24
	ld.d	$s4, $s0, 32
	ld.d	$s0, $s0, 40
	ld.w	$a1, $a0, 0
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZN7ADomainC2Eii)
	jirl	$ra, $ra, 0
	ld.w	$s6, $sp, 44
	ld.w	$s7, $fp, 28
	ld.d	$s5, $fp, 16
.Ltmp5:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp6:                                 # EH_LABEL
# %bb.1:                                # %for.cond.preheader
	bnez	$s7, .LBB3_8
# %bb.2:                                # %for.cond.preheader
	beqz	$s5, .LBB3_8
# %bb.3:                                # %for.body.lr.ph
	ld.w	$a0, $sp, 88
	blez	$a0, .LBB3_8
# %bb.4:                                # %for.body.us.preheader
	addi.d	$a1, $s1, 8
	alsl.d	$a2, $s6, $a1, 3
	alsl.d	$a3, $s6, $s1, 3
	alsl.d	$a4, $s6, $s2, 3
	addi.d	$a5, $s3, 8
	alsl.d	$a6, $s6, $a5, 3
	ld.d	$a7, $sp, 80
	pcalau12i	$t0, %pc_hi20(.LCPI3_0)
	vld	$vr0, $t0, %pc_lo12(.LCPI3_0)
	pcalau12i	$t0, %pc_hi20(.LCPI3_1)
	fld.d	$fa1, $t0, %pc_lo12(.LCPI3_1)
	alsl.d	$t0, $s6, $s3, 3
	alsl.d	$t1, $s6, $s4, 3
	vldi	$vr2, -928
	.p2align	4, , 16
.LBB3_5:                                # %for.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_6 Depth 2
	move	$t2, $a0
	move	$t3, $a7
	.p2align	4, , 16
.LBB3_6:                                # %for.body.i.us
                                        #   Parent Loop BB3_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t4, $t3, 0
	slli.d	$t4, $t4, 3
	vldx	$vr6, $a3, $t4
	fldx.d	$fa3, $a2, $t4
	fldx.d	$fa4, $a3, $t4
	fldx.d	$fa5, $s1, $t4
	fldx.d	$fa7, $a1, $t4
	vldx	$vr8, $s1, $t4
	fadd.d	$fa3, $fa3, $fa4
	fsub.d	$fa3, $fa3, $fa5
	fsub.d	$fa3, $fa3, $fa7
	fmul.d	$fa4, $fa3, $fa2
	vldx	$vr7, $a4, $t4
	fldx.d	$fa3, $a4, $t4
	vldx	$vr9, $t1, $t4
	vldx	$vr10, $s2, $t4
	fldx.d	$fa5, $s2, $t4
	vpackod.d	$vr11, $vr8, $vr7
	vpackev.d	$vr12, $vr9, $vr7
	vshuf4i.d	$vr7, $vr6, 12
	vldx	$vr13, $s4, $t4
	vfadd.d	$vr7, $vr11, $vr7
	vpackev.d	$vr6, $vr6, $vr10
	vfsub.d	$vr6, $vr7, $vr6
	vpackev.d	$vr7, $vr13, $vr10
	vshuf4i.d	$vr10, $vr8, 9
	vfsub.d	$vr6, $vr6, $vr10
	vfmul.d	$vr6, $vr6, $vr2
	vldx	$vr8, $t0, $t4
	fldx.d	$ft6, $a6, $t4
	fldx.d	$ft7, $t0, $t4
	fldx.d	$ft8, $s3, $t4
	fldx.d	$ft9, $a5, $t4
	vldx	$vr18, $s3, $t4
	fadd.d	$ft6, $ft6, $ft7
	fsub.d	$ft6, $ft6, $ft8
	fsub.d	$ft6, $ft6, $ft9
	fmul.d	$ft6, $ft6, $fa2
	fldx.d	$ft7, $t1, $t4
	fldx.d	$ft8, $s4, $t4
	vshuf4i.d	$vr10, $vr13, 12
	vshuf4i.d	$vr11, $vr9, 12
	vfadd.d	$vr11, $vr10, $vr11
	vfsub.d	$vr12, $vr11, $vr12
	vfsub.d	$vr12, $vr12, $vr7
	vpackod.d	$vr13, $vr9, $vr18
	vori.b	$vr17, $vr8, 0
	vshuf4i.d	$vr17, $vr9, 9
	vfadd.d	$vr9, $vr13, $vr17
	vshuf4i.d	$vr8, $vr7, 12
	vfsub.d	$vr7, $vr9, $vr8
	vshuf4i.d	$vr18, $vr10, 12
	vfsub.d	$vr7, $vr7, $vr18
	vfmul.d	$vr7, $vr7, $vr2
	vfmul.d	$vr8, $vr12, $vr0
	vreplvei.d	$vr9, $vr8, 0
	fmul.d	$ft1, $fa4, $ft1
	vreplvei.d	$vr10, $vr6, 0
	vreplvei.d	$vr12, $vr6, 1
	fmadd.d	$ft1, $ft4, $ft2, $ft1
	fadd.d	$ft1, $ft1, $fa1
	frecip.d	$ft1, $ft1
	fneg.d	$fa4, $fa4
	vextrins.d	$vr14, $vr4, 16
	vfmul.d	$vr4, $vr8, $vr14
	vfmadd.d	$vr4, $vr7, $vr6, $vr4
	vreplvei.d	$vr6, $vr9, 0
	vfmul.d	$vr4, $vr6, $vr4
	vreplvei.d	$vr6, $vr11, 1
	fadd.d	$fa6, $fa6, $ft7
	fadd.d	$fa6, $fa6, $ft8
	vreplvei.d	$vr7, $vr11, 0
	fadd.d	$fa3, $fa7, $fa3
	fadd.d	$fa3, $fa3, $fa5
	fdiv.d	$fa3, $fa6, $fa3
	vreplvei.d	$vr5, $vr4, 0
	vreplvei.d	$vr4, $vr4, 1
	fadd.d	$fa4, $fa5, $fa4
	fadd.d	$fa3, $fa3, $fa4
	fstx.d	$fa3, $s0, $t4
	addi.d	$t2, $t2, -1
	addi.d	$t3, $t3, 4
	bnez	$t2, .LBB3_6
# %bb.7:                                # %for.cond.i.invoke.cont43_crit_edge.us
                                        #   in Loop: Header=BB3_5 Depth=1
	addi.d	$s5, $s5, -1
	bnez	$s5, .LBB3_5
.LBB3_8:                                # %if.end.i
.Ltmp7:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp8:                                 # EH_LABEL
# %bb.9:                                # %for.cond.cleanup
	ld.d	$a0, $sp, 80
	beqz	$a0, .LBB3_11
# %bb.10:                               # %delete.notnull.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB3_11:                               # %_ZN7ADomainD2Ev.exit
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
.LBB3_12:                               # %lpad36
.Ltmp9:                                 # EH_LABEL
	ld.d	$a1, $sp, 80
	move	$fp, $a0
	beqz	$a1, .LBB3_14
# %bb.13:                               # %delete.notnull.i24
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB3_14:                               # %_ZN7ADomainD2Ev.exit26
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_ZL24BM_DEL_DOT_VEC_2D_LAMBDARN9benchmark5StateE, .Lfunc_end3-_ZL24BM_DEL_DOT_VEC_2D_LAMBDARN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table3:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp5-.Lfunc_begin1           #   Call between .Lfunc_begin1 and .Ltmp5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp5-.Lfunc_begin1           # >> Call Site 2 <<
	.uleb128 .Ltmp8-.Ltmp5                  #   Call between .Ltmp5 and .Ltmp8
	.uleb128 .Ltmp9-.Lfunc_begin1           #     jumps to .Ltmp9
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp8-.Lfunc_begin1           # >> Call Site 3 <<
	.uleb128 .Lfunc_end3-.Ltmp8             #   Call between .Ltmp8 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZL16BM_COUPLE_LAMBDARN9benchmark5StateE
.LCPI4_0:
	.dword	0x406e56fd83ba6863              # double 242.71844660194174
.LCPI4_1:
	.dword	0x38e09d8792fb4c49              # double 9.9999999999999992E-35
.LCPI4_2:
	.dword	0x3fca9fbe76c8b439              # double 0.20799999999999999
	.text
	.p2align	5
	.type	_ZL16BM_COUPLE_LAMBDARN9benchmark5StateE,@function
_ZL16BM_COUPLE_LAMBDARN9benchmark5StateE: # @_ZL16BM_COUPLE_LAMBDARN9benchmark5StateE
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -544
	.cfi_def_cfa_offset 544
	st.d	$ra, $sp, 536                   # 8-byte Folded Spill
	st.d	$fp, $sp, 528                   # 8-byte Folded Spill
	st.d	$s0, $sp, 520                   # 8-byte Folded Spill
	st.d	$s1, $sp, 512                   # 8-byte Folded Spill
	st.d	$s2, $sp, 504                   # 8-byte Folded Spill
	st.d	$s3, $sp, 496                   # 8-byte Folded Spill
	st.d	$s4, $sp, 488                   # 8-byte Folded Spill
	st.d	$s5, $sp, 480                   # 8-byte Folded Spill
	st.d	$s6, $sp, 472                   # 8-byte Folded Spill
	st.d	$s7, $sp, 464                   # 8-byte Folded Spill
	st.d	$s8, $sp, 456                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 448                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 440                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 432                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 424                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 416                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 408                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 400                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 392                  # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	.cfi_offset 57, -104
	.cfi_offset 58, -112
	.cfi_offset 59, -120
	.cfi_offset 60, -128
	.cfi_offset 61, -136
	.cfi_offset 62, -144
	.cfi_offset 63, -152
	move	$s7, $a0
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 7
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s0, 192
	ld.d	$s1, $s0, 200
	ld.d	$a0, $s7, 32
	ld.d	$s3, $s0, 208
	ld.d	$s2, $s0, 216
	ld.d	$s0, $s0, 224
	ld.w	$a1, $a0, 0
	addi.d	$a0, $sp, 304
	ori	$a2, $zero, 3
	pcaddu18i	$ra, %call36(_ZN7ADomainC2Eii)
	jirl	$ra, $ra, 0
	ld.w	$s4, $sp, 316
	ld.w	$s5, $sp, 328
	ld.w	$a0, $sp, 320
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ld.w	$a0, $sp, 332
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	ld.w	$a0, $sp, 324
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ld.w	$a0, $sp, 336
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	ld.w	$s6, $s7, 28
	ld.d	$s8, $s7, 16
.Ltmp10:                                # EH_LABEL
	st.d	$s7, $sp, 104                   # 8-byte Folded Spill
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp11:                                # EH_LABEL
# %bb.1:                                # %for.cond.preheader
	bnez	$s6, .LBB4_47
# %bb.2:                                # %for.cond.preheader
	beqz	$s8, .LBB4_47
# %bb.3:                                # %for.cond.i.preheader.lr.ph
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	bge	$a0, $a1, .LBB4_47
# %bb.4:                                # %for.cond.i.preheader.lr.ph.split.us
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	bge	$a0, $a1, .LBB4_47
# %bb.5:                                # %for.cond.i.preheader.lr.ph.split.us
	bge	$s4, $s5, .LBB4_47
# %bb.6:                                # %for.cond.i.preheader.us.us.preheader
	addi.w	$a0, $s5, 2
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	addi.w	$a1, $a3, 2
	addi.w	$a2, $s5, 1
	addi.w	$a3, $a3, 1
	sub.d	$a4, $s5, $s4
	st.d	$a4, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a6, $sp, 152                   # 8-byte Folded Reload
	mul.d	$a4, $a6, $a3
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	add.d	$a4, $a4, $a5
	mul.d	$a4, $a4, $a2
	add.d	$a4, $a4, $s4
	slli.d	$a4, $a4, 4
	addi.d	$a4, $a4, 8
	add.d	$a7, $s3, $a4
	st.d	$a7, $sp, 144                   # 8-byte Folded Spill
	mul.d	$a3, $a3, $a2
	slli.d	$a3, $a3, 4
	st.d	$a3, $sp, 176                   # 8-byte Folded Spill
	slli.d	$a2, $a2, 4
	st.d	$a2, $sp, 256                   # 8-byte Folded Spill
	mul.d	$a2, $a6, $a1
	add.d	$a2, $a2, $a5
	mul.d	$a2, $a2, $a0
	slli.d	$a2, $a2, 4
	alsl.d	$a2, $s4, $a2, 4
	add.d	$a2, $a2, $s2
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	mul.d	$a1, $a1, $a0
	slli.d	$a1, $a1, 4
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 4
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	add.d	$a0, $s1, $a4
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	add.d	$a0, $s0, $a4
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	add.d	$a0, $fp, $a4
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	b	.LBB4_8
	.p2align	4, , 16
.LBB4_7:                                # %for.cond.i.invoke.cont27_crit_edge.split.us.us.us
                                        #   in Loop: Header=BB4_8 Depth=1
	ld.d	$s8, $sp, 160                   # 8-byte Folded Reload
	addi.d	$s8, $s8, -1
	beqz	$s8, .LBB4_47
.LBB4_8:                                # %for.cond.i.preheader.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_10 Depth 2
                                        #       Child Loop BB4_12 Depth 3
                                        #         Child Loop BB4_13 Depth 4
	st.d	$s8, $sp, 160                   # 8-byte Folded Spill
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	b	.LBB4_10
	.p2align	4, , 16
.LBB4_9:                                # %.noexc19.loopexit.us.us.us
                                        #   in Loop: Header=BB4_10 Depth=2
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	add.d	$s1, $s1, $a0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 216                   # 8-byte Folded Reload
	add.d	$s8, $s8, $a1
	ld.d	$s6, $sp, 224                   # 8-byte Folded Reload
	add.d	$s6, $s6, $a0
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	add.d	$s4, $s4, $a0
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	add.d	$fp, $fp, $a0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beq	$a3, $a0, .LBB4_7
.LBB4_10:                               # %for.body.i.us.us.us
                                        #   Parent Loop BB4_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_12 Depth 3
                                        #         Child Loop BB4_13 Depth 4
	st.d	$a3, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	st.d	$s4, $sp, 232                   # 8-byte Folded Spill
	st.d	$s6, $sp, 224                   # 8-byte Folded Spill
	st.d	$s8, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	ld.d	$s7, $sp, 184                   # 8-byte Folded Reload
	b	.LBB4_12
	.p2align	4, , 16
.LBB4_11:                               # %for.cond.cleanup12.i.loopexit.us.us.us
                                        #   in Loop: Header=BB4_12 Depth=3
	addi.w	$s7, $s7, 1
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	add.d	$s1, $s1, $a0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	add.d	$s8, $s8, $a1
	add.d	$s6, $s6, $a0
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	add.d	$s4, $s4, $a0
	ld.d	$fp, $sp, 288                   # 8-byte Folded Reload
	add.d	$fp, $fp, $a0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	beq	$a0, $s7, .LBB4_9
.LBB4_12:                               # %for.body.i22.us.us.us
                                        #   Parent Loop BB4_8 Depth=1
                                        #     Parent Loop BB4_10 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_13 Depth 4
	st.d	$fp, $sp, 288                   # 8-byte Folded Spill
	st.d	$s4, $sp, 280                   # 8-byte Folded Spill
	move	$s3, $s6
	move	$s0, $s8
	move	$s2, $s1
	ld.d	$s5, $sp, 264                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_13:                               # %for.body13.i.us.us.us
                                        #   Parent Loop BB4_8 Depth=1
                                        #     Parent Loop BB4_10 Depth=2
                                        #       Parent Loop BB4_12 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.d	$fa0, $s0, -8
	pcalau12i	$a0, %pc_hi20(.LCPI4_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI4_0)
	fld.d	$fa2, $s0, 0
	fld.d	$fa3, $s4, -8
	fld.d	$fa4, $s4, 0
	fmul.d	$fs1, $fa0, $fa1
	fmul.d	$fs2, $fa2, $fa1
	fmul.d	$fs3, $fa3, $fa1
	fmul.d	$fs6, $fa4, $fa1
	fmul.d	$fa0, $fs2, $fs2
	fmadd.d	$fa0, $fs1, $fs1, $fa0
	fmadd.d	$fa0, $fs3, $fs3, $fa0
	pcalau12i	$a0, %pc_hi20(.LCPI4_1)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI4_1)
	pcalau12i	$a0, %pc_hi20(.LCPI4_2)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI4_2)
	fmadd.d	$fa0, $fs6, $fs6, $fa0
	fadd.d	$fs4, $fa0, $fa1
	fsqrt.d	$fa0, $fs4
	fmul.d	$fa0, $fa0, $fa2
	vldi	$vr1, -928
	fmul.d	$fs0, $fa0, $fa1
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 296                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fld.d	$ft2, $fp, -8
	fld.d	$ft3, $fp, 0
	fld.d	$ft6, $s3, -8
	fld.d	$ft7, $s3, 0
	fld.d	$fa7, $s2, -8
	fld.d	$ft0, $s2, 0
	frsqrt.d	$fs0, $fs4
	fmul.d	$fs1, $fs1, $fs0
	fmul.d	$fs7, $fs2, $fs0
	fmul.d	$fa1, $ft6, $fs1
	fmul.d	$fa2, $ft7, $fs7
	fmul.d	$fa3, $ft7, $fs1
	fmul.d	$fa4, $ft6, $fs7
	fsub.d	$ft4, $fa1, $fa2
	fadd.d	$ft5, $fa4, $fa3
	fcmp.cor.d	$fcc1, $ft4, $ft4
	fmov.d	$fs4, $ft4
	fmov.d	$fs2, $ft5
	bceqz	$fcc1, .LBB4_25
.LBB4_14:                               # %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.i.us.us.us
                                        #   in Loop: Header=BB4_13 Depth=4
	fmul.d	$fs5, $fs3, $fs0
	fmul.d	$fs0, $fs6, $fs0
	fmul.d	$fa1, $fs5, $fa7
	fmul.d	$fa2, $fs0, $ft0
	fmul.d	$fa3, $fs5, $ft0
	fmul.d	$fa4, $fs0, $fa7
	fsub.d	$fs6, $fa1, $fa2
	fadd.d	$fs3, $fa4, $fa3
	fcmp.cor.d	$fcc2, $fs6, $fs6
	fmov.d	$fa2, $fs6
	fmov.d	$fa1, $fs3
	bceqz	$fcc2, .LBB4_27
.LBB4_15:                               # %_ZStmlIdESt7complexIT_ERKS2_S4_.exit71.i.us.us.us
                                        #   in Loop: Header=BB4_13 Depth=4
	fadd.d	$fa2, $fs4, $fa2
	fadd.d	$fa1, $fs2, $fa1
	fld.d	$ft1, $sp, 296                  # 8-byte Folded Reload
	fmul.d	$fa2, $ft1, $fa2
	fmul.d	$fa3, $ft1, $fa1
	movgr2fr.d	$fs2, $zero
	fmul.d	$fa1, $fa2, $fs2
	fmul.d	$fa5, $fa3, $fs2
	fsub.d	$fa4, $fa1, $fa3
	fcmp.cor.d	$fcc0, $fa4, $fa4
	fadd.d	$fa1, $fa2, $fa5
	bceqz	$fcc0, .LBB4_29
.LBB4_16:                               # %_ZStmlIdESt7complexIT_ERKS2_S4_.exit107.i.us.us.us
                                        #   in Loop: Header=BB4_13 Depth=4
	fmul.d	$fa2, $fa0, $ft2
	fmul.d	$fa3, $fa0, $ft3
	fsub.d	$fa2, $fa2, $fa4
	fsub.d	$fa1, $fa3, $fa1
	fst.d	$fa2, $fp, -8
	fst.d	$fa1, $fp, 0
	bceqz	$fcc2, .LBB4_31
.LBB4_17:                               # %_ZStmlIdESt7complexIT_ERKS2_S4_.exit133.i.us.us.us
                                        #   in Loop: Header=BB4_13 Depth=4
	fneg.d	$fa4, $fs7
	fmul.d	$fa1, $fs1, $fs6
	fmul.d	$fa2, $fs1, $fs3
	fmul.d	$fa3, $fs7, $fs3
	fadd.d	$fs4, $fa1, $fa3
	fmul.d	$fa1, $fs7, $fs6
	fcmp.cor.d	$fcc0, $fs4, $fs4
	fsub.d	$fa6, $fa2, $fa1
	bceqz	$fcc0, .LBB4_33
.LBB4_18:                               # %_ZStmlIdESt7complexIT_ERKS2_S4_.exit154.i.us.us.us
                                        #   in Loop: Header=BB4_13 Depth=4
	fmul.d	$fa1, $ft2, $fs1
	fmul.d	$fa3, $ft3, $fs1
	fmul.d	$fa2, $ft3, $fs7
	fadd.d	$fa2, $fa1, $fa2
	fmul.d	$fa1, $ft2, $fs7
	fcmp.cor.d	$fcc0, $fa2, $fa2
	fsub.d	$fa1, $fa3, $fa1
	bceqz	$fcc0, .LBB4_35
.LBB4_19:                               # %_ZStmlIdESt7complexIT_ERKS2_S4_.exit181.i.us.us.us
                                        #   in Loop: Header=BB4_13 Depth=4
	fmul.d	$fa2, $ft1, $fa2
	fmul.d	$fa3, $ft1, $fa1
	fmul.d	$fa1, $fa2, $fs2
	fmul.d	$fa5, $fa3, $fs2
	fsub.d	$fa4, $fa1, $fa3
	fcmp.cor.d	$fcc0, $fa4, $fa4
	fadd.d	$fa1, $fa2, $fa5
	bceqz	$fcc0, .LBB4_37
.LBB4_20:                               # %_ZStmlIdESt7complexIT_ERKS2_S4_.exit219.i.us.us.us
                                        #   in Loop: Header=BB4_13 Depth=4
	fmul.d	$fa2, $fs7, $fs7
	fmadd.d	$ft8, $fs1, $fs1, $fa2
	fmul.d	$fa2, $fs0, $fs0
	fmadd.d	$fs3, $fs5, $fs5, $fa2
	fmadd.d	$fa2, $ft8, $fa0, $fs3
	vldi	$vr3, -784
	fadd.d	$fs6, $fa0, $fa3
	fmul.d	$fa3, $fs6, $fs4
	fmul.d	$fa5, $fs6, $fa6
	fmul.d	$fa6, $ft6, $fa2
	fmul.d	$fa2, $ft7, $fa2
	fadd.d	$fa3, $fa6, $fa3
	fadd.d	$fa2, $fa2, $fa5
	fsub.d	$fa3, $fa3, $fa4
	fsub.d	$fa1, $fa2, $fa1
	fst.d	$fa3, $s3, -8
	fst.d	$fa1, $s3, 0
	bceqz	$fcc1, .LBB4_39
.LBB4_21:                               # %_ZStmlIdESt7complexIT_ERKS2_S4_.exit247.i.us.us.us
                                        #   in Loop: Header=BB4_13 Depth=4
	fneg.d	$fs4, $fs0
	fmul.d	$fa1, $fs5, $ft4
	fmul.d	$fa2, $fs5, $ft5
	fmul.d	$fa3, $fs0, $ft5
	fadd.d	$fs1, $fa1, $fa3
	fmul.d	$fa1, $fs0, $ft4
	fcmp.cor.d	$fcc0, $fs1, $fs1
	fsub.d	$fs7, $fa2, $fa1
	bceqz	$fcc0, .LBB4_41
.LBB4_22:                               # %_ZStmlIdESt7complexIT_ERKS2_S4_.exit269.i.us.us.us
                                        #   in Loop: Header=BB4_13 Depth=4
	fmul.d	$fa1, $ft2, $fs5
	fmul.d	$fa3, $ft3, $fs5
	fmul.d	$fa2, $ft3, $fs0
	fadd.d	$fa2, $fa1, $fa2
	fmul.d	$fa1, $ft2, $fs0
	fcmp.cor.d	$fcc0, $fa2, $fa2
	fsub.d	$fa1, $fa3, $fa1
	bceqz	$fcc0, .LBB4_43
.LBB4_23:                               # %_ZStmlIdESt7complexIT_ERKS2_S4_.exit296.i.us.us.us
                                        #   in Loop: Header=BB4_13 Depth=4
	fmul.d	$fa2, $ft1, $fa2
	fmul.d	$fa3, $ft1, $fa1
	fmul.d	$fa1, $fa2, $fs2
	fmul.d	$fa5, $fa3, $fs2
	fsub.d	$fa4, $fa1, $fa3
	fcmp.cor.d	$fcc0, $fa4, $fa4
	fadd.d	$fa1, $fa2, $fa5
	bceqz	$fcc0, .LBB4_45
.LBB4_24:                               # %_ZStmlIdESt7complexIT_ERKS2_S4_.exit334.i.us.us.us
                                        #   in Loop: Header=BB4_13 Depth=4
	fmadd.d	$fa0, $fs3, $fa0, $ft8
	fmul.d	$fa2, $fs6, $fs1
	fmul.d	$fa3, $fs6, $fs7
	fmul.d	$fa5, $fa7, $fa0
	fmul.d	$fa0, $ft0, $fa0
	fadd.d	$fa2, $fa5, $fa2
	fadd.d	$fa0, $fa0, $fa3
	fsub.d	$fa2, $fa2, $fa4
	fsub.d	$fa0, $fa0, $fa1
	fst.d	$fa2, $s2, -8
	fst.d	$fa0, $s2, 0
	addi.d	$s5, $s5, -1
	addi.d	$s2, $s2, 16
	addi.d	$s0, $s0, 16
	addi.d	$s3, $s3, 16
	addi.d	$s4, $s4, 16
	addi.d	$fp, $fp, 16
	bnez	$s5, .LBB4_13
	b	.LBB4_11
.LBB4_25:                               # %complex_mul_imag_nan.i.i.i.us.us.us
                                        #   in Loop: Header=BB4_13 Depth=4
	fcmp.cor.d	$fcc0, $ft5, $ft5
	fmov.d	$fs4, $ft4
	fmov.d	$fs2, $ft5
	bcnez	$fcc0, .LBB4_14
# %bb.26:                               # %complex_mul_libcall.i.i.i.us.us.us
                                        #   in Loop: Header=BB4_13 Depth=4
	fst.d	$fa0, $sp, 96                   # 8-byte Folded Spill
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs7
	fmov.d	$fa2, $ft6
	fmov.d	$fa3, $ft7
	fst.d	$fa7, $sp, 32                   # 8-byte Folded Spill
	fmov.d	$fs5, $ft0
	fst.d	$ft2, $sp, 40                   # 8-byte Folded Spill
	fmov.d	$fs2, $ft3
	fst.d	$ft4, $sp, 80                   # 8-byte Folded Spill
	fmov.d	$fs4, $ft5
	fst.d	$ft6, $sp, 72                   # 8-byte Folded Spill
	fst.d	$ft7, $sp, 64                   # 8-byte Folded Spill
	movcf2gr	$a0, $fcc1
	st.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56
	movgr2cf	$fcc1, $a0
	fld.d	$ft7, $sp, 64                   # 8-byte Folded Reload
	fld.d	$ft6, $sp, 72                   # 8-byte Folded Reload
	fmov.d	$ft5, $fs4
	fld.d	$ft4, $sp, 80                   # 8-byte Folded Reload
	fmov.d	$ft3, $fs2
	fld.d	$ft2, $sp, 40                   # 8-byte Folded Reload
	fmov.d	$ft0, $fs5
	fld.d	$fa7, $sp, 32                   # 8-byte Folded Reload
	fmov.d	$fs4, $fa0
	fld.d	$fa0, $sp, 96                   # 8-byte Folded Reload
	fmov.d	$fs2, $fa1
	b	.LBB4_14
.LBB4_27:                               # %complex_mul_imag_nan.i.i67.i.us.us.us
                                        #   in Loop: Header=BB4_13 Depth=4
	fcmp.cor.d	$fcc0, $fs3, $fs3
	fmov.d	$fa2, $fs6
	fmov.d	$fa1, $fs3
	bcnez	$fcc0, .LBB4_15
# %bb.28:                               # %complex_mul_libcall.i.i69.i.us.us.us
                                        #   in Loop: Header=BB4_13 Depth=4
	fst.d	$fa0, $sp, 96                   # 8-byte Folded Spill
	fmov.d	$fa0, $fs5
	fmov.d	$fa1, $fs0
	fmov.d	$fa2, $fa7
	fmov.d	$fa3, $ft0
	fst.d	$fa7, $sp, 32                   # 8-byte Folded Spill
	fst.d	$ft0, $sp, 16                   # 8-byte Folded Spill
	fst.d	$ft2, $sp, 40                   # 8-byte Folded Spill
	fst.d	$ft3, $sp, 88                   # 8-byte Folded Spill
	fst.d	$ft4, $sp, 80                   # 8-byte Folded Spill
	fst.d	$ft5, $sp, 48                   # 8-byte Folded Spill
	fst.d	$ft6, $sp, 72                   # 8-byte Folded Spill
	fst.d	$ft7, $sp, 64                   # 8-byte Folded Spill
	movcf2gr	$a0, $fcc1
	st.d	$a0, $sp, 56
	movcf2gr	$a0, $fcc2
	st.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24
	movgr2cf	$fcc2, $a0
	ld.d	$a0, $sp, 56
	movgr2cf	$fcc1, $a0
	fld.d	$ft7, $sp, 64                   # 8-byte Folded Reload
	fld.d	$ft6, $sp, 72                   # 8-byte Folded Reload
	fld.d	$ft5, $sp, 48                   # 8-byte Folded Reload
	fld.d	$ft4, $sp, 80                   # 8-byte Folded Reload
	fld.d	$ft3, $sp, 88                   # 8-byte Folded Reload
	fld.d	$ft2, $sp, 40                   # 8-byte Folded Reload
	fld.d	$ft0, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fa7, $sp, 32                   # 8-byte Folded Reload
	fmov.d	$fa2, $fa0
	fld.d	$fa0, $sp, 96                   # 8-byte Folded Reload
	b	.LBB4_15
.LBB4_29:                               # %complex_mul_imag_nan.i.i103.i.us.us.us
                                        #   in Loop: Header=BB4_13 Depth=4
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bcnez	$fcc0, .LBB4_16
# %bb.30:                               # %complex_mul_libcall.i.i105.i.us.us.us
                                        #   in Loop: Header=BB4_13 Depth=4
	movgr2fr.d	$fa4, $zero
	vldi	$vr1, -912
	fst.d	$fa0, $sp, 96                   # 8-byte Folded Spill
	fmov.d	$fa0, $fa4
	fst.d	$fa7, $sp, 32                   # 8-byte Folded Spill
	fmov.d	$fs4, $ft0
	fst.d	$ft2, $sp, 40                   # 8-byte Folded Spill
	fst.d	$ft3, $sp, 88                   # 8-byte Folded Spill
	fst.d	$ft4, $sp, 80                   # 8-byte Folded Spill
	fst.d	$ft5, $sp, 48                   # 8-byte Folded Spill
	fst.d	$ft6, $sp, 72                   # 8-byte Folded Spill
	fst.d	$ft7, $sp, 64                   # 8-byte Folded Spill
	movcf2gr	$a0, $fcc1
	st.d	$a0, $sp, 56
	movcf2gr	$a0, $fcc2
	st.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24
	movgr2cf	$fcc2, $a0
	ld.d	$a0, $sp, 56
	movgr2cf	$fcc1, $a0
	fld.d	$ft7, $sp, 64                   # 8-byte Folded Reload
	fld.d	$ft6, $sp, 72                   # 8-byte Folded Reload
	fld.d	$ft5, $sp, 48                   # 8-byte Folded Reload
	fld.d	$ft4, $sp, 80                   # 8-byte Folded Reload
	fld.d	$ft3, $sp, 88                   # 8-byte Folded Reload
	fld.d	$ft2, $sp, 40                   # 8-byte Folded Reload
	fld.d	$ft1, $sp, 296                  # 8-byte Folded Reload
	fmov.d	$ft0, $fs4
	fld.d	$fa7, $sp, 32                   # 8-byte Folded Reload
	fmov.d	$fa4, $fa0
	fld.d	$fa0, $sp, 96                   # 8-byte Folded Reload
	b	.LBB4_16
.LBB4_31:                               # %complex_mul_imag_nan.i.i129.i.us.us.us
                                        #   in Loop: Header=BB4_13 Depth=4
	fcmp.cor.d	$fcc0, $fs3, $fs3
	bcnez	$fcc0, .LBB4_17
# %bb.32:                               # %complex_mul_libcall.i.i131.i.us.us.us
                                        #   in Loop: Header=BB4_13 Depth=4
	fst.d	$fa0, $sp, 96                   # 8-byte Folded Spill
	fmov.d	$fa0, $fs5
	fmov.d	$fa1, $fs0
	fmov.d	$fa2, $fa7
	fmov.d	$fa3, $ft0
	fmov.d	$fs4, $fa7
	fmov.d	$fs6, $ft0
	fmov.d	$fs3, $ft2
	fst.d	$ft3, $sp, 88                   # 8-byte Folded Spill
	fst.d	$ft4, $sp, 80                   # 8-byte Folded Spill
	fst.d	$ft5, $sp, 48                   # 8-byte Folded Spill
	fst.d	$ft6, $sp, 72                   # 8-byte Folded Spill
	fst.d	$ft7, $sp, 64                   # 8-byte Folded Spill
	movcf2gr	$a0, $fcc1
	st.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56
	movgr2cf	$fcc1, $a0
	fld.d	$ft7, $sp, 64                   # 8-byte Folded Reload
	fld.d	$ft6, $sp, 72                   # 8-byte Folded Reload
	fld.d	$ft5, $sp, 48                   # 8-byte Folded Reload
	fld.d	$ft4, $sp, 80                   # 8-byte Folded Reload
	fld.d	$ft3, $sp, 88                   # 8-byte Folded Reload
	fmov.d	$ft2, $fs3
	fld.d	$ft1, $sp, 296                  # 8-byte Folded Reload
	fmov.d	$ft0, $fs6
	fmov.d	$fa7, $fs4
	fmov.d	$fs6, $fa0
	fld.d	$fa0, $sp, 96                   # 8-byte Folded Reload
	fmov.d	$fs3, $fa1
	b	.LBB4_17
.LBB4_33:                               # %complex_mul_imag_nan.i.i150.i.us.us.us
                                        #   in Loop: Header=BB4_13 Depth=4
	fcmp.cor.d	$fcc0, $fa6, $fa6
	bcnez	$fcc0, .LBB4_18
# %bb.34:                               # %complex_mul_libcall.i.i152.i.us.us.us
                                        #   in Loop: Header=BB4_13 Depth=4
	fst.d	$fa0, $sp, 96                   # 8-byte Folded Spill
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fa4
	fmov.d	$fa2, $fs6
	fmov.d	$fa3, $fs3
	fmov.d	$fs3, $fa7
	fmov.d	$fs4, $ft0
	fmov.d	$fs6, $ft2
	fst.d	$ft3, $sp, 88                   # 8-byte Folded Spill
	fst.d	$ft4, $sp, 80                   # 8-byte Folded Spill
	fst.d	$ft5, $sp, 48                   # 8-byte Folded Spill
	fst.d	$ft6, $sp, 72                   # 8-byte Folded Spill
	fst.d	$ft7, $sp, 64                   # 8-byte Folded Spill
	movcf2gr	$a0, $fcc1
	st.d	$a0, $sp, 56
	fst.d	$fa4, $sp, 40                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
	fld.d	$fa4, $sp, 40                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 56
	movgr2cf	$fcc1, $a0
	fld.d	$ft7, $sp, 64                   # 8-byte Folded Reload
	fld.d	$ft6, $sp, 72                   # 8-byte Folded Reload
	fld.d	$ft5, $sp, 48                   # 8-byte Folded Reload
	fld.d	$ft4, $sp, 80                   # 8-byte Folded Reload
	fld.d	$ft3, $sp, 88                   # 8-byte Folded Reload
	fmov.d	$ft2, $fs6
	fld.d	$ft1, $sp, 296                  # 8-byte Folded Reload
	fmov.d	$ft0, $fs4
	fmov.d	$fa7, $fs3
	fmov.d	$fs4, $fa0
	fld.d	$fa0, $sp, 96                   # 8-byte Folded Reload
	fmov.d	$fa6, $fa1
	b	.LBB4_18
.LBB4_35:                               # %complex_mul_imag_nan.i.i177.i.us.us.us
                                        #   in Loop: Header=BB4_13 Depth=4
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bcnez	$fcc0, .LBB4_19
# %bb.36:                               # %complex_mul_libcall.i.i179.i.us.us.us
                                        #   in Loop: Header=BB4_13 Depth=4
	fst.d	$fa0, $sp, 96                   # 8-byte Folded Spill
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fa4
	fmov.d	$fa2, $ft2
	fmov.d	$fa3, $ft3
	fmov.d	$fs6, $fa7
	fmov.d	$fs3, $ft0
	fst.d	$ft2, $sp, 40                   # 8-byte Folded Spill
	fst.d	$ft3, $sp, 88                   # 8-byte Folded Spill
	fst.d	$ft4, $sp, 80                   # 8-byte Folded Spill
	fst.d	$ft5, $sp, 48                   # 8-byte Folded Spill
	fst.d	$ft6, $sp, 72                   # 8-byte Folded Spill
	fst.d	$ft7, $sp, 64                   # 8-byte Folded Spill
	movcf2gr	$a0, $fcc1
	st.d	$a0, $sp, 56
	fst.d	$fa6, $sp, 32                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
	fld.d	$fa6, $sp, 32                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 56
	movgr2cf	$fcc1, $a0
	fld.d	$ft7, $sp, 64                   # 8-byte Folded Reload
	fld.d	$ft6, $sp, 72                   # 8-byte Folded Reload
	fld.d	$ft5, $sp, 48                   # 8-byte Folded Reload
	fld.d	$ft4, $sp, 80                   # 8-byte Folded Reload
	fld.d	$ft3, $sp, 88                   # 8-byte Folded Reload
	fld.d	$ft2, $sp, 40                   # 8-byte Folded Reload
	fld.d	$ft1, $sp, 296                  # 8-byte Folded Reload
	fmov.d	$ft0, $fs3
	fmov.d	$fa7, $fs6
	fmov.d	$fa2, $fa0
	fld.d	$fa0, $sp, 96                   # 8-byte Folded Reload
	b	.LBB4_19
.LBB4_37:                               # %complex_mul_imag_nan.i.i215.i.us.us.us
                                        #   in Loop: Header=BB4_13 Depth=4
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bcnez	$fcc0, .LBB4_20
# %bb.38:                               # %complex_mul_libcall.i.i217.i.us.us.us
                                        #   in Loop: Header=BB4_13 Depth=4
	movgr2fr.d	$fa4, $zero
	vldi	$vr1, -912
	fst.d	$fa0, $sp, 96                   # 8-byte Folded Spill
	fmov.d	$fa0, $fa4
	fmov.d	$fs6, $fa7
	fmov.d	$fs3, $ft0
	fst.d	$ft2, $sp, 40                   # 8-byte Folded Spill
	fst.d	$ft3, $sp, 88                   # 8-byte Folded Spill
	fst.d	$ft4, $sp, 80                   # 8-byte Folded Spill
	fst.d	$ft5, $sp, 48                   # 8-byte Folded Spill
	fst.d	$ft6, $sp, 72                   # 8-byte Folded Spill
	fst.d	$ft7, $sp, 64                   # 8-byte Folded Spill
	movcf2gr	$a0, $fcc1
	st.d	$a0, $sp, 56
	fst.d	$fa6, $sp, 32                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
	fld.d	$fa6, $sp, 32                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 56
	movgr2cf	$fcc1, $a0
	fld.d	$ft7, $sp, 64                   # 8-byte Folded Reload
	fld.d	$ft6, $sp, 72                   # 8-byte Folded Reload
	fld.d	$ft5, $sp, 48                   # 8-byte Folded Reload
	fld.d	$ft4, $sp, 80                   # 8-byte Folded Reload
	fld.d	$ft3, $sp, 88                   # 8-byte Folded Reload
	fld.d	$ft2, $sp, 40                   # 8-byte Folded Reload
	fld.d	$ft1, $sp, 296                  # 8-byte Folded Reload
	fmov.d	$ft0, $fs3
	fmov.d	$fa7, $fs6
	fmov.d	$fa4, $fa0
	fld.d	$fa0, $sp, 96                   # 8-byte Folded Reload
	b	.LBB4_20
.LBB4_39:                               # %complex_mul_imag_nan.i.i243.i.us.us.us
                                        #   in Loop: Header=BB4_13 Depth=4
	fcmp.cor.d	$fcc0, $ft5, $ft5
	bcnez	$fcc0, .LBB4_21
# %bb.40:                               # %complex_mul_libcall.i.i245.i.us.us.us
                                        #   in Loop: Header=BB4_13 Depth=4
	fst.d	$fa0, $sp, 96                   # 8-byte Folded Spill
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs7
	fmov.d	$fa2, $ft6
	fmov.d	$fa3, $ft7
	fmov.d	$fs1, $fa7
	fmov.d	$fs7, $ft0
	fmov.d	$fs4, $ft2
	fst.d	$ft3, $sp, 88                   # 8-byte Folded Spill
	fst.d	$ft8, $sp, 80                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
	fld.d	$ft8, $sp, 80                   # 8-byte Folded Reload
	fld.d	$ft3, $sp, 88                   # 8-byte Folded Reload
	fmov.d	$ft2, $fs4
	fld.d	$ft1, $sp, 296                  # 8-byte Folded Reload
	fmov.d	$ft0, $fs7
	fmov.d	$fa7, $fs1
	fmov.d	$ft4, $fa0
	fld.d	$fa0, $sp, 96                   # 8-byte Folded Reload
	fmov.d	$ft5, $fa1
	b	.LBB4_21
.LBB4_41:                               # %complex_mul_imag_nan.i.i265.i.us.us.us
                                        #   in Loop: Header=BB4_13 Depth=4
	fcmp.cor.d	$fcc0, $fs7, $fs7
	bcnez	$fcc0, .LBB4_22
# %bb.42:                               # %complex_mul_libcall.i.i267.i.us.us.us
                                        #   in Loop: Header=BB4_13 Depth=4
	fst.d	$fa0, $sp, 96                   # 8-byte Folded Spill
	fmov.d	$fa0, $fs5
	fmov.d	$fa1, $fs4
	fmov.d	$fa2, $ft4
	fmov.d	$fa3, $ft5
	fmov.d	$fs1, $fa7
	fmov.d	$fs7, $ft0
	fst.d	$ft2, $sp, 40                   # 8-byte Folded Spill
	fst.d	$ft3, $sp, 88                   # 8-byte Folded Spill
	fst.d	$ft8, $sp, 80                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
	fld.d	$ft8, $sp, 80                   # 8-byte Folded Reload
	fld.d	$ft3, $sp, 88                   # 8-byte Folded Reload
	fld.d	$ft2, $sp, 40                   # 8-byte Folded Reload
	fld.d	$ft1, $sp, 296                  # 8-byte Folded Reload
	fmov.d	$ft0, $fs7
	fmov.d	$fa7, $fs1
	fmov.d	$fs1, $fa0
	fld.d	$fa0, $sp, 96                   # 8-byte Folded Reload
	fmov.d	$fs7, $fa1
	b	.LBB4_22
.LBB4_43:                               # %complex_mul_imag_nan.i.i292.i.us.us.us
                                        #   in Loop: Header=BB4_13 Depth=4
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bcnez	$fcc0, .LBB4_23
# %bb.44:                               # %complex_mul_libcall.i.i294.i.us.us.us
                                        #   in Loop: Header=BB4_13 Depth=4
	fst.d	$fa0, $sp, 96                   # 8-byte Folded Spill
	fmov.d	$fa0, $fs5
	fmov.d	$fa1, $fs4
	fmov.d	$fa2, $ft2
	fmov.d	$fa3, $ft3
	fmov.d	$fs4, $fa7
	fmov.d	$fs5, $ft0
	fmov.d	$fs0, $ft8
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
	fmov.d	$ft8, $fs0
	fld.d	$ft1, $sp, 296                  # 8-byte Folded Reload
	fmov.d	$ft0, $fs5
	fmov.d	$fa7, $fs4
	fmov.d	$fa2, $fa0
	fld.d	$fa0, $sp, 96                   # 8-byte Folded Reload
	b	.LBB4_23
.LBB4_45:                               # %complex_mul_imag_nan.i.i330.i.us.us.us
                                        #   in Loop: Header=BB4_13 Depth=4
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bcnez	$fcc0, .LBB4_24
# %bb.46:                               # %complex_mul_libcall.i.i332.i.us.us.us
                                        #   in Loop: Header=BB4_13 Depth=4
	movgr2fr.d	$fa4, $zero
	vldi	$vr1, -912
	fmov.d	$fs0, $fa0
	fmov.d	$fa0, $fa4
	fmov.d	$fs2, $fa7
	fmov.d	$fs4, $ft0
	fmov.d	$fs5, $ft8
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
	fmov.d	$ft8, $fs5
	fmov.d	$ft0, $fs4
	fmov.d	$fa7, $fs2
	fmov.d	$fa4, $fa0
	fmov.d	$fa0, $fs0
	b	.LBB4_24
.LBB4_47:                               # %if.end.i
.Ltmp12:                                # EH_LABEL
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
# %bb.48:                               # %for.cond.cleanup
	ld.d	$a0, $sp, 376
	beqz	$a0, .LBB4_50
# %bb.49:                               # %delete.notnull.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB4_50:                               # %_ZN7ADomainD2Ev.exit
	fld.d	$fs7, $sp, 392                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 400                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 408                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 416                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 424                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 432                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 440                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 448                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 496                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 504                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 512                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 520                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 528                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 536                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 544
	ret
.LBB4_51:                               # %lpad20
.Ltmp14:                                # EH_LABEL
	ld.d	$a1, $sp, 376
	move	$fp, $a0
	beqz	$a1, .LBB4_53
# %bb.52:                               # %delete.notnull.i26
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB4_53:                               # %_ZN7ADomainD2Ev.exit28
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZL16BM_COUPLE_LAMBDARN9benchmark5StateE, .Lfunc_end4-_ZL16BM_COUPLE_LAMBDARN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table4:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp10-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp11-.Ltmp10                #   Call between .Ltmp10 and .Ltmp11
	.uleb128 .Ltmp14-.Lfunc_begin2          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp12-.Ltmp11                #   Call between .Ltmp11 and .Ltmp12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin2          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Lfunc_end4-.Ltmp13            #   Call between .Ltmp13 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZL13BM_FIR_LAMBDARN9benchmark5StateE
	.type	_ZL13BM_FIR_LAMBDARN9benchmark5StateE,@function
_ZL13BM_FIR_LAMBDARN9benchmark5StateE:  # @_ZL13BM_FIR_LAMBDARN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 32
	ld.d	$s1, $s0, 8
	ld.d	$s2, $s0, 16
	ld.w	$s3, $a0, 0
	ld.w	$s4, $fp, 28
	ld.d	$s0, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s4, .LBB5_12
# %bb.1:                                # %entry
	beqz	$s0, .LBB5_12
# %bb.2:                                # %entry
	addi.w	$a0, $s3, -16
	blez	$a0, .LBB5_12
# %bb.3:                                # %for.cond.i.preheader.us.preheader
	alsl.d	$a1, $a0, $s1, 3
	alsl.d	$a2, $a0, $s2, 3
	addi.d	$a2, $a2, 120
	sltu	$a2, $s1, $a2
	sltu	$a1, $s2, $a1
	and	$a3, $a2, $a1
	bstrpick.d	$a1, $a0, 30, 1
	slli.d	$a1, $a1, 1
	addi.d	$a2, $s2, 64
	sltui	$a4, $a0, 2
	or	$a3, $a4, $a3
	andi	$a3, $a3, 1
	vldi	$vr0, -1016
	movgr2fr.d	$fa1, $zero
	vrepli.b	$vr2, 0
	b	.LBB5_5
	.p2align	4, , 16
.LBB5_4:                                # %"for.cond.i._Z6forallIZL13BM_FIR_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us"
                                        #   in Loop: Header=BB5_5 Depth=1
	addi.d	$s0, $s0, -1
	beqz	$s0, .LBB5_12
.LBB5_5:                                # %for.cond.i.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_8 Depth 2
                                        #     Child Loop BB5_11 Depth 2
	beqz	$a3, .LBB5_7
# %bb.6:                                #   in Loop: Header=BB5_5 Depth=1
	move	$a6, $zero
	b	.LBB5_10
	.p2align	4, , 16
.LBB5_7:                                # %vector.body.preheader
                                        #   in Loop: Header=BB5_5 Depth=1
	move	$a6, $a2
	move	$a4, $s1
	move	$a5, $a1
	.p2align	4, , 16
.LBB5_8:                                # %vector.body
                                        #   Parent Loop BB5_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr3, $a6, -64
	vld	$vr4, $a6, -56
	vld	$vr5, $a6, -48
	vfmadd.d	$vr3, $vr3, $vr0, $vr2
	vld	$vr6, $a6, -40
	vfsub.d	$vr3, $vr3, $vr4
	vfsub.d	$vr3, $vr3, $vr5
	vld	$vr4, $a6, -32
	vfsub.d	$vr3, $vr3, $vr6
	vld	$vr5, $a6, -24
	vld	$vr6, $a6, -16
	vfsub.d	$vr3, $vr3, $vr4
	vld	$vr4, $a6, -8
	vfmadd.d	$vr3, $vr5, $vr0, $vr3
	vfsub.d	$vr3, $vr3, $vr6
	vld	$vr5, $a6, 0
	vfsub.d	$vr3, $vr3, $vr4
	vld	$vr4, $a6, 8
	vld	$vr6, $a6, 16
	vfsub.d	$vr3, $vr3, $vr5
	vld	$vr5, $a6, 24
	vfsub.d	$vr3, $vr3, $vr4
	vfmadd.d	$vr3, $vr6, $vr0, $vr3
	vld	$vr4, $a6, 32
	vfsub.d	$vr3, $vr3, $vr5
	vld	$vr5, $a6, 40
	vld	$vr6, $a6, 48
	vfsub.d	$vr3, $vr3, $vr4
	vld	$vr4, $a6, 56
	vfsub.d	$vr3, $vr3, $vr5
	vfsub.d	$vr3, $vr3, $vr6
	addi.d	$a6, $a6, 16
	vfmadd.d	$vr3, $vr4, $vr0, $vr3
	vst	$vr3, $a4, 0
	addi.d	$a5, $a5, -2
	addi.d	$a4, $a4, 16
	bnez	$a5, .LBB5_8
# %bb.9:                                # %middle.block
                                        #   in Loop: Header=BB5_5 Depth=1
	move	$a6, $a1
	beq	$a1, $a0, .LBB5_4
.LBB5_10:                               # %for.body.i.us.preheader
                                        #   in Loop: Header=BB5_5 Depth=1
	sub.d	$a4, $a0, $a6
	alsl.d	$a5, $a6, $s1, 3
	alsl.d	$a6, $a6, $a2, 3
	.p2align	4, , 16
.LBB5_11:                               # %for.body.i.us
                                        #   Parent Loop BB5_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa3, $a6, -64
	fld.d	$fa4, $a6, -56
	fld.d	$fa5, $a6, -48
	fmadd.d	$fa3, $fa3, $fa0, $fa1
	fld.d	$fa6, $a6, -40
	fsub.d	$fa3, $fa3, $fa4
	fsub.d	$fa3, $fa3, $fa5
	fld.d	$fa4, $a6, -32
	fsub.d	$fa3, $fa3, $fa6
	fld.d	$fa5, $a6, -24
	fld.d	$fa6, $a6, -16
	fsub.d	$fa3, $fa3, $fa4
	fld.d	$fa4, $a6, -8
	fmadd.d	$fa3, $fa5, $fa0, $fa3
	fsub.d	$fa3, $fa3, $fa6
	fld.d	$fa5, $a6, 0
	fsub.d	$fa3, $fa3, $fa4
	fld.d	$fa4, $a6, 8
	fld.d	$fa6, $a6, 16
	fsub.d	$fa3, $fa3, $fa5
	fld.d	$fa5, $a6, 24
	fsub.d	$fa3, $fa3, $fa4
	fmadd.d	$fa3, $fa6, $fa0, $fa3
	fld.d	$fa4, $a6, 32
	fsub.d	$fa3, $fa3, $fa5
	fld.d	$fa5, $a6, 40
	fld.d	$fa6, $a6, 48
	fsub.d	$fa3, $fa3, $fa4
	fld.d	$fa4, $a6, 56
	fsub.d	$fa3, $fa3, $fa5
	fsub.d	$fa3, $fa3, $fa6
	addi.d	$a6, $a6, 8
	fmadd.d	$fa3, $fa4, $fa0, $fa3
	fst.d	$fa3, $a5, 0
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 8
	bnez	$a4, .LBB5_11
	b	.LBB5_4
.LBB5_12:                               # %for.cond.cleanup
	move	$a0, $fp
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.Lfunc_end5:
	.size	_ZL13BM_FIR_LAMBDARN9benchmark5StateE, .Lfunc_end5-_ZL13BM_FIR_LAMBDARN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN7ADomainC2Eii
.LCPI6_0:
	.dword	0x4063800000000000              # double 156
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI6_1:
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.section	.text._ZN7ADomainC2Eii,"axG",@progbits,_ZN7ADomainC2Eii,comdat
	.weak	_ZN7ADomainC2Eii
	.p2align	5
	.type	_ZN7ADomainC2Eii,@function
_ZN7ADomainC2Eii:                       # @_ZN7ADomainC2Eii
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
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
	move	$s1, $a2
	move	$fp, $a0
	st.w	$a2, $a0, 0
	ori	$a0, $zero, 2
	ori	$a2, $zero, 2
	lu32i.d	$a2, 1
	st.d	$a2, $fp, 4
	beq	$a1, $a0, .LBB6_9
# %bb.1:                                # %entry
	ori	$a0, $zero, 1
	beq	$a1, $a0, .LBB6_6
# %bb.2:                                # %entry
                                        # implicit-def: $r29
	bnez	$a1, .LBB6_17
# %bb.3:                                # %sw.bb
	ori	$a0, $zero, 3
	beq	$s1, $a0, .LBB6_14
# %bb.4:                                # %sw.bb
	ori	$a0, $zero, 2
                                        # implicit-def: $r29
	bne	$s1, $a0, .LBB6_17
# %bb.5:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(_ZN7ADomain18loop_length_factorE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN7ADomain18loop_length_factorE)
	fld.d	$fa0, $a0, 0
	pcalau12i	$a0, %pc_hi20(.LCPI6_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI6_0)
	fmul.d	$fa0, $fa0, $fa1
	b	.LBB6_16
.LBB6_6:                                # %sw.bb8
	ori	$a0, $zero, 3
	beq	$s1, $a0, .LBB6_12
# %bb.7:                                # %sw.bb8
	ori	$a0, $zero, 2
                                        # implicit-def: $r29
	bne	$s1, $a0, .LBB6_17
# %bb.8:                                # %if.then10
	pcalau12i	$a0, %got_pc_hi20(_ZN7ADomain18loop_length_factorE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN7ADomain18loop_length_factorE)
	fld.d	$fa0, $a0, 0
	lu52i.d	$a0, $zero, 1029
	movgr2fr.d	$fa1, $a0
	fmul.d	$fa0, $fa0, $fa1
	b	.LBB6_16
.LBB6_9:                                # %sw.bb20
	ori	$a0, $zero, 3
	beq	$s1, $a0, .LBB6_13
# %bb.10:                               # %sw.bb20
	ori	$a0, $zero, 2
                                        # implicit-def: $r29
	bne	$s1, $a0, .LBB6_17
# %bb.11:                               # %if.then22
	pcalau12i	$a0, %got_pc_hi20(_ZN7ADomain18loop_length_factorE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN7ADomain18loop_length_factorE)
	fld.d	$fa0, $a0, 0
	vldi	$vr1, -992
	b	.LBB6_15
.LBB6_12:                               # %if.then15
	pcalau12i	$a0, %got_pc_hi20(_ZN7ADomain18loop_length_factorE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN7ADomain18loop_length_factorE)
	fld.d	$fa0, $a0, 0
	vldi	$vr1, -976
	b	.LBB6_15
.LBB6_13:                               # %if.then27
	pcalau12i	$a0, %got_pc_hi20(_ZN7ADomain18loop_length_factorE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN7ADomain18loop_length_factorE)
	fld.d	$fa0, $a0, 0
	vldi	$vr1, -1008
	b	.LBB6_15
.LBB6_14:                               # %if.then4
	pcalau12i	$a0, %got_pc_hi20(_ZN7ADomain18loop_length_factorE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN7ADomain18loop_length_factorE)
	fld.d	$fa0, $a0, 0
	vldi	$vr1, -964
.LBB6_15:                               # %sw.epilog
	fmul.d	$fa0, $fa0, $fa1
.LBB6_16:                               # %sw.epilog
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$s6, $fa0
.LBB6_17:                               # %sw.epilog
	ori	$a0, $zero, 2
	ori	$a1, $zero, 2
	lu32i.d	$a1, 2
	st.d	$a1, $fp, 12
	addi.d	$s3, $s6, 1
	st.w	$s3, $fp, 24
	st.w	$s3, $fp, 28
	addi.w	$s4, $s6, 3
	st.w	$s4, $fp, 36
	bne	$s1, $a0, .LBB6_19
# %bb.18:                               # %if.then45
	move	$s5, $zero
	st.w	$zero, $fp, 20
	st.w	$zero, $fp, 32
	st.w	$zero, $fp, 40
	mul.w	$s7, $s4, $s4
	b	.LBB6_21
.LBB6_19:                               # %if.else56
	ori	$a0, $zero, 3
	bne	$s1, $a0, .LBB6_22
# %bb.20:                               # %if.then58
	ori	$a0, $zero, 2
	st.w	$a0, $fp, 20
	st.w	$s3, $fp, 32
	mul.d	$s5, $s4, $s4
	st.w	$s5, $fp, 40
	mul.w	$s7, $s5, $s4
.LBB6_21:                               # %if.end87
	st.w	$s7, $fp, 44
	b	.LBB6_23
.LBB6_22:                               # %if.else56.if.end87_crit_edge
	ld.w	$s7, $fp, 44
	ld.w	$s5, $fp, 40
.LBB6_23:                               # %if.end87
	st.w	$zero, $fp, 48
	addi.d	$a0, $s7, -1
	st.w	$a0, $fp, 52
	add.d	$a1, $s5, $s4
	slli.d	$a2, $a1, 1
	addi.d	$a2, $a2, 2
	st.w	$a2, $fp, 56
	nor	$a1, $a1, $zero
	add.d	$a0, $a0, $a1
	st.w	$a0, $fp, 60
	add.d	$a1, $a2, $a1
	st.w	$a1, $fp, 64
	st.w	$a0, $fp, 68
	slti	$a0, $s7, 0
	slli.d	$s2, $s7, 2
	masknez	$a1, $s2, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $fp, 72
	blez	$s7, .LBB6_25
# %bb.24:                               # %for.body.preheader
	ori	$a1, $zero, 255
	move	$a0, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB6_25:                               # %for.cond.cleanup
	ori	$a0, $zero, 2
	st.w	$zero, $fp, 80
	bne	$s1, $a0, .LBB6_36
# %bb.26:                               # %for.cond122.preheader
	addi.w	$a1, $s6, 0
	blt	$a1, $a0, .LBB6_51
# %bb.27:                               # %for.body126.us.preheader
	move	$a0, $zero
	addi.d	$a4, $s6, -1
	bstrpick.d	$a2, $a4, 31, 0
	bstrpick.d	$a3, $a4, 31, 3
	slli.d	$a3, $a3, 3
	srli.d	$a5, $a4, 3
	ori	$t1, $zero, 2
	ori	$a4, $zero, 2
	bstrins.d	$a4, $a5, 31, 3
	addi.d	$a5, $s0, 16
	pcalau12i	$a6, %pc_hi20(.LCPI6_1)
	vld	$vr0, $a6, %pc_lo12(.LCPI6_1)
	ori	$a6, $zero, 6
	alsl.w	$a6, $s6, $a6, 1
	ori	$a7, $zero, 9
	b	.LBB6_29
	.p2align	4, , 16
.LBB6_28:                               # %for.cond129.for.cond.cleanup132_crit_edge.us
                                        #   in Loop: Header=BB6_29 Depth=1
	addi.w	$t1, $t0, 1
	add.d	$a6, $a6, $s4
	beq	$t0, $a1, .LBB6_50
.LBB6_29:                               # %for.body126.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_32 Depth 2
                                        #     Child Loop BB6_35 Depth 2
	move	$t0, $t1
	addi.w	$t1, $a0, 0
	bgeu	$a1, $a7, .LBB6_31
# %bb.30:                               #   in Loop: Header=BB6_29 Depth=1
	move	$a0, $t1
	ori	$t3, $zero, 2
	b	.LBB6_34
	.p2align	4, , 16
.LBB6_31:                               # %vector.ph75
                                        #   in Loop: Header=BB6_29 Depth=1
	mul.d	$t2, $s4, $t0
	add.d	$a0, $t1, $a3
	vreplgr2vr.w	$vr1, $t2
	vaddi.wu	$vr2, $vr1, 4
	alsl.d	$t1, $t1, $a5, 2
	move	$t2, $a3
	vori.b	$vr3, $vr0, 0
	.p2align	4, , 16
.LBB6_32:                               # %vector.body81
                                        #   Parent Loop BB6_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vadd.w	$vr4, $vr1, $vr3
	vadd.w	$vr5, $vr3, $vr2
	vst	$vr4, $t1, -16
	vst	$vr5, $t1, 0
	vaddi.wu	$vr3, $vr3, 8
	addi.d	$t2, $t2, -8
	addi.d	$t1, $t1, 32
	bnez	$t2, .LBB6_32
# %bb.33:                               # %middle.block88
                                        #   in Loop: Header=BB6_29 Depth=1
	move	$t3, $a4
	beq	$a3, $a2, .LBB6_28
.LBB6_34:                               # %for.body133.us.preheader
                                        #   in Loop: Header=BB6_29 Depth=1
	alsl.d	$t1, $a0, $s0, 2
	sub.d	$t2, $s3, $t3
	add.d	$t3, $t3, $a6
	.p2align	4, , 16
.LBB6_35:                               # %for.body133.us
                                        #   Parent Loop BB6_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$t3, $t1, 0
	addi.d	$a0, $a0, 1
	addi.d	$t1, $t1, 4
	addi.w	$t2, $t2, -1
	addi.d	$t3, $t3, 1
	bnez	$t2, .LBB6_35
	b	.LBB6_28
.LBB6_36:                               # %if.else149
	ori	$a0, $zero, 3
	bne	$s1, $a0, .LBB6_51
# %bb.37:                               # %if.then151
	ld.w	$a1, $fp, 20
	ld.w	$a2, $fp, 32
	bge	$a1, $a2, .LBB6_51
# %bb.38:                               # %if.then151
	addi.w	$a3, $s6, 0
	ori	$a4, $zero, 2
	blt	$a3, $a4, .LBB6_51
# %bb.39:                               # %for.body157.us.us.preheader
	move	$a0, $zero
	addi.d	$a7, $s6, -1
	bstrpick.d	$a5, $a7, 31, 0
	bstrpick.d	$a6, $a7, 31, 3
	slli.d	$a6, $a6, 3
	srli.d	$a7, $a7, 3
	bstrins.d	$a4, $a7, 31, 3
	addi.d	$a7, $s0, 16
	mul.d	$t0, $s5, $a1
	alsl.d	$t0, $s6, $t0, 1
	addi.d	$t0, $t0, 6
	ori	$t1, $zero, 9
	b	.LBB6_41
	.p2align	4, , 16
.LBB6_40:                               # %for.cond160.for.cond.cleanup163_crit_edge.split.us.us.us
                                        #   in Loop: Header=BB6_41 Depth=1
	addi.w	$a1, $a1, 1
	add.d	$t0, $t0, $s5
	beq	$a1, $a2, .LBB6_50
.LBB6_41:                               # %for.body157.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_43 Depth 2
                                        #       Child Loop BB6_46 Depth 3
                                        #       Child Loop BB6_49 Depth 3
	mul.d	$t2, $s5, $a1
	ori	$t5, $zero, 2
	move	$t3, $t0
	b	.LBB6_43
	.p2align	4, , 16
.LBB6_42:                               # %for.cond167.for.cond.cleanup170_crit_edge.us.us.us
                                        #   in Loop: Header=BB6_43 Depth=2
	addi.w	$t5, $t4, 1
	add.d	$t3, $t3, $s4
	beq	$t4, $a3, .LBB6_40
.LBB6_43:                               # %for.body164.us.us.us
                                        #   Parent Loop BB6_41 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_46 Depth 3
                                        #       Child Loop BB6_49 Depth 3
	move	$t4, $t5
	addi.w	$t5, $a0, 0
	bgeu	$a3, $t1, .LBB6_45
# %bb.44:                               #   in Loop: Header=BB6_43 Depth=2
	move	$a0, $t5
	ori	$t7, $zero, 2
	b	.LBB6_48
	.p2align	4, , 16
.LBB6_45:                               # %vector.ph
                                        #   in Loop: Header=BB6_43 Depth=2
	mul.d	$a0, $s4, $t4
	add.d	$t6, $a0, $t2
	add.d	$a0, $t5, $a6
	pcalau12i	$t7, %pc_hi20(.LCPI6_1)
	vld	$vr0, $t7, %pc_lo12(.LCPI6_1)
	vreplgr2vr.w	$vr1, $t6
	vaddi.wu	$vr2, $vr1, 4
	alsl.d	$t5, $t5, $a7, 2
	move	$t6, $a6
	.p2align	4, , 16
.LBB6_46:                               # %vector.body
                                        #   Parent Loop BB6_41 Depth=1
                                        #     Parent Loop BB6_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vadd.w	$vr3, $vr0, $vr1
	vadd.w	$vr4, $vr0, $vr2
	vst	$vr3, $t5, -16
	vst	$vr4, $t5, 0
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$t6, $t6, -8
	addi.d	$t5, $t5, 32
	bnez	$t6, .LBB6_46
# %bb.47:                               # %middle.block
                                        #   in Loop: Header=BB6_43 Depth=2
	move	$t7, $a4
	beq	$a6, $a5, .LBB6_42
.LBB6_48:                               # %for.body171.us.us.us.preheader
                                        #   in Loop: Header=BB6_43 Depth=2
	alsl.d	$t5, $a0, $s0, 2
	sub.d	$t6, $s3, $t7
	add.d	$t7, $t7, $t3
	.p2align	4, , 16
.LBB6_49:                               # %for.body171.us.us.us
                                        #   Parent Loop BB6_41 Depth=1
                                        #     Parent Loop BB6_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.w	$t7, $t5, 0
	addi.d	$a0, $a0, 1
	addi.d	$t5, $t5, 4
	addi.w	$t6, $t6, -1
	addi.d	$t7, $t7, 1
	bnez	$t6, .LBB6_49
	b	.LBB6_42
.LBB6_50:                               # %if.end196.sink.split
	st.w	$a0, $fp, 80
.LBB6_51:                               # %if.end196
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end6:
	.size	_ZN7ADomainC2Eii, .Lfunc_end6-_ZN7ADomainC2Eii
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	5                               # -- Begin function _GLOBAL__sub_I_LambdaSubsetAbenchmarks.cxx
	.type	_GLOBAL__sub_I_LambdaSubsetAbenchmarks.cxx,@function
_GLOBAL__sub_I_LambdaSubsetAbenchmarks.cxx: # @_GLOBAL__sub_I_LambdaSubsetAbenchmarks.cxx
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -112
	.cfi_def_cfa_offset 112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal17InitializeStreamsEv)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.d	$s3, $sp, 32
	st.d	$s3, $sp, 16
	ori	$a0, $zero, 23
	st.d	$a0, $sp, 8
.Ltmp15:                                # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 8
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
# %bb.1:                                # %call2.i5.i.noexc.i
	ld.d	$a1, $sp, 8
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
	pcalau12i	$a2, %pc_hi20(.L.str)
	addi.d	$a2, $a2, %pc_lo12(.L.str)
	vld	$vr0, $a2, 0
	ld.d	$a2, $a2, 15
	vst	$vr0, $a0, 0
	st.d	$a2, $a0, 15
	ld.d	$a0, $sp, 16
	st.d	$a1, $sp, 24
	stx.b	$zero, $a0, $a1
	ori	$s5, $zero, 1
.Ltmp18:                                # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp19:                                # EH_LABEL
# %bb.2:                                # %invoke.cont3.i
	pcalau12i	$a0, %got_pc_hi20(_ZTVN9benchmark8internal17FunctionBenchmarkE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVN9benchmark8internal17FunctionBenchmarkE)
	addi.d	$s4, $a0, 16
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL23BM_PRESSURE_CALC_LAMBDARN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL23BM_PRESSURE_CALC_LAMBDARN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp20:                                # EH_LABEL
	move	$s5, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp21:                                # EH_LABEL
# %bb.3:                                # %invoke.cont4.i
.Ltmp22:                                # EH_LABEL
	ori	$a1, $zero, 171
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp23:                                # EH_LABEL
# %bb.4:                                # %invoke.cont6.i
.Ltmp24:                                # EH_LABEL
	lu12i.w	$a1, 1
	ori	$s0, $a1, 905
	move	$s5, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp25:                                # EH_LABEL
# %bb.5:                                # %invoke.cont8.i
.Ltmp26:                                # EH_LABEL
	lu12i.w	$a1, 10
	ori	$s1, $a1, 3257
	move	$s5, $zero
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp27:                                # EH_LABEL
# %bb.6:                                # %invoke.cont10.i
.Ltmp28:                                # EH_LABEL
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp29:                                # EH_LABEL
# %bb.7:                                # %invoke.cont12.i
	move	$s2, $a0
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB7_9
# %bb.8:                                # %if.then.i.i3.i
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB7_9:                                # %__cxx_global_var_init.1.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_2_benchmark_)
	st.d	$s2, $a0, %pc_lo12(_ZL27benchmark_uniq_2_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s3, $sp, 16
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 8
.Ltmp31:                                # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 8
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp32:                                # EH_LABEL
# %bb.10:                               # %call2.i5.i.noexc.i11
	ld.d	$a1, $sp, 8
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
	pcalau12i	$a2, %pc_hi20(.L.str.3)
	addi.d	$a2, $a2, %pc_lo12(.L.str.3)
	vld	$vr0, $a2, 0
	ld.d	$a2, $a2, 13
	vst	$vr0, $a0, 0
	st.d	$a2, $a0, 13
	ld.d	$a0, $sp, 16
	st.d	$a1, $sp, 24
	stx.b	$zero, $a0, $a1
	ori	$s5, $zero, 1
.Ltmp34:                                # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp35:                                # EH_LABEL
# %bb.11:                               # %invoke.cont3.i20
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL21BM_ENERGY_CALC_LAMBDARN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL21BM_ENERGY_CALC_LAMBDARN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp36:                                # EH_LABEL
	move	$s5, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp37:                                # EH_LABEL
# %bb.12:                               # %invoke.cont4.i23
.Ltmp38:                                # EH_LABEL
	ori	$a1, $zero, 171
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp39:                                # EH_LABEL
# %bb.13:                               # %invoke.cont6.i25
.Ltmp40:                                # EH_LABEL
	move	$s5, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp41:                                # EH_LABEL
# %bb.14:                               # %invoke.cont8.i27
.Ltmp42:                                # EH_LABEL
	move	$s5, $zero
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp43:                                # EH_LABEL
# %bb.15:                               # %invoke.cont10.i29
.Ltmp44:                                # EH_LABEL
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp45:                                # EH_LABEL
# %bb.16:                               # %invoke.cont12.i31
	move	$s2, $a0
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB7_18
# %bb.17:                               # %if.then.i.i3.i33
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB7_18:                               # %__cxx_global_var_init.2.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_3_benchmark_)
	st.d	$s2, $a0, %pc_lo12(_ZL27benchmark_uniq_3_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s3, $sp, 16
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 8
.Ltmp47:                                # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 8
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp48:                                # EH_LABEL
# %bb.19:                               # %call2.i5.i.noexc.i45
	ld.d	$a1, $sp, 8
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
	pcalau12i	$a2, %pc_hi20(.L.str.5)
	addi.d	$a2, $a2, %pc_lo12(.L.str.5)
	vld	$vr0, $a2, 0
	ld.w	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.w	$a2, $a0, 16
	ld.d	$a0, $sp, 16
	st.d	$a1, $sp, 24
	stx.b	$zero, $a0, $a1
	ori	$s5, $zero, 1
.Ltmp50:                                # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp51:                                # EH_LABEL
# %bb.20:                               # %invoke.cont3.i54
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL20BM_VOL3D_CALC_LAMBDARN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL20BM_VOL3D_CALC_LAMBDARN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp52:                                # EH_LABEL
	move	$s5, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp53:                                # EH_LABEL
# %bb.21:                               # %invoke.cont4.i57
.Ltmp54:                                # EH_LABEL
	ori	$a1, $zero, 2
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp55:                                # EH_LABEL
# %bb.22:                               # %invoke.cont6.i59
.Ltmp56:                                # EH_LABEL
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp57:                                # EH_LABEL
# %bb.23:                               # %invoke.cont8.i61
.Ltmp58:                                # EH_LABEL
	move	$s5, $zero
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp59:                                # EH_LABEL
# %bb.24:                               # %invoke.cont10.i63
.Ltmp60:                                # EH_LABEL
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp61:                                # EH_LABEL
# %bb.25:                               # %invoke.cont12.i65
	move	$s2, $a0
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB7_27
# %bb.26:                               # %if.then.i.i3.i67
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB7_27:                               # %__cxx_global_var_init.4.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_4_benchmark_)
	st.d	$s2, $a0, %pc_lo12(_ZL27benchmark_uniq_4_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s3, $sp, 16
	ori	$a0, $zero, 24
	st.d	$a0, $sp, 8
.Ltmp63:                                # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 8
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp64:                                # EH_LABEL
# %bb.28:                               # %call2.i5.i.noexc.i79
	ld.d	$a1, $sp, 8
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
	pcalau12i	$a2, %pc_hi20(.L.str.7)
	addi.d	$a2, $a2, %pc_lo12(.L.str.7)
	vld	$vr0, $a2, 0
	ld.d	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 16
	st.d	$a1, $sp, 24
	stx.b	$zero, $a0, $a1
	ori	$s5, $zero, 1
.Ltmp66:                                # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp67:                                # EH_LABEL
# %bb.29:                               # %invoke.cont3.i88
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL24BM_DEL_DOT_VEC_2D_LAMBDARN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL24BM_DEL_DOT_VEC_2D_LAMBDARN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp68:                                # EH_LABEL
	move	$s5, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp69:                                # EH_LABEL
# %bb.30:                               # %invoke.cont4.i91
.Ltmp70:                                # EH_LABEL
	ori	$a1, $zero, 2
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp71:                                # EH_LABEL
# %bb.31:                               # %invoke.cont6.i93
.Ltmp72:                                # EH_LABEL
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp73:                                # EH_LABEL
# %bb.32:                               # %invoke.cont8.i95
.Ltmp74:                                # EH_LABEL
	move	$s5, $zero
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp75:                                # EH_LABEL
# %bb.33:                               # %invoke.cont10.i97
.Ltmp76:                                # EH_LABEL
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp77:                                # EH_LABEL
# %bb.34:                               # %invoke.cont12.i99
	move	$s2, $a0
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB7_36
# %bb.35:                               # %if.then.i.i3.i101
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB7_36:                               # %__cxx_global_var_init.6.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_5_benchmark_)
	st.d	$s2, $a0, %pc_lo12(_ZL27benchmark_uniq_5_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s3, $sp, 16
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 8
.Ltmp79:                                # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 8
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp80:                                # EH_LABEL
# %bb.37:                               # %call2.i5.i.noexc.i113
	ld.d	$a1, $sp, 8
	pcalau12i	$a2, %pc_hi20(.L.str.9)
	vld	$vr0, $a2, %pc_lo12(.L.str.9)
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 16
	st.d	$a1, $sp, 24
	stx.b	$zero, $a0, $a1
	ori	$s5, $zero, 1
.Ltmp82:                                # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp83:                                # EH_LABEL
# %bb.38:                               # %invoke.cont3.i122
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL16BM_COUPLE_LAMBDARN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL16BM_COUPLE_LAMBDARN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp84:                                # EH_LABEL
	move	$s5, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp85:                                # EH_LABEL
# %bb.39:                               # %invoke.cont4.i125
.Ltmp86:                                # EH_LABEL
	ori	$a1, $zero, 2
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp87:                                # EH_LABEL
# %bb.40:                               # %invoke.cont6.i127
.Ltmp88:                                # EH_LABEL
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp89:                                # EH_LABEL
# %bb.41:                               # %invoke.cont8.i129
.Ltmp90:                                # EH_LABEL
	move	$s5, $zero
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp91:                                # EH_LABEL
# %bb.42:                               # %invoke.cont10.i131
.Ltmp92:                                # EH_LABEL
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp93:                                # EH_LABEL
# %bb.43:                               # %invoke.cont12.i133
	move	$s2, $a0
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB7_45
# %bb.44:                               # %if.then.i.i3.i135
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB7_45:                               # %__cxx_global_var_init.8.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_6_benchmark_)
	st.d	$s2, $a0, %pc_lo12(_ZL27benchmark_uniq_6_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s3, $sp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a0, 5
	st.d	$a1, $sp, 32
	st.d	$a0, $sp, 37
	ori	$a0, $zero, 13
	st.d	$a0, $sp, 24
	st.b	$zero, $sp, 45
	ori	$s2, $zero, 1
.Ltmp95:                                # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp96:                                # EH_LABEL
# %bb.46:                               # %invoke.cont3.i150
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL13BM_FIR_LAMBDARN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL13BM_FIR_LAMBDARN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp97:                                # EH_LABEL
	move	$s2, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp98:                                # EH_LABEL
# %bb.47:                               # %invoke.cont4.i153
.Ltmp99:                                # EH_LABEL
	ori	$a1, $zero, 171
	move	$s2, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp100:                               # EH_LABEL
# %bb.48:                               # %invoke.cont6.i155
.Ltmp101:                               # EH_LABEL
	move	$s2, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp102:                               # EH_LABEL
# %bb.49:                               # %invoke.cont8.i157
.Ltmp103:                               # EH_LABEL
	move	$s2, $zero
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp104:                               # EH_LABEL
# %bb.50:                               # %invoke.cont10.i159
.Ltmp105:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s2, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp106:                               # EH_LABEL
# %bb.51:                               # %invoke.cont12.i161
	move	$s0, $a0
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB7_53
# %bb.52:                               # %if.then.i.i3.i163
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB7_53:                               # %__cxx_global_var_init.10.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_7_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL27benchmark_uniq_7_benchmark_)
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
.LBB7_54:                               # %ehcleanup.thread.i108
.Ltmp81:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB7_67
.LBB7_55:                               # %ehcleanup.thread.i74
.Ltmp65:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB7_67
.LBB7_56:                               # %ehcleanup.thread.i40
.Ltmp49:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB7_67
.LBB7_57:                               # %ehcleanup.thread.i6
.Ltmp33:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB7_67
.LBB7_58:                               # %ehcleanup.thread.i
.Ltmp17:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB7_67
.LBB7_59:                               # %lpad2.i142
.Ltmp107:                               # EH_LABEL
	ld.d	$a1, $sp, 16
	move	$s0, $a0
	bne	$a1, $s3, .LBB7_61
# %bb.60:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i6.i148
	bnez	$s2, .LBB7_67
	b	.LBB7_68
.LBB7_61:                               # %ehcleanup.i145
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	bnez	$s2, .LBB7_67
	b	.LBB7_68
.LBB7_62:                               # %lpad2.i116
.Ltmp94:                                # EH_LABEL
	ld.d	$a1, $sp, 16
	move	$s0, $a0
	bne	$a1, $s3, .LBB7_66
	b	.LBB7_70
.LBB7_63:                               # %lpad2.i82
.Ltmp78:                                # EH_LABEL
	ld.d	$a1, $sp, 16
	move	$s0, $a0
	bne	$a1, $s3, .LBB7_66
	b	.LBB7_70
.LBB7_64:                               # %lpad2.i48
.Ltmp62:                                # EH_LABEL
	ld.d	$a1, $sp, 16
	move	$s0, $a0
	bne	$a1, $s3, .LBB7_66
	b	.LBB7_70
.LBB7_65:                               # %lpad2.i14
.Ltmp46:                                # EH_LABEL
	ld.d	$a1, $sp, 16
	move	$s0, $a0
	beq	$a1, $s3, .LBB7_70
.LBB7_66:                               # %ehcleanup.i
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	beqz	$s5, .LBB7_68
.LBB7_67:                               # %common.resume.sink.split
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB7_68:                               # %common.resume
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB7_69:                               # %lpad2.i
.Ltmp30:                                # EH_LABEL
	ld.d	$a1, $sp, 16
	move	$s0, $a0
	bne	$a1, $s3, .LBB7_66
.LBB7_70:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i6.i
	beqz	$s5, .LBB7_68
	b	.LBB7_67
.Lfunc_end7:
	.size	_GLOBAL__sub_I_LambdaSubsetAbenchmarks.cxx, .Lfunc_end7-_GLOBAL__sub_I_LambdaSubsetAbenchmarks.cxx
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table7:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp15-.Lfunc_begin3          #   Call between .Lfunc_begin3 and .Ltmp15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin3          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp29-.Ltmp18                #   Call between .Ltmp18 and .Ltmp29
	.uleb128 .Ltmp30-.Lfunc_begin3          #     jumps to .Ltmp30
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp29-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Ltmp31-.Ltmp29                #   Call between .Ltmp29 and .Ltmp31
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp31-.Lfunc_begin3          # >> Call Site 5 <<
	.uleb128 .Ltmp32-.Ltmp31                #   Call between .Ltmp31 and .Ltmp32
	.uleb128 .Ltmp33-.Lfunc_begin3          #     jumps to .Ltmp33
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp34-.Lfunc_begin3          # >> Call Site 6 <<
	.uleb128 .Ltmp45-.Ltmp34                #   Call between .Ltmp34 and .Ltmp45
	.uleb128 .Ltmp46-.Lfunc_begin3          #     jumps to .Ltmp46
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp45-.Lfunc_begin3          # >> Call Site 7 <<
	.uleb128 .Ltmp47-.Ltmp45                #   Call between .Ltmp45 and .Ltmp47
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp47-.Lfunc_begin3          # >> Call Site 8 <<
	.uleb128 .Ltmp48-.Ltmp47                #   Call between .Ltmp47 and .Ltmp48
	.uleb128 .Ltmp49-.Lfunc_begin3          #     jumps to .Ltmp49
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp50-.Lfunc_begin3          # >> Call Site 9 <<
	.uleb128 .Ltmp61-.Ltmp50                #   Call between .Ltmp50 and .Ltmp61
	.uleb128 .Ltmp62-.Lfunc_begin3          #     jumps to .Ltmp62
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp61-.Lfunc_begin3          # >> Call Site 10 <<
	.uleb128 .Ltmp63-.Ltmp61                #   Call between .Ltmp61 and .Ltmp63
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp63-.Lfunc_begin3          # >> Call Site 11 <<
	.uleb128 .Ltmp64-.Ltmp63                #   Call between .Ltmp63 and .Ltmp64
	.uleb128 .Ltmp65-.Lfunc_begin3          #     jumps to .Ltmp65
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp66-.Lfunc_begin3          # >> Call Site 12 <<
	.uleb128 .Ltmp77-.Ltmp66                #   Call between .Ltmp66 and .Ltmp77
	.uleb128 .Ltmp78-.Lfunc_begin3          #     jumps to .Ltmp78
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp77-.Lfunc_begin3          # >> Call Site 13 <<
	.uleb128 .Ltmp79-.Ltmp77                #   Call between .Ltmp77 and .Ltmp79
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp79-.Lfunc_begin3          # >> Call Site 14 <<
	.uleb128 .Ltmp80-.Ltmp79                #   Call between .Ltmp79 and .Ltmp80
	.uleb128 .Ltmp81-.Lfunc_begin3          #     jumps to .Ltmp81
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp82-.Lfunc_begin3          # >> Call Site 15 <<
	.uleb128 .Ltmp93-.Ltmp82                #   Call between .Ltmp82 and .Ltmp93
	.uleb128 .Ltmp94-.Lfunc_begin3          #     jumps to .Ltmp94
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp93-.Lfunc_begin3          # >> Call Site 16 <<
	.uleb128 .Ltmp95-.Ltmp93                #   Call between .Ltmp93 and .Ltmp95
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp95-.Lfunc_begin3          # >> Call Site 17 <<
	.uleb128 .Ltmp106-.Ltmp95               #   Call between .Ltmp95 and .Ltmp106
	.uleb128 .Ltmp107-.Lfunc_begin3         #     jumps to .Ltmp107
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp106-.Lfunc_begin3         # >> Call Site 18 <<
	.uleb128 .Lfunc_end7-.Ltmp106           #   Call between .Ltmp106 and .Lfunc_end7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.type	_ZL27benchmark_uniq_2_benchmark_,@object # @_ZL27benchmark_uniq_2_benchmark_
	.local	_ZL27benchmark_uniq_2_benchmark_
	.comm	_ZL27benchmark_uniq_2_benchmark_,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str:
	.asciz	"BM_PRESSURE_CALC_LAMBDA"
	.size	.L.str, 24

	.type	_ZL27benchmark_uniq_3_benchmark_,@object # @_ZL27benchmark_uniq_3_benchmark_
	.local	_ZL27benchmark_uniq_3_benchmark_
	.comm	_ZL27benchmark_uniq_3_benchmark_,8,8
	.type	.L.str.3,@object                # @.str.3
	.p2align	3, 0x0
.L.str.3:
	.asciz	"BM_ENERGY_CALC_LAMBDA"
	.size	.L.str.3, 22

	.type	_ZL27benchmark_uniq_4_benchmark_,@object # @_ZL27benchmark_uniq_4_benchmark_
	.local	_ZL27benchmark_uniq_4_benchmark_
	.comm	_ZL27benchmark_uniq_4_benchmark_,8,8
	.type	.L.str.5,@object                # @.str.5
	.p2align	3, 0x0
.L.str.5:
	.asciz	"BM_VOL3D_CALC_LAMBDA"
	.size	.L.str.5, 21

	.type	_ZL27benchmark_uniq_5_benchmark_,@object # @_ZL27benchmark_uniq_5_benchmark_
	.local	_ZL27benchmark_uniq_5_benchmark_
	.comm	_ZL27benchmark_uniq_5_benchmark_,8,8
	.type	.L.str.7,@object                # @.str.7
	.p2align	3, 0x0
.L.str.7:
	.asciz	"BM_DEL_DOT_VEC_2D_LAMBDA"
	.size	.L.str.7, 25

	.type	_ZL27benchmark_uniq_6_benchmark_,@object # @_ZL27benchmark_uniq_6_benchmark_
	.local	_ZL27benchmark_uniq_6_benchmark_
	.comm	_ZL27benchmark_uniq_6_benchmark_,8,8
	.type	.L.str.9,@object                # @.str.9
	.p2align	3, 0x0
.L.str.9:
	.asciz	"BM_COUPLE_LAMBDA"
	.size	.L.str.9, 17

	.type	_ZL27benchmark_uniq_7_benchmark_,@object # @_ZL27benchmark_uniq_7_benchmark_
	.local	_ZL27benchmark_uniq_7_benchmark_
	.comm	_ZL27benchmark_uniq_7_benchmark_,8,8
	.type	.L.str.11,@object               # @.str.11
	.p2align	3, 0x0
.L.str.11:
	.asciz	"BM_FIR_LAMBDA"
	.size	.L.str.11, 14

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.dword	_GLOBAL__sub_I_LambdaSubsetAbenchmarks.cxx
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.p2align	3, 0x0
	.type	DW.ref.__gxx_personality_v0,@object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.dword	__gxx_personality_v0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _ZL23BM_PRESSURE_CALC_LAMBDARN9benchmark5StateE
	.addrsig_sym _ZL21BM_ENERGY_CALC_LAMBDARN9benchmark5StateE
	.addrsig_sym _ZL20BM_VOL3D_CALC_LAMBDARN9benchmark5StateE
	.addrsig_sym _ZL24BM_DEL_DOT_VEC_2D_LAMBDARN9benchmark5StateE
	.addrsig_sym _ZL16BM_COUPLE_LAMBDARN9benchmark5StateE
	.addrsig_sym _ZL13BM_FIR_LAMBDARN9benchmark5StateE
	.addrsig_sym _GLOBAL__sub_I_LambdaSubsetAbenchmarks.cxx
	.addrsig_sym _Unwind_Resume
