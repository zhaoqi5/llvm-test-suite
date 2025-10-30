	.file	"rpos.c"
	.text
	.globl	rpos_Equal                      # -- Begin function rpos_Equal
	.p2align	5
	.type	rpos_Equal,@function
rpos_Equal:                             # @rpos_Equal
# %bb.0:                                # %entry
	ld.w	$a3, $a0, 0
	ld.w	$a2, $a1, 0
	bne	$a3, $a2, .LBB0_7
# %bb.1:                                # %if.else
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	ld.d	$fp, $a0, 16
	ori	$a2, $zero, 1
	beqz	$fp, .LBB0_12
# %bb.2:                                # %if.else4
	sub.d	$a0, $zero, $a3
	pcalau12i	$a2, %got_pc_hi20(symbol_TYPESTATBITS)
	ld.d	$a2, $a2, %got_pc_lo12(symbol_TYPESTATBITS)
	ld.wu	$a2, $a2, 0
	sra.w	$a0, $a0, $a2
	pcalau12i	$a2, %got_pc_hi20(symbol_SIGNATURE)
	ld.d	$a2, $a2, %got_pc_lo12(symbol_SIGNATURE)
	ld.d	$a2, $a2, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a2, $a0
	ld.bu	$a0, $a0, 20
	andi	$a0, $a0, 16
	bnez	$a0, .LBB0_8
# %bb.3:                                # %if.else14
	addi.d	$s0, $a1, 16
	.p2align	4, , 16
.LBB0_4:                                # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s0, 0
	ld.d	$a0, $fp, 8
	ld.d	$a1, $s0, 8
	pcaddu18i	$ra, %call36(rpos_Equal)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_11
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$fp, $fp, 0
	bnez	$fp, .LBB0_4
# %bb.6:
	ori	$a2, $zero, 1
	b	.LBB0_12
.LBB0_7:
	move	$a0, $zero
	ret
