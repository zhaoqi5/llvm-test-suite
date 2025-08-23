	.file	"libclamav_packlibs.c"
	.text
	.globl	cli_unfsg                       # -- Begin function cli_unfsg
	.p2align	5
	.type	cli_unfsg,@function
cli_unfsg:                              # @cli_unfsg
# %bb.0:                                # %entry
	ori	$a7, $zero, 1
	addi.w	$a6, $zero, -1
	blt	$a2, $a7, .LBB0_91
# %bb.1:                                # %entry
	blt	$a3, $a7, .LBB0_91
# %bb.2:                                # %if.end
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	ld.b	$t0, $a0, 0
	move	$s0, $zero
	addi.d	$a7, $a0, 1
	addi.d	$a6, $a1, 1
	st.b	$t0, $a1, 0
	add.d	$t0, $a0, $a2
	addi.d	$t1, $t0, -1
	add.d	$t2, $a1, $a3
	ori	$t3, $zero, 1
	ori	$t4, $zero, 128
	addi.w	$a2, $zero, -1
	ori	$t5, $zero, 124
	ori	$t6, $zero, 1279
	ori	$t7, $zero, 64
	ori	$t8, $zero, 2
	ori	$s1, $zero, 128
	ori	$s4, $zero, 1
.LBB0_3:                                # %while.cond.outer.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
                                        #       Child Loop BB0_27 Depth 3
                                        #     Child Loop BB0_37 Depth 2
                                        #     Child Loop BB0_54 Depth 2
                                        #     Child Loop BB0_65 Depth 2
                                        #     Child Loop BB0_84 Depth 2
                                        #     Child Loop BB0_88 Depth 2
	nor	$s2, $s4, $zero
	move	$fp, $a6
.LBB0_4:                                # %while.cond
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_27 Depth 3
	andi	$a6, $s1, 127
	beqz	$a6, .LBB0_8
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=2
	slli.d	$a6, $s1, 1
	ext.w.b	$s1, $s1
	blt	$a2, $s1, .LBB0_11
.LBB0_6:                                # %if.end6
                                        #   in Loop: Header=BB0_4 Depth=2
	andi	$s1, $a6, 127
	beqz	$s1, .LBB0_16
# %bb.7:                                #   in Loop: Header=BB0_4 Depth=2
	slli.d	$s1, $a6, 1
	ext.w.b	$s3, $a6
	addi.w	$a6, $zero, -1
	bge	$a6, $s3, .LBB0_19
	b	.LBB0_34
	.p2align	4, , 16
.LBB0_8:                                # %if.then.i
                                        #   in Loop: Header=BB0_4 Depth=2
	bltu	$a7, $a0, .LBB0_89
# %bb.9:                                # %if.then.i
                                        #   in Loop: Header=BB0_4 Depth=2
	bgeu	$a7, $t1, .LBB0_89
# %bb.10:                               # %if.end.i
                                        #   in Loop: Header=BB0_4 Depth=2
	ld.bu	$s1, $a7, 0
	slli.d	$a6, $s1, 1
	addi.d	$a6, $a6, 1
	addi.d	$a7, $a7, 1
	ext.w.b	$s1, $s1
	bge	$a2, $s1, .LBB0_6
.LBB0_11:                               # %if.else189
                                        #   in Loop: Header=BB0_4 Depth=2
	bltu	$fp, $a1, .LBB0_89
# %bb.12:                               # %if.else189
                                        #   in Loop: Header=BB0_4 Depth=2
	bgeu	$fp, $t2, .LBB0_89
# %bb.13:                               # %lor.lhs.false197
                                        #   in Loop: Header=BB0_4 Depth=2
	bltu	$a7, $a0, .LBB0_89
# %bb.14:                               # %lor.lhs.false197
                                        #   in Loop: Header=BB0_4 Depth=2
	bgeu	$a7, $t0, .LBB0_89
# %bb.15:                               # %if.end206
                                        #   in Loop: Header=BB0_4 Depth=2
	ld.b	$s1, $a7, 0
	addi.d	$a7, $a7, 1
	st.b	$s1, $fp, 0
	addi.d	$fp, $fp, 1
	addi.d	$s2, $zero, -2
	move	$s1, $a6
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_16:                               # %if.then.i125
                                        #   in Loop: Header=BB0_4 Depth=2
	bltu	$a7, $a0, .LBB0_89
# %bb.17:                               # %if.then.i125
                                        #   in Loop: Header=BB0_4 Depth=2
	bgeu	$a7, $t1, .LBB0_89
# %bb.18:                               # %if.end.i132
                                        #   in Loop: Header=BB0_4 Depth=2
	ld.bu	$a6, $a7, 0
	slli.d	$s1, $a6, 1
	addi.d	$s1, $s1, 1
	addi.d	$a7, $a7, 1
	ext.w.b	$s3, $a6
	addi.w	$a6, $zero, -1
	blt	$a6, $s3, .LBB0_34
.LBB0_19:                               # %if.end12
                                        #   in Loop: Header=BB0_4 Depth=2
	andi	$s2, $s1, 127
	beqz	$s2, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_4 Depth=2
	slli.d	$s5, $s1, 1
	ext.w.b	$s1, $s1
	bge	$a6, $s1, .LBB0_24
	b	.LBB0_45
	.p2align	4, , 16
.LBB0_21:                               # %if.then.i144
                                        #   in Loop: Header=BB0_4 Depth=2
	bltu	$a7, $a0, .LBB0_90
