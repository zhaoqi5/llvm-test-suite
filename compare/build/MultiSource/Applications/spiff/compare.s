	.file	"compare.c"
	.text
	.globl	X_com                           # -- Begin function X_com
	.p2align	5
	.type	X_com,@function
X_com:                                  # @X_com
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
	pcalau12i	$a3, %got_pc_hi20(_K_ato)
	ld.d	$a3, $a3, %got_pc_lo12(_K_ato)
	pcalau12i	$a4, %got_pc_hi20(_K_bto)
	ld.d	$a4, $a4, %got_pc_lo12(_K_bto)
	slli.d	$a0, $a0, 3
	ldx.d	$a3, $a3, $a0
	slli.d	$a0, $a1, 3
	ldx.d	$a1, $a4, $a0
	andi	$a0, $a2, 2
	bnez	$a0, .LBB0_7
# %bb.1:                                # %if.else
	ld.w	$a4, $a3, 8
	ld.w	$a5, $a1, 8
	ori	$a0, $zero, 1
	bne	$a4, $a5, .LBB0_50
# %bb.2:                                # %if.end.i
	ori	$a0, $zero, 2
	beq	$a4, $a0, .LBB0_23
# %bb.3:                                # %if.end.i
	ori	$a0, $zero, 1
	bne	$a4, $a0, .LBB0_34
# %bb.4:                                # %sw.bb.i
	ld.d	$fp, $a3, 16
	ld.d	$s0, $a1, 16
	andi	$a0, $a2, 4
	beqz	$a0, .LBB0_8
# %bb.5:                                # %for.cond.preheader.i.i
	ld.bu	$s2, $s0, 0
	beqz	$s2, .LBB0_22
# %bb.6:                                # %for.body.i.lr.ph.i
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$s1, $a0, 0
	addi.d	$s0, $s0, 1
	b	.LBB0_11
.LBB0_7:                                # %if.then
	ld.d	$fp, $a3, 16
	ld.d	$s0, $a1, 16
	andi	$a0, $a2, 4
	bnez	$a0, .LBB0_14
.LBB0_8:                                # %if.else40.i
	move	$a0, $fp
	move	$a1, $s0
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(strcmp)
	jr	$t8
	.p2align	4, , 16
.LBB0_9:                                # %if.else.i.i
                                        #   in Loop: Header=BB0_11 Depth=1
	andi	$a0, $s3, 255
	andi	$a1, $s2, 255
	bne	$a0, $a1, .LBB0_21
.LBB0_10:                               # %for.inc.i.i
                                        #   in Loop: Header=BB0_11 Depth=1
	ld.bu	$s2, $s0, 0
	addi.d	$fp, $fp, 1
	addi.d	$s0, $s0, 1
	beqz	$s2, .LBB0_22
.LBB0_11:                               # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$s3, $fp, 0
	slli.d	$a0, $s3, 1
	ldx.hu	$a0, $s1, $a0
	andi	$a0, $a0, 1024
	beqz	$a0, .LBB0_9
# %bb.12:                               # %land.lhs.true.i.i
                                        #   in Loop: Header=BB0_11 Depth=1
	ext.w.b	$s4, $s2
	slli.d	$a0, $s4, 1
	ldx.hu	$a0, $s1, $a0
	andi	$a0, $a0, 1024
	beqz	$a0, .LBB0_9
# %bb.13:                               # %if.then14.i.i
                                        #   in Loop: Header=BB0_11 Depth=1
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s3, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $s4, 2
	ldx.w	$a0, $a0, $a2
	beq	$a1, $a0, .LBB0_10
	b	.LBB0_21
.LBB0_14:                               # %for.cond.preheader.i
	ld.bu	$s2, $s0, 0
	beqz	$s2, .LBB0_22
# %bb.15:                               # %for.body.i.lr.ph
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$s1, $a0, 0
	addi.d	$s0, $s0, 1
	b	.LBB0_18
	.p2align	4, , 16
.LBB0_16:                               # %if.else.i
                                        #   in Loop: Header=BB0_18 Depth=1
	andi	$a0, $s3, 255
	andi	$a1, $s2, 255
	bne	$a0, $a1, .LBB0_21
.LBB0_17:                               # %for.inc.i
                                        #   in Loop: Header=BB0_18 Depth=1
	ld.bu	$s2, $s0, 0
	addi.d	$fp, $fp, 1
	addi.d	$s0, $s0, 1
	beqz	$s2, .LBB0_22
.LBB0_18:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$s3, $fp, 0
	slli.d	$a0, $s3, 1
	ldx.hu	$a0, $s1, $a0
	andi	$a0, $a0, 1024
	beqz	$a0, .LBB0_16
# %bb.19:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB0_18 Depth=1
	ext.w.b	$s4, $s2
	slli.d	$a0, $s4, 1
	ldx.hu	$a0, $s1, $a0
	andi	$a0, $a0, 1024
	beqz	$a0, .LBB0_16
# %bb.20:                               # %if.then14.i
                                        #   in Loop: Header=BB0_18 Depth=1
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s3, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $s4, 2
	ldx.w	$a0, $a0, $a2
	beq	$a1, $a0, .LBB0_17
.LBB0_21:
	ori	$a0, $zero, 1
	b	.LBB0_50
.LBB0_22:                               # %for.end.i
	ld.bu	$a0, $fp, 0
	sltu	$a0, $zero, $a0
	b	.LBB0_50
