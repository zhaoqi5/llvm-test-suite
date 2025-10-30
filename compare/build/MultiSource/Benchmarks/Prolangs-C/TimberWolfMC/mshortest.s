	.file	"mshortest.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function mshortest
.LCPI0_0:
	.dword	0x3fb999999999999a              # double 0.10000000000000001
	.text
	.globl	mshortest
	.p2align	5
	.type	mshortest,@function
mshortest:                              # @mshortest
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -512
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
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	st.d	$zero, $sp, 320
	st.d	$zero, $sp, 304
	st.d	$zero, $sp, 296
	st.d	$zero, $sp, 288
	pcalau12i	$a0, %got_pc_hi20(Mpaths)
	ld.d	$s5, $a0, %got_pc_lo12(Mpaths)
	ld.w	$a0, $s5, 0
	bltz	$a0, .LBB0_3
# %bb.1:                                # %for.body.preheader
	move	$s0, $zero
	ori	$fp, $zero, 2
	.p2align	4, , 16
.LBB0_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$s0, $s0, 1
	addi.d	$a0, $sp, 304
	move	$a1, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 0
	alsl.w	$a1, $a0, $fp, 1
	blt	$s0, $a1, .LBB0_2
.LBB0_3:                                # %for.end
	pcalau12i	$a1, %got_pc_hi20(pnodeArray)
	ld.d	$a1, $a1, %got_pc_lo12(pnodeArray)
	ld.d	$a1, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(numnodes)
	ld.d	$a2, $a2, %got_pc_lo12(numnodes)
	ld.w	$a2, $a2, 0
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	sub.w	$a2, $a3, $a2
	slli.d	$a3, $a2, 4
	alsl.d	$a2, $a2, $a3, 3
	add.d	$a1, $a1, $a2
	ld.d	$a3, $a1, 8
	ori	$a2, $zero, 1
	st.w	$a2, $sp, 400
	pcalau12i	$a1, %got_pc_hi20(targetPtr)
	ld.d	$fp, $a1, %got_pc_lo12(targetPtr)
	ld.w	$a1, $fp, 0
	st.d	$a3, $sp, 176                   # 8-byte Folded Spill
	blez	$a1, .LBB0_7
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
	addi.d	$a0, $sp, 288
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $sp, 400
	ld.w	$a1, $fp, 0
	addi.w	$a2, $a0, 1
	st.w	$a2, $sp, 400
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
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	pcalau12i	$a1, %got_pc_hi20(bareMinimum)
	ld.d	$a1, $a1, %got_pc_lo12(bareMinimum)
	ld.w	$a1, $a1, 0
	sltui	$a1, $a1, 1
	pcalau12i	$a2, %got_pc_hi20(finalShot)
	ld.d	$a2, $a2, %got_pc_lo12(finalShot)
	ld.w	$a2, $a2, 0
	pcalau12i	$a3, %got_pc_hi20(doCompaction)
	ld.d	$a3, $a3, %got_pc_lo12(doCompaction)
	ld.w	$a3, $a3, 0
	xor	$a2, $a2, $a3
	sltui	$a2, $a2, 1
	addi.d	$a2, $a2, 1
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$fp, $a0, $a1
	st.d	$s5, $sp, 160                   # 8-byte Folded Spill
	blez	$fp, .LBB0_25
# %bb.8:                                # %while.body.lr.ph
	pcalau12i	$a0, %got_pc_hi20(targetList)
	ld.d	$s1, $a0, %got_pc_lo12(targetList)
	pcalau12i	$a0, %got_pc_hi20(gnodeArray)
	ld.d	$s2, $a0, %got_pc_lo12(gnodeArray)
	move	$s3, $zero
	ori	$s4, $zero, 1
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_9:                                # %if.end105
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	bge	$s3, $fp, .LBB0_25
.LBB0_10:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
                                        #     Child Loop BB0_15 Depth 2
                                        #       Child Loop BB0_16 Depth 3
                                        #     Child Loop BB0_19 Depth 2
                                        #       Child Loop BB0_20 Depth 3
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 312
	addi.d	$a2, $sp, 352
	addi.d	$a3, $sp, 400
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 312
	beqz	$a0, .LBB0_25
# %bb.11:                               # %if.end31
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.w	$a0, $sp, 400
	ld.d	$a1, $s1, 0
	slli.d	$a0, $a0, 1
	ldx.h	$s0, $a1, $a0
	ld.d	$a0, $s2, 0
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
	bne	$a3, $s4, .LBB0_22
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
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	st.h	$a2, $sp, 350
	addi.d	$a0, $sp, 348
	ori	$a1, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(prestrict)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
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
	st.w	$s4, $a4, 24
	ld.d	$a2, $a2, 32
	bnez	$a2, .LBB0_19
	b	.LBB0_23
	.p2align	4, , 16
.LBB0_22:                               # %for.end71.thread
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	st.h	$a2, $sp, 350
	addi.d	$a0, $sp, 348
	ori	$a1, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(prestrict)
	jirl	$ra, $ra, 0
.LBB0_23:                               # %if.end98
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	bltz	$a0, .LBB0_9
# %bb.24:                               # %if.then101
                                        #   in Loop: Header=BB0_10 Depth=1
	alsl.d	$a0, $s0, $s5, 2
	ldx.w	$a1, $a1, $a0
	ld.w	$a2, $sp, 400
	addi.d	$a0, $sp, 296
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	addi.w	$s3, $s3, 1
	b	.LBB0_9
.LBB0_25:                               # %while.end
	ld.d	$a0, $sp, 288
	beqz	$a0, .LBB0_27
	.p2align	4, , 16
.LBB0_26:                               # %for.cond109
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 312
	addi.d	$a2, $sp, 352
	addi.d	$a3, $sp, 400
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 312
	bnez	$a0, .LBB0_26
.LBB0_27:                               # %if.end115
	ld.w	$fp, $s5, 0
	blez	$fp, .LBB0_201
# %bb.28:                               # %while.body119.lr.ph.lr.ph
	pcalau12i	$a0, %got_pc_hi20(targetList)
	ld.d	$s2, $a0, %got_pc_lo12(targetList)
	pcalau12i	$a0, %got_pc_hi20(gnodeArray)
	ld.d	$a0, $a0, %got_pc_lo12(gnodeArray)
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	ori	$s4, $zero, 1
	pcalau12i	$a0, %got_pc_hi20(tempArray)
	ld.d	$a0, $a0, %got_pc_lo12(tempArray)
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
	move	$s3, $zero
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
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	st.h	$a2, $sp, 350
	addi.d	$a0, $sp, 348
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
                                        #     Child Loop BB0_51 Depth 2
                                        #     Child Loop BB0_54 Depth 2
                                        #     Child Loop BB0_59 Depth 2
                                        #       Child Loop BB0_80 Depth 3
                                        #         Child Loop BB0_87 Depth 4
                                        #           Child Loop BB0_88 Depth 5
                                        #           Child Loop BB0_90 Depth 5
                                        #         Child Loop BB0_95 Depth 4
                                        #           Child Loop BB0_96 Depth 5
                                        #             Child Loop BB0_97 Depth 6
                                        #         Child Loop BB0_101 Depth 4
                                        #           Child Loop BB0_102 Depth 5
                                        #           Child Loop BB0_104 Depth 5
                                        #         Child Loop BB0_109 Depth 4
                                        #           Child Loop BB0_110 Depth 5
                                        #             Child Loop BB0_111 Depth 6
                                        #         Child Loop BB0_116 Depth 4
                                        #         Child Loop BB0_143 Depth 4
                                        #         Child Loop BB0_124 Depth 4
                                        #         Child Loop BB0_128 Depth 4
                                        #         Child Loop BB0_134 Depth 4
                                        #         Child Loop BB0_137 Depth 4
                                        #         Child Loop BB0_140 Depth 4
                                        #       Child Loop BB0_65 Depth 3
                                        #         Child Loop BB0_66 Depth 4
                                        #         Child Loop BB0_68 Depth 4
                                        #       Child Loop BB0_73 Depth 3
                                        #         Child Loop BB0_74 Depth 4
                                        #           Child Loop BB0_75 Depth 5
                                        #       Child Loop BB0_147 Depth 3
                                        #         Child Loop BB0_148 Depth 4
                                        #         Child Loop BB0_150 Depth 4
                                        #       Child Loop BB0_155 Depth 3
                                        #         Child Loop BB0_156 Depth 4
                                        #           Child Loop BB0_157 Depth 5
                                        #       Child Loop BB0_162 Depth 3
                                        #       Child Loop BB0_187 Depth 3
                                        #       Child Loop BB0_170 Depth 3
                                        #       Child Loop BB0_174 Depth 3
                                        #       Child Loop BB0_179 Depth 3
                                        #       Child Loop BB0_182 Depth 3
                                        #       Child Loop BB0_185 Depth 3
                                        #     Child Loop BB0_191 Depth 2
                                        #     Child Loop BB0_194 Depth 2
                                        #     Child Loop BB0_197 Depth 2
                                        #       Child Loop BB0_198 Depth 3
                                        #     Child Loop BB0_40 Depth 2
                                        #       Child Loop BB0_41 Depth 3
	addi.d	$a0, $sp, 296
	addi.d	$a1, $sp, 312
	addi.d	$a2, $sp, 352
	addi.d	$a3, $sp, 400
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 312
	beqz	$a0, .LBB0_201
