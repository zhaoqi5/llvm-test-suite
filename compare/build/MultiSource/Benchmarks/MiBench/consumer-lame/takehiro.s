	.file	"takehiro.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function count_bits
.LCPI0_0:
	.dword	0x40c0070000000000              # double 8206
	.text
	.globl	count_bits
	.p2align	5
	.type	count_bits,@function
count_bits:                             # @count_bits
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a3
	ld.wu	$a3, $a3, 12
	pcalau12i	$a4, %got_pc_hi20(ipow20)
	ld.d	$a4, $a4, %got_pc_lo12(ipow20)
	slli.d	$a3, $a3, 3
	fldx.d	$fa0, $a4, $a3
	pcalau12i	$a3, %pc_hi20(.LCPI0_0)
	fld.d	$fa1, $a3, %pc_lo12(.LCPI0_0)
	move	$s0, $a1
	move	$a1, $a0
	st.w	$zero, $sp, 8
	fdiv.d	$fa0, $fa1, $fa0
	lu12i.w	$a0, -2
	ori	$a3, $a0, 3584
	lu12i.w	$a0, 1
	ori	$a4, $a0, 512
	lu12i.w	$a0, 24
	ori	$a0, $a0, 1696
	.p2align	4, , 16
.LBB0_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a5, $a2, $a3
	fldx.d	$fa1, $a5, $a4
	fcmp.clt.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB0_30
# %bb.2:                                # %for.cond
                                        #   in Loop: Header=BB0_1 Depth=1
	addi.d	$a3, $a3, 8
	bnez	$a3, .LBB0_1
# %bb.3:                                # %for.end
	ld.w	$a0, $a1, 260
	beqz	$a0, .LBB0_6
# %bb.4:                                # %if.then4
	move	$a0, $a2
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(quantize_xrpow)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 24
	ori	$a0, $zero, 2
	bne	$a1, $a0, .LBB0_7
.LBB0_5:                                # %if.then7
	addi.d	$s1, $s0, 144
	addi.d	$a2, $sp, 8
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(choose_table_short)
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, 32
	addi.d	$a0, $s0, 2047
	addi.d	$a1, $a0, 257
	addi.d	$a2, $sp, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(choose_table_short)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ld.w	$a0, $sp, 8
	st.w	$a1, $fp, 36
	ori	$a1, $zero, 288
	b	.LBB0_29
.LBB0_6:                                # %if.else
	move	$a0, $a2
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(quantize_xrpow_ISO)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 24
	ori	$a0, $zero, 2
	beq	$a1, $a0, .LBB0_5
.LBB0_7:                                # %if.else14
	addi.d	$a2, $s0, 2047
	addi.d	$a2, $a2, 253
	ori	$a5, $zero, 574
	ori	$a3, $zero, 578
	.p2align	4, , 16
.LBB0_8:                                # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	beq	$a3, $a0, .LBB0_14
# %bb.9:                                # %for.body.i
                                        #   in Loop: Header=BB0_8 Depth=1
	ld.w	$a4, $a2, 0
	ld.w	$a6, $a2, -4
	or	$a4, $a6, $a4
	addi.w	$a5, $a5, -2
	addi.d	$a3, $a3, -2
	addi.d	$a2, $a2, -8
	beqz	$a4, .LBB0_8
# %bb.10:                               # %for.end.i
	addi.w	$a2, $a5, 4
	ori	$a0, $zero, 4
	st.w	$a2, $fp, 8
	blt	$a3, $a0, .LBB0_15
# %bb.11:                               # %for.body7.lr.ph.i
	pcalau12i	$a0, %got_pc_hi20(ht)
	ld.d	$a4, $a0, %got_pc_lo12(ht)
	move	$a0, $zero
	move	$a3, $zero
	ld.d	$a4, $a4, 784
	bstrpick.d	$a5, $a5, 31, 0
	alsl.d	$a5, $a5, $s0, 2
	ori	$a6, $zero, 1
	ori	$a7, $zero, 7
	move	$s2, $a2
	.p2align	4, , 16
.LBB0_12:                               # %for.body7.i
                                        # =>This Inner Loop Header: Depth=1
	alsl.d	$t0, $s2, $s0, 2
	ld.w	$t2, $t0, -4
	ld.w	$t3, $t0, -8
	ld.w	$t1, $t0, -12
	ld.w	$t0, $a5, 0
	or	$t4, $t3, $t2
	or	$t4, $t4, $t1
	or	$t4, $t4, $t0
	bltu	$a6, $t4, .LBB0_16
# %bb.13:                               # %if.end25.i
                                        #   in Loop: Header=BB0_12 Depth=1
	add.d	$a3, $t2, $a3
	sltu	$t3, $zero, $t3
	ori	$t4, $t2, 2
	masknez	$t2, $t2, $t3
	maskeqz	$t4, $t4, $t3
	or	$t2, $t4, $t2
	sltu	$t1, $zero, $t1
	addi.w	$t4, $t2, 4
	masknez	$t2, $t2, $t1
	maskeqz	$t4, $t4, $t1
	or	$t2, $t4, $t2
	sltui	$t4, $t0, 1
	addi.w	$t5, $t2, 8
	maskeqz	$t2, $t2, $t4
	masknez	$t4, $t5, $t4
	addi.w	$s2, $s2, -4
	or	$t2, $t2, $t4
	ldx.bu	$t2, $a4, $t2
	add.d	$a3, $a3, $t3
	add.d	$a3, $a3, $t0
	add.d	$a3, $a3, $t1
	add.w	$a0, $a0, $t2
	addi.w	$t0, $s2, 4
	addi.d	$a5, $a5, -16
	bltu	$a7, $t0, .LBB0_12
	b	.LBB0_16
.LBB0_14:                               # %for.end.thread.i
	move	$a2, $zero
	move	$a3, $zero
	move	$s2, $zero
	move	$a0, $zero
	st.w	$zero, $fp, 8
	b	.LBB0_16
.LBB0_15:
	move	$a3, $zero
	move	$a0, $zero
	move	$s2, $a2
.LBB0_16:                               # %for.end58.i
	sub.w	$a4, $a2, $s2
	slt	$a5, $a0, $a4
	xori	$a6, $a5, 1
	masknez	$a4, $a4, $a5
	maskeqz	$a0, $a0, $a5
	or	$a0, $a0, $a4
	add.w	$a0, $a0, $a3
	st.w	$a0, $sp, 12
	st.w	$a6, $fp, 72
	st.w	$a0, $fp, 88
	st.w	$s2, $fp, 4
	beqz	$s2, .LBB0_19
# %bb.17:                               # %if.end71.i
	pcalau12i	$a0, %got_pc_hi20(scalefac_band)
	ld.d	$a0, $a0, %got_pc_lo12(scalefac_band)
	beqz	$a1, .LBB0_20
# %bb.18:                               # %if.else117.i
	ld.w	$a0, $a0, 32
	ori	$a1, $zero, 7
	lu32i.d	$a1, 13
	st.d	$a1, $fp, 56
	slt	$a1, $a0, $s2
	masknez	$a2, $s2, $a1
	maskeqz	$a0, $a0, $a1
	or	$s1, $a0, $a2
	b	.LBB0_27
.LBB0_19:
	move	$a3, $zero
	b	.LBB0_28
.LBB0_20:                               # %while.cond.i.preheader
	pcalau12i	$a1, %pc_hi20(subdv_table+4)
	addi.d	$a2, $a1, %pc_lo12(subdv_table+4)
	addi.d	$a1, $a0, 4
	.p2align	4, , 16
.LBB0_21:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, 0
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 4
	blt	$a3, $s2, .LBB0_21
# %bb.22:                               # %while.end.i
	ld.w	$a4, $a2, -4
	addi.d	$a3, $a4, 3
	addi.d	$a1, $a4, 2
	alsl.d	$a4, $a4, $a0, 2
	addi.d	$a4, $a4, 4
	.p2align	4, , 16
.LBB0_23:                               # %while.cond82.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a4, 0
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, -4
	blt	$s2, $a5, .LBB0_23
# %bb.24:                               # %while.end89.i
	ld.w	$a4, $a2, 0
	addi.d	$a2, $a3, -2
	st.w	$a2, $fp, 56
	addi.d	$a2, $a4, 1
	add.w	$a3, $a4, $a3
	.p2align	4, , 16
.LBB0_25:                               # %while.cond93.i
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a3, 31, 0
	slli.d	$a5, $a4, 2
	ldx.w	$a5, $a0, $a5
	addi.d	$a2, $a2, -1
	addi.w	$a3, $a3, -1
	blt	$s2, $a5, .LBB0_25
# %bb.26:                               # %while.end103.i
	alsl.d	$a3, $a4, $a0, 2
	st.w	$a2, $fp, 60
	bstrpick.d	$a1, $a1, 31, 0
	ld.w	$s3, $a3, 0
	slli.d	$a1, $a1, 2
	ldx.w	$s1, $a0, $a1
	alsl.d	$a0, $s3, $s0, 2
	alsl.d	$a1, $s2, $s0, 2
	addi.d	$a2, $sp, 12
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, 40
	move	$s2, $s3
.LBB0_27:                               # %if.end124.i
	alsl.d	$s1, $s1, $s0, 2
	addi.d	$a2, $sp, 12
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, 32
	alsl.d	$a1, $s2, $s0, 2
	addi.d	$a2, $sp, 12
	move	$a0, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 12
	ld.w	$a2, $fp, 8
	ld.w	$a3, $fp, 4
	move	$a1, $a0
	move	$a0, $a4
	st.w	$a1, $fp, 36
.LBB0_28:                               # %count_bits_long.exit
	sub.d	$a1, $a2, $a3
	bstrpick.d	$a1, $a1, 31, 2
	st.w	$a1, $fp, 8
	bstrpick.d	$a1, $a3, 31, 1
.LBB0_29:                               # %cleanup
	st.w	$a1, $fp, 4
.LBB0_30:                               # %cleanup
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end0:
	.size	count_bits, .Lfunc_end0-count_bits
                                        # -- End function
	.p2align	5                               # -- Begin function choose_table_short
	.type	choose_table_short,@function
choose_table_short:                     # @choose_table_short
# %bb.0:                                # %entry
	bgeu	$a0, $a1, .LBB1_3
# %bb.1:                                # %iter.check
	addi.d	$sp, $sp, -48
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	st.d	$s4, $sp, 0                     # 8-byte Folded Spill
	addi.d	$a3, $a0, 8
	sltu	$a4, $a3, $a1
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a1, $a4
	or	$a3, $a4, $a3
	nor	$a4, $a0, $zero
	add.d	$a4, $a3, $a4
	ori	$a3, $zero, 24
	bgeu	$a4, $a3, .LBB1_4
# %bb.2:
	move	$a7, $zero
	move	$a5, $a0
	b	.LBB1_14
.LBB1_3:
	addi.w	$a0, $zero, 0
	ret
.LBB1_4:                                # %vector.main.loop.iter.check
	srli.d	$a3, $a4, 3
	ori	$a5, $zero, 120
	addi.d	$a3, $a3, 1
	bgeu	$a4, $a5, .LBB1_6
# %bb.5:
	move	$a4, $zero
	move	$a7, $zero
	b	.LBB1_10
.LBB1_6:                                # %vector.ph
	bstrpick.d	$a4, $a3, 61, 4
	slli.d	$a4, $a4, 4
	xvrepli.b	$xr0, 0
	addi.d	$a5, $a0, 64
	move	$a6, $a4
	xvori.b	$xr1, $xr0, 0
	.p2align	4, , 16
.LBB1_7:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a5, -64
	ld.w	$t0, $a5, -56
	ld.w	$t1, $a5, -48
	ld.w	$t2, $a5, -40
	ld.w	$t3, $a5, -32
	ld.w	$t4, $a5, -24
	ld.w	$t5, $a5, -16
	ld.w	$t6, $a5, -8
	xvinsgr2vr.w	$xr2, $a7, 0
	xvinsgr2vr.w	$xr2, $t0, 1
	xvinsgr2vr.w	$xr2, $t1, 2
	xvinsgr2vr.w	$xr2, $t2, 3
	xvinsgr2vr.w	$xr2, $t3, 4
	xvinsgr2vr.w	$xr2, $t4, 5
	xvinsgr2vr.w	$xr2, $t5, 6
	xvinsgr2vr.w	$xr2, $t6, 7
	ld.w	$a7, $a5, 0
	ld.w	$t0, $a5, 8
	ld.w	$t1, $a5, 16
	ld.w	$t2, $a5, 24
	ld.w	$t3, $a5, 32
	ld.w	$t4, $a5, 40
	ld.w	$t5, $a5, 48
	ld.w	$t6, $a5, 56
	xvinsgr2vr.w	$xr3, $a7, 0
	xvinsgr2vr.w	$xr3, $t0, 1
	xvinsgr2vr.w	$xr3, $t1, 2
	xvinsgr2vr.w	$xr3, $t2, 3
	xvinsgr2vr.w	$xr3, $t3, 4
	xvinsgr2vr.w	$xr3, $t4, 5
	xvinsgr2vr.w	$xr3, $t5, 6
	xvinsgr2vr.w	$xr3, $t6, 7
	xvmax.w	$xr0, $xr0, $xr2
	xvmax.w	$xr1, $xr1, $xr3
	ld.w	$a7, $a5, -60
	ld.w	$t0, $a5, -52
	ld.w	$t1, $a5, -44
	ld.w	$t2, $a5, -36
	ld.w	$t3, $a5, -28
	ld.w	$t4, $a5, -20
	ld.w	$t5, $a5, -12
	ld.w	$t6, $a5, -4
	xvinsgr2vr.w	$xr2, $a7, 0
	xvinsgr2vr.w	$xr2, $t0, 1
	xvinsgr2vr.w	$xr2, $t1, 2
	xvinsgr2vr.w	$xr2, $t2, 3
	xvinsgr2vr.w	$xr2, $t3, 4
	xvinsgr2vr.w	$xr2, $t4, 5
	xvinsgr2vr.w	$xr2, $t5, 6
	xvinsgr2vr.w	$xr2, $t6, 7
	ld.w	$a7, $a5, 4
	ld.w	$t0, $a5, 12
	ld.w	$t1, $a5, 20
	ld.w	$t2, $a5, 28
	ld.w	$t3, $a5, 36
	ld.w	$t4, $a5, 44
	ld.w	$t5, $a5, 52
	ld.w	$t6, $a5, 60
	xvinsgr2vr.w	$xr3, $a7, 0
	xvinsgr2vr.w	$xr3, $t0, 1
	xvinsgr2vr.w	$xr3, $t1, 2
	xvinsgr2vr.w	$xr3, $t2, 3
	xvinsgr2vr.w	$xr3, $t3, 4
	xvinsgr2vr.w	$xr3, $t4, 5
	xvinsgr2vr.w	$xr3, $t5, 6
	xvinsgr2vr.w	$xr3, $t6, 7
	xvmax.w	$xr0, $xr0, $xr2
	xvmax.w	$xr1, $xr1, $xr3
	addi.d	$a6, $a6, -16
	addi.d	$a5, $a5, 128
	bnez	$a6, .LBB1_7
# %bb.8:                                # %middle.block
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
	xvpickve2gr.w	$a7, $xr0, 0
	beq	$a3, $a4, .LBB1_15
# %bb.9:                                # %vec.epilog.iter.check
	andi	$a5, $a3, 12
	beqz	$a5, .LBB1_13
.LBB1_10:                               # %vec.epilog.ph
	bstrpick.d	$a5, $a3, 61, 2
	slli.d	$a6, $a5, 2
	slli.d	$a5, $a5, 5
	add.d	$a5, $a0, $a5
	vreplgr2vr.w	$vr0, $a7
	sub.d	$a7, $a4, $a6
	alsl.d	$a4, $a4, $a0, 3
	addi.d	$a4, $a4, 16
	.p2align	4, , 16
.LBB1_11:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t0, $a4, -16
	ld.w	$t1, $a4, -8
	ld.w	$t2, $a4, 0
	ld.w	$t3, $a4, 8
	vinsgr2vr.w	$vr1, $t0, 0
	vinsgr2vr.w	$vr1, $t1, 1
	vinsgr2vr.w	$vr1, $t2, 2
	vinsgr2vr.w	$vr1, $t3, 3
	vmax.w	$vr0, $vr0, $vr1
	ld.w	$t0, $a4, -12
	ld.w	$t1, $a4, -4
	ld.w	$t2, $a4, 4
	ld.w	$t3, $a4, 12
	vinsgr2vr.w	$vr1, $t0, 0
	vinsgr2vr.w	$vr1, $t1, 1
	vinsgr2vr.w	$vr1, $t2, 2
	vinsgr2vr.w	$vr1, $t3, 3
	vmax.w	$vr0, $vr0, $vr1
	addi.d	$a7, $a7, 4
	addi.d	$a4, $a4, 32
	bnez	$a7, .LBB1_11
# %bb.12:                               # %vec.epilog.middle.block
	vshuf4i.w	$vr1, $vr0, 14
	vmax.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a7, $vr0, 0
	bne	$a3, $a6, .LBB1_14
	b	.LBB1_15
.LBB1_13:
	alsl.d	$a5, $a4, $a0, 3
	.p2align	4, , 16
.LBB1_14:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a5, 0
	slt	$a4, $a3, $a7
	masknez	$a3, $a3, $a4
	ld.w	$a6, $a5, 4
	maskeqz	$a4, $a7, $a4
	or	$a3, $a4, $a3
	addi.d	$a4, $a5, 8
	slt	$a5, $a6, $a3
	maskeqz	$a3, $a3, $a5
	masknez	$a5, $a6, $a5
	or	$a7, $a3, $a5
	move	$a5, $a4
	bltu	$a4, $a1, .LBB1_14
.LBB1_15:                               # %ix_max.exit
	lu12i.w	$a3, 2
	ori	$a3, $a3, 14
	bgeu	$a3, $a7, .LBB1_17
# %bb.16:
	addi.d	$a5, $zero, -1
	lu12i.w	$a0, 24
	ori	$a0, $a0, 1696
	b	.LBB1_67
.LBB1_17:                               # %if.end
	ori	$a3, $zero, 15
	bltu	$a3, $a7, .LBB1_37
# %bb.18:                               # %if.then2
	beqz	$a7, .LBB1_69
# %bb.19:                               # %if.end5
	pcalau12i	$a3, %pc_hi20(huf_tbl_noESC)
	addi.d	$a3, $a3, %pc_lo12(huf_tbl_noESC)
	alsl.d	$a3, $a7, $a3, 2
	ld.wu	$a5, $a3, -4
	pcalau12i	$a3, %got_pc_hi20(ht)
	ld.d	$a7, $a3, %got_pc_lo12(ht)
	move	$a6, $zero
	move	$t2, $zero
	slli.d	$a3, $a5, 4
	alsl.d	$a3, $a5, $a3, 3
	add.d	$a3, $a7, $a3
	ld.d	$t0, $a3, 16
	addi.w	$a3, $a5, 0
	pcalau12i	$a4, %pc_hi20(cb_esc_buf)
	addi.d	$a4, $a4, %pc_lo12(cb_esc_buf)
	move	$t1, $a0
	.p2align	4, , 16
.LBB1_20:                               # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t3, $t1, 0
	ld.w	$t4, $t1, 12
	sltu	$t5, $zero, $t3
	sltu	$t6, $zero, $t4
	alsl.w	$t7, $t3, $t4, 4
	alsl.d	$t3, $t3, $t4, 4
	add.d	$a6, $a6, $t6
	st.w	$t3, $a4, 0
	ldx.bu	$t3, $t0, $t7
	ld.w	$t4, $t1, 4
	ld.w	$t6, $t1, 16
	add.d	$a6, $a6, $t5
	add.d	$t2, $t2, $t3
	sltu	$t3, $zero, $t4
	sltu	$t5, $zero, $t6
	alsl.w	$t7, $t4, $t6, 4
	alsl.d	$t4, $t4, $t6, 4
	add.d	$a6, $a6, $t5
	st.w	$t4, $a4, 4
	ldx.bu	$t4, $t0, $t7
	ld.w	$t5, $t1, 8
	ld.w	$t6, $t1, 20
	add.d	$a6, $a6, $t3
	add.d	$t2, $t2, $t4
	sltu	$t3, $zero, $t5
	sltu	$t4, $zero, $t6
	alsl.w	$t7, $t5, $t6, 4
	alsl.d	$t5, $t5, $t6, 4
	add.d	$a6, $a6, $t4
	st.w	$t5, $a4, 8
	ldx.bu	$t4, $t0, $t7
	add.d	$a6, $a6, $t3
	addi.d	$a4, $a4, 12
	addi.d	$t1, $t1, 24
	add.d	$t2, $t2, $t4
	bltu	$t1, $a1, .LBB1_20
