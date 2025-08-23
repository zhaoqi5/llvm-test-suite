	.file	"z44.c"
	.text
	.globl	VerticalHyphenate               # -- Begin function VerticalHyphenate
	.p2align	5
	.type	VerticalHyphenate,@function
VerticalHyphenate:                      # @VerticalHyphenate
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
	move	$fp, $a0
	ld.bu	$a0, $a0, 32
	ori	$a1, $zero, 18
	beq	$a0, $a1, .LBB0_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a5, $a0, %pc_lo12(.L.str.1)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_2:                                # %if.end
	ld.d	$a0, $fp, 8
	beq	$a0, $fp, .LBB0_148
# %bb.3:                                # %for.cond6.preheader.preheader
	move	$s0, $zero
	move	$s8, $zero
	move	$s4, $zero
	ori	$a1, $zero, 26
	ori	$a2, $zero, 9
	ori	$a3, $zero, 15
	ori	$a4, $zero, 19
	ori	$a5, $zero, 24
	ori	$a6, $zero, 1
                                        # implicit-def: $r11
                                        # kill: killed $r11
.LBB0_4:                                # %for.cond6.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #     Child Loop BB0_11 Depth 2
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_16 Depth 2
                                        #     Child Loop BB0_20 Depth 2
	move	$a7, $s0
	move	$t0, $a0
	.p2align	4, , 16
.LBB0_5:                                # %for.cond6
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t0, $t0, 16
	ld.bu	$t1, $t0, 32
	beqz	$t1, .LBB0_5
# %bb.6:                                # %for.cond6
                                        #   in Loop: Header=BB0_4 Depth=1
	beq	$t1, $a1, .LBB0_10
# %bb.7:                                # %for.cond6
                                        #   in Loop: Header=BB0_4 Depth=1
	beq	$t1, $a5, .LBB0_10
# %bb.8:                                # %for.cond6
                                        #   in Loop: Header=BB0_4 Depth=1
	bne	$t1, $a6, .LBB0_12
# %bb.9:                                # %if.then21
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.hu	$t0, $t0, 44
	andi	$t0, $t0, 512
	move	$s0, $a7
	bnez	$t0, .LBB0_24
	b	.LBB0_148
	.p2align	4, , 16
.LBB0_10:                               # %if.then35
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$t0, $t0, 8
	.p2align	4, , 16
.LBB0_11:                               # %for.cond42
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t0, $t0, 16
	ld.bu	$t1, $t0, 32
	beqz	$t1, .LBB0_11
.LBB0_12:                               # %if.end54
                                        #   in Loop: Header=BB0_4 Depth=1
	bne	$t1, $a2, .LBB0_148
# %bb.13:                               # %if.end61
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$s0, $t0, 8
	.p2align	4, , 16
.LBB0_14:                               # %for.cond68
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $s0, 16
	ld.bu	$t1, $s0, 32
	beqz	$t1, .LBB0_14
# %bb.15:                               # %for.end79
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$t2, $t0, 0
	.p2align	4, , 16
.LBB0_16:                               # %for.cond86
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t2, $t2, 16
	ld.bu	$t3, $t2, 32
	beqz	$t3, .LBB0_16
# %bb.17:                               # %for.cond86
                                        #   in Loop: Header=BB0_4 Depth=1
	bne	$t3, $a3, .LBB0_148
# %bb.18:                               # %if.end104
                                        #   in Loop: Header=BB0_4 Depth=1
	sltui	$t3, $s8, 1
	masknez	$t4, $s8, $t3
	maskeqz	$t3, $t2, $t3
	or	$s8, $t3, $t4
	bne	$t2, $s8, .LBB0_148
# %bb.19:                               # %if.end112
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$t3, $s0, 16
	.p2align	4, , 16
.LBB0_20:                               # %for.cond119
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t3, $t3, 0
	ld.bu	$t4, $t3, 32
	beqz	$t4, .LBB0_20
# %bb.21:                               # %for.end130
                                        #   in Loop: Header=BB0_4 Depth=1
	bne	$t3, $t2, .LBB0_148
# %bb.22:                               # %if.end134
                                        #   in Loop: Header=BB0_4 Depth=1
	bne	$t1, $a4, .LBB0_25
# %bb.23:                               # %if.else147
                                        #   in Loop: Header=BB0_4 Depth=1
	st.d	$t0, $sp, 64                    # 8-byte Folded Spill
	bnez	$a7, .LBB0_148
.LBB0_24:                               # %for.inc154
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $a0, 8
	bne	$a0, $fp, .LBB0_4
	b	.LBB0_26
.LBB0_25:                               # %if.then140
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.w	$t0, $s0, 60
	slt	$t1, $t0, $s4
	masknez	$t0, $t0, $t1
	maskeqz	$t1, $s4, $t1
	or	$s4, $t1, $t0
	move	$s0, $a7
	ld.d	$a0, $a0, 8
	bne	$a0, $fp, .LBB0_4
.LBB0_26:                               # %for.end158
	beqz	$s0, .LBB0_148
# %bb.27:                               # %if.end162
	ld.d	$s2, $s0, 8
	beq	$s2, $s0, .LBB0_36
# %bb.28:                               # %for.cond173.preheader.preheader
	ori	$s3, $zero, 1
	ori	$s5, $zero, 9
	ori	$s6, $zero, 91
	b	.LBB0_31
.LBB0_29:                               # %cond.false207
                                        #   in Loop: Header=BB0_31 Depth=1
	addi.d	$a0, $a0, -9
	bltu	$a0, $s6, .LBB0_37
.LBB0_30:                               # %for.inc224
                                        #   in Loop: Header=BB0_31 Depth=1
	ld.d	$s2, $s2, 8
	beq	$s2, $s0, .LBB0_37
.LBB0_31:                               # %for.cond173.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_32 Depth 2
	move	$s1, $s2
	.p2align	4, , 16
.LBB0_32:                               # %for.cond173
                                        #   Parent Loop BB0_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s1, $s1, 16
	ld.bu	$a0, $s1, 32
	beqz	$a0, .LBB0_32
# %bb.33:                               # %for.cond173
                                        #   in Loop: Header=BB0_31 Depth=1
	beq	$a0, $s3, .LBB0_30
# %bb.34:                               # %for.cond173
                                        #   in Loop: Header=BB0_31 Depth=1
	bne	$a0, $s5, .LBB0_29
# %bb.35:                               # %cond.true204
                                        #   in Loop: Header=BB0_31 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(SplitIsDefinite)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_30
	b	.LBB0_37
.LBB0_36:
                                        # implicit-def: $r24
.LBB0_37:                               # %for.end228
	beq	$s2, $s0, .LBB0_148
# %bb.38:                               # %land.rhs231.preheader
	pcalau12i	$a0, %got_pc_hi20(xx_link)
	ld.d	$a0, $a0, %got_pc_lo12(xx_link)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(xx_tmp)
	ld.d	$a0, $a0, %got_pc_lo12(xx_tmp)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$a0, $a0, %got_pc_lo12(zz_lengths)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$a0, $a0, %got_pc_lo12(zz_size)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$a0, $a0, %got_pc_lo12(zz_free)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$a0, $a0, %got_pc_lo12(zz_res)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(zz_tmp)
	ld.d	$a0, $a0, %got_pc_lo12(zz_tmp)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$s6, $zero, 1
	ori	$s7, $zero, 9
	ori	$s3, $zero, 91
	b	.LBB0_40
.LBB0_39:                               # %for.end484
                                        #   in Loop: Header=BB0_40 Depth=1
	move	$a0, $zero
	beq	$s2, $s0, .LBB0_149
.LBB0_40:                               # %land.rhs231
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_56 Depth 2
                                        #       Child Loop BB0_57 Depth 3
	ld.bu	$a0, $s1, 32
	ori	$a1, $zero, 19
	bne	$a0, $a1, .LBB0_61
# %bb.41:                               # %while.body
                                        #   in Loop: Header=BB0_40 Depth=1
	ld.d	$s5, $s1, 8
	beq	$s5, $s1, .LBB0_46
# %bb.42:                               # %if.then244
                                        #   in Loop: Header=BB0_40 Depth=1
	ld.bu	$a0, $s5, 32
	beqz	$a0, .LBB0_44
# %bb.43:                               # %if.then250
                                        #   in Loop: Header=BB0_40 Depth=1
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a5, $a0, %pc_lo12(.L.str.2)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_44:                               # %if.end252
                                        #   in Loop: Header=BB0_40 Depth=1
	ld.d	$a5, $sp, 96                    # 8-byte Folded Reload
	st.d	$s5, $a5, 0
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	st.d	$s1, $a4, 0
	ld.d	$a0, $s1, 0
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $a3, 0
	ld.d	$a0, $s5, 0
	st.d	$a0, $s1, 0
	ld.d	$a0, $a5, 0
	ld.d	$a1, $a4, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a3, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $a5, 0
	st.d	$a0, $a3, 8
	st.d	$s5, $a5, 0
	st.d	$s2, $a4, 0
	beqz	$s2, .LBB0_46
# %bb.45:                               # %cond.false293
                                        #   in Loop: Header=BB0_40 Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $a3, 0
	ld.d	$a0, $s5, 0
	st.d	$a0, $s2, 0
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a4, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a3, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $a4, 0
	st.d	$a0, $a3, 8
.LBB0_46:                               # %if.end319
                                        #   in Loop: Header=BB0_40 Depth=1
	ld.d	$a0, $s2, 24
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	st.d	$s2, $a3, 0
	beq	$a0, $s2, .LBB0_48
# %bb.47:                               # %cond.false326
                                        #   in Loop: Header=BB0_40 Depth=1
	ld.d	$a1, $s2, 16
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $a2, 0
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
	st.d	$s2, $s2, 24
	st.d	$s2, $s2, 16
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	b	.LBB0_49
.LBB0_48:                               #   in Loop: Header=BB0_40 Depth=1
	move	$a0, $zero
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
.LBB0_49:                               # %cond.end348
                                        #   in Loop: Header=BB0_40 Depth=1
	ld.d	$a1, $s2, 8
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $a5, 0
	st.d	$s2, $a4, 0
	beq	$a1, $s2, .LBB0_51
# %bb.50:                               # %cond.false356
                                        #   in Loop: Header=BB0_40 Depth=1
	st.d	$a1, $a2, 0
	ld.d	$a0, $s2, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $a4, 0
	ld.d	$a1, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a1, $a2, 8
	st.d	$a0, $a0, 0
	ld.d	$s2, $a3, 0
	st.d	$a0, $a0, 8
.LBB0_51:                               # %cond.end378
                                        #   in Loop: Header=BB0_40 Depth=1
	ld.bu	$a0, $s2, 32
	addi.d	$a1, $a0, -11
	sltui	$a1, $a1, 2
	addi.d	$a2, $s2, 33
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	add.d	$a0, $a3, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ld.bu	$a0, $a0, 0
	slli.d	$a1, $a0, 3
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	ldx.d	$a1, $a3, $a1
	st.d	$s2, $a4, 0
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	st.w	$a0, $a2, 0
	st.d	$a1, $s2, 0
	ld.w	$a1, $a2, 0
	ld.d	$a2, $a4, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $a3, $a1
	ld.d	$a1, $a0, 24
	beq	$a1, $a0, .LBB0_53
# %bb.52:                               # %if.end415
                                        #   in Loop: Header=BB0_40 Depth=1
	ld.d	$s2, $s0, 8
	bne	$s2, $s0, .LBB0_56
	b	.LBB0_39
.LBB0_53:                               # %if.then413
                                        #   in Loop: Header=BB0_40 Depth=1
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s0, 8
	bne	$s2, $s0, .LBB0_56
	b	.LBB0_39
	.p2align	4, , 16
.LBB0_54:                               # %cond.false463
                                        #   in Loop: Header=BB0_56 Depth=2
	addi.d	$a0, $a0, -9
	bltu	$a0, $s3, .LBB0_39
.LBB0_55:                               # %for.inc480
                                        #   in Loop: Header=BB0_56 Depth=2
	ld.d	$s2, $s2, 8
	beq	$s2, $s0, .LBB0_39
.LBB0_56:                               # %for.cond426.preheader
                                        #   Parent Loop BB0_40 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_57 Depth 3
	move	$s1, $s2
	.p2align	4, , 16
.LBB0_57:                               # %for.cond426
                                        #   Parent Loop BB0_40 Depth=1
                                        #     Parent Loop BB0_56 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s1, $s1, 16
	ld.bu	$a0, $s1, 32
	beqz	$a0, .LBB0_57
# %bb.58:                               # %for.cond426
                                        #   in Loop: Header=BB0_56 Depth=2
	beq	$a0, $s6, .LBB0_55
# %bb.59:                               # %for.cond426
                                        #   in Loop: Header=BB0_56 Depth=2
	bne	$a0, $s7, .LBB0_54
# %bb.60:                               # %cond.true460
                                        #   in Loop: Header=BB0_56 Depth=2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(SplitIsDefinite)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_55
	b	.LBB0_39
.LBB0_61:                               # %lor.lhs.false487
	addi.d	$a0, $a0, -9
	ori	$a1, $zero, 91
	bltu	$a0, $a1, .LBB0_63
# %bb.62:                               # %if.then498
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a5, $a0, %pc_lo12(.L.str.3)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_63:                               # %if.end504
	ld.d	$s7, $s2, 8
	ld.d	$a0, $s2, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	beq	$s7, $s0, .LBB0_76
# %bb.64:                               # %for.cond520.preheader.preheader
	st.d	$zero, $sp, 72                  # 8-byte Folded Spill
	ori	$s3, $zero, 1
	ori	$s5, $zero, 9
	ori	$s6, $zero, 1
	b	.LBB0_67
.LBB0_65:                               # %cond.true554
                                        #   in Loop: Header=BB0_67 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(SplitIsDefinite)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_77
