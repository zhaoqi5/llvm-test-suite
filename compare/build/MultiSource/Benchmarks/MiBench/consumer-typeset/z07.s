	.file	"z07.c"
	.text
	.globl	SplitIsDefinite                 # -- Begin function SplitIsDefinite
	.p2align	5
	.type	SplitIsDefinite,@function
SplitIsDefinite:                        # @SplitIsDefinite
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.bu	$a0, $a0, 32
	ori	$a1, $zero, 9
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
	ld.d	$a1, $fp, 8
	.p2align	4, , 16
.LBB0_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a1, 16
	ld.bu	$a0, $a1, 32
	beqz	$a0, .LBB0_3
# %bb.4:                                # %for.end
	ld.d	$a1, $fp, 0
	.p2align	4, , 16
.LBB0_5:                                # %for.cond18
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a1, 16
	ld.bu	$a2, $a1, 32
	beqz	$a2, .LBB0_5
# %bb.6:                                # %for.end29
	addi.d	$a0, $a0, -9
	sltui	$a0, $a0, 91
	addi.d	$a1, $a2, -9
	sltui	$a1, $a1, 91
	and	$a0, $a0, $a1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	SplitIsDefinite, .Lfunc_end0-SplitIsDefinite
                                        # -- End function
	.globl	DisposeObject                   # -- Begin function DisposeObject
	.p2align	5
	.type	DisposeObject,@function
DisposeObject:                          # @DisposeObject
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
	move	$fp, $a0
	ld.d	$a0, $a0, 24
	xor	$a0, $a0, $fp
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$s2, $a1, %got_pc_lo12(no_fpos)
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.17)
	addi.d	$a1, $a1, %pc_lo12(.L.str.17)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	ori	$s1, $zero, 1
	pcalau12i	$a1, %pc_hi20(.L.str.18)
	pcalau12i	$a2, %got_pc_hi20(xx_link)
	ld.d	$s7, $a2, %got_pc_lo12(xx_link)
	pcalau12i	$a2, %got_pc_hi20(xx_tmp)
	ld.d	$s8, $a2, %got_pc_lo12(xx_tmp)
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$s3, $a2, %got_pc_lo12(zz_hold)
	pcalau12i	$a2, %got_pc_hi20(zz_lengths)
	ld.d	$s6, $a2, %got_pc_lo12(zz_lengths)
	pcalau12i	$a2, %got_pc_hi20(zz_size)
	ld.d	$s5, $a2, %got_pc_lo12(zz_size)
	pcalau12i	$a2, %got_pc_hi20(zz_free)
	ld.d	$s4, $a2, %got_pc_lo12(zz_free)
	addi.d	$a1, $a1, %pc_lo12(.L.str.18)
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	b	.LBB1_2
	.p2align	4, , 16
.LBB1_1:                                # %cond.end494.i
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	add.d	$a1, $s6, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s4, $a2
	st.d	$a0, $s3, 0
	st.w	$a1, $s5, 0
	st.d	$a2, $a0, 0
	ld.w	$a0, $s5, 0
	ld.d	$a1, $s3, 0
	ld.d	$fp, $s8, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s4, $a0
	ld.d	$a1, $fp, 24
	ori	$a0, $zero, 1
	bne	$a1, $fp, .LBB1_60
.LBB1_2:                                # %tailrecurse
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_10 Depth 2
                                        #     Child Loop BB1_13 Depth 2
                                        #     Child Loop BB1_27 Depth 2
                                        #     Child Loop BB1_30 Depth 2
	andi	$a0, $a0, 1
	bnez	$a0, .LBB1_4
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.d	$a4, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a5, $a0, %pc_lo12(.L.str.2)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_4:                                # %if.end
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.bu	$a1, $fp, 32
	ori	$a0, $zero, 9
	bne	$a1, $a0, .LBB1_49
# %bb.5:                                # %if.end.i
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.d	$a0, $fp, 8
	beq	$a0, $fp, .LBB1_40
# %bb.6:                                # %if.end6.i
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.d	$a1, $fp, 0
	beq	$a1, $a0, .LBB1_41
.LBB1_7:                                # %if.end16.i
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.d	$a2, $a0, 8
	beq	$a1, $a2, .LBB1_9
.LBB1_8:                                # %if.then28.i
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.d	$a4, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a5, $a0, %pc_lo12(.L.str.19)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
.LBB1_9:                                # %for.cond.i.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	ori	$a1, $zero, 1
	ld.d	$a0, $a0, 16
	ld.bu	$a2, $a0, 32
	bnez	$a2, .LBB1_11
	.p2align	4, , 16
.LBB1_10:                               # %for.inc.i
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a1, $a1, 1
	ld.d	$a0, $a0, 16
	ld.bu	$a2, $a0, 32
	beqz	$a2, .LBB1_10
.LBB1_11:                               # %for.cond.i
                                        #   in Loop: Header=BB1_2 Depth=1
	ori	$a3, $zero, 16
	bne	$a2, $a3, .LBB1_21
# %bb.12:                               # %for.cond57.i.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	ori	$a3, $zero, 1
	move	$s0, $a0
	move	$a2, $a0
	.p2align	4, , 16
.LBB1_13:                               # %for.cond57.i
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $s0, 8
	ld.d	$a2, $a2, 24
	xor	$a4, $s0, $a0
	sltu	$a4, $zero, $a4
	xor	$a5, $a2, $a0
	sltu	$a5, $zero, $a5
	and	$a4, $a4, $a5
	bne	$a4, $s1, .LBB1_15
# %bb.14:                               # %for.cond57.i
                                        #   in Loop: Header=BB1_13 Depth=2
	move	$a5, $a3
	addi.w	$a3, $a3, 1
	bltu	$a5, $a1, .LBB1_13
.LBB1_15:                               # %for.end73.i
                                        #   in Loop: Header=BB1_2 Depth=1
	bnez	$a4, .LBB1_17
# %bb.16:                               # %if.then79.i
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.d	$a4, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a5, $a0, %pc_lo12(.L.str.20)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_17:                               # %if.end81.i
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.d	$a0, $s0, 24
	st.d	$s0, $s7, 0
	beq	$a0, $s0, .LBB1_42
# %bb.18:                               # %cond.false.i
                                        #   in Loop: Header=BB1_2 Depth=1
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	ld.d	$a2, $s0, 16
	st.d	$a0, $a1, 0
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
	st.d	$s0, $s0, 24
	st.d	$s0, $s0, 16
	ld.d	$a1, $s0, 8
	st.d	$a0, $s8, 0
	st.d	$s0, $s3, 0
	beq	$a1, $s0, .LBB1_20
.LBB1_19:                               # %cond.false114.i
                                        #   in Loop: Header=BB1_2 Depth=1
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$a0, $a0, %got_pc_lo12(zz_res)
	st.d	$a1, $a0, 0
	ld.d	$a2, $s0, 0
	st.d	$a2, $a1, 0
	ld.d	$a1, $s3, 0
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$s0, $s7, 0
	st.d	$a1, $a1, 8
.LBB1_20:                               # %cond.end136.i
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.bu	$a0, $s0, 32
	addi.d	$a1, $a0, -11
	sltui	$a1, $a1, 2
	addi.d	$a2, $s0, 33
	add.d	$a0, $s6, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ld.bu	$a0, $a0, 0
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s4, $a1
	st.d	$s0, $s3, 0
	st.w	$a0, $s5, 0
	st.d	$a1, $s0, 0
	ld.w	$a1, $s5, 0
	ld.d	$a2, $s3, 0
	ld.d	$a0, $s8, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $s4, $a1
	ld.d	$a1, $a0, 24
	beq	$a1, $a0, .LBB1_43
.LBB1_21:                               # %if.end173.i
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.d	$a0, $fp, 8
	ld.d	$a1, $a0, 24
	st.d	$a0, $s7, 0
	beq	$a1, $a0, .LBB1_44
.LBB1_22:                               # %cond.false183.i
                                        #   in Loop: Header=BB1_2 Depth=1
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a2, $a2, %got_pc_lo12(zz_res)
	ld.d	$a3, $a0, 16
	st.d	$a1, $a2, 0
	st.d	$a3, $a1, 16
	st.d	$a1, $a3, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	ld.d	$a2, $a0, 8
	st.d	$a1, $s8, 0
	st.d	$a0, $s3, 0
	beq	$a2, $a0, .LBB1_24
.LBB1_23:                               # %cond.false213.i
                                        #   in Loop: Header=BB1_2 Depth=1
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	st.d	$a2, $a1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a2, 0
	ld.d	$a2, $s3, 0
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a2, 0
	st.d	$a0, $a1, 8
	st.d	$a2, $a2, 0
	ld.d	$a0, $s7, 0
	st.d	$a2, $a2, 8
.LBB1_24:                               # %cond.end235.i
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	add.d	$a1, $s6, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s4, $a2
	st.d	$a0, $s3, 0
	st.w	$a1, $s5, 0
	st.d	$a2, $a0, 0
	ld.w	$a1, $s5, 0
	ld.d	$a2, $s3, 0
	ld.d	$a0, $s8, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $s4, $a1
	ld.d	$a1, $a0, 24
	bne	$a1, $a0, .LBB1_26
# %bb.25:                               # %if.then272.i
                                        #   in Loop: Header=BB1_2 Depth=1
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
.LBB1_26:                               # %if.end274.i
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.d	$a0, $fp, 0
	ori	$a1, $zero, 1
	ld.d	$a0, $a0, 16
	ld.bu	$a2, $a0, 32
	bnez	$a2, .LBB1_28
	.p2align	4, , 16
.LBB1_27:                               # %for.inc288.i
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a1, $a1, 1
	ld.d	$a0, $a0, 16
	ld.bu	$a2, $a0, 32
	beqz	$a2, .LBB1_27
.LBB1_28:                               # %for.cond281.i
                                        #   in Loop: Header=BB1_2 Depth=1
	ori	$a3, $zero, 15
	bne	$a2, $a3, .LBB1_38
# %bb.29:                               # %for.cond306.i.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	ori	$a3, $zero, 1
	move	$s0, $a0
	move	$a2, $a0
	.p2align	4, , 16
.LBB1_30:                               # %for.cond306.i
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $s0, 8
	ld.d	$a2, $a2, 24
	xor	$a4, $s0, $a0
	sltu	$a4, $zero, $a4
	xor	$a5, $a2, $a0
	sltu	$a5, $zero, $a5
	and	$a4, $a4, $a5
	bne	$a4, $s1, .LBB1_32
# %bb.31:                               # %for.cond306.i
                                        #   in Loop: Header=BB1_30 Depth=2
	move	$a5, $a3
	addi.w	$a3, $a3, 1
	bltu	$a5, $a1, .LBB1_30
.LBB1_32:                               # %for.end325.i
                                        #   in Loop: Header=BB1_2 Depth=1
	bnez	$a4, .LBB1_34
# %bb.33:                               # %if.then331.i
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.d	$a4, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a5, $a0, %pc_lo12(.L.str.21)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_34:                               # %if.end333.i
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.d	$a0, $s0, 24
	st.d	$s0, $s7, 0
	beq	$a0, $s0, .LBB1_45
# %bb.35:                               # %cond.false340.i
                                        #   in Loop: Header=BB1_2 Depth=1
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	ld.d	$a2, $s0, 16
	st.d	$a0, $a1, 0
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
	st.d	$s0, $s0, 24
	st.d	$s0, $s0, 16
	ld.d	$a1, $s0, 8
	st.d	$a0, $s8, 0
	st.d	$s0, $s3, 0
	beq	$a1, $s0, .LBB1_37
.LBB1_36:                               # %cond.false370.i
                                        #   in Loop: Header=BB1_2 Depth=1
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$a0, $a0, %got_pc_lo12(zz_res)
	st.d	$a1, $a0, 0
	ld.d	$a2, $s0, 0
	st.d	$a2, $a1, 0
	ld.d	$a1, $s3, 0
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$s0, $s7, 0
	st.d	$a1, $a1, 8
.LBB1_37:                               # %cond.end392.i
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.bu	$a0, $s0, 32
	addi.d	$a1, $a0, -11
	sltui	$a1, $a1, 2
	addi.d	$a2, $s0, 33
	add.d	$a0, $s6, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ld.bu	$a0, $a0, 0
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s4, $a1
	st.d	$s0, $s3, 0
	st.w	$a0, $s5, 0
	st.d	$a1, $s0, 0
	ld.w	$a1, $s5, 0
	ld.d	$a2, $s3, 0
	ld.d	$a0, $s8, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $s4, $a1
	ld.d	$a1, $a0, 24
	beq	$a1, $a0, .LBB1_46
.LBB1_38:                               # %if.end432.i
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 24
	st.d	$a0, $s7, 0
	beq	$a1, $a0, .LBB1_47
.LBB1_39:                               # %cond.false442.i
                                        #   in Loop: Header=BB1_2 Depth=1
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a2, $a2, %got_pc_lo12(zz_res)
	ld.d	$a3, $a0, 16
	st.d	$a1, $a2, 0
	st.d	$a3, $a1, 16
	st.d	$a1, $a3, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	ld.d	$a2, $a0, 8
	st.d	$a1, $s8, 0
	st.d	$a0, $s3, 0
	bne	$a2, $a0, .LBB1_48
	b	.LBB1_1
	.p2align	4, , 16
.LBB1_40:                               # %if.then4.i
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.d	$a4, $s2, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	move	$a3, $zero
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	ld.d	$a1, $fp, 0
	bne	$a1, $a0, .LBB1_7
.LBB1_41:                               # %if.then14.i
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.d	$a4, $s2, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	move	$a3, $zero
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ld.d	$a0, $fp, 8
	ld.d	$a2, $a0, 8
	bne	$a1, $a2, .LBB1_8
	b	.LBB1_9
.LBB1_42:                               #   in Loop: Header=BB1_2 Depth=1
	move	$a0, $zero
	ld.d	$a1, $s0, 8
	st.d	$a0, $s8, 0
	st.d	$s0, $s3, 0
	bne	$a1, $s0, .LBB1_19
	b	.LBB1_20
.LBB1_43:                               # %if.then170.i
                                        #   in Loop: Header=BB1_2 Depth=1
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	ld.d	$a1, $a0, 24
	st.d	$a0, $s7, 0
	bne	$a1, $a0, .LBB1_22
	.p2align	4, , 16
.LBB1_44:                               #   in Loop: Header=BB1_2 Depth=1
	move	$a1, $zero
	ld.d	$a2, $a0, 8
	st.d	$a1, $s8, 0
	st.d	$a0, $s3, 0
	bne	$a2, $a0, .LBB1_23
	b	.LBB1_24
.LBB1_45:                               #   in Loop: Header=BB1_2 Depth=1
	move	$a0, $zero
	ld.d	$a1, $s0, 8
	st.d	$a0, $s8, 0
	st.d	$s0, $s3, 0
	bne	$a1, $s0, .LBB1_36
	b	.LBB1_37
.LBB1_46:                               # %if.then429.i
                                        #   in Loop: Header=BB1_2 Depth=1
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 24
	st.d	$a0, $s7, 0
	bne	$a1, $a0, .LBB1_39
	.p2align	4, , 16
.LBB1_47:                               #   in Loop: Header=BB1_2 Depth=1
	move	$a1, $zero
	ld.d	$a2, $a0, 8
	st.d	$a1, $s8, 0
	st.d	$a0, $s3, 0
	beq	$a2, $a0, .LBB1_1
.LBB1_48:                               # %cond.false472.i
                                        #   in Loop: Header=BB1_2 Depth=1
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	st.d	$a2, $a1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a2, 0
	ld.d	$a2, $s3, 0
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a2, 0
	st.d	$a0, $a1, 8
	st.d	$a2, $a2, 0
	ld.d	$a0, $s7, 0
	st.d	$a2, $a2, 8
	b	.LBB1_1
.LBB1_49:                               # %while.cond.preheader
	ld.d	$a0, $fp, 8
	beq	$a0, $fp, .LBB1_59
# %bb.50:
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$s0, $a1, %got_pc_lo12(zz_res)
	b	.LBB1_52
	.p2align	4, , 16