# %bb.21:                               # %count_bit_short_noESC.exit
	pcalau12i	$t0, %pc_hi20(cb_esc_end)
	st.d	$a4, $t0, %pc_lo12(cb_esc_end)
	addi.d	$t0, $a3, -2
	ori	$t1, $zero, 11
	add.w	$a3, $t2, $a6
	bltu	$t1, $t0, .LBB1_36
# %bb.22:                               # %count_bit_short_noESC.exit
	slli.d	$t0, $t0, 2
	pcalau12i	$t1, %pc_hi20(.LJTI1_0)
	addi.d	$t1, $t1, %pc_lo12(.LJTI1_0)
	ldx.w	$t0, $t1, $t0
	add.d	$t1, $t1, $t0
	move	$t0, $a5
	jr	$t1
.LBB1_23:                               # %sw.bb
	addi.w	$t0, $a5, 1
	ori	$t1, $zero, 24
	mul.d	$t1, $t0, $t1
	add.d	$t1, $a7, $t1
	ld.d	$t1, $t1, 16
	addi.d	$t2, $a0, 24
	sltu	$t3, $t2, $a1
	masknez	$t2, $t2, $t3
	maskeqz	$t3, $a1, $t3
	or	$t2, $t3, $t2
	addi.d	$t2, $t2, -24
	xor	$t3, $t2, $a0
	sltu	$t3, $zero, $t3
	add.d	$t4, $a0, $t3
	sub.d	$t2, $t2, $t4
	lu12i.w	$t4, -349526
	ori	$t4, $t4, 2731
	lu32i.d	$t4, -349526
	lu52i.d	$t4, $t4, -1366
	mulh.du	$t2, $t2, $t4
	srli.d	$t2, $t2, 4
	add.d	$t2, $t2, $t3
	alsl.d	$t2, $t2, $t2, 1
	slli.d	$t3, $t2, 2
	pcalau12i	$t2, %pc_hi20(cb_esc_buf)
	addi.d	$t2, $t2, %pc_lo12(cb_esc_buf)
	add.d	$t3, $t2, $t3
	addi.d	$t3, $t3, 12
	addi.d	$t4, $t2, 4
	sltu	$t5, $t4, $t3
	maskeqz	$t3, $t3, $t5
	masknez	$t4, $t4, $t5
	or	$t3, $t3, $t4
	nor	$t4, $t2, $zero
	add.d	$t3, $t3, $t4
	ori	$t4, $zero, 28
	move	$t5, $a6
	bltu	$t3, $t4, .LBB1_27
# %bb.24:                               # %vector.ph179
	srli.d	$t2, $t3, 2
	addi.d	$t3, $t2, 1
	bstrpick.d	$t2, $t3, 62, 3
	slli.d	$t4, $t2, 3
	slli.d	$t2, $t2, 5
	pcalau12i	$t5, %pc_hi20(cb_esc_buf)
	addi.d	$t5, $t5, %pc_lo12(cb_esc_buf)
	vrepli.b	$vr0, 0
	add.d	$t2, $t5, $t2
	vori.b	$vr1, $vr0, 0
	vinsgr2vr.w	$vr1, $a6, 0
	addi.d	$t5, $t5, 16
	move	$t6, $t4
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB1_25:                               # %vector.body182
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $t5, -16
	vld	$vr4, $t5, 0
	vpickve2gr.w	$t7, $vr3, 3
	vpickve2gr.w	$t8, $vr3, 2
	vpickve2gr.w	$fp, $vr3, 1
	vpickve2gr.w	$s0, $vr3, 0
	vpickve2gr.w	$s1, $vr4, 3
	vpickve2gr.w	$s2, $vr4, 2
	vpickve2gr.w	$s3, $vr4, 1
	vpickve2gr.w	$s4, $vr4, 0
	ldx.b	$s0, $t1, $s0
	ldx.b	$fp, $t1, $fp
	ldx.b	$t8, $t1, $t8
	ldx.b	$t7, $t1, $t7
	vinsgr2vr.b	$vr3, $s0, 0
	vinsgr2vr.b	$vr3, $fp, 1
	vinsgr2vr.b	$vr3, $t8, 2
	vinsgr2vr.b	$vr3, $t7, 3
	ldx.b	$t7, $t1, $s4
	ldx.b	$t8, $t1, $s3
	ldx.b	$fp, $t1, $s2
	ldx.b	$s0, $t1, $s1
	vinsgr2vr.b	$vr4, $t7, 0
	vinsgr2vr.b	$vr4, $t8, 1
	vinsgr2vr.b	$vr4, $fp, 2
	vinsgr2vr.b	$vr4, $s0, 3
	vilvl.b	$vr3, $vr0, $vr3
	vilvl.h	$vr3, $vr0, $vr3
	vilvl.b	$vr4, $vr0, $vr4
	vilvl.h	$vr4, $vr0, $vr4
	vadd.w	$vr1, $vr1, $vr3
	vadd.w	$vr2, $vr2, $vr4
	addi.d	$t6, $t6, -8
	addi.d	$t5, $t5, 32
	bnez	$t6, .LBB1_25
# %bb.26:                               # %middle.block191
	vadd.w	$vr0, $vr2, $vr1
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$t5, $vr0, 0
	beq	$t3, $t4, .LBB1_28
	.p2align	4, , 16
.LBB1_27:                               # %do.body.i48
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t3, $t2, 0
	ldx.bu	$t3, $t1, $t3
	addi.d	$t4, $t2, 4
	add.w	$t5, $t5, $t3
	move	$t2, $t4
	bltu	$t4, $a4, .LBB1_27
.LBB1_28:                               # %count_bit_noESC2.exit
	slt	$t1, $t5, $a3
	masknez	$a5, $a5, $t1
	maskeqz	$t1, $t0, $t1
	or	$a5, $t1, $a5
	slt	$t1, $a3, $t5
	masknez	$t2, $t5, $t1
	maskeqz	$a3, $a3, $t1
	or	$a3, $a3, $t2
.LBB1_29:                               # %sw.bb11
	addi.w	$t0, $t0, 1
	ori	$t1, $zero, 24
	mul.d	$t1, $t0, $t1
	add.d	$a7, $a7, $t1
	ld.d	$a7, $a7, 16
	addi.d	$t1, $a0, 24
	sltu	$t2, $t1, $a1
	masknez	$t1, $t1, $t2
	maskeqz	$a1, $a1, $t2
	or	$a1, $a1, $t1
	addi.d	$a1, $a1, -24
	xor	$t1, $a1, $a0
	sltu	$t1, $zero, $t1
	add.d	$a0, $a0, $t1
	sub.d	$a0, $a1, $a0
	lu12i.w	$a1, -349526
	ori	$a1, $a1, 2731
	lu32i.d	$a1, -349526
	lu52i.d	$a1, $a1, -1366
	mulh.du	$a0, $a0, $a1
	srli.d	$a0, $a0, 4
	add.d	$a0, $a0, $t1
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a1, $a0, 2
	pcalau12i	$a0, %pc_hi20(cb_esc_buf)
	addi.d	$a0, $a0, %pc_lo12(cb_esc_buf)
	add.d	$a1, $a0, $a1
	addi.d	$a1, $a1, 12
	addi.d	$t1, $a0, 4
	sltu	$t2, $t1, $a1
	maskeqz	$a1, $a1, $t2
	masknez	$t1, $t1, $t2
	or	$a1, $a1, $t1
	nor	$t1, $a0, $zero
	add.d	$a1, $a1, $t1
	ori	$t1, $zero, 28
	bltu	$a1, $t1, .LBB1_33
# %bb.30:                               # %vector.ph201
	srli.d	$a0, $a1, 2
	addi.d	$a1, $a0, 1
	bstrpick.d	$a0, $a1, 62, 3
	slli.d	$t1, $a0, 3
	slli.d	$a0, $a0, 5
	pcalau12i	$t2, %pc_hi20(cb_esc_buf)
	addi.d	$t2, $t2, %pc_lo12(cb_esc_buf)
	vrepli.b	$vr0, 0
	add.d	$a0, $t2, $a0
	vori.b	$vr1, $vr0, 0
	vinsgr2vr.w	$vr1, $a6, 0
	addi.d	$a6, $t2, 16
	move	$t2, $t1
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB1_31:                               # %vector.body204
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $a6, -16
	vld	$vr4, $a6, 0
	vpickve2gr.w	$t3, $vr3, 3
	vpickve2gr.w	$t4, $vr3, 2
	vpickve2gr.w	$t5, $vr3, 1
	vpickve2gr.w	$t6, $vr3, 0
	vpickve2gr.w	$t7, $vr4, 3
	vpickve2gr.w	$t8, $vr4, 2
	vpickve2gr.w	$fp, $vr4, 1
	vpickve2gr.w	$s0, $vr4, 0
	ldx.b	$t6, $a7, $t6
	ldx.b	$t5, $a7, $t5
	ldx.b	$t4, $a7, $t4
	ldx.b	$t3, $a7, $t3
	vinsgr2vr.b	$vr3, $t6, 0
	vinsgr2vr.b	$vr3, $t5, 1
	vinsgr2vr.b	$vr3, $t4, 2
	vinsgr2vr.b	$vr3, $t3, 3
	ldx.b	$t3, $a7, $s0
	ldx.b	$t4, $a7, $fp
	ldx.b	$t5, $a7, $t8
	ldx.b	$t6, $a7, $t7
	vinsgr2vr.b	$vr4, $t3, 0
	vinsgr2vr.b	$vr4, $t4, 1
	vinsgr2vr.b	$vr4, $t5, 2
	vinsgr2vr.b	$vr4, $t6, 3
	vilvl.b	$vr3, $vr0, $vr3
	vilvl.h	$vr3, $vr0, $vr3
	vilvl.b	$vr4, $vr0, $vr4
	vilvl.h	$vr4, $vr0, $vr4
	vadd.w	$vr1, $vr1, $vr3
	vadd.w	$vr2, $vr2, $vr4
	addi.d	$t2, $t2, -8
	addi.d	$a6, $a6, 32
	bnez	$t2, .LBB1_31
# %bb.32:                               # %middle.block213
	vadd.w	$vr0, $vr2, $vr1
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a6, $vr0, 0
	beq	$a1, $t1, .LBB1_34
	.p2align	4, , 16
.LBB1_33:                               # %do.body.i57
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a0, 0
	ldx.bu	$a1, $a7, $a1
	addi.d	$t1, $a0, 4
	add.w	$a6, $a6, $a1
	move	$a0, $t1
	bltu	$t1, $a4, .LBB1_33
.LBB1_34:                               # %count_bit_noESC2.exit66
	slt	$a0, $a6, $a3
	masknez	$a1, $a5, $a0
	maskeqz	$a0, $t0, $a0
.LBB1_35:                               # %sw.epilog
	or	$a5, $a0, $a1
	slt	$a0, $a3, $a6
	masknez	$a1, $a6, $a0
	maskeqz	$a0, $a3, $a0
	or	$a3, $a0, $a1
.LBB1_36:                               # %sw.epilog
	ld.w	$a0, $a2, 0
	b	.LBB1_66
.LBB1_37:                               # %if.else
	pcalau12i	$a3, %got_pc_hi20(ht)
	ld.d	$a6, $a3, %got_pc_lo12(ht)
	ld.w	$a5, $a6, 580
	addi.w	$a4, $a7, -15
	ori	$a3, $zero, 24
	bge	$a5, $a4, .LBB1_46
# %bb.38:                               # %for.inc
	ld.w	$a5, $a6, 604
	ori	$a3, $zero, 25
	bge	$a5, $a4, .LBB1_46
# %bb.39:                               # %for.inc.1
	ld.w	$a5, $a6, 628
	ori	$a3, $zero, 26
	bge	$a5, $a4, .LBB1_46
# %bb.40:                               # %for.inc.2
	ld.w	$a5, $a6, 652
	ori	$a3, $zero, 27
	bge	$a5, $a4, .LBB1_46
# %bb.41:                               # %for.inc.3
	ld.w	$a5, $a6, 676
	ori	$a3, $zero, 28
	bge	$a5, $a4, .LBB1_46
# %bb.42:                               # %for.inc.4
	ld.w	$a5, $a6, 700
	ori	$a3, $zero, 29
	bge	$a5, $a4, .LBB1_46
# %bb.43:                               # %for.inc.5
	ld.w	$a5, $a6, 724
	ori	$a3, $zero, 30
	bge	$a5, $a4, .LBB1_46
# %bb.44:                               # %for.inc.6
	ld.w	$a5, $a6, 748
	ori	$a3, $zero, 31
	bge	$a5, $a4, .LBB1_46
# %bb.45:
	ori	$a4, $zero, 24
	ori	$a3, $zero, 32
	b	.LBB1_51
.LBB1_46:                               # %for.body34.preheader
	slli.d	$a5, $a3, 4
	alsl.d	$a7, $a3, $a5, 3
	ori	$a5, $zero, 8
	ori	$t0, $zero, 768
	.p2align	4, , 16
.LBB1_47:                               # %for.body34
                                        # =>This Inner Loop Header: Depth=1
	add.d	$t1, $a6, $a7
	ld.w	$t1, $t1, -188
	bge	$t1, $a4, .LBB1_50
# %bb.48:                               # %for.inc41
                                        #   in Loop: Header=BB1_47 Depth=1
	addi.d	$a7, $a7, 24
	addi.d	$a5, $a5, -1
	bne	$a7, $t0, .LBB1_47
# %bb.49:
	ori	$a4, $zero, 24
	b	.LBB1_51
.LBB1_50:                               # %for.end43.loopexit.split.loop.exit
	sub.w	$a4, $a3, $a5
.LBB1_51:                               # %for.end43
	ori	$a7, $zero, 24
	mul.d	$a5, $a4, $a7
	ldx.w	$a5, $a6, $a5
	mul.d	$a7, $a3, $a7
	ldx.w	$a7, $a6, $a7
	ld.d	$t0, $a6, 400
	ld.d	$t1, $a6, 592
	move	$a6, $zero
	move	$t4, $zero
	move	$t5, $zero
	ori	$t2, $zero, 14
	ori	$t3, $zero, 15
	b	.LBB1_53
	.p2align	4, , 16
.LBB1_52:                               # %if.end18.2.i
                                        #   in Loop: Header=BB1_53 Depth=1
	ldx.bu	$t7, $t0, $t6
	ldx.bu	$t6, $t1, $t6
	add.w	$t4, $t4, $t7
	addi.d	$a0, $a0, 24
	add.w	$t5, $t5, $t6
	bgeu	$a0, $a1, .LBB1_65
.LBB1_53:                               # %do.body.i80
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t6, $a0, 0
	beqz	$t6, .LBB1_61
# %bb.54:                               # %if.then.i
                                        #   in Loop: Header=BB1_53 Depth=1
	addi.d	$a6, $a6, 1
	slt	$t7, $t2, $t6
	maskeqz	$t8, $a5, $t7
	add.d	$t4, $t8, $t4
	maskeqz	$t7, $a7, $t7
	add.d	$t5, $t7, $t5
	slti	$t7, $t6, 15
	masknez	$t8, $t3, $t7
	maskeqz	$t6, $t6, $t7
	or	$t6, $t6, $t8
	slli.w	$t6, $t6, 4
	ld.w	$t7, $a0, 12
	beqz	$t7, .LBB1_56
.LBB1_55:                               # %if.then10.i
                                        #   in Loop: Header=BB1_53 Depth=1
	addi.d	$a6, $a6, 1
	slt	$t8, $t2, $t7
	maskeqz	$fp, $a5, $t8
	add.d	$t4, $t4, $fp
	maskeqz	$fp, $a7, $t8
	add.d	$t5, $t5, $fp
	masknez	$t7, $t7, $t8
	maskeqz	$t8, $t3, $t8
	or	$t7, $t8, $t7
	add.w	$t6, $t6, $t7
.LBB1_56:                               # %if.end18.i
                                        #   in Loop: Header=BB1_53 Depth=1
	ldx.bu	$t7, $t0, $t6
	ldx.bu	$t8, $t1, $t6
	ld.w	$t6, $a0, 4
	add.d	$t4, $t4, $t7
	add.d	$t5, $t5, $t8
	beqz	$t6, .LBB1_62
# %bb.57:                               # %if.then.1.i
                                        #   in Loop: Header=BB1_53 Depth=1
	addi.d	$a6, $a6, 1
	slt	$t7, $t2, $t6
	maskeqz	$t8, $a5, $t7
	add.d	$t4, $t8, $t4
	maskeqz	$t7, $a7, $t7
	add.d	$t5, $t7, $t5
	slti	$t7, $t6, 15
	masknez	$t8, $t3, $t7
	maskeqz	$t6, $t6, $t7
	or	$t6, $t6, $t8
	slli.w	$t6, $t6, 4
	ld.w	$t7, $a0, 16
	beqz	$t7, .LBB1_59
.LBB1_58:                               # %if.then10.1.i
                                        #   in Loop: Header=BB1_53 Depth=1
	addi.d	$a6, $a6, 1
	slt	$t8, $t2, $t7
	maskeqz	$fp, $a5, $t8
	add.d	$t4, $t4, $fp
	maskeqz	$fp, $a7, $t8
	add.d	$t5, $t5, $fp
	masknez	$t7, $t7, $t8
	maskeqz	$t8, $t3, $t8
	or	$t7, $t8, $t7
	add.w	$t6, $t6, $t7
.LBB1_59:                               # %if.end18.1.i
                                        #   in Loop: Header=BB1_53 Depth=1
	ldx.bu	$t7, $t0, $t6
	ldx.bu	$t8, $t1, $t6
	ld.w	$t6, $a0, 8
	add.d	$t4, $t4, $t7
	add.d	$t5, $t5, $t8
	beqz	$t6, .LBB1_63
# %bb.60:                               # %if.then.2.i
                                        #   in Loop: Header=BB1_53 Depth=1
	addi.d	$a6, $a6, 1
	slt	$t7, $t2, $t6
	maskeqz	$t8, $a5, $t7
	add.d	$t4, $t8, $t4
	maskeqz	$t7, $a7, $t7
	add.d	$t5, $t7, $t5
	slti	$t7, $t6, 15
	masknez	$t8, $t3, $t7
	maskeqz	$t6, $t6, $t7
	or	$t6, $t6, $t8
	slli.w	$t6, $t6, 4
	ld.w	$t7, $a0, 20
	bnez	$t7, .LBB1_64
	b	.LBB1_52
	.p2align	4, , 16
.LBB1_61:                               #   in Loop: Header=BB1_53 Depth=1
	move	$t6, $zero
	ld.w	$t7, $a0, 12
	bnez	$t7, .LBB1_55
	b	.LBB1_56
	.p2align	4, , 16
.LBB1_62:                               #   in Loop: Header=BB1_53 Depth=1
	move	$t6, $zero
	ld.w	$t7, $a0, 16
	bnez	$t7, .LBB1_58
	b	.LBB1_59
	.p2align	4, , 16
.LBB1_63:                               #   in Loop: Header=BB1_53 Depth=1
	move	$t6, $zero
	ld.w	$t7, $a0, 20
	beqz	$t7, .LBB1_52
