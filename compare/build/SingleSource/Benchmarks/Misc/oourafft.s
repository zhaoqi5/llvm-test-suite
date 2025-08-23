	.file	"oourafft.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI0_0:
	.dword	0x3ff0000000000000              # double 1
	.dword	0x0000000000000000              # double 0
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI0_1:
	.dword	0x3f6921fb54442d18              # double 0.0030679615757712823
.LCPI0_2:
	.dword	0x3ed02e85c0898b71              # double 3.8580246913580248E-6
.LCPI0_3:
	.dword	0xbf50000000000000              # double -9.765625E-4
.LCPI0_4:
	.dword	0x3ddb7cdfd9d7bdbb              # double 1.0E-10
.LCPI0_6:
	.dword	0x3e112e0be826d695              # double 1.0000000000000001E-9
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI0_5:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
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
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 32                   # 8-byte Folded Spill
	addi.d	$a0, $sp, 16
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 16
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 16
	ori	$a1, $zero, 128
	pcaddu18i	$ra, %call36(memalign)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	lu12i.w	$a1, 5
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memalign)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_0)
	move	$s0, $a0
	move	$s1, $zero
	vst	$vr0, $a0, 0
	lu12i.w	$a0, 419827
	ori	$a0, $a0, 3021
	lu32i.d	$a0, 434334
	lu52i.d	$a0, $a0, 1022
	vreplgr2vr.d	$vr0, $a0
	ori	$a0, $zero, 2048
	vstx	$vr0, $s0, $a0
	addi.d	$a0, $s0, 2047
	addi.d	$s2, $a0, 2041
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	fld.d	$fs2, $a0, %pc_lo12(.LCPI0_1)
	addi.d	$s3, $s0, 24
	ori	$s4, $zero, 2
	ori	$s5, $zero, 254
	.p2align	4, , 16
.LBB0_1:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a0, $s4, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fmul.d	$fs0, $fa0, $fs2
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmov.d	$fs1, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fst.d	$fs1, $s3, -8
	fst.d	$fa0, $s3, 0
	fst.d	$fa0, $s2, -8
	fst.d	$fs1, $s2, 0
	addi.d	$s1, $s1, 2
	addi.d	$s2, $s2, -16
	addi.d	$s3, $s3, 16
	addi.w	$s4, $s4, 2
	bltu	$s1, $s5, .LBB0_1
# %bb.2:                                # %makewt.exit
	ori	$a0, $zero, 512
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(bitrv2)
	jirl	$ra, $ra, 0
	lu12i.w	$s2, 4
	ori	$a0, $zero, 16
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memalign)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a0, $zero, 16
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memalign)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $zero, 16
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memalign)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	move	$a1, $zero
	ori	$a0, $zero, 1
	lu12i.w	$a2, 1
	ori	$s5, $a2, 3045
	lu12i.w	$a2, 13
	ori	$s6, $a2, 1525
	lu12i.w	$a2, 8285
	ori	$s7, $a2, 185
	pcalau12i	$a2, %pc_hi20(.LCPI0_2)
	fld.d	$fs0, $a2, %pc_lo12(.LCPI0_2)
	lu12i.w	$a2, 63
	ori	$s8, $a2, 1152
	ori	$a2, $zero, 2048
	move	$a3, $s3
	.p2align	4, , 16
.LBB0_3:                                # %for.body.i67
                                        # =>This Inner Loop Header: Depth=1
	mul.d	$a1, $a1, $s5
	add.d	$a1, $a1, $s6
	bstrpick.d	$a4, $a1, 31, 7
	mul.d	$a4, $a4, $s7
	srli.d	$a4, $a4, 36
	mul.d	$a4, $a4, $s8
	sub.w	$a1, $a1, $a4
	bstrpick.d	$a4, $a1, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fs0
	fst.d	$fa0, $a3, 0
	bstrpick.d	$a4, $a0, 31, 0
	addi.d	$a0, $a0, 1
	addi.d	$a3, $a3, 8
	bne	$a4, $a2, .LBB0_3
# %bb.4:                                # %putdata.exit
	ori	$a0, $zero, 2048
	ori	$s4, $zero, 2048
	move	$a1, $fp
	move	$a2, $s3
	pcaddu18i	$ra, %call36(bitrv2)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2048
	move	$a1, $s3
	move	$a2, $s0
	pcaddu18i	$ra, %call36(cftfsub)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	ori	$a0, $zero, 2048
	move	$a2, $s3
	move	$a3, $fp
	move	$a4, $s0
	pcaddu18i	$ra, %call36(cdft)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_3)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_3)
	move	$a2, $zero
	movgr2fr.d	$fa0, $zero
	ori	$a0, $zero, 1
	move	$a1, $s3
	.p2align	4, , 16
.LBB0_5:                                # %for.body.i71
                                        # =>This Inner Loop Header: Depth=1
	mul.d	$a2, $a2, $s5
	add.d	$a2, $a2, $s6
	bstrpick.d	$a3, $a2, 31, 7
	mul.d	$a3, $a3, $s7
	srli.d	$a3, $a3, 36
	mul.d	$a3, $a3, $s8
	sub.w	$a2, $a2, $a3
	fld.d	$fa2, $a1, 0
	bstrpick.d	$a3, $a2, 31, 0
	movgr2fr.d	$fa3, $a3
	ffint.d.l	$fa3, $fa3
	fmul.d	$fa2, $fa2, $fa1
	fmadd.d	$fa2, $fa3, $fs0, $fa2
	fabs.d	$fa2, $fa2
	fcmp.clt.d	$fcc0, $fa2, $fa0
	fsel	$fa0, $fa2, $fa0, $fcc0
	bstrpick.d	$a3, $a0, 31, 0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	bne	$a3, $s4, .LBB0_5
# %bb.6:                                # %errorcheck.exit
	pcalau12i	$a0, %pc_hi20(.LCPI0_4)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_4)
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB0_20
# %bb.7:                                # %if.end
	lu12i.w	$a2, 4
	move	$a0, $s3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a3, $zero
	ori	$a0, $zero, 1
	ori	$a1, $zero, 1024
	move	$a2, $s3
	.p2align	4, , 16
.LBB0_8:                                # %for.body.i81
                                        # =>This Inner Loop Header: Depth=1
	mul.d	$a3, $a3, $s5
	add.d	$a3, $a3, $s6
	bstrpick.d	$a4, $a3, 31, 7
	mul.d	$a4, $a4, $s7
	srli.d	$a4, $a4, 36
	mul.d	$a4, $a4, $s8
	sub.w	$a3, $a3, $a4
	bstrpick.d	$a4, $a3, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fs0
	fst.d	$fa0, $a2, 0
	bstrpick.d	$a4, $a0, 31, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 8
	bne	$a4, $a1, .LBB0_8
# %bb.9:                                # %putdata.exit93
	ori	$a0, $zero, 2048
	move	$a1, $fp
	move	$a2, $s3
	pcaddu18i	$ra, %call36(bitrv2)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2048
	move	$a1, $s3
	move	$a2, $s0
	pcaddu18i	$ra, %call36(cftfsub)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_5)
	xvld	$xr0, $a0, %pc_lo12(.LCPI0_5)
	ori	$a0, $zero, 1024
	.p2align	4, , 16
.LBB0_10:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvslli.d	$xr1, $xr0, 4
	xvpickve2gr.d	$a1, $xr1, 0
	add.d	$a1, $s3, $a1
	xvpickve2gr.d	$a2, $xr1, 1
	add.d	$a2, $s3, $a2
	xvpickve2gr.d	$a3, $xr1, 2
	add.d	$a3, $s3, $a3
	xvpickve2gr.d	$a4, $xr1, 3
	add.d	$a4, $s3, $a4
	fld.d	$fa1, $a1, 8
	fld.d	$fa2, $a2, 8
	fld.d	$fa3, $a3, 8
	fld.d	$fa4, $a4, 8
	xvinsve0.d	$xr1, $xr2, 1
	xvinsve0.d	$xr1, $xr3, 2
	xvinsve0.d	$xr1, $xr4, 3
	xvbitrevi.d	$xr1, $xr1, 63
	xvstelm.d	$xr1, $a1, 8, 0
	xvstelm.d	$xr1, $a2, 8, 1
	xvstelm.d	$xr1, $a3, 8, 2
	xvstelm.d	$xr1, $a4, 8, 3
	addi.d	$a0, $a0, -4
	xvaddi.du	$xr0, $xr0, 4
	bnez	$a0, .LBB0_10
# %bb.11:                               # %for.end
	lu12i.w	$s4, 4
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	move	$a0, $s2
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a3, $zero
	ori	$a0, $zero, 1
	ori	$a1, $zero, 1024
	.p2align	4, , 16
.LBB0_12:                               # %for.body.i94
                                        # =>This Inner Loop Header: Depth=1
	mul.d	$a3, $a3, $s5
	add.d	$a3, $a3, $s6
	bstrpick.d	$a4, $a3, 31, 7
	mul.d	$a4, $a4, $s7
	srli.d	$a4, $a4, 36
	mul.d	$a4, $a4, $s8
	sub.w	$a3, $a3, $a4
	bstrpick.d	$a4, $a3, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fs0
	fst.d	$fa0, $s2, 0
	bstrpick.d	$a4, $a0, 31, 0
	addi.d	$a0, $a0, 1
	addi.d	$s2, $s2, 8
	bne	$a4, $a1, .LBB0_12
# %bb.13:                               # %putdata.exit106
	addi.d	$a0, $sp, 16
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	move	$s7, $zero
	lu12i.w	$s8, -4
	ori	$s6, $s4, 8
	addi.w	$s5, $zero, -1
	lu12i.w	$a0, 36
	ori	$s2, $a0, 2544
	.p2align	4, , 16
.LBB0_14:                               # %for.body23
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
	move	$a0, $s1
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2048
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(bitrv2)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2048
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(cftfsub)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	.p2align	4, , 16
.LBB0_15:                               # %for.body27
                                        #   Parent Loop BB0_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a1, $s1, $a0
	fldx.d	$fa0, $a1, $s4
	add.d	$a2, $s3, $a0
	fldx.d	$fa1, $a2, $s6
	fldx.d	$fa2, $a1, $s6
	fldx.d	$fa3, $a2, $s4
	fneg.d	$fa4, $fa1
	fmul.d	$fa4, $fa2, $fa4
	fmadd.d	$fa4, $fa0, $fa3, $fa4
	fstx.d	$fa4, $a1, $s4
	fmul.d	$fa2, $fa3, $fa2
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	addi.d	$a0, $a0, 16
	fstx.d	$fa0, $a1, $s6
	bnez	$a0, .LBB0_15
# %bb.16:                               # %for.end55
                                        #   in Loop: Header=BB0_14 Depth=1
	ori	$a0, $zero, 2048
	move	$a1, $s5
	move	$a2, $s1
	move	$a3, $fp
	move	$a4, $s0
	pcaddu18i	$ra, %call36(cdft)
	jirl	$ra, $ra, 0
	addi.w	$s7, $s7, 1
	bne	$s7, $s2, .LBB0_14
# %bb.17:                               # %for.end58
	addi.d	$a0, $sp, 16
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	lu12i.w	$s2, -4
	pcalau12i	$a0, %pc_hi20(.LCPI0_6)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI0_6)
	movgr2fr.d	$fs1, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s5, $a0, %pc_lo12(.L.str.1)
	.p2align	4, , 16
.LBB0_18:                               # %for.body66
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a0, $s1, $s2
	fldx.d	$fa0, $a0, $s4
	fldx.d	$fa1, $a0, $s6
	fabs.d	$fa2, $fa0
	fcmp.clt.d	$fcc0, $fs0, $fa2
	fsel	$fa0, $fs1, $fa0, $fcc0
	fabs.d	$fa2, $fa1
	fcmp.clt.d	$fcc0, $fs0, $fa2
	fsel	$fa1, $fs1, $fa1, $fcc0
	movfr2gr.d	$a1, $fa0
	movfr2gr.d	$a2, $fa1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 16
	bnez	$s2, .LBB0_18
# %bb.19:                               # %for.end92
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fld.d	$fs2, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
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
.LBB0_20:                               # %if.then
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function get_time
.LCPI1_0:
	.dword	0x3eb0c6f7a0b5ed8d              # double 9.9999999999999995E-7
	.text
	.globl	get_time
	.p2align	5
	.type	get_time,@function
get_time:                               # @get_time
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $sp, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8
	movgr2fr.d	$fa0, $a0
	ld.d	$a0, $sp, 16
	pcalau12i	$a1, %pc_hi20(.LCPI1_0)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI1_0)
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa2, $a0
	ffint.d.l	$fa2, $fa2
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end1:
	.size	get_time, .Lfunc_end1-get_time
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function makewt
.LCPI2_0:
	.dword	0x3fe921fb54442d18              # double 0.78539816339744828
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI2_1:
	.dword	0x3ff0000000000000              # double 1
	.dword	0x0000000000000000              # double 0
	.text
	.globl	makewt
	.p2align	5
	.type	makewt,@function
makewt:                                 # @makewt
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
	ori	$a3, $zero, 3
	blt	$a0, $a3, .LBB2_5
# %bb.1:                                # %if.then
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	bstrpick.d	$s2, $a0, 31, 1
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI2_0)
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_1)
	movgr2fr.d	$fa2, $s2
	ffint.d.l	$fa2, $fa2
	fdiv.d	$fs2, $fa0, $fa2
	vst	$vr1, $a2, 0
	fmul.d	$fa0, $fs2, $fa2
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	alsl.d	$a0, $s2, $fp, 3
	slli.d	$a1, $s2, 3
	fstx.d	$fa0, $fp, $a1
	ori	$a1, $zero, 6
	fst.d	$fa0, $a0, 8
	bltu	$s1, $a1, .LBB2_5
# %bb.2:                                # %for.body.preheader
	addi.w	$s2, $s2, 0
	alsl.d	$a0, $s1, $fp, 3
	addi.d	$s3, $a0, -8
	addi.d	$s4, $fp, 24
	ori	$s5, $zero, 2
	ori	$s6, $zero, 2
	.p2align	4, , 16
.LBB2_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a0, $s5, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fmul.d	$fs0, $fs2, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmov.d	$fs1, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fst.d	$fs1, $s4, -8
	fst.d	$fa0, $s4, 0
	fst.d	$fa0, $s3, -8
	fst.d	$fs1, $s3, 0
	addi.d	$s6, $s6, 2
	addi.d	$s3, $s3, -16
	addi.w	$s5, $s5, 2
	addi.d	$s4, $s4, 16
	bltu	$s6, $s2, .LBB2_3
# %bb.4:                                # %for.end
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
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
	pcaddu18i	$t8, %call36(bitrv2)
	jr	$t8
.LBB2_5:                                # %if.end32
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
.Lfunc_end2:
	.size	makewt, .Lfunc_end2-makewt
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function putdata
.LCPI3_0:
	.dword	0x3ed02e85c0898b71              # double 3.8580246913580248E-6
	.text
	.globl	putdata
	.p2align	5
	.type	putdata,@function
putdata:                                # @putdata
# %bb.0:                                # %entry
	blt	$a1, $a0, .LBB3_3
# %bb.1:                                # %for.body.preheader
	move	$a3, $zero
	alsl.d	$a2, $a0, $a2, 3
	sub.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 1
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3045
	lu12i.w	$a4, 13
	ori	$a4, $a4, 1525
	lu12i.w	$a5, 8285
	pcalau12i	$a6, %pc_hi20(.LCPI3_0)
	fld.d	$fa0, $a6, %pc_lo12(.LCPI3_0)
	ori	$a5, $a5, 185
	lu12i.w	$a6, 63
	ori	$a6, $a6, 1152
	.p2align	4, , 16
.LBB3_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	mul.d	$a3, $a3, $a1
	add.d	$a3, $a3, $a4
	bstrpick.d	$a7, $a3, 31, 7
	mul.d	$a7, $a7, $a5
	srli.d	$a7, $a7, 36
	mul.d	$a7, $a7, $a6
	sub.w	$a3, $a3, $a7
	bstrpick.d	$a7, $a3, 31, 0
	movgr2fr.d	$fa1, $a7
	ffint.d.l	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $a2, 0
	addi.w	$a0, $a0, -1
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB3_2
.LBB3_3:                                # %for.end
	ret
.Lfunc_end3:
	.size	putdata, .Lfunc_end3-putdata
                                        # -- End function
	.globl	cdft                            # -- Begin function cdft
	.p2align	5
	.type	cdft,@function
cdft:                                   # @cdft
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	ori	$a5, $zero, 5
	move	$s0, $a4
	move	$fp, $a2
	move	$s1, $a0
	blt	$a0, $a5, .LBB4_3
# %bb.1:                                # %if.then
	bltz	$a1, .LBB4_5
# %bb.2:                                # %if.then2
	move	$a0, $s1
	move	$a1, $a3
	move	$a2, $fp
	pcaddu18i	$ra, %call36(bitrv2)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	b	.LBB4_4
.LBB4_3:                                # %if.else3
	ori	$a0, $zero, 4
	bne	$s1, $a0, .LBB4_48
.LBB4_4:                                # %if.end7.sink.split
	move	$a1, $fp
	move	$a2, $s0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(cftfsub)
	jr	$t8
.LBB4_5:                                # %if.else
	ori	$a0, $zero, 9
	st.w	$zero, $a3, 0
	bltu	$s1, $a0, .LBB4_22
# %bb.6:                                # %while.body.i.preheader
	ori	$a1, $zero, 1
	ori	$a2, $zero, 4
	ori	$a4, $zero, 16
	ori	$a0, $zero, 1
	move	$a5, $s1
	b	.LBB4_8
	.p2align	4, , 16
.LBB4_7:                                # %for.end.i
                                        #   in Loop: Header=BB4_8 Depth=1
	slli.w	$a7, $a6, 4
	addi.w	$t0, $a5, 0
	slli.w	$a0, $a6, 1
	bge	$a7, $t0, .LBB4_23
.LBB4_8:                                # %while.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_14 Depth 2
                                        #     Child Loop BB4_18 Depth 2
                                        #     Child Loop BB4_21 Depth 2
	move	$a6, $a0
	bstrpick.d	$a5, $a5, 31, 1
	blt	$a0, $a1, .LBB4_7
# %bb.9:                                # %iter.check
                                        #   in Loop: Header=BB4_8 Depth=1
	slli.d	$a0, $a6, 2
	bgeu	$a6, $a2, .LBB4_11
# %bb.10:                               #   in Loop: Header=BB4_8 Depth=1
	move	$a7, $zero
	b	.LBB4_20
	.p2align	4, , 16
.LBB4_11:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB4_8 Depth=1
	bgeu	$a6, $a4, .LBB4_13
# %bb.12:                               #   in Loop: Header=BB4_8 Depth=1
	move	$a7, $zero
	b	.LBB4_17
.LBB4_13:                               # %vector.ph
                                        #   in Loop: Header=BB4_8 Depth=1
	bstrpick.d	$a7, $a6, 30, 4
	slli.d	$a7, $a7, 4
	xvreplgr2vr.w	$xr0, $a5
	move	$t0, $a3
	move	$t1, $a7
	.p2align	4, , 16
.LBB4_14:                               # %vector.body
                                        #   Parent Loop BB4_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr1, $t0, 0
	xvld	$xr2, $t0, 32
	xvadd.w	$xr1, $xr1, $xr0
	xvadd.w	$xr2, $xr2, $xr0
	add.d	$t2, $t0, $a0
	xvstx	$xr1, $t0, $a0
	xvst	$xr2, $t2, 32
	addi.d	$t1, $t1, -16
	addi.d	$t0, $t0, 64
	bnez	$t1, .LBB4_14
