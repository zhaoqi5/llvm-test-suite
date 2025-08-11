	.file	"ReedSolomon.c"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function rsdec_204
.LCPI0_0:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	4                               # 0x4
	.word	8                               # 0x8
	.word	16                              # 0x10
	.word	32                              # 0x20
	.word	64                              # 0x40
	.word	128                             # 0x80
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_1:
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	8                               # 0x8
	.byte	12                              # 0xc
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.text
	.globl	rsdec_204
	.p2align	5
	.type	rsdec_204,@function
rsdec_204:                              # @rsdec_204
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -1744
	st.d	$ra, $sp, 1736                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1728                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1720                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1712                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1704                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1696                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1688                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1680                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1672                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1664                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1656                  # 8-byte Folded Spill
	move	$s0, $a1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(inited)
	ld.bu	$a0, $fp, %pc_lo12(inited)
	pcalau12i	$a1, %pc_hi20(index_of)
	addi.d	$s3, $a1, %pc_lo12(index_of)
	pcalau12i	$a1, %pc_hi20(alpha_to)
	addi.d	$s2, $a1, %pc_lo12(alpha_to)
	bnez	$a0, .LBB0_6
# %bb.1:                                # %if.then
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	st.d	$a0, $s3, 4
	ori	$a0, $zero, 2
	st.w	$a0, $s3, 16
	ori	$a0, $zero, 3
	st.w	$a0, $s3, 32
	ori	$a0, $zero, 4
	st.w	$a0, $s3, 64
	ori	$a4, $zero, 29
	st.w	$a4, $s2, 32
	ori	$a0, $zero, 5
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	xvld	$xr0, $a1, %pc_lo12(.LCPI0_0)
	st.w	$a0, $s3, 128
	ori	$a0, $zero, 6
	st.w	$a0, $s3, 256
	xvst	$xr0, $s2, 0
	ori	$a0, $zero, 7
	st.w	$a0, $s3, 512
	ori	$a0, $zero, 8
	st.w	$a0, $s3, 116
	ori	$a0, $zero, 36
	ori	$a1, $zero, 9
	ori	$a2, $zero, 128
	ori	$a3, $zero, 1020
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                # %if.end31.i
                                        #   in Loop: Header=BB0_3 Depth=1
	stx.w	$a5, $s2, $a0
	slli.d	$a4, $a5, 2
	stx.w	$a1, $s3, $a4
	addi.d	$a0, $a0, 4
	addi.d	$a1, $a1, 1
	move	$a4, $a5
	beq	$a0, $a3, .LBB0_5
.LBB0_3:                                # %for.body12.i
                                        # =>This Inner Loop Header: Depth=1
	slli.w	$a5, $a4, 1
	blt	$a4, $a2, .LBB0_2
# %bb.4:                                # %if.then16.i
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.w	$a4, $s2, 32
	xor	$a4, $a5, $a4
	xori	$a5, $a4, 256
	b	.LBB0_2
.LBB0_5:                                # %generate_gf.exit
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.w	$a0, $s3, 0
	pcaddu18i	$ra, %call36(gen_poly)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.b	$a0, $fp, %pc_lo12(inited)
.LBB0_6:                                # %if.end
	ld.d	$a0, $s0, 188
	vinsgr2vr.d	$vr0, $a0, 0
	xvrepli.b	$xr3, 0
	vpickve2gr.b	$a0, $vr0, 0
	vori.b	$vr1, $vr3, 0
	vinsgr2vr.b	$vr1, $a0, 0
	vpickve2gr.b	$a0, $vr0, 1
	vinsgr2vr.b	$vr1, $a0, 4
	vpickve2gr.b	$a0, $vr0, 2
	vinsgr2vr.b	$vr1, $a0, 8
	vpickve2gr.b	$a0, $vr0, 3
	vinsgr2vr.b	$vr1, $a0, 12
	vpickve2gr.b	$a0, $vr0, 4
	xvpermi.d	$xr2, $xr1, 14
	vinsgr2vr.b	$vr2, $a0, 0
	xvpermi.q	$xr1, $xr2, 2
	vpickve2gr.b	$a0, $vr0, 5
	xvpermi.d	$xr2, $xr1, 14
	vinsgr2vr.b	$vr2, $a0, 4
	xvpermi.q	$xr1, $xr2, 2
	vpickve2gr.b	$a0, $vr0, 6
	xvpermi.d	$xr2, $xr1, 14
	vinsgr2vr.b	$vr2, $a0, 8
	xvpermi.q	$xr1, $xr2, 2
	vpickve2gr.b	$a0, $vr0, 7
	xvpermi.d	$xr0, $xr1, 14
	vinsgr2vr.b	$vr0, $a0, 12
	xvpermi.q	$xr1, $xr0, 2
	ld.d	$a0, $s0, 196
	pcalau12i	$a1, %pc_hi20(recd)
	addi.d	$s1, $a1, %pc_lo12(recd)
	xvst	$xr1, $s1, 0
	vinsgr2vr.d	$vr0, $a0, 0
	vpickve2gr.b	$a0, $vr0, 0
	xvst	$xr3, $sp, 16                   # 32-byte Folded Spill
	vori.b	$vr1, $vr3, 0
	vinsgr2vr.b	$vr1, $a0, 0
	vpickve2gr.b	$a0, $vr0, 1
	vinsgr2vr.b	$vr1, $a0, 4
	vpickve2gr.b	$a0, $vr0, 2
	vinsgr2vr.b	$vr1, $a0, 8
	vpickve2gr.b	$a0, $vr0, 3
	vinsgr2vr.b	$vr1, $a0, 12
	vpickve2gr.b	$a0, $vr0, 4
	xvpermi.d	$xr2, $xr1, 14
	vinsgr2vr.b	$vr2, $a0, 0
	xvpermi.q	$xr1, $xr2, 2
	vpickve2gr.b	$a0, $vr0, 5
	xvpermi.d	$xr2, $xr1, 14
	vinsgr2vr.b	$vr2, $a0, 4
	xvpermi.q	$xr1, $xr2, 2
	vpickve2gr.b	$a0, $vr0, 6
	xvpermi.d	$xr2, $xr1, 14
	vinsgr2vr.b	$vr2, $a0, 8
	xvpermi.q	$xr1, $xr2, 2
	vpickve2gr.b	$a0, $vr0, 7
	xvpermi.d	$xr0, $xr1, 14
	vinsgr2vr.b	$vr0, $a0, 12
	xvpermi.q	$xr1, $xr0, 2
	xvst	$xr1, $s1, 32
	addi.d	$a0, $s1, 64
	ori	$a2, $zero, 204
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 0
	ld.w	$a1, $s0, 4
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vrepli.b	$vr0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 268
	vst	$vr2, $s1, 284
	ld.w	$a0, $s0, 8
	ld.w	$a1, $s0, 12
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 300
	vst	$vr2, $s1, 316
	ld.w	$a0, $s0, 16
	ld.w	$a1, $s0, 20
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 332
	vst	$vr2, $s1, 348
	ld.w	$a0, $s0, 24
	ld.w	$a1, $s0, 28
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 364
	vst	$vr2, $s1, 380
	ld.w	$a0, $s0, 32
	ld.w	$a1, $s0, 36
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 396
	vst	$vr2, $s1, 412
	ld.w	$a0, $s0, 40
	ld.w	$a1, $s0, 44
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 428
	vst	$vr2, $s1, 444
	ld.w	$a0, $s0, 48
	ld.w	$a1, $s0, 52
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 460
	vst	$vr2, $s1, 476
	ld.w	$a0, $s0, 56
	ld.w	$a1, $s0, 60
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 492
	vst	$vr2, $s1, 508
	ld.w	$a0, $s0, 64
	ld.w	$a1, $s0, 68
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 524
	vst	$vr2, $s1, 540
	ld.w	$a0, $s0, 72
	ld.w	$a1, $s0, 76
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 556
	vst	$vr2, $s1, 572
	ld.w	$a0, $s0, 80
	ld.w	$a1, $s0, 84
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 588
	vst	$vr2, $s1, 604
	ld.w	$a0, $s0, 88
	ld.w	$a1, $s0, 92
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 620
	vst	$vr2, $s1, 636
	ld.w	$a0, $s0, 96
	ld.w	$a1, $s0, 100
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 652
	vst	$vr2, $s1, 668
	ld.w	$a0, $s0, 104
	ld.w	$a1, $s0, 108
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 684
	vst	$vr2, $s1, 700
	ld.w	$a0, $s0, 112
	ld.w	$a1, $s0, 116
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 716
	vst	$vr2, $s1, 732
	ld.w	$a0, $s0, 120
	ld.w	$a1, $s0, 124
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 748
	vst	$vr2, $s1, 764
	ld.w	$a0, $s0, 128
	ld.w	$a1, $s0, 132
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 780
	vst	$vr2, $s1, 796
	ld.w	$a0, $s0, 136
	ld.w	$a1, $s0, 140
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 812
	vst	$vr2, $s1, 828
	ld.w	$a0, $s0, 144
	ld.w	$a1, $s0, 148
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 844
	vst	$vr2, $s1, 860
	ld.w	$a0, $s0, 152
	ld.w	$a1, $s0, 156
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 876
	vst	$vr2, $s1, 892
	ld.w	$a0, $s0, 160
	ld.w	$a1, $s0, 164
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 908
	vst	$vr2, $s1, 924
	ld.w	$a0, $s0, 168
	ld.w	$a1, $s0, 172
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 940
	vst	$vr2, $s1, 956
	ld.w	$a0, $s0, 176
	ld.w	$a1, $s0, 180
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 972
	vst	$vr2, $s1, 988
	ld.bu	$a0, $s0, 184
	st.w	$a0, $s1, 1004
	ld.bu	$a0, $s0, 185
	st.w	$a0, $s1, 1008
	ld.bu	$a0, $s0, 186
	st.w	$a0, $s1, 1012
	ld.bu	$a1, $s0, 187
	move	$a0, $zero
	st.w	$a1, $s1, 1016
	ori	$a1, $zero, 992
	.p2align	4, , 16
.LBB0_7:                                # %vector.body95
                                        # =>This Inner Loop Header: Depth=1
	xvldx	$xr1, $s1, $a0
	xvpermi.q	$xr2, $xr1, 1
	vpickve2gr.w	$a2, $vr2, 3
	vpickve2gr.w	$a3, $vr2, 2
	vpickve2gr.w	$a4, $vr2, 1
	vpickve2gr.w	$a5, $vr2, 0
	vpickve2gr.w	$a6, $vr1, 3
	vpickve2gr.w	$a7, $vr1, 2
	vpickve2gr.w	$t0, $vr1, 1
	vpickve2gr.w	$t1, $vr1, 0
	slli.d	$t1, $t1, 2
	slli.d	$t0, $t0, 2
	slli.d	$a7, $a7, 2
	slli.d	$a6, $a6, 2
	slli.d	$a5, $a5, 2
	slli.d	$a4, $a4, 2
	slli.d	$a3, $a3, 2
	slli.d	$a2, $a2, 2
	ldx.w	$t1, $s3, $t1
	ldx.w	$t0, $s3, $t0
	ldx.w	$a7, $s3, $a7
	ldx.w	$a6, $s3, $a6
	ldx.w	$a5, $s3, $a5
	ldx.w	$a4, $s3, $a4
	ldx.w	$a3, $s3, $a3
	ldx.w	$a2, $s3, $a2
	xvinsgr2vr.w	$xr1, $t1, 0
	xvinsgr2vr.w	$xr1, $t0, 1
	xvinsgr2vr.w	$xr1, $a7, 2
	xvinsgr2vr.w	$xr1, $a6, 3
	xvinsgr2vr.w	$xr1, $a5, 4
	xvinsgr2vr.w	$xr1, $a4, 5
	xvinsgr2vr.w	$xr1, $a3, 6
	xvinsgr2vr.w	$xr1, $a2, 7
	xvstx	$xr1, $s1, $a0
	addi.d	$a0, $a0, 32
	bne	$a0, $a1, .LBB0_7
# %bb.8:                                # %for.body29
	ld.w	$a0, $s1, 992
	move	$a1, $zero
	ld.w	$a2, $s1, 996
	slli.d	$a0, $a0, 2
	ld.w	$a3, $s1, 1000
	ldx.w	$a0, $s3, $a0
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $s3, $a2
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $s3, $a3
	st.w	$a0, $s1, 992
	ld.w	$a0, $s1, 1004
	st.w	$a2, $s1, 996
	st.w	$a3, $s1, 1000
	ld.w	$a2, $s1, 1008
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s3, $a0
	ld.w	$a3, $s1, 1012
	slli.d	$a2, $a2, 2
	ld.w	$a4, $s1, 1016
	ldx.w	$a2, $s3, $a2
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $s3, $a3
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s3, $a4
	st.w	$a0, $s1, 1004
	st.w	$a2, $s1, 1008
	st.w	$a3, $s1, 1012
	st.w	$a4, $s1, 1016
	ori	$a2, $zero, 1
	addi.d	$a3, $sp, 220
	addi.w	$a0, $zero, -1
	ori	$a4, $zero, 1020
	ori	$a5, $zero, 17
	lu12i.w	$a6, -522232
	ori	$s4, $a6, 129
	ori	$a6, $zero, 1
	ori	$a7, $zero, 1
	xvld	$xr2, $sp, 16                   # 32-byte Folded Reload
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_9:                                # %for.end.i
                                        #   in Loop: Header=BB0_10 Depth=1
	sltui	$t2, $t1, 1
	slli.d	$t1, $t1, 2
	ldx.w	$t1, $s3, $t1
	masknez	$t3, $a2, $t2
	maskeqz	$a1, $a1, $t2
	or	$a1, $a1, $t3
	st.w	$t1, $t0, 0
	addi.d	$a7, $a7, 1
	addi.d	$a6, $a6, 1
	beq	$a7, $a5, .LBB0_14