.LBB1_51:                               # %if.end101
                                        #   in Loop: Header=BB1_52 Depth=1
	ld.d	$a0, $fp, 8
	beq	$a0, $fp, .LBB1_58
.LBB1_52:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a0, 24
	st.d	$a0, $s7, 0
	beq	$a1, $a0, .LBB1_57
# %bb.53:                               # %cond.false
                                        #   in Loop: Header=BB1_52 Depth=1
	ld.d	$a2, $a0, 16
	st.d	$a1, $s0, 0
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	ld.d	$a2, $a0, 8
	st.d	$a1, $s8, 0
	st.d	$a0, $s3, 0
	beq	$a2, $a0, .LBB1_55
.LBB1_54:                               # %cond.false43
                                        #   in Loop: Header=BB1_52 Depth=1
	st.d	$a2, $s0, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a2, 0
	ld.d	$a1, $s3, 0
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $s7, 0
	st.d	$a1, $a1, 8
.LBB1_55:                               # %cond.end65
                                        #   in Loop: Header=BB1_52 Depth=1
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	add.d	$a1, $s6, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s4, $a2
	st.d	$a0, $s3, 0
	st.w	$a1, $s5, 0
	st.d	$a2, $a0, 0
	ld.w	$a1, $s5, 0
	ld.d	$a2, $s3, 0
	ld.d	$a0, $s8, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $s4, $a1
	ld.d	$a1, $a0, 24
	bne	$a1, $a0, .LBB1_51
# %bb.56:                               # %if.then99
                                        #   in Loop: Header=BB1_52 Depth=1
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	b	.LBB1_51
	.p2align	4, , 16
.LBB1_57:                               #   in Loop: Header=BB1_52 Depth=1
	move	$a1, $zero
	ld.d	$a2, $a0, 8
	st.d	$a1, $s8, 0
	st.d	$a0, $s3, 0
	bne	$a2, $a0, .LBB1_54
	b	.LBB1_55
.LBB1_58:                               # %while.end.loopexit
	ld.bu	$a1, $fp, 32
.LBB1_59:                               # %while.end
	addi.d	$a0, $a1, -11
	sltui	$a0, $a0, 2
	addi.d	$a2, $fp, 33
	add.d	$a1, $s6, $a1
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ld.bu	$a0, $a0, 0
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s4, $a1
	st.d	$fp, $s3, 0
	st.w	$a0, $s5, 0
	st.d	$a1, $fp, 0
	ld.w	$a0, $s5, 0
	ld.d	$a1, $s3, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s4, $a0
.LBB1_60:                               # %if.end132
	move	$a0, $zero
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
.Lfunc_end1:
	.size	DisposeObject, .Lfunc_end1-DisposeObject
                                        # -- End function
	.globl	MakeWord                        # -- Begin function MakeWord
	.p2align	5
	.type	MakeWord,@function
MakeWord:                               # @MakeWord
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 32
	ori	$a1, $zero, 0
	lu32i.d	$a1, 68
	add.d	$a0, $a0, $a1
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s3, $a1, %got_pc_lo12(zz_size)
	srai.d	$a0, $a0, 35
	addi.d	$a0, $a0, 1
	ori	$a1, $zero, 265
	st.w	$a0, $s3, 0
	bltu	$a0, $a1, .LBB2_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a2, $a0, %pc_lo12(.L.str.3)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	move	$a4, $fp
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	ld.d	$s2, $a0, 0
	b	.LBB2_5
.LBB2_2:                                # %if.else
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$a1, $a1, %got_pc_lo12(zz_free)
	slli.d	$a2, $a0, 3
	ldx.d	$s2, $a1, $a2
	beqz	$s2, .LBB2_4
# %bb.3:                                # %if.else12
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$s2, $a2, 0
	ld.d	$a2, $s2, 0
	alsl.d	$a0, $a0, $a1, 3
	st.d	$a2, $a0, 0
	b	.LBB2_5
.LBB2_4:                                # %if.then10
	move	$a1, $fp
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	move	$s2, $a0
	st.d	$a0, $a1, 0
.LBB2_5:                                # %if.end18
	ld.b	$a0, $s3, 0
	st.b	$a0, $s2, 33
	st.b	$s1, $s2, 32
	st.d	$s2, $s2, 24
	st.d	$s2, $s2, 16
	st.d	$s2, $s2, 8
	st.d	$s2, $s2, 0
	addi.d	$a0, $s2, 64
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.h	$a0, $fp, 2
	st.h	$a0, $s2, 34
	ld.wu	$a0, $fp, 4
	ld.wu	$a1, $s2, 36
	srli.d	$a1, $a1, 20
	move	$a2, $a0
	bstrins.d	$a2, $a1, 63, 20
	st.w	$a2, $s2, 36
	ld.wu	$a1, $fp, 4
	srli.d	$a1, $a1, 20
	bstrins.d	$a0, $a1, 63, 20
	st.w	$a0, $s2, 36
	move	$a0, $s2
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end2:
	.size	MakeWord, .Lfunc_end2-MakeWord
                                        # -- End function
	.globl	MakeWordTwo                     # -- Begin function MakeWordTwo
	.p2align	5
	.type	MakeWordTwo,@function
MakeWordTwo:                            # @MakeWordTwo
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
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s3, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $a0, $s2
	slli.d	$a0, $a0, 32
	ori	$a1, $zero, 0
	lu32i.d	$a1, 68
	add.d	$a0, $a0, $a1
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s5, $a1, %got_pc_lo12(zz_size)
	srai.d	$a0, $a0, 35
	addi.d	$a0, $a0, 1
	ori	$a1, $zero, 265
	st.w	$a0, $s5, 0
	bltu	$a0, $a1, .LBB3_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a2, $a0, %pc_lo12(.L.str.3)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	move	$a4, $fp
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	ld.d	$s4, $a0, 0
	b	.LBB3_5
.LBB3_2:                                # %if.else
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$a1, $a1, %got_pc_lo12(zz_free)
	slli.d	$a2, $a0, 3
	ldx.d	$s4, $a1, $a2
	beqz	$s4, .LBB3_4
# %bb.3:                                # %if.else17
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$s4, $a2, 0
	ld.d	$a2, $s4, 0
	alsl.d	$a0, $a0, $a1, 3
	st.d	$a2, $a0, 0
	b	.LBB3_5
.LBB3_4:                                # %if.then15
	move	$a1, $fp
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	move	$s4, $a0
	st.d	$a0, $a1, 0
.LBB3_5:                                # %if.end23
	ld.b	$a0, $s5, 0
	st.b	$a0, $s4, 33
	st.b	$s3, $s4, 32
	st.d	$s4, $s4, 24
	st.d	$s4, $s4, 16
	st.d	$s4, $s4, 8
	st.d	$s4, $s4, 0
	addi.d	$s3, $s4, 64
	move	$a0, $s3
	move	$a1, $s1
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.w	$a0, $s2, 0
	add.d	$a0, $s3, $a0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.h	$a0, $fp, 2
	st.h	$a0, $s4, 34
	ld.wu	$a0, $fp, 4
	ld.wu	$a1, $s4, 36
	srli.d	$a1, $a1, 20
	move	$a2, $a0
	bstrins.d	$a2, $a1, 63, 20
	st.w	$a2, $s4, 36
	ld.wu	$a1, $fp, 4
	srli.d	$a1, $a1, 20
	bstrins.d	$a0, $a1, 63, 20
	st.w	$a0, $s4, 36
	move	$a0, $s4
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
.Lfunc_end3:
	.size	MakeWordTwo, .Lfunc_end3-MakeWordTwo
                                        # -- End function
	.globl	MakeWordThree                   # -- Begin function MakeWordThree
	.p2align	5
	.type	MakeWordThree,@function
MakeWordThree:                          # @MakeWordThree
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
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.w	$s5, $s3, $s2
	add.d	$a0, $a0, $s5
	addi.w	$a0, $a0, 68
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s4, $a1, %got_pc_lo12(zz_size)
	srli.d	$a0, $a0, 3
	addi.w	$a0, $a0, 1
	ori	$a1, $zero, 265
	st.w	$a0, $s4, 0
	bltu	$a0, $a1, .LBB4_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a2, $a0, %pc_lo12(.L.str.3)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	ld.d	$s3, $a0, 0
	b	.LBB4_5
.LBB4_2:                                # %if.else
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$a1, $a1, %got_pc_lo12(zz_free)
	slli.d	$a2, $a0, 3
	ldx.d	$s3, $a1, $a2
	beqz	$s3, .LBB4_4
# %bb.3:                                # %if.else20
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$s3, $a2, 0
	ld.d	$a2, $s3, 0
	alsl.d	$a0, $a0, $a1, 3
	st.d	$a2, $a0, 0
	b	.LBB4_5
.LBB4_4:                                # %if.then18
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	move	$s3, $a0
	st.d	$a0, $a1, 0
.LBB4_5:                                # %if.end26
	ld.b	$a0, $s4, 0
	st.b	$a0, $s3, 33
	ori	$a0, $zero, 11
	st.b	$a0, $s3, 32
	st.d	$s3, $s3, 24
	st.d	$s3, $s3, 16
	st.d	$s3, $s3, 8
	st.d	$s3, $s3, 0
	addi.d	$s4, $s3, 64
	move	$a0, $s4
	move	$a1, $s1
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.w	$a0, $s2, 0
	add.d	$a0, $s4, $a0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	add.d	$a0, $s4, $s5
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s3
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
.Lfunc_end4:
	.size	MakeWordThree, .Lfunc_end4-MakeWordThree
                                        # -- End function
	.globl	CopyObject                      # -- Begin function CopyObject
	.p2align	5
	.type	CopyObject,@function
CopyObject:                             # @CopyObject
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.bu	$a0, $a0, 32
	addi.d	$a2, $a0, -1
	ori	$a3, $zero, 98
	move	$s2, $a1
	bltu	$a3, $a2, .LBB5_28
# %bb.1:                                # %entry
	slli.d	$a1, $a2, 2
	pcalau12i	$a2, %pc_hi20(.LJTI5_0)
	addi.d	$a2, $a2, %pc_lo12(.LJTI5_0)
	ldx.w	$a1, $a2, $a1
	add.d	$a1, $a2, $a1
	ld.d	$t1, $sp, 48                    # 8-byte Folded Reload
	jr	$a1
.LBB5_2:                                # %sw.bb221
	pcalau12i	$a1, %got_pc_hi20(zz_lengths)
	ld.d	$a1, $a1, %got_pc_lo12(zz_lengths)
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ldx.bu	$a0, $a1, $a0
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$s4, $a1, %got_pc_lo12(zz_free)
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s5, $a1, %got_pc_lo12(zz_size)
	slli.d	$a1, $a0, 3
	ldx.d	$t1, $s4, $a1
	st.w	$a0, $s5, 0
	beqz	$t1, .LBB5_4
# %bb.3:                                # %if.else239
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$t1, $a1, 0
	ld.d	$a1, $t1, 0
	alsl.d	$a0, $a0, $s4, 3
	st.d	$a1, $a0, 0
	b	.LBB5_5
.LBB5_4:                                # %if.then237
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	move	$t1, $a0
	st.d	$a0, $a1, 0
.LBB5_5:                                # %if.end248
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.b	$a0, $a1, 32
	st.b	$a0, $t1, 32
	st.d	$t1, $t1, 24
	st.d	$t1, $t1, 16
	st.d	$t1, $t1, 8
	st.d	$t1, $t1, 0
	ld.d	$s6, $a1, 8
	beq	$s6, $a1, .LBB5_75
# %bb.6:                                # %for.cond275.preheader.preheader
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(xx_link)
	ld.d	$s8, $a0, %got_pc_lo12(xx_link)
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$s0, $a0, %got_pc_lo12(zz_res)
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$fp, $a0, %got_pc_lo12(zz_hold)
	pcalau12i	$a0, %got_pc_hi20(zz_tmp)
	ld.d	$s7, $a0, %got_pc_lo12(zz_tmp)
	b	.LBB5_8
	.p2align	4, , 16
.LBB5_7:                                # %for.inc391
                                        #   in Loop: Header=BB5_8 Depth=1
	ld.d	$s6, $s6, 8
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	move	$s2, $s1
	beq	$s6, $a0, .LBB5_75
.LBB5_8:                                # %for.cond275.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_9 Depth 2
	move	$s3, $t1
	move	$a0, $s6
	.p2align	4, , 16
.LBB5_9:                                # %for.cond275
                                        #   Parent Loop BB5_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB5_9
# %bb.10:                               # %for.end286
                                        #   in Loop: Header=BB5_8 Depth=1
	move	$s1, $s2
	move	$a1, $s2
	pcaddu18i	$ra, %call36(CopyObject)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.bu	$a2, $a1, 0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $s4, $a1
	move	$s2, $a0
	st.w	$a2, $s5, 0
	beqz	$a1, .LBB5_12
# %bb.11:                               # %if.else301
                                        #   in Loop: Header=BB5_8 Depth=1
	st.d	$a1, $fp, 0
	ld.d	$a0, $a1, 0
	alsl.d	$a2, $a2, $s4, 3
	st.d	$a0, $a2, 0
	b	.LBB5_13
	.p2align	4, , 16
.LBB5_12:                               # %if.then299
                                        #   in Loop: Header=BB5_8 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.LBB5_13:                               # %cond.end356
                                        #   in Loop: Header=BB5_8 Depth=1
	st.b	$zero, $a1, 32
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	st.d	$a1, $a1, 0
	st.d	$a1, $s8, 0
	st.d	$a1, $s0, 0
	move	$t1, $s3
	st.d	$s3, $fp, 0
	ld.d	$a0, $s3, 0
	st.d	$a0, $s7, 0
	ld.d	$a0, $a1, 0
	st.d	$a0, $s3, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $fp, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s7, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s0, 0
	ld.d	$a0, $s8, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s0, 0
	st.d	$s2, $fp, 0
	beqz	$s2, .LBB5_7
# %bb.14:                               # %cond.end356
                                        #   in Loop: Header=BB5_8 Depth=1
	beqz	$a0, .LBB5_7
# %bb.15:                               # %cond.false365
                                        #   in Loop: Header=BB5_8 Depth=1
	ld.d	$a1, $s2, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s7, 0
	st.d	$a2, $s2, 16
	st.d	$s2, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
	b	.LBB5_7
.LBB5_16:                               # %sw.bb
	move	$s0, $s2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	addi.d	$s2, $a0, 64
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 32
	ori	$a1, $zero, 0
	lu32i.d	$a1, 68
	add.d	$a0, $a0, $a1
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$fp, $a1, %got_pc_lo12(zz_size)
	srai.d	$a0, $a0, 35
	addi.d	$a0, $a0, 1
	ori	$a1, $zero, 265
	st.w	$a0, $fp, 0
	bltu	$a0, $a1, .LBB5_18
# %bb.17:                               # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a2, $a0, %pc_lo12(.L.str.3)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	move	$a4, $s0
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	ld.d	$a3, $a0, 0
	b	.LBB5_30
.LBB5_18:                               # %if.else
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$a1, $a1, %got_pc_lo12(zz_free)
	slli.d	$a2, $a0, 3
	ldx.d	$a3, $a1, $a2
	beqz	$a3, .LBB5_29
# %bb.19:                               # %if.else13
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a3, $a2, 0
	ld.d	$a2, $a3, 0
	alsl.d	$a0, $a0, $a1, 3
	st.d	$a2, $a0, 0
	b	.LBB5_30
.LBB5_20:                               # %sw.bb42
	move	$s3, $s2
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s0, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a0, $s0, 1
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$fp, $a1, %got_pc_lo12(zz_free)
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s2, $a1, %got_pc_lo12(zz_size)
	slli.d	$a1, $a0, 3
	ldx.d	$t1, $fp, $a1
	st.w	$a0, $s2, 0
	beqz	$t1, .LBB5_31
# %bb.21:                               # %if.else56
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$t1, $a1, 0
	ld.d	$a1, $t1, 0
	alsl.d	$a0, $a0, $fp, 3
	st.d	$a1, $a0, 0
	b	.LBB5_32
