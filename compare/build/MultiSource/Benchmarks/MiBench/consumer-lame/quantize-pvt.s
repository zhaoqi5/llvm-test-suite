	.file	"quantize-pvt.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function iteration_init
.LCPI0_0:
	.dword	0x3ff5555555555555              # double 1.3333333333333333
	.text
	.globl	iteration_init
	.p2align	5
	.type	iteration_init,@function
iteration_init:                         # @iteration_init
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
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 168
	move	$s0, $a1
	st.w	$zero, $a1, 8
	bnez	$a0, .LBB0_9
# %bb.1:                                # %for.cond.preheader
	ld.w	$a0, $fp, 192
	ld.w	$a1, $fp, 224
	pcalau12i	$a2, %pc_hi20(sfBandIndex)
	addi.d	$a2, $a2, %pc_lo12(sfBandIndex)
	alsl.d	$a0, $a0, $a0, 1
	add.w	$a0, $a0, $a1
	ori	$a1, $zero, 148
	mul.d	$a0, $a0, $a1
	xvldx	$xr0, $a2, $a0
	add.d	$a0, $a2, $a0
	xvld	$xr1, $a0, 32
	pcalau12i	$a1, %pc_hi20(scalefac_band)
	addi.d	$a1, $a1, %pc_lo12(scalefac_band)
	xvst	$xr0, $a1, 0
	xvst	$xr1, $a1, 32
	xvld	$xr0, $a0, 64
	xvld	$xr1, $a0, 96
	vld	$vr2, $a0, 128
	ld.w	$a0, $a0, 144
	xvst	$xr0, $a1, 64
	xvst	$xr1, $a1, 96
	vst	$vr2, $a1, 128
	st.w	$a0, $a1, 144
	st.w	$zero, $s0, 0
	pcalau12i	$a0, %pc_hi20(ATH_l)
	addi.d	$a1, $a0, %pc_lo12(ATH_l)
	pcalau12i	$a0, %pc_hi20(ATH_s)
	addi.d	$a2, $a0, %pc_lo12(ATH_s)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(compute_ath)
	jirl	$ra, $ra, 0
	move	$s2, $zero
	pcalau12i	$a0, %pc_hi20(pow43)
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	fld.d	$fs0, $a1, %pc_lo12(.LCPI0_0)
	addi.d	$s3, $a0, %pc_lo12(pow43)
	lu12i.w	$s1, 2
	ori	$s4, $s1, 16
	.p2align	4, , 16
.LBB0_2:                                # %for.body24
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a0, $s2, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $s3, 0
	addi.w	$s2, $s2, 1
	addi.d	$s4, $s4, -1
	addi.d	$s3, $s3, 8
	bnez	$s4, .LBB0_2
# %bb.3:                                # %for.body33.preheader
	pcalau12i	$a0, %pc_hi20(pow43)
	addi.d	$s2, $a0, %pc_lo12(pow43)
	addi.d	$s3, $s2, 8
	fld.d	$fs0, $s2, 0
	pcalau12i	$a0, %pc_hi20(adj43)
	addi.d	$s4, $a0, %pc_lo12(adj43)
	ori	$s5, $zero, 1
	ori	$s6, $s1, 15
	fmov.d	$fa0, $fs0
	.p2align	4, , 16
.LBB0_4:                                # %for.body33
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fs1, $s3, 0
	bstrpick.d	$a0, $s5, 31, 0
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fs2, $fa1
	fadd.d	$fa0, $fa0, $fs1
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	vldi	$vr1, -920
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	fsub.d	$fa0, $fs2, $fa0
	fst.d	$fa0, $s4, 0
	addi.d	$s4, $s4, 8
	addi.d	$s6, $s6, -1
	addi.d	$s3, $s3, 8
	addi.w	$s5, $s5, 1
	fmov.d	$fa0, $fs1
	bnez	$s6, .LBB0_4
# %bb.5:                                # %for.end48
	pcalau12i	$a0, %pc_hi20(adj43)
	addi.d	$a0, $a0, %pc_lo12(adj43)
	lu12i.w	$a1, 16
	ori	$a1, $a1, 120
	lu52i.d	$a2, $zero, 1022
	stx.d	$a2, $a0, $a1
	addi.d	$s2, $s2, 8
	ori	$s1, $s1, 15
	.p2align	4, , 16
.LBB0_6:                                # %for.body54
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fs1, $s2, 0
	fadd.d	$fa0, $fs0, $fs1
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	vldi	$vr1, -920
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, -1
	addi.d	$s2, $s2, 8
	fmov.d	$fs0, $fs1
	bnez	$s1, .LBB0_6
# %bb.7:                                # %for.body74.preheader
	move	$s1, $zero
	addi.w	$s2, $zero, -210
	pcalau12i	$a0, %pc_hi20(ipow20)
	addi.d	$s3, $a0, %pc_lo12(ipow20)
	pcalau12i	$a0, %pc_hi20(pow20)
	addi.d	$s4, $a0, %pc_lo12(pow20)
	ori	$s5, $zero, 2048
	.p2align	4, , 16
.LBB0_8:                                # %for.body74
                                        # =>This Inner Loop Header: Depth=1
	movgr2fr.w	$fa0, $s2
	ffint.d.w	$fs0, $fa0
	vldi	$vr0, -824
	fmul.d	$fa0, $fs0, $fa0
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	fstx.d	$fa0, $s3, $s1
	vldi	$vr0, -944
	fmul.d	$fa0, $fs0, $fa0
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	fstx.d	$fa0, $s4, $s1
	addi.d	$s1, $s1, 8
	addi.w	$s2, $s2, 1
	bne	$s1, $s5, .LBB0_8
.LBB0_9:                                # %if.end
	pcalau12i	$a0, %pc_hi20(convert_mdct)
	ld.w	$a2, $fp, 228
	st.w	$zero, $a0, %pc_lo12(convert_mdct)
	pcalau12i	$a1, %pc_hi20(reduce_sidechannel)
	ori	$a3, $zero, 2
	st.w	$zero, $a1, %pc_lo12(reduce_sidechannel)
	bne	$a2, $a3, .LBB0_11
# %bb.10:                               # %if.then92
	ori	$a2, $zero, 1
	st.w	$a2, $a0, %pc_lo12(convert_mdct)
	st.w	$a2, $a1, %pc_lo12(reduce_sidechannel)
.LBB0_11:                               # %if.end93
	ld.w	$a1, $fp, 200
	ld.w	$a0, $fp, 204
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB0_22
# %bb.12:                               # %for.cond98.preheader.lr.ph
	blt	$a0, $a2, .LBB0_25
# %bb.13:                               # %for.cond98.preheader.us.preheader
	move	$a2, $zero
	bstrpick.d	$a3, $a0, 30, 3
	slli.d	$a3, $a3, 3
	addi.d	$a4, $s0, 488
	ori	$a5, $zero, 8
	ori	$a6, $zero, 120
	ori	$a7, $zero, 21
	ori	$t0, $zero, 12
	xvrepli.b	$xr0, 0
	xvrepli.w	$xr1, 21
	xvrepli.w	$xr2, 12
	move	$t1, $s0
	b	.LBB0_15
	.p2align	4, , 16
.LBB0_14:                               # %for.cond98.for.inc117_crit_edge.us
                                        #   in Loop: Header=BB0_15 Depth=1
	addi.d	$a2, $a2, 1
	addi.d	$a4, $a4, 240
	addi.d	$t1, $t1, 240
	beq	$a2, $a1, .LBB0_23
.LBB0_15:                               # %for.cond98.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_18 Depth 2
                                        #     Child Loop BB0_21 Depth 2
	bgeu	$a0, $a5, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=1
	move	$t3, $zero
	b	.LBB0_20
	.p2align	4, , 16
.LBB0_17:                               # %vector.body.preheader
                                        #   in Loop: Header=BB0_15 Depth=1
	move	$t2, $a4
	move	$t3, $a3
	.p2align	4, , 16
.LBB0_18:                               # %vector.body
                                        #   Parent Loop BB0_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t4, $t2, -416
	ld.w	$t5, $t2, -296
	ld.w	$t6, $t2, -176
	ld.w	$t7, $t2, -56
	ld.w	$t8, $t2, 64
	ld.w	$s1, $t2, 184
	ld.w	$s2, $t2, 304
	ld.w	$s3, $t2, 424
	vinsgr2vr.w	$vr3, $t8, 0
	vinsgr2vr.w	$vr3, $s1, 1
	vinsgr2vr.w	$vr3, $s2, 2
	vinsgr2vr.w	$vr3, $s3, 3
	vinsgr2vr.w	$vr4, $t4, 0
	vinsgr2vr.w	$vr4, $t5, 1
	vinsgr2vr.w	$vr4, $t6, 2
	vinsgr2vr.w	$vr4, $t7, 3
	xvpermi.q	$xr4, $xr3, 2
	xvseqi.w	$xr3, $xr4, 2
	xvbitsel.v	$xr4, $xr1, $xr0, $xr3
	xvbitsel.v	$xr3, $xr2, $xr0, $xr3
	xvstelm.w	$xr4, $t2, -360, 0
	xvstelm.w	$xr4, $t2, -240, 1
	xvstelm.w	$xr4, $t2, -120, 2
	xvstelm.w	$xr4, $t2, 0, 3
	xvstelm.w	$xr4, $t2, 120, 4
	xvstelm.w	$xr4, $t2, 240, 5
	xvstelm.w	$xr4, $t2, 360, 6
	xvstelm.w	$xr4, $t2, 480, 7
	xvstelm.w	$xr3, $t2, -356, 0
	xvstelm.w	$xr3, $t2, -236, 1
	xvstelm.w	$xr3, $t2, -116, 2
	xvstelm.w	$xr3, $t2, 4, 3
	xvstelm.w	$xr3, $t2, 124, 4
	xvstelm.w	$xr3, $t2, 244, 5
	xvstelm.w	$xr3, $t2, 364, 6
	xvstelm.w	$xr3, $t2, 484, 7
	addi.d	$t3, $t3, -8
	addi.d	$t2, $t2, 960
	bnez	$t3, .LBB0_18
# %bb.19:                               # %middle.block
                                        #   in Loop: Header=BB0_15 Depth=1
	move	$t3, $a3
	beq	$a3, $a0, .LBB0_14
.LBB0_20:                               # %for.body101.us.preheader
                                        #   in Loop: Header=BB0_15 Depth=1
	mul.d	$t2, $t3, $a6
	sub.d	$t3, $a0, $t3
	.p2align	4, , 16
.LBB0_21:                               # %for.body101.us
                                        #   Parent Loop BB0_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t4, $t1, $t2
	ld.w	$t5, $t4, 72
	addi.d	$t5, $t5, -2
	sltui	$t5, $t5, 1
	masknez	$t6, $a7, $t5
	masknez	$t5, $t0, $t5
	st.w	$t6, $t4, 128
	st.w	$t5, $t4, 132
	addi.d	$t3, $t3, -1
	addi.d	$t2, $t2, 120
	bnez	$t3, .LBB0_21
	b	.LBB0_14
.LBB0_22:                               # %for.cond120.preheader
	blt	$a0, $a2, .LBB0_25
.LBB0_23:                               # %for.cond125.preheader.lr.ph
	move	$a0, $zero
	addi.d	$a1, $s0, 12
	vrepli.b	$vr0, 0
	.p2align	4, , 16
.LBB0_24:                               # %for.cond125.preheader
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a1, 0
	ld.w	$a2, $fp, 204
	addi.w	$a0, $a0, 1
	addi.d	$a1, $a1, 16
	blt	$a0, $a2, .LBB0_24
.LBB0_25:                               # %for.end138
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
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
.Lfunc_end0:
	.size	iteration_init, .Lfunc_end0-iteration_init
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function compute_ath
.LCPI1_0:
	.dword	0x408f400000000000              # double 1000
.LCPI1_1:
	.dword	0x547d42aea2879f2e              # double 9.9999999999999997E+98
.LCPI1_2:
	.dword	0x4092000000000000              # double 1152
.LCPI1_3:
	.dword	0x3f947ae147ae147b              # double 0.02
.LCPI1_4:
	.dword	0xbfe999999999999a              # double -0.80000000000000004
.LCPI1_5:
	.dword	0xc00a666666666666              # double -3.2999999999999998
.LCPI1_6:
	.dword	0xbfe3333333333333              # double -0.59999999999999998
.LCPI1_7:
	.dword	0x400d1eb851eb851f              # double 3.6400000000000001
.LCPI1_8:
	.dword	0x3f50624dd2f1a9fc              # double 0.001
.LCPI1_10:
	.dword	0x4078000000000000              # double 384
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3, 0x0
.LCPI1_9:
	.dword	0xc069000000000000              # double -200
	.dword	0xc05c800000000000              # double -114
	.text
	.globl	compute_ath
	.p2align	5
	.type	compute_ath,@function
compute_ath:                            # @compute_ath
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -224
	st.d	$ra, $sp, 216                   # 8-byte Folded Spill
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	st.d	$s2, $sp, 184                   # 8-byte Folded Spill
	st.d	$s3, $sp, 176                   # 8-byte Folded Spill
	st.d	$s4, $sp, 168                   # 8-byte Folded Spill
	st.d	$s5, $sp, 160                   # 8-byte Folded Spill
	st.d	$s6, $sp, 152                   # 8-byte Folded Spill
	st.d	$s7, $sp, 144                   # 8-byte Folded Spill
	st.d	$s8, $sp, 136                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 72                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 16
	pcalau12i	$a3, %pc_hi20(.LCPI1_0)
	fld.d	$fa0, $a3, %pc_lo12(.LCPI1_0)
	move	$s0, $a2
	move	$s1, $a1
	move	$s6, $zero
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa2, $fa1, $fa0
	pcalau12i	$a0, %pc_hi20(scalefac_band)
	addi.d	$s4, $a0, %pc_lo12(scalefac_band)
	lu12i.w	$a0, -382855
	ori	$a0, $a0, 3886
	lu32i.d	$a0, -179538
	lu52i.d	$s2, $a0, 1351
	pcalau12i	$a0, %pc_hi20(.LCPI1_1)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	fld.d	$fa0, $a0, %pc_lo12(.LCPI1_1)
	fst.d	$fa0, $sp, 24                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI1_2)
	fld.d	$fs7, $a0, %pc_lo12(.LCPI1_2)
	pcalau12i	$a0, %pc_hi20(.LCPI1_3)
	fld.d	$fs4, $a0, %pc_lo12(.LCPI1_3)
	pcalau12i	$a0, %pc_hi20(.LCPI1_4)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI1_4)
	pcalau12i	$a0, %pc_hi20(.LCPI1_5)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI1_5)
	pcalau12i	$a0, %pc_hi20(.LCPI1_6)
	fld.d	$fs3, $a0, %pc_lo12(.LCPI1_6)
	pcalau12i	$a0, %pc_hi20(.LCPI1_7)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI1_7)
	pcalau12i	$a0, %pc_hi20(.LCPI1_8)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI1_8)
	pcalau12i	$a0, %pc_hi20(.LCPI1_9)
	addi.d	$s3, $a0, %pc_lo12(.LCPI1_9)
	ori	$a2, $zero, 21
	fst.d	$fa2, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fa1, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fa0, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 40                   # 8-byte Folded Spill
	b	.LBB1_2
	.p2align	4, , 16
.LBB1_1:                                # %for.cond.loopexit
                                        #   in Loop: Header=BB1_2 Depth=1
	beq	$s6, $a2, .LBB1_6
.LBB1_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
	move	$a0, $s6
	slli.d	$a1, $s6, 2
	ldx.w	$s8, $s4, $a1
	addi.d	$s6, $s6, 1
	slli.d	$a1, $s6, 2
	ldx.w	$s5, $s4, $a1
	slli.d	$a1, $a0, 3
	stx.d	$s2, $s1, $a1
	bge	$s8, $s5, .LBB1_1
# %bb.3:                                # %for.body9.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	alsl.d	$s7, $a0, $s1, 3
	fld.d	$fs5, $sp, 24                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_4:                                # %for.body9
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movgr2fr.w	$fa0, $s8
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fa2, $fa0
	fdiv.d	$fa0, $fa0, $fs7
	fcmp.clt.d	$fcc0, $fa0, $fs4
	fsel	$fs1, $fa0, $fs4, $fcc0
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	fmov.d	$fs2, $fa0
	fadd.d	$fa0, $fs1, $fs0
	fmul.d	$fa0, $fa0, $fa0
	fmul.d	$fa0, $fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	vldi	$vr1, -870
	fmul.d	$fa0, $fa0, $fa1
	fmov.d	$fs6, $fs3
	fmov.d	$fs3, $fs0
	fld.d	$fa1, $sp, 48                   # 8-byte Folded Reload
	fmadd.d	$fs0, $fs2, $fa1, $fa0
	vldi	$vr1, -1008
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 148
	sltui	$a0, $a0, 1
	slli.d	$a0, $a0, 3
	fldx.d	$fa1, $s3, $a0
	fld.d	$fa2, $sp, 40                   # 8-byte Folded Reload
	fmadd.d	$fa0, $fa0, $fa2, $fs0
	fmov.d	$fs0, $fs3
	fmov.d	$fs3, $fs6
	fadd.d	$fa0, $fa0, $fa1
	vldi	$vr1, -988
	fdiv.d	$fa1, $fa0, $fa1
	vldi	$vr0, -988
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fa2, $sp, 64                   # 8-byte Folded Reload
	fcmp.clt.d	$fcc0, $fs5, $fa0
	addi.w	$s8, $s8, 1
	fsel	$fs5, $fa0, $fs5, $fcc0
	bne	$s5, $s8, .LBB1_4
# %bb.5:                                # %for.cond6.for.cond.loopexit_crit_edge
                                        #   in Loop: Header=BB1_2 Depth=1
	fst.d	$fs5, $s7, 0
	fld.d	$fs1, $sp, 40                   # 8-byte Folded Reload
	ori	$a2, $zero, 21
	b	.LBB1_1
.LBB1_6:                                # %for.body26.preheader
	move	$s6, $zero
	addi.d	$s1, $s4, 92
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	fld.d	$fa0, $a0, %pc_lo12(.LCPI1_1)
	fst.d	$fa0, $sp, 24                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI1_10)
	fld.d	$fs6, $a0, %pc_lo12(.LCPI1_10)
	ori	$s4, $zero, 12
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	b	.LBB1_8
	.p2align	4, , 16
.LBB1_7:                                # %for.cond23.loopexit
                                        #   in Loop: Header=BB1_8 Depth=1
	beq	$s6, $s4, .LBB1_12
.LBB1_8:                                # %for.body26
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_10 Depth 2
	move	$a0, $s6
	slli.d	$a1, $s6, 2
	ldx.w	$s5, $s1, $a1
	addi.d	$s6, $s6, 1
	slli.d	$a1, $s6, 2
	ldx.w	$s7, $s1, $a1
	slli.d	$a1, $a0, 3
	stx.d	$s2, $s0, $a1
	bge	$s5, $s7, .LBB1_7
# %bb.9:                                # %for.body37.preheader
                                        #   in Loop: Header=BB1_8 Depth=1
	alsl.d	$s8, $a0, $s0, 3
	fld.d	$fs0, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs7, $sp, 48                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_10:                               # %for.body37
                                        #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movgr2fr.w	$fa0, $s5
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fa2, $fa0
	fdiv.d	$fa0, $fa0, $fs6
	fcmp.clt.d	$fcc0, $fa0, $fs4
	fmov.d	$fs5, $fs1
	fsel	$fs1, $fa0, $fs4, $fcc0
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	fmov.d	$fs2, $fa0
	fld.d	$fa0, $sp, 32                   # 8-byte Folded Reload
	fadd.d	$fa0, $fs1, $fa0
	fmul.d	$fa0, $fa0, $fa0
	fmul.d	$fa0, $fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	vldi	$vr1, -870
	fmul.d	$fa0, $fa0, $fa1
	fmadd.d	$fs2, $fs2, $fs7, $fa0
	vldi	$vr1, -1008
	fmov.d	$fa0, $fs1
	fmov.d	$fs1, $fs5
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 148
	sltui	$a0, $a0, 1
	slli.d	$a0, $a0, 3
	fldx.d	$fa1, $s3, $a0
	fmadd.d	$fa0, $fa0, $fs5, $fs2
	fadd.d	$fa0, $fa0, $fa1
	vldi	$vr1, -988
	fdiv.d	$fa1, $fa0, $fa1
	vldi	$vr0, -988
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fa2, $sp, 64                   # 8-byte Folded Reload
	fcmp.clt.d	$fcc0, $fs0, $fa0
	addi.w	$s5, $s5, 1
	fsel	$fs0, $fa0, $fs0, $fcc0
	bne	$s7, $s5, .LBB1_10