.LBB0_10:                               # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
	move	$t2, $zero
	move	$t3, $zero
	move	$t1, $zero
	alsl.d	$t0, $a7, $a3, 2
	b	.LBB0_12
	.p2align	4, , 16
.LBB0_11:                               # %for.inc.i
                                        #   in Loop: Header=BB0_12 Depth=2
	addi.d	$t3, $t3, 4
	add.d	$t2, $t2, $a6
	beq	$t3, $a4, .LBB0_9
.LBB0_12:                               # %for.body3.i
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$t4, $s1, $t3
	beq	$t4, $a0, .LBB0_11
# %bb.13:                               # %if.then.i
                                        #   in Loop: Header=BB0_12 Depth=2
	add.w	$t4, $t2, $t4
	mul.d	$t5, $t4, $s4
	srli.d	$t5, $t5, 32
	add.w	$t5, $t5, $t4
	bstrpick.d	$t6, $t5, 31, 31
	srai.d	$t5, $t5, 7
	add.d	$t5, $t5, $t6
	slli.d	$t6, $t5, 8
	sub.d	$t5, $t5, $t6
	add.w	$t4, $t4, $t5
	slli.d	$t4, $t4, 2
	ldx.w	$t4, $s2, $t4
	xor	$t1, $t4, $t1
	st.w	$t1, $t0, 0
	b	.LBB0_11
.LBB0_14:                               # %for.end26.i
	beqz	$a1, .LBB0_57
# %bb.15:                               # %if.then27.i
	ld.w	$s8, $sp, 224
	move	$s6, $zero
	st.w	$zero, $sp, 432
	addi.d	$a1, $sp, 224
	st.w	$s8, $sp, 436
	st.w	$zero, $sp, 504
	addi.d	$a2, $sp, 568
	st.d	$a0, $sp, 508
	st.d	$a0, $sp, 516
	st.d	$a0, $sp, 524
	st.d	$a0, $sp, 532
	st.d	$a0, $sp, 540
	st.d	$a0, $sp, 548
	st.d	$a0, $sp, 556
	move	$a3, $a0
	lu32i.d	$a3, 1
	st.d	$a3, $sp, 564
	st.d	$zero, $sp, 572
	vst	$vr0, $sp, 580
	xvst	$xr2, $sp, 596
	st.w	$zero, $sp, 628
	st.d	$zero, $sp, 360
	move	$a3, $a0
	lu32i.d	$a3, 0
	st.d	$a3, $sp, 288
	addi.d	$a3, $sp, 632
	addi.d	$a4, $sp, 636
	ori	$a5, $zero, 1
	addi.d	$a6, $sp, 432
	addi.d	$t2, $sp, 288
	move	$t6, $a0
	addi.d	$t7, $sp, 432
	ori	$t8, $zero, 1
	b	.LBB0_17
	.p2align	4, , 16
.LBB0_16:                               # %land.rhs286.i
                                        #   in Loop: Header=BB0_17 Depth=1
	slli.d	$a7, $fp, 2
	ldx.w	$s8, $s3, $a7
	st.w	$s8, $s6, 0
	addi.d	$t8, $t8, 1
	addi.d	$t7, $t7, 4
	addi.w	$t6, $t6, 1
	addi.d	$a3, $a3, 64
	addi.d	$a2, $a2, 64
	addi.d	$a4, $a4, 64
	addi.d	$a1, $a1, 4
	move	$s6, $t4
	ori	$a7, $zero, 9
	bge	$s5, $a7, .LBB0_89
.LBB0_17:                               # %do.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_19 Depth 2
                                        #     Child Loop BB0_24 Depth 2
                                        #     Child Loop BB0_29 Depth 2
                                        #     Child Loop BB0_38 Depth 2
                                        #     Child Loop BB0_42 Depth 2
                                        #     Child Loop BB0_44 Depth 2
                                        #     Child Loop BB0_47 Depth 2
                                        #     Child Loop BB0_54 Depth 2
	addi.d	$s7, $s6, 1
	slli.d	$s5, $s7, 2
	beq	$s8, $a0, .LBB0_34
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=1
	slli.d	$a7, $s6, 6
	addi.d	$t0, $sp, 504
	add.d	$a7, $t0, $a7
	addi.d	$fp, $a7, 128
	addi.d	$a7, $s6, 2
	st.d	$a7, $sp, 72                    # 8-byte Folded Spill
	move	$t5, $t6
	move	$t4, $t7
	move	$ra, $t8
	move	$t3, $s6
	.p2align	4, , 16
.LBB0_19:                               # %while.cond.i
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a7, $t3
	move	$t1, $t5
	addi.w	$ra, $ra, -1
	blt	$t3, $a5, .LBB0_21
# %bb.20:                               # %while.cond.i
                                        #   in Loop: Header=BB0_19 Depth=2
	ld.w	$t0, $t4, 0
	addi.d	$t3, $a7, -1
	addi.d	$t4, $t4, -4
	addi.w	$s0, $zero, -1
	addi.w	$t5, $t1, -1
	beq	$t0, $s0, .LBB0_19
.LBB0_21:                               # %while.end.i
                                        #   in Loop: Header=BB0_17 Depth=1
	blt	$a7, $a5, .LBB0_26
# %bb.22:                               # %do.body94.preheader.i
                                        #   in Loop: Header=BB0_17 Depth=1
	bstrpick.d	$a7, $a7, 31, 0
	addi.d	$t3, $a7, 1
	b	.LBB0_24
	.p2align	4, , 16
.LBB0_23:                               # %do.cond.i
                                        #   in Loop: Header=BB0_24 Depth=2
	addi.d	$t3, $t3, -1
	addi.w	$t1, $t1, -1
	bgeu	$a5, $t3, .LBB0_26
.LBB0_24:                               # %do.body94.i
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a7, $t1, 2
	ldx.w	$t0, $a7, $a6
	addi.w	$t4, $zero, -1
	beq	$t0, $t4, .LBB0_23
# %bb.25:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB0_24 Depth=2
	slli.d	$t0, $ra, 2
	ldx.w	$t0, $t0, $t2
	ldx.w	$a7, $a7, $t2
	slt	$a7, $t0, $a7
	masknez	$t0, $ra, $a7
	maskeqz	$a7, $t1, $a7
	or	$ra, $a7, $t0
	b	.LBB0_23
	.p2align	4, , 16
.LBB0_26:                               # %if.end107.i
                                        #   in Loop: Header=BB0_17 Depth=1
	slli.d	$a7, $ra, 2
	addi.d	$t5, $sp, 360
	ldx.w	$t0, $a7, $t5
	ldx.w	$t1, $s5, $t5
	sub.d	$t3, $s7, $ra
	add.w	$t0, $t0, $t3
	ld.d	$t3, $sp, 72                    # 8-byte Folded Reload
	slli.d	$t3, $t3, 2
	slt	$t4, $t0, $t1
	masknez	$t0, $t0, $t4
	maskeqz	$t4, $t1, $t4
	or	$s5, $t4, $t0
	stx.w	$s5, $t3, $t5
	ldx.w	$t3, $a7, $t5
	xvst	$xr2, $fp, 0
	xvst	$xr2, $fp, 32
	bltz	$t3, .LBB0_31
# %bb.27:                               # %for.body145.lr.ph.i
                                        #   in Loop: Header=BB0_17 Depth=1
	slli.d	$a7, $ra, 6
	addi.d	$t0, $sp, 504
	add.d	$fp, $t0, $a7
	addi.d	$s8, $s8, 255
	alsl.d	$t4, $ra, $a6, 2
	ld.d	$a7, $sp, 72                    # 8-byte Folded Reload
	slli.d	$a7, $a7, 6
	add.d	$t5, $t0, $a7
	addi.d	$a7, $t3, 1
	bstrpick.d	$t3, $a7, 31, 0
	sub.w	$ra, $t8, $ra
	b	.LBB0_29
	.p2align	4, , 16
.LBB0_28:                               # %for.inc174.i
                                        #   in Loop: Header=BB0_29 Depth=2
	addi.d	$t3, $t3, -1
	addi.w	$ra, $ra, 1
	addi.d	$fp, $fp, 4
	beqz	$t3, .LBB0_31
.LBB0_29:                               # %for.body145.i
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a7, $fp, 0
	addi.w	$t0, $zero, -1
	beq	$a7, $t0, .LBB0_28
# %bb.30:                               # %if.then151.i
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.w	$t0, $t4, 0
	add.d	$a7, $s8, $a7
	sub.w	$a7, $a7, $t0
	mul.d	$t0, $a7, $s4
	srli.d	$t0, $t0, 32
	add.w	$t0, $t0, $a7
	bstrpick.d	$s0, $t0, 31, 31
	srai.d	$t0, $t0, 7
	add.d	$t0, $t0, $s0
	slli.d	$s0, $t0, 8
	sub.d	$t0, $t0, $s0
	add.w	$a7, $a7, $t0
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $s2, $a7
	slli.d	$t0, $ra, 2
	stx.w	$a7, $t5, $t0
	b	.LBB0_28
	.p2align	4, , 16
.LBB0_31:                               # %for.cond177.preheader.i
                                        #   in Loop: Header=BB0_17 Depth=1
	bltz	$t1, .LBB0_40
# %bb.32:                               # %for.body181.lr.ph.i
                                        #   in Loop: Header=BB0_17 Depth=1
	addi.d	$a7, $t1, 1
	bstrpick.d	$t0, $a7, 31, 0
	ori	$a7, $zero, 7
	bgeu	$t1, $a7, .LBB0_37
# %bb.33:                               #   in Loop: Header=BB0_17 Depth=1
	move	$t1, $zero
	b	.LBB0_41
	.p2align	4, , 16
.LBB0_34:                               # %if.then55.i
                                        #   in Loop: Header=BB0_17 Depth=1
	addi.d	$t0, $sp, 360
	ldx.w	$s5, $s5, $t0
	addi.d	$t5, $s6, 2
	slli.d	$a7, $t5, 2
	stx.w	$s5, $a7, $t0
	bltz	$s5, .LBB0_48
# %bb.35:                               # %for.body65.lr.ph.i
                                        #   in Loop: Header=BB0_17 Depth=1
	addi.d	$a7, $s5, 1
	bstrpick.d	$t0, $a7, 31, 0
	ori	$a7, $zero, 7
	bgeu	$s5, $a7, .LBB0_43
# %bb.36:                               #   in Loop: Header=BB0_17 Depth=1
	move	$a7, $zero
	b	.LBB0_46
.LBB0_37:                               # %vector.ph111
                                        #   in Loop: Header=BB0_17 Depth=1
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$t0, $sp, 56                    # 8-byte Folded Spill
	bstrpick.d	$a7, $t0, 31, 3
	slli.d	$t1, $a7, 3
	move	$s8, $a3
	move	$ra, $t1
	.p2align	4, , 16
.LBB0_38:                               # %vector.body114
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $s8, -64
	xvld	$xr1, $s8, 0
	xvxor.v	$xr1, $xr1, $xr0
	xvst	$xr1, $s8, 0
	xvpermi.q	$xr1, $xr0, 1
	vpickve2gr.w	$a7, $vr1, 3
	vpickve2gr.w	$t0, $vr1, 2
	vpickve2gr.w	$t3, $vr1, 1
	vpickve2gr.w	$t4, $vr1, 0
	vpickve2gr.w	$t5, $vr0, 3
	vpickve2gr.w	$s0, $vr0, 2
	vpickve2gr.w	$s7, $vr0, 1
	vpickve2gr.w	$fp, $vr0, 0
	slli.d	$fp, $fp, 2
	slli.d	$s7, $s7, 2
	slli.d	$s0, $s0, 2
	slli.d	$t5, $t5, 2
	slli.d	$t4, $t4, 2
	slli.d	$t3, $t3, 2
	slli.d	$t0, $t0, 2
	slli.d	$a7, $a7, 2
	ldx.w	$fp, $s3, $fp
	ldx.w	$s7, $s3, $s7
	ldx.w	$s0, $s3, $s0
	ldx.w	$t5, $s3, $t5
	ldx.w	$t4, $s3, $t4
	ldx.w	$t3, $s3, $t3
	ldx.w	$t0, $s3, $t0
	ldx.w	$a7, $s3, $a7
	xvinsgr2vr.w	$xr0, $fp, 0
	xvinsgr2vr.w	$xr0, $s7, 1
	xvinsgr2vr.w	$xr0, $s0, 2
	xvinsgr2vr.w	$xr0, $t5, 3
	xvinsgr2vr.w	$xr0, $t4, 4
	xvinsgr2vr.w	$xr0, $t3, 5
	xvinsgr2vr.w	$xr0, $t0, 6
	xvinsgr2vr.w	$xr0, $a7, 7
	xvst	$xr0, $s8, -64
	addi.d	$ra, $ra, -8
	addi.d	$s8, $s8, 32
	bnez	$ra, .LBB0_38