.LBB1_64:                               # %if.then10.2.i
                                        #   in Loop: Header=BB1_53 Depth=1
	addi.d	$a6, $a6, 1
	slt	$t8, $t2, $t7
	maskeqz	$fp, $a5, $t8
	add.d	$t4, $t4, $fp
	maskeqz	$fp, $a7, $t8
	add.d	$t5, $t5, $fp
	masknez	$t7, $t7, $t8
	maskeqz	$t8, $t3, $t8
	or	$t7, $t8, $t7
	add.w	$t6, $t6, $t7
	b	.LBB1_52
.LBB1_65:                               # %count_bit_short_ESC.exit
	slt	$a0, $t5, $t4
	masknez	$a1, $a4, $a0
	maskeqz	$a0, $a3, $a0
	or	$a5, $a0, $a1
	slt	$a0, $t4, $t5
	masknez	$a1, $t5, $a0
	ld.w	$a3, $a2, 0
	maskeqz	$a0, $t4, $a0
	or	$a0, $a0, $a1
	add.d	$a0, $a0, $a6
.LBB1_66:                               # %cleanup.sink.split
	add.d	$a0, $a0, $a3
.LBB1_67:                               # %cleanup.sink.split
	st.w	$a0, $a2, 0
.LBB1_68:
	ld.d	$s4, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	addi.w	$a0, $a5, 0
	ret
.LBB1_69:
	move	$a5, $zero
	b	.LBB1_68
.LBB1_70:                               # %sw.bb17
	ld.d	$a5, $a7, 376
	addi.d	$a7, $a0, 24
	sltu	$t0, $a7, $a1
	masknez	$a7, $a7, $t0
	maskeqz	$a1, $a1, $t0
	or	$a1, $a1, $a7
	addi.d	$a1, $a1, -24
	xor	$a7, $a1, $a0
	sltu	$a7, $zero, $a7
	add.d	$a0, $a0, $a7
	sub.d	$a0, $a1, $a0
	lu12i.w	$a1, -349526
	ori	$a1, $a1, 2731
	lu32i.d	$a1, -349526
	lu52i.d	$a1, $a1, -1366
	mulh.du	$a0, $a0, $a1
	srli.d	$a0, $a0, 4
	add.d	$a0, $a0, $a7
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a1, $a0, 2
	pcalau12i	$a0, %pc_hi20(cb_esc_buf)
	addi.d	$a0, $a0, %pc_lo12(cb_esc_buf)
	add.d	$a1, $a0, $a1
	addi.d	$a1, $a1, 12
	addi.d	$a7, $a0, 4
	sltu	$t0, $a7, $a1
	maskeqz	$a1, $a1, $t0
	masknez	$a7, $a7, $t0
	or	$a1, $a1, $a7
	nor	$a7, $a0, $zero
	add.d	$a1, $a1, $a7
	ori	$a7, $zero, 28
	bltu	$a1, $a7, .LBB1_74
# %bb.71:                               # %vector.ph159
	srli.d	$a0, $a1, 2
	addi.d	$a1, $a0, 1
	bstrpick.d	$a0, $a1, 62, 3
	slli.d	$a7, $a0, 3
	slli.d	$a0, $a0, 5
	pcalau12i	$t0, %pc_hi20(cb_esc_buf)
	addi.d	$t0, $t0, %pc_lo12(cb_esc_buf)
	vrepli.b	$vr0, 0
	add.d	$a0, $t0, $a0
	vori.b	$vr1, $vr0, 0
	vinsgr2vr.w	$vr1, $a6, 0
	addi.d	$a6, $t0, 16
	move	$t0, $a7
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB1_72:                               # %vector.body162
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $a6, -16
	vld	$vr4, $a6, 0
	vpickve2gr.w	$t1, $vr3, 3
	vpickve2gr.w	$t2, $vr3, 2
	vpickve2gr.w	$t3, $vr3, 1
	vpickve2gr.w	$t4, $vr3, 0
	vpickve2gr.w	$t5, $vr4, 3
	vpickve2gr.w	$t6, $vr4, 2
	vpickve2gr.w	$t7, $vr4, 1
	vpickve2gr.w	$t8, $vr4, 0
	ldx.b	$t4, $a5, $t4
	ldx.b	$t3, $a5, $t3
	ldx.b	$t2, $a5, $t2
	ldx.b	$t1, $a5, $t1
	vinsgr2vr.b	$vr3, $t4, 0
	vinsgr2vr.b	$vr3, $t3, 1
	vinsgr2vr.b	$vr3, $t2, 2
	vinsgr2vr.b	$vr3, $t1, 3
	ldx.b	$t1, $a5, $t8
	ldx.b	$t2, $a5, $t7
	ldx.b	$t3, $a5, $t6
	ldx.b	$t4, $a5, $t5
	vinsgr2vr.b	$vr4, $t1, 0
	vinsgr2vr.b	$vr4, $t2, 1
	vinsgr2vr.b	$vr4, $t3, 2
	vinsgr2vr.b	$vr4, $t4, 3
	vilvl.b	$vr3, $vr0, $vr3
	vilvl.h	$vr3, $vr0, $vr3
	vilvl.b	$vr4, $vr0, $vr4
	vilvl.h	$vr4, $vr0, $vr4
	vadd.w	$vr1, $vr1, $vr3
	vadd.w	$vr2, $vr2, $vr4
	addi.d	$t0, $t0, -8
	addi.d	$a6, $a6, 32
	bnez	$t0, .LBB1_72
# %bb.73:                               # %middle.block170
	vadd.w	$vr0, $vr2, $vr1
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a6, $vr0, 0
	beq	$a1, $a7, .LBB1_75
	.p2align	4, , 16
.LBB1_74:                               # %do.body.i67
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a0, 0
	ldx.bu	$a1, $a5, $a1
	addi.d	$a7, $a0, 4
	add.w	$a6, $a6, $a1
	move	$a0, $a7
	bltu	$a7, $a4, .LBB1_74
.LBB1_75:                               # %count_bit_noESC2.exit76
	slt	$a0, $a6, $a3
	ori	$a1, $zero, 13
	masknez	$a1, $a1, $a0
	ori	$a4, $zero, 15
	maskeqz	$a0, $a4, $a0
	b	.LBB1_35
.Lfunc_end1:
	.size	choose_table_short, .Lfunc_end1-choose_table_short
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI1_0:
	.word	.LBB1_29-.LJTI1_0
	.word	.LBB1_36-.LJTI1_0
	.word	.LBB1_36-.LJTI1_0
	.word	.LBB1_29-.LJTI1_0
	.word	.LBB1_36-.LJTI1_0
	.word	.LBB1_23-.LJTI1_0
	.word	.LBB1_36-.LJTI1_0
	.word	.LBB1_36-.LJTI1_0
	.word	.LBB1_23-.LJTI1_0
	.word	.LBB1_36-.LJTI1_0
	.word	.LBB1_36-.LJTI1_0
	.word	.LBB1_70-.LJTI1_0
                                        # -- End function
	.text
	.globl	best_huffman_divide             # -- Begin function best_huffman_divide
	.p2align	5
	.type	best_huffman_divide,@function
best_huffman_divide:                    # @best_huffman_divide
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -432
	st.d	$ra, $sp, 424                   # 8-byte Folded Spill
	st.d	$fp, $sp, 416                   # 8-byte Folded Spill
	st.d	$s0, $sp, 408                   # 8-byte Folded Spill
	st.d	$s1, $sp, 400                   # 8-byte Folded Spill
	st.d	$s2, $sp, 392                   # 8-byte Folded Spill
	st.d	$s3, $sp, 384                   # 8-byte Folded Spill
	st.d	$s4, $sp, 376                   # 8-byte Folded Spill
	st.d	$s5, $sp, 368                   # 8-byte Folded Spill
	st.d	$s6, $sp, 360                   # 8-byte Folded Spill
	st.d	$s7, $sp, 352                   # 8-byte Folded Spill
	st.d	$s8, $sp, 344                   # 8-byte Folded Spill
	move	$fp, $a3
	move	$s0, $a2
	addi.d	$a0, $sp, 16
	ori	$a2, $zero, 120
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(scalefac_band)
	ld.d	$s3, $a0, %got_pc_lo12(scalefac_band)
	ld.w	$a0, $sp, 20
	ld.w	$a1, $s3, 8
	slli.w	$s7, $a0, 1
	ori	$a0, $zero, 2
	blt	$s7, $a1, .LBB2_22
# %bb.1:                                # %if.end
	ld.w	$a0, $sp, 104
	ld.w	$a2, $sp, 92
	add.d	$s4, $a2, $a0
	alsl.d	$s1, $s7, $fp, 2
	addi.d	$a2, $sp, 248
	st.w	$s4, $sp, 248
	alsl.d	$a0, $a1, $fp, 2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 12
	st.w	$a0, $sp, 148
	ori	$a0, $zero, 3
	blt	$s7, $a1, .LBB2_22
# %bb.2:                                # %if.end.1
	addi.d	$a2, $sp, 252
	st.w	$s4, $sp, 252
	alsl.d	$a0, $a1, $fp, 2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 16
	st.w	$a0, $sp, 152
	ori	$a0, $zero, 4
	blt	$s7, $a1, .LBB2_22
# %bb.3:                                # %if.end.2
	addi.d	$a2, $sp, 256
	st.w	$s4, $sp, 256
	alsl.d	$a0, $a1, $fp, 2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 20
	st.w	$a0, $sp, 156
	ori	$a0, $zero, 5
	blt	$s7, $a1, .LBB2_22
# %bb.4:                                # %if.end.3
	addi.d	$a2, $sp, 260
	st.w	$s4, $sp, 260
	alsl.d	$a0, $a1, $fp, 2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 24
	st.w	$a0, $sp, 160
	ori	$a0, $zero, 6
	blt	$s7, $a1, .LBB2_22
# %bb.5:                                # %if.end.4
	addi.d	$a2, $sp, 264
	st.w	$s4, $sp, 264
	alsl.d	$a0, $a1, $fp, 2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 28
	st.w	$a0, $sp, 164
	ori	$a0, $zero, 7
	blt	$s7, $a1, .LBB2_22
# %bb.6:                                # %if.end.5
	addi.d	$a2, $sp, 268
	st.w	$s4, $sp, 268
	alsl.d	$a0, $a1, $fp, 2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 32
	st.w	$a0, $sp, 168
	ori	$a0, $zero, 8
	blt	$s7, $a1, .LBB2_22
# %bb.7:                                # %if.end.6
	addi.d	$a2, $sp, 272
	st.w	$s4, $sp, 272
	alsl.d	$a0, $a1, $fp, 2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 36
	st.w	$a0, $sp, 172
	ori	$a0, $zero, 9
	blt	$s7, $a1, .LBB2_22
# %bb.8:                                # %if.end.7
	addi.d	$a2, $sp, 276
	st.w	$s4, $sp, 276
	alsl.d	$a0, $a1, $fp, 2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 40
	st.w	$a0, $sp, 176
	ori	$a0, $zero, 10
	blt	$s7, $a1, .LBB2_22
# %bb.9:                                # %if.end.8
	addi.d	$a2, $sp, 280
	st.w	$s4, $sp, 280
	alsl.d	$a0, $a1, $fp, 2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 44
	st.w	$a0, $sp, 180
	ori	$a0, $zero, 11
	blt	$s7, $a1, .LBB2_22
# %bb.10:                               # %if.end.9
	addi.d	$a2, $sp, 284
	st.w	$s4, $sp, 284
	alsl.d	$a0, $a1, $fp, 2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 48
	st.w	$a0, $sp, 184
	ori	$a0, $zero, 12
	blt	$s7, $a1, .LBB2_22
# %bb.11:                               # %if.end.10
	addi.d	$a2, $sp, 288
	st.w	$s4, $sp, 288
	alsl.d	$a0, $a1, $fp, 2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 52
	st.w	$a0, $sp, 188
	ori	$a0, $zero, 13
	blt	$s7, $a1, .LBB2_22
# %bb.12:                               # %if.end.11
	addi.d	$a2, $sp, 292
	st.w	$s4, $sp, 292
	alsl.d	$a0, $a1, $fp, 2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 56
	st.w	$a0, $sp, 192
	ori	$a0, $zero, 14
	blt	$s7, $a1, .LBB2_22
# %bb.13:                               # %if.end.12
	addi.d	$a2, $sp, 296
	st.w	$s4, $sp, 296
	alsl.d	$a0, $a1, $fp, 2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 60
	st.w	$a0, $sp, 196
	ori	$a0, $zero, 15
	blt	$s7, $a1, .LBB2_22
# %bb.14:                               # %if.end.13
	addi.d	$a2, $sp, 300
	st.w	$s4, $sp, 300
	alsl.d	$a0, $a1, $fp, 2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 64
	st.w	$a0, $sp, 200
	ori	$a0, $zero, 16
	blt	$s7, $a1, .LBB2_22
# %bb.15:                               # %if.end.14
	addi.d	$a2, $sp, 304
	st.w	$s4, $sp, 304
	alsl.d	$a0, $a1, $fp, 2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 68
	st.w	$a0, $sp, 204
	ori	$a0, $zero, 17
	blt	$s7, $a1, .LBB2_22
# %bb.16:                               # %if.end.15
	addi.d	$a2, $sp, 308
	st.w	$s4, $sp, 308
	alsl.d	$a0, $a1, $fp, 2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 72
	st.w	$a0, $sp, 208
	ori	$a0, $zero, 18
	blt	$s7, $a1, .LBB2_22
# %bb.17:                               # %if.end.16
	addi.d	$a2, $sp, 312
	st.w	$s4, $sp, 312
	alsl.d	$a0, $a1, $fp, 2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 76
	st.w	$a0, $sp, 212
	ori	$a0, $zero, 19
	blt	$s7, $a1, .LBB2_22
# %bb.18:                               # %if.end.17
	addi.d	$a2, $sp, 316
	st.w	$s4, $sp, 316
	alsl.d	$a0, $a1, $fp, 2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 80
	st.w	$a0, $sp, 216
	ori	$a0, $zero, 20
	blt	$s7, $a1, .LBB2_22
# %bb.19:                               # %if.end.18
	addi.d	$a2, $sp, 320
	st.w	$s4, $sp, 320
	alsl.d	$a0, $a1, $fp, 2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 84
	st.w	$a0, $sp, 220
	ori	$a0, $zero, 21
	blt	$s7, $a1, .LBB2_22
# %bb.20:                               # %if.end.19
	addi.d	$a2, $sp, 324
	st.w	$s4, $sp, 324
	alsl.d	$a0, $a1, $fp, 2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 88
	st.w	$a0, $sp, 224
	ori	$a0, $zero, 22
	blt	$s7, $a1, .LBB2_22
# %bb.21:                               # %if.end.20
	addi.d	$a2, $sp, 328
	st.w	$s4, $sp, 328
	alsl.d	$a0, $a1, $fp, 2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	st.w	$a0, $sp, 228
	ori	$a0, $zero, 23
.LBB2_22:                               # %for.body12.preheader
	ori	$a1, $zero, 25
	sub.d	$a2, $a1, $a0
	ori	$a3, $zero, 8
	lu12i.w	$a1, 24
	bgeu	$a2, $a3, .LBB2_24
# %bb.23:
	move	$a3, $a0
	b	.LBB2_27
.LBB2_24:                               # %vector.ph
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	add.d	$a3, $a0, $a4
	addi.d	$a5, $sp, 240
	alsl.d	$a0, $a0, $a5, 2
	addi.d	$a0, $a0, 16
	ori	$a5, $a1, 1696
	vreplgr2vr.w	$vr0, $a5
	move	$a5, $a4
	.p2align	4, , 16
.LBB2_25:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a0, -16
	vst	$vr0, $a0, 0
	addi.d	$a5, $a5, -8
	addi.d	$a0, $a0, 32
	bnez	$a5, .LBB2_25
# %bb.26:                               # %middle.block
	beq	$a2, $a4, .LBB2_29
.LBB2_27:                               # %for.body12.preheader95
	slli.d	$a0, $a3, 2
	ori	$a1, $a1, 1696
	addi.d	$a2, $sp, 240
	ori	$a3, $zero, 100
	.p2align	4, , 16
.LBB2_28:                               # %for.body12
                                        # =>This Inner Loop Header: Depth=1
	stx.w	$a1, $a0, $a2
	addi.d	$a0, $a0, 4
	bne	$a0, $a3, .LBB2_28
.LBB2_29:                               # %for.cond18.preheader
	move	$s4, $zero
	move	$s5, $zero
	b	.LBB2_31
	.p2align	4, , 16
.LBB2_30:                               # %for.inc68.7
                                        #   in Loop: Header=BB2_31 Depth=1
	addi.d	$s5, $s5, 4
	addi.d	$s4, $s4, 1
	move	$s3, $s6
	ori	$a0, $zero, 64
	beq	$s5, $a0, .LBB2_57
.LBB2_31:                               # %for.body20
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s8, $s3, $s5
	ld.w	$a0, $s8, 4
	blt	$s7, $a0, .LBB2_57
# %bb.32:                               # %if.end26
                                        #   in Loop: Header=BB2_31 Depth=1
	st.w	$s4, $sp, 72
	st.w	$zero, $sp, 340
	alsl.d	$s1, $a0, $fp, 2
	addi.d	$a2, $sp, 340
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	ld.w	$s2, $sp, 340
	st.w	$a0, $sp, 48
	blt	$a1, $s2, .LBB2_57
# %bb.33:                               # %for.cond35.preheader
                                        #   in Loop: Header=BB2_31 Depth=1
	move	$s6, $s3
	addi.d	$a0, $sp, 260
	add.d	$s3, $a0, $s5
	ld.w	$a0, $s3, -12
	add.w	$a0, $a0, $s2
	st.w	$a0, $sp, 16
	blt	$a1, $a0, .LBB2_36
# %bb.34:                               # %if.end46
                                        #   in Loop: Header=BB2_31 Depth=1
	ld.w	$a0, $s8, 8
	alsl.d	$a1, $a0, $fp, 2
	addi.d	$a2, $sp, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	ld.w	$a2, $sp, 16
	st.w	$a0, $sp, 52
	blt	$a1, $a2, .LBB2_36
# %bb.35:                               # %if.end61
                                        #   in Loop: Header=BB2_31 Depth=1
	addi.d	$a0, $sp, 160
	add.d	$a0, $a0, $s5
	ld.w	$a0, $a0, -12
	st.w	$zero, $sp, 76
	st.w	$a0, $sp, 56
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 120
	move	$a0, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
.LBB2_36:                               # %for.inc68
                                        #   in Loop: Header=BB2_31 Depth=1
	ld.w	$a0, $s3, -8
	add.w	$a0, $a0, $s2
	st.w	$a0, $sp, 16
	blt	$a1, $a0, .LBB2_39
# %bb.37:                               # %if.end46.1
                                        #   in Loop: Header=BB2_31 Depth=1
	ld.w	$a0, $s8, 12
	alsl.d	$a1, $a0, $fp, 2
	addi.d	$a2, $sp, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	ld.w	$a2, $sp, 16
	st.w	$a0, $sp, 52
	blt	$a1, $a2, .LBB2_39
# %bb.38:                               # %if.end61.1
                                        #   in Loop: Header=BB2_31 Depth=1
	addi.d	$a0, $sp, 160
	add.d	$a0, $a0, $s5
	ld.w	$a0, $a0, -8
	ori	$a1, $zero, 1
	st.w	$a1, $sp, 76
	st.w	$a0, $sp, 56
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 120
	move	$a0, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
.LBB2_39:                               # %for.inc68.1
                                        #   in Loop: Header=BB2_31 Depth=1
	ld.w	$a0, $s3, -4
	add.w	$a0, $a0, $s2
	st.w	$a0, $sp, 16
	blt	$a1, $a0, .LBB2_42
# %bb.40:                               # %if.end46.2
                                        #   in Loop: Header=BB2_31 Depth=1
	ld.w	$a0, $s8, 16
	alsl.d	$a1, $a0, $fp, 2
	addi.d	$a2, $sp, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	ld.w	$a2, $sp, 16
	st.w	$a0, $sp, 52
	blt	$a1, $a2, .LBB2_42
