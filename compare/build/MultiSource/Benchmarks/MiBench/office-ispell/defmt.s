	.file	"defmt.c"
	.text
	.globl	skipoverword                    # -- Begin function skipoverword
	.p2align	5
	.type	skipoverword,@function
skipoverword:                           # @skipoverword
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	ld.bu	$a1, $a0, 0
	beqz	$a1, .LBB0_12
# %bb.1:                                # %if.else.preheader
	pcalau12i	$a2, %got_pc_hi20(hashheader)
	ld.d	$s1, $a2, %got_pc_lo12(hashheader)
	move	$s0, $zero
	move	$fp, $a0
	b	.LBB0_5
	.p2align	4, , 16
.LBB0_2:                                # %if.else8
                                        #   in Loop: Header=BB0_5 Depth=1
	add.d	$a1, $s1, $a1
	ld.bu	$a2, $a1, 982
	ori	$a0, $zero, 1
	beqz	$a2, .LBB0_8
.LBB0_3:                                # %if.then7
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$s0, $zero
.LBB0_4:                                # %if.end33
                                        #   in Loop: Header=BB0_5 Depth=1
	ldx.bu	$a1, $fp, $a0
	add.d	$a0, $fp, $a0
	move	$fp, $a0
	beqz	$a1, .LBB0_13
.LBB0_5:                                # %if.else
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a0, $s1, $a1
	ld.bu	$a0, $a0, 1894
	beqz	$a0, .LBB0_2
# %bb.6:                                # %land.lhs.true
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(stringcharlen)
	jirl	$ra, $ra, 0
	bgtz	$a0, .LBB0_3
# %bb.7:                                # %land.lhs.true.if.else8_crit_edge
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.bu	$a1, $fp, 0
	b	.LBB0_2
	.p2align	4, , 16
.LBB0_8:                                # %if.else13
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.bu	$a1, $a1, 1666
	beqz	$a1, .LBB0_15
# %bb.9:                                # %if.then17
                                        #   in Loop: Header=BB0_5 Depth=1
	beqz	$s0, .LBB0_11
# %bb.10:                               # %if.else21
                                        #   in Loop: Header=BB0_5 Depth=1
	addi.d	$a1, $fp, -1
	bne	$s0, $a1, .LBB0_4
	b	.LBB0_15
.LBB0_11:                               #   in Loop: Header=BB0_5 Depth=1
	move	$s0, $fp
	b	.LBB0_4
.LBB0_12:
	move	$s0, $zero
.LBB0_13:                               # %if.then
	pcalau12i	$a1, %pc_hi20(TeX_comment)
	ld.bu	$a2, $a1, %pc_lo12(TeX_comment)
	beqz	$a2, .LBB0_16
# %bb.14:                               # %if.then2
	pcalau12i	$a2, %pc_hi20(save_math_mode)
	ld.w	$a2, $a2, %pc_lo12(save_math_mode)
	pcalau12i	$a3, %got_pc_hi20(math_mode)
	ld.d	$a3, $a3, %got_pc_lo12(math_mode)
	pcalau12i	$a4, %pc_hi20(save_LaTeX_Mode)
	ld.b	$a4, $a4, %pc_lo12(save_LaTeX_Mode)
	pcalau12i	$a5, %got_pc_hi20(LaTeX_Mode)
	ld.d	$a5, $a5, %got_pc_lo12(LaTeX_Mode)
	st.w	$a2, $a3, 0
	st.b	$a4, $a5, 0
	st.b	$zero, $a1, %pc_lo12(TeX_comment)
	b	.LBB0_16
.LBB0_15:
	move	$a0, $fp
.LBB0_16:                               # %for.end
	sltui	$a1, $s0, 1
	masknez	$a2, $s0, $a1
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a2
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	skipoverword, .Lfunc_end0-skipoverword
                                        # -- End function
	.globl	checkline                       # -- Begin function checkline
	.p2align	5
	.type	checkline,@function
checkline:                              # @checkline
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(currentchar)
	ld.d	$s0, $a1, %got_pc_lo12(currentchar)
	pcalau12i	$a1, %got_pc_hi20(contextbufs)
	ld.d	$s2, $a1, %got_pc_lo12(contextbufs)
	move	$s6, $a0
	st.d	$s2, $s0, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 32
	ori	$a1, $zero, 0
	lu32i.d	$a1, -1
	add.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 32
	ldx.bu	$s7, $s2, $a0
	ori	$a1, $zero, 10
	bne	$s7, $a1, .LBB1_2
# %bb.1:                                # %if.then
	pcalau12i	$a1, %got_pc_hi20(contextbufs)
	ld.d	$a1, $a1, %got_pc_lo12(contextbufs)
	stx.b	$zero, $a1, $a0
.LBB1_2:                                # %if.end
	pcalau12i	$a0, %got_pc_hi20(tflag)
	ld.d	$s3, $a0, %got_pc_lo12(tflag)
	ld.w	$a0, $s3, 0
	st.d	$s3, $sp, 56                    # 8-byte Folded Spill
	bnez	$a0, .LBB1_37
# %bb.3:                                # %if.then6
	pcalau12i	$a0, %got_pc_hi20(contextbufs)
	ld.d	$s2, $a0, %got_pc_lo12(contextbufs)
	pcalau12i	$a0, %got_pc_hi20(hashheader)
	ld.d	$fp, $a0, %got_pc_lo12(hashheader)
	ld.bu	$s3, $s2, 0
	ld.bu	$a0, $fp, 50
	bne	$s3, $a0, .LBB1_10
# %bb.4:                                # %land.lhs.true
	pcalau12i	$a0, %got_pc_hi20(contextbufs)
	ld.d	$s2, $a0, %got_pc_lo12(contextbufs)
	ld.w	$a0, $s2, 1
	lu12i.w	$a1, 475654
	ori	$a1, $a1, 1641
	beq	$a0, $a1, .LBB1_6
# %bb.5:                                # %lor.lhs.false
	ld.w	$a0, $s2, 1
	lu12i.w	$a1, 451078
	ori	$a1, $a1, 1641
	bne	$a0, $a1, .LBB1_10
.LBB1_6:                                # %if.then18
	ori	$a1, $zero, 5
	move	$a0, $s0
	pcaddu18i	$ra, %call36(copyout)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s0, 0
	ld.b	$s3, $s2, 0
	ori	$a0, $zero, 1
	blt	$s3, $a0, .LBB1_10
# %bb.7:                                # %land.rhs28.lr.ph
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s3, 1
	ldx.hu	$a0, $a0, $a1
	lu12i.w	$s4, 2
	and	$a0, $a0, $s4
	beqz	$a0, .LBB1_10
	.p2align	4, , 16
.LBB1_8:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ori	$a1, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(copyout)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s0, 0
	ld.b	$s3, $s2, 0
	blez	$s3, .LBB1_10
# %bb.9:                                # %land.rhs28
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.d	$a0, $s1, 0
	slli.d	$a1, $s3, 1
	ldx.hu	$a0, $a0, $a1
	and	$a0, $a0, $s4
	bnez	$a0, .LBB1_8
.LBB1_10:                               # %if.end36
	ld.bu	$a0, $fp, 50
	andi	$a1, $s3, 255
	bne	$a1, $a0, .LBB1_27
# %bb.11:                               # %land.lhs.true41
	ld.bu	$a0, $s2, 1
	ori	$a1, $zero, 110
	beq	$a0, $a1, .LBB1_16
# %bb.12:                               # %land.lhs.true41
	ori	$a1, $zero, 100
	bne	$a0, $a1, .LBB1_27
# %bb.13:                               # %sub_1
	ld.bu	$a0, $s2, 2
	ori	$a1, $zero, 115
	bne	$a0, $a1, .LBB1_15
# %bb.14:                               # %land.lhs.true41.tail
	ld.bu	$a0, $s2, 3
	ori	$a1, $zero, 32
	beq	$a0, $a1, .LBB1_18
.LBB1_15:                               # %sub_161
	ld.bu	$a0, $s2, 2
	ori	$a1, $zero, 101
	beq	$a0, $a1, .LBB1_17
	b	.LBB1_27
.LBB1_16:                               # %sub_165
	ld.bu	$a0, $s2, 2
	ori	$a1, $zero, 114
	bne	$a0, $a1, .LBB1_27
.LBB1_17:                               # %lor.lhs.false51.tail
	ld.bu	$a0, $s2, 3
	ori	$a1, $zero, 32
	bne	$a0, $a1, .LBB1_27
.LBB1_18:                               # %if.then56
	ori	$a1, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(copyout)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s0, 0
	ld.b	$s3, $s2, 0
	ori	$a0, $zero, 1
	blt	$s3, $a0, .LBB1_22
# %bb.19:                               # %land.rhs68.lr.ph
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s3, 1
	ldx.hu	$a0, $a0, $a1
	lu12i.w	$s4, 2
	and	$a0, $a0, $s4
	beqz	$a0, .LBB1_23
	.p2align	4, , 16
.LBB1_20:                               # %while.body78
                                        # =>This Inner Loop Header: Depth=1
	ori	$a1, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(copyout)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s0, 0
	ld.b	$s3, $s2, 0
	blez	$s3, .LBB1_22
# %bb.21:                               # %land.rhs68
                                        #   in Loop: Header=BB1_20 Depth=1
	ld.d	$a0, $s1, 0
	slli.d	$a1, $s3, 1
	ldx.hu	$a0, $a0, $a1
	and	$a0, $a0, $s4
	bnez	$a0, .LBB1_20
	b	.LBB1_23
.LBB1_22:                               # %while.end79
	beqz	$s3, .LBB1_344
.LBB1_23:                               # %land.lhs.true87.preheader
	lu12i.w	$s1, 2
	b	.LBB1_25
	.p2align	4, , 16
.LBB1_24:                               # %while.body101
                                        #   in Loop: Header=BB1_25 Depth=1
	ori	$a1, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(copyout)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s0, 0
	ld.bu	$s3, $s2, 0
	beqz	$s3, .LBB1_344
.LBB1_25:                               # %land.lhs.true87
                                        # =>This Inner Loop Header: Depth=1
	ext.w.b	$a0, $s3
	bltz	$a0, .LBB1_24
# %bb.26:                               # %land.rhs91
                                        #   in Loop: Header=BB1_25 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	andi	$a1, $s3, 255
	slli.d	$a1, $a1, 1
	ldx.hu	$a0, $a0, $a1
	and	$a0, $a0, $s1
	beqz	$a0, .LBB1_24
.LBB1_27:                               # %if.end117
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB1_36
# %bb.28:                               # %if.end117
	ld.bu	$a1, $fp, 50
	andi	$a0, $s3, 255
	bne	$a0, $a1, .LBB1_36
# %bb.29:                               # %while.cond125.preheader
	beqz	$a0, .LBB1_344
# %bb.30:                               # %land.lhs.true132.preheader
	pcalau12i	$a0, %got_pc_hi20(aflag)
	ld.d	$fp, $a0, %got_pc_lo12(aflag)
	pcalau12i	$a0, %got_pc_hi20(lflag)
	ld.d	$s4, $a0, %got_pc_lo12(lflag)
	lu12i.w	$s5, 2
	b	.LBB1_32
	.p2align	4, , 16
.LBB1_31:                               # %if.end154
                                        #   in Loop: Header=BB1_32 Depth=1
	addi.d	$a0, $s2, 1
	st.d	$a0, $s0, 0
	ld.bu	$s3, $s2, 1
	move	$s2, $a0
	beqz	$s3, .LBB1_344
.LBB1_32:                               # %land.lhs.true132
                                        # =>This Inner Loop Header: Depth=1
	ext.w.b	$s1, $s3
	bltz	$s1, .LBB1_34
# %bb.33:                               # %land.rhs136
                                        #   in Loop: Header=BB1_32 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	andi	$a1, $s3, 255
	slli.d	$a1, $a1, 1
	ldx.hu	$a0, $a0, $a1
	and	$a0, $a0, $s5
	bnez	$a0, .LBB1_36
