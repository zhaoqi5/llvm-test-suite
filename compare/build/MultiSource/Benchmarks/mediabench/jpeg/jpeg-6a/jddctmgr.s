	.file	"jddctmgr.c"
	.text
	.globl	jinit_inverse_dct               # -- Begin function jinit_inverse_dct
	.p2align	5
	.type	jinit_inverse_dct,@function
jinit_inverse_dct:                      # @jinit_inverse_dct
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	ld.d	$a3, $a0, 0
	ori	$a1, $zero, 1
	ori	$a2, $zero, 128
	move	$a0, $fp
	jirl	$ra, $a3, 0
	st.d	$a0, $fp, 584
	pcalau12i	$a1, %pc_hi20(start_pass)
	addi.d	$a1, $a1, %pc_lo12(start_pass)
	ld.w	$a2, $fp, 48
	st.d	$a1, $a0, 0
	blez	$a2, .LBB0_3
# %bb.1:                                # %for.body.lr.ph
	ld.d	$a1, $fp, 296
	move	$s0, $zero
	addi.d	$s1, $a0, 88
	addi.d	$s2, $a1, 88
	addi.w	$s3, $zero, -1
	lu32i.d	$s3, 0
	.p2align	4, , 16
.LBB0_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 8
	ld.d	$a3, $a0, 0
	ori	$a1, $zero, 1
	ori	$a2, $zero, 256
	move	$a0, $fp
	jirl	$ra, $a3, 0
	st.d	$a0, $s2, 0
	ori	$a2, $zero, 256
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.w	$s3, $s1, 0
	ld.w	$a0, $fp, 48
	addi.d	$s0, $s0, 1
	addi.d	$s1, $s1, 4
	addi.d	$s2, $s2, 96
	blt	$s0, $a0, .LBB0_2
.LBB0_3:                                # %for.end
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end0:
	.size	jinit_inverse_dct, .Lfunc_end0-jinit_inverse_dct
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function start_pass
.LCPI1_0:
	.dword	0x3ff63150b14861ef              # double 1.3870398450000001
.LCPI1_1:
	.dword	0x3ff4e7ae914d6fca              # double 1.3065629649999999
.LCPI1_2:
	.dword	0x3ff2d062ef6c11aa              # double 1.1758756020000001
.LCPI1_3:
	.dword	0x3fe92469c0a7bf3b              # double 0.785694958
.LCPI1_4:
	.dword	0x3fe1517a7bc720bb              # double 0.54119609999999996
.LCPI1_5:
	.dword	0x3fd1a855de72ab5d              # double 0.275899379
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI1_6:
	.word	16384                           # 0x4000
	.word	22725                           # 0x58c5
	.word	21407                           # 0x539f
	.word	19266                           # 0x4b42
	.word	16384                           # 0x4000
	.word	12873                           # 0x3249
	.word	8867                            # 0x22a3
	.word	4520                            # 0x11a8
.LCPI1_7:
	.word	22725                           # 0x58c5
	.word	31521                           # 0x7b21
	.word	29692                           # 0x73fc
	.word	26722                           # 0x6862
	.word	22725                           # 0x58c5
	.word	17855                           # 0x45bf
	.word	12299                           # 0x300b
	.word	6270                            # 0x187e
.LCPI1_8:
	.word	21407                           # 0x539f
	.word	29692                           # 0x73fc
	.word	27969                           # 0x6d41
	.word	25172                           # 0x6254
	.word	21407                           # 0x539f
	.word	16819                           # 0x41b3
	.word	11585                           # 0x2d41
	.word	5906                            # 0x1712
.LCPI1_9:
	.word	19266                           # 0x4b42
	.word	26722                           # 0x6862
	.word	25172                           # 0x6254
	.word	22654                           # 0x587e
	.word	19266                           # 0x4b42
	.word	15137                           # 0x3b21
	.word	10426                           # 0x28ba
	.word	5315                            # 0x14c3
.LCPI1_10:
	.word	12873                           # 0x3249
	.word	17855                           # 0x45bf
	.word	16819                           # 0x41b3
	.word	15137                           # 0x3b21
	.word	12873                           # 0x3249
	.word	10114                           # 0x2782
	.word	6967                            # 0x1b37
	.word	3552                            # 0xde0
.LCPI1_11:
	.word	8867                            # 0x22a3
	.word	12299                           # 0x300b
	.word	11585                           # 0x2d41
	.word	10426                           # 0x28ba
	.word	8867                            # 0x22a3
	.word	6967                            # 0x1b37
	.word	4799                            # 0x12bf
	.word	2446                            # 0x98e
.LCPI1_12:
	.word	4520                            # 0x11a8
	.word	6270                            # 0x187e
	.word	5906                            # 0x1712
	.word	5315                            # 0x14c3
	.word	4520                            # 0x11a8
	.word	3552                            # 0xde0
	.word	2446                            # 0x98e
	.word	1247                            # 0x4df
	.text
	.p2align	5
	.type	start_pass,@function
start_pass:                             # @start_pass
# %bb.0:                                # %entry
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
	move	$fp, $a0
	ld.w	$a0, $a0, 48
	blez	$a0, .LBB1_21
# %bb.1:                                # %for.body.lr.ph
	ld.d	$a0, $fp, 584
	ld.d	$a1, $fp, 296
	addi.d	$s0, $a0, 8
	addi.d	$s1, $a0, 88
	addi.d	$s2, $a1, 88
	pcalau12i	$a0, %got_pc_hi20(jpeg_idct_1x1)
	ld.d	$s3, $a0, %got_pc_lo12(jpeg_idct_1x1)
	pcalau12i	$a0, %pc_hi20(.LJTI1_0)
	addi.d	$s5, $a0, %pc_lo12(.LJTI1_0)
	pcalau12i	$a0, %got_pc_hi20(jpeg_idct_2x2)
	ld.d	$a0, $a0, %got_pc_lo12(jpeg_idct_2x2)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(jpeg_idct_4x4)
	ld.d	$a0, $a0, %got_pc_lo12(jpeg_idct_4x4)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.Lswitch.table.start_pass)
	addi.d	$a0, $a0, %pc_lo12(.Lswitch.table.start_pass)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	move	$s8, $zero
	move	$a0, $zero
	move	$a1, $zero
	ori	$s6, $zero, 6
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	xvldi	$xr0, -3832
	xvst	$xr0, $sp, 16                   # 32-byte Folded Spill
	b	.LBB1_4