# %bb.41:                               # %if.end61.2
                                        #   in Loop: Header=BB2_31 Depth=1
	addi.d	$a0, $sp, 160
	add.d	$a0, $a0, $s5
	ld.w	$a0, $a0, -4
	ori	$a1, $zero, 2
	st.w	$a1, $sp, 76
	st.w	$a0, $sp, 56
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 120
	move	$a0, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
.LBB2_42:                               # %for.inc68.2
                                        #   in Loop: Header=BB2_31 Depth=1
	addi.d	$a0, $sp, 260
	ldx.w	$a0, $a0, $s5
	add.w	$a0, $a0, $s2
	st.w	$a0, $sp, 16
	blt	$a1, $a0, .LBB2_45
# %bb.43:                               # %if.end46.3
                                        #   in Loop: Header=BB2_31 Depth=1
	ld.w	$a0, $s8, 20
	alsl.d	$a1, $a0, $fp, 2
	addi.d	$a2, $sp, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	ld.w	$a2, $sp, 16
	st.w	$a0, $sp, 52
	blt	$a1, $a2, .LBB2_45
# %bb.44:                               # %if.end61.3
                                        #   in Loop: Header=BB2_31 Depth=1
	addi.d	$a0, $sp, 160
	ldx.w	$a0, $a0, $s5
	ori	$a1, $zero, 3
	st.w	$a1, $sp, 76
	st.w	$a0, $sp, 56
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 120
	move	$a0, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
.LBB2_45:                               # %for.inc68.3
                                        #   in Loop: Header=BB2_31 Depth=1
	ld.w	$a0, $s3, 4
	add.w	$a0, $a0, $s2
	st.w	$a0, $sp, 16
	blt	$a1, $a0, .LBB2_48
# %bb.46:                               # %if.end46.4
                                        #   in Loop: Header=BB2_31 Depth=1
	ld.w	$a0, $s8, 24
	alsl.d	$a1, $a0, $fp, 2
	addi.d	$a2, $sp, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	ld.w	$a2, $sp, 16
	st.w	$a0, $sp, 52
	blt	$a1, $a2, .LBB2_48
# %bb.47:                               # %if.end61.4
                                        #   in Loop: Header=BB2_31 Depth=1
	addi.d	$a0, $sp, 160
	add.d	$a0, $a0, $s5
	ld.w	$a0, $a0, 4
	ori	$a1, $zero, 4
	st.w	$a1, $sp, 76
	st.w	$a0, $sp, 56
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 120
	move	$a0, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
.LBB2_48:                               # %for.inc68.4
                                        #   in Loop: Header=BB2_31 Depth=1
	ld.w	$a0, $s3, 8
	add.w	$a0, $a0, $s2
	st.w	$a0, $sp, 16
	blt	$a1, $a0, .LBB2_51
# %bb.49:                               # %if.end46.5
                                        #   in Loop: Header=BB2_31 Depth=1
	ld.w	$a0, $s8, 28
	alsl.d	$a1, $a0, $fp, 2
	addi.d	$a2, $sp, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	ld.w	$a2, $sp, 16
	st.w	$a0, $sp, 52
	blt	$a1, $a2, .LBB2_51
# %bb.50:                               # %if.end61.5
                                        #   in Loop: Header=BB2_31 Depth=1
	addi.d	$a0, $sp, 160
	add.d	$a0, $a0, $s5
	ld.w	$a0, $a0, 8
	ori	$a1, $zero, 5
	st.w	$a1, $sp, 76
	st.w	$a0, $sp, 56
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 120
	move	$a0, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
.LBB2_51:                               # %for.inc68.5
                                        #   in Loop: Header=BB2_31 Depth=1
	ld.w	$a0, $s3, 12
	add.w	$a0, $a0, $s2
	st.w	$a0, $sp, 16
	blt	$a1, $a0, .LBB2_54
# %bb.52:                               # %if.end46.6
                                        #   in Loop: Header=BB2_31 Depth=1
	ld.w	$a0, $s8, 32
	alsl.d	$a1, $a0, $fp, 2
	addi.d	$a2, $sp, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	ld.w	$a2, $sp, 16
	st.w	$a0, $sp, 52
	blt	$a1, $a2, .LBB2_54
# %bb.53:                               # %if.end61.6
                                        #   in Loop: Header=BB2_31 Depth=1
	addi.d	$a0, $sp, 160
	add.d	$a0, $a0, $s5
	ld.w	$a0, $a0, 12
	ori	$a1, $zero, 6
	st.w	$a1, $sp, 76
	st.w	$a0, $sp, 56
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 120
	move	$a0, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
.LBB2_54:                               # %for.inc68.6
                                        #   in Loop: Header=BB2_31 Depth=1
	ld.w	$a0, $s3, 16
	add.w	$a0, $a0, $s2
	st.w	$a0, $sp, 16
	blt	$a1, $a0, .LBB2_30
# %bb.55:                               # %if.end46.7
                                        #   in Loop: Header=BB2_31 Depth=1
	ld.w	$a0, $s8, 36
	alsl.d	$a1, $a0, $fp, 2
	addi.d	$a2, $sp, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	ld.w	$a2, $sp, 16
	st.w	$a0, $sp, 52
	blt	$a1, $a2, .LBB2_30
# %bb.56:                               # %if.end61.7
                                        #   in Loop: Header=BB2_31 Depth=1
	addi.d	$a0, $sp, 160
	add.d	$a0, $a0, $s5
	ld.w	$a0, $a0, 16
	ori	$a1, $zero, 7
	st.w	$a1, $sp, 76
	st.w	$a0, $sp, 56
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 120
	move	$a0, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	b	.LBB2_30
.LBB2_57:                               # %for.end73
	ld.d	$s8, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 416                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 424                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 432
	ret
.Lfunc_end2:
	.size	best_huffman_divide, .Lfunc_end2-best_huffman_divide
                                        # -- End function
	.p2align	5                               # -- Begin function choose_table
	.type	choose_table,@function
choose_table:                           # @choose_table
# %bb.0:                                # %entry
	bgeu	$a0, $a1, .LBB3_3
# %bb.1:                                # %iter.check
	addi.d	$sp, $sp, -176
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
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	addi.d	$a3, $a0, 8
	sltu	$a4, $a3, $a1
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a1, $a4
	or	$a3, $a4, $a3
	nor	$a4, $a0, $zero
	add.d	$t2, $a3, $a4
	srli.d	$a4, $t2, 3
	ori	$a5, $zero, 24
	addi.d	$fp, $a4, 1
	bgeu	$t2, $a5, .LBB3_4
# %bb.2:
	move	$a7, $zero
	move	$a6, $a0
	b	.LBB3_14
.LBB3_3:
	addi.w	$a0, $zero, 0
	ret
.LBB3_4:                                # %vector.main.loop.iter.check
	ori	$a5, $zero, 120
	bgeu	$t2, $a5, .LBB3_6
# %bb.5:
	move	$a5, $zero
	move	$a7, $zero
	b	.LBB3_10
.LBB3_6:                                # %vector.ph
	bstrpick.d	$a5, $fp, 61, 4
	slli.d	$a5, $a5, 4
	xvrepli.b	$xr0, 0
	addi.d	$a6, $a0, 64
	move	$a7, $a5
	xvori.b	$xr1, $xr0, 0
	.p2align	4, , 16
.LBB3_7:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t0, $a6, -64
	ld.w	$t1, $a6, -56
	ld.w	$t3, $a6, -48
	ld.w	$t4, $a6, -40
	ld.w	$t5, $a6, -32
	ld.w	$t6, $a6, -24
	ld.w	$t7, $a6, -16
	ld.w	$t8, $a6, -8
	xvinsgr2vr.w	$xr2, $t0, 0
	xvinsgr2vr.w	$xr2, $t1, 1
	xvinsgr2vr.w	$xr2, $t3, 2
	xvinsgr2vr.w	$xr2, $t4, 3
	xvinsgr2vr.w	$xr2, $t5, 4
	xvinsgr2vr.w	$xr2, $t6, 5
	xvinsgr2vr.w	$xr2, $t7, 6
	xvinsgr2vr.w	$xr2, $t8, 7
	ld.w	$t0, $a6, 0
	ld.w	$t1, $a6, 8
	ld.w	$t3, $a6, 16
	ld.w	$t4, $a6, 24
	ld.w	$t5, $a6, 32
	ld.w	$t6, $a6, 40
	ld.w	$t7, $a6, 48
	ld.w	$t8, $a6, 56
	xvinsgr2vr.w	$xr3, $t0, 0
	xvinsgr2vr.w	$xr3, $t1, 1
	xvinsgr2vr.w	$xr3, $t3, 2
	xvinsgr2vr.w	$xr3, $t4, 3
	xvinsgr2vr.w	$xr3, $t5, 4
	xvinsgr2vr.w	$xr3, $t6, 5
	xvinsgr2vr.w	$xr3, $t7, 6
	xvinsgr2vr.w	$xr3, $t8, 7
	xvmax.w	$xr0, $xr0, $xr2
	xvmax.w	$xr1, $xr1, $xr3
	ld.w	$t0, $a6, -60
	ld.w	$t1, $a6, -52
	ld.w	$t3, $a6, -44
	ld.w	$t4, $a6, -36
	ld.w	$t5, $a6, -28
	ld.w	$t6, $a6, -20
	ld.w	$t7, $a6, -12
	ld.w	$t8, $a6, -4
	xvinsgr2vr.w	$xr2, $t0, 0
	xvinsgr2vr.w	$xr2, $t1, 1
	xvinsgr2vr.w	$xr2, $t3, 2
	xvinsgr2vr.w	$xr2, $t4, 3
	xvinsgr2vr.w	$xr2, $t5, 4
	xvinsgr2vr.w	$xr2, $t6, 5
	xvinsgr2vr.w	$xr2, $t7, 6
	xvinsgr2vr.w	$xr2, $t8, 7
	ld.w	$t0, $a6, 4
	ld.w	$t1, $a6, 12
	ld.w	$t3, $a6, 20
	ld.w	$t4, $a6, 28
	ld.w	$t5, $a6, 36
	ld.w	$t6, $a6, 44
	ld.w	$t7, $a6, 52
	ld.w	$t8, $a6, 60
	xvinsgr2vr.w	$xr3, $t0, 0
	xvinsgr2vr.w	$xr3, $t1, 1
	xvinsgr2vr.w	$xr3, $t3, 2
	xvinsgr2vr.w	$xr3, $t4, 3
	xvinsgr2vr.w	$xr3, $t5, 4
	xvinsgr2vr.w	$xr3, $t6, 5
	xvinsgr2vr.w	$xr3, $t7, 6
	xvinsgr2vr.w	$xr3, $t8, 7
	xvmax.w	$xr0, $xr0, $xr2
	xvmax.w	$xr1, $xr1, $xr3
	addi.d	$a7, $a7, -16
	addi.d	$a6, $a6, 128
	bnez	$a7, .LBB3_7
# %bb.8:                                # %middle.block
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
	xvpickve2gr.w	$a7, $xr0, 0
	beq	$fp, $a5, .LBB3_15
# %bb.9:                                # %vec.epilog.iter.check
	andi	$a6, $fp, 12
	beqz	$a6, .LBB3_13
.LBB3_10:                               # %vec.epilog.ph
	bstrpick.d	$a6, $fp, 61, 2
	slli.d	$t0, $a6, 2
	slli.d	$a6, $a6, 5
	add.d	$a6, $a0, $a6
	vreplgr2vr.w	$vr0, $a7
	sub.d	$a7, $a5, $t0
	alsl.d	$a5, $a5, $a0, 3
	addi.d	$a5, $a5, 16
	.p2align	4, , 16
.LBB3_11:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t1, $a5, -16
	ld.w	$t3, $a5, -8
	ld.w	$t4, $a5, 0
	ld.w	$t5, $a5, 8
	vinsgr2vr.w	$vr1, $t1, 0
	vinsgr2vr.w	$vr1, $t3, 1
	vinsgr2vr.w	$vr1, $t4, 2
	vinsgr2vr.w	$vr1, $t5, 3
	vmax.w	$vr0, $vr0, $vr1
	ld.w	$t1, $a5, -12
	ld.w	$t3, $a5, -4
	ld.w	$t4, $a5, 4
	ld.w	$t5, $a5, 12
	vinsgr2vr.w	$vr1, $t1, 0
	vinsgr2vr.w	$vr1, $t3, 1
	vinsgr2vr.w	$vr1, $t4, 2
	vinsgr2vr.w	$vr1, $t5, 3
	vmax.w	$vr0, $vr0, $vr1
	addi.d	$a7, $a7, 4
	addi.d	$a5, $a5, 32
	bnez	$a7, .LBB3_11
# %bb.12:                               # %vec.epilog.middle.block
	vshuf4i.w	$vr1, $vr0, 14
	vmax.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a7, $vr0, 0
	bne	$fp, $t0, .LBB3_14
	b	.LBB3_15
.LBB3_13:
	alsl.d	$a6, $a5, $a0, 3
	.p2align	4, , 16
.LBB3_14:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a6, 0
	slt	$t0, $a5, $a7
	masknez	$a5, $a5, $t0
	ld.w	$t1, $a6, 4
	maskeqz	$a7, $a7, $t0
	or	$a5, $a7, $a5
	addi.d	$t0, $a6, 8
	slt	$a6, $t1, $a5
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $t1, $a6
	or	$a7, $a5, $a6
	move	$a6, $t0
	bltu	$t0, $a1, .LBB3_14
.LBB3_15:                               # %ix_max.exit
	lu12i.w	$a5, 2
	ori	$a5, $a5, 14
	bgeu	$a5, $a7, .LBB3_17
# %bb.16:
	addi.d	$a3, $zero, -1
	lu12i.w	$a0, 24
	ori	$a0, $a0, 1696
	b	.LBB3_68
.LBB3_17:                               # %if.end
	ori	$a5, $zero, 15
	bltu	$a5, $a7, .LBB3_39
# %bb.18:                               # %if.then2
	beqz	$a7, .LBB3_57
# %bb.19:                               # %if.end5
	pcalau12i	$a3, %pc_hi20(huf_tbl_noESC)
	addi.d	$a3, $a3, %pc_lo12(huf_tbl_noESC)
	alsl.d	$a3, $a7, $a3, 2
	ld.wu	$a3, $a3, -4
	pcalau12i	$a5, %got_pc_hi20(ht)
	ld.d	$a6, $a5, %got_pc_lo12(ht)
	move	$a5, $zero
	move	$a7, $zero
	slli.d	$t0, $a3, 4
	alsl.d	$t0, $a3, $t0, 3
	add.d	$t0, $a6, $t0
	ld.d	$t2, $t0, 16
	addi.w	$t0, $a3, 0
	pcalau12i	$t1, %pc_hi20(cb_esc_buf)
	addi.d	$t1, $t1, %pc_lo12(cb_esc_buf)
	.p2align	4, , 16
.LBB3_20:                               # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t3, $a0, 0
	ld.w	$t4, $a0, 4
	sltu	$t5, $zero, $t3
	add.d	$a5, $a5, $t5
	sltu	$t5, $zero, $t4
	alsl.w	$t6, $t3, $t4, 4
	alsl.d	$t3, $t3, $t4, 4
	st.w	$t3, $t1, 0
	ldx.bu	$t3, $t2, $t6
	add.d	$a5, $a5, $t5
	addi.d	$t1, $t1, 4
	addi.d	$a0, $a0, 8
	add.d	$a7, $a7, $t3
	bltu	$a0, $a1, .LBB3_20
# %bb.21:                               # %count_bit_noESC.exit
	pcalau12i	$a0, %pc_hi20(cb_esc_end)
	st.d	$t1, $a0, %pc_lo12(cb_esc_end)
	addi.d	$a1, $t0, -2
	ori	$t0, $zero, 11
	add.w	$a0, $a7, $a5
	bltu	$t0, $a1, .LBB3_38
# %bb.22:                               # %count_bit_noESC.exit
	slli.d	$a1, $a1, 2
	pcalau12i	$a7, %pc_hi20(.LJTI3_0)
	addi.d	$a7, $a7, %pc_lo12(.LJTI3_0)
	ldx.w	$a1, $a7, $a1
	add.d	$t0, $a7, $a1
	addi.d	$a1, $t1, -4
	move	$a7, $a3
	jr	$t0
.LBB3_23:                               # %sw.bb
	addi.w	$a7, $a3, 1
	slli.d	$t0, $a7, 4
	alsl.d	$t0, $a7, $t0, 3
	add.d	$t0, $a6, $t0
	ld.d	$t0, $t0, 16
	slli.d	$t2, $a4, 2
	pcalau12i	$t1, %pc_hi20(cb_esc_buf)
	addi.d	$t1, $t1, %pc_lo12(cb_esc_buf)
	alsl.d	$t3, $a4, $t1, 2
	sltu	$t3, $t3, $t2
	masknez	$t2, $t2, $t3
	ori	$t3, $zero, 28
	move	$t4, $a5
	bltu	$t2, $t3, .LBB3_27
# %bb.24:                               # %vector.ph257
	srli.d	$t1, $t2, 2
	addi.d	$t2, $t1, 1
	bstrpick.d	$t1, $t2, 61, 3
	slli.d	$t3, $t1, 3
	slli.d	$t1, $t1, 5
	pcalau12i	$t4, %pc_hi20(cb_esc_buf)
	addi.d	$t4, $t4, %pc_lo12(cb_esc_buf)
	vrepli.b	$vr0, 0
	add.d	$t1, $t4, $t1
	vori.b	$vr1, $vr0, 0
	vinsgr2vr.w	$vr1, $a5, 0
	addi.d	$t4, $t4, 16
	move	$t5, $t3
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB3_25:                               # %vector.body260
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $t4, -16
	vld	$vr4, $t4, 0
	vpickve2gr.w	$t6, $vr3, 3
	vpickve2gr.w	$t7, $vr3, 2
	vpickve2gr.w	$t8, $vr3, 1
	vpickve2gr.w	$fp, $vr3, 0
	vpickve2gr.w	$s0, $vr4, 3
	vpickve2gr.w	$s1, $vr4, 2
	vpickve2gr.w	$s2, $vr4, 1
	vpickve2gr.w	$s3, $vr4, 0
	ldx.b	$fp, $t0, $fp
	ldx.b	$t8, $t0, $t8
	ldx.b	$t7, $t0, $t7
	ldx.b	$t6, $t0, $t6
	vinsgr2vr.b	$vr3, $fp, 0
	vinsgr2vr.b	$vr3, $t8, 1
	vinsgr2vr.b	$vr3, $t7, 2
	vinsgr2vr.b	$vr3, $t6, 3
	ldx.b	$t6, $t0, $s3
	ldx.b	$t7, $t0, $s2
	ldx.b	$t8, $t0, $s1
	ldx.b	$fp, $t0, $s0
	vinsgr2vr.b	$vr4, $t6, 0
	vinsgr2vr.b	$vr4, $t7, 1
	vinsgr2vr.b	$vr4, $t8, 2
	vinsgr2vr.b	$vr4, $fp, 3
	vilvl.b	$vr3, $vr0, $vr3
	vilvl.h	$vr3, $vr0, $vr3
	vilvl.b	$vr4, $vr0, $vr4
	vilvl.h	$vr4, $vr0, $vr4
	vadd.w	$vr1, $vr1, $vr3
	vadd.w	$vr2, $vr2, $vr4
	addi.d	$t5, $t5, -8
	addi.d	$t4, $t4, 32
	bnez	$t5, .LBB3_25
# %bb.26:                               # %middle.block269
	vadd.w	$vr0, $vr2, $vr1
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$t4, $vr0, 0
	beq	$t2, $t3, .LBB3_29
.LBB3_27:                               # %do.body.i49.preheader
	addi.d	$t1, $t1, -4
	.p2align	4, , 16
.LBB3_28:                               # %do.body.i49
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t2, $t1, 4
	ldx.bu	$t2, $t0, $t2
	addi.d	$t3, $t1, 4
	add.w	$t4, $t4, $t2
	move	$t1, $t3
	bltu	$t3, $a1, .LBB3_28