.LBB0_66:                               # %for.inc579
                                        #   in Loop: Header=BB0_67 Depth=1
	ld.d	$s7, $s7, 8
	beq	$s7, $s0, .LBB0_79
.LBB0_67:                               # %for.cond520.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_68 Depth 2
	move	$s2, $s7
	.p2align	4, , 16
.LBB0_68:                               # %for.cond520
                                        #   Parent Loop BB0_67 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s2, $s2, 16
	ld.bu	$a0, $s2, 32
	beqz	$a0, .LBB0_68
# %bb.69:                               # %for.cond520
                                        #   in Loop: Header=BB0_67 Depth=1
	beq	$a0, $s5, .LBB0_65
# %bb.70:                               # %for.cond520
                                        #   in Loop: Header=BB0_67 Depth=1
	bne	$a0, $s3, .LBB0_73
# %bb.71:                               # %if.then537
                                        #   in Loop: Header=BB0_67 Depth=1
	beqz	$s6, .LBB0_74
# %bb.72:                               # %land.rhs539
                                        #   in Loop: Header=BB0_67 Depth=1
	ld.hu	$a0, $s2, 44
	bstrpick.d	$s6, $a0, 9, 9
	b	.LBB0_75
.LBB0_73:                               # %cond.false557
                                        #   in Loop: Header=BB0_67 Depth=1
	addi.d	$a0, $a0, -9
	ori	$a1, $zero, 90
	bltu	$a1, $a0, .LBB0_66
	b	.LBB0_77
.LBB0_74:                               #   in Loop: Header=BB0_67 Depth=1
	move	$s6, $zero
.LBB0_75:                               # %for.inc579
                                        #   in Loop: Header=BB0_67 Depth=1
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	ld.d	$s7, $s7, 8
	bne	$s7, $s0, .LBB0_67
	b	.LBB0_79
.LBB0_76:
	st.d	$zero, $sp, 72                  # 8-byte Folded Spill
                                        # implicit-def: $r25
	b	.LBB0_79
.LBB0_77:                               # %if.then571
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	bnez	$a0, .LBB0_79
# %bb.78:                               # %if.then574
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a5, $a0, %pc_lo12(.L.str.4)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 72                  # 8-byte Folded Spill
.LBB0_79:                               # %for.end583
	beq	$s7, $s0, .LBB0_148
# %bb.80:                               # %land.rhs587.lr.ph
	ori	$s3, $zero, 9
	ori	$s6, $zero, 1
	b	.LBB0_83
.LBB0_81:                               #   in Loop: Header=BB0_83 Depth=1
	st.d	$zero, $sp, 72                  # 8-byte Folded Spill
.LBB0_82:                               # %for.end1101
                                        #   in Loop: Header=BB0_83 Depth=1
	move	$a0, $zero
	beq	$s7, $s0, .LBB0_149
.LBB0_83:                               # %land.rhs587
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_87 Depth 2
                                        #       Child Loop BB0_88 Depth 3
                                        #     Child Loop BB0_94 Depth 2
                                        #     Child Loop BB0_125 Depth 2
                                        #       Child Loop BB0_126 Depth 3
	ld.bu	$a0, $s2, 32
	ori	$a1, $zero, 19
	bne	$a0, $a1, .LBB0_135
# %bb.84:                               # %while.body595
                                        #   in Loop: Header=BB0_83 Depth=1
	ld.d	$s5, $s2, 8
	bne	$s5, $s2, .LBB0_87
	b	.LBB0_109
	.p2align	4, , 16
.LBB0_85:                               # %cond.false643
                                        #   in Loop: Header=BB0_87 Depth=2
	addi.d	$a0, $a1, -9
	ori	$a1, $zero, 91
	bltu	$a0, $a1, .LBB0_92
.LBB0_86:                               # %for.inc660
                                        #   in Loop: Header=BB0_87 Depth=2
	ld.d	$s5, $s5, 8
	beq	$s5, $s2, .LBB0_109
.LBB0_87:                               # %for.cond606.preheader
                                        #   Parent Loop BB0_83 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_88 Depth 3
	move	$a0, $s5
	.p2align	4, , 16
.LBB0_88:                               # %for.cond606
                                        #   Parent Loop BB0_83 Depth=1
                                        #     Parent Loop BB0_87 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB0_88
# %bb.89:                               # %for.cond606
                                        #   in Loop: Header=BB0_87 Depth=2
	beq	$a1, $s6, .LBB0_86
# %bb.90:                               # %for.cond606
                                        #   in Loop: Header=BB0_87 Depth=2
	bne	$a1, $s3, .LBB0_85
# %bb.91:                               # %cond.true640
                                        #   in Loop: Header=BB0_87 Depth=2
	pcaddu18i	$ra, %call36(SplitIsDefinite)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_86
.LBB0_92:                               # %land.lhs.true667
                                        #   in Loop: Header=BB0_83 Depth=1
	ld.d	$a0, $s5, 0
	beq	$a0, $s2, .LBB0_109
# %bb.93:                               # %for.cond680.preheader
                                        #   in Loop: Header=BB0_83 Depth=1
	move	$a1, $a0
.LBB0_94:                               # %for.cond680
                                        #   Parent Loop BB0_83 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $a1, 16
	ld.bu	$a2, $a1, 32
	beqz	$a2, .LBB0_94
# %bb.95:                               # %for.cond680
                                        #   in Loop: Header=BB0_83 Depth=1
	bne	$a2, $s6, .LBB0_97
# %bb.96:                               # %land.lhs.true697
                                        #   in Loop: Header=BB0_83 Depth=1
	ld.hu	$a1, $a1, 44
	srli.d	$a1, $a1, 13
	bnez	$a1, .LBB0_98
.LBB0_97:                               # %if.then704
                                        #   in Loop: Header=BB0_83 Depth=1
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a5, $a0, %pc_lo12(.L.str.5)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
.LBB0_98:                               # %if.end706
                                        #   in Loop: Header=BB0_83 Depth=1
	ld.d	$a1, $a0, 8
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	st.d	$a0, $a3, 0
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	st.d	$a0, $a4, 0
	beq	$a1, $a0, .LBB0_100
# %bb.99:                               # %cond.false716
                                        #   in Loop: Header=BB0_83 Depth=1
	ld.d	$a5, $sp, 96                    # 8-byte Folded Reload
	st.d	$a1, $a5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a1, $a4, 0
	ld.d	$a0, $a5, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $a3, 0
	st.d	$a1, $a1, 8
	b	.LBB0_101
.LBB0_100:                              #   in Loop: Header=BB0_83 Depth=1
	ld.d	$a5, $sp, 96                    # 8-byte Folded Reload
.LBB0_101:                              # %cond.end738
                                        #   in Loop: Header=BB0_83 Depth=1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 24
	st.d	$a0, $a5, 0
	st.d	$a1, $a4, 0
	beqz	$a1, .LBB0_104
# %bb.102:                              # %cond.end738
                                        #   in Loop: Header=BB0_83 Depth=1
	beqz	$a0, .LBB0_104
# %bb.103:                              # %cond.false750
                                        #   in Loop: Header=BB0_83 Depth=1
	ld.d	$a2, $a1, 0
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	st.d	$a2, $a3, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a5, 0
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $a4, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a3, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $a5, 0
	st.d	$a0, $a3, 8
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 24
	b	.LBB0_105
.LBB0_104:                              #   in Loop: Header=BB0_83 Depth=1
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
.LBB0_105:                              # %cond.end774
                                        #   in Loop: Header=BB0_83 Depth=1
	ld.d	$a0, $a1, 8
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	st.d	$a1, $a3, 0
	st.d	$a1, $a4, 0
	beq	$a0, $a1, .LBB0_107
# %bb.106:                              # %cond.end807
                                        #   in Loop: Header=BB0_83 Depth=1
	ld.d	$a5, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $a5, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a0, 0
	ld.d	$a0, $a4, 0
	ld.d	$a1, $a5, 0
	ld.d	$a2, $a0, 0
	st.d	$a1, $a2, 8
	st.d	$a0, $a0, 0
	ld.d	$a1, $a3, 0
	st.d	$a0, $a0, 8
	st.d	$a1, $a5, 0
	st.d	$s5, $a4, 0
	bnez	$a1, .LBB0_108
	b	.LBB0_109
.LBB0_107:                              # %cond.end807.thread
                                        #   in Loop: Header=BB0_83 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	st.d	$s5, $a4, 0
.LBB0_108:                              # %cond.false816
                                        #   in Loop: Header=BB0_83 Depth=1
	ld.d	$a0, $s5, 0
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $a3, 0
	ld.d	$a0, $a1, 0
	st.d	$a0, $s5, 0
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a4, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a3, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $a4, 0
	st.d	$a0, $a3, 8
.LBB0_109:                              # %if.end842
                                        #   in Loop: Header=BB0_83 Depth=1
	ld.d	$s5, $s2, 8
	beq	$s5, $s2, .LBB0_114
# %bb.110:                              # %if.then851
                                        #   in Loop: Header=BB0_83 Depth=1
	ld.bu	$a0, $s5, 32
	beqz	$a0, .LBB0_112
# %bb.111:                              # %if.then857
                                        #   in Loop: Header=BB0_83 Depth=1
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a5, $a0, %pc_lo12(.L.str.2)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_112:                              # %if.end859
                                        #   in Loop: Header=BB0_83 Depth=1
	ld.d	$a5, $sp, 96                    # 8-byte Folded Reload
	st.d	$s5, $a5, 0
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	st.d	$s2, $a4, 0
	ld.d	$a0, $s2, 0
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $a3, 0
	ld.d	$a0, $s5, 0
	st.d	$a0, $s2, 0
	ld.d	$a0, $a5, 0
	ld.d	$a1, $a4, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a3, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $a5, 0
	st.d	$a0, $a3, 8
	st.d	$s5, $a5, 0
	st.d	$s7, $a4, 0
	beqz	$s7, .LBB0_114
# %bb.113:                              # %cond.false900
                                        #   in Loop: Header=BB0_83 Depth=1
	ld.d	$a0, $s7, 0
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $a3, 0
	ld.d	$a0, $s5, 0
	st.d	$a0, $s7, 0
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a4, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a3, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $a4, 0
	st.d	$a0, $a3, 8
.LBB0_114:                              # %if.end926
                                        #   in Loop: Header=BB0_83 Depth=1
	ld.d	$a0, $s7, 24
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	st.d	$s7, $a3, 0
	beq	$a0, $s7, .LBB0_116
# %bb.115:                              # %cond.false933
                                        #   in Loop: Header=BB0_83 Depth=1
	ld.d	$a1, $s7, 16
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $a2, 0
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
	st.d	$s7, $s7, 24
	st.d	$s7, $s7, 16
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	b	.LBB0_117
.LBB0_116:                              #   in Loop: Header=BB0_83 Depth=1
	move	$a0, $zero
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
.LBB0_117:                              # %cond.end955
                                        #   in Loop: Header=BB0_83 Depth=1
	ld.d	$a1, $s7, 8
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $a5, 0
	st.d	$s7, $a4, 0
	beq	$a1, $s7, .LBB0_119
# %bb.118:                              # %cond.false963
                                        #   in Loop: Header=BB0_83 Depth=1
	st.d	$a1, $a2, 0
	ld.d	$a0, $s7, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $a4, 0
	ld.d	$a1, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a1, $a2, 8
	st.d	$a0, $a0, 0
	ld.d	$s7, $a3, 0
	st.d	$a0, $a0, 8
.LBB0_119:                              # %cond.end985
                                        #   in Loop: Header=BB0_83 Depth=1
	ld.bu	$a0, $s7, 32
	addi.d	$a1, $a0, -11
	sltui	$a1, $a1, 2
	addi.d	$a2, $s7, 33
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	add.d	$a0, $a3, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ld.bu	$a0, $a0, 0
	slli.d	$a1, $a0, 3
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	ldx.d	$a1, $a3, $a1
	st.d	$s7, $a4, 0
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	st.w	$a0, $a2, 0
	st.d	$a1, $s7, 0
	ld.w	$a1, $a2, 0
	ld.d	$a2, $a4, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $a3, $a1
	ld.d	$a1, $a0, 24
	bne	$a1, $a0, .LBB0_121
# %bb.120:                              # %if.then1022
                                        #   in Loop: Header=BB0_83 Depth=1
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
.LBB0_121:                              # %if.end1024
                                        #   in Loop: Header=BB0_83 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 8
	ld.d	$s7, $a0, 8
	beq	$s7, $s0, .LBB0_81
# %bb.122:                              # %for.cond1038.preheader.preheader
                                        #   in Loop: Header=BB0_83 Depth=1
	st.d	$zero, $sp, 72                  # 8-byte Folded Spill
	ori	$s5, $zero, 1
	b	.LBB0_125
	.p2align	4, , 16
.LBB0_123:                              # %cond.true1072
                                        #   in Loop: Header=BB0_125 Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(SplitIsDefinite)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_133
.LBB0_124:                              # %for.inc1097
                                        #   in Loop: Header=BB0_125 Depth=2
	ld.d	$s7, $s7, 8
	beq	$s7, $s0, .LBB0_82
.LBB0_125:                              # %for.cond1038.preheader
                                        #   Parent Loop BB0_83 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_126 Depth 3
	move	$s2, $s7
	.p2align	4, , 16
.LBB0_126:                              # %for.cond1038
                                        #   Parent Loop BB0_83 Depth=1
                                        #     Parent Loop BB0_125 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s2, $s2, 16
	ld.bu	$a0, $s2, 32
	beqz	$a0, .LBB0_126
# %bb.127:                              # %for.cond1038
                                        #   in Loop: Header=BB0_125 Depth=2
	beq	$a0, $s3, .LBB0_123