# %bb.15:                               # %middle.block
                                        #   in Loop: Header=BB4_8 Depth=1
	beq	$a7, $a6, .LBB4_7
# %bb.16:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB4_8 Depth=1
	andi	$t0, $a6, 12
	beqz	$t0, .LBB4_20
.LBB4_17:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB4_8 Depth=1
	move	$t1, $a7
	bstrpick.d	$a7, $a6, 30, 2
	slli.d	$a7, $a7, 2
	vreplgr2vr.w	$vr0, $a5
	sub.d	$t0, $t1, $a7
	alsl.d	$t1, $t1, $a3, 2
	.p2align	4, , 16
.LBB4_18:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB4_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr1, $t1, 0
	vadd.w	$vr1, $vr1, $vr0
	vstx	$vr1, $t1, $a0
	addi.d	$t0, $t0, 4
	addi.d	$t1, $t1, 16
	bnez	$t0, .LBB4_18
# %bb.19:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB4_8 Depth=1
	beq	$a7, $a6, .LBB4_7
.LBB4_20:                               # %for.body.i.preheader
                                        #   in Loop: Header=BB4_8 Depth=1
	sub.d	$t0, $a6, $a7
	alsl.d	$a7, $a7, $a3, 2
	.p2align	4, , 16
.LBB4_21:                               # %for.body.i
                                        #   Parent Loop BB4_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t1, $a7, 0
	add.d	$t1, $t1, $a5
	stx.w	$t1, $a7, $a0
	addi.d	$t0, $t0, -1
	addi.d	$a7, $a7, 4
	bnez	$t0, .LBB4_21
	b	.LBB4_7
.LBB4_22:                               # %while.end.thread.i
	ori	$a1, $zero, 2
	ori	$a2, $zero, 8
	ori	$a0, $zero, 1
	beq	$s1, $a2, .LBB4_25
	b	.LBB4_32
.LBB4_23:                               # %while.end.i
	slli.d	$a1, $a6, 2
	bne	$a7, $t0, .LBB4_32
# %bb.24:                               # %for.cond9.preheader.i
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB4_37
.LBB4_25:                               # %for.cond12.preheader.lr.ph.i
	move	$a2, $zero
	slli.d	$a4, $a0, 2
	bstrpick.d	$a5, $a1, 31, 0
	slli.d	$a5, $a5, 3
	b	.LBB4_28
	.p2align	4, , 16
.LBB4_26:                               #   in Loop: Header=BB4_28 Depth=1
	move	$a6, $zero
.LBB4_27:                               # %for.end119.i
                                        #   in Loop: Header=BB4_28 Depth=1
	alsl.d	$a7, $a6, $fp, 3
	fld.d	$fa0, $a7, 8
	fneg.d	$fa0, $fa0
	fst.d	$fa0, $a7, 8
	add.w	$a6, $a6, $a1
	add.w	$a7, $a6, $a1
	alsl.d	$t0, $a6, $fp, 3
	slli.d	$a6, $a6, 3
	fld.d	$fa0, $t0, 8
	alsl.d	$t1, $a7, $fp, 3
	slli.d	$t2, $a7, 3
	fld.d	$fa1, $t1, 8
	fldx.d	$fa2, $fp, $t2
	fldx.d	$fa3, $fp, $a6
	fneg.d	$fa0, $fa0
	fneg.d	$fa1, $fa1
	fstx.d	$fa2, $fp, $a6
	fst.d	$fa1, $t0, 8
	fstx.d	$fa3, $fp, $t2
	fst.d	$fa0, $t1, 8
	add.w	$a6, $a7, $a1
	alsl.d	$a6, $a6, $fp, 3
	fld.d	$fa0, $a6, 8
	fneg.d	$fa0, $fa0
	addi.d	$a2, $a2, 1
	fst.d	$fa0, $a6, 8
	beq	$a2, $a0, .LBB4_37
.LBB4_28:                               # %for.cond12.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_30 Depth 2
	beqz	$a2, .LBB4_26
# %bb.29:                               # %for.body14.lr.ph.i
                                        #   in Loop: Header=BB4_28 Depth=1
	slli.d	$a6, $a2, 2
	ldx.w	$a6, $a3, $a6
	slli.d	$a7, $a2, 1
	alsl.d	$t0, $a6, $fp, 3
	move	$t1, $a3
	move	$t2, $a2
	.p2align	4, , 16
.LBB4_30:                               # %for.body14.i
                                        #   Parent Loop BB4_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t3, $t1, 0
	add.w	$t3, $t3, $a7
	fld.d	$fa0, $t0, 8
	alsl.d	$t4, $t3, $fp, 3
	slli.d	$t5, $t3, 3
	fld.d	$fa1, $t4, 8
	fldx.d	$fa2, $fp, $t5
	fld.d	$fa3, $t0, 0
	fneg.d	$fa0, $fa0
	fneg.d	$fa1, $fa1
	fst.d	$fa2, $t0, 0
	fst.d	$fa1, $t0, 8
	fstx.d	$fa3, $fp, $t5
	fst.d	$fa0, $t4, 8
	add.w	$t3, $t3, $a4
	add.d	$t4, $t0, $a5
	fld.d	$fa0, $t4, 8
	alsl.d	$t5, $t3, $fp, 3
	slli.d	$t6, $t3, 3
	fld.d	$fa1, $t5, 8
	fldx.d	$fa2, $fp, $t6
	fldx.d	$fa3, $t0, $a5
	fneg.d	$fa0, $fa0
	fneg.d	$fa1, $fa1
	fstx.d	$fa2, $t0, $a5
	fst.d	$fa1, $t4, 8
	fstx.d	$fa3, $fp, $t6
	fst.d	$fa0, $t5, 8
	sub.w	$t3, $t3, $a1
	add.d	$t5, $t4, $a5
	fld.d	$fa0, $t5, 8
	alsl.d	$t6, $t3, $fp, 3
	slli.d	$t7, $t3, 3
	fld.d	$fa1, $t6, 8
	fldx.d	$fa2, $fp, $t7
	fldx.d	$fa3, $t4, $a5
	fneg.d	$fa0, $fa0
	fneg.d	$fa1, $fa1
	fstx.d	$fa2, $t4, $a5
	fst.d	$fa1, $t5, 8
	fstx.d	$fa3, $fp, $t7
	fst.d	$fa0, $t6, 8
	add.w	$t3, $t3, $a4
	add.d	$t4, $t5, $a5
	fld.d	$fa0, $t4, 8
	alsl.d	$t6, $t3, $fp, 3
	slli.d	$t3, $t3, 3
	fld.d	$fa1, $t6, 8
	fldx.d	$fa2, $fp, $t3
	fldx.d	$fa3, $t5, $a5
	fneg.d	$fa0, $fa0
	fneg.d	$fa1, $fa1
	fstx.d	$fa2, $t5, $a5
	fst.d	$fa1, $t4, 8
	fstx.d	$fa3, $fp, $t3
	fst.d	$fa0, $t6, 8
	addi.d	$t2, $t2, -1
	addi.d	$t1, $t1, 4
	addi.d	$t0, $t0, 16
	bnez	$t2, .LBB4_30
# %bb.31:                               # %for.end119.loopexit.i
                                        #   in Loop: Header=BB4_28 Depth=1
	add.w	$a6, $a6, $a7
	b	.LBB4_27
.LBB4_32:                               # %if.else.i
	fld.d	$fa0, $fp, 8
	fneg.d	$fa0, $fa0
	fst.d	$fa0, $fp, 8
	addi.w	$a4, $a1, 0
	alsl.d	$a2, $a4, $fp, 3
	fld.d	$fa0, $a2, 8
	fneg.d	$fa0, $fa0
	ori	$a5, $zero, 2
	fst.d	$fa0, $a2, 8
	blt	$a0, $a5, .LBB4_37
# %bb.33:                               # %for.cond179.preheader.preheader.i
	addi.d	$a2, $fp, 8
	slli.d	$a4, $a4, 3
	ori	$a5, $zero, 1
	.p2align	4, , 16
.LBB4_34:                               # %for.cond179.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_35 Depth 2
	slli.d	$a6, $a5, 2
	ldx.w	$a6, $a3, $a6
	slli.d	$a7, $a5, 1
	alsl.d	$t0, $a6, $a2, 3
	move	$t1, $a3
	move	$t2, $a5
	.p2align	4, , 16
.LBB4_35:                               # %for.body181.i
                                        #   Parent Loop BB4_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t3, $t1, 0
	add.w	$t3, $t3, $a7
	fld.d	$fa0, $t0, 0
	alsl.d	$t4, $t3, $fp, 3
	slli.d	$t5, $t3, 3
	fld.d	$fa1, $t4, 8
	fldx.d	$fa2, $fp, $t5
	fld.d	$fa3, $t0, -8
	fneg.d	$fa0, $fa0
	fneg.d	$fa1, $fa1
	fst.d	$fa2, $t0, -8
	fst.d	$fa1, $t0, 0
	fstx.d	$fa3, $fp, $t5
	fst.d	$fa0, $t4, 8
	add.w	$t3, $t3, $a1
	add.d	$t4, $t0, $a4
	fldx.d	$fa0, $t0, $a4
	alsl.d	$t5, $t3, $fp, 3
	slli.d	$t3, $t3, 3
	fld.d	$fa1, $t5, 8
	fldx.d	$fa2, $fp, $t3
	fld.d	$fa3, $t4, -8
	fneg.d	$fa0, $fa0
	fneg.d	$fa1, $fa1
	fst.d	$fa2, $t4, -8
	fstx.d	$fa1, $t0, $a4
	fstx.d	$fa3, $fp, $t3
	fst.d	$fa0, $t5, 8
	addi.d	$t2, $t2, -1
	addi.d	$t1, $t1, 4
	addi.d	$t0, $t0, 16
	bnez	$t2, .LBB4_35
# %bb.36:                               # %for.end238.i
                                        #   in Loop: Header=BB4_34 Depth=1
	add.w	$a6, $a7, $a6
	alsl.d	$a7, $a6, $fp, 3
	fld.d	$fa0, $a7, 8
	fneg.d	$fa0, $fa0
	fst.d	$fa0, $a7, 8
	add.w	$a6, $a6, $a1
	alsl.d	$a6, $a6, $fp, 3
	fld.d	$fa0, $a6, 8
	fneg.d	$fa0, $fa0
	addi.d	$a5, $a5, 1
	fst.d	$fa0, $a6, 8
	bne	$a5, $a0, .LBB4_34
.LBB4_37:                               # %bitrv2conj.exit
	ori	$a0, $zero, 9
	ori	$s2, $zero, 2
	bltu	$s1, $a0, .LBB4_41
# %bb.38:                               # %if.then.i
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(cft1st)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 33
	ori	$s2, $zero, 8
	bltu	$s1, $a0, .LBB4_41
# %bb.39:                               # %while.body.i26.preheader
	ori	$a1, $zero, 8
	ori	$a0, $zero, 32
	.p2align	4, , 16
.LBB4_40:                               # %while.body.i26
                                        # =>This Inner Loop Header: Depth=1
	move	$s2, $a0
	move	$a0, $s1
	move	$a2, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(cftmdl)
	jirl	$ra, $ra, 0
	slli.w	$a0, $s2, 2
	move	$a1, $s2
	blt	$a0, $s1, .LBB4_40
.LBB4_41:                               # %if.end.i
	slli.w	$a0, $s2, 2
	bne	$a0, $s1, .LBB4_45
# %bb.42:                               # %for.cond.preheader.i
	ori	$a0, $zero, 1
	blt	$s2, $a0, .LBB4_48
# %bb.43:                               # %for.body.preheader.i20
	move	$a0, $zero
	slli.d	$a1, $s2, 4
	addi.d	$a2, $fp, 8
	alsl.d	$a3, $s2, $a1, 3
	slli.d	$a4, $s2, 3
	.p2align	4, , 16
.LBB4_44:                               # %for.body.i21
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a2, -8
	add.d	$a5, $a2, $a4
	fld.d	$fa1, $a5, -8
	fld.d	$fa2, $a2, 0
	fldx.d	$fa3, $a2, $a4
	fadd.d	$fa4, $fa0, $fa1
	fneg.d	$fa5, $fa2
	fsub.d	$fa5, $fa5, $fa3
	add.d	$a6, $a2, $a1
	fld.d	$fa6, $a6, -8
	add.d	$a7, $a2, $a3
	fld.d	$fa7, $a7, -8
	fldx.d	$ft0, $a2, $a1
	fldx.d	$ft1, $a2, $a3
	fsub.d	$fa0, $fa0, $fa1
	fsub.d	$fa1, $fa3, $fa2
	fadd.d	$fa2, $fa6, $fa7
	fadd.d	$fa3, $ft0, $ft1
	fsub.d	$fa6, $fa6, $fa7
	fsub.d	$fa7, $ft0, $ft1
	fadd.d	$ft0, $fa4, $fa2
	fst.d	$ft0, $a2, -8
	fsub.d	$ft0, $fa5, $fa3
	fst.d	$ft0, $a2, 0
	fsub.d	$fa2, $fa4, $fa2
	fst.d	$fa2, $a6, -8
	fadd.d	$fa2, $fa5, $fa3
	fstx.d	$fa2, $a2, $a1
	fsub.d	$fa2, $fa0, $fa7
	fst.d	$fa2, $a5, -8
	fsub.d	$fa2, $fa1, $fa6
	fstx.d	$fa2, $a2, $a4
	fadd.d	$fa0, $fa0, $fa7
	fst.d	$fa0, $a7, -8
	fadd.d	$fa0, $fa1, $fa6
	fstx.d	$fa0, $a2, $a3
	addi.d	$a0, $a0, 2
	addi.d	$a2, $a2, 16
	bltu	$a0, $s2, .LBB4_44
	b	.LBB4_48
.LBB4_45:                               # %for.cond84.preheader.i
	ori	$a0, $zero, 1
	blt	$s2, $a0, .LBB4_48
# %bb.46:                               # %for.body86.preheader.i
	move	$a0, $zero
	slli.d	$a1, $s2, 3
	.p2align	4, , 16
.LBB4_47:                               # %for.body86.i
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $fp, 0
	add.d	$a2, $fp, $a1
	fldx.d	$fa1, $fp, $a1
	fld.d	$fa2, $fp, 8
	fld.d	$fa3, $a2, 8
	fsub.d	$fa4, $fa0, $fa1
	fsub.d	$fa5, $fa3, $fa2
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $fp, 0
	fneg.d	$fa0, $fa2
	fsub.d	$fa0, $fa0, $fa3
	fst.d	$fa0, $fp, 8
	fstx.d	$fa4, $fp, $a1
	fst.d	$fa5, $a2, 8
	addi.d	$a0, $a0, 2
	addi.d	$fp, $fp, 16
	bltu	$a0, $s2, .LBB4_47
.LBB4_48:                               # %if.end7
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end4:
	.size	cdft, .Lfunc_end4-cdft
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function errorcheck
.LCPI5_0:
	.dword	0x3ed02e85c0898b71              # double 3.8580246913580248E-6
	.text
	.globl	errorcheck
	.p2align	5
	.type	errorcheck,@function
errorcheck:                             # @errorcheck
# %bb.0:                                # %entry
	bge	$a1, $a0, .LBB5_2
# %bb.1:
	movgr2fr.d	$fa0, $zero
	ret
.LBB5_2:                                # %for.body.lr.ph
	move	$a3, $zero
	fneg.d	$fa1, $fa0
	alsl.d	$a2, $a0, $a2, 3
	sub.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 1
	movgr2fr.d	$fa0, $zero
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3045
	lu12i.w	$a4, 13
	ori	$a4, $a4, 1525
	lu12i.w	$a5, 8285
	pcalau12i	$a6, %pc_hi20(.LCPI5_0)
	fld.d	$fa2, $a6, %pc_lo12(.LCPI5_0)
	ori	$a5, $a5, 185
	lu12i.w	$a6, 63
	ori	$a6, $a6, 1152
	.p2align	4, , 16
.LBB5_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	mul.d	$a3, $a3, $a1
	add.d	$a3, $a3, $a4
	bstrpick.d	$a7, $a3, 31, 7
	mul.d	$a7, $a7, $a5
	srli.d	$a7, $a7, 36
	mul.d	$a7, $a7, $a6
	sub.w	$a3, $a3, $a7
	fld.d	$fa3, $a2, 0
	bstrpick.d	$a7, $a3, 31, 0
	movgr2fr.d	$fa4, $a7
	ffint.d.l	$fa4, $fa4
	fmul.d	$fa3, $fa3, $fa1
	fmadd.d	$fa3, $fa4, $fa2, $fa3
	fabs.d	$fa3, $fa3
	fcmp.clt.d	$fcc0, $fa3, $fa0
	fsel	$fa0, $fa3, $fa0, $fcc0
	addi.w	$a0, $a0, -1
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB5_3
# %bb.4:                                # %for.end
	ret
.Lfunc_end5:
	.size	errorcheck, .Lfunc_end5-errorcheck
                                        # -- End function
	.p2align	5                               # -- Begin function bitrv2
	.type	bitrv2,@function
bitrv2:                                 # @bitrv2
# %bb.0:                                # %entry
	ori	$a3, $zero, 9
	st.w	$zero, $a1, 0
	bltu	$a0, $a3, .LBB6_17
# %bb.1:                                # %while.body.preheader
	ori	$a4, $zero, 1
	ori	$a5, $zero, 4
	ori	$a6, $zero, 16
	ori	$a3, $zero, 1
	b	.LBB6_3
	.p2align	4, , 16
.LBB6_2:                                # %for.end
                                        #   in Loop: Header=BB6_3 Depth=1
	slli.w	$t0, $a7, 4
	addi.w	$t1, $a0, 0
	slli.w	$a3, $a7, 1
	bge	$t0, $t1, .LBB6_19
.LBB6_3:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_9 Depth 2
                                        #     Child Loop BB6_13 Depth 2
                                        #     Child Loop BB6_16 Depth 2
	move	$a7, $a3
	bstrpick.d	$a0, $a0, 31, 1
	blt	$a3, $a4, .LBB6_2
# %bb.4:                                # %iter.check
                                        #   in Loop: Header=BB6_3 Depth=1
	slli.d	$a3, $a7, 2
	bgeu	$a7, $a5, .LBB6_6
# %bb.5:                                #   in Loop: Header=BB6_3 Depth=1
	move	$t0, $zero
	b	.LBB6_15
	.p2align	4, , 16
.LBB6_6:                                # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB6_3 Depth=1
	bgeu	$a7, $a6, .LBB6_8
# %bb.7:                                #   in Loop: Header=BB6_3 Depth=1
	move	$t0, $zero
	b	.LBB6_12
.LBB6_8:                                # %vector.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	bstrpick.d	$t0, $a7, 30, 4
	slli.d	$t0, $t0, 4
	xvreplgr2vr.w	$xr0, $a0
	move	$t1, $a1
	move	$t2, $t0
	.p2align	4, , 16
.LBB6_9:                                # %vector.body
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr1, $t1, 0
	xvld	$xr2, $t1, 32
	xvadd.w	$xr1, $xr1, $xr0
	xvadd.w	$xr2, $xr2, $xr0
	add.d	$t3, $t1, $a3
	xvstx	$xr1, $t1, $a3
	xvst	$xr2, $t3, 32
	addi.d	$t2, $t2, -16
	addi.d	$t1, $t1, 64
	bnez	$t2, .LBB6_9
# %bb.10:                               # %middle.block
                                        #   in Loop: Header=BB6_3 Depth=1
	beq	$t0, $a7, .LBB6_2
# %bb.11:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB6_3 Depth=1
	andi	$t1, $a7, 12
	beqz	$t1, .LBB6_15