.LBB3_29:                               # %count_bit_noESC2.exit
	slt	$t0, $t4, $a0
	masknez	$a3, $a3, $t0
	maskeqz	$t0, $a7, $t0
	or	$a3, $t0, $a3
	slt	$t0, $a0, $t4
	masknez	$t1, $t4, $t0
	maskeqz	$a0, $a0, $t0
	or	$a0, $a0, $t1
.LBB3_30:                               # %sw.bb11
	addi.w	$a7, $a7, 1
	slli.d	$t0, $a7, 4
	alsl.d	$t0, $a7, $t0, 3
	add.d	$a6, $a6, $t0
	ld.d	$a6, $a6, 16
	slli.d	$t1, $a4, 2
	pcalau12i	$t0, %pc_hi20(cb_esc_buf)
	addi.d	$t0, $t0, %pc_lo12(cb_esc_buf)
	alsl.d	$a4, $a4, $t0, 2
	sltu	$a4, $a4, $t1
	masknez	$a4, $t1, $a4
	ori	$t1, $zero, 28
	bltu	$a4, $t1, .LBB3_34
# %bb.31:                               # %vector.ph277
	srli.d	$a4, $a4, 2
	addi.d	$a4, $a4, 1
	bstrpick.d	$t0, $a4, 61, 3
	slli.d	$t1, $t0, 3
	slli.d	$t0, $t0, 5
	pcalau12i	$t2, %pc_hi20(cb_esc_buf)
	addi.d	$t2, $t2, %pc_lo12(cb_esc_buf)
	vrepli.b	$vr0, 0
	add.d	$t0, $t2, $t0
	vori.b	$vr1, $vr0, 0
	vinsgr2vr.w	$vr1, $a5, 0
	addi.d	$a5, $t2, 16
	move	$t2, $t1
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB3_32:                               # %vector.body280
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $a5, -16
	vld	$vr4, $a5, 0
	vpickve2gr.w	$t3, $vr3, 3
	vpickve2gr.w	$t4, $vr3, 2
	vpickve2gr.w	$t5, $vr3, 1
	vpickve2gr.w	$t6, $vr3, 0
	vpickve2gr.w	$t7, $vr4, 3
	vpickve2gr.w	$t8, $vr4, 2
	vpickve2gr.w	$fp, $vr4, 1
	vpickve2gr.w	$s0, $vr4, 0
	ldx.b	$t6, $a6, $t6
	ldx.b	$t5, $a6, $t5
	ldx.b	$t4, $a6, $t4
	ldx.b	$t3, $a6, $t3
	vinsgr2vr.b	$vr3, $t6, 0
	vinsgr2vr.b	$vr3, $t5, 1
	vinsgr2vr.b	$vr3, $t4, 2
	vinsgr2vr.b	$vr3, $t3, 3
	ldx.b	$t3, $a6, $s0
	ldx.b	$t4, $a6, $fp
	ldx.b	$t5, $a6, $t8
	ldx.b	$t6, $a6, $t7
	vinsgr2vr.b	$vr4, $t3, 0
	vinsgr2vr.b	$vr4, $t4, 1
	vinsgr2vr.b	$vr4, $t5, 2
	vinsgr2vr.b	$vr4, $t6, 3
	vilvl.b	$vr3, $vr0, $vr3
	vilvl.h	$vr3, $vr0, $vr3
	vilvl.b	$vr4, $vr0, $vr4
	vilvl.h	$vr4, $vr0, $vr4
	vadd.w	$vr1, $vr1, $vr3
	vadd.w	$vr2, $vr2, $vr4
	addi.d	$t2, $t2, -8
	addi.d	$a5, $a5, 32
	bnez	$t2, .LBB3_32
# %bb.33:                               # %middle.block289
	vadd.w	$vr0, $vr2, $vr1
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a5, $vr0, 0
	beq	$a4, $t1, .LBB3_36
.LBB3_34:                               # %do.body.i58.preheader
	addi.d	$a4, $t0, -4
	.p2align	4, , 16
.LBB3_35:                               # %do.body.i58
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t0, $a4, 4
	ldx.bu	$t0, $a6, $t0
	addi.d	$t1, $a4, 4
	add.w	$a5, $a5, $t0
	move	$a4, $t1
	bltu	$t1, $a1, .LBB3_35
.LBB3_36:                               # %count_bit_noESC2.exit67
	slt	$a1, $a5, $a0
	masknez	$a3, $a3, $a1
	maskeqz	$a1, $a7, $a1
.LBB3_37:                               # %sw.epilog
	or	$a3, $a1, $a3
	slt	$a1, $a0, $a5
	masknez	$a4, $a5, $a1
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a4
.LBB3_38:                               # %sw.epilog
	ld.w	$a1, $a2, 0
	add.d	$a0, $a1, $a0
	b	.LBB3_68
.LBB3_39:                               # %if.else
	pcalau12i	$a4, %got_pc_hi20(ht)
	ld.d	$t1, $a4, %got_pc_lo12(ht)
	ld.w	$a6, $t1, 580
	addi.w	$a5, $a7, -15
	ori	$s0, $zero, 24
	bge	$a6, $a5, .LBB3_48
# %bb.40:                               # %for.inc
	ld.w	$a6, $t1, 604
	ori	$s0, $zero, 25
	bge	$a6, $a5, .LBB3_48
# %bb.41:                               # %for.inc.1
	ld.w	$a6, $t1, 628
	ori	$s0, $zero, 26
	bge	$a6, $a5, .LBB3_48
# %bb.42:                               # %for.inc.2
	ld.w	$a6, $t1, 652
	ori	$s0, $zero, 27
	bge	$a6, $a5, .LBB3_48
# %bb.43:                               # %for.inc.3
	ld.w	$a6, $t1, 676
	ori	$s0, $zero, 28
	bge	$a6, $a5, .LBB3_48
# %bb.44:                               # %for.inc.4
	ld.w	$a6, $t1, 700
	ori	$s0, $zero, 29
	bge	$a6, $a5, .LBB3_48
# %bb.45:                               # %for.inc.5
	ld.w	$a6, $t1, 724
	ori	$s0, $zero, 30
	bge	$a6, $a5, .LBB3_48
# %bb.46:                               # %for.inc.6
	ld.w	$a6, $t1, 748
	ori	$s0, $zero, 31
	bge	$a6, $a5, .LBB3_48
# %bb.47:
	ori	$s1, $zero, 24
	ori	$s0, $zero, 32
	b	.LBB3_53
.LBB3_48:                               # %for.body34.preheader
	slli.d	$a6, $s0, 4
	alsl.d	$a7, $s0, $a6, 3
	ori	$a6, $zero, 8
	ori	$t0, $zero, 768
	.p2align	4, , 16
.LBB3_49:                               # %for.body34
                                        # =>This Inner Loop Header: Depth=1
	add.d	$t3, $t1, $a7
	ld.w	$t3, $t3, -188
	bge	$t3, $a5, .LBB3_52
# %bb.50:                               # %for.inc41
                                        #   in Loop: Header=BB3_49 Depth=1
	addi.d	$a7, $a7, 24
	addi.d	$a6, $a6, -1
	bne	$a7, $t0, .LBB3_49
# %bb.51:
	ori	$s1, $zero, 24
	b	.LBB3_53
.LBB3_52:                               # %for.end43.loopexit.split.loop.exit
	sub.w	$s1, $s0, $a6
.LBB3_53:                               # %iter.check141
	ori	$t3, $zero, 24
	mul.d	$a6, $s1, $t3
	ldx.w	$s2, $t1, $a6
	mul.d	$a7, $s0, $t3
	ldx.w	$s3, $t1, $a7
	ld.d	$s8, $t1, 400
	ld.d	$t1, $t1, 592
	bgeu	$t2, $t3, .LBB3_55
# %bb.54:
	move	$t8, $a2
	move	$t4, $zero
	move	$t5, $zero
	move	$t6, $zero
	move	$t3, $a0
	b	.LBB3_78
.LBB3_55:                               # %vector.main.loop.iter.check143
	ori	$t3, $zero, 120
	bgeu	$t2, $t3, .LBB3_58
# %bb.56:
	move	$t8, $a2
	move	$a3, $zero
	move	$t4, $zero
	move	$t5, $zero
	move	$t6, $zero
	b	.LBB3_64
.LBB3_57:
	move	$a3, $zero
	b	.LBB3_69
.LBB3_58:                               # %vector.ph144
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	bstrpick.d	$t2, $fp, 61, 4
	slli.d	$a2, $t2, 4
	st.d	$s2, $sp, 32                    # 8-byte Folded Spill
	xvreplgr2vr.w	$xr0, $s2
	st.d	$s3, $sp, 24                    # 8-byte Folded Spill
	xvreplgr2vr.w	$xr1, $s3
	addi.d	$t3, $a0, 64
	xvrepli.b	$xr2, 0
	xvrepli.w	$xr3, 14
	xvrepli.w	$xr4, 15
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	xvori.b	$xr7, $xr2, 0
	xvori.b	$xr8, $xr2, 0
	xvori.b	$xr9, $xr2, 0
	xvori.b	$xr10, $xr2, 0
	xvori.b	$xr6, $xr2, 0
	xvori.b	$xr5, $xr2, 0
	.p2align	4, , 16
.LBB3_59:                               # %vector.body151
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	ld.w	$t2, $t3, -64
	ld.w	$t5, $t3, -56
	ld.w	$t6, $t3, -48
	ld.w	$t7, $t3, -40
	ld.w	$t8, $t3, -32
	ld.w	$fp, $t3, -24
	ld.w	$s0, $t3, -16
	ld.w	$s1, $t3, -8
	xvinsgr2vr.w	$xr11, $t2, 0
	xvinsgr2vr.w	$xr11, $t5, 1
	xvinsgr2vr.w	$xr11, $t6, 2
	xvinsgr2vr.w	$xr11, $t7, 3
	xvinsgr2vr.w	$xr11, $t8, 4
	xvinsgr2vr.w	$xr11, $fp, 5
	xvinsgr2vr.w	$xr11, $s0, 6
	xvinsgr2vr.w	$xr11, $s1, 7
	ld.w	$t2, $t3, 0
	ld.w	$t5, $t3, 8
	ld.w	$t6, $t3, 16
	ld.w	$t7, $t3, 24
	ld.w	$t8, $t3, 32
	ld.w	$fp, $t3, 40
	ld.w	$s0, $t3, 48
	ld.w	$s1, $t3, 56
	xvinsgr2vr.w	$xr12, $t2, 0
	xvinsgr2vr.w	$xr12, $t5, 1
	xvinsgr2vr.w	$xr12, $t6, 2
	xvinsgr2vr.w	$xr12, $t7, 3
	xvinsgr2vr.w	$xr12, $t8, 4
	xvinsgr2vr.w	$xr12, $fp, 5
	xvinsgr2vr.w	$xr12, $s0, 6
	xvinsgr2vr.w	$xr12, $s1, 7
	ld.w	$t2, $t3, -60
	ld.w	$t5, $t3, -52
	ld.w	$t6, $t3, -44
	ld.w	$t7, $t3, -36
	ld.w	$t8, $t3, -28
	ld.w	$fp, $t3, -20
	ld.w	$s0, $t3, -12
	ld.w	$s1, $t3, -4
	xvinsgr2vr.w	$xr13, $t2, 0
	xvinsgr2vr.w	$xr13, $t5, 1
	xvinsgr2vr.w	$xr13, $t6, 2
	xvinsgr2vr.w	$xr13, $t7, 3
	xvinsgr2vr.w	$xr13, $t8, 4
	xvinsgr2vr.w	$xr13, $fp, 5
	xvinsgr2vr.w	$xr13, $s0, 6
	xvinsgr2vr.w	$xr13, $s1, 7
	ld.w	$t2, $t3, 4
	ld.w	$t5, $t3, 12
	ld.w	$t6, $t3, 20
	ld.w	$t7, $t3, 28
	ld.w	$t8, $t3, 36
	ld.w	$fp, $t3, 44
	ld.w	$s0, $t3, 52
	ld.w	$s1, $t3, 60
	xvinsgr2vr.w	$xr14, $t2, 0
	xvinsgr2vr.w	$xr14, $t5, 1
	xvinsgr2vr.w	$xr14, $t6, 2
	xvinsgr2vr.w	$xr14, $t7, 3
	xvinsgr2vr.w	$xr14, $t8, 4
	xvinsgr2vr.w	$xr14, $fp, 5
	xvinsgr2vr.w	$xr14, $s0, 6
	xvinsgr2vr.w	$xr14, $s1, 7
	xvslt.w	$xr15, $xr3, $xr11
	xvslt.w	$xr16, $xr3, $xr12
	xvmini.w	$xr17, $xr11, 15
	xvmini.w	$xr18, $xr12, 15
	xvslli.w	$xr17, $xr17, 4
	xvslli.w	$xr18, $xr18, 4
	xvseqi.w	$xr11, $xr11, 0
	xvadd.w	$xr6, $xr6, $xr11
	xvseqi.w	$xr11, $xr13, 0
	xvadd.w	$xr6, $xr6, $xr11
	xvseqi.w	$xr11, $xr12, 0
	xvadd.w	$xr5, $xr5, $xr11
	xvseqi.w	$xr11, $xr14, 0
	xvadd.w	$xr5, $xr5, $xr11
	xvand.v	$xr11, $xr15, $xr0
	xvadd.w	$xr9, $xr9, $xr11
	xvand.v	$xr11, $xr16, $xr0
	xvadd.w	$xr10, $xr10, $xr11
	xvand.v	$xr11, $xr15, $xr1
	xvadd.w	$xr7, $xr7, $xr11
	xvand.v	$xr11, $xr16, $xr1
	xvadd.w	$xr8, $xr8, $xr11
	xvslt.w	$xr11, $xr3, $xr13
	xvslt.w	$xr12, $xr3, $xr14
	xvbitsel.v	$xr13, $xr13, $xr4, $xr11
	xvbitsel.v	$xr14, $xr14, $xr4, $xr12
	xvadd.w	$xr13, $xr17, $xr13
	xvadd.w	$xr14, $xr18, $xr14
	xvaddi.wu	$xr6, $xr6, 2
	xvaddi.wu	$xr5, $xr5, 2
	xvand.v	$xr15, $xr11, $xr0
	xvadd.w	$xr9, $xr9, $xr15
	xvand.v	$xr15, $xr12, $xr0
	xvadd.w	$xr10, $xr10, $xr15
	xvand.v	$xr11, $xr11, $xr1
	xvadd.w	$xr7, $xr7, $xr11
	xvand.v	$xr11, $xr12, $xr1
	xvadd.w	$xr8, $xr8, $xr11
	xvpermi.q	$xr11, $xr13, 1
	vpickve2gr.w	$s1, $vr11, 3
	vpickve2gr.w	$fp, $vr11, 2
	vpickve2gr.w	$t7, $vr11, 1
	vpickve2gr.w	$t6, $vr11, 0
	vpickve2gr.w	$t5, $vr13, 3
	vpickve2gr.w	$a1, $vr13, 2
	vpickve2gr.w	$ra, $vr13, 1
	vpickve2gr.w	$t2, $vr13, 0
	xvpermi.q	$xr11, $xr14, 1
	vpickve2gr.w	$s2, $vr11, 3
	vpickve2gr.w	$s3, $vr11, 2
	vpickve2gr.w	$s4, $vr11, 1
	vpickve2gr.w	$s5, $vr11, 0
	vpickve2gr.w	$s6, $vr14, 3
	vpickve2gr.w	$s7, $vr14, 2
	vpickve2gr.w	$s0, $vr14, 1
	vpickve2gr.w	$t8, $vr14, 0
	ldx.b	$a5, $s8, $t2
	ldx.b	$a4, $s8, $ra
	ldx.b	$a3, $s8, $a1
	ldx.b	$a2, $s8, $t5
	ldx.b	$a6, $s8, $t6
	ldx.b	$a7, $s8, $t7
	ldx.b	$t4, $s8, $fp
	ldx.b	$t0, $s8, $s1
	vinsgr2vr.b	$vr13, $a5, 0
	vinsgr2vr.b	$vr13, $a4, 1
	vinsgr2vr.b	$vr13, $a3, 2
	vinsgr2vr.b	$vr13, $a2, 3
	vinsgr2vr.b	$vr13, $a6, 4
	vinsgr2vr.b	$vr13, $a7, 5
	vinsgr2vr.b	$vr13, $t4, 6
	vinsgr2vr.b	$vr13, $t0, 7
	ldx.b	$a2, $s8, $t8
	ldx.b	$a3, $s8, $s0
	ldx.b	$a4, $s8, $s7
	ldx.b	$a5, $s8, $s6
	ldx.b	$a6, $s8, $s5
	ldx.b	$a7, $s8, $s4
	ldx.b	$t0, $s8, $s3
	ldx.b	$t4, $s8, $s2
	vinsgr2vr.b	$vr11, $a2, 0
	vinsgr2vr.b	$vr11, $a3, 1
	vinsgr2vr.b	$vr11, $a4, 2
	vinsgr2vr.b	$vr11, $a5, 3
	vinsgr2vr.b	$vr11, $a6, 4
	vinsgr2vr.b	$vr11, $a7, 5
	vinsgr2vr.b	$vr11, $t0, 6
	vinsgr2vr.b	$vr11, $t4, 7
	vpickve2gr.b	$a2, $vr13, 0
	xvreplgr2vr.b	$xr14, $a2
	xvpermi.q	$xr14, $xr2, 18
	xvori.b	$xr12, $xr2, 0
	xvextrins.b	$xr12, $xr14, 0
	vpickve2gr.b	$a2, $vr13, 1
	xvreplgr2vr.b	$xr14, $a2
	xvpermi.q	$xr14, $xr12, 18
	xvextrins.b	$xr12, $xr14, 68
	vpickve2gr.b	$a2, $vr13, 2
	xvreplgr2vr.b	$xr14, $a2
	xvpermi.q	$xr14, $xr12, 18
	xvextrins.b	$xr12, $xr14, 136
	vpickve2gr.b	$a2, $vr13, 3
	xvreplgr2vr.b	$xr14, $a2
	xvpermi.q	$xr14, $xr12, 18
	xvextrins.b	$xr12, $xr14, 204
	vpickve2gr.b	$a2, $vr13, 4
	xvreplgr2vr.b	$xr14, $a2
	xvpermi.q	$xr14, $xr12, 48
	xvextrins.b	$xr12, $xr14, 0
	vpickve2gr.b	$a2, $vr13, 5
	xvreplgr2vr.b	$xr14, $a2
	xvpermi.q	$xr14, $xr12, 48
	xvextrins.b	$xr12, $xr14, 68
	vpickve2gr.b	$a2, $vr13, 6
	xvreplgr2vr.b	$xr14, $a2
	xvpermi.q	$xr14, $xr12, 48
	xvextrins.b	$xr12, $xr14, 136
	vpickve2gr.b	$a2, $vr13, 7
	xvreplgr2vr.b	$xr13, $a2
	xvpermi.q	$xr13, $xr12, 48
	xvextrins.b	$xr12, $xr13, 204
	vpickve2gr.b	$a2, $vr11, 0
	xvreplgr2vr.b	$xr13, $a2
	xvpermi.q	$xr13, $xr2, 18
	xvori.b	$xr14, $xr2, 0
	xvextrins.b	$xr14, $xr13, 0
	vpickve2gr.b	$a2, $vr11, 1
	xvreplgr2vr.b	$xr13, $a2
	xvpermi.q	$xr13, $xr14, 18
	xvextrins.b	$xr14, $xr13, 68
	vpickve2gr.b	$a2, $vr11, 2
	xvreplgr2vr.b	$xr13, $a2
	xvpermi.q	$xr13, $xr14, 18
	xvextrins.b	$xr14, $xr13, 136
	vpickve2gr.b	$a2, $vr11, 3
	xvreplgr2vr.b	$xr13, $a2
	xvpermi.q	$xr13, $xr14, 18
	xvextrins.b	$xr14, $xr13, 204
	vpickve2gr.b	$a2, $vr11, 4
	xvreplgr2vr.b	$xr13, $a2
	xvpermi.q	$xr13, $xr14, 48
	xvextrins.b	$xr14, $xr13, 0
	vpickve2gr.b	$a2, $vr11, 5
	xvreplgr2vr.b	$xr13, $a2
	xvpermi.q	$xr13, $xr14, 48
	xvextrins.b	$xr14, $xr13, 68
	vpickve2gr.b	$a2, $vr11, 6
	xvreplgr2vr.b	$xr13, $a2
	xvpermi.q	$xr13, $xr14, 48
	xvextrins.b	$xr14, $xr13, 136
	vpickve2gr.b	$a2, $vr11, 7
	xvreplgr2vr.b	$xr11, $a2
	xvpermi.q	$xr11, $xr14, 48
	xvextrins.b	$xr14, $xr11, 204
	xvadd.w	$xr9, $xr9, $xr12
	xvadd.w	$xr10, $xr10, $xr14
	ldx.b	$a2, $t1, $t2
	ldx.b	$a3, $t1, $ra
	ldx.b	$a4, $t1, $a1
	ldx.b	$a5, $t1, $t5
	ldx.b	$a6, $t1, $t6
	ldx.b	$a7, $t1, $t7
	ldx.b	$t0, $t1, $fp
	ldx.b	$t2, $t1, $s1
	vinsgr2vr.b	$vr13, $a2, 0
	vinsgr2vr.b	$vr13, $a3, 1
	vinsgr2vr.b	$vr13, $a4, 2
	vinsgr2vr.b	$vr13, $a5, 3
	vinsgr2vr.b	$vr13, $a6, 4
	vinsgr2vr.b	$vr13, $a7, 5
	vinsgr2vr.b	$vr13, $t0, 6
	vinsgr2vr.b	$vr13, $t2, 7
	ldx.b	$a2, $t1, $t8
	ldx.b	$a3, $t1, $s0
	ldx.b	$a4, $t1, $s7
	ldx.b	$a5, $t1, $s6
	ldx.b	$a6, $t1, $s5
	ldx.b	$a7, $t1, $s4
	ldx.b	$t0, $t1, $s3
	ldx.b	$t2, $t1, $s2
	vinsgr2vr.b	$vr11, $a2, 0
	vinsgr2vr.b	$vr11, $a3, 1
	vinsgr2vr.b	$vr11, $a4, 2
	vinsgr2vr.b	$vr11, $a5, 3
	vinsgr2vr.b	$vr11, $a6, 4
	vinsgr2vr.b	$vr11, $a7, 5
	vinsgr2vr.b	$vr11, $t0, 6
	vinsgr2vr.b	$vr11, $t2, 7
	vpickve2gr.b	$a2, $vr13, 0
	xvreplgr2vr.b	$xr14, $a2
	xvpermi.q	$xr14, $xr2, 18
	xvori.b	$xr12, $xr2, 0
	xvextrins.b	$xr12, $xr14, 0
	vpickve2gr.b	$a2, $vr13, 1
	xvreplgr2vr.b	$xr14, $a2
	xvpermi.q	$xr14, $xr12, 18
	xvextrins.b	$xr12, $xr14, 68
	vpickve2gr.b	$a2, $vr13, 2
	xvreplgr2vr.b	$xr14, $a2
	xvpermi.q	$xr14, $xr12, 18
	xvextrins.b	$xr12, $xr14, 136
	vpickve2gr.b	$a2, $vr13, 3
	xvreplgr2vr.b	$xr14, $a2
	xvpermi.q	$xr14, $xr12, 18
	xvextrins.b	$xr12, $xr14, 204
	vpickve2gr.b	$a2, $vr13, 4
	xvreplgr2vr.b	$xr14, $a2
	xvpermi.q	$xr14, $xr12, 48
	xvextrins.b	$xr12, $xr14, 0
	vpickve2gr.b	$a2, $vr13, 5
	xvreplgr2vr.b	$xr14, $a2
	xvpermi.q	$xr14, $xr12, 48
	xvextrins.b	$xr12, $xr14, 68
	vpickve2gr.b	$a2, $vr13, 6
	xvreplgr2vr.b	$xr14, $a2
	xvpermi.q	$xr14, $xr12, 48
	xvextrins.b	$xr12, $xr14, 136
	vpickve2gr.b	$a2, $vr13, 7
	xvreplgr2vr.b	$xr13, $a2
	xvpermi.q	$xr13, $xr12, 48
	xvextrins.b	$xr12, $xr13, 204
	vpickve2gr.b	$a2, $vr11, 0
	xvreplgr2vr.b	$xr13, $a2
	xvpermi.q	$xr13, $xr2, 18
	xvori.b	$xr14, $xr2, 0
	xvextrins.b	$xr14, $xr13, 0
	vpickve2gr.b	$a2, $vr11, 1
	xvreplgr2vr.b	$xr13, $a2
	xvpermi.q	$xr13, $xr14, 18
	xvextrins.b	$xr14, $xr13, 68
	vpickve2gr.b	$a2, $vr11, 2
	xvreplgr2vr.b	$xr13, $a2
	xvpermi.q	$xr13, $xr14, 18
	xvextrins.b	$xr14, $xr13, 136
	vpickve2gr.b	$a2, $vr11, 3
	xvreplgr2vr.b	$xr13, $a2
	xvpermi.q	$xr13, $xr14, 18
	xvextrins.b	$xr14, $xr13, 204
	vpickve2gr.b	$a2, $vr11, 4
	xvreplgr2vr.b	$xr13, $a2
	xvpermi.q	$xr13, $xr14, 48
	xvextrins.b	$xr14, $xr13, 0
	vpickve2gr.b	$a2, $vr11, 5
	xvreplgr2vr.b	$xr13, $a2
	xvpermi.q	$xr13, $xr14, 48
	xvextrins.b	$xr14, $xr13, 68
	vpickve2gr.b	$a2, $vr11, 6
	xvreplgr2vr.b	$xr13, $a2
	xvpermi.q	$xr13, $xr14, 48
	xvextrins.b	$xr14, $xr13, 136
	vpickve2gr.b	$a2, $vr11, 7
	xvreplgr2vr.b	$xr11, $a2
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	xvpermi.q	$xr11, $xr14, 48
	xvextrins.b	$xr14, $xr11, 204
	xvadd.w	$xr7, $xr7, $xr12
	xvadd.w	$xr8, $xr8, $xr14
	addi.d	$a2, $a2, -16
	addi.d	$t3, $t3, 128
	bnez	$a2, .LBB3_59