# %bb.128:                              # %for.cond1038
                                        #   in Loop: Header=BB0_125 Depth=2
	bne	$a0, $s6, .LBB0_131
# %bb.129:                              # %if.then1055
                                        #   in Loop: Header=BB0_125 Depth=2
	beqz	$s5, .LBB0_132
# %bb.130:                              # %land.rhs1057
                                        #   in Loop: Header=BB0_125 Depth=2
	ld.hu	$a0, $s2, 44
	bstrpick.d	$s5, $a0, 9, 9
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	ld.d	$s7, $s7, 8
	bne	$s7, $s0, .LBB0_125
	b	.LBB0_82
	.p2align	4, , 16
.LBB0_131:                              # %cond.false1075
                                        #   in Loop: Header=BB0_125 Depth=2
	addi.d	$a0, $a0, -9
	ori	$a1, $zero, 90
	bltu	$a1, $a0, .LBB0_124
	b	.LBB0_133
.LBB0_132:                              #   in Loop: Header=BB0_125 Depth=2
	move	$s5, $zero
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	ld.d	$s7, $s7, 8
	bne	$s7, $s0, .LBB0_125
	b	.LBB0_82
.LBB0_133:                              # %if.then1089
                                        #   in Loop: Header=BB0_83 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	bnez	$a0, .LBB0_82
# %bb.134:                              # %if.then1092
                                        #   in Loop: Header=BB0_83 Depth=1
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a5, $a0, %pc_lo12(.L.str.4)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB0_81
.LBB0_135:                              # %lor.lhs.false1105
	addi.d	$a0, $a0, -9
	ori	$a1, $zero, 91
	bltu	$a0, $a1, .LBB0_137
# %bb.136:                              # %if.then1117
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a5, $a0, %pc_lo12(.L.str.3)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_137:                              # %lor.lhs.false1122
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.hu	$a0, $a1, 44
	srli.d	$a0, $a0, 13
	addi.d	$s3, $a1, 44
	bnez	$a0, .LBB0_139
# %bb.138:                              # %if.then1129
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a5, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_139:                              # %if.end1135
	ld.w	$a0, $s1, 60
	slt	$a3, $a0, $s4
	ld.w	$a1, $s2, 52
	ld.w	$a2, $s2, 60
	masknez	$a0, $a0, $a3
	maskeqz	$a3, $s4, $a3
	or	$a0, $a3, $a0
	move	$a3, $s3
	pcaddu18i	$ra, %call36(MinGap)
	jirl	$ra, $ra, 0
	ld.w	$a3, $s1, 60
	ld.w	$a1, $s2, 52
	ld.w	$a2, $s2, 60
	move	$s2, $a0
	move	$a0, $a3
	move	$a3, $s3
	pcaddu18i	$ra, %call36(MinGap)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 88                    # 8-byte Folded Reload
	bne	$s2, $a0, .LBB0_148
# %bb.140:                              # %for.cond1173.preheader
	ld.d	$a0, $s0, 8
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
	beq	$a0, $s0, .LBB0_150
# %bb.141:                              # %for.cond1180.preheader.preheader
	ori	$a1, $zero, 1
	b	.LBB0_143
.LBB0_142:                              # %for.inc1213
                                        #   in Loop: Header=BB0_143 Depth=1
	ld.d	$a0, $a0, 8
	beq	$a0, $s0, .LBB0_150
.LBB0_143:                              # %for.cond1180.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_144 Depth 2
	move	$a2, $a0
.LBB0_144:                              # %for.cond1180
                                        #   Parent Loop BB0_143 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a2, 16
	ld.bu	$a3, $a2, 32
	beqz	$a3, .LBB0_144
# %bb.145:                              # %for.cond1180
                                        #   in Loop: Header=BB0_143 Depth=1
	bne	$a3, $a1, .LBB0_142
# %bb.146:                              # %land.lhs.true1197
                                        #   in Loop: Header=BB0_143 Depth=1
	ld.hu	$a2, $a2, 44
	srli.d	$a3, $a2, 13
	beqz	$a3, .LBB0_142
# %bb.147:                              # %land.lhs.true1197
                                        #   in Loop: Header=BB0_143 Depth=1
	andi	$a2, $a2, 512
	beqz	$a2, .LBB0_142
.LBB0_148:                              # %cleanup.loopexit809
	move	$a0, $zero
.LBB0_149:                              # %cleanup
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
.LBB0_150:                              # %for.end1217
	ld.d	$a0, $s1, 24
	ld.d	$s2, $a0, 8
	beq	$s2, $s0, .LBB0_158
# %bb.151:                              # %for.cond1231.preheader.preheader
	ori	$s3, $zero, 1
	ori	$s4, $zero, 90
	b	.LBB0_153
.LBB0_152:                              # %for.inc1264
                                        #   in Loop: Header=BB0_153 Depth=1
	ld.d	$s2, $s2, 8
	beq	$s2, $s0, .LBB0_158
.LBB0_153:                              # %for.cond1231.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_154 Depth 2
	move	$a0, $s2
	.p2align	4, , 16
.LBB0_154:                              # %for.cond1231
                                        #   Parent Loop BB0_153 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB0_154
# %bb.155:                              # %for.cond1231
                                        #   in Loop: Header=BB0_153 Depth=1
	beq	$a1, $s3, .LBB0_152
# %bb.156:                              # %if.end1249
                                        #   in Loop: Header=BB0_153 Depth=1
	addi.d	$a1, $a1, -9
	bltu	$s4, $a1, .LBB0_152
# %bb.157:                              # %if.then1261
                                        #   in Loop: Header=BB0_153 Depth=1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(EncloseInHcat)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
	b	.LBB0_152
.LBB0_158:                              # %for.end1268
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s2, $a0, 24
	beq	$s2, $s0, .LBB0_163
# %bb.159:                              # %if.then1283
	ld.d	$a0, $fp, 24
	ld.bu	$a1, $s2, 32
	ld.d	$s3, $a0, 8
	beqz	$a1, .LBB0_161
# %bb.160:                              # %if.then1289
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a5, $a0, %pc_lo12(.L.str.2)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
.LBB0_161:                              # %cond.end1323
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	st.d	$s2, $a4, 0
	st.d	$s0, $s5, 0
	ld.d	$a0, $s0, 0
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $a3, 0
	ld.d	$a0, $s2, 0
	st.d	$a0, $s0, 0
	ld.d	$a0, $a4, 0
	ld.d	$a1, $s5, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a3, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $a4, 0
	st.d	$a0, $a3, 8
	st.d	$s2, $a4, 0
	st.d	$s3, $s5, 0
	beqz	$s3, .LBB0_163
# %bb.162:                              # %cond.false1332
	ld.d	$a0, $s3, 0
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $a3, 0
	ld.d	$a0, $s2, 0
	st.d	$a0, $s3, 0
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a4, 0
	ld.d	$a1, $s5, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a3, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $a4, 0
	st.d	$a0, $a3, 8
.LBB0_163:                              # %if.end1358
	ld.w	$a1, $s1, 60
	st.w	$a1, $a5, 60
	st.w	$a1, $s0, 60
	st.w	$a1, $s8, 60
	ld.d	$a0, $fp, 24
	st.w	$a1, $fp, 60
	ori	$a1, $zero, 20
	move	$s2, $a0
.LBB0_164:                              # %for.cond1380
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_166 Depth 2
	ld.d	$s2, $s2, 0
	ld.bu	$a2, $s2, 32
	bnez	$a2, .LBB0_168
# %bb.165:                              # %for.cond1390.preheader
                                        #   in Loop: Header=BB0_164 Depth=1
	move	$a2, $s2
	.p2align	4, , 16
.LBB0_166:                              # %for.cond1390
                                        #   Parent Loop BB0_164 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a2, 16
	ld.bu	$a3, $a2, 32
	beqz	$a3, .LBB0_166
# %bb.167:                              # %for.end1401
                                        #   in Loop: Header=BB0_164 Depth=1
	addi.d	$a2, $a3, -119
	bltu	$a2, $a1, .LBB0_164
.LBB0_168:                              # %for.end1419
	ld.d	$s1, $s2, 8
	beq	$s1, $a0, .LBB0_193
# %bb.169:                              # %for.cond1436.preheader.preheader
	addi.d	$s5, $s2, 8
	ori	$s3, $zero, 20
	ori	$s4, $zero, 19
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$s6, $a0, %got_pc_lo12(no_fpos)
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ori	$s7, $zero, 1
	lu12i.w	$a0, 27
	ori	$s8, $a0, 865
	lu12i.w	$a0, 224
	ori	$s0, $a0, 28
	lu12i.w	$a0, 4
	ori	$a0, $a0, 3074
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	b	.LBB0_173
.LBB0_170:                              # %if.then1465.thread
                                        #   in Loop: Header=BB0_173 Depth=1
	ld.d	$s2, $s6, 0
	pcaddu18i	$ra, %call36(Image)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 3
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	move	$a3, $zero
	move	$a4, $s2
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_171:                              # %if.else1547
                                        #   in Loop: Header=BB0_173 Depth=1
	ld.d	$s2, $s5, 0
.LBB0_172:                              # %if.end1551
                                        #   in Loop: Header=BB0_173 Depth=1
	ld.d	$s1, $s2, 8
	ld.d	$a1, $fp, 24
	addi.d	$s5, $s2, 8
	ori	$a0, $zero, 1
	beq	$s1, $a1, .LBB0_149
	.p2align	4, , 16
.LBB0_173:                              # %for.cond1436
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_182 Depth 2
                                        #       Child Loop BB0_184 Depth 3
	ld.d	$s1, $s1, 16
	ld.bu	$a0, $s1, 32
	beqz	$a0, .LBB0_173
# %bb.174:                              # %for.end1447
                                        #   in Loop: Header=BB0_173 Depth=1
	addi.d	$a1, $a0, -119
	bltu	$a1, $s3, .LBB0_176
# %bb.175:                              # %if.then1459
                                        #   in Loop: Header=BB0_173 Depth=1
	ld.d	$a4, $s6, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a5, $a0, %pc_lo12(.L.str.7)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s1, 32
.LBB0_176:                              # %if.end1461
                                        #   in Loop: Header=BB0_173 Depth=1
	addi.d	$a1, $a0, -119
	bltu	$s4, $a1, .LBB0_170
# %bb.177:                              # %if.end1461
                                        #   in Loop: Header=BB0_173 Depth=1
	sll.d	$a1, $s7, $a1
	and	$a2, $a1, $s8
	bnez	$a2, .LBB0_171
# %bb.178:                              # %if.end1461
                                        #   in Loop: Header=BB0_173 Depth=1
	and	$a2, $a1, $s0
	beqz	$a2, .LBB0_180
# %bb.179:                              # %sw.bb2.i
                                        #   in Loop: Header=BB0_173 Depth=1
	ori	$a1, $zero, 80
	b	.LBB0_181
.LBB0_180:                              # %if.end1461
                                        #   in Loop: Header=BB0_173 Depth=1
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	and	$a2, $a1, $a2
	ori	$a1, $zero, 88
	beqz	$a2, .LBB0_170
.LBB0_181:                              # %FindTarget.exit
                                        #   in Loop: Header=BB0_173 Depth=1
	ldx.d	$a2, $s1, $a1
	beqz	$a2, .LBB0_171
.LBB0_182:                              # %while.cond.loopexit.i
                                        #   Parent Loop BB0_173 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_184 Depth 3
	ld.d	$a0, $a2, 24
	beq	$a0, $a2, .LBB0_171
# %bb.183:                              # %for.cond.preheader.i
                                        #   in Loop: Header=BB0_182 Depth=2
	move	$a1, $a2
	move	$a2, $a0
.LBB0_184:                              # %for.cond.i
                                        #   Parent Loop BB0_173 Depth=1
                                        #     Parent Loop BB0_182 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $a2, 0
	ld.bu	$a3, $a2, 32
	beqz	$a3, .LBB0_184
# %bb.185:                              # %for.cond.i
                                        #   in Loop: Header=BB0_182 Depth=2
	ori	$a4, $zero, 8
	bne	$a3, $a4, .LBB0_182
# %bb.186:                              # %WhichComponent.exit
                                        #   in Loop: Header=BB0_173 Depth=1
	beq	$a1, $fp, .LBB0_171
# %bb.187:                              # %if.then1472
                                        #   in Loop: Header=BB0_173 Depth=1
	ld.d	$a2, $s5, 0
	ld.d	$a3, $a2, 8
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	st.d	$a2, $a4, 0
	ld.d	$a5, $sp, 88                    # 8-byte Folded Reload
	st.d	$a2, $a5, 0
	beq	$a3, $a2, .LBB0_189
# %bb.188:                              # %cond.false1482
                                        #   in Loop: Header=BB0_173 Depth=1
	ld.d	$a6, $sp, 96                    # 8-byte Folded Reload
	st.d	$a3, $a6, 0
	ld.d	$a0, $a2, 0
	st.d	$a0, $a3, 0
	ld.d	$a0, $a5, 0
	ld.d	$a2, $a6, 0
	ld.d	$a3, $a0, 0
	st.d	$a2, $a3, 8
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a2, $a4, 0
	ld.d	$a0, $a1, 24
	b	.LBB0_190
.LBB0_189:                              #   in Loop: Header=BB0_173 Depth=1
	ld.d	$a6, $sp, 96                    # 8-byte Folded Reload
.LBB0_190:                              # %cond.end1504
                                        #   in Loop: Header=BB0_173 Depth=1
	st.d	$a2, $a6, 0
	st.d	$a0, $a5, 0
	beqz	$a0, .LBB0_172
# %bb.191:                              # %cond.end1504
                                        #   in Loop: Header=BB0_173 Depth=1
	beqz	$a2, .LBB0_172