.LBB6_12:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	move	$t2, $t0
	bstrpick.d	$t0, $a7, 30, 2
	slli.d	$t0, $t0, 2
	vreplgr2vr.w	$vr0, $a0
	sub.d	$t1, $t2, $t0
	alsl.d	$t2, $t2, $a1, 2
	.p2align	4, , 16
.LBB6_13:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr1, $t2, 0
	vadd.w	$vr1, $vr1, $vr0
	vstx	$vr1, $t2, $a3
	addi.d	$t1, $t1, 4
	addi.d	$t2, $t2, 16
	bnez	$t1, .LBB6_13
# %bb.14:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB6_3 Depth=1
	beq	$t0, $a7, .LBB6_2
.LBB6_15:                               # %for.body.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	alsl.d	$t1, $t0, $a1, 2
	sub.d	$t0, $a7, $t0
	.p2align	4, , 16
.LBB6_16:                               # %for.body
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t2, $t1, 0
	add.d	$t2, $t2, $a0
	stx.w	$t2, $t1, $a3
	addi.d	$t0, $t0, -1
	addi.d	$t1, $t1, 4
	bnez	$t0, .LBB6_16
	b	.LBB6_2
.LBB6_17:                               # %while.end.thread
	ori	$a3, $zero, 8
	bne	$a0, $a3, .LBB6_32
# %bb.18:
	ori	$a0, $zero, 2
	ori	$a3, $zero, 1
	b	.LBB6_21
.LBB6_19:                               # %while.end
	slli.d	$a0, $a7, 2
	bne	$t0, $t1, .LBB6_27
# %bb.20:                               # %for.cond9.preheader
	ori	$a4, $zero, 1
	blt	$a3, $a4, .LBB6_32
.LBB6_21:                               # %for.cond12.preheader.lr.ph
	move	$a4, $zero
	slli.d	$a5, $a3, 2
	bstrpick.d	$a6, $a0, 31, 0
	slli.d	$a7, $a6, 4
	alsl.d	$t0, $a6, $a7, 3
	b	.LBB6_24
	.p2align	4, , 16
.LBB6_22:                               #   in Loop: Header=BB6_24 Depth=1
	move	$t1, $zero
.LBB6_23:                               # %for.end112
                                        #   in Loop: Header=BB6_24 Depth=1
	add.d	$t2, $a3, $a4
	alsl.w	$t3, $t2, $t1, 1
	alsl.d	$t1, $t2, $t1, 1
	add.w	$t1, $t1, $a0
	slli.d	$t1, $t1, 3
	vldx	$vr0, $a2, $t1
	slli.d	$t2, $t3, 3
	vldx	$vr1, $a2, $t2
	vstx	$vr0, $a2, $t2
	addi.d	$a4, $a4, 1
	vstx	$vr1, $a2, $t1
	beq	$a4, $a3, .LBB6_32
.LBB6_24:                               # %for.cond12.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_26 Depth 2
	beqz	$a4, .LBB6_22
# %bb.25:                               # %for.body14.lr.ph
                                        #   in Loop: Header=BB6_24 Depth=1
	slli.d	$t1, $a4, 2
	ldx.w	$t1, $a1, $t1
	slli.d	$t2, $a4, 1
	alsl.d	$t3, $t1, $a2, 3
	add.d	$t4, $a6, $t1
	alsl.d	$t4, $t4, $a2, 3
	move	$t5, $a4
	move	$t6, $a1
	.p2align	4, , 16
.LBB6_26:                               # %for.body14
                                        #   Parent Loop BB6_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t7, $t6, 0
	add.w	$t7, $t7, $t2
	slli.d	$t8, $t7, 3
	vldx	$vr0, $a2, $t8
	vld	$vr1, $t3, 0
	vst	$vr0, $t3, 0
	vstx	$vr1, $a2, $t8
	add.w	$t7, $t7, $a5
	slli.d	$t8, $t7, 3
	vldx	$vr0, $a2, $t8
	vld	$vr1, $t4, 0
	vst	$vr0, $t4, 0
	vstx	$vr1, $a2, $t8
	sub.w	$t7, $t7, $a0
	slli.d	$t8, $t7, 3
	vldx	$vr0, $a2, $t8
	vldx	$vr1, $t3, $a7
	vstx	$vr0, $t3, $a7
	vstx	$vr1, $a2, $t8
	add.w	$t7, $t7, $a5
	slli.d	$t7, $t7, 3
	vldx	$vr0, $a2, $t7
	vldx	$vr1, $t3, $t0
	vstx	$vr0, $t3, $t0
	vstx	$vr1, $a2, $t7
	addi.d	$t3, $t3, 16
	addi.d	$t4, $t4, 16
	addi.d	$t5, $t5, -1
	addi.d	$t6, $t6, 4
	bnez	$t5, .LBB6_26
	b	.LBB6_23
.LBB6_27:                               # %for.cond142.preheader
	ori	$a4, $zero, 2
	blt	$a3, $a4, .LBB6_32
# %bb.28:                               # %for.cond145.preheader.preheader
	addi.w	$a4, $a0, 0
	slli.d	$a4, $a4, 3
	ori	$a5, $zero, 1
	.p2align	4, , 16
.LBB6_29:                               # %for.cond145.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_30 Depth 2
	slli.d	$a6, $a5, 2
	ldx.w	$a7, $a1, $a6
	slli.d	$a6, $a5, 1
	alsl.d	$a7, $a7, $a2, 3
	move	$t0, $a5
	move	$t1, $a1
	.p2align	4, , 16
.LBB6_30:                               # %for.body147
                                        #   Parent Loop BB6_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t2, $t1, 0
	add.w	$t2, $t2, $a6
	slli.d	$t3, $t2, 3
	vldx	$vr0, $a2, $t3
	vld	$vr1, $a7, 0
	vst	$vr0, $a7, 0
	vstx	$vr1, $a2, $t3
	add.w	$t2, $t2, $a0
	slli.d	$t2, $t2, 3
	vldx	$vr0, $a2, $t2
	vldx	$vr1, $a7, $a4
	vstx	$vr0, $a7, $a4
	vstx	$vr1, $a2, $t2
	addi.d	$a7, $a7, 16
	addi.d	$t0, $t0, -1
	addi.d	$t1, $t1, 4
	bnez	$t0, .LBB6_30
# %bb.31:                               # %for.inc201
                                        #   in Loop: Header=BB6_29 Depth=1
	addi.d	$a5, $a5, 1
	bne	$a5, $a3, .LBB6_29
.LBB6_32:                               # %if.end
	ret
.Lfunc_end6:
	.size	bitrv2, .Lfunc_end6-bitrv2
                                        # -- End function
	.p2align	5                               # -- Begin function cftfsub
	.type	cftfsub,@function
cftfsub:                                # @cftfsub
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	ori	$a0, $zero, 9
	ori	$s2, $zero, 2
	bltu	$s0, $a0, .LBB7_4
# %bb.1:                                # %if.then
	move	$s1, $a2
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cft1st)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 33
	ori	$s2, $zero, 8
	bltu	$s0, $a0, .LBB7_4
# %bb.2:                                # %while.body.preheader
	ori	$a1, $zero, 8
	ori	$a0, $zero, 32
	.p2align	4, , 16
.LBB7_3:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	move	$s2, $a0
	move	$a0, $s0
	move	$a2, $fp
	move	$a3, $s1
	pcaddu18i	$ra, %call36(cftmdl)
	jirl	$ra, $ra, 0
	slli.w	$a0, $s2, 2
	move	$a1, $s2
	blt	$a0, $s0, .LBB7_3
.LBB7_4:                                # %if.end
	slli.w	$a0, $s2, 2
	bne	$a0, $s0, .LBB7_8
# %bb.5:                                # %for.cond.preheader
	ori	$a0, $zero, 1
	blt	$s2, $a0, .LBB7_11
# %bb.6:                                # %for.body.preheader
	move	$a0, $zero
	slli.d	$a1, $s2, 3
	slli.d	$a2, $s2, 4
	alsl.d	$a3, $s2, $a2, 3
	.p2align	4, , 16
.LBB7_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $fp, 0
	add.d	$a4, $fp, $a1
	fldx.d	$fa1, $fp, $a1
	fld.d	$fa2, $fp, 8
	fld.d	$fa3, $a4, 8
	fadd.d	$fa4, $fa0, $fa1
	fadd.d	$fa5, $fa2, $fa3
	add.d	$a5, $fp, $a2
	fldx.d	$fa6, $fp, $a2
	add.d	$a6, $fp, $a3
	fldx.d	$fa7, $fp, $a3
	fld.d	$ft0, $a5, 8
	fld.d	$ft1, $a6, 8
	fsub.d	$fa0, $fa0, $fa1
	fsub.d	$fa1, $fa2, $fa3
	fadd.d	$fa2, $fa6, $fa7
	fadd.d	$fa3, $ft0, $ft1
	fsub.d	$fa6, $fa6, $fa7
	fsub.d	$fa7, $ft0, $ft1
	fadd.d	$ft0, $fa4, $fa2
	fst.d	$ft0, $fp, 0
	fadd.d	$ft0, $fa5, $fa3
	fst.d	$ft0, $fp, 8
	fsub.d	$fa2, $fa4, $fa2
	fstx.d	$fa2, $fp, $a2
	fsub.d	$fa2, $fa5, $fa3
	fst.d	$fa2, $a5, 8
	fsub.d	$fa2, $fa0, $fa7
	fstx.d	$fa2, $fp, $a1
	fadd.d	$fa2, $fa1, $fa6
	fst.d	$fa2, $a4, 8
	fadd.d	$fa0, $fa0, $fa7
	fstx.d	$fa0, $fp, $a3
	fsub.d	$fa0, $fa1, $fa6
	fst.d	$fa0, $a6, 8
	addi.d	$a0, $a0, 2
	addi.d	$fp, $fp, 16
	bltu	$a0, $s2, .LBB7_7
	b	.LBB7_11
.LBB7_8:                                # %for.cond83.preheader
	ori	$a0, $zero, 1
	blt	$s2, $a0, .LBB7_11
# %bb.9:                                # %for.body85.preheader
	move	$a0, $zero
	slli.d	$a1, $s2, 3
	.p2align	4, , 16
.LBB7_10:                               # %for.body85
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $fp, 0
	vldx	$vr1, $fp, $a1
	vfadd.d	$vr2, $vr0, $vr1
	vst	$vr2, $fp, 0
	vfsub.d	$vr0, $vr0, $vr1
	vstx	$vr0, $fp, $a1
	addi.d	$a0, $a0, 2
	addi.d	$fp, $fp, 16
	bltu	$a0, $s2, .LBB7_10
.LBB7_11:                               # %if.end119
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end7:
	.size	cftfsub, .Lfunc_end7-cftfsub
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function cft1st
.LCPI8_0:
	.dword	0                               # 0x0
	.dword	2                               # 0x2
	.dword	4                               # 0x4
	.dword	6                               # 0x6
.LCPI8_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	0                               # 0x0
	.text
	.p2align	5
	.type	cft1st,@function
cft1st:                                 # @cft1st
# %bb.0:                                # %entry
	fld.d	$fa0, $a1, 0
	fld.d	$fa1, $a1, 16
	fld.d	$fa2, $a1, 8
	fld.d	$fa3, $a1, 24
	fadd.d	$fa4, $fa0, $fa1
	fadd.d	$fa5, $fa2, $fa3
	fld.d	$fa6, $a1, 32
	fld.d	$fa7, $a1, 48
	fld.d	$ft0, $a1, 40
	fld.d	$ft1, $a1, 56
	fsub.d	$fa0, $fa0, $fa1
	fsub.d	$fa1, $fa2, $fa3
	fadd.d	$fa2, $fa6, $fa7
	fadd.d	$fa3, $ft0, $ft1
	fsub.d	$fa6, $fa6, $fa7
	fsub.d	$fa7, $ft0, $ft1
	fadd.d	$ft0, $fa4, $fa2
	fst.d	$ft0, $a1, 0
	fadd.d	$ft0, $fa5, $fa3
	fst.d	$ft0, $a1, 8
	fsub.d	$fa2, $fa4, $fa2
	fst.d	$fa2, $a1, 32
	fsub.d	$fa2, $fa5, $fa3
	fst.d	$fa2, $a1, 40
	fsub.d	$fa2, $fa0, $fa7
	fst.d	$fa2, $a1, 16
	fadd.d	$fa2, $fa1, $fa6
	fst.d	$fa2, $a1, 24
	fadd.d	$fa0, $fa0, $fa7
	fst.d	$fa0, $a1, 48
	fsub.d	$fa0, $fa1, $fa6
	fld.d	$fa1, $a1, 64
	fld.d	$fa2, $a1, 80
	fld.d	$fa3, $a1, 72
	fld.d	$fa4, $a1, 88
	fst.d	$fa0, $a1, 56
	fld.d	$fa0, $a2, 16
	fadd.d	$fa5, $fa1, $fa2
	fadd.d	$fa6, $fa3, $fa4
	fld.d	$fa7, $a1, 96
	fld.d	$ft0, $a1, 112
	fld.d	$ft1, $a1, 104
	fld.d	$ft2, $a1, 120
	fsub.d	$fa1, $fa1, $fa2
	fsub.d	$fa2, $fa3, $fa4
	fadd.d	$fa3, $fa7, $ft0
	fadd.d	$fa4, $ft1, $ft2
	fsub.d	$fa7, $fa7, $ft0
	fsub.d	$ft0, $ft1, $ft2
	fadd.d	$ft1, $fa5, $fa3
	fst.d	$ft1, $a1, 64
	fadd.d	$ft1, $fa6, $fa4
	fst.d	$ft1, $a1, 72
	fsub.d	$fa4, $fa4, $fa6
	fst.d	$fa4, $a1, 96
	fsub.d	$fa3, $fa5, $fa3
	fst.d	$fa3, $a1, 104
	fsub.d	$fa3, $fa1, $ft0
	fadd.d	$fa4, $fa2, $fa7
	fsub.d	$fa5, $fa3, $fa4
	fmul.d	$fa5, $fa0, $fa5
	fst.d	$fa5, $a1, 80
	fadd.d	$fa3, $fa4, $fa3
	fmul.d	$fa3, $fa0, $fa3
	fst.d	$fa3, $a1, 88
	fadd.d	$fa1, $fa1, $ft0
	fsub.d	$fa2, $fa7, $fa2
	fsub.d	$fa3, $fa2, $fa1
	fmul.d	$fa3, $fa0, $fa3
	fst.d	$fa3, $a1, 112
	fadd.d	$fa1, $fa2, $fa1
	fmul.d	$fa0, $fa0, $fa1
	ori	$a3, $zero, 17
	fst.d	$fa0, $a1, 120
	bltu	$a0, $a3, .LBB8_5
# %bb.1:                                # %for.body.preheader
	addi.d	$a5, $a0, -17
	ori	$a4, $zero, 48
	ori	$a3, $zero, 16
	bgeu	$a5, $a4, .LBB8_6
# %bb.2:
	move	$a4, $zero
.LBB8_3:                                # %for.body.preheader295
	alsl.d	$a1, $a3, $a1, 3
	addi.d	$a1, $a1, 64
	alsl.d	$a5, $a4, $a2, 3
	addi.d	$a5, $a5, 24
	alsl.d	$a2, $a4, $a2, 4
	addi.d	$a2, $a2, 56
	.p2align	4, , 16
.LBB8_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a5, 0
	fld.d	$fa0, $a5, -8
	fld.d	$fa2, $a2, -24
	fld.d	$fa3, $a2, -16
	fadd.d	$fa4, $fa1, $fa1
	fneg.d	$fa5, $fa4
	fld.d	$fa6, $a1, -64
	fld.d	$fa7, $a1, -48
	fld.d	$ft0, $a1, -56
	fld.d	$ft1, $a1, -40
	fmadd.d	$fa5, $fa5, $fa3, $fa2
	fmsub.d	$fa4, $fa4, $fa2, $fa3
	fadd.d	$ft2, $fa6, $fa7
	fadd.d	$ft3, $ft0, $ft1
	fld.d	$ft4, $a1, -32
	fld.d	$ft5, $a1, -16
	fld.d	$ft6, $a1, -24
	fld.d	$ft7, $a1, -8
	fsub.d	$fa6, $fa6, $fa7
	fsub.d	$fa7, $ft0, $ft1
	fadd.d	$ft0, $ft4, $ft5
	fadd.d	$ft1, $ft6, $ft7
	fsub.d	$ft4, $ft4, $ft5
	fsub.d	$ft5, $ft6, $ft7
	fadd.d	$ft6, $ft2, $ft0
	fst.d	$ft6, $a1, -64
	fadd.d	$ft6, $ft3, $ft1
	fst.d	$ft6, $a1, -56
	fsub.d	$ft0, $ft2, $ft0
	fsub.d	$ft1, $ft3, $ft1
	fneg.d	$ft2, $ft1
	fmul.d	$ft2, $fa1, $ft2
	fmadd.d	$ft2, $fa0, $ft0, $ft2
	fst.d	$ft2, $a1, -32
	fmul.d	$ft0, $fa1, $ft0
	fmadd.d	$ft0, $fa0, $ft1, $ft0
	fst.d	$ft0, $a1, -24
	fsub.d	$ft0, $fa6, $ft5
	fadd.d	$ft1, $fa7, $ft4
	fneg.d	$ft2, $ft1
	fmul.d	$ft2, $fa3, $ft2
	fmadd.d	$ft2, $fa2, $ft0, $ft2
	fst.d	$ft2, $a1, -48
	fmul.d	$fa3, $fa3, $ft0
	fmadd.d	$fa2, $fa2, $ft1, $fa3
	fst.d	$fa2, $a1, -40
	fadd.d	$fa2, $fa6, $ft5
	fsub.d	$fa3, $fa7, $ft4
	fneg.d	$fa6, $fa3
	fmul.d	$fa6, $fa4, $fa6
	fmadd.d	$fa6, $fa5, $fa2, $fa6
	fst.d	$fa6, $a1, -16
	fmul.d	$fa2, $fa4, $fa2
	fmadd.d	$fa2, $fa5, $fa3, $fa2
	fst.d	$fa2, $a1, -8
	fld.d	$fa2, $a2, -8
	fld.d	$fa3, $a2, 0
	fadd.d	$fa4, $fa0, $fa0
	fneg.d	$fa5, $fa4
	fld.d	$fa6, $a1, 0
	fld.d	$fa7, $a1, 16
	fld.d	$ft0, $a1, 8
	fld.d	$ft1, $a1, 24
	fmadd.d	$fa5, $fa5, $fa3, $fa2
	fmsub.d	$fa4, $fa4, $fa2, $fa3
	fadd.d	$ft2, $fa6, $fa7
	fadd.d	$ft3, $ft0, $ft1
	fld.d	$ft4, $a1, 32
	fld.d	$ft5, $a1, 48
	fld.d	$ft6, $a1, 40
	fld.d	$ft7, $a1, 56
	fsub.d	$fa6, $fa6, $fa7
	fsub.d	$fa7, $ft0, $ft1
	fadd.d	$ft0, $ft4, $ft5
	fadd.d	$ft1, $ft6, $ft7
	fsub.d	$ft4, $ft4, $ft5
	fsub.d	$ft5, $ft6, $ft7
	fadd.d	$ft6, $ft2, $ft0
	fst.d	$ft6, $a1, 0
	fadd.d	$ft6, $ft3, $ft1
	fst.d	$ft6, $a1, 8
	fsub.d	$ft0, $ft2, $ft0
	fsub.d	$ft1, $ft3, $ft1
	fneg.d	$fa1, $fa1
	fneg.d	$ft2, $ft1
	fmul.d	$ft2, $fa0, $ft2
	fmadd.d	$ft2, $fa1, $ft0, $ft2
	fst.d	$ft2, $a1, 32
	fmul.d	$fa0, $fa0, $ft0
	fmadd.d	$fa0, $fa1, $ft1, $fa0
	fst.d	$fa0, $a1, 40
	fsub.d	$fa0, $fa6, $ft5
	fadd.d	$fa1, $fa7, $ft4
	fneg.d	$ft0, $fa1
	fmul.d	$ft0, $fa3, $ft0
	fmadd.d	$ft0, $fa2, $fa0, $ft0
	fst.d	$ft0, $a1, 16
	fmul.d	$fa0, $fa3, $fa0
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	fst.d	$fa0, $a1, 24
	fadd.d	$fa0, $fa6, $ft5
	fsub.d	$fa1, $fa7, $ft4
	fneg.d	$fa2, $fa1
	fmul.d	$fa2, $fa4, $fa2
	fmadd.d	$fa2, $fa5, $fa0, $fa2
	fst.d	$fa2, $a1, 48
	fmul.d	$fa0, $fa4, $fa0
	fmadd.d	$fa0, $fa5, $fa1, $fa0
	fst.d	$fa0, $a1, 56
	addi.d	$a3, $a3, 16
	addi.d	$a1, $a1, 128
	addi.d	$a5, $a5, 16
	addi.d	$a2, $a2, 32
	bltu	$a3, $a0, .LBB8_4