.LBB1_34:                               # %while.body147
                                        #   in Loop: Header=BB1_32 Depth=1
	ld.w	$a0, $fp, 0
	ld.w	$a1, $s4, 0
	or	$a0, $a0, $a1
	bnez	$a0, .LBB1_31
# %bb.35:                               # %if.then151
                                        #   in Loop: Header=BB1_32 Depth=1
	move	$a0, $s1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s0, 0
	b	.LBB1_31
.LBB1_36:
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
.LBB1_37:                               # %for.cond.preheader
	st.d	$s7, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(TeX_comment)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(save_math_mode)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(math_mode)
	ld.d	$s8, $a0, %got_pc_lo12(math_mode)
	pcalau12i	$a0, %pc_hi20(save_LaTeX_Mode)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(LaTeX_Mode)
	ld.d	$a0, $a0, %got_pc_lo12(LaTeX_Mode)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(hashheader)
	ld.d	$s7, $a0, %got_pc_lo12(hashheader)
	pcalau12i	$a0, %got_pc_hi20(ctoken)
	ld.d	$s1, $a0, %got_pc_lo12(ctoken)
	lu12i.w	$s5, 1
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s8, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 96
	ld.bu	$a1, $s2, 0
	beqz	$a1, .LBB1_272
	.p2align	4, , 16
.LBB1_38:                               # %land.rhs.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_70 Depth 2
                                        #     Child Loop BB1_228 Depth 2
                                        #     Child Loop BB1_216 Depth 2
                                        #     Child Loop BB1_122 Depth 2
                                        #       Child Loop BB1_125 Depth 3
                                        #       Child Loop BB1_140 Depth 3
                                        #     Child Loop BB1_202 Depth 2
                                        #     Child Loop BB1_265 Depth 2
                                        #     Child Loop BB1_257 Depth 2
                                        #     Child Loop BB1_112 Depth 2
                                        #     Child Loop BB1_101 Depth 2
	andi	$fp, $a1, 255
	add.d	$a0, $s7, $fp
	ld.bu	$a0, $a0, 1894
	beqz	$a0, .LBB1_42
# %bb.39:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB1_38 Depth=1
	move	$a0, $s2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(stringcharlen)
	jirl	$ra, $ra, 0
	ld.bu	$fp, $s2, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB1_41
# %bb.40:                               # %land.lhs.true.lor.lhs.false_crit_edge.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.w	$a0, $s3, 0
	b	.LBB1_43
	.p2align	4, , 16
.LBB1_41:                               # %land.lhs.true.land.lhs.true4_crit_edge.i
                                        #   in Loop: Header=BB1_38 Depth=1
	move	$a1, $fp
.LBB1_42:                               # %land.lhs.true4.i
                                        #   in Loop: Header=BB1_38 Depth=1
	add.d	$a0, $s7, $fp
	ld.bu	$a2, $a0, 982
	ld.w	$a0, $s3, 0
	move	$fp, $a1
	beqz	$a2, .LBB1_44
.LBB1_43:                               # %lor.lhs.false.i
                                        #   in Loop: Header=BB1_38 Depth=1
	andi	$a1, $fp, 255
	add.d	$a1, $s7, $a1
	ld.bu	$a1, $a1, 1666
	beqz	$a1, .LBB1_50
.LBB1_44:                               # %while.body.i
                                        #   in Loop: Header=BB1_38 Depth=1
	bnez	$a0, .LBB1_52
# %bb.45:                               # %if.else144.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.bu	$a0, $s7, 51
	andi	$a1, $fp, 255
	bne	$a1, $a0, .LBB1_93
# %bb.46:                               # %if.then149.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.bu	$a0, $s2, 1
	ori	$a1, $zero, 115
	beq	$a0, $a1, .LBB1_80
# %bb.47:                               # %if.then149.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ori	$a1, $zero, 102
	bne	$a0, $a1, .LBB1_85
# %bb.48:                               # %sw.bb.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.bu	$a0, $s2, 2
	ld.bu	$a1, $s7, 48
.LBB1_49:                               # %while.cond.backedge.sink.split.i
                                        #   in Loop: Header=BB1_38 Depth=1
	xor	$a0, $a0, $a1
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 3
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 5
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	add.d	$s2, $s2, $a0
	b	.LBB1_98
	.p2align	4, , 16
.LBB1_50:                               # %lor.rhs.i
                                        #   in Loop: Header=BB1_38 Depth=1
	beqz	$a0, .LBB1_268
# %bb.51:                               # %lor.rhs.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.wu	$a0, $s8, 0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB1_268
.LBB1_52:                               # %if.then.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.bu	$a0, $s7, 65
	andi	$a1, $fp, 255
	bne	$a1, $a0, .LBB1_55
# %bb.53:                               # %if.then21.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, %pc_lo12(TeX_comment)
	bnez	$a0, .LBB1_92
# %bb.54:                               # %if.then23.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.w	$a0, $s8, 0
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.b	$a1, $a3, 0
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	st.w	$a0, $a2, %pc_lo12(save_math_mode)
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.b	$a1, $a0, %pc_lo12(save_LaTeX_Mode)
	st.w	$zero, $s8, 0
	ori	$a0, $zero, 80
	st.b	$a0, $a3, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ori	$a1, $zero, 1
	st.b	$a1, $a0, %pc_lo12(TeX_comment)
	b	.LBB1_92
	.p2align	4, , 16
.LBB1_55:                               # %if.else.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.w	$a0, $s8, 0
	andi	$a2, $a0, 1
	bnez	$a2, .LBB1_63
# %bb.56:                               # %if.else79.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ori	$a2, $zero, 2
	blt	$a0, $a2, .LBB1_59
# %bb.57:                               # %if.else79.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.bu	$a2, $s7, 58
	bne	$a1, $a2, .LBB1_59
# %bb.58:                               # %land.lhs.true87.i
                                        #   in Loop: Header=BB1_38 Depth=1
	slli.d	$a1, $a0, 7
	bstrpick.d	$a1, $a1, 13, 8
	slli.d	$a1, $a1, 8
	bltu	$a0, $a1, .LBB1_62
.LBB1_59:                               # %if.else93.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.bu	$s3, $a1, 0
	ori	$a1, $zero, 109
	bne	$s3, $a1, .LBB1_74
.LBB1_60:                               # %if.then108.i
                                        #   in Loop: Header=BB1_38 Depth=1
	addi.d	$a1, $sp, 96
	move	$a0, $zero
	pcaddu18i	$ra, %call36(TeX_LR_check)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	beqz	$a0, .LBB1_92
# %bb.61:                               # %if.then111.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.w	$a0, $s8, 0
.LBB1_62:                               # %if.then91.i
                                        #   in Loop: Header=BB1_38 Depth=1
	addi.d	$a0, $a0, -1
	st.w	$a0, $s8, 0
	b	.LBB1_92
.LBB1_63:                               # %if.then26.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 101
	bne	$a0, $a1, .LBB1_66
# %bb.64:                               # %land.lhs.true30.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ori	$a0, $zero, 101
	addi.d	$a1, $sp, 96
	pcaddu18i	$ra, %call36(TeX_math_check)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_90
# %bb.65:                               # %lor.lhs.false33thread-pre-split.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 0
.LBB1_66:                               # %lor.lhs.false33.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ori	$a1, $zero, 109
	bne	$a0, $a1, .LBB1_68
# %bb.67:                               # %land.lhs.true37.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ori	$a0, $zero, 1
	addi.d	$a1, $sp, 96
	pcaddu18i	$ra, %call36(TeX_LR_check)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_90
.LBB1_68:                               # %if.else41.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.d	$s2, $sp, 96
	ld.bu	$a0, $s2, 0
	beqz	$a0, .LBB1_271
# %bb.69:                               # %land.rhs45.lr.ph.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.bu	$a2, $s7, 61
	ld.bu	$fp, $s7, 62
	ld.bu	$a1, $s7, 65
	addi.d	$s3, $s2, 2
	.p2align	4, , 16
.LBB1_70:                               # %land.rhs45.i
                                        #   Parent Loop BB1_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $a2, .LBB1_87
# %bb.71:                               # %land.rhs45.i
                                        #   in Loop: Header=BB1_70 Depth=2
	beq	$a0, $fp, .LBB1_87
# %bb.72:                               # %land.rhs45.i
                                        #   in Loop: Header=BB1_70 Depth=2
	beq	$a0, $a1, .LBB1_87
# %bb.73:                               # %while.body62.i
                                        #   in Loop: Header=BB1_70 Depth=2
	ld.bu	$a0, $s2, 1
	addi.d	$a3, $s2, 1
	addi.d	$s3, $s3, 1
	move	$s2, $a3
	bnez	$a0, .LBB1_70
	b	.LBB1_269
.LBB1_74:                               # %lor.lhs.false97.i
                                        #   in Loop: Header=BB1_38 Depth=1
	beqz	$a0, .LBB1_77
# %bb.75:                               # %land.lhs.true99.i
                                        #   in Loop: Header=BB1_38 Depth=1
	slli.d	$a1, $a0, 7
	bstrpick.d	$a1, $a1, 13, 8
	slli.d	$a1, $a1, 8
	blt	$a0, $a1, .LBB1_77
# %bb.76:                               # %land.lhs.true104.i
                                        #   in Loop: Header=BB1_38 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a1, $a0, %pc_lo12(.L.str.17)
	ori	$a2, $zero, 4
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_161
.LBB1_77:                               # %if.else114.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ori	$a0, $zero, 98
	bne	$s3, $a0, .LBB1_108
# %bb.78:                               # %land.lhs.true118.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ori	$a0, $zero, 98
	addi.d	$a1, $sp, 96
	pcaddu18i	$ra, %call36(TeX_math_check)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_107
# %bb.79:                               # %if.then121.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.w	$a0, $s8, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s8, 0
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	b	.LBB1_92
.LBB1_80:                               # %sw.bb161.i
                                        #   in Loop: Header=BB1_38 Depth=1
	addi.d	$fp, $s2, 2
	st.d	$fp, $sp, 96
	ld.bu	$a0, $s2, 2
	ori	$a1, $zero, 45
	beq	$a0, $a1, .LBB1_82
# %bb.81:                               # %sw.bb161.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ori	$a1, $zero, 43
	bne	$a0, $a1, .LBB1_83
.LBB1_82:                               # %if.then170.i
                                        #   in Loop: Header=BB1_38 Depth=1
	addi.d	$fp, $s2, 3
.LBB1_83:                               # %if.end172.i
                                        #   in Loop: Header=BB1_38 Depth=1
	addi.d	$s2, $fp, 1
	st.d	$s2, $sp, 96
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $fp, 1
	ld.d	$a0, $a0, 0
	ext.w.b	$a2, $a1
	slli.d	$a2, $a2, 1
	ldx.hu	$a0, $a0, $a2
	andi	$a0, $a0, 2048
	beqz	$a0, .LBB1_99
# %bb.84:                               # %if.then181.i
                                        #   in Loop: Header=BB1_38 Depth=1
	addi.d	$s2, $fp, 2
	b	.LBB1_98
.LBB1_85:                               # %sw.default.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.bu	$a1, $s7, 48
	bne	$a0, $a1, .LBB1_102
# %bb.86:                               # %if.then189.i
                                        #   in Loop: Header=BB1_38 Depth=1
	addi.d	$s2, $s2, 4
	b	.LBB1_98
.LBB1_87:                               # %if.end67.i
                                        #   in Loop: Header=BB1_38 Depth=1
	st.d	$s2, $sp, 96
	bne	$a0, $fp, .LBB1_104
# %bb.88:                               # %if.then.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.bu	$a0, $s2, 1
	bne	$a0, $fp, .LBB1_90
# %bb.89:                               # %if.then7.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	addi.d	$a0, $s2, 1
	st.d	$a0, $sp, 96
.LBB1_90:                               # %if.then40.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.w	$a0, $s8, 0
	addi.w	$a0, $a0, -1
	st.w	$a0, $s8, 0
