	.file	"solver.c"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function TelescopingCABiCGStab
.LCPI0_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI0_1:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_2:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	TelescopingCABiCGStab
	.p2align	5
	.type	TelescopingCABiCGStab,@function
TelescopingCABiCGStab:                  # @TelescopingCABiCGStab
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 1936                 # 8-byte Folded Spill
	fst.d	$fs1, $sp, 1928                 # 8-byte Folded Spill
	fst.d	$fs2, $sp, 1920                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1912                 # 8-byte Folded Spill
	fst.d	$fs4, $sp, 1904                 # 8-byte Folded Spill
	fst.d	$fs5, $sp, 1896                 # 8-byte Folded Spill
	fst.d	$fs6, $sp, 1888                 # 8-byte Folded Spill
	lu12i.w	$a4, 2
	ori	$a4, $a4, 928
	sub.d	$sp, $sp, $a4
	fmov.d	$fs4, $fa2
	fmov.d	$fs0, $fa1
	fmov.d	$fs1, $fa0
	move	$a4, $a3
	move	$s3, $a2
	move	$s1, $a1
	move	$s0, $a0
	ori	$a2, $zero, 12
	move	$a3, $s3
	pcaddu18i	$ra, %call36(residual)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 12
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(scale_grid)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 12
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(scale_grid)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 12
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(norm)
	jirl	$ra, $ra, 0
	movgr2fr.d	$fs2, $zero
	fcmp.ceq.d	$fcc0, $fa0, $fs2
	movcf2gr	$a0, $fcc0
	st.d	$a0, $sp, 184
	ori	$a2, $zero, 13
	ori	$a3, $zero, 12
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(dot)
	jirl	$ra, $ra, 0
	fmov.d	$fs3, $fa0
	fcmp.ceq.d	$fcc0, $fa0, $fs2
	movcf2gr	$a0, $fcc0
	ld.d	$a1, $sp, 184
	movgr2cf	$fcc0, $a1
	movcf2gr	$a1, $fcc0
	fsqrt.d	$fa0, $fa0
	fcmp.cor.d	$fcc0, $fa0, $fa0
	or	$fp, $a0, $a1
	bceqz	$fcc0, .LBB0_3
# %bb.1:                                # %entry.split
	beqz	$fp, .LBB0_4
.LBB0_2:                                # %while.end
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $s3
	move	$a4, $s3
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 928
	add.d	$sp, $sp, $a0
	fld.d	$fs6, $sp, 1888                 # 8-byte Folded Reload
	fld.d	$fs5, $sp, 1896                 # 8-byte Folded Reload
	fld.d	$fs4, $sp, 1904                 # 8-byte Folded Reload
	fld.d	$fs3, $sp, 1912                 # 8-byte Folded Reload
	fld.d	$fs2, $sp, 1920                 # 8-byte Folded Reload
	fld.d	$fs1, $sp, 1928                 # 8-byte Folded Reload
	fld.d	$fs0, $sp, 1936                 # 8-byte Folded Reload
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.LBB0_3:                                # %call.sqrt
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	bnez	$fp, .LBB0_2
.LBB0_4:                                # %while.body.lr.ph
	move	$a3, $zero
	fmul.d	$fs4, $fs4, $fa0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1744
	add.d	$s7, $sp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1608
	add.d	$s8, $sp, $a0
	ori	$s6, $zero, 0
	lu32i.d	$s6, 1
	ori	$a0, $zero, 1
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	b	.LBB0_6
	.p2align	4, , 16
.LBB0_5:                                # %if.end620
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	add.w	$a3, $a3, $a0
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	slti	$a0, $a2, 4
	ori	$a1, $zero, 4
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a2, $a0
	slti	$a2, $a3, 200
	ld.d	$a4, $sp, 184                   # 8-byte Folded Reload
	and	$a2, $a2, $a4
	and	$a2, $a2, $s6
	or	$a0, $a0, $a1
	move	$s0, $s5
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	beqz	$a2, .LBB0_2
.LBB0_6:                                # %for.cond35.preheader.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
                                        #     Child Loop BB0_9 Depth 2
                                        #     Child Loop BB0_12 Depth 2
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_17 Depth 2
                                        #     Child Loop BB0_19 Depth 2
                                        #     Child Loop BB0_23 Depth 2
                                        #     Child Loop BB0_25 Depth 2
                                        #     Child Loop BB0_29 Depth 2
                                        #     Child Loop BB0_32 Depth 2
                                        #     Child Loop BB0_38 Depth 2
                                        #     Child Loop BB0_41 Depth 2
                                        #     Child Loop BB0_44 Depth 2
                                        #     Child Loop BB0_46 Depth 2
                                        #     Child Loop BB0_48 Depth 2
                                        #     Child Loop BB0_50 Depth 2
                                        #     Child Loop BB0_52 Depth 2
                                        #       Child Loop BB0_53 Depth 3
                                        #         Child Loop BB0_54 Depth 4
                                        #       Child Loop BB0_57 Depth 3
                                        #         Child Loop BB0_58 Depth 4
                                        #       Child Loop BB0_61 Depth 3
                                        #         Child Loop BB0_62 Depth 4
                                        #       Child Loop BB0_65 Depth 3
                                        #       Child Loop BB0_71 Depth 3
                                        #       Child Loop BB0_74 Depth 3
                                        #       Child Loop BB0_76 Depth 3
                                        #         Child Loop BB0_77 Depth 4
                                        #       Child Loop BB0_82 Depth 3
                                        #       Child Loop BB0_85 Depth 3
                                        #       Child Loop BB0_87 Depth 3
                                        #       Child Loop BB0_89 Depth 3
                                        #       Child Loop BB0_93 Depth 3
                                        #       Child Loop BB0_96 Depth 3
                                        #       Child Loop BB0_100 Depth 3
                                        #       Child Loop BB0_103 Depth 3
                                        #       Child Loop BB0_105 Depth 3
                                        #         Child Loop BB0_106 Depth 4
                                        #       Child Loop BB0_109 Depth 3
                                        #       Child Loop BB0_118 Depth 3
                                        #       Child Loop BB0_121 Depth 3
                                        #       Child Loop BB0_125 Depth 3
                                        #       Child Loop BB0_128 Depth 3
                                        #       Child Loop BB0_132 Depth 3
                                        #       Child Loop BB0_135 Depth 3
                                        #       Child Loop BB0_139 Depth 3
                                        #       Child Loop BB0_142 Depth 3
                                        #       Child Loop BB0_146 Depth 3
                                        #       Child Loop BB0_149 Depth 3
                                        #       Child Loop BB0_151 Depth 3
                                        #         Child Loop BB0_152 Depth 4
                                        #       Child Loop BB0_155 Depth 3
                                        #       Child Loop BB0_160 Depth 3
                                        #       Child Loop BB0_167 Depth 3
                                        #       Child Loop BB0_170 Depth 3
                                        #       Child Loop BB0_174 Depth 3
                                        #       Child Loop BB0_177 Depth 3
                                        #     Child Loop BB0_186 Depth 2
                                        #     Child Loop BB0_189 Depth 2
                                        #     Child Loop BB0_191 Depth 2
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	slli.d	$s5, $a0, 2
	addi.w	$fp, $s5, 1
	slli.d	$s2, $fp, 3
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1744
	add.d	$a0, $sp, $a0
	move	$a1, $zero
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1608
	add.d	$a0, $sp, $a0
	move	$a1, $zero
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1472
	add.d	$a0, $sp, $a0
	move	$a1, $zero
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1336
	add.d	$a0, $sp, $a0
	move	$a1, $zero
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1200
	add.d	$a0, $sp, $a0
	move	$a1, $zero
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1064
	add.d	$a0, $sp, $a0
	move	$a1, $zero
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2680
	add.d	$a0, $sp, $a0
	move	$a1, $zero
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2544
	add.d	$a0, $sp, $a0
	move	$a1, $zero
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2408
	add.d	$a0, $sp, $a0
	move	$a1, $zero
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $s5, 31, 2
	slli.d	$a1, $a0, 2
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 5
	addi.d	$s2, $a0, 8
	lu12i.w	$a0, 2
	ori	$a0, $a0, 96
	add.d	$s4, $sp, $a0
	st.d	$fp, $sp, 184                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB0_7:                                # %for.cond35.preheader
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s4
	move	$a1, $zero
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, -1
	addi.d	$s4, $s4, 136
	bnez	$fp, .LBB0_7
# %bb.8:                                # %for.cond50.preheader.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.w	$a0, $s5, 0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 3
	addi.d	$s4, $a0, 8
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	ori	$a0, $s5, 1
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	addi.w	$fp, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1880
	add.d	$s5, $sp, $a0
	.p2align	4, , 16
.LBB0_9:                                # %for.cond50.preheader
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s5
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, -1
	addi.d	$s5, $s5, 136
	bnez	$fp, .LBB0_9
# %bb.10:                               # %for.body68.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$t8, $sp, 152                   # 8-byte Folded Reload
	slli.d	$a0, $t8, 1
	bstrpick.d	$a1, $a0, 31, 1
	slli.d	$s4, $a1, 1
	move	$a1, $s4
	lu12i.w	$a2, 2
	ori	$a2, $a2, 232
	add.d	$a2, $sp, $a2
	lu52i.d	$t6, $zero, 1023
	beqz	$t8, .LBB0_13
# %bb.11:                               # %vector.body1036.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$a1, $zero
	lu12i.w	$a2, 2
	ori	$a2, $a2, 376
	add.d	$a2, $sp, $a2
	.p2align	4, , 16
.LBB0_12:                               # %vector.body1036
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.d	$t6, $a2, -144
	st.d	$t6, $a2, 0
	addi.d	$a1, $a1, 2
	addi.d	$a2, $a2, 288
	bne	$s4, $a1, .LBB0_12
	b	.LBB0_14
	.p2align	4, , 16
.LBB0_13:                               # %for.body68
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.d	$t6, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 144
	bnez	$a1, .LBB0_13
.LBB0_14:                               # %for.end76
                                        #   in Loop: Header=BB0_6 Depth=1
	ori	$a1, $a0, 1
	addi.w	$ra, $a1, 0
	addi.w	$a2, $a0, -1
	ori	$t7, $zero, 136
	ld.d	$fp, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 104                   # 8-byte Folded Reload
	bgeu	$ra, $t5, .LBB0_20
# %bb.15:                               # %for.body82.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.w	$a1, $a1, 0
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB0_18
# %bb.16:                               # %vector.ph1021
                                        #   in Loop: Header=BB0_6 Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a3, $a3, -1
	add.d	$a1, $a3, $a1
	slli.d	$a4, $s4, 7
	alsl.d	$a4, $s4, $a4, 4
	lu12i.w	$a5, 2
	ori	$a5, $a5, 520
	add.d	$a5, $sp, $a5
	add.d	$a4, $a5, $a4
	.p2align	4, , 16
.LBB0_17:                               # %vector.body1024
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.d	$t6, $a4, -144
	st.d	$t6, $a4, 0
	addi.d	$a3, $a3, -2
	addi.d	$a4, $a4, 288
	bnez	$a3, .LBB0_17
.LBB0_18:                               # %for.body82.preheader1051
                                        #   in Loop: Header=BB0_6 Depth=1
	slli.d	$a3, $a1, 7
	alsl.d	$a3, $a1, $a3, 4
	lu12i.w	$a4, 2
	ori	$a4, $a4, 232
	add.d	$a4, $sp, $a4
	add.d	$a3, $a4, $a3
	sub.w	$a1, $a1, $s5
	.p2align	4, , 16
.LBB0_19:                               # %for.body82
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.d	$t6, $a3, 0
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a1, $a1, 1
	and	$a4, $a1, $s6
	addi.d	$a3, $a3, 144
	beqz	$a4, .LBB0_19
.LBB0_20:                               # %for.body94.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	bstrpick.d	$a1, $a2, 31, 0
	ori	$a3, $zero, 7
	bltu	$a3, $a2, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_6 Depth=1
	move	$a2, $zero
	b	.LBB0_24
	.p2align	4, , 16
.LBB0_22:                               # %vector.ph1007
                                        #   in Loop: Header=BB0_6 Depth=1
	pcalau12i	$a2, %pc_hi20(.LCPI0_0)
	xvld	$xr0, $a2, %pc_lo12(.LCPI0_0)
	bstrpick.d	$a2, $a1, 30, 3
	slli.d	$a2, $a2, 3
	move	$a3, $a2
	lu12i.w	$a4, 1
	ori	$a4, $a4, 1936
	add.d	$a4, $sp, $a4
	.p2align	4, , 16
.LBB0_23:                               # %vector.body1010
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvaddi.du	$xr1, $xr0, 2
	xvaddi.du	$xr2, $xr0, 6
	xvpickve2gr.d	$a5, $xr1, 0
	xvpickve2gr.d	$a6, $xr1, 1
	xvpickve2gr.d	$a7, $xr1, 2
	xvpickve2gr.d	$t0, $xr1, 3
	xvpickve2gr.d	$t1, $xr2, 0
	xvpickve2gr.d	$t2, $xr2, 1
	xvpickve2gr.d	$t3, $xr2, 2
	xvpickve2gr.d	$t4, $xr2, 3
	mul.d	$a5, $a5, $t7
	add.d	$a5, $a4, $a5
	mul.d	$a6, $a6, $t7
	add.d	$a6, $a4, $a6
	mul.d	$a7, $a7, $t7
	add.d	$a7, $a4, $a7
	mul.d	$t0, $t0, $t7
	add.d	$t0, $a4, $t0
	mul.d	$t1, $t1, $t7
	add.d	$t1, $a4, $t1
	mul.d	$t2, $t2, $t7
	add.d	$t2, $a4, $t2
	mul.d	$t3, $t3, $t7
	add.d	$t3, $a4, $t3
	mul.d	$t4, $t4, $t7
	st.d	$t6, $a5, -56
	st.d	$t6, $a6, -48
	st.d	$t6, $a7, -40
	st.d	$t6, $t0, -32
	st.d	$t6, $t1, -24
	st.d	$t6, $t2, -16
	st.d	$t6, $t3, -8
	stx.d	$t6, $a4, $t4
	xvaddi.du	$xr0, $xr0, 8
	addi.d	$a3, $a3, -8
	addi.d	$a4, $a4, 64
	bnez	$a3, .LBB0_23
.LBB0_24:                               # %for.body94.preheader1050
                                        #   in Loop: Header=BB0_6 Depth=1
	slli.d	$a3, $a2, 7
	alsl.d	$a3, $a2, $a3, 4
	lu12i.w	$a4, 1
	ori	$a4, $a4, 2152
	add.d	$a4, $sp, $a4
	add.d	$a3, $a4, $a3
	.p2align	4, , 16
.LBB0_25:                               # %for.body94
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.d	$t6, $a3, 0
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 144
	bne	$a1, $a2, .LBB0_25
# %bb.26:                               # %for.cond105.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.w	$a1, $s5, -1
	bge	$ra, $a1, .LBB0_33
# %bb.27:                               # %for.body109.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.w	$a2, $a0, -4
	move	$a1, $ra
	ori	$a3, $zero, 6
	bltu	$a2, $a3, .LBB0_31
# %bb.28:                               # %vector.ph990
                                        #   in Loop: Header=BB0_6 Depth=1
	bstrpick.d	$a1, $a2, 31, 0
	addi.d	$a2, $a1, 2
	bstrpick.d	$a1, $a2, 32, 3
	pcalau12i	$a3, %pc_hi20(.LCPI0_0)
	xvld	$xr0, $a3, %pc_lo12(.LCPI0_0)
	slli.d	$a3, $a1, 3
	alsl.d	$a1, $a1, $ra, 3
	xvreplgr2vr.d	$xr1, $ra
	xvadd.d	$xr0, $xr1, $xr0
	lu12i.w	$a4, 1
	ori	$a4, $a4, 1944
	add.d	$a4, $sp, $a4
	alsl.d	$a4, $s4, $a4, 3
	move	$a5, $a3
	.p2align	4, , 16
.LBB0_29:                               # %vector.body996
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvaddi.du	$xr1, $xr0, 2
	xvaddi.du	$xr2, $xr0, 6
	xvpickve2gr.d	$a6, $xr1, 0
	xvpickve2gr.d	$a7, $xr1, 1
	xvpickve2gr.d	$t0, $xr1, 2
	xvpickve2gr.d	$t1, $xr1, 3
	xvpickve2gr.d	$t2, $xr2, 0
	xvpickve2gr.d	$t3, $xr2, 1
	xvpickve2gr.d	$t4, $xr2, 2
	xvpickve2gr.d	$t5, $xr2, 3
	mul.d	$a6, $a6, $t7
	add.d	$a6, $a4, $a6
	mul.d	$a7, $a7, $t7
	add.d	$a7, $a4, $a7
	mul.d	$t0, $t0, $t7
	add.d	$t0, $a4, $t0
	mul.d	$t1, $t1, $t7
	add.d	$t1, $a4, $t1
	mul.d	$t2, $t2, $t7
	add.d	$t2, $a4, $t2
	mul.d	$t3, $t3, $t7
	add.d	$t3, $a4, $t3
	mul.d	$t4, $t4, $t7
	add.d	$t4, $a4, $t4
	mul.d	$t5, $t5, $t7
	st.d	$t6, $a6, -56
	st.d	$t6, $a7, -48
	st.d	$t6, $t0, -40
	st.d	$t6, $t1, -32
	st.d	$t6, $t2, -24
	st.d	$t6, $t3, -16
	st.d	$t6, $t4, -8
	stx.d	$t6, $a4, $t5
	xvaddi.du	$xr0, $xr0, 8
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB0_29
# %bb.30:                               # %middle.block1002
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$t5, $sp, 104                   # 8-byte Folded Reload
	beq	$a2, $a3, .LBB0_33
.LBB0_31:                               # %for.body109.preheader1049
                                        #   in Loop: Header=BB0_6 Depth=1
	slli.d	$a2, $a1, 7
	alsl.d	$a2, $a1, $a2, 4
	lu12i.w	$a3, 1
	ori	$a3, $a3, 2152
	add.d	$a3, $sp, $a3
	add.d	$a2, $a3, $a2
	sub.d	$a1, $a1, $s5
	addi.w	$a1, $a1, 1
	.p2align	4, , 16
.LBB0_32:                               # %for.body109
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.d	$t6, $a2, 0
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a1, $a1, 1
	and	$a3, $a1, $s6
	addi.d	$a2, $a2, 144
	beqz	$a3, .LBB0_32
.LBB0_33:                               # %iter.check
                                        #   in Loop: Header=BB0_6 Depth=1
	beqz	$t8, .LBB0_36
# %bb.34:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.d	$a4, $sp, 192
	ori	$a1, $zero, 4
	bgeu	$t8, $a1, .LBB0_37
# %bb.35:                               #   in Loop: Header=BB0_6 Depth=1
	move	$a1, $zero
	b	.LBB0_40
	.p2align	4, , 16
.LBB0_36:                               #   in Loop: Header=BB0_6 Depth=1
	move	$a1, $zero
	addi.d	$a4, $sp, 192
	b	.LBB0_43
	.p2align	4, , 16
.LBB0_37:                               # %vector.ph969
                                        #   in Loop: Header=BB0_6 Depth=1
	pcalau12i	$a1, %pc_hi20(.LCPI0_1)
	xvld	$xr0, $a1, %pc_lo12(.LCPI0_1)
	bstrpick.d	$a1, $fp, 30, 4
	slli.d	$a1, $a1, 4
	addi.d	$a2, $sp, 224
	move	$a3, $a1
	.p2align	4, , 16
.LBB0_38:                               # %vector.body972
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvaddi.wu	$xr1, $xr0, 15
	xvaddi.wu	$xr2, $xr0, 23
	xvst	$xr1, $a2, -32
	xvst	$xr2, $a2, 0
	xvaddi.wu	$xr0, $xr0, 16
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB0_38
# %bb.39:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB0_6 Depth=1
	andi	$a2, $fp, 12
	beqz	$a2, .LBB0_43
.LBB0_40:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB0_6 Depth=1
	pcalau12i	$a2, %pc_hi20(.LCPI0_2)
	vld	$vr0, $a2, %pc_lo12(.LCPI0_2)
	vreplgr2vr.w	$vr1, $a1
	vor.v	$vr0, $vr1, $vr0
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	sub.d	$a2, $a1, $a2
	alsl.d	$a1, $a1, $a4, 2
	.p2align	4, , 16
.LBB0_41:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.wu	$vr1, $vr0, 15
	vst	$vr1, $a1, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 16
	bnez	$a2, .LBB0_41
# %bb.42:                               #   in Loop: Header=BB0_6 Depth=1
	move	$a1, $t5
.LBB0_43:                               # %for.body122.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	st.d	$ra, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a2, $a1, 15
	slli.d	$a3, $a1, 2
	ld.d	$a5, $sp, 160                   # 8-byte Folded Reload
	nor	$a5, $a5, $zero
	st.d	$a5, $sp, 104                   # 8-byte Folded Spill
	add.d	$a1, $a5, $a1
	.p2align	4, , 16
.LBB0_44:                               # %for.body122
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	stx.w	$a2, $a3, $a4
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 1
	addi.d	$a3, $a3, 4
	bnez	$a1, .LBB0_44
# %bb.45:                               # %for.body143.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	slli.d	$a1, $fp, 2
	ld.w	$a2, $sp, 192
	ori	$a3, $zero, 12
	stx.w	$a3, $a1, $a4
	addi.w	$a0, $a0, 0
	addi.d	$s5, $sp, 196
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	alsl.d	$a0, $a0, $s5, 2
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(scale_grid)
	jirl	$ra, $ra, 0
	move	$s6, $s4
	.p2align	4, , 16
.LBB0_46:                               # %for.body143
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a4, $s5, -4
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s5, 0
	ori	$a3, $zero, 10
	move	$a0, $s0
	move	$a1, $s1
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	addi.d	$s6, $s6, -1
	addi.d	$s5, $s5, 4
	bnez	$s6, .LBB0_46
# %bb.47:                               # %for.body156.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a2, $a0, 0
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(scale_grid)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 200
	alsl.d	$s5, $s4, $a0, 2
	addi.d	$s4, $s4, -1
	.p2align	4, , 16
.LBB0_48:                               # %for.body156
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a4, $s5, -4
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s5, 0
	ori	$a3, $zero, 10
	move	$a0, $s0
	move	$a1, $s1
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, -1
	addi.d	$s5, $s5, 4
	bnez	$s4, .LBB0_48
# %bb.49:                               # %for.cond178.preheader.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.w	$a0, $s0, 1316
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 1316
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	ori	$a0, $s3, 2
	addi.w	$a6, $a0, 0
	addi.d	$a2, $sp, 264
	addi.d	$a3, $sp, 192
	addi.d	$a4, $sp, 192
	ori	$a7, $zero, 1
	move	$a0, $s0
	move	$a1, $s1
	move	$a5, $fp
	pcaddu18i	$ra, %call36(matmul_grids)
	jirl	$ra, $ra, 0
	move	$s6, $zero
	addi.w	$a0, $s3, 0
	slli.d	$a1, $a0, 3
	addi.d	$s4, $a1, 8
	addi.d	$fp, $a0, 1
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	addi.w	$s0, $a1, 0
	addi.d	$s1, $a0, 2
	ori	$a0, $zero, 2712
	add.d	$s3, $sp, $a0
	ori	$a0, $zero, 2848
	add.d	$s5, $sp, $a0
	.p2align	4, , 16
.LBB0_50:                               # %for.cond178.preheader
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a0, $s6, 32
	srai.d	$a0, $a0, 29
	addi.d	$a1, $sp, 264
	add.d	$a1, $a1, $a0
	move	$a0, $s5
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 264
	add.w	$a0, $fp, $s6
	slli.d	$a0, $a0, 3
	fldx.d	$fa0, $a0, $a1
	add.d	$s6, $s6, $s1
	fst.d	$fa0, $s3, 0
	addi.d	$s3, $s3, 8
	addi.d	$s0, $s0, -1
	addi.d	$s5, $s5, 136
	bnez	$s0, .LBB0_50
# %bb.51:                               # %for.body238.lr.ph
                                        #   in Loop: Header=BB0_6 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1744
	add.d	$a0, $sp, $a0
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu52i.d	$fp, $zero, 1023
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1744
	add.d	$a0, $sp, $a0
	st.d	$fp, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1608
	add.d	$a0, $sp, $a0
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	slli.d	$a0, $a0, 3
	stx.d	$fp, $a0, $s8
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1472
	add.d	$a0, $sp, $a0
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$ra, $zero
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	addi.w	$s5, $a0, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 30, 3
	slli.d	$a0, $a0, 3
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	addi.d	$s4, $a0, 1
	bstrpick.d	$a0, $s4, 30, 3
	slli.d	$a0, $a0, 3
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2712
	add.d	$fp, $sp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1096
	add.d	$s0, $sp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1232
	add.d	$s1, $sp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1368
	add.d	$a5, $sp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1776
	add.d	$a6, $sp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1472
	add.d	$a7, $sp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1336
	add.d	$t0, $sp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1200
	add.d	$t1, $sp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1064
	add.d	$t2, $sp, $a0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2680
	add.d	$t3, $sp, $a0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2544
	add.d	$t4, $sp, $a0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2408
	add.d	$t5, $sp, $a0
	ori	$t6, $zero, 2
	ld.d	$t7, $sp, 152                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 104                   # 8-byte Folded Reload
.LBB0_52:                               # %for.cond245.preheader.preheader
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_53 Depth 3
                                        #         Child Loop BB0_54 Depth 4
                                        #       Child Loop BB0_57 Depth 3
                                        #         Child Loop BB0_58 Depth 4
                                        #       Child Loop BB0_61 Depth 3
                                        #         Child Loop BB0_62 Depth 4
                                        #       Child Loop BB0_65 Depth 3
                                        #       Child Loop BB0_71 Depth 3
                                        #       Child Loop BB0_74 Depth 3
                                        #       Child Loop BB0_76 Depth 3
                                        #         Child Loop BB0_77 Depth 4
                                        #       Child Loop BB0_82 Depth 3
                                        #       Child Loop BB0_85 Depth 3
                                        #       Child Loop BB0_87 Depth 3
                                        #       Child Loop BB0_89 Depth 3
                                        #       Child Loop BB0_93 Depth 3
                                        #       Child Loop BB0_96 Depth 3
                                        #       Child Loop BB0_100 Depth 3
                                        #       Child Loop BB0_103 Depth 3
                                        #       Child Loop BB0_105 Depth 3
                                        #         Child Loop BB0_106 Depth 4
                                        #       Child Loop BB0_109 Depth 3
                                        #       Child Loop BB0_118 Depth 3
                                        #       Child Loop BB0_121 Depth 3
                                        #       Child Loop BB0_125 Depth 3
                                        #       Child Loop BB0_128 Depth 3
                                        #       Child Loop BB0_132 Depth 3
                                        #       Child Loop BB0_135 Depth 3
                                        #       Child Loop BB0_139 Depth 3
                                        #       Child Loop BB0_142 Depth 3
                                        #       Child Loop BB0_146 Depth 3
                                        #       Child Loop BB0_149 Depth 3
                                        #       Child Loop BB0_151 Depth 3
                                        #         Child Loop BB0_152 Depth 4
                                        #       Child Loop BB0_155 Depth 3
                                        #       Child Loop BB0_160 Depth 3
                                        #       Child Loop BB0_167 Depth 3
                                        #       Child Loop BB0_170 Depth 3
                                        #       Child Loop BB0_174 Depth 3
                                        #       Child Loop BB0_177 Depth 3
	ld.w	$a1, $a3, 1312
	move	$a0, $zero
	addi.d	$a1, $a1, 1
	st.w	$a1, $a3, 1312
	lu12i.w	$a1, 2
	ori	$a1, $a1, 96
	add.d	$a1, $sp, $a1
	.p2align	4, , 16
.LBB0_53:                               # %for.cond245.preheader
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_52 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_54 Depth 4
	move	$a2, $zero
	fmov.d	$fa0, $fs2
	.p2align	4, , 16
.LBB0_54:                               # %for.body249
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_52 Depth=2
                                        #       Parent Loop BB0_53 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa1, $a1, $a2
	fldx.d	$fa2, $a2, $s7
	addi.d	$a2, $a2, 8
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	bne	$s2, $a2, .LBB0_54
# %bb.55:                               # %for.end259
                                        #   in Loop: Header=BB0_53 Depth=3
	slli.d	$a2, $a0, 3
	fldx.d	$fa1, $a2, $t0
	fmul.d	$fa1, $fa1, $fs2
	fadd.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $a2, $t0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 136
	bne	$a0, $s5, .LBB0_53
# %bb.56:                               # %for.cond277.preheader.preheader
                                        #   in Loop: Header=BB0_52 Depth=2
	move	$a0, $zero
	lu12i.w	$a1, 2
	ori	$a1, $a1, 96
	add.d	$a1, $sp, $a1
	.p2align	4, , 16
.LBB0_57:                               # %for.cond277.preheader
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_52 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_58 Depth 4
	move	$a2, $zero
	fmov.d	$fa0, $fs2
	.p2align	4, , 16
.LBB0_58:                               # %for.body281
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_52 Depth=2
                                        #       Parent Loop BB0_57 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa1, $a1, $a2
	fldx.d	$fa2, $a2, $s8
	addi.d	$a2, $a2, 8
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	bne	$s2, $a2, .LBB0_58
# %bb.59:                               # %for.end291
                                        #   in Loop: Header=BB0_57 Depth=3
	slli.d	$a2, $a0, 3
	fldx.d	$fa1, $a2, $t1
	fmul.d	$fa1, $fa1, $fs2
	fadd.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $a2, $t1
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 136
	bne	$a0, $s5, .LBB0_57
# %bb.60:                               # %for.cond309.preheader.preheader
                                        #   in Loop: Header=BB0_52 Depth=2
	move	$a0, $zero
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1880
	add.d	$a1, $sp, $a1
	.p2align	4, , 16
