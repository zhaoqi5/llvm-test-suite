	.file	"output.c"
	.text
	.globl	O_cleanup                       # -- Begin function O_cleanup
	.p2align	5
	.type	O_cleanup,@function
O_cleanup:                              # @O_cleanup
# %bb.0:                                # %entry
	ret
.Lfunc_end0:
	.size	O_cleanup, .Lfunc_end0-O_cleanup
                                        # -- End function
	.globl	O_output                        # -- Begin function O_output
	.p2align	5
	.type	O_output,@function
O_output:                               # @O_output
# %bb.0:                                # %entry
	beqz	$a0, .LBB1_104
# %bb.1:                                # %while.body.preheader
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
	move	$s4, $zero
	.p2align	4, , 16
.LBB1_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a2, $s4
	move	$s4, $a0
	ld.w	$a0, $a0, 12
	ld.w	$a3, $s4, 16
	addi.d	$a4, $a0, -1
	ld.d	$a0, $s4, 0
	st.w	$a4, $s4, 12
	addi.d	$a3, $a3, -1
	st.w	$a3, $s4, 16
	st.d	$a2, $s4, 0
	bnez	$a0, .LBB1_2
# %bb.3:                                # %while.body7.lr.ph
	andi	$s8, $a1, 8
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$s6, $zero, 1
	pcalau12i	$a0, %got_pc_hi20(_K_ato)
	ld.d	$a0, $a0, %got_pc_lo12(_K_ato)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(_K_bto)
	ld.d	$a0, $a0, %got_pc_lo12(_K_bto)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(_L_atlindex)
	ld.d	$a0, $a0, %got_pc_lo12(_L_atlindex)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	lu12i.w	$a0, 267525
	ori	$a0, $a0, 828
	lu32i.d	$a0, -113341
	lu52i.d	$a0, $a0, 3
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ori	$a4, $zero, 2
	b	.LBB1_6
	.p2align	4, , 16
.LBB1_4:                                # %if.else140
                                        #   in Loop: Header=BB1_6 Depth=1
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_O_do_lines)
	jirl	$ra, $ra, 0
.LBB1_5:                                # %if.end142
                                        #   in Loop: Header=BB1_6 Depth=1
	ori	$a4, $zero, 2
	beqz	$s4, .LBB1_103
.LBB1_6:                                # %while.body7
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_13 Depth 2
                                        #     Child Loop BB1_9 Depth 2
                                        #     Child Loop BB1_84 Depth 2
                                        #     Child Loop BB1_97 Depth 2
	ld.w	$a0, $s4, 8
	ld.w	$s2, $s4, 12
	bne	$a0, $s6, .LBB1_12
# %bb.7:                                #   in Loop: Header=BB1_6 Depth=1
	move	$a0, $s2
	ori	$s5, $zero, 1
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
.LBB1_8:                                # %if.end32
                                        #   in Loop: Header=BB1_6 Depth=1
	ld.w	$a4, $s4, 16
	move	$a1, $a4
	.p2align	4, , 16
.LBB1_9:                                # %do.body35
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s4, $s4, 0
	move	$s1, $a1
	beqz	$s4, .LBB1_31
# %bb.10:                               # %land.lhs.true39
                                        #   in Loop: Header=BB1_9 Depth=2
	ld.w	$a1, $s4, 8
	bne	$a1, $s6, .LBB1_20
# %bb.11:                               # %land.rhs42
                                        #   in Loop: Header=BB1_9 Depth=2
	ld.w	$a2, $s4, 12
	addi.w	$a1, $s1, 1
	beq	$a2, $a0, .LBB1_9
	b	.LBB1_20
	.p2align	4, , 16
.LBB1_12:                               # %do.body.preheader
                                        #   in Loop: Header=BB1_6 Depth=1
	move	$a0, $s2
	.p2align	4, , 16
.LBB1_13:                               # %do.body
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a1, $s4
	ld.d	$s4, $s4, 0
	beqz	$s4, .LBB1_19
# %bb.14:                               # %land.lhs.true
                                        #   in Loop: Header=BB1_13 Depth=2
	ld.w	$a2, $s4, 8
	bne	$a2, $a4, .LBB1_16