.LBB1_91:                               # %if.end73.i
                                        #   in Loop: Header=BB1_38 Depth=1
	addi.w	$a1, $zero, -1
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	bge	$a1, $a0, .LBB1_160
	.p2align	4, , 16
.LBB1_92:                               # %if.end138.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.d	$s2, $sp, 96
	ld.bu	$fp, $s2, 0
	beqz	$fp, .LBB1_267
.LBB1_93:                               # %if.end211.i
                                        #   in Loop: Header=BB1_38 Depth=1
	andi	$a0, $fp, 255
	ori	$a1, $zero, 48
	bne	$a0, $a1, .LBB1_97
# %bb.94:                               # %land.lhs.true215.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.bu	$a0, $s2, 1
	ori	$a0, $a0, 32
	ori	$a1, $zero, 120
	bne	$a0, $a1, .LBB1_97
# %bb.95:                               # %land.lhs.true225.i
                                        #   in Loop: Header=BB1_38 Depth=1
	pcalau12i	$a0, %got_pc_hi20(terse)
	ld.d	$a0, $a0, %got_pc_lo12(terse)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB1_100
# %bb.96:                               # %land.lhs.true225.i
                                        #   in Loop: Header=BB1_38 Depth=1
	pcalau12i	$a0, %got_pc_hi20(aflag)
	ld.d	$a0, $a0, %got_pc_lo12(aflag)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB1_100
	.p2align	4, , 16
.LBB1_97:                               # %if.else242.i
                                        #   in Loop: Header=BB1_38 Depth=1
	addi.d	$s2, $s2, 1
.LBB1_98:                               # %while.cond.backedge.sink.split.i
                                        #   in Loop: Header=BB1_38 Depth=1
	st.d	$s2, $sp, 96
	ld.bu	$a1, $s2, 0
.LBB1_99:                               # %while.cond.backedge.i
                                        #   in Loop: Header=BB1_38 Depth=1
	bnez	$a1, .LBB1_38
	b	.LBB1_267
.LBB1_100:                              # %if.then229.i
                                        #   in Loop: Header=BB1_38 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	addi.d	$a1, $s2, 1
	.p2align	4, , 16
.LBB1_101:                              # %while.cond231.i
                                        #   Parent Loop BB1_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a2, $a1, 1
	slli.d	$a2, $a2, 1
	ldx.hu	$a2, $a0, $a2
	addi.d	$s2, $a1, 1
	and	$a2, $a2, $s5
	move	$a1, $s2
	bnez	$a2, .LBB1_101
	b	.LBB1_98
.LBB1_102:                              # %if.else191.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.bu	$a2, $s7, 52
	bne	$a0, $a2, .LBB1_93
# %bb.103:                              # %if.then197.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.bu	$a0, $s2, 2
	b	.LBB1_49
.LBB1_104:                              # %if.else.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	bne	$a0, $a1, .LBB1_144
# %bb.105:                              # %if.then12.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, %pc_lo12(TeX_comment)
	beqz	$a0, .LBB1_163
.LBB1_106:                              # %if.end73thread-pre-split.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.w	$a0, $s8, 0
	b	.LBB1_91
.LBB1_107:                              # %land.lhs.true118.if.else122_crit_edge.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.d	$s2, $sp, 96
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.bu	$s3, $a0, 0
	ld.bu	$fp, $s2, 0
.LBB1_108:                              # %if.else122.i
                                        #   in Loop: Header=BB1_38 Depth=1
	andi	$a2, $fp, 255
	ori	$a0, $zero, 114
	bne	$s3, $a0, .LBB1_117
# %bb.109:                              # %if.then126.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	beqz	$a2, .LBB1_116
# %bb.110:                              # %if.then126.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.bu	$a0, $s7, 58
	beq	$a2, $a0, .LBB1_116
# %bb.111:                              # %if.then126.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.bu	$a1, $s7, 62
	beq	$a2, $a1, .LBB1_116
	.p2align	4, , 16
.LBB1_112:                              # %while.body.i.i
                                        #   Parent Loop BB1_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a2, $s2, 1
	addi.d	$s2, $s2, 1
	beqz	$a2, .LBB1_115
# %bb.113:                              # %while.body.i.i
                                        #   in Loop: Header=BB1_112 Depth=2
	beq	$a2, $a0, .LBB1_115
# %bb.114:                              # %while.body.i.i
                                        #   in Loop: Header=BB1_112 Depth=2
	bne	$a2, $a1, .LBB1_112
.LBB1_115:                              # %TeX_skip_parens.exit.loopexit.i
                                        #   in Loop: Header=BB1_38 Depth=1
	st.d	$s2, $sp, 96
.LBB1_116:                              # %TeX_skip_parens.exit.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ori	$a1, $zero, 80
	st.b	$a1, $a0, 0
	b	.LBB1_92
.LBB1_117:                              # %if.else127.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.bu	$a0, $s7, 62
	bne	$a2, $a0, .LBB1_121
.LBB1_118:                              # %if.then.i18.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.bu	$a0, $s2, 1
	andi	$a1, $fp, 255
	bne	$a0, $a1, .LBB1_120
# %bb.119:                              # %if.then7.i21.i
                                        #   in Loop: Header=BB1_38 Depth=1
	addi.d	$a0, $s2, 1
	st.d	$a0, $sp, 96
.LBB1_120:                              # %if.then130.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.w	$a0, $s8, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s8, 0
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	b	.LBB1_92
.LBB1_121:                              # %while.cond.preheader.i.preheader.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.bu	$a5, $s7, 61
	ld.bu	$a4, $s7, 55
.LBB1_122:                              # %while.cond.preheader.i.i
                                        #   Parent Loop BB1_38 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_125 Depth 3
                                        #       Child Loop BB1_140 Depth 3
	andi	$a0, $a5, 255
	andi	$a1, $fp, 255
	bne	$a1, $a0, .LBB1_134
# %bb.123:                              # %while.body.i22.preheader.i
                                        #   in Loop: Header=BB1_122 Depth=2
	ld.bu	$s4, $s7, 53
	b	.LBB1_125
	.p2align	4, , 16
.LBB1_124:                              # %if.then29.i.i
                                        #   in Loop: Header=BB1_125 Depth=3
	addi.d	$s2, $s2, 2
	move	$a4, $s8
	ld.d	$s8, $sp, 48                    # 8-byte Folded Reload
	move	$a5, $s5
	lu12i.w	$s5, 1
	st.d	$s2, $sp, 96
	ld.bu	$fp, $s2, 0
	andi	$a0, $a5, 255
	bne	$fp, $a0, .LBB1_134
.LBB1_125:                              # %while.body.i22.i
                                        #   Parent Loop BB1_38 Depth=1
                                        #     Parent Loop BB1_122 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.d	$a0, $s2, 1
	move	$s3, $a0
	st.d	$a0, $sp, 96
	ld.b	$s6, $s2, 1
	andi	$fp, $s6, 255
	andi	$a0, $s4, 255
	beq	$fp, $a0, .LBB1_120
# %bb.126:                              # %while.body.i22.i
                                        #   in Loop: Header=BB1_125 Depth=3
	andi	$a0, $a4, 255
	beq	$fp, $a0, .LBB1_120
# %bb.127:                              # %if.else.i25.i
                                        #   in Loop: Header=BB1_125 Depth=3
	move	$s5, $a5
	move	$s8, $a4
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a3, $a0, 0
	ori	$a0, $zero, 64
	beq	$fp, $a0, .LBB1_129
# %bb.128:                              # %if.else.i25.i
                                        #   in Loop: Header=BB1_125 Depth=3
	slli.d	$a0, $s6, 1
	ldx.hu	$a0, $a3, $a0
	andi	$a0, $a0, 1024
	beqz	$a0, .LBB1_124
.LBB1_129:                              # %if.else31.i.i
                                        #   in Loop: Header=BB1_125 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a1, $a0, %pc_lo12(.L.str.34)
	ori	$a2, $zero, 5
	move	$a0, $s3
	move	$s4, $a3
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_166
# %bb.130:                              # %if.then.i.i51.i
                                        #   in Loop: Header=BB1_125 Depth=3
	ld.b	$a0, $s2, 6
	bltz	$a0, .LBB1_132
# %bb.131:                              # %land.lhs.true.i.i54.i
                                        #   in Loop: Header=BB1_125 Depth=3
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $s4, $a0
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB1_166
.LBB1_132:                              # %if.then35.i.i
                                        #   in Loop: Header=BB1_125 Depth=3
	ori	$a0, $zero, 98
	addi.d	$a1, $sp, 96
	pcaddu18i	$ra, %call36(TeX_math_check)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 48                    # 8-byte Folded Reload
	lu12i.w	$s5, 1
	bnez	$a0, .LBB1_120
# %bb.133:                              # %if.else39.i.i
                                        #   in Loop: Header=BB1_125 Depth=3
	ld.bu	$a4, $s7, 55
	ld.bu	$s4, $s7, 53
	ld.d	$a0, $sp, 96
	ld.bu	$a5, $s7, 61
	addi.d	$s2, $a0, -1
	st.d	$s2, $sp, 96
	ld.bu	$fp, $s2, 0
	andi	$a0, $a5, 255
	beq	$fp, $a0, .LBB1_125
	.p2align	4, , 16
.LBB1_134:                              # %while.end.i.i
                                        #   in Loop: Header=BB1_122 Depth=2
	andi	$a1, $a4, 255
	andi	$a0, $fp, 255
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB1_136
# %bb.135:                              # %while.end.i.i
                                        #   in Loop: Header=BB1_122 Depth=2
	ld.bu	$a1, $s7, 59
	bne	$a0, $a1, .LBB1_92
.LBB1_136:                              # %land.lhs.true55.i.i
                                        #   in Loop: Header=BB1_122 Depth=2
	ld.bu	$a0, $s2, 1
	ld.bu	$a1, $s7, 64
	bne	$a0, $a1, .LBB1_92
# %bb.137:                              # %if.then61.i.i
                                        #   in Loop: Header=BB1_122 Depth=2
	addi.d	$a1, $s2, 1
	st.d	$a1, $sp, 96
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB1_92
# %bb.138:                              # %while.body65.i.preheader.i
                                        #   in Loop: Header=BB1_122 Depth=2
	ld.bu	$a1, $s7, 56
	ld.bu	$a2, $s7, 60
	addi.d	$s2, $s2, 2
	b	.LBB1_140
	.p2align	4, , 16
.LBB1_139:                              # %if.end83.i.i
                                        #   in Loop: Header=BB1_140 Depth=3
	addi.d	$s2, $s2, 1
	beqz	$fp, .LBB1_92
.LBB1_140:                              # %while.body65.i.i
                                        #   Parent Loop BB1_38 Depth=1
                                        #     Parent Loop BB1_122 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.d	$s2, $sp, 96
	ld.bu	$a3, $s2, -1
	ld.bu	$fp, $s2, 0
	bne	$a3, $a0, .LBB1_139
# %bb.141:                              # %land.lhs.true71.i.i
                                        #   in Loop: Header=BB1_140 Depth=3
	beq	$fp, $a1, .LBB1_143
# %bb.142:                              # %land.lhs.true71.i.i
                                        #   in Loop: Header=BB1_140 Depth=3
	bne	$fp, $a2, .LBB1_139
.LBB1_143:                              # %tailrecurse.loopexit.i.i
                                        #   in Loop: Header=BB1_122 Depth=2
	ld.bu	$a0, $s7, 62
	bne	$fp, $a0, .LBB1_122
	b	.LBB1_118
.LBB1_144:                              # %if.end16.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.bu	$a2, $s2, 1
	ld.bu	$a1, $s7, 54
	addi.d	$a0, $s2, 1
	st.d	$a0, $sp, 96
	beq	$a2, $a1, .LBB1_90
# %bb.145:                              # %if.end16.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.bu	$a1, $s7, 56
	beq	$a2, $a1, .LBB1_90
