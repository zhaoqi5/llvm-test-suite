	.file	"23tree.c"
	.text
	.globl	tprint                          # -- Begin function tprint
	.p2align	5
	.type	tprint,@function
tprint:                                 # @tprint
# %bb.0:                                # %entry
	beqz	$a0, .LBB0_22
# %bb.1:                                # %if.end
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
	move	$fp, $a0
	lu12i.w	$a0, 19
	ori	$a0, $a0, 2184
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $zero
	move	$s8, $zero
	st.d	$fp, $s0, 0
	addi.d	$s6, $s0, 8
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$s1, $a1, %pc_lo12(.L.str.4)
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$s2, $a1, %pc_lo12(.L.str.5)
	ori	$s7, $zero, 1
	pcalau12i	$a1, %pc_hi20(.Lstr.2)
	addi.d	$a1, $a1, %pc_lo12(.Lstr.2)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.Lstr.1)
	addi.d	$a1, $a1, %pc_lo12(.Lstr.1)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.Lstr)
	addi.d	$a1, $a1, %pc_lo12(.Lstr)
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_2:                                #   in Loop: Header=BB0_4 Depth=1
	move	$a1, $s8
.LBB0_3:                                # %if.end49
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.d	$a0, $s5, 1
	move	$s8, $a1
	bge	$s5, $a1, .LBB0_21
.LBB0_4:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
	move	$s5, $a0
	slli.d	$a0, $a0, 3
	ldx.d	$s3, $s0, $a0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 4
	beqz	$a0, .LBB0_6
# %bb.5:                                # %tdump.exit
                                        #   in Loop: Header=BB0_4 Depth=1
	bne	$s3, $fp, .LBB0_9
	b	.LBB0_18
	.p2align	4, , 16
.LBB0_6:                                # %if.then.i
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.w	$a1, $s3, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s3, 56
	beqz	$s4, .LBB0_8
	.p2align	4, , 16
.LBB0_7:                                # %for.body.i
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $s4, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s4, 8
	bnez	$s4, .LBB0_7
.LBB0_8:                                # %for.end.i
                                        #   in Loop: Header=BB0_4 Depth=1
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	beq	$s3, $fp, .LBB0_18
.LBB0_9:                                # %if.then4
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $s3, 40
	ld.d	$a1, $a0, 8
	beq	$a1, $s3, .LBB0_13
# %bb.10:                               # %land.lhs.true
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a1, $a0, 16
	beq	$a1, $s3, .LBB0_13
# %bb.11:                               # %land.lhs.true7
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $a0, 24
	beq	$a0, $s3, .LBB0_13
# %bb.12:                               # %if.then9
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB0_13:                               # %if.end11
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.w	$a0, $s3, 4
	beqz	$a0, .LBB0_2
# %bb.14:                               # %if.then13
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $s3, 8
	ld.d	$a0, $a0, 40
	ld.w	$a1, $a0, 48
	ld.w	$a2, $s3, 48
	beq	$a1, $a2, .LBB0_16
# %bb.15:                               # %if.then18
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 8
	ld.d	$a0, $a0, 40
.LBB0_16:                               # %if.end20
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.w	$a0, $a0, 52
	ld.w	$a1, $s3, 52
	beq	$a0, $a1, .LBB0_18
# %bb.17:                               # %if.then25
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB0_18:                               # %if.end29
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.w	$a0, $s3, 4
	blt	$a0, $s7, .LBB0_2
# %bb.19:                               # %if.then32
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a1, $s3, 8
	slli.d	$a2, $s8, 3
	ld.d	$a3, $s3, 16
	ld.d	$a0, $s3, 24
	stx.d	$a1, $s6, $a2
	addi.w	$a1, $s8, 2
	slli.d	$a2, $a1, 3
	stx.d	$a3, $s0, $a2
	beqz	$a0, .LBB0_3
# %bb.20:                               # %if.then43
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.w	$a1, $s8, 3
	slli.d	$a2, $a1, 3
	stx.d	$a0, $s0, $a2
	b	.LBB0_3
.LBB0_21:                               # %while.end
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
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB0_22:                               # %cleanup
	ret
.Lfunc_end0:
	.size	tprint, .Lfunc_end0-tprint
                                        # -- End function
	.globl	tdump                           # -- Begin function tdump
	.p2align	5
	.type	tdump,@function
tdump:                                  # @tdump
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 4
	beqz	$a0, .LBB1_2
# %bb.1:                                # %if.end
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB1_2:                                # %if.then
	ld.w	$a1, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 56
	beqz	$s0, .LBB1_5
# %bb.3:                                # %for.body.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$fp, $a0, %pc_lo12(.L.str.5)
	.p2align	4, , 16
.LBB1_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s0, 8
	bnez	$s0, .LBB1_4
.LBB1_5:                                # %for.end
	ori	$a0, $zero, 10
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(putchar)
	jr	$t8
.Lfunc_end1:
	.size	tdump, .Lfunc_end1-tdump
                                        # -- End function
	.globl	tmin                            # -- Begin function tmin
	.p2align	5
	.type	tmin,@function
tmin:                                   # @tmin
# %bb.0:                                # %entry
	beqz	$a0, .LBB2_3
	.p2align	4, , 16
.LBB2_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	move	$a4, $a0
	ld.d	$a0, $a0, 8
	bnez	$a0, .LBB2_1
# %bb.2:                                # %while.end
	ld.w	$a0, $a4, 0
	ld.d	$a5, $a4, 56
	st.w	$a0, $a2, 0
	ld.w	$a0, $a5, 0
	st.d	$a4, $a1, 0
	st.w	$a0, $a3, 0
	ret
.LBB2_3:                                # %if.then
	st.d	$zero, $a1, 0
	ret
.Lfunc_end2:
	.size	tmin, .Lfunc_end2-tmin
                                        # -- End function
	.globl	tpop                            # -- Begin function tpop
	.p2align	5
	.type	tpop,@function
tpop:                                   # @tpop
# %bb.0:                                # %entry
	ld.d	$a4, $a0, 0
	beqz	$a4, .LBB3_3
	.p2align	4, , 16
.LBB3_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	move	$a5, $a4
	ld.d	$a4, $a4, 8
	bnez	$a4, .LBB3_1
# %bb.2:                                # %while.end
	ld.w	$a4, $a5, 0
	ld.d	$a6, $a5, 56
	st.w	$a4, $a2, 0
	ld.w	$a4, $a6, 0
	st.w	$a4, $a3, 0
	ld.w	$a2, $a2, 0
	st.d	$a5, $a1, 0
	move	$a1, $a2
	move	$a2, $a4
	pcaddu18i	$t8, %call36(tdelete)
	jr	$t8
.LBB3_3:                                # %if.then
	st.d	$zero, $a1, 0
	ret
.Lfunc_end3:
	.size	tpop, .Lfunc_end3-tpop
                                        # -- End function
	.globl	tdelete                         # -- Begin function tdelete
	.p2align	5
	.type	tdelete,@function
tdelete:                                # @tdelete
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	ld.d	$fp, $a0, 0
	beqz	$fp, .LBB4_42
# %bb.1:                                # %if.else
	ld.w	$a3, $fp, 4
	beqz	$a3, .LBB4_7
# %bb.2:
	ori	$a3, $zero, 16
	ori	$a4, $zero, 24
	b	.LBB4_4
	.p2align	4, , 16
.LBB4_3:                                # %tailrecurse.backedge.i
                                        #   in Loop: Header=BB4_4 Depth=1
	ldx.d	$fp, $fp, $a5
	beqz	$fp, .LBB4_42
.LBB4_4:                                # %if.else.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $fp, 4
	beqz	$a5, .LBB4_15
# %bb.5:                                # %if.else3.i
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.w	$a6, $fp, 48
	ori	$a5, $zero, 8
	bge	$a6, $a1, .LBB4_3
# %bb.6:                                # %if.else6.i
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.w	$a5, $fp, 52
	slt	$a5, $a5, $a1
	masknez	$a6, $a3, $a5
	maskeqz	$a5, $a4, $a5
	or	$a5, $a5, $a6
	b	.LBB4_3
.LBB4_7:                                # %if.then2
	ld.d	$a1, $fp, 56
	beqz	$a1, .LBB4_42
# %bb.8:                                # %while.body.i.preheader
	ld.w	$a3, $a1, 0
	bne	$a3, $a2, .LBB4_11
# %bb.9:                                # %if.else8
	ld.d	$a2, $a1, 8
	beqz	$a2, .LBB4_24
# %bb.10:                               # %if.then11
	st.d	$a2, $fp, 56
	b	.LBB4_14
	.p2align	4, , 16
.LBB4_11:                               # %if.end.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $a1
	ld.d	$a1, $a1, 8
	beqz	$a1, .LBB4_42