.LBB0_23:                               # %sw.bb4.i
	ld.d	$fp, $a3, 24
	ld.d	$s0, $a1, 24
	ld.d	$a0, $a3, 32
	ld.d	$a1, $a1, 32
	pcaddu18i	$ra, %call36(T_picktol)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	beqz	$a0, .LBB0_35
# %bb.24:
	ori	$s3, $zero, 48
	ori	$s4, $zero, 2
	move	$s5, $s1
	b	.LBB0_27
	.p2align	4, , 16
.LBB0_25:                               # %for.body.i8.i
                                        #   in Loop: Header=BB0_27 Depth=1
	beq	$a0, $s4, .LBB0_33
.LBB0_26:                               # %for.inc.i10.i
                                        #   in Loop: Header=BB0_27 Depth=1
	ld.d	$s5, $s5, 16
	beqz	$s5, .LBB0_36
.LBB0_27:                               # %for.body.i8.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s5, 0
	bnez	$a0, .LBB0_25
# %bb.28:                               # %land.lhs.true.i9.i
                                        #   in Loop: Header=BB0_27 Depth=1
	ld.d	$a0, $s5, 8
	ld.w	$a1, $a0, 0
	bnez	$a1, .LBB0_31
# %bb.29:                               # %land.lhs.true6.i.i
                                        #   in Loop: Header=BB0_27 Depth=1
	ld.d	$a0, $a0, 8
	ld.bu	$a1, $a0, 0
	bne	$a1, $s3, .LBB0_31
# %bb.30:                               # %land.lhs.true6.tail.i.i
                                        #   in Loop: Header=BB0_27 Depth=1
	ld.bu	$a0, $a0, 1
	beqz	$a0, .LBB0_26
	.p2align	4, , 16
.LBB0_31:                               # %land.lhs.true8.i.i
                                        #   in Loop: Header=BB0_27 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(R_getexp)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 8
	move	$s2, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(R_getexp)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, -1
	bge	$s2, $a0, .LBB0_26
# %bb.32:                               # %land.lhs.true13.i.i
                                        #   in Loop: Header=BB0_27 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(R_getexp)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 8
	move	$s2, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(R_getexp)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, -1
	bge	$s2, $a0, .LBB0_26
.LBB0_33:
	move	$a0, $zero
	b	.LBB0_50
.LBB0_34:                               # %sw.default.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(Z_fatal)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	b	.LBB0_50
.LBB0_35:                               # %if.then.i.i
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(Z_fatal)
	jirl	$ra, $ra, 0
.LBB0_36:                               # %for.end.i12.i
	ld.w	$a0, $fp, 4
	ld.w	$a1, $s0, 4
	bne	$a0, $a1, .LBB0_38
# %bb.37:                               # %if.else.i14.i
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(F_floatsub)
	jirl	$ra, $ra, 0
	b	.LBB0_39
.LBB0_38:                               # %if.then23.i.i
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(F_floatmagadd)
	jirl	$ra, $ra, 0
.LBB0_39:                               # %if.end26.i.i
	move	$s2, $a0
	ori	$a0, $zero, 1
	beqz	$s1, .LBB0_50
# %bb.40:                               # %for.body30.i.i.preheader
	ori	$s5, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$s3, $a0, %pc_lo12(.L.str.3)
	.p2align	4, , 16
.LBB0_41:                               # %for.body30.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s1, 0
	ld.d	$s4, $s1, 8
	beqz	$a0, .LBB0_48
# %bb.42:                               # %for.body30.i.i
                                        #   in Loop: Header=BB0_41 Depth=1
	bne	$a0, $s5, .LBB0_45
# %bb.43:                               # %if.then38.i.i
                                        #   in Loop: Header=BB0_41 Depth=1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(F_floatcmp)
	jirl	$ra, $ra, 0
	blt	$a0, $s5, .LBB0_46
# %bb.44:                               # %if.then41.i.i
                                        #   in Loop: Header=BB0_41 Depth=1
	move	$a0, $fp
	b	.LBB0_47
	.p2align	4, , 16
.LBB0_45:                               # %if.else46.i.i
                                        #   in Loop: Header=BB0_41 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(Z_fatal)
	jirl	$ra, $ra, 0
	b	.LBB0_48
.LBB0_46:                               # %if.else43.i.i
                                        #   in Loop: Header=BB0_41 Depth=1
	move	$a0, $s0
.LBB0_47:                               # %if.end48.i.i
                                        #   in Loop: Header=BB0_41 Depth=1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(F_floatmul)
	jirl	$ra, $ra, 0
	move	$s4, $a0
.LBB0_48:                               # %if.end48.i.i
                                        #   in Loop: Header=BB0_41 Depth=1
	move	$a0, $s2
	move	$a1, $s4
	pcaddu18i	$ra, %call36(F_floatcmp)
	jirl	$ra, $ra, 0
	blt	$a0, $s5, .LBB0_33
# %bb.49:                               # %for.inc53.i.i
                                        #   in Loop: Header=BB0_41 Depth=1
	ld.d	$s1, $s1, 16
	ori	$a0, $zero, 1
	bnez	$s1, .LBB0_41
.LBB0_50:                               # %cleanup
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
.Lfunc_end0:
	.size	X_com, .Lfunc_end0-X_com
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"fell off switch in _X_cmptokens"
	.size	.L.str, 32

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"_X_floatdiff called with a null tolerance"
	.size	.L.str.1, 42

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"bad value for type of tolerance in floatdiff"
	.size	.L.str.3, 45

	.section	".note.GNU-stack","",@progbits
	.addrsig