.LBB0_61:                               # %for.cond309.preheader
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_52 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_62 Depth 4
	move	$a2, $zero
	fmov.d	$fa0, $fs2
	.p2align	4, , 16
.LBB0_62:                               # %for.body313
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_52 Depth=2
                                        #       Parent Loop BB0_61 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa1, $a1, $a2
	fldx.d	$fa2, $a2, $s7
	addi.d	$a2, $a2, 8
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	bne	$s2, $a2, .LBB0_62
# %bb.63:                               # %for.end323
                                        #   in Loop: Header=BB0_61 Depth=3
	slli.d	$a2, $a0, 3
	fldx.d	$fa1, $a2, $t2
	fmul.d	$fa1, $fa1, $fs2
	fadd.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $a2, $t2
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 136
	bne	$a0, $s5, .LBB0_61
# %bb.64:                               # %for.body.i.preheader
                                        #   in Loop: Header=BB0_52 Depth=2
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1336
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2712
	add.d	$a1, $sp, $a1
	move	$a2, $s4
	fmov.d	$fa0, $fs2
	.p2align	4, , 16
.LBB0_65:                               # %for.body.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_52 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $a1, 0
	fld.d	$fa2, $a0, 0
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB0_65
# %bb.66:                               # %__dot.exit
                                        #   in Loop: Header=BB0_52 Depth=2
	fcmp.ceq.d	$fcc0, $fa0, $fs2
	ori	$s6, $zero, 1
	bcnez	$fcc0, .LBB0_182
# %bb.67:                               # %if.end340
                                        #   in Loop: Header=BB0_52 Depth=2
	fdiv.d	$fa6, $fs3, $fa0
	fclass.d	$fa0, $fa6
	movfr2gr.d	$a0, $fa0
	andi	$a0, $a0, 68
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	bnez	$a0, .LBB0_182
# %bb.68:                               # %for.body.i297.preheader
                                        #   in Loop: Header=BB0_52 Depth=2
	bgeu	$t7, $t6, .LBB0_70
# %bb.69:                               #   in Loop: Header=BB0_52 Depth=2
	move	$a3, $zero
	b	.LBB0_73
	.p2align	4, , 16
.LBB0_70:                               # %vector.ph950
                                        #   in Loop: Header=BB0_52 Depth=2
	xvreplve0.d	$xr0, $xr6
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_71:                               # %vector.body955
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_52 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr1, $a1, -32
	xvld	$xr2, $a1, 0
	xvld	$xr3, $a0, -32
	xvld	$xr4, $a0, 0
	xvfmul.d	$xr1, $xr0, $xr1
	xvfmul.d	$xr2, $xr0, $xr2
	xvfsub.d	$xr1, $xr3, $xr1
	xvfsub.d	$xr2, $xr4, $xr2
	xvst	$xr1, $a2, -32
	xvst	$xr2, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	addi.d	$a1, $a1, 64
	addi.d	$a0, $a0, 64
	bnez	$a3, .LBB0_71
# %bb.72:                               #   in Loop: Header=BB0_52 Depth=2
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
.LBB0_73:                               # %for.body.i297.preheader1048
                                        #   in Loop: Header=BB0_52 Depth=2
	add.d	$a0, $t8, $a3
	alsl.d	$a1, $a3, $t3, 3
	alsl.d	$a2, $a3, $t2, 3
	alsl.d	$a3, $a3, $t1, 3
	.p2align	4, , 16
.LBB0_74:                               # %for.body.i297
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_52 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $a2, 0
	fld.d	$fa1, $a3, 0
	fmul.d	$fa0, $fa6, $fa0
	fsub.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $a1, 0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, 8
	bnez	$a0, .LBB0_74
# %bb.75:                               # %for.cond357.preheader.preheader
                                        #   in Loop: Header=BB0_52 Depth=2
	move	$a0, $zero
	ori	$a1, $zero, 2848
	add.d	$a1, $sp, $a1
	.p2align	4, , 16
.LBB0_76:                               # %for.cond357.preheader
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_52 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_77 Depth 4
	lu12i.w	$a2, 2
	ori	$a2, $a2, 2680
	add.d	$a2, $sp, $a2
	move	$a3, $s4
	move	$a4, $a1
	fmov.d	$fa0, $fs2
	.p2align	4, , 16
.LBB0_77:                               # %for.body361
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_52 Depth=2
                                        #       Parent Loop BB0_76 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.d	$fa1, $a4, 0
	fld.d	$fa2, $a2, 0
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 8
	bnez	$a3, .LBB0_77
# %bb.78:                               # %for.end371
                                        #   in Loop: Header=BB0_76 Depth=3
	slli.d	$a2, $a0, 3
	fldx.d	$fa1, $a2, $t4
	fmul.d	$fa1, $fa1, $fs2
	fadd.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $a2, $t4
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 136
	bne	$a0, $s5, .LBB0_76
# %bb.79:                               # %for.body.i306.preheader
                                        #   in Loop: Header=BB0_52 Depth=2
	bgeu	$t7, $t6, .LBB0_81
# %bb.80:                               #   in Loop: Header=BB0_52 Depth=2
	move	$a3, $zero
	b	.LBB0_84
	.p2align	4, , 16
.LBB0_81:                               # %vector.ph933
                                        #   in Loop: Header=BB0_52 Depth=2
	xvreplve0.d	$xr0, $xr6
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1640
	add.d	$a0, $sp, $a0
	move	$a1, $a5
	lu12i.w	$a2, 2
	ori	$a2, $a2, 2440
	add.d	$a2, $sp, $a2
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_82:                               # %vector.body938
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_52 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr1, $a1, -32
	xvld	$xr2, $a1, 0
	xvld	$xr3, $a0, -32
	xvld	$xr4, $a0, 0
	xvfmul.d	$xr1, $xr0, $xr1
	xvfmul.d	$xr2, $xr0, $xr2
	xvfsub.d	$xr1, $xr3, $xr1
	xvfsub.d	$xr2, $xr4, $xr2
	xvst	$xr1, $a2, -32
	xvst	$xr2, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	addi.d	$a1, $a1, 64
	addi.d	$a0, $a0, 64
	bnez	$a3, .LBB0_82
# %bb.83:                               #   in Loop: Header=BB0_52 Depth=2
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
.LBB0_84:                               # %for.body.i306.preheader1047
                                        #   in Loop: Header=BB0_52 Depth=2
	add.d	$a0, $t8, $a3
	alsl.d	$a1, $a3, $t5, 3
	alsl.d	$a2, $a3, $t0, 3
	alsl.d	$a3, $a3, $s8, 3
	.p2align	4, , 16
.LBB0_85:                               # %for.body.i306
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_52 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $a2, 0
	fld.d	$fa1, $a3, 0
	fmul.d	$fa0, $fa6, $fa0
	fsub.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $a1, 0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, 8
	bnez	$a0, .LBB0_85
# %bb.86:                               # %for.body.i319.preheader
                                        #   in Loop: Header=BB0_52 Depth=2
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2544
	add.d	$a0, $sp, $a0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 2408
	add.d	$a1, $sp, $a1
	move	$a2, $s4
	fmov.d	$fs5, $fs2
	.p2align	4, , 16
.LBB0_87:                               # %for.body.i319
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_52 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $a1, 0
	fld.d	$fa1, $a0, 0
	fmadd.d	$fs5, $fa0, $fa1, $fs5
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB0_87
# %bb.88:                               # %for.body.i331.preheader
                                        #   in Loop: Header=BB0_52 Depth=2
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2544
	add.d	$a0, $sp, $a0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 2680
	add.d	$a1, $sp, $a1
	move	$a2, $s4
	fmov.d	$fs6, $fs2
	.p2align	4, , 16
.LBB0_89:                               # %for.body.i331
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_52 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $a1, 0
	fld.d	$fa1, $a0, 0
	fmadd.d	$fs6, $fa0, $fa1, $fs6
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB0_89
# %bb.90:                               # %for.body.preheader.i340
                                        #   in Loop: Header=BB0_52 Depth=2
	bgeu	$t7, $t6, .LBB0_92
# %bb.91:                               #   in Loop: Header=BB0_52 Depth=2
	move	$a2, $zero
	b	.LBB0_95
	.p2align	4, , 16
.LBB0_92:                               # %vector.ph916
                                        #   in Loop: Header=BB0_52 Depth=2
	xvreplve0.d	$xr0, $xr6
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1504
	add.d	$a0, $sp, $a0
	move	$a1, $a6
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_93:                               # %vector.body921
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_52 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr1, $a1, -32
	xvld	$xr2, $a1, 0
	xvld	$xr3, $a0, -32
	xvld	$xr4, $a0, 0
	xvfmul.d	$xr1, $xr0, $xr1
	xvfmul.d	$xr2, $xr0, $xr2
	xvfadd.d	$xr1, $xr3, $xr1
	xvfadd.d	$xr2, $xr4, $xr2
	xvst	$xr1, $a0, -32
	xvst	$xr2, $a0, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	addi.d	$a0, $a0, 64
	bnez	$a2, .LBB0_93
# %bb.94:                               #   in Loop: Header=BB0_52 Depth=2
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
.LBB0_95:                               # %for.body.i342.preheader
                                        #   in Loop: Header=BB0_52 Depth=2
	add.d	$a0, $t8, $a2
	alsl.d	$a1, $a2, $s7, 3
	alsl.d	$a2, $a2, $a7, 3
	.p2align	4, , 16
.LBB0_96:                               # %for.body.i342
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_52 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $a1, 0
	fld.d	$fa1, $a2, 0
	fmul.d	$fa0, $fa6, $fa0
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $a2, 0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB0_96
# %bb.97:                               # %for.body.i354.preheader
                                        #   in Loop: Header=BB0_52 Depth=2
	bgeu	$t7, $t6, .LBB0_99
# %bb.98:                               #   in Loop: Header=BB0_52 Depth=2
	move	$a3, $zero
	b	.LBB0_102
	.p2align	4, , 16
.LBB0_99:                               # %vector.ph899
                                        #   in Loop: Header=BB0_52 Depth=2
	xvreplve0.d	$xr0, $xr6
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1640
	add.d	$a0, $sp, $a0
	move	$a1, $a5
	move	$a2, $fp
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_100:                              # %vector.body904
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_52 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr1, $a1, -32
	xvld	$xr2, $a1, 0
	xvld	$xr3, $a0, -32
	xvld	$xr4, $a0, 0
	xvfmul.d	$xr1, $xr0, $xr1
	xvfmul.d	$xr2, $xr0, $xr2
	xvfsub.d	$xr1, $xr3, $xr1
	xvfsub.d	$xr2, $xr4, $xr2
	xvst	$xr1, $a2, -32
	xvst	$xr2, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	addi.d	$a1, $a1, 64
	addi.d	$a0, $a0, 64
	bnez	$a3, .LBB0_100
# %bb.101:                              #   in Loop: Header=BB0_52 Depth=2
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
.LBB0_102:                              # %for.body.i354.preheader1046
                                        #   in Loop: Header=BB0_52 Depth=2
	add.d	$a0, $t8, $a3
	alsl.d	$a1, $a3, $t3, 3
	alsl.d	$a2, $a3, $t0, 3
	alsl.d	$a3, $a3, $s8, 3
	.p2align	4, , 16
.LBB0_103:                              # %for.body.i354
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_52 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $a2, 0
	fld.d	$fa1, $a3, 0
	fmul.d	$fa0, $fa6, $fa0
	fsub.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $a1, 0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, 8
	bnez	$a0, .LBB0_103
# %bb.104:                              # %for.cond416.preheader.preheader
                                        #   in Loop: Header=BB0_52 Depth=2
	move	$a0, $zero
	ori	$a1, $zero, 2848
	add.d	$a1, $sp, $a1
	.p2align	4, , 16
.LBB0_105:                              # %for.cond416.preheader
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_52 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_106 Depth 4
	lu12i.w	$a2, 2
	ori	$a2, $a2, 2680
	add.d	$a2, $sp, $a2
	move	$a3, $s4
	move	$a4, $a1
	fmov.d	$fa0, $fs2
	.p2align	4, , 16
.LBB0_106:                              # %for.body420
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_52 Depth=2
                                        #       Parent Loop BB0_105 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.d	$fa1, $a4, 0
	fld.d	$fa2, $a2, 0
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 8
	bnez	$a3, .LBB0_106
# %bb.107:                              # %for.end430
                                        #   in Loop: Header=BB0_105 Depth=3
	slli.d	$a2, $a0, 3
	fldx.d	$fa1, $a2, $t4
	fmul.d	$fa1, $fa1, $fs2
	fadd.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $a2, $t4
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 136
	bne	$a0, $s5, .LBB0_105
# %bb.108:                              # %for.body.i367.preheader
                                        #   in Loop: Header=BB0_52 Depth=2
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2544
	add.d	$a0, $sp, $a0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 2680
	add.d	$a1, $sp, $a1
	move	$a2, $s4
	fmov.d	$fa0, $fs2
	.p2align	4, , 16
.LBB0_109:                              # %for.body.i367
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_52 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $a1, 0
	fld.d	$fa2, $a0, 0
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB0_109
# %bb.110:                              # %__dot.exit374
                                        #   in Loop: Header=BB0_52 Depth=2
	fcmp.clt.d	$fcc0, $fa0, $fs2
	fmov.d	$fa1, $fs2
	bcnez	$fcc0, .LBB0_112
# %bb.111:                              # %if.else
                                        #   in Loop: Header=BB0_52 Depth=2
	fsqrt.d	$fa1, $fa0
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bceqz	$fcc0, .LBB0_179
.LBB0_112:                              # %if.end448
                                        #   in Loop: Header=BB0_52 Depth=2
	fcmp.clt.d	$fcc0, $fa1, $fs4
	bcnez	$fcc0, .LBB0_181
.LBB0_113:                              # %if.end452
                                        #   in Loop: Header=BB0_52 Depth=2
	fcmp.ceq.d	$fcc0, $fs6, $fs2
	ori	$s6, $zero, 1
	bcnez	$fcc0, .LBB0_182
# %bb.114:                              # %if.end455
                                        #   in Loop: Header=BB0_52 Depth=2
	fdiv.d	$fa7, $fs5, $fs6
	fclass.d	$fa0, $fa7
	movfr2gr.d	$a0, $fa0
	andi	$a0, $a0, 68
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	bnez	$a0, .LBB0_182
# %bb.115:                              # %for.body.i378.preheader
                                        #   in Loop: Header=BB0_52 Depth=2
	bgeu	$t7, $t6, .LBB0_117
# %bb.116:                              #   in Loop: Header=BB0_52 Depth=2
	move	$a2, $zero
	b	.LBB0_120
	.p2align	4, , 16
.LBB0_117:                              # %vector.ph882
                                        #   in Loop: Header=BB0_52 Depth=2
	xvreplve0.d	$xr0, $xr7
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1504
	add.d	$a0, $sp, $a0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1640
	add.d	$a1, $sp, $a1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_118:                              # %vector.body887
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_52 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr1, $a1, -32
	xvld	$xr2, $a1, 0
	xvld	$xr3, $a0, -32
	xvld	$xr4, $a0, 0
	xvfmul.d	$xr1, $xr0, $xr1
	xvfmul.d	$xr2, $xr0, $xr2
	xvfadd.d	$xr1, $xr3, $xr1
	xvfadd.d	$xr2, $xr4, $xr2
	xvst	$xr1, $a0, -32
	xvst	$xr2, $a0, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	addi.d	$a0, $a0, 64
	bnez	$a2, .LBB0_118
# %bb.119:                              #   in Loop: Header=BB0_52 Depth=2
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
.LBB0_120:                              # %for.body.i378.preheader1045
                                        #   in Loop: Header=BB0_52 Depth=2
	add.d	$a0, $t8, $a2
	alsl.d	$a1, $a2, $s8, 3
	alsl.d	$a2, $a2, $a7, 3
	.p2align	4, , 16
.LBB0_121:                              # %for.body.i378
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_52 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $a1, 0
	fld.d	$fa1, $a2, 0
	fmul.d	$fa0, $fa7, $fa0
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $a2, 0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB0_121
# %bb.122:                              # %for.body.preheader.i388
                                        #   in Loop: Header=BB0_52 Depth=2
	fneg.d	$fs5, $fa7
	fmul.d	$fa0, $fa6, $fs5
	bgeu	$t7, $t6, .LBB0_124
# %bb.123:                              #   in Loop: Header=BB0_52 Depth=2
	move	$a2, $zero
	b	.LBB0_127
	.p2align	4, , 16
.LBB0_124:                              # %vector.ph865
                                        #   in Loop: Header=BB0_52 Depth=2
	xvreplve0.d	$xr1, $xr0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1504
	add.d	$a0, $sp, $a0
	move	$a1, $a5
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_125:                              # %vector.body870
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_52 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr2, $a1, -32
	xvld	$xr3, $a1, 0
	xvld	$xr4, $a0, -32
	xvld	$xr5, $a0, 0
	xvfmul.d	$xr2, $xr1, $xr2
	xvfmul.d	$xr3, $xr1, $xr3
	xvfadd.d	$xr2, $xr4, $xr2
	xvfadd.d	$xr3, $xr5, $xr3
	xvst	$xr2, $a0, -32
	xvst	$xr3, $a0, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	addi.d	$a0, $a0, 64
	bnez	$a2, .LBB0_125
# %bb.126:                              #   in Loop: Header=BB0_52 Depth=2
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
.LBB0_127:                              # %for.body.i390.preheader
                                        #   in Loop: Header=BB0_52 Depth=2
	add.d	$a0, $t8, $a2
	alsl.d	$a1, $a2, $t0, 3
	alsl.d	$a2, $a2, $a7, 3
	.p2align	4, , 16
.LBB0_128:                              # %for.body.i390
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_52 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $a1, 0
	fld.d	$fa2, $a2, 0
	fmul.d	$fa1, $fa0, $fa1
	fadd.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $a2, 0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB0_128
# %bb.129:                              # %for.body.i402.preheader
                                        #   in Loop: Header=BB0_52 Depth=2
	bgeu	$t7, $t6, .LBB0_131
# %bb.130:                              #   in Loop: Header=BB0_52 Depth=2
	move	$a2, $zero
	b	.LBB0_134
	.p2align	4, , 16
.LBB0_131:                              # %vector.ph848
                                        #   in Loop: Header=BB0_52 Depth=2
	xvreplve0.d	$xr0, $xr7
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1640
	add.d	$a0, $sp, $a0
	move	$a1, $s1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_132:                              # %vector.body853
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_52 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr1, $a1, -32
	xvld	$xr2, $a1, 0
	xvld	$xr3, $a0, -32
	xvld	$xr4, $a0, 0
	xvfmul.d	$xr1, $xr0, $xr1
	xvfmul.d	$xr2, $xr0, $xr2
	xvfsub.d	$xr1, $xr3, $xr1
	xvfsub.d	$xr2, $xr4, $xr2
	xvst	$xr1, $a0, -32
	xvst	$xr2, $a0, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	addi.d	$a0, $a0, 64
	bnez	$a2, .LBB0_132
# %bb.133:                              #   in Loop: Header=BB0_52 Depth=2
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
.LBB0_134:                              # %for.body.i402.preheader1044
                                        #   in Loop: Header=BB0_52 Depth=2
	add.d	$a0, $t8, $a2
	alsl.d	$a1, $a2, $t1, 3
	alsl.d	$a2, $a2, $s8, 3
	.p2align	4, , 16
.LBB0_135:                              # %for.body.i402
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_52 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $a1, 0
	fld.d	$fa1, $a2, 0
	fmul.d	$fa0, $fa7, $fa0
	fsub.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $a2, 0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB0_135
# %bb.136:                              # %for.body.i414.preheader
                                        #   in Loop: Header=BB0_52 Depth=2
	bgeu	$t7, $t6, .LBB0_138
# %bb.137:                              #   in Loop: Header=BB0_52 Depth=2
	move	$a2, $zero
	b	.LBB0_141
	.p2align	4, , 16
.LBB0_138:                              # %vector.ph831
                                        #   in Loop: Header=BB0_52 Depth=2
	xvreplve0.d	$xr0, $xr6
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1640
	add.d	$a0, $sp, $a0
	move	$a1, $a5
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_139:                              # %vector.body836
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_52 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr1, $a1, -32
	xvld	$xr2, $a1, 0
	xvld	$xr3, $a0, -32
	xvld	$xr4, $a0, 0
	xvfmul.d	$xr1, $xr0, $xr1
	xvfmul.d	$xr2, $xr0, $xr2
	xvfsub.d	$xr1, $xr3, $xr1
	xvfsub.d	$xr2, $xr4, $xr2
	xvst	$xr1, $a0, -32
	xvst	$xr2, $a0, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	addi.d	$a0, $a0, 64
	bnez	$a2, .LBB0_139
# %bb.140:                              #   in Loop: Header=BB0_52 Depth=2
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
.LBB0_141:                              # %for.body.i414.preheader1043
                                        #   in Loop: Header=BB0_52 Depth=2
	add.d	$a0, $t8, $a2
	alsl.d	$a1, $a2, $t0, 3
	alsl.d	$a2, $a2, $s8, 3
	.p2align	4, , 16
.LBB0_142:                              # %for.body.i414
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_52 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $a1, 0
	fld.d	$fa1, $a2, 0
	fmul.d	$fa0, $fa6, $fa0
	fsub.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $a2, 0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB0_142
# %bb.143:                              # %for.body.preheader.i424
                                        #   in Loop: Header=BB0_52 Depth=2
	fmul.d	$fa0, $fa6, $fa7
	bgeu	$t7, $t6, .LBB0_145
# %bb.144:                              #   in Loop: Header=BB0_52 Depth=2
	move	$a2, $zero
	b	.LBB0_148
	.p2align	4, , 16
.LBB0_145:                              # %vector.ph814
                                        #   in Loop: Header=BB0_52 Depth=2
	xvreplve0.d	$xr1, $xr0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1640
	add.d	$a0, $sp, $a0
	move	$a1, $s0
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_146:                              # %vector.body819
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_52 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr2, $a1, -32
	xvld	$xr3, $a1, 0
	xvld	$xr4, $a0, -32
	xvld	$xr5, $a0, 0
	xvfmul.d	$xr2, $xr1, $xr2
	xvfmul.d	$xr3, $xr1, $xr3
	xvfadd.d	$xr2, $xr4, $xr2
	xvfadd.d	$xr3, $xr5, $xr3
	xvst	$xr2, $a0, -32
	xvst	$xr3, $a0, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	addi.d	$a0, $a0, 64
	bnez	$a2, .LBB0_146
# %bb.147:                              #   in Loop: Header=BB0_52 Depth=2
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
.LBB0_148:                              # %for.body.i426.preheader
                                        #   in Loop: Header=BB0_52 Depth=2
	add.d	$a0, $t8, $a2
	alsl.d	$a1, $a2, $t2, 3
	alsl.d	$a2, $a2, $s8, 3
	.p2align	4, , 16
.LBB0_149:                              # %for.body.i426
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_52 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $a1, 0
	fld.d	$fa2, $a2, 0
	fmul.d	$fa1, $fa0, $fa1
	fadd.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $a2, 0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB0_149
# %bb.150:                              # %for.cond499.preheader.preheader
                                        #   in Loop: Header=BB0_52 Depth=2
	move	$a0, $zero
	ori	$a1, $zero, 2848
	add.d	$a1, $sp, $a1
	.p2align	4, , 16
.LBB0_151:                              # %for.cond499.preheader
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_52 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_152 Depth 4
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1608
	add.d	$a2, $sp, $a2
	move	$a3, $s4
	move	$a4, $a1
	fmov.d	$fa0, $fs2
	.p2align	4, , 16
.LBB0_152:                              # %for.body503
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_52 Depth=2
                                        #       Parent Loop BB0_151 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.d	$fa1, $a4, 0
	fld.d	$fa2, $a2, 0
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 8
	bnez	$a3, .LBB0_152
# %bb.153:                              # %for.end513
                                        #   in Loop: Header=BB0_151 Depth=3
	slli.d	$a2, $a0, 3
	fldx.d	$fa1, $a2, $t3
	fmul.d	$fa1, $fa1, $fs2
	fadd.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $a2, $t3
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 136
	bne	$a0, $s5, .LBB0_151
# %bb.154:                              # %for.body.i439.preheader
                                        #   in Loop: Header=BB0_52 Depth=2
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2680
	add.d	$a0, $sp, $a0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1608
	add.d	$a1, $sp, $a1
	move	$a2, $s4
	fmov.d	$fa0, $fs2
	.p2align	4, , 16
.LBB0_155:                              # %for.body.i439
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_52 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $a1, 0
	fld.d	$fa2, $a0, 0
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB0_155
# %bb.156:                              # %__dot.exit446
                                        #   in Loop: Header=BB0_52 Depth=2
	fcmp.cule.d	$fcc0, $fa0, $fs2
	fmov.d	$fa1, $fs2
	bcnez	$fcc0, .LBB0_158
# %bb.157:                              # %if.then529
                                        #   in Loop: Header=BB0_52 Depth=2
	fsqrt.d	$fa1, $fa0
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bceqz	$fcc0, .LBB0_180
.LBB0_158:                              # %if.end531
                                        #   in Loop: Header=BB0_52 Depth=2
	fcmp.clt.d	$fcc0, $fa1, $fs4
	bcnez	$fcc0, .LBB0_181
.LBB0_159:                              # %for.body.i451.preheader
                                        #   in Loop: Header=BB0_52 Depth=2
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1608
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2712
	add.d	$a1, $sp, $a1
	move	$a2, $s4
	fmov.d	$fa0, $fs2
	.p2align	4, , 16
.LBB0_160:                              # %for.body.i451
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_52 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $a1, 0
	fld.d	$fa2, $a0, 0
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB0_160
# %bb.161:                              # %__dot.exit458
                                        #   in Loop: Header=BB0_52 Depth=2
	fclass.d	$fa1, $fa0
	movfr2gr.d	$a0, $fa1
	andi	$a0, $a0, 612
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	ori	$s6, $zero, 1
	bnez	$a0, .LBB0_182
# %bb.162:                              # %__dot.exit458
                                        #   in Loop: Header=BB0_52 Depth=2
	fcmp.ceq.d	$fcc0, $fa7, $fs2
	bcnez	$fcc0, .LBB0_182
# %bb.163:                              # %if.end550
                                        #   in Loop: Header=BB0_52 Depth=2
	fdiv.d	$fa1, $fa0, $fs3
	fdiv.d	$fa2, $fa6, $fa7
	fmul.d	$fa1, $fa2, $fa1
	fclass.d	$fa2, $fa1
	movfr2gr.d	$a0, $fa2
	andi	$a0, $a0, 612
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	bnez	$a0, .LBB0_182
# %bb.164:                              # %for.body.i462.preheader
                                        #   in Loop: Header=BB0_52 Depth=2
	bgeu	$t7, $t6, .LBB0_166
# %bb.165:                              #   in Loop: Header=BB0_52 Depth=2
	move	$a2, $zero
	b	.LBB0_169
	.p2align	4, , 16
.LBB0_166:                              # %vector.ph797
                                        #   in Loop: Header=BB0_52 Depth=2
	xvreplve0.d	$xr2, $xr1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1640
	add.d	$a0, $sp, $a0
	move	$a1, $a6
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_167:                              # %vector.body802
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_52 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr3, $a1, -32
	xvld	$xr4, $a1, 0
	xvld	$xr5, $a0, -32
	xvld	$xr6, $a0, 0
	xvfmul.d	$xr3, $xr2, $xr3
	xvfmul.d	$xr4, $xr2, $xr4
	xvfadd.d	$xr3, $xr5, $xr3
	xvfadd.d	$xr4, $xr6, $xr4
	xvst	$xr3, $a1, -32
	xvst	$xr4, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	addi.d	$a0, $a0, 64
	bnez	$a2, .LBB0_167
# %bb.168:                              #   in Loop: Header=BB0_52 Depth=2
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
.LBB0_169:                              # %for.body.i462.preheader1042
                                        #   in Loop: Header=BB0_52 Depth=2
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	add.d	$a0, $t8, $a2
	alsl.d	$a1, $a2, $s7, 3
	alsl.d	$a2, $a2, $s8, 3
	.p2align	4, , 16
.LBB0_170:                              # %for.body.i462
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_52 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $a1, 0
	fld.d	$fa3, $a2, 0
	fmul.d	$fa2, $fa1, $fa2
	fadd.d	$fa2, $fa3, $fa2
	fst.d	$fa2, $a1, 0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB0_170
# %bb.171:                              # %for.body.preheader.i472
                                        #   in Loop: Header=BB0_52 Depth=2
	fmul.d	$fa1, $fa1, $fs5
	bgeu	$t7, $t6, .LBB0_173
# %bb.172:                              #   in Loop: Header=BB0_52 Depth=2
	move	$a2, $zero
	b	.LBB0_176
	.p2align	4, , 16
.LBB0_173:                              # %vector.ph
                                        #   in Loop: Header=BB0_52 Depth=2
	xvreplve0.d	$xr2, $xr1
	move	$a0, $a6
	move	$a1, $a5
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_174:                              # %vector.body
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_52 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr3, $a1, -32
	xvld	$xr4, $a1, 0
	xvld	$xr5, $a0, -32
	xvld	$xr6, $a0, 0
	xvfmul.d	$xr3, $xr2, $xr3
	xvfmul.d	$xr4, $xr2, $xr4
	xvfadd.d	$xr3, $xr5, $xr3
	xvfadd.d	$xr4, $xr6, $xr4
	xvst	$xr3, $a0, -32
	xvst	$xr4, $a0, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	addi.d	$a0, $a0, 64
	bnez	$a2, .LBB0_174
# %bb.175:                              #   in Loop: Header=BB0_52 Depth=2
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
.LBB0_176:                              # %for.body.i474.preheader
                                        #   in Loop: Header=BB0_52 Depth=2
	add.d	$a0, $t8, $a2
	alsl.d	$a1, $a2, $t0, 3
	alsl.d	$a2, $a2, $s7, 3
	.p2align	4, , 16