.LBB0_8:                                # %if.then8
	move	$a0, $fp
	move	$fp, $a1
	pcaddu18i	$ra, %call36(list_Copy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	pcalau12i	$a2, %pc_hi20(rpos_Equal)
	addi.d	$a2, $a2, %pc_lo12(rpos_Equal)
	pcaddu18i	$ra, %call36(list_NMultisetDifference)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	beqz	$a0, .LBB0_12
# %bb.9:                                # %while.body.i.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB0_10:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a0, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a0, 0
	ld.d	$a3, $a1, 128
	st.d	$a0, $a3, 0
	move	$a0, $a6
	bnez	$a6, .LBB0_10
.LBB0_11:
	move	$a2, $zero
.LBB0_12:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	move	$a0, $a2
	ret
.Lfunc_end0:
	.size	rpos_Equal, .Lfunc_end0-rpos_Equal
                                        # -- End function
	.globl	rpos_GreaterEqual               # -- Begin function rpos_GreaterEqual
	.p2align	5
	.type	rpos_GreaterEqual,@function
rpos_GreaterEqual:                      # @rpos_GreaterEqual
# %bb.0:                                # %entry
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
	move	$s0, $a1
	move	$fp, $a0
	ld.w	$a0, $a0, 0
	ld.w	$a1, $a1, 0
	blez	$a0, .LBB1_2
# %bb.1:                                # %if.then
	xor	$a0, $a0, $a1
	sltui	$a0, $a0, 1
	slli.d	$a0, $a0, 1
	b	.LBB1_4
.LBB1_2:                                # %if.else6
	blez	$a1, .LBB1_5
# %bb.3:                                # %if.then9
	move	$a0, $fp
	pcaddu18i	$ra, %call36(term_ContainsSymbol)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 3
	masknez	$a0, $a1, $a0
.LBB1_4:                                # %cleanup
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
	ret
.LBB1_5:                                # %if.else17
	bne	$a0, $a1, .LBB1_9
# %bb.6:                                # %if.then20
	sub.d	$a0, $zero, $a0
	pcalau12i	$a1, %got_pc_hi20(symbol_TYPESTATBITS)
	ld.d	$a1, $a1, %got_pc_lo12(symbol_TYPESTATBITS)
	ld.wu	$s3, $a1, 0
	srl.w	$a0, $a0, $s3
	pcalau12i	$a1, %got_pc_hi20(symbol_SIGNATURE)
	ld.d	$s4, $a1, %got_pc_lo12(symbol_SIGNATURE)
	ld.d	$a1, $s4, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.wu	$a0, $a0, 20
	andi	$a1, $a0, 16
	bnez	$a1, .LBB1_13
# %bb.7:                                # %if.else26
	ld.d	$s2, $fp, 16
	andi	$a0, $a0, 8
	bnez	$a0, .LBB1_27
# %bb.8:                                # %if.else.i54
	ld.d	$s1, $s0, 16
	b	.LBB1_28
.LBB1_9:                                # %if.else28
	pcalau12i	$a2, %got_pc_hi20(ord_PRECEDENCE)
	ld.d	$a2, $a2, %got_pc_lo12(ord_PRECEDENCE)
	ld.d	$a2, $a2, 0
	sub.d	$a0, $zero, $a0
	pcalau12i	$a3, %got_pc_hi20(symbol_TYPESTATBITS)
	ld.d	$a3, $a3, %got_pc_lo12(symbol_TYPESTATBITS)
	ld.wu	$a3, $a3, 0
	srl.w	$a0, $a0, $a3
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a2, $a0
	sub.d	$a1, $zero, $a1
	srl.w	$a1, $a1, $a3
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a2, $a1
	bge	$a0, $a1, .LBB1_22
# %bb.10:                               # %if.then33
	addi.d	$s0, $s0, 16
	ori	$s1, $zero, 3
	.p2align	4, , 16
.LBB1_11:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s0, 0
	beqz	$s0, .LBB1_25
# %bb.12:                               # %for.body
                                        #   in Loop: Header=BB1_11 Depth=1
	ld.d	$a1, $s0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(rpos_GreaterEqual)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $zero
	beq	$a1, $s1, .LBB1_11
	b	.LBB1_4
.LBB1_13:                               # %if.then24
	ld.d	$a0, $fp, 16
	pcaddu18i	$ra, %call36(list_Copy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 16
	pcalau12i	$a2, %pc_hi20(rpos_Equal)
	addi.d	$a2, $a2, %pc_lo12(rpos_Equal)
	pcaddu18i	$ra, %call36(list_NMultisetDifference)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_36
# %bb.14:                               # %if.else.i
	move	$s1, $a0
	ld.d	$a0, $s0, 16
	pcaddu18i	$ra, %call36(list_Copy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	pcalau12i	$a2, %pc_hi20(rpos_Equal)
	addi.d	$a2, $a2, %pc_lo12(rpos_Equal)
	pcaddu18i	$ra, %call36(list_NMultisetDifference)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_37
# %bb.15:                               # %for.cond7.i.preheader.preheader
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$s0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s2, $a0, %got_pc_lo12(memory_FREEDBYTES)
	ori	$s3, $zero, 3
	.p2align	4, , 16
.LBB1_16:                               # %for.cond7.i.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_17 Depth 2
	move	$s4, $s1
	.p2align	4, , 16
.LBB1_17:                               # %for.body13.i
                                        #   Parent Loop BB1_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s4, 8
	ld.d	$a1, $fp, 8
	pcaddu18i	$ra, %call36(rpos_GreaterEqual)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s4, 0
	beqz	$s4, .LBB1_19
# %bb.18:                               # %for.body13.i
                                        #   in Loop: Header=BB1_17 Depth=2
	bne	$a0, $s3, .LBB1_17
.LBB1_19:                               # %for.inc18.i
                                        #   in Loop: Header=BB1_16 Depth=1
	ld.d	$a2, $s0, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $s2, 0
	ld.d	$a1, $fp, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $s2, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $fp, 0
	ld.d	$a2, $s0, 128
	st.d	$fp, $a2, 0
	beqz	$a1, .LBB1_21
# %bb.20:                               # %for.inc18.i
                                        #   in Loop: Header=BB1_16 Depth=1
	move	$fp, $a1
	beq	$a0, $s3, .LBB1_16
.LBB1_21:                               # %while.body.i.preheader.loopexit
	addi.d	$a0, $a0, -3
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 3
	maskeqz	$a0, $a1, $a0
	b	.LBB1_38
.LBB1_22:                               # %if.else44
	addi.d	$fp, $fp, 16
	.p2align	4, , 16
.LBB1_23:                               # %for.cond46
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $fp, 0
	beqz	$fp, .LBB1_26
# %bb.24:                               # %for.body50
                                        #   in Loop: Header=BB1_23 Depth=1
	ld.d	$a0, $fp, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(rpos_GreaterEqual)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 3
	beqz	$a1, .LBB1_23
	b	.LBB1_4
.LBB1_25:
	ori	$a0, $zero, 3
	b	.LBB1_4
.LBB1_26:
	move	$a0, $zero
	b	.LBB1_4
.LBB1_27:                               # %if.then.i44
	move	$a0, $s2
	pcaddu18i	$ra, %call36(list_Reverse)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 16
	move	$s2, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(list_Reverse)
	jirl	$ra, $ra, 0
	move	$s1, $a0
.LBB1_28:                               # %if.end.i
	beqz	$s2, .LBB1_32
# %bb.29:                               # %for.body.i.preheader
	ori	$s7, $zero, 2
	move	$s5, $s1
	move	$s6, $s2
	.p2align	4, , 16
.LBB1_30:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 8
	ld.d	$a1, $s5, 8
	pcaddu18i	$ra, %call36(rpos_GreaterEqual)
	jirl	$ra, $ra, 0
	bne	$a0, $s7, .LBB1_33
# %bb.31:                               # %for.inc.i
                                        #   in Loop: Header=BB1_30 Depth=1
	ld.d	$s6, $s6, 0
	ld.d	$s5, $s5, 0
	bnez	$s6, .LBB1_30
.LBB1_32:
	ori	$a0, $zero, 2
	b	.LBB1_46
.LBB1_33:                               # %for.body.i
	ori	$s7, $zero, 3
	bne	$a0, $s7, .LBB1_40
.LBB1_34:                               # %for.cond28.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s5, $s5, 0
	beqz	$s5, .LBB1_45
# %bb.35:                               # %land.rhs.i
                                        #   in Loop: Header=BB1_34 Depth=1
	ld.d	$a1, $s5, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(rpos_GreaterEqual)
	jirl	$ra, $ra, 0
	beq	$a0, $s7, .LBB1_34
	b	.LBB1_44
.LBB1_36:
	ori	$a0, $zero, 2
	b	.LBB1_4
.LBB1_37:
	ori	$a0, $zero, 3
.LBB1_38:                               # %while.body.i.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB1_39:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $s1, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $s1, 0
	ld.d	$a3, $a1, 128
	st.d	$s1, $a3, 0
	move	$s1, $a6
	bnez	$a6, .LBB1_39
	b	.LBB1_4
.LBB1_40:                               # %for.cond48.i.preheader
	ld.d	$s5, $s6, 0
	beqz	$s5, .LBB1_44
.LBB1_41:                               # %for.body56.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s5, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(rpos_GreaterEqual)
	jirl	$ra, $ra, 0
	ld.d	$s5, $s5, 0
	beqz	$s5, .LBB1_43
# %bb.42:                               # %for.body56.i
                                        #   in Loop: Header=BB1_41 Depth=1
	beqz	$a0, .LBB1_41
.LBB1_43:                               # %if.end68.i.loopexit
	sltu	$a0, $zero, $a0
	ori	$a1, $zero, 3
	maskeqz	$a0, $a1, $a0
	b	.LBB1_46
.LBB1_44:
	move	$a0, $zero
	b	.LBB1_46
.LBB1_45:
	ori	$a0, $zero, 3
.LBB1_46:                               # %if.end68.i
	ld.w	$a1, $fp, 0
	ld.d	$a2, $s4, 0
	sub.d	$a1, $zero, $a1
	sra.w	$a1, $a1, $s3
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	ld.bu	$a1, $a1, 20
	andi	$a1, $a1, 8
	beqz	$a1, .LBB1_4
# %bb.47:                               # %if.then72.i
	beqz	$s2, .LBB1_50
# %bb.48:                               # %while.body.i90.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB1_49:                               # %while.body.i90
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $s2, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $s2, 0
	ld.d	$a3, $a1, 128
	st.d	$s2, $a3, 0
	move	$s2, $a6
	bnez	$a6, .LBB1_49
.LBB1_50:                               # %list_Delete.exit97
	beqz	$s1, .LBB1_4
# %bb.51:                               # %while.body.i81.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB1_52:                               # %while.body.i81
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $s1, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $s1, 0
	ld.d	$a3, $a1, 128
	st.d	$s1, $a3, 0
	move	$s1, $a6
	bnez	$a6, .LBB1_52
	b	.LBB1_4
.Lfunc_end1:
	.size	rpos_GreaterEqual, .Lfunc_end1-rpos_GreaterEqual
                                        # -- End function
	.globl	rpos_Compare                    # -- Begin function rpos_Compare
	.p2align	5
	.type	rpos_Compare,@function
rpos_Compare:                           # @rpos_Compare
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	pcaddu18i	$ra, %call36(rpos_GreaterEqual)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_2
# %bb.1:                                # %if.else
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(rpos_GreaterEqual)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, -3
	sltui	$a0, $a0, 1
.LBB2_2:                                # %cleanup
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end2:
	.size	rpos_Compare, .Lfunc_end2-rpos_Compare
                                        # -- End function
	.globl	rpos_ContEqual                  # -- Begin function rpos_ContEqual
	.p2align	5
	.type	rpos_ContEqual,@function
rpos_ContEqual:                         # @rpos_ContEqual
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	ld.w	$a4, $a1, 0
	move	$fp, $a2
	move	$s0, $a0
	blez	$a4, .LBB3_5
# %bb.1:                                # %land.rhs.i.preheader
	pcalau12i	$a0, %got_pc_hi20(cont_INSTANCECONTEXT)
	ld.d	$a0, $a0, %got_pc_lo12(cont_INSTANCECONTEXT)
	ld.d	$a0, $a0, 0
	beq	$s0, $a0, .LBB3_5
	.p2align	4, , 16
.LBB3_2:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a2, $a4, 5
	add.d	$a2, $s0, $a2
	ld.d	$a5, $a2, 8
	beqz	$a5, .LBB3_5
# %bb.3:                                # %cleanup.i
                                        #   in Loop: Header=BB3_2 Depth=1
	move	$a1, $a5
	ld.w	$a4, $a5, 0
	ld.d	$s0, $a2, 16
	blez	$a4, .LBB3_5
# %bb.4:                                # %cleanup.i
                                        #   in Loop: Header=BB3_2 Depth=1
	bne	$s0, $a0, .LBB3_2
.LBB3_5:                                # %cont_Deref.exit
	ld.w	$a0, $a3, 0
	blez	$a0, .LBB3_10
# %bb.6:                                # %land.rhs.i25.preheader
	pcalau12i	$a2, %got_pc_hi20(cont_INSTANCECONTEXT)
	ld.d	$a2, $a2, %got_pc_lo12(cont_INSTANCECONTEXT)
	ld.d	$a2, $a2, 0
	beq	$fp, $a2, .LBB3_10
	.p2align	4, , 16
.LBB3_7:                                # %while.body.i29
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a5, $a0, 5
	add.d	$a5, $fp, $a5
	ld.d	$a6, $a5, 8
	beqz	$a6, .LBB3_10
# %bb.8:                                # %cleanup.i34
                                        #   in Loop: Header=BB3_7 Depth=1
	move	$a3, $a6
	ld.w	$a0, $a6, 0
	ld.d	$fp, $a5, 16
	blez	$a0, .LBB3_10
# %bb.9:                                # %cleanup.i34
                                        #   in Loop: Header=BB3_7 Depth=1
	bne	$fp, $a2, .LBB3_7
.LBB3_10:                               # %cont_Deref.exit39
	bne	$a4, $a0, .LBB3_20
# %bb.11:                               # %if.else
	ld.d	$s1, $a1, 16
	ori	$a2, $zero, 1
	beqz	$s1, .LBB3_21
# %bb.12:                               # %if.else6
	sub.d	$a0, $zero, $a4
	pcalau12i	$a2, %got_pc_hi20(symbol_TYPESTATBITS)
	ld.d	$a2, $a2, %got_pc_lo12(symbol_TYPESTATBITS)
	ld.wu	$a2, $a2, 0
	sra.w	$a0, $a0, $a2
	pcalau12i	$a2, %got_pc_hi20(symbol_SIGNATURE)
	ld.d	$a2, $a2, %got_pc_lo12(symbol_SIGNATURE)
	ld.d	$a2, $a2, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a2, $a0
	ld.bu	$a0, $a0, 20
	andi	$a0, $a0, 16
	bnez	$a0, .LBB3_17
# %bb.13:                               # %if.else16
	addi.d	$s2, $a3, 16
	.p2align	4, , 16
.LBB3_14:                               # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s2, $s2, 0
	ld.d	$a1, $s1, 8
	ld.d	$a3, $s2, 8
	move	$a0, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(rpos_ContEqual)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_20
# %bb.15:                               # %for.inc
                                        #   in Loop: Header=BB3_14 Depth=1
	ld.d	$s1, $s1, 0
	bnez	$s1, .LBB3_14
# %bb.16:
	ori	$a2, $zero, 1
	b	.LBB3_21
.LBB3_17:                               # %if.then10
	move	$a0, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(rpos_ContMultisetDifference)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	beqz	$a0, .LBB3_21
# %bb.18:                               # %while.body.i42.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB3_19:                               # %while.body.i42
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a0, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a0, 0
	ld.d	$a3, $a1, 128
	st.d	$a0, $a3, 0
	move	$a0, $a6
	bnez	$a6, .LBB3_19
.LBB3_20:
	move	$a2, $zero
.LBB3_21:                               # %cleanup
	move	$a0, $a2
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end3:
	.size	rpos_ContEqual, .Lfunc_end3-rpos_ContEqual
                                        # -- End function
	.p2align	5                               # -- Begin function rpos_ContMultisetDifference
	.type	rpos_ContMultisetDifference,@function
rpos_ContMultisetDifference:            # @rpos_ContMultisetDifference
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	ld.d	$a1, $a1, 16
	move	$s1, $a3
	move	$fp, $a2
	move	$s0, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(list_Copy)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s1, 16
	move	$s1, $a0
	beqz	$s2, .LBB4_2
# %bb.1:                                # %entry
	bnez	$s1, .LBB4_5
.LBB4_2:                                # %for.end17
	move	$a0, $s1
	move	$a1, $zero
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(list_PointerDeleteElement)
	jr	$t8
	.p2align	4, , 16
.LBB4_3:                                # %if.then
                                        #   in Loop: Header=BB4_5 Depth=1
	st.d	$zero, $s3, 8
.LBB4_4:                                # %for.inc15
                                        #   in Loop: Header=BB4_5 Depth=1
	ld.d	$s2, $s2, 0
	beqz	$s2, .LBB4_2
.LBB4_5:                                # %for.cond4.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_7 Depth 2
	move	$s3, $s1
	b	.LBB4_7
	.p2align	4, , 16
.LBB4_6:                                # %for.inc
                                        #   in Loop: Header=BB4_7 Depth=2
	ld.d	$s3, $s3, 0
	beqz	$s3, .LBB4_4
.LBB4_7:                                # %for.body8
                                        #   Parent Loop BB4_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s3, 8
	beqz	$a1, .LBB4_6
# %bb.8:                                # %land.lhs.true
                                        #   in Loop: Header=BB4_7 Depth=2
	ld.d	$a3, $s2, 8
	move	$a0, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(rpos_ContEqual)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_6
	b	.LBB4_3
.Lfunc_end4:
	.size	rpos_ContMultisetDifference, .Lfunc_end4-rpos_ContMultisetDifference
                                        # -- End function
	.globl	rpos_ContGreaterEqual           # -- Begin function rpos_ContGreaterEqual
	.p2align	5
	.type	rpos_ContGreaterEqual,@function
rpos_ContGreaterEqual:                  # @rpos_ContGreaterEqual
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
	move	$s1, $a1
	ld.w	$a1, $a1, 0
	move	$s2, $a3
	move	$s0, $a2
	move	$fp, $a0
	blez	$a1, .LBB5_5
# %bb.1:                                # %land.rhs.i.preheader
	pcalau12i	$a0, %got_pc_hi20(cont_INSTANCECONTEXT)
	ld.d	$a0, $a0, %got_pc_lo12(cont_INSTANCECONTEXT)
	ld.d	$a0, $a0, 0
	beq	$fp, $a0, .LBB5_5
	.p2align	4, , 16
.LBB5_2:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a2, $a1, 5
	add.d	$a2, $fp, $a2
	ld.d	$a3, $a2, 8
	beqz	$a3, .LBB5_5
# %bb.3:                                # %cleanup.i
                                        #   in Loop: Header=BB5_2 Depth=1
	move	$s1, $a3
	ld.w	$a1, $a3, 0
	ld.d	$fp, $a2, 16
	blez	$a1, .LBB5_5
# %bb.4:                                # %cleanup.i
                                        #   in Loop: Header=BB5_2 Depth=1
	bne	$fp, $a0, .LBB5_2
.LBB5_5:                                # %cont_Deref.exit
	ld.w	$a2, $s2, 0
	blez	$a2, .LBB5_10
# %bb.6:                                # %land.rhs.i41.preheader
	pcalau12i	$a0, %got_pc_hi20(cont_INSTANCECONTEXT)
	ld.d	$a0, $a0, %got_pc_lo12(cont_INSTANCECONTEXT)
	ld.d	$a0, $a0, 0
	beq	$s0, $a0, .LBB5_10
	.p2align	4, , 16
.LBB5_7:                                # %while.body.i45
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a3, $a2, 5
	add.d	$a3, $s0, $a3
	ld.d	$a4, $a3, 8
	beqz	$a4, .LBB5_10
# %bb.8:                                # %cleanup.i50
                                        #   in Loop: Header=BB5_7 Depth=1
	move	$s2, $a4
	ld.w	$a2, $a4, 0
	ld.d	$s0, $a3, 16
	blez	$a2, .LBB5_10
# %bb.9:                                # %cleanup.i50
                                        #   in Loop: Header=BB5_7 Depth=1
	bne	$s0, $a0, .LBB5_7
.LBB5_10:                               # %cont_Deref.exit55
	blez	$a1, .LBB5_12
# %bb.11:                               # %if.then
	xor	$a0, $a1, $a2
	sltui	$a0, $a0, 1
	slli.d	$a0, $a0, 1
	b	.LBB5_14
.LBB5_12:                               # %if.else8
	blez	$a2, .LBB5_15
# %bb.13:                               # %if.then11
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cont_TermContainsSymbol)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 3
	masknez	$a0, $a1, $a0
.LBB5_14:                               # %cleanup
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
.LBB5_15:                               # %if.else19
	bne	$a1, $a2, .LBB5_19
# %bb.16:                               # %if.then22
	sub.d	$a0, $zero, $a1
	pcalau12i	$a1, %got_pc_hi20(symbol_TYPESTATBITS)
	ld.d	$a1, $a1, %got_pc_lo12(symbol_TYPESTATBITS)
	ld.wu	$s5, $a1, 0
	srl.w	$a0, $a0, $s5
	pcalau12i	$a1, %got_pc_hi20(symbol_SIGNATURE)
	ld.d	$s6, $a1, %got_pc_lo12(symbol_SIGNATURE)
	ld.d	$a1, $s6, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.wu	$a0, $a0, 20
	andi	$a1, $a0, 16
	bnez	$a1, .LBB5_23
# %bb.17:                               # %if.else28
	ld.d	$s4, $s1, 16
	andi	$a0, $a0, 8
	bnez	$a0, .LBB5_53
# %bb.18:                               # %if.else.i75
	ld.d	$s3, $s2, 16
	b	.LBB5_54
.LBB5_19:                               # %if.else30
	pcalau12i	$a0, %got_pc_hi20(ord_PRECEDENCE)
	ld.d	$a0, $a0, %got_pc_lo12(ord_PRECEDENCE)
	ld.d	$a0, $a0, 0
	sub.d	$a1, $zero, $a1
	pcalau12i	$a3, %got_pc_hi20(symbol_TYPESTATBITS)
	ld.d	$a3, $a3, %got_pc_lo12(symbol_TYPESTATBITS)
	ld.wu	$a3, $a3, 0
	srl.w	$a1, $a1, $a3
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	sub.d	$a2, $zero, $a2
	srl.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	bge	$a1, $a0, .LBB5_48
# %bb.20:                               # %if.then35
	addi.d	$s2, $s2, 16
	ori	$s3, $zero, 3
	.p2align	4, , 16
.LBB5_21:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s2, $s2, 0
	beqz	$s2, .LBB5_51
# %bb.22:                               # %for.body
                                        #   in Loop: Header=BB5_21 Depth=1
	ld.d	$a3, $s2, 8
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(rpos_ContGreaterEqual)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $zero
	beq	$a1, $s3, .LBB5_21
	b	.LBB5_14
.LBB5_23:                               # %if.then26
	ld.d	$a0, $s1, 16
	pcaddu18i	$ra, %call36(list_Copy)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s2, 16
	move	$s3, $a0
	beqz	$s4, .LBB5_25
# %bb.24:                               # %if.then26
	bnez	$s3, .LBB5_38
.LBB5_25:                               # %rpos_ContMultisetDifference.exit
	move	$a0, $s3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(list_PointerDeleteElement)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_63
# %bb.26:                               # %if.else.i
	move	$s3, $a0
	ld.d	$a0, $s2, 16
	pcaddu18i	$ra, %call36(list_Copy)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s1, 16
	move	$s1, $a0
	beqz	$s2, .LBB5_28
# %bb.27:                               # %if.else.i
	bnez	$s1, .LBB5_44
.LBB5_28:                               # %rpos_ContMultisetDifference.exit261
	move	$a0, $s1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(list_PointerDeleteElement)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_65
# %bb.29:                               # %for.cond7.i.preheader.preheader
	move	$s1, $a0
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$s2, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s4, $a0, %got_pc_lo12(memory_FREEDBYTES)
	ori	$s5, $zero, 3
	.p2align	4, , 16
.LBB5_30:                               # %for.cond7.i.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_31 Depth 2
	move	$s6, $s3
	.p2align	4, , 16
.LBB5_31:                               # %for.body13.i
                                        #   Parent Loop BB5_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s6, 8
	ld.d	$a3, $s1, 8
	move	$a0, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(rpos_ContGreaterEqual)
	jirl	$ra, $ra, 0
	ld.d	$s6, $s6, 0
	beqz	$s6, .LBB5_33
# %bb.32:                               # %for.body13.i
                                        #   in Loop: Header=BB5_31 Depth=2
	bne	$a0, $s5, .LBB5_31
.LBB5_33:                               # %for.inc18.i
                                        #   in Loop: Header=BB5_30 Depth=1
	ld.d	$a2, $s2, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $s4, 0
	ld.d	$a1, $s1, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $s4, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $s1, 0
	ld.d	$a2, $s2, 128
	st.d	$s1, $a2, 0
	beqz	$a1, .LBB5_35
# %bb.34:                               # %for.inc18.i
                                        #   in Loop: Header=BB5_30 Depth=1
	move	$s1, $a1
	beq	$a0, $s5, .LBB5_30
.LBB5_35:                               # %while.body.i86.preheader.loopexit
	addi.d	$a0, $a0, -3
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 3
	maskeqz	$a0, $a1, $a0
	b	.LBB5_66
	.p2align	4, , 16
.LBB5_36:                               # %if.then.i103
                                        #   in Loop: Header=BB5_38 Depth=1
	st.d	$zero, $s5, 8
.LBB5_37:                               # %for.inc15.i
                                        #   in Loop: Header=BB5_38 Depth=1
	ld.d	$s4, $s4, 0
	beqz	$s4, .LBB5_25
.LBB5_38:                               # %for.cond4.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_40 Depth 2
	move	$s5, $s3
	b	.LBB5_40
	.p2align	4, , 16
.LBB5_39:                               # %for.inc.i107
                                        #   in Loop: Header=BB5_40 Depth=2
	ld.d	$s5, $s5, 0
	beqz	$s5, .LBB5_37
.LBB5_40:                               # %for.body8.i
                                        #   Parent Loop BB5_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s5, 8
	beqz	$a1, .LBB5_39
# %bb.41:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB5_40 Depth=2
	ld.d	$a3, $s4, 8
	move	$a0, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(rpos_ContEqual)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_39
	b	.LBB5_36
.LBB5_42:                               # %if.then.i
                                        #   in Loop: Header=BB5_44 Depth=1
	st.d	$zero, $s4, 8
.LBB5_43:                               # %for.inc15.i257
                                        #   in Loop: Header=BB5_44 Depth=1
	ld.d	$s2, $s2, 0
	beqz	$s2, .LBB5_28
.LBB5_44:                               # %for.cond4.preheader.i248
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_46 Depth 2
	move	$s4, $s1
	b	.LBB5_46
	.p2align	4, , 16
.LBB5_45:                               # %for.inc.i259
                                        #   in Loop: Header=BB5_46 Depth=2
	ld.d	$s4, $s4, 0
	beqz	$s4, .LBB5_43
.LBB5_46:                               # %for.body8.i250
                                        #   Parent Loop BB5_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s4, 8
	beqz	$a1, .LBB5_45
# %bb.47:                               # %land.lhs.true.i254
                                        #   in Loop: Header=BB5_46 Depth=2
	ld.d	$a3, $s2, 8
	move	$a0, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(rpos_ContEqual)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_45
	b	.LBB5_42
.LBB5_48:                               # %if.else46
	addi.d	$s1, $s1, 16
	.p2align	4, , 16
.LBB5_49:                               # %for.cond48
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $s1, 0
	beqz	$s1, .LBB5_52
# %bb.50:                               # %for.body52
                                        #   in Loop: Header=BB5_49 Depth=1
	ld.d	$a1, $s1, 8
	move	$a0, $fp
	move	$a2, $s0
	move	$a3, $s2
	pcaddu18i	$ra, %call36(rpos_ContGreaterEqual)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 3
	beqz	$a1, .LBB5_49
	b	.LBB5_14
.LBB5_51:
	ori	$a0, $zero, 3
	b	.LBB5_14
.LBB5_52:
	move	$a0, $zero
	b	.LBB5_14
.LBB5_53:                               # %if.then.i65
	move	$a0, $s4
	pcaddu18i	$ra, %call36(list_Reverse)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 16
	move	$s4, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(list_Reverse)
	jirl	$ra, $ra, 0
	move	$s3, $a0
.LBB5_54:                               # %if.end.i
	beqz	$s4, .LBB5_64
# %bb.55:                               # %for.body.i.preheader
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	ori	$s5, $zero, 2
	move	$s7, $s3
	move	$s8, $s4
	.p2align	4, , 16
.LBB5_56:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s8, 8
	ld.d	$a3, $s7, 8
	move	$a0, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(rpos_ContGreaterEqual)
	jirl	$ra, $ra, 0
	bne	$a0, $s5, .LBB5_59
# %bb.57:                               # %for.inc.i
                                        #   in Loop: Header=BB5_56 Depth=1
	ld.d	$s8, $s8, 0
	ld.d	$s7, $s7, 0
	bnez	$s8, .LBB5_56
# %bb.58:
	ori	$a0, $zero, 2
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	b	.LBB5_74
.LBB5_59:                               # %for.body.i
	ori	$s5, $zero, 3
	bne	$a0, $s5, .LBB5_68
.LBB5_60:                               # %for.cond28.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s7, $s7, 0
	beqz	$s7, .LBB5_72
# %bb.61:                               # %land.rhs.i72
                                        #   in Loop: Header=BB5_60 Depth=1
	ld.d	$a3, $s7, 8
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(rpos_ContGreaterEqual)
	jirl	$ra, $ra, 0
	beq	$a0, $s5, .LBB5_60
# %bb.62:
	move	$a0, $zero
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	b	.LBB5_74
.LBB5_63:
	ori	$a0, $zero, 2
	b	.LBB5_14
.LBB5_64:
	ori	$a0, $zero, 2
	b	.LBB5_74
.LBB5_65:
	ori	$a0, $zero, 3
.LBB5_66:                               # %while.body.i86.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB5_67:                               # %while.body.i86
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $s3, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $s3, 0
	ld.d	$a3, $a1, 128
	st.d	$s3, $a3, 0
	move	$s3, $a6
	bnez	$a6, .LBB5_67
	b	.LBB5_14
.LBB5_68:                               # %for.cond48.i.preheader
	ld.d	$s7, $s8, 0
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	beqz	$s7, .LBB5_73
.LBB5_69:                               # %for.body56.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s7, 8
	move	$a0, $fp
	move	$a2, $s0
	move	$a3, $s2
	pcaddu18i	$ra, %call36(rpos_ContGreaterEqual)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s7, 0
	beqz	$s7, .LBB5_71
# %bb.70:                               # %for.body56.i
                                        #   in Loop: Header=BB5_69 Depth=1
	beqz	$a0, .LBB5_69
.LBB5_71:                               # %if.end68.i.loopexit
	sltu	$a0, $zero, $a0
	ori	$a1, $zero, 3
	maskeqz	$a0, $a1, $a0
	b	.LBB5_74
.LBB5_72:
	ori	$a0, $zero, 3
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	b	.LBB5_74
.LBB5_73:
	move	$a0, $zero
.LBB5_74:                               # %if.end68.i
	ld.w	$a1, $s1, 0
	ld.d	$a2, $s6, 0
	sub.d	$a1, $zero, $a1
	sra.w	$a1, $a1, $s5
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	ld.bu	$a1, $a1, 20
	andi	$a1, $a1, 8
	beqz	$a1, .LBB5_14
# %bb.75:                               # %if.then72.i
	beqz	$s4, .LBB5_78
# %bb.76:                               # %while.body.i119.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB5_77:                               # %while.body.i119
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $s4, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $s4, 0
	ld.d	$a3, $a1, 128
	st.d	$s4, $a3, 0
	move	$s4, $a6
	bnez	$a6, .LBB5_77
.LBB5_78:                               # %list_Delete.exit126
	beqz	$s3, .LBB5_14
# %bb.79:                               # %while.body.i110.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB5_80:                               # %while.body.i110
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $s3, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $s3, 0
	ld.d	$a3, $a1, 128
	st.d	$s3, $a3, 0
	move	$s3, $a6
	bnez	$a6, .LBB5_80
	b	.LBB5_14
.Lfunc_end5:
	.size	rpos_ContGreaterEqual, .Lfunc_end5-rpos_ContGreaterEqual
                                        # -- End function
	.globl	rpos_ContCompare                # -- Begin function rpos_ContCompare
	.p2align	5
	.type	rpos_ContCompare,@function
rpos_ContCompare:                       # @rpos_ContCompare
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	ld.w	$a1, $a1, 0
	move	$s0, $a3
	move	$s2, $a2
	move	$s1, $a0
	blez	$a1, .LBB6_6
# %bb.1:                                # %land.rhs.i.preheader
	pcalau12i	$a0, %got_pc_hi20(cont_INSTANCECONTEXT)
	ld.d	$a0, $a0, %got_pc_lo12(cont_INSTANCECONTEXT)
	ld.d	$a0, $a0, 0
	beq	$s1, $a0, .LBB6_6
# %bb.2:                                # %while.body.i.preheader
	slli.d	$a1, $a1, 5
	add.d	$a1, $s1, $a1
	ld.d	$a2, $a1, 8
	beqz	$a2, .LBB6_6
	.p2align	4, , 16
.LBB6_3:                                # %cleanup.i
                                        # =>This Inner Loop Header: Depth=1
	move	$fp, $a2
	ld.w	$a2, $a2, 0
	ld.d	$s1, $a1, 16
	blez	$a2, .LBB6_6
# %bb.4:                                # %cleanup.i
                                        #   in Loop: Header=BB6_3 Depth=1
	beq	$s1, $a0, .LBB6_6
# %bb.5:                                # %while.body.i
                                        #   in Loop: Header=BB6_3 Depth=1
	slli.d	$a1, $a2, 5
	add.d	$a1, $s1, $a1
	ld.d	$a2, $a1, 8
	bnez	$a2, .LBB6_3
.LBB6_6:                                # %cont_Deref.exit
	ld.w	$a1, $s0, 0
	blez	$a1, .LBB6_12
# %bb.7:                                # %land.rhs.i10.preheader
	pcalau12i	$a0, %got_pc_hi20(cont_INSTANCECONTEXT)
	ld.d	$a0, $a0, %got_pc_lo12(cont_INSTANCECONTEXT)
	ld.d	$a0, $a0, 0
	beq	$s2, $a0, .LBB6_12
# %bb.8:                                # %while.body.i14.preheader
	slli.d	$a1, $a1, 5
	add.d	$a1, $s2, $a1
	ld.d	$a2, $a1, 8
	beqz	$a2, .LBB6_12
	.p2align	4, , 16
.LBB6_9:                                # %cleanup.i19
                                        # =>This Inner Loop Header: Depth=1
	move	$s0, $a2
	ld.w	$a2, $a2, 0
	ld.d	$s2, $a1, 16
	blez	$a2, .LBB6_12
# %bb.10:                               # %cleanup.i19
                                        #   in Loop: Header=BB6_9 Depth=1
	beq	$s2, $a0, .LBB6_12
# %bb.11:                               # %while.body.i14
                                        #   in Loop: Header=BB6_9 Depth=1
	slli.d	$a1, $a2, 5
	add.d	$a1, $s2, $a1
	ld.d	$a2, $a1, 8
	bnez	$a2, .LBB6_9
.LBB6_12:                               # %cont_Deref.exit24
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(rpos_ContGreaterEqual)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB6_14
# %bb.13:                               # %if.else
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(rpos_ContGreaterEqual)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, -3
	sltui	$a0, $a0, 1
.LBB6_14:                               # %cleanup
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end6:
	.size	rpos_ContCompare, .Lfunc_end6-rpos_ContCompare
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rpos_Equal