# %bb.31:                               # %if.end123
                                        #   in Loop: Header=BB0_30 Depth=1
	ld.w	$a0, $sp, 400
	ld.d	$a1, $s2, 0
	st.d	$zero, $sp, 336
	slli.d	$a0, $a0, 1
	ldx.hu	$a1, $a1, $a0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	ext.w.h	$s1, $a1
	slli.d	$s0, $s1, 3
	ldx.d	$a1, $a0, $s0
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
	st.d	$a5, $sp, 80                    # 8-byte Folded Spill
	bne	$a5, $s4, .LBB0_29
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
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	st.h	$a2, $sp, 350
	addi.d	$a0, $sp, 348
	ori	$a1, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(prestrict)
	jirl	$ra, $ra, 0
	bgez	$a0, .LBB0_43
# %bb.39:                               # %if.then175
                                        #   in Loop: Header=BB0_30 Depth=1
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldx.d	$a1, $a0, $s0
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
	st.w	$s4, $a3, 24
	ld.d	$a1, $a1, 32
	bnez	$a1, .LBB0_40
	b	.LBB0_30
.LBB0_43:                               # %if.end198
                                        #   in Loop: Header=BB0_30 Depth=1
	st.d	$fp, $sp, 8                     # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	alsl.d	$a0, $s1, $s0, 2
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	ldx.w	$a2, $a3, $a0
	add.d	$a4, $a3, $a0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	st.w	$a2, $sp, 396
	st.d	$a4, $sp, 128                   # 8-byte Folded Spill
	ld.hu	$a0, $a4, 10
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	st.h	$a2, $a1, 2
	ori	$fp, $zero, 1
	ori	$s0, $zero, 1
	beqz	$a0, .LBB0_46
# %bb.44:                               # %while.body211.preheader
                                        #   in Loop: Header=BB0_30 Depth=1
	addi.d	$a1, $a1, 4
	ori	$s0, $zero, 1
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
	addi.w	$s0, $s0, 1
	addi.d	$a1, $a1, 2
	bnez	$a0, .LBB0_45
.LBB0_46:                               # %while.end220
                                        #   in Loop: Header=BB0_30 Depth=1
	addi.d	$a0, $sp, 304
	addi.d	$a1, $sp, 312
	addi.d	$a2, $sp, 388
	addi.d	$a3, $sp, 364
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(pathArray)
	ld.d	$a1, $a0, %got_pc_lo12(pathArray)
	ld.w	$a0, $sp, 388
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a1, $a1, 0
	ori	$a3, $zero, 40
	mul.d	$a0, $a0, $a3
	add.d	$a0, $a1, $a0
	st.w	$fp, $a0, 8
	ld.w	$a0, $sp, 388
	addi.d	$a2, $s0, -1
	mul.d	$a0, $a0, $a3
	add.d	$a0, $a1, $a0
	st.w	$a2, $a0, 12
	ld.w	$a0, $sp, 388
	mul.d	$a0, $a0, $a3
	add.d	$a0, $a1, $a0
	st.w	$zero, $a0, 16
	ld.w	$a2, $sp, 388
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	mul.d	$a3, $a2, $a3
	ldx.d	$a1, $a1, $a3
	bstrpick.d	$a4, $s0, 31, 0
	addi.d	$a3, $s0, 1
	bstrpick.d	$a3, $a3, 31, 0
	ori	$a5, $zero, 8
	bgeu	$s0, $a5, .LBB0_48
# %bb.47:                               #   in Loop: Header=BB0_30 Depth=1
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	b	.LBB0_53
.LBB0_48:                               # %vector.memcheck703
                                        #   in Loop: Header=BB0_30 Depth=1
	slli.d	$a5, $a4, 1
	slli.d	$a6, $a3, 1
	sub.d	$a5, $a5, $a6
	add.d	$a5, $a1, $a5
	addi.d	$a6, $a5, 4
	alsl.d	$a7, $a4, $a1, 1
	alsl.d	$t0, $a3, $a0, 1
	addi.d	$a5, $a0, 2
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	bgeu	$a6, $t0, .LBB0_50
# %bb.49:                               # %vector.memcheck703
                                        #   in Loop: Header=BB0_30 Depth=1
	addi.d	$a6, $a7, 2
	bltu	$a5, $a6, .LBB0_53
.LBB0_50:                               # %vector.ph715
                                        #   in Loop: Header=BB0_30 Depth=1
	bstrpick.d	$a6, $a4, 31, 3
	slli.d	$a6, $a6, 3
	srli.d	$t0, $a4, 3
	ori	$fp, $zero, 1
	bstrins.d	$fp, $t0, 31, 3
	addi.d	$a7, $a7, -14
	move	$t0, $a6
	.p2align	4, , 16
.LBB0_51:                               # %vector.body718
                                        #   Parent Loop BB0_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a5, 0
	vshuf4i.d	$vr0, $vr0, 1
	vshuf4i.h	$vr0, $vr0, 27
	vst	$vr0, $a7, 0
	addi.d	$a5, $a5, 16
	addi.d	$t0, $t0, -8
	addi.d	$a7, $a7, -16
	bnez	$t0, .LBB0_51
# %bb.52:                               # %middle.block724
                                        #   in Loop: Header=BB0_30 Depth=1
	beq	$a6, $a4, .LBB0_55
.LBB0_53:                               # %for.body233.preheader
                                        #   in Loop: Header=BB0_30 Depth=1
	slli.d	$a4, $a4, 1
	slli.d	$a5, $fp, 1
	sub.d	$a4, $a4, $a5
	add.d	$a1, $a1, $a4
	addi.d	$a1, $a1, 2
	alsl.d	$a0, $fp, $a0, 1
	sub.d	$a3, $a3, $fp
	.p2align	4, , 16
.LBB0_54:                               # %for.body233
                                        #   Parent Loop BB0_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$a4, $a0, 0
	st.h	$a4, $a1, 0
	addi.d	$a1, $a1, -2
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 2
	bnez	$a3, .LBB0_54
.LBB0_55:                               # %for.end244
                                        #   in Loop: Header=BB0_30 Depth=1
	ld.w	$a1, $sp, 396
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 336
	addi.d	$a1, $sp, 328
	addi.d	$a2, $sp, 396
	addi.d	$a3, $sp, 392
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 328
	beqz	$a0, .LBB0_189
# %bb.56:                               # %if.end250.preheader
                                        #   in Loop: Header=BB0_30 Depth=1
	move	$s6, $zero
	st.d	$zero, $sp, 144                 # 8-byte Folded Spill
	ori	$fp, $zero, 1
	st.d	$s2, $sp, 32                    # 8-byte Folded Spill
	b	.LBB0_59
.LBB0_57:                               #   in Loop: Header=BB0_59 Depth=2
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB0_58:                               # %for.cond246.backedge
                                        #   in Loop: Header=BB0_59 Depth=2
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	addi.d	$a0, $sp, 336
	addi.d	$a1, $sp, 328
	addi.d	$a2, $sp, 396
	addi.d	$a3, $sp, 392
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 328
	addi.d	$s6, $fp, -1
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_189
.LBB0_59:                               # %if.end250
                                        #   Parent Loop BB0_30 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_80 Depth 3
                                        #         Child Loop BB0_87 Depth 4
                                        #           Child Loop BB0_88 Depth 5
                                        #           Child Loop BB0_90 Depth 5
                                        #         Child Loop BB0_95 Depth 4
                                        #           Child Loop BB0_96 Depth 5
                                        #             Child Loop BB0_97 Depth 6
                                        #         Child Loop BB0_101 Depth 4
                                        #           Child Loop BB0_102 Depth 5
                                        #           Child Loop BB0_104 Depth 5
                                        #         Child Loop BB0_109 Depth 4
                                        #           Child Loop BB0_110 Depth 5
                                        #             Child Loop BB0_111 Depth 6
                                        #         Child Loop BB0_116 Depth 4
                                        #         Child Loop BB0_143 Depth 4
                                        #         Child Loop BB0_124 Depth 4
                                        #         Child Loop BB0_128 Depth 4
                                        #         Child Loop BB0_134 Depth 4
                                        #         Child Loop BB0_137 Depth 4
                                        #         Child Loop BB0_140 Depth 4
                                        #       Child Loop BB0_65 Depth 3
                                        #         Child Loop BB0_66 Depth 4
                                        #         Child Loop BB0_68 Depth 4
                                        #       Child Loop BB0_73 Depth 3
                                        #         Child Loop BB0_74 Depth 4
                                        #           Child Loop BB0_75 Depth 5
                                        #       Child Loop BB0_147 Depth 3
                                        #         Child Loop BB0_148 Depth 4
                                        #         Child Loop BB0_150 Depth 4
                                        #       Child Loop BB0_155 Depth 3
                                        #         Child Loop BB0_156 Depth 4
                                        #           Child Loop BB0_157 Depth 5
                                        #       Child Loop BB0_162 Depth 3
                                        #       Child Loop BB0_187 Depth 3
                                        #       Child Loop BB0_170 Depth 3
                                        #       Child Loop BB0_174 Depth 3
                                        #       Child Loop BB0_179 Depth 3
                                        #       Child Loop BB0_182 Depth 3
                                        #       Child Loop BB0_185 Depth 3
	ld.w	$a1, $sp, 396
	ld.w	$a2, $sp, 392
	addi.d	$a0, $sp, 320
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	addi.w	$s3, $s3, 1
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	bge	$a1, $a0, .LBB0_189
# %bb.60:                               # %if.end256
                                        #   in Loop: Header=BB0_59 Depth=2
	st.d	$s6, $sp, 208                   # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	ld.w	$a0, $sp, 392
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a3, $a1, 0
	slli.d	$a1, $a0, 5
	alsl.d	$a4, $a0, $a1, 3
	add.d	$a0, $a3, $a4
	ld.w	$s7, $a0, 8
	ld.w	$a2, $a0, 12
	ld.wu	$a1, $a0, 16
	ldx.d	$s3, $a3, $a4
	addi.w	$a3, $a1, 0
	st.d	$s7, $sp, 200                   # 8-byte Folded Spill
	bne	$a2, $s7, .LBB0_77
