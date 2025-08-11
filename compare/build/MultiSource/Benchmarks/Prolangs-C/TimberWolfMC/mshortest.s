	.file	"mshortest.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function mshortest
.LCPI0_0:
	.dword	0x3fb999999999999a              # double 0.10000000000000001
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI0_1:
	.half	7                               # 0x7
	.half	6                               # 0x6
	.half	5                               # 0x5
	.half	4                               # 0x4
	.half	3                               # 0x3
	.half	2                               # 0x2
	.half	1                               # 0x1
	.half	0                               # 0x0
	.half	7                               # 0x7
	.half	6                               # 0x6
	.half	5                               # 0x5
	.half	4                               # 0x4
	.half	3                               # 0x3
	.half	2                               # 0x2
	.half	1                               # 0x1
	.half	0                               # 0x0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_2:
	.half	7                               # 0x7
	.half	6                               # 0x6
	.half	5                               # 0x5
	.half	4                               # 0x4
	.half	3                               # 0x3
	.half	2                               # 0x2
	.half	1                               # 0x1
	.half	0                               # 0x0
	.text
	.globl	mshortest
	.p2align	5
	.type	mshortest,@function
mshortest:                              # @mshortest
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -544
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
	pcalau12i	$a1, %got_pc_hi20(Mpaths)
	ld.d	$s5, $a1, %got_pc_lo12(Mpaths)
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	ld.w	$a0, $s5, 0
	st.d	$zero, $sp, 352
	st.d	$zero, $sp, 336
	st.d	$zero, $sp, 328
	st.d	$zero, $sp, 320
	bltz	$a0, .LBB0_3
# %bb.1:                                # %for.body.preheader
	move	$s0, $zero
	ori	$fp, $zero, 2
	.p2align	4, , 16
.LBB0_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$s0, $s0, 1
	addi.d	$a0, $sp, 336
	move	$a1, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 0
	alsl.w	$a1, $a0, $fp, 1
	blt	$s0, $a1, .LBB0_2
.LBB0_3:                                # %for.end
	pcalau12i	$a1, %got_pc_hi20(numnodes)
	ld.d	$a1, $a1, %got_pc_lo12(numnodes)
	pcalau12i	$a2, %got_pc_hi20(pnodeArray)
	ld.d	$a2, $a2, %got_pc_lo12(pnodeArray)
	ld.w	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	sub.w	$a1, $a3, $a1
	pcalau12i	$a3, %got_pc_hi20(targetPtr)
	ld.d	$fp, $a3, %got_pc_lo12(targetPtr)
	slli.d	$a3, $a1, 4
	alsl.d	$a1, $a1, $a3, 3
	add.d	$a2, $a2, $a1
	ld.w	$a1, $fp, 0
	ld.d	$a3, $a2, 8
	ori	$a2, $zero, 1
	st.w	$a2, $sp, 432
	st.d	$a3, $sp, 208                   # 8-byte Folded Spill
	blt	$a1, $a2, .LBB0_7
# %bb.4:                                # %for.body3.preheader
	pcalau12i	$a0, %got_pc_hi20(targetList)
	ld.d	$s0, $a0, %got_pc_lo12(targetList)
	.p2align	4, , 16
.LBB0_5:                                # %for.body3
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	slli.d	$a1, $a2, 1
	ldx.h	$a0, $a0, $a1
	slli.d	$a1, $a0, 3
	alsl.d	$a0, $a0, $a1, 2
	add.d	$a0, $a3, $a0
	ld.w	$a1, $a0, 4
	addi.d	$a0, $sp, 320
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a0, $sp, 432
	ld.w	$a1, $fp, 0
	addi.w	$a2, $a0, 1
	st.w	$a2, $sp, 432
	blt	$a0, $a1, .LBB0_5
# %bb.6:                                # %for.end11.loopexit
	ld.w	$a0, $s5, 0
.LBB0_7:                                # %for.end11
	pcalau12i	$a2, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI0_0)
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a2, $fa0
	alsl.d	$a0, $a0, $a2, 1
	addi.w	$a0, $a0, 1
	slt	$a2, $a0, $a1
	pcalau12i	$a3, %got_pc_hi20(bareMinimum)
	ld.d	$a3, $a3, %got_pc_lo12(bareMinimum)
	pcalau12i	$a4, %got_pc_hi20(finalShot)
	ld.d	$a4, $a4, %got_pc_lo12(finalShot)
	pcalau12i	$a5, %got_pc_hi20(doCompaction)
	ld.d	$a5, $a5, %got_pc_lo12(doCompaction)
	maskeqz	$a0, $a0, $a2
	ld.w	$a3, $a3, 0
	ld.w	$a4, $a4, 0
	ld.w	$a5, $a5, 0
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	sltui	$a1, $a3, 1
	xor	$a2, $a4, $a5
	sltui	$a2, $a2, 1
	addi.d	$a2, $a2, 1
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$fp, $a0, $a1
	ori	$s1, $zero, 1
	st.d	$s5, $sp, 192                   # 8-byte Folded Spill
	blt	$fp, $s1, .LBB0_25
# %bb.8:                                # %while.body.lr.ph
	pcalau12i	$a0, %got_pc_hi20(targetList)
	ld.d	$s2, $a0, %got_pc_lo12(targetList)
	pcalau12i	$a0, %got_pc_hi20(gnodeArray)
	ld.d	$s3, $a0, %got_pc_lo12(gnodeArray)
	move	$s4, $zero
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_9:                                # %if.end105
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$s5, $sp, 192                   # 8-byte Folded Reload
	bge	$s4, $fp, .LBB0_25
.LBB0_10:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
                                        #     Child Loop BB0_15 Depth 2
                                        #       Child Loop BB0_16 Depth 3
                                        #     Child Loop BB0_19 Depth 2
                                        #       Child Loop BB0_20 Depth 3
	addi.d	$a0, $sp, 320
	addi.d	$a1, $sp, 344
	addi.d	$a2, $sp, 384
	addi.d	$a3, $sp, 432
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344
	beqz	$a0, .LBB0_25
# %bb.11:                               # %if.end31
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.w	$a0, $sp, 432
	ld.d	$a1, $s2, 0
	slli.d	$a0, $a0, 1
	ldx.h	$s0, $a1, $a0
	ld.d	$a0, $s3, 0
	slli.d	$s5, $s0, 3
	ldx.d	$a1, $a0, $s5
	ld.w	$a2, $a1, 0
	alsl.d	$a3, $a2, $a0, 3
	.p2align	4, , 16
.LBB0_12:                               # %for.cond40
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a3, 0
	ld.w	$a4, $a2, 0
	addi.d	$a3, $a2, 32
	bne	$a4, $s0, .LBB0_12
# %bb.13:                               # %if.then44
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.w	$a3, $a2, 24
	bne	$a3, $s1, .LBB0_22
# %bb.14:                               # %if.then47
                                        #   in Loop: Header=BB0_10 Depth=1
	st.w	$zero, $a2, 24
	ld.d	$a1, $a1, 32
	beqz	$a1, .LBB0_18
	.p2align	4, , 16
.LBB0_15:                               # %for.body52
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_16 Depth 3
	ld.w	$a2, $a1, 0
	alsl.d	$a2, $a2, $a0, 3
	.p2align	4, , 16
.LBB0_16:                               # %for.cond56
                                        #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a3, $a2, 0
	ld.w	$a4, $a3, 0
	addi.d	$a2, $a3, 32
	bne	$a4, $s0, .LBB0_16
# %bb.17:                               # %if.then60
                                        #   in Loop: Header=BB0_15 Depth=2
	st.w	$zero, $a3, 24
	ld.d	$a1, $a1, 32
	bnez	$a1, .LBB0_15
.LBB0_18:                               # %for.end71
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	st.h	$a2, $sp, 382
	addi.d	$a0, $sp, 380
	ori	$a1, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(prestrict)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 0
	ldx.d	$a2, $a1, $s5
	beqz	$a2, .LBB0_23
	.p2align	4, , 16
.LBB0_19:                               # %for.body82
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_20 Depth 3
	ld.w	$a3, $a2, 0
	alsl.d	$a3, $a3, $a1, 3
	.p2align	4, , 16
.LBB0_20:                               # %for.cond86
                                        #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a4, $a3, 0
	ld.w	$a5, $a4, 0
	addi.d	$a3, $a4, 32
	bne	$a5, $s0, .LBB0_20
# %bb.21:                               # %if.then90
                                        #   in Loop: Header=BB0_19 Depth=2
	st.w	$s1, $a4, 24
	ld.d	$a2, $a2, 32
	bnez	$a2, .LBB0_19
	b	.LBB0_23
	.p2align	4, , 16
.LBB0_22:                               # %for.end71.thread
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	st.h	$a2, $sp, 382
	addi.d	$a0, $sp, 380
	ori	$a1, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(prestrict)
	jirl	$ra, $ra, 0
.LBB0_23:                               # %if.end98
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	bltz	$a0, .LBB0_9
# %bb.24:                               # %if.then101
                                        #   in Loop: Header=BB0_10 Depth=1
	alsl.d	$a0, $s0, $s5, 2
	ldx.w	$a1, $a1, $a0
	ld.w	$a2, $sp, 432
	addi.d	$a0, $sp, 328
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	addi.w	$s4, $s4, 1
	b	.LBB0_9
.LBB0_25:                               # %while.end
	ld.d	$a0, $sp, 320
	beqz	$a0, .LBB0_27
	.p2align	4, , 16
.LBB0_26:                               # %for.cond109
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 320
	addi.d	$a1, $sp, 344
	addi.d	$a2, $sp, 384
	addi.d	$a3, $sp, 432
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344
	bnez	$a0, .LBB0_26
.LBB0_27:                               # %if.end115
	ld.w	$fp, $s5, 0
	ori	$s0, $zero, 1
	blt	$fp, $s0, .LBB0_222
# %bb.28:                               # %while.body119.lr.ph.lr.ph
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
	move	$s2, $zero
	pcalau12i	$a0, %got_pc_hi20(targetList)
	ld.d	$s3, $a0, %got_pc_lo12(targetList)
	pcalau12i	$a0, %got_pc_hi20(gnodeArray)
	ld.d	$a0, $a0, %got_pc_lo12(gnodeArray)
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(tempArray)
	ld.d	$a0, $a0, %got_pc_lo12(tempArray)
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	lu12i.w	$a0, 244140
	ori	$s5, $a0, 2560
	lu12i.w	$a0, 524287
	ori	$a0, $a0, 4094
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
                                        # implicit-def: $r4
                                        # kill: killed $r4
	b	.LBB0_30
	.p2align	4, , 16
.LBB0_29:                               # %for.end165.thread
                                        #   in Loop: Header=BB0_30 Depth=1
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	st.h	$a2, $sp, 382
	addi.d	$a0, $sp, 380
	ori	$a1, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(prestrict)
	jirl	$ra, $ra, 0
	bgez	$a0, .LBB0_43