# %bb.12:                               # %while.body.i
                                        #   in Loop: Header=BB4_11 Depth=1
	ld.w	$a3, $a1, 0
	bne	$a3, $a2, .LBB4_11
# %bb.13:                               # %if.then6
	ld.d	$a2, $a1, 8
	st.d	$a2, $a0, 8
.LBB4_14:                               # %if.then11
	move	$a0, $a1
	b	.LBB4_23
.LBB4_15:                               # %if.then19
	ld.d	$a3, $fp, 56
	beqz	$a3, .LBB4_42
# %bb.16:                               # %while.body.i287.preheader
	ld.w	$a4, $a3, 0
	bne	$a4, $a2, .LBB4_19
# %bb.17:                               # %if.else27
	ld.d	$a2, $a3, 8
	beqz	$a2, .LBB4_25
# %bb.18:                               # %if.then30
	st.d	$a2, $fp, 56
	b	.LBB4_22
	.p2align	4, , 16
.LBB4_19:                               # %if.end.i290
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $a3
	ld.d	$a3, $a3, 8
	beqz	$a3, .LBB4_42
# %bb.20:                               # %while.body.i287
                                        #   in Loop: Header=BB4_19 Depth=1
	ld.w	$a1, $a3, 0
	bne	$a1, $a2, .LBB4_19
# %bb.21:                               # %if.then24
	ld.d	$a1, $a3, 8
	st.d	$a1, $a0, 8
.LBB4_22:                               # %if.then11
	move	$a0, $a3
.LBB4_23:                               # %if.then11
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB4_24:                               # %if.else13
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 0
	b	.LBB4_42
.LBB4_25:                               # %if.else33
	move	$s1, $a1
	move	$s2, $a0
	move	$a0, $a3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 40
	ld.w	$a0, $s0, 4
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB4_29
# %bb.26:                               # %if.then36
	ld.d	$a1, $s0, 8
	ld.d	$a0, $s0, 16
	beq	$a1, $fp, .LBB4_36
# %bb.27:                               # %if.else46
	beq	$a0, $fp, .LBB4_40
# %bb.28:                               # %if.else56
	st.d	$zero, $s0, 24
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(tpatch)
	jirl	$ra, $ra, 0
	b	.LBB4_41
.LBB4_29:                               # %if.else61
	ld.d	$a1, $s2, 0
	beq	$s0, $a1, .LBB4_37
# %bb.30:                               # %if.else86
	move	$s1, $s2
	ld.d	$s2, $s0, 8
	bne	$s2, $fp, .LBB4_32
# %bb.31:                               # %if.then89
	ld.d	$s2, $s0, 16
.LBB4_32:                               # %if.end93
	ld.d	$a0, $s0, 40
	ld.d	$a2, $a0, 8
	ld.d	$s3, $a0, 16
	beq	$a2, $s0, .LBB4_43
# %bb.33:                               # %if.else224
	beq	$s3, $s0, .LBB4_46
# %bb.34:                               # %if.else325
	ld.w	$a0, $s3, 4
	ori	$s1, $zero, 2
	bne	$a0, $s1, .LBB4_50
# %bb.35:                               # %if.then330
	ori	$a0, $zero, 3
	st.w	$a0, $s3, 4
	st.d	$s2, $s3, 24
	st.d	$s3, $s2, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 40
	ld.w	$a1, $s2, 0
	st.w	$a1, $a0, 52
	pcaddu18i	$ra, %call36(tpatch)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 40
	st.d	$zero, $a0, 24
	st.w	$s1, $a0, 4
	move	$a0, $s0
	b	.LBB4_23
.LBB4_36:                               # %if.then38
	ld.d	$a1, $s0, 24
	st.d	$a0, $s0, 8
	ld.w	$a0, $a0, 0
	ld.w	$a2, $a1, 0
	st.d	$a1, $s0, 16
	st.d	$zero, $s0, 24
	st.w	$a0, $s0, 48
	st.w	$a2, $s0, 52
	b	.LBB4_41
.LBB4_37:                               # %if.then63
	ld.d	$a0, $a1, 8
	move	$a2, $a0
	bne	$a0, $fp, .LBB4_39
# %bb.38:                               # %if.then66
	ld.d	$a2, $a1, 16
.LBB4_39:                               # %if.end80
	ld.w	$a3, $a2, 0
	ld.d	$a2, $a2, 56
	st.w	$a3, $a1, 0
	st.d	$a2, $a1, 56
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.d	$a0, $a0, 16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	st.d	$zero, $a0, 8
	ld.d	$a0, $s2, 0
	st.d	$zero, $a0, 16
	ld.d	$a0, $s2, 0
	st.w	$zero, $a0, 4
	b	.LBB4_42
.LBB4_40:                               # %if.then49
	ld.d	$a0, $s0, 24
	ld.w	$a1, $a0, 0
	st.d	$a0, $s0, 16
	st.d	$zero, $s0, 24
	st.w	$a1, $s0, 52
.LBB4_41:                               # %if.end59
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	st.w	$a0, $s0, 4
.LBB4_42:                               # %if.end371
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB4_43:                               # %if.then97
	ld.w	$a2, $a0, 4
	ld.w	$a0, $s3, 4
	ori	$a1, $zero, 2
	bne	$a2, $a1, .LBB4_51
# %bb.44:                               # %if.then103
	bne	$a0, $a1, .LBB4_54
# %bb.45:                               # %if.then106
	vld	$vr0, $s3, 8
	ori	$a0, $zero, 3
	st.w	$a0, $s3, 4
	vst	$vr0, $s3, 16
	st.d	$s2, $s3, 8
	st.d	$s3, $s2, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 16
	ld.w	$a1, $s2, 0
	ld.w	$a0, $a0, 0
	st.w	$a1, $s3, 48
	st.w	$a0, $s3, 52
	b	.LBB4_49
.LBB4_46:                               # %if.then228
	ld.w	$a3, $a0, 4
	ori	$a1, $zero, 2
	bne	$a3, $a1, .LBB4_55
# %bb.47:                               # %if.then232
	ld.w	$a0, $a2, 4
	bne	$a0, $a1, .LBB4_57
# %bb.48:                               # %if.then237
	ori	$a0, $zero, 3
	st.w	$a0, $a2, 4
	st.d	$s2, $a2, 24
	st.d	$a2, $s2, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 0
	ld.d	$a1, $s0, 40
	st.w	$a0, $a1, 48
.LBB4_49:                               # %if.then237
	move	$a0, $s1
	move	$a1, $s0
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(tsubson)
	jr	$t8
.LBB4_50:                               # %if.else343
	ld.d	$a0, $s3, 24
	st.w	$s1, $s3, 4
	st.d	$a0, $s0, 8
	ld.w	$a1, $s2, 0
	st.d	$s2, $s0, 16
	st.d	$s0, $a0, 40
	ld.w	$a2, $a0, 0
	st.w	$a1, $s0, 52
	ld.w	$a3, $s3, 52
	ld.d	$a4, $s3, 40
	ld.d	$a0, $s0, 40
	st.d	$zero, $s3, 24
	st.w	$a2, $s0, 48
	st.w	$a3, $a4, 52
	b	.LBB4_58
.LBB4_51:                               # %if.else146
	bne	$a0, $a1, .LBB4_54
# %bb.52:                               # %if.then149
	vld	$vr0, $s3, 8
	ori	$a0, $zero, 3
	st.w	$a0, $s3, 4
	vst	$vr0, $s3, 16
	st.d	$s2, $s3, 8
	st.d	$s3, $s2, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 16
	ld.w	$a1, $a0, 0
	ld.d	$a0, $s0, 40
	ld.w	$a2, $s2, 0
	st.w	$a1, $s3, 52
	ld.d	$a1, $a0, 24
	vld	$vr0, $a0, 16
	ori	$a3, $zero, 2
	ld.w	$a4, $a0, 52
	st.w	$a3, $a0, 4
	ld.w	$a5, $a1, 4
	st.w	$a2, $s3, 48
	st.w	$a4, $a0, 48
	vst	$vr0, $a0, 8
	st.d	$zero, $a0, 24
	bne	$a5, $a3, .LBB4_60
# %bb.53:                               # %if.then182
	addi.d	$a1, $a1, 52
	b	.LBB4_61
.LBB4_54:                               # %if.else119
	st.d	$s2, $s0, 8
	ld.d	$a0, $s3, 8
	ld.d	$a1, $s3, 24
	st.d	$a0, $s0, 16
	ld.d	$a0, $s3, 16
	st.d	$a1, $s3, 16
	ld.d	$a2, $s0, 16
	ori	$a3, $zero, 2
	st.w	$a3, $s3, 4
	st.d	$s0, $a2, 40
	ld.w	$a2, $a2, 0
	st.d	$a0, $s3, 8
	ld.w	$a1, $a1, 0
	ld.w	$a3, $s2, 0
	st.w	$a2, $s0, 52
	ld.w	$a0, $a0, 0
	st.w	$a1, $s3, 52
	ld.w	$a1, $s0, 52
	ld.d	$a2, $s3, 40
	st.d	$zero, $s3, 24
	st.w	$a3, $s0, 48
	st.w	$a0, $s3, 48
	st.w	$a1, $a2, 48
	move	$a0, $fp
	b	.LBB4_23