# %bb.61:                               # %if.then274
                                        #   in Loop: Header=BB0_59 Depth=2
	addi.w	$s0, $a3, 1
	st.w	$s0, $sp, 368
	blez	$a3, .LBB0_63
# %bb.62:                               # %for.body280.preheader
                                        #   in Loop: Header=BB0_59 Depth=2
	addi.d	$a1, $a0, 24
	slli.d	$a2, $a3, 2
	addi.d	$a0, $sp, 372
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB0_63:                               # %for.end287
                                        #   in Loop: Header=BB0_59 Depth=2
	alsl.d	$s6, $s7, $s3, 1
	ld.h	$a0, $s6, 2
	slli.d	$a1, $s0, 2
	addi.d	$a2, $sp, 368
	stx.w	$a0, $a1, $a2
	vld	$vr0, $sp, 372
	ld.w	$s0, $sp, 368
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$s8, $s7, 1
	vst	$vr0, $sp, 408
	addi.d	$s2, $s0, 1
	addi.d	$t1, $sp, 404
	blez	$s0, .LBB0_70
# %bb.64:                               # %for.body.lr.ph.i
                                        #   in Loop: Header=BB0_59 Depth=2
	ldx.h	$a1, $s3, $s8
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $a0, $a2
	ld.w	$a3, $a2, 0
	bstrpick.d	$a4, $s2, 31, 0
	ori	$a5, $zero, 1
	.p2align	4, , 16
.LBB0_65:                               # %for.body.i
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_59 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_66 Depth 4
                                        #         Child Loop BB0_68 Depth 4
	slli.d	$a6, $a5, 2
	ldx.w	$a6, $a6, $t1
	move	$a7, $a2
	beq	$a3, $a6, .LBB0_67
	.p2align	4, , 16
.LBB0_66:                               # %if.end.i
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_59 Depth=2
                                        #       Parent Loop BB0_65 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a7, $a7, 32
	ld.w	$t0, $a7, 0
	bne	$t0, $a6, .LBB0_66
.LBB0_67:                               # %if.then.i
                                        #   in Loop: Header=BB0_65 Depth=3
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $a0, $a6
	st.w	$s5, $a7, 12
	ld.w	$a7, $a6, 0
	beq	$a7, $a1, .LBB0_69
	.p2align	4, , 16
.LBB0_68:                               # %if.end22.i
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_59 Depth=2
                                        #       Parent Loop BB0_65 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a6, $a6, 32
	ld.w	$a7, $a6, 0
	bne	$a7, $a1, .LBB0_68
.LBB0_69:                               # %if.then20.i
                                        #   in Loop: Header=BB0_65 Depth=3
	addi.d	$a5, $a5, 1
	st.w	$s5, $a6, 12
	bne	$a5, $a4, .LBB0_65
.LBB0_70:                               # %for.cond26.preheader.i
                                        #   in Loop: Header=BB0_59 Depth=2
	vst	$vr0, $sp, 256                  # 16-byte Folded Spill
	ori	$a1, $zero, 2
	blt	$s7, $a1, .LBB0_145
# %bb.71:                               # %for.body29.preheader.i
                                        #   in Loop: Header=BB0_59 Depth=2
	ori	$a1, $zero, 1
	b	.LBB0_73
	.p2align	4, , 16
.LBB0_72:                               # %for.inc53.i
                                        #   in Loop: Header=BB0_73 Depth=3
	addi.d	$a1, $a1, 1
	beq	$a1, $s7, .LBB0_145
.LBB0_73:                               # %for.body29.i
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_59 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_74 Depth 4
                                        #           Child Loop BB0_75 Depth 5
	slli.d	$a2, $a1, 1
	ldx.h	$a2, $s3, $a2
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $a0, $a3
	beqz	$a3, .LBB0_72
	.p2align	4, , 16
.LBB0_74:                               # %for.body38.i
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_59 Depth=2
                                        #       Parent Loop BB0_73 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_75 Depth 5
	ld.w	$a4, $a3, 0
	alsl.d	$a4, $a4, $a0, 3
	.p2align	4, , 16
.LBB0_75:                               # %for.cond42.i
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_59 Depth=2
                                        #       Parent Loop BB0_73 Depth=3
                                        #         Parent Loop BB0_74 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.d	$a5, $a4, 0
	ld.w	$a6, $a5, 0
	addi.d	$a4, $a5, 32
	bne	$a6, $a2, .LBB0_75
# %bb.76:                               # %if.then46.i
                                        #   in Loop: Header=BB0_74 Depth=4
	st.w	$s4, $a5, 20
	ld.d	$a3, $a3, 32
	bnez	$a3, .LBB0_74
	b	.LBB0_72
	.p2align	4, , 16
.LBB0_77:                               # %for.cond404.preheader
                                        #   in Loop: Header=BB0_59 Depth=2
	st.d	$a3, $sp, 120                   # 8-byte Folded Spill
	sub.d	$a2, $a2, $s7
	addi.w	$a3, $a2, 0
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	bltu	$a4, $a3, .LBB0_58
# %bb.78:                               # %for.body409.lr.ph
                                        #   in Loop: Header=BB0_59 Depth=2
	move	$s8, $zero
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	addi.w	$a4, $a3, 1
	alsl.d	$a3, $s7, $s3, 1
	st.d	$a3, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a3, $sp, 368
	st.d	$a4, $sp, 112                   # 8-byte Folded Spill
	alsl.d	$a3, $a4, $a3, 2
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	addi.d	$a0, $a0, 24
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	slli.d	$a0, $a1, 2
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	addi.w	$s0, $s7, -1
	addi.d	$a0, $a2, 2
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	addi.d	$a0, $s7, 1
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	addi.w	$a0, $s7, -2
	ori	$a1, $zero, 1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	b	.LBB0_80
	.p2align	4, , 16
.LBB0_79:                               # %for.inc558
                                        #   in Loop: Header=BB0_80 Depth=3
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	addi.w	$s0, $s0, 1
	addi.d	$s8, $s8, 1
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB0_58
.LBB0_80:                               # %for.body409
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_59 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_87 Depth 4
                                        #           Child Loop BB0_88 Depth 5
                                        #           Child Loop BB0_90 Depth 5
                                        #         Child Loop BB0_95 Depth 4
                                        #           Child Loop BB0_96 Depth 5
                                        #             Child Loop BB0_97 Depth 6
                                        #         Child Loop BB0_101 Depth 4
                                        #           Child Loop BB0_102 Depth 5
                                        #           Child Loop BB0_104 Depth 5
                                        #         Child Loop BB0_109 Depth 4
                                        #           Child Loop BB0_110 Depth 5
                                        #             Child Loop BB0_111 Depth 6
                                        #         Child Loop BB0_116 Depth 4
                                        #         Child Loop BB0_143 Depth 4
                                        #         Child Loop BB0_124 Depth 4
                                        #         Child Loop BB0_128 Depth 4
                                        #         Child Loop BB0_134 Depth 4
                                        #         Child Loop BB0_137 Depth 4
                                        #         Child Loop BB0_140 Depth 4
	st.d	$s8, $sp, 224                   # 8-byte Folded Spill
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	bne	$a1, $s4, .LBB0_84
# %bb.81:                               # %if.then412
                                        #   in Loop: Header=BB0_80 Depth=3
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	st.w	$a0, $sp, 368
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	blez	$a0, .LBB0_83
# %bb.82:                               # %for.body418.preheader
                                        #   in Loop: Header=BB0_80 Depth=3
	addi.d	$a0, $sp, 372
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB0_83:                               # %for.end425
                                        #   in Loop: Header=BB0_80 Depth=3
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.h	$a0, $a0, 2
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	ld.w	$t2, $sp, 368
	ld.w	$s7, $sp, 372
	ld.w	$a0, $sp, 376
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
	b	.LBB0_85
	.p2align	4, , 16
.LBB0_84:                               # %if.else433
                                        #   in Loop: Header=BB0_80 Depth=3
	add.d	$fp, $a1, $s7
	slli.d	$a0, $fp, 1
	ldx.h	$s7, $s3, $a0
	ori	$t2, $zero, 1
	st.w	$t2, $sp, 368
	st.w	$s7, $sp, 372
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
.LBB0_85:                               # %if.end440
                                        #   in Loop: Header=BB0_80 Depth=3
	addi.d	$s6, $fp, -1
	ld.w	$s2, $sp, 380
	ld.w	$s8, $sp, 384
	st.w	$s7, $sp, 408
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	st.w	$a0, $sp, 412
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	st.w	$s2, $sp, 416
	st.w	$s8, $sp, 420
	addi.d	$a1, $t2, 1
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	addi.d	$t1, $sp, 404
	blez	$t2, .LBB0_92