.LBB0_30:                               # %while.body119.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_32 Depth 2
                                        #     Child Loop BB0_35 Depth 2
                                        #       Child Loop BB0_36 Depth 3
                                        #     Child Loop BB0_45 Depth 2
                                        #     Child Loop BB0_52 Depth 2
                                        #     Child Loop BB0_57 Depth 2
                                        #     Child Loop BB0_60 Depth 2
                                        #     Child Loop BB0_65 Depth 2
                                        #       Child Loop BB0_86 Depth 3
                                        #         Child Loop BB0_93 Depth 4
                                        #           Child Loop BB0_94 Depth 5
                                        #           Child Loop BB0_96 Depth 5
                                        #         Child Loop BB0_101 Depth 4
                                        #           Child Loop BB0_102 Depth 5
                                        #             Child Loop BB0_103 Depth 6
                                        #         Child Loop BB0_107 Depth 4
                                        #           Child Loop BB0_108 Depth 5
                                        #           Child Loop BB0_110 Depth 5
                                        #         Child Loop BB0_115 Depth 4
                                        #           Child Loop BB0_116 Depth 5
                                        #             Child Loop BB0_117 Depth 6
                                        #         Child Loop BB0_122 Depth 4
                                        #         Child Loop BB0_145 Depth 4
                                        #         Child Loop BB0_130 Depth 4
                                        #         Child Loop BB0_134 Depth 4
                                        #         Child Loop BB0_148 Depth 4
                                        #         Child Loop BB0_142 Depth 4
                                        #         Child Loop BB0_153 Depth 4
                                        #         Child Loop BB0_156 Depth 4
                                        #       Child Loop BB0_71 Depth 3
                                        #         Child Loop BB0_72 Depth 4
                                        #         Child Loop BB0_74 Depth 4
                                        #       Child Loop BB0_79 Depth 3
                                        #         Child Loop BB0_80 Depth 4
                                        #           Child Loop BB0_81 Depth 5
                                        #       Child Loop BB0_160 Depth 3
                                        #         Child Loop BB0_161 Depth 4
                                        #         Child Loop BB0_163 Depth 4
                                        #       Child Loop BB0_168 Depth 3
                                        #         Child Loop BB0_169 Depth 4
                                        #           Child Loop BB0_170 Depth 5
                                        #       Child Loop BB0_175 Depth 3
                                        #       Child Loop BB0_197 Depth 3
                                        #       Child Loop BB0_183 Depth 3
                                        #       Child Loop BB0_187 Depth 3
                                        #       Child Loop BB0_200 Depth 3
                                        #       Child Loop BB0_194 Depth 3
                                        #       Child Loop BB0_205 Depth 3
                                        #       Child Loop BB0_208 Depth 3
                                        #     Child Loop BB0_212 Depth 2
                                        #     Child Loop BB0_215 Depth 2
                                        #     Child Loop BB0_218 Depth 2
                                        #       Child Loop BB0_219 Depth 3
                                        #     Child Loop BB0_40 Depth 2
                                        #       Child Loop BB0_41 Depth 3
	addi.d	$a0, $sp, 328
	addi.d	$a1, $sp, 344
	addi.d	$a2, $sp, 384
	addi.d	$a3, $sp, 432
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344
	beqz	$a0, .LBB0_222
# %bb.31:                               # %if.end123
                                        #   in Loop: Header=BB0_30 Depth=1
	ld.w	$a0, $sp, 432
	ld.d	$a1, $s3, 0
	st.d	$zero, $sp, 368
	slli.d	$a0, $a0, 1
	ldx.hu	$a1, $a1, $a0
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	ext.w.h	$s1, $a1
	slli.d	$a1, $s1, 3
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	ldx.d	$a1, $a0, $a1
	ld.w	$a2, $a1, 0
	alsl.d	$a3, $a2, $a0, 3
	.p2align	4, , 16
.LBB0_32:                               # %for.cond132
                                        #   Parent Loop BB0_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a3, 0
	ld.w	$a4, $a2, 0
	addi.d	$a3, $a2, 32
	bne	$a4, $s1, .LBB0_32
# %bb.33:                               # %if.then136
                                        #   in Loop: Header=BB0_30 Depth=1
	ld.w	$a5, $a2, 24
	st.d	$a5, $sp, 96                    # 8-byte Folded Spill
	bne	$a5, $s0, .LBB0_29
# %bb.34:                               # %if.then140
                                        #   in Loop: Header=BB0_30 Depth=1
	st.w	$zero, $a2, 24
	ld.d	$a1, $a1, 32
	beqz	$a1, .LBB0_38
	.p2align	4, , 16
.LBB0_35:                               # %for.body146
                                        #   Parent Loop BB0_30 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_36 Depth 3
	ld.w	$a2, $a1, 0
	alsl.d	$a2, $a2, $a0, 3
	.p2align	4, , 16
.LBB0_36:                               # %for.cond150
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_35 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a3, $a2, 0
	ld.w	$a4, $a3, 0
	addi.d	$a2, $a3, 32
	bne	$a4, $s1, .LBB0_36
# %bb.37:                               # %if.then154
                                        #   in Loop: Header=BB0_35 Depth=2
	st.w	$zero, $a3, 24
	ld.d	$a1, $a1, 32
	bnez	$a1, .LBB0_35
.LBB0_38:                               # %for.end165
                                        #   in Loop: Header=BB0_30 Depth=1
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	st.h	$a2, $sp, 382
	addi.d	$a0, $sp, 380
	ori	$a1, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(prestrict)
	jirl	$ra, $ra, 0
	bgez	$a0, .LBB0_43
# %bb.39:                               # %if.then175
                                        #   in Loop: Header=BB0_30 Depth=1
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ldx.d	$a1, $a0, $a1
	beqz	$a1, .LBB0_30
	.p2align	4, , 16
.LBB0_40:                               # %for.body181
                                        #   Parent Loop BB0_30 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_41 Depth 3
	ld.w	$a2, $a1, 0
	alsl.d	$a2, $a2, $a0, 3
	.p2align	4, , 16
.LBB0_41:                               # %for.cond185
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a3, $a2, 0
	ld.w	$a4, $a3, 0
	addi.d	$a2, $a3, 32
	bne	$a4, $s1, .LBB0_41
# %bb.42:                               # %if.then189
                                        #   in Loop: Header=BB0_40 Depth=2
	st.w	$s0, $a3, 24
	ld.d	$a1, $a1, 32
	bnez	$a1, .LBB0_40
	b	.LBB0_30
.LBB0_43:                               # %if.end198
                                        #   in Loop: Header=BB0_30 Depth=1
	move	$s4, $s2
	st.d	$fp, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$a0, $s1, $a0, 2
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	ldx.w	$a2, $a3, $a0
	add.d	$a4, $a3, $a0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	st.w	$a2, $sp, 428
	st.d	$a4, $sp, 160                   # 8-byte Folded Spill
	ld.hu	$a0, $a4, 10
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	st.h	$a2, $a1, 2
	ori	$fp, $zero, 1
	ori	$s2, $zero, 1
	beqz	$a0, .LBB0_46
# %bb.44:                               # %while.body211.preheader
                                        #   in Loop: Header=BB0_30 Depth=1
	addi.d	$a1, $a1, 4
	ori	$s2, $zero, 1
	.p2align	4, , 16
.LBB0_45:                               # %while.body211
                                        #   Parent Loop BB0_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.h	$a0, $a1, 0
	ext.w.h	$a0, $a0
	slli.d	$a2, $a0, 3
	alsl.d	$a0, $a0, $a2, 2
	add.d	$a0, $a3, $a0
	ld.hu	$a0, $a0, 10
	addi.w	$s2, $s2, 1
	addi.d	$a1, $a1, 2
	bnez	$a0, .LBB0_45
.LBB0_46:                               # %iter.check725
                                        #   in Loop: Header=BB0_30 Depth=1
	addi.d	$a0, $sp, 336
	addi.d	$a1, $sp, 344
	addi.d	$a2, $sp, 420
	addi.d	$a3, $sp, 396
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(pathArray)
	ld.d	$a1, $a0, %got_pc_lo12(pathArray)
	ld.w	$a0, $sp, 420
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a1, $a1, 0
	ori	$a3, $zero, 40
	mul.d	$a0, $a0, $a3
	add.d	$a0, $a1, $a0
	st.w	$fp, $a0, 8
	ld.w	$a0, $sp, 420
	addi.d	$a2, $s2, -1
	mul.d	$a0, $a0, $a3
	add.d	$a0, $a1, $a0
	st.w	$a2, $a0, 12
	ld.w	$a0, $sp, 420
	mul.d	$a0, $a0, $a3
	add.d	$a0, $a1, $a0
	st.w	$zero, $a0, 16
	ld.w	$a2, $sp, 420
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	mul.d	$a3, $a2, $a3
	ldx.d	$a1, $a1, $a3
	bstrpick.d	$a5, $s2, 31, 0
	addi.d	$a3, $s2, 1
	bstrpick.d	$a3, $a3, 31, 0
	pcalau12i	$t2, %pc_hi20(.LCPI0_1)
	pcalau12i	$t3, %pc_hi20(.LCPI0_2)
	slli.d	$a4, $a5, 1
	ori	$a6, $zero, 8
	bltu	$s2, $a6, .LBB0_59
# %bb.47:                               # %vector.memcheck712
                                        #   in Loop: Header=BB0_30 Depth=1
	slli.d	$a6, $a3, 1
	sub.d	$a6, $a4, $a6
	add.d	$a6, $a1, $a6
	addi.d	$a6, $a6, 4
	alsl.d	$t0, $a5, $a1, 1
	alsl.d	$t1, $a3, $a0, 1
	addi.d	$a7, $a0, 2
	bgeu	$a6, $t1, .LBB0_49
# %bb.48:                               # %vector.memcheck712
                                        #   in Loop: Header=BB0_30 Depth=1
	addi.d	$a6, $t0, 2
	bltu	$a7, $a6, .LBB0_59
.LBB0_49:                               # %vector.main.loop.iter.check727
                                        #   in Loop: Header=BB0_30 Depth=1
	ori	$a6, $zero, 16
	bgeu	$s2, $a6, .LBB0_51
# %bb.50:                               #   in Loop: Header=BB0_30 Depth=1
	move	$a6, $zero
	b	.LBB0_56
.LBB0_51:                               # %vector.ph728
                                        #   in Loop: Header=BB0_30 Depth=1
	bstrpick.d	$a6, $a5, 31, 4
	slli.d	$a6, $a6, 4
	addi.d	$t0, $t0, -30
	move	$t1, $a6
	.p2align	4, , 16
.LBB0_52:                               # %vector.body731
                                        #   Parent Loop BB0_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a7, 0
	xvld	$xr1, $t2, %pc_lo12(.LCPI0_1)
	xvpermi.d	$xr0, $xr0, 78
	xvshuf.h	$xr1, $xr0, $xr0
	xvst	$xr1, $t0, 0
	addi.d	$a7, $a7, 32
	addi.d	$t1, $t1, -16
	addi.d	$t0, $t0, -32
	bnez	$t1, .LBB0_52
# %bb.53:                               # %middle.block736
                                        #   in Loop: Header=BB0_30 Depth=1
	beq	$a6, $a5, .LBB0_61
# %bb.54:                               # %vec.epilog.iter.check741
                                        #   in Loop: Header=BB0_30 Depth=1
	andi	$a7, $a5, 8
	bnez	$a7, .LBB0_56
# %bb.55:                               #   in Loop: Header=BB0_30 Depth=1
	addi.d	$fp, $a6, 1
	b	.LBB0_59
.LBB0_56:                               # %vec.epilog.ph740
                                        #   in Loop: Header=BB0_30 Depth=1
	bstrpick.d	$a7, $a5, 31, 3
	slli.d	$a7, $a7, 3
	srli.d	$t0, $a5, 3
	ori	$fp, $zero, 1
	bstrins.d	$fp, $t0, 31, 3
	alsl.d	$t0, $a6, $a0, 1
	slli.d	$t1, $a6, 1
	addi.d	$t0, $t0, 2
	sub.d	$t1, $a4, $t1
	add.d	$t1, $a1, $t1
	addi.d	$t1, $t1, -14
	sub.d	$a6, $a6, $a7
	.p2align	4, , 16