# %bb.15:                               # %land.rhs
                                        #   in Loop: Header=BB1_13 Depth=2
	ld.w	$a2, $s4, 12
	addi.w	$a3, $a0, 1
	move	$a0, $a2
	beq	$a2, $a3, .LBB1_13
	b	.LBB1_19
	.p2align	4, , 16
.LBB1_16:                               # %land.lhs.true
                                        #   in Loop: Header=BB1_6 Depth=1
	bne	$a2, $s6, .LBB1_19
# %bb.17:                               # %land.lhs.true21
                                        #   in Loop: Header=BB1_6 Depth=1
	ld.w	$a2, $s4, 12
	ori	$s5, $zero, 3
	bne	$a2, $a0, .LBB1_19
# %bb.18:                               #   in Loop: Header=BB1_6 Depth=1
	move	$a3, $a0
	b	.LBB1_8
	.p2align	4, , 16
.LBB1_19:                               # %if.then29
                                        #   in Loop: Header=BB1_6 Depth=1
	ld.w	$a3, $a1, 12
	ld.w	$a4, $a1, 16
	ori	$s5, $zero, 2
	addi.w	$s1, $zero, -1
.LBB1_20:                               # %skipit
                                        #   in Loop: Header=BB1_6 Depth=1
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
	ori	$s7, $zero, 2
	bnez	$s8, .LBB1_32
.LBB1_21:                               # %if.else49
                                        #   in Loop: Header=BB1_6 Depth=1
	move	$s3, $s2
	bltz	$s2, .LBB1_23
# %bb.22:                               # %if.then51
                                        #   in Loop: Header=BB1_6 Depth=1
	slli.d	$a0, $s2, 3
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	ld.w	$s3, $a0, 0
.LBB1_23:                               # %if.end53
                                        #   in Loop: Header=BB1_6 Depth=1
	move	$fp, $a3
	bltz	$a3, .LBB1_25
# %bb.24:                               # %if.then55
                                        #   in Loop: Header=BB1_6 Depth=1
	slli.d	$a0, $a3, 3
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	ld.w	$fp, $a0, 0
.LBB1_25:                               # %if.end60
                                        #   in Loop: Header=BB1_6 Depth=1
	move	$s0, $a4
	bltz	$a4, .LBB1_27
# %bb.26:                               # %if.then62
                                        #   in Loop: Header=BB1_6 Depth=1
	slli.d	$a0, $a4, 3
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	ld.w	$s0, $a0, 0
.LBB1_27:                               # %if.end67
                                        #   in Loop: Header=BB1_6 Depth=1
	st.d	$s1, $sp, 72                    # 8-byte Folded Spill
	bltz	$s1, .LBB1_29
# %bb.28:                               # %if.then69
                                        #   in Loop: Header=BB1_6 Depth=1
	slli.d	$a0, $s1, 3
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
.LBB1_29:                               # %if.else.i
                                        #   in Loop: Header=BB1_6 Depth=1
	bltz	$s3, .LBB1_33
# %bb.30:                               # %if.end.i
                                        #   in Loop: Header=BB1_6 Depth=1
	slli.d	$a0, $s3, 2
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	addi.w	$a1, $a0, 1
	b	.LBB1_34
.LBB1_31:                               #   in Loop: Header=BB1_6 Depth=1
	move	$s4, $zero
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
	ori	$s7, $zero, 2
	beqz	$s8, .LBB1_21
	.p2align	4, , 16
.LBB1_32:                               # %if.then.i
                                        #   in Loop: Header=BB1_6 Depth=1
	addi.w	$a1, $s2, 1
	st.d	$s1, $sp, 72                    # 8-byte Folded Spill
	move	$s0, $a4
	move	$fp, $a3
	move	$s3, $s2
	b	.LBB1_34
.LBB1_33:                               #   in Loop: Header=BB1_6 Depth=1
	move	$a1, $zero
	.p2align	4, , 16
.LBB1_34:                               # %_O_con_line.exit
                                        #   in Loop: Header=BB1_6 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ori	$a0, $zero, 3
	beq	$s5, $a0, .LBB1_40
# %bb.35:                               # %_O_con_line.exit
                                        #   in Loop: Header=BB1_6 Depth=1
	bne	$s5, $s7, .LBB1_44
# %bb.36:                               # %sw.bb85
                                        #   in Loop: Header=BB1_6 Depth=1
	bge	$s3, $fp, .LBB1_56