# %bb.11:                               # %for.cond34.for.cond23.loopexit_crit_edge
                                        #   in Loop: Header=BB1_8 Depth=1
	fst.d	$fs0, $s8, 0
	b	.LBB1_7
.LBB1_12:                               # %for.end59
	fld.d	$fs7, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 128                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 216                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 224
	ret
.Lfunc_end1:
	.size	compute_ath, .Lfunc_end1-compute_ath
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function ATHformula
.LCPI2_0:
	.dword	0x3f947ae147ae147b              # double 0.02
.LCPI2_1:
	.dword	0xbfe999999999999a              # double -0.80000000000000004
.LCPI2_2:
	.dword	0xc00a666666666666              # double -3.2999999999999998
.LCPI2_3:
	.dword	0xbfe3333333333333              # double -0.59999999999999998
.LCPI2_4:
	.dword	0x400d1eb851eb851f              # double 3.6400000000000001
.LCPI2_5:
	.dword	0x3f50624dd2f1a9fc              # double 0.001
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3, 0x0
.LCPI2_6:
	.dword	0xc069000000000000              # double -200
	.dword	0xc05c800000000000              # double -114
	.text
	.globl	ATHformula
	.p2align	5
	.type	ATHformula,@function
ATHformula:                             # @ATHformula
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs1, $sp, 0                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LCPI2_0)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI2_0)
	move	$fp, $a0
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fsel	$fs0, $fa0, $fa1, $fcc0
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI2_1)
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI2_2)
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI2_3)
	fmov.d	$fs1, $fa0
	fadd.d	$fa0, $fs0, $fa1
	fmul.d	$fa0, $fa0, $fa0
	fmul.d	$fa0, $fa0, $fa2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI2_4)
	vldi	$vr2, -870
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fs1, $fs1, $fa1, $fa0
	vldi	$vr1, -1008
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 148
	pcalau12i	$a1, %pc_hi20(.LCPI2_5)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI2_5)
	sltui	$a0, $a0, 1
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(.LCPI2_6)
	addi.d	$a1, $a1, %pc_lo12(.LCPI2_6)
	fldx.d	$fa2, $a1, $a0
	fmadd.d	$fa0, $fa0, $fa1, $fs1
	fadd.d	$fa0, $fa0, $fa2
	vldi	$vr1, -988
	fdiv.d	$fa1, $fa0, $fa1
	vldi	$vr0, -988
	fld.d	$fs1, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(pow)
	jr	$t8
.Lfunc_end2:
	.size	ATHformula, .Lfunc_end2-ATHformula
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function ms_convert
.LCPI3_0:
	.dword	0x3fe6a09e667f3bcd              # double 0.70710678118654757
	.text
	.globl	ms_convert
	.p2align	5
	.type	ms_convert,@function
ms_convert:                             # @ms_convert
# %bb.0:                                # %entry
	lu12i.w	$a2, 2
	ori	$a2, $a2, 1024
	add.d	$a3, $a1, $a2
	bgeu	$a0, $a3, .LBB3_4
# %bb.1:                                # %entry
	add.d	$a3, $a0, $a2
	bgeu	$a1, $a3, .LBB3_4
# %bb.2:                                # %for.body.preheader
	lu12i.w	$a3, -2
	pcalau12i	$a4, %pc_hi20(.LCPI3_0)
	fld.d	$fa0, $a4, %pc_lo12(.LCPI3_0)
	ori	$a3, $a3, 3584
	lu12i.w	$a4, 1
	ori	$a4, $a4, 512
	.p2align	4, , 16
.LBB3_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a5, $a1, $a3
	fldx.d	$fa1, $a5, $a4
	fldx.d	$fa2, $a5, $a2
	fadd.d	$fa3, $fa1, $fa2
	fmul.d	$fa3, $fa3, $fa0
	add.d	$a5, $a0, $a3
	fstx.d	$fa3, $a5, $a4
	fsub.d	$fa1, $fa1, $fa2
	fmul.d	$fa1, $fa1, $fa0
	addi.d	$a3, $a3, 8
	fstx.d	$fa1, $a5, $a2
	bnez	$a3, .LBB3_3
	b	.LBB3_6
.LBB3_4:                                # %vector.body.preheader
	lu12i.w	$a3, -2
	ori	$a3, $a3, 3584
	lu12i.w	$a4, 1
	ori	$a4, $a4, 512
	lu12i.w	$a5, 419827
	ori	$a5, $a5, 3021
	lu32i.d	$a5, 434334
	lu52i.d	$a5, $a5, 1022
	xvreplgr2vr.d	$xr0, $a5
	.p2align	4, , 16
.LBB3_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a5, $a1, $a3
	xvldx	$xr1, $a5, $a4
	xvldx	$xr2, $a5, $a2
	xvfadd.d	$xr3, $xr1, $xr2
	xvfmul.d	$xr3, $xr3, $xr0
	add.d	$a5, $a0, $a3
	xvstx	$xr3, $a5, $a4
	xvfsub.d	$xr1, $xr1, $xr2
	xvfmul.d	$xr1, $xr1, $xr0
	addi.d	$a3, $a3, 32
	xvstx	$xr1, $a5, $a2
	bnez	$a3, .LBB3_5
.LBB3_6:                                # %for.end
	ret
.Lfunc_end3:
	.size	ms_convert, .Lfunc_end3-ms_convert
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function on_pe
.LCPI4_0:
	.dword	0xc087700000000000              # double -750
.LCPI4_1:
	.dword	0x3ff8cccccccccccd              # double 1.55
	.text
	.globl	on_pe
	.p2align	5
	.type	on_pe,@function
on_pe:                                  # @on_pe
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	move	$s1, $a5
	move	$fp, $a3
	move	$s2, $a2
	move	$s3, $a1
	move	$s0, $a0
	addi.d	$a1, $sp, 8
	addi.d	$a2, $sp, 12
	move	$a0, $a4
	move	$a3, $a5
	pcaddu18i	$ra, %call36(ResvMaxBits)
	jirl	$ra, $ra, 0
	ld.w	$a4, $s0, 204
	ori	$a0, $zero, 1
	blt	$a4, $a0, .LBB4_3
# %bb.1:                                # %for.body.lr.ph
	move	$a0, $zero
	ld.w	$a1, $sp, 12
	ld.w	$a2, $sp, 8
	alsl.d	$a3, $s1, $s3, 4
	ori	$a5, $zero, 240
	mul.d	$a5, $s1, $a5
	add.d	$a5, $a5, $s2
	pcalau12i	$a6, %pc_hi20(.LCPI4_0)
	fld.d	$fa0, $a6, %pc_lo12(.LCPI4_0)
	pcalau12i	$a6, %pc_hi20(.LCPI4_1)
	fld.d	$fa1, $a6, %pc_lo12(.LCPI4_1)
	addi.d	$a5, $a5, 72
	ori	$a6, $zero, 500
	ori	$a7, $zero, 4095
	.p2align	4, , 16
.LBB4_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa2, $a3, 0
	div.w	$a4, $a2, $a4
	st.w	$a4, $fp, 0
	fadd.d	$fa2, $fa2, $fa0
	ld.w	$t0, $a5, 0
	fdiv.d	$fa2, $fa2, $fa1
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$t1, $fa2
	addi.d	$t0, $t0, -2
	sltui	$t0, $t0, 1
	maskeqz	$t0, $a6, $t0
	slt	$t2, $t1, $t0
	masknez	$t1, $t1, $t2
	maskeqz	$t0, $t0, $t2
	or	$t0, $t0, $t1
	slt	$t1, $t0, $a1
	maskeqz	$t0, $t0, $t1
	masknez	$t1, $a1, $t1
	or	$t0, $t0, $t1
	add.w	$t1, $t0, $a4
	slt	$t1, $a7, $t1
	sub.d	$t2, $a7, $a4
	masknez	$t0, $t0, $t1
	maskeqz	$t1, $t2, $t1
	or	$t0, $t1, $t0
	add.d	$a4, $t0, $a4
	st.w	$a4, $fp, 0
	sub.w	$a1, $a1, $t0
	ld.w	$a4, $s0, 204
	addi.d	$a0, $a0, 1
	addi.d	$a3, $a3, 8
	addi.d	$fp, $fp, 4
	addi.d	$a5, $a5, 120
	blt	$a0, $a4, .LBB4_2
.LBB4_3:                                # %for.end
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end4:
	.size	on_pe, .Lfunc_end4-on_pe
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function reduce_side
.LCPI5_0:
	.dword	0x3fd51eb851eb851f              # double 0.33000000000000002
.LCPI5_1:
	.dword	0xb690000000000000              # double -7.0064923216240854E-46
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI5_2:
	.word	0x42fa0000                      # float 125
	.text
	.globl	reduce_side
	.p2align	5
	.type	reduce_side,@function
reduce_side:                            # @reduce_side
# %bb.0:                                # %entry
	ld.w	$a2, $a0, 4
	ori	$a3, $zero, 125
	blt	$a2, $a3, .LBB5_5
# %bb.1:                                # %if.then4
	vldi	$vr1, -928
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	fld.d	$fa2, $a3, %pc_lo12(.LCPI5_0)
	fsub.d	$fa0, $fa1, $fa0
	pcalau12i	$a3, %pc_hi20(.LCPI5_1)
	fld.d	$fa1, $a3, %pc_lo12(.LCPI5_1)
	fmul.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa0, $fa0
	fcvt.s.d	$fa2, $fa0
	fcmp.clt.d	$fcc0, $fa0, $fa1
	movgr2fr.w	$fa0, $zero
	fsel	$fa0, $fa2, $fa0, $fcc0
	bstrpick.d	$a3, $a2, 31, 0
	movgr2fr.d	$fa1, $a3
	pcalau12i	$a3, %pc_hi20(.LCPI5_2)
	fld.s	$fa3, $a3, %pc_lo12(.LCPI5_2)
	ffint.s.l	$fa2, $fa1
	fneg.s	$fa1, $fa2
	fmadd.s	$fa1, $fa1, $fa0, $fa2
	fcmp.cule.s	$fcc0, $fa1, $fa3
	bcnez	$fcc0, .LBB5_3
# %bb.2:                                # %if.then12
	ld.w	$a2, $a0, 0
	movgr2fr.w	$fa3, $a2
	ffint.s.w	$fa3, $fa3
	fmadd.s	$fa0, $fa2, $fa0, $fa3
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a2, $fa0
	st.w	$a2, $a0, 0
	ftintrz.w.s	$fa0, $fa1
	movfr2gr.s	$a2, $fa0
	b	.LBB5_4
.LBB5_3:                                # %if.else
	ld.w	$a3, $a0, 0
	add.d	$a2, $a2, $a3
	addi.d	$a2, $a2, -125
	st.w	$a2, $a0, 0
	ori	$a2, $zero, 125
.LBB5_4:                                # %if.end31.sink.split
	st.w	$a2, $a0, 4
.LBB5_5:                                # %if.end31
	ld.w	$a3, $a0, 0
	lu12i.w	$a4, 1
	ori	$a5, $a4, 1695
	bge	$a5, $a1, .LBB5_9
# %bb.6:                                # %for.body.us.preheader
	blt	$a3, $a4, .LBB5_8
# %bb.7:                                # %if.then43.us
	ori	$a1, $zero, 4095
	st.w	$a1, $a0, 0
.LBB5_8:                                # %if.end46.us
	ori	$a1, $zero, 4095
	blt	$a1, $a2, .LBB5_12
	b	.LBB5_13
.LBB5_9:                                # %for.body.preheader
	bstrpick.d	$a4, $a1, 31, 31
	add.w	$a1, $a1, $a4
	srai.d	$a1, $a1, 1
	addi.d	$a1, $a1, 1200
	bge	$a1, $a3, .LBB5_11
# %bb.10:                               # %if.then43
	st.w	$a1, $a0, 0
.LBB5_11:                               # %if.end46
	bge	$a1, $a2, .LBB5_13
.LBB5_12:                               # %for.end.sink.split
	st.w	$a1, $a0, 4
.LBB5_13:                               # %for.end
	ret
.Lfunc_end5:
	.size	reduce_side, .Lfunc_end5-reduce_side
                                        # -- End function
	.globl	inner_loop                      # -- Begin function inner_loop
	.p2align	5
	.type	inner_loop,@function
inner_loop:                             # @inner_loop
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a4
	ld.w	$a4, $a4, 12
	move	$s0, $a3
	move	$s1, $a2
	move	$s2, $a1
	move	$s3, $a0
	addi.d	$a0, $a4, -1
	st.w	$a0, $fp, 12
	.p2align	4, , 16
.LBB6_1:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, 12
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 12
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $fp
	pcaddu18i	$ra, %call36(count_bits)
	jirl	$ra, $ra, 0
	blt	$s0, $a0, .LBB6_1
# %bb.2:                                # %do.end
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end6:
	.size	inner_loop, .Lfunc_end6-inner_loop
                                        # -- End function
	.globl	scale_bitcount                  # -- Begin function scale_bitcount
	.p2align	5
	.type	scale_bitcount,@function
scale_bitcount:                         # @scale_bitcount
# %bb.0:                                # %entry
	ld.w	$a2, $a1, 24
	ori	$a3, $zero, 2
	bne	$a2, $a3, .LBB7_3
# %bb.1:                                # %for.cond.preheader
	ld.w	$a2, $a0, 88
	ld.w	$a3, $a0, 100
	ld.w	$a4, $a0, 112
	ld.w	$a5, $a0, 160
	ld.w	$a6, $a0, 172
	ld.w	$a7, $a0, 124
	ld.w	$t0, $a0, 136
	ld.w	$t1, $a0, 148
	slt	$t2, $a6, $a5
	ld.w	$t3, $a0, 184
	masknez	$a6, $a6, $t2
	maskeqz	$a5, $a5, $t2
	or	$a5, $a5, $a6
	slt	$a6, $t3, $a5
	ld.w	$t2, $a0, 196
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $t3, $a6
	or	$a5, $a5, $a6
	slt	$a6, $t2, $a5
	ld.w	$t3, $a0, 208
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $t2, $a6
	or	$a5, $a5, $a6
	slt	$a6, $t3, $a5
	ld.w	$t2, $a0, 220
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $t3, $a6
	or	$a5, $a5, $a6
	slt	$a6, $t2, $a5
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $t2, $a6
	or	$a6, $a5, $a6
	slt	$a5, $a3, $a2
	masknez	$a3, $a3, $a5
	maskeqz	$a2, $a2, $a5
	or	$a2, $a2, $a3
	slt	$a3, $a4, $a2
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $a4, $a3
	or	$a2, $a2, $a3
	slt	$a3, $a7, $a2
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $a7, $a3
	or	$a2, $a2, $a3
	slt	$a3, $t0, $a2
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $t0, $a3
	or	$a2, $a2, $a3
	slt	$a3, $t1, $a2
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $t1, $a3
	or	$a7, $a2, $a3
	ld.w	$t0, $a0, 92
	ld.w	$a4, $a0, 104
	ld.w	$t1, $a0, 164
	ld.w	$a5, $a0, 116
	ld.w	$a3, $a0, 128
	ld.w	$a2, $a0, 140
	slt	$t2, $t1, $a6
	ld.w	$t3, $a0, 176
	maskeqz	$a6, $a6, $t2
	masknez	$t1, $t1, $t2
	or	$a6, $a6, $t1
	slt	$t1, $t3, $a6
	ld.w	$t2, $a0, 188
	maskeqz	$a6, $a6, $t1
	masknez	$t1, $t3, $t1
	or	$a6, $a6, $t1
	slt	$t1, $t2, $a6
	ld.w	$t3, $a0, 200
	maskeqz	$a6, $a6, $t1
	masknez	$t1, $t2, $t1
	or	$a6, $a6, $t1
	slt	$t1, $t3, $a6
	ld.w	$t2, $a0, 212
	maskeqz	$a6, $a6, $t1
	masknez	$t1, $t3, $t1
	or	$a6, $a6, $t1
	slt	$t1, $t2, $a6
	maskeqz	$a6, $a6, $t1
	ld.w	$t3, $a0, 224
	masknez	$t1, $t2, $t1
	ld.w	$t2, $a0, 152
	or	$a6, $a6, $t1
	slt	$t1, $t3, $a6
	maskeqz	$a6, $a6, $t1
	masknez	$t1, $t3, $t1
	or	$t1, $a6, $t1
	slt	$a6, $t0, $a7
	maskeqz	$a7, $a7, $a6
	masknez	$a6, $t0, $a6
	or	$a6, $a7, $a6
	slt	$a7, $a4, $a6
	maskeqz	$a6, $a6, $a7
	masknez	$a4, $a4, $a7
	or	$a4, $a6, $a4
	slt	$a6, $a5, $a4
	maskeqz	$a4, $a4, $a6
	masknez	$a5, $a5, $a6
	or	$a4, $a4, $a5
	slt	$a5, $a3, $a4
	maskeqz	$a4, $a4, $a5
	masknez	$a3, $a3, $a5
	or	$a3, $a4, $a3
	slt	$a4, $a2, $a3
	maskeqz	$a3, $a3, $a4
	masknez	$a2, $a2, $a4
	or	$a2, $a3, $a2
	slt	$a3, $t2, $a2
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $t2, $a3
	or	$a7, $a2, $a3
	ld.w	$t0, $a0, 96
	ld.w	$a5, $a0, 108
	ld.w	$a3, $a0, 168
	ld.w	$a6, $a0, 120
	ld.w	$a4, $a0, 132
	ld.w	$a2, $a0, 144
	slt	$t2, $a3, $t1
	ld.w	$t3, $a0, 180
	maskeqz	$t1, $t1, $t2
	masknez	$a3, $a3, $t2
	or	$a3, $t1, $a3
	slt	$t1, $t3, $a3
	ld.w	$t2, $a0, 192
	maskeqz	$a3, $a3, $t1
	masknez	$t1, $t3, $t1
	or	$a3, $a3, $t1
	slt	$t1, $t2, $a3
	ld.w	$t3, $a0, 204
	maskeqz	$a3, $a3, $t1
	masknez	$t1, $t2, $t1
	or	$a3, $a3, $t1
	slt	$t1, $t3, $a3
	maskeqz	$a3, $a3, $t1
	ld.w	$t2, $a0, 216
	masknez	$t1, $t3, $t1
	ld.w	$t3, $a0, 156
	or	$a3, $a3, $t1
	slt	$t1, $t2, $a3
	ld.w	$a0, $a0, 228
	maskeqz	$a3, $a3, $t1
	masknez	$t1, $t2, $t1
	or	$a3, $a3, $t1
	slt	$t1, $a0, $a3
	maskeqz	$a3, $a3, $t1
	masknez	$a0, $a0, $t1
	or	$a0, $a3, $a0
	srai.d	$a3, $a0, 63
	andn	$a3, $a0, $a3
	slt	$a0, $t0, $a7
	maskeqz	$a7, $a7, $a0
	masknez	$a0, $t0, $a0
	or	$a0, $a7, $a0
	slt	$a7, $a5, $a0
	maskeqz	$a0, $a0, $a7
	masknez	$a5, $a5, $a7
	or	$a0, $a0, $a5
	slt	$a5, $a6, $a0
	maskeqz	$a0, $a0, $a5
	masknez	$a5, $a6, $a5
	or	$a0, $a0, $a5
	slt	$a5, $a4, $a0
	maskeqz	$a0, $a0, $a5
	masknez	$a4, $a4, $a5
	or	$a0, $a0, $a4
	slt	$a4, $a2, $a0
	maskeqz	$a0, $a0, $a4
	masknez	$a2, $a2, $a4
	or	$a0, $a0, $a2
	slt	$a2, $t3, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $t3, $a2
	or	$a0, $a0, $a2
	srai.d	$a2, $a0, 63
	andn	$a2, $a0, $a2
	pcalau12i	$a0, %pc_hi20(scale_bitcount.slen1_tab)
	addi.d	$a4, $a0, %pc_lo12(scale_bitcount.slen1_tab)
	lu12i.w	$a6, 24
	ori	$a5, $a6, 1696
	st.w	$a5, $a1, 76
	beqz	$a2, .LBB7_16