# %bb.39:                               # %middle.block119
                                        #   in Loop: Header=BB0_17 Depth=1
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 56                    # 8-byte Folded Reload
	bne	$t1, $t0, .LBB0_41
.LBB0_40:                               #   in Loop: Header=BB0_17 Depth=1
	ld.d	$t5, $sp, 72                    # 8-byte Folded Reload
	b	.LBB0_48
	.p2align	4, , 16
.LBB0_41:                               # %for.body181.i.preheader
                                        #   in Loop: Header=BB0_17 Depth=1
	sub.d	$t3, $t0, $t1
	slli.d	$t1, $t1, 2
	ld.d	$t5, $sp, 72                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_42:                               # %for.body181.i
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a7, $a2, $t1
	ldx.w	$t0, $a3, $t1
	slli.d	$t4, $a7, 2
	ldx.w	$t4, $s3, $t4
	xor	$a7, $t0, $a7
	stx.w	$a7, $a3, $t1
	stx.w	$t4, $a2, $t1
	addi.d	$t3, $t3, -1
	addi.d	$t1, $t1, 4
	bnez	$t3, .LBB0_42
	b	.LBB0_48
.LBB0_43:                               # %vector.ph102
                                        #   in Loop: Header=BB0_17 Depth=1
	st.d	$t5, $sp, 72                    # 8-byte Folded Spill
	move	$s8, $zero
	bstrpick.d	$a7, $t0, 31, 3
	slli.d	$a7, $a7, 3
	st.d	$a7, $sp, 56                    # 8-byte Folded Spill
	st.d	$t0, $sp, 64                    # 8-byte Folded Spill
	slli.d	$ra, $t0, 2
	bstrins.d	$ra, $zero, 4, 0
	.p2align	4, , 16
.LBB0_44:                               # %vector.body103
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvldx	$xr0, $a2, $s8
	xvstx	$xr0, $a3, $s8
	xvpermi.q	$xr1, $xr0, 1
	vpickve2gr.w	$a7, $vr1, 3
	vpickve2gr.w	$t3, $vr1, 2
	vpickve2gr.w	$t4, $vr1, 1
	vpickve2gr.w	$t5, $vr1, 0
	vpickve2gr.w	$t0, $vr0, 3
	vpickve2gr.w	$fp, $vr0, 2
	vpickve2gr.w	$t1, $vr0, 1
	vpickve2gr.w	$s0, $vr0, 0
	slli.d	$s0, $s0, 2
	slli.d	$t1, $t1, 2
	slli.d	$fp, $fp, 2
	slli.d	$t0, $t0, 2
	slli.d	$t5, $t5, 2
	slli.d	$t4, $t4, 2
	slli.d	$t3, $t3, 2
	slli.d	$a7, $a7, 2
	ldx.w	$s0, $s3, $s0
	ldx.w	$t1, $s3, $t1
	ldx.w	$fp, $s3, $fp
	ldx.w	$t0, $s3, $t0
	ldx.w	$t5, $s3, $t5
	ldx.w	$t4, $s3, $t4
	ldx.w	$t3, $s3, $t3
	ldx.w	$a7, $s3, $a7
	xvinsgr2vr.w	$xr0, $s0, 0
	xvinsgr2vr.w	$xr0, $t1, 1
	xvinsgr2vr.w	$xr0, $fp, 2
	xvinsgr2vr.w	$xr0, $t0, 3
	xvinsgr2vr.w	$xr0, $t5, 4
	xvinsgr2vr.w	$xr0, $t4, 5
	xvinsgr2vr.w	$xr0, $t3, 6
	xvinsgr2vr.w	$xr0, $a7, 7
	xvstx	$xr0, $a2, $s8
	addi.d	$s8, $s8, 32
	bne	$ra, $s8, .LBB0_44
# %bb.45:                               # %middle.block107
                                        #   in Loop: Header=BB0_17 Depth=1
	ld.d	$t5, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 56                    # 8-byte Folded Reload
	beq	$a7, $t0, .LBB0_48
.LBB0_46:                               # %for.body65.i.preheader
                                        #   in Loop: Header=BB0_17 Depth=1
	sub.d	$t3, $t0, $a7
	slli.d	$t1, $a7, 2
	.p2align	4, , 16
.LBB0_47:                               # %for.body65.i
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a7, $a2, $t1
	slli.d	$t0, $a7, 2
	ldx.w	$t0, $s3, $t0
	stx.w	$a7, $a3, $t1
	stx.w	$t0, $a2, $t1
	addi.d	$t3, $t3, -1
	addi.d	$t1, $t1, 4
	bnez	$t3, .LBB0_47
	.p2align	4, , 16
.LBB0_48:                               # %if.end205.i
                                        #   in Loop: Header=BB0_17 Depth=1
	sub.d	$t0, $s7, $s5
	slli.d	$a7, $t5, 2
	stx.w	$t0, $a7, $t2
	ori	$t0, $zero, 15
	beq	$s6, $t0, .LBB0_61
# %bb.49:                               # %if.then214.i
                                        #   in Loop: Header=BB0_17 Depth=1
	addi.d	$t0, $sp, 220
	ldx.w	$a7, $a7, $t0
	addi.w	$t1, $zero, -1
	beq	$a7, $t1, .LBB0_51
# %bb.50:                               # %if.then219.i
                                        #   in Loop: Header=BB0_17 Depth=1
	slli.d	$a7, $a7, 2
	ldx.w	$fp, $s2, $a7
	move	$t4, $s7
	alsl.d	$s6, $t5, $a6, 2
	bge	$s5, $a5, .LBB0_52
	b	.LBB0_16
	.p2align	4, , 16
.LBB0_51:                               #   in Loop: Header=BB0_17 Depth=1
	move	$fp, $zero
	move	$t4, $s7
	alsl.d	$s6, $t5, $a6, 2
	blt	$s5, $a5, .LBB0_16
.LBB0_52:                               # %for.body238.lr.ph.i
                                        #   in Loop: Header=BB0_17 Depth=1
	addi.d	$a7, $s5, 1
	bstrpick.d	$a7, $a7, 31, 0
	addi.d	$s7, $a7, -1
	move	$s8, $a1
	move	$ra, $a4
	b	.LBB0_54
	.p2align	4, , 16
.LBB0_53:                               # %for.inc272.i
                                        #   in Loop: Header=BB0_54 Depth=2
	addi.d	$s7, $s7, -1
	addi.d	$ra, $ra, 4
	addi.d	$s8, $s8, -4
	beqz	$s7, .LBB0_16
.LBB0_54:                               # %for.body238.i
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a7, $s8, 0
	beq	$a7, $t1, .LBB0_53
# %bb.55:                               # %land.lhs.true244.i
                                        #   in Loop: Header=BB0_54 Depth=2
	ld.w	$t3, $ra, 0
	beqz	$t3, .LBB0_53
# %bb.56:                               # %if.then251.i
                                        #   in Loop: Header=BB0_54 Depth=2
	slli.d	$t0, $t3, 2
	ldx.w	$t0, $s3, $t0
	add.w	$a7, $t0, $a7
	mul.d	$t0, $a7, $s4
	srli.d	$t0, $t0, 32
	add.w	$t0, $t0, $a7
	bstrpick.d	$t3, $t0, 31, 31
	srai.d	$t0, $t0, 7
	add.d	$t0, $t0, $t3
	slli.d	$t3, $t0, 8
	sub.d	$t0, $t0, $t3
	add.w	$a7, $a7, $t0
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $s2, $a7
	xor	$fp, $a7, $fp
	st.w	$fp, $s6, 0
	b	.LBB0_53
.LBB0_57:                               # %for.body655.i.preheader
	move	$a0, $zero
	addi.w	$a1, $zero, -1
	ori	$a2, $zero, 1020
	b	.LBB0_59
	.p2align	4, , 16
.LBB0_58:                               # %if.then659.i
                                        #   in Loop: Header=BB0_59 Depth=1
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $s2, $a3
	stx.w	$a3, $s1, $a0
	addi.d	$a0, $a0, 4
	beq	$a0, $a2, .LBB0_93
.LBB0_59:                               # %for.body655.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a3, $s1, $a0
	bne	$a3, $a1, .LBB0_58
# %bb.60:                               #   in Loop: Header=BB0_59 Depth=1
	move	$a3, $zero
	stx.w	$a3, $s1, $a0
	addi.d	$a0, $a0, 4
	bne	$a0, $a2, .LBB0_59
	b	.LBB0_93
.LBB0_61:                               # %do.end292.i
	ori	$a0, $zero, 9
	bge	$s5, $a0, .LBB0_89
# %bb.62:                               # %for.cond298.preheader.i
	addi.w	$s6, $zero, -1
	bge	$s6, $s5, .LBB0_94
# %bb.63:                               # %for.body302.lr.ph.i
	addi.w	$s7, $s5, 1
	addi.d	$a0, $sp, 1592
	move	$a1, $s7
	.p2align	4, , 16
.LBB0_64:                               # %for.body302.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a0, 0
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $s3, $a2
	st.w	$a2, $a0, 0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB0_64
# %bb.65:                               # %for.cond316.preheader.i
	beqz	$s5, .LBB0_99
# %bb.66:                               # %for.cond333.preheader.i.preheader
	addi.d	$s0, $sp, 88
	addi.d	$a1, $sp, 1596
	slli.d	$a2, $s5, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	addi.d	$a1, $s7, -1
	ori	$a2, $zero, 1
	addi.d	$a3, $sp, 188
	ori	$a4, $zero, 255
	addi.d	$a5, $sp, 156
	ori	$a6, $zero, 256
	b	.LBB0_69
	.p2align	4, , 16
.LBB0_67:                               # %for.end356.i
                                        #   in Loop: Header=BB0_69 Depth=1
	beqz	$t1, .LBB0_73
# %bb.68:                               # %for.inc366.i
                                        #   in Loop: Header=BB0_69 Depth=1
	addi.w	$a2, $a2, 1
	beq	$a2, $a6, .LBB0_74
.LBB0_69:                               # %for.cond333.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_71 Depth 2
	move	$a7, $s0
	ori	$t0, $zero, 1
	move	$t2, $a1
	ori	$t1, $zero, 1
	b	.LBB0_71
	.p2align	4, , 16
.LBB0_70:                               # %for.inc354.i
                                        #   in Loop: Header=BB0_71 Depth=2
	addi.d	$t2, $t2, -1
	addi.d	$t0, $t0, 1
	addi.d	$a7, $a7, 4
	beqz	$t2, .LBB0_67
.LBB0_71:                               # %for.body337.i
                                        #   Parent Loop BB0_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t3, $a7, 0
	beq	$t3, $s6, .LBB0_70
# %bb.72:                               # %if.then341.i
                                        #   in Loop: Header=BB0_71 Depth=2
	add.w	$t3, $t0, $t3
	mul.d	$t4, $t3, $s4
	srli.d	$t4, $t4, 32
	add.w	$t4, $t4, $t3
	bstrpick.d	$t5, $t4, 31, 31
	srai.d	$t4, $t4, 7
	add.d	$t4, $t4, $t5
	slli.d	$t5, $t4, 8
	sub.d	$t4, $t4, $t5
	add.w	$t3, $t3, $t4
	slli.d	$t4, $t3, 2
	ldx.w	$t4, $s2, $t4
	st.w	$t3, $a7, 0
	xor	$t1, $t4, $t1
	b	.LBB0_70
	.p2align	4, , 16
.LBB0_73:                               # %if.then358.i
                                        #   in Loop: Header=BB0_69 Depth=1
	slli.d	$a7, $a0, 2
	stx.w	$a2, $a7, $a3
	sub.d	$t0, $a4, $a2
	stx.w	$t0, $a7, $a5
	addi.w	$a0, $a0, 1
	addi.w	$a2, $a2, 1
	bne	$a2, $a6, .LBB0_69
.LBB0_74:                               # %for.end368.i.thread
	bne	$a0, $s5, .LBB0_95
# %bb.75:                               # %for.body377.lr.ph.i
	move	$a0, $zero
	addi.d	$a1, $sp, 1592
	ori	$a2, $zero, 1
	addi.d	$a3, $sp, 224
	addi.d	$a4, $sp, 220
	ori	$a5, $zero, 2
	addi.d	$a6, $sp, 120
	b	.LBB0_77
	.p2align	4, , 16
.LBB0_76:                               # %for.end474.i
                                        #   in Loop: Header=BB0_77 Depth=1
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $s3, $t0
	stx.w	$t0, $a7, $a6
	addi.d	$a2, $a2, 1
	addi.d	$a0, $a0, 4
	beq	$a2, $s7, .LBB0_100
.LBB0_77:                               # %for.body377.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_85 Depth 2
	slli.d	$a7, $a2, 2
	ldx.w	$t0, $a7, $a4
	ldx.w	$t1, $a1, $a7
	beq	$t0, $s6, .LBB0_80
# %bb.78:                               # %land.lhs.true381.i
                                        #   in Loop: Header=BB0_77 Depth=1
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $s2, $t0
	beq	$t1, $s6, .LBB0_82
