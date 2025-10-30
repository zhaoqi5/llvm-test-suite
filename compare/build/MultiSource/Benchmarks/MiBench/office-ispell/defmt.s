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
	st.w	$a2, $a3, 0
	pcalau12i	$a2, %got_pc_hi20(LaTeX_Mode)
	ld.d	$a2, $a2, %got_pc_lo12(LaTeX_Mode)
	st.b	$a4, $a2, 0
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
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function checkline
.LCPI1_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.text
	.globl	checkline
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
	move	$s6, $a0
	pcalau12i	$a0, %got_pc_hi20(currentchar)
	ld.d	$s0, $a0, %got_pc_lo12(currentchar)
	pcalau12i	$a0, %got_pc_hi20(contextbufs)
	ld.d	$s2, $a0, %got_pc_lo12(contextbufs)
	st.d	$s2, $s0, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 32
	ori	$a1, $zero, 0
	lu32i.d	$a1, -1
	add.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 32
	ldx.bu	$s5, $s2, $a0
	ori	$a1, $zero, 10
	bne	$s5, $a1, .LBB1_2
# %bb.1:                                # %if.then
	pcalau12i	$a1, %got_pc_hi20(contextbufs)
	ld.d	$a1, $a1, %got_pc_lo12(contextbufs)
	stx.b	$zero, $a1, $a0
.LBB1_2:                                # %if.end
	pcalau12i	$a0, %got_pc_hi20(tflag)
	ld.d	$s4, $a0, %got_pc_lo12(tflag)
	ld.w	$a0, $s4, 0
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	beqz	$a0, .LBB1_308
.LBB1_3:                                # %for.cond.preheader
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$s3, %pc_hi20(TeX_comment)
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
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 88                    # 8-byte Folded Spill
	st.d	$s8, $sp, 48                    # 8-byte Folded Spill
	b	.LBB1_6
.LBB1_4:                                # %if.then219
                                        #   in Loop: Header=BB1_6 Depth=1
	pcalau12i	$a0, %got_pc_hi20(terse)
	ld.d	$a0, $a0, %got_pc_lo12(terse)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB1_287
	.p2align	4, , 16
.LBB1_5:                                # %for.cond.backedge
                                        #   in Loop: Header=BB1_6 Depth=1
	ld.d	$s2, $s0, 0
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
.LBB1_6:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_7 Depth 2
                                        #       Child Loop BB1_39 Depth 3
                                        #       Child Loop BB1_196 Depth 3
                                        #       Child Loop BB1_184 Depth 3
                                        #       Child Loop BB1_91 Depth 3
                                        #         Child Loop BB1_94 Depth 4
                                        #         Child Loop BB1_109 Depth 4
                                        #       Child Loop BB1_170 Depth 3
                                        #       Child Loop BB1_233 Depth 3
                                        #       Child Loop BB1_225 Depth 3
                                        #       Child Loop BB1_81 Depth 3
                                        #       Child Loop BB1_70 Depth 3
                                        #     Child Loop BB1_248 Depth 2
                                        #     Child Loop BB1_269 Depth 2
                                        #     Child Loop BB1_263 Depth 2
                                        #     Child Loop BB1_298 Depth 2
	st.d	$s2, $sp, 96
	ld.bu	$a1, $s2, 0
	beqz	$a1, .LBB1_235
	.p2align	4, , 16
.LBB1_7:                                # %land.rhs.i
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_39 Depth 3
                                        #       Child Loop BB1_196 Depth 3
                                        #       Child Loop BB1_184 Depth 3
                                        #       Child Loop BB1_91 Depth 3
                                        #         Child Loop BB1_94 Depth 4
                                        #         Child Loop BB1_109 Depth 4
                                        #       Child Loop BB1_170 Depth 3
                                        #       Child Loop BB1_233 Depth 3
                                        #       Child Loop BB1_225 Depth 3
                                        #       Child Loop BB1_81 Depth 3
                                        #       Child Loop BB1_70 Depth 3
	andi	$s3, $a1, 255
	add.d	$a0, $s7, $s3
	ld.bu	$a0, $a0, 1894
	beqz	$a0, .LBB1_11
# %bb.8:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB1_7 Depth=2
	move	$a0, $s2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(stringcharlen)
	jirl	$ra, $ra, 0
	ld.bu	$s3, $s2, 0
	blez	$a0, .LBB1_10
# %bb.9:                                # %land.lhs.true.lor.lhs.false_crit_edge.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.w	$a0, $s4, 0
	b	.LBB1_12
	.p2align	4, , 16
.LBB1_10:                               # %land.lhs.true.land.lhs.true4_crit_edge.i
                                        #   in Loop: Header=BB1_7 Depth=2
	move	$a1, $s3
.LBB1_11:                               # %land.lhs.true4.i
                                        #   in Loop: Header=BB1_7 Depth=2
	add.d	$a0, $s7, $s3
	ld.bu	$a2, $a0, 982
	ld.w	$a0, $s4, 0
	move	$s3, $a1
	beqz	$a2, .LBB1_13
.LBB1_12:                               # %lor.lhs.false.i
                                        #   in Loop: Header=BB1_7 Depth=2
	andi	$a1, $s3, 255
	add.d	$a1, $s7, $a1
	ld.bu	$a1, $a1, 1666
	beqz	$a1, .LBB1_19
.LBB1_13:                               # %while.body.i
                                        #   in Loop: Header=BB1_7 Depth=2
	bnez	$a0, .LBB1_21
# %bb.14:                               # %if.else144.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.bu	$a0, $s7, 51
	andi	$a1, $s3, 255
	bne	$a1, $a0, .LBB1_62
# %bb.15:                               # %if.then149.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.bu	$a0, $s2, 1
	ori	$a1, $zero, 115
	beq	$a0, $a1, .LBB1_49
# %bb.16:                               # %if.then149.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ori	$a1, $zero, 102
	bne	$a0, $a1, .LBB1_54
# %bb.17:                               # %sw.bb.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.bu	$a0, $s2, 2
	ld.bu	$a1, $s7, 48
.LBB1_18:                               # %while.cond.backedge.sink.split.i
                                        #   in Loop: Header=BB1_7 Depth=2
	xor	$a0, $a0, $a1
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 3
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 5
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	add.d	$s2, $s2, $a0
	b	.LBB1_67
	.p2align	4, , 16
.LBB1_19:                               # %lor.rhs.i
                                        #   in Loop: Header=BB1_7 Depth=2
	beqz	$a0, .LBB1_237
# %bb.20:                               # %lor.rhs.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.wu	$a0, $s8, 0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB1_237
.LBB1_21:                               # %if.then.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.bu	$a0, $s7, 65
	andi	$a1, $s3, 255
	bne	$a1, $a0, .LBB1_24
# %bb.22:                               # %if.then21.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, %pc_lo12(TeX_comment)
	bnez	$a0, .LBB1_61
# %bb.23:                               # %if.then23.i
                                        #   in Loop: Header=BB1_7 Depth=2
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
	b	.LBB1_61
	.p2align	4, , 16
.LBB1_24:                               # %if.else.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.w	$a0, $s8, 0
	andi	$a2, $a0, 1
	bnez	$a2, .LBB1_32
# %bb.25:                               # %if.else79.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ori	$a2, $zero, 2
	blt	$a0, $a2, .LBB1_28
# %bb.26:                               # %if.else79.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.bu	$a2, $s7, 58
	bne	$a1, $a2, .LBB1_28
# %bb.27:                               # %land.lhs.true87.i
                                        #   in Loop: Header=BB1_7 Depth=2
	slli.d	$a1, $a0, 7
	bstrpick.d	$a1, $a1, 13, 8
	slli.d	$a1, $a1, 8
	bltu	$a0, $a1, .LBB1_31
.LBB1_28:                               # %if.else93.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.bu	$fp, $a1, 0
	ori	$a1, $zero, 109
	bne	$fp, $a1, .LBB1_43
.LBB1_29:                               # %if.then108.i
                                        #   in Loop: Header=BB1_7 Depth=2
	addi.d	$a1, $sp, 96
	move	$a0, $zero
	pcaddu18i	$ra, %call36(TeX_LR_check)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	beqz	$a0, .LBB1_61
# %bb.30:                               # %if.then111.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.w	$a0, $s8, 0
.LBB1_31:                               # %if.then91.i
                                        #   in Loop: Header=BB1_7 Depth=2
	addi.d	$a0, $a0, -1
	st.w	$a0, $s8, 0
	b	.LBB1_61
.LBB1_32:                               # %if.then26.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 101
	bne	$a0, $a1, .LBB1_35
# %bb.33:                               # %land.lhs.true30.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ori	$a0, $zero, 101
	addi.d	$a1, $sp, 96
	pcaddu18i	$ra, %call36(TeX_math_check)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_59
# %bb.34:                               # %lor.lhs.false33thread-pre-split.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 0
.LBB1_35:                               # %lor.lhs.false33.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ori	$a1, $zero, 109
	bne	$a0, $a1, .LBB1_37
# %bb.36:                               # %land.lhs.true37.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ori	$a0, $zero, 1
	addi.d	$a1, $sp, 96
	pcaddu18i	$ra, %call36(TeX_LR_check)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_59