.LBB1_2:                                # %vector.body
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a4, $a3, 0
	ld.d	$a5, $a3, 8
	vinsgr2vr.d	$vr0, $a4, 0
	vinsgr2vr.d	$vr1, $a5, 0
	vld	$vr2, $sp, 48                   # 16-byte Folded Reload
	vilvl.h	$vr0, $vr2, $vr0
	vilvl.h	$vr1, $vr2, $vr1
	ld.d	$a4, $a3, 16
	ld.d	$a5, $a3, 24
	vst	$vr0, $a2, 0
	vst	$vr1, $a2, 16
	vinsgr2vr.d	$vr0, $a4, 0
	vinsgr2vr.d	$vr1, $a5, 0
	vilvl.h	$vr0, $vr2, $vr0
	vilvl.h	$vr1, $vr2, $vr1
	ld.d	$a4, $a3, 32
	ld.d	$a5, $a3, 40
	vst	$vr0, $a2, 32
	vst	$vr1, $a2, 48
	vinsgr2vr.d	$vr0, $a4, 0
	vinsgr2vr.d	$vr1, $a5, 0
	vilvl.h	$vr0, $vr2, $vr0
	vilvl.h	$vr1, $vr2, $vr1
	ld.d	$a4, $a3, 48
	ld.d	$a5, $a3, 56
	vst	$vr0, $a2, 64
	vst	$vr1, $a2, 80
	vinsgr2vr.d	$vr0, $a4, 0
	vinsgr2vr.d	$vr1, $a5, 0
	vilvl.h	$vr0, $vr2, $vr0
	vilvl.h	$vr1, $vr2, $vr1
	ld.d	$a4, $a3, 64
	ld.d	$a5, $a3, 72
	vst	$vr0, $a2, 96
	vst	$vr1, $a2, 112
	vinsgr2vr.d	$vr0, $a4, 0
	vinsgr2vr.d	$vr1, $a5, 0
	vilvl.h	$vr0, $vr2, $vr0
	vilvl.h	$vr1, $vr2, $vr1
	ld.d	$a4, $a3, 80
	ld.d	$a5, $a3, 88
	vst	$vr0, $a2, 128
	vst	$vr1, $a2, 144
	vinsgr2vr.d	$vr0, $a4, 0
	vinsgr2vr.d	$vr1, $a5, 0
	ld.d	$a4, $a3, 96
	vilvl.h	$vr0, $vr2, $vr0
	vst	$vr0, $a2, 160
	ld.d	$a5, $a3, 104
	vinsgr2vr.d	$vr0, $a4, 0
	vilvl.h	$vr1, $vr2, $vr1
	vst	$vr1, $a2, 176
	vinsgr2vr.d	$vr1, $a5, 0
	vilvl.h	$vr0, $vr2, $vr0
	vilvl.h	$vr1, $vr2, $vr1
	ld.d	$a4, $a3, 112
	ld.d	$a3, $a3, 120
	vst	$vr0, $a2, 192
	vst	$vr1, $a2, 208
	vinsgr2vr.d	$vr0, $a4, 0
	vinsgr2vr.d	$vr1, $a3, 0
	vilvl.h	$vr0, $vr2, $vr0
	vilvl.h	$vr1, $vr2, $vr1
	vst	$vr0, $a2, 224
	vst	$vr1, $a2, 240
	.p2align	4, , 16
.LBB1_3:                                # %for.inc90
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.w	$a2, $fp, 48
	addi.d	$s8, $s8, 1
	addi.d	$s0, $s0, 8
	addi.d	$s1, $s1, 4
	addi.d	$s2, $s2, 96
	bge	$s8, $a2, .LBB1_21
.LBB1_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $s2, -52
	addi.w	$a3, $a2, -1
	xor	$a4, $a2, $a3
	move	$s4, $a1
	move	$s7, $a0
	bgeu	$a3, $a4, .LBB1_8
# %bb.5:                                # %for.body.split
                                        #   in Loop: Header=BB1_4 Depth=1
	ctz.d	$a0, $a2
	ori	$a1, $zero, 3
	bltu	$a1, $a0, .LBB1_8
# %bb.6:                                # %for.body.split
                                        #   in Loop: Header=BB1_4 Depth=1
	slli.d	$a1, $a0, 2
	ldx.w	$a1, $s5, $a1
	add.d	$a2, $s5, $a1
	move	$a1, $s3
	jr	$a2
.LBB1_7:                                # %sw.bb2
                                        #   in Loop: Header=BB1_4 Depth=1
	move	$a0, $zero
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	b	.LBB1_10
	.p2align	4, , 16
.LBB1_8:                                # %sw.default9
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a0, $fp, 0
	st.w	$a2, $a0, 44
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 0
	st.w	$s6, $a0, 40
.LBB1_9:                                # %sw.epilog16
                                        #   in Loop: Header=BB1_4 Depth=1
	move	$a0, $fp
	jirl	$ra, $a1, 0
	move	$a1, $s4
	move	$a0, $s7
.LBB1_10:                               # %sw.epilog16
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.w	$a2, $s2, -40
	st.d	$a1, $s0, 0
	beqz	$a2, .LBB1_3
# %bb.11:                               # %lor.lhs.false
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.w	$a2, $s1, 0
	addi.w	$a4, $a0, 0
	beq	$a2, $a4, .LBB1_3
# %bb.12:                               # %if.end
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a3, $s2, -8
	beqz	$a3, .LBB1_3
# %bb.13:                               # %if.end23
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a2, $s2, 0
	st.w	$a0, $s1, 0
	beqz	$a4, .LBB1_2
# %bb.14:                               # %if.end23
                                        #   in Loop: Header=BB1_4 Depth=1
	ori	$a5, $zero, 2
	bne	$a4, $a5, .LBB1_19