# %bb.79:                               # %if.then387.i
                                        #   in Loop: Header=BB0_77 Depth=1
	slli.d	$t1, $t1, 2
	ldx.w	$t1, $s2, $t1
	xor	$t0, $t1, $t0
	bltu	$a2, $a5, .LBB0_76
	b	.LBB0_83
	.p2align	4, , 16
.LBB0_80:                               # %land.lhs.true422.i
                                        #   in Loop: Header=BB0_77 Depth=1
	beq	$t1, $s6, .LBB0_88
# %bb.81:                               # %if.then428.i
                                        #   in Loop: Header=BB0_77 Depth=1
	slli.d	$t0, $t1, 2
	ldx.w	$t0, $s2, $t0
.LBB0_82:                               # %if.end442.i
                                        #   in Loop: Header=BB0_77 Depth=1
	bltu	$a2, $a5, .LBB0_76
.LBB0_83:                               # %for.body445.lr.ph.i
                                        #   in Loop: Header=BB0_77 Depth=1
	alsl.d	$t1, $a2, $a6, 2
	move	$t2, $a3
	move	$t3, $a0
	b	.LBB0_85
	.p2align	4, , 16
.LBB0_84:                               # %for.inc472.i
                                        #   in Loop: Header=BB0_85 Depth=2
	addi.d	$t3, $t3, -4
	addi.d	$t2, $t2, 4
	beqz	$t3, .LBB0_76
.LBB0_85:                               # %for.body445.i
                                        #   Parent Loop BB0_77 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t4, $t2, 0
	beq	$t4, $s6, .LBB0_84
# %bb.86:                               # %land.lhs.true449.i
                                        #   in Loop: Header=BB0_85 Depth=2
	ldx.w	$t5, $a1, $t3
	beq	$t5, $s6, .LBB0_84
# %bb.87:                               # %if.then456.i
                                        #   in Loop: Header=BB0_85 Depth=2
	add.w	$t4, $t5, $t4
	mul.d	$t5, $t4, $s4
	srli.d	$t5, $t5, 32
	add.w	$t5, $t5, $t4
	bstrpick.d	$t6, $t5, 31, 31
	srai.d	$t5, $t5, 7
	add.d	$t5, $t5, $t6
	slli.d	$t6, $t5, 8
	sub.d	$t5, $t5, $t6
	add.w	$t4, $t4, $t5
	slli.d	$t4, $t4, 2
	ldx.w	$t4, $s2, $t4
	xor	$t0, $t4, $t0
	st.w	$t0, $t1, 0
	b	.LBB0_84
.LBB0_88:                               #   in Loop: Header=BB0_77 Depth=1
	move	$t0, $zero
	bltu	$a2, $a5, .LBB0_76
	b	.LBB0_83
.LBB0_89:                               # %for.body633.i.preheader
	move	$a0, $zero
	addi.w	$a1, $zero, -1
	ori	$a2, $zero, 1020
	b	.LBB0_91
	.p2align	4, , 16
.LBB0_90:                               # %if.then637.i
                                        #   in Loop: Header=BB0_91 Depth=1
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $s2, $a3
	stx.w	$a3, $s1, $a0
	addi.d	$a0, $a0, 4
	beq	$a0, $a2, .LBB0_93
.LBB0_91:                               # %for.body633.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a3, $s1, $a0
	bne	$a3, $a1, .LBB0_90
# %bb.92:                               #   in Loop: Header=BB0_91 Depth=1
	move	$a3, $zero
	stx.w	$a3, $s1, $a0
	addi.d	$a0, $a0, 4
	bne	$a0, $a2, .LBB0_91