.LBB0_57:                               # %vec.epilog.vector.body746
                                        #   Parent Loop BB0_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t0, 0
	vld	$vr1, $t3, %pc_lo12(.LCPI0_2)
	vshuf.h	$vr1, $vr0, $vr0
	vst	$vr1, $t1, 0
	addi.d	$t0, $t0, 16
	addi.d	$a6, $a6, 8
	addi.d	$t1, $t1, -16
	bnez	$a6, .LBB0_57
# %bb.58:                               # %vec.epilog.middle.block752
                                        #   in Loop: Header=BB0_30 Depth=1
	beq	$a7, $a5, .LBB0_61
.LBB0_59:                               # %for.body233.preheader
                                        #   in Loop: Header=BB0_30 Depth=1
	slli.d	$a5, $fp, 1
	sub.d	$a4, $a4, $a5
	add.d	$a1, $a1, $a4
	addi.d	$a1, $a1, 2
	alsl.d	$a0, $fp, $a0, 1
	sub.d	$a3, $a3, $fp
	.p2align	4, , 16
.LBB0_60:                               # %for.body233
                                        #   Parent Loop BB0_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$a4, $a0, 0
	st.h	$a4, $a1, 0
	addi.d	$a1, $a1, -2
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 2
	bnez	$a3, .LBB0_60
.LBB0_61:                               # %for.end244
                                        #   in Loop: Header=BB0_30 Depth=1
	st.d	$t3, $sp, 40                    # 8-byte Folded Spill
	st.d	$t2, $sp, 104                   # 8-byte Folded Spill
	ld.w	$a1, $sp, 428
	addi.d	$a0, $sp, 368
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 368
	addi.d	$a1, $sp, 360
	addi.d	$a2, $sp, 428
	addi.d	$a3, $sp, 424
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 360
	beqz	$a0, .LBB0_209
# %bb.62:                               # %if.end250.preheader
                                        #   in Loop: Header=BB0_30 Depth=1
	move	$s6, $zero
	st.d	$zero, $sp, 176                 # 8-byte Folded Spill
	ori	$fp, $zero, 1
	move	$s2, $s4
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	b	.LBB0_65
.LBB0_63:                               #   in Loop: Header=BB0_65 Depth=2
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB0_64:                               # %for.cond246.backedge
                                        #   in Loop: Header=BB0_65 Depth=2
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	addi.d	$a0, $sp, 368
	addi.d	$a1, $sp, 360
	addi.d	$a2, $sp, 428
	addi.d	$a3, $sp, 424
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 360
	addi.d	$s6, $fp, -1
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_210
.LBB0_65:                               # %if.end250
                                        #   Parent Loop BB0_30 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_86 Depth 3
                                        #         Child Loop BB0_93 Depth 4
                                        #           Child Loop BB0_94 Depth 5
                                        #           Child Loop BB0_96 Depth 5
                                        #         Child Loop BB0_101 Depth 4
                                        #           Child Loop BB0_102 Depth 5
                                        #             Child Loop BB0_103 Depth 6
                                        #         Child Loop BB0_107 Depth 4
                                        #           Child Loop BB0_108 Depth 5
                                        #           Child Loop BB0_110 Depth 5
                                        #         Child Loop BB0_115 Depth 4
                                        #           Child Loop BB0_116 Depth 5
                                        #             Child Loop BB0_117 Depth 6
                                        #         Child Loop BB0_122 Depth 4
                                        #         Child Loop BB0_145 Depth 4
                                        #         Child Loop BB0_130 Depth 4
                                        #         Child Loop BB0_134 Depth 4
                                        #         Child Loop BB0_148 Depth 4
                                        #         Child Loop BB0_142 Depth 4
                                        #         Child Loop BB0_153 Depth 4
                                        #         Child Loop BB0_156 Depth 4
                                        #       Child Loop BB0_71 Depth 3
                                        #         Child Loop BB0_72 Depth 4
                                        #         Child Loop BB0_74 Depth 4
                                        #       Child Loop BB0_79 Depth 3
                                        #         Child Loop BB0_80 Depth 4
                                        #           Child Loop BB0_81 Depth 5
                                        #       Child Loop BB0_160 Depth 3
                                        #         Child Loop BB0_161 Depth 4
                                        #         Child Loop BB0_163 Depth 4
                                        #       Child Loop BB0_168 Depth 3
                                        #         Child Loop BB0_169 Depth 4
                                        #           Child Loop BB0_170 Depth 5
                                        #       Child Loop BB0_175 Depth 3
                                        #       Child Loop BB0_197 Depth 3
                                        #       Child Loop BB0_183 Depth 3
                                        #       Child Loop BB0_187 Depth 3
                                        #       Child Loop BB0_200 Depth 3
                                        #       Child Loop BB0_194 Depth 3
                                        #       Child Loop BB0_205 Depth 3
                                        #       Child Loop BB0_208 Depth 3
	ld.w	$a1, $sp, 428
	ld.w	$a2, $sp, 424
	addi.d	$a0, $sp, 352
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	addi.w	$s2, $s2, 1
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	bge	$a1, $a0, .LBB0_210
# %bb.66:                               # %if.end256
                                        #   in Loop: Header=BB0_65 Depth=2
	st.d	$s6, $sp, 240                   # 8-byte Folded Spill
	ld.w	$a0, $sp, 424
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a3, $a1, 0
	slli.d	$a1, $a0, 5
	alsl.d	$a4, $a0, $a1, 3
	add.d	$a0, $a3, $a4
	ld.w	$s7, $a0, 8
	ld.w	$a2, $a0, 12
	ld.wu	$a1, $a0, 16
	ldx.d	$s3, $a3, $a4
	addi.w	$a3, $a1, 0
	st.d	$s7, $sp, 232                   # 8-byte Folded Spill
	st.d	$s2, $sp, 64                    # 8-byte Folded Spill
	bne	$a2, $s7, .LBB0_83
# %bb.67:                               # %if.then274
                                        #   in Loop: Header=BB0_65 Depth=2
	addi.w	$s2, $a3, 1
	st.w	$s2, $sp, 400
	blt	$a3, $s0, .LBB0_69
# %bb.68:                               # %for.body280.preheader
                                        #   in Loop: Header=BB0_65 Depth=2
	addi.d	$a1, $a0, 24
	slli.d	$a2, $a3, 2
	addi.d	$a0, $sp, 404
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB0_69:                               # %for.end287
                                        #   in Loop: Header=BB0_65 Depth=2
	alsl.d	$s6, $s7, $s3, 1
	ld.h	$a0, $s6, 2
	slli.d	$a1, $s2, 2
	addi.d	$a2, $sp, 400
	stx.w	$a0, $a1, $a2
	vld	$vr0, $sp, 404
	ld.w	$s2, $sp, 400
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$s8, $s7, 1
	vst	$vr0, $sp, 440
	addi.d	$s4, $s2, 1
	addi.d	$t1, $sp, 436
	blt	$s2, $s0, .LBB0_76
# %bb.70:                               # %for.body.lr.ph.i
                                        #   in Loop: Header=BB0_65 Depth=2
	ldx.h	$a1, $s3, $s8
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $a0, $a2
	ld.w	$a3, $a2, 0
	bstrpick.d	$a4, $s4, 31, 0
	ori	$a5, $zero, 1
	.p2align	4, , 16
.LBB0_71:                               # %for.body.i
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_72 Depth 4
                                        #         Child Loop BB0_74 Depth 4
	slli.d	$a6, $a5, 2
	ldx.w	$a6, $a6, $t1
	move	$a7, $a2
	beq	$a3, $a6, .LBB0_73
	.p2align	4, , 16
.LBB0_72:                               # %if.end.i
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        #       Parent Loop BB0_71 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a7, $a7, 32
	ld.w	$t0, $a7, 0
	bne	$t0, $a6, .LBB0_72
.LBB0_73:                               # %if.then.i
                                        #   in Loop: Header=BB0_71 Depth=3
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $a0, $a6
	st.w	$s5, $a7, 12
	ld.w	$a7, $a6, 0
	beq	$a7, $a1, .LBB0_75
	.p2align	4, , 16
.LBB0_74:                               # %if.end22.i
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        #       Parent Loop BB0_71 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a6, $a6, 32
	ld.w	$a7, $a6, 0
	bne	$a7, $a1, .LBB0_74
.LBB0_75:                               # %if.then20.i
                                        #   in Loop: Header=BB0_71 Depth=3
	addi.d	$a5, $a5, 1
	st.w	$s5, $a6, 12
	bne	$a5, $a4, .LBB0_71
.LBB0_76:                               # %for.cond26.preheader.i
                                        #   in Loop: Header=BB0_65 Depth=2
	vst	$vr0, $sp, 288                  # 16-byte Folded Spill
	ori	$a1, $zero, 2
	blt	$s7, $a1, .LBB0_158
# %bb.77:                               # %for.body29.preheader.i
                                        #   in Loop: Header=BB0_65 Depth=2
	ori	$a1, $zero, 1
	b	.LBB0_79
	.p2align	4, , 16
.LBB0_78:                               # %for.inc53.i
                                        #   in Loop: Header=BB0_79 Depth=3
	addi.d	$a1, $a1, 1
	beq	$a1, $s7, .LBB0_158
.LBB0_79:                               # %for.body29.i
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_80 Depth 4
                                        #           Child Loop BB0_81 Depth 5
	slli.d	$a2, $a1, 1
	ldx.h	$a2, $s3, $a2
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $a0, $a3
	beqz	$a3, .LBB0_78
	.p2align	4, , 16
.LBB0_80:                               # %for.body38.i
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        #       Parent Loop BB0_79 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_81 Depth 5
	ld.w	$a4, $a3, 0
	alsl.d	$a4, $a4, $a0, 3
	.p2align	4, , 16
.LBB0_81:                               # %for.cond42.i
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        #       Parent Loop BB0_79 Depth=3
                                        #         Parent Loop BB0_80 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.d	$a5, $a4, 0
	ld.w	$a6, $a5, 0
	addi.d	$a4, $a5, 32
	bne	$a6, $a2, .LBB0_81
# %bb.82:                               # %if.then46.i
                                        #   in Loop: Header=BB0_80 Depth=4
	st.w	$s0, $a5, 20
	ld.d	$a3, $a3, 32
	bnez	$a3, .LBB0_80
	b	.LBB0_78
	.p2align	4, , 16
.LBB0_83:                               # %for.cond404.preheader
                                        #   in Loop: Header=BB0_65 Depth=2
	st.d	$a3, $sp, 144                   # 8-byte Folded Spill
	sub.d	$a2, $a2, $s7
	addi.w	$a3, $a2, 0
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	bltu	$a4, $a3, .LBB0_64
# %bb.84:                               # %for.body409.lr.ph
                                        #   in Loop: Header=BB0_65 Depth=2
	move	$s8, $zero
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	addi.w	$a4, $a3, 1
	alsl.d	$a3, $s7, $s3, 1
	st.d	$a3, $sp, 128                   # 8-byte Folded Spill
	addi.d	$a3, $sp, 400
	st.d	$a4, $sp, 136                   # 8-byte Folded Spill
	alsl.d	$a3, $a4, $a3, 2
	st.d	$a3, $sp, 120                   # 8-byte Folded Spill
	addi.d	$a0, $a0, 24
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	slli.d	$a0, $a1, 2
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	addi.w	$s2, $s7, -1
	addi.d	$a0, $a2, 2
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	addi.d	$a0, $s7, 1
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	addi.w	$a0, $s7, -2
	addi.d	$a1, $s3, 2
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a1, $s3, -30
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ori	$a1, $zero, 1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	b	.LBB0_86
	.p2align	4, , 16