# %bb.15:                               # %sw.bb54
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.hu	$a4, $a3, 0
	movgr2fr.w	$fa0, $a4
	ffint.s.w	$fa1, $fa0
	ld.hu	$a4, $a3, 2
	pcalau12i	$a5, %pc_hi20(.LCPI1_0)
	fld.d	$fa0, $a5, %pc_lo12(.LCPI1_0)
	fst.s	$fa1, $a2, 0
	movgr2fr.w	$fa1, $a4
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	fcvt.s.d	$fa2, $fa1
	ld.hu	$a4, $a3, 4
	pcalau12i	$a5, %pc_hi20(.LCPI1_1)
	fld.d	$fa1, $a5, %pc_lo12(.LCPI1_1)
	fst.s	$fa2, $a2, 4
	movgr2fr.w	$fa2, $a4
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa2, $fa2, $fa1
	fcvt.s.d	$fa2, $fa2
	ld.hu	$a4, $a3, 6
	fst.s	$fa2, $a2, 8
	pcalau12i	$a5, %pc_hi20(.LCPI1_2)
	fld.d	$fa4, $a5, %pc_lo12(.LCPI1_2)
	movgr2fr.w	$fa2, $a4
	ffint.d.w	$fa2, $fa2
	ld.hu	$a4, $a3, 8
	fmul.d	$fa2, $fa2, $fa4
	fcvt.s.d	$fa2, $fa2
	fst.s	$fa2, $a2, 12
	movgr2fr.w	$fa2, $a4
	ffint.s.w	$fa3, $fa2
	ld.hu	$a4, $a3, 10
	pcalau12i	$a5, %pc_hi20(.LCPI1_3)
	fld.d	$fa2, $a5, %pc_lo12(.LCPI1_3)
	fst.s	$fa3, $a2, 16
	movgr2fr.w	$fa3, $a4
	ffint.d.w	$fa3, $fa3
	fmul.d	$fa3, $fa3, $fa2
	fcvt.s.d	$fa5, $fa3
	ld.hu	$a4, $a3, 12
	pcalau12i	$a5, %pc_hi20(.LCPI1_4)
	fld.d	$fa3, $a5, %pc_lo12(.LCPI1_4)
	fst.s	$fa5, $a2, 20
	movgr2fr.w	$fa5, $a4
	ffint.d.w	$fa5, $fa5
	fmul.d	$fa5, $fa5, $fa3
	fcvt.s.d	$fa5, $fa5
	ld.hu	$a4, $a3, 14
	fst.s	$fa5, $a2, 24
	pcalau12i	$a5, %pc_hi20(.LCPI1_5)
	fld.d	$fa5, $a5, %pc_lo12(.LCPI1_5)
	movgr2fr.w	$fa6, $a4
	ffint.d.w	$fa6, $fa6
	ld.hu	$a4, $a3, 16
	fmul.d	$fa6, $fa6, $fa5
	fcvt.s.d	$fa6, $fa6
	fst.s	$fa6, $a2, 28
	movgr2fr.w	$fa6, $a4
	ffint.d.w	$fa6, $fa6
	ld.hu	$a4, $a3, 18
	fmul.d	$fa6, $fa6, $fa0
	fcvt.s.d	$fa6, $fa6
	fst.s	$fa6, $a2, 32
	movgr2fr.w	$fa6, $a4
	ffint.d.w	$fa6, $fa6
	fmul.d	$fa6, $fa6, $fa0
	ld.hu	$a4, $a3, 20
	fmul.d	$fa6, $fa6, $fa0
	fcvt.s.d	$fa6, $fa6
	fst.s	$fa6, $a2, 36
	movgr2fr.w	$fa6, $a4
	ffint.d.w	$fa6, $fa6
	fmul.d	$fa6, $fa6, $fa0
	ld.hu	$a4, $a3, 22
	fmul.d	$fa6, $fa6, $fa1
	fcvt.s.d	$fa6, $fa6
	fst.s	$fa6, $a2, 40
	movgr2fr.w	$fa6, $a4
	ffint.d.w	$fa6, $fa6
	fmul.d	$fa6, $fa6, $fa0
	ld.hu	$a4, $a3, 24
	fmul.d	$fa6, $fa6, $fa4
	fcvt.s.d	$fa6, $fa6
	fst.s	$fa6, $a2, 44
	movgr2fr.w	$fa6, $a4
	ffint.d.w	$fa6, $fa6
	ld.hu	$a4, $a3, 26
	fmul.d	$fa6, $fa6, $fa0
	fcvt.s.d	$fa6, $fa6
	fst.s	$fa6, $a2, 48
	movgr2fr.w	$fa6, $a4
	ffint.d.w	$fa6, $fa6
	fmul.d	$fa6, $fa6, $fa0
	ld.hu	$a4, $a3, 28
	fmul.d	$fa6, $fa6, $fa2
	fcvt.s.d	$fa6, $fa6
	fst.s	$fa6, $a2, 52
	movgr2fr.w	$fa6, $a4
	ffint.d.w	$fa6, $fa6
	fmul.d	$fa6, $fa6, $fa0
	ld.hu	$a4, $a3, 30
	fmul.d	$fa6, $fa6, $fa3
	fcvt.s.d	$fa6, $fa6
	fst.s	$fa6, $a2, 56
	movgr2fr.w	$fa6, $a4
	ffint.d.w	$fa6, $fa6
	fmul.d	$fa6, $fa6, $fa0
	ld.hu	$a4, $a3, 32
	fmul.d	$fa6, $fa6, $fa5
	fcvt.s.d	$fa6, $fa6
	fst.s	$fa6, $a2, 60
	movgr2fr.w	$fa6, $a4
	ffint.d.w	$fa6, $fa6
	ld.hu	$a4, $a3, 34
	fmul.d	$fa6, $fa6, $fa1
	fcvt.s.d	$fa6, $fa6
	fst.s	$fa6, $a2, 64
	movgr2fr.w	$fa6, $a4
	ffint.d.w	$fa6, $fa6
	fmul.d	$fa6, $fa6, $fa1
	ld.hu	$a4, $a3, 36
	fmul.d	$fa6, $fa6, $fa0
	fcvt.s.d	$fa6, $fa6
	fst.s	$fa6, $a2, 68
	movgr2fr.w	$fa6, $a4
	ffint.d.w	$fa6, $fa6
	fmul.d	$fa6, $fa6, $fa1
	ld.hu	$a4, $a3, 38
	fmul.d	$fa6, $fa6, $fa1
	fcvt.s.d	$fa6, $fa6
	fst.s	$fa6, $a2, 72
	movgr2fr.w	$fa6, $a4
	ffint.d.w	$fa6, $fa6
	fmul.d	$fa6, $fa6, $fa1
	ld.hu	$a4, $a3, 40
	fmul.d	$fa6, $fa6, $fa4
	fcvt.s.d	$fa6, $fa6
	fst.s	$fa6, $a2, 76
	movgr2fr.w	$fa6, $a4
	ffint.d.w	$fa6, $fa6
	ld.hu	$a4, $a3, 42
	fmul.d	$fa6, $fa6, $fa1
	fcvt.s.d	$fa6, $fa6
	fst.s	$fa6, $a2, 80
	movgr2fr.w	$fa6, $a4
	ffint.d.w	$fa6, $fa6
	fmul.d	$fa6, $fa6, $fa1
	ld.hu	$a4, $a3, 44
	fmul.d	$fa6, $fa6, $fa2
	fcvt.s.d	$fa6, $fa6
	fst.s	$fa6, $a2, 84
	movgr2fr.w	$fa6, $a4
	ffint.d.w	$fa6, $fa6
	fmul.d	$fa6, $fa6, $fa1
	ld.hu	$a4, $a3, 46
	fmul.d	$fa6, $fa6, $fa3
	fcvt.s.d	$fa6, $fa6
	fst.s	$fa6, $a2, 88
	movgr2fr.w	$fa6, $a4
	ffint.d.w	$fa6, $fa6
	fmul.d	$fa6, $fa6, $fa1
	ld.hu	$a4, $a3, 48
	fmul.d	$fa6, $fa6, $fa5
	fcvt.s.d	$fa6, $fa6
	fst.s	$fa6, $a2, 92
	movgr2fr.w	$fa6, $a4
	ffint.d.w	$fa6, $fa6
	ld.hu	$a4, $a3, 50
	fmul.d	$fa6, $fa6, $fa4
	fcvt.s.d	$fa6, $fa6
	fst.s	$fa6, $a2, 96
	movgr2fr.w	$fa6, $a4
	ffint.d.w	$fa6, $fa6
	fmul.d	$fa6, $fa6, $fa4
	ld.hu	$a4, $a3, 52
	fmul.d	$fa6, $fa6, $fa0
	fcvt.s.d	$fa6, $fa6
	fst.s	$fa6, $a2, 100
	movgr2fr.w	$fa6, $a4
	ffint.d.w	$fa6, $fa6
	fmul.d	$fa6, $fa6, $fa4
	ld.hu	$a4, $a3, 54
	fmul.d	$fa6, $fa6, $fa1
	fcvt.s.d	$fa6, $fa6
	fst.s	$fa6, $a2, 104
	movgr2fr.w	$fa6, $a4
	ffint.d.w	$fa6, $fa6
	fmul.d	$fa6, $fa6, $fa4
	ld.hu	$a4, $a3, 56
	fmul.d	$fa6, $fa6, $fa4
	fcvt.s.d	$fa6, $fa6
	fst.s	$fa6, $a2, 108
	movgr2fr.w	$fa6, $a4
	ffint.d.w	$fa6, $fa6
	ld.hu	$a4, $a3, 58
	fmul.d	$fa6, $fa6, $fa4
	fcvt.s.d	$fa6, $fa6
	fst.s	$fa6, $a2, 112
	movgr2fr.w	$fa6, $a4
	ffint.d.w	$fa6, $fa6
	fmul.d	$fa6, $fa6, $fa4
	ld.hu	$a4, $a3, 60
	fmul.d	$fa6, $fa6, $fa2
	fcvt.s.d	$fa6, $fa6
	fst.s	$fa6, $a2, 116
	movgr2fr.w	$fa6, $a4
	ffint.d.w	$fa6, $fa6
	fmul.d	$fa6, $fa6, $fa4
	ld.hu	$a4, $a3, 62
	fmul.d	$fa6, $fa6, $fa3
	fcvt.s.d	$fa6, $fa6
	fst.s	$fa6, $a2, 120
	movgr2fr.w	$fa6, $a4
	ffint.d.w	$fa6, $fa6
	fmul.d	$fa6, $fa6, $fa4
	fmul.d	$fa6, $fa6, $fa5
	ld.hu	$a4, $a3, 64
	fcvt.s.d	$fa6, $fa6
	fst.s	$fa6, $a2, 124
	ld.hu	$a5, $a3, 66
	movgr2fr.w	$fa6, $a4
	ffint.s.w	$fa6, $fa6
	fst.s	$fa6, $a2, 128
	movgr2fr.w	$fa6, $a5
	ffint.d.w	$fa6, $fa6
	ld.hu	$a4, $a3, 68
	fmul.d	$fa6, $fa6, $fa0
	fcvt.s.d	$fa6, $fa6
	fst.s	$fa6, $a2, 132
	movgr2fr.w	$fa6, $a4
	ffint.d.w	$fa6, $fa6
	ld.hu	$a4, $a3, 70
	fmul.d	$fa6, $fa6, $fa1
	fcvt.s.d	$fa6, $fa6
	fst.s	$fa6, $a2, 136
	movgr2fr.w	$fa6, $a4
	ffint.d.w	$fa6, $fa6
	fmul.d	$fa6, $fa6, $fa4
	ld.hu	$a4, $a3, 72
	fcvt.s.d	$fa6, $fa6
	fst.s	$fa6, $a2, 140
	ld.hu	$a5, $a3, 74
	movgr2fr.w	$fa6, $a4
	ffint.s.w	$fa6, $fa6
	fst.s	$fa6, $a2, 144
	movgr2fr.w	$fa6, $a5
	ffint.d.w	$fa6, $fa6
	ld.hu	$a4, $a3, 76
	fmul.d	$fa6, $fa6, $fa2
	fcvt.s.d	$fa6, $fa6
	fst.s	$fa6, $a2, 148
	movgr2fr.w	$fa6, $a4
	ffint.d.w	$fa6, $fa6
	ld.hu	$a4, $a3, 78
	fmul.d	$fa6, $fa6, $fa3
	fcvt.s.d	$fa6, $fa6
	fst.s	$fa6, $a2, 152
	movgr2fr.w	$fa6, $a4
	ffint.d.w	$fa6, $fa6
	ld.hu	$a4, $a3, 80
	fmul.d	$fa6, $fa6, $fa5
	fcvt.s.d	$fa6, $fa6
	fst.s	$fa6, $a2, 156
	movgr2fr.w	$fa6, $a4
	ffint.d.w	$fa6, $fa6
	ld.hu	$a4, $a3, 82
	fmul.d	$fa6, $fa6, $fa2
	fcvt.s.d	$fa6, $fa6
	fst.s	$fa6, $a2, 160
	movgr2fr.w	$fa6, $a4
	ffint.d.w	$fa6, $fa6
	fmul.d	$fa6, $fa6, $fa2
	ld.hu	$a4, $a3, 84
	fmul.d	$fa6, $fa6, $fa0
	fcvt.s.d	$fa6, $fa6
	fst.s	$fa6, $a2, 164
	movgr2fr.w	$fa6, $a4
	ffint.d.w	$fa6, $fa6
	fmul.d	$fa6, $fa6, $fa2
	ld.hu	$a4, $a3, 86
	fmul.d	$fa6, $fa6, $fa1
	fcvt.s.d	$fa6, $fa6
	fst.s	$fa6, $a2, 168
	movgr2fr.w	$fa6, $a4
	ffint.d.w	$fa6, $fa6
	fmul.d	$fa6, $fa6, $fa2
	ld.hu	$a4, $a3, 88
	fmul.d	$fa6, $fa6, $fa4
	fcvt.s.d	$fa6, $fa6
	fst.s	$fa6, $a2, 172
	movgr2fr.w	$fa6, $a4
	ffint.d.w	$fa6, $fa6
	ld.hu	$a4, $a3, 90
	fmul.d	$fa6, $fa6, $fa2
	fcvt.s.d	$fa6, $fa6
	fst.s	$fa6, $a2, 176
	movgr2fr.w	$fa6, $a4
	ffint.d.w	$fa6, $fa6
	fmul.d	$fa6, $fa6, $fa2
	ld.hu	$a4, $a3, 92
	fmul.d	$fa6, $fa6, $fa2
	fcvt.s.d	$fa6, $fa6
	fst.s	$fa6, $a2, 180
	movgr2fr.w	$fa6, $a4
	ffint.d.w	$fa6, $fa6
	fmul.d	$fa6, $fa6, $fa2
	ld.hu	$a4, $a3, 94
	fmul.d	$fa6, $fa6, $fa3
	fcvt.s.d	$fa6, $fa6
	fst.s	$fa6, $a2, 184
	movgr2fr.w	$fa6, $a4
	ffint.d.w	$fa6, $fa6
	fmul.d	$fa6, $fa6, $fa2
	ld.hu	$a4, $a3, 96
	fmul.d	$fa6, $fa6, $fa5
	fcvt.s.d	$fa6, $fa6
	fst.s	$fa6, $a2, 188
	movgr2fr.w	$fa6, $a4
	ffint.d.w	$fa6, $fa6
	ld.hu	$a4, $a3, 98
	fmul.d	$fa6, $fa6, $fa3
	fcvt.s.d	$fa6, $fa6
	fst.s	$fa6, $a2, 192
	movgr2fr.w	$fa6, $a4
	ffint.d.w	$fa6, $fa6
	fmul.d	$fa6, $fa6, $fa3
	ld.hu	$a4, $a3, 100
	fmul.d	$fa6, $fa6, $fa0
	fcvt.s.d	$fa6, $fa6
	fst.s	$fa6, $a2, 196
	movgr2fr.w	$fa6, $a4
	ffint.d.w	$fa6, $fa6
	fmul.d	$fa6, $fa6, $fa3
	ld.hu	$a4, $a3, 102
	fmul.d	$fa6, $fa6, $fa1
	fcvt.s.d	$fa6, $fa6
	fst.s	$fa6, $a2, 200
	movgr2fr.w	$fa6, $a4
	ffint.d.w	$fa6, $fa6
	fmul.d	$fa6, $fa6, $fa3
	ld.hu	$a4, $a3, 104
	fmul.d	$fa6, $fa6, $fa4
	fcvt.s.d	$fa6, $fa6
	fst.s	$fa6, $a2, 204
	movgr2fr.w	$fa6, $a4
	ffint.d.w	$fa6, $fa6
	ld.hu	$a4, $a3, 106
	fmul.d	$fa6, $fa6, $fa3
	fcvt.s.d	$fa6, $fa6
	fst.s	$fa6, $a2, 208
	movgr2fr.w	$fa6, $a4
	ffint.d.w	$fa6, $fa6
	fmul.d	$fa6, $fa6, $fa3
	ld.hu	$a4, $a3, 108
	fmul.d	$fa6, $fa6, $fa2
	fcvt.s.d	$fa6, $fa6
	fst.s	$fa6, $a2, 212
	movgr2fr.w	$fa6, $a4
	ffint.d.w	$fa6, $fa6
	fmul.d	$fa6, $fa6, $fa3
	ld.hu	$a4, $a3, 110
	fmul.d	$fa6, $fa6, $fa3
	fcvt.s.d	$fa6, $fa6
	fst.s	$fa6, $a2, 216
	movgr2fr.w	$fa6, $a4
	ffint.d.w	$fa6, $fa6
	fmul.d	$fa6, $fa6, $fa3
	ld.hu	$a4, $a3, 112
	fmul.d	$fa6, $fa6, $fa5
	fcvt.s.d	$fa6, $fa6
	fst.s	$fa6, $a2, 220
	movgr2fr.w	$fa6, $a4
	ffint.d.w	$fa6, $fa6
	ld.hu	$a4, $a3, 114
	fmul.d	$fa6, $fa6, $fa5
	fcvt.s.d	$fa6, $fa6
	fst.s	$fa6, $a2, 224
	movgr2fr.w	$fa6, $a4
	ffint.d.w	$fa6, $fa6
	fmul.d	$fa6, $fa6, $fa5
	ld.hu	$a4, $a3, 116
	fmul.d	$fa0, $fa6, $fa0
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $a2, 228
	movgr2fr.w	$fa0, $a4
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fa5
	ld.hu	$a4, $a3, 118
	fmul.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $a2, 232
	movgr2fr.w	$fa0, $a4
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fa5
	ld.hu	$a4, $a3, 120
	fmul.d	$fa0, $fa0, $fa4
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $a2, 236
	movgr2fr.w	$fa0, $a4
	ffint.d.w	$fa0, $fa0
	ld.hu	$a4, $a3, 122
	fmul.d	$fa0, $fa0, $fa5
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $a2, 240
	movgr2fr.w	$fa0, $a4
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fa5
	ld.hu	$a4, $a3, 124
	fmul.d	$fa0, $fa0, $fa2
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $a2, 244
	movgr2fr.w	$fa0, $a4
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fa5
	ld.hu	$a3, $a3, 126
	fmul.d	$fa0, $fa0, $fa3
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $a2, 248
	movgr2fr.w	$fa0, $a3
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fa5
	fmul.d	$fa0, $fa0, $fa5
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $a2, 252
	b	.LBB1_3