# %bb.22:                               # %if.then.i144
                                        #   in Loop: Header=BB0_4 Depth=2
	bgeu	$a7, $t1, .LBB0_90
# %bb.23:                               # %if.end.i151
                                        #   in Loop: Header=BB0_4 Depth=2
	ld.bu	$s1, $a7, 0
	slli.d	$s2, $s1, 1
	addi.d	$s5, $s2, 1
	addi.d	$a7, $a7, 1
	ext.w.b	$s1, $s1
	blt	$a6, $s1, .LBB0_45
.LBB0_24:                               # %while.body21.preheader
                                        #   in Loop: Header=BB0_4 Depth=2
	ori	$s3, $zero, 16
	b	.LBB0_27
	.p2align	4, , 16
.LBB0_25:                               #   in Loop: Header=BB0_27 Depth=3
	slli.d	$s1, $s5, 1
.LBB0_26:                               # %doubledl.exit174
                                        #   in Loop: Header=BB0_27 Depth=3
	bstrpick.d	$s3, $s5, 7, 7
	slli.w	$s4, $s2, 1
	or	$s3, $s4, $s3
	move	$s5, $s1
	bgeu	$s2, $t4, .LBB0_31
.LBB0_27:                               # %while.body21
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	andi	$s1, $s5, 127
	move	$s2, $s3
	bnez	$s1, .LBB0_25
# %bb.28:                               # %if.then.i163
                                        #   in Loop: Header=BB0_27 Depth=3
	bltu	$a7, $a0, .LBB0_90
# %bb.29:                               # %if.then.i163
                                        #   in Loop: Header=BB0_27 Depth=3
	bgeu	$a7, $t1, .LBB0_90
# %bb.30:                               # %if.end.i170
                                        #   in Loop: Header=BB0_27 Depth=3
	ld.bu	$s5, $a7, 0
	slli.d	$s1, $s5, 1
	addi.d	$s1, $s1, 1
	addi.d	$a7, $a7, 1
	b	.LBB0_26
	.p2align	4, , 16
.LBB0_31:                               # %while.end
                                        #   in Loop: Header=BB0_4 Depth=2
	andi	$s3, $s3, 255
	bnez	$s3, .LBB0_48
# %bb.32:                               # %if.then27
                                        #   in Loop: Header=BB0_4 Depth=2
	bgeu	$fp, $t2, .LBB0_90
# %bb.33:                               # %if.end30
                                        #   in Loop: Header=BB0_4 Depth=2
	st.b	$zero, $fp, 0
	addi.d	$fp, $fp, 1
	addi.d	$s2, $zero, -2
	b	.LBB0_4
.LBB0_34:                               # %do.body.loopexit
                                        #   in Loop: Header=BB0_3 Depth=1
	ori	$s3, $zero, 1
	b	.LBB0_37
	.p2align	4, , 16
.LBB0_35:                               #   in Loop: Header=BB0_37 Depth=2
	slli.d	$s1, $s5, 1
.LBB0_36:                               # %doubledl.exit212
                                        #   in Loop: Header=BB0_37 Depth=2
	bstrpick.d	$s4, $s4, 7, 7
	slli.d	$s3, $s3, 1
	ext.w.b	$s5, $s5
	or	$s3, $s3, $s4
	bgez	$s5, .LBB0_49
.LBB0_37:                               # %do.body
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$s4, $s1, 127
	beqz	$s4, .LBB0_39
# %bb.38:                               #   in Loop: Header=BB0_37 Depth=2
	slli.d	$s5, $s1, 1
	move	$s4, $s1
	andi	$s1, $s5, 127
	bnez	$s1, .LBB0_35
	b	.LBB0_42
	.p2align	4, , 16
.LBB0_39:                               # %if.then.i182
                                        #   in Loop: Header=BB0_37 Depth=2
	bltu	$a7, $a0, .LBB0_90
# %bb.40:                               # %if.then.i182
                                        #   in Loop: Header=BB0_37 Depth=2
	bgeu	$a7, $t1, .LBB0_90
# %bb.41:                               # %if.end.i189
                                        #   in Loop: Header=BB0_37 Depth=2
	ld.bu	$s4, $a7, 0
	slli.d	$s1, $s4, 1
	addi.d	$s5, $s1, 1
	addi.d	$a7, $a7, 1
	andi	$s1, $s5, 127
	bnez	$s1, .LBB0_35
.LBB0_42:                               # %if.then.i201
                                        #   in Loop: Header=BB0_37 Depth=2
	bltu	$a7, $a0, .LBB0_90
# %bb.43:                               # %if.then.i201
                                        #   in Loop: Header=BB0_37 Depth=2
	bgeu	$a7, $t1, .LBB0_90
# %bb.44:                               # %if.end.i208
                                        #   in Loop: Header=BB0_37 Depth=2
	ld.bu	$s5, $a7, 0
	slli.d	$s1, $s5, 1
	addi.d	$s1, $s1, 1
	addi.d	$a7, $a7, 1
	b	.LBB0_36
.LBB0_45:                               # %if.else
                                        #   in Loop: Header=BB0_3 Depth=1
	bgeu	$a7, $t0, .LBB0_90
# %bb.46:                               # %if.end37
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.bu	$s2, $a7, 0
	addi.d	$a7, $a7, 1
	bltu	$s2, $t8, .LBB0_92
# %bb.47:                               # %if.end45
                                        #   in Loop: Header=BB0_3 Depth=1
	move	$s4, $zero
	srli.d	$s3, $s2, 1
	bstrins.d	$s2, $t3, 63, 1
	move	$s1, $s5
	move	$s0, $s3
	addi.w	$s5, $s2, -1
	bltu	$s5, $a3, .LBB0_75
	b	.LBB0_90