.LBB5_22:                               # %sw.bb740
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s1, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a0, $s1, 2
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$s6, $a1, %got_pc_lo12(zz_free)
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$a2, $a1, %got_pc_lo12(zz_size)
	slli.d	$a1, $a0, 3
	ldx.d	$t1, $s6, $a1
	move	$fp, $a2
	st.w	$a0, $a2, 0
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	beqz	$t1, .LBB5_38
# %bb.23:                               # %if.else754
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$t1, $a1, 0
	ld.d	$a1, $t1, 0
	alsl.d	$a0, $a0, $s6, 3
	st.d	$a1, $a0, 0
	b	.LBB5_39
.LBB5_24:                               # %sw.bb396
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s2, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a0, $s2, 57
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$s3, $a1, %got_pc_lo12(zz_free)
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s4, $a1, %got_pc_lo12(zz_size)
	slli.d	$a1, $a0, 3
	ldx.d	$t1, $s3, $a1
	st.w	$a0, $s4, 0
	beqz	$t1, .LBB5_53
# %bb.25:                               # %if.else414
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$t1, $a1, 0
	ld.d	$a1, $t1, 0
	alsl.d	$a0, $a0, $s3, 3
	st.d	$a1, $a0, 0
	b	.LBB5_54
.LBB5_26:                               # %sw.bb571
	move	$s3, $s2
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s0, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a0, $s0, 10
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$s2, $a1, %got_pc_lo12(zz_free)
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$fp, $a1, %got_pc_lo12(zz_size)
	slli.d	$a1, $a0, 3
	ldx.d	$a2, $s2, $a1
	st.w	$a0, $fp, 0
	beqz	$a2, .LBB5_65
# %bb.27:                               # %if.else585
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a2, $a1, 0
	ld.d	$a1, $a2, 0
	alsl.d	$a0, $a0, $s2, 3
	st.d	$a1, $a0, 0
	b	.LBB5_66
.LBB5_28:                               # %sw.default
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$s1, $a1, 0
	pcaddu18i	$ra, %call36(Image)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a5, $a0, %pc_lo12(.L.str.7)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 3
	move	$a3, $zero
	move	$a4, $s1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$t1, $zero
	b	.LBB5_75
.LBB5_29:                               # %if.then11
	move	$a1, $s0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	move	$a3, $a0
	st.d	$a0, $a1, 0
.LBB5_30:                               # %if.end19
	ld.b	$a0, $fp, 0
	st.b	$a0, $a3, 33
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.b	$a0, $a0, 32
	st.b	$a0, $a3, 32
	st.d	$a3, $a3, 24
	st.d	$a3, $a3, 16
	st.d	$a3, $a3, 8
	st.d	$a3, $a3, 0
	addi.d	$a0, $a3, 64
	move	$a1, $s2
	move	$fp, $a3
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	move	$t1, $fp
	move	$s2, $s0
	b	.LBB5_75
.LBB5_31:                               # %if.then54
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	move	$t1, $a0
	st.d	$a0, $a1, 0
.LBB5_32:                               # %if.end65
	ori	$a0, $zero, 1
	st.b	$a0, $t1, 32
	st.d	$t1, $t1, 24
	st.d	$t1, $t1, 16
	st.d	$t1, $t1, 8
	st.d	$t1, $t1, 0
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.hu	$a0, $a3, 44
	ld.h	$a1, $t1, 44
	bstrpick.d	$a0, $a0, 8, 8
	bstrins.d	$a1, $a0, 8, 8
	st.h	$a1, $t1, 44
	ld.hu	$a0, $a3, 44
	lu12i.w	$a2, 15
	ori	$a2, $a2, 3583
	and	$a1, $a1, $a2
	srli.d	$a0, $a0, 9
	bstrins.d	$a1, $a0, 9, 9
	st.h	$a1, $t1, 44
	ld.b	$a0, $a3, 41
	st.b	$a0, $t1, 41
	ld.b	$a0, $a3, 42
	st.b	$a0, $t1, 42
	ld.d	$a0, $a3, 8
	beq	$a0, $a3, .LBB5_37
# %bb.33:                               # %for.cond.preheader
	move	$s1, $t1
	.p2align	4, , 16
.LBB5_34:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB5_34
# %bb.35:                               # %for.end
	move	$a1, $s3
	pcaddu18i	$ra, %call36(CopyObject)
	jirl	$ra, $ra, 0
	ld.bu	$a2, $s0, 0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $fp, $a1
	st.w	$a2, $s2, 0
	beqz	$a1, .LBB5_71
# %bb.36:                               # %if.else134
	pcalau12i	$a3, %got_pc_hi20(zz_hold)
	ld.d	$a3, $a3, %got_pc_lo12(zz_hold)
	st.d	$a1, $a3, 0
	ld.d	$a3, $a1, 0
	alsl.d	$a2, $a2, $fp, 3
	st.d	$a3, $a2, 0
	b	.LBB5_72
.LBB5_37:
	move	$s2, $s3
	b	.LBB5_75
.LBB5_38:                               # %if.then752
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	move	$t1, $a0
	st.d	$a0, $a1, 0
.LBB5_39:                               # %if.end763
	ori	$a0, $zero, 2
	st.b	$a0, $t1, 32
	st.d	$t1, $t1, 24
	st.d	$t1, $t1, 16
	st.d	$t1, $t1, 8
	st.d	$t1, $t1, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s8, $a0, 8
	beq	$s8, $a0, .LBB5_52
# %bb.40:                               # %for.cond788.preheader.preheader
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str)
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$s3, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$s5, $a1, %got_pc_lo12(zz_res)
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$s7, $a1, %got_pc_lo12(zz_hold)
	pcalau12i	$a1, %got_pc_hi20(zz_tmp)
	ld.d	$s2, $a1, %got_pc_lo12(zz_tmp)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB5_42
	.p2align	4, , 16
.LBB5_41:                               # %for.inc912
                                        #   in Loop: Header=BB5_42 Depth=1
	ld.d	$s8, $s8, 8
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	beq	$s8, $a0, .LBB5_52
.LBB5_42:                               # %for.cond788.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_43 Depth 2
	move	$s4, $s8
	.p2align	4, , 16
.LBB5_43:                               # %for.cond788
                                        #   Parent Loop BB5_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s4, $s4, 16
	ld.bu	$a0, $s4, 32
	beqz	$a0, .LBB5_43
# %bb.44:                               # %for.cond788
                                        #   in Loop: Header=BB5_42 Depth=1
	move	$s0, $t1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB5_46
# %bb.45:                               # %if.then805
                                        #   in Loop: Header=BB5_42 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	move	$a3, $zero
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB5_46:                               # %if.end807
                                        #   in Loop: Header=BB5_42 Depth=1
	move	$a0, $s4
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(CopyObject)
	jirl	$ra, $ra, 0
	ld.bu	$a2, $s1, 0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $s6, $a1
	move	$s4, $a0
	st.w	$a2, $fp, 0
	beqz	$a1, .LBB5_48
# %bb.47:                               # %if.else822
                                        #   in Loop: Header=BB5_42 Depth=1
	st.d	$a1, $s7, 0
	ld.d	$a0, $a1, 0
	alsl.d	$a2, $a2, $s6, 3
	st.d	$a0, $a2, 0
	b	.LBB5_49
.LBB5_48:                               # %if.then820
                                        #   in Loop: Header=BB5_42 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.LBB5_49:                               # %cond.end877
                                        #   in Loop: Header=BB5_42 Depth=1
	st.b	$zero, $a1, 32
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	st.d	$a1, $a1, 0
	st.d	$a1, $s3, 0
	st.d	$a1, $s5, 0
	move	$t1, $s0
	st.d	$s0, $s7, 0
	ld.d	$a0, $s0, 0
	st.d	$a0, $s2, 0
	ld.d	$a0, $a1, 0
	st.d	$a0, $s0, 0
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s7, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s2, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s5, 0
	ld.d	$a0, $s3, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s5, 0
	st.d	$s4, $s7, 0
	beqz	$s4, .LBB5_41
# %bb.50:                               # %cond.end877
                                        #   in Loop: Header=BB5_42 Depth=1
	beqz	$a0, .LBB5_41
# %bb.51:                               # %cond.false886
                                        #   in Loop: Header=BB5_42 Depth=1
	ld.d	$a1, $s4, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s2, 0
	st.d	$a2, $s4, 16
	st.d	$s4, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
	b	.LBB5_41
.LBB5_52:                               # %for.end916
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a4, 80
	st.d	$a0, $t1, 80
	ld.hu	$a1, $a4, 64
	ld.h	$a0, $t1, 64
	bstrpick.d	$a1, $a1, 7, 7
	bstrins.d	$a0, $a1, 7, 7
	st.h	$a0, $t1, 64
	ld.hu	$a1, $a4, 64
	bstrpick.d	$a1, $a1, 8, 8
	move	$a2, $a0
	bstrins.d	$a2, $a1, 8, 8
	st.h	$a2, $t1, 64
	ld.hu	$a1, $a4, 64
	bstrpick.d	$a1, $a1, 9, 9
	bstrins.d	$a2, $a1, 9, 9
	st.h	$a2, $t1, 64
	ld.hu	$a1, $a4, 64
	bstrpick.d	$a1, $a1, 12, 10
	bstrins.d	$a2, $a1, 12, 10
	st.h	$a2, $t1, 64
	ld.hu	$a1, $a4, 64
	srli.d	$a1, $a1, 13
	bstrins.d	$a2, $a1, 63, 13
	st.h	$a2, $t1, 64
	ld.h	$a1, $a4, 66
	st.h	$a1, $t1, 66
	ld.bu	$a1, $a4, 68
	ld.b	$a2, $t1, 68
	andi	$a1, $a1, 3
	bstrins.d	$a2, $a1, 1, 0
	st.b	$a2, $t1, 68
	ld.bu	$a1, $a4, 68
	bstrpick.d	$a1, $a1, 3, 2
	bstrins.d	$a2, $a1, 3, 2
	st.b	$a2, $t1, 68
	ld.bu	$a1, $a4, 68
	andi	$a2, $a2, 143
	srli.d	$a1, $a1, 4
	bstrins.d	$a2, $a1, 6, 4
	st.b	$a2, $t1, 68
	ld.bu	$a1, $a4, 64
	bstrpick.d	$a1, $a1, 3, 3
	bstrins.d	$a0, $a1, 3, 3
	st.b	$a0, $t1, 64
	ld.hu	$a1, $a4, 68
	ld.h	$a2, $t1, 68
	bstrpick.d	$a1, $a1, 7, 7
	bstrins.d	$a2, $a1, 7, 7
	st.h	$a2, $t1, 68
	ld.hu	$a1, $a4, 68
	bstrpick.d	$a1, $a1, 8, 8
	bstrins.d	$a2, $a1, 8, 8
	st.h	$a2, $t1, 68
	ld.hu	$a1, $a4, 68
	bstrpick.d	$a1, $a1, 9, 9
	bstrins.d	$a2, $a1, 9, 9
	st.h	$a2, $t1, 68
	ld.hu	$a1, $a4, 68
	bstrpick.d	$a1, $a1, 12, 10
	bstrins.d	$a2, $a1, 12, 10
	st.h	$a2, $t1, 68
	ld.hu	$a1, $a4, 68
	srli.d	$a1, $a1, 13
	bstrins.d	$a2, $a1, 63, 13
	st.h	$a2, $t1, 68
	ld.h	$a1, $a4, 70
	st.h	$a1, $t1, 70
	ld.wu	$a1, $a4, 76
	ld.w	$a2, $t1, 76
	andi	$a1, $a1, 4095
	bstrins.d	$a2, $a1, 11, 0
	st.w	$a2, $t1, 76
	ld.wu	$a1, $a4, 76
	bstrpick.d	$a1, $a1, 21, 12
	bstrins.d	$a2, $a1, 21, 12
	st.w	$a2, $t1, 76
	ld.wu	$a1, $a4, 76
	bstrpick.d	$a1, $a1, 23, 22
	bstrins.d	$a2, $a1, 23, 22
	st.w	$a2, $t1, 76
	ld.wu	$a1, $a4, 76
	bstrpick.d	$a1, $a1, 29, 24
	bstrins.d	$a2, $a1, 29, 24
	st.w	$a2, $t1, 76
	ld.w	$a1, $a4, 76
	srli.d	$a1, $a1, 31
	bstrins.d	$a2, $a1, 63, 31
	st.w	$a2, $t1, 76
	ld.wu	$a1, $a4, 76
	lu12i.w	$a3, -262145
	ori	$a3, $a3, 4095
	lu32i.d	$a3, 0
	and	$a2, $a2, $a3
	srli.d	$a1, $a1, 30
	bstrins.d	$a2, $a1, 30, 30
	st.w	$a2, $t1, 76
	ld.bu	$a1, $a4, 64
	srli.d	$a0, $a0, 1
	bstrins.d	$a1, $a0, 63, 1
	st.b	$a1, $t1, 64
	ld.bu	$a0, $a4, 64
	bstrpick.d	$a0, $a0, 1, 1
	bstrins.d	$a1, $a0, 1, 1
	st.b	$a1, $t1, 64
	ld.bu	$a0, $a4, 64
	bstrpick.d	$a0, $a0, 2, 2
	bstrins.d	$a1, $a0, 2, 2
	st.b	$a1, $t1, 64
	ld.bu	$a0, $a4, 64
	andi	$a1, $a1, 143
	srli.d	$a0, $a0, 4
	bstrins.d	$a1, $a0, 6, 4
	st.b	$a1, $t1, 64
	ld.h	$a0, $a4, 72
	st.h	$a0, $t1, 72
	ld.h	$a0, $a4, 74
	st.h	$a0, $t1, 74
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	b	.LBB5_75
.LBB5_53:                               # %if.then412
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	move	$t1, $a0
	st.d	$a0, $a1, 0
.LBB5_54:                               # %if.end423
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.b	$a0, $a1, 32
	st.b	$a0, $t1, 32
	st.d	$t1, $t1, 24
	st.d	$t1, $t1, 16
	st.d	$t1, $t1, 8
	st.d	$t1, $t1, 0
	ld.d	$s0, $a1, 8
	beq	$s0, $a1, .LBB5_64
# %bb.55:                               # %for.cond450.preheader.preheader
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(xx_link)
	ld.d	$s5, $a0, %got_pc_lo12(xx_link)
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$s6, $a0, %got_pc_lo12(zz_res)
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$s7, $a0, %got_pc_lo12(zz_hold)
	pcalau12i	$a0, %got_pc_hi20(zz_tmp)
	ld.d	$s8, $a0, %got_pc_lo12(zz_tmp)
	b	.LBB5_57
	.p2align	4, , 16
.LBB5_56:                               # %for.inc565
                                        #   in Loop: Header=BB5_57 Depth=1
	ld.d	$s0, $s0, 8
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	beq	$s0, $a0, .LBB5_64
.LBB5_57:                               # %for.cond450.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_58 Depth 2
	move	$fp, $s0
	.p2align	4, , 16
.LBB5_58:                               # %for.cond450
                                        #   Parent Loop BB5_57 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$fp, $fp, 16
	ld.bu	$a0, $fp, 32
	beqz	$a0, .LBB5_58
# %bb.59:                               # %for.end461
                                        #   in Loop: Header=BB5_57 Depth=1
	ld.bu	$a2, $s2, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s3, $a0
	st.w	$a2, $s4, 0
	beqz	$a0, .LBB5_61
# %bb.60:                               # %if.else475
                                        #   in Loop: Header=BB5_57 Depth=1
	st.d	$a0, $s7, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s3, 3
	st.d	$a1, $a2, 0
	b	.LBB5_62
.LBB5_61:                               # %if.then473
                                        #   in Loop: Header=BB5_57 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	move	$s1, $t1
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$t1, $s1
.LBB5_62:                               # %cond.end530
                                        #   in Loop: Header=BB5_57 Depth=1
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s5, 0
	st.d	$a0, $s6, 0
	st.d	$t1, $s7, 0
	ld.d	$a1, $t1, 0
	st.d	$a1, $s8, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $t1, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s7, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s8, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s6, 0
	ld.d	$a0, $s5, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s6, 0
	st.d	$fp, $s7, 0
	beqz	$a0, .LBB5_56