.LBB7_2:                                # %for.inc116.3
	ori	$a6, $zero, 7
	ori	$a0, $zero, 2
	bgeu	$a6, $a2, .LBB7_26
	b	.LBB7_60
.LBB7_3:                                # %for.body38.preheader
	ld.w	$a2, $a0, 0
	ld.w	$a3, $a0, 4
	slt	$a4, $a3, $a2
	ld.w	$a5, $a0, 8
	masknez	$a3, $a3, $a4
	maskeqz	$a2, $a2, $a4
	or	$a2, $a2, $a3
	slt	$a3, $a5, $a2
	ld.w	$a4, $a0, 12
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $a5, $a3
	or	$a2, $a2, $a3
	slt	$a3, $a4, $a2
	ld.w	$a5, $a0, 16
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $a4, $a3
	or	$a2, $a2, $a3
	slt	$a3, $a5, $a2
	ld.w	$a4, $a0, 20
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $a5, $a3
	or	$a2, $a2, $a3
	slt	$a3, $a4, $a2
	ld.w	$a5, $a0, 24
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $a4, $a3
	or	$a2, $a2, $a3
	slt	$a3, $a5, $a2
	ld.w	$a4, $a0, 28
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $a5, $a3
	or	$a2, $a2, $a3
	slt	$a3, $a4, $a2
	ld.w	$a5, $a0, 32
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $a4, $a3
	or	$a2, $a2, $a3
	slt	$a3, $a5, $a2
	ld.w	$a4, $a0, 36
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $a5, $a3
	or	$a2, $a2, $a3
	slt	$a3, $a4, $a2
	ld.w	$a5, $a0, 40
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $a4, $a3
	or	$a2, $a2, $a3
	slt	$a4, $a5, $a2
	maskeqz	$a2, $a2, $a4
	ld.w	$a6, $a1, 64
	ld.w	$a3, $a0, 44
	masknez	$a4, $a5, $a4
	or	$a2, $a2, $a4
	srai.d	$a4, $a2, 63
	bnez	$a6, .LBB7_15
# %bb.4:                                # %for.body53.preheader
	pcalau12i	$a5, %pc_hi20(pretab)
	addi.d	$a5, $a5, %pc_lo12(pretab)
	ld.w	$a6, $a5, 44
	blt	$a3, $a6, .LBB7_15
# %bb.5:                                # %for.inc62
	ld.w	$a7, $a0, 48
	ld.w	$t0, $a5, 48
	blt	$a7, $t0, .LBB7_15
# %bb.6:                                # %for.inc62.1
	ld.w	$a7, $a0, 52
	ld.w	$t0, $a5, 52
	blt	$a7, $t0, .LBB7_15
# %bb.7:                                # %for.inc62.2
	ld.w	$a7, $a0, 56
	ld.w	$t0, $a5, 56
	blt	$a7, $t0, .LBB7_15
# %bb.8:                                # %for.inc62.3
	ld.w	$a7, $a0, 60
	ld.w	$t0, $a5, 60
	blt	$a7, $t0, .LBB7_15
# %bb.9:                                # %for.inc62.4
	ld.w	$a7, $a0, 64
	ld.w	$t0, $a5, 64
	blt	$a7, $t0, .LBB7_15
# %bb.10:                               # %for.inc62.5
	ld.w	$a7, $a0, 68
	ld.w	$t0, $a5, 68
	blt	$a7, $t0, .LBB7_15
# %bb.11:                               # %for.inc62.6
	ld.w	$a7, $a0, 72
	ld.w	$t0, $a5, 72
	blt	$a7, $t0, .LBB7_15
# %bb.12:                               # %for.inc62.7
	ld.w	$a7, $a0, 76
	ld.w	$t0, $a5, 76
	blt	$a7, $t0, .LBB7_15
# %bb.13:                               # %for.inc62.8
	ld.w	$a7, $a0, 80
	ld.w	$t0, $a5, 80
	blt	$a7, $t0, .LBB7_15
# %bb.14:                               # %if.then66
	ori	$a3, $zero, 1
	st.w	$a3, $a1, 64
	ld.w	$a3, $a0, 44
	sub.w	$a3, $a3, $a6
	st.w	$a3, $a0, 44
	ld.w	$a6, $a5, 48
	ld.w	$a7, $a0, 48
	sub.d	$a6, $a7, $a6
	st.w	$a6, $a0, 48
	ld.w	$a6, $a5, 52
	ld.w	$a7, $a0, 52
	sub.d	$a6, $a7, $a6
	st.w	$a6, $a0, 52
	ld.w	$a6, $a5, 56
	ld.w	$a7, $a0, 56
	sub.d	$a6, $a7, $a6
	st.w	$a6, $a0, 56
	ld.w	$a6, $a5, 60
	ld.w	$a7, $a0, 60
	sub.d	$a6, $a7, $a6
	st.w	$a6, $a0, 60
	ld.w	$a6, $a5, 64
	ld.w	$a7, $a0, 64
	sub.d	$a6, $a7, $a6
	st.w	$a6, $a0, 64
	ld.w	$a6, $a5, 68
	ld.w	$a7, $a0, 68
	sub.d	$a6, $a7, $a6
	st.w	$a6, $a0, 68
	ld.w	$a6, $a5, 72
	ld.w	$a7, $a0, 72
	sub.d	$a6, $a7, $a6
	st.w	$a6, $a0, 72
	ld.w	$a6, $a5, 76
	ld.w	$a7, $a0, 76
	sub.d	$a6, $a7, $a6
	st.w	$a6, $a0, 76
	ld.w	$a5, $a5, 80
	ld.w	$a6, $a0, 80
	sub.d	$a5, $a6, $a5
	st.w	$a5, $a0, 80
.LBB7_15:                               # %if.end80
	ld.w	$a5, $a0, 48
	andn	$a2, $a2, $a4
	slt	$a4, $a5, $a3
	ld.w	$a6, $a0, 52
	masknez	$a5, $a5, $a4
	maskeqz	$a3, $a3, $a4
	or	$a3, $a3, $a5
	slt	$a4, $a6, $a3
	ld.w	$a5, $a0, 56
	maskeqz	$a3, $a3, $a4
	masknez	$a4, $a6, $a4
	or	$a3, $a3, $a4
	slt	$a4, $a5, $a3
	ld.w	$a6, $a0, 60
	maskeqz	$a3, $a3, $a4
	masknez	$a4, $a5, $a4
	or	$a3, $a3, $a4
	slt	$a4, $a6, $a3
	ld.w	$a5, $a0, 64
	maskeqz	$a3, $a3, $a4
	masknez	$a4, $a6, $a4
	or	$a3, $a3, $a4
	slt	$a4, $a5, $a3
	ld.w	$a6, $a0, 68
	maskeqz	$a3, $a3, $a4
	masknez	$a4, $a5, $a4
	or	$a3, $a3, $a4
	slt	$a4, $a6, $a3
	ld.w	$a5, $a0, 72
	maskeqz	$a3, $a3, $a4
	masknez	$a4, $a6, $a4
	or	$a3, $a3, $a4
	slt	$a4, $a5, $a3
	ld.w	$a6, $a0, 76
	maskeqz	$a3, $a3, $a4
	masknez	$a4, $a5, $a4
	or	$a3, $a3, $a4
	slt	$a4, $a6, $a3
	ld.w	$a0, $a0, 80
	maskeqz	$a3, $a3, $a4
	masknez	$a4, $a6, $a4
	or	$a3, $a3, $a4
	slt	$a4, $a0, $a3
	maskeqz	$a3, $a3, $a4
	masknez	$a0, $a0, $a4
	or	$a0, $a3, $a0
	srai.d	$a3, $a0, 63
	andn	$a3, $a0, $a3
	pcalau12i	$a0, %pc_hi20(scale_bitcount.slen2_tab)
	addi.d	$a4, $a0, %pc_lo12(scale_bitcount.slen2_tab)
	lu12i.w	$a6, 24
	ori	$a5, $a6, 1696
	st.w	$a5, $a1, 76
	bnez	$a2, .LBB7_2
.LBB7_16:                               # %land.lhs.true
	ori	$a0, $zero, 2
	ori	$a7, $zero, 1
	ori	$a5, $a6, 1696
	beq	$a3, $a7, .LBB7_20
# %bb.17:                               # %land.lhs.true
	bnez	$a3, .LBB7_37
# %bb.18:                               # %land.lhs.true106
	ld.w	$a7, $a4, 0
	ori	$a6, $a6, 1695
	blt	$a6, $a7, .LBB7_20
# %bb.19:                               # %if.then111
	move	$a0, $zero
	st.w	$a7, $a1, 76
	st.w	$zero, $a1, 16
	move	$a5, $a7
.LBB7_20:                               # %land.lhs.true106.1
	ld.w	$a6, $a4, 4
	bge	$a6, $a5, .LBB7_22
# %bb.21:                               # %if.then111.1
	move	$a0, $zero
	st.w	$a6, $a1, 76
	ori	$a5, $zero, 1
	st.w	$a5, $a1, 16
	move	$a5, $a6
.LBB7_22:                               # %land.lhs.true106.2
	ld.w	$a6, $a4, 8
	bge	$a6, $a5, .LBB7_24
.LBB7_23:                               # %if.then111.2
	move	$a0, $zero
	st.w	$a6, $a1, 76
	ori	$a5, $zero, 2
	st.w	$a5, $a1, 16
	move	$a5, $a6
.LBB7_24:                               # %land.lhs.true106.3
	ld.w	$a6, $a4, 12
	bge	$a6, $a5, .LBB7_26
# %bb.25:                               # %if.then111.3
	move	$a0, $zero
	st.w	$a6, $a1, 76
	ori	$a5, $zero, 3
	st.w	$a5, $a1, 16
	move	$a5, $a6
.LBB7_26:                               # %land.lhs.true.4
	bnez	$a3, .LBB7_29
# %bb.27:                               # %land.lhs.true106.4
	ld.w	$a6, $a4, 16
	bge	$a6, $a5, .LBB7_29
# %bb.28:                               # %if.then111.4
	move	$a0, $zero
	st.w	$a6, $a1, 76
	ori	$a5, $zero, 4
	st.w	$a5, $a1, 16
	move	$a5, $a6
.LBB7_29:                               # %for.inc116.4
	ori	$a6, $zero, 1
	bltu	$a6, $a2, .LBB7_33
# %bb.30:                               # %land.lhs.true.5
	bltu	$a6, $a3, .LBB7_34
# %bb.31:                               # %land.lhs.true106.5
	ld.w	$a6, $a4, 20
	bge	$a6, $a5, .LBB7_35
# %bb.32:                               # %if.then111.5
	move	$a0, $zero
	st.w	$a6, $a1, 76
	ori	$a5, $zero, 5
	st.w	$a5, $a1, 16
	move	$a5, $a6
	b	.LBB7_35
.LBB7_33:                               # %for.inc116.7
	ori	$a6, $zero, 3
	bgeu	$a6, $a2, .LBB7_42
	b	.LBB7_51
.LBB7_34:                               # %land.lhs.true.6
	ori	$a6, $zero, 3
	bltu	$a6, $a3, .LBB7_39
.LBB7_35:                               # %land.lhs.true106.6
	ld.w	$a6, $a4, 24
	bge	$a6, $a5, .LBB7_40
# %bb.36:                               # %if.then111.6
	move	$a0, $zero
	st.w	$a6, $a1, 76
	ori	$a5, $zero, 6
	st.w	$a5, $a1, 16
	move	$a5, $a6
	b	.LBB7_40
.LBB7_37:                               # %land.lhs.true.2
	ori	$a0, $zero, 3
	bltu	$a0, $a3, .LBB7_68
# %bb.38:
	ori	$a0, $zero, 2
	ori	$a5, $a6, 1696
	ld.w	$a6, $a4, 8
	blt	$a6, $a5, .LBB7_23
	b	.LBB7_24
.LBB7_39:                               # %land.lhs.true.7
	ori	$a6, $zero, 7
	bltu	$a6, $a3, .LBB7_42
.LBB7_40:                               # %land.lhs.true106.7
	ld.w	$a6, $a4, 28
	bge	$a6, $a5, .LBB7_42
# %bb.41:                               # %if.then111.7
	move	$a0, $zero
	st.w	$a6, $a1, 76
	ori	$a5, $zero, 7
	st.w	$a5, $a1, 16
	move	$a5, $a6
.LBB7_42:                               # %land.lhs.true.8
	ori	$a6, $zero, 1
	bltu	$a6, $a3, .LBB7_45
# %bb.43:                               # %land.lhs.true106.8
	ld.w	$a6, $a4, 32
	bge	$a6, $a5, .LBB7_45
# %bb.44:                               # %if.then111.8
	move	$a0, $zero
	st.w	$a6, $a1, 76
	ori	$a5, $zero, 8
	st.w	$a5, $a1, 16
	move	$a5, $a6
	ld.w	$a7, $a4, 36
	blt	$a7, $a6, .LBB7_47
	b	.LBB7_49
.LBB7_45:                               # %land.lhs.true.9
	ori	$a6, $zero, 3
	bltu	$a6, $a3, .LBB7_48
# %bb.46:
	move	$a6, $a5
	ld.w	$a7, $a4, 36
	bge	$a7, $a6, .LBB7_49
.LBB7_47:                               # %if.then111.9
	move	$a0, $zero
	st.w	$a7, $a1, 76
	ori	$a5, $zero, 9
	st.w	$a5, $a1, 16
	move	$a5, $a7
	b	.LBB7_49
.LBB7_48:                               # %land.lhs.true.10
	ori	$a6, $zero, 7
	bltu	$a6, $a3, .LBB7_51
.LBB7_49:                               # %land.lhs.true106.10
	ld.w	$a6, $a4, 40
	bge	$a6, $a5, .LBB7_51
# %bb.50:                               # %if.then111.10
	move	$a0, $zero
	st.w	$a6, $a1, 76
	ori	$a5, $zero, 10
	st.w	$a5, $a1, 16
	move	$a5, $a6
.LBB7_51:                               # %land.lhs.true.11
	ori	$a6, $zero, 1
	bltu	$a6, $a3, .LBB7_54
# %bb.52:                               # %land.lhs.true106.11
	ld.w	$a6, $a4, 44
	bge	$a6, $a5, .LBB7_55
# %bb.53:                               # %if.then111.11
	move	$a0, $zero
	st.w	$a6, $a1, 76
	ori	$a5, $zero, 11
	st.w	$a5, $a1, 16
	move	$a5, $a6
	b	.LBB7_55
.LBB7_54:                               # %land.lhs.true.12
	ori	$a6, $zero, 3
	bltu	$a6, $a3, .LBB7_57
.LBB7_55:                               # %land.lhs.true106.12
	ld.w	$a6, $a4, 48
	bge	$a6, $a5, .LBB7_58
# %bb.56:                               # %if.then111.12
	move	$a0, $zero
	st.w	$a6, $a1, 76
	ori	$a5, $zero, 12
	st.w	$a5, $a1, 16
	move	$a5, $a6
	b	.LBB7_58
.LBB7_57:                               # %land.lhs.true.13
	ori	$a6, $zero, 7
	bltu	$a6, $a3, .LBB7_60
.LBB7_58:                               # %land.lhs.true106.13
	ld.w	$a6, $a4, 52
	bge	$a6, $a5, .LBB7_60
# %bb.59:                               # %if.then111.13
	move	$a0, $zero
	st.w	$a6, $a1, 76
	ori	$a5, $zero, 13
	st.w	$a5, $a1, 16
	move	$a5, $a6
.LBB7_60:                               # %for.inc116.13
	ori	$a6, $zero, 15
	bltu	$a6, $a2, .LBB7_67
# %bb.61:                               # %land.lhs.true.14
	ori	$a2, $zero, 3
	bltu	$a2, $a3, .LBB7_64
# %bb.62:                               # %land.lhs.true106.14
	ld.w	$a2, $a4, 56
	bge	$a2, $a5, .LBB7_64
# %bb.63:                               # %if.then111.14
	move	$a0, $zero
	st.w	$a2, $a1, 76
	ori	$a3, $zero, 14
	st.w	$a3, $a1, 16
	move	$a5, $a2
	b	.LBB7_65
.LBB7_64:                               # %for.inc116.14
	ori	$a2, $zero, 7
	bltu	$a2, $a3, .LBB7_67
.LBB7_65:                               # %land.lhs.true106.15
	ld.w	$a2, $a4, 60
	bge	$a2, $a5, .LBB7_67
# %bb.66:                               # %if.then111.15
	move	$a0, $zero
	st.w	$a2, $a1, 76
	ori	$a2, $zero, 15
	st.w	$a2, $a1, 16
.LBB7_67:                               # %for.inc116.15
	ret
.LBB7_68:                               # %land.lhs.true.3
	ori	$a0, $zero, 2
	ori	$a7, $zero, 7
	ori	$a5, $a6, 1696
	bgeu	$a7, $a3, .LBB7_24
	b	.LBB7_26
.Lfunc_end7:
	.size	scale_bitcount, .Lfunc_end7-scale_bitcount
                                        # -- End function
	.globl	scale_bitcount_lsf              # -- Begin function scale_bitcount_lsf
	.p2align	5
	.type	scale_bitcount_lsf,@function
scale_bitcount_lsf:                     # @scale_bitcount_lsf
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	st.d	$s4, $sp, 0                     # 8-byte Folded Spill
	ld.w	$a2, $a1, 64
	ld.w	$a4, $a1, 24
	sltu	$a3, $zero, $a2
	ori	$a5, $zero, 2
	slli.d	$a3, $a3, 1
	bne	$a4, $a5, .LBB8_3
# %bb.1:                                # %if.then2
	slli.d	$a4, $a3, 5
	alsl.d	$a4, $a3, $a4, 4
	pcalau12i	$a5, %pc_hi20(nr_of_sfb_block)
	addi.d	$a5, $a5, %pc_lo12(nr_of_sfb_block)
	add.d	$a4, $a5, $a4
	addi.d	$t0, $a4, 16
	ld.wu	$a4, $a4, 16
	lu12i.w	$a5, -349526
	ori	$a7, $a5, 2731
	ori	$a6, $zero, 3
	lu32i.d	$a7, 0
	bgeu	$a4, $a6, .LBB8_6
# %bb.2:
	move	$a4, $zero
	move	$a5, $zero
	b	.LBB8_46
.LBB8_3:                                # %if.else45
	slli.d	$a4, $a3, 5
	alsl.d	$a4, $a3, $a4, 4
	pcalau12i	$a5, %pc_hi20(nr_of_sfb_block)
	addi.d	$a7, $a5, %pc_lo12(nr_of_sfb_block)
	ldx.w	$a5, $a7, $a4
	ori	$a6, $zero, 1
	add.d	$a7, $a7, $a4
	blt	$a5, $a6, .LBB8_8
# %bb.4:                                # %iter.check
	ori	$a4, $zero, 4
	bgeu	$a5, $a4, .LBB8_9
# %bb.5:
	move	$t0, $zero
	move	$a4, $zero
	b	.LBB8_20
.LBB8_6:                                # %iter.check279
	mul.d	$a4, $a4, $a7
	srli.d	$a5, $a4, 33
	addi.d	$a4, $a5, -1
	bgeu	$a4, $a6, .LBB8_11
# %bb.7:
	move	$t1, $zero
	move	$a4, $zero
	b	.LBB8_44
.LBB8_8:
	move	$a4, $zero
	move	$a5, $zero
	b	.LBB8_22
.LBB8_9:                                # %vector.main.loop.iter.check
	ori	$a4, $zero, 16
	bgeu	$a5, $a4, .LBB8_13
# %bb.10:
	move	$t0, $zero
	move	$a4, $zero
	b	.LBB8_17
.LBB8_11:                               # %vector.main.loop.iter.check281
	bstrpick.d	$t1, $a4, 31, 0
	ori	$t3, $zero, 15
	addi.d	$t2, $t1, 1
	bgeu	$a4, $t3, .LBB8_37
# %bb.12:
	move	$t1, $zero
	move	$a4, $zero
	b	.LBB8_41
.LBB8_13:                               # %vector.ph
	bstrpick.d	$a4, $a5, 30, 4
	slli.d	$t0, $a4, 4
	xvrepli.b	$xr0, 0
	addi.d	$a4, $a0, 32
	move	$t1, $t0
	xvori.b	$xr1, $xr0, 0
	.p2align	4, , 16