.LBB0_48:                               #   in Loop: Header=BB0_3 Depth=1
	ori	$s2, $zero, 1
	ori	$s4, $zero, 1
	addi.w	$s5, $s2, -1
	bltu	$s5, $a3, .LBB0_75
	b	.LBB0_90
.LBB0_49:                               # %do.end
                                        #   in Loop: Header=BB0_3 Depth=1
	add.w	$s2, $s3, $s2
	beqz	$s2, .LBB0_62
# %bb.50:                               # %if.else81
                                        #   in Loop: Header=BB0_3 Depth=1
	bgeu	$a7, $t0, .LBB0_90
# %bb.51:                               # %if.end87
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.bu	$s3, $a7, 0
	slli.d	$s0, $s2, 8
	addi.w	$s0, $s0, -256
	or	$s3, $s0, $s3
	addi.d	$a7, $a7, 1
	ori	$s2, $zero, 1
	b	.LBB0_54
.LBB0_52:                               #   in Loop: Header=BB0_54 Depth=2
	slli.d	$s1, $s5, 1
.LBB0_53:                               # %doubledl.exit288
                                        #   in Loop: Header=BB0_54 Depth=2
	bstrpick.d	$s4, $s4, 7, 7
	slli.d	$s2, $s2, 1
	ext.w.b	$s5, $s5
	or	$s2, $s2, $s4
	bgez	$s5, .LBB0_73
.LBB0_54:                               # %do.body92
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$s4, $s1, 127
	beqz	$s4, .LBB0_56
# %bb.55:                               #   in Loop: Header=BB0_54 Depth=2
	slli.d	$s5, $s1, 1
	move	$s4, $s1
	andi	$s1, $s5, 127
	bnez	$s1, .LBB0_52
	b	.LBB0_59
.LBB0_56:                               # %if.then.i258
                                        #   in Loop: Header=BB0_54 Depth=2
	bltu	$a7, $a0, .LBB0_90
# %bb.57:                               # %if.then.i258
                                        #   in Loop: Header=BB0_54 Depth=2
	bgeu	$a7, $t1, .LBB0_90
# %bb.58:                               # %if.end.i265
                                        #   in Loop: Header=BB0_54 Depth=2
	ld.bu	$s4, $a7, 0
	slli.d	$s1, $s4, 1
	addi.d	$s5, $s1, 1
	addi.d	$a7, $a7, 1
	andi	$s1, $s5, 127
	bnez	$s1, .LBB0_52
.LBB0_59:                               # %if.then.i277
                                        #   in Loop: Header=BB0_54 Depth=2
	bltu	$a7, $a0, .LBB0_90
# %bb.60:                               # %if.then.i277
                                        #   in Loop: Header=BB0_54 Depth=2
	bgeu	$a7, $t1, .LBB0_90
# %bb.61:                               # %if.end.i284
                                        #   in Loop: Header=BB0_54 Depth=2
	ld.bu	$s5, $a7, 0
	slli.d	$s1, $s5, 1
	addi.d	$s1, $s1, 1
	addi.d	$a7, $a7, 1
	b	.LBB0_53
.LBB0_62:                               # %do.body65.preheader
                                        #   in Loop: Header=BB0_3 Depth=1
	ori	$s2, $zero, 1
	b	.LBB0_65
.LBB0_63:                               #   in Loop: Header=BB0_65 Depth=2
	slli.d	$s1, $s4, 1
.LBB0_64:                               # %doubledl.exit250
                                        #   in Loop: Header=BB0_65 Depth=2
	bstrpick.d	$s3, $s3, 7, 7
	slli.d	$s2, $s2, 1
	ext.w.b	$s4, $s4
	addi.w	$s5, $zero, -1
	or	$s2, $s2, $s3
	blt	$s5, $s4, .LBB0_74
.LBB0_65:                               # %do.body65
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$s3, $s1, 127
	beqz	$s3, .LBB0_67
# %bb.66:                               #   in Loop: Header=BB0_65 Depth=2
	slli.d	$s4, $s1, 1
	move	$s3, $s1
	andi	$s1, $s4, 127
	bnez	$s1, .LBB0_63
	b	.LBB0_70
.LBB0_67:                               # %if.then.i220
                                        #   in Loop: Header=BB0_65 Depth=2
	bltu	$a7, $a0, .LBB0_90
# %bb.68:                               # %if.then.i220
                                        #   in Loop: Header=BB0_65 Depth=2
	bgeu	$a7, $t1, .LBB0_90
# %bb.69:                               # %if.end.i227
                                        #   in Loop: Header=BB0_65 Depth=2
	ld.bu	$s3, $a7, 0
	slli.d	$s1, $s3, 1
	addi.d	$s4, $s1, 1
	addi.d	$a7, $a7, 1
	andi	$s1, $s4, 127
	bnez	$s1, .LBB0_63
.LBB0_70:                               # %if.then.i239
                                        #   in Loop: Header=BB0_65 Depth=2
	bltu	$a7, $a0, .LBB0_90
# %bb.71:                               # %if.then.i239
                                        #   in Loop: Header=BB0_65 Depth=2
	bgeu	$a7, $t1, .LBB0_90
# %bb.72:                               # %if.end.i246
                                        #   in Loop: Header=BB0_65 Depth=2
	ld.bu	$s4, $a7, 0
	slli.d	$s1, $s4, 1
	addi.d	$s1, $s1, 1
	addi.d	$a7, $a7, 1
	b	.LBB0_64