.LBB1_16:                               # %sw.bb3
                                        #   in Loop: Header=BB1_4 Depth=1
	move	$a0, $zero
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	b	.LBB1_10
.LBB1_17:                               # %sw.bb4
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.w	$a0, $fp, 88
	ori	$a1, $zero, 3
	bgeu	$a0, $a1, .LBB1_20
# %bb.18:                               # %switch.lookup
                                        #   in Loop: Header=BB1_4 Depth=1
	slli.d	$a1, $a0, 3
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	ldx.d	$a1, $a2, $a1
	b	.LBB1_10
.LBB1_19:                               # %vector.body117
                                        #   in Loop: Header=BB1_4 Depth=1
	vld	$vr1, $a3, 16
	vld	$vr0, $a3, 0
	vpickve2gr.h	$a4, $vr1, 4
	bstrpick.d	$a4, $a4, 15, 0
	vinsgr2vr.w	$vr2, $a4, 0
	vpickve2gr.h	$a4, $vr1, 5
	bstrpick.d	$a4, $a4, 15, 0
	vinsgr2vr.w	$vr2, $a4, 1
	vpickve2gr.h	$a4, $vr1, 6
	bstrpick.d	$a4, $a4, 15, 0
	vinsgr2vr.w	$vr2, $a4, 2
	vpickve2gr.h	$a4, $vr1, 7
	bstrpick.d	$a4, $a4, 15, 0
	vinsgr2vr.w	$vr2, $a4, 3
	vpickve2gr.h	$a4, $vr1, 0
	bstrpick.d	$a4, $a4, 15, 0
	vinsgr2vr.w	$vr3, $a4, 0
	vpickve2gr.h	$a4, $vr1, 1
	bstrpick.d	$a4, $a4, 15, 0
	vinsgr2vr.w	$vr3, $a4, 1
	vpickve2gr.h	$a4, $vr1, 2
	bstrpick.d	$a4, $a4, 15, 0
	vinsgr2vr.w	$vr3, $a4, 2
	vpickve2gr.h	$a4, $vr1, 3
	bstrpick.d	$a4, $a4, 15, 0
	pcalau12i	$a5, %pc_hi20(.LCPI1_7)
	xvld	$xr4, $a5, %pc_lo12(.LCPI1_7)
	vld	$vr5, $a3, 32
	vinsgr2vr.w	$vr3, $a4, 3
	xvpermi.q	$xr3, $xr2, 2
	xvld	$xr6, $sp, 16                   # 32-byte Folded Reload
	xvori.b	$xr1, $xr6, 0
	xvmadd.w	$xr1, $xr3, $xr4
	vpickve2gr.h	$a4, $vr5, 4
	bstrpick.d	$a4, $a4, 15, 0
	vinsgr2vr.w	$vr2, $a4, 0
	vpickve2gr.h	$a4, $vr5, 5
	bstrpick.d	$a4, $a4, 15, 0
	vinsgr2vr.w	$vr2, $a4, 1
	vpickve2gr.h	$a4, $vr5, 6
	bstrpick.d	$a4, $a4, 15, 0
	vinsgr2vr.w	$vr2, $a4, 2
	vpickve2gr.h	$a4, $vr5, 7
	bstrpick.d	$a4, $a4, 15, 0
	vinsgr2vr.w	$vr2, $a4, 3
	vpickve2gr.h	$a4, $vr5, 0
	bstrpick.d	$a4, $a4, 15, 0
	vinsgr2vr.w	$vr3, $a4, 0
	vpickve2gr.h	$a4, $vr5, 1
	bstrpick.d	$a4, $a4, 15, 0
	vinsgr2vr.w	$vr3, $a4, 1
	vpickve2gr.h	$a4, $vr5, 2
	bstrpick.d	$a4, $a4, 15, 0
	vinsgr2vr.w	$vr3, $a4, 2
	vpickve2gr.h	$a4, $vr5, 3
	bstrpick.d	$a4, $a4, 15, 0
	pcalau12i	$a5, %pc_hi20(.LCPI1_8)
	xvld	$xr4, $a5, %pc_lo12(.LCPI1_8)
	vld	$vr5, $a3, 48
	vinsgr2vr.w	$vr3, $a4, 3
	xvpermi.q	$xr3, $xr2, 2
	xvori.b	$xr2, $xr6, 0
	xvmadd.w	$xr2, $xr3, $xr4
	vpickve2gr.h	$a4, $vr5, 4
	bstrpick.d	$a4, $a4, 15, 0
	vinsgr2vr.w	$vr3, $a4, 0
	vpickve2gr.h	$a4, $vr5, 5
	bstrpick.d	$a4, $a4, 15, 0
	vinsgr2vr.w	$vr3, $a4, 1
	vpickve2gr.h	$a4, $vr5, 6
	bstrpick.d	$a4, $a4, 15, 0
	vinsgr2vr.w	$vr3, $a4, 2
	vpickve2gr.h	$a4, $vr5, 7
	bstrpick.d	$a4, $a4, 15, 0
	vinsgr2vr.w	$vr3, $a4, 3
	vpickve2gr.h	$a4, $vr5, 0
	bstrpick.d	$a4, $a4, 15, 0
	vinsgr2vr.w	$vr4, $a4, 0
	vpickve2gr.h	$a4, $vr5, 1
	bstrpick.d	$a4, $a4, 15, 0
	vinsgr2vr.w	$vr4, $a4, 1
	vpickve2gr.h	$a4, $vr5, 2
	bstrpick.d	$a4, $a4, 15, 0
	vinsgr2vr.w	$vr4, $a4, 2
	vpickve2gr.h	$a4, $vr5, 3
	pcalau12i	$a5, %pc_hi20(.LCPI1_9)
	xvld	$xr5, $a5, %pc_lo12(.LCPI1_9)
	vpickve2gr.h	$a5, $vr0, 4
	bstrpick.d	$a5, $a5, 15, 0
	bstrpick.d	$a4, $a4, 15, 0
	vinsgr2vr.w	$vr4, $a4, 3
	xvpermi.q	$xr4, $xr3, 2
	xvori.b	$xr3, $xr6, 0
	xvmadd.w	$xr3, $xr4, $xr5
	vinsgr2vr.w	$vr4, $a5, 0
	vpickve2gr.h	$a4, $vr0, 5
	bstrpick.d	$a4, $a4, 15, 0
	vinsgr2vr.w	$vr4, $a4, 1
	vpickve2gr.h	$a4, $vr0, 6
	bstrpick.d	$a4, $a4, 15, 0
	vinsgr2vr.w	$vr4, $a4, 2
	vpickve2gr.h	$a4, $vr0, 7
	bstrpick.d	$a4, $a4, 15, 0
	vinsgr2vr.w	$vr4, $a4, 3
	vpickve2gr.h	$a4, $vr0, 0
	bstrpick.d	$a4, $a4, 15, 0
	vinsgr2vr.w	$vr5, $a4, 0
	vpickve2gr.h	$a4, $vr0, 1
	bstrpick.d	$a4, $a4, 15, 0
	vinsgr2vr.w	$vr5, $a4, 1
	vpickve2gr.h	$a4, $vr0, 2
	bstrpick.d	$a4, $a4, 15, 0
	vinsgr2vr.w	$vr5, $a4, 2
	vpickve2gr.h	$a4, $vr0, 3
	pcalau12i	$a5, %pc_hi20(.LCPI1_6)
	xvld	$xr0, $a5, %pc_lo12(.LCPI1_6)
	bstrpick.d	$a4, $a4, 15, 0
	vinsgr2vr.w	$vr5, $a4, 3
	xvpermi.q	$xr5, $xr4, 2
	xvori.b	$xr4, $xr6, 0
	xvmadd.w	$xr4, $xr5, $xr0
	xvsrli.w	$xr4, $xr4, 12
	xvst	$xr4, $a2, 0
	xvsrli.w	$xr1, $xr1, 12
	xvst	$xr1, $a2, 32
	xvsrli.w	$xr1, $xr2, 12
	vld	$vr2, $a3, 64
	xvst	$xr1, $a2, 64
	xvsrli.w	$xr1, $xr3, 12
	xvst	$xr1, $a2, 96
	vpickve2gr.h	$a4, $vr2, 4
	bstrpick.d	$a4, $a4, 15, 0
	vinsgr2vr.w	$vr1, $a4, 0
	vpickve2gr.h	$a4, $vr2, 5
	bstrpick.d	$a4, $a4, 15, 0
	vinsgr2vr.w	$vr1, $a4, 1
	vpickve2gr.h	$a4, $vr2, 6
	bstrpick.d	$a4, $a4, 15, 0
	vinsgr2vr.w	$vr1, $a4, 2
	vpickve2gr.h	$a4, $vr2, 7
	bstrpick.d	$a4, $a4, 15, 0
	vinsgr2vr.w	$vr1, $a4, 3
	vpickve2gr.h	$a4, $vr2, 0
	bstrpick.d	$a4, $a4, 15, 0
	vinsgr2vr.w	$vr3, $a4, 0
	vpickve2gr.h	$a4, $vr2, 1
	bstrpick.d	$a4, $a4, 15, 0
	vinsgr2vr.w	$vr3, $a4, 1
	vpickve2gr.h	$a4, $vr2, 2
	bstrpick.d	$a4, $a4, 15, 0
	vinsgr2vr.w	$vr3, $a4, 2
	vpickve2gr.h	$a4, $vr2, 3
	bstrpick.d	$a4, $a4, 15, 0
	vinsgr2vr.w	$vr3, $a4, 3
	xvpermi.q	$xr3, $xr1, 2
	xvori.b	$xr1, $xr6, 0
	vld	$vr2, $a3, 80
	xvmadd.w	$xr1, $xr3, $xr0
	xvsrli.w	$xr0, $xr1, 12
	xvst	$xr0, $a2, 128
	vpickve2gr.h	$a4, $vr2, 4
	bstrpick.d	$a4, $a4, 15, 0
	vinsgr2vr.w	$vr0, $a4, 0
	vpickve2gr.h	$a4, $vr2, 5
	bstrpick.d	$a4, $a4, 15, 0
	vinsgr2vr.w	$vr0, $a4, 1
	vpickve2gr.h	$a4, $vr2, 6
	bstrpick.d	$a4, $a4, 15, 0
	vinsgr2vr.w	$vr0, $a4, 2
	vpickve2gr.h	$a4, $vr2, 7
	bstrpick.d	$a4, $a4, 15, 0
	vinsgr2vr.w	$vr0, $a4, 3
	vpickve2gr.h	$a4, $vr2, 0
	bstrpick.d	$a4, $a4, 15, 0
	vinsgr2vr.w	$vr1, $a4, 0
	vpickve2gr.h	$a4, $vr2, 1
	bstrpick.d	$a4, $a4, 15, 0
	vinsgr2vr.w	$vr1, $a4, 1
	vpickve2gr.h	$a4, $vr2, 2
	bstrpick.d	$a4, $a4, 15, 0
	vinsgr2vr.w	$vr1, $a4, 2
	pcalau12i	$a4, %pc_hi20(.LCPI1_10)
	xvld	$xr3, $a4, %pc_lo12(.LCPI1_10)
	vpickve2gr.h	$a4, $vr2, 3
	bstrpick.d	$a4, $a4, 15, 0
	vinsgr2vr.w	$vr1, $a4, 3
	xvpermi.q	$xr1, $xr0, 2
	xvori.b	$xr0, $xr6, 0
	vld	$vr2, $a3, 96
	xvmadd.w	$xr0, $xr1, $xr3
	xvsrli.w	$xr0, $xr0, 12
	xvst	$xr0, $a2, 160
	vpickve2gr.h	$a4, $vr2, 4
	bstrpick.d	$a4, $a4, 15, 0
	vinsgr2vr.w	$vr0, $a4, 0
	vpickve2gr.h	$a4, $vr2, 5
	bstrpick.d	$a4, $a4, 15, 0
	vinsgr2vr.w	$vr0, $a4, 1
	vpickve2gr.h	$a4, $vr2, 6
	bstrpick.d	$a4, $a4, 15, 0
	vinsgr2vr.w	$vr0, $a4, 2
	vpickve2gr.h	$a4, $vr2, 7
	bstrpick.d	$a4, $a4, 15, 0
	vinsgr2vr.w	$vr0, $a4, 3
	vpickve2gr.h	$a4, $vr2, 0
	bstrpick.d	$a4, $a4, 15, 0
	vinsgr2vr.w	$vr1, $a4, 0
	vpickve2gr.h	$a4, $vr2, 1
	bstrpick.d	$a4, $a4, 15, 0
	vinsgr2vr.w	$vr1, $a4, 1
	vpickve2gr.h	$a4, $vr2, 2
	bstrpick.d	$a4, $a4, 15, 0
	vinsgr2vr.w	$vr1, $a4, 2
	pcalau12i	$a4, %pc_hi20(.LCPI1_11)
	xvld	$xr3, $a4, %pc_lo12(.LCPI1_11)
	vpickve2gr.h	$a4, $vr2, 3
	bstrpick.d	$a4, $a4, 15, 0
	vinsgr2vr.w	$vr1, $a4, 3
	xvpermi.q	$xr1, $xr0, 2
	xvori.b	$xr0, $xr6, 0
	vld	$vr2, $a3, 112
	xvmadd.w	$xr0, $xr1, $xr3
	xvsrli.w	$xr0, $xr0, 12
	xvst	$xr0, $a2, 192
	vpickve2gr.h	$a3, $vr2, 4
	bstrpick.d	$a3, $a3, 15, 0
	vinsgr2vr.w	$vr0, $a3, 0
	vpickve2gr.h	$a3, $vr2, 5
	bstrpick.d	$a3, $a3, 15, 0
	vinsgr2vr.w	$vr0, $a3, 1
	vpickve2gr.h	$a3, $vr2, 6
	bstrpick.d	$a3, $a3, 15, 0
	vinsgr2vr.w	$vr0, $a3, 2
	vpickve2gr.h	$a3, $vr2, 7
	bstrpick.d	$a3, $a3, 15, 0
	vinsgr2vr.w	$vr0, $a3, 3
	vpickve2gr.h	$a3, $vr2, 0
	bstrpick.d	$a3, $a3, 15, 0
	vinsgr2vr.w	$vr1, $a3, 0
	vpickve2gr.h	$a3, $vr2, 1
	bstrpick.d	$a3, $a3, 15, 0
	vinsgr2vr.w	$vr1, $a3, 1
	vpickve2gr.h	$a3, $vr2, 2
	bstrpick.d	$a3, $a3, 15, 0
	vinsgr2vr.w	$vr1, $a3, 2
	vpickve2gr.h	$a3, $vr2, 3
	pcalau12i	$a4, %pc_hi20(.LCPI1_12)
	xvld	$xr2, $a4, %pc_lo12(.LCPI1_12)
	bstrpick.d	$a3, $a3, 15, 0
	vinsgr2vr.w	$vr1, $a3, 3
	xvpermi.q	$xr1, $xr0, 2
	xvori.b	$xr0, $xr6, 0
	xvmadd.w	$xr0, $xr1, $xr2
	xvsrli.w	$xr0, $xr0, 12
	xvst	$xr0, $a2, 224
	b	.LBB1_3
.LBB1_20:                               # %sw.default
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 47
	st.w	$a2, $a0, 40
	b	.LBB1_9
.LBB1_21:                               # %for.end92
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
	ret
.Lfunc_end1:
	.size	start_pass, .Lfunc_end1-start_pass
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI1_0:
	.word	.LBB1_10-.LJTI1_0
	.word	.LBB1_7-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_17-.LJTI1_0
                                        # -- End function
	.type	.Lswitch.table.start_pass,@object # @switch.table.start_pass
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.Lswitch.table.start_pass:
	.dword	jpeg_idct_islow
	.dword	jpeg_idct_ifast
	.dword	jpeg_idct_float
	.size	.Lswitch.table.start_pass, 24

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym start_pass
	.addrsig_sym jpeg_idct_1x1
	.addrsig_sym jpeg_idct_2x2
	.addrsig_sym jpeg_idct_4x4
	.addrsig_sym jpeg_idct_islow
	.addrsig_sym jpeg_idct_ifast
	.addrsig_sym jpeg_idct_float