.LBB8_5:                                # %for.end
	ret
.LBB8_6:                                # %vector.memcheck
	addi.d	$a6, $a1, 128
	addi.d	$a7, $a0, -17
	srli.d	$a4, $a7, 4
	slli.d	$t0, $a4, 7
	add.d	$t0, $a1, $t0
	addi.d	$t0, $t0, 256
	addi.d	$t1, $a2, 32
	slli.d	$a4, $a4, 5
	add.d	$a4, $a2, $a4
	addi.d	$a4, $a4, 64
	sltu	$a4, $a6, $a4
	sltu	$t2, $t1, $t0
	and	$t2, $a4, $t2
	move	$a4, $zero
	bnez	$t2, .LBB8_3
# %bb.7:                                # %vector.memcheck
	addi.d	$t2, $a2, 16
	bstrins.d	$a7, $zero, 3, 0
	add.d	$a7, $t1, $a7
	sltu	$a6, $a6, $a7
	sltu	$a7, $t2, $t0
	and	$a6, $a6, $a7
	bnez	$a6, .LBB8_3
# %bb.8:                                # %vector.ph
	srli.d	$a3, $a5, 4
	addi.d	$a5, $a3, 1
	bstrpick.d	$a3, $a5, 60, 2
	slli.d	$a6, $a3, 2
	slli.d	$a4, $a3, 3
	slli.d	$a3, $a3, 6
	pcalau12i	$a7, %pc_hi20(.LCPI8_0)
	xvld	$xr0, $a7, %pc_lo12(.LCPI8_0)
	pcalau12i	$a7, %pc_hi20(.LCPI8_1)
	xvld	$xr1, $a7, %pc_lo12(.LCPI8_1)
	addi.d	$a3, $a3, 16
	addi.d	$a7, $a2, 72
	addi.d	$t0, $a1, 320
	move	$t1, $a6
	.p2align	4, , 16
.LBB8_9:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvaddi.du	$xr4, $xr0, 2
	xvpickve2gr.d	$t2, $xr4, 0
	slli.d	$t2, $t2, 3
	xvpickve2gr.d	$t3, $xr4, 1
	slli.d	$t3, $t3, 3
	xvpickve2gr.d	$t4, $xr4, 2
	slli.d	$t4, $t4, 3
	xvpickve2gr.d	$t5, $xr4, 3
	fldx.d	$fa2, $a2, $t2
	fldx.d	$fa3, $a2, $t3
	fldx.d	$fa5, $a2, $t4
	slli.d	$t2, $t5, 3
	fldx.d	$fa6, $a2, $t2
	xvinsve0.d	$xr2, $xr3, 1
	xvinsve0.d	$xr2, $xr5, 2
	fld.d	$fa3, $a7, -48
	fld.d	$fa5, $a7, -32
	fld.d	$fa7, $a7, -16
	fld.d	$ft0, $a7, 0
	xvinsve0.d	$xr2, $xr6, 3
	xvinsve0.d	$xr3, $xr5, 1
	xvinsve0.d	$xr3, $xr7, 2
	xvinsve0.d	$xr3, $xr8, 3
	xvslli.d	$xr4, $xr4, 4
	xvpickve2gr.d	$t5, $xr4, 0
	add.d	$t2, $a2, $t5
	xvpickve2gr.d	$t6, $xr4, 1
	add.d	$t3, $a2, $t6
	xvpickve2gr.d	$t7, $xr4, 2
	add.d	$t4, $a2, $t7
	xvpickve2gr.d	$t8, $xr4, 3
	fldx.d	$fa6, $a2, $t5
	fldx.d	$fa4, $a2, $t6
	fldx.d	$fa5, $a2, $t7
	add.d	$t5, $a2, $t8
	fldx.d	$ft0, $a2, $t8
	xvinsve0.d	$xr6, $xr4, 1
	xvinsve0.d	$xr6, $xr5, 2
	fld.d	$fa7, $t2, 8
	fld.d	$fa4, $t3, 8
	fld.d	$fa5, $t4, 8
	fld.d	$ft1, $t5, 8
	xvinsve0.d	$xr6, $xr8, 3
	xvinsve0.d	$xr7, $xr4, 1
	xvinsve0.d	$xr7, $xr5, 2
	xvinsve0.d	$xr7, $xr9, 3
	xvfadd.d	$xr5, $xr3, $xr3
	xvbitrevi.d	$xr4, $xr5, 63
	xvfmadd.d	$xr4, $xr4, $xr7, $xr6
	fld.d	$ft0, $t0, -192
	fld.d	$ft1, $t0, -64
	fld.d	$ft2, $t0, 64
	xvfmsub.d	$xr5, $xr5, $xr6, $xr7
	fld.d	$ft3, $t0, 192
	xvinsve0.d	$xr8, $xr9, 1
	xvinsve0.d	$xr8, $xr10, 2
	fld.d	$ft1, $t0, -176
	fld.d	$ft2, $t0, -48
	fld.d	$ft4, $t0, 80
	fld.d	$ft5, $t0, 208
	xvinsve0.d	$xr8, $xr11, 3
	xvinsve0.d	$xr9, $xr10, 1
	xvinsve0.d	$xr9, $xr12, 2
	xvinsve0.d	$xr9, $xr13, 3
	fld.d	$ft3, $t0, -184
	fld.d	$ft4, $t0, -56
	fld.d	$ft5, $t0, 72
	xvfadd.d	$xr10, $xr8, $xr9
	fld.d	$ft6, $t0, 200
	xvinsve0.d	$xr11, $xr12, 1
	xvinsve0.d	$xr11, $xr13, 2
	fld.d	$ft4, $t0, -168
	fld.d	$ft5, $t0, -40
	fld.d	$ft7, $t0, 88
	fld.d	$ft8, $t0, 216
	xvinsve0.d	$xr11, $xr14, 3
	xvinsve0.d	$xr12, $xr13, 1
	xvinsve0.d	$xr12, $xr15, 2
	xvinsve0.d	$xr12, $xr16, 3
	xvfadd.d	$xr13, $xr11, $xr12
	xvfsub.d	$xr8, $xr8, $xr9
	fld.d	$ft6, $t0, -160
	fld.d	$ft7, $t0, -32
	fld.d	$ft8, $t0, 96
	xvfsub.d	$xr9, $xr11, $xr12
	fld.d	$ft3, $t0, 224
	xvinsve0.d	$xr14, $xr15, 1
	xvinsve0.d	$xr14, $xr16, 2
	fld.d	$ft4, $t0, -144
	fld.d	$ft7, $t0, -16
	fld.d	$ft8, $t0, 112
	fld.d	$ft9, $t0, 240
	xvinsve0.d	$xr14, $xr11, 3
	xvinsve0.d	$xr12, $xr15, 1
	xvinsve0.d	$xr12, $xr16, 2
	xvinsve0.d	$xr12, $xr17, 3
	fld.d	$ft3, $t0, -152
	fld.d	$ft7, $t0, -24
	fld.d	$ft8, $t0, 104
	xvfadd.d	$xr17, $xr14, $xr12
	fld.d	$ft10, $t0, 232
	xvinsve0.d	$xr11, $xr15, 1
	xvinsve0.d	$xr11, $xr16, 2
	fld.d	$ft8, $t0, -136
	fld.d	$ft7, $t0, -8
	fld.d	$ft11, $t0, 120
	fld.d	$ft12, $t0, 248
	xvinsve0.d	$xr11, $xr18, 3
	xvinsve0.d	$xr16, $xr15, 1
	xvinsve0.d	$xr16, $xr19, 2
	xvinsve0.d	$xr16, $xr20, 3
	xvfadd.d	$xr19, $xr11, $xr16
	xvfsub.d	$xr15, $xr14, $xr12
	xvfsub.d	$xr18, $xr11, $xr16
	xvfadd.d	$xr14, $xr10, $xr17
	xvfadd.d	$xr11, $xr13, $xr19
	xvpickve.d	$xr16, $xr11, 1
	xvpermi.d	$xr12, $xr14, 68
	xvrepl128vei.d	$xr20, $xr12, 1
	vextrins.d	$vr20, $vr16, 16
	vst	$vr20, $t0, -64
	xvpickve.d	$xr16, $xr11, 2
	xvpermi.d	$xr14, $xr14, 78
	xvrepl128vei.d	$xr20, $xr14, 0
	vextrins.d	$vr20, $vr16, 16
	vst	$vr20, $t0, 64
	xvpickve.d	$xr16, $xr11, 3
	xvrepl128vei.d	$xr14, $xr14, 1
	vextrins.d	$vr14, $vr16, 16
	vst	$vr14, $t0, 192
	xvfsub.d	$xr14, $xr10, $xr17
	xvfsub.d	$xr13, $xr13, $xr19
	xvbitrevi.d	$xr10, $xr13, 63
	xvfmul.d	$xr10, $xr3, $xr10
	xvfmadd.d	$xr10, $xr2, $xr14, $xr10
	xvstelm.d	$xr10, $t0, -32, 1
	xvstelm.d	$xr10, $t0, 96, 2
	xvstelm.d	$xr10, $t0, 224, 3
	xvfmul.d	$xr14, $xr3, $xr14
	xvfmadd.d	$xr19, $xr2, $xr13, $xr14
	xvpermi.d	$xr13, $xr19, 68
	xvrepl128vei.d	$xr20, $xr13, 1
	xvfadd.d	$xr16, $xr8, $xr18
	xvfsub.d	$xr17, $xr9, $xr15
	xvbitrevi.d	$xr14, $xr17, 63
	xvfmul.d	$xr14, $xr5, $xr14
	xvfmadd.d	$xr14, $xr4, $xr16, $xr14
	xvpickve.d	$xr21, $xr14, 1
	vextrins.d	$vr20, $vr21, 16
	vst	$vr20, $t0, -24
	xvpermi.d	$xr19, $xr19, 78
	xvrepl128vei.d	$xr20, $xr19, 0
	xvpickve.d	$xr21, $xr14, 2
	vextrins.d	$vr20, $vr21, 16
	vst	$vr20, $t0, 104
	xvrepl128vei.d	$xr19, $xr19, 1
	xvpickve.d	$xr20, $xr14, 3
	vextrins.d	$vr19, $vr20, 16
	vst	$vr19, $t0, 232
	xvfsub.d	$xr8, $xr8, $xr18
	xvfadd.d	$xr9, $xr9, $xr15
	xvbitrevi.d	$xr15, $xr9, 63
	xvfmul.d	$xr15, $xr7, $xr15
	xvfmadd.d	$xr15, $xr6, $xr8, $xr15
	xvfmul.d	$xr7, $xr7, $xr8
	xvfmadd.d	$xr6, $xr6, $xr9, $xr7
	xvpickve.d	$xr7, $xr6, 1
	xvpermi.d	$xr8, $xr15, 68
	xvrepl128vei.d	$xr9, $xr8, 1
	vextrins.d	$vr9, $vr7, 16
	vst	$vr9, $t0, -48
	xvpickve.d	$xr7, $xr6, 2
	xvpermi.d	$xr9, $xr15, 78
	xvrepl128vei.d	$xr15, $xr9, 0
	vextrins.d	$vr15, $vr7, 16
	vst	$vr15, $t0, 80
	xvpickve.d	$xr7, $xr6, 3
	xvrepl128vei.d	$xr9, $xr9, 1
	vextrins.d	$vr9, $vr7, 16
	vst	$vr9, $t0, 208
	xvpermi.d	$xr7, $xr11, 68
	xvpackev.d	$xr7, $xr7, $xr12
	xvpermi.d	$xr7, $xr7, 68
	xvori.b	$xr9, $xr1, 0
	xvshuf.d	$xr9, $xr8, $xr7
	xvpickve.d	$xr6, $xr6, 0
	xvinsve0.d	$xr9, $xr6, 3
	xvst	$xr9, $t0, -192
	xvfmul.d	$xr5, $xr5, $xr16
	xvfmadd.d	$xr4, $xr4, $xr17, $xr5
	xvpermi.d	$xr5, $xr10, 68
	xvpackev.d	$xr5, $xr13, $xr5
	xvpermi.d	$xr5, $xr5, 68
	xvpermi.d	$xr6, $xr14, 68
	xvori.b	$xr7, $xr1, 0
	xvshuf.d	$xr7, $xr6, $xr5
	xvpickve.d	$xr5, $xr4, 0
	xvinsve0.d	$xr7, $xr5, 3
	xvst	$xr7, $t0, -160
	xvstelm.d	$xr4, $t0, -8, 1
	xvstelm.d	$xr4, $t0, 120, 2
	fld.d	$fa6, $t2, 16
	fld.d	$fa5, $t3, 16
	fld.d	$fa7, $t4, 16
	xvstelm.d	$xr4, $t0, 248, 3
	fld.d	$fa4, $t5, 16
	xvinsve0.d	$xr6, $xr5, 1
	xvinsve0.d	$xr6, $xr7, 2
	fld.d	$fa7, $t2, 24
	fld.d	$fa5, $t3, 24
	fld.d	$ft0, $t4, 24
	fld.d	$ft1, $t5, 24
	xvinsve0.d	$xr6, $xr4, 3
	xvinsve0.d	$xr7, $xr5, 1
	xvinsve0.d	$xr7, $xr8, 2
	xvinsve0.d	$xr7, $xr9, 3
	xvfadd.d	$xr5, $xr2, $xr2
	xvbitrevi.d	$xr4, $xr5, 63
	xvfmadd.d	$xr4, $xr4, $xr7, $xr6
	fld.d	$ft0, $t0, -128
	fld.d	$ft1, $t0, 0
	fld.d	$ft2, $t0, 128
	xvfmsub.d	$xr5, $xr5, $xr6, $xr7
	fld.d	$ft3, $t0, 256
	xvinsve0.d	$xr8, $xr9, 1
	xvinsve0.d	$xr8, $xr10, 2
	fld.d	$ft1, $t0, -112
	fld.d	$ft2, $t0, 16
	fld.d	$ft4, $t0, 144
	fld.d	$ft5, $t0, 272
	xvinsve0.d	$xr8, $xr11, 3
	xvinsve0.d	$xr9, $xr10, 1
	xvinsve0.d	$xr9, $xr12, 2
	xvinsve0.d	$xr9, $xr13, 3
	fld.d	$ft3, $t0, -120
	fld.d	$ft4, $t0, 8
	fld.d	$ft5, $t0, 136
	xvfadd.d	$xr10, $xr8, $xr9
	fld.d	$ft6, $t0, 264
	xvinsve0.d	$xr11, $xr12, 1
	xvinsve0.d	$xr11, $xr13, 2
	fld.d	$ft4, $t0, -104
	fld.d	$ft5, $t0, 24
	fld.d	$ft7, $t0, 152
	fld.d	$ft8, $t0, 280
	xvinsve0.d	$xr11, $xr14, 3
	xvinsve0.d	$xr12, $xr13, 1
	xvinsve0.d	$xr12, $xr15, 2
	xvinsve0.d	$xr12, $xr16, 3
	xvfadd.d	$xr13, $xr11, $xr12
	xvfsub.d	$xr8, $xr8, $xr9
	fld.d	$ft6, $t0, -96
	fld.d	$ft7, $t0, 32
	fld.d	$ft8, $t0, 160
	xvfsub.d	$xr9, $xr11, $xr12
	fld.d	$ft3, $t0, 288
	xvinsve0.d	$xr14, $xr15, 1
	xvinsve0.d	$xr14, $xr16, 2
	fld.d	$ft4, $t0, -80
	fld.d	$ft7, $t0, 48
	fld.d	$ft8, $t0, 176
	fld.d	$ft9, $t0, 304
	xvinsve0.d	$xr14, $xr11, 3
	xvinsve0.d	$xr12, $xr15, 1
	xvinsve0.d	$xr12, $xr16, 2
	xvinsve0.d	$xr12, $xr17, 3
	fld.d	$ft3, $t0, -88
	fld.d	$ft7, $t0, 40
	fld.d	$ft8, $t0, 168
	xvfadd.d	$xr17, $xr14, $xr12
	fld.d	$ft10, $t0, 296
	xvinsve0.d	$xr11, $xr15, 1
	xvinsve0.d	$xr11, $xr16, 2
	fld.d	$ft7, $t0, -72
	fld.d	$ft8, $t0, 56
	fld.d	$ft11, $t0, 184
	fld.d	$ft12, $t0, 312
	xvinsve0.d	$xr11, $xr18, 3
	xvinsve0.d	$xr15, $xr16, 1
	xvinsve0.d	$xr15, $xr19, 2
	xvinsve0.d	$xr15, $xr20, 3
	xvfadd.d	$xr16, $xr11, $xr15
	xvfsub.d	$xr14, $xr14, $xr12
	xvfsub.d	$xr15, $xr11, $xr15
	xvfadd.d	$xr18, $xr10, $xr17
	xvfadd.d	$xr11, $xr13, $xr16
	xvpickve.d	$xr19, $xr11, 1
	xvpermi.d	$xr12, $xr18, 68
	xvrepl128vei.d	$xr20, $xr12, 1
	vextrins.d	$vr20, $vr19, 16
	vst	$vr20, $t0, 0
	xvpickve.d	$xr19, $xr11, 2
	xvpermi.d	$xr18, $xr18, 78
	xvrepl128vei.d	$xr20, $xr18, 0
	vextrins.d	$vr20, $vr19, 16
	vst	$vr20, $t0, 128
	xvpickve.d	$xr19, $xr11, 3
	xvrepl128vei.d	$xr18, $xr18, 1
	vextrins.d	$vr18, $vr19, 16
	vst	$vr18, $t0, 256
	xvfsub.d	$xr10, $xr10, $xr17
	xvfsub.d	$xr13, $xr13, $xr16
	xvbitrevi.d	$xr16, $xr3, 63
	xvbitrevi.d	$xr3, $xr13, 63
	xvfmul.d	$xr3, $xr2, $xr3
	xvfmadd.d	$xr3, $xr16, $xr10, $xr3
	xvstelm.d	$xr3, $t0, 32, 1
	xvstelm.d	$xr3, $t0, 160, 2
	xvstelm.d	$xr3, $t0, 288, 3
	xvfmul.d	$xr2, $xr2, $xr10
	xvfmadd.d	$xr17, $xr16, $xr13, $xr2
	xvfadd.d	$xr2, $xr8, $xr15
	xvfsub.d	$xr10, $xr9, $xr14
	xvbitrevi.d	$xr13, $xr10, 63
	xvfmul.d	$xr13, $xr5, $xr13
	xvfmadd.d	$xr13, $xr4, $xr2, $xr13
	xvpickve.d	$xr18, $xr13, 1
	xvpermi.d	$xr16, $xr17, 68
	xvrepl128vei.d	$xr19, $xr16, 1
	vextrins.d	$vr19, $vr18, 16
	vst	$vr19, $t0, 40
	xvpickve.d	$xr18, $xr13, 2
	xvpermi.d	$xr17, $xr17, 78
	xvrepl128vei.d	$xr19, $xr17, 0
	vextrins.d	$vr19, $vr18, 16
	vst	$vr19, $t0, 168
	xvpickve.d	$xr18, $xr13, 3
	xvrepl128vei.d	$xr17, $xr17, 1
	vextrins.d	$vr17, $vr18, 16
	vst	$vr17, $t0, 296
	xvfsub.d	$xr8, $xr8, $xr15
	xvfadd.d	$xr9, $xr9, $xr14
	xvbitrevi.d	$xr14, $xr9, 63
	xvfmul.d	$xr14, $xr7, $xr14
	xvfmadd.d	$xr14, $xr6, $xr8, $xr14
	xvfmul.d	$xr7, $xr7, $xr8
	xvfmadd.d	$xr6, $xr6, $xr9, $xr7
	xvpickve.d	$xr7, $xr6, 1
	xvpermi.d	$xr8, $xr14, 68
	xvrepl128vei.d	$xr9, $xr8, 1
	vextrins.d	$vr9, $vr7, 16
	vst	$vr9, $t0, 16
	xvpickve.d	$xr7, $xr6, 2
	xvpermi.d	$xr9, $xr14, 78
	xvrepl128vei.d	$xr14, $xr9, 0
	vextrins.d	$vr14, $vr7, 16
	vst	$vr14, $t0, 144
	xvpickve.d	$xr7, $xr6, 3
	xvrepl128vei.d	$xr9, $xr9, 1
	vextrins.d	$vr9, $vr7, 16
	vst	$vr9, $t0, 272
	xvpermi.d	$xr7, $xr11, 68
	xvpackev.d	$xr7, $xr7, $xr12
	xvpermi.d	$xr7, $xr7, 68
	xvori.b	$xr9, $xr1, 0
	xvshuf.d	$xr9, $xr8, $xr7
	xvpickve.d	$xr6, $xr6, 0
	xvinsve0.d	$xr9, $xr6, 3
	xvst	$xr9, $t0, -128
	xvfmul.d	$xr2, $xr5, $xr2
	xvfmadd.d	$xr2, $xr4, $xr10, $xr2
	xvpermi.d	$xr3, $xr3, 68
	xvpackev.d	$xr3, $xr16, $xr3
	xvpermi.d	$xr4, $xr13, 68
	xvpermi.d	$xr3, $xr3, 68
	xvori.b	$xr5, $xr1, 0
	xvshuf.d	$xr5, $xr4, $xr3
	xvpickve.d	$xr3, $xr2, 0
	xvinsve0.d	$xr5, $xr3, 3
	xvst	$xr5, $t0, -96
	xvstelm.d	$xr2, $t0, 56, 1
	xvstelm.d	$xr2, $t0, 184, 2
	xvstelm.d	$xr2, $t0, 312, 3
	xvaddi.du	$xr0, $xr0, 8
	addi.d	$t1, $t1, -4
	addi.d	$a7, $a7, 64
	addi.d	$t0, $t0, 512
	bnez	$t1, .LBB8_9