# %bb.86:                               # %for.body.lr.ph.i277
                                        #   in Loop: Header=BB0_80 Depth=3
	slli.d	$a1, $s6, 1
	ldx.h	$a1, $s3, $a1
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $a0, $a2
	ld.w	$a3, $a2, 0
	addi.d	$a4, $t2, 1
	bstrpick.d	$a4, $a4, 31, 0
	ori	$a5, $zero, 1
	.p2align	4, , 16
.LBB0_87:                               # %for.body.i279
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_59 Depth=2
                                        #       Parent Loop BB0_80 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_88 Depth 5
                                        #           Child Loop BB0_90 Depth 5
	slli.d	$a6, $a5, 2
	ldx.w	$a6, $a6, $t1
	move	$a7, $a2
	beq	$a3, $a6, .LBB0_89
	.p2align	4, , 16
.LBB0_88:                               # %if.end.i285
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_59 Depth=2
                                        #       Parent Loop BB0_80 Depth=3
                                        #         Parent Loop BB0_87 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.d	$a7, $a7, 32
	ld.w	$t0, $a7, 0
	bne	$t0, $a6, .LBB0_88
.LBB0_89:                               # %if.then.i289
                                        #   in Loop: Header=BB0_87 Depth=4
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $a0, $a6
	st.w	$s5, $a7, 12
	ld.w	$a7, $a6, 0
	beq	$a7, $a1, .LBB0_91
	.p2align	4, , 16
.LBB0_90:                               # %if.end22.i293
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_59 Depth=2
                                        #       Parent Loop BB0_80 Depth=3
                                        #         Parent Loop BB0_87 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.d	$a6, $a6, 32
	ld.w	$a7, $a6, 0
	bne	$a7, $a1, .LBB0_90
.LBB0_91:                               # %if.then20.i297
                                        #   in Loop: Header=BB0_87 Depth=4
	addi.d	$a5, $a5, 1
	st.w	$s5, $a6, 12
	bne	$a5, $a4, .LBB0_87
.LBB0_92:                               # %for.cond26.preheader.i302
                                        #   in Loop: Header=BB0_80 Depth=3
	st.d	$t2, $sp, 256                   # 8-byte Folded Spill
	ori	$a1, $zero, 3
	blt	$fp, $a1, .LBB0_99
# %bb.93:                               # %for.body29.i306.preheader
                                        #   in Loop: Header=BB0_80 Depth=3
	ori	$a1, $zero, 1
	b	.LBB0_95
	.p2align	4, , 16
.LBB0_94:                               # %for.inc53.i328
                                        #   in Loop: Header=BB0_95 Depth=4
	addi.d	$a1, $a1, 1
	beq	$a1, $s6, .LBB0_99
.LBB0_95:                               # %for.body29.i306
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_59 Depth=2
                                        #       Parent Loop BB0_80 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_96 Depth 5
                                        #             Child Loop BB0_97 Depth 6
	slli.d	$a2, $a1, 1
	ldx.h	$a2, $s3, $a2
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $a0, $a3
	beqz	$a3, .LBB0_94
	.p2align	4, , 16
.LBB0_96:                               # %for.body38.i314
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_59 Depth=2
                                        #       Parent Loop BB0_80 Depth=3
                                        #         Parent Loop BB0_95 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB0_97 Depth 6
	ld.w	$a4, $a3, 0
	alsl.d	$a4, $a4, $a0, 3
	.p2align	4, , 16
.LBB0_97:                               # %for.cond42.i318
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_59 Depth=2
                                        #       Parent Loop BB0_80 Depth=3
                                        #         Parent Loop BB0_95 Depth=4
                                        #           Parent Loop BB0_96 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ld.d	$a5, $a4, 0
	ld.w	$a6, $a5, 0
	addi.d	$a4, $a5, 32
	bne	$a6, $a2, .LBB0_97
# %bb.98:                               # %if.then46.i323
                                        #   in Loop: Header=BB0_96 Depth=5
	st.w	$s4, $a5, 20
	ld.d	$a3, $a3, 32
	bnez	$a3, .LBB0_96
	b	.LBB0_94
	.p2align	4, , 16
.LBB0_99:                               # %greduce.exit331
                                        #   in Loop: Header=BB0_80 Depth=3
	move	$a0, $s3
	move	$a1, $s6
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	move	$a3, $s1
	pcaddu18i	$ra, %call36(prestrict)
	jirl	$ra, $ra, 0
	st.w	$s7, $sp, 408
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	st.w	$a2, $sp, 412
	st.w	$s2, $sp, 416
	st.w	$s8, $sp, 420
	addi.d	$t2, $sp, 404
	ld.d	$s7, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	blez	$a2, .LBB0_106
# %bb.100:                              # %for.body.lr.ph.i343
                                        #   in Loop: Header=BB0_80 Depth=3
	alsl.d	$a2, $s6, $s3, 1
	ld.h	$a2, $a2, 0
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $a1, $a3
	ld.w	$a4, $a3, 0
	ld.d	$a5, $sp, 232                   # 8-byte Folded Reload
	bstrpick.d	$a5, $a5, 31, 0
	ori	$a6, $zero, 1
	.p2align	4, , 16
.LBB0_101:                              # %for.body.i345
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_59 Depth=2
                                        #       Parent Loop BB0_80 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_102 Depth 5
                                        #           Child Loop BB0_104 Depth 5
	slli.d	$a7, $a6, 2
	ldx.w	$a7, $a7, $t2
	move	$t0, $a3
	beq	$a4, $a7, .LBB0_103
	.p2align	4, , 16
.LBB0_102:                              # %if.end.i351
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_59 Depth=2
                                        #       Parent Loop BB0_80 Depth=3
                                        #         Parent Loop BB0_101 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.d	$t0, $t0, 32
	ld.w	$t1, $t0, 0
	bne	$t1, $a7, .LBB0_102
.LBB0_103:                              # %if.then.i355
                                        #   in Loop: Header=BB0_101 Depth=4
	slli.d	$a7, $a7, 3
	ld.w	$t1, $t0, 8
	ldx.d	$a7, $a1, $a7
	st.w	$t1, $t0, 12
	ld.w	$t0, $a7, 0
	beq	$t0, $a2, .LBB0_105
	.p2align	4, , 16
.LBB0_104:                              # %if.end23.i360
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_59 Depth=2
                                        #       Parent Loop BB0_80 Depth=3
                                        #         Parent Loop BB0_101 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.d	$a7, $a7, 32
	ld.w	$t0, $a7, 0
	bne	$t0, $a2, .LBB0_104
.LBB0_105:                              # %if.then20.i364
                                        #   in Loop: Header=BB0_101 Depth=4
	ld.w	$t0, $a7, 8
	addi.d	$a6, $a6, 1
	st.w	$t0, $a7, 12
	bne	$a6, $a5, .LBB0_101
.LBB0_106:                              # %for.cond27.preheader.i370
                                        #   in Loop: Header=BB0_80 Depth=3
	ori	$a2, $zero, 3
	blt	$fp, $a2, .LBB0_113
# %bb.107:                              # %for.body30.i374.preheader
                                        #   in Loop: Header=BB0_80 Depth=3
	ori	$a2, $zero, 1
	b	.LBB0_109
	.p2align	4, , 16
.LBB0_108:                              # %for.inc54.i396
                                        #   in Loop: Header=BB0_109 Depth=4
	addi.d	$a2, $a2, 1
	beq	$a2, $s6, .LBB0_113
.LBB0_109:                              # %for.body30.i374
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_59 Depth=2
                                        #       Parent Loop BB0_80 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_110 Depth 5
                                        #             Child Loop BB0_111 Depth 6
	slli.d	$a3, $a2, 1
	ldx.h	$a3, $s3, $a3
	slli.d	$a4, $a3, 3
	ldx.d	$a4, $a1, $a4
	beqz	$a4, .LBB0_108
	.p2align	4, , 16
.LBB0_110:                              # %for.body39.i382
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_59 Depth=2
                                        #       Parent Loop BB0_80 Depth=3
                                        #         Parent Loop BB0_109 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB0_111 Depth 6
	ld.w	$a5, $a4, 0
	alsl.d	$a6, $a5, $a1, 3
	.p2align	4, , 16
.LBB0_111:                              # %for.cond43.i386
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_59 Depth=2
                                        #       Parent Loop BB0_80 Depth=3
                                        #         Parent Loop BB0_109 Depth=4
                                        #           Parent Loop BB0_110 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ld.d	$a5, $a6, 0
	ld.w	$a7, $a5, 0
	addi.d	$a6, $a5, 32
	bne	$a7, $a3, .LBB0_111
# %bb.112:                              # %if.then47.i391
                                        #   in Loop: Header=BB0_110 Depth=5
	st.w	$zero, $a5, 20
	ld.d	$a4, $a4, 32
	bnez	$a4, .LBB0_110
	b	.LBB0_108
	.p2align	4, , 16