.LBB1_37:                               # %if.else41.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.d	$s2, $sp, 96
	ld.bu	$a0, $s2, 0
	beqz	$a0, .LBB1_294
# %bb.38:                               # %land.rhs45.lr.ph.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.bu	$a2, $s7, 61
	ld.bu	$s3, $s7, 62
	ld.bu	$a1, $s7, 65
	addi.d	$s5, $s2, 2
	.p2align	4, , 16
.LBB1_39:                               # %land.rhs45.i
                                        #   Parent Loop BB1_6 Depth=1
                                        #     Parent Loop BB1_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beq	$a0, $a2, .LBB1_56
# %bb.40:                               # %land.rhs45.i
                                        #   in Loop: Header=BB1_39 Depth=3
	beq	$a0, $s3, .LBB1_56
# %bb.41:                               # %land.rhs45.i
                                        #   in Loop: Header=BB1_39 Depth=3
	beq	$a0, $a1, .LBB1_56
# %bb.42:                               # %while.body62.i
                                        #   in Loop: Header=BB1_39 Depth=3
	ld.bu	$a0, $s2, 1
	addi.d	$a3, $s2, 1
	addi.d	$s5, $s5, 1
	move	$s2, $a3
	bnez	$a0, .LBB1_39
	b	.LBB1_238
.LBB1_43:                               # %lor.lhs.false97.i
                                        #   in Loop: Header=BB1_7 Depth=2
	beqz	$a0, .LBB1_46
# %bb.44:                               # %land.lhs.true99.i
                                        #   in Loop: Header=BB1_7 Depth=2
	slli.d	$a1, $a0, 7
	bstrpick.d	$a1, $a1, 13, 8
	slli.d	$a1, $a1, 8
	blt	$a0, $a1, .LBB1_46
# %bb.45:                               # %land.lhs.true104.i
                                        #   in Loop: Header=BB1_7 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a1, $a0, %pc_lo12(.L.str.17)
	ori	$a2, $zero, 4
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_129
.LBB1_46:                               # %if.else114.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ori	$a0, $zero, 98
	bne	$fp, $a0, .LBB1_77
# %bb.47:                               # %land.lhs.true118.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ori	$a0, $zero, 98
	addi.d	$a1, $sp, 96
	pcaddu18i	$ra, %call36(TeX_math_check)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	beqz	$a0, .LBB1_76
# %bb.48:                               # %if.then121.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.w	$a0, $s8, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s8, 0
	b	.LBB1_61
.LBB1_49:                               # %sw.bb161.i
                                        #   in Loop: Header=BB1_7 Depth=2
	addi.d	$fp, $s2, 2
	st.d	$fp, $sp, 96
	ld.bu	$a0, $s2, 2
	ori	$a1, $zero, 45
	beq	$a0, $a1, .LBB1_51
# %bb.50:                               # %sw.bb161.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ori	$a1, $zero, 43
	bne	$a0, $a1, .LBB1_52
.LBB1_51:                               # %if.then170.i
                                        #   in Loop: Header=BB1_7 Depth=2
	addi.d	$fp, $s2, 3
.LBB1_52:                               # %if.end172.i
                                        #   in Loop: Header=BB1_7 Depth=2
	addi.d	$s2, $fp, 1
	st.d	$s2, $sp, 96
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $fp, 1
	ld.d	$a0, $a0, 0
	ext.w.b	$a2, $a1
	slli.d	$a2, $a2, 1
	ldx.hu	$a0, $a0, $a2
	slli.d	$a0, $a0, 52
	bgez	$a0, .LBB1_68
# %bb.53:                               # %if.then181.i
                                        #   in Loop: Header=BB1_7 Depth=2
	addi.d	$s2, $fp, 2
	b	.LBB1_67
.LBB1_54:                               # %sw.default.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.bu	$a1, $s7, 48
	bne	$a0, $a1, .LBB1_71
# %bb.55:                               # %if.then189.i
                                        #   in Loop: Header=BB1_7 Depth=2
	addi.d	$s2, $s2, 4
	b	.LBB1_67
.LBB1_56:                               # %if.end67.i
                                        #   in Loop: Header=BB1_7 Depth=2
	st.d	$s2, $sp, 96
	bne	$a0, $s3, .LBB1_73
# %bb.57:                               # %if.then.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.bu	$a0, $s2, 1
	bne	$a0, $s3, .LBB1_59
# %bb.58:                               # %if.then7.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	addi.d	$a0, $s2, 1
	st.d	$a0, $sp, 96
.LBB1_59:                               # %if.then40.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.w	$a0, $s8, 0
	addi.w	$a0, $a0, -1
	st.w	$a0, $s8, 0
.LBB1_60:                               # %if.end73.i
                                        #   in Loop: Header=BB1_7 Depth=2
	bltz	$a0, .LBB1_128
	.p2align	4, , 16
.LBB1_61:                               # %if.end138.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.d	$s2, $sp, 96
	ld.bu	$s3, $s2, 0
	beqz	$s3, .LBB1_236
.LBB1_62:                               # %if.end211.i
                                        #   in Loop: Header=BB1_7 Depth=2
	andi	$a0, $s3, 255
	ori	$a1, $zero, 48
	bne	$a0, $a1, .LBB1_66
# %bb.63:                               # %land.lhs.true215.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.bu	$a0, $s2, 1
	ori	$a0, $a0, 32
	ori	$a1, $zero, 120
	bne	$a0, $a1, .LBB1_66
# %bb.64:                               # %land.lhs.true225.i
                                        #   in Loop: Header=BB1_7 Depth=2
	pcalau12i	$a0, %got_pc_hi20(terse)
	ld.d	$a0, $a0, %got_pc_lo12(terse)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB1_69
# %bb.65:                               # %land.lhs.true225.i
                                        #   in Loop: Header=BB1_7 Depth=2
	pcalau12i	$a0, %got_pc_hi20(aflag)
	ld.d	$a0, $a0, %got_pc_lo12(aflag)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB1_69
	.p2align	4, , 16
.LBB1_66:                               # %if.else242.i
                                        #   in Loop: Header=BB1_7 Depth=2
	addi.d	$s2, $s2, 1
.LBB1_67:                               # %while.cond.backedge.sink.split.i
                                        #   in Loop: Header=BB1_7 Depth=2
	st.d	$s2, $sp, 96
	ld.bu	$a1, $s2, 0
.LBB1_68:                               # %while.cond.backedge.i
                                        #   in Loop: Header=BB1_7 Depth=2
	bnez	$a1, .LBB1_7
	b	.LBB1_236
.LBB1_69:                               # %if.then229.i
                                        #   in Loop: Header=BB1_7 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	addi.d	$a1, $s2, 1
	.p2align	4, , 16
.LBB1_70:                               # %while.cond231.i
                                        #   Parent Loop BB1_6 Depth=1
                                        #     Parent Loop BB1_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.b	$a2, $a1, 1
	slli.d	$a2, $a2, 1
	ldx.hu	$a2, $a0, $a2
	addi.d	$s2, $a1, 1
	slli.d	$a2, $a2, 51
	move	$a1, $s2
	bltz	$a2, .LBB1_70
	b	.LBB1_67
.LBB1_71:                               # %if.else191.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.bu	$a2, $s7, 52
	bne	$a0, $a2, .LBB1_62
# %bb.72:                               # %if.then197.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.bu	$a0, $s2, 2
	b	.LBB1_18
.LBB1_73:                               # %if.else.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	bne	$a0, $a1, .LBB1_113
# %bb.74:                               # %if.then12.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, %pc_lo12(TeX_comment)
	beqz	$a0, .LBB1_131
.LBB1_75:                               # %if.end73thread-pre-split.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.w	$a0, $s8, 0
	b	.LBB1_60
.LBB1_76:                               # %land.lhs.true118.if.else122_crit_edge.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.d	$s2, $sp, 96
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.bu	$fp, $a0, 0
	ld.bu	$s3, $s2, 0
.LBB1_77:                               # %if.else122.i
                                        #   in Loop: Header=BB1_7 Depth=2
	andi	$a2, $s3, 255
	ori	$a0, $zero, 114
	bne	$fp, $a0, .LBB1_86
# %bb.78:                               # %if.then126.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	beqz	$a2, .LBB1_85
# %bb.79:                               # %if.then126.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.bu	$a0, $s7, 58
	beq	$a2, $a0, .LBB1_85
# %bb.80:                               # %if.then126.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.bu	$a1, $s7, 62
	beq	$a2, $a1, .LBB1_85
	.p2align	4, , 16
.LBB1_81:                               # %while.body.i.i
                                        #   Parent Loop BB1_6 Depth=1
                                        #     Parent Loop BB1_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a2, $s2, 1
	addi.d	$s2, $s2, 1
	beqz	$a2, .LBB1_84
# %bb.82:                               # %while.body.i.i
                                        #   in Loop: Header=BB1_81 Depth=3
	beq	$a2, $a0, .LBB1_84
# %bb.83:                               # %while.body.i.i
                                        #   in Loop: Header=BB1_81 Depth=3
	bne	$a2, $a1, .LBB1_81