# %bb.10:                               # %middle.block
	bne	$a5, $a6, .LBB8_3
	b	.LBB8_5
.Lfunc_end8:
	.size	cft1st, .Lfunc_end8-cft1st
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function cftmdl
.LCPI9_0:
	.dword	0                               # 0x0
	.dword	2                               # 0x2
	.dword	4                               # 0x4
	.dword	6                               # 0x6
.LCPI9_1:
	.dword	0                               # 0x0
	.dword	2                               # 0x2
	.dword	1                               # 0x1
	.dword	3                               # 0x3
	.text
	.p2align	5
	.type	cftmdl,@function
cftmdl:                                 # @cftmdl
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -480
	st.d	$ra, $sp, 472                   # 8-byte Folded Spill
	st.d	$fp, $sp, 464                   # 8-byte Folded Spill
	st.d	$s0, $sp, 456                   # 8-byte Folded Spill
	st.d	$s1, $sp, 448                   # 8-byte Folded Spill
	st.d	$s2, $sp, 440                   # 8-byte Folded Spill
	st.d	$s3, $sp, 432                   # 8-byte Folded Spill
	st.d	$s4, $sp, 424                   # 8-byte Folded Spill
	st.d	$s5, $sp, 416                   # 8-byte Folded Spill
	st.d	$s6, $sp, 408                   # 8-byte Folded Spill
	st.d	$s7, $sp, 400                   # 8-byte Folded Spill
	st.d	$s8, $sp, 392                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 384                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 376                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 368                  # 8-byte Folded Spill
	st.d	$a3, $sp, 248                   # 8-byte Folded Spill
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	slli.w	$a5, $a1, 2
	ori	$a0, $zero, 1
	slli.d	$a7, $a1, 3
	slli.d	$a4, $a1, 4
	blt	$a1, $a0, .LBB9_3
# %bb.1:                                # %for.body.preheader
	move	$a0, $zero
	alsl.d	$t2, $a1, $a4, 3
	move	$a3, $a2
	.p2align	4, , 16
.LBB9_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a3, 0
	add.d	$a6, $a3, $a7
	fldx.d	$fa1, $a3, $a7
	fld.d	$fa2, $a3, 8
	fld.d	$fa3, $a6, 8
	fadd.d	$fa4, $fa0, $fa1
	fadd.d	$fa5, $fa2, $fa3
	add.d	$t0, $a3, $a4
	fldx.d	$fa6, $a3, $a4
	add.d	$t1, $a3, $t2
	fldx.d	$fa7, $a3, $t2
	fld.d	$ft0, $t0, 8
	fld.d	$ft1, $t1, 8
	fsub.d	$fa0, $fa0, $fa1
	fsub.d	$fa1, $fa2, $fa3
	fadd.d	$fa2, $fa6, $fa7
	fadd.d	$fa3, $ft0, $ft1
	fsub.d	$fa6, $fa6, $fa7
	fsub.d	$fa7, $ft0, $ft1
	fadd.d	$ft0, $fa4, $fa2
	fst.d	$ft0, $a3, 0
	fadd.d	$ft0, $fa5, $fa3
	fst.d	$ft0, $a3, 8
	fsub.d	$fa2, $fa4, $fa2
	fstx.d	$fa2, $a3, $a4
	fsub.d	$fa2, $fa5, $fa3
	fst.d	$fa2, $t0, 8
	fsub.d	$fa2, $fa0, $fa7
	fstx.d	$fa2, $a3, $a7
	fadd.d	$fa2, $fa1, $fa6
	fst.d	$fa2, $a6, 8
	fadd.d	$fa0, $fa0, $fa7
	fstx.d	$fa0, $a3, $t2
	fsub.d	$fa0, $fa1, $fa6
	fst.d	$fa0, $t1, 8
	addi.d	$a0, $a0, 2
	addi.d	$a3, $a3, 16
	bltu	$a0, $a1, .LBB9_2
.LBB9_3:                                # %for.end
	alsl.w	$t0, $a1, $a1, 2
	pcalau12i	$a0, %pc_hi20(.LCPI9_0)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$s7, %pc_hi20(.LCPI9_1)
	st.d	$a1, $sp, 352                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	bge	$a5, $t0, .LBB9_8
# %bb.4:                                # %for.body81.preheader
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	fld.d	$fa0, $a0, 16
	nor	$a0, $a5, $zero
	add.d	$a0, $a0, $t0
	ori	$a3, $zero, 38
	slli.d	$t1, $a1, 4
	bgeu	$a0, $a3, .LBB9_87
.LBB9_5:
	move	$t2, $a5
.LBB9_6:                                # %for.body81.preheader898
	alsl.d	$a0, $t2, $a2, 3
	addi.d	$a0, $a0, 8
	add.d	$a3, $t2, $a1
	alsl.d	$a3, $a3, $a2, 3
	addi.d	$t4, $a3, 8
	alsl.d	$a3, $a1, $t1, 3
	.p2align	4, , 16
.LBB9_7:                                # %for.body81
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a0, -8
	fld.d	$fa2, $t4, -8
	fld.d	$fa3, $a0, 0
	fld.d	$fa4, $t4, 0
	fadd.d	$fa5, $fa1, $fa2
	fadd.d	$fa6, $fa3, $fa4
	add.d	$a6, $a0, $t1
	fld.d	$fa7, $a6, -8
	add.d	$t3, $a0, $a3
	fld.d	$ft0, $t3, -8
	fldx.d	$ft1, $a0, $t1
	fldx.d	$ft2, $a0, $a3
	fsub.d	$fa1, $fa1, $fa2
	fsub.d	$fa2, $fa3, $fa4
	fadd.d	$fa3, $fa7, $ft0
	fadd.d	$fa4, $ft1, $ft2
	fsub.d	$fa7, $fa7, $ft0
	fsub.d	$ft0, $ft1, $ft2
	fadd.d	$ft1, $fa5, $fa3
	fst.d	$ft1, $a0, -8
	fadd.d	$ft1, $fa6, $fa4
	fst.d	$ft1, $a0, 0
	fsub.d	$fa4, $fa4, $fa6
	fst.d	$fa4, $a6, -8
	fsub.d	$fa3, $fa5, $fa3
	fstx.d	$fa3, $a0, $t1
	fsub.d	$fa3, $fa1, $ft0
	fadd.d	$fa4, $fa2, $fa7
	fsub.d	$fa5, $fa3, $fa4
	fmul.d	$fa5, $fa0, $fa5
	fst.d	$fa5, $t4, -8
	fadd.d	$fa3, $fa4, $fa3
	fmul.d	$fa3, $fa0, $fa3
	fst.d	$fa3, $t4, 0
	fadd.d	$fa1, $fa1, $ft0
	fsub.d	$fa2, $fa7, $fa2
	fsub.d	$fa3, $fa2, $fa1
	fmul.d	$fa3, $fa0, $fa3
	fst.d	$fa3, $t3, -8
	fadd.d	$fa1, $fa2, $fa1
	fmul.d	$fa1, $fa0, $fa1
	fstx.d	$fa1, $a0, $a3
	addi.d	$t2, $t2, 2
	addi.d	$a0, $a0, 16
	addi.d	$t4, $t4, 16
	blt	$t2, $t0, .LBB9_7
.LBB9_8:                                # %for.end170
	addi.w	$s5, $a7, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	bge	$s5, $a0, .LBB9_86
# %bb.9:                                # %for.body174.preheader
	move	$t0, $zero
	st.d	$zero, $sp, 360                 # 8-byte Folded Spill
	alsl.w	$t1, $a1, $a7, 2
	alsl.d	$t2, $a1, $a2, 3
	add.d	$a0, $a5, $a1
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	addi.d	$a0, $a2, 8
	add.d	$a6, $a1, $s5
	add.d	$a5, $a6, $a5
	addi.d	$a3, $a2, 16
	st.d	$a3, $sp, 224                   # 8-byte Folded Spill
	alsl.d	$a3, $a1, $a2, 4
	addi.d	$a7, $a3, 8
	st.d	$a3, $sp, 176                   # 8-byte Folded Spill
	addi.d	$a3, $a3, 16
	st.d	$a3, $sp, 168                   # 8-byte Folded Spill
	alsl.d	$s2, $a1, $a4, 3
	add.d	$a3, $a2, $s2
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	add.d	$a0, $a0, $s2
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	st.d	$a3, $sp, 152                   # 8-byte Folded Spill
	addi.d	$a0, $a3, 16
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	addi.d	$t3, $s5, 2
	nor	$t4, $s5, $zero
	slli.d	$a0, $s5, 3
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	alsl.d	$a0, $s5, $s2, 3
	alsl.d	$a3, $s5, $a4, 3
	alsl.d	$t5, $s5, $a2, 3
	addi.d	$t6, $t5, 8
	st.d	$t6, $sp, 104                   # 8-byte Folded Spill
	st.d	$t5, $sp, 88                    # 8-byte Folded Spill
	addi.d	$t5, $t5, 16
	st.d	$t5, $sp, 80                    # 8-byte Folded Spill
	add.d	$a3, $a2, $a3
	addi.d	$t5, $a3, 8
	st.d	$t5, $sp, 64                    # 8-byte Folded Spill
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	addi.d	$a3, $a3, 16
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	alsl.d	$a3, $a6, $a2, 3
	addi.d	$t5, $a3, 8
	st.d	$t5, $sp, 112                   # 8-byte Folded Spill
	add.d	$a0, $a2, $a0
	xvreplgr2vr.d	$xr0, $a1
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a3, $a3, 16
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	addi.d	$a3, $a0, 8
	st.d	$a3, $sp, 160                   # 8-byte Folded Spill
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	addi.d	$a0, $a0, 16
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	st.d	$a7, $sp, 216                   # 8-byte Folded Spill
	alsl.d	$a0, $s5, $a7, 3
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	addi.d	$a0, $a2, 32
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	alsl.d	$a0, $s5, $a0, 3
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	st.d	$a5, $sp, 232                   # 8-byte Folded Spill
	st.d	$a5, $sp, 344                   # 8-byte Folded Spill
	st.d	$t4, $sp, 200                   # 8-byte Folded Spill
	st.d	$t4, $sp, 328                   # 8-byte Folded Spill
	st.d	$t3, $sp, 208                   # 8-byte Folded Spill
	st.d	$t3, $sp, 320                   # 8-byte Folded Spill
	st.d	$a6, $sp, 240                   # 8-byte Folded Spill
	st.d	$a6, $sp, 312                   # 8-byte Folded Spill
	move	$s1, $s5
	b	.LBB9_11
	.p2align	4, , 16
.LBB9_10:                               # %for.inc409
                                        #   in Loop: Header=BB9_11 Depth=1
	add.d	$s1, $s1, $s5
	add.w	$t1, $t1, $s5
	addi.d	$t0, $t0, 1
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	add.d	$a0, $a0, $s5
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	add.d	$a0, $a0, $s5
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $s5
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 336                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	add.d	$a0, $a0, $s5
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	bge	$s1, $a0, .LBB9_86
.LBB9_11:                               # %for.body174
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_53 Depth 2
                                        #     Child Loop BB9_14 Depth 2
                                        #     Child Loop BB9_84 Depth 2
                                        #     Child Loop BB9_17 Depth 2
	ld.d	$a6, $sp, 360                   # 8-byte Folded Reload
	addi.d	$a0, $a6, 2
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB9_10
# %bb.12:                               # %for.body195.preheader
                                        #   in Loop: Header=BB9_11 Depth=1
	addi.w	$a0, $zero, -4
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	mul.d	$a7, $t0, $s5
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a7
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	add.d	$a3, $a1, $a7
	slt	$a5, $a3, $a0
	masknez	$a3, $a3, $a5
	maskeqz	$a0, $a0, $a5
	or	$a0, $a0, $a3
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	st.d	$a7, $sp, 288                   # 8-byte Folded Spill
	sub.d	$a3, $a1, $a7
	add.d	$a0, $a0, $a3
	addi.w	$a1, $zero, -16
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a7, $sp, 360                   # 8-byte Folded Reload
	slli.d	$a3, $a7, 3
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a1, $a6, $a5, 3
	fld.d	$fa2, $a1, 24
	slli.d	$a1, $a7, 4
	fldx.d	$fa3, $a5, $a1
	alsl.d	$a1, $a7, $a5, 4
	st.d	$a1, $sp, 280                   # 8-byte Folded Spill
	fld.d	$fa4, $a1, 8
	fldx.d	$fa1, $a5, $a3
	fadd.d	$fa6, $fa2, $fa2
	fneg.d	$fa5, $fa6
	fmadd.d	$fa5, $fa5, $fa4, $fa3
	fmsub.d	$fa6, $fa6, $fa3, $fa4
	move	$a7, $s1
	ori	$a1, $zero, 30
	bgeu	$a0, $a1, .LBB9_18
.LBB9_13:                               # %for.body195.preheader897
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a3, $sp, 352                   # 8-byte Folded Reload
	add.d	$a0, $s1, $a3
	ld.d	$a5, $sp, 304                   # 8-byte Folded Reload
	alsl.d	$a1, $a7, $a5, 3
	add.d	$a3, $a3, $a7
	alsl.d	$a3, $a3, $a5, 3
	.p2align	4, , 16
.LBB9_14:                               # %for.body195
                                        #   Parent Loop BB9_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa7, $a1, -8
	fld.d	$ft0, $a3, -8
	fld.d	$ft1, $a1, 0
	fld.d	$ft2, $a3, 0
	fadd.d	$ft3, $fa7, $ft0
	fadd.d	$ft4, $ft1, $ft2
	add.d	$a5, $a1, $a4
	fld.d	$ft5, $a5, -8
	add.d	$a6, $a1, $s2
	fld.d	$ft6, $a6, -8
	fldx.d	$ft7, $a1, $a4
	fldx.d	$ft8, $a1, $s2
	fsub.d	$fa7, $fa7, $ft0
	fsub.d	$ft0, $ft1, $ft2
	fadd.d	$ft1, $ft5, $ft6
	fadd.d	$ft2, $ft7, $ft8
	fsub.d	$ft5, $ft5, $ft6
	fsub.d	$ft6, $ft7, $ft8
	fadd.d	$ft7, $ft3, $ft1
	fst.d	$ft7, $a1, -8
	fadd.d	$ft7, $ft4, $ft2
	fst.d	$ft7, $a1, 0
	fsub.d	$ft1, $ft3, $ft1
	fsub.d	$ft2, $ft4, $ft2
	fneg.d	$ft3, $ft2
	fmul.d	$ft3, $fa2, $ft3
	fmadd.d	$ft3, $fa1, $ft1, $ft3
	fst.d	$ft3, $a5, -8
	fmul.d	$ft1, $fa2, $ft1
	fmadd.d	$ft1, $fa1, $ft2, $ft1
	fstx.d	$ft1, $a1, $a4
	fsub.d	$ft1, $fa7, $ft6
	fadd.d	$ft2, $ft0, $ft5
	fneg.d	$ft3, $ft2
	fmul.d	$ft3, $fa4, $ft3
	fmadd.d	$ft3, $fa3, $ft1, $ft3
	fst.d	$ft3, $a3, -8
	fmul.d	$ft1, $fa4, $ft1
	fmadd.d	$ft1, $fa3, $ft2, $ft1
	fst.d	$ft1, $a3, 0
	fadd.d	$fa7, $fa7, $ft6
	fsub.d	$ft0, $ft0, $ft5
	fneg.d	$ft1, $ft0
	fmul.d	$ft1, $fa6, $ft1
	fmadd.d	$ft1, $fa5, $fa7, $ft1
	fst.d	$ft1, $a6, -8
	fmul.d	$fa7, $fa6, $fa7
	fmadd.d	$fa7, $fa5, $ft0, $fa7
	fstx.d	$fa7, $a1, $s2
	addi.d	$a7, $a7, 2
	addi.d	$a1, $a1, 16
	addi.d	$a3, $a3, 16
	blt	$a7, $a0, .LBB9_14