.LBB0_177:                              # %for.body.i474
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_52 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $a1, 0
	fld.d	$fa3, $a2, 0
	fmul.d	$fa2, $fa1, $fa2
	fadd.d	$fa2, $fa3, $fa2
	fst.d	$fa2, $a2, 0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB0_177
# %bb.178:                              # %__axpy.exit482
                                        #   in Loop: Header=BB0_52 Depth=2
	addi.w	$ra, $ra, 1
	fmov.d	$fs3, $fa0
	bne	$ra, $t7, .LBB0_52
	b	.LBB0_183
.LBB0_179:                              # %call.sqrt1509
                                        #   in Loop: Header=BB0_52 Depth=2
	move	$s6, $ra
	xvst	$xr6, $sp, 112                  # 32-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	xvld	$xr6, $sp, 112                  # 32-byte Folded Reload
	move	$ra, $s6
	ld.d	$t8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 152                   # 8-byte Folded Reload
	ori	$t6, $zero, 2
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2408
	add.d	$t5, $sp, $a0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2544
	add.d	$t4, $sp, $a0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2680
	add.d	$t3, $sp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1064
	add.d	$t2, $sp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1200
	add.d	$t1, $sp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1336
	add.d	$t0, $sp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1472
	add.d	$a7, $sp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1776
	add.d	$a6, $sp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1368
	add.d	$a5, $sp, $a0
	fmov.d	$fa1, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fs4
	bceqz	$fcc0, .LBB0_113
	b	.LBB0_181
.LBB0_180:                              # %call.sqrt1510
                                        #   in Loop: Header=BB0_52 Depth=2
	move	$s6, $ra
	xvst	$xr6, $sp, 112                  # 32-byte Folded Spill
	xvst	$xr7, $sp, 48                   # 32-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	xvld	$xr7, $sp, 48                   # 32-byte Folded Reload
	xvld	$xr6, $sp, 112                  # 32-byte Folded Reload
	move	$ra, $s6
	ld.d	$t8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 152                   # 8-byte Folded Reload
	ori	$t6, $zero, 2
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2408
	add.d	$t5, $sp, $a0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2544
	add.d	$t4, $sp, $a0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2680
	add.d	$t3, $sp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1064
	add.d	$t2, $sp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1200
	add.d	$t1, $sp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1336
	add.d	$t0, $sp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1472
	add.d	$a7, $sp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1776
	add.d	$a6, $sp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1368
	add.d	$a5, $sp, $a0
	fmov.d	$fa1, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fs4
	bceqz	$fcc0, .LBB0_159
	.p2align	4, , 16
.LBB0_181:                              #   in Loop: Header=BB0_6 Depth=1
	move	$s6, $zero
	st.d	$zero, $sp, 112                 # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	b	.LBB0_184
	.p2align	4, , 16
.LBB0_182:                              #   in Loop: Header=BB0_6 Depth=1
	st.d	$zero, $sp, 176                 # 8-byte Folded Spill
	st.d	$zero, $sp, 184                 # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	b	.LBB0_185
.LBB0_183:                              #   in Loop: Header=BB0_6 Depth=1
	st.d	$zero, $sp, 176                 # 8-byte Folded Spill
	st.d	$zero, $sp, 112                 # 8-byte Folded Spill
	ori	$s6, $zero, 1
	fmov.d	$fs3, $fa0
.LBB0_184:                              # %for.body580.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
.LBB0_185:                              # %for.body580.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$fp, $zero
	ori	$s0, $zero, 4
	bstrins.d	$s0, $t7, 35, 4
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1472
	add.d	$s1, $sp, $a0
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 168                   # 8-byte Folded Reload
	addi.d	$s4, $sp, 192
	.p2align	4, , 16
.LBB0_186:                              # %for.body580
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $s1, 0
	ldx.w	$a4, $fp, $s4
	vldi	$vr0, -912
	move	$a0, $s5
	move	$a1, $s2
	move	$a2, $s3
	move	$a3, $s3
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 4
	addi.d	$s1, $s1, 8
	bne	$s0, $fp, .LBB0_186
# %bb.187:                              # %for.end587
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	or	$a0, $a1, $a0
	move	$s1, $s2
	ld.d	$s0, $sp, 160                   # 8-byte Folded Reload
	bnez	$a0, .LBB0_5
# %bb.188:                              # %for.body598.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1744
	add.d	$a0, $sp, $a0
	fld.d	$fa1, $a0, 0
	ld.w	$a4, $sp, 192
	ori	$a2, $zero, 14
	ori	$a3, $zero, 14
	move	$a0, $s5
	move	$a1, $s1
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ori	$fp, $zero, 4
	move	$s4, $s1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1752
	add.d	$s1, $sp, $a0
	addi.d	$s2, $sp, 192
	.p2align	4, , 16
.LBB0_189:                              # %for.body598
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $s1, 0
	ldx.w	$a4, $fp, $s2
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s5
	move	$a1, $s4
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 4
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	bnez	$s0, .LBB0_189
# %bb.190:                              # %for.body612.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1608
	add.d	$a0, $sp, $a0
	fld.d	$fa1, $a0, 0
	ld.w	$a4, $sp, 192
	ori	$a2, $zero, 13
	ori	$a3, $zero, 13
	move	$a0, $s5
	move	$a1, $s4
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1616
	add.d	$fp, $sp, $a0
	addi.d	$s0, $sp, 196
	move	$s1, $s4
	ld.d	$s2, $sp, 160                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_191:                              # %for.body612
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $fp, 0
	ld.w	$a4, $s0, 0
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 4
	addi.d	$s2, $s2, -1
	addi.d	$fp, $fp, 8
	bnez	$s2, .LBB0_191
	b	.LBB0_5
.Lfunc_end0:
	.size	TelescopingCABiCGStab, .Lfunc_end0-TelescopingCABiCGStab
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function CABiCGStab
.LCPI1_0:
	.word	15                              # 0xf
	.word	16                              # 0x10
	.word	17                              # 0x11
	.word	18                              # 0x12
	.word	19                              # 0x13
	.word	20                              # 0x14
	.word	21                              # 0x15
	.word	22                              # 0x16
.LCPI1_1:
	.word	23                              # 0x17
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	26                              # 0x1a
	.word	27                              # 0x1b
	.word	28                              # 0x1c
	.word	29                              # 0x1d
	.word	30                              # 0x1e
.LCPI1_2:
	.dword	0x3ff0000000000000              # double 1
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
.LCPI1_3:
	.dword	0x0000000000000000              # double 0
	.dword	0x3ff0000000000000              # double 1
	.dword	0x0000000000000000              # double 0
	.dword	0x0000000000000000              # double 0
	.text
	.globl	CABiCGStab
	.p2align	5
	.type	CABiCGStab,@function
CABiCGStab:                             # @CABiCGStab
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 1936                 # 8-byte Folded Spill
	fst.d	$fs1, $sp, 1928                 # 8-byte Folded Spill
	fst.d	$fs2, $sp, 1920                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1912                 # 8-byte Folded Spill
	fst.d	$fs4, $sp, 1904                 # 8-byte Folded Spill
	fst.d	$fs5, $sp, 1896                 # 8-byte Folded Spill
	fst.d	$fs6, $sp, 1888                 # 8-byte Folded Spill
	fst.d	$fs7, $sp, 1880                 # 8-byte Folded Spill
	lu12i.w	$a4, 2
	ori	$a4, $a4, 1440
	sub.d	$sp, $sp, $a4
	fmov.d	$fs3, $fa2
	move	$a4, $a3
	move	$a3, $a2
	move	$s0, $a1
	move	$s1, $a0
	ori	$a2, $zero, 12
	st.d	$a3, $sp, 104                   # 8-byte Folded Spill
	fst.d	$fa0, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fa1, $sp, 88                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(residual)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 12
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(scale_grid)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 12
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(scale_grid)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 12
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(norm)
	jirl	$ra, $ra, 0
	fmov.d	$fs5, $fa0
	ori	$a2, $zero, 13
	ori	$a3, $zero, 12
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(dot)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	fsqrt.d	$fs4, $fa0
	fcmp.cor.d	$fcc0, $fs4, $fs4
	bceqz	$fcc0, .LBB1_43
.LBB1_1:                                # %entry.split
	lu12i.w	$a0, 2
	ori	$a0, $a0, 736
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 2312
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2520
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 2312
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI1_0)
	xvst	$xr0, $sp, 1376
	pcalau12i	$a0, %pc_hi20(.LCPI1_1)
	xvld	$xr0, $a0, %pc_lo12(.LCPI1_1)
	lu52i.d	$a0, $zero, 1023
	lu12i.w	$a1, 2
	ori	$a1, $a1, 872
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 1016
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 1160
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 1304
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 1448
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 1592
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 1736
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 1880
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 2168
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 2312
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 2456
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 2600
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 2744
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 2888
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3032
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2792
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2936
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3080
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3224
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3368
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3512
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3656
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 4088
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 136
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 280
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 424
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 568
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 712
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
	xvst	$xr0, $sp, 1408
	ori	$a0, $zero, 31
	lu32i.d	$a0, 12
	movgr2fr.d	$fa0, $zero
	fst.d	$fs0, $sp, 952                  # 8-byte Folded Spill
	fst.d	$fa0, $sp, 96                   # 8-byte Folded Spill
	fcmp.ceq.d	$fcc0, $fs0, $fa0
	st.d	$a0, $sp, 1440
	bcnez	$fcc0, .LBB1_42
# %bb.2:                                # %entry.split
	fld.d	$fa0, $sp, 96                   # 8-byte Folded Reload
	fcmp.ceq.d	$fcc0, $fs5, $fa0
	bcnez	$fcc0, .LBB1_42
# %bb.3:                                # %while.body.lr.ph
	move	$a2, $zero
	fmul.d	$fa0, $fs3, $fs4
	fst.d	$fa0, $sp, 328                  # 8-byte Folded Spill
	addi.d	$a0, $sp, 1448
	addi.d	$a0, $a0, 2047
	addi.d	$a1, $a0, 113
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	ori	$a1, $zero, 3896
	add.d	$a1, $sp, $a1
	addi.d	$a1, $a1, 2047
	addi.d	$a1, $a1, 129
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	addi.d	$a0, $a0, 257
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	xvrepli.b	$xr0, 0
	xvst	$xr0, $sp, 16                   # 32-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2384
	add.d	$s5, $sp, $a0
	ori	$s6, $zero, 136
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2248
	add.d	$s3, $sp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2112
	add.d	$s8, $sp, $a0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3184
	add.d	$s7, $sp, $a0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3048
	add.d	$s2, $sp, $a0
	b	.LBB1_5
	.p2align	4, , 16
.LBB1_4:                                # %if.end619
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	sltui	$a0, $a1, 196
	addi.w	$a1, $a1, 4
	ld.d	$a2, $sp, 944                   # 8-byte Folded Reload
	and	$a0, $a0, $a2
	and	$a0, $a0, $fp
	move	$a2, $a1
	beqz	$a0, .LBB1_42
.LBB1_5:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_6 Depth 2
                                        #       Child Loop BB1_7 Depth 3
                                        #       Child Loop BB1_9 Depth 3
                                        #       Child Loop BB1_11 Depth 3
                                        #       Child Loop BB1_15 Depth 3
                                        #       Child Loop BB1_17 Depth 3
                                        #       Child Loop BB1_24 Depth 3
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2384
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 136
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2248
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 136
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2112
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 136
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3184
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 136
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3048
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 136
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1376
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(scale_grid)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1376
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1380
	ori	$a3, $zero, 10
	move	$a0, $s1
	move	$a1, $s0
	fld.d	$fs1, $sp, 80                   # 8-byte Folded Reload
	fmov.d	$fa0, $fs1
	fld.d	$fs0, $sp, 88                   # 8-byte Folded Reload
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1380
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1384
	ori	$a3, $zero, 10
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1384
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1388
	ori	$a3, $zero, 10
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1388
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1392
	ori	$a3, $zero, 10
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1392
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1396
	ori	$a3, $zero, 10
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1396
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1400
	ori	$a3, $zero, 10
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1400
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1404
	ori	$a3, $zero, 10
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1404
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1408
	ori	$a3, $zero, 10
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1412
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(scale_grid)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1412
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1416
	ori	$a3, $zero, 10
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1416
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1420
	ori	$a3, $zero, 10
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1420
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1424
	ori	$a3, $zero, 10
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1424
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1428
	ori	$a3, $zero, 10
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1428
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1432
	ori	$a3, $zero, 10
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1432
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1436
	ori	$a3, $zero, 10
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1436
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1440
	ori	$a3, $zero, 10
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 1316
	addi.d	$a0, $a0, 1
	st.w	$a0, $s1, 1316
	addi.d	$a2, $sp, 1448
	addi.d	$a3, $sp, 1376
	addi.d	$a4, $sp, 1376
	ori	$a5, $zero, 17
	ori	$a6, $zero, 18
	ori	$a7, $zero, 1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(matmul_grids)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3896
	add.d	$a0, $sp, $a0
	addi.d	$a1, $sp, 1448
	ori	$a2, $zero, 136
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 1584
	fst.d	$fa0, $sp, 944                  # 8-byte Folded Spill
	ori	$a2, $zero, 136
	ori	$a0, $zero, 4032
	add.d	$a0, $sp, $a0
	addi.d	$a1, $sp, 1592
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 1728
	fst.d	$fa0, $sp, 936                  # 8-byte Folded Spill
	ori	$a2, $zero, 136
	lu12i.w	$a0, 1
	ori	$a0, $a0, 72
	add.d	$a0, $sp, $a0
	addi.d	$a1, $sp, 1736
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 1872
	fst.d	$fa0, $sp, 928                  # 8-byte Folded Spill
	ori	$a2, $zero, 136
	lu12i.w	$a0, 1
	ori	$a0, $a0, 208
	add.d	$a0, $sp, $a0
	addi.d	$a1, $sp, 1880
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 2016
	fst.d	$fa0, $sp, 920                  # 8-byte Folded Spill
	ori	$a2, $zero, 136
	lu12i.w	$a0, 1
	ori	$a0, $a0, 344
	add.d	$a0, $sp, $a0
	addi.d	$a1, $sp, 2024
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2160
	add.d	$a0, $sp, $a0
	fld.d	$fa0, $a0, 0
	fst.d	$fa0, $sp, 912                  # 8-byte Folded Spill
	ori	$a2, $zero, 136
	lu12i.w	$a0, 1
	ori	$a0, $a0, 480
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2168
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2304
	add.d	$a0, $sp, $a0
	fld.d	$fa0, $a0, 0
	fst.d	$fa0, $sp, 904                  # 8-byte Folded Spill
	ori	$a2, $zero, 136
	lu12i.w	$a0, 1
	ori	$a0, $a0, 616
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2312
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2448
	add.d	$a0, $sp, $a0
	fld.d	$fa0, $a0, 0
	fst.d	$fa0, $sp, 896                  # 8-byte Folded Spill
	ori	$a2, $zero, 136
	lu12i.w	$a0, 1
	ori	$a0, $a0, 752
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2592
	add.d	$a0, $sp, $a0
	fld.d	$fa0, $a0, 0
	fst.d	$fa0, $sp, 888                  # 8-byte Folded Spill
	ori	$a2, $zero, 136
	lu12i.w	$a0, 1
	ori	$a0, $a0, 888
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2600
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2736
	add.d	$a0, $sp, $a0
	fld.d	$fa0, $a0, 0
	fst.d	$fa0, $sp, 880                  # 8-byte Folded Spill
	ori	$a2, $zero, 136
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1024
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2744
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2880
	add.d	$a0, $sp, $a0
	fld.d	$fa0, $a0, 0
	fst.d	$fa0, $sp, 872                  # 8-byte Folded Spill
	ori	$a2, $zero, 136
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1160
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2888
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3024
	add.d	$a0, $sp, $a0
	fld.d	$fa0, $a0, 0
	fst.d	$fa0, $sp, 864                  # 8-byte Folded Spill
	ori	$a2, $zero, 136
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1296
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 3032
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3168
	add.d	$a0, $sp, $a0
	fld.d	$fa0, $a0, 0
	fst.d	$fa0, $sp, 856                  # 8-byte Folded Spill
	ori	$a2, $zero, 136
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1432
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 3176
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3312
	add.d	$a0, $sp, $a0
	fld.d	$fa0, $a0, 0
	fst.d	$fa0, $sp, 848                  # 8-byte Folded Spill
	ori	$a2, $zero, 136
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1568
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 3320
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3456
	add.d	$a0, $sp, $a0
	fld.d	$fa0, $a0, 0
	fst.d	$fa0, $sp, 840                  # 8-byte Folded Spill
	ori	$a2, $zero, 136
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1704
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 3464
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $sp, 1448
	ori	$a0, $zero, 2152
	fldx.d	$fa0, $a0, $fp
	fst.d	$fa0, $sp, 832                  # 8-byte Folded Spill
	ori	$a2, $zero, 136
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1840
	add.d	$a0, $sp, $a0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2296
	fldx.d	$fa0, $a0, $fp
	fst.d	$fa0, $sp, 824                  # 8-byte Folded Spill
	ori	$a2, $zero, 136
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2440
	fldx.d	$fa0, $a0, $fp
	fst.d	$fa0, $sp, 816                  # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI1_2)
	xvld	$xr5, $a0, %pc_lo12(.LCPI1_2)
	pcalau12i	$a0, %pc_hi20(.LCPI1_3)
	xvld	$xr0, $a0, %pc_lo12(.LCPI1_3)
	xvst	$xr0, $sp, 1344                 # 32-byte Folded Spill
	move	$s4, $zero
	fld.d	$fa0, $sp, 96                   # 8-byte Folded Reload
	fmov.d	$fa6, $fa0
	fmov.d	$ft3, $fa0
	fst.d	$fa0, $sp, 1176                 # 8-byte Folded Spill
	xvld	$xr0, $sp, 16                   # 32-byte Folded Reload
	xvori.b	$xr12, $xr0, 0
	xvst	$xr0, $sp, 1312                 # 32-byte Folded Spill
	xvst	$xr0, $sp, 1136                 # 32-byte Folded Spill
	xvori.b	$xr4, $xr0, 0
	xvori.b	$xr3, $xr0, 0
	xvori.b	$xr2, $xr0, 0
	xvst	$xr0, $sp, 1184                 # 32-byte Folded Spill
	xvst	$xr0, $sp, 1216                 # 32-byte Folded Spill
	xvst	$xr0, $sp, 1248                 # 32-byte Folded Spill
	xvst	$xr0, $sp, 1280                 # 32-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2584
	add.d	$t3, $sp, $a0
.LBB1_6:                                # %for.body237
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_7 Depth 3
                                        #       Child Loop BB1_9 Depth 3
                                        #       Child Loop BB1_11 Depth 3
                                        #       Child Loop BB1_15 Depth 3
                                        #       Child Loop BB1_17 Depth 3
                                        #       Child Loop BB1_24 Depth 3
	fst.d	$ft3, $sp, 968                  # 8-byte Folded Spill
	ld.w	$a1, $s1, 1312
	move	$a0, $zero
	addi.d	$a1, $a1, 1
	st.w	$a1, $s1, 1312
	xvpickve2gr.d	$a1, $xr5, 0
	movgr2fr.d	$fa7, $a1
	xvpickve2gr.d	$a1, $xr5, 1
	movgr2fr.d	$ft0, $a1
	xvpickve2gr.d	$a1, $xr5, 2
	movgr2fr.d	$ft1, $a1
	xvst	$xr5, $sp, 976                  # 32-byte Folded Spill
	xvpickve2gr.d	$a1, $xr5, 3
	movgr2fr.d	$ft2, $a1
	xvpickve2gr.d	$a1, $xr4, 0
	movgr2fr.d	$ft3, $a1
	xvpickve2gr.d	$a1, $xr4, 1
	movgr2fr.d	$ft5, $a1
	xvpickve2gr.d	$a1, $xr4, 2
	movgr2fr.d	$ft6, $a1
	xvst	$xr4, $sp, 1008                 # 32-byte Folded Spill
	xvpickve2gr.d	$a1, $xr4, 3
	movgr2fr.d	$ft15, $a1
	xvpickve2gr.d	$a1, $xr3, 0
	movgr2fr.d	$fs0, $a1
	xvpickve2gr.d	$a1, $xr3, 1
	movgr2fr.d	$fs1, $a1
	xvpickve2gr.d	$a1, $xr3, 2
	movgr2fr.d	$fs3, $a1
	xvst	$xr3, $sp, 1040                 # 32-byte Folded Spill
	xvpickve2gr.d	$a1, $xr3, 3
	movgr2fr.d	$fs4, $a1
	xvpickve2gr.d	$a1, $xr2, 0
	movgr2fr.d	$fs5, $a1
	xvpickve2gr.d	$a1, $xr2, 1
	movgr2fr.d	$fs6, $a1
	xvpickve2gr.d	$a1, $xr2, 2
	movgr2fr.d	$fs7, $a1
	xvst	$xr2, $sp, 1072                 # 32-byte Folded Spill
	xvpickve2gr.d	$a1, $xr2, 3
	movgr2fr.d	$fa0, $a1
	lu12i.w	$a1, 2
	ori	$a1, $a1, 800
	add.d	$a2, $sp, $a1
	move	$a1, $a2
	.p2align	4, , 16
.LBB1_7:                                # %for.cond244.preheader
                                        #   Parent Loop BB1_5 Depth=1
                                        #     Parent Loop BB1_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $a1, -64
	fld.d	$fa2, $a1, -56
	movgr2fr.d	$fs2, $zero
	fmadd.d	$fa1, $fa1, $fa7, $fs2
	fmadd.d	$fa1, $fa2, $ft0, $fa1
	fld.d	$fa2, $a1, -48
	fld.d	$fa3, $a1, -40
	fld.d	$fa4, $a1, -32
	fld.d	$fa5, $a1, -24
	fmadd.d	$fa1, $fa2, $ft1, $fa1
	fmadd.d	$fa1, $fa3, $ft2, $fa1
	fmadd.d	$fa1, $fa4, $ft3, $fa1
	fmadd.d	$fa1, $fa5, $ft5, $fa1
	fld.d	$fa2, $a1, -16
	fld.d	$fa3, $a1, -8
	fld.d	$fa4, $a1, 0
	fld.d	$fa5, $a1, 8
	fmadd.d	$fa1, $fa2, $ft6, $fa1
	fmadd.d	$fa1, $fa3, $ft15, $fa1
	fmadd.d	$fa1, $fa4, $fs0, $fa1
	fmadd.d	$fa1, $fa5, $fs1, $fa1
	fld.d	$fa2, $a1, 16
	fld.d	$fa3, $a1, 24
	fld.d	$fa4, $a1, 32
	fld.d	$fa5, $a1, 40
	fmadd.d	$fa1, $fa2, $fs3, $fa1
	fmadd.d	$fa1, $fa3, $fs4, $fa1
	fmadd.d	$fa1, $fa4, $fs5, $fa1
	fmadd.d	$fa1, $fa5, $fs6, $fa1
	fld.d	$fa2, $a1, 48
	fld.d	$fa3, $a1, 56
	fld.d	$fa4, $a1, 64
	fldx.d	$fa5, $a0, $s5
	fmadd.d	$fa1, $fa2, $fs7, $fa1
	fmadd.d	$fa1, $fa3, $fa0, $fa1
	fmadd.d	$fa1, $fa4, $fa6, $fa1
	fmul.d	$fa2, $fa5, $fs2
	fadd.d	$fa1, $fa1, $fa2
	fstx.d	$fa1, $a0, $s5
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 136
	bne	$a0, $s6, .LBB1_7
# %bb.8:                                # %for.cond276.preheader.preheader
                                        #   in Loop: Header=BB1_6 Depth=2
	fst.d	$ft6, $sp, 584                  # 8-byte Folded Spill
	fst.d	$ft5, $sp, 592                  # 8-byte Folded Spill
	fst.d	$ft3, $sp, 600                  # 8-byte Folded Spill
	fst.d	$ft2, $sp, 608                  # 8-byte Folded Spill
	fst.d	$ft1, $sp, 616                  # 8-byte Folded Spill
	fst.d	$ft0, $sp, 624                  # 8-byte Folded Spill
	fst.d	$fa7, $sp, 656                  # 8-byte Folded Spill
	fst.d	$fa6, $sp, 960                  # 8-byte Folded Spill
	move	$a0, $zero
	xvpickve2gr.d	$a1, $xr12, 0
	movgr2fr.d	$ft14, $a1
	xvpickve2gr.d	$a1, $xr12, 1
	movgr2fr.d	$ft13, $a1
	xvpickve2gr.d	$a1, $xr12, 2
	movgr2fr.d	$ft12, $a1
	xvst	$xr12, $sp, 1104                # 32-byte Folded Spill
	xvpickve2gr.d	$a1, $xr12, 3
	movgr2fr.d	$ft10, $a1
	xvld	$xr1, $sp, 1312                 # 32-byte Folded Reload
	xvpickve2gr.d	$a1, $xr1, 0
	movgr2fr.d	$ft11, $a1
	xvpickve2gr.d	$a1, $xr1, 1
	movgr2fr.d	$ft9, $a1
	xvpickve2gr.d	$a1, $xr1, 2
	movgr2fr.d	$ft8, $a1
	xvpickve2gr.d	$a1, $xr1, 3
	movgr2fr.d	$ft7, $a1
	xvld	$xr1, $sp, 1344                 # 32-byte Folded Reload
	xvpickve2gr.d	$a1, $xr1, 0
	movgr2fr.d	$ft6, $a1
	xvpickve2gr.d	$a1, $xr1, 1
	movgr2fr.d	$ft5, $a1
	xvpickve2gr.d	$a1, $xr1, 2
	movgr2fr.d	$ft4, $a1
	xvpickve2gr.d	$a1, $xr1, 3
	movgr2fr.d	$ft3, $a1
	xvld	$xr1, $sp, 1136                 # 32-byte Folded Reload
	xvpickve2gr.d	$a1, $xr1, 0
	movgr2fr.d	$ft2, $a1
	xvpickve2gr.d	$a1, $xr1, 1
	movgr2fr.d	$ft1, $a1
	xvpickve2gr.d	$a1, $xr1, 2
	movgr2fr.d	$fa7, $a1
	xvpickve2gr.d	$a1, $xr1, 3
	movgr2fr.d	$ft0, $a1
	move	$a1, $a2
	ori	$a2, $zero, 3960
	add.d	$t4, $sp, $a2
	fld.d	$fa6, $sp, 968                  # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_9:                                # %for.cond276.preheader
                                        #   Parent Loop BB1_5 Depth=1
                                        #     Parent Loop BB1_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $a1, -64
	fld.d	$fa2, $a1, -56
	fmadd.d	$fa1, $fa1, $ft14, $fs2
	fmadd.d	$fa1, $fa2, $ft13, $fa1
	fld.d	$fa2, $a1, -48
	fld.d	$fa3, $a1, -40
	fld.d	$fa4, $a1, -32
	fld.d	$fa5, $a1, -24
	fmadd.d	$fa1, $fa2, $ft12, $fa1
	fmadd.d	$fa1, $fa3, $ft10, $fa1
	fmadd.d	$fa1, $fa4, $ft11, $fa1
	fmadd.d	$fa1, $fa5, $ft9, $fa1
	fld.d	$fa2, $a1, -16
	fld.d	$fa3, $a1, -8
	fld.d	$fa4, $a1, 0
	fld.d	$fa5, $a1, 8
	fmadd.d	$fa1, $fa2, $ft8, $fa1
	fmadd.d	$fa1, $fa3, $ft7, $fa1
	fmadd.d	$fa1, $fa4, $ft6, $fa1
	fmadd.d	$fa1, $fa5, $ft5, $fa1
	fld.d	$fa2, $a1, 16
	fld.d	$fa3, $a1, 24
	fld.d	$fa4, $a1, 32
	fld.d	$fa5, $a1, 40
	fmadd.d	$fa1, $fa2, $ft4, $fa1
	fmadd.d	$fa1, $fa3, $ft3, $fa1
	fmadd.d	$fa1, $fa4, $ft2, $fa1
	fmadd.d	$fa1, $fa5, $ft1, $fa1
	fld.d	$fa2, $a1, 48
	fld.d	$fa3, $a1, 56
	fld.d	$fa4, $a1, 64
	fldx.d	$fa5, $a0, $s3
	fmadd.d	$fa1, $fa2, $fa7, $fa1
	fmadd.d	$fa1, $fa3, $ft0, $fa1
	fmadd.d	$fa1, $fa4, $fa6, $fa1
	fmul.d	$fa2, $fa5, $fs2
	fadd.d	$fa1, $fa1, $fa2
	fstx.d	$fa1, $a0, $s3
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 136
	bne	$a0, $s6, .LBB1_9