# %bb.37:                               # %if.then87
                                        #   in Loop: Header=BB1_6 Depth=1
	bnez	$s8, .LBB1_49
# %bb.38:                               # %if.else.i122
                                        #   in Loop: Header=BB1_6 Depth=1
	bltz	$fp, .LBB1_54
# %bb.39:                               # %if.end.i124
                                        #   in Loop: Header=BB1_6 Depth=1
	slli.d	$a0, $fp, 2
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	addi.w	$a1, $a0, 1
	b	.LBB1_55
	.p2align	4, , 16
.LBB1_40:                               # %sw.bb93
                                        #   in Loop: Header=BB1_6 Depth=1
	ld.d	$s7, $sp, 72                    # 8-byte Folded Reload
	bge	$s3, $fp, .LBB1_65
# %bb.41:                               # %if.then95
                                        #   in Loop: Header=BB1_6 Depth=1
	bnez	$s8, .LBB1_50
# %bb.42:                               # %if.else.i148
                                        #   in Loop: Header=BB1_6 Depth=1
	bltz	$fp, .LBB1_63
# %bb.43:                               # %if.end.i150
                                        #   in Loop: Header=BB1_6 Depth=1
	slli.d	$a0, $fp, 2
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	addi.w	$a1, $a0, 1
	b	.LBB1_64
	.p2align	4, , 16
.LBB1_44:                               # %sw.bb
                                        #   in Loop: Header=BB1_6 Depth=1
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
	bnez	$s8, .LBB1_47
# %bb.45:                               # %if.else.i96
                                        #   in Loop: Header=BB1_6 Depth=1
	bltz	$s0, .LBB1_51
# %bb.46:                               # %if.end.i98
                                        #   in Loop: Header=BB1_6 Depth=1
	slli.d	$a0, $s0, 2
	pcalau12i	$a1, %got_pc_hi20(_L_btlindex)
	ld.d	$a1, $a1, %got_pc_lo12(_L_btlindex)
	ldx.w	$a0, $a1, $a0
	addi.w	$a1, $a0, 1
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	blt	$s0, $s3, .LBB1_52
	b	.LBB1_92
.LBB1_47:                               # %_O_con_line.exit103.thread
                                        #   in Loop: Header=BB1_6 Depth=1
	addi.w	$a1, $s0, 1
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	bge	$s0, $s3, .LBB1_92
# %bb.48:                               # %if.then.i106
                                        #   in Loop: Header=BB1_6 Depth=1
	addi.w	$a1, $s3, 1
	b	.LBB1_91
.LBB1_49:                               # %if.then.i119
                                        #   in Loop: Header=BB1_6 Depth=1
	addi.w	$a1, $fp, 1
	b	.LBB1_55
.LBB1_50:                               # %if.then.i145
                                        #   in Loop: Header=BB1_6 Depth=1
	addi.w	$a1, $fp, 1
	b	.LBB1_64
.LBB1_51:                               #   in Loop: Header=BB1_6 Depth=1
	move	$a1, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	bge	$s0, $s3, .LBB1_92
.LBB1_52:                               # %if.else.i109
                                        #   in Loop: Header=BB1_6 Depth=1
	bltz	$s3, .LBB1_90
# %bb.53:                               # %if.end.i111
                                        #   in Loop: Header=BB1_6 Depth=1
	slli.d	$a0, $s3, 2
	pcalau12i	$a1, %got_pc_hi20(_L_btlindex)
	ld.d	$a1, $a1, %got_pc_lo12(_L_btlindex)
	ldx.w	$a0, $a1, $a0
	addi.w	$a1, $a0, 1
	b	.LBB1_91
.LBB1_54:                               #   in Loop: Header=BB1_6 Depth=1
	move	$a1, $zero
.LBB1_55:                               # %_O_con_line.exit129
                                        #   in Loop: Header=BB1_6 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB1_56:                               # %if.end90
                                        #   in Loop: Header=BB1_6 Depth=1
	bnez	$s8, .LBB1_59
# %bb.57:                               # %if.else.i135
                                        #   in Loop: Header=BB1_6 Depth=1
	bltz	$s0, .LBB1_60
# %bb.58:                               # %if.end.i137
                                        #   in Loop: Header=BB1_6 Depth=1
	slli.d	$a0, $s0, 2
	pcalau12i	$a1, %got_pc_hi20(_L_btlindex)
	ld.d	$a1, $a1, %got_pc_lo12(_L_btlindex)
	ldx.w	$a0, $a1, $a0
	addi.w	$a1, $a0, 1
	b	.LBB1_61