# %bb.60:                               # %middle.block191
	xvadd.w	$xr0, $xr8, $xr7
	xvpermi.d	$xr1, $xr0, 78
	xvshuf4i.w	$xr1, $xr1, 228
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvshuf4i.w	$xr1, $xr1, 14
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvadd.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$t4, $xr0, 0
	xvadd.w	$xr0, $xr10, $xr9
	xvpermi.d	$xr1, $xr0, 78
	xvshuf4i.w	$xr1, $xr1, 228
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvshuf4i.w	$xr1, $xr1, 14
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvadd.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$t5, $xr0, 0
	xvadd.w	$xr0, $xr5, $xr6
	xvpermi.d	$xr1, $xr0, 78
	xvshuf4i.w	$xr1, $xr1, 228
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvshuf4i.w	$xr1, $xr1, 14
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvadd.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$t6, $xr0, 0
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	bne	$fp, $a3, .LBB3_62
# %bb.61:
	ld.d	$t8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	b	.LBB3_67
.LBB3_62:                               # %vec.epilog.iter.check201
	andi	$a2, $fp, 12
	ld.d	$t8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	beqz	$a2, .LBB3_77
# %bb.63:
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
.LBB3_64:                               # %vec.epilog.ph200
	bstrpick.d	$a2, $fp, 61, 2
	slli.d	$t2, $a2, 2
	slli.d	$a2, $a2, 5
	vrepli.b	$vr0, 0
	add.d	$t3, $a0, $a2
	vori.b	$vr7, $vr0, 0
	vinsgr2vr.w	$vr7, $t4, 0
	vori.b	$vr6, $vr0, 0
	vinsgr2vr.w	$vr6, $t5, 0
	vori.b	$vr1, $vr0, 0
	vinsgr2vr.w	$vr1, $t6, 0
	vreplgr2vr.w	$vr2, $s2
	vreplgr2vr.w	$vr3, $s3
	sub.d	$t4, $a3, $t2
	alsl.d	$a0, $a3, $a0, 3
	addi.d	$a0, $a0, 16
	vrepli.w	$vr4, 14
	vrepli.w	$vr5, 15
	.p2align	4, , 16
.LBB3_65:                               # %vec.epilog.vector.body210
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a0, -16
	ld.w	$a3, $a0, -8
	ld.w	$a4, $a0, 0
	ld.w	$a5, $a0, 8
	vinsgr2vr.w	$vr8, $a2, 0
	vinsgr2vr.w	$vr8, $a3, 1
	vinsgr2vr.w	$vr8, $a4, 2
	vinsgr2vr.w	$vr8, $a5, 3
	ld.w	$a2, $a0, -12
	ld.w	$a3, $a0, -4
	ld.w	$a4, $a0, 4
	ld.w	$a5, $a0, 12
	vinsgr2vr.w	$vr9, $a2, 0
	vinsgr2vr.w	$vr9, $a3, 1
	vinsgr2vr.w	$vr9, $a4, 2
	vinsgr2vr.w	$vr9, $a5, 3
	vslt.w	$vr10, $vr4, $vr8
	vmini.w	$vr11, $vr8, 15
	vslli.w	$vr11, $vr11, 4
	vseqi.w	$vr8, $vr8, 0
	vadd.w	$vr1, $vr1, $vr8
	vseqi.w	$vr8, $vr9, 0
	vadd.w	$vr1, $vr1, $vr8
	vand.v	$vr8, $vr10, $vr2
	vadd.w	$vr6, $vr6, $vr8
	vand.v	$vr8, $vr10, $vr3
	vadd.w	$vr7, $vr7, $vr8
	vslt.w	$vr8, $vr4, $vr9
	vbitsel.v	$vr9, $vr9, $vr5, $vr8
	vadd.w	$vr9, $vr11, $vr9
	vaddi.wu	$vr1, $vr1, 2
	vand.v	$vr10, $vr8, $vr2
	vadd.w	$vr6, $vr6, $vr10
	vand.v	$vr8, $vr8, $vr3
	vadd.w	$vr7, $vr7, $vr8
	vpickve2gr.w	$a2, $vr9, 3
	vpickve2gr.w	$a3, $vr9, 2
	vpickve2gr.w	$a4, $vr9, 1
	vpickve2gr.w	$a5, $vr9, 0
	ldx.b	$a6, $s8, $a5
	ldx.b	$a7, $s8, $a4
	ldx.b	$t0, $s8, $a3
	ldx.b	$t5, $s8, $a2
	vinsgr2vr.b	$vr8, $a6, 0
	vinsgr2vr.b	$vr8, $a7, 1
	vinsgr2vr.b	$vr8, $t0, 2
	vinsgr2vr.b	$vr8, $t5, 3
	vilvl.b	$vr8, $vr0, $vr8
	vilvl.h	$vr8, $vr0, $vr8
	vadd.w	$vr6, $vr6, $vr8
	ldx.b	$a5, $t1, $a5
	ldx.b	$a4, $t1, $a4
	ldx.b	$a3, $t1, $a3
	ldx.b	$a2, $t1, $a2
	vinsgr2vr.b	$vr8, $a5, 0
	vinsgr2vr.b	$vr8, $a4, 1
	vinsgr2vr.b	$vr8, $a3, 2
	vinsgr2vr.b	$vr8, $a2, 3
	vilvl.b	$vr8, $vr0, $vr8
	vilvl.h	$vr8, $vr0, $vr8
	vadd.w	$vr7, $vr7, $vr8
	addi.d	$t4, $t4, 4
	addi.d	$a0, $a0, 32
	bnez	$t4, .LBB3_65
# %bb.66:                               # %vec.epilog.middle.block229
	vshuf4i.w	$vr0, $vr7, 14
	vadd.w	$vr0, $vr7, $vr0
	vreplvei.w	$vr2, $vr0, 1
	vadd.w	$vr0, $vr0, $vr2
	vpickve2gr.w	$t4, $vr0, 0
	vshuf4i.w	$vr0, $vr6, 14
	vadd.w	$vr0, $vr6, $vr0
	vreplvei.w	$vr2, $vr0, 1
	vadd.w	$vr0, $vr0, $vr2
	vpickve2gr.w	$t5, $vr0, 0
	vshuf4i.w	$vr0, $vr1, 14
	vadd.w	$vr0, $vr1, $vr0
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$t6, $vr0, 0
	bne	$fp, $t2, .LBB3_78
.LBB3_67:                               # %count_bit_ESC.exit
	slt	$a0, $t4, $t5
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $s0, $a0
	or	$a3, $a0, $a1
	slt	$a0, $t5, $t4
	masknez	$a1, $t4, $a0
	ld.w	$a2, $t8, 0
	maskeqz	$a0, $t5, $a0
	or	$a0, $a0, $a1
	add.d	$a0, $a0, $t6
	add.d	$a0, $a0, $a2
	move	$a2, $t8
.LBB3_68:                               # %cleanup.sink.split
	st.w	$a0, $a2, 0
.LBB3_69:
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
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
	addi.w	$a0, $a3, 0
	ret
.LBB3_70:                               # %sw.bb17
	ld.d	$a3, $a6, 376
	slli.d	$a7, $a4, 2
	pcalau12i	$a6, %pc_hi20(cb_esc_buf)
	addi.d	$a6, $a6, %pc_lo12(cb_esc_buf)
	alsl.d	$a4, $a4, $a6, 2
	sltu	$a4, $a4, $a7
	masknez	$a4, $a7, $a4
	ori	$a7, $zero, 28
	bltu	$a4, $a7, .LBB3_74
# %bb.71:                               # %vector.ph238
	srli.d	$a4, $a4, 2
	addi.d	$a4, $a4, 1
	bstrpick.d	$a6, $a4, 61, 3
	slli.d	$a7, $a6, 3
	slli.d	$a6, $a6, 5
	pcalau12i	$t0, %pc_hi20(cb_esc_buf)
	addi.d	$t0, $t0, %pc_lo12(cb_esc_buf)
	vrepli.b	$vr0, 0
	add.d	$a6, $t0, $a6
	vori.b	$vr1, $vr0, 0
	vinsgr2vr.w	$vr1, $a5, 0
	addi.d	$a5, $t0, 16
	move	$t0, $a7
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB3_72:                               # %vector.body241
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $a5, -16
	vld	$vr4, $a5, 0
	vpickve2gr.w	$t1, $vr3, 3
	vpickve2gr.w	$t2, $vr3, 2
	vpickve2gr.w	$t3, $vr3, 1
	vpickve2gr.w	$t4, $vr3, 0
	vpickve2gr.w	$t5, $vr4, 3
	vpickve2gr.w	$t6, $vr4, 2
	vpickve2gr.w	$t7, $vr4, 1
	vpickve2gr.w	$t8, $vr4, 0
	ldx.b	$t4, $a3, $t4
	ldx.b	$t3, $a3, $t3
	ldx.b	$t2, $a3, $t2
	ldx.b	$t1, $a3, $t1
	vinsgr2vr.b	$vr3, $t4, 0
	vinsgr2vr.b	$vr3, $t3, 1
	vinsgr2vr.b	$vr3, $t2, 2
	vinsgr2vr.b	$vr3, $t1, 3
	ldx.b	$t1, $a3, $t8
	ldx.b	$t2, $a3, $t7
	ldx.b	$t3, $a3, $t6
	ldx.b	$t4, $a3, $t5
	vinsgr2vr.b	$vr4, $t1, 0
	vinsgr2vr.b	$vr4, $t2, 1
	vinsgr2vr.b	$vr4, $t3, 2
	vinsgr2vr.b	$vr4, $t4, 3
	vilvl.b	$vr3, $vr0, $vr3
	vilvl.h	$vr3, $vr0, $vr3
	vilvl.b	$vr4, $vr0, $vr4
	vilvl.h	$vr4, $vr0, $vr4
	vadd.w	$vr1, $vr1, $vr3
	vadd.w	$vr2, $vr2, $vr4
	addi.d	$t0, $t0, -8
	addi.d	$a5, $a5, 32
	bnez	$t0, .LBB3_72
# %bb.73:                               # %middle.block249
	vadd.w	$vr0, $vr2, $vr1
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a5, $vr0, 0
	beq	$a4, $a7, .LBB3_76
.LBB3_74:                               # %do.body.i68.preheader
	addi.d	$a4, $a6, -4
	.p2align	4, , 16
.LBB3_75:                               # %do.body.i68
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a4, 4
	ldx.bu	$a6, $a3, $a6
	addi.d	$a7, $a4, 4
	add.w	$a5, $a5, $a6
	move	$a4, $a7
	bltu	$a7, $a1, .LBB3_75
.LBB3_76:                               # %count_bit_noESC2.exit77
	slt	$a1, $a5, $a0
	ori	$a3, $zero, 13
	masknez	$a3, $a3, $a1
	ori	$a4, $zero, 15
	maskeqz	$a1, $a4, $a1
	b	.LBB3_37
.LBB3_77:
	alsl.d	$t3, $a3, $a0, 3
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
.LBB3_78:                               # %while.body.i82.preheader
	ori	$a0, $zero, 14
	ori	$a3, $zero, 15
	b	.LBB3_80
	.p2align	4, , 16
.LBB3_79:                               # %if.end19.i
                                        #   in Loop: Header=BB3_80 Depth=1
	ldx.bu	$a2, $s8, $t2
	ldx.bu	$a4, $t1, $t2
	add.w	$t5, $t5, $a2
	addi.d	$t3, $t3, 8
	add.w	$t4, $t4, $a4
	bgeu	$t3, $a1, .LBB3_67
.LBB3_80:                               # %while.body.i82
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t2, $t3, 0
	beqz	$t2, .LBB3_82
# %bb.81:                               # %if.then.i
                                        #   in Loop: Header=BB3_80 Depth=1
	addi.d	$t6, $t6, 1
	slt	$a2, $a0, $t2
	maskeqz	$a4, $s2, $a2
	add.d	$t5, $a4, $t5
	maskeqz	$a2, $s3, $a2
	add.d	$t4, $a2, $t4
	slti	$a2, $t2, 15
	masknez	$a4, $a3, $a2
	maskeqz	$a2, $t2, $a2
	or	$a2, $a2, $a4
	slli.w	$t2, $a2, 4
	ld.w	$t7, $t3, 4
	bnez	$t7, .LBB3_83
	b	.LBB3_79
	.p2align	4, , 16
.LBB3_82:                               #   in Loop: Header=BB3_80 Depth=1
	move	$t2, $zero
	ld.w	$t7, $t3, 4
	beqz	$t7, .LBB3_79
.LBB3_83:                               # %if.then11.i
                                        #   in Loop: Header=BB3_80 Depth=1
	addi.d	$t6, $t6, 1
	slt	$a2, $a0, $t7
	maskeqz	$a4, $s2, $a2
	add.d	$t5, $t5, $a4
	maskeqz	$a4, $s3, $a2
	add.d	$t4, $t4, $a4
	masknez	$a4, $t7, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a4
	add.w	$t2, $t2, $a2
	b	.LBB3_79
.Lfunc_end3:
	.size	choose_table, .Lfunc_end3-choose_table
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI3_0:
	.word	.LBB3_30-.LJTI3_0
	.word	.LBB3_38-.LJTI3_0
	.word	.LBB3_38-.LJTI3_0
	.word	.LBB3_30-.LJTI3_0
	.word	.LBB3_38-.LJTI3_0
	.word	.LBB3_23-.LJTI3_0
	.word	.LBB3_38-.LJTI3_0
	.word	.LBB3_38-.LJTI3_0
	.word	.LBB3_23-.LJTI3_0
	.word	.LBB3_38-.LJTI3_0
	.word	.LBB3_38-.LJTI3_0
	.word	.LBB3_70-.LJTI3_0
                                        # -- End function
	.text
	.globl	best_scalefac_store             # -- Begin function best_scalefac_store
	.p2align	5
	.type	best_scalefac_store,@function