# %bb.10:                               # %for.cond308.preheader.preheader
                                        #   in Loop: Header=BB1_6 Depth=2
	fst.d	$ft14, $sp, 688                 # 8-byte Folded Spill
	fst.d	$ft13, $sp, 720                 # 8-byte Folded Spill
	fst.d	$ft12, $sp, 760                 # 8-byte Folded Spill
	fst.d	$ft11, $sp, 504                 # 8-byte Folded Spill
	fst.d	$ft10, $sp, 512                 # 8-byte Folded Spill
	fst.d	$ft9, $sp, 768                  # 8-byte Folded Spill
	fst.d	$ft8, $sp, 800                  # 8-byte Folded Spill
	fst.d	$ft7, $sp, 808                  # 8-byte Folded Spill
	fst.d	$ft6, $sp, 520                  # 8-byte Folded Spill
	fst.d	$ft5, $sp, 528                  # 8-byte Folded Spill
	fst.d	$ft4, $sp, 536                  # 8-byte Folded Spill
	fst.d	$ft3, $sp, 544                  # 8-byte Folded Spill
	fst.d	$ft2, $sp, 552                  # 8-byte Folded Spill
	fst.d	$ft1, $sp, 560                  # 8-byte Folded Spill
	fst.d	$ft0, $sp, 568                  # 8-byte Folded Spill
	fst.d	$fa7, $sp, 576                  # 8-byte Folded Spill
	move	$a0, $zero
	move	$a1, $t3
	fld.d	$fa6, $sp, 960                  # 8-byte Folded Reload
	fld.d	$fa7, $sp, 656                  # 8-byte Folded Reload
	fld.d	$ft0, $sp, 624                  # 8-byte Folded Reload
	fld.d	$ft1, $sp, 616                  # 8-byte Folded Reload
	fld.d	$ft2, $sp, 608                  # 8-byte Folded Reload
	fld.d	$ft3, $sp, 600                  # 8-byte Folded Reload
	fld.d	$ft4, $sp, 592                  # 8-byte Folded Reload
	fld.d	$ft5, $sp, 584                  # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_11:                               # %for.cond308.preheader
                                        #   Parent Loop BB1_5 Depth=1
                                        #     Parent Loop BB1_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $a1, -64
	fld.d	$fa2, $a1, -56
	fmadd.d	$fa1, $fa1, $fa7, $fs2
	fmadd.d	$fa1, $fa2, $ft0, $fa1
	fld.d	$fa2, $a1, -48
	fld.d	$fa3, $a1, -40
	fld.d	$fa4, $a1, -32
	fld.d	$fa5, $a1, -24
	fmadd.d	$fa1, $fa2, $ft1, $fa1
	fmadd.d	$fa1, $fa3, $ft2, $fa1
	fmadd.d	$fa1, $fa4, $ft3, $fa1
	fmadd.d	$fa1, $fa5, $ft4, $fa1
	fld.d	$fa2, $a1, -16
	fld.d	$fa3, $a1, -8
	fld.d	$fa4, $a1, 0
	fld.d	$fa5, $a1, 8
	fmadd.d	$fa1, $fa2, $ft5, $fa1
	fmadd.d	$fa1, $fa3, $ft15, $fa1
	fmadd.d	$fa1, $fa4, $fs0, $fa1
	fmadd.d	$fa1, $fa5, $fs1, $fa1
	fld.d	$fa2, $a1, 16
	fld.d	$fa3, $a1, 24
	fld.d	$fa4, $a1, 32
	fld.d	$fa5, $a1, 40
	fmadd.d	$fa1, $fa2, $fs3, $fa1
	fmadd.d	$fa1, $fa3, $fs4, $fa1
	fmadd.d	$fa1, $fa4, $fs5, $fa1
	fmadd.d	$fa1, $fa5, $fs6, $fa1
	fld.d	$fa2, $a1, 48
	fld.d	$fa3, $a1, 56
	fld.d	$fa4, $a1, 64
	fldx.d	$fa5, $a0, $s8
	fmadd.d	$fa1, $fa2, $fs7, $fa1
	fmadd.d	$fa1, $fa3, $fa0, $fa1
	fmadd.d	$fa1, $fa4, $fa6, $fa1
	fmul.d	$fa2, $fa5, $fs2
	fadd.d	$fa1, $fa1, $fa2
	fstx.d	$fa1, $a0, $s8
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 136
	bne	$a0, $s6, .LBB1_11
# %bb.12:                               # %for.body.i.preheader
                                        #   in Loop: Header=BB1_6 Depth=2
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2384
	add.d	$a0, $sp, $a0
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $sp, 944                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa0, $fs2
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2392
	add.d	$a0, $sp, $a0
	fld.d	$fa1, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2400
	add.d	$a0, $sp, $a0
	fld.d	$fa2, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2408
	add.d	$a0, $sp, $a0
	fld.d	$fa3, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2416
	add.d	$a0, $sp, $a0
	fld.d	$fa4, $a0, 0
	fld.d	$fa5, $sp, 936                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa5, $fa1, $fa0
	fld.d	$fa1, $sp, 928                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fld.d	$fa1, $sp, 920                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fld.d	$fa1, $sp, 912                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa4, $fa0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2424
	add.d	$a0, $sp, $a0
	fld.d	$fa1, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2432
	add.d	$a0, $sp, $a0
	fld.d	$fa2, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2440
	add.d	$a0, $sp, $a0
	fld.d	$fa3, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2448
	add.d	$a0, $sp, $a0
	fld.d	$fa4, $a0, 0
	fld.d	$fa5, $sp, 904                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa5, $fa1, $fa0
	fld.d	$fa1, $sp, 896                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fld.d	$fa1, $sp, 888                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fld.d	$fa1, $sp, 880                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa4, $fa0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2456
	add.d	$a0, $sp, $a0
	fld.d	$fa1, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2464
	add.d	$a0, $sp, $a0
	fld.d	$fa2, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2472
	add.d	$a0, $sp, $a0
	fld.d	$fa3, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2480
	add.d	$a0, $sp, $a0
	fld.d	$fa4, $a0, 0
	fld.d	$fa5, $sp, 872                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa5, $fa1, $fa0
	fld.d	$fa1, $sp, 864                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fld.d	$fa1, $sp, 856                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fld.d	$fa1, $sp, 848                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa4, $fa0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2488
	add.d	$a0, $sp, $a0
	fld.d	$fa1, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2496
	add.d	$a0, $sp, $a0
	fld.d	$fa2, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2504
	add.d	$a0, $sp, $a0
	fld.d	$fa3, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2512
	add.d	$a0, $sp, $a0
	fld.d	$fa4, $a0, 0
	fld.d	$fa5, $sp, 840                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa5, $fa1, $fa0
	fld.d	$fa1, $sp, 832                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fld.d	$fa1, $sp, 824                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fld.d	$fa1, $sp, 816                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa4, $fa0
	fcmp.ceq.d	$fcc0, $fa0, $fs2
	ori	$fp, $zero, 1
	fld.d	$ft5, $sp, 808                  # 8-byte Folded Reload
	fld.d	$ft6, $sp, 800                  # 8-byte Folded Reload
	fld.d	$ft7, $sp, 768                  # 8-byte Folded Reload
	fld.d	$ft11, $sp, 760                 # 8-byte Folded Reload
	fld.d	$ft12, $sp, 720                 # 8-byte Folded Reload
	fld.d	$ft13, $sp, 688                 # 8-byte Folded Reload
	bcnez	$fcc0, .LBB1_37
# %bb.13:                               # %if.end339
                                        #   in Loop: Header=BB1_6 Depth=2
	fld.d	$fa1, $sp, 952                  # 8-byte Folded Reload
	fdiv.d	$ft10, $fa1, $fa0
	fclass.d	$fa0, $ft10
	movfr2gr.d	$a0, $fa0
	andi	$a0, $a0, 68
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	bnez	$a0, .LBB1_37
# %bb.14:                               # %for.body.i266.preheader
                                        #   in Loop: Header=BB1_6 Depth=2
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2112
	add.d	$a0, $sp, $a0
	xvld	$xr17, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2248
	add.d	$a0, $sp, $a0
	xvld	$xr0, $a0, 0
	move	$a0, $zero
	xvreplve0.d	$xr16, $xr18
	xvfmul.d	$xr1, $xr16, $xr17
	xvfsub.d	$xr0, $xr0, $xr1
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3184
	add.d	$a1, $sp, $a1
	xvst	$xr0, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2144
	add.d	$a1, $sp, $a1
	fld.d	$fa0, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2280
	add.d	$a1, $sp, $a1
	fld.d	$fa1, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2152
	add.d	$a1, $sp, $a1
	fld.d	$fa2, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2288
	add.d	$a1, $sp, $a1
	fld.d	$fa3, $a1, 0
	fmul.d	$fa0, $ft10, $fa0
	fsub.d	$ft9, $fa1, $fa0
	fmul.d	$fa0, $ft10, $fa2
	fsub.d	$ft14, $fa3, $fa0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2160
	add.d	$a1, $sp, $a1
	fld.d	$fa0, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2296
	add.d	$a1, $sp, $a1
	fld.d	$fa1, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2168
	add.d	$a1, $sp, $a1
	fld.d	$fa2, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2304
	add.d	$a1, $sp, $a1
	fld.d	$fa3, $a1, 0
	fmul.d	$fa0, $ft10, $fa0
	fsub.d	$ft15, $fa1, $fa0
	fmul.d	$fa0, $ft10, $fa2
	fsub.d	$fa5, $fa3, $fa0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2176
	add.d	$a1, $sp, $a1
	fld.d	$fa0, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2312
	add.d	$a1, $sp, $a1
	fld.d	$fa1, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2184
	add.d	$a1, $sp, $a1
	fld.d	$fa2, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2320
	add.d	$a1, $sp, $a1
	fld.d	$fa3, $a1, 0
	fmul.d	$fa0, $ft10, $fa0
	fsub.d	$fa7, $fa1, $fa0
	fmul.d	$fa0, $ft10, $fa2
	fsub.d	$ft0, $fa3, $fa0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2192
	add.d	$a1, $sp, $a1
	fld.d	$fa0, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2328
	add.d	$a1, $sp, $a1
	fld.d	$fa1, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2200
	add.d	$a1, $sp, $a1
	fld.d	$fa2, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2336
	add.d	$a1, $sp, $a1
	fld.d	$fa3, $a1, 0
	fmul.d	$fa0, $ft10, $fa0
	fsub.d	$ft1, $fa1, $fa0
	fmul.d	$fa0, $ft10, $fa2
	fsub.d	$ft2, $fa3, $fa0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2208
	add.d	$a1, $sp, $a1
	fld.d	$fa0, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2344
	add.d	$a1, $sp, $a1
	fld.d	$fa1, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2216
	add.d	$a1, $sp, $a1
	fld.d	$fa2, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2352
	add.d	$a1, $sp, $a1
	fld.d	$fa3, $a1, 0
	fmul.d	$fa0, $ft10, $fa0
	fsub.d	$ft3, $fa1, $fa0
	fmul.d	$fa0, $ft10, $fa2
	fsub.d	$ft4, $fa3, $fa0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2224
	add.d	$a1, $sp, $a1
	fld.d	$fa0, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2360
	add.d	$a1, $sp, $a1
	fld.d	$fa1, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2232
	add.d	$a1, $sp, $a1
	fld.d	$fa2, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2368
	add.d	$a1, $sp, $a1
	fld.d	$fa3, $a1, 0
	fmul.d	$fa0, $ft10, $fa0
	fsub.d	$fs5, $fa1, $fa0
	fmul.d	$fa0, $ft10, $fa2
	fsub.d	$fs3, $fa3, $fa0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2376
	add.d	$a1, $sp, $a1
	fld.d	$fa0, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2240
	add.d	$a1, $sp, $a1
	fld.d	$fa1, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3184
	add.d	$a1, $sp, $a1
	fld.d	$fs4, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3192
	add.d	$a1, $sp, $a1
	fld.d	$fs6, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3200
	add.d	$a1, $sp, $a1
	fld.d	$fs7, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3208
	add.d	$a1, $sp, $a1
	fld.d	$fs0, $a1, 0
	fmul.d	$fa1, $ft10, $fa1
	fsub.d	$fs1, $fa0, $fa1
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3216
	add.d	$a1, $sp, $a1
	fst.d	$ft9, $a1, 0
	move	$a1, $t4
	.p2align	4, , 16
.LBB1_15:                               # %for.cond356.preheader
                                        #   Parent Loop BB1_5 Depth=1
                                        #     Parent Loop BB1_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $a1, -64
	fld.d	$fa1, $a1, -56
	fmadd.d	$fa0, $fa0, $fs4, $fs2
	fmadd.d	$fa0, $fa1, $fs6, $fa0
	fld.d	$fa1, $a1, -48
	fld.d	$fa2, $a1, -40
	fld.d	$fa3, $a1, -32
	fld.d	$fa4, $a1, -24
	fmadd.d	$fa0, $fa1, $fs7, $fa0
	fmadd.d	$fa0, $fa2, $fs0, $fa0
	fmadd.d	$fa0, $fa3, $ft9, $fa0
	fmadd.d	$fa0, $fa4, $ft14, $fa0
	fld.d	$fa1, $a1, -16
	fld.d	$fa2, $a1, -8
	fld.d	$fa3, $a1, 0
	fld.d	$fa4, $a1, 8
	fmadd.d	$fa0, $fa1, $ft15, $fa0
	fmadd.d	$fa0, $fa2, $fa5, $fa0
	fmadd.d	$fa0, $fa3, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	fld.d	$fa1, $a1, 16
	fld.d	$fa2, $a1, 24
	fld.d	$fa3, $a1, 32
	fld.d	$fa4, $a1, 40
	fmadd.d	$fa0, $fa1, $ft1, $fa0
	fmadd.d	$fa0, $fa2, $ft2, $fa0
	fmadd.d	$fa0, $fa3, $ft3, $fa0
	fmadd.d	$fa0, $fa4, $ft4, $fa0
	fld.d	$fa1, $a1, 48
	fld.d	$fa2, $a1, 56
	fld.d	$fa3, $a1, 64
	fldx.d	$fa4, $a0, $s2
	fmadd.d	$fa0, $fa1, $fs5, $fa0
	fmadd.d	$fa0, $fa2, $fs3, $fa0
	fmadd.d	$fa0, $fa3, $fs1, $fa0
	fmul.d	$fa1, $fa4, $fs2
	fadd.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $a0, $s2
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 136
	bne	$a0, $s6, .LBB1_15
# %bb.16:                               # %for.body.i272.preheader
                                        #   in Loop: Header=BB1_6 Depth=2
	fst.d	$ft4, $sp, 584                  # 8-byte Folded Spill
	fst.d	$ft3, $sp, 592                  # 8-byte Folded Spill
	fst.d	$ft2, $sp, 600                  # 8-byte Folded Spill
	fst.d	$ft1, $sp, 608                  # 8-byte Folded Spill
	fst.d	$ft0, $sp, 616                  # 8-byte Folded Spill
	fst.d	$fa7, $sp, 624                  # 8-byte Folded Spill
	fst.d	$fa5, $sp, 656                  # 8-byte Folded Spill
	fst.d	$ft15, $sp, 480                 # 8-byte Folded Spill
	fst.d	$ft14, $sp, 488                 # 8-byte Folded Spill
	fst.d	$ft9, $sp, 496                  # 8-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2384
	add.d	$a0, $sp, $a0
	fld.d	$fa0, $a0, 0
	move	$a0, $zero
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2392
	add.d	$a1, $sp, $a1
	fld.d	$fa1, $a1, 0
	fmul.d	$fa0, $ft10, $fa0
	fsub.d	$fa0, $ft13, $fa0
	fst.d	$fa0, $sp, 464                  # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2400
	add.d	$a1, $sp, $a1
	fld.d	$fa0, $a1, 0
	fmul.d	$fa1, $ft10, $fa1
	fsub.d	$fa1, $ft12, $fa1
	fst.d	$fa1, $sp, 456                  # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2408
	add.d	$a1, $sp, $a1
	fld.d	$fa1, $a1, 0
	fmul.d	$fa0, $ft10, $fa0
	fsub.d	$fa0, $ft11, $fa0
	fst.d	$fa0, $sp, 448                  # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2416
	add.d	$a1, $sp, $a1
	fld.d	$fa0, $a1, 0
	fmul.d	$fa1, $ft10, $fa1
	fld.d	$fa2, $sp, 512                  # 8-byte Folded Reload
	fsub.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $sp, 440                  # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2424
	add.d	$a1, $sp, $a1
	fld.d	$fa1, $a1, 0
	fmul.d	$fa0, $ft10, $fa0
	fld.d	$fa2, $sp, 504                  # 8-byte Folded Reload
	fsub.d	$fa0, $fa2, $fa0
	fst.d	$fa0, $sp, 432                  # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2432
	add.d	$a1, $sp, $a1
	fld.d	$fa0, $a1, 0
	fmul.d	$fa1, $ft10, $fa1
	fsub.d	$fa1, $ft7, $fa1
	fst.d	$fa1, $sp, 424                  # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2440
	add.d	$a1, $sp, $a1
	fld.d	$fa1, $a1, 0
	fmul.d	$fa0, $ft10, $fa0
	fsub.d	$fa0, $ft6, $fa0
	fst.d	$fa0, $sp, 416                  # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2448
	add.d	$a1, $sp, $a1
	fld.d	$fa0, $a1, 0
	fmul.d	$fa1, $ft10, $fa1
	fsub.d	$fa1, $ft5, $fa1
	fst.d	$fa1, $sp, 408                  # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2456
	add.d	$a1, $sp, $a1
	fld.d	$fa1, $a1, 0
	fmul.d	$fa0, $ft10, $fa0
	fld.d	$fa2, $sp, 520                  # 8-byte Folded Reload
	fsub.d	$fa0, $fa2, $fa0
	fst.d	$fa0, $sp, 400                  # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2464
	add.d	$a1, $sp, $a1
	fld.d	$fa0, $a1, 0
	fmul.d	$fa1, $ft10, $fa1
	fld.d	$fa2, $sp, 528                  # 8-byte Folded Reload
	fsub.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $sp, 392                  # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2472
	add.d	$a1, $sp, $a1
	fld.d	$fa1, $a1, 0
	fmul.d	$fa0, $ft10, $fa0
	fld.d	$fa2, $sp, 536                  # 8-byte Folded Reload
	fsub.d	$fa0, $fa2, $fa0
	fst.d	$fa0, $sp, 384                  # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2480
	add.d	$a1, $sp, $a1
	fld.d	$fa0, $a1, 0
	fmul.d	$fa1, $ft10, $fa1
	fld.d	$fa2, $sp, 544                  # 8-byte Folded Reload
	fsub.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $sp, 376                  # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2488
	add.d	$a1, $sp, $a1
	fld.d	$fa1, $a1, 0
	fmul.d	$fa0, $ft10, $fa0
	fld.d	$fa2, $sp, 552                  # 8-byte Folded Reload
	fsub.d	$fa0, $fa2, $fa0
	fst.d	$fa0, $sp, 368                  # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2496
	add.d	$a1, $sp, $a1
	fld.d	$fa0, $a1, 0
	fmul.d	$fa1, $ft10, $fa1
	fld.d	$fa2, $sp, 560                  # 8-byte Folded Reload
	fsub.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $sp, 360                  # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2504
	add.d	$a1, $sp, $a1
	fld.d	$fa1, $a1, 0
	fmul.d	$fa0, $ft10, $fa0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2512
	add.d	$a1, $sp, $a1
	fld.d	$fa2, $a1, 0
	fld.d	$fa3, $sp, 576                  # 8-byte Folded Reload
	fsub.d	$fa0, $fa3, $fa0
	fst.d	$fa0, $sp, 352                  # 8-byte Folded Spill
	fmul.d	$fa0, $ft10, $fa1
	fld.d	$fa1, $sp, 568                  # 8-byte Folded Reload
	fsub.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 344                  # 8-byte Folded Spill
	fmul.d	$fa0, $ft10, $fa2
	fld.d	$ft14, $sp, 968                 # 8-byte Folded Reload
	fsub.d	$fa0, $ft14, $fa0
	fst.d	$fa0, $sp, 336                  # 8-byte Folded Spill
	fmul.d	$fa0, $ft10, $fa6
	fld.d	$fa1, $sp, 1176                 # 8-byte Folded Reload
	fadd.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $sp, 1176                 # 8-byte Folded Spill
	xvreplve0.d	$xr4, $xr18
	xvld	$xr0, $sp, 1072                 # 32-byte Folded Reload
	xvfmul.d	$xr0, $xr4, $xr0
	xvld	$xr1, $sp, 976                  # 32-byte Folded Reload
	xvfmul.d	$xr1, $xr4, $xr1
	xvld	$xr2, $sp, 1008                 # 32-byte Folded Reload
	xvfmul.d	$xr2, $xr4, $xr2
	xvld	$xr3, $sp, 1040                 # 32-byte Folded Reload
	xvst	$xr4, $sp, 256                  # 32-byte Folded Spill
	xvfmul.d	$xr3, $xr4, $xr3
	xvld	$xr4, $sp, 1248                 # 32-byte Folded Reload
	xvfadd.d	$xr4, $xr4, $xr3
	xvst	$xr4, $sp, 1248                 # 32-byte Folded Spill
	xvld	$xr3, $sp, 1216                 # 32-byte Folded Reload
	xvfadd.d	$xr3, $xr3, $xr2
	xvst	$xr3, $sp, 1216                 # 32-byte Folded Spill
	xvld	$xr2, $sp, 1184                 # 32-byte Folded Reload
	xvfadd.d	$xr2, $xr2, $xr1
	xvst	$xr2, $sp, 1184                 # 32-byte Folded Spill
	xvld	$xr1, $sp, 1280                 # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr0
	xvst	$xr1, $sp, 1280                 # 32-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2384
	add.d	$a1, $sp, $a1
	xvld	$xr0, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2480
	add.d	$a1, $sp, $a1
	xvld	$xr3, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2448
	add.d	$a1, $sp, $a1
	xvld	$xr5, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2416
	add.d	$a1, $sp, $a1
	xvld	$xr2, $a1, 0
	xvst	$xr0, $sp, 192                  # 32-byte Folded Spill
	xvfmul.d	$xr0, $xr16, $xr0
	xvld	$xr1, $sp, 1104                 # 32-byte Folded Reload
	xvfsub.d	$xr1, $xr1, $xr0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3184
	add.d	$a1, $sp, $a1
	xvst	$xr1, $a1, 0
	xvst	$xr2, $sp, 128                  # 32-byte Folded Spill
	xvfmul.d	$xr0, $xr16, $xr2
	xvld	$xr2, $sp, 1312                 # 32-byte Folded Reload
	xvfsub.d	$xr4, $xr2, $xr0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3216
	add.d	$a1, $sp, $a1
	xvst	$xr4, $a1, 0
	xvst	$xr5, $sp, 160                  # 32-byte Folded Spill
	xvfmul.d	$xr0, $xr16, $xr5
	xvld	$xr2, $sp, 1344                 # 32-byte Folded Reload
	xvfsub.d	$xr5, $xr2, $xr0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3248
	add.d	$a1, $sp, $a1
	xvst	$xr5, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2512
	add.d	$a1, $sp, $a1
	fld.d	$fa2, $a1, 0
	xvst	$xr3, $sp, 224                  # 32-byte Folded Spill
	xvfmul.d	$xr0, $xr16, $xr3
	xvld	$xr23, $sp, 1136                # 32-byte Folded Reload
	xvfsub.d	$xr6, $xr23, $xr0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3280
	add.d	$a1, $sp, $a1
	xvst	$xr6, $a1, 0
	xvst	$xr18, $sp, 288                 # 32-byte Folded Spill
	fst.d	$fa2, $sp, 120                  # 8-byte Folded Spill
	fmul.d	$fa0, $ft10, $fa2
	fsub.d	$fa0, $ft14, $fa0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 3312
	add.d	$a1, $sp, $a1
	fst.d	$fa0, $a1, 0
	xvpickve2gr.d	$a1, $xr1, 0
	movgr2fr.d	$ft3, $a1
	xvpickve2gr.d	$a1, $xr1, 1
	movgr2fr.d	$fa2, $a1
	xvpickve2gr.d	$a1, $xr1, 2
	movgr2fr.d	$fa3, $a1
	xvpickve2gr.d	$a1, $xr1, 3
	movgr2fr.d	$ft0, $a1
	xvpickve2gr.d	$a1, $xr4, 0
	movgr2fr.d	$ft1, $a1
	xvpickve2gr.d	$a1, $xr4, 1
	xvpickve2gr.d	$a2, $xr4, 2
	xvpickve2gr.d	$a3, $xr4, 3
	movgr2fr.d	$fa1, $a1
	xvpickve2gr.d	$a4, $xr5, 0
	xvpickve2gr.d	$a5, $xr5, 1
	xvpickve2gr.d	$a6, $xr5, 2
	xvpickve2gr.d	$a7, $xr5, 3
	movgr2fr.d	$ft2, $a2
	xvpickve2gr.d	$a2, $xr6, 0
	xvpickve2gr.d	$t0, $xr6, 1
	xvpickve2gr.d	$t1, $xr6, 2
	xvpickve2gr.d	$t2, $xr6, 3
	movgr2fr.d	$ft4, $a3
	move	$a1, $t4
	movgr2fr.d	$ft5, $a4
	movgr2fr.d	$fa4, $a5
	movgr2fr.d	$fa5, $a6
	movgr2fr.d	$fa6, $a7
	movgr2fr.d	$fa7, $a2
	lu12i.w	$a2, 2
	ori	$a2, $a2, 3048
	add.d	$a2, $sp, $a2
	fld.d	$ft6, $a2, 0
	fst.d	$ft6, $sp, 808                  # 8-byte Folded Spill
	lu12i.w	$a2, 2
	ori	$a2, $a2, 3056
	add.d	$a2, $sp, $a2
	fld.d	$ft6, $a2, 0
	fst.d	$ft6, $sp, 800                  # 8-byte Folded Spill
	lu12i.w	$a2, 2
	ori	$a2, $a2, 3064
	add.d	$a2, $sp, $a2
	fld.d	$ft6, $a2, 0
	fst.d	$ft6, $sp, 768                  # 8-byte Folded Spill
	lu12i.w	$a2, 2
	ori	$a2, $a2, 3072
	add.d	$a2, $sp, $a2
	fld.d	$ft6, $a2, 0
	fst.d	$ft6, $sp, 760                  # 8-byte Folded Spill
	lu12i.w	$a2, 2
	ori	$a2, $a2, 3080
	add.d	$a2, $sp, $a2
	fld.d	$ft6, $a2, 0
	fst.d	$ft6, $sp, 720                  # 8-byte Folded Spill
	lu12i.w	$a2, 2
	ori	$a2, $a2, 3088
	add.d	$a2, $sp, $a2
	fld.d	$ft6, $a2, 0
	fst.d	$ft6, $sp, 688                  # 8-byte Folded Spill
	lu12i.w	$a2, 2
	ori	$a2, $a2, 3096
	add.d	$a2, $sp, $a2
	fld.d	$ft6, $a2, 0
	fst.d	$ft6, $sp, 576                  # 8-byte Folded Spill
	lu12i.w	$a2, 2
	ori	$a2, $a2, 3104
	add.d	$a2, $sp, $a2
	fld.d	$ft6, $a2, 0
	fst.d	$ft6, $sp, 568                  # 8-byte Folded Spill
	lu12i.w	$a2, 2
	ori	$a2, $a2, 3112
	add.d	$a2, $sp, $a2
	fld.d	$ft6, $a2, 0
	fst.d	$ft6, $sp, 560                  # 8-byte Folded Spill
	lu12i.w	$a2, 2
	ori	$a2, $a2, 3120
	add.d	$a2, $sp, $a2
	fld.d	$ft6, $a2, 0
	fst.d	$ft6, $sp, 552                  # 8-byte Folded Spill
	lu12i.w	$a2, 2
	ori	$a2, $a2, 3128
	add.d	$a2, $sp, $a2
	fld.d	$ft6, $a2, 0
	fst.d	$ft6, $sp, 544                  # 8-byte Folded Spill
	lu12i.w	$a2, 2
	ori	$a2, $a2, 3136
	add.d	$a2, $sp, $a2
	fld.d	$ft6, $a2, 0
	fst.d	$ft6, $sp, 536                  # 8-byte Folded Spill
	lu12i.w	$a2, 2
	ori	$a2, $a2, 3144
	add.d	$a2, $sp, $a2
	fld.d	$ft6, $a2, 0
	fst.d	$ft6, $sp, 528                  # 8-byte Folded Spill
	lu12i.w	$a2, 2
	ori	$a2, $a2, 3152
	add.d	$a2, $sp, $a2
	fld.d	$ft6, $a2, 0
	fst.d	$ft6, $sp, 520                  # 8-byte Folded Spill
	lu12i.w	$a2, 2
	ori	$a2, $a2, 3160
	add.d	$a2, $sp, $a2
	fld.d	$ft6, $a2, 0
	fst.d	$ft6, $sp, 512                  # 8-byte Folded Spill
	lu12i.w	$a2, 2
	ori	$a2, $a2, 3168
	add.d	$a2, $sp, $a2
	fld.d	$ft6, $a2, 0
	fst.d	$ft6, $sp, 504                  # 8-byte Folded Spill
	lu12i.w	$a2, 2
	ori	$a2, $a2, 3176
	add.d	$a2, $sp, $a2
	fld.d	$ft6, $a2, 0
	fst.d	$ft6, $sp, 472                  # 8-byte Folded Spill
	movgr2fr.d	$ft6, $t0
	movgr2fr.d	$ft7, $t1
	movgr2fr.d	$ft8, $t2
	.p2align	4, , 16
.LBB1_17:                               # %for.cond415.preheader
                                        #   Parent Loop BB1_5 Depth=1
                                        #     Parent Loop BB1_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$ft9, $a1, -64
	fld.d	$ft10, $a1, -56
	fmadd.d	$ft9, $ft9, $ft3, $fs2
	fmadd.d	$ft9, $ft10, $fa2, $ft9
	fld.d	$ft10, $a1, -48
	fld.d	$ft11, $a1, -40
	fld.d	$ft12, $a1, -32
	fld.d	$ft13, $a1, -24
	fmadd.d	$ft9, $ft10, $fa3, $ft9
	fmadd.d	$ft9, $ft11, $ft0, $ft9
	fmadd.d	$ft9, $ft12, $ft1, $ft9
	fmadd.d	$ft9, $ft13, $fa1, $ft9
	fld.d	$ft10, $a1, -16
	fld.d	$ft11, $a1, -8
	fld.d	$ft12, $a1, 0
	fld.d	$ft13, $a1, 8
	fmadd.d	$ft9, $ft10, $ft2, $ft9
	fmadd.d	$ft9, $ft11, $ft4, $ft9
	fmadd.d	$ft9, $ft12, $ft5, $ft9
	fmadd.d	$ft9, $ft13, $fa4, $ft9
	fld.d	$ft10, $a1, 16
	fld.d	$ft11, $a1, 24
	fld.d	$ft12, $a1, 32
	fld.d	$ft13, $a1, 40
	fmadd.d	$ft9, $ft10, $fa5, $ft9
	fmadd.d	$ft9, $ft11, $fa6, $ft9
	fmadd.d	$ft9, $ft12, $fa7, $ft9
	fmadd.d	$ft9, $ft13, $ft6, $ft9
	fld.d	$ft10, $a1, 48
	fld.d	$ft11, $a1, 56
	fld.d	$ft12, $a1, 64
	fldx.d	$ft13, $a0, $s2
	fmadd.d	$ft9, $ft10, $ft7, $ft9
	fmadd.d	$ft9, $ft11, $ft8, $ft9
	fmadd.d	$ft9, $ft12, $fa0, $ft9
	fmul.d	$ft10, $ft13, $fs2
	fadd.d	$ft9, $ft9, $ft10
	fstx.d	$ft9, $a0, $s2
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 136
	bne	$a0, $s6, .LBB1_17