.LBB1_59:                               # %if.then.i132
                                        #   in Loop: Header=BB1_6 Depth=1
	addi.w	$a1, $s0, 1
	b	.LBB1_61
.LBB1_60:                               #   in Loop: Header=BB1_6 Depth=1
	move	$a1, $zero
	.p2align	4, , 16
.LBB1_61:                               # %_O_con_line.exit142
                                        #   in Loop: Header=BB1_6 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$s7, $s8
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	bnez	$s8, .LBB1_76
.LBB1_62:                               # %if.else117
                                        #   in Loop: Header=BB1_6 Depth=1
	move	$a0, $s2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_O_do_lines)
	jirl	$ra, $ra, 0
	b	.LBB1_77
.LBB1_63:                               #   in Loop: Header=BB1_6 Depth=1
	move	$a1, $zero
.LBB1_64:                               # %_O_con_line.exit155
                                        #   in Loop: Header=BB1_6 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB1_65:                               # %if.end98
                                        #   in Loop: Header=BB1_6 Depth=1
	bnez	$s8, .LBB1_68
# %bb.66:                               # %if.else.i161
                                        #   in Loop: Header=BB1_6 Depth=1
	bltz	$s0, .LBB1_70
# %bb.67:                               # %if.end.i163
                                        #   in Loop: Header=BB1_6 Depth=1
	slli.d	$a0, $s0, 2
	pcalau12i	$a1, %got_pc_hi20(_L_btlindex)
	ld.d	$a1, $a1, %got_pc_lo12(_L_btlindex)
	ldx.w	$a0, $a1, $a0
	addi.w	$a1, $a0, 1
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	blt	$s0, $s7, .LBB1_71
	b	.LBB1_75
.LBB1_68:                               # %_O_con_line.exit168.thread
                                        #   in Loop: Header=BB1_6 Depth=1
	addi.w	$a1, $s0, 1
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	bge	$s0, $s7, .LBB1_75
# %bb.69:                               # %if.then.i171
                                        #   in Loop: Header=BB1_6 Depth=1
	addi.w	$a1, $s7, 1
	b	.LBB1_74
.LBB1_70:                               #   in Loop: Header=BB1_6 Depth=1
	move	$a1, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	bge	$s0, $s7, .LBB1_75
.LBB1_71:                               # %if.else.i174
                                        #   in Loop: Header=BB1_6 Depth=1
	bltz	$s7, .LBB1_73
# %bb.72:                               # %if.end.i176
                                        #   in Loop: Header=BB1_6 Depth=1
	slli.d	$a0, $s7, 2
	pcalau12i	$a1, %got_pc_hi20(_L_btlindex)
	ld.d	$a1, $a1, %got_pc_lo12(_L_btlindex)
	ldx.w	$a0, $a1, $a0
	addi.w	$a1, $a0, 1
	b	.LBB1_74
.LBB1_73:                               #   in Loop: Header=BB1_6 Depth=1
	move	$a1, $zero
.LBB1_74:                               # %_O_con_line.exit181
                                        #   in Loop: Header=BB1_6 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB1_75:                               # %if.end105
                                        #   in Loop: Header=BB1_6 Depth=1
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a1, $a0, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	move	$s7, $s8
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	beqz	$s8, .LBB1_62
.LBB1_76:                               # %for.cond.preheader
                                        #   in Loop: Header=BB1_6 Depth=1
	bge	$fp, $s3, .LBB1_81
.LBB1_77:                               # %if.end119
                                        #   in Loop: Header=BB1_6 Depth=1
	move	$s8, $s7
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
	beq	$s5, $s6, .LBB1_80
# %bb.78:                               # %if.end119
                                        #   in Loop: Header=BB1_6 Depth=1
	ori	$a0, $zero, 3
	bne	$s5, $a0, .LBB1_5
# %bb.79:                               # %if.then121
                                        #   in Loop: Header=BB1_6 Depth=1
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB1_80:                               # %if.then127
                                        #   in Loop: Header=BB1_6 Depth=1
	beqz	$s8, .LBB1_4
	b	.LBB1_93