.LBB0_93:                               # %iter.check
	xvld	$xr0, $s1, 268
	xvld	$xr1, $s1, 300
	xvpickve2gr.w	$a0, $xr0, 0
	vinsgr2vr.b	$vr2, $a0, 0
	xvpickve2gr.w	$a0, $xr0, 1
	vinsgr2vr.b	$vr2, $a0, 1
	xvpickve2gr.w	$a0, $xr0, 2
	vinsgr2vr.b	$vr2, $a0, 2
	xvpickve2gr.w	$a0, $xr0, 3
	vinsgr2vr.b	$vr2, $a0, 3
	xvpickve2gr.w	$a0, $xr0, 4
	vinsgr2vr.b	$vr2, $a0, 4
	xvpickve2gr.w	$a0, $xr0, 5
	vinsgr2vr.b	$vr2, $a0, 5
	xvpickve2gr.w	$a0, $xr0, 6
	vinsgr2vr.b	$vr2, $a0, 6
	xvpickve2gr.w	$a0, $xr0, 7
	vinsgr2vr.b	$vr2, $a0, 7
	xvpickve2gr.w	$a0, $xr1, 0
	vinsgr2vr.b	$vr0, $a0, 0
	xvpickve2gr.w	$a0, $xr1, 1
	vinsgr2vr.b	$vr0, $a0, 1
	xvpickve2gr.w	$a0, $xr1, 2
	vinsgr2vr.b	$vr0, $a0, 2
	xvpickve2gr.w	$a0, $xr1, 3
	vinsgr2vr.b	$vr0, $a0, 3
	xvpickve2gr.w	$a0, $xr1, 4
	vinsgr2vr.b	$vr0, $a0, 4
	xvpickve2gr.w	$a0, $xr1, 5
	vinsgr2vr.b	$vr0, $a0, 5
	xvpickve2gr.w	$a0, $xr1, 6
	vinsgr2vr.b	$vr0, $a0, 6
	xvpickve2gr.w	$a0, $xr1, 7
	vinsgr2vr.b	$vr0, $a0, 7
	vpackev.d	$vr0, $vr0, $vr2
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	vst	$vr0, $a1, 0
	xvld	$xr0, $s1, 332
	xvld	$xr1, $s1, 364
	xvpickve2gr.w	$a0, $xr0, 0
	vinsgr2vr.b	$vr2, $a0, 0
	xvpickve2gr.w	$a0, $xr0, 1
	vinsgr2vr.b	$vr2, $a0, 1
	xvpickve2gr.w	$a0, $xr0, 2
	vinsgr2vr.b	$vr2, $a0, 2
	xvpickve2gr.w	$a0, $xr0, 3
	vinsgr2vr.b	$vr2, $a0, 3
	xvpickve2gr.w	$a0, $xr0, 4
	vinsgr2vr.b	$vr2, $a0, 4
	xvpickve2gr.w	$a0, $xr0, 5
	vinsgr2vr.b	$vr2, $a0, 5
	xvpickve2gr.w	$a0, $xr0, 6
	vinsgr2vr.b	$vr2, $a0, 6
	xvpickve2gr.w	$a0, $xr0, 7
	vinsgr2vr.b	$vr2, $a0, 7
	xvpickve2gr.w	$a0, $xr1, 0
	vinsgr2vr.b	$vr0, $a0, 0
	xvpickve2gr.w	$a0, $xr1, 1
	vinsgr2vr.b	$vr0, $a0, 1
	xvpickve2gr.w	$a0, $xr1, 2
	vinsgr2vr.b	$vr0, $a0, 2
	xvpickve2gr.w	$a0, $xr1, 3
	vinsgr2vr.b	$vr0, $a0, 3
	xvpickve2gr.w	$a0, $xr1, 4
	vinsgr2vr.b	$vr0, $a0, 4
	xvpickve2gr.w	$a0, $xr1, 5
	vinsgr2vr.b	$vr0, $a0, 5
	xvpickve2gr.w	$a0, $xr1, 6
	vinsgr2vr.b	$vr0, $a0, 6
	xvpickve2gr.w	$a0, $xr1, 7
	vinsgr2vr.b	$vr0, $a0, 7
	vpackev.d	$vr0, $vr0, $vr2
	vst	$vr0, $a1, 16
	xvld	$xr0, $s1, 396
	xvld	$xr1, $s1, 428
	xvpickve2gr.w	$a0, $xr0, 0
	vinsgr2vr.b	$vr2, $a0, 0
	xvpickve2gr.w	$a0, $xr0, 1
	vinsgr2vr.b	$vr2, $a0, 1
	xvpickve2gr.w	$a0, $xr0, 2
	vinsgr2vr.b	$vr2, $a0, 2
	xvpickve2gr.w	$a0, $xr0, 3
	vinsgr2vr.b	$vr2, $a0, 3
	xvpickve2gr.w	$a0, $xr0, 4
	vinsgr2vr.b	$vr2, $a0, 4
	xvpickve2gr.w	$a0, $xr0, 5
	vinsgr2vr.b	$vr2, $a0, 5
	xvpickve2gr.w	$a0, $xr0, 6
	vinsgr2vr.b	$vr2, $a0, 6
	xvpickve2gr.w	$a0, $xr0, 7
	vinsgr2vr.b	$vr2, $a0, 7
	xvpickve2gr.w	$a0, $xr1, 0
	vinsgr2vr.b	$vr0, $a0, 0
	xvpickve2gr.w	$a0, $xr1, 1
	vinsgr2vr.b	$vr0, $a0, 1
	xvpickve2gr.w	$a0, $xr1, 2
	vinsgr2vr.b	$vr0, $a0, 2
	xvpickve2gr.w	$a0, $xr1, 3
	vinsgr2vr.b	$vr0, $a0, 3
	xvpickve2gr.w	$a0, $xr1, 4
	vinsgr2vr.b	$vr0, $a0, 4
	xvpickve2gr.w	$a0, $xr1, 5
	vinsgr2vr.b	$vr0, $a0, 5
	xvpickve2gr.w	$a0, $xr1, 6
	vinsgr2vr.b	$vr0, $a0, 6
	xvpickve2gr.w	$a0, $xr1, 7
	vinsgr2vr.b	$vr0, $a0, 7
	vpackev.d	$vr0, $vr0, $vr2
	vst	$vr0, $a1, 32
	xvld	$xr0, $s1, 460
	xvld	$xr1, $s1, 492
	xvpickve2gr.w	$a0, $xr0, 0
	vinsgr2vr.b	$vr2, $a0, 0
	xvpickve2gr.w	$a0, $xr0, 1
	vinsgr2vr.b	$vr2, $a0, 1
	xvpickve2gr.w	$a0, $xr0, 2
	vinsgr2vr.b	$vr2, $a0, 2
	xvpickve2gr.w	$a0, $xr0, 3
	vinsgr2vr.b	$vr2, $a0, 3
	xvpickve2gr.w	$a0, $xr0, 4
	vinsgr2vr.b	$vr2, $a0, 4
	xvpickve2gr.w	$a0, $xr0, 5
	vinsgr2vr.b	$vr2, $a0, 5
	xvpickve2gr.w	$a0, $xr0, 6
	vinsgr2vr.b	$vr2, $a0, 6
	xvpickve2gr.w	$a0, $xr0, 7
	vinsgr2vr.b	$vr2, $a0, 7
	xvpickve2gr.w	$a0, $xr1, 0
	vinsgr2vr.b	$vr0, $a0, 0
	xvpickve2gr.w	$a0, $xr1, 1
	vinsgr2vr.b	$vr0, $a0, 1
	xvpickve2gr.w	$a0, $xr1, 2
	vinsgr2vr.b	$vr0, $a0, 2
	xvpickve2gr.w	$a0, $xr1, 3
	vinsgr2vr.b	$vr0, $a0, 3
	xvpickve2gr.w	$a0, $xr1, 4
	vinsgr2vr.b	$vr0, $a0, 4
	xvpickve2gr.w	$a0, $xr1, 5
	vinsgr2vr.b	$vr0, $a0, 5
	xvpickve2gr.w	$a0, $xr1, 6
	vinsgr2vr.b	$vr0, $a0, 6
	xvpickve2gr.w	$a0, $xr1, 7
	vinsgr2vr.b	$vr0, $a0, 7
	vpackev.d	$vr0, $vr0, $vr2
	vst	$vr0, $a1, 48
	xvld	$xr0, $s1, 524
	xvld	$xr1, $s1, 556
	xvpickve2gr.w	$a0, $xr0, 0
	vinsgr2vr.b	$vr2, $a0, 0
	xvpickve2gr.w	$a0, $xr0, 1
	vinsgr2vr.b	$vr2, $a0, 1
	xvpickve2gr.w	$a0, $xr0, 2
	vinsgr2vr.b	$vr2, $a0, 2
	xvpickve2gr.w	$a0, $xr0, 3
	vinsgr2vr.b	$vr2, $a0, 3
	xvpickve2gr.w	$a0, $xr0, 4
	vinsgr2vr.b	$vr2, $a0, 4
	xvpickve2gr.w	$a0, $xr0, 5
	vinsgr2vr.b	$vr2, $a0, 5
	xvpickve2gr.w	$a0, $xr0, 6
	vinsgr2vr.b	$vr2, $a0, 6
	xvpickve2gr.w	$a0, $xr0, 7
	vinsgr2vr.b	$vr2, $a0, 7
	xvpickve2gr.w	$a0, $xr1, 0
	vinsgr2vr.b	$vr0, $a0, 0
	xvpickve2gr.w	$a0, $xr1, 1
	vinsgr2vr.b	$vr0, $a0, 1
	xvpickve2gr.w	$a0, $xr1, 2
	vinsgr2vr.b	$vr0, $a0, 2
	xvpickve2gr.w	$a0, $xr1, 3
	vinsgr2vr.b	$vr0, $a0, 3
	xvpickve2gr.w	$a0, $xr1, 4
	vinsgr2vr.b	$vr0, $a0, 4
	xvpickve2gr.w	$a0, $xr1, 5
	vinsgr2vr.b	$vr0, $a0, 5
	xvpickve2gr.w	$a0, $xr1, 6
	vinsgr2vr.b	$vr0, $a0, 6
	xvpickve2gr.w	$a0, $xr1, 7
	vinsgr2vr.b	$vr0, $a0, 7
	vpackev.d	$vr0, $vr0, $vr2
	vst	$vr0, $a1, 64
	xvld	$xr0, $s1, 588
	xvld	$xr1, $s1, 620
	xvpickve2gr.w	$a0, $xr0, 0
	vinsgr2vr.b	$vr2, $a0, 0
	xvpickve2gr.w	$a0, $xr0, 1
	vinsgr2vr.b	$vr2, $a0, 1
	xvpickve2gr.w	$a0, $xr0, 2
	vinsgr2vr.b	$vr2, $a0, 2
	xvpickve2gr.w	$a0, $xr0, 3
	vinsgr2vr.b	$vr2, $a0, 3
	xvpickve2gr.w	$a0, $xr0, 4
	vinsgr2vr.b	$vr2, $a0, 4
	xvpickve2gr.w	$a0, $xr0, 5
	vinsgr2vr.b	$vr2, $a0, 5
	xvpickve2gr.w	$a0, $xr0, 6
	vinsgr2vr.b	$vr2, $a0, 6
	xvpickve2gr.w	$a0, $xr0, 7
	vinsgr2vr.b	$vr2, $a0, 7
	xvpickve2gr.w	$a0, $xr1, 0
	vinsgr2vr.b	$vr0, $a0, 0
	xvpickve2gr.w	$a0, $xr1, 1
	vinsgr2vr.b	$vr0, $a0, 1
	xvpickve2gr.w	$a0, $xr1, 2
	vinsgr2vr.b	$vr0, $a0, 2
	xvpickve2gr.w	$a0, $xr1, 3
	vinsgr2vr.b	$vr0, $a0, 3
	xvpickve2gr.w	$a0, $xr1, 4
	vinsgr2vr.b	$vr0, $a0, 4
	xvpickve2gr.w	$a0, $xr1, 5
	vinsgr2vr.b	$vr0, $a0, 5
	xvpickve2gr.w	$a0, $xr1, 6
	vinsgr2vr.b	$vr0, $a0, 6
	xvpickve2gr.w	$a0, $xr1, 7
	vinsgr2vr.b	$vr0, $a0, 7
	vpackev.d	$vr0, $vr0, $vr2
	vst	$vr0, $a1, 80
	xvld	$xr0, $s1, 652
	xvld	$xr1, $s1, 684
	xvpickve2gr.w	$a0, $xr0, 0
	vinsgr2vr.b	$vr2, $a0, 0
	xvpickve2gr.w	$a0, $xr0, 1
	vinsgr2vr.b	$vr2, $a0, 1
	xvpickve2gr.w	$a0, $xr0, 2
	vinsgr2vr.b	$vr2, $a0, 2
	xvpickve2gr.w	$a0, $xr0, 3
	vinsgr2vr.b	$vr2, $a0, 3
	xvpickve2gr.w	$a0, $xr0, 4
	vinsgr2vr.b	$vr2, $a0, 4
	xvpickve2gr.w	$a0, $xr0, 5
	vinsgr2vr.b	$vr2, $a0, 5
	xvpickve2gr.w	$a0, $xr0, 6
	vinsgr2vr.b	$vr2, $a0, 6
	xvpickve2gr.w	$a0, $xr0, 7
	vinsgr2vr.b	$vr2, $a0, 7
	xvpickve2gr.w	$a0, $xr1, 0
	vinsgr2vr.b	$vr0, $a0, 0
	xvpickve2gr.w	$a0, $xr1, 1
	vinsgr2vr.b	$vr0, $a0, 1
	xvpickve2gr.w	$a0, $xr1, 2
	vinsgr2vr.b	$vr0, $a0, 2
	xvpickve2gr.w	$a0, $xr1, 3
	vinsgr2vr.b	$vr0, $a0, 3
	xvpickve2gr.w	$a0, $xr1, 4
	vinsgr2vr.b	$vr0, $a0, 4
	xvpickve2gr.w	$a0, $xr1, 5
	vinsgr2vr.b	$vr0, $a0, 5
	xvpickve2gr.w	$a0, $xr1, 6
	vinsgr2vr.b	$vr0, $a0, 6
	xvpickve2gr.w	$a0, $xr1, 7
	vinsgr2vr.b	$vr0, $a0, 7
	vpackev.d	$vr0, $vr0, $vr2
	vst	$vr0, $a1, 96
	xvld	$xr0, $s1, 716
	xvld	$xr1, $s1, 748
	xvpickve2gr.w	$a0, $xr0, 0
	vinsgr2vr.b	$vr2, $a0, 0
	xvpickve2gr.w	$a0, $xr0, 1
	vinsgr2vr.b	$vr2, $a0, 1
	xvpickve2gr.w	$a0, $xr0, 2
	vinsgr2vr.b	$vr2, $a0, 2
	xvpickve2gr.w	$a0, $xr0, 3
	vinsgr2vr.b	$vr2, $a0, 3
	xvpickve2gr.w	$a0, $xr0, 4
	vinsgr2vr.b	$vr2, $a0, 4
	xvpickve2gr.w	$a0, $xr0, 5
	vinsgr2vr.b	$vr2, $a0, 5
	xvpickve2gr.w	$a0, $xr0, 6
	vinsgr2vr.b	$vr2, $a0, 6
	xvpickve2gr.w	$a0, $xr0, 7
	vinsgr2vr.b	$vr2, $a0, 7
	xvpickve2gr.w	$a0, $xr1, 0
	vinsgr2vr.b	$vr0, $a0, 0
	xvpickve2gr.w	$a0, $xr1, 1
	vinsgr2vr.b	$vr0, $a0, 1
	xvpickve2gr.w	$a0, $xr1, 2
	vinsgr2vr.b	$vr0, $a0, 2
	xvpickve2gr.w	$a0, $xr1, 3
	vinsgr2vr.b	$vr0, $a0, 3
	xvpickve2gr.w	$a0, $xr1, 4
	vinsgr2vr.b	$vr0, $a0, 4
	xvpickve2gr.w	$a0, $xr1, 5
	vinsgr2vr.b	$vr0, $a0, 5
	xvpickve2gr.w	$a0, $xr1, 6
	vinsgr2vr.b	$vr0, $a0, 6
	xvpickve2gr.w	$a0, $xr1, 7
	vinsgr2vr.b	$vr0, $a0, 7
	vpackev.d	$vr0, $vr0, $vr2
	vst	$vr0, $a1, 112
	xvld	$xr0, $s1, 780
	xvld	$xr1, $s1, 812
	xvpickve2gr.w	$a0, $xr0, 0
	vinsgr2vr.b	$vr2, $a0, 0
	xvpickve2gr.w	$a0, $xr0, 1
	vinsgr2vr.b	$vr2, $a0, 1
	xvpickve2gr.w	$a0, $xr0, 2
	vinsgr2vr.b	$vr2, $a0, 2
	xvpickve2gr.w	$a0, $xr0, 3
	vinsgr2vr.b	$vr2, $a0, 3
	xvpickve2gr.w	$a0, $xr0, 4
	vinsgr2vr.b	$vr2, $a0, 4
	xvpickve2gr.w	$a0, $xr0, 5
	vinsgr2vr.b	$vr2, $a0, 5
	xvpickve2gr.w	$a0, $xr0, 6
	vinsgr2vr.b	$vr2, $a0, 6
	xvpickve2gr.w	$a0, $xr0, 7
	vinsgr2vr.b	$vr2, $a0, 7
	xvpickve2gr.w	$a0, $xr1, 0
	vinsgr2vr.b	$vr0, $a0, 0
	xvpickve2gr.w	$a0, $xr1, 1
	vinsgr2vr.b	$vr0, $a0, 1
	xvpickve2gr.w	$a0, $xr1, 2
	vinsgr2vr.b	$vr0, $a0, 2
	xvpickve2gr.w	$a0, $xr1, 3
	vinsgr2vr.b	$vr0, $a0, 3
	xvpickve2gr.w	$a0, $xr1, 4
	vinsgr2vr.b	$vr0, $a0, 4
	xvpickve2gr.w	$a0, $xr1, 5
	vinsgr2vr.b	$vr0, $a0, 5
	xvpickve2gr.w	$a0, $xr1, 6
	vinsgr2vr.b	$vr0, $a0, 6
	xvpickve2gr.w	$a0, $xr1, 7
	vinsgr2vr.b	$vr0, $a0, 7
	vpackev.d	$vr0, $vr0, $vr2
	vst	$vr0, $a1, 128
	xvld	$xr0, $s1, 844
	xvld	$xr1, $s1, 876
	xvpickve2gr.w	$a0, $xr0, 0
	vinsgr2vr.b	$vr2, $a0, 0
	xvpickve2gr.w	$a0, $xr0, 1
	vinsgr2vr.b	$vr2, $a0, 1
	xvpickve2gr.w	$a0, $xr0, 2
	vinsgr2vr.b	$vr2, $a0, 2
	xvpickve2gr.w	$a0, $xr0, 3
	vinsgr2vr.b	$vr2, $a0, 3
	xvpickve2gr.w	$a0, $xr0, 4
	vinsgr2vr.b	$vr2, $a0, 4
	xvpickve2gr.w	$a0, $xr0, 5
	vinsgr2vr.b	$vr2, $a0, 5
	xvpickve2gr.w	$a0, $xr0, 6
	vinsgr2vr.b	$vr2, $a0, 6
	xvpickve2gr.w	$a0, $xr0, 7
	vinsgr2vr.b	$vr2, $a0, 7
	xvpickve2gr.w	$a0, $xr1, 0
	vinsgr2vr.b	$vr0, $a0, 0
	xvpickve2gr.w	$a0, $xr1, 1
	vinsgr2vr.b	$vr0, $a0, 1
	xvpickve2gr.w	$a0, $xr1, 2
	vinsgr2vr.b	$vr0, $a0, 2
	xvpickve2gr.w	$a0, $xr1, 3
	vinsgr2vr.b	$vr0, $a0, 3
	xvpickve2gr.w	$a0, $xr1, 4
	vinsgr2vr.b	$vr0, $a0, 4
	xvpickve2gr.w	$a0, $xr1, 5
	vinsgr2vr.b	$vr0, $a0, 5
	xvpickve2gr.w	$a0, $xr1, 6
	vinsgr2vr.b	$vr0, $a0, 6
	xvpickve2gr.w	$a0, $xr1, 7
	vinsgr2vr.b	$vr0, $a0, 7
	vpackev.d	$vr0, $vr0, $vr2
	vst	$vr0, $a1, 144
	xvld	$xr0, $s1, 908
	xvld	$xr1, $s1, 940
	xvpickve2gr.w	$a0, $xr0, 0
	vinsgr2vr.b	$vr2, $a0, 0
	xvpickve2gr.w	$a0, $xr0, 1
	vinsgr2vr.b	$vr2, $a0, 1
	xvpickve2gr.w	$a0, $xr0, 2
	vinsgr2vr.b	$vr2, $a0, 2
	xvpickve2gr.w	$a0, $xr0, 3
	vinsgr2vr.b	$vr2, $a0, 3
	xvpickve2gr.w	$a0, $xr0, 4
	vinsgr2vr.b	$vr2, $a0, 4
	xvpickve2gr.w	$a0, $xr0, 5
	vinsgr2vr.b	$vr2, $a0, 5
	xvpickve2gr.w	$a0, $xr0, 6
	vinsgr2vr.b	$vr2, $a0, 6
	xvpickve2gr.w	$a0, $xr0, 7
	vinsgr2vr.b	$vr2, $a0, 7
	xvpickve2gr.w	$a0, $xr1, 0
	vinsgr2vr.b	$vr0, $a0, 0
	xvpickve2gr.w	$a0, $xr1, 1
	vinsgr2vr.b	$vr0, $a0, 1
	xvpickve2gr.w	$a0, $xr1, 2
	vinsgr2vr.b	$vr0, $a0, 2
	xvpickve2gr.w	$a0, $xr1, 3
	vinsgr2vr.b	$vr0, $a0, 3
	xvpickve2gr.w	$a0, $xr1, 4
	vinsgr2vr.b	$vr0, $a0, 4
	xvpickve2gr.w	$a0, $xr1, 5
	vinsgr2vr.b	$vr0, $a0, 5
	xvpickve2gr.w	$a0, $xr1, 6
	vinsgr2vr.b	$vr0, $a0, 6
	xvpickve2gr.w	$a0, $xr1, 7
	vinsgr2vr.b	$vr0, $a0, 7
	vpackev.d	$vr0, $vr0, $vr2
	vst	$vr0, $a1, 160
	vld	$vr0, $s1, 972
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	vld	$vr1, $a0, %pc_lo12(.LCPI0_1)
	vshuf.b	$vr0, $vr0, $vr0, $vr1
	vstelm.w	$vr0, $a1, 176, 0
	vld	$vr0, $s1, 988
	vshuf.b	$vr0, $vr0, $vr0, $vr1
	vstelm.w	$vr0, $a1, 180, 0
	vld	$vr0, $s1, 1004
	vshuf.b	$vr0, $vr0, $vr0, $vr1
	vstelm.w	$vr0, $a1, 184, 0
	ld.d	$s8, $sp, 1656                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1664                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1672                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1680                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1688                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1696                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1704                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1712                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1720                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1728                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1736                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1744
	ret