# %bb.192:                              # %cond.false1516
                                        #   in Loop: Header=BB0_173 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	st.d	$a1, $a3, 0
	ld.d	$a1, $a2, 0
	st.d	$a1, $a0, 0
	ld.d	$a0, $a6, 0
	ld.d	$a1, $a5, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a3, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $a6, 0
	st.d	$a0, $a3, 8
	b	.LBB0_172
.LBB0_193:
	ori	$a0, $zero, 1
	b	.LBB0_149
.Lfunc_end0:
	.size	VerticalHyphenate, .Lfunc_end0-VerticalHyphenate
                                        # -- End function
	.p2align	5                               # -- Begin function EncloseInHcat
	.type	EncloseInHcat,@function
EncloseInHcat:                          # @EncloseInHcat
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a3, $a0, 24
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	bne	$a3, $a0, .LBB1_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a5, $a0, %pc_lo12(.L.str.18)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_2:                                # %if.end
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s0, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a0, $s0, 18
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$a4, $a1, %got_pc_lo12(zz_free)
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$fp, $a1, %got_pc_lo12(zz_size)
	slli.d	$a1, $a0, 3
	ldx.d	$s8, $a4, $a1
	st.w	$a0, $fp, 0
	st.d	$a4, $sp, 104                   # 8-byte Folded Spill
	beqz	$s8, .LBB1_4
# %bb.3:                                # %if.else11
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s8, $a1, 0
	ld.d	$a1, $s8, 0
	alsl.d	$a0, $a0, $a4, 3
	st.d	$a1, $a0, 0
	b	.LBB1_5
.LBB1_4:                                # %if.then9
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	move	$s8, $a0
	st.d	$a0, $a1, 0
.LBB1_5:                                # %if.end19
	ori	$a0, $zero, 18
	st.b	$a0, $s8, 32
	st.d	$s8, $s8, 24
	st.d	$s8, $s8, 16
	st.d	$s8, $s8, 8
	ld.hu	$a0, $s8, 42
	st.d	$s8, $s8, 0
	lu12i.w	$a1, 15
	ori	$a1, $a1, 2047
	and	$a0, $a0, $a1
	st.h	$a0, $s8, 42
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 24
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$s3, $a1, %got_pc_lo12(xx_link)
	ld.d	$a1, $a0, 24
	ld.d	$a2, $a0, 16
	st.d	$a0, $s3, 0
	beq	$a1, $a0, .LBB1_7
# %bb.6:                                # %cond.false
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	ld.d	$a1, $s8, 16
	move	$a2, $a0
	b	.LBB1_8
.LBB1_7:
	move	$a1, $s8
.LBB1_8:                                # %cond.end92
	pcalau12i	$a3, %got_pc_hi20(zz_res)
	ld.d	$s1, $a3, %got_pc_lo12(zz_res)
	pcalau12i	$a3, %got_pc_hi20(zz_hold)
	st.d	$a2, $s8, 16
	ld.d	$a2, $a0, 16
	ld.d	$s2, $a3, %got_pc_lo12(zz_hold)
	pcalau12i	$a3, %got_pc_hi20(zz_tmp)
	ld.d	$s7, $a3, %got_pc_lo12(zz_tmp)
	st.d	$s8, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $a3, 24
	st.d	$a0, $s1, 0
	st.d	$s8, $s2, 0
	st.d	$a1, $s7, 0
	beq	$a2, $a3, .LBB1_10
# %bb.9:                                # %if.then99
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a5, $a0, %pc_lo12(.L.str.19)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
.LBB1_10:                               # %if.end101
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ld.h	$a0, $a3, 34
	st.h	$a0, $s8, 34
	ld.wu	$a0, $a3, 36
	ld.wu	$a1, $s8, 36
	srli.d	$a1, $a1, 20
	move	$a2, $a0
	bstrins.d	$a2, $a1, 63, 20
	st.w	$a2, $s8, 36
	ld.wu	$a1, $a3, 36
	srli.d	$a1, $a1, 20
	bstrins.d	$a0, $a1, 63, 20
	st.w	$a0, $s8, 36
	ld.w	$a0, $a3, 48
	st.w	$a0, $s8, 48
	ld.w	$a0, $a3, 56
	st.w	$a0, $s8, 56
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a0, $a1, 52
	st.w	$a0, $s8, 52
	ld.w	$a1, $a1, 60
	ld.bu	$a0, $s0, 15
	st.w	$a1, $s8, 60
	slli.d	$a1, $a0, 3
	ldx.d	$s6, $a4, $a1
	st.w	$a0, $fp, 0
	beqz	$s6, .LBB1_12
# %bb.11:                               # %if.else155
	st.d	$s6, $s2, 0
	ld.d	$a1, $s6, 0
	alsl.d	$a0, $a0, $a4, 3
	st.d	$a1, $a0, 0
	b	.LBB1_13
.LBB1_12:                               # %if.then153
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	move	$s6, $a0
	st.d	$a0, $s2, 0
.LBB1_13:                               # %if.end164
	ori	$a0, $zero, 15
	st.b	$a0, $s6, 32
	st.d	$s6, $s6, 24
	st.d	$s6, $s6, 16
	st.d	$s6, $s6, 8
	st.d	$s6, $s6, 0
	ld.w	$a0, $s8, 52
	st.w	$a0, $s6, 52
	ld.w	$a0, $s8, 60
	st.w	$a0, $s6, 60
	ori	$a0, $zero, 1
	st.b	$a0, $s6, 41
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s4, $a0, 8
	beq	$s4, $a0, .LBB1_84
# %bb.14:                               # %for.cond200.preheader.preheader
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	lu12i.w	$a0, -393217
	ori	$a0, $a0, 4095
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s8, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 80                    # 8-byte Folded Spill
	b	.LBB1_17
	.p2align	4, , 16
.LBB1_15:                               # %for.inc1512.sink.split
                                        #   in Loop: Header=BB1_17 Depth=1
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB1_16:                               # %for.inc1512
                                        #   in Loop: Header=BB1_17 Depth=1
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s4, $s4, 8
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	beq	$s4, $a0, .LBB1_84
.LBB1_17:                               # %for.cond200.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_18 Depth 2
                                        #     Child Loop BB1_25 Depth 2
                                        #     Child Loop BB1_29 Depth 2
	move	$s8, $fp
	move	$fp, $s0
	move	$s0, $s4
	.p2align	4, , 16
.LBB1_18:                               # %for.cond200
                                        #   Parent Loop BB1_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $s0, 16
	ld.bu	$a0, $s0, 32
	beqz	$a0, .LBB1_18
# %bb.19:                               # %for.cond200
                                        #   in Loop: Header=BB1_17 Depth=1
	ori	$a1, $zero, 26
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	beq	$a0, $a1, .LBB1_24
# %bb.20:                               # %for.cond200
                                        #   in Loop: Header=BB1_17 Depth=1
	ori	$a1, $zero, 24
	beq	$a0, $a1, .LBB1_24
# %bb.21:                               # %for.cond200
                                        #   in Loop: Header=BB1_17 Depth=1
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB1_38
# %bb.22:                               # %if.then215
                                        #   in Loop: Header=BB1_17 Depth=1
	ld.bu	$a0, $fp, 1
	slli.d	$a1, $a0, 3
	ldx.d	$s4, $a4, $a1
	st.w	$a0, $s8, 0
	beqz	$s4, .LBB1_78
# %bb.23:                               # %if.else229
                                        #   in Loop: Header=BB1_17 Depth=1
	st.d	$s4, $s2, 0
	ld.d	$a1, $s4, 0
	alsl.d	$a0, $a0, $a4, 3
	st.d	$a1, $a0, 0
	b	.LBB1_79
	.p2align	4, , 16
.LBB1_24:                               # %if.then457
                                        #   in Loop: Header=BB1_17 Depth=1
	ld.d	$s3, $s0, 8
	.p2align	4, , 16
.LBB1_25:                               # %for.cond464
                                        #   Parent Loop BB1_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s3, $s3, 16
	ld.bu	$a0, $s3, 32
	beqz	$a0, .LBB1_25
# %bb.26:                               # %if.end477
                                        #   in Loop: Header=BB1_17 Depth=1
	ori	$a1, $zero, 9
	beq	$a0, $a1, .LBB1_28
.LBB1_27:                               # %if.then483
                                        #   in Loop: Header=BB1_17 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a5, $a0, %pc_lo12(.L.str.20)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
.LBB1_28:                               # %if.end485
                                        #   in Loop: Header=BB1_17 Depth=1
	ld.d	$s6, $s3, 8
	.p2align	4, , 16
.LBB1_29:                               # %for.cond492
                                        #   Parent Loop BB1_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s6, $s6, 16
	ld.bu	$a0, $s6, 32
	beqz	$a0, .LBB1_29
# %bb.30:                               # %for.end503
                                        #   in Loop: Header=BB1_17 Depth=1
	ld.bu	$a0, $fp, 9
	slli.d	$a1, $a0, 3
	ldx.d	$s4, $a4, $a1
	st.w	$a0, $s8, 0
	beqz	$s4, .LBB1_32
# %bb.31:                               # %if.else517
                                        #   in Loop: Header=BB1_17 Depth=1
	st.d	$s4, $s2, 0
	ld.d	$a1, $s4, 0
	alsl.d	$a0, $a0, $a4, 3
	st.d	$a1, $a0, 0
	b	.LBB1_33
	.p2align	4, , 16
.LBB1_32:                               # %if.then515
                                        #   in Loop: Header=BB1_17 Depth=1
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	move	$s4, $a0
	st.d	$a0, $s2, 0
.LBB1_33:                               # %if.end526
                                        #   in Loop: Header=BB1_17 Depth=1
	ori	$a0, $zero, 9
	st.b	$a0, $s4, 32
	st.d	$s4, $s4, 24
	st.d	$s4, $s4, 16
	st.d	$s4, $s4, 8
	st.d	$s4, $s4, 0
	ld.h	$a0, $s3, 34
	st.h	$a0, $s4, 34
	ld.wu	$a0, $s3, 36
	ld.wu	$a1, $s4, 36
	srli.d	$a1, $a1, 20
	move	$a2, $a0
	bstrins.d	$a2, $a1, 63, 20
	st.w	$a2, $s4, 36
	ld.wu	$a1, $s3, 36
	srli.d	$a1, $a1, 20
	bstrins.d	$a0, $a1, 63, 20
	st.w	$a0, $s4, 36
	beq	$s3, $s0, .LBB1_36
# %bb.34:                               # %if.then568
                                        #   in Loop: Header=BB1_17 Depth=1
	ld.bu	$a0, $s0, 32
	ldx.bu	$a0, $fp, $a0
	slli.d	$a1, $a0, 3
	ldx.d	$s5, $a4, $a1
	st.w	$a0, $s8, 0
	beqz	$s5, .LBB1_39
# %bb.35:                               # %if.else586
                                        #   in Loop: Header=BB1_17 Depth=1
	st.d	$s5, $s2, 0
	ld.d	$a1, $s5, 0
	alsl.d	$a0, $a0, $a4, 3
	st.d	$a1, $a0, 0
	b	.LBB1_40
	.p2align	4, , 16
.LBB1_36:                               # %if.else842
                                        #   in Loop: Header=BB1_17 Depth=1
	move	$s0, $fp
	ld.bu	$a2, $fp, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a4, $a0
	move	$fp, $s8
	st.w	$a2, $s8, 0
	beqz	$a0, .LBB1_49
# %bb.37:                               # %if.else856
                                        #   in Loop: Header=BB1_17 Depth=1
	st.d	$a0, $s2, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $a4, 3
	st.d	$a1, $a2, 0
	b	.LBB1_50
	.p2align	4, , 16
.LBB1_38:                               # %if.end477.loopexit20
                                        #   in Loop: Header=BB1_17 Depth=1
	move	$s3, $s0
	ori	$a1, $zero, 9
	bne	$a0, $a1, .LBB1_27
	b	.LBB1_28
.LBB1_39:                               # %if.then584
                                        #   in Loop: Header=BB1_17 Depth=1
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	move	$s5, $a0
	st.d	$a0, $s2, 0
.LBB1_40:                               # %if.end595
                                        #   in Loop: Header=BB1_17 Depth=1
	ld.b	$a0, $s0, 32
	st.b	$a0, $s5, 32
	st.d	$s5, $s5, 24
	st.d	$s5, $s5, 16
	st.d	$s5, $s5, 8
	st.d	$s5, $s5, 0
	ld.w	$a0, $s0, 48
	st.w	$a0, $s5, 48
	ld.w	$a0, $s0, 56
	st.w	$a0, $s5, 56
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a0, $a1, 48
	st.w	$a0, $s5, 52
	ld.w	$a0, $a1, 56
	move	$s0, $fp
	ld.bu	$a2, $fp, 0
	st.w	$a0, $s5, 60
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a4, $a0
	move	$fp, $s8
	st.w	$a2, $s8, 0
	beqz	$a0, .LBB1_42
# %bb.41:                               # %if.else649
                                        #   in Loop: Header=BB1_17 Depth=1
	st.d	$a0, $s2, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $a4, 3
	st.d	$a1, $a2, 0
	b	.LBB1_43
.LBB1_42:                               # %if.then647
                                        #   in Loop: Header=BB1_17 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
.LBB1_43:                               # %cond.end704
                                        #   in Loop: Header=BB1_17 Depth=1
	ld.d	$s8, $sp, 64                    # 8-byte Folded Reload
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a5, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $a5, 0
	st.d	$a0, $s1, 0
	st.d	$s8, $s2, 0
	ld.d	$a1, $s8, 0
	st.d	$a1, $s7, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s8, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s2, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s7, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s1, 0
	ld.d	$a0, $a5, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s1, 0
	st.d	$s5, $s2, 0
	beqz	$a0, .LBB1_45