.LBB4_55:                               # %if.else266
	ld.d	$s1, $a0, 24
	ld.w	$a0, $s1, 4
	bne	$a0, $a1, .LBB4_59
# %bb.56:                               # %if.then271
	vld	$vr0, $s1, 8
	ori	$a0, $zero, 3
	st.w	$a0, $s1, 4
	vst	$vr0, $s1, 16
	st.d	$s2, $s1, 8
	st.d	$s1, $s2, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	ld.w	$a2, $s2, 0
	ld.w	$a0, $a0, 0
	ld.w	$a1, $a1, 0
	ld.d	$a3, $s1, 40
	st.w	$a2, $s1, 48
	st.w	$a0, $s1, 52
	st.w	$a1, $a3, 52
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 40
	ld.d	$a1, $a0, 24
	st.d	$a1, $a0, 16
	st.d	$zero, $a0, 24
	ori	$a1, $zero, 2
	st.w	$a1, $a0, 4
	b	.LBB4_42
.LBB4_57:                               # %if.else244
	ld.d	$a0, $a2, 24
	st.d	$a0, $s0, 8
	st.d	$s2, $s0, 16
	ld.w	$a1, $a0, 0
	ld.w	$a3, $s2, 0
	st.d	$s0, $a0, 40
	ld.d	$a0, $s0, 40
	st.w	$a1, $s0, 48
	st.w	$a3, $s0, 52
	ld.w	$a4, $a2, 52
	st.w	$a3, $a0, 52
	ori	$a3, $zero, 2
	ld.w	$a1, $s0, 52
	st.w	$a3, $a2, 4
	st.d	$zero, $a2, 24
	st.w	$a4, $a0, 48
.LBB4_58:                               # %if.else343
	pcaddu18i	$ra, %call36(tpatch)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	b	.LBB4_23
.LBB4_59:                               # %if.else296
	st.d	$s2, $s0, 8
	ld.d	$a0, $s1, 8
	ori	$a1, $zero, 2
	st.d	$a0, $s0, 16
	ld.d	$a2, $s1, 16
	ld.d	$a3, $s1, 24
	st.w	$a1, $s1, 4
	st.d	$s0, $a0, 40
	st.d	$a2, $s1, 8
	st.d	$a3, $s1, 16
	ld.w	$a0, $a2, 0
	ld.w	$a1, $a3, 0
	ld.d	$a2, $s0, 8
	ld.d	$a3, $s0, 16
	st.w	$a0, $s1, 48
	st.w	$a1, $s1, 52
	ld.w	$a0, $a2, 0
	ld.w	$a1, $a3, 0
	ld.d	$a2, $s0, 40
	st.d	$zero, $s1, 24
	st.w	$a0, $s0, 48
	st.w	$a1, $s0, 52
	st.w	$a1, $a2, 52
	move	$a0, $fp
	b	.LBB4_23
.LBB4_60:                               # %if.else188
	ld.d	$a1, $a1, 24
.LBB4_61:                               # %if.end195
	ld.w	$a1, $a1, 0
	st.w	$a1, $a0, 52
	move	$a0, $s0
	b	.LBB4_23
.Lfunc_end4:
	.size	tdelete, .Lfunc_end4-tdelete
                                        # -- End function
	.globl	tmax                            # -- Begin function tmax
	.p2align	5
	.type	tmax,@function
tmax:                                   # @tmax
# %bb.0:                                # %entry
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB5_7
# %bb.1:
	ori	$a4, $zero, 3
	ori	$a5, $zero, 2
	b	.LBB5_3
	.p2align	4, , 16
.LBB5_2:                                # %if.end8
                                        #   in Loop: Header=BB5_3 Depth=1
	ldx.d	$a0, $a0, $a6
.LBB5_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a0, 4
	ori	$a6, $zero, 24
	beq	$a7, $a4, .LBB5_2
# %bb.4:                                # %for.cond
                                        #   in Loop: Header=BB5_3 Depth=1
	bne	$a7, $a5, .LBB5_6
# %bb.5:                                # %if.then6
                                        #   in Loop: Header=BB5_3 Depth=1
	ori	$a6, $zero, 16
	b	.LBB5_2
.LBB5_6:                                # %for.end
	ld.w	$a4, $a0, 0
	ld.d	$a5, $a0, 56
	st.w	$a4, $a2, 0
	ld.w	$a2, $a5, 0
	st.d	$a0, $a1, 0
	st.w	$a2, $a3, 0
	ret
.LBB5_7:                                # %if.then
	st.d	$zero, $a1, 0
	ret
.Lfunc_end5:
	.size	tmax, .Lfunc_end5-tmax
                                        # -- End function
	.globl	ttrim                           # -- Begin function ttrim
	.p2align	5
	.type	ttrim,@function
ttrim:                                  # @ttrim
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB6_8
# %bb.1:                                # %for.cond.i.preheader
	move	$s0, $a1
	ori	$s1, $zero, 3
	ori	$s2, $zero, 2
	b	.LBB6_3
	.p2align	4, , 16
.LBB6_2:                                #   in Loop: Header=BB6_3 Depth=1
	ori	$a1, $zero, 24
	ldx.d	$a0, $a0, $a1
.LBB6_3:                                # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a0, 4
	beq	$a1, $s1, .LBB6_2
# %bb.4:                                # %for.cond.i
                                        #   in Loop: Header=BB6_3 Depth=1
	bne	$a1, $s2, .LBB6_6
# %bb.5:                                # %if.then6.i
                                        #   in Loop: Header=BB6_3 Depth=1
	ori	$a1, $zero, 16
	ldx.d	$a0, $a0, $a1
	b	.LBB6_3
	.p2align	4, , 16
.LBB6_6:                                # %if.else
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.w	$a1, $a0, 0
	blt	$a1, $s0, .LBB6_8
# %bb.7:                                # %if.else3
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.d	$a0, $a0, 56
	ld.w	$a2, $a0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(tdelete)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	bnez	$a0, .LBB6_3
.LBB6_8:                                # %for.end
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end6:
	.size	ttrim, .Lfunc_end6-ttrim
                                        # -- End function
	.globl	tdiscard                        # -- Begin function tdiscard
	.p2align	5
	.type	tdiscard,@function
tdiscard:                               # @tdiscard
# %bb.0:                                # %entry
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB7_10
# %bb.1:                                # %for.body.preheader
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	ori	$s1, $zero, 3
	ori	$s2, $zero, 2
	b	.LBB7_3
	.p2align	4, , 16
.LBB7_2:                                # %if.else
                                        #   in Loop: Header=BB7_3 Depth=1
	ld.d	$a2, $a0, 56
	ld.w	$a1, $a0, 0
	ld.w	$a2, $a2, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(tdelete)
	jirl	$ra, $ra, 0
	addi.w	$a2, $s3, 1
	beq	$s3, $fp, .LBB7_9
.LBB7_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_6 Depth 2
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB7_9
# %bb.4:                                # %for.cond.i.preheader
                                        #   in Loop: Header=BB7_3 Depth=1
	move	$s3, $a2
	b	.LBB7_6
	.p2align	4, , 16
.LBB7_5:                                # %if.end8.i
                                        #   in Loop: Header=BB7_6 Depth=2
	ldx.d	$a0, $a0, $a1
.LBB7_6:                                # %for.cond.i
                                        #   Parent Loop BB7_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a0, 4
	ori	$a1, $zero, 24
	beq	$a2, $s1, .LBB7_5
# %bb.7:                                # %for.cond.i
                                        #   in Loop: Header=BB7_6 Depth=2
	bne	$a2, $s2, .LBB7_2
# %bb.8:                                # %if.then6.i
                                        #   in Loop: Header=BB7_6 Depth=2
	ori	$a1, $zero, 16
	b	.LBB7_5
.LBB7_9:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
.LBB7_10:                               # %for.end
	ret
.Lfunc_end7:
	.size	tdiscard, .Lfunc_end7-tdiscard
                                        # -- End function
	.globl	tsearch                         # -- Begin function tsearch
	.p2align	5
	.type	tsearch,@function
tsearch:                                # @tsearch
# %bb.0:                                # %entry
	ld.d	$a3, $a1, 8
	ld.w	$a2, $a3, 4
	beqz	$a2, .LBB8_8
# %bb.1:                                # %if.else.preheader
	ori	$a2, $zero, 2
	b	.LBB8_5
	.p2align	4, , 16