.LBB0_85:                               # %for.inc558
                                        #   in Loop: Header=BB0_86 Depth=3
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	addi.w	$s2, $s2, 1
	addi.d	$s8, $s8, 1
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB0_64
.LBB0_86:                               # %for.body409
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_93 Depth 4
                                        #           Child Loop BB0_94 Depth 5
                                        #           Child Loop BB0_96 Depth 5
                                        #         Child Loop BB0_101 Depth 4
                                        #           Child Loop BB0_102 Depth 5
                                        #             Child Loop BB0_103 Depth 6
                                        #         Child Loop BB0_107 Depth 4
                                        #           Child Loop BB0_108 Depth 5
                                        #           Child Loop BB0_110 Depth 5
                                        #         Child Loop BB0_115 Depth 4
                                        #           Child Loop BB0_116 Depth 5
                                        #             Child Loop BB0_117 Depth 6
                                        #         Child Loop BB0_122 Depth 4
                                        #         Child Loop BB0_145 Depth 4
                                        #         Child Loop BB0_130 Depth 4
                                        #         Child Loop BB0_134 Depth 4
                                        #         Child Loop BB0_148 Depth 4
                                        #         Child Loop BB0_142 Depth 4
                                        #         Child Loop BB0_153 Depth 4
                                        #         Child Loop BB0_156 Depth 4
	st.d	$s8, $sp, 256                   # 8-byte Folded Spill
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	bne	$a1, $s0, .LBB0_90
# %bb.87:                               # %if.then412
                                        #   in Loop: Header=BB0_86 Depth=3
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	st.w	$a0, $sp, 400
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	blt	$a0, $s0, .LBB0_89
# %bb.88:                               # %for.body418.preheader
                                        #   in Loop: Header=BB0_86 Depth=3
	addi.d	$a0, $sp, 404
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB0_89:                               # %for.end425
                                        #   in Loop: Header=BB0_86 Depth=3
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.h	$a0, $a0, 2
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	ld.w	$t2, $sp, 400
	ld.w	$s7, $sp, 404
	ld.w	$a0, $sp, 408
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	b	.LBB0_91
	.p2align	4, , 16
.LBB0_90:                               # %if.else433
                                        #   in Loop: Header=BB0_86 Depth=3
	add.d	$fp, $a1, $s7
	slli.d	$a0, $fp, 1
	ldx.h	$s7, $s3, $a0
	ori	$t2, $zero, 1
	st.w	$t2, $sp, 400
	st.w	$s7, $sp, 404
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
.LBB0_91:                               # %if.end440
                                        #   in Loop: Header=BB0_86 Depth=3
	addi.d	$s6, $fp, -1
	ld.w	$s4, $sp, 412
	ld.w	$s8, $sp, 416
	st.w	$s7, $sp, 440
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	st.w	$a0, $sp, 444
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	st.w	$s4, $sp, 448
	st.w	$s8, $sp, 452
	addi.d	$a1, $t2, 1
	st.d	$a1, $sp, 288                   # 8-byte Folded Spill
	addi.d	$t1, $sp, 436
	blt	$t2, $s0, .LBB0_98
# %bb.92:                               # %for.body.lr.ph.i277
                                        #   in Loop: Header=BB0_86 Depth=3
	slli.d	$a1, $s6, 1
	ldx.h	$a1, $s3, $a1
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $a0, $a2
	ld.w	$a3, $a2, 0
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	bstrpick.d	$a4, $a4, 31, 0
	ori	$a5, $zero, 1
	.p2align	4, , 16
.LBB0_93:                               # %for.body.i279
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        #       Parent Loop BB0_86 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_94 Depth 5
                                        #           Child Loop BB0_96 Depth 5
	slli.d	$a6, $a5, 2
	ldx.w	$a6, $a6, $t1
	move	$a7, $a2
	beq	$a3, $a6, .LBB0_95
	.p2align	4, , 16
.LBB0_94:                               # %if.end.i285
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        #       Parent Loop BB0_86 Depth=3
                                        #         Parent Loop BB0_93 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.d	$a7, $a7, 32
	ld.w	$t0, $a7, 0
	bne	$t0, $a6, .LBB0_94
.LBB0_95:                               # %if.then.i289
                                        #   in Loop: Header=BB0_93 Depth=4
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $a0, $a6
	st.w	$s5, $a7, 12
	ld.w	$a7, $a6, 0
	beq	$a7, $a1, .LBB0_97
	.p2align	4, , 16
.LBB0_96:                               # %if.end22.i293
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        #       Parent Loop BB0_86 Depth=3
                                        #         Parent Loop BB0_93 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.d	$a6, $a6, 32
	ld.w	$a7, $a6, 0
	bne	$a7, $a1, .LBB0_96
.LBB0_97:                               # %if.then20.i297
                                        #   in Loop: Header=BB0_93 Depth=4
	addi.d	$a5, $a5, 1
	st.w	$s5, $a6, 12
	bne	$a5, $a4, .LBB0_93
.LBB0_98:                               # %for.cond26.preheader.i302
                                        #   in Loop: Header=BB0_86 Depth=3
	st.d	$t2, $sp, 280                   # 8-byte Folded Spill
	ori	$a1, $zero, 3
	blt	$fp, $a1, .LBB0_105
# %bb.99:                               # %for.body29.i306.preheader
                                        #   in Loop: Header=BB0_86 Depth=3
	ori	$a1, $zero, 1
	b	.LBB0_101
	.p2align	4, , 16
.LBB0_100:                              # %for.inc53.i328
                                        #   in Loop: Header=BB0_101 Depth=4
	addi.d	$a1, $a1, 1
	beq	$a1, $s6, .LBB0_105
.LBB0_101:                              # %for.body29.i306
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        #       Parent Loop BB0_86 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_102 Depth 5
                                        #             Child Loop BB0_103 Depth 6
	slli.d	$a2, $a1, 1
	ldx.h	$a2, $s3, $a2
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $a0, $a3
	beqz	$a3, .LBB0_100
	.p2align	4, , 16
.LBB0_102:                              # %for.body38.i314
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        #       Parent Loop BB0_86 Depth=3
                                        #         Parent Loop BB0_101 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB0_103 Depth 6
	ld.w	$a4, $a3, 0
	alsl.d	$a4, $a4, $a0, 3
	.p2align	4, , 16
.LBB0_103:                              # %for.cond42.i318
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        #       Parent Loop BB0_86 Depth=3
                                        #         Parent Loop BB0_101 Depth=4
                                        #           Parent Loop BB0_102 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ld.d	$a5, $a4, 0
	ld.w	$a6, $a5, 0
	addi.d	$a4, $a5, 32
	bne	$a6, $a2, .LBB0_103
# %bb.104:                              # %if.then46.i323
                                        #   in Loop: Header=BB0_102 Depth=5
	st.w	$s0, $a5, 20
	ld.d	$a3, $a3, 32
	bnez	$a3, .LBB0_102
	b	.LBB0_100
	.p2align	4, , 16
.LBB0_105:                              # %greduce.exit331
                                        #   in Loop: Header=BB0_86 Depth=3
	move	$a0, $s3
	move	$a1, $s6
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	move	$a3, $s1
	pcaddu18i	$ra, %call36(prestrict)
	jirl	$ra, $ra, 0
	st.w	$s7, $sp, 440
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	st.w	$a2, $sp, 444
	st.w	$s4, $sp, 448
	st.w	$s8, $sp, 452
	addi.d	$t2, $sp, 436
	ld.d	$s7, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	blt	$a2, $s0, .LBB0_112
# %bb.106:                              # %for.body.lr.ph.i343
                                        #   in Loop: Header=BB0_86 Depth=3
	alsl.d	$a2, $s6, $s3, 1
	ld.h	$a2, $a2, 0
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $a1, $a3
	ld.w	$a4, $a3, 0
	ld.d	$a5, $sp, 288                   # 8-byte Folded Reload
	bstrpick.d	$a5, $a5, 31, 0
	ori	$a6, $zero, 1
	.p2align	4, , 16
.LBB0_107:                              # %for.body.i345
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        #       Parent Loop BB0_86 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_108 Depth 5
                                        #           Child Loop BB0_110 Depth 5
	slli.d	$a7, $a6, 2
	ldx.w	$a7, $a7, $t2
	move	$t0, $a3
	beq	$a4, $a7, .LBB0_109
	.p2align	4, , 16
.LBB0_108:                              # %if.end.i351
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        #       Parent Loop BB0_86 Depth=3
                                        #         Parent Loop BB0_107 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.d	$t0, $t0, 32
	ld.w	$t1, $t0, 0
	bne	$t1, $a7, .LBB0_108
.LBB0_109:                              # %if.then.i355
                                        #   in Loop: Header=BB0_107 Depth=4
	slli.d	$a7, $a7, 3
	ld.w	$t1, $t0, 8
	ldx.d	$a7, $a1, $a7
	st.w	$t1, $t0, 12
	ld.w	$t0, $a7, 0
	beq	$t0, $a2, .LBB0_111
	.p2align	4, , 16
.LBB0_110:                              # %if.end23.i360
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        #       Parent Loop BB0_86 Depth=3
                                        #         Parent Loop BB0_107 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.d	$a7, $a7, 32
	ld.w	$t0, $a7, 0
	bne	$t0, $a2, .LBB0_110
.LBB0_111:                              # %if.then20.i364
                                        #   in Loop: Header=BB0_107 Depth=4
	ld.w	$t0, $a7, 8
	addi.d	$a6, $a6, 1
	st.w	$t0, $a7, 12
	bne	$a6, $a5, .LBB0_107
.LBB0_112:                              # %for.cond27.preheader.i370
                                        #   in Loop: Header=BB0_86 Depth=3
	ori	$a2, $zero, 3
	blt	$fp, $a2, .LBB0_119
# %bb.113:                              # %for.body30.i374.preheader
                                        #   in Loop: Header=BB0_86 Depth=3
	ori	$a2, $zero, 1
	b	.LBB0_115
	.p2align	4, , 16
.LBB0_114:                              # %for.inc54.i396
                                        #   in Loop: Header=BB0_115 Depth=4
	addi.d	$a2, $a2, 1
	beq	$a2, $s6, .LBB0_119
.LBB0_115:                              # %for.body30.i374
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        #       Parent Loop BB0_86 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_116 Depth 5
                                        #             Child Loop BB0_117 Depth 6
	slli.d	$a3, $a2, 1
	ldx.h	$a3, $s3, $a3
	slli.d	$a4, $a3, 3
	ldx.d	$a4, $a1, $a4
	beqz	$a4, .LBB0_114
	.p2align	4, , 16
.LBB0_116:                              # %for.body39.i382
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        #       Parent Loop BB0_86 Depth=3
                                        #         Parent Loop BB0_115 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB0_117 Depth 6
	ld.w	$a5, $a4, 0
	alsl.d	$a6, $a5, $a1, 3
	.p2align	4, , 16
.LBB0_117:                              # %for.cond43.i386
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        #       Parent Loop BB0_86 Depth=3
                                        #         Parent Loop BB0_115 Depth=4
                                        #           Parent Loop BB0_116 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ld.d	$a5, $a6, 0
	ld.w	$a7, $a5, 0
	addi.d	$a6, $a5, 32
	bne	$a7, $a3, .LBB0_117
# %bb.118:                              # %if.then47.i391
                                        #   in Loop: Header=BB0_116 Depth=5
	st.w	$zero, $a5, 20
	ld.d	$a4, $a4, 32
	bnez	$a4, .LBB0_116
	b	.LBB0_114
	.p2align	4, , 16
.LBB0_119:                              # %gunreduce.exit399
                                        #   in Loop: Header=BB0_86 Depth=3
	bltz	$a0, .LBB0_85