.LBB1_84:                               # %TeX_skip_parens.exit.loopexit.i
                                        #   in Loop: Header=BB1_7 Depth=2
	st.d	$s2, $sp, 96
.LBB1_85:                               # %TeX_skip_parens.exit.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ori	$a1, $zero, 80
	st.b	$a1, $a0, 0
	b	.LBB1_61
.LBB1_86:                               # %if.else127.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.bu	$a0, $s7, 62
	bne	$a2, $a0, .LBB1_90
.LBB1_87:                               # %if.then.i18.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.bu	$a0, $s2, 1
	andi	$a1, $s3, 255
	bne	$a0, $a1, .LBB1_89
# %bb.88:                               # %if.then7.i21.i
                                        #   in Loop: Header=BB1_7 Depth=2
	addi.d	$a0, $s2, 1
	st.d	$a0, $sp, 96
.LBB1_89:                               # %if.then130.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.w	$a0, $s8, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s8, 0
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	b	.LBB1_61
.LBB1_90:                               # %while.cond.preheader.i.preheader.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.bu	$a5, $s7, 61
	ld.bu	$fp, $s7, 55
.LBB1_91:                               # %while.cond.preheader.i.i
                                        #   Parent Loop BB1_6 Depth=1
                                        #     Parent Loop BB1_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_94 Depth 4
                                        #         Child Loop BB1_109 Depth 4
	andi	$a0, $a5, 255
	andi	$a1, $s3, 255
	bne	$a1, $a0, .LBB1_103
# %bb.92:                               # %while.body.i22.preheader.i
                                        #   in Loop: Header=BB1_91 Depth=3
	ld.bu	$s6, $s7, 53
	b	.LBB1_94
	.p2align	4, , 16
.LBB1_93:                               # %if.then29.i.i
                                        #   in Loop: Header=BB1_94 Depth=4
	addi.d	$s2, $s2, 2
	move	$a5, $s8
	ld.d	$s8, $sp, 48                    # 8-byte Folded Reload
	st.d	$s2, $sp, 96
	ld.bu	$s3, $s2, 0
	andi	$a0, $a5, 255
	bne	$s3, $a0, .LBB1_103
.LBB1_94:                               # %while.body.i22.i
                                        #   Parent Loop BB1_6 Depth=1
                                        #     Parent Loop BB1_7 Depth=2
                                        #       Parent Loop BB1_91 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.d	$a0, $s2, 1
	move	$s5, $a0
	st.d	$a0, $sp, 96
	ld.b	$s4, $s2, 1
	andi	$s3, $s4, 255
	andi	$a0, $s6, 255
	beq	$s3, $a0, .LBB1_89
# %bb.95:                               # %while.body.i22.i
                                        #   in Loop: Header=BB1_94 Depth=4
	andi	$a0, $fp, 255
	beq	$s3, $a0, .LBB1_89
# %bb.96:                               # %if.else.i25.i
                                        #   in Loop: Header=BB1_94 Depth=4
	move	$s8, $a5
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a3, $a0, 0
	ori	$a0, $zero, 64
	beq	$s3, $a0, .LBB1_98
# %bb.97:                               # %if.else.i25.i
                                        #   in Loop: Header=BB1_94 Depth=4
	slli.d	$a0, $s4, 1
	ldx.hu	$a0, $a3, $a0
	andi	$a0, $a0, 1024
	beqz	$a0, .LBB1_93
.LBB1_98:                               # %if.else31.i.i
                                        #   in Loop: Header=BB1_94 Depth=4
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a1, $a0, %pc_lo12(.L.str.34)
	ori	$a2, $zero, 5
	move	$a0, $s5
	move	$fp, $a3
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_134
# %bb.99:                               # %if.then.i.i50.i
                                        #   in Loop: Header=BB1_94 Depth=4
	ld.b	$a0, $s2, 6
	bltz	$a0, .LBB1_101
# %bb.100:                              # %land.lhs.true.i.i52.i
                                        #   in Loop: Header=BB1_94 Depth=4
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $fp, $a0
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB1_134
.LBB1_101:                              # %if.then35.i.i
                                        #   in Loop: Header=BB1_94 Depth=4
	ori	$a0, $zero, 98
	addi.d	$a1, $sp, 96
	pcaddu18i	$ra, %call36(TeX_math_check)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 48                    # 8-byte Folded Reload
	bnez	$a0, .LBB1_89
# %bb.102:                              # %if.else39.i.i
                                        #   in Loop: Header=BB1_94 Depth=4
	ld.bu	$fp, $s7, 55
	ld.bu	$s6, $s7, 53
	ld.d	$a0, $sp, 96
	ld.bu	$a5, $s7, 61
	addi.d	$s2, $a0, -1
	st.d	$s2, $sp, 96
	ld.bu	$s3, $s2, 0
	andi	$a0, $a5, 255
	beq	$s3, $a0, .LBB1_94
	.p2align	4, , 16
.LBB1_103:                              # %while.end.i.i
                                        #   in Loop: Header=BB1_91 Depth=3
	andi	$a1, $fp, 255
	andi	$a0, $s3, 255
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB1_105
# %bb.104:                              # %while.end.i.i
                                        #   in Loop: Header=BB1_91 Depth=3
	ld.bu	$a1, $s7, 59
	bne	$a0, $a1, .LBB1_61
.LBB1_105:                              # %land.lhs.true55.i.i
                                        #   in Loop: Header=BB1_91 Depth=3
	ld.bu	$a0, $s2, 1
	ld.bu	$a1, $s7, 64
	bne	$a0, $a1, .LBB1_61
# %bb.106:                              # %if.then61.i.i
                                        #   in Loop: Header=BB1_91 Depth=3
	addi.d	$a1, $s2, 1
	st.d	$a1, $sp, 96
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB1_61
# %bb.107:                              # %while.body65.i.preheader.i
                                        #   in Loop: Header=BB1_91 Depth=3
	ld.bu	$a1, $s7, 56
	ld.bu	$a2, $s7, 60
	addi.d	$s2, $s2, 2
	b	.LBB1_109
	.p2align	4, , 16
.LBB1_108:                              # %if.end83.i.i
                                        #   in Loop: Header=BB1_109 Depth=4
	addi.d	$s2, $s2, 1
	beqz	$s3, .LBB1_61
.LBB1_109:                              # %while.body65.i.i
                                        #   Parent Loop BB1_6 Depth=1
                                        #     Parent Loop BB1_7 Depth=2
                                        #       Parent Loop BB1_91 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	st.d	$s2, $sp, 96
	ld.bu	$a3, $s2, -1
	ld.bu	$s3, $s2, 0
	bne	$a3, $a0, .LBB1_108
# %bb.110:                              # %land.lhs.true71.i.i
                                        #   in Loop: Header=BB1_109 Depth=4
	beq	$s3, $a1, .LBB1_112
# %bb.111:                              # %land.lhs.true71.i.i
                                        #   in Loop: Header=BB1_109 Depth=4
	bne	$s3, $a2, .LBB1_108
.LBB1_112:                              # %tailrecurse.loopexit.i.i
                                        #   in Loop: Header=BB1_91 Depth=3
	ld.bu	$a0, $s7, 62
	bne	$s3, $a0, .LBB1_91
	b	.LBB1_87
.LBB1_113:                              # %if.end16.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.bu	$a2, $s2, 1
	ld.bu	$a1, $s7, 54
	addi.d	$a0, $s2, 1
	st.d	$a0, $sp, 96
	beq	$a2, $a1, .LBB1_59
# %bb.114:                              # %if.end16.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.bu	$a1, $s7, 56
	beq	$a2, $a1, .LBB1_59
# %bb.115:                              # %if.end27.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	ori	$a2, $zero, 4
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_132
.LBB1_116:                              # %lor.lhs.false.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a1, $a0, %pc_lo12(.L.str.29)
	ori	$a2, $zero, 7
	addi.d	$a0, $s2, 1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_173
.LBB1_117:                              # %lor.lhs.false3.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a1, $a0, %pc_lo12(.L.str.30)
	ori	$a2, $zero, 4
	addi.d	$a0, $s2, 1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_175
.LBB1_118:                              # %lor.lhs.false6.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a1, $a0, %pc_lo12(.L.str.31)
	ori	$a2, $zero, 8
	addi.d	$a0, $s2, 1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_177
.LBB1_119:                              # %if.else.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a1, $a0, %pc_lo12(.L.str.32)
	ori	$a2, $zero, 6
	addi.d	$a0, $s2, 1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_187
.LBB1_120:                              # %lor.lhs.false11.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a1, $a0, %pc_lo12(.L.str.33)
	ori	$a2, $zero, 8
	addi.d	$a0, $s2, 1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_191
.LBB1_121:                              # %if.else18.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a1, $a0, %pc_lo12(.L.str.34)
	ori	$a2, $zero, 5
	addi.d	$a0, $s2, 1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_204
.LBB1_122:                              # %if.end30.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ori	$a0, $zero, 101
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	bne	$a1, $a0, .LBB1_75
# %bb.123:                              # %sub_1.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.bu	$a0, $a2, 1
	ori	$a1, $zero, 110
	bne	$a0, $a1, .LBB1_75