# %bb.18:                               # %for.body.i315.preheader
                                        #   in Loop: Header=BB1_6 Depth=2
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3048
	add.d	$a0, $sp, $a0
	fld.d	$ft9, $a0, 0
	fmadd.d	$ft3, $ft3, $ft9, $fs2
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3056
	add.d	$a0, $sp, $a0
	fld.d	$ft9, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3064
	add.d	$a0, $sp, $a0
	fld.d	$ft10, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3072
	add.d	$a0, $sp, $a0
	fld.d	$ft11, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3080
	add.d	$a0, $sp, $a0
	fld.d	$ft12, $a0, 0
	fmadd.d	$fa2, $fa2, $ft9, $ft3
	fmadd.d	$fa2, $fa3, $ft10, $fa2
	fmadd.d	$fa2, $ft0, $ft11, $fa2
	fmadd.d	$fa2, $ft1, $ft12, $fa2
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3088
	add.d	$a0, $sp, $a0
	fld.d	$fa3, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3096
	add.d	$a0, $sp, $a0
	fld.d	$ft0, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3104
	add.d	$a0, $sp, $a0
	fld.d	$ft1, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3112
	add.d	$a0, $sp, $a0
	fld.d	$ft3, $a0, 0
	fmadd.d	$fa1, $fa1, $fa3, $fa2
	fmadd.d	$fa1, $ft2, $ft0, $fa1
	fmadd.d	$fa1, $ft4, $ft1, $fa1
	fmadd.d	$fa1, $ft5, $ft3, $fa1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3120
	add.d	$a0, $sp, $a0
	fld.d	$fa2, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3128
	add.d	$a0, $sp, $a0
	fld.d	$fa3, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3136
	add.d	$a0, $sp, $a0
	fld.d	$ft0, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3144
	add.d	$a0, $sp, $a0
	fld.d	$ft1, $a0, 0
	fmadd.d	$fa1, $fa4, $fa2, $fa1
	fmadd.d	$fa1, $fa5, $fa3, $fa1
	fmadd.d	$fa1, $fa6, $ft0, $fa1
	fmadd.d	$fa1, $fa7, $ft1, $fa1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3152
	add.d	$a0, $sp, $a0
	fld.d	$fa2, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3160
	add.d	$a0, $sp, $a0
	fld.d	$fa3, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3168
	add.d	$a0, $sp, $a0
	fld.d	$fa4, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3176
	add.d	$a0, $sp, $a0
	fld.d	$fa5, $a0, 0
	fmadd.d	$fa1, $ft6, $fa2, $fa1
	fmadd.d	$fa1, $ft7, $fa3, $fa1
	fmadd.d	$fa1, $ft8, $fa4, $fa1
	fmadd.d	$fa0, $fa0, $fa5, $fa1
	fcmp.clt.d	$fcc0, $fa0, $fs2
	fmov.d	$fa1, $fs2
	bcnez	$fcc0, .LBB1_20
# %bb.19:                               # %if.else
                                        #   in Loop: Header=BB1_6 Depth=2
	fsqrt.d	$fa1, $fa0
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bceqz	$fcc0, .LBB1_32
.LBB1_20:                               # %if.end447
                                        #   in Loop: Header=BB1_6 Depth=2
	fld.d	$fa0, $sp, 328                  # 8-byte Folded Reload
	fcmp.clt.d	$fcc0, $fa1, $fa0
	fld.d	$fa2, $sp, 656                  # 8-byte Folded Reload
	fld.d	$fa3, $sp, 624                  # 8-byte Folded Reload
	fld.d	$fa4, $sp, 616                  # 8-byte Folded Reload
	fld.d	$fa5, $sp, 608                  # 8-byte Folded Reload
	fld.d	$fa6, $sp, 600                  # 8-byte Folded Reload
	fld.d	$fa7, $sp, 592                  # 8-byte Folded Reload
	fld.d	$ft0, $sp, 584                  # 8-byte Folded Reload
	bcnez	$fcc0, .LBB1_35
# %bb.21:                               # %if.end451
                                        #   in Loop: Header=BB1_6 Depth=2
	fld.d	$ft1, $sp, 808                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fs4, $ft1, $fs2
	fld.d	$ft2, $sp, 800                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fs6, $ft2, $fa0
	fld.d	$ft3, $sp, 768                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fs7, $ft3, $fa0
	fld.d	$ft4, $sp, 760                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fs0, $ft4, $fa0
	fld.d	$fa1, $sp, 496                  # 8-byte Folded Reload
	fld.d	$ft5, $sp, 720                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $ft5, $fa0
	fld.d	$fa1, $sp, 488                  # 8-byte Folded Reload
	fld.d	$ft6, $sp, 688                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $ft6, $fa0
	fld.d	$fa1, $sp, 480                  # 8-byte Folded Reload
	fld.d	$ft7, $sp, 576                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $ft7, $fa0
	fld.d	$ft8, $sp, 568                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $ft8, $fa0
	fld.d	$ft9, $sp, 560                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa3, $ft9, $fa0
	fld.d	$fa1, $sp, 552                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa4, $fa1, $fa0
	fmov.d	$fa4, $fa1
	fld.d	$fa1, $sp, 544                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa5, $fa1, $fa0
	fmov.d	$fa5, $fa1
	fld.d	$fa1, $sp, 536                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa6, $fa1, $fa0
	fmov.d	$fa6, $fa1
	fld.d	$fa1, $sp, 528                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa7, $fa1, $fa0
	fmov.d	$fa7, $fa1
	fld.d	$fa1, $sp, 520                  # 8-byte Folded Reload
	fmadd.d	$fa0, $ft0, $fa1, $fa0
	fmov.d	$ft0, $fa1
	fld.d	$ft10, $sp, 512                 # 8-byte Folded Reload
	fmadd.d	$fa0, $fs5, $ft10, $fa0
	fld.d	$ft11, $sp, 504                 # 8-byte Folded Reload
	fmadd.d	$fa0, $fs3, $ft11, $fa0
	fld.d	$ft12, $sp, 472                 # 8-byte Folded Reload
	fmadd.d	$fa1, $fs1, $ft12, $fa0
	movgr2fr.d	$fa0, $zero
	fcmp.ceq.d	$fcc0, $fa1, $fa0
	ori	$fp, $zero, 1
	bcnez	$fcc0, .LBB1_37
# %bb.22:                               # %if.end454
                                        #   in Loop: Header=BB1_6 Depth=2
	fld.d	$fa2, $sp, 464                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fa2, $ft1, $fs2
	fld.d	$fa3, $sp, 456                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fa3, $ft2, $fa2
	fld.d	$fa3, $sp, 448                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fa3, $ft3, $fa2
	fld.d	$fa3, $sp, 440                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fa3, $ft4, $fa2
	fld.d	$fa3, $sp, 432                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fa3, $ft5, $fa2
	fld.d	$fa3, $sp, 424                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fa3, $ft6, $fa2
	fld.d	$fa3, $sp, 416                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fa3, $ft7, $fa2
	fld.d	$fa3, $sp, 408                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fa3, $ft8, $fa2
	fld.d	$fa3, $sp, 400                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fa3, $ft9, $fa2
	fld.d	$fa3, $sp, 392                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fa3, $fa4, $fa2
	fld.d	$fa3, $sp, 384                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fa3, $fa5, $fa2
	fld.d	$fa3, $sp, 376                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fa3, $fa6, $fa2
	fld.d	$fa3, $sp, 368                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fa3, $fa7, $fa2
	fld.d	$fa3, $sp, 360                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fa3, $ft0, $fa2
	fld.d	$fa3, $sp, 352                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fa3, $ft10, $fa2
	fld.d	$fa3, $sp, 344                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fa3, $ft11, $fa2
	fld.d	$fa3, $sp, 336                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fa3, $ft12, $fa2
	fdiv.d	$ft8, $fa2, $fa1
	fclass.d	$fa1, $ft8
	movfr2gr.d	$a0, $fa1
	andi	$a0, $a0, 68
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	bnez	$a0, .LBB1_37
# %bb.23:                               # %for.body.i323.preheader
                                        #   in Loop: Header=BB1_6 Depth=2
	move	$a0, $zero
	fmul.d	$fa1, $ft8, $ft14
	fld.d	$fa2, $sp, 1176                 # 8-byte Folded Reload
	fadd.d	$fa1, $fa2, $fa1
	fneg.d	$ft10, $ft8
	xvld	$xr15, $sp, 288                 # 32-byte Folded Reload
	fmul.d	$fa2, $ft7, $ft10
	xvreplve0.d	$xr3, $xr16
	xvfmul.d	$xr4, $xr3, $xr23
	xvld	$xr12, $sp, 1344                # 32-byte Folded Reload
	xvfmul.d	$xr5, $xr3, $xr12
	xvld	$xr13, $sp, 1312                # 32-byte Folded Reload
	xvfmul.d	$xr6, $xr3, $xr13
	xvld	$xr14, $sp, 1104                # 32-byte Folded Reload
	xvfmul.d	$xr7, $xr3, $xr14
	xvld	$xr8, $sp, 1184                 # 32-byte Folded Reload
	xvfadd.d	$xr7, $xr8, $xr7
	xvld	$xr8, $sp, 1216                 # 32-byte Folded Reload
	xvfadd.d	$xr6, $xr8, $xr6
	xvld	$xr8, $sp, 1248                 # 32-byte Folded Reload
	xvfadd.d	$xr5, $xr8, $xr5
	xvld	$xr8, $sp, 1280                 # 32-byte Folded Reload
	xvfadd.d	$xr4, $xr8, $xr4
	xvreplve0.d	$xr8, $xr2
	xvld	$xr9, $sp, 192                  # 32-byte Folded Reload
	xvfmul.d	$xr9, $xr8, $xr9
	xvld	$xr10, $sp, 128                 # 32-byte Folded Reload
	xvfmul.d	$xr10, $xr8, $xr10
	xvld	$xr11, $sp, 160                 # 32-byte Folded Reload
	xvfmul.d	$xr11, $xr8, $xr11
	xvld	$xr17, $sp, 224                 # 32-byte Folded Reload
	xvfmul.d	$xr8, $xr8, $xr17
	xvfadd.d	$xr4, $xr4, $xr8
	xvst	$xr4, $sp, 1280                 # 32-byte Folded Spill
	xvfadd.d	$xr4, $xr5, $xr11
	xvst	$xr4, $sp, 1248                 # 32-byte Folded Spill
	xvfadd.d	$xr4, $xr6, $xr10
	xvst	$xr4, $sp, 1216                 # 32-byte Folded Spill
	xvfadd.d	$xr4, $xr7, $xr9
	xvst	$xr4, $sp, 1184                 # 32-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2376
	add.d	$a1, $sp, $a1
	fld.d	$fa4, $a1, 0
	fld.d	$fa5, $sp, 120                  # 8-byte Folded Reload
	fmul.d	$fa2, $fa2, $fa5
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2512
	add.d	$a1, $sp, $a1
	fld.d	$fa5, $a1, 0
	fadd.d	$fa1, $fa1, $fa2
	fst.d	$fa1, $sp, 1176                 # 8-byte Folded Spill
	fmul.d	$fa1, $ft8, $fa4
	fsub.d	$fa1, $ft14, $fa1
	fst.d	$fa5, $sp, 800                  # 8-byte Folded Spill
	fmul.d	$fa2, $ft7, $fa5
	fsub.d	$fa1, $fa1, $fa2
	fmul.d	$fa2, $ft7, $ft8
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2248
	add.d	$a1, $sp, $a1
	xvld	$xr4, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2280
	add.d	$a1, $sp, $a1
	xvld	$xr5, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2312
	add.d	$a1, $sp, $a1
	xvld	$xr6, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2344
	add.d	$a1, $sp, $a1
	xvld	$xr7, $a1, 0
	xvfmul.d	$xr4, $xr3, $xr4
	xvfmul.d	$xr5, $xr3, $xr5
	xvfmul.d	$xr6, $xr3, $xr6
	xvfmul.d	$xr3, $xr3, $xr7
	xvfsub.d	$xr3, $xr23, $xr3
	xvfsub.d	$xr6, $xr12, $xr6
	xvfsub.d	$xr5, $xr13, $xr5
	xvfsub.d	$xr4, $xr14, $xr4
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2480
	add.d	$a1, $sp, $a1
	xvld	$xr14, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2448
	add.d	$a1, $sp, $a1
	xvld	$xr13, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2416
	add.d	$a1, $sp, $a1
	xvld	$xr19, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2384
	add.d	$a1, $sp, $a1
	xvld	$xr20, $a1, 0
	xvld	$xr10, $sp, 256                 # 32-byte Folded Reload
	xvfmul.d	$xr7, $xr10, $xr14
	xvfmul.d	$xr8, $xr10, $xr13
	xvfmul.d	$xr9, $xr10, $xr19
	xvfmul.d	$xr10, $xr10, $xr20
	xvfsub.d	$xr4, $xr4, $xr10
	xvfsub.d	$xr5, $xr5, $xr9
	xvfsub.d	$xr6, $xr6, $xr8
	xvfsub.d	$xr3, $xr3, $xr7
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2208
	add.d	$a1, $sp, $a1
	xvld	$xr7, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2112
	add.d	$a1, $sp, $a1
	xvld	$xr8, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2144
	add.d	$a1, $sp, $a1
	xvld	$xr9, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2176
	add.d	$a1, $sp, $a1
	xvld	$xr10, $a1, 0
	xvreplve0.d	$xr11, $xr2
	xvfmul.d	$xr8, $xr11, $xr8
	xvfmul.d	$xr9, $xr11, $xr9
	xvfmul.d	$xr10, $xr11, $xr10
	xvfmul.d	$xr7, $xr11, $xr7
	xvfadd.d	$xr7, $xr3, $xr7
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2240
	add.d	$a1, $sp, $a1
	fld.d	$fa3, $a1, 0
	xvfadd.d	$xr6, $xr6, $xr10
	xvfadd.d	$xr5, $xr5, $xr9
	xvfadd.d	$xr12, $xr4, $xr8
	fmul.d	$fa2, $fa2, $fa3
	fadd.d	$ft3, $fa1, $fa2
	xvpickve2gr.d	$a1, $xr12, 0
	movgr2fr.d	$ft0, $a1
	xvpickve2gr.d	$a1, $xr12, 1
	movgr2fr.d	$ft1, $a1
	xvpickve2gr.d	$a1, $xr12, 2
	movgr2fr.d	$ft2, $a1
	xvpickve2gr.d	$a1, $xr12, 3
	movgr2fr.d	$ft13, $a1
	xvpickve2gr.d	$a1, $xr5, 0
	movgr2fr.d	$ft14, $a1
	xvpickve2gr.d	$a1, $xr5, 1
	movgr2fr.d	$ft15, $a1
	xvpickve2gr.d	$a1, $xr5, 2
	movgr2fr.d	$fa1, $a1
	xvst	$xr5, $sp, 1312                 # 32-byte Folded Spill
	xvpickve2gr.d	$a1, $xr5, 3
	movgr2fr.d	$ft9, $a1
	xvpickve2gr.d	$a1, $xr6, 0
	movgr2fr.d	$fs2, $a1
	xvpickve2gr.d	$a1, $xr6, 1
	movgr2fr.d	$fs3, $a1
	xvpickve2gr.d	$a1, $xr6, 2
	movgr2fr.d	$fs4, $a1
	xvst	$xr6, $sp, 1344                 # 32-byte Folded Spill
	xvpickve2gr.d	$a1, $xr6, 3
	fmov.d	$fa6, $fa1
	movgr2fr.d	$fs5, $a1
	xvpickve2gr.d	$a1, $xr7, 0
	movgr2fr.d	$fs6, $a1
	xvpickve2gr.d	$a1, $xr7, 1
	movgr2fr.d	$fs7, $a1
	xvpickve2gr.d	$a1, $xr7, 2
	movgr2fr.d	$fs0, $a1
	xvpickve2gr.d	$a1, $xr7, 3
	movgr2fr.d	$fs1, $a1
	move	$a1, $t4
	.p2align	4, , 16
.LBB1_24:                               # %for.cond498.preheader
                                        #   Parent Loop BB1_5 Depth=1
                                        #     Parent Loop BB1_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $a1, -64
	fld.d	$fa2, $a1, -56
	fmadd.d	$fa1, $fa1, $ft0, $fa0
	fmadd.d	$fa1, $fa2, $ft1, $fa1
	fld.d	$fa2, $a1, -48
	fld.d	$fa3, $a1, -40
	fld.d	$fa4, $a1, -32
	fld.d	$fa5, $a1, -24
	fmadd.d	$fa1, $fa2, $ft2, $fa1
	fmadd.d	$fa1, $fa3, $ft13, $fa1
	fmadd.d	$fa1, $fa4, $ft14, $fa1
	fmadd.d	$fa1, $fa5, $ft15, $fa1
	fld.d	$fa2, $a1, -16
	fld.d	$fa3, $a1, -8
	fld.d	$fa4, $a1, 0
	fld.d	$fa5, $a1, 8
	fmadd.d	$fa1, $fa2, $fa6, $fa1
	fmadd.d	$fa1, $fa3, $ft9, $fa1
	fmadd.d	$fa1, $fa4, $fs2, $fa1
	fmadd.d	$fa1, $fa5, $fs3, $fa1
	fld.d	$fa2, $a1, 16
	fld.d	$fa3, $a1, 24
	fld.d	$fa4, $a1, 32
	fld.d	$fa5, $a1, 40
	fmadd.d	$fa1, $fa2, $fs4, $fa1
	fmadd.d	$fa1, $fa3, $fs5, $fa1
	fmadd.d	$fa1, $fa4, $fs6, $fa1
	fmadd.d	$fa1, $fa5, $fs7, $fa1
	fld.d	$fa2, $a1, 48
	fld.d	$fa3, $a1, 56
	fld.d	$fa4, $a1, 64
	fldx.d	$fa5, $a0, $s7
	fmadd.d	$fa1, $fa2, $fs0, $fa1
	fmadd.d	$fa1, $fa3, $fs1, $fa1
	fmadd.d	$fa1, $fa4, $ft3, $fa1
	fmul.d	$fa2, $fa5, $fa0
	fadd.d	$fa1, $fa1, $fa2
	fstx.d	$fa1, $a0, $s7
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 136
	bne	$a0, $s6, .LBB1_24
# %bb.25:                               # %for.body.i368.preheader
                                        #   in Loop: Header=BB1_6 Depth=2
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3184
	add.d	$a0, $sp, $a0
	fld.d	$fa1, $a0, 0
	fmadd.d	$fa1, $ft0, $fa1, $fa0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3192
	add.d	$a0, $sp, $a0
	fld.d	$fa2, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3200
	add.d	$a0, $sp, $a0
	fld.d	$fa3, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3208
	add.d	$a0, $sp, $a0
	fld.d	$fa4, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3216
	add.d	$a0, $sp, $a0
	fld.d	$fa5, $a0, 0
	fmadd.d	$fa1, $ft1, $fa2, $fa1
	fmadd.d	$fa1, $ft2, $fa3, $fa1
	fmadd.d	$fa1, $ft13, $fa4, $fa1
	fmadd.d	$fa1, $ft14, $fa5, $fa1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3224
	add.d	$a0, $sp, $a0
	fld.d	$fa2, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3232
	add.d	$a0, $sp, $a0
	fld.d	$fa3, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3240
	add.d	$a0, $sp, $a0
	fld.d	$fa4, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3248
	add.d	$a0, $sp, $a0
	fld.d	$fa5, $a0, 0
	fmadd.d	$fa1, $ft15, $fa2, $fa1
	fmadd.d	$fa1, $fa6, $fa3, $fa1
	fst.d	$ft9, $sp, 808                  # 8-byte Folded Spill
	fmadd.d	$fa1, $ft9, $fa4, $fa1
	fmadd.d	$fa1, $fs2, $fa5, $fa1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3256
	add.d	$a0, $sp, $a0
	fld.d	$fa2, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3264
	add.d	$a0, $sp, $a0
	fld.d	$fa3, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3272
	add.d	$a0, $sp, $a0
	fld.d	$fa4, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3280
	add.d	$a0, $sp, $a0
	fld.d	$fa5, $a0, 0
	fmadd.d	$fa1, $fs3, $fa2, $fa1
	fmadd.d	$fa1, $fs4, $fa3, $fa1
	fmadd.d	$fa1, $fs5, $fa4, $fa1
	fmadd.d	$fa1, $fs6, $fa5, $fa1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3288
	add.d	$a0, $sp, $a0
	fld.d	$fa2, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3296
	add.d	$a0, $sp, $a0
	fld.d	$fa3, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3304
	add.d	$a0, $sp, $a0
	fld.d	$fa4, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3312
	add.d	$a0, $sp, $a0
	fld.d	$fa5, $a0, 0
	fmadd.d	$fa1, $fs7, $fa2, $fa1
	fmadd.d	$fa1, $fs0, $fa3, $fa1
	fmadd.d	$fa1, $fs1, $fa4, $fa1
	fmadd.d	$fa1, $ft3, $fa5, $fa1
	fcmp.cule.d	$fcc0, $fa1, $fa0
	xvst	$xr7, $sp, 1136                 # 32-byte Folded Spill
	bcnez	$fcc0, .LBB1_27
# %bb.26:                               # %if.then528
                                        #   in Loop: Header=BB1_6 Depth=2
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB1_33
.LBB1_27:                               # %if.end530
                                        #   in Loop: Header=BB1_6 Depth=2
	fld.d	$fa1, $sp, 328                  # 8-byte Folded Reload
	fcmp.clt.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_34
.LBB1_28:                               # %for.body.i376.preheader
                                        #   in Loop: Header=BB1_6 Depth=2
	movgr2fr.d	$fa1, $zero
	fld.d	$fa0, $sp, 944                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa0, $ft0, $fa1
	fld.d	$fa2, $sp, 936                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $ft1, $fa0
	fld.d	$fa2, $sp, 928                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $ft2, $fa0
	fld.d	$fa2, $sp, 920                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $ft13, $fa0
	fld.d	$fa2, $sp, 912                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $ft14, $fa0
	fld.d	$fa2, $sp, 904                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $ft15, $fa0
	fld.d	$fa2, $sp, 896                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	fld.d	$fa2, $sp, 888                  # 8-byte Folded Reload
	fld.d	$fa3, $sp, 808                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fld.d	$fa2, $sp, 880                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $fs2, $fa0
	fld.d	$fa2, $sp, 872                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $fs3, $fa0
	fld.d	$fa2, $sp, 864                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $fs4, $fa0
	fld.d	$fa2, $sp, 856                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $fs5, $fa0
	fld.d	$fa2, $sp, 848                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $fs6, $fa0
	fld.d	$fa2, $sp, 840                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $fs7, $fa0
	fld.d	$fa2, $sp, 832                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $fs0, $fa0
	fld.d	$fa2, $sp, 824                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $fs1, $fa0
	fld.d	$fa2, $sp, 816                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $ft3, $fa0
	fclass.d	$fa2, $fa0
	movfr2gr.d	$a0, $fa2
	andi	$a0, $a0, 612
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	ori	$fp, $zero, 1
	bnez	$a0, .LBB1_36
# %bb.29:                               # %for.body.i376.preheader
                                        #   in Loop: Header=BB1_6 Depth=2
	fcmp.ceq.d	$fcc0, $ft8, $fa1
	bcnez	$fcc0, .LBB1_36
# %bb.30:                               # %if.end549
                                        #   in Loop: Header=BB1_6 Depth=2
	fld.d	$fa1, $sp, 952                  # 8-byte Folded Reload
	fdiv.d	$fa1, $fa0, $fa1
	fdiv.d	$fa2, $ft7, $ft8
	fmul.d	$fa1, $fa2, $fa1
	fclass.d	$fa2, $fa1
	movfr2gr.d	$a0, $fa2
	andi	$a0, $a0, 612
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	bnez	$a0, .LBB1_36
# %bb.31:                               # %for.body.i384.preheader
                                        #   in Loop: Header=BB1_6 Depth=2
	xvreplve0.d	$xr2, $xr1
	xvld	$xr3, $sp, 1040                 # 32-byte Folded Reload
	xvfmul.d	$xr3, $xr2, $xr3
	xvld	$xr4, $sp, 1008                 # 32-byte Folded Reload
	xvfmul.d	$xr4, $xr2, $xr4
	xvld	$xr5, $sp, 976                  # 32-byte Folded Reload
	xvfmul.d	$xr5, $xr2, $xr5
	xvld	$xr6, $sp, 1072                 # 32-byte Folded Reload
	xvfmul.d	$xr2, $xr2, $xr6
	fld.d	$fa6, $sp, 960                  # 8-byte Folded Reload
	fmul.d	$fa6, $fa1, $fa6
	fadd.d	$fa6, $ft3, $fa6
	fmul.d	$fa1, $fa1, $ft10
	xvfadd.d	$xr2, $xr7, $xr2
	xvfadd.d	$xr5, $xr12, $xr5
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2384
	add.d	$a0, $sp, $a0
	vld	$vr7, $a0, 0
	xvld	$xr8, $sp, 1312                 # 32-byte Folded Reload
	xvfadd.d	$xr4, $xr8, $xr4
	xvld	$xr8, $sp, 1344                 # 32-byte Folded Reload
	xvfadd.d	$xr3, $xr8, $xr3
	xvreplve0.d	$xr8, $xr1
	xvpermi.q	$xr20, $xr7, 48
	xvfmul.d	$xr7, $xr8, $xr20
	xvfmul.d	$xr9, $xr8, $xr14
	xvfmul.d	$xr10, $xr8, $xr19
	xvfmul.d	$xr8, $xr8, $xr13
	xvfadd.d	$xr3, $xr3, $xr8
	xvfadd.d	$xr4, $xr4, $xr10
	xvfadd.d	$xr5, $xr5, $xr7
	xvfadd.d	$xr2, $xr2, $xr9
	fld.d	$fa7, $sp, 800                  # 8-byte Folded Reload
	fmul.d	$fa1, $fa1, $fa7
	addi.w	$s4, $s4, 1
	fadd.d	$fa6, $fa6, $fa1
	fst.d	$fa0, $sp, 952                  # 8-byte Folded Spill
	ori	$a0, $zero, 4
	bne	$s4, $a0, .LBB1_6
	b	.LBB1_41
.LBB1_32:                               # %call.sqrt1061
                                        #   in Loop: Header=BB1_6 Depth=2
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	xvld	$xr23, $sp, 1136                # 32-byte Folded Reload
	fld.d	$ft14, $sp, 968                 # 8-byte Folded Reload
	ori	$a0, $zero, 3960
	add.d	$t4, $sp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2584
	add.d	$t3, $sp, $a0
	fmov.d	$fa1, $fa0
	b	.LBB1_20
.LBB1_33:                               # %call.sqrt1062
                                        #   in Loop: Header=BB1_6 Depth=2
	fmov.d	$fa0, $fa1
	fst.d	$ft3, $sp, 968                  # 8-byte Folded Spill
	xvst	$xr12, $sp, 1104                # 32-byte Folded Spill
	xvst	$xr16, $sp, 768                 # 32-byte Folded Spill
	fst.d	$ft10, $sp, 760                 # 8-byte Folded Spill
	xvst	$xr13, $sp, 720                 # 32-byte Folded Spill
	xvst	$xr14, $sp, 688                 # 32-byte Folded Spill
	xvst	$xr19, $sp, 656                 # 32-byte Folded Spill
	xvst	$xr20, $sp, 624                 # 32-byte Folded Spill
	fst.d	$ft0, $sp, 616                  # 8-byte Folded Spill
	fst.d	$ft1, $sp, 608                  # 8-byte Folded Spill
	fst.d	$ft2, $sp, 600                  # 8-byte Folded Spill
	fst.d	$ft13, $sp, 592                 # 8-byte Folded Spill
	fst.d	$ft14, $sp, 584                 # 8-byte Folded Spill
	fst.d	$ft15, $sp, 576                 # 8-byte Folded Spill
	fst.d	$fa6, $sp, 568                  # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fld.d	$fa6, $sp, 568                  # 8-byte Folded Reload
	fld.d	$ft15, $sp, 576                 # 8-byte Folded Reload
	fld.d	$ft14, $sp, 584                 # 8-byte Folded Reload
	fld.d	$ft13, $sp, 592                 # 8-byte Folded Reload
	fld.d	$ft2, $sp, 600                  # 8-byte Folded Reload
	fld.d	$ft1, $sp, 608                  # 8-byte Folded Reload
	fld.d	$ft0, $sp, 616                  # 8-byte Folded Reload
	xvld	$xr20, $sp, 624                 # 32-byte Folded Reload
	xvld	$xr19, $sp, 656                 # 32-byte Folded Reload
	xvld	$xr14, $sp, 688                 # 32-byte Folded Reload
	xvld	$xr13, $sp, 720                 # 32-byte Folded Reload
	fld.d	$ft10, $sp, 760                 # 8-byte Folded Reload
	xvld	$xr16, $sp, 768                 # 32-byte Folded Reload
	xvld	$xr15, $sp, 288                 # 32-byte Folded Reload
	xvld	$xr12, $sp, 1104                # 32-byte Folded Reload
	xvld	$xr7, $sp, 1136                 # 32-byte Folded Reload
	fld.d	$ft3, $sp, 968                  # 8-byte Folded Reload
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2584
	add.d	$t3, $sp, $a0
	fld.d	$fa1, $sp, 328                  # 8-byte Folded Reload
	fcmp.clt.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB1_28