.LBB1_81:                               # %if.then.i185.preheader
                                        #   in Loop: Header=BB1_6 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$s8, $s3, $a0, 3
	sub.d	$a0, $fp, $s3
	addi.d	$fp, $a0, 1
	b	.LBB1_84
.LBB1_82:                               # %sw.bb4.i.i
                                        #   in Loop: Header=BB1_84 Depth=2
	pcalau12i	$a0, %pc_hi20(_O_convert.spacetext)
	addi.d	$s2, $a0, %pc_lo12(_O_convert.spacetext)
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $s2, 0
	.p2align	4, , 16
.LBB1_83:                               # %_O_get_text.exit
                                        #   in Loop: Header=BB1_84 Depth=2
	ld.w	$a0, $s3, 0
	slli.d	$a0, $a0, 2
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	ld.w	$a1, $s3, 4
	addi.w	$a3, $a0, 1
	addi.w	$a4, $a1, 1
	pcalau12i	$a0, %pc_hi20(_O_get_text.buf)
	addi.d	$s3, $a0, %pc_lo12(_O_get_text.buf)
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a1, $a0, %pc_lo12(.L.str.10)
	move	$a0, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$fp, $fp, -1
	addi.d	$s8, $s8, 8
	beqz	$fp, .LBB1_77
.LBB1_84:                               # %if.then.i185
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s3, $s8, 0
	ld.d	$s2, $s3, 16
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$a0, $s6, .LBB1_83
# %bb.85:                               # %if.then.i.i
                                        #   in Loop: Header=BB1_84 Depth=2
	ld.bu	$a0, $s2, 0
	ori	$a1, $zero, 9
	beq	$a0, $a1, .LBB1_89
# %bb.86:                               # %if.then.i.i
                                        #   in Loop: Header=BB1_84 Depth=2
	ori	$a1, $zero, 32
	beq	$a0, $a1, .LBB1_82
# %bb.87:                               # %if.then.i.i
                                        #   in Loop: Header=BB1_84 Depth=2
	ori	$a1, $zero, 10
	bne	$a0, $a1, .LBB1_83
# %bb.88:                               # %sw.bb.i.i
                                        #   in Loop: Header=BB1_84 Depth=2
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.h	$a0, $a2, 8
	pcalau12i	$a1, %pc_hi20(_O_convert.spacetext)
	addi.d	$s2, $a1, %pc_lo12(_O_convert.spacetext)
	ld.d	$a1, $a2, 0
	st.h	$a0, $s2, 8
	st.d	$a1, $s2, 0
	b	.LBB1_83
.LBB1_89:                               # %sw.bb2.i.i
                                        #   in Loop: Header=BB1_84 Depth=2
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.h	$a0, $a2, 4
	pcalau12i	$a1, %pc_hi20(_O_convert.spacetext)
	addi.d	$s2, $a1, %pc_lo12(_O_convert.spacetext)
	ld.w	$a1, $a2, 0
	st.h	$a0, $s2, 4
	st.w	$a1, $s2, 0
	b	.LBB1_83
.LBB1_90:                               #   in Loop: Header=BB1_6 Depth=1
	move	$a1, $zero
.LBB1_91:                               # %_O_con_line.exit116
                                        #   in Loop: Header=BB1_6 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB1_92:                               # %if.end119.thread
                                        #   in Loop: Header=BB1_6 Depth=1
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a1, $a0, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	beqz	$s8, .LBB1_4
.LBB1_93:                               # %for.cond132.preheader
                                        #   in Loop: Header=BB1_6 Depth=1
	blt	$s3, $s0, .LBB1_5
# %bb.94:                               # %if.then.i194.preheader
                                        #   in Loop: Header=BB1_6 Depth=1
	pcalau12i	$a0, %pc_hi20(_O_convert.spacetext)
	addi.d	$fp, $a0, %pc_lo12(_O_convert.spacetext)
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$s2, $s0, $a0, 3
	sub.d	$a0, $s3, $s0
	addi.d	$s3, $a0, 1
	b	.LBB1_97
.LBB1_95:                               # %sw.bb4.i.i211
                                        #   in Loop: Header=BB1_97 Depth=2
	pcalau12i	$a0, %pc_hi20(_O_convert.spacetext)
	addi.d	$s0, $a0, %pc_lo12(_O_convert.spacetext)
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $s0, 0
	.p2align	4, , 16