.LBB8_2:                                # %if.then8
                                        #   in Loop: Header=BB8_5 Depth=1
	ori	$a3, $zero, 16
.LBB8_3:                                # %tailrecurse.backedge.sink.split
                                        #   in Loop: Header=BB8_5 Depth=1
	ldx.d	$a3, $a1, $a3
.LBB8_4:                                # %tailrecurse.backedge
                                        #   in Loop: Header=BB8_5 Depth=1
	move	$a1, $a3
	ld.d	$a3, $a3, 8
	ld.w	$a4, $a3, 4
	beqz	$a4, .LBB8_8
.LBB8_5:                                # %if.else
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, 48
	bge	$a4, $a0, .LBB8_4
# %bb.6:                                # %if.else4
                                        #   in Loop: Header=BB8_5 Depth=1
	ld.w	$a3, $a1, 4
	beq	$a3, $a2, .LBB8_2
# %bb.7:                                # %lor.lhs.false
                                        #   in Loop: Header=BB8_5 Depth=1
	ld.w	$a4, $a1, 52
	ori	$a3, $zero, 24
	bge	$a4, $a0, .LBB8_2
	b	.LBB8_3
.LBB8_8:                                # %return
	move	$a0, $a1
	ret
.Lfunc_end8:
	.size	tsearch, .Lfunc_end8-tsearch
                                        # -- End function
	.globl	taddson                         # -- Begin function taddson
	.p2align	5
	.type	taddson,@function
taddson:                                # @taddson
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	ori	$s1, $zero, 2
	ori	$s2, $zero, 3
	ori	$s3, $zero, 4
	b	.LBB9_2
	.p2align	4, , 16
.LBB9_1:                                # %if.then88
                                        #   in Loop: Header=BB9_2 Depth=1
	vld	$vr0, $a1, 16
	vst	$vr0, $a1, 24
	st.d	$a0, $a1, 16
	move	$s0, $a1
.LBB9_2:                                # %tailrecurse
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_3 Depth 2
                                        #     Child Loop BB9_7 Depth 2
                                        #     Child Loop BB9_11 Depth 2
                                        #     Child Loop BB9_15 Depth 2
	ori	$a0, $zero, 64
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 24
	addi.d	$a2, $a0, 8
	ld.d	$a4, $s0, 32
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $a0, 24
	ld.d	$a5, $s0, 40
	st.d	$a3, $a0, 8
	addi.d	$a1, $a0, 16
	st.d	$a4, $a0, 16
	st.d	$a5, $a0, 40
	st.w	$s1, $a0, 4
	st.w	$s1, $s0, 4
	vst	$vr0, $s0, 24
	st.d	$a0, $a3, 40
	st.d	$a0, $a4, 40
	addi.d	$a3, $s0, 8
	ld.d	$a3, $a3, 0
	ld.w	$a4, $a3, 4
	bne	$a4, $s2, .LBB9_4
	.p2align	4, , 16
.LBB9_3:                                # %while.body
                                        #   Parent Loop BB9_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a3, $a3, 24
	ld.d	$a3, $a3, 0
	ld.w	$a4, $a3, 4
	beq	$a4, $s2, .LBB9_3
.LBB9_4:                                # %while.cond
                                        #   in Loop: Header=BB9_2 Depth=1
	beqz	$a4, .LBB9_6
# %bb.5:                                # %if.else
                                        #   in Loop: Header=BB9_2 Depth=1
	addi.d	$a3, $a3, 52
.LBB9_6:                                # %if.end
                                        #   in Loop: Header=BB9_2 Depth=1
	ld.w	$a3, $a3, 0
	st.w	$a3, $s0, 48
	addi.d	$a3, $s0, 16
	ld.d	$a3, $a3, 0
	ld.w	$a4, $a3, 4
	bne	$a4, $s2, .LBB9_8
	.p2align	4, , 16
.LBB9_7:                                # %while.body21
                                        #   Parent Loop BB9_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a3, $a3, 24
	ld.d	$a3, $a3, 0
	ld.w	$a4, $a3, 4
	beq	$a4, $s2, .LBB9_7
.LBB9_8:                                # %while.cond18
                                        #   in Loop: Header=BB9_2 Depth=1
	beqz	$a4, .LBB9_10
# %bb.9:                                # %if.else29
                                        #   in Loop: Header=BB9_2 Depth=1
	addi.d	$a3, $a3, 52
.LBB9_10:                               # %if.end32
                                        #   in Loop: Header=BB9_2 Depth=1
	ld.w	$a3, $a3, 0
	st.w	$a3, $s0, 52
	ld.d	$a2, $a2, 0
	ld.w	$a3, $a2, 4
	bne	$a3, $s2, .LBB9_12
	.p2align	4, , 16
.LBB9_11:                               # %while.body37
                                        #   Parent Loop BB9_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a2, $a2, 24
	ld.d	$a2, $a2, 0
	ld.w	$a3, $a2, 4
	beq	$a3, $s2, .LBB9_11
.LBB9_12:                               # %while.cond34
                                        #   in Loop: Header=BB9_2 Depth=1
	beqz	$a3, .LBB9_14
# %bb.13:                               # %if.else45
                                        #   in Loop: Header=BB9_2 Depth=1
	addi.d	$a2, $a2, 52
.LBB9_14:                               # %if.end48
                                        #   in Loop: Header=BB9_2 Depth=1
	ld.w	$a2, $a2, 0
	st.w	$a2, $a0, 48
	ld.d	$a1, $a1, 0
	ld.w	$a2, $a1, 4
	bne	$a2, $s2, .LBB9_16
	.p2align	4, , 16
.LBB9_15:                               # %while.body53
                                        #   Parent Loop BB9_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a1, $a1, 24
	ld.d	$a1, $a1, 0
	ld.w	$a2, $a1, 4
	beq	$a2, $s2, .LBB9_15
.LBB9_16:                               # %while.cond50
                                        #   in Loop: Header=BB9_2 Depth=1
	beqz	$a2, .LBB9_18
# %bb.17:                               # %if.else61
                                        #   in Loop: Header=BB9_2 Depth=1
	addi.d	$a1, $a1, 52
.LBB9_18:                               # %if.end64
                                        #   in Loop: Header=BB9_2 Depth=1
	ld.w	$s4, $a1, 0
	ld.d	$a1, $s0, 40
	st.w	$s4, $a0, 52
	beqz	$a1, .LBB9_24
# %bb.19:                               # %if.else81
                                        #   in Loop: Header=BB9_2 Depth=1
	ld.w	$a3, $a1, 4
	ld.d	$a2, $a1, 8
	addi.w	$a3, $a3, 1
	st.w	$a3, $a1, 4
	bne	$a3, $s3, .LBB9_25
# %bb.20:                               # %if.then85
                                        #   in Loop: Header=BB9_2 Depth=1
	beq	$a2, $s0, .LBB9_1
# %bb.21:                               # %if.else94
                                        #   in Loop: Header=BB9_2 Depth=1
	ld.d	$a2, $a1, 16
	beq	$a2, $s0, .LBB9_23
# %bb.22:                               # %if.else101
                                        #   in Loop: Header=BB9_2 Depth=1
	st.d	$a0, $a1, 32
	move	$s0, $a1
	b	.LBB9_2
	.p2align	4, , 16
.LBB9_23:                               # %if.then97
                                        #   in Loop: Header=BB9_2 Depth=1
	ld.d	$a2, $a1, 24
	st.d	$a2, $a1, 32
	st.d	$a0, $a1, 24
	move	$s0, $a1
	b	.LBB9_2
.LBB9_24:                               # %if.then67
	move	$s1, $a0
	ori	$a0, $zero, 64
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$s0, $a0, 8
	st.d	$s1, $a0, 16
	st.d	$zero, $a0, 24
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $a0, 32
	ori	$a1, $zero, 2
	ld.w	$a2, $s0, 52
	st.w	$a1, $a0, 4
	st.d	$a0, $s0, 40
	st.d	$a0, $s1, 40
	st.w	$a2, $a0, 48
	st.w	$s4, $a0, 52
	st.d	$a0, $fp, 0
	b	.LBB9_34
.LBB9_25:                               # %if.else105
	beq	$a2, $s0, .LBB9_32
# %bb.26:                               # %if.else116
	ld.w	$a2, $s0, 52
	ld.d	$a3, $a1, 40
	st.d	$a0, $a1, 24
	st.w	$a2, $a1, 52
	beqz	$a3, .LBB9_34
# %bb.27:                               # %if.then.i.preheader
	ld.w	$a0, $a0, 52
	b	.LBB9_29
	.p2align	4, , 16
.LBB9_28:                               # %tailrecurse.backedge.i
                                        #   in Loop: Header=BB9_29 Depth=1
	ld.d	$a3, $a2, 40
	move	$a1, $a2
	beqz	$a3, .LBB9_34