.LBB1_34:                               #   in Loop: Header=BB1_5 Depth=1
	xvst	$xr12, $sp, 1104                # 32-byte Folded Spill
	fst.d	$ft3, $sp, 968                  # 8-byte Folded Spill
.LBB1_35:                               #   in Loop: Header=BB1_5 Depth=1
	move	$fp, $zero
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 944                   # 8-byte Folded Spill
	b	.LBB1_38
	.p2align	4, , 16
.LBB1_36:                               #   in Loop: Header=BB1_5 Depth=1
	xvst	$xr12, $sp, 1104                # 32-byte Folded Spill
	fst.d	$ft3, $sp, 968                  # 8-byte Folded Spill
.LBB1_37:                               #   in Loop: Header=BB1_5 Depth=1
	st.d	$zero, $sp, 944                 # 8-byte Folded Spill
.LBB1_38:                               # %for.end574
                                        #   in Loop: Header=BB1_5 Depth=1
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 936                   # 8-byte Folded Spill
.LBB1_39:                               # %for.end574
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.w	$a4, $sp, 1376
	xvld	$xr0, $sp, 1184                 # 32-byte Folded Reload
	xvst	$xr0, $sp, 1184                 # 32-byte Folded Spill
	xvpickve2gr.d	$a0, $xr0, 0
	movgr2fr.d	$fa1, $a0
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	move	$a2, $s4
	move	$a3, $s4
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1380
	xvld	$xr0, $sp, 1184                 # 32-byte Folded Reload
	xvpickve2gr.d	$a0, $xr0, 1
	movgr2fr.d	$fa1, $a0
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s4
	move	$a3, $s4
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1384
	xvld	$xr0, $sp, 1184                 # 32-byte Folded Reload
	xvpickve2gr.d	$a0, $xr0, 2
	movgr2fr.d	$fa1, $a0
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s4
	move	$a3, $s4
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1388
	xvld	$xr0, $sp, 1184                 # 32-byte Folded Reload
	xvpickve2gr.d	$a0, $xr0, 3
	movgr2fr.d	$fa1, $a0
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s4
	move	$a3, $s4
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1392
	xvld	$xr0, $sp, 1216                 # 32-byte Folded Reload
	xvst	$xr0, $sp, 1216                 # 32-byte Folded Spill
	xvpickve2gr.d	$a0, $xr0, 0
	movgr2fr.d	$fa1, $a0
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s4
	move	$a3, $s4
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1396
	xvld	$xr0, $sp, 1216                 # 32-byte Folded Reload
	xvpickve2gr.d	$a0, $xr0, 1
	movgr2fr.d	$fa1, $a0
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s4
	move	$a3, $s4
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1400
	xvld	$xr0, $sp, 1216                 # 32-byte Folded Reload
	xvpickve2gr.d	$a0, $xr0, 2
	movgr2fr.d	$fa1, $a0
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s4
	move	$a3, $s4
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1404
	xvld	$xr0, $sp, 1216                 # 32-byte Folded Reload
	xvpickve2gr.d	$a0, $xr0, 3
	movgr2fr.d	$fa1, $a0
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s4
	move	$a3, $s4
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1408
	xvld	$xr0, $sp, 1248                 # 32-byte Folded Reload
	xvst	$xr0, $sp, 1248                 # 32-byte Folded Spill
	xvpickve2gr.d	$a0, $xr0, 0
	movgr2fr.d	$fa1, $a0
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s4
	move	$a3, $s4
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1412
	xvld	$xr0, $sp, 1248                 # 32-byte Folded Reload
	xvpickve2gr.d	$a0, $xr0, 1
	movgr2fr.d	$fa1, $a0
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s4
	move	$a3, $s4
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1416
	xvld	$xr0, $sp, 1248                 # 32-byte Folded Reload
	xvpickve2gr.d	$a0, $xr0, 2
	movgr2fr.d	$fa1, $a0
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s4
	move	$a3, $s4
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1420
	xvld	$xr0, $sp, 1248                 # 32-byte Folded Reload
	xvpickve2gr.d	$a0, $xr0, 3
	movgr2fr.d	$fa1, $a0
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s4
	move	$a3, $s4
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1424
	xvld	$xr0, $sp, 1280                 # 32-byte Folded Reload
	xvst	$xr0, $sp, 1280                 # 32-byte Folded Spill
	xvpickve2gr.d	$a0, $xr0, 0
	movgr2fr.d	$fa1, $a0
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s4
	move	$a3, $s4
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1428
	xvld	$xr0, $sp, 1280                 # 32-byte Folded Reload
	xvpickve2gr.d	$a0, $xr0, 1
	movgr2fr.d	$fa1, $a0
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s4
	move	$a3, $s4
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1432
	xvld	$xr0, $sp, 1280                 # 32-byte Folded Reload
	xvpickve2gr.d	$a0, $xr0, 2
	movgr2fr.d	$fa1, $a0
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s4
	move	$a3, $s4
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1436
	xvld	$xr0, $sp, 1280                 # 32-byte Folded Reload
	xvpickve2gr.d	$a0, $xr0, 3
	movgr2fr.d	$fa1, $a0
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s4
	move	$a3, $s4
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1440
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s4
	move	$a3, $s4
	fld.d	$fa1, $sp, 1176                 # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 936                   # 8-byte Folded Reload
	bnez	$a0, .LBB1_4
# %bb.40:                               # %if.then590
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.w	$a4, $sp, 1376
	xvld	$xr0, $sp, 976                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 976                  # 32-byte Folded Spill
	xvpickve2gr.d	$a0, $xr0, 0
	movgr2fr.d	$fa1, $a0
	movgr2fr.d	$fs5, $zero
	ori	$a2, $zero, 14
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs5
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1380
	xvld	$xr0, $sp, 976                  # 32-byte Folded Reload
	xvpickve2gr.d	$a0, $xr0, 1
	movgr2fr.d	$fa1, $a0
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1384
	xvld	$xr0, $sp, 976                  # 32-byte Folded Reload
	xvpickve2gr.d	$a0, $xr0, 2
	movgr2fr.d	$fa1, $a0
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1388
	xvld	$xr0, $sp, 976                  # 32-byte Folded Reload
	xvpickve2gr.d	$a0, $xr0, 3
	movgr2fr.d	$fa1, $a0
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1392
	xvld	$xr0, $sp, 1008                 # 32-byte Folded Reload
	xvst	$xr0, $sp, 1008                 # 32-byte Folded Spill
	xvpickve2gr.d	$a0, $xr0, 0
	movgr2fr.d	$fa1, $a0
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1396
	xvld	$xr0, $sp, 1008                 # 32-byte Folded Reload
	xvpickve2gr.d	$a0, $xr0, 1
	movgr2fr.d	$fa1, $a0
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1400
	xvld	$xr0, $sp, 1008                 # 32-byte Folded Reload
	xvpickve2gr.d	$a0, $xr0, 2
	movgr2fr.d	$fa1, $a0
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1404
	xvld	$xr0, $sp, 1008                 # 32-byte Folded Reload
	xvpickve2gr.d	$a0, $xr0, 3
	movgr2fr.d	$fa1, $a0
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1408
	xvld	$xr0, $sp, 1040                 # 32-byte Folded Reload
	xvst	$xr0, $sp, 1040                 # 32-byte Folded Spill
	xvpickve2gr.d	$a0, $xr0, 0
	movgr2fr.d	$fa1, $a0
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1412
	xvld	$xr0, $sp, 1040                 # 32-byte Folded Reload
	xvpickve2gr.d	$a0, $xr0, 1
	movgr2fr.d	$fa1, $a0
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1416
	xvld	$xr0, $sp, 1040                 # 32-byte Folded Reload
	xvpickve2gr.d	$a0, $xr0, 2
	movgr2fr.d	$fa1, $a0
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1420
	xvld	$xr0, $sp, 1040                 # 32-byte Folded Reload
	xvpickve2gr.d	$a0, $xr0, 3
	movgr2fr.d	$fa1, $a0
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1424
	xvld	$xr0, $sp, 1072                 # 32-byte Folded Reload
	xvst	$xr0, $sp, 1072                 # 32-byte Folded Spill
	xvpickve2gr.d	$a0, $xr0, 0
	movgr2fr.d	$fa1, $a0
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1428
	xvld	$xr0, $sp, 1072                 # 32-byte Folded Reload
	xvpickve2gr.d	$a0, $xr0, 1
	movgr2fr.d	$fa1, $a0
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1432
	xvld	$xr0, $sp, 1072                 # 32-byte Folded Reload
	xvpickve2gr.d	$a0, $xr0, 2
	movgr2fr.d	$fa1, $a0
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1436
	xvld	$xr0, $sp, 1072                 # 32-byte Folded Reload
	xvpickve2gr.d	$a0, $xr0, 3
	movgr2fr.d	$fa1, $a0
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1440
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	fld.d	$fa1, $sp, 960                  # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1376
	xvld	$xr0, $sp, 1104                 # 32-byte Folded Reload
	xvst	$xr0, $sp, 1104                 # 32-byte Folded Spill
	xvpickve2gr.d	$a0, $xr0, 0
	movgr2fr.d	$fa1, $a0
	ori	$a2, $zero, 13
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs5
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1380
	xvld	$xr0, $sp, 1104                 # 32-byte Folded Reload
	xvpickve2gr.d	$a0, $xr0, 1
	movgr2fr.d	$fa1, $a0
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1384
	xvld	$xr0, $sp, 1104                 # 32-byte Folded Reload
	xvpickve2gr.d	$a0, $xr0, 2
	movgr2fr.d	$fa1, $a0
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1388
	xvld	$xr0, $sp, 1104                 # 32-byte Folded Reload
	xvpickve2gr.d	$a0, $xr0, 3
	movgr2fr.d	$fa1, $a0
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1392
	xvld	$xr0, $sp, 1312                 # 32-byte Folded Reload
	xvst	$xr0, $sp, 1312                 # 32-byte Folded Spill
	xvpickve2gr.d	$a0, $xr0, 0
	movgr2fr.d	$fa1, $a0
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1396
	xvld	$xr0, $sp, 1312                 # 32-byte Folded Reload
	xvpickve2gr.d	$a0, $xr0, 1
	movgr2fr.d	$fa1, $a0
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1400
	xvld	$xr0, $sp, 1312                 # 32-byte Folded Reload
	xvpickve2gr.d	$a0, $xr0, 2
	movgr2fr.d	$fa1, $a0
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1404
	xvld	$xr0, $sp, 1312                 # 32-byte Folded Reload
	xvpickve2gr.d	$a0, $xr0, 3
	movgr2fr.d	$fa1, $a0
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1408
	xvld	$xr0, $sp, 1344                 # 32-byte Folded Reload
	xvst	$xr0, $sp, 1344                 # 32-byte Folded Spill
	xvpickve2gr.d	$a0, $xr0, 0
	movgr2fr.d	$fa1, $a0
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1412
	xvld	$xr0, $sp, 1344                 # 32-byte Folded Reload
	xvpickve2gr.d	$a0, $xr0, 1
	movgr2fr.d	$fa1, $a0
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1416
	xvld	$xr0, $sp, 1344                 # 32-byte Folded Reload
	xvpickve2gr.d	$a0, $xr0, 2
	movgr2fr.d	$fa1, $a0
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1420
	xvld	$xr0, $sp, 1344                 # 32-byte Folded Reload
	xvpickve2gr.d	$a0, $xr0, 3
	movgr2fr.d	$fa1, $a0
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1424
	xvld	$xr0, $sp, 1136                 # 32-byte Folded Reload
	xvst	$xr0, $sp, 1136                 # 32-byte Folded Spill
	xvpickve2gr.d	$a0, $xr0, 0
	movgr2fr.d	$fa1, $a0
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1428
	xvld	$xr0, $sp, 1136                 # 32-byte Folded Reload
	xvpickve2gr.d	$a0, $xr0, 1
	movgr2fr.d	$fa1, $a0
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1432
	xvld	$xr0, $sp, 1136                 # 32-byte Folded Reload
	xvpickve2gr.d	$a0, $xr0, 2
	movgr2fr.d	$fa1, $a0
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1436
	xvld	$xr0, $sp, 1136                 # 32-byte Folded Reload
	xvpickve2gr.d	$a0, $xr0, 3
	movgr2fr.d	$fa1, $a0
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1440
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	fld.d	$fa1, $sp, 968                  # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	b	.LBB1_4
.LBB1_41:                               #   in Loop: Header=BB1_5 Depth=1
	xvst	$xr5, $sp, 976                  # 32-byte Folded Spill
	xvst	$xr4, $sp, 1008                 # 32-byte Folded Spill
	xvst	$xr3, $sp, 1040                 # 32-byte Folded Spill
	xvst	$xr2, $sp, 1072                 # 32-byte Folded Spill
	fst.d	$fa6, $sp, 960                  # 8-byte Folded Spill
	xvst	$xr12, $sp, 1104                # 32-byte Folded Spill
	fst.d	$ft3, $sp, 968                  # 8-byte Folded Spill
	st.d	$zero, $sp, 936                 # 8-byte Folded Spill
	ori	$fp, $zero, 1
	fst.d	$fa0, $sp, 952                  # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 944                   # 8-byte Folded Spill
	b	.LBB1_39
.LBB1_42:                               # %while.end
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s1
	move	$a1, $s0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	move	$a4, $a2
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1440
	add.d	$sp, $sp, $a0
	fld.d	$fs7, $sp, 1880                 # 8-byte Folded Reload
	fld.d	$fs6, $sp, 1888                 # 8-byte Folded Reload
	fld.d	$fs5, $sp, 1896                 # 8-byte Folded Reload
	fld.d	$fs4, $sp, 1904                 # 8-byte Folded Reload
	fld.d	$fs3, $sp, 1912                 # 8-byte Folded Reload
	fld.d	$fs2, $sp, 1920                 # 8-byte Folded Reload
	fld.d	$fs1, $sp, 1928                 # 8-byte Folded Reload
	fld.d	$fs0, $sp, 1936                 # 8-byte Folded Reload
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.LBB1_43:                               # %call.sqrt
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	b	.LBB1_1
.Lfunc_end1:
	.size	CABiCGStab, .Lfunc_end1-CABiCGStab
                                        # -- End function
	.globl	BiCGStab                        # -- Begin function BiCGStab
	.p2align	5
	.type	BiCGStab,@function
BiCGStab:                               # @BiCGStab
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 24                   # 8-byte Folded Spill
	fmov.d	$fs3, $fa2
	fmov.d	$fs0, $fa1
	fmov.d	$fs1, $fa0
	move	$a4, $a3
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	ori	$a2, $zero, 12
	move	$a3, $fp
	pcaddu18i	$ra, %call36(residual)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 12
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(scale_grid)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 12
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(scale_grid)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 13
	ori	$a3, $zero, 12
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(dot)
	jirl	$ra, $ra, 0
	fmov.d	$fs2, $fa0
	ori	$a2, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(norm)
	jirl	$ra, $ra, 0
	movgr2fr.d	$fs7, $zero
	fcmp.ceq.d	$fcc0, $fa0, $fs7
	bcnez	$fcc0, .LBB2_14
# %bb.1:                                # %entry
	fcmp.ceq.d	$fcc0, $fs2, $fs7
	bcnez	$fcc0, .LBB2_14
# %bb.2:                                # %while.body.lr.ph
	fmul.d	$fa0, $fs3, $fa0
	fst.d	$fa0, $sp, 16                   # 8-byte Folded Spill
	ori	$s2, $zero, 200
.LBB2_3:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s1, 1312
	addi.d	$a0, $a0, 1
	st.w	$a0, $s1, 1312
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	ori	$a4, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 16
	ori	$a3, $zero, 10
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 16
	ori	$a3, $zero, 12
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(dot)
	jirl	$ra, $ra, 0
	fcmp.ceq.d	$fcc0, $fa0, $fs7
	bcnez	$fcc0, .LBB2_14
# %bb.4:                                # %if.end11
                                        #   in Loop: Header=BB2_3 Depth=1
	fdiv.d	$fs3, $fs2, $fa0
	fclass.d	$fa0, $fs3
	movfr2gr.d	$a0, $fa0
	andi	$a0, $a0, 68
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	bnez	$a0, .LBB2_14
# %bb.5:                                # %if.end14
                                        #   in Loop: Header=BB2_3 Depth=1
	vldi	$vr0, -912
	ori	$a4, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $fp
	fmov.d	$fa1, $fs3
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	fneg.d	$fa1, $fs3
	ori	$a2, $zero, 15
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	ori	$a4, $zero, 16
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 15
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(norm)
	jirl	$ra, $ra, 0
	fcmp.ceq.d	$fcc0, $fa0, $fs7
	bcnez	$fcc0, .LBB2_14
# %bb.6:                                # %if.end14
                                        #   in Loop: Header=BB2_3 Depth=1
	fld.d	$fa1, $sp, 16                   # 8-byte Folded Reload
	fcmp.clt.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB2_14
# %bb.7:                                # %if.end21
                                        #   in Loop: Header=BB2_3 Depth=1
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	ori	$a4, $zero, 15
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 17
	ori	$a3, $zero, 10
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 17
	ori	$a3, $zero, 17
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(dot)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	ori	$a2, $zero, 17
	ori	$a3, $zero, 15
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(dot)
	jirl	$ra, $ra, 0
	fcmp.ceq.d	$fcc0, $fs4, $fs7
	bcnez	$fcc0, .LBB2_14
# %bb.8:                                # %if.end26
                                        #   in Loop: Header=BB2_3 Depth=1
	fdiv.d	$fs4, $fa0, $fs4
	fclass.d	$fa0, $fs4
	movfr2gr.d	$a0, $fa0
	andi	$a0, $a0, 612
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	bnez	$a0, .LBB2_14
# %bb.9:                                # %if.end34
                                        #   in Loop: Header=BB2_3 Depth=1
	vldi	$vr0, -912
	ori	$a4, $zero, 15
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $fp
	fmov.d	$fa1, $fs4
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	fneg.d	$fs5, $fs4
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 15
	ori	$a4, $zero, 17
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa1, $fs5
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(norm)
	jirl	$ra, $ra, 0
	fcmp.ceq.d	$fcc0, $fa0, $fs7
	bcnez	$fcc0, .LBB2_14
# %bb.10:                               # %if.end34
                                        #   in Loop: Header=BB2_3 Depth=1
	fld.d	$fa1, $sp, 16                   # 8-byte Folded Reload
	fcmp.clt.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB2_14
# %bb.11:                               # %if.end43
                                        #   in Loop: Header=BB2_3 Depth=1
	ori	$a2, $zero, 13
	ori	$a3, $zero, 12
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(dot)
	jirl	$ra, $ra, 0
	fcmp.ceq.d	$fcc0, $fa0, $fs7
	bcnez	$fcc0, .LBB2_14
# %bb.12:                               # %if.end47
                                        #   in Loop: Header=BB2_3 Depth=1
	fmov.d	$fs6, $fa0
	fdiv.d	$fa0, $fa0, $fs2
	fdiv.d	$fa1, $fs3, $fs4
	fmul.d	$fs2, $fa1, $fa0
	fclass.d	$fa0, $fs2
	movfr2gr.d	$a0, $fa0
	andi	$a0, $a0, 68
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	bnez	$a0, .LBB2_14
# %bb.13:                               # %cleanup63
                                        #   in Loop: Header=BB2_3 Depth=1
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	ori	$a4, $zero, 16
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa1, $fs5
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	ori	$a4, $zero, 10
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa1, $fs2
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	addi.w	$s2, $s2, -1
	fmov.d	$fs2, $fs6
	bnez	$s2, .LBB2_3
.LBB2_14:                               # %while.end
	vldi	$vr0, -912
	ori	$a3, $zero, 4
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a4, $fp
	fld.d	$fs7, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 80                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	pcaddu18i	$t8, %call36(mul_grids)
	jr	$t8
.Lfunc_end2:
	.size	BiCGStab, .Lfunc_end2-BiCGStab
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function CACG
.LCPI3_0:
	.word	15                              # 0xf
	.word	16                              # 0x10
	.word	17                              # 0x11
	.word	18                              # 0x12
	.word	19                              # 0x13
	.word	20                              # 0x14
	.word	21                              # 0x15
	.word	22                              # 0x16
	.text
	.globl	CACG
	.p2align	5
	.type	CACG,@function
CACG:                                   # @CACG
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -1952
	st.d	$ra, $sp, 1944                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1936                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1928                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1920                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1912                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1904                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1896                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1888                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 1880                 # 8-byte Folded Spill
	fst.d	$fs1, $sp, 1872                 # 8-byte Folded Spill
	fst.d	$fs2, $sp, 1864                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1856                 # 8-byte Folded Spill
	fst.d	$fs4, $sp, 1848                 # 8-byte Folded Spill
	fst.d	$fs5, $sp, 1840                 # 8-byte Folded Spill
	fst.d	$fs6, $sp, 1832                 # 8-byte Folded Spill
	fst.d	$fs7, $sp, 1824                 # 8-byte Folded Spill
	fmov.d	$fs0, $fa2
	move	$a4, $a3
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	ori	$a2, $zero, 12
	move	$a3, $fp
	fst.d	$fa0, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fa1, $sp, 32                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(residual)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 12
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(scale_grid)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 12
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(scale_grid)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 12
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(norm)
	jirl	$ra, $ra, 0
	fmov.d	$fs1, $fa0
	ori	$a2, $zero, 13
	ori	$a3, $zero, 12
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(dot)
	jirl	$ra, $ra, 0
	fmov.d	$fs2, $fa0
	fsqrt.d	$fa0, $fa0
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB3_25
.LBB3_1:                                # %entry.split
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	xvld	$xr1, $a0, %pc_lo12(.LCPI3_0)
	xvst	$xr1, $sp, 1140
	ori	$a0, $zero, 23
	movgr2fr.d	$fs3, $zero
	fcmp.ceq.d	$fcc0, $fs2, $fs3
	st.w	$a0, $sp, 1172
	bcnez	$fcc0, .LBB3_24
# %bb.2:                                # %entry.split
	fcmp.ceq.d	$fcc0, $fs1, $fs3
	bcnez	$fcc0, .LBB3_24
# %bb.3:                                # %while.body.lr.ph
	move	$s2, $zero
	fmul.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $sp, 48                   # 8-byte Folded Spill
	b	.LBB3_5
	.p2align	4, , 16
.LBB3_4:                                # %if.end317
                                        #   in Loop: Header=BB3_5 Depth=1
	sltui	$a0, $s2, 196
	addi.w	$s2, $s2, 4
	and	$a0, $a0, $s3
	and	$a0, $a0, $s4
	beqz	$a0, .LBB3_24
.LBB3_5:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_6 Depth 2
	ld.w	$a2, $sp, 1140
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(scale_grid)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1144
	ld.w	$a3, $sp, 1140
	move	$a0, $s1
	move	$a1, $s0
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fmov.d	$fa0, $fs1
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1148
	ld.w	$a3, $sp, 1144
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1152
	ld.w	$a3, $sp, 1148
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1156
	ld.w	$a3, $sp, 1152
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1160
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(scale_grid)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1164
	ld.w	$a3, $sp, 1160
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1168
	ld.w	$a3, $sp, 1164
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 1172
	ld.w	$a3, $sp, 1168
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 1316
	addi.d	$a0, $a0, 1
	st.w	$a0, $s1, 1316
	addi.d	$a2, $sp, 1176
	addi.d	$a3, $sp, 1140
	addi.d	$a4, $sp, 1140
	ori	$a5, $zero, 9
	ori	$a6, $zero, 9
	ori	$a7, $zero, 1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(matmul_grids)
	jirl	$ra, $ra, 0
	vldi	$vr23, -912
	fld.d	$fs6, $sp, 1176
	fld.d	$fa0, $sp, 1184
	fst.d	$fa0, $sp, 984                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1192
	fst.d	$fa0, $sp, 976                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1200
	fst.d	$fa0, $sp, 968                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1208
	fst.d	$fa0, $sp, 960                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1216
	fst.d	$fa0, $sp, 280                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1224
	fst.d	$fa0, $sp, 272                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1232
	fst.d	$fa0, $sp, 264                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1240
	fst.d	$fa0, $sp, 256                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1248
	fst.d	$fa0, $sp, 248                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1256
	fst.d	$fa0, $sp, 240                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1264
	fst.d	$fa0, $sp, 232                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1272
	fst.d	$fa0, $sp, 216                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1280
	fst.d	$fa0, $sp, 208                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1288
	fst.d	$fa0, $sp, 952                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1296
	fst.d	$fa0, $sp, 944                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1304
	fst.d	$fa0, $sp, 936                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1312
	fst.d	$fa0, $sp, 928                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1320
	fst.d	$fa0, $sp, 920                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1328
	fst.d	$fa0, $sp, 912                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1336
	fst.d	$fa0, $sp, 904                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1344
	fst.d	$fa0, $sp, 896                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1352
	fst.d	$fa0, $sp, 888                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1360
	fst.d	$fa0, $sp, 880                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1368
	fst.d	$fa0, $sp, 872                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1376
	fst.d	$fa0, $sp, 864                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1384
	fst.d	$fa0, $sp, 856                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1392
	fst.d	$fa0, $sp, 848                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1400
	fst.d	$fa0, $sp, 840                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1408
	fst.d	$fa0, $sp, 832                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1416
	fst.d	$fa0, $sp, 824                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1424
	fst.d	$fa0, $sp, 816                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1432
	fst.d	$fa0, $sp, 808                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1440
	fst.d	$fa0, $sp, 800                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1448
	fst.d	$fa0, $sp, 792                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1456
	fst.d	$fa0, $sp, 784                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1464
	fst.d	$fa0, $sp, 776                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1472
	fst.d	$fa0, $sp, 768                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1480
	fst.d	$fa0, $sp, 760                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1488
	fst.d	$fa0, $sp, 752                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1496
	fst.d	$fa0, $sp, 744                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1504
	fst.d	$fa0, $sp, 736                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1512
	fst.d	$fa0, $sp, 728                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1520
	fst.d	$fa0, $sp, 720                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1528
	fst.d	$fa0, $sp, 712                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1536
	fst.d	$fa0, $sp, 704                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1544
	fst.d	$fa0, $sp, 696                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1552
	fst.d	$fa0, $sp, 688                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1560
	fst.d	$fa0, $sp, 680                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1568
	fst.d	$fa0, $sp, 672                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1576
	fst.d	$fa0, $sp, 664                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1584
	fst.d	$fa0, $sp, 656                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1592
	fst.d	$fa0, $sp, 648                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1600
	fst.d	$fa0, $sp, 640                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1608
	fst.d	$fa0, $sp, 632                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1616
	fst.d	$fa0, $sp, 624                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1624
	fst.d	$fa0, $sp, 616                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1632
	fst.d	$fa0, $sp, 608                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1640
	fst.d	$fa0, $sp, 600                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1648
	fst.d	$fa0, $sp, 592                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1656
	fst.d	$fa0, $sp, 584                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1664
	fst.d	$fa0, $sp, 576                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1672
	fst.d	$fa0, $sp, 568                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1680
	fst.d	$fa0, $sp, 560                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1688
	fst.d	$fa0, $sp, 552                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1696
	fst.d	$fa0, $sp, 544                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1704
	fst.d	$fa0, $sp, 536                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1712
	fst.d	$fa0, $sp, 528                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1720
	fst.d	$fa0, $sp, 520                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1728
	fst.d	$fa0, $sp, 512                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1736
	fst.d	$fa0, $sp, 504                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1744
	fst.d	$fa0, $sp, 496                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1752
	fst.d	$fa0, $sp, 488                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1760
	fst.d	$fa0, $sp, 480                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1768
	fst.d	$fa0, $sp, 472                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1776
	fst.d	$fa0, $sp, 464                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1784
	fst.d	$fa0, $sp, 456                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1792
	fst.d	$fa0, $sp, 448                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1800
	fst.d	$fa0, $sp, 440                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1808
	fst.d	$fa0, $sp, 432                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1816
	fst.d	$fa0, $sp, 424                  # 8-byte Folded Spill
	ori	$s3, $zero, 4
	fst.d	$fs3, $sp, 1040                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1016                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1008                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1000                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 992                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1056                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1048                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1032                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1024                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 384                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 376                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 368                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 360                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 352                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 344                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 336                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 328                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1104                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1088                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1080                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1072                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1064                 # 8-byte Folded Spill
	fmov.d	$ft8, $fs3
	fmov.d	$ft9, $fs3
	fmov.d	$ft10, $fs3
	fmov.d	$ft11, $fs3
	fmov.d	$fs1, $fs3
	fmov.d	$ft14, $fs3
	fmov.d	$fs4, $fs3
	fmov.d	$ft12, $fs3
	fmov.d	$fa5, $fs3
	fmov.d	$fa7, $fs3
	fmov.d	$fa6, $fs3
	fmov.d	$fa2, $fs3
	vldi	$vr24, -912
	fst.d	$fs3, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 200                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 192                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 184                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 176                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 168                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 160                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 152                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 144                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 224                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 320                  # 8-byte Folded Spill
	fmov.d	$fs5, $fs3
	fst.d	$fs3, $sp, 312                  # 8-byte Folded Spill
	fmov.d	$fs7, $fs3
	fmov.d	$ft2, $fs3
	fmov.d	$ft1, $fs3
	fmov.d	$ft0, $fs3
	fmov.d	$ft3, $fs3
	fst.d	$fs6, $sp, 392                  # 8-byte Folded Spill
	.p2align	4, , 16