# %bb.120:                              # %if.end461
                                        #   in Loop: Header=BB0_86 Depth=3
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a1, $a2, 0
	add.d	$a0, $a1, $a0
	st.w	$a0, $sp, 428
	ld.hu	$a1, $a2, 10
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	st.h	$a2, $a0, 2
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
	beqz	$a1, .LBB0_124
# %bb.121:                              # %while.body475.preheader
                                        #   in Loop: Header=BB0_86 Depth=3
	addi.d	$a2, $a0, 4
	ori	$s7, $zero, 1
	.p2align	4, , 16
.LBB0_122:                              # %while.body475
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        #       Parent Loop BB0_86 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	st.h	$a1, $a2, 0
	ext.w.h	$a1, $a1
	slli.d	$a3, $a1, 3
	alsl.d	$a1, $a1, $a3, 2
	add.d	$a1, $a4, $a1
	ld.hu	$a1, $a1, 10
	addi.w	$s7, $s7, 1
	addi.d	$a2, $a2, 2
	bnez	$a1, .LBB0_122
# %bb.123:                              # %while.end484
                                        #   in Loop: Header=BB0_86 Depth=3
	ori	$a1, $zero, 3
	bge	$fp, $a1, .LBB0_125
	b	.LBB0_132
	.p2align	4, , 16
.LBB0_124:                              #   in Loop: Header=BB0_86 Depth=3
	ori	$s7, $zero, 1
	ori	$a1, $zero, 3
	blt	$fp, $a1, .LBB0_132
.LBB0_125:                              # %for.body490.preheader
                                        #   in Loop: Header=BB0_86 Depth=3
	bstrpick.d	$a2, $s2, 31, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	add.w	$a4, $a1, $s8
	bstrpick.d	$a1, $s7, 31, 0
	ori	$a3, $zero, 15
	ld.d	$t1, $sp, 104                   # 8-byte Folded Reload
	bltu	$a4, $a3, .LBB0_128
# %bb.126:                              # %vector.memcheck683
                                        #   in Loop: Header=BB0_86 Depth=3
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	alsl.d	$a6, $a2, $a3, 1
	alsl.d	$a5, $a1, $a0, 1
	addi.d	$a3, $a5, 2
	bstrpick.d	$a4, $a4, 31, 0
	bgeu	$a3, $a6, .LBB0_144
# %bb.127:                              # %vector.memcheck683
                                        #   in Loop: Header=BB0_86 Depth=3
	slli.d	$a6, $a2, 1
	slli.d	$a7, $a4, 1
	sub.d	$a6, $a6, $a7
	add.d	$a6, $s3, $a6
	add.d	$a5, $a5, $a7
	addi.d	$a5, $a5, 4
	bgeu	$a6, $a5, .LBB0_144
.LBB0_128:                              #   in Loop: Header=BB0_86 Depth=3
	move	$a4, $s7
.LBB0_129:                              # %for.body490.preheader771
                                        #   in Loop: Header=BB0_86 Depth=3
	alsl.d	$a0, $a1, $a0, 1
	addi.d	$a0, $a0, 2
	alsl.d	$a2, $a2, $s3, 1
	sub.d	$a3, $a4, $s7
	.p2align	4, , 16
.LBB0_130:                              # %for.body490
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        #       Parent Loop BB0_86 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.h	$a4, $a2, 0
	addi.d	$a1, $a1, 1
	st.h	$a4, $a0, 0
	addi.d	$a0, $a0, 2
	addi.w	$a3, $a3, 1
	addi.d	$a2, $a2, -2
	bne	$s2, $a3, .LBB0_130
.LBB0_131:                              # %for.end498.loopexit
                                        #   in Loop: Header=BB0_86 Depth=3
	move	$s7, $a1
.LBB0_132:                              # %for.end498
                                        #   in Loop: Header=BB0_86 Depth=3
	addi.d	$a0, $sp, 336
	addi.d	$a1, $sp, 344
	addi.d	$a2, $sp, 420
	addi.d	$a3, $sp, 396
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 420
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ori	$a3, $zero, 40
	mul.d	$a0, $a0, $a3
	add.d	$a0, $a1, $a0
	st.w	$s6, $a0, 8
	ld.w	$a0, $sp, 420
	addi.d	$a2, $s7, -1
	mul.d	$a0, $a0, $a3
	add.d	$a0, $a1, $a0
	st.w	$a2, $a0, 12
	ld.w	$a0, $sp, 420
	mul.d	$a0, $a0, $a3
	add.d	$a0, $a1, $a0
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	st.w	$a2, $a0, 16
	blt	$a2, $s0, .LBB0_135
# %bb.133:                              # %for.body517.preheader
                                        #   in Loop: Header=BB0_86 Depth=3
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	bstrpick.d	$a2, $a0, 31, 0
	addi.d	$a0, $a1, 24
	addi.d	$a2, $a2, -1
	addi.d	$a3, $sp, 404
	.p2align	4, , 16
.LBB0_134:                              # %for.body517
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        #       Parent Loop BB0_86 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a4, $sp, 420
	ld.w	$a5, $a3, 0
	slli.d	$a6, $a4, 5
	alsl.d	$a4, $a4, $a6, 3
	stx.w	$a5, $a0, $a4
	addi.d	$a0, $a0, 4
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	bnez	$a2, .LBB0_134
.LBB0_135:                              # %iter.check652
                                        #   in Loop: Header=BB0_86 Depth=3
	ld.w	$a2, $sp, 420
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a3, $a2, 5
	alsl.d	$a3, $a2, $a3, 3
	ldx.d	$a1, $a1, $a3
	bstrpick.d	$a5, $s7, 31, 0
	addi.w	$a7, $s7, 0
	addi.d	$a3, $s7, 1
	bstrpick.d	$a3, $a3, 31, 0
	ori	$a6, $zero, 1
	slli.d	$a4, $a5, 1
	ori	$t0, $zero, 7
	bltu	$t0, $a7, .LBB0_137
# %bb.136:                              #   in Loop: Header=BB0_86 Depth=3
	ld.d	$s7, $sp, 232                   # 8-byte Folded Reload
	b	.LBB0_152
	.p2align	4, , 16
.LBB0_137:                              # %vector.memcheck639
                                        #   in Loop: Header=BB0_86 Depth=3
	slli.d	$t0, $a3, 1
	sub.d	$t0, $a4, $t0
	add.d	$t0, $a1, $t0
	addi.d	$t2, $t0, 4
	alsl.d	$t1, $a5, $a1, 1
	alsl.d	$t3, $a3, $a0, 1
	addi.d	$t0, $a0, 2
	ld.d	$s7, $sp, 232                   # 8-byte Folded Reload
	bgeu	$t2, $t3, .LBB0_139
# %bb.138:                              # %vector.memcheck639
                                        #   in Loop: Header=BB0_86 Depth=3
	addi.d	$t2, $t1, 2
	bltu	$t0, $t2, .LBB0_152
.LBB0_139:                              # %vector.main.loop.iter.check654
                                        #   in Loop: Header=BB0_86 Depth=3
	ori	$a6, $zero, 16
	bgeu	$a7, $a6, .LBB0_147
# %bb.140:                              #   in Loop: Header=BB0_86 Depth=3
	move	$a7, $zero
.LBB0_141:                              # %vec.epilog.ph667
                                        #   in Loop: Header=BB0_86 Depth=3
	bstrpick.d	$a6, $a5, 31, 3
	slli.d	$t0, $a6, 3
	srli.d	$t1, $a5, 3
	ori	$a6, $zero, 1
	bstrins.d	$a6, $t1, 31, 3
	alsl.d	$t1, $a7, $a0, 1
	slli.d	$t2, $a7, 1
	addi.d	$t1, $t1, 2
	sub.d	$t2, $a4, $t2
	add.d	$t2, $a1, $t2
	addi.d	$t2, $t2, -14
	sub.d	$a7, $a7, $t0
	ld.d	$t3, $sp, 40                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_142:                              # %vec.epilog.vector.body673
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        #       Parent Loop BB0_86 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr0, $t1, 0
	vld	$vr1, $t3, %pc_lo12(.LCPI0_2)
	vshuf.h	$vr1, $vr0, $vr0
	vst	$vr1, $t2, 0
	addi.d	$t1, $t1, 16
	addi.d	$a7, $a7, 8
	addi.d	$t2, $t2, -16
	bnez	$a7, .LBB0_142
# %bb.143:                              # %vec.epilog.middle.block679
                                        #   in Loop: Header=BB0_86 Depth=3
	bne	$t0, $a5, .LBB0_152
	b	.LBB0_154
.LBB0_144:                              # %vector.ph696
                                        #   in Loop: Header=BB0_86 Depth=3
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
	bstrpick.d	$a5, $a5, 31, 0
	addi.d	$a5, $a5, 1
	bstrpick.d	$a5, $a5, 32, 4
	slli.d	$a7, $a5, 4
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$t0, $a2, $a5, 1
	addi.d	$a5, $a4, 1
	bstrpick.d	$a4, $a5, 32, 4
	slli.d	$a6, $a4, 4
	alsl.d	$a1, $a4, $a1, 4
	sub.d	$a2, $a2, $a6
	alsl.w	$a4, $a4, $s7, 4
	.p2align	4, , 16
.LBB0_145:                              # %vector.body700
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        #       Parent Loop BB0_86 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvld	$xr0, $t0, 0
	xvld	$xr1, $t1, %pc_lo12(.LCPI0_1)
	xvpermi.d	$xr0, $xr0, 78
	xvshuf.h	$xr1, $xr0, $xr0
	xvst	$xr1, $a3, 0
	addi.d	$a3, $a3, 32
	addi.d	$a7, $a7, -16
	addi.d	$t0, $t0, -32
	bnez	$a7, .LBB0_145
# %bb.146:                              # %middle.block707
                                        #   in Loop: Header=BB0_86 Depth=3
	beq	$a5, $a6, .LBB0_131
	b	.LBB0_129
.LBB0_147:                              # %vector.ph655
                                        #   in Loop: Header=BB0_86 Depth=3
	bstrpick.d	$a6, $a5, 31, 4
	slli.d	$a7, $a6, 4
	addi.d	$a6, $t1, -30
	move	$t1, $a7
	ld.d	$t2, $sp, 104                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_148:                              # %vector.body658
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        #       Parent Loop BB0_86 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvld	$xr0, $t0, 0
	xvld	$xr1, $t2, %pc_lo12(.LCPI0_1)
	xvpermi.d	$xr0, $xr0, 78
	xvshuf.h	$xr1, $xr0, $xr0
	xvst	$xr1, $a6, 0
	addi.d	$t0, $t0, 32
	addi.d	$t1, $t1, -16
	addi.d	$a6, $a6, -32
	bnez	$t1, .LBB0_148
# %bb.149:                              # %middle.block663
                                        #   in Loop: Header=BB0_86 Depth=3
	beq	$a7, $a5, .LBB0_154
# %bb.150:                              # %vec.epilog.iter.check668
                                        #   in Loop: Header=BB0_86 Depth=3
	andi	$a6, $a5, 8
	bnez	$a6, .LBB0_141
# %bb.151:                              #   in Loop: Header=BB0_86 Depth=3
	addi.d	$a6, $a7, 1
	.p2align	4, , 16
.LBB0_152:                              # %for.body531.preheader
                                        #   in Loop: Header=BB0_86 Depth=3
	slli.d	$a5, $a6, 1
	sub.d	$a4, $a4, $a5
	add.d	$a1, $a1, $a4
	addi.d	$a1, $a1, 2
	alsl.d	$a0, $a6, $a0, 1
	sub.d	$a3, $a3, $a6
	.p2align	4, , 16