.LBB9_29:                               # %if.then.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a2, $a3
	ld.d	$a3, $a3, 8
	beq	$a3, $a1, .LBB9_33
# %bb.30:                               # %if.else.i
                                        #   in Loop: Header=BB9_29 Depth=1
	ld.d	$a3, $a2, 16
	bne	$a3, $a1, .LBB9_28
# %bb.31:                               # %if.then4.i
                                        #   in Loop: Header=BB9_29 Depth=1
	ld.d	$a1, $a2, 24
	st.w	$a0, $a2, 52
	beqz	$a1, .LBB9_28
	b	.LBB9_34
.LBB9_32:                               # %if.then108
	ld.d	$a2, $a1, 16
	ld.w	$a3, $s0, 52
	st.d	$a2, $a1, 24
	st.d	$a0, $a1, 16
	st.w	$a3, $a1, 48
	st.w	$s4, $a1, 52
	b	.LBB9_34
.LBB9_33:                               # %if.then2.i
	st.w	$a0, $a2, 48
.LBB9_34:                               # %if.end123
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end9:
	.size	taddson, .Lfunc_end9-taddson
                                        # -- End function
	.globl	tpatch                          # -- Begin function tpatch
	.p2align	5
	.type	tpatch,@function
tpatch:                                 # @tpatch
# %bb.0:                                # %entry
	ld.d	$a3, $a0, 40
	bnez	$a3, .LBB10_2
	b	.LBB10_5
	.p2align	4, , 16
.LBB10_1:                               # %tailrecurse.backedge
                                        #   in Loop: Header=BB10_2 Depth=1
	ld.d	$a3, $a2, 40
	move	$a0, $a2
	beqz	$a3, .LBB10_5
.LBB10_2:                               # %if.then
                                        # =>This Inner Loop Header: Depth=1
	move	$a2, $a3
	ld.d	$a3, $a3, 8
	beq	$a3, $a0, .LBB10_6
# %bb.3:                                # %if.else
                                        #   in Loop: Header=BB10_2 Depth=1
	ld.d	$a3, $a2, 16
	bne	$a3, $a0, .LBB10_1
# %bb.4:                                # %if.then4
                                        #   in Loop: Header=BB10_2 Depth=1
	ld.d	$a0, $a2, 24
	st.w	$a1, $a2, 52
	beqz	$a0, .LBB10_1
.LBB10_5:                               # %if.end10
	ret
.LBB10_6:                               # %if.then2
	st.w	$a1, $a2, 48
	ret
.Lfunc_end10:
	.size	tpatch, .Lfunc_end10-tpatch
                                        # -- End function
	.globl	tinsert                         # -- Begin function tinsert
	.p2align	5
	.type	tinsert,@function
tinsert:                                # @tinsert
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a0
	ld.d	$fp, $a0, 0
	move	$s2, $a2
	move	$s1, $a1
	beqz	$fp, .LBB11_13
# %bb.1:                                # %if.else
	ld.w	$a0, $fp, 4
	beqz	$a0, .LBB11_14
# %bb.2:                                # %if.else24
	ld.d	$s3, $fp, 8
	ld.w	$a0, $s3, 4
	beqz	$a0, .LBB11_10
# %bb.3:                                # %if.else.i.preheader
	ori	$a0, $zero, 2
	b	.LBB11_7
	.p2align	4, , 16
.LBB11_4:                               # %if.then8.i
                                        #   in Loop: Header=BB11_7 Depth=1
	ori	$a1, $zero, 16
.LBB11_5:                               # %tailrecurse.backedge.sink.split.i
                                        #   in Loop: Header=BB11_7 Depth=1
	ldx.d	$s3, $fp, $a1
.LBB11_6:                               # %tailrecurse.backedge.i
                                        #   in Loop: Header=BB11_7 Depth=1
	move	$fp, $s3
	ld.d	$s3, $s3, 8
	ld.w	$a1, $s3, 4
	beqz	$a1, .LBB11_10
.LBB11_7:                               # %if.else.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $fp, 48
	bge	$a1, $s1, .LBB11_6
# %bb.8:                                # %if.else4.i
                                        #   in Loop: Header=BB11_7 Depth=1
	ld.w	$a1, $fp, 4
	beq	$a1, $a0, .LBB11_4
# %bb.9:                                # %lor.lhs.false.i
                                        #   in Loop: Header=BB11_7 Depth=1
	ld.w	$a2, $fp, 52
	ori	$a1, $zero, 24
	bge	$a2, $s1, .LBB11_4
	b	.LBB11_5
.LBB11_10:                              # %tsearch.exit
	ld.w	$a0, $s3, 0
	beq	$a0, $s1, .LBB11_12
# %bb.11:                               # %if.else.i104
	ld.d	$s3, $fp, 16
	ld.w	$a0, $s3, 0
	bne	$a0, $s1, .LBB11_18
.LBB11_12:                              # %if.then28
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 56
	st.d	$a1, $a0, 8
	st.d	$a0, $s3, 56
	st.w	$s2, $a0, 0
	b	.LBB11_34
.LBB11_13:                              # %if.then
	ori	$a0, $zero, 64
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	xvrepli.b	$xr0, 0
	xvst	$xr0, $a0, 8
	st.w	$s1, $a0, 0
	st.w	$zero, $a0, 4
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 56
	st.w	$s2, $a0, 0
	st.d	$zero, $a0, 8
	st.d	$zero, $fp, 40
	st.d	$fp, $s0, 0
	b	.LBB11_34
.LBB11_14:                              # %if.then2
	ld.w	$s4, $fp, 0
	bne	$s4, $s1, .LBB11_16
# %bb.15:                               # %if.then5
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 56
	st.d	$a1, $a0, 8
	st.d	$a0, $fp, 56
	st.w	$s2, $a0, 0
	b	.LBB11_34
.LBB11_16:                              # %if.else6
	ori	$a0, $zero, 64
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	xvrepli.b	$xr0, 0
	xvst	$xr0, $a0, 8
	st.w	$s1, $a0, 0
	st.w	$zero, $a0, 4
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 56
	st.w	$s2, $a0, 0
	st.d	$zero, $a0, 8
	ori	$a0, $zero, 64
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	bge	$s4, $s1, .LBB11_24
# %bb.17:                               # %if.else11
	move	$a1, $s1
	move	$a2, $fp
	move	$a3, $s3
	b	.LBB11_25
.LBB11_18:                              # %if.else7.i
	ld.w	$a0, $fp, 4
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB11_20
# %bb.19:                               # %if.then9.i
	ld.d	$s3, $fp, 24
	ld.w	$a0, $s3, 0
	beq	$a0, $s1, .LBB11_12
.LBB11_20:                              # %if.else29
	ori	$a0, $zero, 64
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	xvrepli.b	$xr0, 0
	xvst	$xr0, $a0, 8
	st.w	$s1, $a0, 0
	st.w	$zero, $a0, 4
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 8
	st.d	$a0, $s3, 56
	ld.w	$a3, $fp, 4
	ld.w	$a2, $a1, 0
	st.w	$s2, $a0, 0
	ori	$a4, $zero, 2
	st.d	$zero, $a0, 8
	bne	$a3, $a4, .LBB11_26
# %bb.21:                               # %if.then32
	ld.d	$a0, $fp, 16
	bge	$a2, $s1, .LBB11_30
# %bb.22:                               # %if.else45
	ld.w	$a1, $a0, 0
	bge	$a1, $s1, .LBB11_32
# %bb.23:                               # %if.else54
	st.d	$s3, $fp, 24
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(tpatch)
	jirl	$ra, $ra, 0
	b	.LBB11_33
.LBB11_24:
	move	$a1, $s4
	move	$s4, $s1
	move	$a2, $s3
	move	$a3, $fp
.LBB11_25:                              # %if.end
	st.w	$a1, $a0, 52
	st.w	$s4, $a0, 48
	st.d	$a2, $a0, 8
	st.d	$a3, $a0, 16
	st.d	$zero, $a0, 24
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 32
	ori	$a1, $zero, 2
	st.w	$a1, $a0, 4
	st.d	$a0, $fp, 40
	st.d	$a0, $s3, 40
	st.d	$a0, $s0, 0
	b	.LBB11_34
.LBB11_26:                              # %if.else60
	bge	$a2, $s1, .LBB11_31
# %bb.27:                               # %if.else72
	ld.d	$a1, $fp, 16
	ld.w	$a2, $a1, 0
	ld.d	$a0, $fp, 24
	bge	$a2, $s1, .LBB11_35
# %bb.28:                               # %if.else82
	ld.w	$a1, $a0, 0
	bge	$a1, $s1, .LBB11_36
# %bb.29:                               # %if.else90
	st.d	$s3, $fp, 32
	b	.LBB11_37