# %bb.146:                              # %if.end27.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	ori	$a2, $zero, 4
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_164
.LBB1_147:                              # %lor.lhs.false.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a1, $a0, %pc_lo12(.L.str.29)
	ori	$a2, $zero, 7
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_205
.LBB1_148:                              # %lor.lhs.false3.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a1, $a0, %pc_lo12(.L.str.30)
	ori	$a2, $zero, 4
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_207
.LBB1_149:                              # %lor.lhs.false6.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a1, $a0, %pc_lo12(.L.str.31)
	ori	$a2, $zero, 8
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_209
.LBB1_150:                              # %if.else.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a1, $a0, %pc_lo12(.L.str.32)
	ori	$a2, $zero, 6
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_219
.LBB1_151:                              # %lor.lhs.false11.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a1, $a0, %pc_lo12(.L.str.33)
	ori	$a2, $zero, 8
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_223
.LBB1_152:                              # %if.else18.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a1, $a0, %pc_lo12(.L.str.34)
	ori	$a2, $zero, 5
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_236
# %bb.153:                              #   in Loop: Header=BB1_38 Depth=1
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
.LBB1_154:                              # %if.end30.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ori	$a0, $zero, 101
	bne	$s2, $a0, .LBB1_106
# %bb.155:                              # %sub_1.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.bu	$a0, $s3, 1
	ori	$a1, $zero, 110
	bne	$a0, $a1, .LBB1_106
# %bb.156:                              # %if.end30.tail.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.bu	$a0, $s3, 2
	ori	$a1, $zero, 100
	bne	$a0, $a1, .LBB1_106
# %bb.157:                              # %if.then.i11.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.b	$fp, $s3, 3
	bltz	$fp, .LBB1_159
# %bb.158:                              # %land.lhs.true.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $fp, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB1_106
.LBB1_159:                              # %TeX_math_end.exit.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ori	$a0, $zero, 101
	addi.d	$a1, $sp, 96
	pcaddu18i	$ra, %call36(TeX_math_check)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_90
	b	.LBB1_106
.LBB1_160:                              # %if.then76.i
                                        #   in Loop: Header=BB1_38 Depth=1
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	ori	$a1, $zero, 37
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	st.w	$zero, $s8, 0
	b	.LBB1_92
.LBB1_161:                              # %if.then.i11.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.b	$s4, $s2, 4
	bltz	$s4, .LBB1_60
# %bb.162:                              # %land.lhs.true.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 1024
	beqz	$a0, .LBB1_60
	b	.LBB1_77
.LBB1_163:                              # %if.then13.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.w	$a0, $s8, 0
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.b	$a1, $a3, 0
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	st.w	$a0, $a2, %pc_lo12(save_math_mode)
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.b	$a1, $a0, %pc_lo12(save_LaTeX_Mode)
	st.w	$zero, $s8, 0
	ori	$a0, $zero, 80
	st.b	$a0, $a3, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ori	$a1, $zero, 1
	st.b	$a1, $a0, %pc_lo12(TeX_comment)
	ld.w	$a0, $s8, 0
	b	.LBB1_91
.LBB1_164:                              # %if.then.i.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.b	$s4, $s2, 5
	bltz	$s4, .LBB1_211
# %bb.165:                              # %land.lhs.true.i.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB1_147
	b	.LBB1_211
.LBB1_166:                              # %if.else42.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ori	$a0, $zero, 101
	ld.d	$s8, $sp, 48                    # 8-byte Folded Reload
	bne	$fp, $a0, .LBB1_171
# %bb.167:                              # %sub_1.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.bu	$a0, $s2, 2
	ori	$a1, $zero, 110
	bne	$a0, $a1, .LBB1_171
# %bb.168:                              # %entry.tail.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.bu	$a0, $s2, 3
	ori	$a1, $zero, 100
	bne	$a0, $a1, .LBB1_171
# %bb.169:                              # %if.then.i.i.i44.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.b	$a0, $s2, 4
	bltz	$a0, .LBB1_253
# %bb.170:                              # %land.lhs.true.i.i.i47.i
                                        #   in Loop: Header=BB1_38 Depth=1
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $s4, $a0
	andi	$a0, $a0, 1024
	beqz	$a0, .LBB1_253
.LBB1_171:                              # %lor.lhs.false.i.i28.i
                                        #   in Loop: Header=BB1_38 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a1, $a0, %pc_lo12(.L.str.35)
	ori	$a2, $zero, 6
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_221
.LBB1_172:                              # %lor.lhs.false3.i.i29.i
                                        #   in Loop: Header=BB1_38 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a1, $a0, %pc_lo12(.L.str.36)
	ori	$a2, $zero, 6
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_234
.LBB1_173:                              # %lor.lhs.false6.i.i30.i
                                        #   in Loop: Header=BB1_38 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a1, $a0, %pc_lo12(.L.str.37)
	ori	$a2, $zero, 4
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_240
.LBB1_174:                              # %sub_0185.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ori	$a0, $zero, 114
	bne	$fp, $a0, .LBB1_179
# %bb.175:                              # %sub_1186.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.bu	$a0, $s2, 2
	ori	$a1, $zero, 101
	bne	$a0, $a1, .LBB1_179
# %bb.176:                              # %lor.lhs.false9.tail.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.bu	$a0, $s2, 3
	ori	$a1, $zero, 102
	bne	$a0, $a1, .LBB1_179
# %bb.177:                              # %if.then.i87.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.b	$a0, $s2, 4
	bltz	$a0, .LBB1_253
# %bb.178:                              # %land.lhs.true.i90.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $s4, $a0
	andi	$a0, $a0, 1024
	beqz	$a0, .LBB1_253