# %bb.124:                              # %if.end30.tail.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.bu	$a0, $a2, 2
	ori	$a1, $zero, 100
	bne	$a0, $a1, .LBB1_75
# %bb.125:                              # %if.then.i11.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.b	$fp, $a2, 3
	bltz	$fp, .LBB1_127
# %bb.126:                              # %land.lhs.true.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $fp, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB1_75
.LBB1_127:                              # %TeX_math_end.exit.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ori	$a0, $zero, 101
	addi.d	$a1, $sp, 96
	pcaddu18i	$ra, %call36(TeX_math_check)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_59
	b	.LBB1_75
.LBB1_128:                              # %if.then76.i
                                        #   in Loop: Header=BB1_7 Depth=2
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
	b	.LBB1_61
.LBB1_129:                              # %if.then.i11.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.b	$s4, $s2, 4
	bltz	$s4, .LBB1_29
# %bb.130:                              # %land.lhs.true.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 1024
	beqz	$a0, .LBB1_29
	b	.LBB1_46
.LBB1_131:                              # %if.then13.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
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
	b	.LBB1_60
.LBB1_132:                              # %if.then.i.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.b	$fp, $s2, 5
	bltz	$fp, .LBB1_179
# %bb.133:                              # %land.lhs.true.i.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $fp, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB1_116
	b	.LBB1_179
.LBB1_134:                              # %if.else42.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ori	$a0, $zero, 101
	ld.d	$s8, $sp, 48                    # 8-byte Folded Reload
	bne	$s3, $a0, .LBB1_139
# %bb.135:                              # %sub_1.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.bu	$a0, $s2, 2
	ori	$a1, $zero, 110
	bne	$a0, $a1, .LBB1_139
# %bb.136:                              # %entry.tail.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.bu	$a0, $s2, 3
	ori	$a1, $zero, 100
	bne	$a0, $a1, .LBB1_139
# %bb.137:                              # %if.then.i.i.i44.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.b	$a0, $s2, 4
	bltz	$a0, .LBB1_221
# %bb.138:                              # %land.lhs.true.i.i.i46.i
                                        #   in Loop: Header=BB1_7 Depth=2
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $fp, $a0
	andi	$a0, $a0, 1024
	beqz	$a0, .LBB1_221
.LBB1_139:                              # %lor.lhs.false.i.i28.i
                                        #   in Loop: Header=BB1_7 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a1, $a0, %pc_lo12(.L.str.35)
	ori	$a2, $zero, 6
	move	$a0, $s5
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_189
.LBB1_140:                              # %lor.lhs.false3.i.i29.i
                                        #   in Loop: Header=BB1_7 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a1, $a0, %pc_lo12(.L.str.36)
	ori	$a2, $zero, 6
	move	$a0, $s5
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_202
.LBB1_141:                              # %lor.lhs.false6.i.i30.i
                                        #   in Loop: Header=BB1_7 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a1, $a0, %pc_lo12(.L.str.37)
	ori	$a2, $zero, 4
	move	$a0, $s5
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_208
.LBB1_142:                              # %sub_0177.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ori	$a0, $zero, 114
	bne	$s3, $a0, .LBB1_147
# %bb.143:                              # %sub_1178.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.bu	$a0, $s2, 2
	ori	$a1, $zero, 101
	bne	$a0, $a1, .LBB1_147
# %bb.144:                              # %lor.lhs.false9.tail.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.bu	$a0, $s2, 3
	ori	$a1, $zero, 102
	bne	$a0, $a1, .LBB1_147
# %bb.145:                              # %if.then.i84.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.b	$a0, $s2, 4
	bltz	$a0, .LBB1_221
# %bb.146:                              # %land.lhs.true.i86.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $fp, $a0
	andi	$a0, $a0, 1024
	beqz	$a0, .LBB1_221