.LBB8_14:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a4, -32
	xvld	$xr3, $a4, 0
	xvmax.w	$xr0, $xr2, $xr0
	xvmax.w	$xr1, $xr3, $xr1
	addi.d	$t1, $t1, -16
	addi.d	$a4, $a4, 64
	bnez	$t1, .LBB8_14
# %bb.15:                               # %middle.block
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 78
	xvshuf4i.w	$xr1, $xr1, 228
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvshuf4i.w	$xr1, $xr1, 14
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvmax.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$a4, $xr0, 0
	beq	$t0, $a5, .LBB8_22
# %bb.16:                               # %vec.epilog.iter.check
	andi	$t1, $a5, 12
	beqz	$t1, .LBB8_20
.LBB8_17:                               # %vec.epilog.ph
	move	$t1, $t0
	bstrpick.d	$t0, $a5, 30, 2
	slli.d	$t0, $t0, 2
	vreplgr2vr.w	$vr0, $a4
	sub.d	$a4, $t1, $t0
	alsl.d	$t1, $t1, $a0, 2
	.p2align	4, , 16
.LBB8_18:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $t1, 0
	vmax.w	$vr0, $vr1, $vr0
	addi.d	$a4, $a4, 4
	addi.d	$t1, $t1, 16
	bnez	$a4, .LBB8_18
# %bb.19:                               # %vec.epilog.middle.block
	vshuf4i.w	$vr1, $vr0, 14
	vmax.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a4, $vr0, 0
	beq	$t0, $a5, .LBB8_22
.LBB8_20:                               # %for.body58.preheader
	alsl.d	$t1, $t0, $a0, 2
	.p2align	4, , 16
.LBB8_21:                               # %for.body58
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t2, $t1, 0
	slt	$t3, $a4, $t2
	masknez	$a4, $a4, $t3
	maskeqz	$t2, $t2, $t3
	or	$a4, $t2, $a4
	addi.w	$t0, $t0, 1
	addi.d	$t1, $t1, 4
	bne	$a5, $t0, .LBB8_21
.LBB8_22:                               # %for.inc75
	ld.w	$t0, $a7, 4
	blt	$t0, $a6, .LBB8_25
# %bb.23:                               # %iter.check154
	ori	$a6, $zero, 4
	bstrpick.d	$t1, $a5, 31, 0
	bgeu	$t0, $a6, .LBB8_28
# %bb.24:
	move	$a6, $zero
	move	$t4, $zero
	move	$t3, $t1
	b	.LBB8_71
.LBB8_25:
	move	$a6, $zero
	ld.w	$t2, $a7, 8
	ori	$t0, $zero, 1
	bge	$t2, $t0, .LBB8_74
.LBB8_26:
	move	$t1, $zero
	ld.w	$a7, $a7, 12
	bge	$a7, $t0, .LBB8_89
.LBB8_27:
	move	$t3, $zero
	b	.LBB8_103
.LBB8_28:                               # %vector.main.loop.iter.check156
	ori	$a6, $zero, 16
	bgeu	$t0, $a6, .LBB8_30
# %bb.29:
	move	$t2, $zero
	move	$a6, $zero
	b	.LBB8_34
.LBB8_30:                               # %vector.ph157
	bstrpick.d	$a6, $t0, 30, 4
	slli.d	$t2, $a6, 4
	alsl.d	$a6, $t1, $a0, 2
	xvrepli.b	$xr0, 0
	addi.d	$a6, $a6, 32
	move	$t3, $t2
	xvori.b	$xr1, $xr0, 0
	.p2align	4, , 16
.LBB8_31:                               # %vector.body160
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a6, -32
	xvld	$xr3, $a6, 0
	xvmax.w	$xr0, $xr2, $xr0
	xvmax.w	$xr1, $xr3, $xr1
	addi.d	$t3, $t3, -16
	addi.d	$a6, $a6, 64
	bnez	$t3, .LBB8_31
# %bb.32:                               # %middle.block167
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 78
	xvshuf4i.w	$xr1, $xr1, 228
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvshuf4i.w	$xr1, $xr1, 14
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvmax.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$a6, $xr0, 0
	beq	$t2, $t0, .LBB8_73
# %bb.33:                               # %vec.epilog.iter.check174
	andi	$t3, $t0, 12
	beqz	$t3, .LBB8_70
.LBB8_34:                               # %vec.epilog.ph173
	bstrpick.d	$t3, $t0, 30, 2
	slli.d	$t4, $t3, 2
	alsl.d	$t3, $t3, $t1, 2
	vreplgr2vr.w	$vr0, $a6
	sub.d	$a6, $t2, $t4
	add.d	$t1, $t2, $t1
	alsl.d	$t1, $t1, $a0, 2
	.p2align	4, , 16
.LBB8_35:                               # %vec.epilog.vector.body181
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $t1, 0
	vmax.w	$vr0, $vr1, $vr0
	addi.d	$a6, $a6, 4
	addi.d	$t1, $t1, 16
	bnez	$a6, .LBB8_35
# %bb.36:                               # %vec.epilog.middle.block186
	vshuf4i.w	$vr1, $vr0, 14
	vmax.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a6, $vr0, 0
	bne	$t4, $t0, .LBB8_71
	b	.LBB8_73
.LBB8_37:                               # %vector.ph282
	bstrpick.d	$a4, $t2, 32, 4
	slli.d	$t1, $a4, 4
	xvrepli.b	$xr0, 0
	addi.d	$a4, $a0, 140
	move	$t3, $t1
	xvori.b	$xr1, $xr0, 0
	.p2align	4, , 16
.LBB8_38:                               # %vector.body285
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t4, $a4, -52
	ld.w	$t5, $a4, -40
	ld.w	$t6, $a4, -28
	ld.w	$t7, $a4, -16
	ld.w	$t8, $a4, -4
	ld.w	$fp, $a4, 8
	ld.w	$s0, $a4, 20
	ld.w	$s1, $a4, 32
	vinsgr2vr.w	$vr2, $t8, 0
	vinsgr2vr.w	$vr2, $fp, 1
	vinsgr2vr.w	$vr2, $s0, 2
	vinsgr2vr.w	$vr2, $s1, 3
	vinsgr2vr.w	$vr3, $t4, 0
	vinsgr2vr.w	$vr3, $t5, 1
	vinsgr2vr.w	$vr3, $t6, 2
	vinsgr2vr.w	$vr3, $t7, 3
	xvpermi.q	$xr3, $xr2, 2
	ld.w	$t4, $a4, 44
	ld.w	$t5, $a4, 56
	ld.w	$t6, $a4, 68
	ld.w	$t7, $a4, 80
	ld.w	$t8, $a4, 92
	ld.w	$fp, $a4, 104
	ld.w	$s0, $a4, 116
	ld.w	$s1, $a4, 128
	vinsgr2vr.w	$vr2, $t8, 0
	vinsgr2vr.w	$vr2, $fp, 1
	vinsgr2vr.w	$vr2, $s0, 2
	vinsgr2vr.w	$vr2, $s1, 3
	vinsgr2vr.w	$vr4, $t4, 0
	vinsgr2vr.w	$vr4, $t5, 1
	vinsgr2vr.w	$vr4, $t6, 2
	vinsgr2vr.w	$vr4, $t7, 3
	xvpermi.q	$xr4, $xr2, 2
	xvmax.w	$xr0, $xr3, $xr0
	xvmax.w	$xr1, $xr4, $xr1
	ld.w	$t4, $a4, -48
	ld.w	$t5, $a4, -36
	ld.w	$t6, $a4, -24
	ld.w	$t7, $a4, -12
	ld.w	$t8, $a4, 0
	ld.w	$fp, $a4, 12
	ld.w	$s0, $a4, 24
	ld.w	$s1, $a4, 36
	vinsgr2vr.w	$vr2, $t8, 0
	vinsgr2vr.w	$vr2, $fp, 1
	vinsgr2vr.w	$vr2, $s0, 2
	vinsgr2vr.w	$vr2, $s1, 3
	vinsgr2vr.w	$vr3, $t4, 0
	vinsgr2vr.w	$vr3, $t5, 1
	vinsgr2vr.w	$vr3, $t6, 2
	vinsgr2vr.w	$vr3, $t7, 3
	xvpermi.q	$xr3, $xr2, 2
	ld.w	$t4, $a4, 48
	ld.w	$t5, $a4, 60
	ld.w	$t6, $a4, 72
	ld.w	$t7, $a4, 84
	ld.w	$t8, $a4, 96
	ld.w	$fp, $a4, 108
	ld.w	$s0, $a4, 120
	ld.w	$s1, $a4, 132
	vinsgr2vr.w	$vr2, $t8, 0
	vinsgr2vr.w	$vr2, $fp, 1
	vinsgr2vr.w	$vr2, $s0, 2
	vinsgr2vr.w	$vr2, $s1, 3
	vinsgr2vr.w	$vr4, $t4, 0
	vinsgr2vr.w	$vr4, $t5, 1
	vinsgr2vr.w	$vr4, $t6, 2
	vinsgr2vr.w	$vr4, $t7, 3
	xvpermi.q	$xr4, $xr2, 2
	xvmax.w	$xr0, $xr3, $xr0
	xvmax.w	$xr1, $xr4, $xr1
	ld.w	$t4, $a4, -44
	ld.w	$t5, $a4, -32
	ld.w	$t6, $a4, -20
	ld.w	$t7, $a4, -8
	ld.w	$t8, $a4, 4
	ld.w	$fp, $a4, 16
	ld.w	$s0, $a4, 28
	ld.w	$s1, $a4, 40
	vinsgr2vr.w	$vr2, $t8, 0
	vinsgr2vr.w	$vr2, $fp, 1
	vinsgr2vr.w	$vr2, $s0, 2
	vinsgr2vr.w	$vr2, $s1, 3
	vinsgr2vr.w	$vr3, $t4, 0
	vinsgr2vr.w	$vr3, $t5, 1
	vinsgr2vr.w	$vr3, $t6, 2
	vinsgr2vr.w	$vr3, $t7, 3
	xvpermi.q	$xr3, $xr2, 2
	ld.w	$t4, $a4, 52
	ld.w	$t5, $a4, 64
	ld.w	$t6, $a4, 76
	ld.w	$t7, $a4, 88
	ld.w	$t8, $a4, 100
	ld.w	$fp, $a4, 112
	ld.w	$s0, $a4, 124
	ld.w	$s1, $a4, 136
	vinsgr2vr.w	$vr2, $t8, 0
	vinsgr2vr.w	$vr2, $fp, 1
	vinsgr2vr.w	$vr2, $s0, 2
	vinsgr2vr.w	$vr2, $s1, 3
	vinsgr2vr.w	$vr4, $t4, 0
	vinsgr2vr.w	$vr4, $t5, 1
	vinsgr2vr.w	$vr4, $t6, 2
	vinsgr2vr.w	$vr4, $t7, 3
	xvpermi.q	$xr4, $xr2, 2
	xvmax.w	$xr0, $xr3, $xr0
	xvmax.w	$xr1, $xr4, $xr1
	addi.d	$t3, $t3, -16
	addi.d	$a4, $a4, 192
	bnez	$t3, .LBB8_38
# %bb.39:                               # %middle.block290
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 78
	xvshuf4i.w	$xr1, $xr1, 228
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvshuf4i.w	$xr1, $xr1, 14
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvmax.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$a4, $xr0, 0
	beq	$t2, $t1, .LBB8_46
# %bb.40:                               # %vec.epilog.iter.check297
	andi	$t3, $t2, 12
	beqz	$t3, .LBB8_44
.LBB8_41:                               # %vec.epilog.ph296
	move	$t3, $t1
	bstrpick.d	$t1, $t2, 32, 2
	slli.d	$t1, $t1, 2
	vreplgr2vr.w	$vr0, $a4
	sub.d	$a4, $t3, $t1
	slli.d	$t4, $t3, 3
	alsl.d	$t3, $t3, $t4, 2
	add.d	$t3, $t3, $a0
	addi.d	$t3, $t3, 132
	.p2align	4, , 16
.LBB8_42:                               # %vec.epilog.vector.body304
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t4, $t3, -44
	ld.w	$t5, $t3, -32
	ld.w	$t6, $t3, -20
	ld.w	$t7, $t3, -8
	vinsgr2vr.w	$vr1, $t4, 0
	vinsgr2vr.w	$vr1, $t5, 1
	vinsgr2vr.w	$vr1, $t6, 2
	vinsgr2vr.w	$vr1, $t7, 3
	vmax.w	$vr0, $vr1, $vr0
	ld.w	$t4, $t3, -40
	ld.w	$t5, $t3, -28
	ld.w	$t6, $t3, -16
	ld.w	$t7, $t3, -4
	vinsgr2vr.w	$vr1, $t4, 0
	vinsgr2vr.w	$vr1, $t5, 1
	vinsgr2vr.w	$vr1, $t6, 2
	vinsgr2vr.w	$vr1, $t7, 3
	vmax.w	$vr0, $vr1, $vr0
	ld.w	$t4, $t3, -36
	ld.w	$t5, $t3, -24
	ld.w	$t6, $t3, -12
	ld.w	$t7, $t3, 0
	vinsgr2vr.w	$vr1, $t4, 0
	vinsgr2vr.w	$vr1, $t5, 1
	vinsgr2vr.w	$vr1, $t6, 2
	vinsgr2vr.w	$vr1, $t7, 3
	vmax.w	$vr0, $vr1, $vr0
	addi.d	$a4, $a4, 4
	addi.d	$t3, $t3, 48
	bnez	$a4, .LBB8_42
# %bb.43:                               # %vec.epilog.middle.block308
	vshuf4i.w	$vr1, $vr0, 14
	vmax.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a4, $vr0, 0
	beq	$t2, $t1, .LBB8_46
.LBB8_44:                               # %for.cond16.preheader.preheader
	slli.d	$t2, $t1, 3
	alsl.d	$t2, $t1, $t2, 2
	add.d	$t2, $t2, $a0
	addi.d	$t2, $t2, 96
	sub.d	$t1, $a5, $t1
	.p2align	4, , 16
.LBB8_45:                               # %for.cond16.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t3, $t2, -8
	slt	$t4, $a4, $t3
	ld.w	$t5, $t2, -4
	masknez	$a4, $a4, $t4
	maskeqz	$t3, $t3, $t4
	or	$a4, $t3, $a4
	slt	$t3, $a4, $t5
	ld.w	$t4, $t2, 0
	masknez	$a4, $a4, $t3
	maskeqz	$t3, $t5, $t3
	or	$a4, $t3, $a4
	slt	$t3, $a4, $t4
	masknez	$a4, $a4, $t3
	maskeqz	$t3, $t4, $t3
	or	$a4, $t3, $a4
	addi.w	$t1, $t1, -1
	addi.d	$t2, $t2, 12
	bnez	$t1, .LBB8_45
.LBB8_46:                               # %for.inc42
	ld.wu	$t1, $t0, 4
	bgeu	$t1, $a6, .LBB8_50
# %bb.47:
	move	$a6, $zero
	ld.wu	$t1, $t0, 8
	ori	$t2, $zero, 3
	bltu	$t1, $t2, .LBB8_123
.LBB8_48:                               # %iter.check355
	mul.d	$t1, $t1, $a7
	srli.d	$t3, $t1, 33
	addi.d	$t1, $t3, -1
	bgeu	$t1, $t2, .LBB8_52
# %bb.49:
	move	$t1, $zero
	move	$t6, $zero
	move	$t7, $a5
	b	.LBB8_105
.LBB8_50:                               # %iter.check316
	mul.d	$a6, $t1, $a7
	srli.d	$t1, $a6, 33
	addi.d	$a6, $t1, -1
	ori	$t2, $zero, 3
	bgeu	$a6, $t2, .LBB8_54
# %bb.51:
	move	$a6, $zero
	move	$t4, $zero
	move	$t5, $a5
	b	.LBB8_120
.LBB8_52:                               # %vector.main.loop.iter.check357
	bstrpick.d	$t4, $t1, 31, 0
	ori	$t5, $zero, 15
	addi.d	$t4, $t4, 1
	bgeu	$t1, $t5, .LBB8_56
# %bb.53:
	move	$t5, $zero
	move	$t1, $zero
	b	.LBB8_60
.LBB8_54:                               # %vector.main.loop.iter.check318
	bstrpick.d	$t2, $a6, 31, 0
	ori	$t3, $zero, 15
	addi.d	$t2, $t2, 1
	bgeu	$a6, $t3, .LBB8_63
# %bb.55:
	move	$t3, $zero
	move	$a6, $zero
	b	.LBB8_67
.LBB8_56:                               # %vector.ph358
	bstrpick.d	$t1, $t4, 32, 4
	slli.d	$t5, $t1, 4
	slli.d	$t1, $a5, 3
	alsl.d	$t1, $a5, $t1, 2
	add.d	$t1, $t1, $a0
	xvrepli.b	$xr0, 0
	addi.d	$t1, $t1, 140
	move	$t6, $t5
	xvori.b	$xr1, $xr0, 0
	.p2align	4, , 16
.LBB8_57:                               # %vector.body361
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t7, $t1, -52
	ld.w	$t8, $t1, -40
	ld.w	$fp, $t1, -28
	ld.w	$s0, $t1, -16
	ld.w	$s1, $t1, -4
	ld.w	$s2, $t1, 8
	ld.w	$s3, $t1, 20
	ld.w	$s4, $t1, 32
	vinsgr2vr.w	$vr2, $s1, 0
	vinsgr2vr.w	$vr2, $s2, 1
	vinsgr2vr.w	$vr2, $s3, 2
	vinsgr2vr.w	$vr2, $s4, 3
	vinsgr2vr.w	$vr3, $t7, 0
	vinsgr2vr.w	$vr3, $t8, 1
	vinsgr2vr.w	$vr3, $fp, 2
	vinsgr2vr.w	$vr3, $s0, 3
	xvpermi.q	$xr3, $xr2, 2
	ld.w	$t7, $t1, 44
	ld.w	$t8, $t1, 56
	ld.w	$fp, $t1, 68
	ld.w	$s0, $t1, 80
	ld.w	$s1, $t1, 92
	ld.w	$s2, $t1, 104
	ld.w	$s3, $t1, 116
	ld.w	$s4, $t1, 128
	vinsgr2vr.w	$vr2, $s1, 0
	vinsgr2vr.w	$vr2, $s2, 1
	vinsgr2vr.w	$vr2, $s3, 2
	vinsgr2vr.w	$vr2, $s4, 3
	vinsgr2vr.w	$vr4, $t7, 0
	vinsgr2vr.w	$vr4, $t8, 1
	vinsgr2vr.w	$vr4, $fp, 2
	vinsgr2vr.w	$vr4, $s0, 3
	xvpermi.q	$xr4, $xr2, 2
	xvmax.w	$xr0, $xr3, $xr0
	xvmax.w	$xr1, $xr4, $xr1
	ld.w	$t7, $t1, -48
	ld.w	$t8, $t1, -36
	ld.w	$fp, $t1, -24
	ld.w	$s0, $t1, -12
	ld.w	$s1, $t1, 0
	ld.w	$s2, $t1, 12
	ld.w	$s3, $t1, 24
	ld.w	$s4, $t1, 36
	vinsgr2vr.w	$vr2, $s1, 0
	vinsgr2vr.w	$vr2, $s2, 1
	vinsgr2vr.w	$vr2, $s3, 2
	vinsgr2vr.w	$vr2, $s4, 3
	vinsgr2vr.w	$vr3, $t7, 0
	vinsgr2vr.w	$vr3, $t8, 1
	vinsgr2vr.w	$vr3, $fp, 2
	vinsgr2vr.w	$vr3, $s0, 3
	xvpermi.q	$xr3, $xr2, 2
	ld.w	$t7, $t1, 48
	ld.w	$t8, $t1, 60
	ld.w	$fp, $t1, 72
	ld.w	$s0, $t1, 84
	ld.w	$s1, $t1, 96
	ld.w	$s2, $t1, 108
	ld.w	$s3, $t1, 120
	ld.w	$s4, $t1, 132
	vinsgr2vr.w	$vr2, $s1, 0
	vinsgr2vr.w	$vr2, $s2, 1
	vinsgr2vr.w	$vr2, $s3, 2
	vinsgr2vr.w	$vr2, $s4, 3
	vinsgr2vr.w	$vr4, $t7, 0
	vinsgr2vr.w	$vr4, $t8, 1
	vinsgr2vr.w	$vr4, $fp, 2
	vinsgr2vr.w	$vr4, $s0, 3
	xvpermi.q	$xr4, $xr2, 2
	xvmax.w	$xr0, $xr3, $xr0
	xvmax.w	$xr1, $xr4, $xr1
	ld.w	$t7, $t1, -44
	ld.w	$t8, $t1, -32
	ld.w	$fp, $t1, -20
	ld.w	$s0, $t1, -8
	ld.w	$s1, $t1, 4
	ld.w	$s2, $t1, 16
	ld.w	$s3, $t1, 28
	ld.w	$s4, $t1, 40
	vinsgr2vr.w	$vr2, $s1, 0
	vinsgr2vr.w	$vr2, $s2, 1
	vinsgr2vr.w	$vr2, $s3, 2
	vinsgr2vr.w	$vr2, $s4, 3
	vinsgr2vr.w	$vr3, $t7, 0
	vinsgr2vr.w	$vr3, $t8, 1
	vinsgr2vr.w	$vr3, $fp, 2
	vinsgr2vr.w	$vr3, $s0, 3
	xvpermi.q	$xr3, $xr2, 2
	ld.w	$t7, $t1, 52
	ld.w	$t8, $t1, 64
	ld.w	$fp, $t1, 76
	ld.w	$s0, $t1, 88
	ld.w	$s1, $t1, 100
	ld.w	$s2, $t1, 112
	ld.w	$s3, $t1, 124
	ld.w	$s4, $t1, 136
	vinsgr2vr.w	$vr2, $s1, 0
	vinsgr2vr.w	$vr2, $s2, 1
	vinsgr2vr.w	$vr2, $s3, 2
	vinsgr2vr.w	$vr2, $s4, 3
	vinsgr2vr.w	$vr4, $t7, 0
	vinsgr2vr.w	$vr4, $t8, 1
	vinsgr2vr.w	$vr4, $fp, 2
	vinsgr2vr.w	$vr4, $s0, 3
	xvpermi.q	$xr4, $xr2, 2
	xvmax.w	$xr0, $xr3, $xr0
	xvmax.w	$xr1, $xr4, $xr1
	addi.d	$t6, $t6, -16
	addi.d	$t1, $t1, 192
	bnez	$t6, .LBB8_57