.LBB0_153:                              # %for.body531
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        #       Parent Loop BB0_86 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.h	$a4, $a0, 0
	st.h	$a4, $a1, 0
	addi.d	$a1, $a1, -2
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 2
	bnez	$a3, .LBB0_153
.LBB0_154:                              # %for.end543
                                        #   in Loop: Header=BB0_86 Depth=3
	ld.w	$a1, $sp, 428
	ld.d	$s4, $sp, 240                   # 8-byte Folded Reload
	addi.d	$s4, $s4, 1
	addi.d	$a0, $sp, 368
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	sub.d	$fp, $a0, $a1
	st.d	$s4, $sp, 240                   # 8-byte Folded Spill
	sub.w	$s4, $s4, $fp
	blt	$s4, $s0, .LBB0_85
# %bb.155:                              # %for.body552.preheader
                                        #   in Loop: Header=BB0_86 Depth=3
	move	$s6, $zero
	.p2align	4, , 16
.LBB0_156:                              # %for.body552
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        #       Parent Loop BB0_86 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.d	$a0, $sp, 368
	addi.d	$a1, $sp, 360
	addi.d	$a2, $sp, 392
	addi.d	$a3, $sp, 388
	pcaddu18i	$ra, %call36(tmax)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 392
	ld.w	$a2, $sp, 388
	addi.d	$a0, $sp, 368
	pcaddu18i	$ra, %call36(tdelete)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 388
	addi.d	$a0, $sp, 336
	move	$a2, $zero
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	addi.w	$s6, $s6, 1
	blt	$s6, $s4, .LBB0_156
# %bb.157:                              #   in Loop: Header=BB0_86 Depth=3
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	b	.LBB0_85
	.p2align	4, , 16
.LBB0_158:                              # %greduce.exit
                                        #   in Loop: Header=BB0_65 Depth=2
	move	$a0, $s3
	move	$a1, $s7
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	move	$a3, $s1
	pcaddu18i	$ra, %call36(prestrict)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	vld	$vr0, $sp, 288                  # 16-byte Folded Reload
	vst	$vr0, $sp, 440
	addi.d	$t2, $sp, 436
	blt	$s2, $s0, .LBB0_165
# %bb.159:                              # %for.body.lr.ph.i243
                                        #   in Loop: Header=BB0_65 Depth=2
	ld.h	$a2, $s6, 0
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $a1, $a3
	ld.w	$a4, $a3, 0
	bstrpick.d	$a5, $s4, 31, 0
	ori	$a6, $zero, 1
	.p2align	4, , 16
.LBB0_160:                              # %for.body.i245
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_161 Depth 4
                                        #         Child Loop BB0_163 Depth 4
	slli.d	$a7, $a6, 2
	ldx.w	$a7, $a7, $t2
	move	$t0, $a3
	beq	$a4, $a7, .LBB0_162
	.p2align	4, , 16
.LBB0_161:                              # %if.end.i250
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        #       Parent Loop BB0_160 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$t0, $t0, 32
	ld.w	$t1, $t0, 0
	bne	$t1, $a7, .LBB0_161
.LBB0_162:                              # %if.then.i253
                                        #   in Loop: Header=BB0_160 Depth=3
	slli.d	$a7, $a7, 3
	ld.w	$t1, $t0, 8
	ldx.d	$a7, $a1, $a7
	st.w	$t1, $t0, 12
	ld.w	$t0, $a7, 0
	beq	$t0, $a2, .LBB0_164
	.p2align	4, , 16
.LBB0_163:                              # %if.end23.i
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        #       Parent Loop BB0_160 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a7, $a7, 32
	ld.w	$t0, $a7, 0
	bne	$t0, $a2, .LBB0_163
.LBB0_164:                              # %if.then20.i257
                                        #   in Loop: Header=BB0_160 Depth=3
	ld.w	$t0, $a7, 8
	addi.d	$a6, $a6, 1
	st.w	$t0, $a7, 12
	bne	$a6, $a5, .LBB0_160
.LBB0_165:                              # %for.cond27.preheader.i
                                        #   in Loop: Header=BB0_65 Depth=2
	ori	$a2, $zero, 2
	blt	$s7, $a2, .LBB0_172
# %bb.166:                              # %for.body30.preheader.i
                                        #   in Loop: Header=BB0_65 Depth=2
	ori	$a2, $zero, 1
	b	.LBB0_168
	.p2align	4, , 16
.LBB0_167:                              # %for.inc54.i
                                        #   in Loop: Header=BB0_168 Depth=3
	addi.d	$a2, $a2, 1
	beq	$a2, $s7, .LBB0_172
.LBB0_168:                              # %for.body30.i
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_169 Depth 4
                                        #           Child Loop BB0_170 Depth 5
	slli.d	$a3, $a2, 1
	ldx.h	$a3, $s3, $a3
	slli.d	$a4, $a3, 3
	ldx.d	$a4, $a1, $a4
	beqz	$a4, .LBB0_167
	.p2align	4, , 16
.LBB0_169:                              # %for.body39.i
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        #       Parent Loop BB0_168 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_170 Depth 5
	ld.w	$a5, $a4, 0
	alsl.d	$a6, $a5, $a1, 3
	.p2align	4, , 16
.LBB0_170:                              # %for.cond43.i
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        #       Parent Loop BB0_168 Depth=3
                                        #         Parent Loop BB0_169 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.d	$a5, $a6, 0
	ld.w	$a7, $a5, 0
	addi.d	$a6, $a5, 32
	bne	$a7, $a3, .LBB0_170
# %bb.171:                              # %if.then47.i
                                        #   in Loop: Header=BB0_169 Depth=4
	st.w	$zero, $a5, 20
	ld.d	$a4, $a4, 32
	bnez	$a4, .LBB0_169
	b	.LBB0_167
	.p2align	4, , 16
.LBB0_172:                              # %gunreduce.exit
                                        #   in Loop: Header=BB0_65 Depth=2
	vpickve2gr.w	$a1, $vr0, 1
	st.d	$a1, $sp, 272                   # 8-byte Folded Spill
	bltz	$a0, .LBB0_64
# %bb.173:                              # %if.end309
                                        #   in Loop: Header=BB0_65 Depth=2
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a1, $a2, 0
	add.d	$a0, $a1, $a0
	st.w	$a0, $sp, 428
	ld.hu	$a1, $a2, 10
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	st.h	$a2, $a0, 2
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
	beqz	$a1, .LBB0_177
# %bb.174:                              # %while.body323.preheader
                                        #   in Loop: Header=BB0_65 Depth=2
	addi.d	$a2, $a0, 4
	ori	$s7, $zero, 1
	.p2align	4, , 16
.LBB0_175:                              # %while.body323
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.h	$a1, $a2, 0
	ext.w.h	$a1, $a1
	slli.d	$a3, $a1, 3
	alsl.d	$a1, $a1, $a3, 2
	add.d	$a1, $a4, $a1
	ld.hu	$a1, $a1, 10
	addi.w	$s7, $s7, 1
	addi.d	$a2, $a2, 2
	bnez	$a1, .LBB0_175
# %bb.176:                              # %for.cond334.preheader
                                        #   in Loop: Header=BB0_65 Depth=2
	ori	$a1, $zero, 2
	ld.d	$a7, $sp, 232                   # 8-byte Folded Reload
	bge	$a7, $a1, .LBB0_178
	b	.LBB0_185
.LBB0_177:                              #   in Loop: Header=BB0_65 Depth=2
	ori	$s7, $zero, 1
	ori	$a1, $zero, 2
	ld.d	$a7, $sp, 232                   # 8-byte Folded Reload
	blt	$a7, $a1, .LBB0_185
.LBB0_178:                              # %for.body337.preheader
                                        #   in Loop: Header=BB0_65 Depth=2
	bstrpick.d	$a1, $s7, 31, 0
	ori	$a2, $zero, 17
	ld.d	$t1, $sp, 104                   # 8-byte Folded Reload
	bltu	$a7, $a2, .LBB0_181
# %bb.179:                              # %vector.memcheck612
                                        #   in Loop: Header=BB0_65 Depth=2
	alsl.d	$a3, $a1, $a0, 1
	addi.d	$a2, $a3, 2
	bgeu	$a2, $s6, .LBB0_196
# %bb.180:                              # %vector.memcheck612
                                        #   in Loop: Header=BB0_65 Depth=2
	addi.d	$a4, $a7, -2
	bstrpick.d	$a4, $a4, 31, 0
	slli.d	$a5, $a4, 1
	alsl.d	$a3, $a4, $a3, 1
	addi.d	$a3, $a3, 4
	sub.d	$a4, $s8, $a5
	add.d	$a4, $s3, $a4
	addi.d	$a4, $a4, -2
	bgeu	$a4, $a3, .LBB0_196
.LBB0_181:                              #   in Loop: Header=BB0_65 Depth=2
	move	$a3, $a7
	move	$a4, $s7
.LBB0_182:                              # %for.body337.preheader772
                                        #   in Loop: Header=BB0_65 Depth=2
	alsl.d	$a0, $a1, $a0, 1
	addi.d	$a0, $a0, 2
	alsl.d	$a2, $a3, $s3, 1
	addi.d	$a2, $a2, -2
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	add.d	$a3, $s7, $a3
	nor	$a4, $a4, $zero
	add.d	$a3, $a4, $a3
	.p2align	4, , 16
.LBB0_183:                              # %for.body337
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a4, $a2, 0
	addi.d	$a1, $a1, 1
	st.h	$a4, $a0, 0
	addi.d	$a0, $a0, 2
	addi.w	$a3, $a3, -1
	addi.d	$a2, $a2, -2
	bnez	$a3, .LBB0_183
.LBB0_184:                              # %for.end345.loopexit
                                        #   in Loop: Header=BB0_65 Depth=2
	move	$s7, $a1
.LBB0_185:                              # %for.end345
                                        #   in Loop: Header=BB0_65 Depth=2
	addi.d	$a0, $sp, 336
	addi.d	$a1, $sp, 344
	addi.d	$a2, $sp, 420
	addi.d	$a3, $sp, 396
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 420
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ori	$a3, $zero, 40
	mul.d	$a0, $a0, $a3
	add.d	$a0, $a1, $a0
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	st.w	$a2, $a0, 8
	ld.w	$a0, $sp, 420
	addi.d	$a2, $s7, -1
	mul.d	$a0, $a0, $a3
	add.d	$a0, $a1, $a0
	st.w	$a2, $a0, 12
	ld.w	$a0, $sp, 420
	mul.d	$a0, $a0, $a3
	add.d	$a0, $a1, $a0
	st.w	$s2, $a0, 16
	blt	$s2, $s0, .LBB0_188
# %bb.186:                              # %for.body361.preheader
                                        #   in Loop: Header=BB0_65 Depth=2
	bstrpick.d	$a2, $s4, 31, 0
	addi.d	$a0, $a1, 24
	addi.d	$a2, $a2, -1
	addi.d	$a3, $sp, 404
	.p2align	4, , 16
.LBB0_187:                              # %for.body361
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a4, $sp, 420
	ld.w	$a5, $a3, 0
	slli.d	$a6, $a4, 5
	alsl.d	$a4, $a4, $a6, 3
	stx.w	$a5, $a0, $a4
	addi.d	$a0, $a0, 4
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	bnez	$a2, .LBB0_187
.LBB0_188:                              # %iter.check
                                        #   in Loop: Header=BB0_65 Depth=2
	ld.w	$a2, $sp, 420
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a3, $a2, 5
	alsl.d	$a3, $a2, $a3, 3
	ldx.d	$a1, $a1, $a3
	bstrpick.d	$a5, $s7, 31, 0
	addi.w	$a7, $s7, 0
	addi.d	$a3, $s7, 1
	bstrpick.d	$a3, $a3, 31, 0
	ori	$a6, $zero, 1
	slli.d	$a4, $a5, 1
	ori	$t0, $zero, 7
	bgeu	$t0, $a7, .LBB0_204