.LBB0_113:                              # %gunreduce.exit399
                                        #   in Loop: Header=BB0_80 Depth=3
	bltz	$a0, .LBB0_79
# %bb.114:                              # %if.end461
                                        #   in Loop: Header=BB0_80 Depth=3
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a1, $a2, 0
	add.d	$a0, $a1, $a0
	st.w	$a0, $sp, 396
	ld.hu	$a1, $a2, 10
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	st.h	$a2, $a0, 2
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	beqz	$a1, .LBB0_118
# %bb.115:                              # %while.body475.preheader
                                        #   in Loop: Header=BB0_80 Depth=3
	addi.d	$a2, $a0, 4
	ori	$s7, $zero, 1
	.p2align	4, , 16
.LBB0_116:                              # %while.body475
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_59 Depth=2
                                        #       Parent Loop BB0_80 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	st.h	$a1, $a2, 0
	ext.w.h	$a1, $a1
	slli.d	$a3, $a1, 3
	alsl.d	$a1, $a1, $a3, 2
	add.d	$a1, $a4, $a1
	ld.hu	$a1, $a1, 10
	addi.w	$s7, $s7, 1
	addi.d	$a2, $a2, 2
	bnez	$a1, .LBB0_116
# %bb.117:                              # %while.end484
                                        #   in Loop: Header=BB0_80 Depth=3
	ori	$a1, $zero, 3
	bge	$fp, $a1, .LBB0_119
	b	.LBB0_126
	.p2align	4, , 16
.LBB0_118:                              #   in Loop: Header=BB0_80 Depth=3
	ori	$s7, $zero, 1
	ori	$a1, $zero, 3
	blt	$fp, $a1, .LBB0_126
.LBB0_119:                              # %for.body490.preheader
                                        #   in Loop: Header=BB0_80 Depth=3
	bstrpick.d	$a2, $s0, 31, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	add.w	$a4, $a1, $s8
	bstrpick.d	$a1, $s7, 31, 0
	ori	$a3, $zero, 7
	bltu	$a4, $a3, .LBB0_122
# %bb.120:                              # %vector.memcheck674
                                        #   in Loop: Header=BB0_80 Depth=3
	addi.d	$a3, $s3, 2
	alsl.d	$a6, $a2, $a3, 1
	alsl.d	$a5, $a1, $a0, 1
	addi.d	$a3, $a5, 2
	bstrpick.d	$a4, $a4, 31, 0
	bgeu	$a3, $a6, .LBB0_142
# %bb.121:                              # %vector.memcheck674
                                        #   in Loop: Header=BB0_80 Depth=3
	slli.d	$a6, $a2, 1
	slli.d	$a7, $a4, 1
	sub.d	$a6, $a6, $a7
	add.d	$a6, $s3, $a6
	add.d	$a5, $a5, $a7
	addi.d	$a5, $a5, 4
	bgeu	$a6, $a5, .LBB0_142
.LBB0_122:                              #   in Loop: Header=BB0_80 Depth=3
	move	$a4, $s7
.LBB0_123:                              # %for.body490.preheader743
                                        #   in Loop: Header=BB0_80 Depth=3
	alsl.d	$a0, $a1, $a0, 1
	addi.d	$a0, $a0, 2
	alsl.d	$a2, $a2, $s3, 1
	sub.d	$a3, $a4, $s7
	.p2align	4, , 16
.LBB0_124:                              # %for.body490
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_59 Depth=2
                                        #       Parent Loop BB0_80 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.h	$a4, $a2, 0
	addi.d	$a1, $a1, 1
	st.h	$a4, $a0, 0
	addi.d	$a0, $a0, 2
	addi.w	$a3, $a3, 1
	addi.d	$a2, $a2, -2
	bne	$s0, $a3, .LBB0_124
.LBB0_125:                              # %for.end498.loopexit
                                        #   in Loop: Header=BB0_80 Depth=3
	move	$s7, $a1
.LBB0_126:                              # %for.end498
                                        #   in Loop: Header=BB0_80 Depth=3
	addi.d	$a0, $sp, 304
	addi.d	$a1, $sp, 312
	addi.d	$a2, $sp, 388
	addi.d	$a3, $sp, 364
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 388
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ori	$a3, $zero, 40
	mul.d	$a0, $a0, $a3
	add.d	$a0, $a1, $a0
	st.w	$s6, $a0, 8
	ld.w	$a0, $sp, 388
	addi.d	$a2, $s7, -1
	mul.d	$a0, $a0, $a3
	add.d	$a0, $a1, $a0
	st.w	$a2, $a0, 12
	ld.w	$a0, $sp, 388
	mul.d	$a0, $a0, $a3
	add.d	$a0, $a1, $a0
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	st.w	$a2, $a0, 16
	blez	$a2, .LBB0_129
# %bb.127:                              # %for.body517.preheader
                                        #   in Loop: Header=BB0_80 Depth=3
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	bstrpick.d	$a2, $a0, 31, 0
	addi.d	$a0, $a1, 24
	addi.d	$a2, $a2, -1
	addi.d	$a3, $sp, 372
	.p2align	4, , 16
.LBB0_128:                              # %for.body517
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_59 Depth=2
                                        #       Parent Loop BB0_80 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a4, $sp, 388
	ld.w	$a5, $a3, 0
	slli.d	$a6, $a4, 5
	alsl.d	$a4, $a4, $a6, 3
	stx.w	$a5, $a0, $a4
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	bnez	$a2, .LBB0_128
.LBB0_129:                              # %for.cond528.preheader
                                        #   in Loop: Header=BB0_80 Depth=3
	ld.w	$a2, $sp, 388
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a3, $a2, 5
	alsl.d	$a3, $a2, $a3, 3
	ldx.d	$a1, $a1, $a3
	bstrpick.d	$a4, $s7, 31, 0
	addi.w	$a6, $s7, 0
	addi.d	$a3, $s7, 1
	bstrpick.d	$a3, $a3, 31, 0
	ori	$a5, $zero, 1
	ori	$a7, $zero, 8
	bgeu	$a6, $a7, .LBB0_131
# %bb.130:                              #   in Loop: Header=BB0_80 Depth=3
	ld.d	$s7, $sp, 200                   # 8-byte Folded Reload
	b	.LBB0_136
	.p2align	4, , 16
.LBB0_131:                              # %vector.memcheck650
                                        #   in Loop: Header=BB0_80 Depth=3
	slli.d	$a6, $a4, 1
	slli.d	$a7, $a3, 1
	sub.d	$a6, $a6, $a7
	add.d	$a6, $a1, $a6
	addi.d	$a7, $a6, 4
	alsl.d	$t0, $a4, $a1, 1
	alsl.d	$t1, $a3, $a0, 1
	addi.d	$a6, $a0, 2
	ld.d	$s7, $sp, 200                   # 8-byte Folded Reload
	bgeu	$a7, $t1, .LBB0_133
# %bb.132:                              # %vector.memcheck650
                                        #   in Loop: Header=BB0_80 Depth=3
	addi.d	$a7, $t0, 2
	bltu	$a6, $a7, .LBB0_136
.LBB0_133:                              # %vector.ph662
                                        #   in Loop: Header=BB0_80 Depth=3
	bstrpick.d	$a5, $a4, 31, 3
	slli.d	$a7, $a5, 3
	srli.d	$t1, $a4, 3
	ori	$a5, $zero, 1
	bstrins.d	$a5, $t1, 31, 3
	addi.d	$t0, $t0, -14
	move	$t1, $a7
	.p2align	4, , 16
.LBB0_134:                              # %vector.body665
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_59 Depth=2
                                        #       Parent Loop BB0_80 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr0, $a6, 0
	vshuf4i.d	$vr0, $vr0, 1
	vshuf4i.h	$vr0, $vr0, 27
	vst	$vr0, $t0, 0
	addi.d	$a6, $a6, 16
	addi.d	$t1, $t1, -8
	addi.d	$t0, $t0, -16
	bnez	$t1, .LBB0_134
# %bb.135:                              # %middle.block671
                                        #   in Loop: Header=BB0_80 Depth=3
	beq	$a7, $a4, .LBB0_138
	.p2align	4, , 16
.LBB0_136:                              # %for.body531.preheader
                                        #   in Loop: Header=BB0_80 Depth=3
	slli.d	$a4, $a4, 1
	slli.d	$a6, $a5, 1
	sub.d	$a4, $a4, $a6
	add.d	$a1, $a1, $a4
	addi.d	$a1, $a1, 2
	alsl.d	$a0, $a5, $a0, 1
	sub.d	$a3, $a3, $a5
	.p2align	4, , 16
.LBB0_137:                              # %for.body531
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_59 Depth=2
                                        #       Parent Loop BB0_80 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.h	$a4, $a0, 0
	st.h	$a4, $a1, 0
	addi.d	$a1, $a1, -2
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 2
	bnez	$a3, .LBB0_137
.LBB0_138:                              # %for.end543
                                        #   in Loop: Header=BB0_80 Depth=3
	ld.w	$a1, $sp, 396
	ld.d	$s2, $sp, 208                   # 8-byte Folded Reload
	addi.d	$s2, $s2, 1
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	sub.d	$fp, $a0, $a1
	st.d	$s2, $sp, 208                   # 8-byte Folded Spill
	sub.w	$s2, $s2, $fp
	blez	$s2, .LBB0_79