.LBB0_73:                               # %do.end107
                                        #   in Loop: Header=BB0_3 Depth=1
	move	$s4, $zero
	bstrpick.d	$s5, $s0, 31, 8
	sltu	$s5, $t5, $s5
	sltu	$s0, $t6, $s0
	add.d	$s0, $s0, $s5
	add.d	$s0, $s0, $s2
	sltui	$s2, $s3, 128
	addi.d	$s5, $s0, 2
	masknez	$s0, $s0, $s2
	maskeqz	$s2, $s5, $s2
	or	$s2, $s2, $s0
	move	$s0, $s3
	addi.w	$s5, $s2, -1
	bltu	$s5, $a3, .LBB0_75
	b	.LBB0_90
.LBB0_74:                               #   in Loop: Header=BB0_3 Depth=1
	move	$s4, $zero
	move	$s3, $s0
	addi.w	$s5, $s2, -1
	bgeu	$s5, $a3, .LBB0_90
.LBB0_75:                               # %if.end124
                                        #   in Loop: Header=BB0_3 Depth=1
	bltu	$fp, $a1, .LBB0_90
# %bb.76:                               # %land.lhs.true135
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.w	$s6, $s2, 0
	add.d	$s5, $fp, $s6
	bltu	$t2, $s5, .LBB0_90
# %bb.77:                               # %land.lhs.true135
                                        #   in Loop: Header=BB0_3 Depth=1
	bgeu	$a1, $s5, .LBB0_90
# %bb.78:                               # %land.lhs.true156
                                        #   in Loop: Header=BB0_3 Depth=1
	bstrpick.d	$s5, $s3, 31, 0
	sub.d	$s7, $fp, $s5
	bltu	$s7, $a1, .LBB0_90
# %bb.79:                               # %land.lhs.true161
                                        #   in Loop: Header=BB0_3 Depth=1
	add.d	$s7, $s7, $s6
	bltu	$t2, $s7, .LBB0_90
# %bb.80:                               # %land.lhs.true161
                                        #   in Loop: Header=BB0_3 Depth=1
	bgeu	$a1, $s7, .LBB0_90
# %bb.81:                               # %while.body183.preheader
                                        #   in Loop: Header=BB0_3 Depth=1
	sub.d	$s5, $zero, $s5
	bltu	$s6, $t7, .LBB0_87
# %bb.82:                               # %while.body183.preheader
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.w	$a6, $s3, 0
	bltu	$a6, $t7, .LBB0_86
# %bb.83:                               # %vector.ph
                                        #   in Loop: Header=BB0_3 Depth=1
	move	$s7, $zero
	bstrpick.d	$a6, $s6, 30, 6
	slli.d	$s3, $a6, 6
	add.d	$a6, $fp, $s3
	sub.d	$s2, $s2, $s3
	add.d	$s8, $fp, $s5
	.p2align	4, , 16
.LBB0_84:                               # %vector.body
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvldx	$xr0, $s8, $s7
	add.d	$ra, $s8, $s7
	xvld	$xr1, $ra, 32
	add.d	$ra, $fp, $s7
	xvstx	$xr0, $fp, $s7
	addi.d	$s7, $s7, 64
	xvst	$xr1, $ra, 32
	bne	$s3, $s7, .LBB0_84
# %bb.85:                               # %middle.block
                                        #   in Loop: Header=BB0_3 Depth=1
	beq	$s3, $s6, .LBB0_3
	b	.LBB0_88
.LBB0_86:                               #   in Loop: Header=BB0_3 Depth=1
	move	$a6, $fp
	b	.LBB0_88
.LBB0_87:                               #   in Loop: Header=BB0_3 Depth=1
	move	$a6, $fp
	.p2align	4, , 16
.LBB0_88:                               # %while.body183
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.b	$fp, $a6, $s5
	addi.w	$s2, $s2, -1
	st.b	$fp, $a6, 0
	addi.d	$a6, $a6, 1
	bnez	$s2, .LBB0_88
	b	.LBB0_3
.LBB0_89:
	move	$a6, $a2
.LBB0_90:
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
.LBB0_91:                               # %cleanup
	move	$a0, $a6
	ret
.LBB0_92:                               # %while.end210
	beqz	$a4, .LBB0_94
# %bb.93:                               # %if.then212
	st.d	$a7, $a4, 0
.LBB0_94:                               # %if.end213
	move	$a6, $zero
	beqz	$a5, .LBB0_90
# %bb.95:                               # %if.then215
	st.d	$fp, $a5, 0
	b	.LBB0_90
.Lfunc_end0:
	.size	cli_unfsg, .Lfunc_end0-cli_unfsg
                                        # -- End function
	.globl	unmew                           # -- Begin function unmew
	.p2align	5
	.type	unmew,@function
unmew:                                  # @unmew
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
	ld.b	$a6, $a0, 0
	move	$t0, $a4
	move	$t4, $a3
	move	$s2, $zero
	addi.d	$t1, $a0, 1
	addi.d	$t3, $a1, 1
	st.b	$a6, $a1, 0
	bstrpick.d	$a3, $a2, 31, 0
	add.d	$a3, $a0, $a3
	addi.d	$a7, $a3, -1
	add.d	$a4, $a1, $t4
	add.d	$a6, $a0, $a2
	ori	$t5, $zero, 1
	ori	$t6, $zero, 128
	ori	$t7, $zero, 124
	ori	$t8, $zero, 1279
	ori	$s0, $zero, 64
	ori	$s1, $zero, 2
	ori	$s3, $zero, 128
	ori	$s6, $zero, 1