# %bb.44:                               # %cond.false713
                                        #   in Loop: Header=BB1_17 Depth=1
	ld.d	$a1, $s5, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s7, 0
	st.d	$a2, $s5, 16
	st.d	$s5, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB1_45:                               # %cond.end737
                                        #   in Loop: Header=BB1_17 Depth=1
	ld.bu	$a2, $s0, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a4, $a0
	st.w	$a2, $fp, 0
	beqz	$a0, .LBB1_47
# %bb.46:                               # %if.else752
                                        #   in Loop: Header=BB1_17 Depth=1
	st.d	$a0, $s2, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $a4, 3
	st.d	$a1, $a2, 0
	b	.LBB1_48
.LBB1_47:                               # %if.then750
                                        #   in Loop: Header=BB1_17 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
.LBB1_48:                               # %cond.end807
                                        #   in Loop: Header=BB1_17 Depth=1
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a5, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $a5, 0
	st.d	$a0, $s1, 0
	st.d	$s5, $s2, 0
	ld.d	$a1, $s5, 0
	st.d	$a1, $s7, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s5, 0
	b	.LBB1_51
.LBB1_49:                               # %if.then854
                                        #   in Loop: Header=BB1_17 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
.LBB1_50:                               # %cond.end911
                                        #   in Loop: Header=BB1_17 Depth=1
	ld.d	$s8, $sp, 64                    # 8-byte Folded Reload
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a5, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $a5, 0
	st.d	$a0, $s1, 0
	st.d	$s8, $s2, 0
	ld.d	$a1, $s8, 0
	st.d	$a1, $s7, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s8, 0
.LBB1_51:                               # %cond.end911
                                        #   in Loop: Header=BB1_17 Depth=1
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s2, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s7, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s1, 0
	ld.d	$a0, $a5, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s1, 0
	st.d	$s4, $s2, 0
	beqz	$a0, .LBB1_53
# %bb.52:                               # %if.end946.sink.split
                                        #   in Loop: Header=BB1_17 Depth=1
	ld.d	$a1, $s4, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s7, 0
	st.d	$a2, $s4, 16
	st.d	$s4, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB1_53:                               # %if.end946
                                        #   in Loop: Header=BB1_17 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	beq	$s6, $a0, .LBB1_56
# %bb.54:                               # %if.else962
                                        #   in Loop: Header=BB1_17 Depth=1
	ld.bu	$a0, $s0, 26
	slli.d	$a1, $a0, 3
	ldx.d	$s5, $a4, $a1
	st.w	$a0, $fp, 0
	beqz	$s5, .LBB1_57
# %bb.55:                               # %if.else976
                                        #   in Loop: Header=BB1_17 Depth=1
	st.d	$s5, $s2, 0
	ld.d	$a1, $s5, 0
	alsl.d	$a0, $a0, $a4, 3
	st.d	$a1, $a0, 0
	move	$s3, $a4
	b	.LBB1_58
	.p2align	4, , 16
.LBB1_56:                               # %if.then949
                                        #   in Loop: Header=BB1_17 Depth=1
	ld.w	$a0, $s3, 48
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	st.w	$a0, $s5, 48
	ld.w	$a0, $s3, 56
	st.w	$a0, $s5, 56
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	b	.LBB1_63
.LBB1_57:                               # %if.then974
                                        #   in Loop: Header=BB1_17 Depth=1
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	move	$s3, $a4
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	st.d	$a0, $s2, 0
.LBB1_58:                               # %if.end985
                                        #   in Loop: Header=BB1_17 Depth=1
	ori	$a0, $zero, 26
	st.b	$a0, $s5, 32
	st.d	$s5, $s5, 24
	st.d	$s5, $s5, 16
	st.d	$s5, $s5, 8
	st.d	$s5, $s5, 0
	ld.h	$a0, $s6, 34
	st.h	$a0, $s5, 34
	ld.wu	$a0, $s6, 36
	ld.wu	$a1, $s5, 36
	srli.d	$a1, $a1, 20
	move	$a2, $a0
	bstrins.d	$a2, $a1, 63, 20
	st.w	$a2, $s5, 36
	ld.wu	$a1, $s6, 36
	srli.d	$a1, $a1, 20
	bstrins.d	$a0, $a1, 63, 20
	st.w	$a0, $s5, 36
	ld.w	$a0, $s6, 48
	st.w	$a0, $s5, 64
	ld.w	$a1, $s6, 56
	add.d	$a0, $a1, $a0
	st.w	$a0, $s5, 68
	ld.w	$a0, $s6, 56
	st.w	$a0, $s5, 72
	ld.w	$a0, $s6, 48
	st.w	$a0, $s5, 48
	ld.w	$a0, $s6, 56
	addi.d	$a2, $s6, 32
	st.w	$a0, $s5, 56
	st.w	$zero, $s5, 60
	st.w	$zero, $s5, 52
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a1, $a0, %pc_lo12(.L.str.21)
	ori	$a0, $zero, 11
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ld.wu	$a0, $a0, 40
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $s6, 48
	ld.bu	$a2, $s0, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	and	$a0, $a0, $a1
	lu12i.w	$a1, 131072
	or	$a0, $a0, $a1
	st.w	$a0, $s6, 40
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s3, $a0
	st.w	$a2, $fp, 0
	beqz	$a0, .LBB1_60
# %bb.59:                               # %if.else1088
                                        #   in Loop: Header=BB1_17 Depth=1
	move	$a4, $s3
	st.d	$a0, $s2, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s3, 3
	st.d	$a1, $a2, 0
	b	.LBB1_61
.LBB1_60:                               # %if.then1086
                                        #   in Loop: Header=BB1_17 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
.LBB1_61:                               # %cond.end1143
                                        #   in Loop: Header=BB1_17 Depth=1
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s3, 0
	st.d	$a0, $s1, 0
	st.d	$s5, $s2, 0
	ld.d	$a1, $s5, 0
	st.d	$a1, $s7, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s5, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s2, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s7, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s1, 0
	ld.d	$a0, $s3, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s1, 0
	st.d	$s6, $s2, 0
	beqz	$a0, .LBB1_63
# %bb.62:                               # %cond.false1152
                                        #   in Loop: Header=BB1_17 Depth=1
	ld.d	$a1, $s6, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s7, 0
	st.d	$a2, $s6, 16
	st.d	$s6, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB1_63:                               # %if.end1178
                                        #   in Loop: Header=BB1_17 Depth=1
	ld.bu	$a2, $s0, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a4, $a0
	st.w	$a2, $fp, 0
	ld.d	$s6, $sp, 80                    # 8-byte Folded Reload
	beqz	$a0, .LBB1_65
# %bb.64:                               # %if.else1192
                                        #   in Loop: Header=BB1_17 Depth=1
	st.d	$a0, $s2, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $a4, 3
	st.d	$a1, $a2, 0
	b	.LBB1_66
	.p2align	4, , 16
.LBB1_65:                               # %if.then1190
                                        #   in Loop: Header=BB1_17 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
.LBB1_66:                               # %cond.end1247
                                        #   in Loop: Header=BB1_17 Depth=1
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s3, 0
	st.d	$a0, $s1, 0
	st.d	$s4, $s2, 0
	ld.d	$a1, $s4, 0
	st.d	$a1, $s7, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s4, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s2, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s7, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s1, 0
	ld.d	$a0, $s3, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s1, 0
	st.d	$s5, $s2, 0
	beqz	$a0, .LBB1_68
# %bb.67:                               # %cond.false1256
                                        #   in Loop: Header=BB1_17 Depth=1
	ld.d	$a1, $s5, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s7, 0
	st.d	$a2, $s5, 16
	st.d	$s5, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB1_68:                               # %cond.end1280
                                        #   in Loop: Header=BB1_17 Depth=1
	ld.w	$a0, $s5, 48
	st.w	$a0, $s4, 48
	ld.w	$a0, $s5, 56
	ld.bu	$a2, $s0, 0
	st.w	$a0, $s4, 56
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a4, $a0
	st.w	$a2, $fp, 0
	beqz	$a0, .LBB1_70
# %bb.69:                               # %if.else1307
                                        #   in Loop: Header=BB1_17 Depth=1
	st.d	$a0, $s2, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $a4, 3
	st.d	$a1, $a2, 0
	b	.LBB1_71
	.p2align	4, , 16
.LBB1_70:                               # %if.then1305
                                        #   in Loop: Header=BB1_17 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
.LBB1_71:                               # %cond.end1362
                                        #   in Loop: Header=BB1_17 Depth=1
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s3, 0
	st.d	$a0, $s1, 0
	st.d	$s4, $s2, 0
	ld.d	$a1, $s4, 0
	st.d	$a1, $s7, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s4, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s2, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s7, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s1, 0
	ld.d	$a0, $s3, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s1, 0
	st.d	$s6, $s2, 0
	beqz	$a0, .LBB1_73
# %bb.72:                               # %cond.false1371
                                        #   in Loop: Header=BB1_17 Depth=1
	ld.d	$a1, $s6, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s7, 0
	st.d	$a2, $s6, 16
	st.d	$s6, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB1_73:                               # %cond.end1395
                                        #   in Loop: Header=BB1_17 Depth=1
	ld.w	$a0, $s6, 52
	st.w	$a0, $s4, 52
	ld.w	$a0, $s6, 60
	ld.bu	$a2, $s0, 0
	st.w	$a0, $s4, 60
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a4, $a0
	st.w	$a2, $fp, 0
	beqz	$a0, .LBB1_75
# %bb.74:                               # %if.else1422
                                        #   in Loop: Header=BB1_17 Depth=1
	st.d	$a0, $s2, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $a4, 3
	st.d	$a1, $a2, 0
	b	.LBB1_76
	.p2align	4, , 16
.LBB1_75:                               # %if.then1420
                                        #   in Loop: Header=BB1_17 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
.LBB1_76:                               # %cond.end1477
                                        #   in Loop: Header=BB1_17 Depth=1
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s3, 0
	st.d	$a0, $s1, 0
	st.d	$s6, $s2, 0
	ld.d	$a1, $s6, 0
	st.d	$a1, $s7, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s6, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s2, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s7, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s1, 0
	ld.d	$a0, $s3, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s1, 0
	st.d	$s5, $s2, 0
	beqz	$a0, .LBB1_16
# %bb.77:                               # %cond.false1486
                                        #   in Loop: Header=BB1_17 Depth=1
	ld.d	$a1, $s5, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s7, 0
	st.d	$a2, $s5, 16
	st.d	$s5, $a2, 24
	b	.LBB1_15
.LBB1_78:                               # %if.then227
                                        #   in Loop: Header=BB1_17 Depth=1
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	move	$s4, $a0
	st.d	$a0, $s2, 0
.LBB1_79:                               # %if.end238
                                        #   in Loop: Header=BB1_17 Depth=1
	ori	$a0, $zero, 1
	st.b	$a0, $s4, 32
	st.d	$s4, $s4, 24
	st.d	$s4, $s4, 16
	st.d	$s4, $s4, 8
	st.d	$s4, $s4, 0
	ld.h	$a0, $s0, 34
	st.h	$a0, $s4, 34
	ld.wu	$a0, $s0, 36
	ld.wu	$a1, $s4, 36
	srli.d	$a1, $a1, 20
	move	$a2, $a0
	bstrins.d	$a2, $a1, 63, 20
	st.w	$a2, $s4, 36
	ld.wu	$a1, $s0, 36
	srli.d	$a1, $a1, 20
	bstrins.d	$a0, $a1, 63, 20
	st.w	$a0, $s4, 36
	ld.hu	$a0, $s0, 44
	ld.h	$a1, $s4, 44
	bstrpick.d	$a0, $a0, 7, 7
	bstrins.d	$a1, $a0, 7, 7
	st.h	$a1, $s4, 44
	ld.hu	$a0, $s0, 44
	bstrpick.d	$a0, $a0, 8, 8
	bstrins.d	$a1, $a0, 8, 8
	st.h	$a1, $s4, 44
	ld.hu	$a0, $s0, 44
	bstrpick.d	$a0, $a0, 9, 9
	bstrins.d	$a1, $a0, 9, 9
	st.h	$a1, $s4, 44
	ld.hu	$a0, $s0, 44
	bstrpick.d	$a0, $a0, 12, 10
	bstrins.d	$a1, $a0, 12, 10
	st.h	$a1, $s4, 44
	ld.hu	$a0, $s0, 44
	srli.d	$a0, $a0, 13
	bstrins.d	$a1, $a0, 63, 13
	st.h	$a1, $s4, 44
	ld.h	$a0, $s0, 46
	st.h	$a0, $s4, 46
	ld.b	$a0, $s0, 41
	st.b	$a0, $s4, 41
	ld.b	$a0, $s0, 42
	move	$s0, $fp
	ld.bu	$a2, $fp, 0
	st.b	$a0, $s4, 42
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a4, $a0
	move	$fp, $s8
	st.w	$a2, $s8, 0
	beqz	$a0, .LBB1_81
# %bb.80:                               # %if.else356
                                        #   in Loop: Header=BB1_17 Depth=1
	st.d	$a0, $s2, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $a4, 3
	st.d	$a1, $a2, 0
	b	.LBB1_82
.LBB1_81:                               # %if.then354
                                        #   in Loop: Header=BB1_17 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
.LBB1_82:                               # %cond.end411
                                        #   in Loop: Header=BB1_17 Depth=1
	ld.d	$s8, $sp, 64                    # 8-byte Folded Reload
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s3, 0
	st.d	$a0, $s1, 0
	st.d	$s8, $s2, 0
	ld.d	$a1, $s8, 0
	st.d	$a1, $s7, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s8, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s2, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s7, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s1, 0
	ld.d	$a0, $s3, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s1, 0
	st.d	$s4, $s2, 0
	beqz	$a0, .LBB1_16