.LBB1_179:                              # %lor.lhs.false12.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a1, $a0, %pc_lo12(.L.str.32)
	ori	$a2, $zero, 6
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_243
.LBB1_180:                              # %lor.lhs.false15.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a1, $a0, %pc_lo12(.L.str.39)
	ori	$a2, $zero, 5
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_245
.LBB1_181:                              # %lor.lhs.false18.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a1, $a0, %pc_lo12(.L.str.40)
	ori	$a2, $zero, 5
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_247
.LBB1_182:                              # %lor.lhs.false21.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a1, $a0, %pc_lo12(.L.str.41)
	ori	$a2, $zero, 6
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_249
.LBB1_183:                              # %lor.lhs.false24.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a1, $a0, %pc_lo12(.L.str.42)
	ori	$a2, $zero, 7
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_251
.LBB1_184:                              # %lor.lhs.false27.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a1, $a0, %pc_lo12(.L.str.43)
	ori	$a2, $zero, 11
	move	$a0, $s3
	pcaddu18i	$ra, %call36(TeX_strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_253
# %bb.185:                              # %lor.lhs.false30.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a1, $a0, %pc_lo12(.L.str.44)
	ori	$a2, $zero, 13
	move	$a0, $s3
	pcaddu18i	$ra, %call36(TeX_strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_253
# %bb.186:                              # %lor.lhs.false33.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a1, $a0, %pc_lo12(.L.str.45)
	ori	$a2, $zero, 13
	move	$a0, $s3
	pcaddu18i	$ra, %call36(TeX_strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_253
# %bb.187:                              # %lor.lhs.false36.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a1, $a0, %pc_lo12(.L.str.46)
	ori	$a2, $zero, 10
	move	$a0, $s3
	pcaddu18i	$ra, %call36(TeX_strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_253
# %bb.188:                              # %lor.lhs.false39.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a1, $a0, %pc_lo12(.L.str.47)
	ori	$a2, $zero, 9
	move	$a0, $s3
	pcaddu18i	$ra, %call36(TeX_strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_253
# %bb.189:                              # %lor.lhs.false42.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a1, $a0, %pc_lo12(.L.str.48)
	ori	$a2, $zero, 13
	move	$a0, $s3
	pcaddu18i	$ra, %call36(TeX_strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_253
# %bb.190:                              # %lor.lhs.false45.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a1, $a0, %pc_lo12(.L.str.49)
	ori	$a2, $zero, 12
	move	$a0, $s3
	pcaddu18i	$ra, %call36(TeX_strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_253
# %bb.191:                              # %lor.lhs.false48.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a1, $a0, %pc_lo12(.L.str.50)
	ori	$a2, $zero, 7
	move	$a0, $s3
	pcaddu18i	$ra, %call36(TeX_strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_253
# %bb.192:                              # %lor.lhs.false51.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a1, $a0, %pc_lo12(.L.str.51)
	ori	$a2, $zero, 11
	move	$a0, $s3
	pcaddu18i	$ra, %call36(TeX_strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_253
# %bb.193:                              # %lor.lhs.false54.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a1, $a0, %pc_lo12(.L.str.52)
	ori	$a2, $zero, 7
	move	$a0, $s3
	pcaddu18i	$ra, %call36(TeX_strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_253
# %bb.194:                              # %if.else.i.i31.i
                                        #   in Loop: Header=BB1_38 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a1, $a0, %pc_lo12(.L.str.53)
	ori	$a2, $zero, 4
	move	$a0, $s3
	pcaddu18i	$ra, %call36(TeX_strncmp)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	move	$fp, $s3
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	lu12i.w	$s5, 1
	beqz	$a0, .LBB1_262
# %bb.195:                              # %lor.lhs.false63.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a1, $a0, %pc_lo12(.L.str.54)
	ori	$a2, $zero, 10
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TeX_strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_262
# %bb.196:                              # %lor.lhs.false67.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a1, $a0, %pc_lo12(.L.str.55)
	ori	$a2, $zero, 12
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TeX_strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_262
# %bb.197:                              # %lor.lhs.false71.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a1, $a0, %pc_lo12(.L.str.56)
	ori	$a2, $zero, 9
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TeX_strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_262
# %bb.198:                              # %lor.lhs.false75.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a1, $a0, %pc_lo12(.L.str.57)
	ori	$a2, $zero, 11
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TeX_strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_262
# %bb.199:                              # %lor.lhs.false79.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a1, $a0, %pc_lo12(.L.str.58)
	ori	$a2, $zero, 10
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TeX_strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_262
# %bb.200:                              # %if.else95.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a1, $a0, %pc_lo12(.L.str.59)
	ori	$a2, $zero, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TeX_strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_264
# %bb.201:                              # %while.body117.i.i.i.preheader
                                        #   in Loop: Header=BB1_38 Depth=1
	addi.d	$a0, $s2, 2
.LBB1_202:                              # %while.body117.i.i.i
                                        #   Parent Loop BB1_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.d	$a0, $sp, 96
	ld.b	$a1, $a0, 0
	addi.d	$a0, $a0, 1
	ori	$a2, $zero, 64
	beq	$a1, $a2, .LBB1_202
# %bb.203:                              # %while.body117.i.i.i
                                        #   in Loop: Header=BB1_202 Depth=2
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $s4, $a1
	andi	$a1, $a1, 1024
	bnez	$a1, .LBB1_202
# %bb.204:                              # %while.end119.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	addi.d	$a0, $a0, -2
	st.d	$a0, $sp, 96
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 48                    # 8-byte Folded Reload
	lu12i.w	$s5, 1
	b	.LBB1_92
.LBB1_205:                              # %if.then.i16.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.b	$s4, $s2, 8
	bltz	$s4, .LBB1_211
# %bb.206:                              # %land.lhs.true.i19.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB1_148
	b	.LBB1_211
.LBB1_207:                              # %if.then.i29.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.b	$s4, $s2, 5
	bltz	$s4, .LBB1_211
# %bb.208:                              # %land.lhs.true.i32.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB1_149
	b	.LBB1_211
.LBB1_209:                              # %if.then.i42.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.b	$s4, $s2, 9
	bltz	$s4, .LBB1_211
# %bb.210:                              # %land.lhs.true.i45.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB1_150
.LBB1_211:                              # %if.then.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.w	$a0, $s8, 0
	addi.d	$a0, $a0, 2
	st.w	$a0, $s8, 0
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
.LBB1_212:                              # %if.end25.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.bu	$a1, $a2, 0
	beq	$a1, $fp, .LBB1_90
# %bb.213:                              # %if.end25.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	beqz	$a1, .LBB1_90
# %bb.214:                              # %if.end25.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.bu	$a0, $s7, 57
	beq	$a1, $a0, .LBB1_90
# %bb.215:                              # %while.body.i96.i.i.i.preheader
                                        #   in Loop: Header=BB1_38 Depth=1
	addi.d	$a1, $a2, 1
	.p2align	4, , 16
.LBB1_216:                              # %while.body.i96.i.i.i
                                        #   Parent Loop BB1_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.d	$a1, $sp, 96
	ld.bu	$a2, $a1, 0
	beq	$a2, $fp, .LBB1_90
# %bb.217:                              # %while.body.i96.i.i.i
                                        #   in Loop: Header=BB1_216 Depth=2
	beqz	$a2, .LBB1_90
# %bb.218:                              # %while.body.i96.i.i.i
                                        #   in Loop: Header=BB1_216 Depth=2
	addi.d	$a1, $a1, 1
	bne	$a2, $a0, .LBB1_216
	b	.LBB1_90
.LBB1_219:                              # %if.then.i55.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.b	$s4, $s2, 7
	bltz	$s4, .LBB1_225
# %bb.220:                              # %land.lhs.true.i58.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB1_151
	b	.LBB1_225
.LBB1_221:                              # %if.then.i48.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.b	$a0, $s2, 7
	bltz	$a0, .LBB1_253
# %bb.222:                              # %land.lhs.true.i51.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $s4, $a0
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB1_172
	b	.LBB1_253
.LBB1_223:                              # %if.then.i68.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.b	$s4, $s2, 9
	bltz	$s4, .LBB1_225
# %bb.224:                              # %land.lhs.true.i71.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB1_152
.LBB1_225:                              # %if.then14.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.w	$a0, $s8, 0
	addi.d	$a0, $a0, 2
	st.w	$a0, $s8, 0
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.bu	$a0, $a2, 0
	beq	$a0, $fp, .LBB1_232
# %bb.226:                              # %if.then14.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	beqz	$a0, .LBB1_232
# %bb.227:                              # %if.then14.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.bu	$a1, $s7, 57
	beq	$a0, $a1, .LBB1_232
	.p2align	4, , 16
.LBB1_228:                              # %while.body.i.i.i.i
                                        #   Parent Loop BB1_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a0, $s3, 0
	st.d	$s3, $sp, 96
	addi.d	$s3, $s3, 1
	beq	$a0, $fp, .LBB1_231
# %bb.229:                              # %while.body.i.i.i.i
                                        #   in Loop: Header=BB1_228 Depth=2
	beqz	$a0, .LBB1_231
# %bb.230:                              # %while.body.i.i.i.i
                                        #   in Loop: Header=BB1_228 Depth=2
	bne	$a0, $a1, .LBB1_228
.LBB1_231:                              # %TeX_open_paren.exit.i.i.i.loopexit
                                        #   in Loop: Header=BB1_38 Depth=1
	addi.d	$s2, $s3, -2
	addi.d	$a2, $s3, -1
.LBB1_232:                              # %TeX_open_paren.exit.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	beqz	$a0, .LBB1_242
# %bb.233:                              # %if.then16.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	addi.d	$a2, $s2, 2
	st.d	$a2, $sp, 96
	b	.LBB1_212
.LBB1_234:                              # %if.then.i61.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.b	$a0, $s2, 7
	bltz	$a0, .LBB1_253
# %bb.235:                              # %land.lhs.true.i64.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $s4, $a0
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB1_173
	b	.LBB1_253
.LBB1_236:                              # %if.then.i82.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.b	$fp, $s2, 6
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	bltz	$fp, .LBB1_238
# %bb.237:                              # %land.lhs.true.i85.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $fp, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB1_154
.LBB1_238:                              # %TeX_LR_begin.exit.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ori	$a0, $zero, 1
	addi.d	$a1, $sp, 96
	pcaddu18i	$ra, %call36(TeX_LR_check)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_90
# %bb.239:                              # %TeX_LR_begin.exit.if.end30_crit_edge.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.d	$s3, $sp, 96
	ld.bu	$s2, $s3, 0
	b	.LBB1_154
.LBB1_240:                              # %if.then.i74.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.b	$a0, $s2, 5
	bltz	$a0, .LBB1_253
# %bb.241:                              # %land.lhs.true.i77.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $s4, $a0
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB1_174
	b	.LBB1_253
.LBB1_242:                              # %if.else17.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ori	$a1, $zero, 114
	st.b	$a1, $a0, 0
	b	.LBB1_212
.LBB1_243:                              # %if.then.i100.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.b	$a0, $s2, 7
	bltz	$a0, .LBB1_253
# %bb.244:                              # %land.lhs.true.i103.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $s4, $a0
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB1_180
	b	.LBB1_253
.LBB1_245:                              # %if.then.i113.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.b	$a0, $s2, 6
	bltz	$a0, .LBB1_253
# %bb.246:                              # %land.lhs.true.i116.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $s4, $a0
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB1_181
	b	.LBB1_253
.LBB1_247:                              # %if.then.i126.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.b	$a0, $s2, 6
	bltz	$a0, .LBB1_253
# %bb.248:                              # %land.lhs.true.i129.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $s4, $a0
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB1_182
	b	.LBB1_253
.LBB1_249:                              # %if.then.i139.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.b	$a0, $s2, 7
	bltz	$a0, .LBB1_253
# %bb.250:                              # %land.lhs.true.i142.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $s4, $a0
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB1_183
	b	.LBB1_253
.LBB1_251:                              # %if.then.i49
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.b	$a0, $s2, 8
	bltz	$a0, .LBB1_253
# %bb.252:                              # %land.lhs.true.i51
                                        #   in Loop: Header=BB1_38 Depth=1
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $s4, $a0
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB1_184
.LBB1_253:                              # %if.then.i28.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	lu12i.w	$s5, 1
	beqz	$fp, .LBB1_260
# %bb.254:                              # %if.then.i28.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.bu	$a0, $s7, 58
	beq	$fp, $a0, .LBB1_260
# %bb.255:                              # %if.then.i28.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.bu	$a1, $s7, 62
	beq	$fp, $a1, .LBB1_260
# %bb.256:                              # %while.body.i.i.i38.i.preheader
                                        #   in Loop: Header=BB1_38 Depth=1
	addi.d	$a2, $s2, 2
	.p2align	4, , 16
.LBB1_257:                              # %while.body.i.i.i38.i
                                        #   Parent Loop BB1_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.d	$a2, $sp, 96
	ld.bu	$fp, $a2, 0
	beqz	$fp, .LBB1_260
# %bb.258:                              # %while.body.i.i.i38.i
                                        #   in Loop: Header=BB1_257 Depth=2
	beq	$fp, $a0, .LBB1_260
# %bb.259:                              # %while.body.i.i.i38.i
                                        #   in Loop: Header=BB1_257 Depth=2
	addi.d	$a2, $a2, 1
	bne	$fp, $a1, .LBB1_257
.LBB1_260:                              # %TeX_skip_parens.exit.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	bnez	$fp, .LBB1_92
.LBB1_261:                              # %if.then59.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ori	$a1, $zero, 114
	st.b	$a1, $a0, 0
	b	.LBB1_92
.LBB1_262:                              # %if.then83.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	addi.d	$a0, $sp, 96
	pcaddu18i	$ra, %call36(TeX_skip_parens)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96
	ld.bu	$a1, $a0, 0
	beqz	$a1, .LBB1_261
# %bb.263:                              # %if.else88.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 96
	addi.d	$a0, $sp, 96
	pcaddu18i	$ra, %call36(TeX_skip_parens)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96
	ld.bu	$a0, $a0, 0
	bnez	$a0, .LBB1_92
	b	.LBB1_261
.LBB1_264:                              # %if.then99.i.i.i
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.bu	$a0, $s2, 5
	addi.d	$a1, $s2, 6
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 48                    # 8-byte Folded Reload
	lu12i.w	$s5, 1
.LBB1_265:                              # %while.cond.i.i.i
                                        #   Parent Loop BB1_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.d	$a1, $sp, 96
	ld.bu	$a2, $a1, 0
	beq	$a2, $a0, .LBB1_92
# %bb.266:                              # %while.cond.i.i.i
                                        #   in Loop: Header=BB1_265 Depth=2
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB1_265
	b	.LBB1_92
.LBB1_267:
	move	$fp, $zero
.LBB1_268:                              # %while.end245.loopexit102.i
	andi	$a0, $fp, 255
	sltui	$a0, $a0, 1
	b	.LBB1_273
.LBB1_269:
	ori	$a0, $zero, 1
	move	$s2, $a3
.LBB1_270:                              # %while.end245.i
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	b	.LBB1_273
.LBB1_271:
	ori	$a0, $zero, 1
	b	.LBB1_270
.LBB1_272:
	ori	$a0, $zero, 1
.LBB1_273:                              # %while.end245.i
	beqz	$a0, .LBB1_276
# %bb.274:                              # %while.end245.i
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.b	$a0, $a0, %pc_lo12(TeX_comment)
	andi	$a0, $a0, 1
	beqz	$a0, .LBB1_276
# %bb.275:                              # %if.then251.i
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(save_math_mode)
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.b	$a1, $a1, %pc_lo12(save_LaTeX_Mode)
	st.w	$a0, $s8, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	st.b	$a1, $a0, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	st.b	$zero, $a0, %pc_lo12(TeX_comment)
.LBB1_276:                              # %skiptoword.exit
	ld.d	$a0, $s0, 0
	beq	$s2, $a0, .LBB1_278
# %bb.277:                              # %if.then173
	sub.w	$a1, $s2, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(copyout)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
.LBB1_278:                              # %if.end175
	ld.bu	$a1, $a0, 0
	beqz	$a1, .LBB1_340
# %bb.279:                              # %if.else.i37.preheader
	move	$fp, $zero
	b	.LBB1_283
	.p2align	4, , 16
.LBB1_280:                              # %if.else8.i
                                        #   in Loop: Header=BB1_283 Depth=1
	add.d	$a1, $s7, $a1
	ld.bu	$a2, $a1, 982
	ori	$a0, $zero, 1
	beqz	$a2, .LBB1_286
.LBB1_281:                              # %if.then7.i
                                        #   in Loop: Header=BB1_283 Depth=1
	move	$fp, $zero
.LBB1_282:                              # %if.end33.i
                                        #   in Loop: Header=BB1_283 Depth=1
	ldx.bu	$a1, $s2, $a0
	add.d	$a0, $s2, $a0
	beqz	$a1, .LBB1_290
.LBB1_283:                              # %if.else.i37
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a2, $s7, $a1
	ld.bu	$a2, $a2, 1894
	move	$s2, $a0
	beqz	$a2, .LBB1_280
# %bb.284:                              # %land.lhs.true.i40
                                        #   in Loop: Header=BB1_283 Depth=1
	move	$a0, $s2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(stringcharlen)
	jirl	$ra, $ra, 0
	bgtz	$a0, .LBB1_281
# %bb.285:                              # %land.lhs.true.if.else8_crit_edge.i
                                        #   in Loop: Header=BB1_283 Depth=1
	ld.bu	$a1, $s2, 0
	b	.LBB1_280
	.p2align	4, , 16
.LBB1_286:                              # %if.else13.i
                                        #   in Loop: Header=BB1_283 Depth=1
	ld.bu	$a1, $a1, 1666
	beqz	$a1, .LBB1_292
# %bb.287:                              # %if.then17.i
                                        #   in Loop: Header=BB1_283 Depth=1
	beqz	$fp, .LBB1_289
# %bb.288:                              # %if.else21.i
                                        #   in Loop: Header=BB1_283 Depth=1
	addi.d	$a1, $s2, -1
	bne	$fp, $a1, .LBB1_282
	b	.LBB1_292
.LBB1_289:                              #   in Loop: Header=BB1_283 Depth=1
	move	$fp, $s2
	b	.LBB1_282
.LBB1_290:                              # %if.then.i44
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.bu	$a1, $a3, %pc_lo12(TeX_comment)
	beqz	$a1, .LBB1_293
# %bb.291:                              # %if.then2.i
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(save_math_mode)
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.b	$a2, $a2, %pc_lo12(save_LaTeX_Mode)
	st.w	$a1, $s8, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.b	$a2, $a1, 0
	st.b	$zero, $a3, %pc_lo12(TeX_comment)
	b	.LBB1_293
.LBB1_292:
	move	$a0, $s2
.LBB1_293:                              # %skipoverword.exit
	ori	$t0, $zero, 118
	sltui	$a1, $fp, 1
	ld.d	$a2, $s0, 0
	masknez	$a3, $fp, $a1
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a3
	move	$a1, $s1
	bgeu	$a2, $a0, .LBB1_307
# %bb.294:                              # %while.body189.preheader
	nor	$a1, $a2, $zero
	add.d	$a1, $a1, $a0
	ori	$a3, $zero, 7
	bgeu	$a1, $a3, .LBB1_300
# %bb.295:
	move	$a1, $zero
.LBB1_296:                              # %while.body189.preheader262
	move	$a3, $a2
.LBB1_297:                              # %while.body189.preheader262
	addi.d	$a2, $a3, 1
	.p2align	4, , 16
.LBB1_298:                              # %while.body189
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a2, $s0, 0
	ld.b	$a4, $a2, -1
	move	$a3, $a1
	addi.d	$a1, $a1, 1
	stx.b	$a4, $s1, $a3
	bgeu	$a2, $a0, .LBB1_306
# %bb.299:                              # %while.body189
                                        #   in Loop: Header=BB1_298 Depth=1
	addi.d	$a2, $a2, 1
	bltu	$a3, $t0, .LBB1_298
	b	.LBB1_306
.LBB1_300:                              # %vector.memcheck
	sltui	$a3, $a1, 118
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $t0, $a3
	or	$a3, $a1, $a3
	addi.d	$a5, $s0, 8
	sltu	$a1, $s1, $a5
	add.d	$a4, $s1, $a3
	addi.d	$a4, $a4, 1
	sltu	$a6, $s0, $a4
	and	$a6, $a6, $a1
	move	$a1, $zero
	bnez	$a6, .LBB1_296
# %bb.301:                              # %vector.memcheck
	add.d	$a6, $a2, $a3
	addi.d	$a6, $a6, 1
	sltu	$a7, $s0, $a6
	sltu	$a5, $a2, $a5
	and	$a5, $a7, $a5
	bnez	$a5, .LBB1_296
# %bb.302:                              # %vector.memcheck
	sltu	$a5, $s1, $a6
	sltu	$a4, $a2, $a4
	and	$a4, $a5, $a4
	bnez	$a4, .LBB1_296
# %bb.303:                              # %vector.ph
	addi.d	$a4, $a3, 1
	andi	$a1, $a4, 248
	add.d	$a3, $a2, $a1
	addi.d	$a5, $s1, 4
	move	$a6, $a1
	.p2align	4, , 16
.LBB1_304:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a2, 0
	st.d	$a7, $a5, -4
	addi.d	$a2, $a2, 8
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 8
	bnez	$a6, .LBB1_304
# %bb.305:                              # %middle.block
	st.d	$a2, $s0, 0
	bne	$a4, $a1, .LBB1_297
.LBB1_306:                              # %while.end192.loopexit
	add.d	$a1, $s1, $a1
.LBB1_307:                              # %while.end192
	st.b	$zero, $a1, 0
	pcalau12i	$a0, %got_pc_hi20(itoken)
	ld.d	$a0, $a0, %got_pc_lo12(itoken)
	ori	$a2, $zero, 100
	move	$a1, $s1
	move	$a3, $zero
	pcaddu18i	$ra, %call36(strtoichar)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_323
.LBB1_308:                              # %if.end197
	pcalau12i	$a0, %got_pc_hi20(itoken)
	ld.d	$a0, $a0, %got_pc_lo12(itoken)
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(lflag)
	ld.d	$fp, $a1, %got_pc_lo12(lflag)
	ld.w	$a1, $fp, 0
	beqz	$a1, .LBB1_313
# %bb.309:                              # %if.then201
	pcalau12i	$a1, %got_pc_hi20(minword)
	ld.d	$a1, $a1, %got_pc_lo12(minword)
	ld.w	$a1, $a1, 0
	addi.w	$a0, $a0, 0
	bge	$a1, $a0, .LBB1_337
# %bb.310:                              # %land.lhs.true204
	pcalau12i	$a0, %got_pc_hi20(itoken)
	ld.d	$a0, $a0, %got_pc_lo12(itoken)
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(good)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(cflag)
	ld.d	$a1, $a1, %got_pc_lo12(cflag)
	ld.w	$a1, $a1, 0
	or	$a0, $a0, $a1
	bnez	$a0, .LBB1_337
# %bb.311:                              # %land.lhs.true209
	pcalau12i	$a0, %got_pc_hi20(itoken)
	ld.d	$a0, $a0, %got_pc_lo12(itoken)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(compoundgood)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_337
# %bb.312:                              # %if.then212
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	move	$a0, $s6
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB1_337
.LBB1_313:                              # %if.else
	pcalau12i	$a1, %got_pc_hi20(aflag)
	ld.d	$a1, $a1, %got_pc_lo12(aflag)
	ld.w	$a1, $a1, 0
	beqz	$a1, .LBB1_319
# %bb.314:                              # %if.then216
	pcalau12i	$a1, %got_pc_hi20(minword)
	ld.d	$a1, $a1, %got_pc_lo12(minword)
	ld.w	$a1, $a1, 0
	addi.w	$a0, $a0, 0
	bge	$a1, $a0, .LBB1_321
# %bb.315:                              # %if.end224
	pcalau12i	$a0, %got_pc_hi20(itoken)
	ld.d	$a0, $a0, %got_pc_lo12(itoken)
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(good)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_324
# %bb.316:                              # %if.then227
	pcalau12i	$a0, %got_pc_hi20(hits)
	ld.d	$a0, $a0, %got_pc_lo12(hits)
	pcalau12i	$a1, %got_pc_hi20(terse)
	ld.d	$a1, $a1, %got_pc_lo12(terse)
	ld.d	$a2, $a0, 8
	ld.d	$a3, $a0, 16
	ld.w	$a1, $a1, 0
	or	$a2, $a2, $a3
	bnez	$a2, .LBB1_328
# %bb.317:                              # %if.then233
	bnez	$a1, .LBB1_337
# %bb.318:                              # %if.then235
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	b	.LBB1_327
.LBB1_319:                              # %if.else290
	pcalau12i	$a0, %got_pc_hi20(quit)
	ld.d	$a0, $a0, %got_pc_lo12(quit)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB1_337
# %bb.320:                              # %if.then292
	pcalau12i	$a0, %got_pc_hi20(itoken)
	ld.d	$a2, $a0, %got_pc_lo12(itoken)
	ori	$a1, $zero, 120
	ori	$a3, $zero, 120
	move	$a0, $s1
	move	$a4, $s0
	pcaddu18i	$ra, %call36(correct)
	jirl	$ra, $ra, 0
	b	.LBB1_337
.LBB1_321:                              # %if.then219
	pcalau12i	$a0, %got_pc_hi20(terse)
	ld.d	$a0, $a0, %got_pc_lo12(terse)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB1_338
# %bb.322:                              # %if.then221
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $s6
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB1_338
.LBB1_323:                              # %if.then195
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	pcalau12i	$a2, %pc_hi20(.L.str.6)
	addi.d	$a4, $a2, %pc_lo12(.L.str.6)
	ori	$a3, $zero, 466
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB1_308
.LBB1_324:                              # %if.else244
	pcalau12i	$a0, %got_pc_hi20(itoken)
	ld.d	$a0, $a0, %got_pc_lo12(itoken)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(compoundgood)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_330
# %bb.325:                              # %if.then247
	pcalau12i	$a0, %got_pc_hi20(terse)
	ld.d	$a0, $a0, %got_pc_lo12(terse)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB1_337
# %bb.326:                              # %if.then249
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
.LBB1_327:                              # %if.end295
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $s6
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB1_337
.LBB1_328:                              # %if.else238
	bnez	$a1, .LBB1_337
# %bb.329:                              # %if.then240
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a0, 8
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB1_337
.LBB1_330:                              # %if.else252
	pcalau12i	$a0, %got_pc_hi20(itoken)
	ld.d	$a0, $a0, %got_pc_lo12(itoken)
	pcaddu18i	$ra, %call36(makepossibilities)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(pcount)
	ld.d	$a0, $a0, %got_pc_lo12(pcount)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB1_336
# %bb.331:                              # %if.then254
	pcalau12i	$a0, %got_pc_hi20(easypossibilities)
	ld.d	$a0, $a0, %got_pc_lo12(easypossibilities)
	ld.w	$s2, $a0, 0
	ld.d	$s3, $s0, 0
	sltui	$s4, $s2, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(contextoffset)
	ld.d	$a1, $a1, %got_pc_lo12(contextoffset)
	pcalau12i	$a2, %got_pc_hi20(contextbufs)
	ld.d	$a2, $a2, %got_pc_lo12(contextbufs)
	ld.w	$a1, $a1, 0
	add.d	$a0, $a2, $a0
	sub.d	$a0, $s3, $a0
	add.w	$a5, $a1, $a0
	ori	$a0, $zero, 38
	masknez	$a0, $a0, $s4
	ori	$a1, $zero, 63
	maskeqz	$a1, $a1, $s4
	or	$a2, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a1, $a0, %pc_lo12(.L.str.11)
	move	$a0, $s6
	move	$a3, $s1
	move	$a4, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(possibilities)
	ld.d	$s2, $a0, %got_pc_lo12(possibilities)
	ld.bu	$a0, $s2, 0
	beqz	$a0, .LBB1_335
# %bb.332:                              # %for.body.peel.next
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	ori	$a2, $zero, 58
	move	$a0, $s6
	move	$a3, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 120
	ori	$s3, $zero, 99
	.p2align	4, , 16
.LBB1_333:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s2, 0
	beqz	$a0, .LBB1_335
# %bb.334:                              # %if.end272
                                        #   in Loop: Header=BB1_333 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	ori	$a2, $zero, 44
	move	$a0, $s6
	move	$a3, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, -1
	addi.d	$s2, $s2, 120
	bnez	$s3, .LBB1_333
.LBB1_335:                              # %for.end
	ori	$a0, $zero, 10
	move	$a1, $s6
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	b	.LBB1_337
.LBB1_336:                              # %if.else279
	ld.d	$s2, $s0, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(contextoffset)
	ld.d	$a1, $a1, %got_pc_lo12(contextoffset)
	pcalau12i	$a2, %got_pc_hi20(contextbufs)
	ld.d	$a2, $a2, %got_pc_lo12(contextbufs)
	ld.w	$a1, $a1, 0
	add.d	$a0, $a2, $a0
	sub.d	$a0, $s2, $a0
	add.w	$a3, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a1, $a0, %pc_lo12(.L.str.14)
	move	$a0, $s6
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB1_337:                              # %if.end295
	pcalau12i	$a0, %got_pc_hi20(aflag)
	ld.d	$a0, $a0, %got_pc_lo12(aflag)
	ld.w	$a0, $a0, 0
	ld.w	$a1, $fp, 0
	or	$a0, $a0, $a1
	beqz	$a0, .LBB1_339
.LBB1_338:                              # %for.cond.backedge
	ld.d	$s2, $s0, 0
	st.d	$s2, $sp, 96
	ld.bu	$a1, $s2, 0
	bnez	$a1, .LBB1_38
	b	.LBB1_272
.LBB1_339:                              # %if.then299
	move	$a0, $s1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s0, 0
	st.d	$s2, $sp, 96
	ld.bu	$a1, $s2, 0
	bnez	$a1, .LBB1_38
	b	.LBB1_272
.LBB1_340:                              # %for.end302
	pcalau12i	$a0, %got_pc_hi20(lflag)
	ld.d	$a0, $a0, %got_pc_lo12(lflag)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB1_345
# %bb.341:                              # %land.lhs.true304
	ori	$a0, $zero, 10
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB1_343
.LBB1_342:                              # %land.lhs.true304
	pcalau12i	$a0, %got_pc_hi20(aflag)
	ld.d	$a0, $a0, %got_pc_lo12(aflag)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB1_345
.LBB1_343:                              # %cleanup.sink.split
	ori	$a0, $zero, 10
	move	$a1, $s6
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	pcaddu18i	$t8, %call36(putc)
	jr	$t8
.LBB1_344:                              # %if.then106
	pcalau12i	$a0, %got_pc_hi20(lflag)
	ld.d	$a0, $a0, %got_pc_lo12(lflag)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB1_346
.LBB1_345:                              # %cleanup
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.LBB1_346:                              # %land.lhs.true108
	ori	$a0, $zero, 10
	bne	$s7, $a0, .LBB1_342
	b	.LBB1_343
.Lfunc_end1:
	.size	checkline, .Lfunc_end1-checkline
                                        # -- End function
	.p2align	5                               # -- Begin function TeX_math_check
	.type	TeX_math_check,@function
TeX_math_check:                         # @TeX_math_check
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	ld.d	$a3, $a1, 0
	ld.bu	$a2, $a3, 0
	pcalau12i	$a1, %got_pc_hi20(hashheader)
	ld.d	$s1, $a1, %got_pc_lo12(hashheader)
	move	$a1, $a0
	beqz	$a2, .LBB2_7
# %bb.1:                                # %entry
	ld.bu	$a0, $s1, 57
	beq	$a2, $a0, .LBB2_7
# %bb.2:                                # %entry
	ld.bu	$a0, $s1, 62
	beq	$a2, $a0, .LBB2_7
# %bb.3:                                # %while.body.i.preheader
	addi.d	$a0, $a3, 1
	.p2align	4, , 16
.LBB2_4:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a0, $fp, 0
	ld.bu	$a2, $a0, 0
	beqz	$a2, .LBB2_7
# %bb.5:                                # %while.body.i
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.bu	$a3, $s1, 57
	beq	$a2, $a3, .LBB2_7
# %bb.6:                                # %while.body.i
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.bu	$a3, $s1, 62
	addi.d	$a0, $a0, 1
	bne	$a2, $a3, .LBB2_4
.LBB2_7:                                # %TeX_open_paren.exit
	beqz	$a2, .LBB2_24
# %bb.8:                                # %if.else
	move	$s3, $a1
	pcalau12i	$a0, %got_pc_hi20(LaTeX_Mode)
	ld.d	$a0, $a0, %got_pc_lo12(LaTeX_Mode)
	ori	$a1, $zero, 80
	st.b	$a1, $a0, 0
	ld.d	$s2, $fp, 0
	addi.d	$s0, $s2, 1
	st.d	$s0, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a1, $a0, %pc_lo12(.L.str.18)
	ori	$a2, $zero, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_17
# %bb.9:                                # %lor.lhs.false
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a1, $a0, %pc_lo12(.L.str.19)
	ori	$a2, $zero, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_17
# %bb.10:                               # %lor.lhs.false8
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a1, $a0, %pc_lo12(.L.str.20)
	ori	$a2, $zero, 11
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_17
# %bb.11:                               # %lor.lhs.false12
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a1, $a0, %pc_lo12(.L.str.21)
	ori	$a2, $zero, 7
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_17
# %bb.12:                               # %lor.lhs.false16
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a1, $a0, %pc_lo12(.L.str.22)
	ori	$a2, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_17
# %bb.13:                               # %if.end22
	ori	$a0, $zero, 98
	bne	$s3, $a0, .LBB2_26
# %bb.14:                               # %if.then25
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a1, $a0, %pc_lo12(.L.str.23)
	ori	$a2, $zero, 7
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_33
# %bb.15:                               # %lor.lhs.false.i
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a1, $a0, %pc_lo12(.L.str.24)
	ori	$a2, $zero, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_33
# %bb.16:
	move	$s3, $zero
	b	.LBB2_34
.LBB2_17:                               # %if.then20
	st.d	$s2, $fp, 0
	ld.bu	$a1, $s2, 0
	ori	$a0, $zero, 1
	beqz	$a1, .LBB2_25
# %bb.18:                               # %if.then20
	ld.bu	$a2, $s1, 58
	beq	$a1, $a2, .LBB2_25
# %bb.19:                               # %if.then20
	ld.bu	$a2, $s1, 62
	beq	$a1, $a2, .LBB2_25
# %bb.20:                               # %while.body.i17.preheader
	addi.d	$a1, $s2, 1
	.p2align	4, , 16
.LBB2_21:                               # %while.body.i17
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a1, $fp, 0
	ld.bu	$a2, $a1, 0
	beqz	$a2, .LBB2_25
# %bb.22:                               # %while.body.i17
                                        #   in Loop: Header=BB2_21 Depth=1
	ld.bu	$a3, $s1, 58
	beq	$a2, $a3, .LBB2_25
# %bb.23:                               # %while.body.i17
                                        #   in Loop: Header=BB2_21 Depth=1
	ld.bu	$a3, $s1, 62
	addi.d	$a1, $a1, 1
	bne	$a2, $a3, .LBB2_21
	b	.LBB2_25
.LBB2_24:                               # %if.then
	pcalau12i	$a0, %got_pc_hi20(LaTeX_Mode)
	ld.d	$a2, $a0, %got_pc_lo12(LaTeX_Mode)
	move	$a0, $zero
	st.b	$a1, $a2, 0
.LBB2_25:                               # %return
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB2_26:                               # %if.else26
	ld.bu	$a1, $s0, 0
	move	$a0, $zero
	beqz	$a1, .LBB2_25
# %bb.27:                               # %if.else26
	ld.bu	$a2, $s1, 58
	beq	$a1, $a2, .LBB2_25
# %bb.28:                               # %if.else26
	ld.bu	$a2, $s1, 62
	beq	$a1, $a2, .LBB2_25
# %bb.29:                               # %while.body.i31.preheader
	addi.d	$a1, $s2, 2
	move	$a0, $zero
	.p2align	4, , 16
.LBB2_30:                               # %while.body.i31
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a1, $fp, 0
	ld.bu	$a2, $a1, 0
	beqz	$a2, .LBB2_25
# %bb.31:                               # %while.body.i31
                                        #   in Loop: Header=BB2_30 Depth=1
	ld.bu	$a3, $s1, 58
	beq	$a2, $a3, .LBB2_25
# %bb.32:                               # %while.body.i31
                                        #   in Loop: Header=BB2_30 Depth=1
	ld.bu	$a3, $s1, 62
	addi.d	$a1, $a1, 1
	bne	$a2, $a3, .LBB2_30
	b	.LBB2_25
.LBB2_33:                               # %if.then.i
	ori	$s3, $zero, 1
.LBB2_34:                               # %if.end.i
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a1, $a0, %pc_lo12(.L.str.25)
	ori	$a2, $zero, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s0, 0
	beqz	$a1, .LBB2_42
# %bb.35:                               # %if.end.i
	ld.bu	$a2, $s1, 58
	beq	$a1, $a2, .LBB2_42
# %bb.36:                               # %if.end.i
	ld.bu	$a2, $s1, 62
	beq	$a1, $a2, .LBB2_42
# %bb.37:                               # %while.body.i.i.preheader
	addi.d	$a2, $s2, 2
	.p2align	4, , 16
.LBB2_38:                               # %while.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a2, $fp, 0
	ld.bu	$a1, $a2, 0
	addi.d	$a2, $a2, 1
	beqz	$a1, .LBB2_41
# %bb.39:                               # %while.body.i.i
                                        #   in Loop: Header=BB2_38 Depth=1
	ld.bu	$a3, $s1, 58
	beq	$a1, $a3, .LBB2_41
# %bb.40:                               # %while.body.i.i
                                        #   in Loop: Header=BB2_38 Depth=1
	ld.bu	$a3, $s1, 62
	bne	$a1, $a3, .LBB2_38
.LBB2_41:                               # %TeX_skip_parens.exit.i.loopexit
	addi.d	$s0, $a2, -1
.LBB2_42:                               # %TeX_skip_parens.exit.i
	beqz	$a1, .LBB2_54
# %bb.43:                               # %if.then8.i
	sltui	$a0, $a0, 1
	add.d	$a0, $s3, $a0
	addi.d	$a1, $s0, 1
	st.d	$a1, $fp, 0
	beqz	$a0, .LBB2_54
# %bb.44:                               # %if.then11.i
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB2_52
# %bb.45:                               # %if.then11.i
	ld.bu	$a2, $s1, 58
	beq	$a1, $a2, .LBB2_52
# %bb.46:                               # %if.then11.i
	ld.bu	$a2, $s1, 62
	beq	$a1, $a2, .LBB2_52
# %bb.47:                               # %while.body.i18.i.preheader
	addi.d	$a2, $s0, 2
.LBB2_48:                               # %while.body.i18.i
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a2, $fp, 0
	ld.bu	$a1, $a2, 0
	addi.d	$a2, $a2, 1
	beqz	$a1, .LBB2_51
# %bb.49:                               # %while.body.i18.i
                                        #   in Loop: Header=BB2_48 Depth=1
	ld.bu	$a3, $s1, 58
	beq	$a1, $a3, .LBB2_51
# %bb.50:                               # %while.body.i18.i
                                        #   in Loop: Header=BB2_48 Depth=1
	ld.bu	$a3, $s1, 62
	bne	$a1, $a3, .LBB2_48
.LBB2_51:                               # %TeX_skip_parens.exit25.i.loopexit
	addi.d	$s0, $a2, -2
.LBB2_52:                               # %TeX_skip_parens.exit25.i
	beqz	$a1, .LBB2_54
# %bb.53:                               # %if.then15.i
	addi.d	$a1, $s0, 2
	ori	$a2, $zero, 1
	st.d	$a1, $fp, 0
	bne	$a0, $a2, .LBB2_55
.LBB2_54:
	move	$a0, $zero
	b	.LBB2_25
.LBB2_55:                               # %if.then20.i
	ld.bu	$a1, $a1, 0
	move	$a0, $zero
	beqz	$a1, .LBB2_25
# %bb.56:                               # %if.then20.i
	ld.bu	$a2, $s1, 58
	beq	$a1, $a2, .LBB2_25
# %bb.57:                               # %if.then20.i
	ld.bu	$a2, $s1, 62
	beq	$a1, $a2, .LBB2_25
# %bb.58:                               # %while.body.i31.i.preheader
	addi.d	$a1, $s0, 3
	move	$a0, $zero
.LBB2_59:                               # %while.body.i31.i
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a1, $fp, 0
	ld.bu	$a2, $a1, 0
	beqz	$a2, .LBB2_25
# %bb.60:                               # %while.body.i31.i
                                        #   in Loop: Header=BB2_59 Depth=1
	ld.bu	$a3, $s1, 58
	beq	$a2, $a3, .LBB2_25
# %bb.61:                               # %while.body.i31.i
                                        #   in Loop: Header=BB2_59 Depth=1
	ld.bu	$a3, $s1, 62
	addi.d	$a1, $a1, 1
	bne	$a2, $a3, .LBB2_59
	b	.LBB2_25
.Lfunc_end2:
	.size	TeX_math_check, .Lfunc_end2-TeX_math_check
                                        # -- End function
	.p2align	5                               # -- Begin function TeX_LR_check
	.type	TeX_LR_check,@function
TeX_LR_check:                           # @TeX_LR_check
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	ld.d	$a2, $a1, 0
	ld.bu	$a1, $a2, 0
	pcalau12i	$a3, %got_pc_hi20(hashheader)
	ld.d	$s2, $a3, %got_pc_lo12(hashheader)
	move	$s0, $a0
	beqz	$a1, .LBB3_7
# %bb.1:                                # %entry
	ld.bu	$a0, $s2, 57
	beq	$a1, $a0, .LBB3_7
# %bb.2:                                # %entry
	ld.bu	$a0, $s2, 62
	beq	$a1, $a0, .LBB3_7
# %bb.3:                                # %while.body.i.preheader
	addi.d	$a0, $a2, 1
	.p2align	4, , 16
.LBB3_4:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a0, $fp, 0
	ld.bu	$a1, $a0, 0
	beqz	$a1, .LBB3_7
# %bb.5:                                # %while.body.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.bu	$a2, $s2, 57
	beq	$a1, $a2, .LBB3_7
# %bb.6:                                # %while.body.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.bu	$a2, $s2, 62
	addi.d	$a0, $a0, 1
	bne	$a1, $a2, .LBB3_4
.LBB3_7:                                # %TeX_open_paren.exit
	pcalau12i	$a0, %got_pc_hi20(LaTeX_Mode)
	beqz	$a1, .LBB3_10
# %bb.8:                                # %if.else
	ld.d	$a0, $a0, %got_pc_lo12(LaTeX_Mode)
	ori	$a1, $zero, 80
	st.b	$a1, $a0, 0
	ld.d	$s3, $fp, 0
	addi.d	$s1, $s3, 1
	st.d	$s1, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a1, $a0, %pc_lo12(.L.str.24)
	ori	$a2, $zero, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_11
# %bb.9:                                # %if.end21
	move	$a0, $zero
	st.d	$s3, $fp, 0
	b	.LBB3_31
.LBB3_10:                               # %if.then
	ld.d	$a1, $a0, %got_pc_lo12(LaTeX_Mode)
	move	$a0, $zero
	ori	$a2, $zero, 109
	st.b	$a2, $a1, 0
	b	.LBB3_31
.LBB3_11:                               # %if.then4
	ld.bu	$a0, $s1, 0
	beqz	$a0, .LBB3_19
# %bb.12:                               # %if.then4
	ld.bu	$a1, $s2, 58
	beq	$a0, $a1, .LBB3_19
# %bb.13:                               # %if.then4
	ld.bu	$a1, $s2, 62
	beq	$a0, $a1, .LBB3_19
# %bb.14:                               # %while.body.i13.preheader
	addi.d	$a1, $s3, 2
	.p2align	4, , 16
.LBB3_15:                               # %while.body.i13
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a1, $fp, 0
	ld.bu	$a0, $a1, 0
	addi.d	$a1, $a1, 1
	beqz	$a0, .LBB3_18
# %bb.16:                               # %while.body.i13
                                        #   in Loop: Header=BB3_15 Depth=1
	ld.bu	$a2, $s2, 58
	beq	$a0, $a2, .LBB3_18
# %bb.17:                               # %while.body.i13
                                        #   in Loop: Header=BB3_15 Depth=1
	ld.bu	$a2, $s2, 62
	bne	$a0, $a2, .LBB3_15
.LBB3_18:                               # %TeX_skip_parens.exit.loopexit
	addi.d	$s1, $a1, -1
.LBB3_19:                               # %TeX_skip_parens.exit
	beqz	$a0, .LBB3_21
# %bb.20:                               # %if.then5
	addi.d	$s1, $s1, 1
	st.d	$s1, $fp, 0
.LBB3_21:                               # %if.end7
	beqz	$s0, .LBB3_30
# %bb.22:                               # %if.then9
	ld.bu	$a0, $s1, 0
	beqz	$a0, .LBB3_29
# %bb.23:                               # %if.then9
	ld.bu	$a1, $s2, 58
	beq	$a0, $a1, .LBB3_29
# %bb.24:                               # %if.then9
	ld.bu	$a1, $s2, 62
	beq	$a0, $a1, .LBB3_29
# %bb.25:                               # %while.body.i25.preheader
	addi.d	$a0, $s1, 1
	.p2align	4, , 16
.LBB3_26:                               # %while.body.i25
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a0, $fp, 0
	ld.bu	$a1, $a0, 0
	beqz	$a1, .LBB3_29
# %bb.27:                               # %while.body.i25
                                        #   in Loop: Header=BB3_26 Depth=1
	ld.bu	$a2, $s2, 58
	beq	$a1, $a2, .LBB3_29
# %bb.28:                               # %while.body.i25
                                        #   in Loop: Header=BB3_26 Depth=1
	ld.bu	$a2, $s2, 62
	addi.d	$a0, $a0, 1
	bne	$a1, $a2, .LBB3_26
.LBB3_29:                               # %TeX_skip_parens.exit32
	pcalau12i	$a0, %got_pc_hi20(math_mode)
	ld.d	$a0, $a0, %got_pc_lo12(math_mode)
	ld.w	$a1, $a0, 0
	slli.d	$a2, $a1, 7
	addi.d	$a2, $a2, 256
	bstrpick.d	$a2, $a2, 13, 7
	slli.d	$a2, $a2, 7
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, -126
	st.w	$a1, $a0, 0
	ori	$a0, $zero, 1
	b	.LBB3_31
.LBB3_30:                               # %if.else11
	pcalau12i	$a0, %got_pc_hi20(math_mode)
	ld.d	$fp, $a0, %got_pc_lo12(math_mode)
	ld.w	$a0, $fp, 0
	slli.d	$a1, $a0, 7
	bstrpick.d	$a1, $a1, 13, 7
	slli.d	$a1, $a1, 7
	sub.w	$a1, $a0, $a1
	st.w	$a1, $fp, 0
	addi.w	$a2, $zero, -1
	ori	$a0, $zero, 1
	bge	$a2, $a1, .LBB3_32
.LBB3_31:                               # %return
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB3_32:                               # %if.then17
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	ori	$a1, $zero, 36
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 0
	b	.LBB3_31
.Lfunc_end3:
	.size	TeX_LR_check, .Lfunc_end3-TeX_LR_check
                                        # -- End function
	.p2align	5                               # -- Begin function TeX_strncmp
	.type	TeX_strncmp,@function
TeX_strncmp:                            # @TeX_strncmp
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a0
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_3
.LBB4_1:                                # %if.end14
	move	$a1, $a0
.LBB4_2:                                # %cleanup
	move	$a0, $a1
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB4_3:                                # %if.then
	ldx.b	$fp, $s0, $fp
	bltz	$fp, .LBB4_1
# %bb.4:                                # %land.lhs.true
	move	$s0, $a0
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	ld.d	$a1, $a1, 0
	slli.d	$a2, $fp, 1
	ldx.hu	$a1, $a1, $a2
	andi	$a2, $a1, 1024
	ori	$a1, $zero, 1
	beqz	$a2, .LBB4_1
	b	.LBB4_2
.Lfunc_end4:
	.size	TeX_strncmp, .Lfunc_end4-TeX_strncmp
                                        # -- End function
	.p2align	5                               # -- Begin function TeX_skip_parens
	.type	TeX_skip_parens,@function
TeX_skip_parens:                        # @TeX_skip_parens
# %bb.0:                                # %entry
	ld.d	$a2, $a0, 0
	ld.bu	$a3, $a2, 0
	beqz	$a3, .LBB5_7
# %bb.1:                                # %entry
	pcalau12i	$a1, %got_pc_hi20(hashheader)
	ld.d	$a1, $a1, %got_pc_lo12(hashheader)
	ld.bu	$a4, $a1, 58
	beq	$a3, $a4, .LBB5_7
# %bb.2:                                # %entry
	ld.bu	$a4, $a1, 62
	beq	$a3, $a4, .LBB5_7
# %bb.3:                                # %while.body.preheader
	addi.d	$a2, $a2, 1
	.p2align	4, , 16
.LBB5_4:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a2, $a0, 0
	ld.bu	$a3, $a2, 0
	beqz	$a3, .LBB5_7
# %bb.5:                                # %while.body
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.bu	$a4, $a1, 58
	beq	$a3, $a4, .LBB5_7
# %bb.6:                                # %while.body
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.bu	$a4, $a1, 62
	addi.d	$a2, $a2, 1
	bne	$a3, $a4, .LBB5_4
.LBB5_7:                                # %while.end
	ret
.Lfunc_end5:
	.size	TeX_skip_parens, .Lfunc_end5-TeX_skip_parens
                                        # -- End function
	.type	TeX_comment,@object             # @TeX_comment
	.local	TeX_comment
	.comm	TeX_comment,1,4
	.type	save_math_mode,@object          # @save_math_mode
	.local	save_math_mode
	.comm	save_math_mode,4,4
	.type	save_LaTeX_Mode,@object         # @save_LaTeX_Mode
	.local	save_LaTeX_Mode
	.comm	save_LaTeX_Mode,1,1
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"if t"
	.size	.L.str, 5

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"if n"
	.size	.L.str.1, 5

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"\r\nWord '%s' too long at line %d of %s, truncated\r\n"
	.size	.L.str.5, 51

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"/home/zhaoqi/llvm-test-suite/MultiSource/Benchmarks/MiBench/office-ispell/defmt.c"
	.size	.L.str.6, 82

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"%s\n"
	.size	.L.str.7, 4

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"*\n"
	.size	.L.str.8, 3

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"+ %s\n"
	.size	.L.str.9, 6

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"-\n"
	.size	.L.str.10, 3

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"%c %s %d %d"
	.size	.L.str.11, 12

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"%c %s"
	.size	.L.str.12, 6

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"# %s %d\n"
	.size	.L.str.14, 9

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"****ERROR in parsing TeX math mode!\r\n"
	.size	.L.str.16, 38

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"\\end"
	.size	.L.str.17, 5

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"equation"
	.size	.L.str.18, 9

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"eqnarray"
	.size	.L.str.19, 9

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"displaymath"
	.size	.L.str.20, 12

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"picture"
	.size	.L.str.21, 8

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"math"
	.size	.L.str.22, 5

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"tabular"
	.size	.L.str.23, 8

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"minipage"
	.size	.L.str.24, 9

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"tabular*"
	.size	.L.str.25, 9

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"***ERROR in LR to math-mode switch.\n"
	.size	.L.str.26, 37

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"mbox"
	.size	.L.str.28, 5

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"makebox"
	.size	.L.str.29, 8

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"fbox"
	.size	.L.str.30, 5

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"framebox"
	.size	.L.str.31, 9

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"parbox"
	.size	.L.str.32, 7

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"raisebox"
	.size	.L.str.33, 9

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"begin"
	.size	.L.str.34, 6

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"vspace"
	.size	.L.str.35, 7

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"hspace"
	.size	.L.str.36, 7

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"cite"
	.size	.L.str.37, 5

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"label"
	.size	.L.str.39, 6

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"input"
	.size	.L.str.40, 6

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"nocite"
	.size	.L.str.41, 7

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"include"
	.size	.L.str.42, 8

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"includeonly"
	.size	.L.str.43, 12

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"documentstyle"
	.size	.L.str.44, 14

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"documentclass"
	.size	.L.str.45, 14

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"usepackage"
	.size	.L.str.46, 11

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"pagestyle"
	.size	.L.str.47, 10

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"pagenumbering"
	.size	.L.str.48, 14

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"bibliography"
	.size	.L.str.49, 13

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"bibitem"
	.size	.L.str.50, 8

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"hyphenation"
	.size	.L.str.51, 12

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"pageref"
	.size	.L.str.52, 8

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"rule"
	.size	.L.str.53, 5

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"setcounter"
	.size	.L.str.54, 11

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"addtocounter"
	.size	.L.str.55, 13

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"setlength"
	.size	.L.str.56, 10

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"addtolength"
	.size	.L.str.57, 12

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"settowidth"
	.size	.L.str.58, 11

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"verb"
	.size	.L.str.59, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym contextbufs
	.addrsig_sym currentchar
	.addrsig_sym ctoken
	.addrsig_sym itoken
	.addrsig_sym possibilities