# %bb.139:                              # %for.body552.preheader
                                        #   in Loop: Header=BB0_80 Depth=3
	move	$s6, $zero
	.p2align	4, , 16
.LBB0_140:                              # %for.body552
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_59 Depth=2
                                        #       Parent Loop BB0_80 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.d	$a0, $sp, 336
	addi.d	$a1, $sp, 328
	addi.d	$a2, $sp, 360
	addi.d	$a3, $sp, 356
	pcaddu18i	$ra, %call36(tmax)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 360
	ld.w	$a2, $sp, 356
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(tdelete)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 356
	addi.d	$a0, $sp, 304
	move	$a2, $zero
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	addi.w	$s6, $s6, 1
	blt	$s6, $s2, .LBB0_140
# %bb.141:                              #   in Loop: Header=BB0_80 Depth=3
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	b	.LBB0_79
.LBB0_142:                              # %vector.ph687
                                        #   in Loop: Header=BB0_80 Depth=3
	ld.d	$a5, $sp, 240                   # 8-byte Folded Reload
	bstrpick.d	$a5, $a5, 31, 0
	addi.d	$a5, $a5, 1
	bstrpick.d	$a5, $a5, 32, 3
	slli.d	$a7, $a5, 3
	addi.d	$a5, $s3, -14
	alsl.d	$t0, $a2, $a5, 1
	addi.d	$a5, $a4, 1
	bstrpick.d	$a4, $a5, 32, 3
	slli.d	$a6, $a4, 3
	alsl.d	$a1, $a4, $a1, 3
	sub.d	$a2, $a2, $a6
	alsl.w	$a4, $a4, $s7, 3
	.p2align	4, , 16
.LBB0_143:                              # %vector.body691
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_59 Depth=2
                                        #       Parent Loop BB0_80 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr0, $t0, 0
	vshuf4i.d	$vr0, $vr0, 1
	vshuf4i.h	$vr0, $vr0, 27
	vst	$vr0, $a3, 0
	addi.d	$a3, $a3, 16
	addi.d	$a7, $a7, -8
	addi.d	$t0, $t0, -16
	bnez	$a7, .LBB0_143
# %bb.144:                              # %middle.block698
                                        #   in Loop: Header=BB0_80 Depth=3
	beq	$a5, $a6, .LBB0_125
	b	.LBB0_123
	.p2align	4, , 16
.LBB0_145:                              # %greduce.exit
                                        #   in Loop: Header=BB0_59 Depth=2
	move	$a0, $s3
	move	$a1, $s7
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	move	$a3, $s1
	pcaddu18i	$ra, %call36(prestrict)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	vld	$vr0, $sp, 256                  # 16-byte Folded Reload
	vst	$vr0, $sp, 408
	addi.d	$t2, $sp, 404
	blez	$s0, .LBB0_152
# %bb.146:                              # %for.body.lr.ph.i243
                                        #   in Loop: Header=BB0_59 Depth=2
	ld.h	$a2, $s6, 0
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $a1, $a3
	ld.w	$a4, $a3, 0
	bstrpick.d	$a5, $s2, 31, 0
	ori	$a6, $zero, 1
	.p2align	4, , 16
.LBB0_147:                              # %for.body.i245
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_59 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_148 Depth 4
                                        #         Child Loop BB0_150 Depth 4
	slli.d	$a7, $a6, 2
	ldx.w	$a7, $a7, $t2
	move	$t0, $a3
	beq	$a4, $a7, .LBB0_149
	.p2align	4, , 16
.LBB0_148:                              # %if.end.i250
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_59 Depth=2
                                        #       Parent Loop BB0_147 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$t0, $t0, 32
	ld.w	$t1, $t0, 0
	bne	$t1, $a7, .LBB0_148
.LBB0_149:                              # %if.then.i253
                                        #   in Loop: Header=BB0_147 Depth=3
	slli.d	$a7, $a7, 3
	ld.w	$t1, $t0, 8
	ldx.d	$a7, $a1, $a7
	st.w	$t1, $t0, 12
	ld.w	$t0, $a7, 0
	beq	$t0, $a2, .LBB0_151
	.p2align	4, , 16
.LBB0_150:                              # %if.end23.i
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_59 Depth=2
                                        #       Parent Loop BB0_147 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a7, $a7, 32
	ld.w	$t0, $a7, 0
	bne	$t0, $a2, .LBB0_150
.LBB0_151:                              # %if.then20.i257
                                        #   in Loop: Header=BB0_147 Depth=3
	ld.w	$t0, $a7, 8
	addi.d	$a6, $a6, 1
	st.w	$t0, $a7, 12
	bne	$a6, $a5, .LBB0_147
.LBB0_152:                              # %for.cond27.preheader.i
                                        #   in Loop: Header=BB0_59 Depth=2
	ori	$a2, $zero, 2
	blt	$s7, $a2, .LBB0_159
# %bb.153:                              # %for.body30.preheader.i
                                        #   in Loop: Header=BB0_59 Depth=2
	ori	$a2, $zero, 1
	b	.LBB0_155
	.p2align	4, , 16
.LBB0_154:                              # %for.inc54.i
                                        #   in Loop: Header=BB0_155 Depth=3
	addi.d	$a2, $a2, 1
	beq	$a2, $s7, .LBB0_159
.LBB0_155:                              # %for.body30.i
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_59 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_156 Depth 4
                                        #           Child Loop BB0_157 Depth 5
	slli.d	$a3, $a2, 1
	ldx.h	$a3, $s3, $a3
	slli.d	$a4, $a3, 3
	ldx.d	$a4, $a1, $a4
	beqz	$a4, .LBB0_154
	.p2align	4, , 16
.LBB0_156:                              # %for.body39.i
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_59 Depth=2
                                        #       Parent Loop BB0_155 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_157 Depth 5
	ld.w	$a5, $a4, 0
	alsl.d	$a6, $a5, $a1, 3
	.p2align	4, , 16
.LBB0_157:                              # %for.cond43.i
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_59 Depth=2
                                        #       Parent Loop BB0_155 Depth=3
                                        #         Parent Loop BB0_156 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.d	$a5, $a6, 0
	ld.w	$a7, $a5, 0
	addi.d	$a6, $a5, 32
	bne	$a7, $a3, .LBB0_157
# %bb.158:                              # %if.then47.i
                                        #   in Loop: Header=BB0_156 Depth=4
	st.w	$zero, $a5, 20
	ld.d	$a4, $a4, 32
	bnez	$a4, .LBB0_156
	b	.LBB0_154
	.p2align	4, , 16
.LBB0_159:                              # %gunreduce.exit
                                        #   in Loop: Header=BB0_59 Depth=2
	vpickve2gr.w	$a1, $vr0, 1
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	bltz	$a0, .LBB0_58
# %bb.160:                              # %if.end309
                                        #   in Loop: Header=BB0_59 Depth=2
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a1, $a2, 0
	add.d	$a0, $a1, $a0
	st.w	$a0, $sp, 396
	ld.hu	$a1, $a2, 10
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	st.h	$a2, $a0, 2
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	beqz	$a1, .LBB0_164
# %bb.161:                              # %while.body323.preheader
                                        #   in Loop: Header=BB0_59 Depth=2
	addi.d	$a2, $a0, 4
	ori	$s7, $zero, 1
	.p2align	4, , 16
.LBB0_162:                              # %while.body323
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_59 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.h	$a1, $a2, 0
	ext.w.h	$a1, $a1
	slli.d	$a3, $a1, 3
	alsl.d	$a1, $a1, $a3, 2
	add.d	$a1, $a4, $a1
	ld.hu	$a1, $a1, 10
	addi.w	$s7, $s7, 1
	addi.d	$a2, $a2, 2
	bnez	$a1, .LBB0_162
# %bb.163:                              # %for.cond334.preheader
                                        #   in Loop: Header=BB0_59 Depth=2
	ori	$a1, $zero, 2
	ld.d	$a7, $sp, 200                   # 8-byte Folded Reload
	bge	$a7, $a1, .LBB0_165
	b	.LBB0_172
.LBB0_164:                              #   in Loop: Header=BB0_59 Depth=2
	ori	$s7, $zero, 1
	ori	$a1, $zero, 2
	ld.d	$a7, $sp, 200                   # 8-byte Folded Reload
	blt	$a7, $a1, .LBB0_172
.LBB0_165:                              # %for.body337.preheader
                                        #   in Loop: Header=BB0_59 Depth=2
	bstrpick.d	$a1, $s7, 31, 0
	ori	$a2, $zero, 9
	bltu	$a7, $a2, .LBB0_168
# %bb.166:                              # %vector.memcheck622
                                        #   in Loop: Header=BB0_59 Depth=2
	alsl.d	$a3, $a1, $a0, 1
	addi.d	$a2, $a3, 2
	bgeu	$a2, $s6, .LBB0_186
# %bb.167:                              # %vector.memcheck622
                                        #   in Loop: Header=BB0_59 Depth=2
	addi.d	$a4, $a7, -2
	bstrpick.d	$a4, $a4, 31, 0
	slli.d	$a5, $a4, 1
	alsl.d	$a3, $a4, $a3, 1
	addi.d	$a3, $a3, 4
	sub.d	$a4, $s8, $a5
	add.d	$a4, $s3, $a4
	addi.d	$a4, $a4, -2
	bgeu	$a4, $a3, .LBB0_186