.LBB0_94:                               # %for.cond298.preheader.i.for.cond330.preheader.i_crit_edge
	addi.d	$a0, $s5, 1
	bstrpick.d	$s7, $a0, 31, 0
	beqz	$s5, .LBB0_100
.LBB0_95:                               # %for.body611.i.preheader
	move	$a0, $zero
	ori	$a1, $zero, 1020
	b	.LBB0_97
	.p2align	4, , 16
.LBB0_96:                               # %if.then615.i
                                        #   in Loop: Header=BB0_97 Depth=1
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $s2, $a2
	stx.w	$a2, $s1, $a0
	addi.d	$a0, $a0, 4
	beq	$a0, $a1, .LBB0_93
.LBB0_97:                               # %for.body611.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a2, $s1, $a0
	bne	$a2, $s6, .LBB0_96
# %bb.98:                               #   in Loop: Header=BB0_97 Depth=1
	move	$a2, $zero
	stx.w	$a2, $s1, $a0
	addi.d	$a0, $a0, 4
	bne	$a0, $a1, .LBB0_97
	b	.LBB0_93
.LBB0_99:
	ori	$s7, $zero, 1
	bnez	$s5, .LBB0_95
.LBB0_100:                              # %for.cond484.preheader.i
	move	$a0, $zero
	ori	$a1, $zero, 1020
	b	.LBB0_102
	.p2align	4, , 16
.LBB0_101:                              # %if.then492.i
                                        #   in Loop: Header=BB0_102 Depth=1
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $s2, $a2
	stx.w	$a2, $s1, $a0
	addi.d	$a0, $a0, 4
	beq	$a0, $a1, .LBB0_104
.LBB0_102:                              # %for.body486.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a2, $s1, $a0
	bne	$a2, $s6, .LBB0_101
# %bb.103:                              #   in Loop: Header=BB0_102 Depth=1
	move	$a2, $zero
	stx.w	$a2, $s1, $a0
	addi.d	$a0, $a0, 4
	bne	$a0, $a1, .LBB0_102
.LBB0_104:                              # %for.cond506.preheader.i
	ori	$a0, $zero, 1
	blt	$s5, $a0, .LBB0_93
# %bb.105:                              # %for.body510.lr.ph.i
	move	$a0, $zero
	addi.d	$a1, $s7, -1
	addi.d	$a2, $sp, 124
	addi.d	$a3, $sp, 156
	addi.d	$a4, $sp, 188
	b	.LBB0_108
	.p2align	4, , 16
.LBB0_106:                              # %for.end580.i
                                        #   in Loop: Header=BB0_108 Depth=1
	mul.d	$a6, $t0, $s4
	srli.d	$a6, $a6, 32
	add.w	$a6, $a6, $t0
	bstrpick.d	$t1, $a6, 31, 31
	srai.d	$a6, $a6, 7
	add.d	$a6, $a6, $t1
	slli.d	$t1, $a6, 8
	sub.d	$a6, $t1, $a6
	sub.d	$a6, $a6, $t0
	add.d	$a6, $a7, $a6
	addi.w	$a6, $a6, 255
	mul.d	$a7, $a6, $s4
	srli.d	$a7, $a7, 32
	add.w	$a7, $a7, $a6
	bstrpick.d	$t0, $a7, 31, 31
	srai.d	$a7, $a7, 7
	add.d	$a7, $a7, $t0
	slli.d	$t0, $a7, 8
	sub.d	$a7, $a7, $t0
	add.w	$a6, $a6, $a7
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $s2, $a6
	slli.d	$a5, $a5, 2
	ldx.w	$a7, $s1, $a5
	xor	$a6, $a7, $a6
	stx.w	$a6, $s1, $a5
.LBB0_107:                              # %for.inc605.i
                                        #   in Loop: Header=BB0_108 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $s5, .LBB0_93
.LBB0_108:                              # %for.body519.lr.ph.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_110 Depth 2
                                        #     Child Loop BB0_115 Depth 2
	slli.d	$a5, $a0, 2
	ldx.w	$a5, $a5, $a3
	alsl.d	$a6, $a0, $a4, 2
	ori	$t0, $zero, 1
	move	$t1, $a2
	move	$t2, $a1
	ori	$a7, $zero, 1
	b	.LBB0_110
	.p2align	4, , 16
.LBB0_109:                              # %for.inc539.i
                                        #   in Loop: Header=BB0_110 Depth=2
	addi.d	$t2, $t2, -1
	addi.d	$t0, $t0, 1
	addi.d	$t1, $t1, 4
	beqz	$t2, .LBB0_112
.LBB0_110:                              # %for.body519.i
                                        #   Parent Loop BB0_108 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t3, $t1, 0
	beq	$t3, $s6, .LBB0_109
# %bb.111:                              # %if.then523.i
                                        #   in Loop: Header=BB0_110 Depth=2
	ld.w	$t4, $a6, 0
	mul.d	$t4, $t4, $t0
	add.w	$t3, $t4, $t3
	mul.d	$t4, $t3, $s4
	srli.d	$t4, $t4, 32
	add.w	$t4, $t4, $t3
	bstrpick.d	$t5, $t4, 31, 31
	srai.d	$t4, $t4, 7
	add.d	$t4, $t4, $t5
	slli.d	$t5, $t4, 8
	sub.d	$t4, $t4, $t5
	add.w	$t3, $t3, $t4
	slli.d	$t3, $t3, 2
	ldx.w	$t3, $s2, $t3
	xor	$a7, $t3, $a7
	b	.LBB0_109
	.p2align	4, , 16
.LBB0_112:                              # %for.end541.i
                                        #   in Loop: Header=BB0_108 Depth=1
	beqz	$a7, .LBB0_107
# %bb.113:                              # %for.body562.lr.ph.i
                                        #   in Loop: Header=BB0_108 Depth=1
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $s3, $a7
	move	$t1, $zero
	move	$t0, $zero
	addi.d	$t2, $sp, 156
	b	.LBB0_115
	.p2align	4, , 16
.LBB0_114:                              # %for.inc578.i
                                        #   in Loop: Header=BB0_115 Depth=2
	addi.d	$t1, $t1, 1
	addi.d	$t2, $t2, 4
	beq	$s5, $t1, .LBB0_106
.LBB0_115:                              # %for.body562.i
                                        #   Parent Loop BB0_108 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $t1, .LBB0_114
# %bb.116:                              # %if.then564.i
                                        #   in Loop: Header=BB0_115 Depth=2
	ld.w	$t3, $t2, 0
	ld.w	$t4, $a6, 0
	add.w	$t3, $t4, $t3
	mul.d	$t4, $t3, $s4
	srli.d	$t4, $t4, 32
	add.w	$t4, $t4, $t3
	bstrpick.d	$t5, $t4, 31, 31
	srai.d	$t4, $t4, 7
	add.d	$t4, $t4, $t5
	slli.d	$t5, $t4, 8
	sub.d	$t4, $t4, $t5
	add.w	$t3, $t3, $t4
	slli.d	$t3, $t3, 2
	ldx.w	$t3, $s2, $t3
	xori	$t3, $t3, 1
	slli.d	$t3, $t3, 2
	ldx.w	$t3, $s3, $t3
	add.w	$t0, $t3, $t0
	b	.LBB0_114
.Lfunc_end0:
	.size	rsdec_204, .Lfunc_end0-rsdec_204
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function rsenc_204
.LCPI1_0:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	4                               # 0x4
	.word	8                               # 0x8
	.word	16                              # 0x10
	.word	32                              # 0x20
	.word	64                              # 0x40
	.word	128                             # 0x80
	.text
	.globl	rsenc_204
	.p2align	5
	.type	rsenc_204,@function
rsenc_204:                              # @rsenc_204
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	move	$s0, $a1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$s1, %pc_hi20(inited)
	ld.bu	$a0, $s1, %pc_lo12(inited)
	pcalau12i	$a1, %pc_hi20(index_of)
	addi.d	$fp, $a1, %pc_lo12(index_of)
	pcalau12i	$a1, %pc_hi20(alpha_to)
	addi.d	$s3, $a1, %pc_lo12(alpha_to)
	bnez	$a0, .LBB1_6
# %bb.1:                                # %if.then
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	st.d	$a0, $fp, 4
	ori	$a0, $zero, 2
	st.w	$a0, $fp, 16
	ori	$a0, $zero, 3
	st.w	$a0, $fp, 32
	ori	$a0, $zero, 4
	st.w	$a0, $fp, 64
	ori	$a4, $zero, 29
	st.w	$a4, $s3, 32
	ori	$a0, $zero, 5
	pcalau12i	$a1, %pc_hi20(.LCPI1_0)
	xvld	$xr0, $a1, %pc_lo12(.LCPI1_0)
	st.w	$a0, $fp, 128
	ori	$a0, $zero, 6
	st.w	$a0, $fp, 256
	xvst	$xr0, $s3, 0
	ori	$a0, $zero, 7
	st.w	$a0, $fp, 512
	ori	$a0, $zero, 8
	st.w	$a0, $fp, 116
	ori	$a0, $zero, 36
	ori	$a1, $zero, 9
	ori	$a2, $zero, 128
	ori	$a3, $zero, 1020
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_2:                                # %if.end31.i
                                        #   in Loop: Header=BB1_3 Depth=1
	stx.w	$a5, $s3, $a0
	slli.d	$a4, $a5, 2
	stx.w	$a1, $fp, $a4
	addi.d	$a0, $a0, 4
	addi.d	$a1, $a1, 1
	move	$a4, $a5
	beq	$a0, $a3, .LBB1_5
.LBB1_3:                                # %for.body12.i
                                        # =>This Inner Loop Header: Depth=1
	slli.w	$a5, $a4, 1
	blt	$a4, $a2, .LBB1_2
# %bb.4:                                # %if.then16.i
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a4, $s3, 32
	xor	$a4, $a5, $a4
	xori	$a5, $a4, 256
	b	.LBB1_2
.LBB1_5:                                # %generate_gf.exit
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(gen_poly)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.b	$a0, $s1, %pc_lo12(inited)
.LBB1_6:                                # %if.end
	pcalau12i	$a0, %pc_hi20(data)
	addi.d	$s1, $a0, %pc_lo12(data)
	ori	$a2, $zero, 204
	move	$a0, $s1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 0
	ld.w	$a1, $s0, 4
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vrepli.b	$vr0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 204
	vst	$vr2, $s1, 220
	ld.w	$a0, $s0, 8
	ld.w	$a1, $s0, 12
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 236
	vst	$vr2, $s1, 252
	ld.w	$a0, $s0, 16
	ld.w	$a1, $s0, 20
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 268
	vst	$vr2, $s1, 284
	ld.w	$a0, $s0, 24
	ld.w	$a1, $s0, 28
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 300
	vst	$vr2, $s1, 316
	ld.w	$a0, $s0, 32
	ld.w	$a1, $s0, 36
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 332
	vst	$vr2, $s1, 348
	ld.w	$a0, $s0, 40
	ld.w	$a1, $s0, 44
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 364
	vst	$vr2, $s1, 380
	ld.w	$a0, $s0, 48
	ld.w	$a1, $s0, 52
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 396
	vst	$vr2, $s1, 412
	ld.w	$a0, $s0, 56
	ld.w	$a1, $s0, 60
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 428
	vst	$vr2, $s1, 444
	ld.w	$a0, $s0, 64
	ld.w	$a1, $s0, 68
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 460
	vst	$vr2, $s1, 476
	ld.w	$a0, $s0, 72
	ld.w	$a1, $s0, 76
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 492
	vst	$vr2, $s1, 508
	ld.w	$a0, $s0, 80
	ld.w	$a1, $s0, 84
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 524
	vst	$vr2, $s1, 540
	ld.w	$a0, $s0, 88
	ld.w	$a1, $s0, 92
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 556
	vst	$vr2, $s1, 572
	ld.w	$a0, $s0, 96
	ld.w	$a1, $s0, 100
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 588
	vst	$vr2, $s1, 604
	ld.w	$a0, $s0, 104
	ld.w	$a1, $s0, 108
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 620
	vst	$vr2, $s1, 636
	ld.w	$a0, $s0, 112
	ld.w	$a1, $s0, 116
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 652
	vst	$vr2, $s1, 668
	ld.w	$a0, $s0, 120
	ld.w	$a1, $s0, 124
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 684
	vst	$vr2, $s1, 700
	ld.w	$a0, $s0, 128
	ld.w	$a1, $s0, 132
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 716
	vst	$vr2, $s1, 732
	ld.w	$a0, $s0, 136
	ld.w	$a1, $s0, 140
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 748
	vst	$vr2, $s1, 764
	ld.w	$a0, $s0, 144
	ld.w	$a1, $s0, 148
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 780
	vst	$vr2, $s1, 796
	ld.w	$a0, $s0, 152
	ld.w	$a1, $s0, 156
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 812
	vst	$vr2, $s1, 828
	ld.w	$a0, $s0, 160
	ld.w	$a1, $s0, 164
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 844
	vst	$vr2, $s1, 860
	ld.w	$a0, $s0, 168
	ld.w	$a1, $s0, 172
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 876
	vst	$vr2, $s1, 892
	ld.w	$a0, $s0, 176
	ld.w	$a1, $s0, 180
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr0, $vr0, $vr2
	vst	$vr1, $s1, 908
	vst	$vr0, $s1, 924
	ld.bu	$a0, $s0, 184
	st.w	$a0, $s1, 940
	ld.bu	$a0, $s0, 185
	st.w	$a0, $s1, 944
	ld.bu	$a0, $s0, 186
	st.w	$a0, $s1, 948
	ld.bu	$a0, $s0, 187
	move	$a2, $zero
	move	$a1, $zero
	st.w	$a0, $s1, 952
	pcalau12i	$a0, %pc_hi20(bb)
	addi.d	$a0, $a0, %pc_lo12(bb)
	xvrepli.b	$xr0, 0
	xvst	$xr0, $a0, 32
	xvst	$xr0, $a0, 0
	pcalau12i	$a3, %pc_hi20(gg)
	addi.d	$a3, $a3, %pc_lo12(gg)
	ld.w	$a4, $a3, 0
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	ld.w	$a4, $a3, 60
	ld.w	$a5, $a3, 56
	ld.w	$a6, $a3, 52
	st.d	$a6, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a7, $a3, 48
	ld.w	$t0, $a3, 44
	ld.w	$t1, $a3, 40
	ld.w	$t2, $a3, 36
	ld.w	$t3, $a3, 32
	ld.w	$t4, $a3, 28
	ld.w	$t5, $a3, 24
	ld.w	$t6, $a3, 20
	ld.w	$t7, $a3, 16
	ld.w	$t8, $a3, 12
	ld.w	$s4, $a3, 8
	ld.w	$s5, $a3, 4
	ori	$s6, $zero, 952
	addi.w	$s7, $zero, -1
	addi.w	$s8, $zero, -4
	lu12i.w	$a3, -522232
	ori	$ra, $a3, 129
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	st.d	$a5, $sp, 32                    # 8-byte Folded Spill
	b	.LBB1_8
	.p2align	4, , 16