.LBB3_6:                                # %for.body131
                                        #   Parent Loop BB3_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr24, $sp, 400                 # 16-byte Folded Spill
	vst	$vr23, $sp, 288                 # 16-byte Folded Spill
	fst.d	$ft12, $sp, 1112                # 8-byte Folded Spill
	fst.d	$fs4, $sp, 1120                 # 8-byte Folded Spill
	fst.d	$ft14, $sp, 1096                # 8-byte Folded Spill
	fst.d	$fs1, $sp, 1128                 # 8-byte Folded Spill
	fmadd.d	$fa0, $fs0, $fs3, $fs3
	fmadd.d	$fa1, $fa2, $fs3, $fa0
	fmov.d	$fa4, $fa2
	fmadd.d	$fa2, $fa6, $fs3, $fa1
	fadd.d	$fa3, $fs0, $fs3
	fmadd.d	$fa3, $fa4, $fs3, $fa3
	fmov.d	$ft15, $fa4
	fst.d	$fa4, $sp, 416                  # 8-byte Folded Spill
	fmadd.d	$fa3, $fa6, $fs3, $fa3
	fmadd.d	$fa3, $fa7, $fs3, $fa3
	fmadd.d	$fa3, $fa5, $fs3, $fa3
	fmadd.d	$fa3, $ft12, $fs3, $fa3
	fmadd.d	$fa3, $fs4, $fs3, $fa3
	fmadd.d	$fa3, $ft14, $fs3, $fa3
	fmadd.d	$fa3, $fs1, $fs3, $fa3
	fld.d	$fa4, $sp, 1032                 # 8-byte Folded Reload
	fmul.d	$fa4, $fa4, $fs3
	fadd.d	$fs2, $fa3, $fa4
	fmadd.d	$fa3, $fa7, $fs3, $fa2
	fmadd.d	$fa3, $fa5, $fs3, $fa3
	fadd.d	$fa0, $ft15, $fa0
	fmadd.d	$fa0, $fa6, $fs3, $fa0
	fmadd.d	$fa0, $fa7, $fs3, $fa0
	fmadd.d	$fa0, $fa5, $fs3, $fa0
	fmadd.d	$fa0, $ft12, $fs3, $fa0
	fmadd.d	$fa0, $fs4, $fs3, $fa0
	fmadd.d	$fa0, $ft14, $fs3, $fa0
	fmadd.d	$fa0, $fs1, $fs3, $fa0
	fld.d	$fa4, $sp, 1048                 # 8-byte Folded Reload
	fmul.d	$fa4, $fa4, $fs3
	fadd.d	$fs0, $fa0, $fa4
	fmadd.d	$fa0, $ft12, $fs3, $fa3
	fadd.d	$fa1, $fa6, $fa1
	fmadd.d	$fa1, $fa7, $fs3, $fa1
	fmadd.d	$fa1, $fa5, $fs3, $fa1
	fmadd.d	$fa1, $ft12, $fs3, $fa1
	fmadd.d	$fa1, $fs4, $fs3, $fa1
	fmadd.d	$fa1, $ft14, $fs3, $fa1
	fmadd.d	$fa1, $fs1, $fs3, $fa1
	fld.d	$fa4, $sp, 1056                 # 8-byte Folded Reload
	fmul.d	$fa4, $fa4, $fs3
	fadd.d	$ft15, $fa1, $fa4
	fmadd.d	$fa1, $fs4, $fs3, $fa0
	fadd.d	$fa2, $fa7, $fa2
	fmadd.d	$fa2, $fa5, $fs3, $fa2
	fld.d	$fa4, $sp, 1112                 # 8-byte Folded Reload
	fmadd.d	$fa2, $fa4, $fs3, $fa2
	fmadd.d	$fa2, $fs4, $fs3, $fa2
	fmadd.d	$fa2, $ft14, $fs3, $fa2
	fmadd.d	$fa2, $fs1, $fs3, $fa2
	fld.d	$fa4, $sp, 992                  # 8-byte Folded Reload
	fmul.d	$fa4, $fa4, $fs3
	fadd.d	$ft12, $fa2, $fa4
	fmadd.d	$fa2, $ft14, $fs3, $fa1
	fmadd.d	$fa2, $fs1, $fs3, $fa2
	fld.d	$fa4, $sp, 1024                 # 8-byte Folded Reload
	fmul.d	$fa4, $fa4, $fs3
	fadd.d	$ft13, $fa2, $fa4
	fld.d	$fa4, $sp, 1000                 # 8-byte Folded Reload
	fmul.d	$fa4, $fa4, $fs3
	fadd.d	$fs4, $fa2, $fa4
	fld.d	$fa2, $sp, 1112                 # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa3
	fld.d	$fa3, $sp, 1120                 # 8-byte Folded Reload
	fmadd.d	$fa2, $fa3, $fs3, $fa2
	fmadd.d	$fa2, $ft14, $fs3, $fa2
	fld.d	$fa3, $sp, 1128                 # 8-byte Folded Reload
	fmadd.d	$fa2, $fa3, $fs3, $fa2
	fld.d	$fa3, $sp, 1008                 # 8-byte Folded Reload
	fmul.d	$fa3, $fa3, $fs3
	fadd.d	$fs1, $fa2, $fa3
	ld.w	$a0, $s1, 1312
	fld.d	$fa2, $sp, 1120                 # 8-byte Folded Reload
	fadd.d	$fa0, $fa2, $fa0
	fmadd.d	$fa0, $ft14, $fs3, $fa0
	fld.d	$fa2, $sp, 1128                 # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $fs3, $fa0
	fld.d	$fa2, $sp, 1016                 # 8-byte Folded Reload
	fmul.d	$fa2, $fa2, $fs3
	fadd.d	$ft14, $fa0, $fa2
	addi.d	$a0, $a0, 1
	st.w	$a0, $s1, 1312
	fld.d	$fa0, $sp, 1096                 # 8-byte Folded Reload
	fadd.d	$fa0, $fa0, $fa1
	fld.d	$fa1, $sp, 1128                 # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs3, $fa0
	fld.d	$fa1, $sp, 1040                 # 8-byte Folded Reload
	fmul.d	$fa1, $fa1, $fs3
	fadd.d	$fa2, $fa0, $fa1
	fmadd.d	$fa0, $fs6, $ft13, $fs3
	fld.d	$fa1, $sp, 984                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs2, $fa0
	fld.d	$fa1, $sp, 976                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs0, $fa0
	fld.d	$fa1, $sp, 968                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $ft15, $fa0
	fld.d	$fa1, $sp, 960                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $ft12, $fa0
	fld.d	$fa1, $sp, 280                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs4, $fa0
	fld.d	$fa1, $sp, 272                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs1, $fa0
	fld.d	$fa1, $sp, 264                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $ft14, $fa0
	fld.d	$fa1, $sp, 256                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fmul.d	$fa1, $ft3, $fs3
	fadd.d	$ft4, $fa0, $fa1
	fld.d	$fa0, $sp, 248                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa0, $ft13, $fs3
	fld.d	$fa1, $sp, 240                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs2, $fa0
	fld.d	$fa1, $sp, 232                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs0, $fa0
	fld.d	$fa3, $sp, 216                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa3, $ft15, $fa0
	fld.d	$fa4, $sp, 208                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa4, $ft12, $fa0
	fld.d	$fa1, $sp, 952                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs4, $fa0
	fld.d	$fa1, $sp, 944                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs1, $fa0
	fld.d	$fa1, $sp, 936                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $ft14, $fa0
	fld.d	$fa1, $sp, 928                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fmul.d	$fa1, $ft0, $fs3
	fadd.d	$ft3, $fa0, $fa1
	fld.d	$fa0, $sp, 920                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa0, $ft13, $fs3
	fld.d	$fa1, $sp, 912                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs2, $fa0
	fld.d	$fa1, $sp, 904                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs0, $fa0
	fld.d	$fa1, $sp, 896                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $ft15, $fa0
	fld.d	$fa1, $sp, 888                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $ft12, $fa0
	fld.d	$fa1, $sp, 880                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs4, $fa0
	fld.d	$fa1, $sp, 872                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs1, $fa0
	fld.d	$fa1, $sp, 864                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $ft14, $fa0
	fld.d	$fa1, $sp, 856                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fmul.d	$fa1, $ft1, $fs3
	fadd.d	$ft0, $fa0, $fa1
	fld.d	$fa0, $sp, 848                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa0, $ft13, $fs3
	fld.d	$fa1, $sp, 840                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs2, $fa0
	fld.d	$fa1, $sp, 832                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs0, $fa0
	fld.d	$fa1, $sp, 824                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $ft15, $fa0
	fld.d	$fa1, $sp, 816                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $ft12, $fa0
	fld.d	$fa1, $sp, 808                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs4, $fa0
	fld.d	$fa1, $sp, 800                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs1, $fa0
	fld.d	$fa1, $sp, 792                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $ft14, $fa0
	fld.d	$fa1, $sp, 784                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fmul.d	$fa1, $ft2, $fs3
	fadd.d	$ft1, $fa0, $fa1
	fld.d	$fa0, $sp, 776                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa0, $ft13, $fs3
	fld.d	$fa1, $sp, 768                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs2, $fa0
	fld.d	$fa1, $sp, 760                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs0, $fa0
	fld.d	$fa1, $sp, 752                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $ft15, $fa0
	fld.d	$fa1, $sp, 744                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $ft12, $fa0
	fld.d	$fa1, $sp, 736                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs4, $fa0
	fld.d	$fa1, $sp, 728                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs1, $fa0
	fld.d	$fa1, $sp, 720                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $ft14, $fa0
	fld.d	$fa1, $sp, 712                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fmul.d	$fa1, $fs7, $fs3
	fadd.d	$ft2, $fa0, $fa1
	fld.d	$fa0, $sp, 704                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa0, $ft13, $fs3
	fld.d	$fa1, $sp, 696                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs2, $fa0
	fld.d	$fa1, $sp, 688                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs0, $fa0
	fld.d	$fa1, $sp, 680                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $ft15, $fa0
	fld.d	$fa1, $sp, 672                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $ft12, $fa0
	fld.d	$fa1, $sp, 664                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs4, $fa0
	fld.d	$fa1, $sp, 656                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs1, $fa0
	fld.d	$fa1, $sp, 648                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $ft14, $fa0
	fld.d	$fa1, $sp, 640                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fld.d	$fa1, $sp, 312                  # 8-byte Folded Reload
	fmul.d	$fa1, $fa1, $fs3
	fadd.d	$fs7, $fa0, $fa1
	fld.d	$fa0, $sp, 632                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa0, $ft13, $fs3
	fld.d	$fa1, $sp, 624                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs2, $fa0
	fld.d	$fa1, $sp, 616                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs0, $fa0
	fld.d	$fa1, $sp, 608                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $ft15, $fa0
	fld.d	$fa1, $sp, 600                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $ft12, $fa0
	fld.d	$fa1, $sp, 592                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs4, $fa0
	fld.d	$fa1, $sp, 584                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs1, $fa0
	fld.d	$fa1, $sp, 576                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $ft14, $fa0
	fld.d	$fa1, $sp, 568                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fmul.d	$fa1, $fs5, $fs3
	fadd.d	$fs6, $fa0, $fa1
	fld.d	$fa0, $sp, 560                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa0, $ft13, $fs3
	fld.d	$fa1, $sp, 552                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs2, $fa0
	fld.d	$fa1, $sp, 544                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs0, $fa0
	fld.d	$fa1, $sp, 536                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $ft15, $fa0
	fld.d	$fa1, $sp, 528                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $ft12, $fa0
	fld.d	$fa1, $sp, 520                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs4, $fa0
	fld.d	$fa1, $sp, 512                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs1, $fa0
	fld.d	$fa1, $sp, 504                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $ft14, $fa0
	fld.d	$fa1, $sp, 496                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fld.d	$fa1, $sp, 320                  # 8-byte Folded Reload
	fmul.d	$fa1, $fa1, $fs3
	fadd.d	$fs5, $fa0, $fa1
	fld.d	$fa0, $sp, 488                  # 8-byte Folded Reload
	fst.d	$ft13, $sp, 1024                # 8-byte Folded Spill
	fmadd.d	$fa0, $fa0, $ft13, $fs3
	fld.d	$ft13, $sp, 1128                # 8-byte Folded Reload
	fld.d	$fa1, $sp, 480                  # 8-byte Folded Reload
	fst.d	$fs2, $sp, 1032                 # 8-byte Folded Spill
	fmadd.d	$fa0, $fa1, $fs2, $fa0
	fld.d	$fa1, $sp, 472                  # 8-byte Folded Reload
	fst.d	$fs0, $sp, 1048                 # 8-byte Folded Spill
	fmadd.d	$fa0, $fa1, $fs0, $fa0
	fld.d	$fa1, $sp, 464                  # 8-byte Folded Reload
	fst.d	$ft15, $sp, 1056                # 8-byte Folded Spill
	fmadd.d	$fa0, $fa1, $ft15, $fa0
	fld.d	$ft15, $sp, 1112                # 8-byte Folded Reload
	fld.d	$fa1, $sp, 456                  # 8-byte Folded Reload
	fst.d	$ft12, $sp, 992                 # 8-byte Folded Spill
	fmadd.d	$fa0, $fa1, $ft12, $fa0
	fld.d	$fa1, $sp, 448                  # 8-byte Folded Reload
	fst.d	$fs4, $sp, 1000                 # 8-byte Folded Spill
	fmadd.d	$fa0, $fa1, $fs4, $fa0
	fld.d	$fs4, $sp, 1120                 # 8-byte Folded Reload
	fld.d	$fa1, $sp, 440                  # 8-byte Folded Reload
	fst.d	$fs1, $sp, 1008                 # 8-byte Folded Spill
	fmadd.d	$fa0, $fa1, $fs1, $fa0
	fld.d	$fa1, $sp, 432                  # 8-byte Folded Reload
	fst.d	$ft14, $sp, 1016                # 8-byte Folded Spill
	fmadd.d	$fa0, $fa1, $ft14, $fa0
	fld.d	$fs2, $sp, 1096                 # 8-byte Folded Reload
	fld.d	$fa1, $sp, 424                  # 8-byte Folded Reload
	fst.d	$fa2, $sp, 1040                 # 8-byte Folded Spill
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fld.d	$fa1, $sp, 224                  # 8-byte Folded Reload
	fmul.d	$fa1, $fa1, $fs3
	fadd.d	$fa1, $fa0, $fa1
	vld	$vr0, $sp, 400                  # 16-byte Folded Reload
	fst.d	$ft4, $sp, 88                   # 8-byte Folded Spill
	fmadd.d	$fa0, $fa0, $ft4, $fs3
	fld.d	$fa2, $sp, 416                  # 8-byte Folded Reload
	fst.d	$ft3, $sp, 64                   # 8-byte Folded Spill
	fmadd.d	$fa0, $fa2, $ft3, $fa0
	fst.d	$fa6, $sp, 120                  # 8-byte Folded Spill
	fst.d	$ft0, $sp, 72                   # 8-byte Folded Spill
	fmadd.d	$fa0, $fa6, $ft0, $fa0
	fst.d	$fa7, $sp, 128                  # 8-byte Folded Spill
	fst.d	$ft1, $sp, 96                   # 8-byte Folded Spill
	fmadd.d	$fa0, $fa7, $ft1, $fa0
	fst.d	$fa5, $sp, 136                  # 8-byte Folded Spill
	fst.d	$ft2, $sp, 104                  # 8-byte Folded Spill
	fmadd.d	$fa0, $fa5, $ft2, $fa0
	fst.d	$fs7, $sp, 312                  # 8-byte Folded Spill
	fmadd.d	$fa0, $ft15, $fs7, $fa0
	fst.d	$fs6, $sp, 80                   # 8-byte Folded Spill
	fmadd.d	$fa0, $fs4, $fs6, $fa0
	fst.d	$fs5, $sp, 320                  # 8-byte Folded Spill
	fmadd.d	$fa0, $fs2, $fs5, $fa0
	fmadd.d	$fa0, $ft13, $fa1, $fa0
	fcmp.ceq.d	$fcc0, $fa0, $fs3
	ori	$s4, $zero, 1
	bcnez	$fcc0, .LBB3_16
# %bb.7:                                # %if.end216
                                        #   in Loop: Header=BB3_6 Depth=2
	fst.d	$fa1, $sp, 224                  # 8-byte Folded Spill
	fld.d	$fa1, $sp, 1104                 # 8-byte Folded Reload
	fst.d	$fa1, $sp, 1104                 # 8-byte Folded Spill
	fld.d	$fa1, $sp, 392                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa1, $ft11, $fs3
	fld.d	$fa2, $sp, 984                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft10, $fa1
	fld.d	$fa2, $sp, 976                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft9, $fa1
	fld.d	$fa2, $sp, 968                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft8, $fa1
	fld.d	$fa2, $sp, 960                  # 8-byte Folded Reload
	fld.d	$ft7, $sp, 1064                 # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft7, $fa1
	vld	$vr11, $sp, 288                 # 16-byte Folded Reload
	fld.d	$fs2, $sp, 280                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fs2, $ft3, $fa1
	fld.d	$fs1, $sp, 272                  # 8-byte Folded Reload
	fld.d	$ft6, $sp, 1072                 # 8-byte Folded Reload
	fmadd.d	$fa1, $fs1, $ft6, $fa1
	fld.d	$fs4, $sp, 264                  # 8-byte Folded Reload
	fld.d	$ft5, $sp, 1080                 # 8-byte Folded Reload
	fmadd.d	$fa1, $fs4, $ft5, $fa1
	fld.d	$ft15, $sp, 256                 # 8-byte Folded Reload
	fld.d	$ft4, $sp, 1088                 # 8-byte Folded Reload
	fmadd.d	$fa1, $ft15, $ft4, $fa1
	fld.d	$fa2, $sp, 144                  # 8-byte Folded Reload
	fmul.d	$fa2, $fa2, $fs3
	fadd.d	$ft14, $fa1, $fa2
	fld.d	$fs5, $sp, 248                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fs5, $ft11, $fs3
	fld.d	$fs6, $sp, 240                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fs6, $ft10, $fa2
	fld.d	$fs7, $sp, 232                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fs7, $ft9, $fa2
	fmadd.d	$fa2, $fa3, $ft8, $fa2
	fmadd.d	$fa2, $fa4, $ft7, $fa2
	fld.d	$fa5, $sp, 952                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fa5, $ft3, $fa2
	fld.d	$fa5, $sp, 944                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fa5, $ft6, $fa2
	fld.d	$fa5, $sp, 936                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fa5, $ft5, $fa2
	fld.d	$fa5, $sp, 928                  # 8-byte Folded Reload
	fmadd.d	$fa2, $fa5, $ft4, $fa2
	fld.d	$fa3, $sp, 152                  # 8-byte Folded Reload
	fmul.d	$fa3, $fa3, $fs3
	fadd.d	$ft13, $fa2, $fa3
	fld.d	$fa3, $sp, 920                  # 8-byte Folded Reload
	fmadd.d	$fa3, $fa3, $ft11, $fs3
	fld.d	$fa5, $sp, 912                  # 8-byte Folded Reload
	fmadd.d	$fa3, $fa5, $ft10, $fa3
	fld.d	$fa5, $sp, 904                  # 8-byte Folded Reload
	fmadd.d	$fa3, $fa5, $ft9, $fa3
	fld.d	$fa5, $sp, 896                  # 8-byte Folded Reload
	fmadd.d	$fa3, $fa5, $ft8, $fa3
	fld.d	$fa5, $sp, 888                  # 8-byte Folded Reload
	fmadd.d	$fa3, $fa5, $ft7, $fa3
	fld.d	$fa5, $sp, 880                  # 8-byte Folded Reload
	fmadd.d	$fa3, $fa5, $ft3, $fa3
	fld.d	$fa5, $sp, 872                  # 8-byte Folded Reload
	fmadd.d	$fa3, $fa5, $ft6, $fa3
	fld.d	$fa5, $sp, 864                  # 8-byte Folded Reload
	fmadd.d	$fa3, $fa5, $ft5, $fa3
	fld.d	$fa5, $sp, 856                  # 8-byte Folded Reload
	fmadd.d	$fa3, $fa5, $ft4, $fa3
	fld.d	$fa4, $sp, 160                  # 8-byte Folded Reload
	fmul.d	$fa4, $fa4, $fs3
	fadd.d	$ft12, $fa3, $fa4
	fld.d	$fa4, $sp, 848                  # 8-byte Folded Reload
	fmadd.d	$fa4, $fa4, $ft11, $fs3
	fld.d	$fa5, $sp, 840                  # 8-byte Folded Reload
	fmadd.d	$fa4, $fa5, $ft10, $fa4
	fld.d	$fa5, $sp, 832                  # 8-byte Folded Reload
	fmadd.d	$fa4, $fa5, $ft9, $fa4
	fld.d	$fa5, $sp, 824                  # 8-byte Folded Reload
	fmadd.d	$fa4, $fa5, $ft8, $fa4
	fld.d	$fa5, $sp, 816                  # 8-byte Folded Reload
	fmadd.d	$fa4, $fa5, $ft7, $fa4
	fld.d	$fa5, $sp, 808                  # 8-byte Folded Reload
	fmadd.d	$fa4, $fa5, $ft3, $fa4
	fld.d	$fa5, $sp, 800                  # 8-byte Folded Reload
	fmadd.d	$fa4, $fa5, $ft6, $fa4
	fld.d	$fa5, $sp, 792                  # 8-byte Folded Reload
	fmadd.d	$fa4, $fa5, $ft5, $fa4
	fld.d	$fa5, $sp, 784                  # 8-byte Folded Reload
	fmadd.d	$fa4, $fa5, $ft4, $fa4
	fld.d	$fa5, $sp, 168                  # 8-byte Folded Reload
	fmul.d	$fa5, $fa5, $fs3
	fadd.d	$fa1, $fa4, $fa5
	fld.d	$fa5, $sp, 776                  # 8-byte Folded Reload
	fmadd.d	$fa5, $fa5, $ft11, $fs3
	fld.d	$fa6, $sp, 768                  # 8-byte Folded Reload
	fmadd.d	$fa5, $fa6, $ft10, $fa5
	fld.d	$fa6, $sp, 760                  # 8-byte Folded Reload
	fmadd.d	$fa5, $fa6, $ft9, $fa5
	fld.d	$fa6, $sp, 752                  # 8-byte Folded Reload
	fmadd.d	$fa5, $fa6, $ft8, $fa5
	fld.d	$fa6, $sp, 744                  # 8-byte Folded Reload
	fmadd.d	$fa5, $fa6, $ft7, $fa5
	fld.d	$fa6, $sp, 736                  # 8-byte Folded Reload
	fmadd.d	$fa5, $fa6, $ft3, $fa5
	fld.d	$fa6, $sp, 728                  # 8-byte Folded Reload
	fmadd.d	$fa5, $fa6, $ft6, $fa5
	fld.d	$fa6, $sp, 720                  # 8-byte Folded Reload
	fmadd.d	$fa5, $fa6, $ft5, $fa5
	fld.d	$fa6, $sp, 712                  # 8-byte Folded Reload
	fmadd.d	$fa5, $fa6, $ft4, $fa5
	fld.d	$fa6, $sp, 176                  # 8-byte Folded Reload
	fmul.d	$fa6, $fa6, $fs3
	fst.d	$fa0, $sp, 176                  # 8-byte Folded Spill
	fadd.d	$fa0, $fa5, $fa6
	fld.d	$fa6, $sp, 704                  # 8-byte Folded Reload
	fmadd.d	$fa6, $fa6, $ft11, $fs3
	fld.d	$fa7, $sp, 696                  # 8-byte Folded Reload
	fmadd.d	$fa6, $fa7, $ft10, $fa6
	fld.d	$fa7, $sp, 688                  # 8-byte Folded Reload
	fmadd.d	$fa6, $fa7, $ft9, $fa6
	fld.d	$fa7, $sp, 680                  # 8-byte Folded Reload
	fmadd.d	$fa6, $fa7, $ft8, $fa6
	fld.d	$fa7, $sp, 672                  # 8-byte Folded Reload
	fmadd.d	$fa6, $fa7, $ft7, $fa6
	fld.d	$fa7, $sp, 664                  # 8-byte Folded Reload
	fmadd.d	$fa6, $fa7, $ft3, $fa6
	fld.d	$fa7, $sp, 656                  # 8-byte Folded Reload
	fmadd.d	$fa6, $fa7, $ft6, $fa6
	fld.d	$fa7, $sp, 648                  # 8-byte Folded Reload
	fmadd.d	$fa6, $fa7, $ft5, $fa6
	fld.d	$fa7, $sp, 640                  # 8-byte Folded Reload
	fmadd.d	$fa6, $fa7, $ft4, $fa6
	fld.d	$fa7, $sp, 184                  # 8-byte Folded Reload
	fmul.d	$fa7, $fa7, $fs3
	fadd.d	$fa6, $fa6, $fa7
	fld.d	$fa7, $sp, 632                  # 8-byte Folded Reload
	fmadd.d	$fa7, $fa7, $ft11, $fs3
	fld.d	$ft0, $sp, 624                  # 8-byte Folded Reload
	fmadd.d	$fa7, $ft0, $ft10, $fa7
	fld.d	$ft0, $sp, 616                  # 8-byte Folded Reload
	fmadd.d	$fa7, $ft0, $ft9, $fa7
	fld.d	$ft0, $sp, 608                  # 8-byte Folded Reload
	fmadd.d	$fa7, $ft0, $ft8, $fa7
	fld.d	$ft0, $sp, 600                  # 8-byte Folded Reload
	fmadd.d	$fa7, $ft0, $ft7, $fa7
	fld.d	$ft0, $sp, 592                  # 8-byte Folded Reload
	fmadd.d	$fa7, $ft0, $ft3, $fa7
	fld.d	$ft0, $sp, 584                  # 8-byte Folded Reload
	fmadd.d	$fa7, $ft0, $ft6, $fa7
	fld.d	$ft0, $sp, 576                  # 8-byte Folded Reload
	fmadd.d	$fa7, $ft0, $ft5, $fa7
	fld.d	$ft0, $sp, 568                  # 8-byte Folded Reload
	fmadd.d	$fa7, $ft0, $ft4, $fa7
	fld.d	$ft0, $sp, 192                  # 8-byte Folded Reload
	fmul.d	$ft0, $ft0, $fs3
	fadd.d	$fs0, $fa7, $ft0
	fld.d	$ft0, $sp, 560                  # 8-byte Folded Reload
	fmadd.d	$ft0, $ft0, $ft11, $fs3
	fld.d	$ft1, $sp, 552                  # 8-byte Folded Reload
	fmadd.d	$ft0, $ft1, $ft10, $ft0
	fld.d	$ft1, $sp, 544                  # 8-byte Folded Reload
	fmadd.d	$ft0, $ft1, $ft9, $ft0
	fld.d	$ft1, $sp, 536                  # 8-byte Folded Reload
	fmadd.d	$ft0, $ft1, $ft8, $ft0
	fld.d	$ft1, $sp, 528                  # 8-byte Folded Reload
	fmadd.d	$ft0, $ft1, $ft7, $ft0
	fld.d	$ft1, $sp, 520                  # 8-byte Folded Reload
	fmadd.d	$ft0, $ft1, $ft3, $ft0
	fld.d	$ft1, $sp, 512                  # 8-byte Folded Reload
	fmadd.d	$ft0, $ft1, $ft6, $ft0
	fld.d	$ft1, $sp, 504                  # 8-byte Folded Reload
	fmadd.d	$ft0, $ft1, $ft5, $ft0
	fld.d	$ft1, $sp, 496                  # 8-byte Folded Reload
	fmadd.d	$ft0, $ft1, $ft4, $ft0
	fld.d	$ft1, $sp, 200                  # 8-byte Folded Reload
	fmul.d	$ft1, $ft1, $fs3
	fadd.d	$ft0, $ft0, $ft1
	fld.d	$ft1, $sp, 488                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft1, $ft11, $fs3
	fld.d	$ft2, $sp, 480                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $ft10, $ft1
	fld.d	$ft2, $sp, 472                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $ft9, $ft1
	fld.d	$ft2, $sp, 464                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $ft8, $ft1
	fld.d	$ft2, $sp, 456                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $ft7, $ft1
	fld.d	$ft2, $sp, 448                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $ft3, $ft1
	fld.d	$ft2, $sp, 440                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $ft6, $ft1
	fld.d	$ft2, $sp, 432                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $ft5, $ft1
	fld.d	$ft2, $sp, 424                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $ft4, $ft1
	fld.d	$ft2, $sp, 112                  # 8-byte Folded Reload
	fmul.d	$ft2, $ft2, $fs3
	fadd.d	$fa7, $ft1, $ft2
	fmov.d	$fa2, $ft14
	fmadd.d	$ft2, $ft11, $ft14, $fs3
	fmov.d	$fa3, $ft13
	fmadd.d	$ft2, $ft10, $ft13, $ft2
	fmov.d	$fa4, $ft12
	fmadd.d	$ft2, $ft9, $ft12, $ft2
	fmov.d	$fa5, $fa1
	fmadd.d	$ft2, $ft8, $fa1, $ft2
	fmov.d	$ft1, $fa0
	fmadd.d	$ft2, $ft7, $fa0, $ft2
	fst.d	$fa6, $sp, 200                  # 8-byte Folded Spill
	fmadd.d	$ft2, $ft3, $fa6, $ft2
	fst.d	$fs0, $sp, 192                  # 8-byte Folded Spill
	fmadd.d	$ft2, $ft6, $fs0, $ft2
	fmadd.d	$ft2, $ft5, $ft0, $ft2
	fmadd.d	$ft2, $ft4, $fa7, $ft2
	fld.d	$ft14, $sp, 960                 # 8-byte Folded Reload
	fmov.d	$ft13, $fs2
	fmov.d	$ft12, $ft15
	fld.d	$fa1, $sp, 968                  # 8-byte Folded Reload
	fld.d	$ft15, $sp, 976                 # 8-byte Folded Reload
	fld.d	$fs2, $sp, 984                  # 8-byte Folded Reload
	fld.d	$fa0, $sp, 176                  # 8-byte Folded Reload
	fdiv.d	$fs0, $ft2, $fa0
	fclass.d	$fa0, $fs0
	movfr2gr.d	$a0, $fa0
	andi	$a0, $a0, 68
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	bnez	$a0, .LBB3_17
# %bb.8:                                # %for.body.i147.preheader
                                        #   in Loop: Header=BB3_6 Depth=2
	fmov.d	$fa6, $ft0
	fst.d	$ft2, $sp, 56                   # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1024                 # 8-byte Folded Reload
	fmul.d	$fa0, $fs0, $fa0
	fsub.d	$ft11, $ft11, $fa0
	fld.d	$fa0, $sp, 1032                 # 8-byte Folded Reload
	fmul.d	$fa0, $fs0, $fa0
	fsub.d	$ft10, $ft10, $fa0
	fld.d	$fa0, $sp, 1048                 # 8-byte Folded Reload
	fmul.d	$fa0, $fs0, $fa0
	fsub.d	$ft9, $ft9, $fa0
	fld.d	$fa0, $sp, 1056                 # 8-byte Folded Reload
	fmul.d	$fa0, $fs0, $fa0
	fsub.d	$ft8, $ft8, $fa0
	fld.d	$fa0, $sp, 992                  # 8-byte Folded Reload
	fmul.d	$fa0, $fs0, $fa0
	fsub.d	$ft0, $ft7, $fa0
	fld.d	$fa0, $sp, 1000                 # 8-byte Folded Reload
	fmul.d	$fa0, $fs0, $fa0
	fsub.d	$ft3, $ft3, $fa0
	fld.d	$fa0, $sp, 1008                 # 8-byte Folded Reload
	fmul.d	$fa0, $fs0, $fa0
	fsub.d	$ft6, $ft6, $fa0
	fld.d	$fa0, $sp, 1016                 # 8-byte Folded Reload
	fmul.d	$fa0, $fs0, $fa0
	fsub.d	$ft5, $ft5, $fa0
	fld.d	$fa0, $sp, 1040                 # 8-byte Folded Reload
	fmul.d	$fa0, $fs0, $fa0
	fsub.d	$ft4, $ft4, $fa0
	movgr2fr.d	$fa0, $zero
	fld.d	$ft2, $sp, 392                  # 8-byte Folded Reload
	fmadd.d	$ft2, $ft2, $ft11, $fa0
	fmadd.d	$ft2, $fs2, $ft10, $ft2
	fmadd.d	$ft2, $ft15, $ft9, $ft2
	fmadd.d	$ft2, $fa1, $ft8, $ft2
	fmadd.d	$ft2, $ft14, $ft0, $ft2
	fmadd.d	$ft2, $ft13, $ft3, $ft2
	fmadd.d	$ft2, $fs1, $ft6, $ft2
	fmadd.d	$ft2, $fs4, $ft5, $ft2
	fmadd.d	$ft2, $ft12, $ft4, $ft2
	fmul.d	$fa1, $fa2, $fa0
	fadd.d	$fs1, $ft2, $fa1
	fmadd.d	$fa1, $fs5, $ft11, $fa0
	fmadd.d	$fa1, $fs6, $ft10, $fa1
	fmadd.d	$fa1, $fs7, $ft9, $fa1
	fld.d	$fa2, $sp, 216                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft8, $fa1
	fld.d	$fa2, $sp, 208                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft0, $fa1
	fld.d	$ft2, $sp, 952                  # 8-byte Folded Reload
	fmadd.d	$fa1, $ft2, $ft3, $fa1
	fld.d	$ft2, $sp, 944                  # 8-byte Folded Reload
	fmadd.d	$fa1, $ft2, $ft6, $fa1
	fld.d	$ft2, $sp, 936                  # 8-byte Folded Reload
	fmadd.d	$fa1, $ft2, $ft5, $fa1
	fld.d	$ft2, $sp, 928                  # 8-byte Folded Reload
	fmadd.d	$fa1, $ft2, $ft4, $fa1
	fmul.d	$fa2, $fa3, $fa0
	fadd.d	$ft14, $fa1, $fa2
	fld.d	$fa1, $sp, 920                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa1, $ft11, $fa0
	fld.d	$fa2, $sp, 912                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft10, $fa1
	fld.d	$fa2, $sp, 904                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft9, $fa1
	fld.d	$fa2, $sp, 896                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft8, $fa1
	fld.d	$fa2, $sp, 888                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft0, $fa1
	fld.d	$fa2, $sp, 880                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft3, $fa1
	fld.d	$fa2, $sp, 872                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft6, $fa1
	fld.d	$fa2, $sp, 864                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft5, $fa1
	fld.d	$fa2, $sp, 856                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft4, $fa1
	fmul.d	$fa2, $fa4, $fa0
	fadd.d	$ft13, $fa1, $fa2
	fld.d	$fa1, $sp, 848                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa1, $ft11, $fa0
	fld.d	$fa2, $sp, 840                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft10, $fa1
	fld.d	$fa2, $sp, 832                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft9, $fa1
	fld.d	$fa2, $sp, 824                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft8, $fa1
	fld.d	$fa2, $sp, 816                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft0, $fa1
	fld.d	$fa2, $sp, 808                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft3, $fa1
	fld.d	$fa2, $sp, 800                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft6, $fa1
	fld.d	$fa2, $sp, 792                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft5, $fa1
	fld.d	$fa2, $sp, 784                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft4, $fa1
	fmul.d	$fa2, $fa5, $fa0
	fadd.d	$ft12, $fa1, $fa2
	fld.d	$fa1, $sp, 776                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa1, $ft11, $fa0
	fld.d	$fa2, $sp, 768                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft10, $fa1
	fld.d	$fa2, $sp, 760                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft9, $fa1
	fld.d	$fa2, $sp, 752                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft8, $fa1
	fld.d	$fa2, $sp, 744                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft0, $fa1
	fld.d	$fa2, $sp, 736                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft3, $fa1
	fld.d	$fa2, $sp, 728                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft6, $fa1
	fld.d	$fa2, $sp, 720                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft5, $fa1
	fld.d	$fa2, $sp, 712                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft4, $fa1
	fmul.d	$fa2, $ft1, $fa0
	fadd.d	$ft2, $fa1, $fa2
	fld.d	$fa1, $sp, 704                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa1, $ft11, $fa0
	fld.d	$fa2, $sp, 696                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft10, $fa1
	fld.d	$fa2, $sp, 688                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft9, $fa1
	fld.d	$fa2, $sp, 680                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft8, $fa1
	fld.d	$fa2, $sp, 672                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft0, $fa1
	fld.d	$fa2, $sp, 664                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft3, $fa1
	fld.d	$fa2, $sp, 656                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft6, $fa1
	fld.d	$fa2, $sp, 648                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft5, $fa1
	fld.d	$fa2, $sp, 640                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft4, $fa1
	fld.d	$fa2, $sp, 200                  # 8-byte Folded Reload
	fmul.d	$fa2, $fa2, $fa0
	fadd.d	$fa5, $fa1, $fa2
	fld.d	$fa1, $sp, 632                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa1, $ft11, $fa0
	fld.d	$fa2, $sp, 624                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft10, $fa1
	fld.d	$fa2, $sp, 616                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft9, $fa1
	fld.d	$fa2, $sp, 608                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft8, $fa1
	fld.d	$fa2, $sp, 600                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft0, $fa1
	fld.d	$fa2, $sp, 592                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft3, $fa1
	fld.d	$fa2, $sp, 584                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft6, $fa1
	fld.d	$fa2, $sp, 576                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft5, $fa1
	fld.d	$fa2, $sp, 568                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft4, $fa1
	fld.d	$fa2, $sp, 192                  # 8-byte Folded Reload
	fmul.d	$fa2, $fa2, $fa0
	fadd.d	$fa4, $fa1, $fa2
	fld.d	$fa1, $sp, 560                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa1, $ft11, $fa0
	fld.d	$fa2, $sp, 552                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft10, $fa1
	fld.d	$fa2, $sp, 544                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft9, $fa1
	fld.d	$fa2, $sp, 536                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft8, $fa1
	fld.d	$fa2, $sp, 528                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft0, $fa1
	fld.d	$fa2, $sp, 520                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft3, $fa1
	fld.d	$fa2, $sp, 512                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft6, $fa1
	fld.d	$fa2, $sp, 504                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft5, $fa1
	fld.d	$fa2, $sp, 496                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft4, $fa1
	fmul.d	$fa2, $fa6, $fa0
	fadd.d	$fa3, $fa1, $fa2
	fld.d	$fa1, $sp, 488                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa1, $ft11, $fa0
	fld.d	$fa2, $sp, 480                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft10, $fa1
	fld.d	$fa2, $sp, 472                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft9, $fa1
	fld.d	$fa2, $sp, 464                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft8, $fa1
	fld.d	$fa2, $sp, 456                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft0, $fa1
	fld.d	$fa2, $sp, 448                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft3, $fa1
	fld.d	$fa2, $sp, 440                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft6, $fa1
	fld.d	$fa2, $sp, 432                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft5, $fa1
	fld.d	$fa2, $sp, 424                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft4, $fa1
	fmul.d	$fa2, $fa7, $fa0
	fadd.d	$ft15, $fa1, $fa2
	fst.d	$fs1, $sp, 144                  # 8-byte Folded Spill
	fmadd.d	$fa1, $ft11, $fs1, $fa0
	fst.d	$ft14, $sp, 152                 # 8-byte Folded Spill
	fmadd.d	$fa1, $ft10, $ft14, $fa1
	fst.d	$ft13, $sp, 160                 # 8-byte Folded Spill
	fmadd.d	$fa1, $ft9, $ft13, $fa1
	fst.d	$ft12, $sp, 168                 # 8-byte Folded Spill
	fmadd.d	$fa1, $ft8, $ft12, $fa1
	fst.d	$ft2, $sp, 176                  # 8-byte Folded Spill
	fst.d	$ft0, $sp, 1064                 # 8-byte Folded Spill
	fmadd.d	$fa1, $ft0, $ft2, $fa1
	vori.b	$vr20, $vr11, 0
	fst.d	$fa5, $sp, 184                  # 8-byte Folded Spill
	fmadd.d	$fa1, $ft3, $fa5, $fa1
	fst.d	$fa4, $sp, 192                  # 8-byte Folded Spill
	fst.d	$ft6, $sp, 1072                 # 8-byte Folded Spill
	fmadd.d	$fa1, $ft6, $fa4, $fa1
	fst.d	$fa3, $sp, 200                  # 8-byte Folded Spill
	fst.d	$ft5, $sp, 1080                 # 8-byte Folded Spill
	fmadd.d	$fa1, $ft5, $fa3, $fa1
	fst.d	$ft4, $sp, 1088                 # 8-byte Folded Spill
	fmadd.d	$fs2, $ft4, $ft15, $fa1
	fcmp.cule.d	$fcc0, $fs2, $fa0
	bcnez	$fcc0, .LBB3_10