# %bb.189:                              # %vector.memcheck
                                        #   in Loop: Header=BB0_65 Depth=2
	slli.d	$t0, $a3, 1
	sub.d	$t0, $a4, $t0
	add.d	$t0, $a1, $t0
	addi.d	$t2, $t0, 4
	alsl.d	$t1, $a5, $a1, 1
	alsl.d	$t3, $a3, $a0, 1
	addi.d	$t0, $a0, 2
	bgeu	$t2, $t3, .LBB0_191
# %bb.190:                              # %vector.memcheck
                                        #   in Loop: Header=BB0_65 Depth=2
	addi.d	$t2, $t1, 2
	bltu	$t0, $t2, .LBB0_204
.LBB0_191:                              # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB0_65 Depth=2
	ori	$a6, $zero, 16
	bgeu	$a7, $a6, .LBB0_199
# %bb.192:                              #   in Loop: Header=BB0_65 Depth=2
	move	$a7, $zero
.LBB0_193:                              # %vec.epilog.ph
                                        #   in Loop: Header=BB0_65 Depth=2
	bstrpick.d	$a6, $a5, 31, 3
	slli.d	$t0, $a6, 3
	srli.d	$t1, $a5, 3
	ori	$a6, $zero, 1
	bstrins.d	$a6, $t1, 31, 3
	alsl.d	$t1, $a7, $a0, 1
	slli.d	$t2, $a7, 1
	addi.d	$t1, $t1, 2
	sub.d	$t2, $a4, $t2
	add.d	$t2, $a1, $t2
	addi.d	$t2, $t2, -14
	sub.d	$a7, $a7, $t0
	ld.d	$t3, $sp, 40                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_194:                              # %vec.epilog.vector.body
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $t1, 0
	vld	$vr1, $t3, %pc_lo12(.LCPI0_2)
	vshuf.h	$vr1, $vr0, $vr0
	vst	$vr1, $t2, 0
	addi.d	$t1, $t1, 16
	addi.d	$a7, $a7, 8
	addi.d	$t2, $t2, -16
	bnez	$a7, .LBB0_194
# %bb.195:                              # %vec.epilog.middle.block
                                        #   in Loop: Header=BB0_65 Depth=2
	bne	$t0, $a5, .LBB0_204
	b	.LBB0_206
.LBB0_196:                              # %vector.ph624
                                        #   in Loop: Header=BB0_65 Depth=2
	addi.d	$a3, $a7, -1
	bstrpick.d	$a5, $a3, 31, 0
	bstrpick.d	$a4, $a5, 31, 4
	slli.d	$a6, $a4, 4
	alsl.d	$a1, $a4, $a1, 4
	sub.d	$a3, $a7, $a6
	alsl.w	$a4, $a4, $s7, 4
	addi.d	$a7, $s6, -32
	move	$t0, $a6
	.p2align	4, , 16
.LBB0_197:                              # %vector.body627
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr0, $a7, 0
	xvld	$xr1, $t1, %pc_lo12(.LCPI0_1)
	xvpermi.d	$xr0, $xr0, 78
	xvshuf.h	$xr1, $xr0, $xr0
	xvst	$xr1, $a2, 0
	addi.d	$a2, $a2, 32
	addi.d	$t0, $t0, -16
	addi.d	$a7, $a7, -32
	bnez	$t0, .LBB0_197
# %bb.198:                              # %middle.block634
                                        #   in Loop: Header=BB0_65 Depth=2
	bne	$a6, $a5, .LBB0_182
	b	.LBB0_184
.LBB0_199:                              # %vector.ph
                                        #   in Loop: Header=BB0_65 Depth=2
	bstrpick.d	$a6, $a5, 31, 4
	slli.d	$a7, $a6, 4
	addi.d	$a6, $t1, -30
	move	$t1, $a7
	ld.d	$t2, $sp, 104                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_200:                              # %vector.body
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr0, $t0, 0
	xvld	$xr1, $t2, %pc_lo12(.LCPI0_1)
	xvpermi.d	$xr0, $xr0, 78
	xvshuf.h	$xr1, $xr0, $xr0
	xvst	$xr1, $a6, 0
	addi.d	$t0, $t0, 32
	addi.d	$t1, $t1, -16
	addi.d	$a6, $a6, -32
	bnez	$t1, .LBB0_200
# %bb.201:                              # %middle.block
                                        #   in Loop: Header=BB0_65 Depth=2
	beq	$a7, $a5, .LBB0_206
# %bb.202:                              # %vec.epilog.iter.check
                                        #   in Loop: Header=BB0_65 Depth=2
	andi	$a6, $a5, 8
	bnez	$a6, .LBB0_193
# %bb.203:                              #   in Loop: Header=BB0_65 Depth=2
	addi.d	$a6, $a7, 1
	.p2align	4, , 16
.LBB0_204:                              # %for.body375.preheader
                                        #   in Loop: Header=BB0_65 Depth=2
	slli.d	$a5, $a6, 1
	sub.d	$a4, $a4, $a5
	add.d	$a1, $a1, $a4
	addi.d	$a1, $a1, 2
	alsl.d	$a0, $a6, $a0, 1
	sub.d	$a3, $a3, $a6
	.p2align	4, , 16
.LBB0_205:                              # %for.body375
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a4, $a0, 0
	st.h	$a4, $a1, 0
	addi.d	$a1, $a1, -2
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 2
	bnez	$a3, .LBB0_205
.LBB0_206:                              # %for.end387
                                        #   in Loop: Header=BB0_65 Depth=2
	ld.w	$a1, $sp, 428
	addi.d	$a0, $sp, 368
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	sub.w	$s2, $fp, $a0
	blt	$s2, $s0, .LBB0_63
# %bb.207:                              # %for.body397.preheader
                                        #   in Loop: Header=BB0_65 Depth=2
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	move	$fp, $zero
	.p2align	4, , 16
.LBB0_208:                              # %for.body397
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.d	$a0, $sp, 368
	addi.d	$a1, $sp, 360
	addi.d	$a2, $sp, 392
	addi.d	$a3, $sp, 388
	pcaddu18i	$ra, %call36(tmax)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 392
	ld.w	$a2, $sp, 388
	addi.d	$a0, $sp, 368
	pcaddu18i	$ra, %call36(tdelete)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 388
	addi.d	$a0, $sp, 336
	move	$a2, $zero
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	addi.w	$fp, $fp, 1
	blt	$fp, $s2, .LBB0_208
	b	.LBB0_64
.LBB0_209:                              #   in Loop: Header=BB0_30 Depth=1
	move	$s2, $s4
.LBB0_210:                              # %for.end562
                                        #   in Loop: Header=BB0_30 Depth=1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.w	$fp, $a0, 0
	bge	$fp, $s2, .LBB0_214
# %bb.211:                              # %for.body570.preheader
                                        #   in Loop: Header=BB0_30 Depth=1
	sub.d	$s2, $s2, $fp
	.p2align	4, , 16
.LBB0_212:                              # %for.body570
                                        #   Parent Loop BB0_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 352
	addi.d	$a1, $sp, 360
	addi.d	$a2, $sp, 392
	addi.d	$a3, $sp, 388
	pcaddu18i	$ra, %call36(tmax)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 392
	ld.w	$a2, $sp, 388
	addi.d	$a0, $sp, 352
	pcaddu18i	$ra, %call36(tdelete)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 388
	addi.d	$a0, $sp, 336
	move	$a2, $zero
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	addi.w	$s2, $s2, -1
	bnez	$s2, .LBB0_212
# %bb.213:                              #   in Loop: Header=BB0_30 Depth=1
	move	$s2, $fp
.LBB0_214:                              # %if.end575
                                        #   in Loop: Header=BB0_30 Depth=1
	ld.d	$a0, $sp, 368
	ld.d	$fp, $sp, 8                     # 8-byte Folded Reload
	beqz	$a0, .LBB0_216
	.p2align	4, , 16
.LBB0_215:                              # %for.cond579
                                        #   Parent Loop BB0_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 368
	addi.d	$a1, $sp, 360
	addi.d	$a2, $sp, 428
	addi.d	$a3, $sp, 424
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 360
	bnez	$a0, .LBB0_215
.LBB0_216:                              # %if.end585
                                        #   in Loop: Header=BB0_30 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	bne	$a0, $s0, .LBB0_221
# %bb.217:                              # %if.then588
                                        #   in Loop: Header=BB0_30 Depth=1
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ldx.d	$a1, $a0, $a1
	beqz	$a1, .LBB0_221
	.p2align	4, , 16
.LBB0_218:                              # %for.body594
                                        #   Parent Loop BB0_30 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_219 Depth 3
	ld.w	$a2, $a1, 0
	alsl.d	$a2, $a2, $a0, 3
	.p2align	4, , 16
.LBB0_219:                              # %for.cond598
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_218 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a3, $a2, 0
	ld.w	$a4, $a3, 0
	addi.d	$a2, $a3, 32
	bne	$a4, $s1, .LBB0_219
# %bb.220:                              # %if.then602
                                        #   in Loop: Header=BB0_218 Depth=2
	st.w	$s0, $a3, 24
	ld.d	$a1, $a1, 32
	bnez	$a1, .LBB0_218
.LBB0_221:                              # %if.end610
                                        #   in Loop: Header=BB0_30 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	bne	$a0, $fp, .LBB0_30
.LBB0_222:                              # %for.cond612.preheader
	pcalau12i	$a0, %got_pc_hi20(pathArray)
	ld.d	$s1, $a0, %got_pc_lo12(pathArray)
	pcalau12i	$a0, %got_pc_hi20(pathList)
	ld.d	$s3, $a0, %got_pc_lo12(pathList)
	move	$s2, $zero
	move	$fp, $zero
	ori	$s4, $zero, 7
	ld.d	$s5, $sp, 192                   # 8-byte Folded Reload
	b	.LBB0_224
	.p2align	4, , 16
.LBB0_223:                              # %for.end646
                                        #   in Loop: Header=BB0_224 Depth=1
	ld.w	$a0, $s5, 0
	addi.d	$fp, $fp, 1
	bge	$s2, $a0, .LBB0_233
.LBB0_224:                              # %for.cond612
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_228 Depth 2
                                        #     Child Loop BB0_231 Depth 2
	addi.d	$a0, $sp, 352
	addi.d	$a1, $sp, 360
	addi.d	$a2, $sp, 428
	addi.d	$a3, $sp, 424
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 360
	beqz	$a0, .LBB0_232
# %bb.225:                              # %if.end616
                                        #   in Loop: Header=BB0_224 Depth=1
	ld.w	$a0, $sp, 424
	ld.d	$a2, $s1, 0
	slli.d	$a1, $a0, 5
	alsl.d	$a0, $a0, $a1, 3
	add.d	$a1, $a2, $a0
	ld.d	$a3, $s3, 0
	ld.w	$a4, $a1, 12
	addi.d	$s2, $s2, 1
	slli.d	$a1, $s2, 3
	ldx.d	$a1, $a3, $a1
	ldx.d	$a0, $a2, $a0
	addi.d	$a2, $a4, 1
	st.w	$a2, $a1, 0
	ld.w	$a2, $sp, 428
	alsl.d	$a3, $a4, $a1, 2
	st.w	$a2, $a3, 8
	bltz	$a4, .LBB0_223