.LBB1_7:                                # %for.body39.preheader.i
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a0, 8
	st.d	$a1, $a0, 4
	ld.d	$a1, $a0, 16
	st.d	$a2, $a0, 12
	ld.d	$a2, $a0, 24
	st.d	$a1, $a0, 20
	ld.d	$a1, $a0, 32
	st.d	$a2, $a0, 28
	ld.d	$a2, $a0, 40
	st.d	$a1, $a0, 36
	ld.d	$a3, $a0, 48
	st.d	$a2, $a0, 44
	ld.w	$a1, $a0, 56
	move	$a2, $zero
	st.d	$a3, $a0, 52
	st.w	$a1, $a0, 60
	addi.d	$s6, $s6, -4
	st.w	$a2, $a0, 0
	beq	$s6, $s8, .LBB1_40
.LBB1_8:                                # %for.body3.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a3, $s1, $s6
	xor	$a1, $a1, $a3
	slli.d	$a1, $a1, 2
	ldx.w	$a3, $fp, $a1
	beq	$a3, $s7, .LBB1_7
# %bb.9:                                # %for.body11.i.preheader
                                        #   in Loop: Header=BB1_8 Depth=1
	move	$a6, $fp
	ld.w	$a1, $a0, 56
	beq	$a4, $s7, .LBB1_11
# %bb.10:                               # %if.then15.i
                                        #   in Loop: Header=BB1_8 Depth=1
	add.w	$fp, $a4, $a3
	mul.d	$s2, $fp, $ra
	srli.d	$s2, $s2, 32
	add.w	$s2, $s2, $fp
	bstrpick.d	$a4, $s2, 31, 31
	srai.d	$s2, $s2, 7
	add.d	$a4, $s2, $a4
	slli.d	$s2, $a4, 8
	sub.d	$a4, $a4, $s2
	add.w	$a4, $fp, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s3, $a4
	xor	$a1, $a4, $a1
.LBB1_11:                               # %for.inc30.i
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.w	$fp, $a0, 52
	st.w	$a1, $a0, 60
	beq	$a5, $s7, .LBB1_13
# %bb.12:                               # %if.then15.i.1
                                        #   in Loop: Header=BB1_8 Depth=1
	add.w	$a4, $a5, $a3
	mul.d	$s2, $a4, $ra
	srli.d	$s2, $s2, 32
	add.w	$s2, $s2, $a4
	bstrpick.d	$a5, $s2, 31, 31
	srai.d	$s2, $s2, 7
	add.d	$a5, $s2, $a5
	slli.d	$s2, $a5, 8
	sub.d	$a5, $a5, $s2
	add.w	$a4, $a4, $a5
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s3, $a4
	xor	$fp, $a4, $fp
.LBB1_13:                               # %for.inc30.i.1
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.w	$s2, $a0, 48
	st.w	$fp, $a0, 56
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	beq	$a4, $s7, .LBB1_15
# %bb.14:                               # %if.then15.i.2
                                        #   in Loop: Header=BB1_8 Depth=1
	add.w	$a4, $a4, $a3
	mul.d	$a5, $a4, $ra
	srli.d	$a5, $a5, 32
	add.w	$a5, $a5, $a4
	bstrpick.d	$fp, $a5, 31, 31
	srai.d	$a5, $a5, 7
	add.d	$a5, $a5, $fp
	slli.d	$fp, $a5, 8
	sub.d	$a5, $a5, $fp
	add.w	$a4, $a4, $a5
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s3, $a4
	xor	$s2, $a4, $s2
.LBB1_15:                               # %for.inc30.i.2
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.w	$fp, $a0, 44
	st.w	$s2, $a0, 52
	beq	$a7, $s7, .LBB1_17
# %bb.16:                               # %if.then15.i.3
                                        #   in Loop: Header=BB1_8 Depth=1
	add.w	$a4, $a7, $a3
	mul.d	$a5, $a4, $ra
	srli.d	$a5, $a5, 32
	add.w	$a5, $a5, $a4
	bstrpick.d	$s2, $a5, 31, 31
	srai.d	$a5, $a5, 7
	add.d	$a5, $a5, $s2
	slli.d	$s2, $a5, 8
	sub.d	$a5, $a5, $s2
	add.w	$a4, $a4, $a5
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s3, $a4
	xor	$fp, $a4, $fp
.LBB1_17:                               # %for.inc30.i.3
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.w	$s2, $a0, 40
	st.w	$fp, $a0, 48
	beq	$t0, $s7, .LBB1_19
# %bb.18:                               # %if.then15.i.4
                                        #   in Loop: Header=BB1_8 Depth=1
	add.w	$a4, $t0, $a3
	mul.d	$a5, $a4, $ra
	srli.d	$a5, $a5, 32
	add.w	$a5, $a5, $a4
	bstrpick.d	$fp, $a5, 31, 31
	srai.d	$a5, $a5, 7
	add.d	$a5, $a5, $fp
	slli.d	$fp, $a5, 8
	sub.d	$a5, $a5, $fp
	add.w	$a4, $a4, $a5
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s3, $a4
	xor	$s2, $a4, $s2
.LBB1_19:                               # %for.inc30.i.4
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.w	$fp, $a0, 36
	st.w	$s2, $a0, 44
	beq	$t1, $s7, .LBB1_21
# %bb.20:                               # %if.then15.i.5
                                        #   in Loop: Header=BB1_8 Depth=1
	add.w	$a4, $t1, $a3
	mul.d	$a5, $a4, $ra
	srli.d	$a5, $a5, 32
	add.w	$a5, $a5, $a4
	bstrpick.d	$s2, $a5, 31, 31
	srai.d	$a5, $a5, 7
	add.d	$a5, $a5, $s2
	slli.d	$s2, $a5, 8
	sub.d	$a5, $a5, $s2
	add.w	$a4, $a4, $a5
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s3, $a4
	xor	$fp, $a4, $fp
.LBB1_21:                               # %for.inc30.i.5
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.w	$s2, $a0, 32
	st.w	$fp, $a0, 40
	beq	$t2, $s7, .LBB1_23
# %bb.22:                               # %if.then15.i.6
                                        #   in Loop: Header=BB1_8 Depth=1
	add.w	$a4, $t2, $a3
	mul.d	$a5, $a4, $ra
	srli.d	$a5, $a5, 32
	add.w	$a5, $a5, $a4
	bstrpick.d	$fp, $a5, 31, 31
	srai.d	$a5, $a5, 7
	add.d	$a5, $a5, $fp
	slli.d	$fp, $a5, 8
	sub.d	$a5, $a5, $fp
	add.w	$a4, $a4, $a5
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s3, $a4
	xor	$s2, $a4, $s2
.LBB1_23:                               # %for.inc30.i.6
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.w	$fp, $a0, 28
	st.w	$s2, $a0, 36
	beq	$t3, $s7, .LBB1_25
# %bb.24:                               # %if.then15.i.7
                                        #   in Loop: Header=BB1_8 Depth=1
	add.w	$a4, $t3, $a3
	mul.d	$a5, $a4, $ra
	srli.d	$a5, $a5, 32
	add.w	$a5, $a5, $a4
	bstrpick.d	$s2, $a5, 31, 31
	srai.d	$a5, $a5, 7
	add.d	$a5, $a5, $s2
	slli.d	$s2, $a5, 8
	sub.d	$a5, $a5, $s2
	add.w	$a4, $a4, $a5
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s3, $a4
	xor	$fp, $a4, $fp
.LBB1_25:                               # %for.inc30.i.7
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.w	$s2, $a0, 24
	st.w	$fp, $a0, 32
	beq	$t4, $s7, .LBB1_27
# %bb.26:                               # %if.then15.i.8
                                        #   in Loop: Header=BB1_8 Depth=1
	add.w	$a4, $t4, $a3
	mul.d	$a5, $a4, $ra
	srli.d	$a5, $a5, 32
	add.w	$a5, $a5, $a4
	bstrpick.d	$fp, $a5, 31, 31
	srai.d	$a5, $a5, 7
	add.d	$a5, $a5, $fp
	slli.d	$fp, $a5, 8
	sub.d	$a5, $a5, $fp
	add.w	$a4, $a4, $a5
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s3, $a4
	xor	$s2, $a4, $s2
.LBB1_27:                               # %for.inc30.i.8
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.w	$fp, $a0, 20
	st.w	$s2, $a0, 28
	beq	$t5, $s7, .LBB1_29
# %bb.28:                               # %if.then15.i.9
                                        #   in Loop: Header=BB1_8 Depth=1
	add.w	$a4, $t5, $a3
	mul.d	$a5, $a4, $ra
	srli.d	$a5, $a5, 32
	add.w	$a5, $a5, $a4
	bstrpick.d	$s2, $a5, 31, 31
	srai.d	$a5, $a5, 7
	add.d	$a5, $a5, $s2
	slli.d	$s2, $a5, 8
	sub.d	$a5, $a5, $s2
	add.w	$a4, $a4, $a5
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s3, $a4
	xor	$fp, $a4, $fp
.LBB1_29:                               # %for.inc30.i.9
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.w	$s2, $a0, 16
	st.w	$fp, $a0, 24
	beq	$t6, $s7, .LBB1_31
# %bb.30:                               # %if.then15.i.10
                                        #   in Loop: Header=BB1_8 Depth=1
	add.w	$a4, $t6, $a3
	mul.d	$a5, $a4, $ra
	srli.d	$a5, $a5, 32
	add.w	$a5, $a5, $a4
	bstrpick.d	$fp, $a5, 31, 31
	srai.d	$a5, $a5, 7
	add.d	$a5, $a5, $fp
	slli.d	$fp, $a5, 8
	sub.d	$a5, $a5, $fp
	add.w	$a4, $a4, $a5
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s3, $a4
	xor	$s2, $a4, $s2
.LBB1_31:                               # %for.inc30.i.10
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.w	$fp, $a0, 12
	st.w	$s2, $a0, 20
	beq	$t7, $s7, .LBB1_33
# %bb.32:                               # %if.then15.i.11
                                        #   in Loop: Header=BB1_8 Depth=1
	add.w	$a4, $t7, $a3
	mul.d	$a5, $a4, $ra
	srli.d	$a5, $a5, 32
	add.w	$a5, $a5, $a4
	bstrpick.d	$s2, $a5, 31, 31
	srai.d	$a5, $a5, 7
	add.d	$a5, $a5, $s2
	slli.d	$s2, $a5, 8
	sub.d	$a5, $a5, $s2
	add.w	$a4, $a4, $a5
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s3, $a4
	xor	$fp, $a4, $fp
.LBB1_33:                               # %for.inc30.i.11
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.w	$s2, $a0, 8
	st.w	$fp, $a0, 16
	beq	$t8, $s7, .LBB1_35
# %bb.34:                               # %if.then15.i.12
                                        #   in Loop: Header=BB1_8 Depth=1
	add.w	$a4, $t8, $a3
	mul.d	$a5, $a4, $ra
	srli.d	$a5, $a5, 32
	add.w	$a5, $a5, $a4
	bstrpick.d	$fp, $a5, 31, 31
	srai.d	$a5, $a5, 7
	add.d	$a5, $a5, $fp
	slli.d	$fp, $a5, 8
	sub.d	$a5, $a5, $fp
	add.w	$a4, $a4, $a5
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s3, $a4
	xor	$s2, $a4, $s2