# %bb.9:                                # %if.then256
                                        #   in Loop: Header=BB3_6 Depth=2
	fsqrt.d	$fa0, $fs2
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB3_14
.LBB3_10:                               # %if.end258
                                        #   in Loop: Header=BB3_6 Depth=2
	vld	$vr7, $sp, 400                  # 16-byte Folded Reload
	fmul.d	$fa1, $fs0, $fa7
	fld.d	$ft14, $sp, 1104                # 8-byte Folded Reload
	fadd.d	$ft14, $ft14, $fa1
	fld.d	$fa6, $sp, 416                  # 8-byte Folded Reload
	fmul.d	$fa1, $fs0, $fa6
	fld.d	$fa2, $sp, 328                  # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa1
	fst.d	$fa2, $sp, 328                  # 8-byte Folded Spill
	fld.d	$fa5, $sp, 120                  # 8-byte Folded Reload
	fmul.d	$fa1, $fs0, $fa5
	fld.d	$fa2, $sp, 336                  # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa1
	fst.d	$fa2, $sp, 336                  # 8-byte Folded Spill
	fld.d	$fa4, $sp, 128                  # 8-byte Folded Reload
	fmul.d	$fa1, $fs0, $fa4
	fld.d	$fa2, $sp, 344                  # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa1
	fst.d	$fa2, $sp, 344                  # 8-byte Folded Spill
	fld.d	$fa3, $sp, 136                  # 8-byte Folded Reload
	fmul.d	$fa1, $fs0, $fa3
	fld.d	$fa2, $sp, 352                  # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa1
	fst.d	$fa2, $sp, 352                  # 8-byte Folded Spill
	fld.d	$fs5, $sp, 1112                 # 8-byte Folded Reload
	fmul.d	$fa1, $fs0, $fs5
	fld.d	$fa2, $sp, 360                  # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa1
	fst.d	$fa2, $sp, 360                  # 8-byte Folded Spill
	fld.d	$fs4, $sp, 1120                 # 8-byte Folded Reload
	fmul.d	$fa1, $fs0, $fs4
	fld.d	$ft1, $sp, 368                  # 8-byte Folded Reload
	fadd.d	$ft1, $ft1, $fa1
	fld.d	$ft13, $sp, 1096                # 8-byte Folded Reload
	fmul.d	$fa1, $fs0, $ft13
	fld.d	$ft0, $sp, 376                  # 8-byte Folded Reload
	fadd.d	$ft0, $ft0, $fa1
	fld.d	$fs1, $sp, 1128                 # 8-byte Folded Reload
	fmul.d	$fa1, $fs0, $fs1
	fld.d	$fa2, $sp, 48                   # 8-byte Folded Reload
	fcmp.clt.d	$fcc0, $fa0, $fa2
	fld.d	$fa2, $sp, 384                  # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa1
	fld.d	$fs7, $sp, 104                  # 8-byte Folded Reload
	fld.d	$ft2, $sp, 96                   # 8-byte Folded Reload
	fld.d	$ft3, $sp, 88                   # 8-byte Folded Reload
	fst.d	$fa2, $sp, 384                  # 8-byte Folded Spill
	fst.d	$ft0, $sp, 376                  # 8-byte Folded Spill
	fst.d	$ft1, $sp, 368                  # 8-byte Folded Spill
	bcnez	$fcc0, .LBB3_19
# %bb.11:                               # %if.end261
                                        #   in Loop: Header=BB3_6 Depth=2
	fst.d	$ft15, $sp, 112                 # 8-byte Folded Spill
	movgr2fr.d	$fa0, $zero
	fcmp.ceq.d	$fcc0, $fs2, $fa0
	ori	$s4, $zero, 1
	vori.b	$vr23, $vr20, 0
	bcnez	$fcc0, .LBB3_15
# %bb.12:                               # %if.end264
                                        #   in Loop: Header=BB3_6 Depth=2
	fld.d	$fa0, $sp, 56                   # 8-byte Folded Reload
	fdiv.d	$fa0, $fs2, $fa0
	fclass.d	$fa1, $fa0
	movfr2gr.d	$a0, $fa1
	andi	$a0, $a0, 612
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	bnez	$a0, .LBB3_15
# %bb.13:                               # %for.body.i170.preheader
                                        #   in Loop: Header=BB3_6 Depth=2
	fst.d	$ft14, $sp, 1104                # 8-byte Folded Spill
	fmul.d	$fa1, $fa0, $fa7
	fadd.d	$fs0, $ft11, $fa1
	fmul.d	$fa1, $fa0, $fa6
	fadd.d	$fa2, $ft10, $fa1
	fmul.d	$fa1, $fa0, $fa5
	fadd.d	$fa6, $ft9, $fa1
	fmul.d	$fa1, $fa0, $fa4
	fadd.d	$fa7, $ft8, $fa1
	fmul.d	$fa1, $fa0, $fa3
	fld.d	$fa3, $sp, 1064                 # 8-byte Folded Reload
	fadd.d	$fa5, $fa3, $fa1
	fmul.d	$fa1, $fa0, $fs5
	fadd.d	$ft12, $ft15, $fa1
	fmul.d	$fa1, $fa0, $fs4
	fld.d	$fa3, $sp, 1072                 # 8-byte Folded Reload
	fadd.d	$fs4, $fa3, $fa1
	fmul.d	$fa1, $fa0, $ft13
	fld.d	$fa3, $sp, 1080                 # 8-byte Folded Reload
	fadd.d	$ft14, $fa3, $fa1
	fmul.d	$fa0, $fa0, $fs1
	addi.w	$s3, $s3, -1
	fld.d	$fa1, $sp, 1088                 # 8-byte Folded Reload
	fadd.d	$fs1, $fa1, $fa0
	fld.d	$fs6, $sp, 392                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 80                   # 8-byte Folded Reload
	fld.d	$ft1, $sp, 72                   # 8-byte Folded Reload
	fld.d	$ft0, $sp, 64                   # 8-byte Folded Reload
	bnez	$s3, .LBB3_6
	b	.LBB3_20
.LBB3_14:                               # %call.sqrt858
                                        #   in Loop: Header=BB3_6 Depth=2
	fmov.d	$fa0, $fs2
	vst	$vr20, $sp, 288                 # 16-byte Folded Spill
	fst.d	$ft8, $sp, 112                  # 8-byte Folded Spill
	fst.d	$ft9, $sp, 40                   # 8-byte Folded Spill
	fst.d	$ft10, $sp, 16                  # 8-byte Folded Spill
	fst.d	$ft11, $sp, 8                   # 8-byte Folded Spill
	fmov.d	$fs1, $ft15
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$ft15, $fs1
	fld.d	$ft11, $sp, 8                   # 8-byte Folded Reload
	fld.d	$ft10, $sp, 16                  # 8-byte Folded Reload
	fld.d	$ft9, $sp, 40                   # 8-byte Folded Reload
	fld.d	$ft8, $sp, 112                  # 8-byte Folded Reload
	vld	$vr20, $sp, 288                 # 16-byte Folded Reload
	b	.LBB3_10
	.p2align	4, , 16
.LBB3_15:                               #   in Loop: Header=BB3_5 Depth=1
	fmov.d	$fs2, $ft13
	fmov.d	$fs0, $ft11
	fmov.d	$fs7, $ft10
	fst.d	$ft9, $sp, 40                   # 8-byte Folded Spill
	fst.d	$ft8, $sp, 112                  # 8-byte Folded Spill
	vst	$vr23, $sp, 288                 # 16-byte Folded Spill
	move	$s3, $zero
	ori	$s5, $zero, 1
	b	.LBB3_22
.LBB3_16:                               #   in Loop: Header=BB3_5 Depth=1
	fmov.d	$fs5, $ft15
	fmov.d	$fs1, $ft13
	fmov.d	$fs0, $ft11
	fmov.d	$fs7, $ft10
	fst.d	$ft9, $sp, 40                   # 8-byte Folded Spill
	fst.d	$ft8, $sp, 112                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1064                 # 8-byte Folded Reload
	fst.d	$fa0, $sp, 1064                 # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1072                 # 8-byte Folded Reload
	fst.d	$fa0, $sp, 1072                 # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1080                 # 8-byte Folded Reload
	fst.d	$fa0, $sp, 1080                 # 8-byte Folded Spill
	fld.d	$fa0, $sp, 1088                 # 8-byte Folded Reload
	fst.d	$fa0, $sp, 1088                 # 8-byte Folded Spill
	b	.LBB3_18
.LBB3_17:                               #   in Loop: Header=BB3_5 Depth=1
	fld.d	$fs5, $sp, 1112                 # 8-byte Folded Reload
	fld.d	$fs4, $sp, 1120                 # 8-byte Folded Reload
	fld.d	$fs2, $sp, 1096                 # 8-byte Folded Reload
	fld.d	$fs1, $sp, 1128                 # 8-byte Folded Reload
	fmov.d	$fs0, $ft11
	fmov.d	$fs7, $ft10
	fst.d	$ft9, $sp, 40                   # 8-byte Folded Spill
	fst.d	$ft8, $sp, 112                  # 8-byte Folded Spill
	fst.d	$ft7, $sp, 1064                 # 8-byte Folded Spill
	fst.d	$ft6, $sp, 1072                 # 8-byte Folded Spill
	fst.d	$ft5, $sp, 1080                 # 8-byte Folded Spill
	fst.d	$ft4, $sp, 1088                 # 8-byte Folded Spill
.LBB3_18:                               # %for.end278
                                        #   in Loop: Header=BB3_5 Depth=1
	move	$s3, $zero
	ori	$s5, $zero, 1
	b	.LBB3_21
.LBB3_19:                               #   in Loop: Header=BB3_5 Depth=1
	fmov.d	$fs2, $ft13
	fmov.d	$fs0, $ft11
	fmov.d	$fs7, $ft10
	fst.d	$ft9, $sp, 40                   # 8-byte Folded Spill
	fst.d	$ft8, $sp, 112                  # 8-byte Folded Spill
	vst	$vr20, $sp, 288                 # 16-byte Folded Spill
	move	$s4, $zero
	ori	$s3, $zero, 1
	ori	$s5, $zero, 1
	b	.LBB3_22
.LBB3_20:                               #   in Loop: Header=BB3_5 Depth=1
	vst	$vr24, $sp, 400                 # 16-byte Folded Spill
	fst.d	$fa2, $sp, 416                  # 8-byte Folded Spill
	fst.d	$fa6, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fa7, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fa5, $sp, 136                  # 8-byte Folded Spill
	fmov.d	$fs5, $ft12
	fmov.d	$fs2, $ft14
	fmov.d	$fs0, $ft11
	fmov.d	$fs7, $ft10
	fst.d	$ft9, $sp, 40                   # 8-byte Folded Spill
	fst.d	$ft8, $sp, 112                  # 8-byte Folded Spill
	vst	$vr23, $sp, 288                 # 16-byte Folded Spill
	move	$s5, $zero
	ori	$s4, $zero, 1
	ori	$s3, $zero, 1
.LBB3_21:                               # %for.end278
                                        #   in Loop: Header=BB3_5 Depth=1
	fld.d	$ft14, $sp, 1104                # 8-byte Folded Reload
.LBB3_22:                               # %for.end278
                                        #   in Loop: Header=BB3_5 Depth=1
	ld.w	$a4, $sp, 1140
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $fp
	fmov.d	$fa1, $ft14
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1144
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $fp
	fld.d	$fa1, $sp, 328                  # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1148
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $fp
	fld.d	$fa1, $sp, 336                  # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1152
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $fp
	fld.d	$fa1, $sp, 344                  # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1156
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $fp
	fld.d	$fa1, $sp, 352                  # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1160
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $fp
	fld.d	$fa1, $sp, 360                  # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1164
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $fp
	fld.d	$fa1, $sp, 368                  # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1168
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $fp
	fld.d	$fa1, $sp, 376                  # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1172
	vldi	$vr0, -912
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $fp
	fld.d	$fa1, $sp, 384                  # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	bnez	$s5, .LBB3_4
# %bb.23:                               # %if.then292
                                        #   in Loop: Header=BB3_5 Depth=1
	ld.w	$a4, $sp, 1140
	movgr2fr.d	$fs6, $zero
	ori	$a2, $zero, 14
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs6
	vld	$vr1, $sp, 400                  # 16-byte Folded Reload
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1144
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	fld.d	$fa1, $sp, 416                  # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1148
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	fld.d	$fa1, $sp, 120                  # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1152
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	fld.d	$fa1, $sp, 128                  # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1156
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	fld.d	$fa1, $sp, 136                  # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1160
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa1, $fs5
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1164
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa1, $fs4
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1168
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa1, $fs2
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1172
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa1, $fs1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1140
	ori	$a2, $zero, 13
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs6
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1144
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa1, $fs7
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1148
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	fld.d	$fa1, $sp, 40                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1152
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	fld.d	$fa1, $sp, 112                  # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1156
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	fld.d	$fa1, $sp, 1064                 # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1160
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	vld	$vr1, $sp, 288                  # 16-byte Folded Reload
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1164
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	fld.d	$fa1, $sp, 1072                 # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1168
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	fld.d	$fa1, $sp, 1080                 # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 1172
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	fld.d	$fa1, $sp, 1088                 # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	b	.LBB3_4
.LBB3_24:                               # %while.end
	fld.d	$fs7, $sp, 1824                 # 8-byte Folded Reload
	fld.d	$fs6, $sp, 1832                 # 8-byte Folded Reload
	fld.d	$fs5, $sp, 1840                 # 8-byte Folded Reload
	fld.d	$fs4, $sp, 1848                 # 8-byte Folded Reload
	fld.d	$fs3, $sp, 1856                 # 8-byte Folded Reload
	fld.d	$fs2, $sp, 1864                 # 8-byte Folded Reload
	fld.d	$fs1, $sp, 1872                 # 8-byte Folded Reload
	fld.d	$fs0, $sp, 1880                 # 8-byte Folded Reload
	ld.d	$s5, $sp, 1888                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1896                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1904                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1912                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1920                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1928                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1936                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1944                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1952
	ret
.LBB3_25:                               # %call.sqrt
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB3_1
.Lfunc_end3:
	.size	CACG, .Lfunc_end3-CACG
                                        # -- End function
	.globl	CG                              # -- Begin function CG
	.p2align	5
	.type	CG,@function
CG:                                     # @CG
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 8                    # 8-byte Folded Spill
	fmov.d	$fs3, $fa2
	fmov.d	$fs0, $fa1
	fmov.d	$fs1, $fa0
	move	$a4, $a3
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	ori	$a2, $zero, 12
	move	$a3, $fp
	pcaddu18i	$ra, %call36(residual)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 12
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(scale_grid)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 12
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(scale_grid)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(norm)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	ori	$a2, $zero, 13
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(dot)
	jirl	$ra, $ra, 0
	movgr2fr.d	$fs5, $zero
	fcmp.ceq.d	$fcc0, $fs4, $fs5
	bcnez	$fcc0, .LBB4_9
# %bb.1:                                # %while.body.lr.ph
	fmov.d	$fs2, $fa0
	fmul.d	$fs4, $fs3, $fs4
	ori	$s2, $zero, 200
	.p2align	4, , 16
.LBB4_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s1, 1312
	addi.d	$a0, $a0, 1
	st.w	$a0, $s1, 1312
	ori	$a2, $zero, 16
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(apply_op)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 16
	ori	$a3, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(dot)
	jirl	$ra, $ra, 0
	fcmp.ceq.d	$fcc0, $fa0, $fs5
	bcnez	$fcc0, .LBB4_9
# %bb.3:                                # %if.end8
                                        #   in Loop: Header=BB4_2 Depth=1
	fdiv.d	$fs3, $fs2, $fa0
	fclass.d	$fa0, $fs3
	movfr2gr.d	$a0, $fa0
	andi	$a0, $a0, 68
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	bnez	$a0, .LBB4_9
# %bb.4:                                # %if.end11
                                        #   in Loop: Header=BB4_2 Depth=1
	vldi	$vr0, -912
	ori	$a4, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $fp
	fmov.d	$fa1, $fs3
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	fneg.d	$fa1, $fs3
	ori	$a2, $zero, 13
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	ori	$a4, $zero, 16
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(norm)
	jirl	$ra, $ra, 0
	fcmp.ceq.d	$fcc0, $fa0, $fs5
	bcnez	$fcc0, .LBB4_9
# %bb.5:                                # %if.end11
                                        #   in Loop: Header=BB4_2 Depth=1
	fcmp.clt.d	$fcc0, $fa0, $fs4
	bcnez	$fcc0, .LBB4_9
# %bb.6:                                # %if.end18
                                        #   in Loop: Header=BB4_2 Depth=1
	ori	$a2, $zero, 13
	ori	$a3, $zero, 13
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(dot)
	jirl	$ra, $ra, 0
	fcmp.ceq.d	$fcc0, $fa0, $fs5
	bcnez	$fcc0, .LBB4_9
# %bb.7:                                # %if.end22
                                        #   in Loop: Header=BB4_2 Depth=1
	fmov.d	$fs3, $fa0
	fdiv.d	$fa1, $fa0, $fs2
	fclass.d	$fa0, $fa1
	movfr2gr.d	$a0, $fa0
	andi	$a0, $a0, 68
	sltu	$a0, $zero, $a0
	andi	$a0, $a0, 1
	bnez	$a0, .LBB4_9
# %bb.8:                                # %cleanup31
                                        #   in Loop: Header=BB4_2 Depth=1
	ori	$a2, $zero, 14
	vldi	$vr0, -912
	ori	$a3, $zero, 13
	ori	$a4, $zero, 14
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(add_grids)
	jirl	$ra, $ra, 0
	addi.w	$s2, $s2, -1
	fmov.d	$fs2, $fs3
	bnez	$s2, .LBB4_2
.LBB4_9:                                # %while.end
	fld.d	$fs5, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs4, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end4:
	.size	CG, .Lfunc_end4-CG
                                        # -- End function
	.globl	IterativeSolver                 # -- Begin function IterativeSolver
	.p2align	5
	.type	IterativeSolver,@function
IterativeSolver:                        # @IterativeSolver
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 8                    # 8-byte Folded Spill
	fmov.d	$fs0, $fa1
	fmov.d	$fs1, $fa0
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	pcaddu18i	$ra, %call36(smooth)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $fp
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(smooth)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $fp
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(smooth)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $fp
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(smooth)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $fp
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(smooth)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $fp
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(smooth)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $fp
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(smooth)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $fp
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(smooth)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $fp
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(smooth)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $fp
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(smooth)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $fp
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(smooth)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $fp
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	fld.d	$fs1, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(smooth)
	jr	$t8
.Lfunc_end5:
	.size	IterativeSolver, .Lfunc_end5-IterativeSolver
                                        # -- End function
	.globl	IterativeSolver_NumGrids        # -- Begin function IterativeSolver_NumGrids
	.p2align	5
	.type	IterativeSolver_NumGrids,@function
IterativeSolver_NumGrids:               # @IterativeSolver_NumGrids
# %bb.0:                                # %entry
	move	$a0, $zero
	ret
.Lfunc_end6:
	.size	IterativeSolver_NumGrids, .Lfunc_end6-IterativeSolver_NumGrids
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