.LBB1_96:                               # %_O_get_text.exit221
                                        #   in Loop: Header=BB1_97 Depth=2
	ld.w	$a0, $s1, 0
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %got_pc_hi20(_L_btlindex)
	ld.d	$a1, $a1, %got_pc_lo12(_L_btlindex)
	ldx.w	$a0, $a1, $a0
	ld.w	$a1, $s1, 4
	addi.w	$a3, $a0, 1
	addi.w	$a4, $a1, 1
	pcalau12i	$a0, %pc_hi20(_O_get_text.buf)
	addi.d	$s1, $a0, %pc_lo12(_O_get_text.buf)
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a1, $a0, %pc_lo12(.L.str.10)
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$s3, $s3, -1
	addi.d	$s2, $s2, 8
	beqz	$s3, .LBB1_5
.LBB1_97:                               # %if.then.i194
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s1, $s2, 0
	ld.d	$s0, $s1, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$a0, $s6, .LBB1_96
# %bb.98:                               # %if.then.i.i210
                                        #   in Loop: Header=BB1_97 Depth=2
	ld.bu	$a0, $s0, 0
	ori	$a1, $zero, 9
	beq	$a0, $a1, .LBB1_102
# %bb.99:                               # %if.then.i.i210
                                        #   in Loop: Header=BB1_97 Depth=2
	ori	$a1, $zero, 32
	beq	$a0, $a1, .LBB1_95
# %bb.100:                              # %if.then.i.i210
                                        #   in Loop: Header=BB1_97 Depth=2
	ori	$a1, $zero, 10
	bne	$a0, $a1, .LBB1_96
# %bb.101:                              # %sw.bb.i.i213
                                        #   in Loop: Header=BB1_97 Depth=2
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.h	$a0, $a1, 8
	ld.d	$a1, $a1, 0
	st.h	$a0, $fp, 8
	st.d	$a1, $fp, 0
	move	$s0, $fp
	b	.LBB1_96
.LBB1_102:                              # %sw.bb2.i.i212
                                        #   in Loop: Header=BB1_97 Depth=2
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.h	$a0, $a2, 4
	pcalau12i	$a1, %pc_hi20(_O_convert.spacetext)
	addi.d	$s0, $a1, %pc_lo12(_O_convert.spacetext)
	ld.w	$a1, $a2, 0
	st.h	$a0, $s0, 4
	st.w	$a1, $s0, 0
	b	.LBB1_96
.LBB1_103:
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
.LBB1_104:                              # %while.end143
	ret
.Lfunc_end1:
	.size	O_output, .Lfunc_end1-O_output
                                        # -- End function
	.p2align	5                               # -- Begin function _O_do_lines
	.type	_O_do_lines,@function
_O_do_lines:                            # @_O_do_lines
# %bb.0:                                # %entry
	blt	$a1, $a0, .LBB2_29
# %bb.1:                                # %for.body.lr.ph
	addi.d	$sp, $sp, -1168
	st.d	$ra, $sp, 1160                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1152                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1144                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1136                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1128                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1120                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1112                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1104                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1096                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1088                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1080                  # 8-byte Folded Spill
	move	$s0, $a0
	sltui	$a0, $a2, 1
	pcalau12i	$a2, %got_pc_hi20(_K_bto)
	ld.d	$a2, $a2, %got_pc_lo12(_K_bto)
	masknez	$a2, $a2, $a0
	pcalau12i	$a3, %got_pc_hi20(_K_ato)
	ld.d	$a3, $a3, %got_pc_lo12(_K_ato)
	maskeqz	$a3, $a3, $a0
	or	$s1, $a3, $a2
	addi.w	$s2, $a1, 1
	pcalau12i	$a1, %pc_hi20(.L.str.15)
	addi.d	$a1, $a1, %pc_lo12(.L.str.15)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.14)
	addi.d	$a2, $a2, %pc_lo12(.L.str.14)
	maskeqz	$a2, $a2, $a0
	or	$a1, $a2, $a1
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(_L_btlindex)
	ld.d	$a1, $a1, %got_pc_lo12(_L_btlindex)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %got_pc_hi20(_L_atlindex)
	ld.d	$a2, $a2, %got_pc_lo12(_L_atlindex)
	maskeqz	$a2, $a2, $a0
	or	$a1, $a2, $a1
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(_L_bclindex)
	ld.d	$a1, $a1, %got_pc_lo12(_L_bclindex)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %got_pc_hi20(_L_aclindex)
	ld.d	$a2, $a2, %got_pc_lo12(_L_aclindex)
	maskeqz	$a2, $a2, $a0
	or	$a1, $a2, $a1
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(_L_bl)
	ld.d	$a1, $a1, %got_pc_lo12(_L_bl)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %got_pc_hi20(_L_al)
	ld.d	$a2, $a2, %got_pc_lo12(_L_al)
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	alsl.d	$s6, $s0, $s1, 3
	addi.w	$a0, $zero, -1
	pcalau12i	$a1, %got_pc_hi20(stdout)
	ld.d	$s8, $a1, %got_pc_lo12(stdout)
	pcalau12i	$a1, %pc_hi20(_O_need_init)
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	move	$fp, $s0
	b	.LBB2_4
	.p2align	4, , 16