.LBB1_1:                                # %while.cond.outer.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_2 Depth 2
                                        #       Child Loop BB1_25 Depth 3
                                        #     Child Loop BB1_35 Depth 2
                                        #     Child Loop BB1_65 Depth 2
                                        #     Child Loop BB1_79 Depth 2
                                        #     Child Loop BB1_58 Depth 2
                                        #     Child Loop BB1_75 Depth 2
	nor	$t2, $s6, $zero
	move	$a3, $t3
.LBB1_2:                                # %while.cond
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_25 Depth 3
	andi	$t3, $s3, 127
	addi.w	$fp, $zero, -1
	beqz	$t3, .LBB1_6
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=2
	slli.d	$t3, $s3, 1
	ext.w.b	$s3, $s3
	blt	$fp, $s3, .LBB1_9
.LBB1_4:                                # %if.end
                                        #   in Loop: Header=BB1_2 Depth=2
	andi	$s3, $t3, 127
	beqz	$s3, .LBB1_14
# %bb.5:                                #   in Loop: Header=BB1_2 Depth=2
	slli.d	$s3, $t3, 1
	ext.w.b	$t3, $t3
	bge	$fp, $t3, .LBB1_17
	b	.LBB1_32
	.p2align	4, , 16
.LBB1_6:                                # %if.then.i
                                        #   in Loop: Header=BB1_2 Depth=2
	bltu	$t1, $a0, .LBB1_98
# %bb.7:                                # %if.then.i
                                        #   in Loop: Header=BB1_2 Depth=2
	bgeu	$t1, $a7, .LBB1_98
# %bb.8:                                # %if.end.i
                                        #   in Loop: Header=BB1_2 Depth=2
	ld.bu	$s3, $t1, 0
	slli.d	$t3, $s3, 1
	addi.d	$t3, $t3, 1
	addi.d	$t1, $t1, 1
	ext.w.b	$s3, $s3
	bge	$fp, $s3, .LBB1_4
.LBB1_9:                                # %if.else243
                                        #   in Loop: Header=BB1_2 Depth=2
	bltu	$a3, $a1, .LBB1_94
# %bb.10:                               # %if.else243
                                        #   in Loop: Header=BB1_2 Depth=2
	bgeu	$a3, $a4, .LBB1_94
# %bb.11:                               # %lor.lhs.false251
                                        #   in Loop: Header=BB1_2 Depth=2
	bltu	$t1, $a0, .LBB1_94
# %bb.12:                               # %lor.lhs.false251
                                        #   in Loop: Header=BB1_2 Depth=2
	bgeu	$t1, $a6, .LBB1_94
# %bb.13:                               # %if.end264
                                        #   in Loop: Header=BB1_2 Depth=2
	ld.b	$t2, $t1, 0
	addi.d	$t1, $t1, 1
	st.b	$t2, $a3, 0
	addi.d	$a3, $a3, 1
	addi.d	$t2, $zero, -2
	move	$s3, $t3
	b	.LBB1_2
	.p2align	4, , 16
.LBB1_14:                               # %if.then.i175
                                        #   in Loop: Header=BB1_2 Depth=2
	bltu	$t1, $a0, .LBB1_98
# %bb.15:                               # %if.then.i175
                                        #   in Loop: Header=BB1_2 Depth=2
	bgeu	$t1, $a7, .LBB1_98
# %bb.16:                               # %if.end.i182
                                        #   in Loop: Header=BB1_2 Depth=2
	ld.bu	$t3, $t1, 0
	slli.d	$s3, $t3, 1
	addi.d	$s3, $s3, 1
	addi.d	$t1, $t1, 1
	ext.w.b	$t3, $t3
	blt	$fp, $t3, .LBB1_32
.LBB1_17:                               # %if.end8
                                        #   in Loop: Header=BB1_2 Depth=2
	andi	$t2, $s3, 127
	beqz	$t2, .LBB1_19
# %bb.18:                               #   in Loop: Header=BB1_2 Depth=2
	slli.d	$t2, $s3, 1
	ext.w.b	$t3, $s3
	bge	$fp, $t3, .LBB1_22
	b	.LBB1_43
	.p2align	4, , 16
.LBB1_19:                               # %if.then.i194
                                        #   in Loop: Header=BB1_2 Depth=2
	bltu	$t1, $a0, .LBB1_98
# %bb.20:                               # %if.then.i194
                                        #   in Loop: Header=BB1_2 Depth=2
	bgeu	$t1, $a7, .LBB1_98
# %bb.21:                               # %if.end.i201
                                        #   in Loop: Header=BB1_2 Depth=2
	ld.bu	$s3, $t1, 0
	slli.d	$t2, $s3, 1
	addi.d	$t2, $t2, 1
	addi.d	$t1, $t1, 1
	ext.w.b	$t3, $s3
	blt	$fp, $t3, .LBB1_43
.LBB1_22:                               # %while.body17.preheader
                                        #   in Loop: Header=BB1_2 Depth=2
	ori	$s4, $zero, 16
	b	.LBB1_25
	.p2align	4, , 16
.LBB1_23:                               #   in Loop: Header=BB1_25 Depth=3
	slli.d	$s3, $t2, 1
.LBB1_24:                               # %doubledl.exit224
                                        #   in Loop: Header=BB1_25 Depth=3
	bstrpick.d	$t2, $t2, 7, 7
	slli.w	$s4, $t3, 1
	or	$s4, $s4, $t2
	move	$t2, $s3
	bgeu	$t3, $t6, .LBB1_29