.LBB9_15:                               # %for.end292
                                        #   in Loop: Header=BB9_11 Depth=1
	addi.d	$fp, $t1, 2
	nor	$a5, $t1, $zero
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	slt	$a1, $fp, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $fp, $a1
	or	$a0, $a0, $a1
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	fld.d	$fa3, $a1, 16
	fld.d	$fa4, $a1, 24
	add.d	$s0, $a0, $a5
	fadd.d	$fa6, $fa1, $fa1
	fneg.d	$fa5, $fa6
	fmadd.d	$fa5, $fa5, $fa4, $fa3
	fmsub.d	$fa6, $fa6, $fa3, $fa4
	fneg.d	$fa2, $fa2
	move	$a7, $t1
	ori	$a0, $zero, 14
	bgeu	$s0, $a0, .LBB9_55
.LBB9_16:                               # %for.body310.preheader
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	add.d	$a0, $s1, $a0
	ld.d	$a5, $sp, 304                   # 8-byte Folded Reload
	alsl.d	$a1, $a7, $a5, 3
	ld.d	$a3, $sp, 352                   # 8-byte Folded Reload
	add.d	$a3, $a3, $a7
	alsl.d	$a3, $a3, $a5, 3
	.p2align	4, , 16
.LBB9_17:                               # %for.body310
                                        #   Parent Loop BB9_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa7, $a1, -8
	fld.d	$ft0, $a3, -8
	fld.d	$ft1, $a1, 0
	fld.d	$ft2, $a3, 0
	fadd.d	$ft3, $fa7, $ft0
	fadd.d	$ft4, $ft1, $ft2
	add.d	$a5, $a1, $a4
	fld.d	$ft5, $a5, -8
	add.d	$a6, $a1, $s2
	fld.d	$ft6, $a6, -8
	fldx.d	$ft7, $a1, $a4
	fldx.d	$ft8, $a1, $s2
	fsub.d	$fa7, $fa7, $ft0
	fsub.d	$ft0, $ft1, $ft2
	fadd.d	$ft1, $ft5, $ft6
	fadd.d	$ft2, $ft7, $ft8
	fsub.d	$ft5, $ft5, $ft6
	fsub.d	$ft6, $ft7, $ft8
	fadd.d	$ft7, $ft3, $ft1
	fst.d	$ft7, $a1, -8
	fadd.d	$ft7, $ft4, $ft2
	fst.d	$ft7, $a1, 0
	fsub.d	$ft1, $ft3, $ft1
	fsub.d	$ft2, $ft4, $ft2
	fneg.d	$ft3, $ft2
	fmul.d	$ft3, $fa1, $ft3
	fmadd.d	$ft3, $fa2, $ft1, $ft3
	fst.d	$ft3, $a5, -8
	fmul.d	$ft1, $fa1, $ft1
	fmadd.d	$ft1, $fa2, $ft2, $ft1
	fstx.d	$ft1, $a1, $a4
	fsub.d	$ft1, $fa7, $ft6
	fadd.d	$ft2, $ft0, $ft5
	fneg.d	$ft3, $ft2
	fmul.d	$ft3, $fa4, $ft3
	fmadd.d	$ft3, $fa3, $ft1, $ft3
	fst.d	$ft3, $a3, -8
	fmul.d	$ft1, $fa4, $ft1
	fmadd.d	$ft1, $fa3, $ft2, $ft1
	fst.d	$ft1, $a3, 0
	fadd.d	$fa7, $fa7, $ft6
	fsub.d	$ft0, $ft0, $ft5
	fneg.d	$ft1, $ft0
	fmul.d	$ft1, $fa6, $ft1
	fmadd.d	$ft1, $fa5, $fa7, $ft1
	fst.d	$ft1, $a6, -8
	fmul.d	$fa7, $fa6, $fa7
	fmadd.d	$fa7, $fa5, $ft0, $fa7
	fstx.d	$fa7, $a1, $s2
	addi.d	$a7, $a7, 2
	addi.d	$a1, $a1, 16
	addi.d	$a3, $a3, 16
	blt	$a7, $a0, .LBB9_17
	b	.LBB9_10
	.p2align	4, , 16
.LBB9_18:                               # %vector.scevcheck
                                        #   in Loop: Header=BB9_11 Depth=1
	srli.d	$a5, $a0, 1
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	mul.d	$s7, $a1, $t0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	add.d	$fp, $a1, $s7
	alsl.d	$a1, $a5, $fp, 4
	move	$a7, $s1
	bltu	$a1, $fp, .LBB9_13
# %bb.19:                               # %vector.scevcheck
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	add.d	$s3, $a1, $s7
	alsl.d	$a1, $a5, $s3, 4
	move	$a7, $s1
	bltu	$a1, $s3, .LBB9_13
# %bb.20:                               # %vector.scevcheck
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	add.d	$ra, $a1, $s7
	alsl.d	$a1, $a5, $ra, 4
	move	$a7, $s1
	bltu	$a1, $ra, .LBB9_13
# %bb.21:                               # %vector.scevcheck
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	add.d	$s0, $a1, $s7
	alsl.d	$a1, $a5, $s0, 4
	move	$a7, $s1
	bltu	$a1, $s0, .LBB9_13
# %bb.22:                               # %vector.scevcheck
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	add.d	$a1, $a1, $s7
	alsl.d	$a3, $a5, $a1, 4
	move	$a7, $s1
	bltu	$a3, $a1, .LBB9_13
# %bb.23:                               # %vector.scevcheck
                                        #   in Loop: Header=BB9_11 Depth=1
	srli.d	$a1, $a0, 61
	move	$a7, $s1
	bnez	$a1, .LBB9_13
# %bb.24:                               # %vector.memcheck732
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	add.d	$t5, $a1, $s7
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	and	$s8, $a0, $a1
	add.d	$t6, $s0, $s8
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	add.d	$a0, $a0, $s7
	add.d	$s6, $a0, $s8
	sltu	$a0, $t5, $s6
	sltu	$a1, $s0, $t6
	and	$a0, $a0, $a1
	move	$a7, $s1
	bnez	$a0, .LBB9_13
# %bb.25:                               # %vector.memcheck732
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	add.d	$a0, $a0, $s7
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	add.d	$t7, $a1, $s7
	add.d	$a6, $t7, $s8
	sltu	$a1, $t5, $a6
	sltu	$a3, $a0, $t6
	and	$a1, $a1, $a3
	move	$a7, $s1
	bnez	$a1, .LBB9_13
# %bb.26:                               # %vector.memcheck732
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	add.d	$a1, $a1, $s7
	add.d	$t8, $a1, $s8
	sltu	$a1, $t5, $t8
	sltu	$a3, $t7, $t6
	and	$a1, $a1, $a3
	move	$a7, $s1
	bnez	$a1, .LBB9_13
# %bb.27:                               # %vector.memcheck732
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	add.d	$t3, $a1, $s7
	add.d	$t4, $ra, $s8
	sltu	$a1, $t5, $t4
	sltu	$a3, $t3, $t6
	and	$a1, $a1, $a3
	move	$a7, $s1
	bnez	$a1, .LBB9_13
# %bb.28:                               # %vector.memcheck732
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	add.d	$a1, $a1, $s7
	add.d	$a1, $a1, $s8
	sltu	$a3, $t5, $a1
	sltu	$a7, $ra, $t6
	and	$a3, $a3, $a7
	move	$a7, $s1
	bnez	$a3, .LBB9_13
# %bb.29:                               # %vector.memcheck732
                                        #   in Loop: Header=BB9_11 Depth=1
	add.d	$a3, $fp, $s8
	sltu	$a7, $t5, $a3
	sltu	$s4, $s3, $t6
	and	$s4, $a7, $s4
	move	$a7, $s1
	bnez	$s4, .LBB9_13
# %bb.30:                               # %vector.memcheck732
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a7, $sp, 24                    # 8-byte Folded Reload
	add.d	$a7, $a7, $s7
	add.d	$s8, $a7, $s8
	sltu	$a7, $t5, $s8
	sltu	$t5, $fp, $t6
	and	$t5, $a7, $t5
	move	$a7, $s1
	bnez	$t5, .LBB9_13
# %bb.31:                               # %vector.memcheck732
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a7, $s0, $a6
	sltu	$t5, $a0, $s6
	and	$t5, $a7, $t5
	move	$a7, $s1
	bnez	$t5, .LBB9_13
# %bb.32:                               # %vector.memcheck732
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a7, $s0, $t8
	sltu	$t5, $t7, $s6
	and	$t5, $a7, $t5
	move	$a7, $s1
	bnez	$t5, .LBB9_13
# %bb.33:                               # %vector.memcheck732
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a7, $s0, $t4
	sltu	$t5, $t3, $s6
	and	$t5, $a7, $t5
	move	$a7, $s1
	bnez	$t5, .LBB9_13
# %bb.34:                               # %vector.memcheck732
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a7, $s0, $a1
	sltu	$t5, $ra, $s6
	and	$t5, $a7, $t5
	move	$a7, $s1
	bnez	$t5, .LBB9_13
# %bb.35:                               # %vector.memcheck732
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a7, $s0, $a3
	sltu	$t5, $s3, $s6
	and	$t5, $a7, $t5
	move	$a7, $s1
	bnez	$t5, .LBB9_13
# %bb.36:                               # %vector.memcheck732
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a7, $s0, $s8
	sltu	$t5, $fp, $s6
	and	$t5, $a7, $t5
	move	$a7, $s1
	bnez	$t5, .LBB9_13
# %bb.37:                               # %vector.memcheck732
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a7, $a0, $t8
	sltu	$t5, $t7, $a6
	and	$t5, $a7, $t5
	move	$a7, $s1
	bnez	$t5, .LBB9_13
# %bb.38:                               # %vector.memcheck732
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a7, $a0, $t4
	sltu	$t5, $t3, $a6
	and	$t5, $a7, $t5
	move	$a7, $s1
	bnez	$t5, .LBB9_13
# %bb.39:                               # %vector.memcheck732
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a7, $a0, $a1
	sltu	$t5, $ra, $a6
	and	$t5, $a7, $t5
	move	$a7, $s1
	bnez	$t5, .LBB9_13
# %bb.40:                               # %vector.memcheck732
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a7, $a0, $a3
	sltu	$t5, $s3, $a6
	and	$t5, $a7, $t5
	move	$a7, $s1
	bnez	$t5, .LBB9_13
# %bb.41:                               # %vector.memcheck732
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a0, $a0, $s8
	sltu	$a6, $fp, $a6
	and	$a0, $a0, $a6
	move	$a7, $s1
	bnez	$a0, .LBB9_13
# %bb.42:                               # %vector.memcheck732
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a0, $t7, $t4
	sltu	$a6, $t3, $t8
	and	$a0, $a0, $a6
	move	$a7, $s1
	bnez	$a0, .LBB9_13
# %bb.43:                               # %vector.memcheck732
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a0, $t7, $a1
	sltu	$a6, $ra, $t8
	and	$a0, $a0, $a6
	move	$a7, $s1
	bnez	$a0, .LBB9_13
# %bb.44:                               # %vector.memcheck732
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a0, $t7, $a3
	sltu	$a6, $s3, $t8
	and	$a0, $a0, $a6
	move	$a7, $s1
	bnez	$a0, .LBB9_13
# %bb.45:                               # %vector.memcheck732
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a0, $t7, $s8
	sltu	$a6, $fp, $t8
	and	$a0, $a0, $a6
	move	$a7, $s1
	bnez	$a0, .LBB9_13
# %bb.46:                               # %vector.memcheck732
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a0, $t3, $a1
	sltu	$a6, $ra, $t4
	and	$a0, $a0, $a6
	move	$a7, $s1
	bnez	$a0, .LBB9_13
# %bb.47:                               # %vector.memcheck732
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a0, $t3, $a3
	sltu	$a6, $s3, $t4
	and	$a0, $a0, $a6
	move	$a7, $s1
	bnez	$a0, .LBB9_13
# %bb.48:                               # %vector.memcheck732
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a0, $t3, $s8
	sltu	$a6, $fp, $t4
	and	$a0, $a0, $a6
	move	$a7, $s1
	bnez	$a0, .LBB9_13
# %bb.49:                               # %vector.memcheck732
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a0, $ra, $a3
	sltu	$a6, $s3, $a1
	and	$a0, $a0, $a6
	move	$a7, $s1
	bnez	$a0, .LBB9_13
# %bb.50:                               # %vector.memcheck732
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a0, $ra, $s8
	sltu	$a1, $fp, $a1
	and	$a0, $a0, $a1
	move	$a7, $s1
	bnez	$a0, .LBB9_13
# %bb.51:                               # %vector.memcheck732
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a0, $s3, $s8
	sltu	$a1, $fp, $a3
	and	$a0, $a0, $a1
	move	$a7, $s1
	bnez	$a0, .LBB9_13
# %bb.52:                               # %vector.ph868
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 312                   # 8-byte Folded Reload
	slt	$a0, $a1, $a3
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a1
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 1
	addi.d	$a0, $a0, 1
	addi.d	$a3, $a5, 1
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	and	$fp, $a0, $a1
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	bstrins.d	$a3, $zero, 1, 0
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	alsl.d	$a7, $a3, $s1, 1
	xvreplve0.d	$xr7, $xr2
	xvreplve0.d	$xr8, $xr1
	xvreplve0.d	$xr9, $xr4
	xvreplve0.d	$xr10, $xr3
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	xvld	$xr13, $a0, %pc_lo12(.LCPI9_0)
	xvreplve0.d	$xr11, $xr6
	xvreplve0.d	$xr12, $xr5
	xvreplgr2vr.d	$xr14, $s1
	xvor.v	$xr13, $xr14, $xr13
	ld.d	$a5, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB9_53:                               # %vector.body888
                                        #   Parent Loop BB9_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvadd.d	$xr15, $xr13, $xr0
	fld.d	$ft6, $a5, -32
	fld.d	$ft8, $a5, -16
	fld.d	$ft9, $a5, 0
	fld.d	$ft11, $a5, 16
	xvadd.d	$xr18, $xr15, $xr0
	xvinsve0.d	$xr14, $xr16, 1
	xvinsve0.d	$xr14, $xr17, 2
	xvinsve0.d	$xr14, $xr19, 3
	xvpickve2gr.d	$a0, $xr15, 0
	alsl.d	$a1, $a0, $a2, 3
	slli.d	$s3, $a0, 3
	xvpickve2gr.d	$a0, $xr15, 1
	alsl.d	$a3, $a0, $a2, 3
	slli.d	$s8, $a0, 3
	xvpickve2gr.d	$a0, $xr15, 2
	alsl.d	$a6, $a0, $a2, 3
	slli.d	$t3, $a0, 3
	xvpickve2gr.d	$a0, $xr15, 3
	slli.d	$ra, $a0, 3
	fldx.d	$ft7, $a2, $s3
	fldx.d	$ft8, $a2, $s8
	fldx.d	$ft9, $a2, $t3
	fldx.d	$ft11, $a2, $ra
	alsl.d	$a0, $a0, $a2, 3
	xvinsve0.d	$xr15, $xr16, 1
	xvinsve0.d	$xr15, $xr17, 2
	xvinsve0.d	$xr15, $xr19, 3
	fld.d	$ft11, $a5, -24
	fld.d	$ft9, $a5, -8
	fld.d	$ft12, $a5, 8
	xvfadd.d	$xr16, $xr14, $xr15
	fld.d	$ft13, $a5, 24
	xvinsve0.d	$xr19, $xr17, 1
	xvinsve0.d	$xr19, $xr20, 2
	fld.d	$ft12, $a1, 8
	fld.d	$ft9, $a3, 8
	fld.d	$ft14, $a6, 8
	fld.d	$ft15, $a0, 8
	xvinsve0.d	$xr19, $xr21, 3
	xvinsve0.d	$xr20, $xr17, 1
	xvinsve0.d	$xr20, $xr22, 2
	xvinsve0.d	$xr20, $xr23, 3
	xvfadd.d	$xr17, $xr19, $xr20
	xvfsub.d	$xr14, $xr14, $xr15
	xvfsub.d	$xr15, $xr19, $xr20
	xvpickve2gr.d	$a0, $xr18, 0
	alsl.d	$a6, $a0, $a2, 3
	slli.d	$a1, $a0, 3
	xvpickve2gr.d	$t5, $xr18, 1
	alsl.d	$t6, $t5, $a2, 3
	slli.d	$t4, $t5, 3
	xvpickve2gr.d	$t8, $xr18, 2
	alsl.d	$s0, $t8, $a2, 3
	slli.d	$a3, $t8, 3
	xvpickve2gr.d	$s4, $xr18, 3
	slli.d	$t7, $s4, 3
	fldx.d	$ft10, $a2, $a1
	fldx.d	$ft11, $a2, $t4
	fldx.d	$ft12, $a2, $a3
	fldx.d	$ft13, $a2, $t7
	alsl.d	$s6, $s4, $a2, 3
	xvinsve0.d	$xr18, $xr19, 1
	xvinsve0.d	$xr18, $xr20, 2
	xvinsve0.d	$xr18, $xr21, 3
	alsl.d	$a0, $a0, $t2, 3
	alsl.d	$t5, $t5, $t2, 3
	alsl.d	$t8, $t8, $t2, 3
	fldx.d	$ft11, $t2, $a1
	fldx.d	$ft12, $t2, $t4
	fldx.d	$ft13, $t2, $a3
	fldx.d	$ft14, $t2, $t7
	alsl.d	$s4, $s4, $t2, 3
	xvinsve0.d	$xr19, $xr20, 1
	xvinsve0.d	$xr19, $xr21, 2
	xvinsve0.d	$xr19, $xr22, 3
	fld.d	$ft12, $a6, 8
	fld.d	$ft13, $t6, 8
	fld.d	$ft14, $s0, 8
	xvfadd.d	$xr23, $xr18, $xr19
	fld.d	$fs0, $s6, 8
	xvinsve0.d	$xr20, $xr21, 1
	xvinsve0.d	$xr20, $xr22, 2
	fld.d	$ft13, $a0, 8
	fld.d	$ft14, $t5, 8
	fld.d	$fs1, $t8, 8
	fld.d	$fs2, $s4, 8
	xvinsve0.d	$xr20, $xr24, 3
	xvinsve0.d	$xr21, $xr22, 1
	xvinsve0.d	$xr21, $xr25, 2
	xvinsve0.d	$xr21, $xr26, 3
	xvfadd.d	$xr22, $xr20, $xr21
	xvfsub.d	$xr18, $xr18, $xr19
	xvfsub.d	$xr19, $xr20, $xr21
	xvfadd.d	$xr20, $xr16, $xr23
	xvfadd.d	$xr21, $xr17, $xr22
	xvpickve.d	$xr24, $xr21, 1
	xvpermi.d	$xr25, $xr20, 68
	xvrepl128vei.d	$xr25, $xr25, 1
	vextrins.d	$vr25, $vr24, 16
	xvld	$xr24, $s7, %pc_lo12(.LCPI9_1)
	vst	$vr25, $a5, -16
	xvpermi.d	$xr25, $xr20, 238
	xvpermi.d	$xr26, $xr21, 238
	xvshuf.d	$xr24, $xr26, $xr25
	xvst	$xr24, $a5, 0
	vpackev.d	$vr20, $vr21, $vr20
	vst	$vr20, $a5, -32
	xvfsub.d	$xr16, $xr16, $xr23
	xvfsub.d	$xr17, $xr17, $xr22
	xvbitrevi.d	$xr20, $xr17, 63
	xvfmul.d	$xr20, $xr7, $xr20
	xvfmadd.d	$xr20, $xr8, $xr16, $xr20
	xvfmul.d	$xr16, $xr7, $xr16
	xvfmadd.d	$xr16, $xr8, $xr17, $xr16
	vpackev.d	$vr17, $vr16, $vr20
	vstx	$vr17, $a2, $a1
	xvpickve.d	$xr17, $xr16, 1
	xvpermi.d	$xr21, $xr20, 68
	xvrepl128vei.d	$xr21, $xr21, 1
	vextrins.d	$vr21, $vr17, 16
	vstx	$vr21, $a2, $t4
	xvpickve.d	$xr17, $xr16, 2
	xvpermi.d	$xr20, $xr20, 78
	xvrepl128vei.d	$xr21, $xr20, 0
	vextrins.d	$vr21, $vr17, 16
	vstx	$vr21, $a2, $a3
	xvpickve.d	$xr16, $xr16, 3
	xvrepl128vei.d	$xr17, $xr20, 1
	vextrins.d	$vr17, $vr16, 16
	vstx	$vr17, $a2, $t7
	xvfsub.d	$xr16, $xr14, $xr19
	xvfadd.d	$xr17, $xr15, $xr18
	xvbitrevi.d	$xr20, $xr17, 63
	xvfmul.d	$xr20, $xr9, $xr20
	xvfmadd.d	$xr20, $xr10, $xr16, $xr20
	xvfmul.d	$xr16, $xr9, $xr16
	xvfmadd.d	$xr16, $xr10, $xr17, $xr16
	vpackev.d	$vr17, $vr16, $vr20
	vstx	$vr17, $a2, $s3
	xvpickve.d	$xr17, $xr16, 1
	xvpermi.d	$xr21, $xr20, 68
	xvrepl128vei.d	$xr21, $xr21, 1
	vextrins.d	$vr21, $vr17, 16
	vstx	$vr21, $a2, $s8
	xvpickve.d	$xr17, $xr16, 2
	xvpermi.d	$xr20, $xr20, 78
	xvrepl128vei.d	$xr21, $xr20, 0
	vextrins.d	$vr21, $vr17, 16
	vstx	$vr21, $a2, $t3
	xvpickve.d	$xr16, $xr16, 3
	xvrepl128vei.d	$xr17, $xr20, 1
	vextrins.d	$vr17, $vr16, 16
	vstx	$vr17, $a2, $ra
	xvfadd.d	$xr14, $xr14, $xr19
	xvfsub.d	$xr15, $xr15, $xr18
	xvbitrevi.d	$xr16, $xr15, 63
	xvfmul.d	$xr16, $xr11, $xr16
	xvfmadd.d	$xr16, $xr12, $xr14, $xr16
	xvfmul.d	$xr14, $xr11, $xr14
	xvfmadd.d	$xr14, $xr12, $xr15, $xr14
	vpackev.d	$vr15, $vr14, $vr16
	vstx	$vr15, $t2, $a1
	xvpickve.d	$xr15, $xr14, 1
	xvpermi.d	$xr17, $xr16, 68
	xvrepl128vei.d	$xr17, $xr17, 1
	vextrins.d	$vr17, $vr15, 16
	vstx	$vr17, $t2, $t4
	xvpickve.d	$xr15, $xr14, 2
	xvpermi.d	$xr16, $xr16, 78
	xvrepl128vei.d	$xr17, $xr16, 0
	vextrins.d	$vr17, $vr15, 16
	vstx	$vr17, $t2, $a3
	xvpickve.d	$xr14, $xr14, 3
	xvrepl128vei.d	$xr15, $xr16, 1
	vextrins.d	$vr15, $vr14, 16
	vstx	$vr15, $t2, $t7
	xvaddi.du	$xr13, $xr13, 8
	addi.d	$fp, $fp, -4
	addi.d	$a5, $a5, 64
	bnez	$fp, .LBB9_53