# %bb.83:                               # %cond.false420
                                        #   in Loop: Header=BB1_17 Depth=1
	ld.d	$a1, $s4, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s7, 0
	st.d	$a2, $s4, 16
	st.d	$s4, $a2, 24
	b	.LBB1_15
.LBB1_84:                               # %for.end1516
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.Lfunc_end1:
	.size	EncloseInHcat, .Lfunc_end1-EncloseInHcat
                                        # -- End function
	.globl	ConvertGalleyList               # -- Begin function ConvertGalleyList
	.p2align	5
	.type	ConvertGalleyList,@function
ConvertGalleyList:                      # @ConvertGalleyList
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
	move	$s0, $a0
	ld.d	$a0, $a0, 8
	move	$fp, $a0
	.p2align	4, , 16
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $fp, 16
	ld.bu	$a1, $fp, 32
	beqz	$a1, .LBB2_1
# %bb.2:                                # %for.end
	ld.d	$a1, $fp, 8
	.p2align	4, , 16
.LBB2_3:                                # %for.cond13
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a1, 16
	ld.bu	$a2, $a1, 32
	beqz	$a2, .LBB2_3
# %bb.4:                                # %for.end24
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$s2, $a2, %got_pc_lo12(zz_hold)
	ld.d	$a2, $a0, 24
	st.d	$a0, $s2, 0
	beq	$a2, $a0, .LBB2_6
# %bb.5:                                # %cond.false
	pcalau12i	$a3, %got_pc_hi20(zz_res)
	ld.d	$a3, $a3, %got_pc_lo12(zz_res)
	ld.d	$a4, $a0, 16
	st.d	$a2, $a3, 0
	st.d	$a4, $a2, 16
	st.d	$a2, $a4, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	move	$a2, $a0
	b	.LBB2_7
.LBB2_6:                                # %for.end24.cond.end_crit_edge
	ld.d	$a2, $a0, 16
.LBB2_7:                                # %cond.end
	ld.d	$a3, $a1, 16
	st.d	$a2, $a1, 16
	ld.d	$a2, $a0, 16
	pcalau12i	$a4, %got_pc_hi20(zz_tmp)
	st.d	$a1, $a2, 24
	st.d	$a3, $a0, 16
	st.d	$a0, $a3, 24
	ld.d	$a0, $fp, 8
	ld.d	$s3, $a4, %got_pc_lo12(zz_tmp)
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$s7, $a1, %got_pc_lo12(xx_link)
	ld.d	$a1, $a0, 24
	st.d	$a3, $s3, 0
	st.d	$a0, $s7, 0
	beq	$a1, $a0, .LBB2_9
# %bb.8:                                # %cond.false96
	ld.d	$a2, $a0, 16
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
.LBB2_9:                                # %cond.end118
	ld.d	$a1, $a0, 8
	st.d	$a0, $s2, 0
	beq	$a1, $a0, .LBB2_11
# %bb.10:                               # %cond.false126
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a2, $a2, %got_pc_lo12(zz_res)
	st.d	$a1, $a2, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a1, $s2, 0
	ld.d	$a0, $a2, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $s7, 0
	st.d	$a1, $a1, 8
.LBB2_11:                               # %cond.end148
	ld.bu	$a1, $a0, 32
	pcalau12i	$a2, %got_pc_hi20(zz_lengths)
	ld.d	$s5, $a2, %got_pc_lo12(zz_lengths)
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	add.d	$a1, $s5, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(zz_free)
	ld.d	$s4, $a2, %got_pc_lo12(zz_free)
	pcalau12i	$a2, %got_pc_hi20(zz_size)
	ld.d	$s6, $a2, %got_pc_lo12(zz_size)
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s4, $a2
	st.d	$a0, $s2, 0
	st.w	$a1, $s6, 0
	st.d	$a2, $a0, 0
	ld.w	$a0, $s6, 0
	ld.d	$a1, $s2, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s4, $a0
	ld.d	$a0, $s0, 24
	ld.d	$a2, $a0, 24
	ld.d	$a1, $a0, 16
	st.d	$a0, $s7, 0
	beq	$a2, $a0, .LBB2_13
# %bb.12:                               # %cond.false186
	st.d	$a1, $a2, 16
	st.d	$a2, $a1, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	move	$a1, $a0
.LBB2_13:                               # %cond.end208
	ld.d	$a2, $fp, 16
	st.d	$a1, $fp, 16
	ld.d	$a1, $a0, 16
	pcalau12i	$a3, %got_pc_hi20(zz_res)
	ld.d	$s8, $a3, %got_pc_lo12(zz_res)
	st.d	$fp, $a1, 24
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
	ld.d	$a1, $s0, 8
	st.d	$a0, $s8, 0
	st.d	$fp, $s2, 0
	st.d	$a2, $s3, 0
	move	$a0, $zero
	beq	$a1, $s0, .LBB2_15
	.p2align	4, , 16
.LBB2_14:                               # %for.inc250
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a1, 8
	addi.w	$a0, $a0, 1
	bne	$a1, $s0, .LBB2_14
.LBB2_15:                               # %for.end254
	addi.d	$a2, $sp, 16
	addi.d	$a3, $sp, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(BuildMergeTree)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 8
	move	$s1, $a0
	bne	$a1, $s0, .LBB2_17
# %bb.16:                               # %land.lhs.true
	ld.d	$a0, $s0, 24
	beq	$a0, $s0, .LBB2_18
.LBB2_17:                               # %if.then
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a5, $a0, %pc_lo12(.L.str.8)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB2_18:                               # %if.end
	ld.bu	$a0, $s0, 32
	addi.d	$a1, $a0, -11
	sltui	$a1, $a1, 2
	addi.d	$a2, $s0, 33
	add.d	$a0, $s5, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ld.bu	$a0, $a0, 0
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s4, $a1
	st.d	$s0, $s2, 0
	st.w	$a0, $s6, 0
	st.d	$a1, $s0, 0
	ld.w	$a0, $s6, 0
	ld.d	$a1, $s2, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s4, $a0
	ld.d	$a1, $s1, 8
	move	$a0, $a1
	.p2align	4, , 16
.LBB2_19:                               # %for.cond302
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a2, $a0, 32
	beqz	$a2, .LBB2_19
# %bb.20:                               # %for.end313
	ld.d	$a2, $a1, 8
	st.d	$a1, $s7, 0
	st.d	$a1, $s2, 0
	beq	$a2, $a1, .LBB2_22
# %bb.21:                               # %cond.end345
	st.d	$a2, $s8, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a2, 0
	ld.d	$a2, $s2, 0
	ld.d	$a1, $s8, 0
	ld.d	$a3, $a2, 0
	st.d	$a1, $a3, 8
	st.d	$a2, $a2, 0
	ld.d	$a1, $s7, 0
	st.d	$a2, $a2, 8
	st.d	$a1, $s8, 0
	st.d	$fp, $s2, 0
	bnez	$a1, .LBB2_23
	b	.LBB2_24
.LBB2_22:                               # %cond.end345.thread
	st.d	$a1, $s8, 0
	st.d	$fp, $s2, 0
.LBB2_23:                               # %cond.false354
	ld.d	$a2, $fp, 0
	st.d	$a2, $s3, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $fp, 0
	ld.d	$a1, $s8, 0
	ld.d	$a2, $s2, 0
	ld.d	$a3, $a1, 0
	ld.d	$a4, $s3, 0
	st.d	$a2, $a3, 8
	st.d	$a4, $a1, 0
	ld.d	$a1, $s8, 0
	st.d	$a1, $a4, 8
.LBB2_24:                               # %cond.end378
	ld.d	$a1, $s1, 0
	ld.d	$a2, $a1, 8
	st.d	$a1, $s7, 0
	st.d	$a1, $s2, 0
	beq	$a2, $a1, .LBB2_27
# %bb.25:                               # %cond.end411
	st.d	$a2, $s8, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a2, 0
	ld.d	$a2, $s2, 0
	ld.d	$a1, $s8, 0
	ld.d	$a3, $a2, 0
	st.d	$a1, $a3, 8
	st.d	$a2, $a2, 0
	ld.d	$a1, $s7, 0
	st.d	$a2, $a2, 8
	st.d	$a1, $s8, 0
	st.d	$a0, $s2, 0
	bnez	$a1, .LBB2_28
# %bb.26:                               # %cond.end444
	ld.d	$a0, $s1, 8
	bne	$a0, $s1, .LBB2_30
	b	.LBB2_29
.LBB2_27:                               # %cond.end411.thread
	st.d	$a1, $s8, 0
	st.d	$a0, $s2, 0
.LBB2_28:                               # %cond.false420
	ld.d	$a2, $a0, 0
	st.d	$a2, $s3, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a0, 0
	ld.d	$a0, $s8, 0
	ld.d	$a1, $s2, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s3, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s8, 0
	st.d	$a0, $a3, 8
	ld.d	$a0, $s1, 8
	bne	$a0, $s1, .LBB2_30
.LBB2_29:                               # %land.lhs.true451
	ld.d	$a0, $s1, 24
	beq	$a0, $s1, .LBB2_31
.LBB2_30:                               # %if.then457
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a5, $a0, %pc_lo12(.L.str.9)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB2_31:                               # %if.end459
	ld.bu	$a0, $s1, 32
	addi.d	$a1, $a0, -11
	sltui	$a1, $a1, 2
	addi.d	$a2, $s1, 33
	add.d	$a0, $s5, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ld.bu	$a0, $a0, 0
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s4, $a1
	st.d	$s1, $s2, 0
	st.w	$a0, $s6, 0
	st.d	$a1, $s1, 0
	ld.w	$a0, $s6, 0
	ld.d	$a1, $s2, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s4, $a0
	move	$a0, $fp
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
.Lfunc_end2:
	.size	ConvertGalleyList, .Lfunc_end2-ConvertGalleyList
                                        # -- End function
	.p2align	5                               # -- Begin function BuildMergeTree
	.type	BuildMergeTree,@function
BuildMergeTree:                         # @BuildMergeTree
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	ori	$a4, $zero, 1
	move	$fp, $a2
	bne	$a0, $a4, .LBB3_3
# %bb.1:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$a0, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a0, $a0, 81
	pcalau12i	$a2, %got_pc_hi20(zz_free)
	ld.d	$a2, $a2, %got_pc_lo12(zz_free)
	pcalau12i	$a4, %got_pc_hi20(zz_size)
	ld.d	$a4, $a4, %got_pc_lo12(zz_size)
	slli.d	$a5, $a0, 3
	ldx.d	$s0, $a2, $a5
	st.w	$a0, $a4, 0
	beqz	$s0, .LBB3_9
# %bb.2:                                # %if.else9
	pcalau12i	$a4, %got_pc_hi20(zz_hold)
	ld.d	$a4, $a4, %got_pc_lo12(zz_hold)
	st.d	$s0, $a4, 0
	ld.d	$a4, $s0, 0
	alsl.d	$a0, $a0, $a2, 3
	st.d	$a4, $a0, 0
	b	.LBB3_10
.LBB3_3:                                # %if.else113
	bstrpick.d	$a2, $a0, 31, 31
	add.w	$a2, $a0, $a2
	srai.d	$s0, $a2, 1
	move	$s3, $a0
	move	$a0, $s0
	move	$s1, $a1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(BuildMergeTree)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	sub.w	$a0, $s3, $s0
	addi.d	$a2, $sp, 32
	addi.d	$a3, $sp, 24
	move	$a1, $s1
	pcaddu18i	$ra, %call36(BuildMergeTree)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 24
	ld.d	$a2, $a1, 8
	move	$s0, $a0
	beq	$a2, $a1, .LBB3_15
	.p2align	4, , 16
.LBB3_4:                                # %for.cond127.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_5 Depth 2
	move	$s1, $a2
	.p2align	4, , 16
.LBB3_5:                                # %for.cond127
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s1, $s1, 16
	ld.bu	$a0, $s1, 32
	beqz	$a0, .LBB3_5
# %bb.6:                                # %for.end138
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.bu	$a0, $s1, 126
	andi	$a0, $a0, 4
	bnez	$a0, .LBB3_8
# %bb.7:                                # %for.cond120
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a2, $a2, 8
	bne	$a2, $a1, .LBB3_4
.LBB3_8:                                # %for.end150
	bne	$s1, $a1, .LBB3_17
	b	.LBB3_16
.LBB3_9:                                # %if.then7
	pcalau12i	$a2, %got_pc_hi20(no_fpos)
	ld.d	$a2, $a2, %got_pc_lo12(no_fpos)
	ld.d	$a2, $a2, 0
	move	$s0, $a1
	move	$a1, $a2
	move	$s1, $a3
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	move	$a3, $s1
	move	$s0, $a0
.LBB3_10:                               # %if.end15
	ori	$a0, $zero, 81
	st.b	$a0, $s0, 32
	st.d	$s0, $s0, 24
	st.d	$s0, $s0, 16
	st.d	$s0, $s0, 8
	st.d	$s0, $s0, 0
	ld.d	$a1, $a1, 8
	move	$s1, $a1
	.p2align	4, , 16
.LBB3_11:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $s1, 16
	ld.bu	$a0, $s1, 32
	beqz	$a0, .LBB3_11
# %bb.12:                               # %for.end
	pcalau12i	$a0, %got_pc_hi20(xx_link)
	ld.d	$a2, $a0, %got_pc_lo12(xx_link)
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	ld.d	$a4, $a1, 8
	st.d	$a1, $a2, 0
	st.d	$a1, $a0, 0
	beq	$a4, $a1, .LBB3_19