.LBB1_25:                               # %while.body17
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	andi	$s3, $t2, 127
	move	$t3, $s4
	bnez	$s3, .LBB1_23
# %bb.26:                               # %if.then.i213
                                        #   in Loop: Header=BB1_25 Depth=3
	bltu	$t1, $a0, .LBB1_98
# %bb.27:                               # %if.then.i213
                                        #   in Loop: Header=BB1_25 Depth=3
	bgeu	$t1, $a7, .LBB1_98
# %bb.28:                               # %if.end.i220
                                        #   in Loop: Header=BB1_25 Depth=3
	ld.bu	$t2, $t1, 0
	slli.d	$s3, $t2, 1
	addi.d	$s3, $s3, 1
	addi.d	$t1, $t1, 1
	b	.LBB1_24
	.p2align	4, , 16
.LBB1_29:                               # %while.end
                                        #   in Loop: Header=BB1_2 Depth=2
	andi	$s5, $s4, 255
	bnez	$s5, .LBB1_47
# %bb.30:                               # %if.then23
                                        #   in Loop: Header=BB1_2 Depth=2
	bgeu	$a3, $a4, .LBB1_98
# %bb.31:                               # %if.end26
                                        #   in Loop: Header=BB1_2 Depth=2
	st.b	$zero, $a3, 0
	addi.d	$a3, $a3, 1
	addi.d	$t2, $zero, -2
	b	.LBB1_2
.LBB1_32:                               # %do.body.loopexit
                                        #   in Loop: Header=BB1_1 Depth=1
	ori	$t3, $zero, 1
	b	.LBB1_35
	.p2align	4, , 16
.LBB1_33:                               #   in Loop: Header=BB1_35 Depth=2
	slli.d	$s3, $s5, 1
.LBB1_34:                               # %doubledl.exit262
                                        #   in Loop: Header=BB1_35 Depth=2
	bstrpick.d	$s4, $s4, 7, 7
	slli.d	$t3, $t3, 1
	ext.w.b	$s5, $s5
	or	$t3, $t3, $s4
	bgez	$s5, .LBB1_60
.LBB1_35:                               # %do.body
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$s4, $s3, 127
	beqz	$s4, .LBB1_37
# %bb.36:                               #   in Loop: Header=BB1_35 Depth=2
	slli.d	$s5, $s3, 1
	move	$s4, $s3
	andi	$s3, $s5, 127
	bnez	$s3, .LBB1_33
	b	.LBB1_40
	.p2align	4, , 16
.LBB1_37:                               # %if.then.i232
                                        #   in Loop: Header=BB1_35 Depth=2
	bltu	$t1, $a0, .LBB1_98
# %bb.38:                               # %if.then.i232
                                        #   in Loop: Header=BB1_35 Depth=2
	bgeu	$t1, $a7, .LBB1_98
# %bb.39:                               # %if.end.i239
                                        #   in Loop: Header=BB1_35 Depth=2
	ld.bu	$s4, $t1, 0
	slli.d	$s3, $s4, 1
	addi.d	$s5, $s3, 1
	addi.d	$t1, $t1, 1
	andi	$s3, $s5, 127
	bnez	$s3, .LBB1_33
.LBB1_40:                               # %if.then.i251
                                        #   in Loop: Header=BB1_35 Depth=2
	bltu	$t1, $a0, .LBB1_98
# %bb.41:                               # %if.then.i251
                                        #   in Loop: Header=BB1_35 Depth=2
	bgeu	$t1, $a7, .LBB1_98
# %bb.42:                               # %if.end.i258
                                        #   in Loop: Header=BB1_35 Depth=2
	ld.bu	$s5, $t1, 0
	slli.d	$s3, $s5, 1
	addi.d	$s3, $s3, 1
	addi.d	$t1, $t1, 1
	b	.LBB1_34
.LBB1_43:                               # %if.else
                                        #   in Loop: Header=BB1_1 Depth=1
	bgeu	$t1, $a6, .LBB1_98
# %bb.44:                               # %if.end33
                                        #   in Loop: Header=BB1_1 Depth=1
	ld.bu	$s4, $t1, 0
	addi.d	$t1, $t1, 1
	bltu	$s4, $s1, .LBB1_99
# %bb.45:                               # %if.end41
                                        #   in Loop: Header=BB1_1 Depth=1
	move	$s6, $zero
	srli.d	$s5, $s4, 1
	bstrins.d	$s4, $t5, 63, 1
	move	$s3, $t2
.LBB1_46:                               # %if.end120
                                        #   in Loop: Header=BB1_1 Depth=1
	move	$s2, $s5
	b	.LBB1_48
.LBB1_47:                               #   in Loop: Header=BB1_1 Depth=1
	ori	$s4, $zero, 1
	ori	$s6, $zero, 1
.LBB1_48:                               # %if.end120
                                        #   in Loop: Header=BB1_1 Depth=1
	move	$t3, $zero
	slti	$t2, $t4, 1
	addi.w	$s7, $s4, -1
	sltu	$s7, $s7, $t4
	xori	$s7, $s7, 1
	or	$s8, $t2, $s7
	bstrpick.d	$s7, $s5, 31, 0
	addi.w	$t2, $s4, 0
	bnez	$s8, .LBB1_90
# %bb.49:                               # %if.end120
                                        #   in Loop: Header=BB1_1 Depth=1
	bltu	$a3, $a1, .LBB1_90