# %bb.54:                               # %middle.block894
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	bne	$a0, $a1, .LBB9_13
	b	.LBB9_15
	.p2align	4, , 16
.LBB9_55:                               # %vector.memcheck539
                                        #   in Loop: Header=BB9_11 Depth=1
	alsl.d	$t5, $t1, $a2, 3
	slli.d	$a0, $s0, 3
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	and	$a1, $a0, $a1
	alsl.d	$s8, $t1, $a1, 3
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	add.d	$t6, $a0, $s8
	alsl.d	$s7, $t1, $a0, 3
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	add.d	$s6, $a0, $s8
	sltu	$a0, $t5, $s6
	sltu	$a3, $s7, $t6
	and	$a0, $a0, $a3
	move	$a7, $t1
	bnez	$a0, .LBB9_16
# %bb.56:                               # %vector.memcheck539
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	alsl.d	$a6, $t1, $a0, 3
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	add.d	$a0, $a0, $s8
	sltu	$a3, $t5, $a0
	sltu	$a7, $a6, $t6
	and	$a3, $a3, $a7
	move	$a7, $t1
	bnez	$a3, .LBB9_16
# %bb.57:                               # %vector.memcheck539
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$ra, $t1, $a3, 3
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	add.d	$t8, $a3, $s8
	sltu	$a3, $t5, $t8
	sltu	$a7, $ra, $t6
	and	$a3, $a3, $a7
	move	$a7, $t1
	bnez	$a3, .LBB9_16
# %bb.58:                               # %vector.memcheck539
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a3, $sp, 352                   # 8-byte Folded Reload
	add.d	$a3, $a3, $t1
	alsl.d	$t7, $a3, $a2, 3
	alsl.d	$t3, $a3, $a1, 3
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	add.d	$s3, $a1, $t3
	sltu	$a1, $t5, $s3
	sltu	$a7, $t7, $t6
	and	$a1, $a1, $a7
	move	$a7, $t1
	bnez	$a1, .LBB9_16
# %bb.59:                               # %vector.memcheck539
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	alsl.d	$a1, $a3, $a1, 3
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	add.d	$a3, $a3, $t3
	sltu	$a7, $t5, $a3
	sltu	$t3, $a1, $t6
	and	$t3, $a7, $t3
	move	$a7, $t1
	bnez	$t3, .LBB9_16
# %bb.60:                               # %vector.memcheck539
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a7, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$t3, $t1, $a7, 3
	ld.d	$a7, $sp, 192                   # 8-byte Folded Reload
	add.d	$t4, $a7, $s8
	sltu	$a7, $t5, $t4
	sltu	$s4, $t3, $t6
	and	$s4, $a7, $s4
	move	$a7, $t1
	bnez	$s4, .LBB9_16
# %bb.61:                               # %vector.memcheck539
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a7, $sp, 192                   # 8-byte Folded Reload
	alsl.d	$s4, $t1, $a7, 3
	ld.d	$a7, $sp, 144                   # 8-byte Folded Reload
	add.d	$s8, $a7, $s8
	sltu	$a7, $t5, $s8
	sltu	$t5, $s4, $t6
	and	$t5, $a7, $t5
	move	$a7, $t1
	bnez	$t5, .LBB9_16
# %bb.62:                               # %vector.memcheck539
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a7, $s7, $a0
	sltu	$t5, $a6, $s6
	and	$t5, $a7, $t5
	move	$a7, $t1
	bnez	$t5, .LBB9_16
# %bb.63:                               # %vector.memcheck539
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a7, $s7, $t8
	sltu	$t5, $ra, $s6
	and	$t5, $a7, $t5
	move	$a7, $t1
	bnez	$t5, .LBB9_16
# %bb.64:                               # %vector.memcheck539
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a7, $s7, $s3
	sltu	$t5, $t7, $s6
	and	$t5, $a7, $t5
	move	$a7, $t1
	bnez	$t5, .LBB9_16
# %bb.65:                               # %vector.memcheck539
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a7, $s7, $a3
	sltu	$t5, $a1, $s6
	and	$t5, $a7, $t5
	move	$a7, $t1
	bnez	$t5, .LBB9_16
# %bb.66:                               # %vector.memcheck539
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a7, $s7, $t4
	sltu	$t5, $t3, $s6
	and	$t5, $a7, $t5
	move	$a7, $t1
	bnez	$t5, .LBB9_16
# %bb.67:                               # %vector.memcheck539
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a7, $s7, $s8
	sltu	$t5, $s4, $s6
	and	$t5, $a7, $t5
	move	$a7, $t1
	bnez	$t5, .LBB9_16
# %bb.68:                               # %vector.memcheck539
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a7, $a6, $t8
	sltu	$t5, $ra, $a0
	and	$t5, $a7, $t5
	move	$a7, $t1
	bnez	$t5, .LBB9_16
# %bb.69:                               # %vector.memcheck539
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a7, $a6, $s3
	sltu	$t5, $t7, $a0
	and	$t5, $a7, $t5
	move	$a7, $t1
	bnez	$t5, .LBB9_16
# %bb.70:                               # %vector.memcheck539
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a7, $a6, $a3
	sltu	$t5, $a1, $a0
	and	$t5, $a7, $t5
	move	$a7, $t1
	bnez	$t5, .LBB9_16
# %bb.71:                               # %vector.memcheck539
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a7, $a6, $t4
	sltu	$t5, $t3, $a0
	and	$t5, $a7, $t5
	move	$a7, $t1
	bnez	$t5, .LBB9_16
# %bb.72:                               # %vector.memcheck539
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a6, $a6, $s8
	sltu	$a0, $s4, $a0
	and	$a0, $a6, $a0
	move	$a7, $t1
	bnez	$a0, .LBB9_16
# %bb.73:                               # %vector.memcheck539
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a0, $ra, $s3
	sltu	$a6, $t7, $t8
	and	$a0, $a0, $a6
	move	$a7, $t1
	bnez	$a0, .LBB9_16
# %bb.74:                               # %vector.memcheck539
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a0, $ra, $a3
	sltu	$a6, $a1, $t8
	and	$a0, $a0, $a6
	move	$a7, $t1
	bnez	$a0, .LBB9_16
# %bb.75:                               # %vector.memcheck539
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a0, $ra, $t4
	sltu	$a6, $t3, $t8
	and	$a0, $a0, $a6
	move	$a7, $t1
	bnez	$a0, .LBB9_16
# %bb.76:                               # %vector.memcheck539
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a0, $ra, $s8
	sltu	$a6, $s4, $t8
	and	$a0, $a0, $a6
	move	$a7, $t1
	bnez	$a0, .LBB9_16
# %bb.77:                               # %vector.memcheck539
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a0, $t7, $a3
	sltu	$a6, $a1, $s3
	and	$a0, $a0, $a6
	move	$a7, $t1
	bnez	$a0, .LBB9_16
# %bb.78:                               # %vector.memcheck539
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a0, $t7, $t4
	sltu	$a6, $t3, $s3
	and	$a0, $a0, $a6
	move	$a7, $t1
	bnez	$a0, .LBB9_16
# %bb.79:                               # %vector.memcheck539
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a0, $t7, $s8
	sltu	$a6, $s4, $s3
	and	$a0, $a0, $a6
	move	$a7, $t1
	bnez	$a0, .LBB9_16
# %bb.80:                               # %vector.memcheck539
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a0, $a1, $t4
	sltu	$a6, $t3, $a3
	and	$a0, $a0, $a6
	move	$a7, $t1
	bnez	$a0, .LBB9_16
# %bb.81:                               # %vector.memcheck539
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a0, $a1, $s8
	sltu	$a1, $s4, $a3
	and	$a0, $a0, $a1
	move	$a7, $t1
	bnez	$a0, .LBB9_16
# %bb.82:                               # %vector.memcheck539
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a0, $t3, $s8
	sltu	$a1, $s4, $t4
	and	$a0, $a0, $a1
	move	$a7, $t1
	bnez	$a0, .LBB9_16
# %bb.83:                               # %vector.ph684
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a3, $sp, 344                   # 8-byte Folded Reload
	slt	$a0, $fp, $a3
	masknez	$a1, $fp, $a0
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a1
	add.d	$a0, $a5, $a0
	srli.d	$a0, $a0, 1
	addi.d	$a0, $a0, 1
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	and	$t3, $a0, $a1
	srli.d	$a0, $s0, 1
	addi.d	$a1, $a0, 1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$fp, $t1, $a0, 3
	st.d	$a1, $sp, 288                   # 8-byte Folded Spill
	bstrins.d	$a1, $zero, 1, 0
	st.d	$a1, $sp, 280                   # 8-byte Folded Spill
	alsl.d	$a7, $a1, $t1, 1
	xvreplve0.d	$xr7, $xr2
	xvreplve0.d	$xr8, $xr1
	xvreplve0.d	$xr9, $xr4
	xvreplve0.d	$xr10, $xr3
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	xvld	$xr13, $a0, %pc_lo12(.LCPI9_0)
	xvreplve0.d	$xr11, $xr6
	xvreplve0.d	$xr12, $xr5
	xvreplgr2vr.d	$xr14, $t1
	xvadd.d	$xr13, $xr14, $xr13
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB9_84:                               # %vector.body704
                                        #   Parent Loop BB9_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvadd.d	$xr15, $xr13, $xr0
	fld.d	$ft6, $fp, -32
	fld.d	$ft8, $fp, -16
	fld.d	$ft9, $fp, 0
	fld.d	$ft11, $fp, 16
	xvadd.d	$xr18, $xr15, $xr0
	xvinsve0.d	$xr14, $xr16, 1
	xvinsve0.d	$xr14, $xr17, 2
	xvinsve0.d	$xr14, $xr19, 3
	xvpickve2gr.d	$a0, $xr15, 0
	alsl.d	$a1, $a0, $a2, 3
	slli.d	$s8, $a0, 3
	xvpickve2gr.d	$a0, $xr15, 1
	alsl.d	$a3, $a0, $a2, 3
	slli.d	$s4, $a0, 3
	xvpickve2gr.d	$a0, $xr15, 2
	alsl.d	$a6, $a0, $a2, 3
	slli.d	$s3, $a0, 3
	xvpickve2gr.d	$a0, $xr15, 3
	slli.d	$a5, $a0, 3
	fldx.d	$ft7, $a2, $s8
	fldx.d	$ft8, $a2, $s4
	fldx.d	$ft9, $a2, $s3
	fldx.d	$ft11, $a2, $a5
	alsl.d	$a0, $a0, $a2, 3
	xvinsve0.d	$xr15, $xr16, 1
	xvinsve0.d	$xr15, $xr17, 2
	xvinsve0.d	$xr15, $xr19, 3
	fld.d	$ft11, $fp, -24
	fld.d	$ft9, $fp, -8
	fld.d	$ft12, $fp, 8
	xvfadd.d	$xr16, $xr14, $xr15
	fld.d	$ft13, $fp, 24
	xvinsve0.d	$xr19, $xr17, 1
	xvinsve0.d	$xr19, $xr20, 2
	fld.d	$ft12, $a1, 8
	fld.d	$ft9, $a3, 8
	fld.d	$ft14, $a6, 8
	fld.d	$ft15, $a0, 8
	xvinsve0.d	$xr19, $xr21, 3
	xvinsve0.d	$xr20, $xr17, 1
	xvinsve0.d	$xr20, $xr22, 2
	xvinsve0.d	$xr20, $xr23, 3
	xvfadd.d	$xr17, $xr19, $xr20
	xvfsub.d	$xr14, $xr14, $xr15
	xvfsub.d	$xr15, $xr19, $xr20
	xvpickve2gr.d	$a0, $xr18, 0
	alsl.d	$a6, $a0, $a2, 3
	slli.d	$a1, $a0, 3
	xvpickve2gr.d	$t5, $xr18, 1
	alsl.d	$t6, $t5, $a2, 3
	slli.d	$t4, $t5, 3
	xvpickve2gr.d	$t8, $xr18, 2
	alsl.d	$s6, $t8, $a2, 3
	slli.d	$ra, $t8, 3
	xvpickve2gr.d	$s7, $xr18, 3
	slli.d	$a3, $s7, 3
	fldx.d	$ft10, $a2, $a1
	fldx.d	$ft11, $a2, $t4
	fldx.d	$ft12, $a2, $ra
	fldx.d	$ft13, $a2, $a3
	alsl.d	$t7, $s7, $a2, 3
	xvinsve0.d	$xr18, $xr19, 1
	xvinsve0.d	$xr18, $xr20, 2
	xvinsve0.d	$xr18, $xr21, 3
	alsl.d	$a0, $a0, $t2, 3
	alsl.d	$t5, $t5, $t2, 3
	alsl.d	$t8, $t8, $t2, 3
	fldx.d	$ft11, $t2, $a1
	fldx.d	$ft12, $t2, $t4
	fldx.d	$ft13, $t2, $ra
	fldx.d	$ft14, $t2, $a3
	alsl.d	$s7, $s7, $t2, 3
	xvinsve0.d	$xr19, $xr20, 1
	xvinsve0.d	$xr19, $xr21, 2
	xvinsve0.d	$xr19, $xr22, 3
	fld.d	$ft12, $a6, 8
	fld.d	$ft13, $t6, 8
	fld.d	$ft14, $s6, 8
	xvfadd.d	$xr23, $xr18, $xr19
	fld.d	$fs0, $t7, 8
	xvinsve0.d	$xr20, $xr21, 1
	xvinsve0.d	$xr20, $xr22, 2
	fld.d	$ft13, $a0, 8
	fld.d	$ft14, $t5, 8
	fld.d	$fs1, $t8, 8
	fld.d	$fs2, $s7, 8
	xvinsve0.d	$xr20, $xr24, 3
	xvinsve0.d	$xr21, $xr22, 1
	xvinsve0.d	$xr21, $xr25, 2
	xvinsve0.d	$xr21, $xr26, 3
	xvfadd.d	$xr22, $xr20, $xr21
	xvfsub.d	$xr18, $xr18, $xr19
	xvfsub.d	$xr19, $xr20, $xr21
	xvfadd.d	$xr20, $xr16, $xr23
	xvfadd.d	$xr21, $xr17, $xr22
	xvpickve.d	$xr24, $xr21, 1
	xvpermi.d	$xr25, $xr20, 68
	xvrepl128vei.d	$xr25, $xr25, 1
	vextrins.d	$vr25, $vr24, 16
	xvld	$xr24, $s0, %pc_lo12(.LCPI9_1)
	vst	$vr25, $fp, -16
	xvpermi.d	$xr25, $xr20, 238
	xvpermi.d	$xr26, $xr21, 238
	xvshuf.d	$xr24, $xr26, $xr25
	xvst	$xr24, $fp, 0
	vpackev.d	$vr20, $vr21, $vr20
	vst	$vr20, $fp, -32
	xvfsub.d	$xr16, $xr16, $xr23
	xvfsub.d	$xr17, $xr17, $xr22
	xvbitrevi.d	$xr20, $xr17, 63
	xvfmul.d	$xr20, $xr8, $xr20
	xvfmadd.d	$xr20, $xr7, $xr16, $xr20
	xvfmul.d	$xr16, $xr8, $xr16
	xvfmadd.d	$xr16, $xr7, $xr17, $xr16
	vpackev.d	$vr17, $vr16, $vr20
	vstx	$vr17, $a2, $a1
	xvpickve.d	$xr17, $xr16, 1
	xvpermi.d	$xr21, $xr20, 68
	xvrepl128vei.d	$xr21, $xr21, 1
	vextrins.d	$vr21, $vr17, 16
	vstx	$vr21, $a2, $t4
	xvpickve.d	$xr17, $xr16, 2
	xvpermi.d	$xr20, $xr20, 78
	xvrepl128vei.d	$xr21, $xr20, 0
	vextrins.d	$vr21, $vr17, 16
	vstx	$vr21, $a2, $ra
	xvpickve.d	$xr16, $xr16, 3
	xvrepl128vei.d	$xr17, $xr20, 1
	vextrins.d	$vr17, $vr16, 16
	vstx	$vr17, $a2, $a3
	xvfsub.d	$xr16, $xr14, $xr19
	xvfadd.d	$xr17, $xr15, $xr18
	xvbitrevi.d	$xr20, $xr17, 63
	xvfmul.d	$xr20, $xr9, $xr20
	xvfmadd.d	$xr20, $xr10, $xr16, $xr20
	xvfmul.d	$xr16, $xr9, $xr16
	xvfmadd.d	$xr16, $xr10, $xr17, $xr16
	vpackev.d	$vr17, $vr16, $vr20
	vstx	$vr17, $a2, $s8
	xvpickve.d	$xr17, $xr16, 1
	xvpermi.d	$xr21, $xr20, 68
	xvrepl128vei.d	$xr21, $xr21, 1
	vextrins.d	$vr21, $vr17, 16
	vstx	$vr21, $a2, $s4
	xvpickve.d	$xr17, $xr16, 2
	xvpermi.d	$xr20, $xr20, 78
	xvrepl128vei.d	$xr21, $xr20, 0
	vextrins.d	$vr21, $vr17, 16
	vstx	$vr21, $a2, $s3
	xvpickve.d	$xr16, $xr16, 3
	xvrepl128vei.d	$xr17, $xr20, 1
	vextrins.d	$vr17, $vr16, 16
	vstx	$vr17, $a2, $a5
	xvfadd.d	$xr14, $xr14, $xr19
	xvfsub.d	$xr15, $xr15, $xr18
	xvbitrevi.d	$xr16, $xr15, 63
	xvfmul.d	$xr16, $xr11, $xr16
	xvfmadd.d	$xr16, $xr12, $xr14, $xr16
	xvfmul.d	$xr14, $xr11, $xr14
	xvfmadd.d	$xr14, $xr12, $xr15, $xr14
	vpackev.d	$vr15, $vr14, $vr16
	vstx	$vr15, $t2, $a1
	xvpickve.d	$xr15, $xr14, 1
	xvpermi.d	$xr17, $xr16, 68
	xvrepl128vei.d	$xr17, $xr17, 1
	vextrins.d	$vr17, $vr15, 16
	vstx	$vr17, $t2, $t4
	xvpickve.d	$xr15, $xr14, 2
	xvpermi.d	$xr16, $xr16, 78
	xvrepl128vei.d	$xr17, $xr16, 0
	vextrins.d	$vr17, $vr15, 16
	vstx	$vr17, $t2, $ra
	xvpickve.d	$xr14, $xr14, 3
	xvrepl128vei.d	$xr15, $xr16, 1
	vextrins.d	$vr15, $vr14, 16
	vstx	$vr15, $t2, $a3
	xvaddi.du	$xr13, $xr13, 8
	addi.d	$t3, $t3, -4
	addi.d	$fp, $fp, 64
	bnez	$t3, .LBB9_84