.LBB0_168:                              #   in Loop: Header=BB0_59 Depth=2
	move	$a3, $a7
	move	$a4, $s7
.LBB0_169:                              # %for.body337.preheader744
                                        #   in Loop: Header=BB0_59 Depth=2
	alsl.d	$a0, $a1, $a0, 1
	addi.d	$a0, $a0, 2
	alsl.d	$a2, $a3, $s3, 1
	addi.d	$a2, $a2, -2
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	add.d	$a3, $s7, $a3
	nor	$a4, $a4, $zero
	add.d	$a3, $a4, $a3
	.p2align	4, , 16
.LBB0_170:                              # %for.body337
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_59 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a4, $a2, 0
	addi.d	$a1, $a1, 1
	st.h	$a4, $a0, 0
	addi.d	$a0, $a0, 2
	addi.w	$a3, $a3, -1
	addi.d	$a2, $a2, -2
	bnez	$a3, .LBB0_170
.LBB0_171:                              # %for.end345.loopexit
                                        #   in Loop: Header=BB0_59 Depth=2
	move	$s7, $a1
.LBB0_172:                              # %for.end345
                                        #   in Loop: Header=BB0_59 Depth=2
	addi.d	$a0, $sp, 304
	addi.d	$a1, $sp, 312
	addi.d	$a2, $sp, 388
	addi.d	$a3, $sp, 364
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 388
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ori	$a3, $zero, 40
	mul.d	$a0, $a0, $a3
	add.d	$a0, $a1, $a0
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	st.w	$a2, $a0, 8
	ld.w	$a0, $sp, 388
	addi.d	$a2, $s7, -1
	mul.d	$a0, $a0, $a3
	add.d	$a0, $a1, $a0
	st.w	$a2, $a0, 12
	ld.w	$a0, $sp, 388
	mul.d	$a0, $a0, $a3
	add.d	$a0, $a1, $a0
	st.w	$s0, $a0, 16
	blez	$s0, .LBB0_175
# %bb.173:                              # %for.body361.preheader
                                        #   in Loop: Header=BB0_59 Depth=2
	bstrpick.d	$a2, $s2, 31, 0
	addi.d	$a0, $a1, 24
	addi.d	$a2, $a2, -1
	addi.d	$a3, $sp, 372
	.p2align	4, , 16
.LBB0_174:                              # %for.body361
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_59 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a4, $sp, 388
	ld.w	$a5, $a3, 0
	slli.d	$a6, $a4, 5
	alsl.d	$a4, $a4, $a6, 3
	stx.w	$a5, $a0, $a4
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	bnez	$a2, .LBB0_174
.LBB0_175:                              # %for.cond372.preheader
                                        #   in Loop: Header=BB0_59 Depth=2
	ld.w	$a2, $sp, 388
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a3, $a2, 5
	alsl.d	$a3, $a2, $a3, 3
	ldx.d	$a1, $a1, $a3
	bstrpick.d	$a4, $s7, 31, 0
	addi.w	$a6, $s7, 0
	addi.d	$a3, $s7, 1
	bstrpick.d	$a3, $a3, 31, 0
	ori	$a5, $zero, 1
	ori	$a7, $zero, 8
	bltu	$a6, $a7, .LBB0_181
# %bb.176:                              # %vector.memcheck
                                        #   in Loop: Header=BB0_59 Depth=2
	slli.d	$a6, $a4, 1
	slli.d	$a7, $a3, 1
	sub.d	$a6, $a6, $a7
	add.d	$a6, $a1, $a6
	addi.d	$a7, $a6, 4
	alsl.d	$t0, $a4, $a1, 1
	alsl.d	$t1, $a3, $a0, 1
	addi.d	$a6, $a0, 2
	bgeu	$a7, $t1, .LBB0_178
# %bb.177:                              # %vector.memcheck
                                        #   in Loop: Header=BB0_59 Depth=2
	addi.d	$a7, $t0, 2
	bltu	$a6, $a7, .LBB0_181
.LBB0_178:                              # %vector.ph
                                        #   in Loop: Header=BB0_59 Depth=2
	bstrpick.d	$a5, $a4, 31, 3
	slli.d	$a7, $a5, 3
	srli.d	$t1, $a4, 3
	ori	$a5, $zero, 1
	bstrins.d	$a5, $t1, 31, 3
	addi.d	$t0, $t0, -14
	move	$t1, $a7
	.p2align	4, , 16
.LBB0_179:                              # %vector.body
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_59 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a6, 0
	vshuf4i.d	$vr0, $vr0, 1
	vshuf4i.h	$vr0, $vr0, 27
	vst	$vr0, $t0, 0
	addi.d	$a6, $a6, 16
	addi.d	$t1, $t1, -8
	addi.d	$t0, $t0, -16
	bnez	$t1, .LBB0_179
# %bb.180:                              # %middle.block
                                        #   in Loop: Header=BB0_59 Depth=2
	beq	$a7, $a4, .LBB0_183
	.p2align	4, , 16
.LBB0_181:                              # %for.body375.preheader
                                        #   in Loop: Header=BB0_59 Depth=2
	slli.d	$a4, $a4, 1
	slli.d	$a6, $a5, 1
	sub.d	$a4, $a4, $a6
	add.d	$a1, $a1, $a4
	addi.d	$a1, $a1, 2
	alsl.d	$a0, $a5, $a0, 1
	sub.d	$a3, $a3, $a5
	.p2align	4, , 16
.LBB0_182:                              # %for.body375
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_59 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a4, $a0, 0
	st.h	$a4, $a1, 0
	addi.d	$a1, $a1, -2
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 2
	bnez	$a3, .LBB0_182
.LBB0_183:                              # %for.end387
                                        #   in Loop: Header=BB0_59 Depth=2
	ld.w	$a1, $sp, 396
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	sub.w	$s0, $fp, $a0
	blez	$s0, .LBB0_57
# %bb.184:                              # %for.body397.preheader
                                        #   in Loop: Header=BB0_59 Depth=2
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	move	$fp, $zero
	.p2align	4, , 16
.LBB0_185:                              # %for.body397
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_59 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.d	$a0, $sp, 336
	addi.d	$a1, $sp, 328
	addi.d	$a2, $sp, 360
	addi.d	$a3, $sp, 356
	pcaddu18i	$ra, %call36(tmax)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 360
	ld.w	$a2, $sp, 356
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(tdelete)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 356
	addi.d	$a0, $sp, 304
	move	$a2, $zero
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	addi.w	$fp, $fp, 1
	blt	$fp, $s0, .LBB0_185
	b	.LBB0_58
.LBB0_186:                              # %vector.ph635
                                        #   in Loop: Header=BB0_59 Depth=2
	addi.d	$a3, $a7, -1
	bstrpick.d	$a5, $a3, 31, 0
	bstrpick.d	$a4, $a5, 31, 3
	slli.d	$a6, $a4, 3
	alsl.d	$a1, $a4, $a1, 3
	sub.d	$a3, $a7, $a6
	alsl.w	$a4, $a4, $s7, 3
	addi.d	$a7, $s6, -16
	move	$t0, $a6
	.p2align	4, , 16
.LBB0_187:                              # %vector.body638
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_59 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a7, 0
	vshuf4i.d	$vr0, $vr0, 1
	vshuf4i.h	$vr0, $vr0, 27
	vst	$vr0, $a2, 0
	addi.d	$a2, $a2, 16
	addi.d	$t0, $t0, -8
	addi.d	$a7, $a7, -16
	bnez	$t0, .LBB0_187
# %bb.188:                              # %middle.block645
                                        #   in Loop: Header=BB0_59 Depth=2
	bne	$a6, $a5, .LBB0_169
	b	.LBB0_171
.LBB0_189:                              # %for.end562
                                        #   in Loop: Header=BB0_30 Depth=1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.w	$fp, $a0, 0
	bge	$fp, $s3, .LBB0_193
# %bb.190:                              # %for.body570.preheader
                                        #   in Loop: Header=BB0_30 Depth=1
	sub.d	$s0, $s3, $fp
	.p2align	4, , 16
.LBB0_191:                              # %for.body570
                                        #   Parent Loop BB0_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 320
	addi.d	$a1, $sp, 328
	addi.d	$a2, $sp, 360
	addi.d	$a3, $sp, 356
	pcaddu18i	$ra, %call36(tmax)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 360
	ld.w	$a2, $sp, 356
	addi.d	$a0, $sp, 320
	pcaddu18i	$ra, %call36(tdelete)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 356
	addi.d	$a0, $sp, 304
	move	$a2, $zero
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	addi.w	$s0, $s0, -1
	bnez	$s0, .LBB0_191
# %bb.192:                              #   in Loop: Header=BB0_30 Depth=1
	move	$s3, $fp
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
.LBB0_193:                              # %if.end575
                                        #   in Loop: Header=BB0_30 Depth=1
	ld.d	$a0, $sp, 336
	ld.d	$fp, $sp, 8                     # 8-byte Folded Reload
	beqz	$a0, .LBB0_195
	.p2align	4, , 16
.LBB0_194:                              # %for.cond579
                                        #   Parent Loop BB0_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 336
	addi.d	$a1, $sp, 328
	addi.d	$a2, $sp, 396
	addi.d	$a3, $sp, 392
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 328
	bnez	$a0, .LBB0_194