# %bb.13:                               # %cond.end
	pcalau12i	$a5, %got_pc_hi20(zz_res)
	ld.d	$a5, $a5, %got_pc_lo12(zz_res)
	st.d	$a4, $a5, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a4, 0
	ld.d	$a4, $a0, 0
	ld.d	$a1, $a5, 0
	ld.d	$a6, $a4, 0
	st.d	$a1, $a6, 8
	st.d	$a4, $a4, 0
	ld.d	$a1, $a2, 0
	st.d	$a4, $a4, 8
	st.d	$a1, $a5, 0
	st.d	$s0, $a0, 0
	bnez	$a1, .LBB3_20
# %bb.14:                               # %cond.end101
	ld.bu	$a0, $s1, 32
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB3_21
	b	.LBB3_22
.LBB3_15:
                                        # implicit-def: $r24
.LBB3_16:                               # %if.then153
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a5, $a0, %pc_lo12(.L.str.25)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB3_17:                               # %if.end155
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s3, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a0, $s3, 2
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$s4, $a1, %got_pc_lo12(zz_free)
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$a2, $a1, %got_pc_lo12(zz_size)
	slli.d	$a1, $a0, 3
	ldx.d	$fp, $s4, $a1
	st.w	$a0, $a2, 0
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	beqz	$fp, .LBB3_24
# %bb.18:                               # %if.else169
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$fp, $a1, 0
	ld.d	$a1, $fp, 0
	alsl.d	$a0, $a0, $s4, 3
	st.d	$a1, $a0, 0
	b	.LBB3_25
.LBB3_19:                               # %cond.end.thread
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a2, $a2, %got_pc_lo12(zz_res)
	st.d	$a1, $a2, 0
	st.d	$s0, $a0, 0
.LBB3_20:                               # %cond.false77
	ld.d	$a2, $s0, 0
	pcalau12i	$a4, %got_pc_hi20(zz_tmp)
	ld.d	$a4, $a4, %got_pc_lo12(zz_tmp)
	st.d	$a2, $a4, 0
	ld.d	$a1, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a2, $a2, %got_pc_lo12(zz_res)
	st.d	$a1, $s0, 0
	ld.d	$a1, $a2, 0
	ld.d	$a0, $a0, 0
	ld.d	$a5, $a1, 0
	ld.d	$a4, $a4, 0
	st.d	$a0, $a5, 8
	st.d	$a4, $a1, 0
	ld.d	$a0, $a2, 0
	st.d	$a0, $a4, 8
	ld.bu	$a0, $s1, 32
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB3_22
.LBB3_21:                               # %land.lhs.true
	ld.d	$a0, $s1, 80
	ld.bu	$a1, $a0, 126
	andi	$a1, $a1, 8
	bnez	$a1, .LBB3_23
.LBB3_22:                               # %if.then108
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a5, $a0, %pc_lo12(.L.str.24)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$s2, $a3
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a3, $s2
	ld.d	$a0, $s1, 80
.LBB3_23:                               # %if.end110
	st.d	$a0, $a3, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(DetachEnv)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(AttachEnv)
	jirl	$ra, $ra, 0
	b	.LBB3_67
.LBB3_24:                               # %if.then167
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	move	$fp, $a0
	st.d	$a0, $a1, 0
.LBB3_25:                               # %if.end178
	ori	$a0, $zero, 2
	st.b	$a0, $fp, 32
	st.d	$fp, $fp, 8
	st.d	$fp, $fp, 0
	move	$s0, $s3
	ld.bu	$a0, $s3, 10
	st.d	$fp, $fp, 24
	st.d	$fp, $fp, 16
	st.d	$s1, $fp, 80
	slli.d	$a1, $a0, 3
	ldx.d	$s3, $s4, $a1
	st.w	$a0, $a2, 0
	beqz	$s3, .LBB3_27
# %bb.26:                               # %if.else207
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s3, $a1, 0
	ld.d	$a1, $s3, 0
	alsl.d	$a0, $a0, $s4, 3
	st.d	$a1, $a0, 0
	b	.LBB3_28
.LBB3_27:                               # %if.then205
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	move	$s3, $a0
	st.d	$a0, $a1, 0
.LBB3_28:                               # %if.end216
	ori	$a0, $zero, 10
	st.b	$a0, $s3, 32
	st.d	$s3, $s3, 24
	st.d	$s3, $s3, 16
	st.d	$s3, $s3, 8
	st.d	$s3, $s3, 0
	ori	$a1, $zero, 144
	move	$a0, $s1
	pcaddu18i	$ra, %call36(ChildSym)
	jirl	$ra, $ra, 0
	ld.bu	$a2, $s0, 0
	st.d	$a0, $s3, 80
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s4, $a0
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	st.w	$a2, $a4, 0
	beqz	$a0, .LBB3_30
# %bb.29:                               # %if.else246
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s4, 3
	st.d	$a1, $a2, 0
	b	.LBB3_31
.LBB3_30:                               # %if.then244
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
.LBB3_31:                               # %cond.end301
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$s8, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$s7, $a1, %got_pc_lo12(zz_res)
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$s6, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a0, 0
	st.d	$a0, $s8, 0
	st.d	$a0, $s7, 0
	st.d	$fp, $s6, 0
	ld.d	$a1, $fp, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$s5, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a1, $s5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $fp, 0
	ld.d	$a0, $s7, 0
	ld.d	$a1, $s6, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s5, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s7, 0
	ld.d	$a0, $s8, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s7, 0
	st.d	$s3, $s6, 0
	beqz	$a0, .LBB3_33
# %bb.32:                               # %cond.false310
	ld.d	$a1, $s3, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s5, 0
	st.d	$a2, $s3, 16
	st.d	$s3, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB3_33:                               # %cond.end334
	ld.bu	$a2, $s0, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s4, $a0
	st.w	$a2, $a4, 0
	beqz	$a0, .LBB3_35
# %bb.34:                               # %if.else349
	st.d	$a0, $s6, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s4, 3
	st.d	$a1, $a2, 0
	b	.LBB3_36
.LBB3_35:                               # %if.then347
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
.LBB3_36:                               # %cond.end404
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s8, 0
	st.d	$a0, $s7, 0
	st.d	$s3, $s6, 0
	ld.d	$a1, $s3, 0
	st.d	$a1, $s5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s3, 0
	ld.d	$a0, $s7, 0
	ld.d	$a1, $s6, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s5, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s7, 0
	ld.d	$a0, $s8, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s7, 0
	st.d	$s2, $s6, 0
	beqz	$s2, .LBB3_39
# %bb.37:                               # %cond.end404
	beqz	$a0, .LBB3_39
# %bb.38:                               # %cond.false413
	ld.d	$a1, $s2, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s5, 0
	st.d	$a2, $s2, 16
	st.d	$s2, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB3_39:                               # %cond.end437
	move	$s3, $s0
	ld.bu	$a0, $s0, 10
	slli.d	$a1, $a0, 3
	ldx.d	$s2, $s4, $a1
	st.w	$a0, $a4, 0
	beqz	$s2, .LBB3_41
# %bb.40:                               # %if.else452
	st.d	$s2, $s6, 0
	ld.d	$a1, $s2, 0
	alsl.d	$a0, $a0, $s4, 3
	st.d	$a1, $a0, 0
	b	.LBB3_42
.LBB3_41:                               # %if.then450
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$a0, $s6, 0
.LBB3_42:                               # %if.end461
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ori	$a0, $zero, 10
	st.b	$a0, $s2, 32
	st.d	$s2, $s2, 24
	st.d	$s2, $s2, 16
	st.d	$s2, $s2, 8
	st.d	$s2, $s2, 0
	ori	$a1, $zero, 146
	move	$a0, $s1
	pcaddu18i	$ra, %call36(ChildSym)
	jirl	$ra, $ra, 0
	ld.bu	$a2, $s3, 0
	st.d	$a0, $s2, 80
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s4, $a0
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	st.w	$a2, $a4, 0
	beqz	$a0, .LBB3_44
# %bb.43:                               # %if.else491
	st.d	$a0, $s6, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s4, 3
	st.d	$a1, $a2, 0
	b	.LBB3_45
.LBB3_44:                               # %if.then489
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
.LBB3_45:                               # %cond.end546
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s8, 0
	st.d	$a0, $s7, 0
	st.d	$fp, $s6, 0
	ld.d	$a1, $fp, 0
	st.d	$a1, $s5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $fp, 0
	ld.d	$a0, $s7, 0
	ld.d	$a1, $s6, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s5, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s7, 0
	ld.d	$a0, $s8, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s7, 0
	st.d	$s2, $s6, 0
	beqz	$a0, .LBB3_47
# %bb.46:                               # %cond.false555
	ld.d	$a1, $s2, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s5, 0
	st.d	$a2, $s2, 16
	st.d	$s2, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB3_47:                               # %cond.end579
	ld.bu	$a2, $s3, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s4, $a0
	st.w	$a2, $a4, 0
	beqz	$a0, .LBB3_49
# %bb.48:                               # %if.else594
	st.d	$a0, $s6, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s4, 3
	st.d	$a1, $a2, 0
	b	.LBB3_50
.LBB3_49:                               # %if.then592
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
.LBB3_50:                               # %cond.end649
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s8, 0
	st.d	$a0, $s7, 0
	st.d	$s2, $s6, 0
	ld.d	$a1, $s2, 0
	st.d	$a1, $s5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s2, 0
	ld.d	$a0, $s7, 0
	ld.d	$a1, $s6, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s5, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s7, 0
	ld.d	$a0, $s8, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s7, 0
	st.d	$s0, $s6, 0
	beqz	$s0, .LBB3_53
# %bb.51:                               # %cond.end649
	beqz	$a0, .LBB3_53
# %bb.52:                               # %cond.false658
	ld.d	$a1, $s0, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s5, 0
	st.d	$a2, $s0, 16
	st.d	$s0, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB3_53:                               # %cond.end682
	ld.bu	$a0, $s3, 81
	slli.d	$a1, $a0, 3
	ldx.d	$s0, $s4, $a1
	st.w	$a0, $a4, 0
	beqz	$s0, .LBB3_55
# %bb.54:                               # %if.else697
	st.d	$s0, $s6, 0
	ld.d	$a1, $s0, 0
	alsl.d	$a0, $a0, $s4, 3
	st.d	$a1, $a0, 0
	b	.LBB3_56
.LBB3_55:                               # %if.then695
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	move	$s0, $a0
	st.d	$a0, $s6, 0
.LBB3_56:                               # %if.end706
	ori	$a0, $zero, 81
	st.b	$a0, $s0, 32
	st.d	$s0, $s0, 0
	ld.bu	$a2, $s3, 0
	st.d	$s0, $s0, 24
	st.d	$s0, $s0, 16
	st.d	$s0, $s0, 8
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s4, $a0
	st.w	$a2, $a4, 0
	beqz	$a0, .LBB3_58
# %bb.57:                               # %if.else734
	st.d	$a0, $s6, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s4, 3
	st.d	$a1, $a2, 0
	b	.LBB3_59
.LBB3_58:                               # %if.then732
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
.LBB3_59:                               # %cond.end789
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s8, 0
	st.d	$a0, $s7, 0
	st.d	$s0, $s6, 0
	ld.d	$a1, $s0, 0
	st.d	$a1, $s5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s0, 0
	ld.d	$a0, $s7, 0
	ld.d	$a1, $s6, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s5, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s7, 0
	ld.d	$a0, $s8, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s7, 0
	st.d	$fp, $s6, 0
	beqz	$a0, .LBB3_61
# %bb.60:                               # %cond.false798
	ld.d	$a1, $fp, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s5, 0
	st.d	$a2, $fp, 16
	st.d	$fp, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB3_61:                               # %cond.end822
	ld.bu	$a2, $s3, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s4, $a0
	st.w	$a2, $a4, 0
	beqz	$a0, .LBB3_63
# %bb.62:                               # %if.else837
	st.d	$a0, $s6, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s4, 3
	st.d	$a1, $a2, 0
	b	.LBB3_64
.LBB3_63:                               # %if.then835
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB3_64:                               # %cond.end892
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s8, 0
	st.d	$a0, $s7, 0
	st.d	$s0, $s6, 0
	ld.d	$a1, $s0, 0
	st.d	$a1, $s5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s0, 0
	ld.d	$a0, $s7, 0
	ld.d	$a1, $s6, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s5, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a2, $s7, 0
	ld.d	$a0, $s8, 0
	ld.d	$a1, $sp, 32
	st.d	$a2, $a3, 8
	st.d	$a0, $s7, 0
	st.d	$a1, $s6, 0
	beqz	$a1, .LBB3_67
# %bb.65:                               # %cond.end892
	beqz	$a0, .LBB3_67
# %bb.66:                               # %cond.false901
	ld.d	$a2, $a1, 16
	ld.d	$a3, $a0, 16
	st.d	$a2, $s5, 0
	st.d	$a3, $a1, 16
	st.d	$a1, $a3, 24
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
.LBB3_67:                               # %if.end927
	move	$a0, $s0
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end3:
	.size	BuildMergeTree, .Lfunc_end3-BuildMergeTree
                                        # -- End function
	.globl	BuildEnclose                    # -- Begin function BuildEnclose
	.p2align	5
	.type	BuildEnclose,@function
BuildEnclose:                           # @BuildEnclose
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
	move	$fp, $a0
	ld.d	$a0, $a0, 80
	ld.d	$a1, $a0, 8
	beq	$a1, $a0, .LBB4_5
	.p2align	4, , 16
.LBB4_1:                                # %for.cond4.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_2 Depth 2
	move	$s3, $a1
	.p2align	4, , 16
.LBB4_2:                                # %for.cond4
                                        #   Parent Loop BB4_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s3, $s3, 16
	ld.bu	$a2, $s3, 32
	beqz	$a2, .LBB4_2
# %bb.3:                                # %for.end
                                        #   in Loop: Header=BB4_1 Depth=1
	ld.bu	$a2, $s3, 126
	andi	$a2, $a2, 16
	bnez	$a2, .LBB4_7