.LBB1_35:                               # %for.inc30.i.12
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.w	$fp, $a0, 4
	st.w	$s2, $a0, 12
	beq	$s4, $s7, .LBB1_37
# %bb.36:                               # %if.then15.i.13
                                        #   in Loop: Header=BB1_8 Depth=1
	add.w	$a4, $s4, $a3
	mul.d	$a5, $a4, $ra
	srli.d	$a5, $a5, 32
	add.w	$a5, $a5, $a4
	bstrpick.d	$s2, $a5, 31, 31
	srai.d	$a5, $a5, 7
	add.d	$a5, $a5, $s2
	slli.d	$s2, $a5, 8
	sub.d	$a5, $a5, $s2
	add.w	$a4, $a4, $a5
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s3, $a4
	xor	$fp, $a4, $fp
.LBB1_37:                               # %for.inc30.i.13
                                        #   in Loop: Header=BB1_8 Depth=1
	st.w	$fp, $a0, 8
	beq	$s5, $s7, .LBB1_39
# %bb.38:                               # %if.then15.i.14
                                        #   in Loop: Header=BB1_8 Depth=1
	add.w	$a4, $s5, $a3
	mul.d	$a5, $a4, $ra
	srli.d	$a5, $a5, 32
	add.w	$a5, $a5, $a4
	bstrpick.d	$fp, $a5, 31, 31
	srai.d	$a5, $a5, 7
	add.d	$a5, $a5, $fp
	slli.d	$fp, $a5, 8
	sub.d	$a5, $a5, $fp
	add.w	$a4, $a4, $a5
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s3, $a4
	xor	$a2, $a4, $a2
.LBB1_39:                               # %for.inc30.i.14
                                        #   in Loop: Header=BB1_8 Depth=1
	move	$fp, $a6
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	st.w	$a2, $a0, 4
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	add.w	$a2, $a3, $a2
	mul.d	$a3, $a2, $ra
	srli.d	$a3, $a3, 32
	add.w	$a3, $a3, $a2
	bstrpick.d	$a4, $a3, 31, 31
	srai.d	$a3, $a3, 7
	add.d	$a3, $a3, $a4
	slli.d	$a4, $a3, 8
	sub.d	$a3, $a3, $a4
	add.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $s3, $a2
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	addi.d	$s6, $s6, -4
	st.w	$a2, $a0, 0
	bne	$s6, $s8, .LBB1_8
.LBB1_40:                               # %vector.memcheck
	ld.d	$a6, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a3, $a6, $s0
	ori	$a4, $zero, 32
	bgeu	$a3, $a4, .LBB1_42
# %bb.41:
	move	$a3, $zero
	b	.LBB1_43
.LBB1_42:                               # %vector.body42
	xvld	$xr0, $s0, 0
	xvst	$xr0, $a6, 0
	xvld	$xr0, $s0, 32
	xvst	$xr0, $a6, 32
	xvld	$xr0, $s0, 64
	xvst	$xr0, $a6, 64
	xvld	$xr0, $s0, 96
	xvst	$xr0, $a6, 96
	xvld	$xr0, $s0, 128
	xvst	$xr0, $a6, 128
	vld	$vr0, $s0, 160
	vst	$vr0, $a6, 160
	ori	$a3, $zero, 176
.LBB1_43:                               # %for.body14.preheader
	ori	$a4, $zero, 188
	.p2align	4, , 16
.LBB1_44:                               # %for.body14
                                        # =>This Inner Loop Header: Depth=1
	ldx.b	$a5, $s0, $a3
	stx.b	$a5, $a6, $a3
	addi.d	$a3, $a3, 1
	bne	$a3, $a4, .LBB1_44
# %bb.45:                               # %for.body25.preheader
	ld.b	$a3, $a0, 4
	ld.b	$a4, $a0, 8
	st.b	$a2, $a6, 188
	st.b	$a3, $a6, 189
	st.b	$a4, $a6, 190
	ld.b	$a2, $a0, 12
	ld.b	$a3, $a0, 16
	ld.b	$a4, $a0, 20
	ld.b	$a5, $a0, 24
	st.b	$a2, $a6, 191
	st.b	$a3, $a6, 192
	st.b	$a4, $a6, 193
	st.b	$a5, $a6, 194
	ld.b	$a2, $a0, 28
	ld.b	$a3, $a0, 32
	ld.b	$a4, $a0, 36
	ld.b	$a5, $a0, 40
	st.b	$a2, $a6, 195
	st.b	$a3, $a6, 196
	st.b	$a4, $a6, 197
	st.b	$a5, $a6, 198
	ld.b	$a2, $a0, 44
	ld.b	$a3, $a0, 48
	ld.b	$a4, $a0, 52
	ld.b	$a0, $a0, 56
	st.b	$a2, $a6, 199
	st.b	$a3, $a6, 200
	st.b	$a4, $a6, 201
	st.b	$a0, $a6, 202
	st.b	$a1, $a6, 203
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end1:
	.size	rsenc_204, .Lfunc_end1-rsenc_204
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
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
	move	$s0, $zero
	addi.d	$s1, $sp, 212
	ori	$s2, $zero, 188
	addi.d	$s3, $sp, 8
	lu12i.w	$a0, 36
	ori	$s4, $a0, 2544
	lu12i.w	$a0, -390646
	ori	$a0, $a0, 161
	lu32i.d	$a0, 41120
	lu52i.d	$s5, $a0, -1526
	ori	$s6, $zero, 204
	b	.LBB2_2
	.p2align	4, , 16
.LBB2_1:                                # %for.end19
                                        #   in Loop: Header=BB2_2 Depth=1
	addi.d	$a0, $sp, 212
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(rsdec_204)
	jirl	$ra, $ra, 0
	addi.w	$s0, $s0, 1
	beq	$s0, $s4, .LBB2_6
.LBB2_2:                                # %for.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_3 Depth 2
                                        #     Child Loop BB2_5 Depth 2
	move	$fp, $zero
	.p2align	4, , 16
.LBB2_3:                                # %for.body3
                                        #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcaddu18i	$ra, %call36(random)
	jirl	$ra, $ra, 0
	stx.b	$a0, $fp, $s1
	addi.d	$fp, $fp, 1
	bne	$fp, $s2, .LBB2_3
# %bb.4:                                # %for.end
                                        #   in Loop: Header=BB2_2 Depth=1
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 212
	pcaddu18i	$ra, %call36(rsenc_204)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(random)
	jirl	$ra, $ra, 0
	andi	$s7, $a0, 127
	beqz	$s7, .LBB2_1
	.p2align	4, , 16
.LBB2_5:                                # %for.body11
                                        #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcaddu18i	$ra, %call36(random)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcaddu18i	$ra, %call36(random)
	jirl	$ra, $ra, 0
	mulh.d	$a1, $a0, $s5
	add.d	$a1, $a1, $a0
	srli.d	$a2, $a1, 63
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $a2
	mul.d	$a1, $a1, $s6
	sub.d	$a0, $a0, $a1
	addi.w	$s7, $s7, -1
	stx.b	$fp, $a0, $s3
	bnez	$s7, .LBB2_5
	b	.LBB2_1
.LBB2_6:                                # %for.end24
	move	$a0, $zero
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
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
                                        # -- End function
	.p2align	5                               # -- Begin function gen_poly
	.type	gen_poly,@function
gen_poly:                               # @gen_poly
# %bb.0:                                # %entry
	pcalau12i	$a0, %pc_hi20(gg)
	addi.d	$a0, $a0, %pc_lo12(gg)
	ori	$a2, $zero, 2
	ori	$a1, $zero, 2
	lu32i.d	$a1, 1
	st.d	$a1, $a0, 0
	addi.d	$a3, $a0, 4
	ori	$a4, $zero, 3
	ori	$a5, $zero, 1
	pcalau12i	$a1, %pc_hi20(index_of)
	addi.d	$a1, $a1, %pc_lo12(index_of)
	lu12i.w	$a6, -522232
	ori	$a6, $a6, 129
	pcalau12i	$a7, %pc_hi20(alpha_to)
	addi.d	$a7, $a7, %pc_lo12(alpha_to)
	ori	$t0, $zero, 17
	ori	$t1, $zero, 2
	b	.LBB3_2
	.p2align	4, , 16
.LBB3_1:                                # %for.end
                                        #   in Loop: Header=BB3_2 Depth=1
	ld.w	$t2, $a0, 0
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $a1, $t2
	add.w	$t2, $t2, $t1
	mul.d	$t3, $t2, $a6
	srli.d	$t3, $t3, 32
	add.w	$t3, $t3, $t2
	bstrpick.d	$t4, $t3, 31, 31
	srai.d	$t3, $t3, 7
	add.d	$t3, $t3, $t4
	slli.d	$t4, $t3, 8
	sub.d	$t3, $t3, $t4
	add.w	$t2, $t2, $t3
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $a7, $t2
	st.w	$t2, $a0, 0
	addi.d	$t1, $t1, 1
	addi.d	$a4, $a4, 1
	addi.d	$a3, $a3, 4
	beq	$t1, $t0, .LBB3_6
.LBB3_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_4 Depth 2
	slli.d	$t2, $t1, 2
	stx.w	$a5, $a0, $t2
	move	$t2, $a3
	move	$t3, $a4
	b	.LBB3_4
	.p2align	4, , 16
.LBB3_3:                                # %for.inc
                                        #   in Loop: Header=BB3_4 Depth=2
	st.w	$t4, $t2, 0
	addi.d	$t3, $t3, -1
	addi.d	$t2, $t2, -4
	bge	$a2, $t3, .LBB3_1
.LBB3_4:                                # %for.body3
                                        #   Parent Loop BB3_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t5, $t2, 0
	ld.w	$t4, $t2, -4
	beqz	$t5, .LBB3_3
# %bb.5:                                # %if.then
                                        #   in Loop: Header=BB3_4 Depth=2
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $a1, $t5
	add.w	$t5, $t5, $t1
	mul.d	$t6, $t5, $a6
	srli.d	$t6, $t6, 32
	add.w	$t6, $t6, $t5
	bstrpick.d	$t7, $t6, 31, 31
	srai.d	$t6, $t6, 7
	add.d	$t6, $t6, $t7
	slli.d	$t7, $t6, 8
	sub.d	$t6, $t6, $t7
	add.w	$t5, $t5, $t6
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $a7, $t5
	xor	$t4, $t5, $t4
	b	.LBB3_3
.LBB3_6:                                # %for.body33.preheader
	slli.d	$a2, $t2, 2
	ldx.w	$a2, $a1, $a2
	ld.w	$a3, $a0, 4
	st.w	$a2, $a0, 0
	ld.w	$a2, $a0, 8
	slli.d	$a3, $a3, 2
	ld.w	$a4, $a0, 12
	ldx.w	$a3, $a1, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a1, $a2
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a1, $a4
	st.w	$a3, $a0, 4
	ld.w	$a3, $a0, 16
	st.w	$a2, $a0, 8
	st.w	$a4, $a0, 12
	ld.w	$a2, $a0, 20
	slli.d	$a3, $a3, 2
	ld.w	$a4, $a0, 24
	ldx.w	$a3, $a1, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a1, $a2
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a1, $a4
	st.w	$a3, $a0, 16
	ld.w	$a3, $a0, 28
	st.w	$a2, $a0, 20
	st.w	$a4, $a0, 24
	ld.w	$a2, $a0, 32
	slli.d	$a3, $a3, 2
	ld.w	$a4, $a0, 36
	ldx.w	$a3, $a1, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a1, $a2
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a1, $a4
	st.w	$a3, $a0, 28
	ld.w	$a3, $a0, 40
	st.w	$a2, $a0, 32
	st.w	$a4, $a0, 36
	ld.w	$a2, $a0, 44
	slli.d	$a3, $a3, 2
	ld.w	$a4, $a0, 48
	ldx.w	$a3, $a1, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a1, $a2
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a1, $a4
	st.w	$a3, $a0, 40
	ld.w	$a3, $a0, 52
	st.w	$a2, $a0, 44
	st.w	$a4, $a0, 48
	ld.w	$a2, $a0, 56
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a1, $a3
	ld.w	$a4, $a0, 60
	slli.d	$a2, $a2, 2
	ld.w	$a5, $a0, 64
	ldx.w	$a2, $a1, $a2
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a1, $a4
	slli.d	$a5, $a5, 2
	ldx.w	$a1, $a1, $a5
	st.w	$a3, $a0, 52
	st.w	$a2, $a0, 56
	st.w	$a4, $a0, 60
	st.w	$a1, $a0, 64
	ret
.Lfunc_end3:
	.size	gen_poly, .Lfunc_end3-gen_poly
                                        # -- End function
	.type	inited,@object                  # @inited
	.local	inited
	.comm	inited,1,4
	.type	recd,@object                    # @recd
	.local	recd
	.comm	recd,1020,32
	.type	index_of,@object                # @index_of
	.local	index_of
	.comm	index_of,1024,4
	.type	data,@object                    # @data
	.local	data
	.comm	data,956,8
	.type	bb,@object                      # @bb
	.local	bb
	.comm	bb,64,8
	.type	alpha_to,@object                # @alpha_to
	.local	alpha_to
	.comm	alpha_to,1024,32
	.type	gg,@object                      # @gg
	.local	gg
	.comm	gg,68,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