# %bb.50:                               # %land.lhs.true131
                                        #   in Loop: Header=BB1_1 Depth=1
	add.d	$t3, $a3, $t2
	bltu	$a4, $t3, .LBB1_89
# %bb.51:                               # %land.lhs.true131
                                        #   in Loop: Header=BB1_1 Depth=1
	bgeu	$a1, $t3, .LBB1_89
# %bb.52:                               # %land.lhs.true151
                                        #   in Loop: Header=BB1_1 Depth=1
	sub.d	$s8, $a3, $s7
	bltu	$s8, $a1, .LBB1_89
# %bb.53:                               # %land.lhs.true156
                                        #   in Loop: Header=BB1_1 Depth=1
	add.d	$s8, $s8, $t2
	bltu	$a4, $s8, .LBB1_89
# %bb.54:                               # %land.lhs.true156
                                        #   in Loop: Header=BB1_1 Depth=1
	bgeu	$a1, $s8, .LBB1_89
# %bb.55:                               # %while.body237.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	sub.d	$fp, $zero, $s7
	bltu	$t2, $s0, .LBB1_74
# %bb.56:                               # %while.body237.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	addi.w	$t3, $s5, 0
	bltu	$t3, $s0, .LBB1_73
# %bb.57:                               # %vector.ph
                                        #   in Loop: Header=BB1_1 Depth=1
	move	$s7, $zero
	bstrpick.d	$t3, $t2, 30, 6
	slli.d	$s5, $t3, 6
	add.d	$t3, $a3, $s5
	sub.d	$s4, $s4, $s5
	add.d	$s8, $a3, $fp
	.p2align	4, , 16
.LBB1_58:                               # %vector.body
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvldx	$xr0, $s8, $s7
	add.d	$ra, $s8, $s7
	xvld	$xr1, $ra, 32
	add.d	$ra, $a3, $s7
	xvstx	$xr0, $a3, $s7
	addi.d	$s7, $s7, 64
	xvst	$xr1, $ra, 32
	bne	$s5, $s7, .LBB1_58
# %bb.59:                               # %middle.block
                                        #   in Loop: Header=BB1_1 Depth=1
	beq	$s5, $t2, .LBB1_1
	b	.LBB1_75
.LBB1_60:                               # %do.end
                                        #   in Loop: Header=BB1_1 Depth=1
	add.w	$t2, $t3, $t2
	beqz	$t2, .LBB1_76
# %bb.61:                               # %if.else77
                                        #   in Loop: Header=BB1_1 Depth=1
	bgeu	$t1, $a6, .LBB1_98
# %bb.62:                               # %if.end83
                                        #   in Loop: Header=BB1_1 Depth=1
	ld.bu	$t3, $t1, 0
	slli.d	$t2, $t2, 8
	addi.w	$t2, $t2, -256
	or	$s5, $t2, $t3
	addi.d	$t1, $t1, 1
	ori	$t3, $zero, 1
	b	.LBB1_65
	.p2align	4, , 16
.LBB1_63:                               #   in Loop: Header=BB1_65 Depth=2
	slli.d	$s3, $s4, 1
.LBB1_64:                               # %doubledl.exit338
                                        #   in Loop: Header=BB1_65 Depth=2
	bstrpick.d	$s2, $s2, 7, 7
	slli.d	$t3, $t3, 1
	ext.w.b	$s4, $s4
	or	$t3, $t3, $s2
	bgez	$s4, .LBB1_87
.LBB1_65:                               # %do.body88
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$s2, $s3, 127
	beqz	$s2, .LBB1_67
# %bb.66:                               #   in Loop: Header=BB1_65 Depth=2
	slli.d	$s4, $s3, 1
	move	$s2, $s3
	andi	$s3, $s4, 127
	bnez	$s3, .LBB1_63
	b	.LBB1_70
	.p2align	4, , 16
.LBB1_67:                               # %if.then.i308
                                        #   in Loop: Header=BB1_65 Depth=2
	bltu	$t1, $a0, .LBB1_98
# %bb.68:                               # %if.then.i308
                                        #   in Loop: Header=BB1_65 Depth=2
	bgeu	$t1, $a7, .LBB1_98
# %bb.69:                               # %if.end.i315
                                        #   in Loop: Header=BB1_65 Depth=2
	ld.bu	$s2, $t1, 0
	slli.d	$s3, $s2, 1
	addi.d	$s4, $s3, 1
	addi.d	$t1, $t1, 1
	andi	$s3, $s4, 127
	bnez	$s3, .LBB1_63
.LBB1_70:                               # %if.then.i327
                                        #   in Loop: Header=BB1_65 Depth=2
	bltu	$t1, $a0, .LBB1_98
# %bb.71:                               # %if.then.i327
                                        #   in Loop: Header=BB1_65 Depth=2
	bgeu	$t1, $a7, .LBB1_98
# %bb.72:                               # %if.end.i334
                                        #   in Loop: Header=BB1_65 Depth=2
	ld.bu	$s4, $t1, 0
	slli.d	$s3, $s4, 1
	addi.d	$s3, $s3, 1
	addi.d	$t1, $t1, 1
	b	.LBB1_64
.LBB1_73:                               #   in Loop: Header=BB1_1 Depth=1
	move	$t3, $a3
	b	.LBB1_75
.LBB1_74:                               #   in Loop: Header=BB1_1 Depth=1
	move	$t3, $a3
	.p2align	4, , 16