.LBB11_30:                              # %if.then36
	ld.w	$a2, $fp, 48
	st.d	$a0, $fp, 24
	st.d	$a1, $fp, 16
	st.d	$s3, $fp, 8
	st.w	$a2, $fp, 52
	st.w	$s1, $fp, 48
	b	.LBB11_33
.LBB11_31:                              # %if.then64
	vld	$vr0, $fp, 16
	vst	$vr0, $fp, 24
	st.d	$a1, $fp, 16
	st.d	$s3, $fp, 8
	b	.LBB11_37
.LBB11_32:                              # %if.then49
	st.d	$a0, $fp, 24
	st.d	$s3, $fp, 16
	st.w	$s1, $fp, 52
.LBB11_33:                              # %if.end57
	ori	$a0, $zero, 3
	st.w	$a0, $fp, 4
	st.d	$fp, $s3, 40
.LBB11_34:                              # %if.end99
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB11_35:                              # %if.then76
	st.d	$a0, $fp, 32
	st.d	$a1, $fp, 24
	st.d	$s3, $fp, 16
	b	.LBB11_37
.LBB11_36:                              # %if.then86
	st.d	$a0, $fp, 32
	st.d	$s3, $fp, 24
.LBB11_37:                              # %if.end94
	st.d	$fp, $s3, 40
	move	$a0, $s0
	move	$a1, $fp
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(taddson)
	jr	$t8
.Lfunc_end11:
	.size	tinsert, .Lfunc_end11-tinsert
                                        # -- End function
	.globl	makenode                        # -- Begin function makenode
	.p2align	5
	.type	makenode,@function
makenode:                               # @makenode
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	ori	$a0, $zero, 64
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$a0, $s1, 0
	xvrepli.b	$xr0, 0
	xvst	$xr0, $a0, 8
	st.w	$s0, $a0, 0
	st.w	$zero, $a0, 4
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 56
	st.w	$fp, $a0, 0
	st.d	$zero, $a0, 8
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end12:
	.size	makenode, .Lfunc_end12-makenode
                                        # -- End function
	.globl	addplist                        # -- Begin function addplist
	.p2align	5
	.type	addplist,@function
addplist:                               # @addplist
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 56
	st.d	$a1, $a0, 8
	st.d	$a0, $s0, 56
	st.w	$fp, $a0, 0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end13:
	.size	addplist, .Lfunc_end13-addplist
                                        # -- End function
	.globl	tsubson                         # -- Begin function tsubson
	.p2align	5
	.type	tsubson,@function
tsubson:                                # @tsubson
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a0
	ld.d	$a0, $a1, 40
	ld.d	$a2, $s0, 0
	beq	$a0, $a2, .LBB14_13
# %bb.1:
	ori	$s3, $zero, 2
	ori	$s4, $zero, 3
	b	.LBB14_3
	.p2align	4, , 16
.LBB14_2:                               # %tailrecurse.backedge
                                        #   in Loop: Header=BB14_3 Depth=1
	ld.d	$a2, $s0, 0
	move	$a1, $fp
	beq	$a0, $a2, .LBB14_14
.LBB14_3:                               # %if.else5
                                        # =>This Inner Loop Header: Depth=1
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	ori	$a2, $zero, 48
	bne	$a0, $a1, .LBB14_5
# %bb.4:                                # %if.then8
                                        #   in Loop: Header=BB14_3 Depth=1
	ld.d	$a0, $fp, 16
	ori	$a2, $zero, 52
.LBB14_5:                               # %if.end12
                                        #   in Loop: Header=BB14_3 Depth=1
	ld.d	$a3, $fp, 40
	ldx.w	$s1, $fp, $a2
	ld.d	$a2, $a3, 8
	ld.d	$s2, $a3, 16
	beq	$a2, $fp, .LBB14_10
# %bb.6:                                # %if.else128
                                        #   in Loop: Header=BB14_3 Depth=1
	bne	$s2, $fp, .LBB14_18
# %bb.7:                                # %if.then132
                                        #   in Loop: Header=BB14_3 Depth=1
	ld.w	$a4, $a3, 4
	bne	$a4, $s3, .LBB14_25
# %bb.8:                                # %if.then136
                                        #   in Loop: Header=BB14_3 Depth=1
	ld.w	$a3, $a2, 4
	bne	$a3, $s3, .LBB14_27
# %bb.9:                                # %if.then141
                                        #   in Loop: Header=BB14_3 Depth=1
	st.w	$s4, $a2, 4
	st.d	$a0, $a2, 24
	st.d	$a2, $a0, 40
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	st.w	$s1, $a0, 48
	b	.LBB14_2
	.p2align	4, , 16
.LBB14_10:                              # %if.then16
                                        #   in Loop: Header=BB14_3 Depth=1
	ld.w	$a3, $a3, 4
	ld.w	$a2, $s2, 4
	bne	$a3, $s3, .LBB14_33
# %bb.11:                               # %if.then21
                                        #   in Loop: Header=BB14_3 Depth=1
	bne	$a2, $s3, .LBB14_38
# %bb.12:                               # %if.then24
                                        #   in Loop: Header=BB14_3 Depth=1
	vld	$vr0, $s2, 8
	st.w	$s4, $s2, 4
	vst	$vr0, $s2, 16
	st.d	$a0, $s2, 8
	st.d	$s2, $a0, 40
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 48
	ld.d	$a0, $fp, 40
	st.w	$a1, $s2, 52
	st.w	$s1, $s2, 48
	b	.LBB14_2
.LBB14_13:
	move	$fp, $a1
.LBB14_14:                              # %if.then
	ld.d	$s1, $a2, 8
	bne	$s1, $fp, .LBB14_16
# %bb.15:                               # %if.then2
	ld.d	$s1, $a2, 16
.LBB14_16:                              # %if.end
	st.d	$zero, $s1, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$s1, $s0, 0
.LBB14_17:                              # %if.end267
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB14_18:                              # %if.else232
	ld.w	$a3, $s2, 4
	ori	$a2, $zero, 2
	bne	$a3, $a2, .LBB14_39
# %bb.19:                               # %if.then237
	ori	$a2, $zero, 3
	st.w	$a2, $s2, 4
	st.d	$a0, $s2, 24
	st.d	$s2, $a0, 40
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 40
	ld.d	$a2, $a0, 40
	st.w	$s1, $a0, 52
	beqz	$a2, .LBB14_56
# %bb.20:                               # %if.then.i239.preheader
	move	$a3, $a0
	b	.LBB14_22
	.p2align	4, , 16
.LBB14_21:                              # %tailrecurse.backedge.i246
                                        #   in Loop: Header=BB14_22 Depth=1
	ld.d	$a2, $a1, 40
	move	$a3, $a1
	beqz	$a2, .LBB14_56
.LBB14_22:                              # %if.then.i239
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 8
	beq	$a2, $a3, .LBB14_55
# %bb.23:                               # %if.else.i243
                                        #   in Loop: Header=BB14_22 Depth=1
	ld.d	$a2, $a1, 16
	bne	$a2, $a3, .LBB14_21
# %bb.24:                               # %if.then4.i249
                                        #   in Loop: Header=BB14_22 Depth=1
	ld.d	$a2, $a1, 24
	st.w	$s1, $a1, 52
	beqz	$a2, .LBB14_21
	b	.LBB14_56
.LBB14_25:                              # %if.else167
	ld.d	$s0, $a3, 24
	ld.w	$a2, $s0, 4
	ori	$s2, $zero, 2
	bne	$a2, $s2, .LBB14_44
# %bb.26:                               # %if.then172
	vld	$vr0, $s0, 8
	ori	$a2, $zero, 3
	st.w	$a2, $s0, 4
	vst	$vr0, $s0, 16
	st.d	$a0, $s0, 8
	st.d	$s0, $a0, 40
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 52
	ld.d	$a1, $s0, 40
	ld.w	$a2, $s0, 48
	st.w	$a0, $a1, 52
	st.w	$a2, $s0, 52
	st.w	$s1, $s0, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 40
	ld.d	$a1, $a0, 24
	st.d	$a1, $a0, 16
	st.d	$zero, $a0, 24
	st.w	$s2, $a0, 4
	b	.LBB14_17
.LBB14_27:                              # %if.else147
	ld.d	$a3, $a2, 24
	ori	$a4, $zero, 2
	st.w	$a4, $a2, 4
	st.d	$fp, $a3, 40
	ld.d	$a5, $a2, 40
	st.d	$a3, $fp, 8
	st.d	$a0, $fp, 16
	ld.d	$a3, $fp, 40
	ld.w	$a0, $a5, 48
	st.w	$s1, $fp, 52
	ld.w	$a6, $a2, 52
	ld.d	$a4, $a3, 40
	st.d	$zero, $a2, 24
	st.w	$a0, $fp, 48
	st.w	$a6, $a5, 48
	st.w	$s1, $a5, 52
	beqz	$a4, .LBB14_51