# %bb.58:                               # %middle.block366
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 78
	xvshuf4i.w	$xr1, $xr1, 228
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvshuf4i.w	$xr1, $xr1, 14
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvmax.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$t1, $xr0, 0
	beq	$t4, $t5, .LBB8_107
# %bb.59:                               # %vec.epilog.iter.check373
	andi	$t6, $t4, 12
	beqz	$t6, .LBB8_104
.LBB8_60:                               # %vec.epilog.ph372
	bstrpick.d	$t7, $t4, 32, 2
	slli.d	$t6, $t7, 2
	alsl.d	$t7, $t7, $a5, 2
	vreplgr2vr.w	$vr0, $t1
	sub.d	$t1, $t5, $t6
	add.d	$t5, $t5, $a5
	slli.d	$t8, $t5, 3
	alsl.d	$t5, $t5, $t8, 2
	add.d	$t5, $t5, $a0
	addi.d	$t5, $t5, 132
	.p2align	4, , 16
.LBB8_61:                               # %vec.epilog.vector.body380
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t8, $t5, -44
	ld.w	$fp, $t5, -32
	ld.w	$s0, $t5, -20
	ld.w	$s1, $t5, -8
	vinsgr2vr.w	$vr1, $t8, 0
	vinsgr2vr.w	$vr1, $fp, 1
	vinsgr2vr.w	$vr1, $s0, 2
	vinsgr2vr.w	$vr1, $s1, 3
	vmax.w	$vr0, $vr1, $vr0
	ld.w	$t8, $t5, -40
	ld.w	$fp, $t5, -28
	ld.w	$s0, $t5, -16
	ld.w	$s1, $t5, -4
	vinsgr2vr.w	$vr1, $t8, 0
	vinsgr2vr.w	$vr1, $fp, 1
	vinsgr2vr.w	$vr1, $s0, 2
	vinsgr2vr.w	$vr1, $s1, 3
	vmax.w	$vr0, $vr1, $vr0
	ld.w	$t8, $t5, -36
	ld.w	$fp, $t5, -24
	ld.w	$s0, $t5, -12
	ld.w	$s1, $t5, 0
	vinsgr2vr.w	$vr1, $t8, 0
	vinsgr2vr.w	$vr1, $fp, 1
	vinsgr2vr.w	$vr1, $s0, 2
	vinsgr2vr.w	$vr1, $s1, 3
	vmax.w	$vr0, $vr1, $vr0
	addi.d	$t1, $t1, 4
	addi.d	$t5, $t5, 48
	bnez	$t1, .LBB8_61
# %bb.62:                               # %vec.epilog.middle.block385
	vshuf4i.w	$vr1, $vr0, 14
	vmax.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$t1, $vr0, 0
	bne	$t4, $t6, .LBB8_105
	b	.LBB8_107
.LBB8_63:                               # %vector.ph319
	bstrpick.d	$a6, $t2, 32, 4
	slli.d	$t3, $a6, 4
	slli.d	$a6, $a5, 3
	alsl.d	$a6, $a5, $a6, 2
	add.d	$a6, $a6, $a0
	xvrepli.b	$xr0, 0
	addi.d	$a6, $a6, 140
	move	$t4, $t3
	xvori.b	$xr1, $xr0, 0
	.p2align	4, , 16
.LBB8_64:                               # %vector.body322
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t5, $a6, -52
	ld.w	$t6, $a6, -40
	ld.w	$t7, $a6, -28
	ld.w	$t8, $a6, -16
	ld.w	$fp, $a6, -4
	ld.w	$s0, $a6, 8
	ld.w	$s1, $a6, 20
	ld.w	$s2, $a6, 32
	vinsgr2vr.w	$vr2, $fp, 0
	vinsgr2vr.w	$vr2, $s0, 1
	vinsgr2vr.w	$vr2, $s1, 2
	vinsgr2vr.w	$vr2, $s2, 3
	vinsgr2vr.w	$vr3, $t5, 0
	vinsgr2vr.w	$vr3, $t6, 1
	vinsgr2vr.w	$vr3, $t7, 2
	vinsgr2vr.w	$vr3, $t8, 3
	xvpermi.q	$xr3, $xr2, 2
	ld.w	$t5, $a6, 44
	ld.w	$t6, $a6, 56
	ld.w	$t7, $a6, 68
	ld.w	$t8, $a6, 80
	ld.w	$fp, $a6, 92
	ld.w	$s0, $a6, 104
	ld.w	$s1, $a6, 116
	ld.w	$s2, $a6, 128
	vinsgr2vr.w	$vr2, $fp, 0
	vinsgr2vr.w	$vr2, $s0, 1
	vinsgr2vr.w	$vr2, $s1, 2
	vinsgr2vr.w	$vr2, $s2, 3
	vinsgr2vr.w	$vr4, $t5, 0
	vinsgr2vr.w	$vr4, $t6, 1
	vinsgr2vr.w	$vr4, $t7, 2
	vinsgr2vr.w	$vr4, $t8, 3
	xvpermi.q	$xr4, $xr2, 2
	xvmax.w	$xr0, $xr3, $xr0
	xvmax.w	$xr1, $xr4, $xr1
	ld.w	$t5, $a6, -48
	ld.w	$t6, $a6, -36
	ld.w	$t7, $a6, -24
	ld.w	$t8, $a6, -12
	ld.w	$fp, $a6, 0
	ld.w	$s0, $a6, 12
	ld.w	$s1, $a6, 24
	ld.w	$s2, $a6, 36
	vinsgr2vr.w	$vr2, $fp, 0
	vinsgr2vr.w	$vr2, $s0, 1
	vinsgr2vr.w	$vr2, $s1, 2
	vinsgr2vr.w	$vr2, $s2, 3
	vinsgr2vr.w	$vr3, $t5, 0
	vinsgr2vr.w	$vr3, $t6, 1
	vinsgr2vr.w	$vr3, $t7, 2
	vinsgr2vr.w	$vr3, $t8, 3
	xvpermi.q	$xr3, $xr2, 2
	ld.w	$t5, $a6, 48
	ld.w	$t6, $a6, 60
	ld.w	$t7, $a6, 72
	ld.w	$t8, $a6, 84
	ld.w	$fp, $a6, 96
	ld.w	$s0, $a6, 108
	ld.w	$s1, $a6, 120
	ld.w	$s2, $a6, 132
	vinsgr2vr.w	$vr2, $fp, 0
	vinsgr2vr.w	$vr2, $s0, 1
	vinsgr2vr.w	$vr2, $s1, 2
	vinsgr2vr.w	$vr2, $s2, 3
	vinsgr2vr.w	$vr4, $t5, 0
	vinsgr2vr.w	$vr4, $t6, 1
	vinsgr2vr.w	$vr4, $t7, 2
	vinsgr2vr.w	$vr4, $t8, 3
	xvpermi.q	$xr4, $xr2, 2
	xvmax.w	$xr0, $xr3, $xr0
	xvmax.w	$xr1, $xr4, $xr1
	ld.w	$t5, $a6, -44
	ld.w	$t6, $a6, -32
	ld.w	$t7, $a6, -20
	ld.w	$t8, $a6, -8
	ld.w	$fp, $a6, 4
	ld.w	$s0, $a6, 16
	ld.w	$s1, $a6, 28
	ld.w	$s2, $a6, 40
	vinsgr2vr.w	$vr2, $fp, 0
	vinsgr2vr.w	$vr2, $s0, 1
	vinsgr2vr.w	$vr2, $s1, 2
	vinsgr2vr.w	$vr2, $s2, 3
	vinsgr2vr.w	$vr3, $t5, 0
	vinsgr2vr.w	$vr3, $t6, 1
	vinsgr2vr.w	$vr3, $t7, 2
	vinsgr2vr.w	$vr3, $t8, 3
	xvpermi.q	$xr3, $xr2, 2
	ld.w	$t5, $a6, 52
	ld.w	$t6, $a6, 64
	ld.w	$t7, $a6, 76
	ld.w	$t8, $a6, 88
	ld.w	$fp, $a6, 100
	ld.w	$s0, $a6, 112
	ld.w	$s1, $a6, 124
	ld.w	$s2, $a6, 136
	vinsgr2vr.w	$vr2, $fp, 0
	vinsgr2vr.w	$vr2, $s0, 1
	vinsgr2vr.w	$vr2, $s1, 2
	vinsgr2vr.w	$vr2, $s2, 3
	vinsgr2vr.w	$vr4, $t5, 0
	vinsgr2vr.w	$vr4, $t6, 1
	vinsgr2vr.w	$vr4, $t7, 2
	vinsgr2vr.w	$vr4, $t8, 3
	xvpermi.q	$xr4, $xr2, 2
	xvmax.w	$xr0, $xr3, $xr0
	xvmax.w	$xr1, $xr4, $xr1
	addi.d	$t4, $t4, -16
	addi.d	$a6, $a6, 192
	bnez	$t4, .LBB8_64
# %bb.65:                               # %middle.block327
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 78
	xvshuf4i.w	$xr1, $xr1, 228
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvshuf4i.w	$xr1, $xr1, 14
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvmax.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$a6, $xr0, 0
	beq	$t2, $t3, .LBB8_122
# %bb.66:                               # %vec.epilog.iter.check334
	andi	$t4, $t2, 12
	beqz	$t4, .LBB8_119
.LBB8_67:                               # %vec.epilog.ph333
	bstrpick.d	$t5, $t2, 32, 2
	slli.d	$t4, $t5, 2
	alsl.d	$t5, $t5, $a5, 2
	vreplgr2vr.w	$vr0, $a6
	sub.d	$a6, $t3, $t4
	add.d	$t3, $t3, $a5
	slli.d	$t6, $t3, 3
	alsl.d	$t3, $t3, $t6, 2
	add.d	$t3, $t3, $a0
	addi.d	$t3, $t3, 132
	.p2align	4, , 16
.LBB8_68:                               # %vec.epilog.vector.body341
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t6, $t3, -44
	ld.w	$t7, $t3, -32
	ld.w	$t8, $t3, -20
	ld.w	$fp, $t3, -8
	vinsgr2vr.w	$vr1, $t6, 0
	vinsgr2vr.w	$vr1, $t7, 1
	vinsgr2vr.w	$vr1, $t8, 2
	vinsgr2vr.w	$vr1, $fp, 3
	vmax.w	$vr0, $vr1, $vr0
	ld.w	$t6, $t3, -40
	ld.w	$t7, $t3, -28
	ld.w	$t8, $t3, -16
	ld.w	$fp, $t3, -4
	vinsgr2vr.w	$vr1, $t6, 0
	vinsgr2vr.w	$vr1, $t7, 1
	vinsgr2vr.w	$vr1, $t8, 2
	vinsgr2vr.w	$vr1, $fp, 3
	vmax.w	$vr0, $vr1, $vr0
	ld.w	$t6, $t3, -36
	ld.w	$t7, $t3, -24
	ld.w	$t8, $t3, -12
	ld.w	$fp, $t3, 0
	vinsgr2vr.w	$vr1, $t6, 0
	vinsgr2vr.w	$vr1, $t7, 1
	vinsgr2vr.w	$vr1, $t8, 2
	vinsgr2vr.w	$vr1, $fp, 3
	vmax.w	$vr0, $vr1, $vr0
	addi.d	$a6, $a6, 4
	addi.d	$t3, $t3, 48
	bnez	$a6, .LBB8_68
# %bb.69:                               # %vec.epilog.middle.block346
	vshuf4i.w	$vr1, $vr0, 14
	vmax.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a6, $vr0, 0
	bne	$t2, $t4, .LBB8_120
	b	.LBB8_122
.LBB8_70:
	add.d	$t3, $t2, $t1
	move	$t4, $t2
.LBB8_71:                               # %for.body58.1.preheader
	alsl.d	$t1, $t3, $a0, 2
	sub.d	$t2, $t0, $t4
	.p2align	4, , 16
.LBB8_72:                               # %for.body58.1
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t3, $t1, 0
	slt	$t4, $a6, $t3
	masknez	$a6, $a6, $t4
	maskeqz	$t3, $t3, $t4
	or	$a6, $t3, $a6
	addi.w	$t2, $t2, -1
	addi.d	$t1, $t1, 4
	bnez	$t2, .LBB8_72
.LBB8_73:                               # %for.cond56.for.inc75_crit_edge.1
	add.w	$a5, $a5, $t0
	ld.w	$t2, $a7, 8
	ori	$t0, $zero, 1
	blt	$t2, $t0, .LBB8_26
.LBB8_74:                               # %iter.check195
	ori	$t1, $zero, 4
	bgeu	$t2, $t1, .LBB8_76
# %bb.75:
	move	$t1, $zero
	move	$t5, $zero
	move	$t4, $a5
	b	.LBB8_86
.LBB8_76:                               # %vector.main.loop.iter.check197
	ori	$t1, $zero, 16
	bgeu	$t2, $t1, .LBB8_78
# %bb.77:
	move	$t3, $zero
	move	$t1, $zero
	b	.LBB8_82
.LBB8_78:                               # %vector.ph198
	bstrpick.d	$t1, $t2, 30, 4
	slli.d	$t3, $t1, 4
	alsl.d	$t1, $a5, $a0, 2
	xvrepli.b	$xr0, 0
	addi.d	$t1, $t1, 32
	move	$t4, $t3
	xvori.b	$xr1, $xr0, 0
	.p2align	4, , 16
.LBB8_79:                               # %vector.body201
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $t1, -32
	xvld	$xr3, $t1, 0
	xvmax.w	$xr0, $xr2, $xr0
	xvmax.w	$xr1, $xr3, $xr1
	addi.d	$t4, $t4, -16
	addi.d	$t1, $t1, 64
	bnez	$t4, .LBB8_79
# %bb.80:                               # %middle.block208
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 78
	xvshuf4i.w	$xr1, $xr1, 228
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvshuf4i.w	$xr1, $xr1, 14
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvmax.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$t1, $xr0, 0
	beq	$t3, $t2, .LBB8_88
# %bb.81:                               # %vec.epilog.iter.check215
	andi	$t4, $t2, 12
	beqz	$t4, .LBB8_85
.LBB8_82:                               # %vec.epilog.ph214
	bstrpick.d	$t4, $t2, 30, 2
	slli.d	$t5, $t4, 2
	alsl.d	$t4, $t4, $a5, 2
	vreplgr2vr.w	$vr0, $t1
	sub.d	$t1, $t3, $t5
	add.d	$t3, $t3, $a5
	alsl.d	$t3, $t3, $a0, 2
	.p2align	4, , 16
.LBB8_83:                               # %vec.epilog.vector.body222
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $t3, 0
	vmax.w	$vr0, $vr1, $vr0
	addi.d	$t1, $t1, 4
	addi.d	$t3, $t3, 16
	bnez	$t1, .LBB8_83
# %bb.84:                               # %vec.epilog.middle.block228
	vshuf4i.w	$vr1, $vr0, 14
	vmax.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$t1, $vr0, 0
	bne	$t5, $t2, .LBB8_86
	b	.LBB8_88
.LBB8_85:
	add.d	$t4, $t3, $a5
	move	$t5, $t3
.LBB8_86:                               # %for.body58.2.preheader
	alsl.d	$t3, $t4, $a0, 2
	sub.d	$t4, $t2, $t5
	.p2align	4, , 16
.LBB8_87:                               # %for.body58.2
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t5, $t3, 0
	slt	$t6, $t1, $t5
	masknez	$t1, $t1, $t6
	maskeqz	$t5, $t5, $t6
	or	$t1, $t5, $t1
	addi.w	$t4, $t4, -1
	addi.d	$t3, $t3, 4
	bnez	$t4, .LBB8_87
.LBB8_88:                               # %for.cond56.for.inc75_crit_edge.2
	add.w	$a5, $a5, $t2
	ld.w	$a7, $a7, 12
	blt	$a7, $t0, .LBB8_27
.LBB8_89:                               # %iter.check237
	ori	$t0, $zero, 4
	bgeu	$a7, $t0, .LBB8_91
# %bb.90:
	move	$t3, $zero
	move	$t4, $zero
	move	$t2, $a5
	b	.LBB8_101
.LBB8_91:                               # %vector.main.loop.iter.check239
	ori	$t0, $zero, 16
	bgeu	$a7, $t0, .LBB8_93
# %bb.92:
	move	$t0, $zero
	move	$t3, $zero
	b	.LBB8_97
.LBB8_93:                               # %vector.ph240
	bstrpick.d	$t0, $a7, 30, 4
	slli.d	$t0, $t0, 4
	alsl.d	$t2, $a5, $a0, 2
	xvrepli.b	$xr0, 0
	addi.d	$t2, $t2, 32
	move	$t3, $t0
	xvori.b	$xr1, $xr0, 0
	.p2align	4, , 16
.LBB8_94:                               # %vector.body243
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $t2, -32
	xvld	$xr3, $t2, 0
	xvmax.w	$xr0, $xr2, $xr0
	xvmax.w	$xr1, $xr3, $xr1
	addi.d	$t3, $t3, -16
	addi.d	$t2, $t2, 64
	bnez	$t3, .LBB8_94
# %bb.95:                               # %middle.block250
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 78
	xvshuf4i.w	$xr1, $xr1, 228
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvshuf4i.w	$xr1, $xr1, 14
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvmax.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$t3, $xr0, 0
	beq	$t0, $a7, .LBB8_103
# %bb.96:                               # %vec.epilog.iter.check257
	andi	$t2, $a7, 12
	beqz	$t2, .LBB8_100
.LBB8_97:                               # %vec.epilog.ph256
	bstrpick.d	$t2, $a7, 30, 2
	slli.d	$t4, $t2, 2
	alsl.d	$t2, $t2, $a5, 2
	vreplgr2vr.w	$vr0, $t3
	sub.d	$t3, $t0, $t4
	add.d	$a5, $t0, $a5
	alsl.d	$a5, $a5, $a0, 2
	.p2align	4, , 16
.LBB8_98:                               # %vec.epilog.vector.body264
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a5, 0
	vmax.w	$vr0, $vr1, $vr0
	addi.d	$t3, $t3, 4
	addi.d	$a5, $a5, 16
	bnez	$t3, .LBB8_98
# %bb.99:                               # %vec.epilog.middle.block270
	vshuf4i.w	$vr1, $vr0, 14
	vmax.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$t3, $vr0, 0
	bne	$t4, $a7, .LBB8_101
	b	.LBB8_103