.LBB0_195:                              # %if.end585
                                        #   in Loop: Header=BB0_30 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	bne	$a0, $s4, .LBB0_200
# %bb.196:                              # %if.then588
                                        #   in Loop: Header=BB0_30 Depth=1
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldx.d	$a1, $a0, $s0
	beqz	$a1, .LBB0_200
	.p2align	4, , 16
.LBB0_197:                              # %for.body594
                                        #   Parent Loop BB0_30 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_198 Depth 3
	ld.w	$a2, $a1, 0
	alsl.d	$a2, $a2, $a0, 3
	.p2align	4, , 16
.LBB0_198:                              # %for.cond598
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_197 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a3, $a2, 0
	ld.w	$a4, $a3, 0
	addi.d	$a2, $a3, 32
	bne	$a4, $s1, .LBB0_198
# %bb.199:                              # %if.then602
                                        #   in Loop: Header=BB0_197 Depth=2
	st.w	$s4, $a3, 24
	ld.d	$a1, $a1, 32
	bnez	$a1, .LBB0_197
.LBB0_200:                              # %if.end610
                                        #   in Loop: Header=BB0_30 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	bne	$a0, $fp, .LBB0_30
.LBB0_201:                              # %for.cond612.preheader
	pcalau12i	$a0, %got_pc_hi20(pathArray)
	ld.d	$s0, $a0, %got_pc_lo12(pathArray)
	pcalau12i	$a0, %got_pc_hi20(pathList)
	ld.d	$s1, $a0, %got_pc_lo12(pathList)
	move	$s2, $zero
	move	$fp, $zero
	ori	$s3, $zero, 7
	ori	$s4, $zero, 1
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	b	.LBB0_203
	.p2align	4, , 16
.LBB0_202:                              # %for.end646
                                        #   in Loop: Header=BB0_203 Depth=1
	ld.w	$a0, $s5, 0
	addi.d	$fp, $fp, 1
	bge	$s2, $a0, .LBB0_212
.LBB0_203:                              # %for.cond612
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_207 Depth 2
                                        #     Child Loop BB0_210 Depth 2
	addi.d	$a0, $sp, 320
	addi.d	$a1, $sp, 328
	addi.d	$a2, $sp, 396
	addi.d	$a3, $sp, 392
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 328
	beqz	$a0, .LBB0_211
# %bb.204:                              # %if.end616
                                        #   in Loop: Header=BB0_203 Depth=1
	ld.w	$a0, $sp, 392
	ld.d	$a2, $s0, 0
	slli.d	$a1, $a0, 5
	alsl.d	$a0, $a0, $a1, 3
	add.d	$a1, $a2, $a0
	ld.d	$a3, $s1, 0
	ld.w	$a4, $a1, 12
	addi.d	$s2, $s2, 1
	slli.d	$a1, $s2, 3
	ldx.d	$a1, $a3, $a1
	ldx.d	$a0, $a2, $a0
	addi.d	$a2, $a4, 1
	st.w	$a2, $a1, 0
	ld.w	$a2, $sp, 396
	alsl.d	$a3, $a4, $a1, 2
	st.w	$a2, $a3, 8
	bltz	$a4, .LBB0_202
# %bb.205:                              # %for.body636.preheader
                                        #   in Loop: Header=BB0_203 Depth=1
	addi.d	$a2, $a4, 2
	bstrpick.d	$a2, $a2, 31, 0
	ori	$a3, $zero, 1
	bltu	$a4, $s3, .LBB0_209
# %bb.206:                              # %vector.ph729
                                        #   in Loop: Header=BB0_203 Depth=1
	addi.d	$a4, $a2, -1
	move	$a5, $a4
	bstrins.d	$a5, $zero, 2, 0
	move	$a3, $a4
	bstrins.d	$a3, $s4, 2, 0
	addi.d	$a6, $a0, 10
	addi.d	$a7, $a1, 20
	move	$t0, $a5
	.p2align	4, , 16
.LBB0_207:                              # %vector.body732
                                        #   Parent Loop BB0_203 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t1, $a6, -8
	ld.d	$t2, $a6, 0
	vinsgr2vr.d	$vr0, $t1, 0
	vinsgr2vr.d	$vr1, $t2, 0
	vilvl.h	$vr0, $vr0, $vr0
	vslli.w	$vr0, $vr0, 16
	vsrai.w	$vr0, $vr0, 16
	vilvl.h	$vr1, $vr1, $vr1
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr1, $vr1, 16
	vst	$vr0, $a7, -16
	vst	$vr1, $a7, 0
	addi.d	$a6, $a6, 16
	addi.d	$t0, $t0, -8
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB0_207
# %bb.208:                              # %middle.block738
                                        #   in Loop: Header=BB0_203 Depth=1
	beq	$a4, $a5, .LBB0_202
.LBB0_209:                              # %for.body636.preheader741
                                        #   in Loop: Header=BB0_203 Depth=1
	alsl.d	$a1, $a3, $a1, 2
	alsl.d	$a0, $a3, $a0, 1
	sub.d	$a2, $a2, $a3
	.p2align	4, , 16
.LBB0_210:                              # %for.body636
                                        #   Parent Loop BB0_203 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$a3, $a0, 0
	st.w	$a3, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 2
	bnez	$a2, .LBB0_210
	b	.LBB0_202
.LBB0_211:                              # %for.end651.split.loop.exit599
	move	$fp, $s2
.LBB0_212:                              # %for.end651
	ld.d	$a0, $sp, 304
	beqz	$a0, .LBB0_214
	.p2align	4, , 16
.LBB0_213:                              # %for.cond655
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 304
	addi.d	$a1, $sp, 328
	addi.d	$a2, $sp, 396
	addi.d	$a3, $sp, 392
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 328
	bnez	$a0, .LBB0_213
.LBB0_214:                              # %if.end661
	ld.d	$a0, $sp, 296
	beqz	$a0, .LBB0_216
	.p2align	4, , 16
.LBB0_215:                              # %for.cond665
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 296
	addi.d	$a1, $sp, 312
	addi.d	$a2, $sp, 352
	addi.d	$a3, $sp, 400
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 312
	bnez	$a0, .LBB0_215
.LBB0_216:                              # %if.end671
	addi.w	$a0, $fp, 0
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
	st.w	$a3, $sp, 16
	st.w	$a4, $sp, 20
	st.w	$a5, $sp, 24
	st.w	$a6, $sp, 28
	pcalau12i	$a3, %got_pc_hi20(gnodeArray)
	ld.d	$a3, $a3, %got_pc_lo12(gnodeArray)
	ld.d	$a3, $a3, 0
	blez	$a2, .LBB1_7
# %bb.1:                                # %for.body.lr.ph
	slli.d	$a4, $a1, 1
	ldx.h	$a4, $a0, $a4
	slli.d	$a5, $a4, 3
	ldx.d	$a5, $a3, $a5
	ld.w	$a6, $a5, 0
	addi.d	$a2, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	ori	$a7, $zero, 1
	addi.d	$t0, $sp, 12
	lu12i.w	$t1, 244140
	ori	$t1, $t1, 2560
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_2:                                # %if.then20
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a7, $a7, 1
	st.w	$t1, $t2, 12
	beq	$a7, $a2, .LBB1_7
.LBB1_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
                                        #     Child Loop BB1_6 Depth 2
	slli.d	$t2, $a7, 2
	ldx.w	$t2, $t2, $t0
	move	$t3, $a5
	beq	$a6, $t2, .LBB1_5
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
	beq	$t4, $a4, .LBB1_2
	.p2align	4, , 16
.LBB1_6:                                # %if.end22
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t2, $t2, 32
	ld.w	$t3, $t2, 0
	bne	$t3, $a4, .LBB1_6
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
	st.w	$a3, $sp, 16
	st.w	$a4, $sp, 20
	st.w	$a5, $sp, 24
	st.w	$a6, $sp, 28
	pcalau12i	$a3, %got_pc_hi20(gnodeArray)
	ld.d	$a3, $a3, %got_pc_lo12(gnodeArray)
	ld.d	$a3, $a3, 0
	blez	$a2, .LBB2_7
# %bb.1:                                # %for.body.lr.ph
	slli.d	$a4, $a1, 1
	ldx.h	$a4, $a0, $a4
	slli.d	$a5, $a4, 3
	ldx.d	$a5, $a3, $a5
	ld.w	$a6, $a5, 0
	addi.d	$a2, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	ori	$a7, $zero, 1
	addi.d	$t0, $sp, 12
	b	.LBB2_3
	.p2align	4, , 16
.LBB2_2:                                # %if.then20
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.w	$t2, $t1, 8
	addi.d	$a7, $a7, 1
	st.w	$t2, $t1, 12
	beq	$a7, $a2, .LBB2_7
.LBB2_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_4 Depth 2
                                        #     Child Loop BB2_6 Depth 2
	slli.d	$t1, $a7, 2
	ldx.w	$t1, $t1, $t0
	move	$t2, $a5
	beq	$a6, $t1, .LBB2_5
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
	beq	$t4, $a4, .LBB2_2
	.p2align	4, , 16
.LBB2_6:                                # %if.end23
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t1, $t1, 32
	ld.w	$t2, $t1, 0
	bne	$t2, $a4, .LBB2_6
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