# %bb.226:                              # %for.body636.preheader
                                        #   in Loop: Header=BB0_224 Depth=1
	addi.d	$a2, $a4, 2
	bstrpick.d	$a2, $a2, 31, 0
	ori	$a3, $zero, 1
	bltu	$a4, $s4, .LBB0_230
# %bb.227:                              # %vector.ph758
                                        #   in Loop: Header=BB0_224 Depth=1
	addi.d	$a4, $a2, -1
	move	$a5, $a4
	bstrins.d	$a5, $zero, 2, 0
	move	$a3, $a4
	bstrins.d	$a3, $s0, 2, 0
	addi.d	$a6, $a0, 2
	addi.d	$a7, $a1, 4
	move	$t0, $a5
	.p2align	4, , 16
.LBB0_228:                              # %vector.body761
                                        #   Parent Loop BB0_224 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a6, 0
	vpickve2gr.h	$t1, $vr0, 0
	ext.w.h	$t1, $t1
	xvinsgr2vr.w	$xr1, $t1, 0
	vpickve2gr.h	$t1, $vr0, 1
	ext.w.h	$t1, $t1
	xvinsgr2vr.w	$xr1, $t1, 1
	vpickve2gr.h	$t1, $vr0, 2
	ext.w.h	$t1, $t1
	xvinsgr2vr.w	$xr1, $t1, 2
	vpickve2gr.h	$t1, $vr0, 3
	ext.w.h	$t1, $t1
	xvinsgr2vr.w	$xr1, $t1, 3
	vpickve2gr.h	$t1, $vr0, 4
	ext.w.h	$t1, $t1
	xvinsgr2vr.w	$xr1, $t1, 4
	vpickve2gr.h	$t1, $vr0, 5
	ext.w.h	$t1, $t1
	xvinsgr2vr.w	$xr1, $t1, 5
	vpickve2gr.h	$t1, $vr0, 6
	ext.w.h	$t1, $t1
	xvinsgr2vr.w	$xr1, $t1, 6
	vpickve2gr.h	$t1, $vr0, 7
	ext.w.h	$t1, $t1
	xvinsgr2vr.w	$xr1, $t1, 7
	xvst	$xr1, $a7, 0
	addi.d	$a6, $a6, 16
	addi.d	$t0, $t0, -8
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB0_228
# %bb.229:                              # %middle.block766
                                        #   in Loop: Header=BB0_224 Depth=1
	beq	$a4, $a5, .LBB0_223
.LBB0_230:                              # %for.body636.preheader769
                                        #   in Loop: Header=BB0_224 Depth=1
	alsl.d	$a1, $a3, $a1, 2
	alsl.d	$a0, $a3, $a0, 1
	sub.d	$a2, $a2, $a3
	.p2align	4, , 16
.LBB0_231:                              # %for.body636
                                        #   Parent Loop BB0_224 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$a3, $a0, 0
	st.w	$a3, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 2
	bnez	$a2, .LBB0_231
	b	.LBB0_223
.LBB0_232:                              # %for.end651.split.loop.exit581
	move	$fp, $s2
.LBB0_233:                              # %for.end651
	ld.d	$a0, $sp, 336
	beqz	$a0, .LBB0_235
	.p2align	4, , 16
.LBB0_234:                              # %for.cond655
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 336
	addi.d	$a1, $sp, 360
	addi.d	$a2, $sp, 428
	addi.d	$a3, $sp, 424
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 360
	bnez	$a0, .LBB0_234
.LBB0_235:                              # %if.end661
	ld.d	$a0, $sp, 328
	beqz	$a0, .LBB0_237
	.p2align	4, , 16
.LBB0_236:                              # %for.cond665
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 328
	addi.d	$a1, $sp, 344
	addi.d	$a2, $sp, 384
	addi.d	$a3, $sp, 432
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344
	bnez	$a0, .LBB0_236
.LBB0_237:                              # %if.end671
	addi.w	$a0, $fp, 0
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
.Lfunc_end0:
	.size	mshortest, .Lfunc_end0-mshortest
                                        # -- End function
	.globl	greduce                         # -- Begin function greduce
	.p2align	5
	.type	greduce,@function
greduce:                                # @greduce
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	pcalau12i	$a7, %got_pc_hi20(gnodeArray)
	ld.d	$a7, $a7, %got_pc_lo12(gnodeArray)
	st.w	$a3, $sp, 16
	st.w	$a4, $sp, 20
	ld.d	$a3, $a7, 0
	st.w	$a5, $sp, 24
	ori	$a4, $zero, 1
	st.w	$a6, $sp, 28
	blt	$a2, $a4, .LBB1_7
# %bb.1:                                # %for.body.lr.ph
	slli.d	$a5, $a1, 1
	ldx.h	$a5, $a0, $a5
	slli.d	$a6, $a5, 3
	ldx.d	$a6, $a3, $a6
	ld.w	$a7, $a6, 0
	addi.d	$a2, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$t0, $sp, 12
	lu12i.w	$t1, 244140
	ori	$t1, $t1, 2560
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_2:                                # %if.then20
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a4, $a4, 1
	st.w	$t1, $t2, 12
	beq	$a4, $a2, .LBB1_7
.LBB1_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
                                        #     Child Loop BB1_6 Depth 2
	slli.d	$t2, $a4, 2
	ldx.w	$t2, $t2, $t0
	move	$t3, $a6
	beq	$a7, $t2, .LBB1_5
	.p2align	4, , 16
.LBB1_4:                                # %if.end
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t3, $t3, 32
	ld.w	$t4, $t3, 0
	bne	$t4, $t2, .LBB1_4
.LBB1_5:                                # %if.then
                                        #   in Loop: Header=BB1_3 Depth=1
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $a3, $t2
	ld.w	$t4, $t2, 0
	st.w	$t1, $t3, 12
	beq	$t4, $a5, .LBB1_2
	.p2align	4, , 16
.LBB1_6:                                # %if.end22
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t2, $t2, 32
	ld.w	$t3, $t2, 0
	bne	$t3, $a5, .LBB1_6
	b	.LBB1_2
.LBB1_7:                                # %for.cond26.preheader
	ori	$a2, $zero, 2
	blt	$a1, $a2, .LBB1_14
# %bb.8:                                # %for.body29.preheader
	ori	$a2, $zero, 1
	ori	$a4, $zero, 1
	b	.LBB1_10
	.p2align	4, , 16
.LBB1_9:                                # %for.inc53
                                        #   in Loop: Header=BB1_10 Depth=1
	addi.d	$a4, $a4, 1
	beq	$a4, $a1, .LBB1_14
.LBB1_10:                               # %for.body29
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_11 Depth 2
                                        #       Child Loop BB1_12 Depth 3
	slli.d	$a5, $a4, 1
	ldx.h	$a5, $a0, $a5
	slli.d	$a6, $a5, 3
	ldx.d	$a6, $a3, $a6
	beqz	$a6, .LBB1_9
	.p2align	4, , 16
.LBB1_11:                               # %for.body38
                                        #   Parent Loop BB1_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_12 Depth 3
	ld.w	$a7, $a6, 0
	alsl.d	$t0, $a7, $a3, 3
	.p2align	4, , 16
.LBB1_12:                               # %for.cond42
                                        #   Parent Loop BB1_10 Depth=1
                                        #     Parent Loop BB1_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a7, $t0, 0
	ld.w	$t1, $a7, 0
	addi.d	$t0, $a7, 32
	bne	$t1, $a5, .LBB1_12
# %bb.13:                               # %if.then46
                                        #   in Loop: Header=BB1_11 Depth=2
	ld.d	$a6, $a6, 32
	st.w	$a2, $a7, 20
	bnez	$a6, .LBB1_11
	b	.LBB1_9
.LBB1_14:                               # %for.end55
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end1:
	.size	greduce, .Lfunc_end1-greduce
                                        # -- End function
	.globl	gunreduce                       # -- Begin function gunreduce
	.p2align	5
	.type	gunreduce,@function
gunreduce:                              # @gunreduce
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	pcalau12i	$a7, %got_pc_hi20(gnodeArray)
	ld.d	$a7, $a7, %got_pc_lo12(gnodeArray)
	st.w	$a3, $sp, 16
	st.w	$a4, $sp, 20
	ld.d	$a3, $a7, 0
	st.w	$a5, $sp, 24
	ori	$a4, $zero, 1
	st.w	$a6, $sp, 28
	blt	$a2, $a4, .LBB2_7
# %bb.1:                                # %for.body.lr.ph
	slli.d	$a5, $a1, 1
	ldx.h	$a5, $a0, $a5
	slli.d	$a6, $a5, 3
	ldx.d	$a6, $a3, $a6
	ld.w	$a7, $a6, 0
	addi.d	$a2, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$t0, $sp, 12
	b	.LBB2_3
	.p2align	4, , 16
.LBB2_2:                                # %if.then20
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.w	$t2, $t1, 8
	addi.d	$a4, $a4, 1
	st.w	$t2, $t1, 12
	beq	$a4, $a2, .LBB2_7
.LBB2_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_4 Depth 2
                                        #     Child Loop BB2_6 Depth 2
	slli.d	$t1, $a4, 2
	ldx.w	$t1, $t1, $t0
	move	$t2, $a6
	beq	$a7, $t1, .LBB2_5
	.p2align	4, , 16
.LBB2_4:                                # %if.end
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t2, $t2, 32
	ld.w	$t3, $t2, 0
	bne	$t3, $t1, .LBB2_4
.LBB2_5:                                # %if.then
                                        #   in Loop: Header=BB2_3 Depth=1
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $a3, $t1
	ld.w	$t3, $t2, 8
	ld.w	$t4, $t1, 0
	st.w	$t3, $t2, 12
	beq	$t4, $a5, .LBB2_2
	.p2align	4, , 16
.LBB2_6:                                # %if.end23
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t1, $t1, 32
	ld.w	$t2, $t1, 0
	bne	$t2, $a5, .LBB2_6
	b	.LBB2_2
.LBB2_7:                                # %for.cond27.preheader
	ori	$a2, $zero, 2
	blt	$a1, $a2, .LBB2_14
# %bb.8:                                # %for.body30.preheader
	ori	$a2, $zero, 1
	b	.LBB2_10
	.p2align	4, , 16
.LBB2_9:                                # %for.inc54
                                        #   in Loop: Header=BB2_10 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a2, $a1, .LBB2_14
.LBB2_10:                               # %for.body30
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_11 Depth 2
                                        #       Child Loop BB2_12 Depth 3
	slli.d	$a4, $a2, 1
	ldx.h	$a4, $a0, $a4
	slli.d	$a5, $a4, 3
	ldx.d	$a5, $a3, $a5
	beqz	$a5, .LBB2_9
	.p2align	4, , 16
.LBB2_11:                               # %for.body39
                                        #   Parent Loop BB2_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_12 Depth 3
	ld.w	$a6, $a5, 0
	alsl.d	$a7, $a6, $a3, 3
	.p2align	4, , 16
.LBB2_12:                               # %for.cond43
                                        #   Parent Loop BB2_10 Depth=1
                                        #     Parent Loop BB2_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a6, $a7, 0
	ld.w	$t0, $a6, 0
	addi.d	$a7, $a6, 32
	bne	$t0, $a4, .LBB2_12
# %bb.13:                               # %if.then47
                                        #   in Loop: Header=BB2_11 Depth=2
	ld.d	$a5, $a5, 32
	st.w	$zero, $a6, 20
	bnez	$a5, .LBB2_11
	b	.LBB2_9
.LBB2_14:                               # %for.end56
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end2:
	.size	gunreduce, .Lfunc_end2-gunreduce
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