.LBB8_100:
	add.d	$t2, $t0, $a5
	move	$t4, $t0
.LBB8_101:                              # %for.body58.3.preheader
	alsl.d	$a0, $t2, $a0, 2
	sub.d	$a5, $a7, $t4
	.p2align	4, , 16
.LBB8_102:                              # %for.body58.3
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a0, 0
	slt	$t0, $t3, $a7
	masknez	$t2, $t3, $t0
	maskeqz	$a7, $a7, $t0
	or	$t3, $a7, $t2
	addi.w	$a5, $a5, -1
	addi.d	$a0, $a0, 4
	bnez	$a5, .LBB8_102
.LBB8_103:
	move	$t0, $zero
	b	.LBB8_128
.LBB8_104:
	add.d	$t7, $t5, $a5
	move	$t6, $t5
.LBB8_105:                              # %for.cond16.preheader.2.preheader
	slli.d	$t4, $t7, 3
	alsl.d	$t4, $t7, $t4, 2
	add.d	$t4, $t4, $a0
	addi.d	$t4, $t4, 96
	sub.d	$t5, $t3, $t6
	.p2align	4, , 16
.LBB8_106:                              # %for.cond16.preheader.2
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t6, $t4, -8
	slt	$t7, $t1, $t6
	ld.w	$t8, $t4, -4
	masknez	$t1, $t1, $t7
	maskeqz	$t6, $t6, $t7
	or	$t1, $t6, $t1
	slt	$t6, $t1, $t8
	ld.w	$t7, $t4, 0
	masknez	$t1, $t1, $t6
	maskeqz	$t6, $t8, $t6
	or	$t1, $t6, $t1
	slt	$t6, $t1, $t7
	masknez	$t1, $t1, $t6
	maskeqz	$t6, $t7, $t6
	or	$t1, $t6, $t1
	addi.w	$t5, $t5, -1
	addi.d	$t4, $t4, 12
	bnez	$t5, .LBB8_106
.LBB8_107:                              # %for.cond13.for.inc42_crit_edge.2
	add.w	$a5, $a5, $t3
	ld.wu	$t3, $t0, 12
	ori	$t0, $zero, 1
	bltu	$t3, $t2, .LBB8_124
.LBB8_108:                              # %iter.check394
	mul.d	$a7, $t3, $a7
	srli.d	$a7, $a7, 33
	addi.d	$t3, $a7, -1
	ori	$t2, $zero, 3
	bgeu	$t3, $t2, .LBB8_110
# %bb.109:
	move	$t3, $zero
	move	$t5, $zero
	move	$t6, $a5
	b	.LBB8_126
.LBB8_110:                              # %vector.main.loop.iter.check396
	bstrpick.d	$t2, $t3, 31, 0
	ori	$t4, $zero, 15
	addi.d	$t2, $t2, 1
	bgeu	$t3, $t4, .LBB8_112
# %bb.111:
	move	$t4, $zero
	move	$t3, $zero
	b	.LBB8_116
.LBB8_112:                              # %vector.ph397
	bstrpick.d	$t3, $t2, 32, 4
	slli.d	$t4, $t3, 4
	slli.d	$t3, $a5, 3
	alsl.d	$t3, $a5, $t3, 2
	add.d	$t3, $t3, $a0
	xvrepli.b	$xr0, 0
	addi.d	$t3, $t3, 140
	move	$t5, $t4
	xvori.b	$xr1, $xr0, 0
	.p2align	4, , 16
.LBB8_113:                              # %vector.body400
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t6, $t3, -52
	ld.w	$t7, $t3, -40
	ld.w	$t8, $t3, -28
	ld.w	$fp, $t3, -16
	ld.w	$s0, $t3, -4
	ld.w	$s1, $t3, 8
	ld.w	$s2, $t3, 20
	ld.w	$s3, $t3, 32
	vinsgr2vr.w	$vr2, $s0, 0
	vinsgr2vr.w	$vr2, $s1, 1
	vinsgr2vr.w	$vr2, $s2, 2
	vinsgr2vr.w	$vr2, $s3, 3
	vinsgr2vr.w	$vr3, $t6, 0
	vinsgr2vr.w	$vr3, $t7, 1
	vinsgr2vr.w	$vr3, $t8, 2
	vinsgr2vr.w	$vr3, $fp, 3
	xvpermi.q	$xr3, $xr2, 2
	ld.w	$t6, $t3, 44
	ld.w	$t7, $t3, 56
	ld.w	$t8, $t3, 68
	ld.w	$fp, $t3, 80
	ld.w	$s0, $t3, 92
	ld.w	$s1, $t3, 104
	ld.w	$s2, $t3, 116
	ld.w	$s3, $t3, 128
	vinsgr2vr.w	$vr2, $s0, 0
	vinsgr2vr.w	$vr2, $s1, 1
	vinsgr2vr.w	$vr2, $s2, 2
	vinsgr2vr.w	$vr2, $s3, 3
	vinsgr2vr.w	$vr4, $t6, 0
	vinsgr2vr.w	$vr4, $t7, 1
	vinsgr2vr.w	$vr4, $t8, 2
	vinsgr2vr.w	$vr4, $fp, 3
	xvpermi.q	$xr4, $xr2, 2
	xvmax.w	$xr0, $xr3, $xr0
	xvmax.w	$xr1, $xr4, $xr1
	ld.w	$t6, $t3, -48
	ld.w	$t7, $t3, -36
	ld.w	$t8, $t3, -24
	ld.w	$fp, $t3, -12
	ld.w	$s0, $t3, 0
	ld.w	$s1, $t3, 12
	ld.w	$s2, $t3, 24
	ld.w	$s3, $t3, 36
	vinsgr2vr.w	$vr2, $s0, 0
	vinsgr2vr.w	$vr2, $s1, 1
	vinsgr2vr.w	$vr2, $s2, 2
	vinsgr2vr.w	$vr2, $s3, 3
	vinsgr2vr.w	$vr3, $t6, 0
	vinsgr2vr.w	$vr3, $t7, 1
	vinsgr2vr.w	$vr3, $t8, 2
	vinsgr2vr.w	$vr3, $fp, 3
	xvpermi.q	$xr3, $xr2, 2
	ld.w	$t6, $t3, 48
	ld.w	$t7, $t3, 60
	ld.w	$t8, $t3, 72
	ld.w	$fp, $t3, 84
	ld.w	$s0, $t3, 96
	ld.w	$s1, $t3, 108
	ld.w	$s2, $t3, 120
	ld.w	$s3, $t3, 132
	vinsgr2vr.w	$vr2, $s0, 0
	vinsgr2vr.w	$vr2, $s1, 1
	vinsgr2vr.w	$vr2, $s2, 2
	vinsgr2vr.w	$vr2, $s3, 3
	vinsgr2vr.w	$vr4, $t6, 0
	vinsgr2vr.w	$vr4, $t7, 1
	vinsgr2vr.w	$vr4, $t8, 2
	vinsgr2vr.w	$vr4, $fp, 3
	xvpermi.q	$xr4, $xr2, 2
	xvmax.w	$xr0, $xr3, $xr0
	xvmax.w	$xr1, $xr4, $xr1
	ld.w	$t6, $t3, -44
	ld.w	$t7, $t3, -32
	ld.w	$t8, $t3, -20
	ld.w	$fp, $t3, -8
	ld.w	$s0, $t3, 4
	ld.w	$s1, $t3, 16
	ld.w	$s2, $t3, 28
	ld.w	$s3, $t3, 40
	vinsgr2vr.w	$vr2, $s0, 0
	vinsgr2vr.w	$vr2, $s1, 1
	vinsgr2vr.w	$vr2, $s2, 2
	vinsgr2vr.w	$vr2, $s3, 3
	vinsgr2vr.w	$vr3, $t6, 0
	vinsgr2vr.w	$vr3, $t7, 1
	vinsgr2vr.w	$vr3, $t8, 2
	vinsgr2vr.w	$vr3, $fp, 3
	xvpermi.q	$xr3, $xr2, 2
	ld.w	$t6, $t3, 52
	ld.w	$t7, $t3, 64
	ld.w	$t8, $t3, 76
	ld.w	$fp, $t3, 88
	ld.w	$s0, $t3, 100
	ld.w	$s1, $t3, 112
	ld.w	$s2, $t3, 124
	ld.w	$s3, $t3, 136
	vinsgr2vr.w	$vr2, $s0, 0
	vinsgr2vr.w	$vr2, $s1, 1
	vinsgr2vr.w	$vr2, $s2, 2
	vinsgr2vr.w	$vr2, $s3, 3
	vinsgr2vr.w	$vr4, $t6, 0
	vinsgr2vr.w	$vr4, $t7, 1
	vinsgr2vr.w	$vr4, $t8, 2
	vinsgr2vr.w	$vr4, $fp, 3
	xvpermi.q	$xr4, $xr2, 2
	xvmax.w	$xr0, $xr3, $xr0
	xvmax.w	$xr1, $xr4, $xr1
	addi.d	$t5, $t5, -16
	addi.d	$t3, $t3, 192
	bnez	$t5, .LBB8_113
# %bb.114:                              # %middle.block405
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 78
	xvshuf4i.w	$xr1, $xr1, 228
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvshuf4i.w	$xr1, $xr1, 14
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvmax.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$t3, $xr0, 0
	beq	$t2, $t4, .LBB8_128
# %bb.115:                              # %vec.epilog.iter.check412
	andi	$t5, $t2, 12
	beqz	$t5, .LBB8_125
.LBB8_116:                              # %vec.epilog.ph411
	bstrpick.d	$t6, $t2, 32, 2
	slli.d	$t5, $t6, 2
	alsl.d	$t6, $t6, $a5, 2
	vreplgr2vr.w	$vr0, $t3
	sub.d	$t3, $t4, $t5
	add.d	$a5, $t4, $a5
	slli.d	$t4, $a5, 3
	alsl.d	$a5, $a5, $t4, 2
	add.d	$a5, $a5, $a0
	addi.d	$a5, $a5, 132
	.p2align	4, , 16
.LBB8_117:                              # %vec.epilog.vector.body419
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t4, $a5, -44
	ld.w	$t7, $a5, -32
	ld.w	$t8, $a5, -20
	ld.w	$fp, $a5, -8
	vinsgr2vr.w	$vr1, $t4, 0
	vinsgr2vr.w	$vr1, $t7, 1
	vinsgr2vr.w	$vr1, $t8, 2
	vinsgr2vr.w	$vr1, $fp, 3
	vmax.w	$vr0, $vr1, $vr0
	ld.w	$t4, $a5, -40
	ld.w	$t7, $a5, -28
	ld.w	$t8, $a5, -16
	ld.w	$fp, $a5, -4
	vinsgr2vr.w	$vr1, $t4, 0
	vinsgr2vr.w	$vr1, $t7, 1
	vinsgr2vr.w	$vr1, $t8, 2
	vinsgr2vr.w	$vr1, $fp, 3
	vmax.w	$vr0, $vr1, $vr0
	ld.w	$t4, $a5, -36
	ld.w	$t7, $a5, -24
	ld.w	$t8, $a5, -12
	ld.w	$fp, $a5, 0
	vinsgr2vr.w	$vr1, $t4, 0
	vinsgr2vr.w	$vr1, $t7, 1
	vinsgr2vr.w	$vr1, $t8, 2
	vinsgr2vr.w	$vr1, $fp, 3
	vmax.w	$vr0, $vr1, $vr0
	addi.d	$t3, $t3, 4
	addi.d	$a5, $a5, 48
	bnez	$t3, .LBB8_117
# %bb.118:                              # %vec.epilog.middle.block424
	vshuf4i.w	$vr1, $vr0, 14
	vmax.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$t3, $vr0, 0
	bne	$t2, $t5, .LBB8_126
	b	.LBB8_128
.LBB8_119:
	add.d	$t5, $t3, $a5
	move	$t4, $t3
.LBB8_120:                              # %for.cond16.preheader.1.preheader
	slli.d	$t2, $t5, 3
	alsl.d	$t2, $t5, $t2, 2
	add.d	$t2, $t2, $a0
	addi.d	$t2, $t2, 96
	sub.d	$t3, $t1, $t4
	.p2align	4, , 16
.LBB8_121:                              # %for.cond16.preheader.1
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t4, $t2, -8
	slt	$t5, $a6, $t4
	ld.w	$t6, $t2, -4
	masknez	$a6, $a6, $t5
	maskeqz	$t4, $t4, $t5
	or	$a6, $t4, $a6
	slt	$t4, $a6, $t6
	ld.w	$t5, $t2, 0
	masknez	$a6, $a6, $t4
	maskeqz	$t4, $t6, $t4
	or	$a6, $t4, $a6
	slt	$t4, $a6, $t5
	masknez	$a6, $a6, $t4
	maskeqz	$t4, $t5, $t4
	or	$a6, $t4, $a6
	addi.w	$t3, $t3, -1
	addi.d	$t2, $t2, 12
	bnez	$t3, .LBB8_121
.LBB8_122:                              # %for.cond13.for.inc42_crit_edge.1
	add.w	$a5, $a5, $t1
	ld.wu	$t1, $t0, 8
	ori	$t2, $zero, 3
	bgeu	$t1, $t2, .LBB8_48
.LBB8_123:
	move	$t1, $zero
	ld.wu	$t3, $t0, 12
	ori	$t0, $zero, 1
	bgeu	$t3, $t2, .LBB8_108
.LBB8_124:
	move	$t3, $zero
	b	.LBB8_128
.LBB8_125:
	add.d	$t6, $t4, $a5
	move	$t5, $t4
.LBB8_126:                              # %for.cond16.preheader.3.preheader
	slli.d	$a5, $t6, 3
	alsl.d	$a5, $t6, $a5, 2
	add.d	$a0, $a5, $a0
	addi.d	$a0, $a0, 96
	sub.d	$a5, $a7, $t5
	.p2align	4, , 16
.LBB8_127:                              # %for.cond16.preheader.3
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a0, -8
	slt	$t2, $t3, $a7
	ld.w	$t4, $a0, -4
	masknez	$t3, $t3, $t2
	maskeqz	$a7, $a7, $t2
	or	$a7, $a7, $t3
	slt	$t2, $a7, $t4
	ld.w	$t3, $a0, 0
	masknez	$a7, $a7, $t2
	maskeqz	$t2, $t4, $t2
	or	$a7, $t2, $a7
	slt	$t2, $a7, $t3
	masknez	$a7, $a7, $t2
	maskeqz	$t2, $t3, $t2
	or	$t3, $t2, $a7
	addi.w	$a5, $a5, -1
	addi.d	$a0, $a0, 12
	bnez	$a5, .LBB8_127
.LBB8_128:                              # %if.end78
	pcalau12i	$a0, %pc_hi20(max_range_sfac_tab)
	addi.d	$a0, $a0, %pc_lo12(max_range_sfac_tab)
	slli.d	$a5, $a3, 4
	ldx.w	$a5, $a0, $a5
	alsl.d	$a0, $a3, $a0, 4
	ld.w	$a7, $a0, 4
	slt	$a5, $a5, $a4
	ld.w	$t2, $a0, 8
	slt	$a7, $a7, $a6
	ld.w	$a0, $a0, 12
	add.d	$a5, $a5, $a7
	slt	$a7, $t2, $t1
	add.d	$a5, $a5, $a7
	slt	$a0, $a0, $t3
	add.d	$a0, $a5, $a0
	bnez	$a0, .LBB8_133
# %bb.129:                              # %if.then96
	slli.d	$a4, $a4, 2
	pcalau12i	$a5, %pc_hi20(scale_bitcount_lsf.log2tab)
	addi.d	$a7, $a5, %pc_lo12(scale_bitcount_lsf.log2tab)
	ldx.w	$a5, $a7, $a4
	st.w	$a5, $a1, 104
	slli.d	$a4, $a6, 2
	ldx.w	$a6, $a7, $a4
	st.w	$a6, $a1, 108
	slli.d	$a4, $t1, 2
	ldx.w	$a4, $a7, $a4
	slli.d	$t1, $a3, 5
	alsl.d	$t1, $a3, $t1, 4
	st.w	$a4, $a1, 112
	slli.d	$a3, $t3, 2
	ldx.w	$a3, $a7, $a3
	pcalau12i	$a7, %pc_hi20(nr_of_sfb_block)
	addi.d	$a7, $a7, %pc_lo12(nr_of_sfb_block)
	add.d	$a7, $a7, $t1
	alsl.d	$a7, $t0, $a7, 4
	st.d	$a7, $a1, 96
	st.w	$a3, $a1, 116
	beqz	$a2, .LBB8_131
# %bb.130:                              # %sw.bb132
	alsl.d	$a2, $a5, $a5, 1
	add.d	$a2, $a2, $a6
	addi.d	$a2, $a2, 500
	b	.LBB8_132
.LBB8_131:                              # %sw.bb
	alsl.d	$a2, $a5, $a5, 2
	add.d	$a2, $a2, $a6
	slli.d	$t0, $a4, 2
	alsl.d	$a2, $a2, $t0, 4
	add.d	$a2, $a2, $a3
.LBB8_132:                              # %if.then139
	st.w	$a2, $a1, 16
	st.w	$zero, $a1, 76
	ld.w	$a2, $a7, 0
	mul.d	$a2, $a2, $a5
	st.w	$a2, $a1, 76
	ld.w	$a5, $a7, 4
	mul.d	$a5, $a5, $a6
	add.d	$a2, $a2, $a5
	st.w	$a2, $a1, 76
	ld.w	$a5, $a7, 8
	mul.d	$a4, $a5, $a4
	add.d	$a2, $a2, $a4
	st.w	$a2, $a1, 76
	ld.w	$a4, $a7, 12
	mul.d	$a3, $a4, $a3
	add.d	$a2, $a2, $a3
	st.w	$a2, $a1, 76
.LBB8_133:                              # %if.end155
	ld.d	$s4, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end8:
	.size	scale_bitcount_lsf, .Lfunc_end8-scale_bitcount_lsf
                                        # -- End function
	.globl	calc_xmin                       # -- Begin function calc_xmin
	.p2align	5
	.type	calc_xmin,@function
calc_xmin:                              # @calc_xmin
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	st.d	$fp, $sp, 56                    # 8-byte Folded Spill
	st.d	$s0, $sp, 48                    # 8-byte Folded Spill
	st.d	$s1, $sp, 40                    # 8-byte Folded Spill
	st.d	$s2, $sp, 32                    # 8-byte Folded Spill
	st.d	$s3, $sp, 24                    # 8-byte Folded Spill
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
	st.d	$s5, $sp, 8                     # 8-byte Folded Spill
	ld.w	$a0, $a0, 144
	ld.w	$a6, $a3, 84
	beqz	$a0, .LBB9_14
# %bb.1:                                # %if.then
	ori	$a0, $zero, 11
	bltu	$a0, $a6, .LBB9_4
# %bb.2:                                # %for.cond1.preheader.lr.ph
	pcalau12i	$a0, %pc_hi20(ATH_s)
	addi.d	$a0, $a0, %pc_lo12(ATH_s)
	alsl.d	$a0, $a6, $a0, 3
	slli.d	$a1, $a6, 4
	alsl.d	$a1, $a6, $a1, 3
	add.d	$a1, $a1, $a4
	addi.d	$a1, $a1, 192
	addi.d	$a2, $a6, 1
	ori	$a5, $zero, 12
	.p2align	4, , 16
.LBB9_3:                                # %for.cond1.preheader
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a0, 0
	fst.d	$fa0, $a1, -16
	fst.d	$fa0, $a1, -8
	fld.d	$fa0, $a0, 0
	fst.d	$fa0, $a1, 0
	bstrpick.d	$a6, $a2, 31, 0
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 24
	addi.d	$a2, $a2, 1
	bne	$a6, $a5, .LBB9_3
.LBB9_4:                                # %for.cond11.preheader
	ld.w	$a3, $a3, 80
	beqz	$a3, .LBB9_12
# %bb.5:                                # %for.body13.preheader
	move	$a1, $zero
	bstrpick.d	$a0, $a3, 31, 0
	pcalau12i	$a2, %pc_hi20(ATH_l)
	ori	$a5, $zero, 8
	addi.d	$a2, $a2, %pc_lo12(ATH_l)
	bltu	$a3, $a5, .LBB9_10
# %bb.6:                                # %for.body13.preheader
	sub.d	$a3, $a4, $a2
	ori	$a5, $zero, 64
	bltu	$a3, $a5, .LBB9_10