.LBB2_2:                                # %_O_pchars.exit59
                                        #   in Loop: Header=BB2_4 Depth=1
	move	$a0, $s3
.LBB2_3:                                # %for.inc68
                                        #   in Loop: Header=BB2_4 Depth=1
	addi.d	$fp, $fp, 1
	addi.w	$a1, $fp, 0
	addi.w	$s0, $s0, 1
	addi.d	$s6, $s6, 8
	beq	$s2, $a1, .LBB2_28
.LBB2_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_7 Depth 2
                                        #     Child Loop BB2_14 Depth 2
                                        #     Child Loop BB2_19 Depth 2
                                        #     Child Loop BB2_27 Depth 2
	slli.d	$a1, $fp, 3
	ldx.d	$s4, $s1, $a1
	ld.w	$s3, $s4, 0
	beq	$a0, $s3, .LBB2_3
# %bb.5:                                # %if.then
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s3, 2
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	slli.d	$a0, $a0, 2
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ldx.d	$a1, $a1, $a0
	addi.d	$a0, $sp, 55
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.w	$s5, $s4, 4
	blez	$s5, .LBB2_8
# %bb.6:                                # %for.body.i.preheader
                                        #   in Loop: Header=BB2_4 Depth=1
	addi.d	$s7, $sp, 55
	.p2align	4, , 16
.LBB2_7:                                # %for.body.i
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a0, $s7, 0
	ld.d	$a1, $s8, 0
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, -1
	addi.d	$s7, $s7, 1
	bnez	$s5, .LBB2_7
.LBB2_8:                                # %_O_pchars.exit
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, %pc_lo12(_O_need_init)
	bnez	$a0, .LBB2_13
# %bb.9:                                # %if.then.i
                                        #   in Loop: Header=BB2_4 Depth=1
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(isatty)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_12
# %bb.10:                               # %if.end.i.i
                                        #   in Loop: Header=BB2_4 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	pcaddu18i	$ra, %call36(getenv)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(_O_st_tmp)
	st.d	$a0, $a1, %pc_lo12(_O_st_tmp)
	bnez	$a0, .LBB2_12
# %bb.11:                               # %if.then2.i.i
                                        #   in Loop: Header=BB2_4 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	pcaddu18i	$ra, %call36(Z_complain)
	jirl	$ra, $ra, 0
.LBB2_12:                               # %_O_st_init.exit.i
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ori	$a1, $zero, 1
	st.b	$a1, $a0, %pc_lo12(_O_need_init)
.LBB2_13:                               # %land.rhs.preheader
                                        #   in Loop: Header=BB2_4 Depth=1
	move	$a1, $s6
	move	$a0, $s0
	.p2align	4, , 16
.LBB2_14:                               # %land.rhs
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a1, 0
	ld.w	$a2, $a2, 0
	bne	$s3, $a2, .LBB2_17
# %bb.15:                               # %for.inc
                                        #   in Loop: Header=BB2_14 Depth=2
	addi.w	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	bne	$s2, $a0, .LBB2_14
# %bb.16:                               #   in Loop: Header=BB2_4 Depth=1
	move	$a0, $s2
.LBB2_17:                               # %for.end
                                        #   in Loop: Header=BB2_4 Depth=1
	alsl.d	$a0, $a0, $s1, 3
	ld.d	$a0, $a0, -8
	ld.w	$s5, $a0, 4
	ld.d	$a0, $a0, 16
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 4
	add.w	$s4, $s5, $a0
	bge	$a1, $s4, .LBB2_25