# %bb.28:                               # %if.then.i.preheader
	ld.w	$a0, $fp, 52
	b	.LBB14_30
	.p2align	4, , 16
.LBB14_29:                              # %tailrecurse.backedge.i
                                        #   in Loop: Header=BB14_30 Depth=1
	ld.d	$a4, $a2, 40
	move	$a3, $a2
	beqz	$a4, .LBB14_51
.LBB14_30:                              # %if.then.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a2, $a4
	ld.d	$a4, $a4, 8
	beq	$a4, $a3, .LBB14_50
# %bb.31:                               # %if.else.i
                                        #   in Loop: Header=BB14_30 Depth=1
	ld.d	$a4, $a2, 16
	bne	$a4, $a3, .LBB14_29
# %bb.32:                               # %if.then4.i
                                        #   in Loop: Header=BB14_30 Depth=1
	ld.d	$a3, $a2, 24
	st.w	$a0, $a2, 52
	beqz	$a3, .LBB14_29
	b	.LBB14_51
.LBB14_33:                              # %if.else58
	ori	$s0, $zero, 2
	bne	$a2, $s0, .LBB14_49
# %bb.34:                               # %if.then61
	vld	$vr0, $s2, 8
	ori	$s3, $zero, 3
	st.w	$s3, $s2, 4
	vst	$vr0, $s2, 16
	st.d	$a0, $s2, 8
	st.d	$s2, $a0, 40
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	ld.w	$a1, $s2, 48
	vld	$vr0, $a0, 16
	st.w	$a1, $s2, 52
	st.w	$s1, $s2, 48
	ld.w	$a1, $a0, 52
	vst	$vr0, $a0, 8
	st.d	$zero, $a0, 24
	st.w	$s0, $a0, 4
	st.w	$a1, $a0, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 40
	addi.d	$a1, $a0, 16
	ld.d	$a1, $a1, 0
	ld.w	$a2, $a1, 4
	bne	$a2, $s3, .LBB14_36
	.p2align	4, , 16
.LBB14_35:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $a1, 24
	ld.d	$a1, $a1, 0
	ld.w	$a2, $a1, 4
	beq	$a2, $s3, .LBB14_35
.LBB14_36:                              # %while.cond
	bnez	$a2, .LBB14_53
# %bb.37:                               # %if.then95
	ld.w	$a1, $a1, 0
	b	.LBB14_54
.LBB14_38:                              # %if.else34
	st.d	$a0, $fp, 8
	ld.d	$a0, $s2, 8
	st.d	$a0, $fp, 16
	vld	$vr0, $s2, 16
	vst	$vr0, $s2, 8
	ld.d	$a0, $fp, 16
	st.d	$fp, $a0, 40
	st.w	$s1, $fp, 48
	ld.w	$a0, $s2, 48
	ld.d	$a2, $s2, 40
	st.w	$a0, $fp, 52
	ld.w	$a0, $a2, 52
	ld.w	$a3, $s2, 52
	st.w	$a0, $s2, 52
	ori	$a0, $zero, 2
	ld.w	$a4, $fp, 52
	st.w	$a0, $s2, 4
	st.d	$zero, $s2, 24
	st.w	$a3, $s2, 48
	st.w	$a4, $a2, 48
	b	.LBB14_51
.LBB14_39:                              # %if.else248
	ld.d	$a3, $s2, 24
	st.d	$fp, $a3, 40
	ld.d	$a4, $s2, 40
	st.w	$a2, $s2, 4
	st.d	$a3, $fp, 8
	ld.d	$a2, $fp, 40
	ld.w	$a5, $a4, 52
	st.w	$s1, $fp, 52
	ld.w	$a6, $s2, 52
	ld.d	$a3, $a2, 40
	st.d	$a0, $fp, 16
	st.d	$zero, $s2, 24
	st.w	$a5, $fp, 48
	st.w	$a6, $a4, 52
	bnez	$a3, .LBB14_41
	b	.LBB14_51
	.p2align	4, , 16
.LBB14_40:                              # %tailrecurse.backedge.i265
                                        #   in Loop: Header=BB14_41 Depth=1
	ld.d	$a3, $a0, 40
	move	$a2, $a0
	beqz	$a3, .LBB14_51
.LBB14_41:                              # %if.then.i258
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $a3
	ld.d	$a3, $a3, 8
	beq	$a3, $a2, .LBB14_57
# %bb.42:                               # %if.else.i262
                                        #   in Loop: Header=BB14_41 Depth=1
	ld.d	$a3, $a0, 16
	bne	$a3, $a2, .LBB14_40
# %bb.43:                               # %if.then4.i268
                                        #   in Loop: Header=BB14_41 Depth=1
	ld.d	$a2, $a0, 24
	st.w	$s1, $a0, 52
	beqz	$a2, .LBB14_40
	b	.LBB14_51
.LBB14_44:                              # %if.else194
	st.d	$a0, $fp, 8
	ld.d	$a0, $s0, 8
	st.w	$s2, $s0, 4
	st.d	$a0, $fp, 16
	st.w	$s1, $fp, 48
	ld.w	$a2, $s0, 48
	st.d	$fp, $a0, 40
	ld.d	$a0, $s0, 24
	vld	$vr0, $s0, 16
	st.w	$a2, $fp, 52
	ld.w	$a3, $s0, 52
	ld.d	$a4, $s0, 40
	vst	$vr0, $s0, 8
	st.d	$zero, $s0, 24
	st.w	$a3, $s0, 48
	st.w	$a2, $a4, 52
	ori	$a2, $zero, 3
	ld.w	$a3, $a0, 4
	bne	$a3, $a2, .LBB14_46
	.p2align	4, , 16
.LBB14_45:                              # %while.body218
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 24
	ld.w	$a3, $a0, 4
	beq	$a3, $a2, .LBB14_45
.LBB14_46:                              # %while.cond215
	beqz	$a3, .LBB14_48
# %bb.47:                               # %if.else226
	addi.d	$a0, $a0, 52
.LBB14_48:                              # %if.end229
	ld.w	$a0, $a0, 0
	st.w	$a0, $s0, 52
	b	.LBB14_51
.LBB14_49:                              # %if.else103
	st.d	$a0, $fp, 8
	ld.d	$a0, $s2, 8
	st.d	$a0, $fp, 16
	vld	$vr0, $s2, 16
	vst	$vr0, $s2, 8
	ld.d	$a0, $fp, 16
	st.d	$fp, $a0, 40
	st.w	$s1, $fp, 48
	ld.w	$a0, $s2, 48
	ld.d	$a2, $s2, 40
	st.w	$a0, $fp, 52
	ld.w	$a0, $a2, 52
	ld.w	$a3, $s2, 52
	st.w	$a0, $s2, 52
	ld.w	$a0, $fp, 52
	st.w	$s0, $s2, 4
	st.d	$zero, $s2, 24
	st.w	$a3, $s2, 48
.LBB14_50:                              # %if.then2.i
	st.w	$a0, $a2, 48
.LBB14_51:                              # %tpatch.exit
	move	$a0, $a1
.LBB14_52:                              # %tpatch.exit
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB14_53:                              # %if.else98
	ld.w	$a1, $a1, 52
.LBB14_54:                              # %if.end267
	st.w	$a1, $a0, 52
	b	.LBB14_17
.LBB14_55:                              # %if.then2.i253
	st.w	$s1, $a1, 48
.LBB14_56:                              # %tpatch.exit255
	st.d	$zero, $a0, 24
	ori	$a1, $zero, 2
	st.w	$a1, $a0, 4
	move	$a0, $fp
	b	.LBB14_52
.LBB14_57:                              # %if.then2.i272
	st.w	$s1, $a0, 48
	b	.LBB14_51
.Lfunc_end14:
	.size	tsubson, .Lfunc_end14-tsubson
                                        # -- End function
	.globl	tdsearch                        # -- Begin function tdsearch
	.p2align	5
	.type	tdsearch,@function
tdsearch:                               # @tdsearch
# %bb.0:                                # %entry
	beqz	$a1, .LBB15_6
# %bb.1:                                # %if.else.preheader
	ori	$a2, $zero, 16
	ori	$a3, $zero, 24
	b	.LBB15_3
	.p2align	4, , 16
.LBB15_2:                               # %tailrecurse.backedge
                                        #   in Loop: Header=BB15_3 Depth=1
	ldx.d	$a1, $a1, $a4
	beqz	$a1, .LBB15_6
.LBB15_3:                               # %if.else
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, 4
	beqz	$a4, .LBB15_7
# %bb.4:                                # %if.else3
                                        #   in Loop: Header=BB15_3 Depth=1
	ld.w	$a5, $a1, 48
	ori	$a4, $zero, 8
	bge	$a5, $a0, .LBB15_2