# %bb.85:                               # %middle.block710
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB9_10
	b	.LBB9_16
.LBB9_86:                               # %for.end411
	fld.d	$fs2, $sp, 368                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 376                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 384                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 456                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 464                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 472                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 480
	ret
.LBB9_87:                               # %vector.memcheck
	alsl.d	$s6, $a5, $a2, 3
	slli.d	$t5, $a0, 3
	bstrins.d	$t5, $zero, 3, 0
	alsl.d	$a3, $a5, $t5, 3
	add.d	$a6, $a2, $a3
	addi.d	$s4, $a6, 8
	addi.d	$s2, $s6, 8
	addi.d	$s3, $a6, 16
	sltu	$a6, $s6, $s3
	sltu	$t2, $s2, $s4
	and	$a6, $a6, $t2
	bnez	$a6, .LBB9_5
# %bb.88:                               # %vector.memcheck
	alsl.d	$t4, $a5, $t1, 3
	add.d	$s0, $a2, $t4
	alsl.d	$a3, $a1, $a3, 4
	add.d	$a3, $a2, $a3
	addi.d	$s1, $a3, 8
	sltu	$a6, $s6, $s1
	sltu	$t2, $s0, $s4
	and	$a6, $a6, $t2
	bnez	$a6, .LBB9_5
# %bb.89:                               # %vector.memcheck
	addi.d	$t6, $s0, 8
	addi.d	$t7, $a3, 16
	sltu	$a3, $s6, $t7
	sltu	$a6, $t6, $s4
	and	$a3, $a3, $a6
	bnez	$a3, .LBB9_5
# %bb.90:                               # %vector.memcheck
	add.d	$a3, $a1, $a5
	alsl.d	$t2, $a3, $a2, 3
	alsl.d	$a3, $a3, $t5, 3
	add.d	$a6, $a2, $a3
	addi.d	$t3, $a6, 8
	sltu	$a3, $s6, $t3
	sltu	$t8, $t2, $s4
	and	$a3, $a3, $t8
	bnez	$a3, .LBB9_5
# %bb.91:                               # %vector.memcheck
	addi.d	$a3, $t2, 8
	addi.d	$a6, $a6, 16
	sltu	$t8, $s6, $a6
	sltu	$fp, $a3, $s4
	and	$t8, $t8, $fp
	bnez	$t8, .LBB9_5
# %bb.92:                               # %vector.memcheck
	alsl.d	$t8, $a1, $t4, 3
	add.d	$t4, $a2, $t8
	add.d	$t5, $t8, $t5
	add.d	$fp, $a2, $t5
	addi.d	$t5, $fp, 8
	sltu	$t8, $s6, $t5
	sltu	$s5, $t4, $s4
	and	$t8, $t8, $s5
	bnez	$t8, .LBB9_5
# %bb.93:                               # %vector.memcheck
	addi.d	$t8, $t4, 8
	addi.d	$fp, $fp, 16
	sltu	$s5, $s6, $fp
	sltu	$s4, $t8, $s4
	and	$s4, $s5, $s4
	bnez	$s4, .LBB9_5
# %bb.94:                               # %vector.memcheck
	sltu	$s4, $s2, $s1
	sltu	$s5, $s0, $s3
	and	$s4, $s4, $s5
	bnez	$s4, .LBB9_5
# %bb.95:                               # %vector.memcheck
	sltu	$s4, $s2, $t7
	sltu	$s5, $t6, $s3
	and	$s4, $s4, $s5
	bnez	$s4, .LBB9_5
# %bb.96:                               # %vector.memcheck
	sltu	$s4, $s2, $t3
	sltu	$s5, $t2, $s3
	and	$s4, $s4, $s5
	bnez	$s4, .LBB9_5
# %bb.97:                               # %vector.memcheck
	sltu	$s4, $s2, $a6
	sltu	$s5, $a3, $s3
	and	$s4, $s4, $s5
	bnez	$s4, .LBB9_5
# %bb.98:                               # %vector.memcheck
	sltu	$s4, $s2, $t5
	sltu	$s5, $t4, $s3
	and	$s4, $s4, $s5
	bnez	$s4, .LBB9_5
# %bb.99:                               # %vector.memcheck
	sltu	$s2, $s2, $fp
	sltu	$s3, $t8, $s3
	and	$s2, $s2, $s3
	bnez	$s2, .LBB9_5
# %bb.100:                              # %vector.memcheck
	sltu	$s2, $s0, $t7
	sltu	$s3, $t6, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB9_5
# %bb.101:                              # %vector.memcheck
	sltu	$s2, $s0, $t3
	sltu	$s3, $t2, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB9_5
# %bb.102:                              # %vector.memcheck
	sltu	$s2, $s0, $a6
	sltu	$s3, $a3, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB9_5
# %bb.103:                              # %vector.memcheck
	sltu	$s2, $s0, $t5
	sltu	$s3, $t4, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB9_5
# %bb.104:                              # %vector.memcheck
	sltu	$s0, $s0, $fp
	sltu	$s1, $t8, $s1
	and	$s0, $s0, $s1
	bnez	$s0, .LBB9_5
# %bb.105:                              # %vector.memcheck
	sltu	$s0, $t6, $t3
	sltu	$s1, $t2, $t7
	and	$s0, $s0, $s1
	bnez	$s0, .LBB9_5
# %bb.106:                              # %vector.memcheck
	sltu	$s0, $t6, $a6
	sltu	$s1, $a3, $t7
	and	$s0, $s0, $s1
	bnez	$s0, .LBB9_5
# %bb.107:                              # %vector.memcheck
	sltu	$s0, $t6, $t5
	sltu	$s1, $t4, $t7
	and	$s0, $s0, $s1
	bnez	$s0, .LBB9_5
# %bb.108:                              # %vector.memcheck
	sltu	$t6, $t6, $fp
	sltu	$t7, $t8, $t7
	and	$t6, $t6, $t7
	bnez	$t6, .LBB9_5
# %bb.109:                              # %vector.memcheck
	sltu	$t6, $t2, $a6
	sltu	$t7, $a3, $t3
	and	$t6, $t6, $t7
	bnez	$t6, .LBB9_5
# %bb.110:                              # %vector.memcheck
	sltu	$t6, $t2, $t5
	sltu	$t7, $t4, $t3
	and	$t6, $t6, $t7
	bnez	$t6, .LBB9_5
# %bb.111:                              # %vector.memcheck
	sltu	$t2, $t2, $fp
	sltu	$t3, $t8, $t3
	and	$t2, $t2, $t3
	bnez	$t2, .LBB9_5
# %bb.112:                              # %vector.memcheck
	sltu	$t2, $a3, $t5
	sltu	$t3, $t4, $a6
	and	$t2, $t2, $t3
	bnez	$t2, .LBB9_5
# %bb.113:                              # %vector.memcheck
	sltu	$a3, $a3, $fp
	sltu	$a6, $t8, $a6
	and	$a3, $a3, $a6
	bnez	$a3, .LBB9_5
# %bb.114:                              # %vector.memcheck
	sltu	$a3, $t4, $fp
	sltu	$a6, $t8, $t5
	and	$a3, $a3, $a6
	move	$t2, $a5
	bnez	$a3, .LBB9_6
# %bb.115:                              # %vector.ph
	srli.d	$a0, $a0, 1
	addi.d	$a0, $a0, 1
	alsl.d	$t4, $a1, $a2, 3
	move	$t3, $a0
	bstrins.d	$t3, $zero, 1, 0
	alsl.d	$t2, $t3, $a5, 1
	xvreplgr2vr.d	$xr1, $a1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	xvld	$xr4, $a1, %pc_lo12(.LCPI9_0)
	xvreplve0.d	$xr2, $xr0
	xvld	$xr3, $s7, %pc_lo12(.LCPI9_1)
	xvreplgr2vr.d	$xr5, $a5
	xvadd.d	$xr4, $xr5, $xr4
	addi.d	$t5, $s6, 32
	move	$t6, $t3
	.p2align	4, , 16
.LBB9_116:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvadd.d	$xr6, $xr4, $xr1
	fld.d	$fa5, $t5, -32
	fld.d	$fa7, $t5, -16
	fld.d	$ft0, $t5, 0
	fld.d	$ft2, $t5, 16
	xvadd.d	$xr9, $xr6, $xr1
	xvinsve0.d	$xr5, $xr7, 1
	xvinsve0.d	$xr5, $xr8, 2
	xvinsve0.d	$xr5, $xr10, 3
	xvpickve2gr.d	$a1, $xr6, 0
	alsl.d	$a6, $a1, $a2, 3
	slli.d	$a3, $a1, 3
	xvpickve2gr.d	$a1, $xr6, 1
	alsl.d	$s0, $a1, $a2, 3
	slli.d	$fp, $a1, 3
	xvpickve2gr.d	$a1, $xr6, 2
	alsl.d	$s1, $a1, $a2, 3
	slli.d	$t8, $a1, 3
	xvpickve2gr.d	$a1, $xr6, 3
	slli.d	$t7, $a1, 3
	fldx.d	$fa6, $a2, $a3
	fldx.d	$fa7, $a2, $fp
	fldx.d	$ft0, $a2, $t8
	fldx.d	$ft2, $a2, $t7
	alsl.d	$a1, $a1, $a2, 3
	xvinsve0.d	$xr6, $xr7, 1
	xvinsve0.d	$xr6, $xr8, 2
	xvinsve0.d	$xr6, $xr10, 3
	fld.d	$ft2, $t5, -24
	fld.d	$ft0, $t5, -8
	fld.d	$ft3, $t5, 8
	xvfadd.d	$xr7, $xr5, $xr6
	fld.d	$ft4, $t5, 24
	xvinsve0.d	$xr10, $xr8, 1
	xvinsve0.d	$xr10, $xr11, 2
	fld.d	$ft3, $a6, 8
	fld.d	$ft0, $s0, 8
	fld.d	$ft5, $s1, 8
	fld.d	$ft6, $a1, 8
	xvinsve0.d	$xr10, $xr12, 3
	xvinsve0.d	$xr11, $xr8, 1
	xvinsve0.d	$xr11, $xr13, 2
	xvinsve0.d	$xr11, $xr14, 3
	xvfadd.d	$xr8, $xr10, $xr11
	xvfsub.d	$xr5, $xr5, $xr6
	xvfsub.d	$xr6, $xr10, $xr11
	xvpickve2gr.d	$a6, $xr9, 0
	alsl.d	$s3, $a6, $a2, 3
	slli.d	$s2, $a6, 3
	xvpickve2gr.d	$s4, $xr9, 1
	alsl.d	$s5, $s4, $a2, 3
	slli.d	$s1, $s4, 3
	xvpickve2gr.d	$s6, $xr9, 2
	alsl.d	$s7, $s6, $a2, 3
	slli.d	$a1, $s6, 3
	xvpickve2gr.d	$s8, $xr9, 3
	slli.d	$s0, $s8, 3
	fldx.d	$ft1, $a2, $s2
	fldx.d	$ft2, $a2, $s1
	fldx.d	$ft3, $a2, $a1
	fldx.d	$ft4, $a2, $s0
	alsl.d	$ra, $s8, $a2, 3
	xvinsve0.d	$xr9, $xr10, 1
	xvinsve0.d	$xr9, $xr11, 2
	xvinsve0.d	$xr9, $xr12, 3
	alsl.d	$a6, $a6, $t4, 3
	alsl.d	$s4, $s4, $t4, 3
	alsl.d	$s6, $s6, $t4, 3
	fldx.d	$ft2, $t4, $s2
	fldx.d	$ft3, $t4, $s1
	fldx.d	$ft4, $t4, $a1
	fldx.d	$ft5, $t4, $s0
	alsl.d	$s8, $s8, $t4, 3
	xvinsve0.d	$xr10, $xr11, 1
	xvinsve0.d	$xr10, $xr12, 2
	xvinsve0.d	$xr10, $xr13, 3
	fld.d	$ft3, $s3, 8
	fld.d	$ft4, $s5, 8
	fld.d	$ft5, $s7, 8
	xvfadd.d	$xr14, $xr9, $xr10
	fld.d	$ft7, $ra, 8
	xvinsve0.d	$xr11, $xr12, 1
	xvinsve0.d	$xr11, $xr13, 2
	fld.d	$ft4, $a6, 8
	fld.d	$ft5, $s4, 8
	fld.d	$ft8, $s6, 8
	fld.d	$ft9, $s8, 8
	xvinsve0.d	$xr11, $xr15, 3
	xvinsve0.d	$xr12, $xr13, 1
	xvinsve0.d	$xr12, $xr16, 2
	xvinsve0.d	$xr12, $xr17, 3
	xvfadd.d	$xr13, $xr11, $xr12
	xvfsub.d	$xr9, $xr9, $xr10
	xvfsub.d	$xr10, $xr11, $xr12
	xvfadd.d	$xr11, $xr7, $xr14
	xvfadd.d	$xr12, $xr8, $xr13
	xvpickve.d	$xr15, $xr12, 1
	xvpermi.d	$xr16, $xr11, 68
	xvrepl128vei.d	$xr16, $xr16, 1
	vextrins.d	$vr16, $vr15, 16
	vst	$vr16, $t5, -16
	xvpermi.d	$xr15, $xr11, 238
	xvpermi.d	$xr16, $xr12, 238
	xvori.b	$xr17, $xr3, 0
	xvshuf.d	$xr17, $xr16, $xr15
	xvst	$xr17, $t5, 0
	vpackev.d	$vr11, $vr12, $vr11
	vst	$vr11, $t5, -32
	xvfsub.d	$xr8, $xr13, $xr8
	xvfsub.d	$xr7, $xr7, $xr14
	vpackev.d	$vr11, $vr7, $vr8
	vstx	$vr11, $a2, $s2
	xvpickve.d	$xr11, $xr7, 1
	xvpermi.d	$xr12, $xr8, 68
	xvrepl128vei.d	$xr12, $xr12, 1
	vextrins.d	$vr12, $vr11, 16
	vstx	$vr12, $a2, $s1
	xvpickve.d	$xr11, $xr7, 2
	xvpermi.d	$xr8, $xr8, 78
	xvrepl128vei.d	$xr12, $xr8, 0
	vextrins.d	$vr12, $vr11, 16
	vstx	$vr12, $a2, $a1
	xvpickve.d	$xr7, $xr7, 3
	xvrepl128vei.d	$xr8, $xr8, 1
	vextrins.d	$vr8, $vr7, 16
	vstx	$vr8, $a2, $s0
	xvfsub.d	$xr7, $xr5, $xr10
	xvfadd.d	$xr8, $xr6, $xr9
	xvfsub.d	$xr11, $xr7, $xr8
	xvfmul.d	$xr11, $xr2, $xr11
	xvfadd.d	$xr7, $xr8, $xr7
	xvfmul.d	$xr7, $xr2, $xr7
	vpackev.d	$vr8, $vr7, $vr11
	vstx	$vr8, $a2, $a3
	xvpickve.d	$xr8, $xr7, 1
	xvpermi.d	$xr12, $xr11, 68
	xvrepl128vei.d	$xr12, $xr12, 1
	vextrins.d	$vr12, $vr8, 16
	vstx	$vr12, $a2, $fp
	xvpickve.d	$xr8, $xr7, 2
	xvpermi.d	$xr11, $xr11, 78
	xvrepl128vei.d	$xr12, $xr11, 0
	vextrins.d	$vr12, $vr8, 16
	vstx	$vr12, $a2, $t8
	xvpickve.d	$xr7, $xr7, 3
	xvrepl128vei.d	$xr8, $xr11, 1
	vextrins.d	$vr8, $vr7, 16
	vstx	$vr8, $a2, $t7
	xvfadd.d	$xr5, $xr5, $xr10
	xvfsub.d	$xr6, $xr9, $xr6
	xvfsub.d	$xr7, $xr6, $xr5
	xvfmul.d	$xr7, $xr2, $xr7
	xvfadd.d	$xr5, $xr6, $xr5
	xvfmul.d	$xr5, $xr2, $xr5
	vpackev.d	$vr6, $vr5, $vr7
	vstx	$vr6, $t4, $s2
	xvpickve.d	$xr6, $xr5, 1
	xvpermi.d	$xr8, $xr7, 68
	xvrepl128vei.d	$xr8, $xr8, 1
	vextrins.d	$vr8, $vr6, 16
	vstx	$vr8, $t4, $s1
	xvpickve.d	$xr6, $xr5, 2
	xvpermi.d	$xr7, $xr7, 78
	xvrepl128vei.d	$xr8, $xr7, 0
	vextrins.d	$vr8, $vr6, 16
	vstx	$vr8, $t4, $a1
	xvpickve.d	$xr5, $xr5, 3
	xvrepl128vei.d	$xr6, $xr7, 1
	vextrins.d	$vr6, $vr5, 16
	vstx	$vr6, $t4, $s0
	xvaddi.du	$xr4, $xr4, 8
	addi.d	$t6, $t6, -4
	addi.d	$t5, $t5, 64
	bnez	$t6, .LBB9_116
# %bb.117:                              # %middle.block
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	bne	$a0, $t3, .LBB9_6
	b	.LBB9_8
.Lfunc_end9:
	.size	cftmdl, .Lfunc_end9-cftmdl
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"FFT sanity check failed! Difference is: %le\n"
	.size	.L.str, 45

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"%e %e\n"
	.size	.L.str.1, 7

	.section	".note.GNU-stack","",@progbits
	.addrsig