# %bb.7:                                # %vector.ph
	bstrpick.d	$a1, $a0, 31, 3
	slli.d	$a1, $a1, 3
	addi.d	$a3, $a2, 32
	addi.d	$a5, $a4, 32
	move	$a6, $a1
	.p2align	4, , 16
.LBB9_8:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a3, -32
	xvld	$xr1, $a3, 0
	xvst	$xr0, $a5, -32
	xvst	$xr1, $a5, 0
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 64
	addi.d	$a3, $a3, 64
	bnez	$a6, .LBB9_8
# %bb.9:                                # %middle.block
	beq	$a1, $a0, .LBB9_12
.LBB9_10:                               # %for.body13.preheader159
	alsl.d	$a2, $a1, $a2, 3
	alsl.d	$a3, $a1, $a4, 3
	sub.d	$a0, $a0, $a1
	.p2align	4, , 16
.LBB9_11:                               # %for.body13
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a2, 0
	fst.d	$fa0, $a3, 0
	addi.d	$a2, $a2, 8
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 8
	bnez	$a0, .LBB9_11
.LBB9_12:
	move	$a0, $zero
.LBB9_13:                               # %if.end150
	ld.d	$s5, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB9_14:                               # %if.else
	ori	$a0, $zero, 11
	pcalau12i	$a7, %pc_hi20(masking_lower)
	pcalau12i	$a5, %pc_hi20(scalefac_band)
	addi.d	$a5, $a5, %pc_lo12(scalefac_band)
	bltu	$a0, $a6, .LBB9_38
# %bb.15:                               # %for.body25.lr.ph
	move	$a0, $zero
	fld.s	$fa0, $a7, %pc_lo12(masking_lower)
	addi.d	$t0, $a2, 664
	addi.d	$t1, $a4, 176
	addi.d	$t2, $a2, 176
	fcvt.d.s	$fa0, $fa0
	alsl.d	$t3, $a6, $a5, 2
	ld.w	$s2, $t3, 92
	addi.d	$t3, $a1, 8
	addi.d	$t4, $a1, 16
	pcalau12i	$t5, %pc_hi20(ATH_s)
	addi.d	$t5, $t5, %pc_lo12(ATH_s)
	movgr2fr.d	$fa1, $zero
	ori	$t6, $zero, 12
	b	.LBB9_18
	.p2align	4, , 16
.LBB9_16:                               # %if.end.2
                                        #   in Loop: Header=BB9_18 Depth=1
	fcmp.clt.d	$fcc0, $fa5, $fa2
	movcf2gr	$s0, $fcc0
	fcmp.clt.d	$fcc0, $fa4, $fa2
	add.d	$a0, $a0, $s0
	movcf2gr	$s0, $fcc0
	add.d	$a0, $a0, $s0
	fcmp.clt.d	$fcc0, $fa3, $fa4
	fsel	$fa3, $fa3, $fa4, $fcc0
.LBB9_17:                               # %for.cond23.loopexit
                                        #   in Loop: Header=BB9_18 Depth=1
	fst.d	$fa3, $fp, 16
	fld.d	$fa3, $t8, 0
	fcmp.clt.d	$fcc0, $fa3, $fa2
	movcf2gr	$t8, $fcc0
	add.w	$a0, $a0, $t8
	move	$s2, $t7
	beq	$a6, $t6, .LBB9_39
.LBB9_18:                               # %for.body25
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_20 Depth 2
                                        #     Child Loop BB9_24 Depth 2
                                        #     Child Loop BB9_28 Depth 2
	move	$t8, $a6
	addi.d	$a6, $a6, 1
	alsl.d	$t7, $a6, $a5, 2
	ld.w	$t7, $t7, 92
	slli.d	$fp, $t8, 4
	alsl.d	$s0, $t8, $fp, 3
	alsl.d	$t8, $t8, $t5, 3
	sub.d	$fp, $t7, $s2
	movgr2fr.w	$fa2, $fp
	ffint.d.w	$fa2, $fa2
	add.d	$s1, $t0, $s0
	add.d	$fp, $t1, $s0
	add.d	$s0, $t2, $s0
	bge	$s2, $t7, .LBB9_32
# %bb.19:                               # %for.cond33.preheader.us.preheader
                                        #   in Loop: Header=BB9_18 Depth=1
	slli.d	$s3, $s2, 4
	alsl.d	$s3, $s2, $s3, 3
	sub.d	$s2, $t7, $s2
	add.d	$s4, $a1, $s3
	move	$s5, $s2
	fmov.d	$fa3, $fa1
	.p2align	4, , 16
.LBB9_20:                               # %for.body35.us
                                        #   Parent Loop BB9_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa4, $s4, 0
	fmul.d	$fa4, $fa4, $fa4
	fadd.d	$fa3, $fa3, $fa4
	addi.d	$s5, $s5, -1
	addi.d	$s4, $s4, 24
	bnez	$s5, .LBB9_20
# %bb.21:                               # %for.cond33.for.end43_crit_edge.us
                                        #   in Loop: Header=BB9_18 Depth=1
	fld.d	$fa5, $s1, 0
	fcmp.clt.d	$fcc0, $fa1, $fa5
	fdiv.d	$fa4, $fa3, $fa2
	bceqz	$fcc0, .LBB9_23
# %bb.22:                               # %if.then51.us
                                        #   in Loop: Header=BB9_18 Depth=1
	fld.d	$fa3, $s0, 0
	fmul.d	$fa3, $fa4, $fa3
	fmul.d	$fa3, $fa3, $fa0
	fdiv.d	$fa5, $fa3, $fa5
.LBB9_23:                               # %if.end.us
                                        #   in Loop: Header=BB9_18 Depth=1
	fld.d	$fa3, $t8, 0
	fcmp.clt.d	$fcc0, $fa5, $fa3
	fsel	$fa3, $fa5, $fa3, $fcc0
	fst.d	$fa3, $fp, 0
	fld.d	$fa5, $t8, 0
	add.d	$s4, $t3, $s3
	move	$s5, $s2
	fmov.d	$fa3, $fa1
	.p2align	4, , 16
.LBB9_24:                               # %for.body35.us.1
                                        #   Parent Loop BB9_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa6, $s4, 0
	fmul.d	$fa6, $fa6, $fa6
	fadd.d	$fa3, $fa3, $fa6
	addi.d	$s5, $s5, -1
	addi.d	$s4, $s4, 24
	bnez	$s5, .LBB9_24
# %bb.25:                               # %for.cond33.for.end43_crit_edge.us.1
                                        #   in Loop: Header=BB9_18 Depth=1
	fld.d	$fa6, $s1, 8
	fcmp.cule.d	$fcc0, $fa6, $fa1
	fdiv.d	$fa3, $fa3, $fa2
	bcnez	$fcc0, .LBB9_27
# %bb.26:                               # %if.then51.us.1
                                        #   in Loop: Header=BB9_18 Depth=1
	fld.d	$fa7, $s0, 8
	fmul.d	$fa7, $fa3, $fa7
	fmul.d	$fa7, $fa7, $fa0
	fdiv.d	$fa6, $fa7, $fa6
.LBB9_27:                               # %if.end.us.1
                                        #   in Loop: Header=BB9_18 Depth=1
	fcmp.clt.d	$fcc0, $fa5, $fa4
	fcmp.clt.d	$fcc1, $fa6, $fa5
	fsel	$fa4, $fa6, $fa5, $fcc1
	fst.d	$fa4, $fp, 8
	fld.d	$fa4, $t8, 0
	movcf2gr	$s4, $fcc0
	add.d	$a0, $a0, $s4
	add.d	$s3, $t4, $s3
	fmov.d	$fa5, $fa1
	.p2align	4, , 16
.LBB9_28:                               # %for.body35.us.2
                                        #   Parent Loop BB9_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa6, $s3, 0
	fmul.d	$fa6, $fa6, $fa6
	fadd.d	$fa5, $fa5, $fa6
	addi.d	$s2, $s2, -1
	addi.d	$s3, $s3, 24
	bnez	$s2, .LBB9_28
# %bb.29:                               # %for.cond33.for.end43_crit_edge.us.2
                                        #   in Loop: Header=BB9_18 Depth=1
	fld.d	$fa6, $s1, 16
	fcmp.cule.d	$fcc0, $fa6, $fa1
	fdiv.d	$fa2, $fa5, $fa2
	bcnez	$fcc0, .LBB9_31
# %bb.30:                               # %if.then51.us.2
                                        #   in Loop: Header=BB9_18 Depth=1
	fld.d	$fa5, $s0, 16
	fmul.d	$fa5, $fa2, $fa5
	fmul.d	$fa5, $fa5, $fa0
	fdiv.d	$fa6, $fa5, $fa6
.LBB9_31:                               # %if.end.us.2
                                        #   in Loop: Header=BB9_18 Depth=1
	fcmp.clt.d	$fcc0, $fa4, $fa3
	movcf2gr	$s0, $fcc0
	add.d	$a0, $a0, $s0
	fcmp.clt.d	$fcc0, $fa6, $fa4
	fsel	$fa3, $fa6, $fa4, $fcc0
	b	.LBB9_17
	.p2align	4, , 16
.LBB9_32:                               # %for.body25.split
                                        #   in Loop: Header=BB9_18 Depth=1
	fld.d	$fa3, $s1, 0
	fcmp.cule.d	$fcc0, $fa3, $fa1
	fdiv.d	$fa2, $fa1, $fa2
	bcnez	$fcc0, .LBB9_34
# %bb.33:                               # %if.then51
                                        #   in Loop: Header=BB9_18 Depth=1
	fld.d	$fa4, $s0, 0
	fmul.d	$fa4, $fa2, $fa4
	fmul.d	$fa4, $fa4, $fa0
	fdiv.d	$fa3, $fa4, $fa3
.LBB9_34:                               # %if.end
                                        #   in Loop: Header=BB9_18 Depth=1
	fld.d	$fa4, $t8, 0
	fcmp.clt.d	$fcc0, $fa3, $fa4
	fsel	$fa3, $fa3, $fa4, $fcc0
	fst.d	$fa3, $fp, 0
	fld.d	$fa3, $s1, 8
	fcmp.cule.d	$fcc0, $fa3, $fa1
	bcnez	$fcc0, .LBB9_36
# %bb.35:                               # %if.then51.1
                                        #   in Loop: Header=BB9_18 Depth=1
	fld.d	$fa4, $s0, 8
	fmul.d	$fa4, $fa2, $fa4
	fmul.d	$fa4, $fa4, $fa0
	fdiv.d	$fa3, $fa4, $fa3
.LBB9_36:                               # %if.end.1
                                        #   in Loop: Header=BB9_18 Depth=1
	fld.d	$fa5, $t8, 0
	fcmp.clt.d	$fcc0, $fa3, $fa5
	fsel	$fa3, $fa3, $fa5, $fcc0
	fst.d	$fa3, $fp, 8
	fld.d	$fa3, $s1, 16
	fld.d	$fa4, $t8, 0
	movgr2fr.d	$fa6, $zero
	fcmp.cule.d	$fcc0, $fa3, $fa6
	bcnez	$fcc0, .LBB9_16
# %bb.37:                               # %if.then51.2
                                        #   in Loop: Header=BB9_18 Depth=1
	fld.d	$fa6, $s0, 16
	fmul.d	$fa6, $fa2, $fa6
	fmul.d	$fa6, $fa6, $fa0
	fdiv.d	$fa3, $fa6, $fa3
	b	.LBB9_16
.LBB9_38:
	move	$a0, $zero
.LBB9_39:                               # %for.cond85.preheader
	ld.wu	$a3, $a3, 80
	beqz	$a3, .LBB9_13
# %bb.40:                               # %for.body89.lr.ph
	fld.s	$fa0, $a7, %pc_lo12(masking_lower)
	move	$t3, $zero
	addi.d	$a6, $a2, 488
	fcvt.d.s	$fa0, $fa0
	ld.w	$t2, $a5, 0
	movgr2fr.d	$fa1, $zero
	pcalau12i	$a7, %pc_hi20(ATH_l)
	addi.d	$a7, $a7, %pc_lo12(ATH_l)
	b	.LBB9_42
	.p2align	4, , 16
.LBB9_41:                               # %if.end126
                                        #   in Loop: Header=BB9_42 Depth=1
	fldx.d	$fa4, $a7, $t3
	fcmp.clt.d	$fcc0, $fa3, $fa4
	fsel	$fa3, $fa3, $fa4, $fcc0
	fstx.d	$fa3, $a4, $t3
	fldx.d	$fa3, $a7, $t3
	fcmp.clt.d	$fcc0, $fa3, $fa2
	movcf2gr	$t2, $fcc0
	add.w	$a0, $a0, $t2
	move	$t2, $t1
	move	$t3, $t0
	beq	$t0, $a3, .LBB9_13
.LBB9_42:                               # %for.body89
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_44 Depth 2
	addi.d	$t0, $t3, 1
	slli.d	$t1, $t0, 2
	ldx.w	$t1, $a5, $t1
	fmov.d	$fa2, $fa1
	bge	$t2, $t1, .LBB9_45
# %bb.43:                               # %for.body99.preheader
                                        #   in Loop: Header=BB9_42 Depth=1
	alsl.d	$t4, $t2, $a1, 3
	sub.d	$t5, $t1, $t2
	fmov.d	$fa2, $fa1
	.p2align	4, , 16
.LBB9_44:                               # %for.body99
                                        #   Parent Loop BB9_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa3, $t4, 0
	fmul.d	$fa3, $fa3, $fa3
	fadd.d	$fa2, $fa2, $fa3
	addi.d	$t5, $t5, -1
	addi.d	$t4, $t4, 8
	bnez	$t5, .LBB9_44
.LBB9_45:                               # %for.end108
                                        #   in Loop: Header=BB9_42 Depth=1
	slli.d	$t3, $t3, 3
	fldx.d	$fa3, $a6, $t3
	sub.w	$t2, $t1, $t2
	movgr2fr.w	$fa4, $t2
	ffint.d.w	$fa4, $fa4
	fcmp.cule.d	$fcc0, $fa3, $fa1
	fdiv.d	$fa2, $fa2, $fa4
	bcnez	$fcc0, .LBB9_41
# %bb.46:                               # %if.then117
                                        #   in Loop: Header=BB9_42 Depth=1
	fldx.d	$fa4, $a2, $t3
	fmul.d	$fa4, $fa2, $fa4
	fmul.d	$fa4, $fa4, $fa0
	fdiv.d	$fa3, $fa4, $fa3
	b	.LBB9_41
.Lfunc_end9:
	.size	calc_xmin, .Lfunc_end9-calc_xmin
                                        # -- End function
	.globl	loop_break                      # -- Begin function loop_break
	.p2align	5
	.type	loop_break,@function
loop_break:                             # @loop_break
# %bb.0:                                # %entry
	ld.wu	$a3, $a1, 80
	move	$a2, $a0
	beqz	$a3, .LBB10_4
# %bb.1:
	move	$a0, $a2
	.p2align	4, , 16
.LBB10_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a0, 0
	beqz	$a4, .LBB10_11
# %bb.3:                                # %for.cond
                                        #   in Loop: Header=BB10_2 Depth=1
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 4
	bnez	$a3, .LBB10_2
.LBB10_4:                               # %for.end
	ld.w	$a3, $a1, 84
	ori	$a1, $zero, 11
	ori	$a0, $zero, 1
	bltu	$a1, $a3, .LBB10_10
# %bb.5:                                # %for.cond5.preheader.lr.ph
	slli.d	$a1, $a3, 3
	alsl.d	$a1, $a3, $a1, 2
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 96
	addi.d	$a2, $a3, 1
	ori	$a3, $zero, 12
	.p2align	4, , 16
.LBB10_6:                               # %for.cond5.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, -8
	beqz	$a4, .LBB10_11
# %bb.7:                                # %for.cond5
                                        #   in Loop: Header=BB10_6 Depth=1
	ld.w	$a4, $a1, -4
	beqz	$a4, .LBB10_11
# %bb.8:                                # %for.cond5.1
                                        #   in Loop: Header=BB10_6 Depth=1
	ld.w	$a4, $a1, 0
	beqz	$a4, .LBB10_11
# %bb.9:                                # %for.cond5.2
                                        #   in Loop: Header=BB10_6 Depth=1
	bstrpick.d	$a4, $a2, 31, 0
	addi.d	$a1, $a1, 12
	addi.d	$a2, $a2, 1
	bne	$a4, $a3, .LBB10_6
.LBB10_10:                              # %cleanup
	ret
.LBB10_11:
	move	$a0, $zero
	ret
.Lfunc_end10:
	.size	loop_break, .Lfunc_end10-loop_break
                                        # -- End function
	.globl	bin_search_StepSize2            # -- Begin function bin_search_StepSize2
	.p2align	5
	.type	bin_search_StepSize2,@function
bin_search_StepSize2:                   # @bin_search_StepSize2
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
	move	$s0, $a5
	move	$s1, $a4
	move	$s2, $a3
	move	$s7, $a2
	move	$s3, $a1
	move	$s4, $a0
	st.w	$a2, $a5, 12
	move	$a1, $a3
	move	$a2, $a4
	move	$a3, $a5
	pcaddu18i	$ra, %call36(count_bits)
	jirl	$ra, $ra, 0
	pcalau12i	$s5, %pc_hi20(bin_search_StepSize2.CurrentStep)
	ld.w	$a1, $s5, %pc_lo12(bin_search_StepSize2.CurrentStep)
	ori	$s6, $zero, 1
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	bne	$a1, $s6, .LBB11_2
.LBB11_1:                               # %do.end
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	sub.w	$a1, $a1, $s7
	srai.d	$a2, $a1, 31
	xor	$a1, $a1, $a2
	sub.w	$a1, $a1, $a2
	sltui	$a1, $a1, 4
	ori	$a2, $zero, 4
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 2
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	st.w	$a1, $s5, %pc_lo12(bin_search_StepSize2.CurrentStep)
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
.LBB11_2:                               # %if.end.preheader
	move	$fp, $zero
	move	$s8, $zero
	b	.LBB11_5
	.p2align	4, , 16
.LBB11_3:                               # %if.end9
                                        #   in Loop: Header=BB11_5 Depth=1
	add.w	$s7, $a1, $s7
	ori	$fp, $zero, 1
	ori	$a1, $zero, 255
	blt	$a1, $s7, .LBB11_1
.LBB11_4:                               # %do.cond
                                        #   in Loop: Header=BB11_5 Depth=1
	st.w	$s7, $s0, 12
	move	$a0, $s4
	move	$a1, $s2
	move	$a2, $s1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(count_bits)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, %pc_lo12(bin_search_StepSize2.CurrentStep)
	beq	$a1, $s6, .LBB11_1
.LBB11_5:                               # %if.end
                                        # =>This Inner Loop Header: Depth=1
	beqz	$s8, .LBB11_7
# %bb.6:                                # %if.then1
                                        #   in Loop: Header=BB11_5 Depth=1
	bstrpick.d	$a1, $a1, 31, 1
	st.w	$a1, $s5, %pc_lo12(bin_search_StepSize2.CurrentStep)
.LBB11_7:                               # %if.end2
                                        #   in Loop: Header=BB11_5 Depth=1
	bge	$s3, $a0, .LBB11_11
# %bb.8:                                # %if.then4
                                        #   in Loop: Header=BB11_5 Depth=1
	bnez	$s8, .LBB11_3
# %bb.9:                                # %if.then4
                                        #   in Loop: Header=BB11_5 Depth=1
	ori	$a2, $zero, 2
	bne	$fp, $a2, .LBB11_3
# %bb.10:                               # %if.then7
                                        #   in Loop: Header=BB11_5 Depth=1
	bstrpick.d	$a1, $a1, 31, 1
	st.w	$a1, $s5, %pc_lo12(bin_search_StepSize2.CurrentStep)
	ori	$s8, $zero, 1
	b	.LBB11_3
	.p2align	4, , 16
.LBB11_11:                              # %if.else
                                        #   in Loop: Header=BB11_5 Depth=1
	bge	$a0, $s3, .LBB11_1
# %bb.12:                               # %if.then14
                                        #   in Loop: Header=BB11_5 Depth=1
	bnez	$s8, .LBB11_15
# %bb.13:                               # %if.then14
                                        #   in Loop: Header=BB11_5 Depth=1
	bne	$fp, $s6, .LBB11_15