# %bb.5:                                # %if.else6
                                        #   in Loop: Header=BB15_3 Depth=1
	ld.w	$a4, $a1, 52
	slt	$a4, $a4, $a0
	masknez	$a5, $a2, $a4
	maskeqz	$a4, $a3, $a4
	or	$a4, $a4, $a5
	b	.LBB15_2
.LBB15_6:
	move	$a1, $zero
.LBB15_7:                               # %return
	move	$a0, $a1
	ret
.Lfunc_end15:
	.size	tdsearch, .Lfunc_end15-tdsearch
                                        # -- End function
	.globl	tfind                           # -- Begin function tfind
	.p2align	5
	.type	tfind,@function
tfind:                                  # @tfind
# %bb.0:                                # %entry
	ld.d	$a2, $a1, 8
	ld.w	$a3, $a2, 0
	beq	$a3, $a0, .LBB16_5
# %bb.1:                                # %if.else
	ld.d	$a2, $a1, 16
	ld.w	$a3, $a2, 0
	beq	$a3, $a0, .LBB16_5
# %bb.2:                                # %if.else7
	ld.w	$a2, $a1, 4
	ori	$a3, $zero, 3
	bne	$a2, $a3, .LBB16_4
# %bb.3:                                # %if.then9
	ld.d	$a2, $a1, 24
	ld.w	$a1, $a2, 0
	beq	$a1, $a0, .LBB16_5
.LBB16_4:                               # %if.end16
	move	$a2, $zero
.LBB16_5:                               # %return
	move	$a0, $a2
	ret
.Lfunc_end16:
	.size	tfind, .Lfunc_end16-tfind
                                        # -- End function
	.globl	pfind                           # -- Begin function pfind
	.p2align	5
	.type	pfind,@function
pfind:                                  # @pfind
# %bb.0:                                # %entry
	st.d	$zero, $a2, 0
	ld.d	$a0, $a0, 56
	beqz	$a0, .LBB17_3
	.p2align	4, , 16
.LBB17_1:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a0, 0
	beq	$a3, $a1, .LBB17_4
# %bb.2:                                # %if.end
                                        #   in Loop: Header=BB17_1 Depth=1
	st.d	$a0, $a2, 0
	ld.d	$a0, $a0, 8
	bnez	$a0, .LBB17_1
.LBB17_3:
	move	$a0, $zero
.LBB17_4:                               # %cleanup
	ret
.Lfunc_end17:
	.size	pfind, .Lfunc_end17-pfind
                                        # -- End function
	.globl	tprop                           # -- Begin function tprop
	.p2align	5
	.type	tprop,@function
tprop:                                  # @tprop
# %bb.0:                                # %entry
	move	$a2, $a0
	addi.w	$a0, $zero, -1
	beqz	$a2, .LBB18_17
# %bb.1:                                # %if.else
	ld.w	$a3, $a2, 4
	beqz	$a3, .LBB18_15
# %bb.2:                                # %if.else7
	ld.d	$a5, $a2, 8
	ld.w	$a3, $a5, 4
	beqz	$a3, .LBB18_10
# %bb.3:                                # %if.else.i.preheader
	ori	$a4, $zero, 2
	move	$a3, $a2
	b	.LBB18_7
	.p2align	4, , 16
.LBB18_4:                               # %if.then8.i
                                        #   in Loop: Header=BB18_7 Depth=1
	ori	$a2, $zero, 16
.LBB18_5:                               # %tailrecurse.backedge.sink.split.i
                                        #   in Loop: Header=BB18_7 Depth=1
	ldx.d	$a5, $a3, $a2
.LBB18_6:                               # %tailrecurse.backedge.i
                                        #   in Loop: Header=BB18_7 Depth=1
	move	$a3, $a5
	ld.d	$a5, $a5, 8
	ld.w	$a2, $a5, 4
	beqz	$a2, .LBB18_11
.LBB18_7:                               # %if.else.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a3, 48
	bge	$a2, $a1, .LBB18_6
# %bb.8:                                # %if.else4.i
                                        #   in Loop: Header=BB18_7 Depth=1
	ld.w	$a2, $a3, 4
	beq	$a2, $a4, .LBB18_4
# %bb.9:                                # %lor.lhs.false.i
                                        #   in Loop: Header=BB18_7 Depth=1
	ld.w	$a5, $a3, 52
	ori	$a2, $zero, 24
	bge	$a5, $a1, .LBB18_4
	b	.LBB18_5
.LBB18_10:
	move	$a3, $a2
.LBB18_11:                              # %if.else10
	ld.w	$a4, $a5, 0
	move	$a2, $a5
	beq	$a4, $a1, .LBB18_16
# %bb.12:                               # %if.else.i11
	ld.d	$a2, $a3, 16
	ld.w	$a4, $a2, 0
	beq	$a4, $a1, .LBB18_16
# %bb.13:                               # %if.else7.i
	ld.w	$a2, $a3, 4
	ori	$a4, $zero, 3
	bne	$a2, $a4, .LBB18_17
# %bb.14:                               # %if.then9.i
	ld.d	$a2, $a3, 24
.LBB18_15:                              # %if.then9.i
	ld.w	$a3, $a2, 0
	bne	$a3, $a1, .LBB18_17
.LBB18_16:                              # %cleanup.sink.split
	ld.d	$a0, $a2, 56
	ld.w	$a0, $a0, 0
.LBB18_17:                              # %cleanup
	ret
.Lfunc_end18:
	.size	tprop, .Lfunc_end18-tprop
                                        # -- End function
	.globl	tplist                          # -- Begin function tplist
	.p2align	5
	.type	tplist,@function
tplist:                                 # @tplist
# %bb.0:                                # %entry
	beqz	$a0, .LBB19_17
# %bb.1:                                # %if.else
	ld.w	$a2, $a0, 4
	beqz	$a2, .LBB19_10
# %bb.2:                                # %if.else7
	ld.d	$a4, $a0, 8
	ld.w	$a2, $a4, 4
	beqz	$a2, .LBB19_11
# %bb.3:                                # %if.else.i.preheader
	ori	$a3, $zero, 2
	move	$a2, $a0
	b	.LBB19_7
	.p2align	4, , 16
.LBB19_4:                               # %if.then8.i
                                        #   in Loop: Header=BB19_7 Depth=1
	ori	$a0, $zero, 16
.LBB19_5:                               # %tailrecurse.backedge.sink.split.i
                                        #   in Loop: Header=BB19_7 Depth=1
	ldx.d	$a4, $a2, $a0
.LBB19_6:                               # %tailrecurse.backedge.i
                                        #   in Loop: Header=BB19_7 Depth=1
	move	$a2, $a4
	ld.d	$a4, $a4, 8
	ld.w	$a0, $a4, 4
	beqz	$a0, .LBB19_12
.LBB19_7:                               # %if.else.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $a2, 48
	bge	$a0, $a1, .LBB19_6
# %bb.8:                                # %if.else4.i
                                        #   in Loop: Header=BB19_7 Depth=1
	ld.w	$a0, $a2, 4
	beq	$a0, $a3, .LBB19_4
# %bb.9:                                # %lor.lhs.false.i
                                        #   in Loop: Header=BB19_7 Depth=1
	ld.w	$a4, $a2, 52
	ori	$a0, $zero, 24
	bge	$a4, $a1, .LBB19_4
	b	.LBB19_5
.LBB19_10:                              # %if.then2
	ld.w	$a2, $a0, 0
	bne	$a2, $a1, .LBB19_17
	b	.LBB19_14
.LBB19_11:
	move	$a2, $a0
.LBB19_12:                              # %if.else10
	ld.w	$a3, $a4, 0
	move	$a0, $a4
	beq	$a3, $a1, .LBB19_14
# %bb.13:                               # %if.else.i11
	ld.d	$a0, $a2, 16
	ld.w	$a3, $a0, 0
	bne	$a3, $a1, .LBB19_15
.LBB19_14:                              # %cleanup.sink.split
	ld.d	$a0, $a0, 56
	ret
.LBB19_15:                              # %if.else7.i
	ld.w	$a0, $a2, 4
	ori	$a3, $zero, 3
	bne	$a0, $a3, .LBB19_17
# %bb.16:                               # %if.then9.i
	ld.d	$a0, $a2, 24
	ld.w	$a2, $a0, 0
	beq	$a2, $a1, .LBB19_14
.LBB19_17:
	move	$a0, $zero
	ret
.Lfunc_end19:
	.size	tplist, .Lfunc_end19-tplist
                                        # -- End function
	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"value: %d  "
	.size	.L.str.4, 12

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"%d "
	.size	.L.str.5, 4

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"Error Type 1"
	.size	.Lstr, 13

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"Error Type 2"
	.size	.Lstr.1, 13

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"Error Type 3"
	.size	.Lstr.2, 13

	.section	".note.GNU-stack","",@progbits
	.addrsig