best_scalefac_store:                    # @best_scalefac_store
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s0, $a4, 48
	ori	$a6, $zero, 240
	mul.d	$a6, $a1, $a6
	add.d	$a6, $s0, $a6
	ori	$a7, $zero, 120
	mul.d	$a7, $a2, $a7
	add.d	$fp, $a6, $a7
	ld.wu	$a6, $fp, 80
	alsl.d	$t1, $a1, $a1, 3
	alsl.d	$a7, $a2, $a2, 3
	beqz	$a6, .LBB4_11
# %bb.1:                                # %for.body.lr.ph
	move	$t4, $zero
	ori	$t0, $zero, 488
	mul.d	$t0, $a1, $t0
	add.d	$t0, $a5, $t0
	ori	$t2, $zero, 244
	mul.d	$t2, $a2, $t2
	add.d	$t0, $t0, $t2
	slli.d	$t3, $t1, 9
	pcalau12i	$t2, %got_pc_hi20(scalefac_band)
	ld.d	$t2, $t2, %got_pc_lo12(scalefac_band)
	slli.d	$t5, $a7, 8
	add.d	$t3, $t3, $t5
	add.d	$t3, $a3, $t3
	b	.LBB4_4
	.p2align	4, , 16
.LBB4_2:                                # %for.body.for.inc39_crit_edge
                                        #   in Loop: Header=BB4_4 Depth=1
	addi.d	$t5, $t4, 1
.LBB4_3:                                # %for.inc39
                                        #   in Loop: Header=BB4_4 Depth=1
	move	$t4, $t5
	bgeu	$t5, $a6, .LBB4_11
.LBB4_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_7 Depth 2
	slli.d	$t5, $t4, 2
	ldx.w	$t6, $t0, $t5
	blez	$t6, .LBB4_2
# %bb.5:                                # %if.then
                                        #   in Loop: Header=BB4_4 Depth=1
	ldx.w	$t6, $t2, $t5
	addi.d	$t5, $t4, 1
	slli.d	$t7, $t5, 2
	ldx.w	$t7, $t2, $t7
	bge	$t6, $t7, .LBB4_9
# %bb.6:                                # %for.body19.preheader
                                        #   in Loop: Header=BB4_4 Depth=1
	alsl.d	$t8, $t6, $t3, 2
	.p2align	4, , 16
.LBB4_7:                                # %for.body19
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$s1, $t8, 0
	bnez	$s1, .LBB4_9
# %bb.8:                                # %for.inc
                                        #   in Loop: Header=BB4_7 Depth=2
	addi.w	$t6, $t6, 1
	addi.d	$t8, $t8, 4
	bne	$t7, $t6, .LBB4_7
	b	.LBB4_10
	.p2align	4, , 16
.LBB4_9:                                # %for.end
                                        #   in Loop: Header=BB4_4 Depth=1
	bne	$t6, $t7, .LBB4_3
.LBB4_10:                               # %if.then29
                                        #   in Loop: Header=BB4_4 Depth=1
	alsl.d	$a6, $t4, $t0, 2
	st.w	$zero, $a6, 0
	ld.wu	$a6, $fp, 80
	b	.LBB4_3
.LBB4_11:                               # %for.cond42.preheader
	ld.w	$t2, $fp, 84
	ori	$a6, $zero, 488
	mul.d	$a6, $a1, $a6
	ori	$t3, $zero, 12
	add.d	$a6, $a5, $a6
	bge	$t2, $t3, .LBB4_44
# %bb.12:                               # %for.body47.lr.ph
	ori	$t0, $zero, 244
	mul.d	$t0, $a2, $t0
	add.d	$t0, $a6, $t0
	addi.d	$t0, $t0, 88
	slli.d	$t1, $t1, 9
	pcalau12i	$t4, %got_pc_hi20(scalefac_band)
	ld.d	$t5, $t4, %got_pc_lo12(scalefac_band)
	slli.d	$a7, $a7, 8
	add.d	$t1, $t1, $a7
	add.d	$t4, $a3, $t1
	addi.d	$a7, $t5, 92
	b	.LBB4_15
	.p2align	4, , 16
.LBB4_13:                               # %for.body47.for.inc92_crit_edge
                                        #   in Loop: Header=BB4_15 Depth=1
	addi.d	$t2, $t2, 1
.LBB4_14:                               # %for.inc92
                                        #   in Loop: Header=BB4_15 Depth=1
	beq	$t2, $t3, .LBB4_22
.LBB4_15:                               # %for.body47
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_18 Depth 2
	slli.d	$t5, $t2, 3
	alsl.d	$t5, $t2, $t5, 2
	ldx.w	$t6, $t0, $t5
	blez	$t6, .LBB4_13
# %bb.16:                               # %if.then57
                                        #   in Loop: Header=BB4_15 Depth=1
	slli.d	$t6, $t2, 2
	ldx.w	$t6, $a7, $t6
	addi.d	$t2, $t2, 1
	slli.d	$t7, $t2, 2
	ldx.w	$t7, $a7, $t7
	bge	$t6, $t7, .LBB4_20
# %bb.17:                               # %for.body65.preheader
                                        #   in Loop: Header=BB4_15 Depth=1
	slli.d	$t8, $t6, 3
	alsl.d	$t8, $t6, $t8, 2
	add.d	$t8, $t4, $t8
	.p2align	4, , 16
.LBB4_18:                               # %for.body65
                                        #   Parent Loop BB4_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$s1, $t8, 0
	bnez	$s1, .LBB4_20
# %bb.19:                               # %for.inc76
                                        #   in Loop: Header=BB4_18 Depth=2
	addi.w	$t6, $t6, 1
	addi.d	$t8, $t8, 12
	bne	$t7, $t6, .LBB4_18
	b	.LBB4_21
	.p2align	4, , 16
.LBB4_20:                               # %for.end78
                                        #   in Loop: Header=BB4_15 Depth=1
	bne	$t6, $t7, .LBB4_14
.LBB4_21:                               # %if.then80
                                        #   in Loop: Header=BB4_15 Depth=1
	add.d	$t5, $t0, $t5
	st.w	$zero, $t5, 0
	b	.LBB4_14
.LBB4_22:                               # %for.inc95
	ld.w	$t2, $fp, 84
	ori	$t3, $zero, 11
	blt	$t3, $t2, .LBB4_44
# %bb.23:                               # %for.body47.lr.ph.1
	addi.d	$t3, $t0, 4
	add.d	$a3, $t1, $a3
	addi.d	$t1, $a3, 4
	ori	$t4, $zero, 12
	b	.LBB4_26
	.p2align	4, , 16
.LBB4_24:                               # %for.body47.1.for.inc92.1_crit_edge
                                        #   in Loop: Header=BB4_26 Depth=1
	addi.d	$t2, $t2, 1
.LBB4_25:                               # %for.inc92.1
                                        #   in Loop: Header=BB4_26 Depth=1
	beq	$t2, $t4, .LBB4_33
.LBB4_26:                               # %for.body47.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_29 Depth 2
	slli.d	$t5, $t2, 3
	alsl.d	$t5, $t2, $t5, 2
	ldx.w	$t6, $t3, $t5
	blez	$t6, .LBB4_24
# %bb.27:                               # %if.then57.1
                                        #   in Loop: Header=BB4_26 Depth=1
	slli.d	$t6, $t2, 2
	ldx.w	$t6, $a7, $t6
	addi.d	$t2, $t2, 1
	slli.d	$t7, $t2, 2
	ldx.w	$t7, $a7, $t7
	bge	$t6, $t7, .LBB4_31
# %bb.28:                               # %for.body65.preheader.1
                                        #   in Loop: Header=BB4_26 Depth=1
	slli.d	$t8, $t6, 3
	alsl.d	$t8, $t6, $t8, 2
	add.d	$t8, $t1, $t8
	.p2align	4, , 16
.LBB4_29:                               # %for.body65.1
                                        #   Parent Loop BB4_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$s1, $t8, 0
	bnez	$s1, .LBB4_31
# %bb.30:                               # %for.inc76.1
                                        #   in Loop: Header=BB4_29 Depth=2
	addi.w	$t6, $t6, 1
	addi.d	$t8, $t8, 12
	bne	$t7, $t6, .LBB4_29
	b	.LBB4_32
	.p2align	4, , 16
.LBB4_31:                               # %for.end78.1
                                        #   in Loop: Header=BB4_26 Depth=1
	bne	$t6, $t7, .LBB4_25
.LBB4_32:                               # %if.then80.1
                                        #   in Loop: Header=BB4_26 Depth=1
	add.d	$t5, $t3, $t5
	st.w	$zero, $t5, 0
	b	.LBB4_25
.LBB4_33:                               # %for.inc95.1
	ld.w	$t1, $fp, 84
	ori	$t2, $zero, 11
	blt	$t2, $t1, .LBB4_44
# %bb.34:                               # %for.body47.lr.ph.2
	addi.d	$t0, $t0, 8
	addi.d	$a3, $a3, 8
	ori	$t2, $zero, 12
	b	.LBB4_37
	.p2align	4, , 16
.LBB4_35:                               # %for.body47.2.for.inc92.2_crit_edge
                                        #   in Loop: Header=BB4_37 Depth=1
	addi.d	$t1, $t1, 1
.LBB4_36:                               # %for.inc92.2
                                        #   in Loop: Header=BB4_37 Depth=1
	beq	$t1, $t2, .LBB4_44
.LBB4_37:                               # %for.body47.2
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_40 Depth 2
	slli.d	$t3, $t1, 3
	alsl.d	$t3, $t1, $t3, 2
	ldx.w	$t4, $t0, $t3
	blez	$t4, .LBB4_35
# %bb.38:                               # %if.then57.2
                                        #   in Loop: Header=BB4_37 Depth=1
	slli.d	$t4, $t1, 2
	ldx.w	$t4, $a7, $t4
	addi.d	$t1, $t1, 1
	slli.d	$t5, $t1, 2
	ldx.w	$t5, $a7, $t5
	bge	$t4, $t5, .LBB4_42
# %bb.39:                               # %for.body65.preheader.2
                                        #   in Loop: Header=BB4_37 Depth=1
	slli.d	$t6, $t4, 3
	alsl.d	$t6, $t4, $t6, 2
	add.d	$t6, $a3, $t6
	.p2align	4, , 16
.LBB4_40:                               # %for.body65.2
                                        #   Parent Loop BB4_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t7, $t6, 0
	bnez	$t7, .LBB4_42
# %bb.41:                               # %for.inc76.2
                                        #   in Loop: Header=BB4_40 Depth=2
	addi.w	$t4, $t4, 1
	addi.d	$t6, $t6, 12
	bne	$t5, $t4, .LBB4_40
	b	.LBB4_43
	.p2align	4, , 16
.LBB4_42:                               # %for.end78.2
                                        #   in Loop: Header=BB4_37 Depth=1
	bne	$t4, $t5, .LBB4_36
.LBB4_43:                               # %if.then80.2
                                        #   in Loop: Header=BB4_37 Depth=1
	add.d	$t3, $t0, $t3
	st.w	$zero, $t3, 0
	b	.LBB4_36
.LBB4_44:                               # %for.end97
	ld.w	$a3, $fp, 76
	ld.w	$a7, $fp, 0
	ld.w	$t0, $fp, 68
	sub.d	$a3, $a7, $a3
	st.w	$a3, $fp, 0
	bnez	$t0, .LBB4_77
# %bb.45:                               # %land.lhs.true
	ld.w	$a3, $fp, 64
	bnez	$a3, .LBB4_77
# %bb.46:                               # %for.cond102.preheader
	ld.w	$a3, $fp, 80
	beqz	$a3, .LBB4_49
# %bb.47:                               # %iter.check
	ori	$t0, $zero, 4
	bstrpick.d	$a7, $a3, 31, 0
	bgeu	$a3, $t0, .LBB4_50
# %bb.48:
	move	$t0, $zero
	move	$t1, $zero
	b	.LBB4_59
.LBB4_49:
	move	$t1, $zero
	b	.LBB4_61
.LBB4_50:                               # %vector.main.loop.iter.check
	ori	$t0, $zero, 16
	bgeu	$a3, $t0, .LBB4_52
# %bb.51:
	move	$t0, $zero
	move	$t1, $zero
	b	.LBB4_56
.LBB4_52:                               # %vector.ph
	bstrpick.d	$t0, $a7, 31, 4
	slli.d	$t0, $t0, 4
	ori	$t1, $zero, 488
	mul.d	$t1, $a1, $t1
	ori	$t2, $zero, 244
	mul.d	$t2, $a2, $t2
	add.d	$t1, $t1, $t2
	add.d	$t1, $t1, $a5
	xvrepli.b	$xr0, 0
	addi.d	$t1, $t1, 32
	move	$t2, $t0
	xvori.b	$xr1, $xr0, 0
	.p2align	4, , 16
.LBB4_53:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $t1, -32
	xvld	$xr3, $t1, 0
	xvor.v	$xr0, $xr2, $xr0
	xvor.v	$xr1, $xr3, $xr1
	addi.d	$t2, $t2, -16
	addi.d	$t1, $t1, 64
	bnez	$t2, .LBB4_53
# %bb.54:                               # %middle.block
	xvor.v	$xr0, $xr1, $xr0
	xvpermi.d	$xr1, $xr0, 78
	xvshuf4i.w	$xr1, $xr1, 228
	xvor.v	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvshuf4i.w	$xr1, $xr1, 14
	xvor.v	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvor.v	$xr0, $xr0, $xr1
	xvpickve2gr.w	$t1, $xr0, 0
	beq	$t0, $a7, .LBB4_61
# %bb.55:                               # %vec.epilog.iter.check
	andi	$t2, $a7, 12
	beqz	$t2, .LBB4_59
.LBB4_56:                               # %vec.epilog.ph
	move	$t2, $t0
	bstrpick.d	$t0, $a7, 31, 2
	slli.d	$t0, $t0, 2
	vrepli.b	$vr0, 0
	vinsgr2vr.w	$vr0, $t1, 0
	sub.d	$t1, $t2, $t0
	ori	$t3, $zero, 488
	mul.d	$t3, $a1, $t3
	ori	$t4, $zero, 244
	mul.d	$t4, $a2, $t4
	add.d	$t3, $t3, $t4
	alsl.d	$t2, $t2, $t3, 2
	add.d	$t2, $a5, $t2
	.p2align	4, , 16
.LBB4_57:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $t2, 0
	vor.v	$vr0, $vr1, $vr0
	addi.d	$t1, $t1, 4
	addi.d	$t2, $t2, 16
	bnez	$t1, .LBB4_57
# %bb.58:                               # %vec.epilog.middle.block
	vshuf4i.w	$vr1, $vr0, 14
	vor.v	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vor.v	$vr0, $vr0, $vr1
	vpickve2gr.w	$t1, $vr0, 0
	beq	$t0, $a7, .LBB4_61
.LBB4_59:                               # %for.body105.preheader
	ori	$t2, $zero, 488
	mul.d	$t2, $a1, $t2
	ori	$t3, $zero, 244
	mul.d	$t3, $a2, $t3
	add.d	$t2, $t2, $t3
	alsl.d	$t2, $t0, $t2, 2
	add.d	$t2, $a5, $t2
	sub.d	$a7, $a7, $t0
	.p2align	4, , 16
.LBB4_60:                               # %for.body105
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t0, $t2, 0
	or	$t1, $t0, $t1
	addi.d	$a7, $a7, -1
	addi.d	$t2, $t2, 4
	bnez	$a7, .LBB4_60
.LBB4_61:                               # %for.end115
	ld.w	$a7, $fp, 84
	ori	$t0, $zero, 11
	bltu	$t0, $a7, .LBB4_64
# %bb.62:                               # %for.cond120.preheader.lr.ph
	addi.d	$t0, $a7, 1
	ori	$t2, $zero, 488
	mul.d	$t2, $a1, $t2
	ori	$t3, $zero, 244
	mul.d	$t3, $a2, $t3
	add.d	$t2, $t2, $t3
	slli.d	$t3, $a7, 3
	alsl.d	$t3, $a7, $t3, 2
	add.d	$t2, $t2, $t3
	add.d	$t2, $t2, $a5
	addi.d	$t2, $t2, 96
	ori	$t3, $zero, 12
	.p2align	4, , 16
.LBB4_63:                               # %for.cond120.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t4, $t2, -8
	ld.w	$t5, $t2, -4
	ld.w	$t6, $t2, 0
	or	$t1, $t4, $t1
	or	$t1, $t5, $t1
	or	$t1, $t6, $t1
	bstrpick.d	$t4, $t0, 31, 0
	addi.d	$t0, $t0, 1
	addi.d	$t2, $t2, 12
	bne	$t4, $t3, .LBB4_63
.LBB4_64:                               # %for.end138
	beqz	$t1, .LBB4_77
# %bb.65:                               # %for.end138
	andi	$t0, $t1, 1
	bnez	$t0, .LBB4_77
# %bb.66:                               # %for.cond143.preheader
	beqz	$a3, .LBB4_70
# %bb.67:                               # %for.body146.lr.ph
	move	$a3, $zero
	ori	$a7, $zero, 244
	mul.d	$a7, $a2, $a7
	add.d	$a7, $a6, $a7
	.p2align	4, , 16
.LBB4_68:                               # %for.body146
                                        # =>This Inner Loop Header: Depth=1
	ld.wu	$t0, $a7, 0
	srli.d	$t1, $t0, 31
	add.w	$t0, $t0, $t1
	srli.d	$t0, $t0, 1
	st.w	$t0, $a7, 0
	ld.wu	$t0, $fp, 80
	addi.d	$a3, $a3, 1
	addi.d	$a7, $a7, 4
	bltu	$a3, $t0, .LBB4_68
# %bb.69:                               # %for.end156.loopexit
	ld.w	$a7, $fp, 84
.LBB4_70:                               # %for.end156
	ori	$a3, $zero, 11
	bltu	$a3, $a7, .LBB4_73
# %bb.71:                               # %for.cond161.preheader.lr.ph
	addi.d	$a3, $a7, 1
	ori	$t0, $zero, 488
	mul.d	$t0, $a1, $t0
	ori	$t1, $zero, 244
	mul.d	$t1, $a2, $t1
	add.d	$t0, $t0, $t1
	slli.d	$t1, $a7, 3
	alsl.d	$a7, $a7, $t1, 2
	add.d	$a7, $t0, $a7
	add.d	$a7, $a7, $a5
	addi.d	$a7, $a7, 96
	ori	$t0, $zero, 12
	.p2align	4, , 16
.LBB4_72:                               # %for.cond161.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.wu	$t1, $a7, -8
	srli.d	$t2, $t1, 31
	ld.wu	$t3, $a7, -4
	add.w	$t1, $t1, $t2
	srli.d	$t1, $t1, 1
	st.w	$t1, $a7, -8
	srli.d	$t1, $t3, 31
	ld.wu	$t2, $a7, 0
	add.w	$t1, $t3, $t1
	srli.d	$t1, $t1, 1
	st.w	$t1, $a7, -4
	srli.d	$t1, $t2, 31
	add.w	$t1, $t2, $t1
	srli.d	$t1, $t1, 1
	st.w	$t1, $a7, 0
	bstrpick.d	$t1, $a3, 31, 0
	addi.d	$a3, $a3, 1
	addi.d	$a7, $a7, 12
	bne	$t1, $t0, .LBB4_72
.LBB4_73:                               # %for.end179
	move	$s1, $a1
	move	$s2, $a5
	move	$s3, $a4
	ori	$a1, $zero, 1
	st.w	$a1, $fp, 68
	lu12i.w	$a1, 24414
	ori	$a1, $a1, 255
	st.w	$a1, $fp, 76
	move	$s4, $a0
	ld.w	$a1, $a0, 200
	ori	$a0, $zero, 244
	move	$s5, $a2
	mul.d	$a0, $a2, $a0
	ori	$a2, $zero, 2
	add.d	$a0, $a6, $a0
	bne	$a1, $a2, .LBB4_75
# %bb.74:                               # %if.then183
	move	$a1, $fp
	pcaddu18i	$ra, %call36(scale_bitcount)
	jirl	$ra, $ra, 0
	b	.LBB4_76