.LBB1_147:                              # %lor.lhs.false12.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a1, $a0, %pc_lo12(.L.str.32)
	ori	$a2, $zero, 6
	move	$a0, $s5
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_211
.LBB1_148:                              # %lor.lhs.false15.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a1, $a0, %pc_lo12(.L.str.39)
	ori	$a2, $zero, 5
	move	$a0, $s5
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_213
.LBB1_149:                              # %lor.lhs.false18.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a1, $a0, %pc_lo12(.L.str.40)
	ori	$a2, $zero, 5
	move	$a0, $s5
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_215
.LBB1_150:                              # %lor.lhs.false21.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a1, $a0, %pc_lo12(.L.str.41)
	ori	$a2, $zero, 6
	move	$a0, $s5
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_217
.LBB1_151:                              # %lor.lhs.false24.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a1, $a0, %pc_lo12(.L.str.42)
	ori	$a2, $zero, 7
	move	$a0, $s5
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_219
.LBB1_152:                              # %lor.lhs.false27.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a1, $a0, %pc_lo12(.L.str.43)
	ori	$a2, $zero, 11
	move	$a0, $s5
	pcaddu18i	$ra, %call36(TeX_strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_221
# %bb.153:                              # %lor.lhs.false30.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a1, $a0, %pc_lo12(.L.str.44)
	ori	$a2, $zero, 13
	move	$a0, $s5
	pcaddu18i	$ra, %call36(TeX_strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_221
# %bb.154:                              # %lor.lhs.false33.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a1, $a0, %pc_lo12(.L.str.45)
	ori	$a2, $zero, 13
	move	$a0, $s5
	pcaddu18i	$ra, %call36(TeX_strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_221
# %bb.155:                              # %lor.lhs.false36.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a1, $a0, %pc_lo12(.L.str.46)
	ori	$a2, $zero, 10
	move	$a0, $s5
	pcaddu18i	$ra, %call36(TeX_strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_221
# %bb.156:                              # %lor.lhs.false39.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a1, $a0, %pc_lo12(.L.str.47)
	ori	$a2, $zero, 9
	move	$a0, $s5
	pcaddu18i	$ra, %call36(TeX_strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_221
# %bb.157:                              # %lor.lhs.false42.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a1, $a0, %pc_lo12(.L.str.48)
	ori	$a2, $zero, 13
	move	$a0, $s5
	pcaddu18i	$ra, %call36(TeX_strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_221
# %bb.158:                              # %lor.lhs.false45.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a1, $a0, %pc_lo12(.L.str.49)
	ori	$a2, $zero, 12
	move	$a0, $s5
	pcaddu18i	$ra, %call36(TeX_strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_221
# %bb.159:                              # %lor.lhs.false48.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a1, $a0, %pc_lo12(.L.str.50)
	ori	$a2, $zero, 7
	move	$a0, $s5
	pcaddu18i	$ra, %call36(TeX_strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_221
# %bb.160:                              # %lor.lhs.false51.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a1, $a0, %pc_lo12(.L.str.51)
	ori	$a2, $zero, 11
	move	$a0, $s5
	pcaddu18i	$ra, %call36(TeX_strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_221
# %bb.161:                              # %lor.lhs.false54.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a1, $a0, %pc_lo12(.L.str.52)
	ori	$a2, $zero, 7
	move	$a0, $s5
	pcaddu18i	$ra, %call36(TeX_strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_221
# %bb.162:                              # %if.else.i.i31.i
                                        #   in Loop: Header=BB1_7 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a1, $a0, %pc_lo12(.L.str.53)
	ori	$a2, $zero, 4
	move	$a0, $s5
	pcaddu18i	$ra, %call36(TeX_strncmp)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	beqz	$a0, .LBB1_230
# %bb.163:                              # %lor.lhs.false63.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a1, $a0, %pc_lo12(.L.str.54)
	ori	$a2, $zero, 10
	move	$a0, $s5
	pcaddu18i	$ra, %call36(TeX_strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_230
# %bb.164:                              # %lor.lhs.false67.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a1, $a0, %pc_lo12(.L.str.55)
	ori	$a2, $zero, 12
	move	$a0, $s5
	pcaddu18i	$ra, %call36(TeX_strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_230
# %bb.165:                              # %lor.lhs.false71.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a1, $a0, %pc_lo12(.L.str.56)
	ori	$a2, $zero, 9
	move	$a0, $s5
	pcaddu18i	$ra, %call36(TeX_strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_230
# %bb.166:                              # %lor.lhs.false75.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a1, $a0, %pc_lo12(.L.str.57)
	ori	$a2, $zero, 11
	move	$a0, $s5
	pcaddu18i	$ra, %call36(TeX_strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_230
# %bb.167:                              # %lor.lhs.false79.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a1, $a0, %pc_lo12(.L.str.58)
	ori	$a2, $zero, 10
	move	$a0, $s5
	pcaddu18i	$ra, %call36(TeX_strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_230
# %bb.168:                              # %if.else95.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a1, $a0, %pc_lo12(.L.str.59)
	ori	$a2, $zero, 4
	move	$a0, $s5
	pcaddu18i	$ra, %call36(TeX_strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_232
# %bb.169:                              # %while.body117.i.i.i.preheader
                                        #   in Loop: Header=BB1_7 Depth=2
	addi.d	$a0, $s2, 2
.LBB1_170:                              # %while.body117.i.i.i
                                        #   Parent Loop BB1_6 Depth=1
                                        #     Parent Loop BB1_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.d	$a0, $sp, 96
	ld.b	$a1, $a0, 0
	addi.d	$a0, $a0, 1
	ori	$a2, $zero, 64
	beq	$a1, $a2, .LBB1_170
# %bb.171:                              # %while.body117.i.i.i
                                        #   in Loop: Header=BB1_170 Depth=3
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $fp, $a1
	andi	$a1, $a1, 1024
	bnez	$a1, .LBB1_170
# %bb.172:                              # %while.end119.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	addi.d	$a0, $a0, -2
	st.d	$a0, $sp, 96
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 48                    # 8-byte Folded Reload
	b	.LBB1_61
.LBB1_173:                              # %if.then.i16.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.b	$fp, $s2, 8
	bltz	$fp, .LBB1_179
# %bb.174:                              # %land.lhs.true.i18.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $fp, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB1_117
	b	.LBB1_179
.LBB1_175:                              # %if.then.i28.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.b	$fp, $s2, 5
	bltz	$fp, .LBB1_179
# %bb.176:                              # %land.lhs.true.i30.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $fp, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB1_118
	b	.LBB1_179
.LBB1_177:                              # %if.then.i40.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.b	$fp, $s2, 9
	bltz	$fp, .LBB1_179
# %bb.178:                              # %land.lhs.true.i42.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $fp, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB1_119
.LBB1_179:                              # %if.then.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.w	$a0, $s8, 0
	addi.d	$a0, $a0, 2
	st.w	$a0, $s8, 0
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
.LBB1_180:                              # %if.end25.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.bu	$a1, $a2, 0
	beq	$a1, $s3, .LBB1_59
# %bb.181:                              # %if.end25.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	beqz	$a1, .LBB1_59
# %bb.182:                              # %if.end25.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.bu	$a0, $s7, 57
	beq	$a1, $a0, .LBB1_59
# %bb.183:                              # %while.body.i90.i.i.i.preheader
                                        #   in Loop: Header=BB1_7 Depth=2
	addi.d	$a1, $a2, 1
	.p2align	4, , 16
.LBB1_184:                              # %while.body.i90.i.i.i
                                        #   Parent Loop BB1_6 Depth=1
                                        #     Parent Loop BB1_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.d	$a1, $sp, 96
	ld.bu	$a2, $a1, 0
	beq	$a2, $s3, .LBB1_59
# %bb.185:                              # %while.body.i90.i.i.i
                                        #   in Loop: Header=BB1_184 Depth=3
	beqz	$a2, .LBB1_59
# %bb.186:                              # %while.body.i90.i.i.i
                                        #   in Loop: Header=BB1_184 Depth=3
	addi.d	$a1, $a1, 1
	bne	$a2, $a0, .LBB1_184
	b	.LBB1_59
.LBB1_187:                              # %if.then.i52.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.b	$fp, $s2, 7
	bltz	$fp, .LBB1_193
# %bb.188:                              # %land.lhs.true.i54.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $fp, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB1_120
	b	.LBB1_193
.LBB1_189:                              # %if.then.i48.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.b	$a0, $s2, 7
	bltz	$a0, .LBB1_221
# %bb.190:                              # %land.lhs.true.i50.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $fp, $a0
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB1_140
	b	.LBB1_221
.LBB1_191:                              # %if.then.i64.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.b	$fp, $s2, 9
	bltz	$fp, .LBB1_193
# %bb.192:                              # %land.lhs.true.i66.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $fp, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB1_121
.LBB1_193:                              # %if.then14.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.w	$a0, $s8, 0
	addi.d	$a0, $a0, 2
	st.w	$a0, $s8, 0
	addi.d	$a2, $s2, 1
	ld.bu	$a0, $a2, 0
	beq	$a0, $s3, .LBB1_200
# %bb.194:                              # %if.then14.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	beqz	$a0, .LBB1_200
# %bb.195:                              # %if.then14.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.bu	$a1, $s7, 57
	beq	$a0, $a1, .LBB1_200
	.p2align	4, , 16
.LBB1_196:                              # %while.body.i.i.i.i
                                        #   Parent Loop BB1_6 Depth=1
                                        #     Parent Loop BB1_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a0, $s5, 0
	st.d	$s5, $sp, 96
	addi.d	$s5, $s5, 1
	beq	$a0, $s3, .LBB1_199
# %bb.197:                              # %while.body.i.i.i.i
                                        #   in Loop: Header=BB1_196 Depth=3
	beqz	$a0, .LBB1_199
# %bb.198:                              # %while.body.i.i.i.i
                                        #   in Loop: Header=BB1_196 Depth=3
	bne	$a0, $a1, .LBB1_196
.LBB1_199:                              # %TeX_open_paren.exit.i.i.i.loopexit
                                        #   in Loop: Header=BB1_7 Depth=2
	addi.d	$s2, $s5, -2
	addi.d	$a2, $s5, -1
.LBB1_200:                              # %TeX_open_paren.exit.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	beqz	$a0, .LBB1_210
# %bb.201:                              # %if.then16.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	addi.d	$a2, $s2, 2
	st.d	$a2, $sp, 96
	b	.LBB1_180
.LBB1_202:                              # %if.then.i60.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.b	$a0, $s2, 7
	bltz	$a0, .LBB1_221
# %bb.203:                              # %land.lhs.true.i62.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $fp, $a0
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB1_141
	b	.LBB1_221
.LBB1_204:                              # %if.then.i77.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.b	$fp, $s2, 6
	bltz	$fp, .LBB1_206
# %bb.205:                              # %land.lhs.true.i79.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $fp, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB1_122
.LBB1_206:                              # %TeX_LR_begin.exit.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ori	$a0, $zero, 1
	addi.d	$a1, $sp, 96
	pcaddu18i	$ra, %call36(TeX_LR_check)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_59
# %bb.207:                              # %TeX_LR_begin.exit.if.end30_crit_edge.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.d	$a0, $sp, 96
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.bu	$a0, $a0, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB1_122
.LBB1_208:                              # %if.then.i72.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.b	$a0, $s2, 5
	bltz	$a0, .LBB1_221
# %bb.209:                              # %land.lhs.true.i74.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $fp, $a0
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB1_142
	b	.LBB1_221
.LBB1_210:                              # %if.else17.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ori	$a1, $zero, 114
	st.b	$a1, $a0, 0
	b	.LBB1_180
.LBB1_211:                              # %if.then.i96.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.b	$a0, $s2, 7
	bltz	$a0, .LBB1_221
# %bb.212:                              # %land.lhs.true.i98.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $fp, $a0
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB1_148
	b	.LBB1_221
.LBB1_213:                              # %if.then.i108.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.b	$a0, $s2, 6
	bltz	$a0, .LBB1_221
# %bb.214:                              # %land.lhs.true.i110.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $fp, $a0
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB1_149
	b	.LBB1_221
.LBB1_215:                              # %if.then.i120.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.b	$a0, $s2, 6
	bltz	$a0, .LBB1_221
# %bb.216:                              # %land.lhs.true.i122.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $fp, $a0
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB1_150
	b	.LBB1_221
.LBB1_217:                              # %if.then.i132.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.b	$a0, $s2, 7
	bltz	$a0, .LBB1_221
# %bb.218:                              # %land.lhs.true.i134.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $fp, $a0
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB1_151
	b	.LBB1_221
.LBB1_219:                              # %if.then.i49
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.b	$a0, $s2, 8
	bltz	$a0, .LBB1_221
# %bb.220:                              # %land.lhs.true.i51
                                        #   in Loop: Header=BB1_7 Depth=2
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $fp, $a0
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB1_152
.LBB1_221:                              # %if.then.i28.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	beqz	$s3, .LBB1_228
# %bb.222:                              # %if.then.i28.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.bu	$a0, $s7, 58
	beq	$s3, $a0, .LBB1_228
# %bb.223:                              # %if.then.i28.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.bu	$a1, $s7, 62
	beq	$s3, $a1, .LBB1_228
# %bb.224:                              # %while.body.i.i.i38.i.preheader
                                        #   in Loop: Header=BB1_7 Depth=2
	addi.d	$a2, $s2, 2
	.p2align	4, , 16
.LBB1_225:                              # %while.body.i.i.i38.i
                                        #   Parent Loop BB1_6 Depth=1
                                        #     Parent Loop BB1_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.d	$a2, $sp, 96
	ld.bu	$s3, $a2, 0
	beqz	$s3, .LBB1_228
# %bb.226:                              # %while.body.i.i.i38.i
                                        #   in Loop: Header=BB1_225 Depth=3
	beq	$s3, $a0, .LBB1_228
# %bb.227:                              # %while.body.i.i.i38.i
                                        #   in Loop: Header=BB1_225 Depth=3
	addi.d	$a2, $a2, 1
	bne	$s3, $a1, .LBB1_225
.LBB1_228:                              # %TeX_skip_parens.exit.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	bnez	$s3, .LBB1_61
.LBB1_229:                              # %if.then59.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ori	$a1, $zero, 114
	st.b	$a1, $a0, 0
	b	.LBB1_61
.LBB1_230:                              # %if.then83.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	addi.d	$a0, $sp, 96
	pcaddu18i	$ra, %call36(TeX_skip_parens)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96
	ld.bu	$a1, $a0, 0
	beqz	$a1, .LBB1_229
# %bb.231:                              # %if.else88.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 96
	addi.d	$a0, $sp, 96
	pcaddu18i	$ra, %call36(TeX_skip_parens)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96
	ld.bu	$a0, $a0, 0
	bnez	$a0, .LBB1_61
	b	.LBB1_229
.LBB1_232:                              # %if.then99.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.bu	$a0, $s2, 5
	addi.d	$a1, $s2, 6
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 48                    # 8-byte Folded Reload
.LBB1_233:                              # %while.cond.i.i.i
                                        #   Parent Loop BB1_6 Depth=1
                                        #     Parent Loop BB1_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.d	$a1, $sp, 96
	ld.bu	$a2, $a1, 0
	beq	$a2, $a0, .LBB1_61
# %bb.234:                              # %while.cond.i.i.i
                                        #   in Loop: Header=BB1_233 Depth=3
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB1_233
	b	.LBB1_61
	.p2align	4, , 16
.LBB1_235:                              #   in Loop: Header=BB1_6 Depth=1
	ori	$a0, $zero, 1
	bnez	$a0, .LBB1_239
	b	.LBB1_241
	.p2align	4, , 16
.LBB1_236:                              #   in Loop: Header=BB1_6 Depth=1
	move	$s3, $zero
.LBB1_237:                              # %while.end245.loopexit100.i
                                        #   in Loop: Header=BB1_6 Depth=1
	andi	$a0, $s3, 255
	sltui	$a0, $a0, 1
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	bnez	$a0, .LBB1_239
	b	.LBB1_241
	.p2align	4, , 16
.LBB1_238:                              #   in Loop: Header=BB1_6 Depth=1
	ori	$a0, $zero, 1
	move	$s2, $a3
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	beqz	$a0, .LBB1_241
.LBB1_239:                              # %while.end245.i
                                        #   in Loop: Header=BB1_6 Depth=1
	ld.b	$a0, $s3, %pc_lo12(TeX_comment)
	andi	$a0, $a0, 1
	beqz	$a0, .LBB1_241
# %bb.240:                              # %if.then251.i
                                        #   in Loop: Header=BB1_6 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(save_math_mode)
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.b	$a1, $a1, %pc_lo12(save_LaTeX_Mode)
	st.w	$a0, $s8, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	st.b	$a1, $a0, 0
	st.b	$zero, $s3, %pc_lo12(TeX_comment)
.LBB1_241:                              # %skiptoword.exit
                                        #   in Loop: Header=BB1_6 Depth=1
	ld.d	$a0, $s0, 0
	beq	$s2, $a0, .LBB1_243
# %bb.242:                              # %if.then173
                                        #   in Loop: Header=BB1_6 Depth=1
	sub.w	$a1, $s2, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(copyout)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
.LBB1_243:                              # %if.end175
                                        #   in Loop: Header=BB1_6 Depth=1
	ld.bu	$a1, $a0, 0
	beqz	$a1, .LBB1_304
# %bb.244:                              # %if.else.i37.preheader
                                        #   in Loop: Header=BB1_6 Depth=1
	move	$fp, $zero
	b	.LBB1_248
	.p2align	4, , 16
.LBB1_245:                              # %if.else8.i
                                        #   in Loop: Header=BB1_248 Depth=2
	add.d	$a1, $s7, $a1
	ld.bu	$a2, $a1, 982
	ori	$a0, $zero, 1
	beqz	$a2, .LBB1_251
.LBB1_246:                              # %if.then7.i
                                        #   in Loop: Header=BB1_248 Depth=2
	move	$fp, $zero
.LBB1_247:                              # %if.end33.i
                                        #   in Loop: Header=BB1_248 Depth=2
	ldx.bu	$a1, $s2, $a0
	add.d	$a0, $s2, $a0
	beqz	$a1, .LBB1_255
.LBB1_248:                              # %if.else.i37
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a2, $s7, $a1
	ld.bu	$a2, $a2, 1894
	move	$s2, $a0
	beqz	$a2, .LBB1_245
# %bb.249:                              # %land.lhs.true.i40
                                        #   in Loop: Header=BB1_248 Depth=2
	move	$a0, $s2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(stringcharlen)
	jirl	$ra, $ra, 0
	bgtz	$a0, .LBB1_246
# %bb.250:                              # %land.lhs.true.if.else8_crit_edge.i
                                        #   in Loop: Header=BB1_248 Depth=2
	ld.bu	$a1, $s2, 0
	b	.LBB1_245
	.p2align	4, , 16
.LBB1_251:                              # %if.else13.i
                                        #   in Loop: Header=BB1_248 Depth=2
	ld.bu	$a1, $a1, 1666
	beqz	$a1, .LBB1_257
# %bb.252:                              # %if.then17.i
                                        #   in Loop: Header=BB1_248 Depth=2
	beqz	$fp, .LBB1_254
# %bb.253:                              # %if.else21.i
                                        #   in Loop: Header=BB1_248 Depth=2
	addi.d	$a1, $s2, -1
	bne	$fp, $a1, .LBB1_247
	b	.LBB1_257
.LBB1_254:                              #   in Loop: Header=BB1_248 Depth=2
	move	$fp, $s2
	b	.LBB1_247
	.p2align	4, , 16
.LBB1_255:                              # %if.then.i44
                                        #   in Loop: Header=BB1_6 Depth=1
	ld.bu	$a1, $s3, %pc_lo12(TeX_comment)
	beqz	$a1, .LBB1_258
# %bb.256:                              # %if.then2.i
                                        #   in Loop: Header=BB1_6 Depth=1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(save_math_mode)
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.b	$a2, $a2, %pc_lo12(save_LaTeX_Mode)
	st.w	$a1, $s8, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.b	$a2, $a1, 0
	st.b	$zero, $s3, %pc_lo12(TeX_comment)
	b	.LBB1_258
	.p2align	4, , 16
.LBB1_257:                              #   in Loop: Header=BB1_6 Depth=1
	move	$a0, $s2
.LBB1_258:                              # %skipoverword.exit
                                        #   in Loop: Header=BB1_6 Depth=1
	sltui	$a1, $fp, 1
	ld.d	$a2, $s0, 0
	masknez	$a3, $fp, $a1
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a3
	move	$a1, $s1
	ori	$t0, $zero, 118
	bgeu	$a2, $a0, .LBB1_272
# %bb.259:                              # %while.body189.preheader
                                        #   in Loop: Header=BB1_6 Depth=1
	nor	$a1, $a2, $zero
	add.d	$a1, $a1, $a0
	ori	$a3, $zero, 7
	bgeu	$a1, $a3, .LBB1_265
# %bb.260:                              #   in Loop: Header=BB1_6 Depth=1
	move	$a1, $zero
.LBB1_261:                              # %while.body189.preheader337
                                        #   in Loop: Header=BB1_6 Depth=1
	move	$a3, $a2
.LBB1_262:                              # %while.body189.preheader337
                                        #   in Loop: Header=BB1_6 Depth=1
	addi.d	$a2, $a3, 1
	.p2align	4, , 16
.LBB1_263:                              # %while.body189
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.d	$a2, $s0, 0
	ld.b	$a4, $a2, -1
	move	$a3, $a1
	addi.d	$a1, $a1, 1
	stx.b	$a4, $s1, $a3
	bgeu	$a2, $a0, .LBB1_271
# %bb.264:                              # %while.body189
                                        #   in Loop: Header=BB1_263 Depth=2
	addi.d	$a2, $a2, 1
	bltu	$a3, $t0, .LBB1_263
	b	.LBB1_271
	.p2align	4, , 16
.LBB1_265:                              # %vector.memcheck
                                        #   in Loop: Header=BB1_6 Depth=1
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
	bnez	$a6, .LBB1_261
# %bb.266:                              # %vector.memcheck
                                        #   in Loop: Header=BB1_6 Depth=1
	add.d	$a6, $a2, $a3
	addi.d	$a6, $a6, 1
	sltu	$a7, $s0, $a6
	sltu	$a5, $a2, $a5
	and	$a5, $a7, $a5
	bnez	$a5, .LBB1_261
# %bb.267:                              # %vector.memcheck
                                        #   in Loop: Header=BB1_6 Depth=1
	sltu	$a5, $s1, $a6
	sltu	$a4, $a2, $a4
	and	$a4, $a5, $a4
	bnez	$a4, .LBB1_261
# %bb.268:                              # %vector.ph
                                        #   in Loop: Header=BB1_6 Depth=1
	addi.d	$a4, $a3, 1
	andi	$a1, $a4, 252
	add.d	$a3, $a2, $a1
	addi.d	$a5, $s1, 2
	move	$a6, $a1
	.p2align	4, , 16
.LBB1_269:                              # %vector.body
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a7, %pc_hi20(.LCPI1_0)
	vld	$vr0, $a7, %pc_lo12(.LCPI1_0)
	vreplgr2vr.d	$vr1, $a2
	vadd.d	$vr0, $vr1, $vr0
	vpickve2gr.d	$a7, $vr0, 0
	ld.w	$a7, $a7, 0
	st.w	$a7, $a5, -2
	addi.d	$a2, $a2, 4
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 4
	bnez	$a6, .LBB1_269
# %bb.270:                              # %middle.block
                                        #   in Loop: Header=BB1_6 Depth=1
	vpickve2gr.d	$a2, $vr0, 1
	addi.d	$a2, $a2, 3
	st.d	$a2, $s0, 0
	bne	$a4, $a1, .LBB1_262
	.p2align	4, , 16
.LBB1_271:                              # %while.end192.loopexit
                                        #   in Loop: Header=BB1_6 Depth=1
	add.d	$a1, $s1, $a1
.LBB1_272:                              # %while.end192
                                        #   in Loop: Header=BB1_6 Depth=1
	st.b	$zero, $a1, 0
	pcalau12i	$a0, %got_pc_hi20(itoken)
	ld.d	$a0, $a0, %got_pc_lo12(itoken)
	ori	$a2, $zero, 100
	move	$a1, $s1
	move	$a3, $zero
	pcaddu18i	$ra, %call36(strtoichar)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_286
.LBB1_273:                              # %if.end197
                                        #   in Loop: Header=BB1_6 Depth=1
	pcalau12i	$a0, %got_pc_hi20(itoken)
	ld.d	$a0, $a0, %got_pc_lo12(itoken)
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(lflag)
	ld.d	$s3, $a1, %got_pc_lo12(lflag)
	ld.w	$a1, $s3, 0
	beqz	$a1, .LBB1_278
# %bb.274:                              # %if.then201
                                        #   in Loop: Header=BB1_6 Depth=1
	addi.w	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(minword)
	ld.d	$a1, $a1, %got_pc_lo12(minword)
	ld.w	$a1, $a1, 0
	bge	$a1, $a0, .LBB1_302
# %bb.275:                              # %land.lhs.true204
                                        #   in Loop: Header=BB1_6 Depth=1
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
	bnez	$a0, .LBB1_302
# %bb.276:                              # %land.lhs.true209
                                        #   in Loop: Header=BB1_6 Depth=1
	pcalau12i	$a0, %got_pc_hi20(itoken)
	ld.d	$a0, $a0, %got_pc_lo12(itoken)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(compoundgood)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_302
# %bb.277:                              # %if.then212
                                        #   in Loop: Header=BB1_6 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	move	$a0, $s6
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB1_302
	.p2align	4, , 16
.LBB1_278:                              # %if.else
                                        #   in Loop: Header=BB1_6 Depth=1
	pcalau12i	$a1, %got_pc_hi20(aflag)
	ld.d	$a1, $a1, %got_pc_lo12(aflag)
	ld.w	$a1, $a1, 0
	beqz	$a1, .LBB1_284
# %bb.279:                              # %if.then216
                                        #   in Loop: Header=BB1_6 Depth=1
	addi.w	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(minword)
	ld.d	$a1, $a1, %got_pc_lo12(minword)
	ld.w	$a1, $a1, 0
	bge	$a1, $a0, .LBB1_4
# %bb.280:                              # %if.end224
                                        #   in Loop: Header=BB1_6 Depth=1
	pcalau12i	$a0, %got_pc_hi20(itoken)
	ld.d	$a0, $a0, %got_pc_lo12(itoken)
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(good)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_288
# %bb.281:                              # %if.then227
                                        #   in Loop: Header=BB1_6 Depth=1
	pcalau12i	$a0, %got_pc_hi20(hits)
	ld.d	$a0, $a0, %got_pc_lo12(hits)
	ld.d	$a1, $a0, 8
	ld.d	$a2, $a0, 16
	or	$a2, $a1, $a2
	pcalau12i	$a1, %got_pc_hi20(terse)
	ld.d	$a1, $a1, %got_pc_lo12(terse)
	ld.w	$a1, $a1, 0
	bnez	$a2, .LBB1_292
# %bb.282:                              # %if.then233
                                        #   in Loop: Header=BB1_6 Depth=1
	bnez	$a1, .LBB1_302
# %bb.283:                              # %if.then235
                                        #   in Loop: Header=BB1_6 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	b	.LBB1_291
.LBB1_284:                              # %if.else290
                                        #   in Loop: Header=BB1_6 Depth=1
	pcalau12i	$a0, %got_pc_hi20(quit)
	ld.d	$a0, $a0, %got_pc_lo12(quit)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB1_302
# %bb.285:                              # %if.then292
                                        #   in Loop: Header=BB1_6 Depth=1
	pcalau12i	$a0, %got_pc_hi20(itoken)
	ld.d	$a2, $a0, %got_pc_lo12(itoken)
	ori	$a1, $zero, 120
	ori	$a3, $zero, 120
	move	$a0, $s1
	move	$a4, $s0
	pcaddu18i	$ra, %call36(correct)
	jirl	$ra, $ra, 0
	b	.LBB1_302
.LBB1_286:                              # %if.then195
                                        #   in Loop: Header=BB1_6 Depth=1
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
	b	.LBB1_273
.LBB1_287:                              # %if.then221
                                        #   in Loop: Header=BB1_6 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $s6
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB1_5
.LBB1_288:                              # %if.else244
                                        #   in Loop: Header=BB1_6 Depth=1
	pcalau12i	$a0, %got_pc_hi20(itoken)
	ld.d	$a0, $a0, %got_pc_lo12(itoken)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(compoundgood)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_295
# %bb.289:                              # %if.then247
                                        #   in Loop: Header=BB1_6 Depth=1
	pcalau12i	$a0, %got_pc_hi20(terse)
	ld.d	$a0, $a0, %got_pc_lo12(terse)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB1_302
# %bb.290:                              # %if.then249
                                        #   in Loop: Header=BB1_6 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
.LBB1_291:                              # %if.end295
                                        #   in Loop: Header=BB1_6 Depth=1
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $s6
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB1_302
.LBB1_292:                              # %if.else238
                                        #   in Loop: Header=BB1_6 Depth=1
	bnez	$a1, .LBB1_302
# %bb.293:                              # %if.then240
                                        #   in Loop: Header=BB1_6 Depth=1
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a0, 8
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB1_302
.LBB1_294:                              #   in Loop: Header=BB1_6 Depth=1
	ori	$a0, $zero, 1
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	bnez	$a0, .LBB1_239
	b	.LBB1_241
.LBB1_295:                              # %if.else252
                                        #   in Loop: Header=BB1_6 Depth=1
	pcalau12i	$a0, %got_pc_hi20(itoken)
	ld.d	$a0, $a0, %got_pc_lo12(itoken)
	pcaddu18i	$ra, %call36(makepossibilities)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(pcount)
	ld.d	$a0, $a0, %got_pc_lo12(pcount)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB1_301
# %bb.296:                              # %if.then254
                                        #   in Loop: Header=BB1_6 Depth=1
	pcalau12i	$a0, %got_pc_hi20(easypossibilities)
	ld.d	$a0, $a0, %got_pc_lo12(easypossibilities)
	ld.w	$s2, $a0, 0
	ld.d	$fp, $s0, 0
	sltui	$s4, $s2, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(contextbufs)
	ld.d	$a1, $a1, %got_pc_lo12(contextbufs)
	add.d	$a0, $a1, $a0
	sub.d	$a0, $fp, $a0
	pcalau12i	$a1, %got_pc_hi20(contextoffset)
	ld.d	$a1, $a1, %got_pc_lo12(contextoffset)
	ld.w	$a1, $a1, 0
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
	beqz	$a0, .LBB1_300
# %bb.297:                              # %for.body.peel.next
                                        #   in Loop: Header=BB1_6 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	ori	$a2, $zero, 58
	move	$a0, $s6
	move	$a3, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 120
	ori	$fp, $zero, 99
	.p2align	4, , 16
.LBB1_298:                              # %for.body
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a0, $s2, 0
	beqz	$a0, .LBB1_300
# %bb.299:                              # %if.end272
                                        #   in Loop: Header=BB1_298 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	ori	$a2, $zero, 44
	move	$a0, $s6
	move	$a3, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, -1
	addi.d	$s2, $s2, 120
	bnez	$fp, .LBB1_298
.LBB1_300:                              # %for.end
                                        #   in Loop: Header=BB1_6 Depth=1
	ori	$a0, $zero, 10
	move	$a1, $s6
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	b	.LBB1_302
.LBB1_301:                              # %if.else279
                                        #   in Loop: Header=BB1_6 Depth=1
	ld.d	$fp, $s0, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(contextbufs)
	ld.d	$a1, $a1, %got_pc_lo12(contextbufs)
	add.d	$a0, $a1, $a0
	sub.d	$a0, $fp, $a0
	pcalau12i	$a1, %got_pc_hi20(contextoffset)
	ld.d	$a1, $a1, %got_pc_lo12(contextoffset)
	ld.w	$a1, $a1, 0
	add.w	$a3, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a1, $a0, %pc_lo12(.L.str.14)
	move	$a0, $s6
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB1_302:                              # %if.end295
                                        #   in Loop: Header=BB1_6 Depth=1
	pcalau12i	$a0, %got_pc_hi20(aflag)
	ld.d	$a0, $a0, %got_pc_lo12(aflag)
	ld.w	$a0, $a0, 0
	ld.w	$a1, $s3, 0
	or	$a0, $a0, $a1
	bnez	$a0, .LBB1_5
# %bb.303:                              # %if.then299
                                        #   in Loop: Header=BB1_6 Depth=1
	move	$a0, $s1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	b	.LBB1_5
.LBB1_304:                              # %for.end302
	pcalau12i	$a0, %got_pc_hi20(lflag)
	ld.d	$a0, $a0, %got_pc_lo12(lflag)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB1_341
# %bb.305:                              # %land.lhs.true304
	ori	$a0, $zero, 10
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB1_307
.LBB1_306:                              # %land.lhs.true304
	pcalau12i	$a0, %got_pc_hi20(aflag)
	ld.d	$a0, $a0, %got_pc_lo12(aflag)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB1_341
.LBB1_307:                              # %cleanup.sink.split
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
.LBB1_308:                              # %if.then6
	pcalau12i	$a0, %got_pc_hi20(contextbufs)
	ld.d	$s2, $a0, %got_pc_lo12(contextbufs)
	ld.bu	$s3, $s2, 0
	pcalau12i	$a0, %got_pc_hi20(hashheader)
	ld.d	$fp, $a0, %got_pc_lo12(hashheader)
	ld.bu	$a0, $fp, 50
	bne	$s3, $a0, .LBB1_315
# %bb.309:                              # %land.lhs.true
	pcalau12i	$a0, %got_pc_hi20(contextbufs)
	ld.d	$s2, $a0, %got_pc_lo12(contextbufs)
	ld.w	$a0, $s2, 1
	lu12i.w	$a1, 475654
	ori	$a1, $a1, 1641
	beq	$a0, $a1, .LBB1_311
# %bb.310:                              # %lor.lhs.false
	ld.w	$a0, $s2, 1
	lu12i.w	$a1, 451078
	ori	$a1, $a1, 1641
	bne	$a0, $a1, .LBB1_315
.LBB1_311:                              # %if.then18
	ori	$a1, $zero, 5
	move	$a0, $s0
	pcaddu18i	$ra, %call36(copyout)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s0, 0
	ld.b	$s3, $s2, 0
	blez	$s3, .LBB1_315
# %bb.312:                              # %land.rhs28.lr.ph
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s3, 1
	ldx.hu	$a0, $a0, $a1
	slli.d	$a0, $a0, 50
	bgez	$a0, .LBB1_315
	.p2align	4, , 16
.LBB1_313:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ori	$a1, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(copyout)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s0, 0
	ld.b	$s3, $s2, 0
	blez	$s3, .LBB1_315
# %bb.314:                              # %land.rhs28
                                        #   in Loop: Header=BB1_313 Depth=1
	ld.d	$a0, $s1, 0
	slli.d	$a1, $s3, 1
	ldx.hu	$a0, $a0, $a1
	slli.d	$a0, $a0, 50
	bltz	$a0, .LBB1_313
.LBB1_315:                              # %if.end36
	ld.bu	$a0, $fp, 50
	andi	$a1, $s3, 255
	bne	$a1, $a0, .LBB1_331
# %bb.316:                              # %land.lhs.true41
	ld.bu	$a0, $s2, 1
	ori	$a1, $zero, 110
	beq	$a0, $a1, .LBB1_321
# %bb.317:                              # %land.lhs.true41
	ori	$a1, $zero, 100
	bne	$a0, $a1, .LBB1_331
# %bb.318:                              # %sub_1
	ld.bu	$a0, $s2, 2
	ori	$a1, $zero, 115
	bne	$a0, $a1, .LBB1_320
# %bb.319:                              # %land.lhs.true41.tail
	ld.bu	$a0, $s2, 3
	ori	$a1, $zero, 32
	beq	$a0, $a1, .LBB1_323
.LBB1_320:                              # %sub_161
	ld.bu	$a0, $s2, 2
	ori	$a1, $zero, 101
	beq	$a0, $a1, .LBB1_322
	b	.LBB1_331
.LBB1_321:                              # %sub_165
	ld.bu	$a0, $s2, 2
	ori	$a1, $zero, 114
	bne	$a0, $a1, .LBB1_331
.LBB1_322:                              # %lor.lhs.false51.tail
	ld.bu	$a0, $s2, 3
	ori	$a1, $zero, 32
	bne	$a0, $a1, .LBB1_331
.LBB1_323:                              # %if.then56
	ori	$a1, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(copyout)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s0, 0
	ld.b	$s3, $s2, 0
	blez	$s3, .LBB1_327
# %bb.324:                              # %land.rhs68.lr.ph
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s3, 1
	ldx.hu	$a0, $a0, $a1
	slli.d	$a0, $a0, 50
	bgez	$a0, .LBB1_329
	.p2align	4, , 16
.LBB1_325:                              # %while.body78
                                        # =>This Inner Loop Header: Depth=1
	ori	$a1, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(copyout)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s0, 0
	ld.b	$s3, $s2, 0
	blez	$s3, .LBB1_327
# %bb.326:                              # %land.rhs68
                                        #   in Loop: Header=BB1_325 Depth=1
	ld.d	$a0, $s1, 0
	slli.d	$a1, $s3, 1
	ldx.hu	$a0, $a0, $a1
	slli.d	$a0, $a0, 50
	bltz	$a0, .LBB1_325
	b	.LBB1_329
.LBB1_327:                              # %while.end79
	bnez	$s3, .LBB1_329
	b	.LBB1_340
	.p2align	4, , 16
.LBB1_328:                              # %while.body101
                                        #   in Loop: Header=BB1_329 Depth=1
	ori	$a1, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(copyout)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s0, 0
	ld.bu	$s3, $s2, 0
	beqz	$s3, .LBB1_340
.LBB1_329:                              # %land.lhs.true87
                                        # =>This Inner Loop Header: Depth=1
	ext.w.b	$a0, $s3
	bltz	$a0, .LBB1_328
# %bb.330:                              # %land.rhs91
                                        #   in Loop: Header=BB1_329 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	andi	$a1, $s3, 255
	slli.d	$a1, $a1, 1
	ldx.hu	$a0, $a0, $a1
	slli.d	$a0, $a0, 50
	bgez	$a0, .LBB1_328
.LBB1_331:                              # %if.end117
	ld.w	$a0, $s4, 0
	bnez	$a0, .LBB1_3
# %bb.332:                              # %if.end117
	ld.bu	$a1, $fp, 50
	andi	$a0, $s3, 255
	bne	$a0, $a1, .LBB1_3
# %bb.333:                              # %while.cond125.preheader
	beqz	$a0, .LBB1_340
# %bb.334:                              # %land.lhs.true132.preheader
	pcalau12i	$a0, %got_pc_hi20(aflag)
	ld.d	$fp, $a0, %got_pc_lo12(aflag)
	pcalau12i	$a0, %got_pc_hi20(lflag)
	ld.d	$s4, $a0, %got_pc_lo12(lflag)
	b	.LBB1_336
	.p2align	4, , 16
.LBB1_335:                              # %if.end154
                                        #   in Loop: Header=BB1_336 Depth=1
	addi.d	$a0, $s2, 1
	st.d	$a0, $s0, 0
	ld.bu	$s3, $s2, 1
	move	$s2, $a0
	beqz	$s3, .LBB1_340
.LBB1_336:                              # %land.lhs.true132
                                        # =>This Inner Loop Header: Depth=1
	ext.w.b	$s1, $s3
	bltz	$s1, .LBB1_338
# %bb.337:                              # %land.rhs136
                                        #   in Loop: Header=BB1_336 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	andi	$a1, $s3, 255
	slli.d	$a1, $a1, 1
	ldx.hu	$a0, $a0, $a1
	slli.d	$a0, $a0, 50
	bltz	$a0, .LBB1_343
.LBB1_338:                              # %while.body147
                                        #   in Loop: Header=BB1_336 Depth=1
	ld.w	$a0, $fp, 0
	ld.w	$a1, $s4, 0
	or	$a0, $a0, $a1
	bnez	$a0, .LBB1_335
# %bb.339:                              # %if.then151
                                        #   in Loop: Header=BB1_336 Depth=1
	move	$a0, $s1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s0, 0
	b	.LBB1_335
.LBB1_340:                              # %if.then106
	pcalau12i	$a0, %got_pc_hi20(lflag)
	ld.d	$a0, $a0, %got_pc_lo12(lflag)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB1_342
.LBB1_341:                              # %cleanup
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
.LBB1_342:                              # %land.lhs.true108
	ori	$a0, $zero, 10
	bne	$s5, $a0, .LBB1_306
	b	.LBB1_307
.LBB1_343:
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	b	.LBB1_3
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
	move	$a1, $a0
	pcalau12i	$a0, %got_pc_hi20(hashheader)
	ld.d	$s1, $a0, %got_pc_lo12(hashheader)
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
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(hashheader)
	ld.d	$s2, $a0, %got_pc_lo12(hashheader)
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
	ori	$a0, $zero, 1
	bltz	$a1, .LBB3_32
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