# %bb.63:                               # %cond.false539
                                        #   in Loop: Header=BB5_57 Depth=1
	ld.d	$a1, $fp, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s8, 0
	st.d	$a2, $fp, 16
	st.d	$fp, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
	b	.LBB5_56
.LBB5_64:
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	b	.LBB5_75
.LBB5_65:                               # %if.then583
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	move	$a2, $a0
	st.d	$a0, $a1, 0
.LBB5_66:                               # %if.end594
	ori	$a0, $zero, 10
	st.b	$a0, $a2, 32
	st.d	$a2, $a2, 24
	st.d	$a2, $a2, 16
	st.d	$a2, $a2, 8
	st.d	$a2, $a2, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a1, 80
	st.d	$a0, $a2, 80
	ld.d	$a0, $a1, 8
	move	$s1, $a2
	bne	$a0, $a1, .LBB5_68
# %bb.67:                               # %if.then615
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
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 8
	.p2align	4, , 16
.LBB5_68:                               # %for.cond624
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB5_68
# %bb.69:                               # %for.end635
	move	$a1, $s3
	pcaddu18i	$ra, %call36(CopyObject)
	jirl	$ra, $ra, 0
	ld.bu	$a2, $s0, 0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $s2, $a1
	st.w	$a2, $fp, 0
	beqz	$a1, .LBB5_71
# %bb.70:                               # %if.else650
	pcalau12i	$a3, %got_pc_hi20(zz_hold)
	ld.d	$a3, $a3, %got_pc_lo12(zz_hold)
	st.d	$a1, $a3, 0
	ld.d	$a3, $a1, 0
	alsl.d	$a2, $a2, $s2, 3
	st.d	$a3, $a2, 0
	b	.LBB5_72
.LBB5_71:                               # %if.then132
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
.LBB5_72:                               # %cond.end185
	st.b	$zero, $a1, 32
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	pcalau12i	$a2, %got_pc_hi20(xx_link)
	ld.d	$a3, $a2, %got_pc_lo12(xx_link)
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a4, $a2, %got_pc_lo12(zz_res)
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a5, $a2, %got_pc_lo12(zz_hold)
	st.d	$a1, $a1, 0
	st.d	$a1, $a3, 0
	st.d	$a1, $a4, 0
	move	$t1, $s1
	st.d	$s1, $a5, 0
	ld.d	$a6, $s1, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a6, $a2, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $s1, 0
	ld.d	$a1, $a4, 0
	ld.d	$a6, $a5, 0
	ld.d	$a7, $a1, 0
	ld.d	$t0, $a2, 0
	st.d	$a6, $a7, 8
	st.d	$t0, $a1, 0
	ld.d	$a6, $a4, 0
	ld.d	$a1, $a3, 0
	st.d	$a6, $t0, 8
	st.d	$a1, $a4, 0
	st.d	$a0, $a5, 0
	move	$s2, $s3
	beqz	$a0, .LBB5_75
# %bb.73:                               # %cond.end185
	beqz	$a1, .LBB5_75
# %bb.74:                               # %cond.false194
	ld.d	$a3, $a0, 16
	ld.d	$a4, $a1, 16
	st.d	$a3, $a2, 0
	st.d	$a4, $a0, 16
	st.d	$a0, $a4, 24
	st.d	$a3, $a1, 16
	st.d	$a1, $a3, 24
.LBB5_75:                               # %sw.epilog
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a0, $a0, 0
	beq	$s2, $a0, .LBB5_77
# %bb.76:                               # %if.else1272
	ld.h	$a0, $s2, 2
	st.h	$a0, $t1, 34
	addi.d	$a0, $s2, 4
	b	.LBB5_78
.LBB5_77:                               # %if.then1249
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.h	$a0, $a1, 34
	st.h	$a0, $t1, 34
	addi.d	$a0, $a1, 36
.LBB5_78:                               # %if.end1295
	ld.wu	$a1, $a0, 0
	ld.wu	$a2, $t1, 36
	srli.d	$a2, $a2, 20
	move	$a3, $a1
	bstrins.d	$a3, $a2, 63, 20
	st.w	$a3, $t1, 36
	ld.wu	$a0, $a0, 0
	srli.d	$a0, $a0, 20
	bstrins.d	$a1, $a0, 63, 20
	st.w	$a1, $t1, 36
	move	$a0, $t1
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end5:
	.size	CopyObject, .Lfunc_end5-CopyObject
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI5_0:
	.word	.LBB5_20-.LJTI5_0
	.word	.LBB5_22-.LJTI5_0
	.word	.LBB5_28-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_28-.LJTI5_0
	.word	.LBB5_28-.LJTI5_0
	.word	.LBB5_26-.LJTI5_0
	.word	.LBB5_16-.LJTI5_0
	.word	.LBB5_16-.LJTI5_0
	.word	.LBB5_28-.LJTI5_0
	.word	.LBB5_28-.LJTI5_0
	.word	.LBB5_28-.LJTI5_0
	.word	.LBB5_28-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_24-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_75-.LJTI5_0
	.word	.LBB5_28-.LJTI5_0
	.word	.LBB5_28-.LJTI5_0
	.word	.LBB5_28-.LJTI5_0
	.word	.LBB5_28-.LJTI5_0
	.word	.LBB5_28-.LJTI5_0
	.word	.LBB5_28-.LJTI5_0
	.word	.LBB5_28-.LJTI5_0
	.word	.LBB5_28-.LJTI5_0
	.word	.LBB5_28-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
                                        # -- End function
	.text
	.globl	InsertObject                    # -- Begin function InsertObject
	.p2align	5
	.type	InsertObject,@function