.LBB1_75:                               # %while.body237
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.b	$a3, $t3, $fp
	addi.w	$s4, $s4, -1
	st.b	$a3, $t3, 0
	addi.d	$t3, $t3, 1
	bnez	$s4, .LBB1_75
	b	.LBB1_1
.LBB1_76:                               # %do.body61.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	ori	$s4, $zero, 1
	b	.LBB1_79
	.p2align	4, , 16
.LBB1_77:                               #   in Loop: Header=BB1_79 Depth=2
	slli.d	$s3, $t3, 1
.LBB1_78:                               # %doubledl.exit300
                                        #   in Loop: Header=BB1_79 Depth=2
	bstrpick.d	$t2, $t2, 7, 7
	slli.d	$s4, $s4, 1
	ext.w.b	$t3, $t3
	addi.w	$s5, $zero, -1
	or	$s4, $s4, $t2
	blt	$s5, $t3, .LBB1_88
.LBB1_79:                               # %do.body61
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$t2, $s3, 127
	beqz	$t2, .LBB1_81
# %bb.80:                               #   in Loop: Header=BB1_79 Depth=2
	slli.d	$t3, $s3, 1
	move	$t2, $s3
	andi	$s3, $t3, 127
	bnez	$s3, .LBB1_77
	b	.LBB1_84
.LBB1_81:                               # %if.then.i270
                                        #   in Loop: Header=BB1_79 Depth=2
	bltu	$t1, $a0, .LBB1_98
# %bb.82:                               # %if.then.i270
                                        #   in Loop: Header=BB1_79 Depth=2
	bgeu	$t1, $a7, .LBB1_98
# %bb.83:                               # %if.end.i277
                                        #   in Loop: Header=BB1_79 Depth=2
	ld.bu	$t2, $t1, 0
	slli.d	$t3, $t2, 1
	addi.d	$t3, $t3, 1
	addi.d	$t1, $t1, 1
	andi	$s3, $t3, 127
	bnez	$s3, .LBB1_77
.LBB1_84:                               # %if.then.i289
                                        #   in Loop: Header=BB1_79 Depth=2
	bltu	$t1, $a0, .LBB1_98
# %bb.85:                               # %if.then.i289
                                        #   in Loop: Header=BB1_79 Depth=2
	bgeu	$t1, $a7, .LBB1_98
# %bb.86:                               # %if.end.i296
                                        #   in Loop: Header=BB1_79 Depth=2
	ld.bu	$t3, $t1, 0
	slli.d	$s3, $t3, 1
	addi.d	$s3, $s3, 1
	addi.d	$t1, $t1, 1
	b	.LBB1_78
.LBB1_87:                               # %do.end103
                                        #   in Loop: Header=BB1_1 Depth=1
	move	$s6, $zero
	bstrpick.d	$s2, $t2, 31, 8
	sltu	$s2, $t7, $s2
	sltu	$t2, $t8, $t2
	add.d	$t2, $t2, $s2
	add.d	$t2, $t2, $t3
	sltui	$t3, $s5, 128
	addi.d	$s2, $t2, 2
	masknez	$t2, $t2, $t3
	maskeqz	$t3, $s2, $t3
	or	$s4, $t3, $t2
	b	.LBB1_46
.LBB1_88:                               #   in Loop: Header=BB1_1 Depth=1
	move	$s6, $zero
	move	$s5, $s2
	b	.LBB1_48
.LBB1_89:                               # %land.lhs.true186
	move	$s8, $zero
	sltu	$a0, $a1, $t3
	sltu	$a2, $a4, $t3
	xori	$a2, $a2, 1
	and	$t3, $a2, $a0
.LBB1_90:                               # %land.end
	move	$a0, $zero
	sub.d	$a2, $a3, $s7
	bnez	$s8, .LBB1_96
# %bb.91:                               # %land.end
	bltu	$a2, $a1, .LBB1_96
# %bb.92:                               # %land.lhs.true214
	add.d	$a0, $a2, $t2
	bgeu	$a4, $a0, .LBB1_95
# %bb.93:
	move	$a0, $zero
	b	.LBB1_96
.LBB1_94:                               # %if.then259
	pcalau12i	$a7, %pc_hi20(.L.str.1)
	move	$a5, $a1
	addi.d	$a1, $a7, %pc_lo12(.L.str.1)
	st.d	$a6, $sp, 0
	move	$a6, $a0
	move	$a0, $a1
	move	$a1, $a3
	move	$a7, $a2
	move	$a2, $a5
	move	$a3, $t4
	move	$a5, $t1
	b	.LBB1_97
.LBB1_95:                               # %land.rhs224
	sltu	$a0, $a1, $a0
.LBB1_96:                               # %land.end232
	st.d	$a0, $sp, 16
	st.d	$t2, $sp, 8
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	st.d	$a2, $sp, 0
	move	$a2, $t4
	move	$a4, $t2
	move	$a5, $t3
	move	$a6, $a1
	move	$a7, $t4
.LBB1_97:                               # %cleanup
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB1_98:                               # %cleanup
	move	$a0, $fp
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
.LBB1_99:                               # %while.end268
	move	$fp, $zero
	st.d	$t1, $t0, 0
	st.d	$a3, $a5, 0
	b	.LBB1_98
.Lfunc_end1:
	.size	unmew, .Lfunc_end1-unmew
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"MEW: rete: %d %d %d %d %d || %d %d %d %d %d\n"
	.size	.L.str, 45

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"MEW: retf %08x %08x+%08x=%08x, %08x %08x+%08x=%08x\n"
	.size	.L.str.1, 52

	.section	".note.GNU-stack","",@progbits
	.addrsig