# %bb.4:                                # %for.cond
                                        #   in Loop: Header=BB4_1 Depth=1
	ld.d	$a1, $a1, 8
	bne	$a1, $a0, .LBB4_1
	b	.LBB4_6
.LBB4_5:
                                        # implicit-def: $r26
.LBB4_6:                                # %if.then19
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a5, $a0, %pc_lo12(.L.str.10)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB4_7:                                # %if.end20
	ld.d	$s4, $s3, 8
	beq	$s4, $s3, .LBB4_19
# %bb.8:                                # %for.cond31.preheader.lr.ph
	move	$s5, $zero
	ori	$s6, $zero, 2
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$s0, $a0, %pc_lo12(.L.str.11)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$s1, $a0, %pc_lo12(.L.str.12)
	ori	$s7, $zero, 146
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$s2, $a0, %pc_lo12(.L.str.13)
	b	.LBB4_11
	.p2align	4, , 16
.LBB4_9:                                # %sw.bb
                                        #   in Loop: Header=BB4_11 Depth=1
	addi.d	$a4, $s8, 32
	ori	$a0, $zero, 44
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	move	$a2, $s0
	move	$a5, $s1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB4_10:                               # %for.inc58
                                        #   in Loop: Header=BB4_11 Depth=1
	ld.d	$s4, $s4, 8
	beq	$s4, $s3, .LBB4_18
.LBB4_11:                               # %for.cond31.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_12 Depth 2
	move	$s8, $s4
	.p2align	4, , 16
.LBB4_12:                               # %for.cond31
                                        #   Parent Loop BB4_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s8, $s8, 16
	ld.bu	$a0, $s8, 32
	beqz	$a0, .LBB4_12
# %bb.13:                               # %for.cond31
                                        #   in Loop: Header=BB4_11 Depth=1
	addi.d	$a1, $a0, -144
	bltu	$a1, $s6, .LBB4_9
# %bb.14:                               # %for.cond31
                                        #   in Loop: Header=BB4_11 Depth=1
	bne	$a0, $s7, .LBB4_10
# %bb.15:                               # %sw.bb48
                                        #   in Loop: Header=BB4_11 Depth=1
	ld.hu	$a0, $s3, 41
	andi	$a0, $a0, 256
	beqz	$a0, .LBB4_17
# %bb.16:                               # %if.then54
                                        #   in Loop: Header=BB4_11 Depth=1
	addi.d	$a4, $s8, 32
	ori	$a0, $zero, 44
	ori	$a1, $zero, 2
	ori	$a3, $zero, 1
	move	$a2, $s2
	move	$a5, $s1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB4_17:                               # %for.inc58
                                        #   in Loop: Header=BB4_11 Depth=1
	move	$s5, $s8
	b	.LBB4_10
.LBB4_18:                               # %for.end62
	bnez	$s5, .LBB4_20
.LBB4_19:                               # %if.then65
	addi.d	$a4, $s3, 32
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a2, $a0, %pc_lo12(.L.str.14)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a5, $a0, %pc_lo12(.L.str.12)
	ori	$a0, $zero, 44
	ori	$a1, $zero, 3
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$s5, $zero
.LBB4_20:                               # %if.end68
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s2, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a0, $s2, 2
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$s4, $a1, %got_pc_lo12(zz_free)
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$a2, $a1, %got_pc_lo12(zz_size)
	slli.d	$a1, $a0, 3
	ldx.d	$s0, $s4, $a1
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	st.w	$a0, $a2, 0
	beqz	$s0, .LBB4_22
# %bb.21:                               # %if.else80
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s0, $a1, 0
	ld.d	$a1, $s0, 0
	alsl.d	$a0, $a0, $s4, 3
	st.d	$a1, $a0, 0
	b	.LBB4_23
.LBB4_22:                               # %if.then78
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	move	$s0, $a0
	st.d	$a0, $a1, 0
.LBB4_23:                               # %if.end89
	ori	$a0, $zero, 2
	st.b	$a0, $s0, 32
	st.d	$s0, $s0, 24
	st.d	$s0, $s0, 16
	st.d	$s0, $s0, 8
	st.d	$s0, $s0, 0
	ld.h	$a0, $fp, 34
	st.h	$a0, $s0, 34
	ld.wu	$a1, $fp, 36
	ld.wu	$a0, $s0, 36
	srli.d	$a0, $a0, 20
	move	$a2, $a1
	bstrins.d	$a2, $a0, 63, 20
	st.w	$a2, $s0, 36
	ld.wu	$a0, $fp, 36
	srli.d	$a2, $a0, 20
	ld.bu	$a0, $s2, 10
	bstrins.d	$a1, $a2, 63, 20
	st.w	$a1, $s0, 36
	st.d	$s3, $s0, 80
	slli.d	$a1, $a0, 3
	ldx.d	$s1, $s4, $a1
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	st.w	$a0, $s3, 0
	beqz	$s1, .LBB4_25
# %bb.24:                               # %if.else137
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s1, $a1, 0
	ld.d	$a1, $s1, 0
	alsl.d	$a0, $a0, $s4, 3
	st.d	$a1, $a0, 0
	b	.LBB4_26
.LBB4_25:                               # %if.then135
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	move	$s1, $a0
	st.d	$a0, $a1, 0
.LBB4_26:                               # %if.end146
	ori	$a0, $zero, 10
	st.b	$a0, $s1, 32
	st.d	$s1, $s1, 24
	st.d	$s1, $s1, 16
	st.d	$s1, $s1, 8
	st.d	$s1, $s1, 0
	ld.h	$a0, $fp, 34
	st.h	$a0, $s1, 34
	ld.wu	$a0, $fp, 36
	ld.wu	$a1, $s1, 36
	srli.d	$a1, $a1, 20
	move	$a2, $a0
	bstrins.d	$a2, $a1, 63, 20
	st.w	$a2, $s1, 36
	ld.wu	$a1, $fp, 36
	srli.d	$a1, $a1, 20
	ld.bu	$a2, $s2, 0
	bstrins.d	$a0, $a1, 63, 20
	st.w	$a0, $s1, 36
	st.d	$s5, $s1, 80
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s4, $a0
	st.w	$a2, $s3, 0
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	beqz	$a0, .LBB4_28
# %bb.27:                               # %if.else200
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s4, 3
	st.d	$a1, $a2, 0
	b	.LBB4_29
.LBB4_28:                               # %if.then198
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB4_29:                               # %cond.end251
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$s7, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$s5, $a1, %got_pc_lo12(zz_res)
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$s6, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a0, 0
	st.d	$a0, $s7, 0
	st.d	$a0, $s5, 0
	st.d	$s0, $s6, 0
	ld.d	$a1, $s0, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$s8, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a1, $s8, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s0, 0
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s6, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s8, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s5, 0
	ld.d	$a0, $s7, 0
	addi.d	$s2, $fp, 32
	st.d	$a1, $a3, 8
	st.d	$a0, $s5, 0
	st.d	$s1, $s6, 0
	beqz	$a0, .LBB4_31
# %bb.30:                               # %cond.false260
	ld.d	$a1, $s1, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s8, 0
	st.d	$a2, $s1, 16
	st.d	$s1, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB4_31:                               # %cond.end284
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	ori	$a0, $zero, 11
	move	$a2, $s2
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.bu	$a2, $a1, 0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $s4, $a1
	move	$s3, $a0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.w	$a2, $a0, 0
	beqz	$a1, .LBB4_33
# %bb.32:                               # %if.else301
	st.d	$a1, $s6, 0
	ld.d	$a0, $a1, 0
	alsl.d	$a2, $a2, $s4, 3
	st.d	$a0, $a2, 0
	b	.LBB4_34
.LBB4_33:                               # %if.then299
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.LBB4_34:                               # %cond.end356
	st.b	$zero, $a1, 32
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	st.d	$a1, $a1, 0
	st.d	$a1, $s7, 0
	st.d	$a1, $s5, 0
	st.d	$s1, $s6, 0
	ld.d	$a0, $s1, 0
	st.d	$a0, $s8, 0
	ld.d	$a0, $a1, 0
	st.d	$a0, $s1, 0
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s6, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s8, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s5, 0
	ld.d	$a0, $s7, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s5, 0
	st.d	$s3, $s6, 0
	beqz	$s3, .LBB4_37
# %bb.35:                               # %cond.end356
	beqz	$a0, .LBB4_37
# %bb.36:                               # %cond.false365
	ld.d	$a1, $s3, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s8, 0
	st.d	$a2, $s3, 16
	st.d	$s3, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB4_37:                               # %cond.end389
	ld.d	$fp, $fp, 8
	.p2align	4, , 16
.LBB4_38:                               # %for.cond397
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $fp, 16
	ld.bu	$a0, $fp, 32
	beqz	$a0, .LBB4_38
# %bb.39:                               # %for.cond397
	ori	$a1, $zero, 2
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB4_41
# %bb.40:                               # %if.then414
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a5, $a0, %pc_lo12(.L.str.17)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB4_41:                               # %if.end416
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(CopyObject)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(SetEnv)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.bu	$a2, $s2, 81
	slli.d	$a1, $a2, 3
	ldx.d	$s1, $s4, $a1
	move	$fp, $a0
	st.w	$a2, $s3, 0
	beqz	$s1, .LBB4_43
# %bb.42:                               # %if.else433
	st.d	$s1, $s6, 0
	ld.d	$a0, $s1, 0
	alsl.d	$a1, $a2, $s4, 3
	st.d	$a0, $a1, 0
	b	.LBB4_44
.LBB4_43:                               # %if.then431
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$a0, $s6, 0
.LBB4_44:                               # %if.end442
	ori	$a0, $zero, 81
	st.b	$a0, $s1, 32
	st.d	$s1, $s1, 0
	ld.bu	$a2, $s2, 0
	st.d	$s1, $s1, 24
	st.d	$s1, $s1, 16
	st.d	$s1, $s1, 8
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s4, $a0
	st.w	$a2, $s3, 0
	beqz	$a0, .LBB4_46
# %bb.45:                               # %if.else470
	st.d	$a0, $s6, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s4, 3
	st.d	$a1, $a2, 0
	b	.LBB4_47
.LBB4_46:                               # %if.then468
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB4_47:                               # %cond.end525
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s7, 0
	st.d	$a0, $s5, 0
	st.d	$s1, $s6, 0
	ld.d	$a1, $s1, 0
	st.d	$a1, $s8, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s1, 0
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s6, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s8, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s5, 0
	ld.d	$a0, $s7, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s5, 0
	st.d	$s0, $s6, 0
	beqz	$a0, .LBB4_49
# %bb.48:                               # %cond.false534
	ld.d	$a1, $s0, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s8, 0
	st.d	$a2, $s0, 16
	st.d	$s0, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB4_49:                               # %cond.end558
	ld.bu	$a2, $s2, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s4, $a0
	st.w	$a2, $s3, 0
	beqz	$a0, .LBB4_51
# %bb.50:                               # %if.else573
	st.d	$a0, $s6, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s4, 3
	st.d	$a1, $a2, 0
	b	.LBB4_52
.LBB4_51:                               # %if.then571
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB4_52:                               # %cond.end628
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s7, 0
	st.d	$a0, $s5, 0
	st.d	$s1, $s6, 0
	ld.d	$a1, $s1, 0
	st.d	$a1, $s8, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s1, 0
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s6, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s8, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s5, 0
	ld.d	$a0, $s7, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s5, 0
	st.d	$fp, $s6, 0
	beqz	$fp, .LBB4_55
# %bb.53:                               # %cond.end628
	beqz	$a0, .LBB4_55
# %bb.54:                               # %cond.false637
	ld.d	$a1, $fp, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s8, 0
	st.d	$a2, $fp, 16
	st.d	$fp, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB4_55:                               # %cond.end661
	move	$a0, $s1
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
.Lfunc_end4:
	.size	BuildEnclose, .Lfunc_end4-BuildEnclose
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"assert failed in %s"
	.size	.L.str, 20

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"VerticalHyphenate: type(y) != HCAT!"
	.size	.L.str.1, 36

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"TransferLinks: start_link!"
	.size	.L.str.2, 27

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"FirstDefiniteCompressed!"
	.size	.L.str.3, 25

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"NextDefiniteWithGap: g == nilobj!"
	.size	.L.str.4, 34

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"NDWGC!"
	.size	.L.str.5, 7

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"FirstDefiniteWithGapCompressed: mode(gap(g))!"
	.size	.L.str.6, 46

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"MoveIndexes: is_index!"
	.size	.L.str.7, 23

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"ConvertGalleyList: x!"
	.size	.L.str.8, 22

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"ConvertGalleyList: y!"
	.size	.L.str.9, 22

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"BuildEnclose: no enclose!"
	.size	.L.str.10, 26

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"%s may not have a left or named parameter"
	.size	.L.str.11, 42

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"@Enclose"
	.size	.L.str.12, 9

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"%s may not have a body parameter"
	.size	.L.str.13, 33

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"%s must have a right parameter"
	.size	.L.str.14, 31

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"??"
	.size	.L.str.16, 3

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"BuildEnclose:  hd child!"
	.size	.L.str.17, 25

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"EncloseInHCat: Up(nxt) == nxt!"
	.size	.L.str.18, 31

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"EncloseInHCat: Up(nxt) != nxt!"
	.size	.L.str.19, 31

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"EncloseInHcat: type(s2) != SPLIT!"
	.size	.L.str.20, 34

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.space	1
	.size	.L.str.21, 1

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"assert failed in %s %s"
	.size	.L.str.22, 23

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"FindTarget: unknown index"
	.size	.L.str.23, 26

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"BuildMergeTree: has_m!"
	.size	.L.str.24, 23

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"BuildMergeTree: y!"
	.size	.L.str.25, 19

	.section	".note.GNU-stack","",@progbits
	.addrsig