.LBB4_75:                               # %if.else
	move	$a1, $fp
	pcaddu18i	$ra, %call36(scale_bitcount_lsf)
	jirl	$ra, $ra, 0
.LBB4_76:                               # %if.end195
	move	$a2, $s5
	move	$a4, $s3
	move	$a5, $s2
	move	$a1, $s1
	move	$a0, $s4
.LBB4_77:                               # %if.end195
	ori	$a3, $zero, 1
	bne	$a1, $a3, .LBB4_114
# %bb.78:                               # %if.end195
	ld.w	$a1, $a0, 200
	ori	$a0, $zero, 2
	bne	$a1, $a0, .LBB4_114
# %bb.79:                               # %land.lhs.true200
	ori	$a1, $zero, 120
	mul.d	$a3, $a2, $a1
	add.d	$a1, $s0, $a3
	ld.w	$a6, $a1, 24
	beq	$a6, $a0, .LBB4_114
# %bb.80:                               # %land.lhs.true208
	add.d	$a0, $a4, $a3
	ld.w	$a3, $a0, 312
	ori	$a6, $zero, 2
	beq	$a3, $a6, .LBB4_114
# %bb.81:                               # %land.lhs.true217
	addi.d	$a0, $a0, 288
	ld.w	$a3, $a1, 68
	ld.w	$a6, $a0, 68
	bne	$a3, $a6, .LBB4_114
# %bb.82:                               # %land.lhs.true233
	ld.w	$a1, $a1, 64
	ld.w	$a3, $a0, 64
	bne	$a1, $a3, .LBB4_114
# %bb.83:                               # %if.then249
	alsl.d	$a1, $a2, $a4, 4
	vrepli.b	$vr0, 0
	vst	$vr0, $a1, 12
	ori	$a3, $zero, 244
	mul.d	$a3, $a2, $a3
	add.d	$a2, $a5, $a3
	ldx.w	$a4, $a5, $a3
	ld.w	$a5, $a2, 488
	addi.d	$a3, $a1, 12
	addi.d	$a1, $a2, 488
	bne	$a4, $a5, .LBB4_90
# %bb.84:                               # %for.inc29.i
	ld.w	$a4, $a2, 4
	ld.w	$a5, $a1, 4
	bne	$a4, $a5, .LBB4_90
# %bb.85:                               # %for.inc29.196.i
	ld.w	$a4, $a2, 8
	ld.w	$a5, $a1, 8
	bne	$a4, $a5, .LBB4_90
# %bb.86:                               # %for.inc29.2101.i
	ld.w	$a4, $a2, 12
	ld.w	$a5, $a1, 12
	bne	$a4, $a5, .LBB4_90
# %bb.87:                               # %for.inc29.3106.i
	ld.w	$a4, $a2, 16
	ld.w	$a5, $a1, 16
	bne	$a4, $a5, .LBB4_90
# %bb.88:                               # %for.inc29.4.i
	ld.w	$a4, $a2, 20
	ld.w	$a5, $a1, 20
	bne	$a4, $a5, .LBB4_90
# %bb.89:                               # %for.end53.i
	addi.w	$a4, $zero, -1
	st.d	$a4, $a1, 16
	st.d	$a4, $a1, 8
	st.d	$a4, $a1, 0
	ori	$a4, $zero, 1
	st.w	$a4, $a3, 0
.LBB4_90:                               # %for.body16.preheader.1.i
	ld.w	$a4, $a2, 24
	ld.w	$a5, $a1, 24
	bne	$a4, $a5, .LBB4_96
# %bb.91:                               # %for.inc29.1.i
	ld.w	$a4, $a2, 28
	ld.w	$a5, $a1, 28
	bne	$a4, $a5, .LBB4_96
# %bb.92:                               # %for.inc29.1.1.i
	ld.w	$a4, $a2, 32
	ld.w	$a5, $a1, 32
	bne	$a4, $a5, .LBB4_96
# %bb.93:                               # %for.inc29.1.2.i
	ld.w	$a4, $a2, 36
	ld.w	$a5, $a1, 36
	bne	$a4, $a5, .LBB4_96
# %bb.94:                               # %for.inc29.1.3.i
	ld.w	$a4, $a2, 40
	ld.w	$a5, $a1, 40
	bne	$a4, $a5, .LBB4_96
# %bb.95:                               # %for.end53.1.i
	addi.w	$a4, $zero, -1
	st.w	$a4, $a2, 528
	st.d	$a4, $a2, 520
	st.d	$a4, $a2, 512
	ori	$a4, $zero, 1
	st.w	$a4, $a3, 4
.LBB4_96:                               # %for.body16.preheader.2.i
	ld.w	$a4, $a2, 44
	ld.w	$a5, $a1, 44
	bne	$a4, $a5, .LBB4_102
# %bb.97:                               # %for.inc29.2.i
	ld.w	$a4, $a2, 48
	ld.w	$a5, $a1, 48
	bne	$a4, $a5, .LBB4_102
# %bb.98:                               # %for.inc29.2.1.i
	ld.w	$a4, $a2, 52
	ld.w	$a5, $a1, 52
	bne	$a4, $a5, .LBB4_102
# %bb.99:                               # %for.inc29.2.2.i
	ld.w	$a4, $a2, 56
	ld.w	$a5, $a1, 56
	bne	$a4, $a5, .LBB4_102
# %bb.100:                              # %for.inc29.2.3.i
	ld.w	$a4, $a2, 60
	ld.w	$a5, $a1, 60
	bne	$a4, $a5, .LBB4_102
# %bb.101:                              # %for.end53.2.i
	addi.w	$a4, $zero, -1
	st.w	$a4, $a2, 548
	st.d	$a4, $a2, 540
	st.d	$a4, $a2, 532
	ori	$a4, $zero, 1
	st.w	$a4, $a3, 8
.LBB4_102:                              # %for.body16.preheader.3.i
	ld.w	$a4, $a2, 64
	ld.w	$a5, $a1, 64
	bne	$a4, $a5, .LBB4_108
# %bb.103:                              # %for.inc29.3.i
	ld.w	$a4, $a2, 68
	ld.w	$a5, $a1, 68
	bne	$a4, $a5, .LBB4_108
# %bb.104:                              # %for.inc29.3.1.i
	ld.w	$a4, $a2, 72
	ld.w	$a5, $a1, 72
	bne	$a4, $a5, .LBB4_108
# %bb.105:                              # %for.inc29.3.2.i
	ld.w	$a4, $a2, 76
	ld.w	$a5, $a1, 76
	bne	$a4, $a5, .LBB4_108
# %bb.106:                              # %for.inc29.3.3.i
	ld.w	$a4, $a2, 80
	ld.w	$a5, $a1, 80
	bne	$a4, $a5, .LBB4_108
# %bb.107:                              # %for.end53.3.i
	addi.w	$a4, $zero, -1
	st.w	$a4, $a2, 568
	st.d	$a4, $a2, 560
	st.d	$a4, $a2, 552
	ori	$a2, $zero, 1
	st.w	$a2, $a3, 12
.LBB4_108:                              # %for.cond125.preheader.i
	ld.w	$a4, $a1, 0
	move	$a2, $zero
	move	$a3, $zero
	srai.d	$a5, $a4, 63
	andn	$a5, $a4, $a5
	ld.w	$a6, $a1, 4
	nor	$a4, $a4, $zero
	bstrpick.d	$a7, $a4, 31, 31
	addi.w	$a4, $zero, -1
	slt	$t0, $a4, $a6
	slt	$t1, $a6, $a5
	maskeqz	$t2, $a5, $t1
	masknez	$a6, $a6, $t1
	or	$a6, $t2, $a6
	add.d	$a7, $t0, $a7
	ld.w	$t1, $a1, 8
	masknez	$a5, $a5, $t0
	maskeqz	$a6, $a6, $t0
	or	$a5, $a6, $a5
	slt	$a6, $a4, $t1
	slt	$t0, $t1, $a5
	maskeqz	$t2, $a5, $t0
	masknez	$t0, $t1, $t0
	or	$t0, $t2, $t0
	add.d	$a7, $a7, $a6
	ld.w	$t1, $a1, 12
	maskeqz	$t0, $t0, $a6
	masknez	$a5, $a5, $a6
	or	$a5, $t0, $a5
	slt	$a6, $a4, $t1
	slt	$t0, $t1, $a5
	maskeqz	$t2, $a5, $t0
	masknez	$t0, $t1, $t0
	or	$t0, $t2, $t0
	add.d	$a7, $a7, $a6
	ld.w	$t1, $a1, 16
	maskeqz	$t0, $t0, $a6
	masknez	$a5, $a5, $a6
	or	$a5, $t0, $a5
	slt	$a6, $a4, $t1
	slt	$t0, $t1, $a5
	maskeqz	$t2, $a5, $t0
	masknez	$t0, $t1, $t0
	or	$t0, $t2, $t0
	add.d	$a7, $a7, $a6
	ld.w	$t1, $a1, 20
	maskeqz	$t0, $t0, $a6
	masknez	$a5, $a5, $a6
	or	$a5, $t0, $a5
	slt	$a6, $a4, $t1
	slt	$t0, $t1, $a5
	maskeqz	$t2, $a5, $t0
	masknez	$t0, $t1, $t0
	or	$t0, $t2, $t0
	add.d	$a7, $a7, $a6
	ld.w	$t1, $a1, 24
	maskeqz	$t0, $t0, $a6
	masknez	$a5, $a5, $a6
	or	$a5, $t0, $a5
	slt	$a6, $a4, $t1
	slt	$t0, $t1, $a5
	maskeqz	$t2, $a5, $t0
	masknez	$t0, $t1, $t0
	or	$t0, $t2, $t0
	add.d	$a7, $a7, $a6
	ld.w	$t1, $a1, 28
	maskeqz	$t0, $t0, $a6
	masknez	$a5, $a5, $a6
	or	$a5, $t0, $a5
	slt	$a6, $a4, $t1
	slt	$t0, $t1, $a5
	maskeqz	$t2, $a5, $t0
	masknez	$t0, $t1, $t0
	or	$t0, $t2, $t0
	add.d	$a7, $a7, $a6
	ld.w	$t1, $a1, 32
	maskeqz	$t0, $t0, $a6
	masknez	$a5, $a5, $a6
	or	$a5, $t0, $a5
	slt	$a6, $a4, $t1
	slt	$t0, $t1, $a5
	maskeqz	$t2, $a5, $t0
	masknez	$t0, $t1, $t0
	or	$t0, $t2, $t0
	add.d	$a7, $a7, $a6
	ld.w	$t1, $a1, 36
	maskeqz	$t0, $t0, $a6
	masknez	$a5, $a5, $a6
	or	$a5, $t0, $a5
	slt	$a6, $a4, $t1
	slt	$t0, $t1, $a5
	maskeqz	$t2, $a5, $t0
	masknez	$t0, $t1, $t0
	or	$t0, $t2, $t0
	add.d	$a7, $a7, $a6
	ld.w	$t1, $a1, 40
	maskeqz	$t0, $t0, $a6
	masknez	$a5, $a5, $a6
	or	$a6, $t0, $a5
	slt	$t0, $a4, $t1
	slt	$a5, $t1, $a6
	maskeqz	$t2, $a6, $a5
	masknez	$a5, $t1, $a5
	or	$t1, $t2, $a5
	add.d	$a5, $a7, $t0
	ld.w	$a7, $a1, 44
	maskeqz	$t1, $t1, $t0
	masknez	$a6, $a6, $t0
	or	$a6, $t1, $a6
	srai.d	$t0, $a7, 63
	ld.w	$t1, $a1, 48
	andn	$t0, $a7, $t0
	nor	$a7, $a7, $zero
	bstrpick.d	$a7, $a7, 31, 31
	slt	$t2, $a4, $t1
	slt	$t3, $t1, $t0
	masknez	$t1, $t1, $t3
	maskeqz	$t3, $t0, $t3
	or	$t1, $t3, $t1
	masknez	$t0, $t0, $t2
	ld.w	$t3, $a1, 52
	maskeqz	$t1, $t1, $t2
	or	$t0, $t1, $t0
	add.d	$a7, $t2, $a7
	slt	$t1, $a4, $t3
	slt	$t2, $t3, $t0
	masknez	$t3, $t3, $t2
	maskeqz	$t2, $t0, $t2
	or	$t2, $t2, $t3
	maskeqz	$t2, $t2, $t1
	ld.w	$t3, $a1, 56
	masknez	$t0, $t0, $t1
	or	$t0, $t2, $t0
	add.d	$a7, $a7, $t1
	slt	$t1, $a4, $t3
	slt	$t2, $t3, $t0
	masknez	$t3, $t3, $t2
	maskeqz	$t2, $t0, $t2
	or	$t2, $t2, $t3
	maskeqz	$t2, $t2, $t1
	ld.w	$t3, $a1, 60
	masknez	$t0, $t0, $t1
	or	$t0, $t2, $t0
	add.d	$a7, $a7, $t1
	slt	$t1, $a4, $t3
	slt	$t2, $t3, $t0
	masknez	$t3, $t3, $t2
	maskeqz	$t2, $t0, $t2
	or	$t2, $t2, $t3
	maskeqz	$t2, $t2, $t1
	ld.w	$t3, $a1, 64
	masknez	$t0, $t0, $t1
	or	$t0, $t2, $t0
	add.d	$a7, $a7, $t1
	slt	$t1, $a4, $t3
	slt	$t2, $t3, $t0
	masknez	$t3, $t3, $t2
	maskeqz	$t2, $t0, $t2
	or	$t2, $t2, $t3
	maskeqz	$t2, $t2, $t1
	ld.w	$t3, $a1, 68
	masknez	$t0, $t0, $t1
	or	$t0, $t2, $t0
	add.d	$a7, $a7, $t1
	slt	$t1, $a4, $t3
	slt	$t2, $t3, $t0
	masknez	$t3, $t3, $t2
	maskeqz	$t2, $t0, $t2
	or	$t2, $t2, $t3
	maskeqz	$t2, $t2, $t1
	ld.w	$t3, $a1, 72
	masknez	$t0, $t0, $t1
	or	$t0, $t2, $t0
	add.d	$a7, $a7, $t1
	slt	$t1, $a4, $t3
	slt	$t2, $t3, $t0
	masknez	$t3, $t3, $t2
	maskeqz	$t2, $t0, $t2
	or	$t2, $t2, $t3
	maskeqz	$t2, $t2, $t1
	ld.w	$t3, $a1, 76
	masknez	$t0, $t0, $t1
	or	$t0, $t2, $t0
	add.d	$a7, $a7, $t1
	slt	$t1, $t3, $t0
	maskeqz	$t2, $t0, $t1
	masknez	$t1, $t3, $t1
	or	$t1, $t2, $t1
	slt	$t2, $a4, $t3
	maskeqz	$t1, $t1, $t2
	ld.w	$a1, $a1, 80
	masknez	$t0, $t0, $t2
	or	$t0, $t1, $t0
	add.d	$a7, $a7, $t2
	slt	$a4, $a4, $a1
	slt	$t1, $a1, $t0
	maskeqz	$t2, $t0, $t1
	masknez	$a1, $a1, $t1
	or	$a1, $t2, $a1
	maskeqz	$a1, $a1, $a4
	masknez	$t0, $t0, $a4
	or	$a1, $a1, $t0
	add.d	$a4, $a7, $a4
	ori	$a7, $zero, 64
	b	.LBB4_110
	.p2align	4, , 16
.LBB4_109:                              # %for.inc146.i
                                        #   in Loop: Header=BB4_110 Depth=1
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 1
	beq	$a2, $a7, .LBB4_114
.LBB4_110:                              # %for.body127.i
                                        # =>This Inner Loop Header: Depth=1
	pcalau12i	$t0, %pc_hi20(scfsi_calc.slen1_n)
	addi.d	$t0, $t0, %pc_lo12(scfsi_calc.slen1_n)
	ldx.w	$t0, $t0, $a2
	bge	$a6, $t0, .LBB4_109
# %bb.111:                              # %land.lhs.true.i
                                        #   in Loop: Header=BB4_110 Depth=1
	pcalau12i	$t0, %pc_hi20(scfsi_calc.slen2_n)
	addi.d	$t0, $t0, %pc_lo12(scfsi_calc.slen2_n)
	ldx.w	$t0, $t0, $a2
	bge	$a1, $t0, .LBB4_109
# %bb.112:                              # %if.then134.i
                                        #   in Loop: Header=BB4_110 Depth=1
	pcalau12i	$t0, %pc_hi20(scfsi_calc.slen1_tab)
	addi.d	$t0, $t0, %pc_lo12(scfsi_calc.slen1_tab)
	ldx.w	$t0, $t0, $a2
	pcalau12i	$t1, %pc_hi20(scfsi_calc.slen2_tab)
	addi.d	$t1, $t1, %pc_lo12(scfsi_calc.slen2_tab)
	ldx.w	$t1, $t1, $a2
	ld.w	$t2, $a0, 76
	mul.d	$t0, $t0, $a5
	mul.d	$t1, $t1, $a4
	add.w	$t0, $t1, $t0
	bge	$t0, $t2, .LBB4_109
# %bb.113:                              # %if.then142.i
                                        #   in Loop: Header=BB4_110 Depth=1
	st.w	$t0, $a0, 76
	st.w	$a3, $a0, 16
	b	.LBB4_109
.LBB4_114:                              # %if.end250
	ld.w	$a0, $fp, 76
	ld.w	$a1, $fp, 0
	add.d	$a0, $a1, $a0
	st.w	$a0, $fp, 0
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end4:
	.size	best_scalefac_store, .Lfunc_end4-best_scalefac_store
                                        # -- End function
	.type	subdv_table,@object             # @subdv_table
	.data
	.globl	subdv_table
	.p2align	2, 0x0
subdv_table:
	.space	8
	.space	8
	.space	8
	.space	8
	.space	8
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	4                               # 0x4
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	7                               # 0x7
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	6                               # 0x6
	.word	7                               # 0x7
	.size	subdv_table, 184

	.type	huf_tbl_noESC,@object           # @huf_tbl_noESC
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
huf_tbl_noESC:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	5                               # 0x5
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	10                              # 0xa
	.word	10                              # 0xa
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	13                              # 0xd
	.size	huf_tbl_noESC, 60

	.type	cb_esc_buf,@object              # @cb_esc_buf
	.local	cb_esc_buf
	.comm	cb_esc_buf,1152,4
	.type	cb_esc_end,@object              # @cb_esc_end
	.local	cb_esc_end
	.comm	cb_esc_end,8,8
	.type	scfsi_calc.slen1_n,@object      # @scfsi_calc.slen1_n
	.p2align	2, 0x0
scfsi_calc.slen1_n:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	8                               # 0x8
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	8                               # 0x8
	.word	8                               # 0x8
	.word	8                               # 0x8
	.word	16                              # 0x10
	.word	16                              # 0x10
	.size	scfsi_calc.slen1_n, 64

	.type	scfsi_calc.slen2_n,@object      # @scfsi_calc.slen2_n
	.p2align	2, 0x0
scfsi_calc.slen2_n:
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	4                               # 0x4
	.word	8                               # 0x8
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	4                               # 0x4
	.word	8                               # 0x8
	.word	2                               # 0x2
	.word	4                               # 0x4
	.word	8                               # 0x8
	.word	2                               # 0x2
	.word	4                               # 0x4
	.word	8                               # 0x8
	.word	4                               # 0x4
	.word	8                               # 0x8
	.size	scfsi_calc.slen2_n, 64

	.type	scfsi_calc.slen1_tab,@object    # @scfsi_calc.slen1_tab
	.p2align	2, 0x0
scfsi_calc.slen1_tab:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	4                               # 0x4
	.size	scfsi_calc.slen1_tab, 64

	.type	scfsi_calc.slen2_tab,@object    # @scfsi_calc.slen2_tab
	.p2align	2, 0x0
scfsi_calc.slen2_tab:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.size	scfsi_calc.slen2_tab, 64

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym cb_esc_buf