# %bb.18:                               # %for.body.preheader.i30
                                        #   in Loop: Header=BB2_4 Depth=1
	sub.d	$s5, $s4, $a1
	addi.d	$a0, $sp, 55
	add.d	$s7, $a0, $a1
	.p2align	4, , 16
.LBB2_19:                               # %for.body.i31
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a0, $s7, 0
	ld.d	$a1, $s8, 0
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.w	$s5, $s5, -1
	addi.d	$s7, $s7, 1
	bnez	$s5, .LBB2_19
# %bb.20:                               # %_O_pchars.exit39
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, %pc_lo12(_O_need_init)
	bnez	$a0, .LBB2_25
# %bb.21:                               # %if.then.i41
                                        #   in Loop: Header=BB2_4 Depth=1
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(isatty)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_24
# %bb.22:                               # %if.end.i.i44
                                        #   in Loop: Header=BB2_4 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	pcaddu18i	$ra, %call36(getenv)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(_O_st_tmp)
	st.d	$a0, $a1, %pc_lo12(_O_st_tmp)
	bnez	$a0, .LBB2_24
# %bb.23:                               # %if.then2.i.i48
                                        #   in Loop: Header=BB2_4 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	pcaddu18i	$ra, %call36(Z_complain)
	jirl	$ra, $ra, 0
.LBB2_24:                               # %_O_st_init.exit.i47
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ori	$a1, $zero, 1
	st.b	$a1, $a0, %pc_lo12(_O_need_init)
.LBB2_25:                               # %_O_end_standout.exit
                                        #   in Loop: Header=BB2_4 Depth=1
	addi.d	$a0, $sp, 55
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	bge	$s4, $a1, .LBB2_2
# %bb.26:                               # %for.body.preheader.i50
                                        #   in Loop: Header=BB2_4 Depth=1
	sub.d	$s5, $a0, $s4
	addi.d	$a0, $sp, 55
	add.d	$s4, $a0, $s4
	.p2align	4, , 16
.LBB2_27:                               # %for.body.i51
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a0, $s4, 0
	ld.d	$a1, $s8, 0
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.w	$s5, $s5, -1
	addi.d	$s4, $s4, 1
	bnez	$s5, .LBB2_27
	b	.LBB2_2
.LBB2_28:
	ld.d	$s8, $sp, 1080                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1088                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1096                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1104                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1112                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1120                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1128                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1136                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1144                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1152                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1160                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1168
.LBB2_29:                               # %for.end70
	ret
.Lfunc_end2:
	.size	_O_do_lines, .Lfunc_end2-_O_do_lines
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d"
	.size	.L.str, 3

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"a%d"
	.size	.L.str.1, 4

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	",%d"
	.size	.L.str.2, 4

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"d%d\n"
	.size	.L.str.4, 5

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"c%d"
	.size	.L.str.5, 4

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"< %s"
	.size	.L.str.7, 5

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"> %s"
	.size	.L.str.9, 5

	.type	_O_get_text.buf,@object         # @_O_get_text.buf
	.local	_O_get_text.buf
	.comm	_O_get_text.buf,2048,1
	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"%s -- line %d, character %d\n"
	.size	.L.str.10, 29

	.type	_O_convert.spacetext,@object    # @_O_convert.spacetext
	.local	_O_convert.spacetext
	.comm	_O_convert.spacetext,20,8
	.type	.L.str.11,@object               # @.str.11
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.11:
	.asciz	"<NEWLINE>"
	.size	.L.str.11, 10

	.type	.L.str.12,@object               # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"<TAB>"
	.size	.L.str.12, 6

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"< "
	.size	.L.str.14, 3

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"> "
	.size	.L.str.15, 3

	.type	_O_need_init,@object            # @_O_need_init
	.local	_O_need_init
	.comm	_O_need_init,1,4
	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"TERM"
	.size	.L.str.16, 5

	.type	_O_st_tmp,@object               # @_O_st_tmp
	.local	_O_st_tmp
	.comm	_O_st_tmp,8,8
	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"can't find TERM entry in environment\n"
	.size	.L.str.17, 38

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"---"
	.size	.Lstr, 4

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _O_get_text.buf
	.addrsig_sym _O_convert.spacetext