# %bb.14:                               # %if.then18
                                        #   in Loop: Header=BB11_5 Depth=1
	bstrpick.d	$a1, $a1, 31, 1
	st.w	$a1, $s5, %pc_lo12(bin_search_StepSize2.CurrentStep)
	ori	$s8, $zero, 1
.LBB11_15:                              # %if.end20
                                        #   in Loop: Header=BB11_5 Depth=1
	sub.w	$s7, $s7, $a1
	ori	$fp, $zero, 2
	bgez	$s7, .LBB11_4
	b	.LBB11_1
.Lfunc_end11:
	.size	bin_search_StepSize2, .Lfunc_end11-bin_search_StepSize2
                                        # -- End function
	.globl	quantize_xrpow                  # -- Begin function quantize_xrpow
	.p2align	5
	.type	quantize_xrpow,@function
quantize_xrpow:                         # @quantize_xrpow
# %bb.0:                                # %entry
	ld.wu	$a2, $a2, 12
	pcalau12i	$a3, %pc_hi20(ipow20)
	addi.d	$a3, $a3, %pc_lo12(ipow20)
	alsl.d	$a2, $a2, $a3, 3
	xvldrepl.d	$xr0, $a2, 0
	ori	$a2, $zero, 73
	pcalau12i	$a3, %pc_hi20(adj43)
	addi.d	$a3, $a3, %pc_lo12(adj43)
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB12_1:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a0, 32
	xvld	$xr2, $a0, 0
	addi.d	$a0, $a0, 64
	addi.d	$a5, $a1, 32
	xvfmul.d	$xr1, $xr0, $xr1
	xvfmul.d	$xr2, $xr0, $xr2
	xvpickve.d	$xr3, $xr2, 0
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a6, $fa3
	xvpickve.d	$xr3, $xr2, 1
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a7, $fa3
	xvpickve.d	$xr3, $xr2, 2
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$t0, $fa3
	xvpickve.d	$xr3, $xr2, 3
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$t1, $fa3
	xvpickve.d	$xr3, $xr1, 0
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$t2, $fa3
	xvpickve.d	$xr3, $xr1, 1
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$t3, $fa3
	xvpickve.d	$xr3, $xr1, 2
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$t4, $fa3
	slli.d	$a6, $a6, 3
	fldx.d	$fa3, $a3, $a6
	xvpickve.d	$xr4, $xr1, 3
	ftintrz.w.d	$fa4, $fa4
	movfr2gr.s	$a6, $fa4
	slli.d	$a7, $a7, 3
	fldx.d	$fa4, $a3, $a7
	slli.d	$a7, $t0, 3
	fldx.d	$fa5, $a3, $a7
	slli.d	$a7, $t2, 3
	fldx.d	$fa6, $a3, $a7
	slli.d	$a7, $t3, 3
	slli.d	$t0, $t4, 3
	fldx.d	$fa7, $a3, $t0
	slli.d	$a6, $a6, 3
	fldx.d	$ft0, $a3, $a6
	fldx.d	$ft1, $a3, $a7
	slli.d	$a6, $t1, 3
	fldx.d	$ft2, $a3, $a6
	vextrins.d	$vr7, $vr8, 16
	vextrins.d	$vr6, $vr9, 16
	xvpermi.q	$xr6, $xr7, 2
	vextrins.d	$vr5, $vr10, 16
	vextrins.d	$vr3, $vr4, 16
	xvpermi.q	$xr3, $xr5, 2
	xvfadd.d	$xr2, $xr2, $xr3
	xvfadd.d	$xr1, $xr1, $xr6
	xvftintrz.l.d	$xr1, $xr1
	xvpermi.d	$xr3, $xr1, 238
	xvpickev.w	$xr1, $xr3, $xr1
	xvftintrz.l.d	$xr2, $xr2
	xvpermi.d	$xr3, $xr2, 238
	xvpickev.w	$xr2, $xr3, $xr2
	xvpermi.q	$xr2, $xr1, 2
	addi.w	$a2, $a2, -1
	xvst	$xr2, $a1, 0
	move	$a1, $a5
	bltu	$a4, $a2, .LBB12_1
# %bb.2:                                # %for.end
	ret
.Lfunc_end12:
	.size	quantize_xrpow, .Lfunc_end12-quantize_xrpow
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function quantize_xrpow_ISO
.LCPI13_0:
	.dword	0x3fe306f694467382              # double 0.59460000000000002
	.text
	.globl	quantize_xrpow_ISO
	.p2align	5
	.type	quantize_xrpow_ISO,@function
quantize_xrpow_ISO:                     # @quantize_xrpow_ISO
# %bb.0:                                # %entry
	ld.wu	$a2, $a2, 12
	slli.d	$a2, $a2, 3
	pcalau12i	$a3, %pc_hi20(ipow20)
	addi.d	$a3, $a3, %pc_lo12(ipow20)
	fldx.d	$fa0, $a3, $a2
	pcalau12i	$a2, %pc_hi20(.LCPI13_0)
	fld.d	$fa1, $a2, %pc_lo12(.LCPI13_0)
	fdiv.d	$fa1, $fa1, $fa0
	xvreplve0.d	$xr0, $xr0
	xvreplve0.d	$xr1, $xr1
	addi.d	$a0, $a0, 32
	lu12i.w	$a2, -1
	ori	$a2, $a2, 1792
	lu12i.w	$a3, -166095
	ori	$a3, $a3, 2300
	lu32i.d	$a3, -396782
	lu52i.d	$a3, $a3, 1021
	xvreplgr2vr.d	$xr2, $a3
	vrepli.b	$vr3, 0
	ori	$a3, $zero, 2304
	ori	$a4, $zero, 2320
	.p2align	4, , 16
.LBB13_1:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr4, $a0, -32
	add.d	$a5, $a1, $a2
	xvld	$xr5, $a0, 0
	xvfcmp.clt.d	$xr6, $xr4, $xr1
	xvpickve2gr.d	$a6, $xr6, 0
	vinsgr2vr.w	$vr7, $a6, 0
	xvpickve2gr.d	$a6, $xr6, 1
	vinsgr2vr.w	$vr7, $a6, 1
	xvpickve2gr.d	$a6, $xr6, 2
	vinsgr2vr.w	$vr7, $a6, 2
	xvpickve2gr.d	$a6, $xr6, 3
	vinsgr2vr.w	$vr7, $a6, 3
	xvfcmp.clt.d	$xr6, $xr5, $xr1
	xvpickve2gr.d	$a6, $xr6, 0
	vinsgr2vr.w	$vr8, $a6, 0
	xvpickve2gr.d	$a6, $xr6, 1
	vinsgr2vr.w	$vr8, $a6, 1
	xvpickve2gr.d	$a6, $xr6, 2
	vinsgr2vr.w	$vr8, $a6, 2
	xvpickve2gr.d	$a6, $xr6, 3
	vinsgr2vr.w	$vr8, $a6, 3
	xvfmadd.d	$xr4, $xr0, $xr4, $xr2
	xvfmadd.d	$xr5, $xr0, $xr5, $xr2
	xvftintrz.l.d	$xr4, $xr4
	xvpermi.d	$xr6, $xr4, 238
	xvpickev.w	$xr4, $xr6, $xr4
	xvftintrz.l.d	$xr5, $xr5
	xvpermi.d	$xr6, $xr5, 238
	xvpickev.w	$xr5, $xr6, $xr5
	vbitsel.v	$vr4, $vr4, $vr3, $vr7
	vbitsel.v	$vr5, $vr5, $vr3, $vr8
	vstx	$vr4, $a5, $a3
	vstx	$vr5, $a5, $a4
	addi.d	$a2, $a2, 32
	addi.d	$a0, $a0, 64
	bnez	$a2, .LBB13_1
# %bb.2:                                # %for.end
	ret
.Lfunc_end13:
	.size	quantize_xrpow_ISO, .Lfunc_end13-quantize_xrpow_ISO
                                        # -- End function
	.type	masking_lower,@object           # @masking_lower
	.data
	.globl	masking_lower
	.p2align	2, 0x0
masking_lower:
	.word	0x3f800000                      # float 1
	.size	masking_lower, 4

	.type	nr_of_sfb_block,@object         # @nr_of_sfb_block
	.globl	nr_of_sfb_block
	.p2align	2, 0x0
nr_of_sfb_block:
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	6                               # 0x6
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	7                               # 0x7
	.word	3                               # 0x3
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	12                              # 0xc
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	9                               # 0x9
	.word	12                              # 0xc
	.word	6                               # 0x6
	.word	11                              # 0xb
	.word	10                              # 0xa
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	18                              # 0x12
	.word	18                              # 0x12
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	15                              # 0xf
	.word	18                              # 0x12
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	0                               # 0x0
	.word	12                              # 0xc
	.word	12                              # 0xc
	.word	12                              # 0xc
	.word	0                               # 0x0
	.word	6                               # 0x6
	.word	15                              # 0xf
	.word	12                              # 0xc
	.word	0                               # 0x0
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	3                               # 0x3
	.word	12                              # 0xc
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	12                              # 0xc
	.word	9                               # 0x9
	.word	6                               # 0x6
	.word	8                               # 0x8
	.word	8                               # 0x8
	.word	5                               # 0x5
	.word	0                               # 0x0
	.word	15                              # 0xf
	.word	12                              # 0xc
	.word	9                               # 0x9
	.word	0                               # 0x0
	.word	6                               # 0x6
	.word	18                              # 0x12
	.word	9                               # 0x9
	.word	0                               # 0x0
	.size	nr_of_sfb_block, 288

	.type	pretab,@object                  # @pretab
	.globl	pretab
	.p2align	2, 0x0
pretab:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	2                               # 0x2
	.size	pretab, 84

	.type	sfBandIndex,@object             # @sfBandIndex
	.globl	sfBandIndex
	.p2align	2, 0x0
sfBandIndex:
	.word	0                               # 0x0
	.word	6                               # 0x6
	.word	12                              # 0xc
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	30                              # 0x1e
	.word	36                              # 0x24
	.word	44                              # 0x2c
	.word	54                              # 0x36
	.word	66                              # 0x42
	.word	80                              # 0x50
	.word	96                              # 0x60
	.word	116                             # 0x74
	.word	140                             # 0x8c
	.word	168                             # 0xa8
	.word	200                             # 0xc8
	.word	238                             # 0xee
	.word	284                             # 0x11c
	.word	336                             # 0x150
	.word	396                             # 0x18c
	.word	464                             # 0x1d0
	.word	522                             # 0x20a
	.word	576                             # 0x240
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	8                               # 0x8
	.word	12                              # 0xc
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	32                              # 0x20
	.word	42                              # 0x2a
	.word	56                              # 0x38
	.word	74                              # 0x4a
	.word	100                             # 0x64
	.word	132                             # 0x84
	.word	174                             # 0xae
	.word	192                             # 0xc0
	.word	0                               # 0x0
	.word	6                               # 0x6
	.word	12                              # 0xc
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	30                              # 0x1e
	.word	36                              # 0x24
	.word	44                              # 0x2c
	.word	54                              # 0x36
	.word	66                              # 0x42
	.word	80                              # 0x50
	.word	96                              # 0x60
	.word	114                             # 0x72
	.word	136                             # 0x88
	.word	162                             # 0xa2
	.word	194                             # 0xc2
	.word	232                             # 0xe8
	.word	278                             # 0x116
	.word	332                             # 0x14c
	.word	394                             # 0x18a
	.word	464                             # 0x1d0
	.word	540                             # 0x21c
	.word	576                             # 0x240
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	8                               # 0x8
	.word	12                              # 0xc
	.word	18                              # 0x12
	.word	26                              # 0x1a
	.word	36                              # 0x24
	.word	48                              # 0x30
	.word	62                              # 0x3e
	.word	80                              # 0x50
	.word	104                             # 0x68
	.word	136                             # 0x88
	.word	180                             # 0xb4
	.word	192                             # 0xc0
	.word	0                               # 0x0
	.word	6                               # 0x6
	.word	12                              # 0xc
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	30                              # 0x1e
	.word	36                              # 0x24
	.word	44                              # 0x2c
	.word	54                              # 0x36
	.word	66                              # 0x42
	.word	80                              # 0x50
	.word	96                              # 0x60
	.word	116                             # 0x74
	.word	140                             # 0x8c
	.word	168                             # 0xa8
	.word	200                             # 0xc8
	.word	238                             # 0xee
	.word	284                             # 0x11c
	.word	336                             # 0x150
	.word	396                             # 0x18c
	.word	464                             # 0x1d0
	.word	522                             # 0x20a
	.word	576                             # 0x240
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	8                               # 0x8
	.word	12                              # 0xc
	.word	18                              # 0x12
	.word	26                              # 0x1a
	.word	36                              # 0x24
	.word	48                              # 0x30
	.word	62                              # 0x3e
	.word	80                              # 0x50
	.word	104                             # 0x68
	.word	134                             # 0x86
	.word	174                             # 0xae
	.word	192                             # 0xc0
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	8                               # 0x8
	.word	12                              # 0xc
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	24                              # 0x18
	.word	30                              # 0x1e
	.word	36                              # 0x24
	.word	44                              # 0x2c
	.word	52                              # 0x34
	.word	62                              # 0x3e
	.word	74                              # 0x4a
	.word	90                              # 0x5a
	.word	110                             # 0x6e
	.word	134                             # 0x86
	.word	162                             # 0xa2
	.word	196                             # 0xc4
	.word	238                             # 0xee
	.word	288                             # 0x120
	.word	342                             # 0x156
	.word	418                             # 0x1a2
	.word	576                             # 0x240
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	8                               # 0x8
	.word	12                              # 0xc
	.word	16                              # 0x10
	.word	22                              # 0x16
	.word	30                              # 0x1e
	.word	40                              # 0x28
	.word	52                              # 0x34
	.word	66                              # 0x42
	.word	84                              # 0x54
	.word	106                             # 0x6a
	.word	136                             # 0x88
	.word	192                             # 0xc0
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	8                               # 0x8
	.word	12                              # 0xc
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	24                              # 0x18
	.word	30                              # 0x1e
	.word	36                              # 0x24
	.word	42                              # 0x2a
	.word	50                              # 0x32
	.word	60                              # 0x3c
	.word	72                              # 0x48
	.word	88                              # 0x58
	.word	106                             # 0x6a
	.word	128                             # 0x80
	.word	156                             # 0x9c
	.word	190                             # 0xbe
	.word	230                             # 0xe6
	.word	276                             # 0x114
	.word	330                             # 0x14a
	.word	384                             # 0x180
	.word	576                             # 0x240
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	8                               # 0x8
	.word	12                              # 0xc
	.word	16                              # 0x10
	.word	22                              # 0x16
	.word	28                              # 0x1c
	.word	38                              # 0x26
	.word	50                              # 0x32
	.word	64                              # 0x40
	.word	80                              # 0x50
	.word	100                             # 0x64
	.word	126                             # 0x7e
	.word	192                             # 0xc0
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	8                               # 0x8
	.word	12                              # 0xc
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	24                              # 0x18
	.word	30                              # 0x1e
	.word	36                              # 0x24
	.word	44                              # 0x2c
	.word	54                              # 0x36
	.word	66                              # 0x42
	.word	82                              # 0x52
	.word	102                             # 0x66
	.word	126                             # 0x7e
	.word	156                             # 0x9c
	.word	194                             # 0xc2
	.word	240                             # 0xf0
	.word	296                             # 0x128
	.word	364                             # 0x16c
	.word	448                             # 0x1c0
	.word	550                             # 0x226
	.word	576                             # 0x240
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	8                               # 0x8
	.word	12                              # 0xc
	.word	16                              # 0x10
	.word	22                              # 0x16
	.word	30                              # 0x1e
	.word	42                              # 0x2a
	.word	58                              # 0x3a
	.word	78                              # 0x4e
	.word	104                             # 0x68
	.word	138                             # 0x8a
	.word	180                             # 0xb4
	.word	192                             # 0xc0
	.size	sfBandIndex, 888

	.type	scalefac_band,@object           # @scalefac_band
	.bss
	.globl	scalefac_band
	.p2align	5, 0x0
scalefac_band:
	.space	148
	.size	scalefac_band, 148

	.type	ATH_l,@object                   # @ATH_l
	.local	ATH_l
	.comm	ATH_l,168,8
	.type	ATH_s,@object                   # @ATH_s
	.local	ATH_s
	.comm	ATH_s,168,8
	.type	pow43,@object                   # @pow43
	.globl	pow43
	.p2align	3, 0x0
pow43:
	.space	65664
	.size	pow43, 65664

	.type	adj43,@object                   # @adj43
	.local	adj43
	.comm	adj43,65664,8
	.type	ipow20,@object                  # @ipow20
	.globl	ipow20
	.p2align	3, 0x0
ipow20:
	.space	2048
	.size	ipow20, 2048

	.type	pow20,@object                   # @pow20
	.globl	pow20
	.p2align	3, 0x0
pow20:
	.space	2048
	.size	pow20, 2048

	.type	convert_mdct,@object            # @convert_mdct
	.globl	convert_mdct
	.p2align	2, 0x0
convert_mdct:
	.word	0                               # 0x0
	.size	convert_mdct, 4

	.type	reduce_sidechannel,@object      # @reduce_sidechannel
	.globl	reduce_sidechannel
	.p2align	2, 0x0
reduce_sidechannel:
	.word	0                               # 0x0
	.size	reduce_sidechannel, 4

	.type	scale_bitcount.slen1_tab,@object # @scale_bitcount.slen1_tab
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
scale_bitcount.slen1_tab:
	.word	0                               # 0x0
	.word	18                              # 0x12
	.word	36                              # 0x24
	.word	54                              # 0x36
	.word	54                              # 0x36
	.word	36                              # 0x24
	.word	54                              # 0x36
	.word	72                              # 0x48
	.word	54                              # 0x36
	.word	72                              # 0x48
	.word	90                              # 0x5a
	.word	72                              # 0x48
	.word	90                              # 0x5a
	.word	108                             # 0x6c
	.word	108                             # 0x6c
	.word	126                             # 0x7e
	.size	scale_bitcount.slen1_tab, 64

	.type	scale_bitcount.slen2_tab,@object # @scale_bitcount.slen2_tab
	.p2align	2, 0x0
scale_bitcount.slen2_tab:
	.word	0                               # 0x0
	.word	10                              # 0xa
	.word	20                              # 0x14
	.word	30                              # 0x1e
	.word	33                              # 0x21
	.word	21                              # 0x15
	.word	31                              # 0x1f
	.word	41                              # 0x29
	.word	32                              # 0x20
	.word	42                              # 0x2a
	.word	52                              # 0x34
	.word	43                              # 0x2b
	.word	53                              # 0x35
	.word	63                              # 0x3f
	.word	64                              # 0x40
	.word	74                              # 0x4a
	.size	scale_bitcount.slen2_tab, 64

	.type	max_range_sfac_tab,@object      # @max_range_sfac_tab
	.p2align	2, 0x0
max_range_sfac_tab:
	.word	15                              # 0xf
	.word	15                              # 0xf
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	15                              # 0xf
	.word	15                              # 0xf
	.word	7                               # 0x7
	.word	0                               # 0x0
	.word	7                               # 0x7
	.word	3                               # 0x3
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	15                              # 0xf
	.word	31                              # 0x1f
	.word	31                              # 0x1f
	.word	0                               # 0x0
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	0                               # 0x0
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	0                               # 0x0
	.word	0                               # 0x0
	.size	max_range_sfac_tab, 96

	.type	scale_bitcount_lsf.log2tab,@object # @scale_bitcount_lsf.log2tab
	.p2align	2, 0x0
scale_bitcount_lsf.log2tab:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.size	scale_bitcount_lsf.log2tab, 64

	.type	bin_search_StepSize2.CurrentStep,@object # @bin_search_StepSize2.CurrentStep
	.data
	.p2align	2, 0x0
bin_search_StepSize2.CurrentStep:
	.word	4                               # 0x4
	.size	bin_search_StepSize2.CurrentStep, 4

	.type	ATH_mdct_long,@object           # @ATH_mdct_long
	.bss
	.globl	ATH_mdct_long
	.p2align	3, 0x0
ATH_mdct_long:
	.space	4608
	.size	ATH_mdct_long, 4608

	.type	ATH_mdct_short,@object          # @ATH_mdct_short
	.globl	ATH_mdct_short
	.p2align	3, 0x0
ATH_mdct_short:
	.space	1536
	.size	ATH_mdct_short, 1536

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym nr_of_sfb_block
	.addrsig_sym ATH_l
	.addrsig_sym ATH_s