InsertObject:                           # @InsertObject
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	move	$s0, $a2
	move	$a4, $a1
	st.d	$zero, $sp, 56                  # 8-byte Folded Spill
	ori	$a7, $zero, 97
	pcalau12i	$a1, %pc_hi20(.LJTI6_0)
	addi.d	$s7, $a1, %pc_lo12(.LJTI6_0)
	pcalau12i	$a1, %got_pc_hi20(zz_lengths)
	ld.d	$s2, $a1, %got_pc_lo12(zz_lengths)
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$a6, $a1, %got_pc_lo12(zz_size)
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$s8, $a1, %got_pc_lo12(zz_free)
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(xx_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(xx_tmp)
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$s5, $a1, %got_pc_lo12(zz_res)
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$s6, $a1, %got_pc_lo12(zz_hold)
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a5, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a1, %got_pc_hi20(zz_tmp)
	ld.d	$s4, $a1, %got_pc_lo12(zz_tmp)
	lu12i.w	$a1, -262145
	ori	$s3, $a1, 4095
	lu32i.d	$s3, 0
	lu12i.w	$a1, 15
	ori	$a1, $a1, 2047
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
                                        # implicit-def: $r5
                                        # kill: killed $r5
	st.d	$a4, $sp, 64                    # 8-byte Folded Spill
	st.d	$a5, $sp, 16                    # 8-byte Folded Spill
	st.d	$a6, $sp, 8                     # 8-byte Folded Spill
.LBB6_1:                                # %tailrecurse.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_2 Depth 2
                                        #     Child Loop BB6_16 Depth 2
	move	$fp, $a0
	ld.bu	$a0, $fp, 32
	addi.d	$a1, $a0, -2
	bltu	$a7, $a1, .LBB6_23
.LBB6_2:                                # %tailrecurse
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $s7, $a1
	add.d	$a1, $s7, $a1
	jr	$a1
.LBB6_3:                                # %sw.bb
                                        #   in Loop: Header=BB6_2 Depth=2
	ld.bu	$a0, $s2, 17
	slli.d	$a1, $a0, 3
	ldx.d	$s1, $s8, $a1
	st.w	$a0, $a6, 0
	beqz	$s1, .LBB6_5
# %bb.4:                                # %if.else8
                                        #   in Loop: Header=BB6_2 Depth=2
	st.d	$s1, $s6, 0
	ld.d	$a1, $s1, 0
	alsl.d	$a0, $a0, $s8, 3
	st.d	$a1, $a0, 0
	b	.LBB6_6
	.p2align	4, , 16
.LBB6_5:                                # %if.then6
                                        #   in Loop: Header=BB6_2 Depth=2
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ori	$a7, $zero, 97
	ld.d	$a6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	move	$s1, $a0
.LBB6_6:                                # %if.end14
                                        #   in Loop: Header=BB6_2 Depth=2
	ori	$a0, $zero, 17
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
	bstrins.d	$a0, $a1, 63, 20
	st.w	$a0, $s1, 36
	ld.d	$a0, $fp, 24
	beq	$a0, $fp, .LBB6_8
# %bb.7:                                # %cond.false77
                                        #   in Loop: Header=BB6_2 Depth=2
	ld.d	$a1, $fp, 16
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
	st.d	$fp, $fp, 24
	st.d	$fp, $fp, 16
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $a1, 0
	ld.d	$a1, $a0, 16
	ld.d	$a2, $s1, 16
	st.d	$s1, $s5, 0
	st.d	$a0, $s6, 0
	st.d	$a1, $s4, 0
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
	st.d	$a1, $s1, 16
	st.d	$s1, $a1, 24
	b	.LBB6_9
	.p2align	4, , 16
.LBB6_8:                                # %cond.end.thread
                                        #   in Loop: Header=BB6_2 Depth=2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.d	$zero, $a0, 0
	st.d	$s1, $s5, 0
	st.d	$zero, $s6, 0
.LBB6_9:                                # %cond.end101
                                        #   in Loop: Header=BB6_2 Depth=2
	ld.bu	$a2, $s2, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s8, $a0
	st.w	$a2, $a6, 0
	beqz	$a0, .LBB6_11
# %bb.10:                               # %if.else116
                                        #   in Loop: Header=BB6_2 Depth=2
	st.d	$a0, $s6, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s8, 3
	st.d	$a1, $a2, 0
	b	.LBB6_12
	.p2align	4, , 16
.LBB6_11:                               # %if.then114
                                        #   in Loop: Header=BB6_2 Depth=2
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ori	$a7, $zero, 97
	ld.d	$a6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
.LBB6_12:                               # %cond.end171
                                        #   in Loop: Header=BB6_2 Depth=2
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $a5, 0
	st.d	$a0, $s5, 0
	st.d	$s1, $s6, 0
	ld.d	$a1, $s1, 0
	st.d	$a1, $s4, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s1, 0
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s6, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s4, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s5, 0
	ld.d	$a0, $a5, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s5, 0
	st.d	$fp, $s6, 0
	beqz	$a0, .LBB6_14
# %bb.13:                               # %cond.false180
                                        #   in Loop: Header=BB6_2 Depth=2
	ld.d	$a1, $fp, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s4, 0
	st.d	$a2, $fp, 16
	st.d	$fp, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB6_14:                               # %cond.end204
                                        #   in Loop: Header=BB6_2 Depth=2
	ld.hu	$a1, $s0, 0
	ld.h	$a0, $s1, 64
	bstrpick.d	$a1, $a1, 7, 7
	bstrins.d	$a0, $a1, 7, 7
	st.h	$a0, $s1, 64
	ld.hu	$a1, $s0, 0
	bstrpick.d	$a1, $a1, 8, 8
	move	$a2, $a0
	bstrins.d	$a2, $a1, 8, 8
	st.h	$a2, $s1, 64
	ld.hu	$a1, $s0, 0
	bstrpick.d	$a1, $a1, 9, 9
	bstrins.d	$a2, $a1, 9, 9
	st.h	$a2, $s1, 64
	ld.hu	$a1, $s0, 0
	bstrpick.d	$a1, $a1, 12, 10
	bstrins.d	$a2, $a1, 12, 10
	st.h	$a2, $s1, 64
	ld.hu	$a1, $s0, 0
	srli.d	$a1, $a1, 13
	bstrins.d	$a2, $a1, 63, 13
	st.h	$a2, $s1, 64
	ld.h	$a1, $s0, 2
	st.h	$a1, $s1, 66
	ld.bu	$a1, $s0, 4
	ld.b	$a2, $s1, 68
	andi	$a1, $a1, 3
	bstrins.d	$a2, $a1, 1, 0
	st.b	$a2, $s1, 68
	ld.bu	$a1, $s0, 4
	bstrpick.d	$a1, $a1, 3, 2
	bstrins.d	$a2, $a1, 3, 2
	st.b	$a2, $s1, 68
	ld.bu	$a1, $s0, 4
	andi	$a2, $a2, 143
	srli.d	$a1, $a1, 4
	bstrins.d	$a2, $a1, 6, 4
	st.b	$a2, $s1, 68
	ld.bu	$a1, $s0, 0
	bstrpick.d	$a1, $a1, 3, 3
	bstrins.d	$a0, $a1, 3, 3
	st.b	$a0, $s1, 64
	ld.hu	$a1, $s0, 4
	ld.h	$a2, $s1, 68
	bstrpick.d	$a1, $a1, 7, 7
	bstrins.d	$a2, $a1, 7, 7
	st.h	$a2, $s1, 68
	ld.hu	$a1, $s0, 4
	bstrpick.d	$a1, $a1, 8, 8
	bstrins.d	$a2, $a1, 8, 8
	st.h	$a2, $s1, 68
	ld.hu	$a1, $s0, 4
	bstrpick.d	$a1, $a1, 9, 9
	bstrins.d	$a2, $a1, 9, 9
	st.h	$a2, $s1, 68
	ld.hu	$a1, $s0, 4
	bstrpick.d	$a1, $a1, 12, 10
	bstrins.d	$a2, $a1, 12, 10
	st.h	$a2, $s1, 68
	ld.hu	$a1, $s0, 4
	srli.d	$a1, $a1, 13
	bstrins.d	$a2, $a1, 63, 13
	st.h	$a2, $s1, 68
	ld.h	$a1, $s0, 6
	st.h	$a1, $s1, 70
	ld.wu	$a1, $s0, 12
	ld.w	$a2, $s1, 76
	andi	$a1, $a1, 4095
	bstrins.d	$a2, $a1, 11, 0
	st.w	$a2, $s1, 76
	ld.wu	$a1, $s0, 12
	bstrpick.d	$a1, $a1, 21, 12
	bstrins.d	$a2, $a1, 21, 12
	st.w	$a2, $s1, 76
	ld.wu	$a1, $s0, 12
	bstrpick.d	$a1, $a1, 23, 22
	bstrins.d	$a2, $a1, 23, 22
	st.w	$a2, $s1, 76
	ld.wu	$a1, $s0, 12
	bstrpick.d	$a1, $a1, 29, 24
	bstrins.d	$a2, $a1, 29, 24
	st.w	$a2, $s1, 76
	ld.w	$a1, $s0, 12
	srli.d	$a1, $a1, 31
	bstrins.d	$a2, $a1, 63, 31
	st.w	$a2, $s1, 76
	ld.wu	$a1, $s0, 12
	and	$a2, $a2, $s3
	srli.d	$a1, $a1, 30
	bstrins.d	$a2, $a1, 30, 30
	st.w	$a2, $s1, 76
	ld.bu	$a1, $s0, 0
	srli.d	$a0, $a0, 1
	bstrins.d	$a1, $a0, 63, 1
	st.b	$a1, $s1, 64
	ld.bu	$a0, $s0, 0
	bstrpick.d	$a0, $a0, 1, 1
	bstrins.d	$a1, $a0, 1, 1
	st.b	$a1, $s1, 64
	ld.bu	$a0, $s0, 0
	bstrpick.d	$a0, $a0, 2, 2
	bstrins.d	$a1, $a0, 2, 2
	st.b	$a1, $s1, 64
	ld.bu	$a0, $s0, 0
	andi	$a1, $a1, 143
	srli.d	$a0, $a0, 4
	bstrins.d	$a1, $a0, 6, 4
	st.b	$a1, $s1, 64
	ld.h	$a0, $s0, 8
	st.h	$a0, $s1, 72
	ld.h	$a0, $s0, 10
	st.h	$a0, $s1, 74
	ld.hu	$a0, $s1, 42
	ld.b	$a1, $s0, 0
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	and	$a0, $a0, $a2
	bstrpick.d	$a1, $a1, 54, 2
	bstrins.d	$a0, $a1, 11, 11
	st.h	$a0, $s1, 42
	move	$fp, $s1
	ld.bu	$a0, $fp, 32
	addi.d	$a1, $a0, -2
	bgeu	$a7, $a1, .LBB6_2
	b	.LBB6_23
	.p2align	4, , 16
.LBB6_15:                               # %sw.bb539
                                        #   in Loop: Header=BB6_1 Depth=1
	ld.d	$a0, $fp, 0
	.p2align	4, , 16
.LBB6_16:                               # %for.cond546
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB6_16
# %bb.17:                               # %for.end557
                                        #   in Loop: Header=BB6_1 Depth=1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	andi	$a1, $a1, 1
	masknez	$a2, $fp, $a1
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	b	.LBB6_1
.LBB6_18:                               # %sw.bb512
	ld.d	$s1, $fp, 8
	beq	$s1, $fp, .LBB6_43
	.p2align	4, , 16
.LBB6_19:                               # %land.rhs
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_21 Depth 2
	ld.d	$a0, $a4, 0
	beqz	$a0, .LBB6_43
# %bb.20:                               # %for.cond523.preheader
                                        #   in Loop: Header=BB6_19 Depth=1
	move	$a0, $s1
	.p2align	4, , 16
.LBB6_21:                               # %for.cond523
                                        #   Parent Loop BB6_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB6_21
# %bb.22:                               # %for.end
                                        #   in Loop: Header=BB6_19 Depth=1
	move	$a1, $a4
	move	$a2, $s0
	pcaddu18i	$ra, %call36(InsertObject)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s1, $s1, 8
	bne	$s1, $fp, .LBB6_19
	b	.LBB6_43
.LBB6_23:                               # %sw.default
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s0, $a1, 0
	pcaddu18i	$ra, %call36(Image)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a5, $a0, %pc_lo12(.L.str.8)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 3
	move	$a3, $zero
	move	$a4, $s0
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB6_43
.LBB6_24:                               # %sw.bb559
	ld.bu	$a0, $s2, 1
	slli.d	$a1, $a0, 3
	ldx.d	$s0, $s8, $a1
	st.w	$a0, $a6, 0
	beqz	$s0, .LBB6_26
# %bb.25:                               # %if.else573
	st.d	$s0, $s6, 0
	ld.d	$a1, $s0, 0
	alsl.d	$a0, $a0, $s8, 3
	st.d	$a1, $a0, 0
	b	.LBB6_27
.LBB6_26:                               # %if.then571
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	move	$s0, $a0
	st.d	$a0, $s6, 0
.LBB6_27:                               # %if.end582
	ori	$a0, $zero, 1
	st.b	$a0, $s0, 32
	st.d	$s0, $s0, 24
	st.d	$s0, $s0, 16
	ld.hu	$a0, $s0, 44
	st.d	$s0, $s0, 8
	st.d	$s0, $s0, 0
	ori	$a1, $zero, 76
	bstrins.d	$a0, $a1, 63, 7
	st.h	$a0, $s0, 44
	st.h	$zero, $s0, 46
	st.h	$zero, $s0, 41
	ld.wu	$a0, $s0, 40
	lu12i.w	$a1, -393217
	ori	$s1, $a1, 4095
	lu32i.d	$s1, 0
	and	$a0, $a0, $s1
	ld.bu	$a2, $s2, 0
	lu12i.w	$s3, 131072
	or	$a0, $a0, $s3
	st.w	$a0, $s0, 40
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s8, $a0
	st.w	$a2, $a6, 0
	beqz	$a0, .LBB6_29
# %bb.28:                               # %if.else637
	st.d	$a0, $s6, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s8, 3
	st.d	$a1, $a2, 0
	b	.LBB6_30
.LBB6_29:                               # %if.then635
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
.LBB6_30:                               # %if.end646
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a1, $fp, 8
	st.d	$a0, $a5, 0
	st.d	$a0, $s5, 0
	st.d	$a1, $s6, 0
	beqz	$a1, .LBB6_32
# %bb.31:                               # %cond.end695
	ld.d	$a2, $a1, 0
	st.d	$a2, $s4, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s6, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s4, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s5, 0
	ld.d	$a0, $a5, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s5, 0
	st.d	$s0, $s6, 0
	bnez	$a0, .LBB6_33
	b	.LBB6_34
.LBB6_32:                               # %cond.end695.thread
	st.d	$s0, $s6, 0
.LBB6_33:                               # %cond.false704
	ld.d	$a1, $s0, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s4, 0
	st.d	$a2, $s0, 16
	st.d	$s0, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB6_34:                               # %cond.end728
	ld.bu	$a2, $s2, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s8, $a0
	st.w	$a2, $a6, 0
	beqz	$a0, .LBB6_36
# %bb.35:                               # %if.else743
	st.d	$a0, $s6, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s8, 3
	st.d	$a1, $a2, 0
	b	.LBB6_37
.LBB6_36:                               # %if.then741
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
.LBB6_37:                               # %if.end752
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a1, $fp, 8
	st.d	$a0, $a5, 0
	st.d	$a0, $s5, 0
	st.d	$a1, $s6, 0
	beqz	$a1, .LBB6_39
# %bb.38:                               # %cond.false777
	ld.d	$a2, $a1, 0
	st.d	$a2, $s4, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s6, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s4, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s5, 0
	ld.d	$a0, $a5, 0
	st.d	$a1, $a3, 8
.LBB6_39:                               # %cond.end801
	st.d	$a0, $s5, 0
	ld.d	$a1, $a4, 0
	st.d	$a1, $s6, 0
	beqz	$a1, .LBB6_42
# %bb.40:                               # %cond.end801
	beqz	$a0, .LBB6_42
# %bb.41:                               # %cond.false810
	ld.d	$a2, $a1, 16
	ld.d	$a3, $a0, 16
	st.d	$a2, $s4, 0
	st.d	$a3, $a1, 16
	st.d	$a1, $a3, 24
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
	ld.d	$a1, $a4, 0
.LBB6_42:                               # %cond.end834
	ld.wu	$a0, $a1, 40
	and	$a0, $a0, $s1
	or	$a0, $a0, $s3
	st.w	$a0, $a1, 40
	st.d	$zero, $a4, 0
.LBB6_43:                               # %sw.epilog
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	andi	$a0, $a0, 1
	masknez	$a1, $fp, $a0
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end6:
	.size	InsertObject, .Lfunc_end6-InsertObject
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI6_0:
	.word	.LBB6_43-.LJTI6_0
	.word	.LBB6_23-.LJTI6_0
	.word	.LBB6_43-.LJTI6_0
	.word	.LBB6_43-.LJTI6_0
	.word	.LBB6_43-.LJTI6_0
	.word	.LBB6_43-.LJTI6_0
	.word	.LBB6_43-.LJTI6_0
	.word	.LBB6_18-.LJTI6_0
	.word	.LBB6_23-.LJTI6_0
	.word	.LBB6_3-.LJTI6_0
	.word	.LBB6_3-.LJTI6_0
	.word	.LBB6_23-.LJTI6_0
	.word	.LBB6_23-.LJTI6_0
	.word	.LBB6_18-.LJTI6_0
	.word	.LBB6_18-.LJTI6_0
	.word	.LBB6_24-.LJTI6_0
	.word	.LBB6_18-.LJTI6_0
	.word	.LBB6_18-.LJTI6_0
	.word	.LBB6_43-.LJTI6_0
	.word	.LBB6_43-.LJTI6_0
	.word	.LBB6_43-.LJTI6_0
	.word	.LBB6_43-.LJTI6_0
	.word	.LBB6_15-.LJTI6_0
	.word	.LBB6_15-.LJTI6_0
	.word	.LBB6_15-.LJTI6_0
	.word	.LBB6_15-.LJTI6_0
	.word	.LBB6_15-.LJTI6_0
	.word	.LBB6_15-.LJTI6_0
	.word	.LBB6_15-.LJTI6_0
	.word	.LBB6_15-.LJTI6_0
	.word	.LBB6_15-.LJTI6_0
	.word	.LBB6_15-.LJTI6_0
	.word	.LBB6_15-.LJTI6_0
	.word	.LBB6_15-.LJTI6_0
	.word	.LBB6_15-.LJTI6_0
	.word	.LBB6_15-.LJTI6_0
	.word	.LBB6_15-.LJTI6_0
	.word	.LBB6_15-.LJTI6_0
	.word	.LBB6_15-.LJTI6_0
	.word	.LBB6_15-.LJTI6_0
	.word	.LBB6_15-.LJTI6_0
	.word	.LBB6_15-.LJTI6_0
	.word	.LBB6_15-.LJTI6_0
	.word	.LBB6_43-.LJTI6_0
	.word	.LBB6_43-.LJTI6_0
	.word	.LBB6_15-.LJTI6_0
	.word	.LBB6_15-.LJTI6_0
	.word	.LBB6_15-.LJTI6_0
	.word	.LBB6_15-.LJTI6_0
	.word	.LBB6_15-.LJTI6_0
	.word	.LBB6_23-.LJTI6_0
	.word	.LBB6_23-.LJTI6_0
	.word	.LBB6_23-.LJTI6_0
	.word	.LBB6_23-.LJTI6_0
	.word	.LBB6_23-.LJTI6_0
	.word	.LBB6_23-.LJTI6_0
	.word	.LBB6_23-.LJTI6_0
	.word	.LBB6_23-.LJTI6_0
	.word	.LBB6_23-.LJTI6_0
	.word	.LBB6_23-.LJTI6_0
	.word	.LBB6_23-.LJTI6_0
	.word	.LBB6_23-.LJTI6_0
	.word	.LBB6_23-.LJTI6_0
	.word	.LBB6_23-.LJTI6_0
	.word	.LBB6_23-.LJTI6_0
	.word	.LBB6_23-.LJTI6_0
	.word	.LBB6_23-.LJTI6_0
	.word	.LBB6_23-.LJTI6_0
	.word	.LBB6_23-.LJTI6_0
	.word	.LBB6_23-.LJTI6_0
	.word	.LBB6_23-.LJTI6_0
	.word	.LBB6_23-.LJTI6_0
	.word	.LBB6_23-.LJTI6_0
	.word	.LBB6_23-.LJTI6_0
	.word	.LBB6_23-.LJTI6_0
	.word	.LBB6_23-.LJTI6_0
	.word	.LBB6_23-.LJTI6_0
	.word	.LBB6_23-.LJTI6_0
	.word	.LBB6_23-.LJTI6_0
	.word	.LBB6_23-.LJTI6_0
	.word	.LBB6_23-.LJTI6_0
	.word	.LBB6_23-.LJTI6_0
	.word	.LBB6_23-.LJTI6_0
	.word	.LBB6_23-.LJTI6_0
	.word	.LBB6_23-.LJTI6_0
	.word	.LBB6_23-.LJTI6_0
	.word	.LBB6_23-.LJTI6_0
	.word	.LBB6_23-.LJTI6_0
	.word	.LBB6_23-.LJTI6_0
	.word	.LBB6_23-.LJTI6_0
	.word	.LBB6_23-.LJTI6_0
	.word	.LBB6_23-.LJTI6_0
	.word	.LBB6_43-.LJTI6_0
	.word	.LBB6_43-.LJTI6_0
	.word	.LBB6_15-.LJTI6_0
	.word	.LBB6_15-.LJTI6_0
	.word	.LBB6_15-.LJTI6_0
	.word	.LBB6_15-.LJTI6_0
                                        # -- End function
	.text
	.globl	Meld                            # -- Begin function Meld
	.p2align	5
	.type	Meld,@function
Meld:                                   # @Meld
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
	addi.d	$sp, $sp, -1184
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ld.bu	$a0, $a0, 32
	ori	$fp, $zero, 17
	move	$s1, $a1
	bne	$a0, $fp, .LBB7_42
# %bb.1:                                # %if.end
	ld.bu	$a0, $s1, 32
	bne	$a0, $fp, .LBB7_43
.LBB7_2:                                # %if.end9
	ld.d	$fp, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s4, $fp, 8
	st.d	$zero, $sp, 824
	beq	$s4, $fp, .LBB7_44
.LBB7_3:                                # %for.cond15.preheader.preheader
	ori	$a0, $zero, 1
	ori	$a1, $zero, 9
	addi.w	$a2, $zero, -91
	ori	$a3, $zero, 91
	b	.LBB7_6
	.p2align	4, , 16
.LBB7_4:                                # %cond.false
                                        #   in Loop: Header=BB7_6 Depth=1
	addi.d	$a4, $a4, -9
	bltu	$a4, $a3, .LBB7_16
.LBB7_5:                                # %for.inc55
                                        #   in Loop: Header=BB7_6 Depth=1
	ld.d	$s4, $s4, 8
	beq	$s4, $fp, .LBB7_16
.LBB7_6:                                # %for.cond15.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_7 Depth 2
                                        #     Child Loop BB7_11 Depth 2
                                        #     Child Loop BB7_13 Depth 2
	move	$s6, $s4
	.p2align	4, , 16
.LBB7_7:                                # %for.cond15
                                        #   Parent Loop BB7_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s6, $s6, 16
	ld.bu	$a4, $s6, 32
	beqz	$a4, .LBB7_7
# %bb.8:                                # %for.cond15
                                        #   in Loop: Header=BB7_6 Depth=1
	beq	$a4, $a0, .LBB7_5
# %bb.9:                                # %for.cond15
                                        #   in Loop: Header=BB7_6 Depth=1
	bne	$a4, $a1, .LBB7_4
# %bb.10:                               # %if.end.i
                                        #   in Loop: Header=BB7_6 Depth=1
	ld.d	$a5, $s6, 8
	.p2align	4, , 16
.LBB7_11:                               # %for.cond.i
                                        #   Parent Loop BB7_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a5, 16
	ld.bu	$a4, $a5, 32
	beqz	$a4, .LBB7_11
# %bb.12:                               # %for.end.i
                                        #   in Loop: Header=BB7_6 Depth=1
	ld.d	$a6, $s6, 0
	.p2align	4, , 16
.LBB7_13:                               # %for.cond18.i
                                        #   Parent Loop BB7_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a6, 16
	ld.bu	$a5, $a6, 32
	beqz	$a5, .LBB7_13
# %bb.14:                               # %SplitIsDefinite.exit
                                        #   in Loop: Header=BB7_6 Depth=1
	addi.d	$a4, $a4, -100
	bltu	$a4, $a2, .LBB7_5
# %bb.15:                               # %SplitIsDefinite.exit
                                        #   in Loop: Header=BB7_6 Depth=1
	addi.d	$a4, $a5, -100
	bltu	$a4, $a2, .LBB7_5
.LBB7_16:                               # %for.end59
	beq	$s4, $fp, .LBB7_45
.LBB7_17:                               # %while.body.preheader
	move	$s5, $zero
	addi.d	$a0, $fp, 32
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$s7, $zero, 1
	ori	$s3, $zero, 32
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$s8, $zero, 9
	addi.w	$s0, $zero, -91
	ori	$s2, $zero, 90
	ori	$a5, $zero, 1
	b	.LBB7_20
	.p2align	4, , 16
.LBB7_18:                               #   in Loop: Header=BB7_20 Depth=1
	move	$s5, $zero
.LBB7_19:                               # %for.end146
                                        #   in Loop: Header=BB7_20 Depth=1
	addi.d	$a5, $a5, 1
	beq	$s4, $fp, .LBB7_46
.LBB7_20:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_26 Depth 2
                                        #       Child Loop BB7_27 Depth 3
                                        #       Child Loop BB7_33 Depth 3
                                        #       Child Loop BB7_35 Depth 3
	bltu	$a5, $s3, .LBB7_22
# %bb.21:                               # %if.then64
                                        #   in Loop: Header=BB7_20 Depth=1
	ori	$a0, $zero, 7
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	ori	$a6, $zero, 31
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	move	$s3, $a5
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a5, $s3
	ori	$s3, $zero, 32
.LBB7_22:                               # %if.end67
                                        #   in Loop: Header=BB7_20 Depth=1
	slli.d	$a0, $a5, 3
	addi.d	$a1, $sp, 824
	stx.d	$s6, $a0, $a1
	addi.d	$a1, $sp, 312
	stx.d	$s5, $a0, $a1
	ld.d	$s4, $s4, 8
	beq	$s4, $fp, .LBB7_18
# %bb.23:                               # %for.cond83.preheader.preheader
                                        #   in Loop: Header=BB7_20 Depth=1
	move	$s5, $zero
	ori	$a0, $zero, 1
	b	.LBB7_26
	.p2align	4, , 16
.LBB7_24:                               # %cond.false120
                                        #   in Loop: Header=BB7_26 Depth=2
	addi.d	$a1, $a1, -9
	bgeu	$s2, $a1, .LBB7_40
.LBB7_25:                               # %for.inc142
                                        #   in Loop: Header=BB7_26 Depth=2
	ld.d	$s4, $s4, 8
	beq	$s4, $fp, .LBB7_19
.LBB7_26:                               # %for.cond83.preheader
                                        #   Parent Loop BB7_20 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_27 Depth 3
                                        #       Child Loop BB7_33 Depth 3
                                        #       Child Loop BB7_35 Depth 3
	move	$s6, $s4
	.p2align	4, , 16
.LBB7_27:                               # %for.cond83
                                        #   Parent Loop BB7_20 Depth=1
                                        #     Parent Loop BB7_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s6, $s6, 16
	ld.bu	$a1, $s6, 32
	beqz	$a1, .LBB7_27
# %bb.28:                               # %for.cond83
                                        #   in Loop: Header=BB7_26 Depth=2
	beq	$a1, $s8, .LBB7_32
# %bb.29:                               # %for.cond83
                                        #   in Loop: Header=BB7_26 Depth=2
	bne	$a1, $s7, .LBB7_24
# %bb.30:                               # %if.then100
                                        #   in Loop: Header=BB7_26 Depth=2
	beqz	$a0, .LBB7_38
# %bb.31:                               # %land.rhs102
                                        #   in Loop: Header=BB7_26 Depth=2
	ld.hu	$a0, $s6, 44
	bstrpick.d	$a0, $a0, 9, 9
	b	.LBB7_39
	.p2align	4, , 16
.LBB7_32:                               # %if.end.i258
                                        #   in Loop: Header=BB7_26 Depth=2
	ld.d	$a2, $s6, 8
	.p2align	4, , 16
.LBB7_33:                               # %for.cond.i260
                                        #   Parent Loop BB7_20 Depth=1
                                        #     Parent Loop BB7_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $a2, 16
	ld.bu	$a1, $a2, 32
	beqz	$a1, .LBB7_33
# %bb.34:                               # %for.end.i266
                                        #   in Loop: Header=BB7_26 Depth=2
	ld.d	$a2, $s6, 0
	.p2align	4, , 16
.LBB7_35:                               # %for.cond18.i267
                                        #   Parent Loop BB7_20 Depth=1
                                        #     Parent Loop BB7_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $a2, 16
	ld.bu	$a3, $a2, 32
	beqz	$a3, .LBB7_35
# %bb.36:                               # %SplitIsDefinite.exit276
                                        #   in Loop: Header=BB7_26 Depth=2
	addi.d	$a1, $a1, -100
	bltu	$a1, $s0, .LBB7_25
# %bb.37:                               # %SplitIsDefinite.exit276
                                        #   in Loop: Header=BB7_26 Depth=2
	addi.d	$a1, $a3, -100
	bltu	$a1, $s0, .LBB7_25
	b	.LBB7_40
.LBB7_38:                               #   in Loop: Header=BB7_26 Depth=2
	move	$a0, $zero
.LBB7_39:                               # %for.inc142
                                        #   in Loop: Header=BB7_26 Depth=2
	move	$s5, $s6
	b	.LBB7_25
	.p2align	4, , 16
.LBB7_40:                               # %if.then134
                                        #   in Loop: Header=BB7_20 Depth=1
	bnez	$s5, .LBB7_19
# %bb.41:                               # %if.then137
                                        #   in Loop: Header=BB7_20 Depth=1
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	move	$s5, $a5
	addi.d	$a5, $a0, %pc_lo12(.L.str.13)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a5, $s5
	b	.LBB7_18
.LBB7_42:                               # %if.then
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
	ld.bu	$a0, $s1, 32
	beq	$a0, $fp, .LBB7_2
.LBB7_43:                               # %if.then7
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
	ld.d	$fp, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s4, $fp, 8
	st.d	$zero, $sp, 824
	bne	$s4, $fp, .LBB7_3
.LBB7_44:
                                        # implicit-def: $r29
	bne	$s4, $fp, .LBB7_17
.LBB7_45:
	ori	$a5, $zero, 1
.LBB7_46:                               # %while.end
	st.d	$a5, $sp, 40                    # 8-byte Folded Spill
	ld.d	$s8, $s1, 8
	st.d	$zero, $sp, 568
	beq	$s8, $s1, .LBB7_60
# %bb.47:                               # %for.cond160.preheader.preheader
	ori	$a0, $zero, 1
	ori	$a1, $zero, 9
	addi.w	$a2, $zero, -91
	ori	$a3, $zero, 91
	b	.LBB7_50
	.p2align	4, , 16
.LBB7_48:                               # %cond.false197
                                        #   in Loop: Header=BB7_50 Depth=1
	addi.d	$a4, $a4, -9
	bltu	$a4, $a3, .LBB7_60
.LBB7_49:                               # %for.inc214
                                        #   in Loop: Header=BB7_50 Depth=1
	ld.d	$s8, $s8, 8
	beq	$s8, $s1, .LBB7_60
.LBB7_50:                               # %for.cond160.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_51 Depth 2
                                        #     Child Loop BB7_55 Depth 2
                                        #     Child Loop BB7_57 Depth 2
	move	$s6, $s8
	.p2align	4, , 16
.LBB7_51:                               # %for.cond160
                                        #   Parent Loop BB7_50 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s6, $s6, 16
	ld.bu	$a4, $s6, 32
	beqz	$a4, .LBB7_51
# %bb.52:                               # %for.cond160
                                        #   in Loop: Header=BB7_50 Depth=1
	beq	$a4, $a0, .LBB7_49
# %bb.53:                               # %for.cond160
                                        #   in Loop: Header=BB7_50 Depth=1
	bne	$a4, $a1, .LBB7_48
# %bb.54:                               # %if.end.i281
                                        #   in Loop: Header=BB7_50 Depth=1
	ld.d	$a5, $s6, 8
	.p2align	4, , 16
.LBB7_55:                               # %for.cond.i283
                                        #   Parent Loop BB7_50 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a5, 16
	ld.bu	$a4, $a5, 32
	beqz	$a4, .LBB7_55
# %bb.56:                               # %for.end.i289
                                        #   in Loop: Header=BB7_50 Depth=1
	ld.d	$a6, $s6, 0
	.p2align	4, , 16
.LBB7_57:                               # %for.cond18.i290
                                        #   Parent Loop BB7_50 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a6, 16
	ld.bu	$a5, $a6, 32
	beqz	$a5, .LBB7_57
# %bb.58:                               # %SplitIsDefinite.exit299
                                        #   in Loop: Header=BB7_50 Depth=1
	addi.d	$a4, $a4, -100
	bltu	$a4, $a2, .LBB7_49
# %bb.59:                               # %SplitIsDefinite.exit299
                                        #   in Loop: Header=BB7_50 Depth=1
	addi.d	$a4, $a5, -100
	bltu	$a4, $a2, .LBB7_49
.LBB7_60:                               # %for.end218
	move	$s0, $zero
	beq	$s8, $s1, .LBB7_88
# %bb.61:                               # %while.body222.preheader
	addi.d	$a0, $s1, 32
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$s2, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$s3, $zero, 9
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.w	$s4, $zero, -91
	ori	$s5, $zero, 90
	ori	$a6, $zero, 1
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	b	.LBB7_64
	.p2align	4, , 16
.LBB7_62:                               #   in Loop: Header=BB7_64 Depth=1
	move	$s0, $zero
.LBB7_63:                               # %for.end307
                                        #   in Loop: Header=BB7_64 Depth=1
	addi.d	$a6, $s7, 1
	beq	$s8, $s1, .LBB7_86
.LBB7_64:                               # %while.body222
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_70 Depth 2
                                        #       Child Loop BB7_71 Depth 3
                                        #       Child Loop BB7_77 Depth 3
                                        #       Child Loop BB7_79 Depth 3
	move	$s7, $a6
	ori	$a0, $zero, 32
	bltu	$a6, $a0, .LBB7_66
# %bb.65:                               # %if.then225
                                        #   in Loop: Header=BB7_64 Depth=1
	ori	$a0, $zero, 7
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	ori	$a6, $zero, 31
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
.LBB7_66:                               # %if.end228
                                        #   in Loop: Header=BB7_64 Depth=1
	slli.d	$a0, $s7, 3
	addi.d	$a1, $sp, 568
	stx.d	$s6, $a0, $a1
	addi.d	$a1, $sp, 56
	stx.d	$s0, $a0, $a1
	ld.d	$s8, $s8, 8
	beq	$s8, $s1, .LBB7_62
# %bb.67:                               # %for.cond244.preheader.preheader
                                        #   in Loop: Header=BB7_64 Depth=1
	move	$s0, $zero
	ori	$a0, $zero, 1
	b	.LBB7_70
	.p2align	4, , 16
.LBB7_68:                               # %cond.false281
                                        #   in Loop: Header=BB7_70 Depth=2
	addi.d	$a1, $a1, -9
	bgeu	$s5, $a1, .LBB7_84
.LBB7_69:                               # %for.inc303
                                        #   in Loop: Header=BB7_70 Depth=2
	ld.d	$s8, $s8, 8
	beq	$s8, $s1, .LBB7_63
.LBB7_70:                               # %for.cond244.preheader
                                        #   Parent Loop BB7_64 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_71 Depth 3
                                        #       Child Loop BB7_77 Depth 3
                                        #       Child Loop BB7_79 Depth 3
	move	$s6, $s8
	.p2align	4, , 16
.LBB7_71:                               # %for.cond244
                                        #   Parent Loop BB7_64 Depth=1
                                        #     Parent Loop BB7_70 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s6, $s6, 16
	ld.bu	$a1, $s6, 32
	beqz	$a1, .LBB7_71
# %bb.72:                               # %for.cond244
                                        #   in Loop: Header=BB7_70 Depth=2
	beq	$a1, $s3, .LBB7_76
# %bb.73:                               # %for.cond244
                                        #   in Loop: Header=BB7_70 Depth=2
	bne	$a1, $s2, .LBB7_68
# %bb.74:                               # %if.then261
                                        #   in Loop: Header=BB7_70 Depth=2
	beqz	$a0, .LBB7_82
# %bb.75:                               # %land.rhs263
                                        #   in Loop: Header=BB7_70 Depth=2
	ld.hu	$a0, $s6, 44
	bstrpick.d	$a0, $a0, 9, 9
	b	.LBB7_83
	.p2align	4, , 16
.LBB7_76:                               # %if.end.i304
                                        #   in Loop: Header=BB7_70 Depth=2
	ld.d	$a2, $s6, 8
	.p2align	4, , 16
.LBB7_77:                               # %for.cond.i306
                                        #   Parent Loop BB7_64 Depth=1
                                        #     Parent Loop BB7_70 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $a2, 16
	ld.bu	$a1, $a2, 32
	beqz	$a1, .LBB7_77
# %bb.78:                               # %for.end.i312
                                        #   in Loop: Header=BB7_70 Depth=2
	ld.d	$a2, $s6, 0
	.p2align	4, , 16
.LBB7_79:                               # %for.cond18.i313
                                        #   Parent Loop BB7_64 Depth=1
                                        #     Parent Loop BB7_70 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $a2, 16
	ld.bu	$a3, $a2, 32
	beqz	$a3, .LBB7_79
# %bb.80:                               # %SplitIsDefinite.exit322
                                        #   in Loop: Header=BB7_70 Depth=2
	addi.d	$a1, $a1, -100
	bltu	$a1, $s4, .LBB7_69
# %bb.81:                               # %SplitIsDefinite.exit322
                                        #   in Loop: Header=BB7_70 Depth=2
	addi.d	$a1, $a3, -100
	bltu	$a1, $s4, .LBB7_69
	b	.LBB7_84
.LBB7_82:                               #   in Loop: Header=BB7_70 Depth=2
	move	$a0, $zero
.LBB7_83:                               # %for.inc303
                                        #   in Loop: Header=BB7_70 Depth=2
	move	$s0, $s6
	b	.LBB7_69
	.p2align	4, , 16
.LBB7_84:                               # %if.then295
                                        #   in Loop: Header=BB7_64 Depth=1
	bnez	$s0, .LBB7_63
# %bb.85:                               # %if.then298
                                        #   in Loop: Header=BB7_64 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a5, $a0, %pc_lo12(.L.str.13)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	b	.LBB7_62
.LBB7_86:                               # %while.end308
	ori	$a0, $zero, 2104
	add.d	$a0, $sp, $a0
	st.b	$zero, $a0, 0
	addi.w	$a0, $a5, 0
	ori	$a1, $zero, 1
	st.b	$zero, $sp, 1080
	bltu	$a1, $a0, .LBB7_89
# %bb.87:                               # %for.cond339.preheader
	ori	$a0, $zero, 2105
	add.d	$a0, $sp, $a0
	bstrpick.d	$s1, $s7, 31, 0
	move	$a1, $zero
	move	$a2, $s1
	move	$s2, $a6
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1081
	ori	$a1, $zero, 2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a6, $s2
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	b	.LBB7_115
.LBB7_88:                               # %while.end308.thread
	ori	$a0, $zero, 2104
	add.d	$a0, $sp, $a0
	st.b	$zero, $a0, 0
	st.b	$zero, $sp, 1080
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	addi.w	$a0, $a5, 0
	ori	$a1, $zero, 2
	ori	$a6, $zero, 1
	bltu	$a0, $a1, .LBB7_115
.LBB7_89:                               # %for.body316.preheader
	bstrpick.d	$a0, $a5, 31, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a2, $a0, -1
	ori	$a0, $zero, 1
	ori	$a3, $zero, 2
	ori	$a1, $zero, 1
	bltu	$a2, $a3, .LBB7_93
# %bb.90:                               # %vector.ph
	move	$t0, $a6
	move	$a3, $a2
	bstrins.d	$a3, $zero, 0, 0
	ori	$a1, $a2, 1
	ori	$a4, $zero, 2168
	add.d	$a4, $sp, $a4
	addi.d	$a5, $sp, 1144
	ori	$a6, $zero, 1
	move	$a7, $a3
	.p2align	4, , 16
.LBB7_91:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	st.b	$zero, $a4, -32
	st.b	$zero, $a4, 0
	st.b	$a6, $a5, -32
	st.b	$a6, $a5, 0
	addi.d	$a4, $a4, 64
	addi.d	$a7, $a7, -2
	addi.d	$a5, $a5, 64
	bnez	$a7, .LBB7_91
# %bb.92:                               # %middle.block
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	move	$a6, $t0
	beq	$a2, $a3, .LBB7_95
.LBB7_93:                               # %for.body316.preheader671
	slli.d	$a3, $a1, 5
	addi.d	$a2, $sp, 1080
	add.d	$a2, $a2, $a3
	ori	$a4, $zero, 2104
	add.d	$a4, $sp, $a4
	add.d	$a3, $a4, $a3
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	sub.d	$a1, $a4, $a1
	.p2align	4, , 16
.LBB7_94:                               # %for.body316
                                        # =>This Inner Loop Header: Depth=1
	st.b	$zero, $a3, 0
	st.b	$a0, $a2, 0
	addi.d	$a2, $a2, 32
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 32
	bnez	$a1, .LBB7_94
.LBB7_95:                               # %for.cond326.preheader
	addi.w	$a0, $a6, 0
	ori	$s3, $zero, 1
	bgeu	$s3, $a0, .LBB7_115
# %bb.96:                               # %for.cond343.preheader.us.preheader
	ori	$a0, $zero, 2105
	add.d	$a0, $sp, $a0
	addi.d	$a1, $a6, -1
	bstrpick.d	$s1, $a1, 31, 0
	move	$a1, $zero
	move	$a2, $s1
	move	$fp, $a6
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1081
	ori	$a1, $zero, 2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	bstrpick.d	$a0, $fp, 31, 0
	addi.d	$s5, $a0, -1
	addi.d	$s6, $sp, 1113
	ori	$a0, $zero, 2137
	add.d	$a1, $sp, $a0
	ori	$a0, $zero, 2136
	add.d	$s2, $sp, $a0
	ori	$fp, $zero, 1
	b	.LBB7_98
	.p2align	4, , 16
.LBB7_97:                               # %for.cond343.for.inc468_crit_edge.us
                                        #   in Loop: Header=BB7_98 Depth=1
	addi.d	$fp, $fp, 1
	addi.d	$s6, $s6, 32
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 32
	addi.d	$s2, $s2, 32
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beq	$fp, $a0, .LBB7_114
.LBB7_98:                               # %for.cond343.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_103 Depth 2
                                        #     Child Loop BB7_109 Depth 2
	slli.d	$a0, $fp, 3
	addi.d	$a2, $sp, 824
	ldx.d	$a5, $a0, $a2
	ld.bu	$a0, $a5, 32
	addi.d	$a6, $a0, -11
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a2, $sp, 576
	move	$a3, $s6
	move	$a4, $s5
	ori	$a7, $zero, 2
	bgeu	$a6, $a7, .LBB7_103
# %bb.99:                               # %for.body346.us.us.preheader
                                        #   in Loop: Header=BB7_98 Depth=1
	move	$s4, $zero
	addi.d	$s1, $a5, 64
	addi.d	$s7, $sp, 576
	b	.LBB7_109
	.p2align	4, , 16
.LBB7_100:                              # %if.then404.us445
                                        #   in Loop: Header=BB7_103 Depth=2
	ld.b	$a5, $a1, -33
	addi.d	$a5, $a5, 1
	st.b	$a5, $a1, 0
	ori	$a5, $zero, 3
.LBB7_101:                              # %for.inc465.us453
                                        #   in Loop: Header=BB7_103 Depth=2
	st.b	$a5, $a3, 0
.LBB7_102:                              # %for.inc465.us453
                                        #   in Loop: Header=BB7_103 Depth=2
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 1
	beqz	$a4, .LBB7_97
.LBB7_103:                              # %for.body346.us430
                                        #   Parent Loop BB7_98 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a2, 0
	ld.bu	$a5, $a5, 32
	beq	$a0, $a5, .LBB7_100
# %bb.104:                              # %if.else420.us432
                                        #   in Loop: Header=BB7_103 Depth=2
	ld.b	$a5, $a1, -32
	ld.b	$a6, $a1, -1
	bge	$a6, $a5, .LBB7_106
# %bb.105:                              # %if.then435.us442
                                        #   in Loop: Header=BB7_103 Depth=2
	st.b	$a5, $a1, 0
	st.b	$s3, $a3, 0
	b	.LBB7_102
	.p2align	4, , 16
.LBB7_106:                              # %if.else449.us439
                                        #   in Loop: Header=BB7_103 Depth=2
	st.b	$a6, $a1, 0
	ori	$a5, $zero, 2
	b	.LBB7_101
	.p2align	4, , 16
.LBB7_107:                              # %if.then435.us.us
                                        #   in Loop: Header=BB7_109 Depth=2
	st.b	$a0, $s8, 1
	stx.b	$s3, $s6, $s4
.LBB7_108:                              # %for.inc465.us.us
                                        #   in Loop: Header=BB7_109 Depth=2
	addi.d	$s4, $s4, 1
	addi.d	$s7, $s7, 8
	beq	$s5, $s4, .LBB7_97
.LBB7_109:                              # %for.body346.us.us
                                        #   Parent Loop BB7_98 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s7, 0
	ld.bu	$a1, $a0, 32
	addi.d	$a1, $a1, -11
	add.d	$s8, $s2, $s4
	bltu	$s3, $a1, .LBB7_111
# %bb.110:                              # %if.end402.us.us
                                        #   in Loop: Header=BB7_109 Depth=2
	addi.d	$a1, $a0, 64
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_113
.LBB7_111:                              # %if.else420.us.us
                                        #   in Loop: Header=BB7_109 Depth=2
	ld.b	$a0, $s8, -31
	ldx.b	$a1, $s2, $s4
	blt	$a1, $a0, .LBB7_107
# %bb.112:                              # %if.else449.us.us
                                        #   in Loop: Header=BB7_109 Depth=2
	st.b	$a1, $s8, 1
	ori	$a0, $zero, 2
	stx.b	$a0, $s6, $s4
	b	.LBB7_108
.LBB7_113:                              # %if.then404.us.us
                                        #   in Loop: Header=BB7_109 Depth=2
	ld.b	$a0, $s8, -32
	addi.d	$a0, $a0, 1
	st.b	$a0, $s8, 1
	ori	$a0, $zero, 3
	stx.b	$a0, $s6, $s4
	b	.LBB7_108
.LBB7_114:
	ld.d	$fp, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 24                    # 8-byte Folded Reload
.LBB7_115:                              # %for.end470
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$a0, $a0, %got_pc_lo12(zz_lengths)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.bu	$a0, $a0, 17
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$s3, $a1, %got_pc_lo12(zz_free)
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s1, $a1, %got_pc_lo12(zz_size)
	slli.d	$a1, $a0, 3
	ldx.d	$s2, $s3, $a1
	st.w	$a0, $s1, 0
	beqz	$s2, .LBB7_117
# %bb.116:                              # %if.else484
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s2, $a1, 0
	ld.d	$a1, $s2, 0
	alsl.d	$a0, $a0, $s3, 3
	st.d	$a1, $a0, 0
	b	.LBB7_118
.LBB7_117:                              # %if.then482
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	move	$s2, $a6
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a6, $s2
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	move	$s2, $a0
	st.d	$a0, $a1, 0
.LBB7_118:                              # %if.end493
	ori	$a0, $zero, 17
	st.b	$a0, $s2, 32
	st.d	$s2, $s2, 24
	st.d	$s2, $s2, 16
	st.d	$s2, $s2, 8
	st.d	$s2, $s2, 0
	ld.hu	$a1, $fp, 64
	ld.h	$a0, $s2, 64
	bstrpick.d	$a1, $a1, 7, 7
	bstrins.d	$a0, $a1, 7, 7
	st.h	$a0, $s2, 64
	ld.hu	$a1, $fp, 64
	bstrpick.d	$a1, $a1, 8, 8
	move	$a2, $a0
	bstrins.d	$a2, $a1, 8, 8
	st.h	$a2, $s2, 64
	ld.hu	$a1, $fp, 64
	bstrpick.d	$a1, $a1, 9, 9
	bstrins.d	$a2, $a1, 9, 9
	st.h	$a2, $s2, 64
	ld.hu	$a1, $fp, 64
	bstrpick.d	$a1, $a1, 12, 10
	bstrins.d	$a2, $a1, 12, 10
	st.h	$a2, $s2, 64
	ld.hu	$a1, $fp, 64
	srli.d	$a1, $a1, 13
	bstrins.d	$a2, $a1, 63, 13
	st.h	$a2, $s2, 64
	ld.h	$a1, $fp, 66
	st.h	$a1, $s2, 66
	ld.bu	$a1, $fp, 68
	ld.b	$a2, $s2, 68
	andi	$a1, $a1, 3
	bstrins.d	$a2, $a1, 1, 0
	st.b	$a2, $s2, 68
	ld.bu	$a1, $fp, 68
	bstrpick.d	$a1, $a1, 3, 2
	bstrins.d	$a2, $a1, 3, 2
	st.b	$a2, $s2, 68
	ld.bu	$a1, $fp, 68
	andi	$a2, $a2, 143
	srli.d	$a1, $a1, 4
	bstrins.d	$a2, $a1, 6, 4
	st.b	$a2, $s2, 68
	ld.bu	$a1, $fp, 64
	bstrpick.d	$a1, $a1, 3, 3
	bstrins.d	$a0, $a1, 3, 3
	st.b	$a0, $s2, 64
	ld.hu	$a1, $fp, 68
	ld.h	$a2, $s2, 68
	bstrpick.d	$a1, $a1, 7, 7
	bstrins.d	$a2, $a1, 7, 7
	st.h	$a2, $s2, 68
	ld.hu	$a1, $fp, 68
	bstrpick.d	$a1, $a1, 8, 8
	bstrins.d	$a2, $a1, 8, 8
	st.h	$a2, $s2, 68
	ld.hu	$a1, $fp, 68
	bstrpick.d	$a1, $a1, 9, 9
	bstrins.d	$a2, $a1, 9, 9
	st.h	$a2, $s2, 68
	ld.hu	$a1, $fp, 68
	bstrpick.d	$a1, $a1, 12, 10
	bstrins.d	$a2, $a1, 12, 10
	st.h	$a2, $s2, 68
	ld.hu	$a1, $fp, 68
	srli.d	$a1, $a1, 13
	bstrins.d	$a2, $a1, 63, 13
	st.h	$a2, $s2, 68
	ld.h	$a1, $fp, 70
	st.h	$a1, $s2, 70
	ld.wu	$a1, $fp, 76
	ld.w	$a2, $s2, 76
	andi	$a1, $a1, 4095
	bstrins.d	$a2, $a1, 11, 0
	st.w	$a2, $s2, 76
	ld.wu	$a1, $fp, 76
	bstrpick.d	$a1, $a1, 21, 12
	bstrins.d	$a2, $a1, 21, 12
	st.w	$a2, $s2, 76
	ld.wu	$a1, $fp, 76
	bstrpick.d	$a1, $a1, 23, 22
	bstrins.d	$a2, $a1, 23, 22
	st.w	$a2, $s2, 76
	ld.wu	$a1, $fp, 76
	bstrpick.d	$a1, $a1, 29, 24
	bstrins.d	$a2, $a1, 29, 24
	st.w	$a2, $s2, 76
	ld.w	$a1, $fp, 76
	srli.d	$a1, $a1, 31
	bstrins.d	$a2, $a1, 63, 31
	st.w	$a2, $s2, 76
	ld.wu	$a1, $fp, 76
	lu12i.w	$a3, -262145
	ori	$a3, $a3, 4095
	lu32i.d	$a3, 0
	and	$a2, $a2, $a3
	srli.d	$a1, $a1, 30
	bstrins.d	$a2, $a1, 30, 30
	st.w	$a2, $s2, 76
	ld.bu	$a1, $fp, 64
	srli.d	$a0, $a0, 1
	bstrins.d	$a1, $a0, 63, 1
	st.b	$a1, $s2, 64
	ld.bu	$a0, $fp, 64
	bstrpick.d	$a0, $a0, 1, 1
	bstrins.d	$a1, $a0, 1, 1
	st.b	$a1, $s2, 64
	ld.bu	$a0, $fp, 64
	bstrpick.d	$a0, $a0, 2, 2
	bstrins.d	$a1, $a0, 2, 2
	st.b	$a1, $s2, 64
	ld.bu	$a0, $fp, 64
	andi	$a1, $a1, 143
	srli.d	$a0, $a0, 4
	bstrins.d	$a1, $a0, 6, 4
	st.b	$a1, $s2, 64
	ld.h	$a0, $fp, 72
	st.h	$a0, $s2, 72
	ld.h	$a0, $fp, 74
	st.h	$a0, $s2, 74
	addi.w	$s5, $a5, -1
	addi.w	$s6, $a6, -1
	addi.d	$s4, $sp, 1080
	ori	$s8, $zero, 3
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	b	.LBB7_122
.LBB7_119:                              # %cond.end1563.thread
                                        #   in Loop: Header=BB7_122 Depth=1
	st.d	$s0, $a3, 0
	move	$a1, $a0
.LBB7_120:                              # %cond.false1572
                                        #   in Loop: Header=BB7_122 Depth=1
	ld.d	$a2, $s0, 16
	pcalau12i	$a3, %got_pc_hi20(zz_tmp)
	ld.d	$a3, $a3, %got_pc_lo12(zz_tmp)
	st.d	$a0, $s0, 16
	ld.d	$a0, $a1, 16
	st.d	$a2, $a3, 0
.LBB7_121:                              # %for.cond829
                                        #   in Loop: Header=BB7_122 Depth=1
	st.d	$s0, $a0, 24
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
.LBB7_122:                              # %for.cond829
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a0, $s5, 5
	add.d	$a0, $s4, $a0
	ldx.bu	$a0, $a0, $s6
	bltu	$s8, $a0, .LBB7_144
# %bb.123:                              # %for.cond829
                                        #   in Loop: Header=BB7_122 Depth=1
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI7_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI7_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB7_124:                              # %sw.bb1064
                                        #   in Loop: Header=BB7_122 Depth=1
	ld.bu	$a2, $fp, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s3, $a0
	st.w	$a2, $s1, 0
	beqz	$a0, .LBB7_156
# %bb.125:                              # %if.else1078
                                        #   in Loop: Header=BB7_122 Depth=1
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s3, 3
	st.d	$a1, $a2, 0
	b	.LBB7_157
	.p2align	4, , 16
.LBB7_126:                              # %sw.bb
                                        #   in Loop: Header=BB7_122 Depth=1
	ld.bu	$a2, $fp, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s3, $a0
	st.w	$a2, $s1, 0
	beqz	$a0, .LBB7_130
# %bb.127:                              # %if.else856
                                        #   in Loop: Header=BB7_122 Depth=1
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s3, 3
	st.d	$a1, $a2, 0
	b	.LBB7_131
	.p2align	4, , 16
.LBB7_128:                              # %sw.bb952
                                        #   in Loop: Header=BB7_122 Depth=1
	ld.bu	$a2, $fp, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s3, $a0
	st.w	$a2, $s1, 0
	beqz	$a0, .LBB7_137
# %bb.129:                              # %if.else966
                                        #   in Loop: Header=BB7_122 Depth=1
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s3, 3
	st.d	$a1, $a2, 0
	b	.LBB7_138
.LBB7_130:                              # %if.then854
                                        #   in Loop: Header=BB7_122 Depth=1
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB7_131:                              # %if.end865
                                        #   in Loop: Header=BB7_122 Depth=1
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a3, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	ld.d	$a4, $s2, 8
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a3, 0
	st.d	$a0, $a1, 0
	st.d	$a4, $a2, 0
	beqz	$a4, .LBB7_133
# %bb.132:                              # %cond.false890
                                        #   in Loop: Header=BB7_122 Depth=1
	ld.d	$a5, $a4, 0
	pcalau12i	$a6, %got_pc_hi20(zz_tmp)
	ld.d	$a6, $a6, %got_pc_lo12(zz_tmp)
	st.d	$a5, $a6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a4, 0
	ld.d	$a0, $a1, 0
	ld.d	$a4, $a2, 0
	ld.d	$a5, $a0, 0
	ld.d	$a6, $a6, 0
	st.d	$a4, $a5, 8
	st.d	$a6, $a0, 0
	ld.d	$a4, $a1, 0
	ld.d	$a0, $a3, 0
	st.d	$a4, $a6, 8
.LBB7_133:                              # %cond.end912
                                        #   in Loop: Header=BB7_122 Depth=1
	slli.d	$a3, $s5, 3
	addi.d	$a4, $sp, 824
	ldx.d	$a4, $a3, $a4
	st.d	$a0, $a1, 0
	st.d	$a4, $a2, 0
	beqz	$a4, .LBB7_136
# %bb.134:                              # %cond.end912
                                        #   in Loop: Header=BB7_122 Depth=1
	beqz	$a0, .LBB7_136
# %bb.135:                              # %cond.false923
                                        #   in Loop: Header=BB7_122 Depth=1
	ld.d	$a1, $a4, 16
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	ld.d	$a5, $a0, 16
	st.d	$a1, $a2, 0
	st.d	$a5, $a4, 16
	st.d	$a4, $a5, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB7_136:                              # %cond.end947
                                        #   in Loop: Header=BB7_122 Depth=1
	addi.d	$a0, $sp, 312
	ldx.d	$s0, $a3, $a0
	addi.w	$s5, $s5, -1
	addi.w	$s6, $s6, -1
	slli.d	$a0, $s5, 5
	add.d	$a0, $s4, $a0
	ldx.bu	$a0, $a0, $s6
	bnez	$a0, .LBB7_145
	b	.LBB7_122
.LBB7_137:                              # %if.then964
                                        #   in Loop: Header=BB7_122 Depth=1
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB7_138:                              # %if.end975
                                        #   in Loop: Header=BB7_122 Depth=1
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a3, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	ld.d	$a4, $s2, 8
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a3, 0
	st.d	$a0, $a1, 0
	st.d	$a4, $a2, 0
	beqz	$a4, .LBB7_140
# %bb.139:                              # %cond.false1000
                                        #   in Loop: Header=BB7_122 Depth=1
	ld.d	$a5, $a4, 0
	pcalau12i	$a6, %got_pc_hi20(zz_tmp)
	ld.d	$a6, $a6, %got_pc_lo12(zz_tmp)
	st.d	$a5, $a6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a4, 0
	ld.d	$a0, $a1, 0
	ld.d	$a4, $a2, 0
	ld.d	$a5, $a0, 0
	ld.d	$a6, $a6, 0
	st.d	$a4, $a5, 8
	st.d	$a6, $a0, 0
	ld.d	$a4, $a1, 0
	ld.d	$a0, $a3, 0
	st.d	$a4, $a6, 8
.LBB7_140:                              # %cond.end1024
                                        #   in Loop: Header=BB7_122 Depth=1
	slli.d	$a3, $s6, 3
	addi.d	$a4, $sp, 568
	ldx.d	$a4, $a3, $a4
	st.d	$a0, $a1, 0
	st.d	$a4, $a2, 0
	beqz	$a4, .LBB7_143
# %bb.141:                              # %cond.end1024
                                        #   in Loop: Header=BB7_122 Depth=1
	beqz	$a0, .LBB7_143
# %bb.142:                              # %cond.false1035
                                        #   in Loop: Header=BB7_122 Depth=1
	ld.d	$a1, $a4, 16
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	ld.d	$a5, $a0, 16
	st.d	$a1, $a2, 0
	st.d	$a5, $a4, 16
	st.d	$a4, $a5, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB7_143:                              # %cond.end1059
                                        #   in Loop: Header=BB7_122 Depth=1
	addi.d	$a0, $sp, 56
	ldx.d	$s0, $a3, $a0
	addi.w	$s6, $s6, -1
.LBB7_144:                              # %sw.epilog
                                        #   in Loop: Header=BB7_122 Depth=1
	slli.d	$a0, $s5, 5
	add.d	$a0, $s4, $a0
	ldx.bu	$a0, $a0, $s6
	beqz	$a0, .LBB7_122
.LBB7_145:                              # %if.then1183
                                        #   in Loop: Header=BB7_122 Depth=1
	beqz	$s0, .LBB7_150
# %bb.146:                              # %if.else1480
                                        #   in Loop: Header=BB7_122 Depth=1
	ld.d	$a0, $s0, 24
	ld.d	$a1, $s0, 16
	beq	$a0, $a1, .LBB7_148
# %bb.147:                              # %if.then1489
                                        #   in Loop: Header=BB7_122 Depth=1
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a5, $a0, %pc_lo12(.L.str.15)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB7_148:                              # %if.end1491
                                        #   in Loop: Header=BB7_122 Depth=1
	ld.bu	$a2, $fp, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s3, $a0
	st.w	$a2, $s1, 0
	beqz	$a0, .LBB7_152
# %bb.149:                              # %if.else1505
                                        #   in Loop: Header=BB7_122 Depth=1
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s3, 3
	st.d	$a1, $a2, 0
	b	.LBB7_153
	.p2align	4, , 16
.LBB7_150:                              # %if.then1186
                                        #   in Loop: Header=BB7_122 Depth=1
	ld.bu	$a0, $fp, 1
	slli.d	$a1, $a0, 3
	ldx.d	$s0, $s3, $a1
	st.w	$a0, $s1, 0
	beqz	$s0, .LBB7_163
# %bb.151:                              # %if.else1200
                                        #   in Loop: Header=BB7_122 Depth=1
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s0, $a1, 0
	ld.d	$a1, $s0, 0
	alsl.d	$a0, $a0, $s3, 3
	st.d	$a1, $a0, 0
	b	.LBB7_164
.LBB7_152:                              # %if.then1503
                                        #   in Loop: Header=BB7_122 Depth=1
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB7_153:                              # %if.end1514
                                        #   in Loop: Header=BB7_122 Depth=1
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a1, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a2, $a2, %got_pc_lo12(zz_res)
	ld.d	$a4, $s2, 8
	pcalau12i	$a3, %got_pc_hi20(zz_hold)
	ld.d	$a3, $a3, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
	st.d	$a0, $a2, 0
	st.d	$a4, $a3, 0
	beqz	$a4, .LBB7_119
# %bb.154:                              # %cond.end1563
                                        #   in Loop: Header=BB7_122 Depth=1
	ld.d	$a5, $a4, 0
	pcalau12i	$a6, %got_pc_hi20(zz_tmp)
	ld.d	$a6, $a6, %got_pc_lo12(zz_tmp)
	st.d	$a5, $a6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a4, 0
	ld.d	$a0, $a2, 0
	ld.d	$a4, $a3, 0
	ld.d	$a5, $a0, 0
	ld.d	$a6, $a6, 0
	st.d	$a4, $a5, 8
	st.d	$a6, $a0, 0
	ld.d	$a0, $a2, 0
	ld.d	$a1, $a1, 0
	st.d	$a0, $a6, 8
	st.d	$a1, $a2, 0
	st.d	$s0, $a3, 0
	beqz	$a1, .LBB7_122
# %bb.155:                              # %cond.end1563.cond.false1572_crit_edge
                                        #   in Loop: Header=BB7_122 Depth=1
	ld.d	$a0, $a1, 16
	b	.LBB7_120
.LBB7_156:                              # %if.then1076
                                        #   in Loop: Header=BB7_122 Depth=1
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB7_157:                              # %if.end1087
                                        #   in Loop: Header=BB7_122 Depth=1
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a3, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	ld.d	$a4, $s2, 8
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a3, 0
	st.d	$a0, $a1, 0
	st.d	$a4, $a2, 0
	beqz	$a4, .LBB7_159
# %bb.158:                              # %cond.false1112
                                        #   in Loop: Header=BB7_122 Depth=1
	ld.d	$a5, $a4, 0
	pcalau12i	$a6, %got_pc_hi20(zz_tmp)
	ld.d	$a6, $a6, %got_pc_lo12(zz_tmp)
	st.d	$a5, $a6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a4, 0
	ld.d	$a0, $a1, 0
	ld.d	$a4, $a2, 0
	ld.d	$a5, $a0, 0
	ld.d	$a6, $a6, 0
	st.d	$a4, $a5, 8
	st.d	$a6, $a0, 0
	ld.d	$a4, $a1, 0
	ld.d	$a0, $a3, 0
	st.d	$a4, $a6, 8
.LBB7_159:                              # %cond.end1136
                                        #   in Loop: Header=BB7_122 Depth=1
	slli.d	$a3, $s5, 3
	addi.d	$a4, $sp, 824
	ldx.d	$a4, $a3, $a4
	st.d	$a0, $a1, 0
	st.d	$a4, $a2, 0
	beqz	$a4, .LBB7_162
# %bb.160:                              # %cond.end1136
                                        #   in Loop: Header=BB7_122 Depth=1
	beqz	$a0, .LBB7_162
# %bb.161:                              # %cond.false1147
                                        #   in Loop: Header=BB7_122 Depth=1
	ld.d	$a1, $a4, 16
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	ld.d	$a5, $a0, 16
	st.d	$a1, $a2, 0
	st.d	$a5, $a4, 16
	st.d	$a4, $a5, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB7_162:                              # %cond.end1171
                                        #   in Loop: Header=BB7_122 Depth=1
	addi.d	$a0, $sp, 312
	ldx.d	$s0, $a3, $a0
	addi.w	$s5, $s5, -1
	slli.d	$a0, $s5, 5
	add.d	$a0, $s4, $a0
	ldx.bu	$a0, $a0, $s6
	bnez	$a0, .LBB7_145
	b	.LBB7_122
.LBB7_163:                              # %if.then1198
                                        #   in Loop: Header=BB7_122 Depth=1
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	move	$s0, $a0
	st.d	$a0, $a1, 0
.LBB7_164:                              # %if.end1209
                                        #   in Loop: Header=BB7_122 Depth=1
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$s8, $a0, %got_pc_lo12(no_fpos)
	ori	$a1, $zero, 1
	st.b	$a1, $s0, 32
	st.d	$s0, $s0, 24
	st.d	$s0, $s0, 0
	ld.d	$a0, $s8, 0
	st.d	$s0, $s0, 16
	st.d	$s0, $s0, 8
	st.h	$a1, $s0, 41
	ld.h	$a1, $a0, 2
	st.h	$a1, $s0, 34
	ld.wu	$a1, $a0, 4
	ld.wu	$a2, $s0, 36
	srli.d	$a2, $a2, 20
	move	$a3, $a1
	bstrins.d	$a3, $a2, 63, 20
	st.w	$a3, $s0, 36
	ld.wu	$a0, $a0, 4
	ld.hu	$a2, $s0, 44
	srli.d	$a0, $a0, 20
	bstrins.d	$a1, $a0, 63, 20
	st.w	$a1, $s0, 36
	ori	$a0, $zero, 76
	bstrins.d	$a2, $a0, 63, 7
	st.h	$a2, $s0, 44
	ld.h	$a0, $s2, 70
	addi.d	$a2, $s0, 32
	st.h	$a0, $s0, 46
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a1, $a0, %pc_lo12(.L.str.14)
	ori	$a0, $zero, 11
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	ld.bu	$a2, $fp, 0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $s3, $a1
	move	$fp, $a0
	st.w	$a2, $s1, 0
	beqz	$a1, .LBB7_166
# %bb.165:                              # %if.else1284
                                        #   in Loop: Header=BB7_122 Depth=1
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$a1, $a0, 0
	ld.d	$a0, $a1, 0
	alsl.d	$a2, $a2, $s3, 3
	st.d	$a0, $a2, 0
	b	.LBB7_167
.LBB7_166:                              # %if.then1282
                                        #   in Loop: Header=BB7_122 Depth=1
	ld.d	$a1, $s8, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.LBB7_167:                              # %cond.end1339
                                        #   in Loop: Header=BB7_122 Depth=1
	st.b	$zero, $a1, 32
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	pcalau12i	$a0, %got_pc_hi20(xx_link)
	ld.d	$s2, $a0, %got_pc_lo12(xx_link)
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$s4, $a0, %got_pc_lo12(zz_res)
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$s1, $a0, %got_pc_lo12(zz_hold)
	st.d	$a1, $a1, 0
	st.d	$a1, $s2, 0
	st.d	$a1, $s4, 0
	st.d	$s0, $s1, 0
	ld.d	$a0, $s0, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$s7, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a0, $s7, 0
	ld.d	$a0, $a1, 0
	st.d	$a0, $s0, 0
	ld.d	$a0, $s4, 0
	ld.d	$a1, $s1, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s7, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s4, 0
	ld.d	$a0, $s2, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s4, 0
	st.d	$fp, $s1, 0
	beqz	$fp, .LBB7_170
# %bb.168:                              # %cond.end1339
                                        #   in Loop: Header=BB7_122 Depth=1
	beqz	$a0, .LBB7_170
# %bb.169:                              # %cond.false1348
                                        #   in Loop: Header=BB7_122 Depth=1
	ld.d	$a1, $fp, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s7, 0
	st.d	$a2, $fp, 16
	st.d	$fp, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB7_170:                              # %cond.end1372
                                        #   in Loop: Header=BB7_122 Depth=1
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.bu	$a2, $fp, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s3, $a0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB7_172
# %bb.171:                              # %if.else1387
                                        #   in Loop: Header=BB7_122 Depth=1
	st.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s3, 3
	st.d	$a1, $a2, 0
	b	.LBB7_173
.LBB7_172:                              # %if.then1385
                                        #   in Loop: Header=BB7_122 Depth=1
	ld.d	$a1, $s8, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB7_173:                              # %if.end1396
                                        #   in Loop: Header=BB7_122 Depth=1
	ori	$s8, $zero, 3
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 8
	st.d	$a0, $s2, 0
	st.d	$a0, $s4, 0
	st.d	$a1, $s1, 0
	beqz	$a1, .LBB7_176
# %bb.174:                              # %cond.end1445
                                        #   in Loop: Header=BB7_122 Depth=1
	ld.d	$a2, $a1, 0
	st.d	$a2, $s7, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s4, 0
	ld.d	$a1, $s1, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s7, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s4, 0
	ld.d	$a1, $s2, 0
	st.d	$a0, $a3, 8
	st.d	$a1, $s4, 0
	st.d	$s0, $s1, 0
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	addi.d	$s4, $sp, 1080
	beqz	$a1, .LBB7_122
# %bb.175:                              # %cond.end1445.cond.false1454_crit_edge
                                        #   in Loop: Header=BB7_122 Depth=1
	ld.d	$a0, $a1, 16
	b	.LBB7_177
.LBB7_176:                              # %cond.end1445.thread
                                        #   in Loop: Header=BB7_122 Depth=1
	st.d	$s0, $s1, 0
	move	$a1, $a0
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	addi.d	$s4, $sp, 1080
.LBB7_177:                              # %cond.false1454
                                        #   in Loop: Header=BB7_122 Depth=1
	ld.d	$a2, $s0, 16
	st.d	$a0, $s0, 16
	ld.d	$a0, $a1, 16
	st.d	$a2, $s7, 0
	b	.LBB7_121
.LBB7_178:                              # %for.end1600
	move	$a0, $s2
	addi.d	$sp, $sp, 1184
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end7:
	.size	Meld, .Lfunc_end7-Meld
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI7_0:
	.word	.LBB7_178-.LJTI7_0
	.word	.LBB7_124-.LJTI7_0
	.word	.LBB7_128-.LJTI7_0
	.word	.LBB7_126-.LJTI7_0
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"assert failed in %s"
	.size	.L.str, 20

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"SplitIsDefinite: x not a SPLIT!"
	.size	.L.str.1, 32

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"DisposeObject: x has a parent!"
	.size	.L.str.2, 31

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"word is too long"
	.size	.L.str.3, 17

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"CopyObject: PAR child!"
	.size	.L.str.4, 23

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"CopyObject: CLOSURE!"
	.size	.L.str.5, 21

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"assert failed in %s %s"
	.size	.L.str.6, 23

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"CopyObject:"
	.size	.L.str.7, 12

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"InsertObject:"
	.size	.L.str.8, 14

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Meld: type(x) != ACAT"
	.size	.L.str.9, 22

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Meld: type(y) != ACAT"
	.size	.L.str.10, 22

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"%s: maximum paragraph length (%d) exceeded"
	.size	.L.str.11, 43

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"@Meld"
	.size	.L.str.12, 6

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"NextDefiniteWithGap: g == nilobj!"
	.size	.L.str.13, 34

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"1s"
	.size	.L.str.14, 3

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Meld: g!"
	.size	.L.str.15, 9

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"DisposeSplitObject: x has no children!"
	.size	.L.str.17, 39

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"DisposeSplitObject: x has one child!"
	.size	.L.str.18, 37

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"DisposeSplitObject: children!"
	.size	.L.str.19, 30

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"DisposeSplitObject: link (a)!"
	.size	.L.str.20, 30

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"DisposeSplitObject: link (b)!"
	.size	.L.str.21, 30

	.section	".note.GNU-stack","",@progbits
	.addrsig
