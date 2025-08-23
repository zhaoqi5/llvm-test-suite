	.file	"z19.c"
	.text
	.globl	DetachGalley                    # -- Begin function DetachGalley
	.p2align	5
	.type	DetachGalley,@function
DetachGalley:                           # @DetachGalley
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
	move	$s0, $a0
	ld.bu	$a0, $a0, 32
	ori	$a1, $zero, 8
	bne	$a0, $a1, .LBB0_2
# %bb.1:                                # %land.lhs.true
	ld.d	$s1, $s0, 24
	bne	$s1, $s0, .LBB0_3
.LBB0_2:                                # %if.then
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
	ld.d	$s1, $s0, 24
	.p2align	4, , 16
.LBB0_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $s1, 0
	ld.bu	$a0, $s1, 32
	beqz	$a0, .LBB0_3
# %bb.4:                                # %for.end
	ld.d	$a0, $s1, 24
	bne	$a0, $s1, .LBB0_6
# %bb.5:                                # %if.then22
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
.LBB0_6:                                # %if.end24
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s4, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a0, $s4, 120
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$s3, $a1, %got_pc_lo12(zz_free)
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s5, $a1, %got_pc_lo12(zz_size)
	slli.d	$a1, $a0, 3
	ldx.d	$fp, $s3, $a1
	st.w	$a0, $s5, 0
	beqz	$fp, .LBB0_8
# %bb.7:                                # %if.else36
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$fp, $a1, 0
	ld.d	$a1, $fp, 0
	alsl.d	$a0, $a0, $s3, 3
	st.d	$a1, $a0, 0
	b	.LBB0_9
.LBB0_8:                                # %if.then34
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.LBB0_9:                                # %if.end45
	ori	$a0, $zero, 120
	st.b	$a0, $fp, 32
	st.d	$fp, $fp, 24
	st.d	$fp, $fp, 16
	st.d	$fp, $fp, 8
	st.d	$fp, $fp, 0
	st.d	$zero, $fp, 88
	ld.d	$a0, $s0, 24
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$s2, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$s0, $a1, %got_pc_lo12(zz_hold)
	ld.d	$a1, $a0, 8
	st.d	$a0, $s2, 0
	st.d	$a0, $s0, 0
	beq	$a1, $a0, .LBB0_11
# %bb.10:                               # %cond.end
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a2, $a2, %got_pc_lo12(zz_res)
	st.d	$a1, $a2, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a1, $s0, 0
	ld.d	$a0, $a2, 0
	ld.d	$a3, $a1, 0
	st.d	$a0, $a3, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $s2, 0
	st.d	$a1, $a1, 8
	st.d	$a0, $a2, 0
	st.d	$fp, $s0, 0
	bnez	$a0, .LBB0_12
	b	.LBB0_13
.LBB0_11:                               # %cond.end.thread
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $a1, 0
	st.d	$fp, $s0, 0
.LBB0_12:                               # %cond.false96
	ld.d	$a1, $fp, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a1, $a2, 0
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $fp, 0
	ld.d	$a0, $a1, 0
	ld.d	$a3, $s0, 0
	ld.d	$a4, $a0, 0
	ld.d	$a2, $a2, 0
	st.d	$a3, $a4, 8
	st.d	$a2, $a0, 0
	ld.d	$a0, $a1, 0
	st.d	$a0, $a2, 8
.LBB0_13:                               # %cond.end120
	ld.bu	$a2, $s4, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s3, $a0
	st.w	$a2, $s5, 0
	beqz	$a0, .LBB0_15
# %bb.14:                               # %if.else135
	st.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s3, 3
	st.d	$a1, $a2, 0
	b	.LBB0_16
.LBB0_15:                               # %if.then133
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB0_16:                               # %if.end144
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a2, $s1, 24
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	ld.d	$a2, $a2, 8
	st.d	$a0, $s2, 0
	st.d	$a0, $a1, 0
	st.d	$a2, $s0, 0
	beqz	$a2, .LBB0_18
# %bb.17:                               # %cond.end196
	ld.d	$a3, $a2, 0
	pcalau12i	$a4, %got_pc_hi20(zz_tmp)
	ld.d	$a4, $a4, %got_pc_lo12(zz_tmp)
	st.d	$a3, $a4, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a2, 0
	ld.d	$a0, $a1, 0
	ld.d	$a2, $s0, 0
	ld.d	$a3, $a0, 0
	ld.d	$a4, $a4, 0
	st.d	$a2, $a3, 8
	st.d	$a4, $a0, 0
	ld.d	$a2, $a1, 0
	ld.d	$a0, $s2, 0
	st.d	$a2, $a4, 8
	st.d	$a0, $a1, 0
	st.d	$fp, $s0, 0
	bnez	$a0, .LBB0_19
	b	.LBB0_20
.LBB0_18:                               # %cond.end196.thread
	st.d	$fp, $s0, 0
.LBB0_19:                               # %cond.false205
	ld.d	$a1, $fp, 16
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	ld.d	$a3, $a0, 16
	st.d	$a1, $a2, 0
	st.d	$a3, $fp, 16
	st.d	$fp, $a3, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB0_20:                               # %cond.end229
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
	.size	DetachGalley, .Lfunc_end0-DetachGalley
                                        # -- End function
	.globl	SearchGalley                    # -- Begin function SearchGalley
	.p2align	5
	.type	SearchGalley,@function
SearchGalley:                           # @SearchGalley
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
	ld.bu	$a6, $a0, 32
	andi	$a6, $a6, 247
	move	$s1, $a5
	move	$s2, $a4
	move	$fp, $a1
	beqz	$a6, .LBB1_2
# %bb.1:                                # %if.then
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a6, $a1, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a5, $a1, %pc_lo12(.L.str.4)
	move	$s0, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$s3, $a2
	move	$a2, $a6
	move	$s4, $a3
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a2, $s3
	move	$a3, $s4
	move	$a0, $s0
.LBB1_2:                                # %if.end
	sltu	$a1, $zero, $a2
	slli.d	$s3, $a1, 3
	ldx.d	$s4, $a0, $s3
	ld.bu	$a0, $s4, 32
	beqz	$a3, .LBB1_27
# %bb.3:                                # %if.end.split
	ori	$s5, $zero, 8
	beq	$a0, $s5, .LBB1_28
# %bb.4:
	ori	$s6, $zero, 122
	pcalau12i	$a0, %got_pc_hi20(InputSym)
	ld.d	$a0, $a0, %got_pc_lo12(InputSym)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$s8, $zero, 121
	b	.LBB1_7
	.p2align	4, , 16
.LBB1_5:                                # %sw.epilog
                                        #   in Loop: Header=BB1_7 Depth=1
	move	$s0, $a0
	bnez	$a0, .LBB1_29
.LBB1_6:                                # %land.rhs
                                        #   in Loop: Header=BB1_7 Depth=1
	ldx.d	$s4, $s4, $s3
	ld.bu	$a0, $s4, 32
	beq	$a0, $s5, .LBB1_28
.LBB1_7:                                # %for.cond.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_8 Depth 2
                                        #     Child Loop BB1_13 Depth 2
                                        #       Child Loop BB1_14 Depth 3
	move	$s0, $s4
	.p2align	4, , 16
.LBB1_8:                                # %for.cond
                                        #   Parent Loop BB1_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $s0, 16
	ld.bu	$a0, $s0, 32
	beqz	$a0, .LBB1_8
# %bb.9:                                # %for.cond
                                        #   in Loop: Header=BB1_7 Depth=1
	beq	$a0, $s6, .LBB1_12
# %bb.10:                               # %for.cond
                                        #   in Loop: Header=BB1_7 Depth=1
	beq	$a0, $s8, .LBB1_18
# %bb.11:                               # %for.cond
                                        #   in Loop: Header=BB1_7 Depth=1
	ori	$a1, $zero, 120
	bne	$a0, $a1, .LBB1_6
.LBB1_12:                               # %sw.bb
                                        #   in Loop: Header=BB1_7 Depth=1
	ld.d	$s7, $s0, 8
	beq	$s7, $s0, .LBB1_22
	.p2align	4, , 16
.LBB1_13:                               # %for.cond46.preheader
                                        #   Parent Loop BB1_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_14 Depth 3
	move	$a0, $s7
	.p2align	4, , 16
.LBB1_14:                               # %for.cond46
                                        #   Parent Loop BB1_7 Depth=1
                                        #     Parent Loop BB1_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_14
# %bb.15:                               # %for.end57
                                        #   in Loop: Header=BB1_13 Depth=2
	ori	$a2, $zero, 1
	ori	$a3, $zero, 1
	ori	$a4, $zero, 1
	move	$a1, $fp
	move	$a5, $s1
	pcaddu18i	$ra, %call36(SearchGalley)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s7, 8
	beq	$s7, $s0, .LBB1_17
# %bb.16:                               # %for.end57
                                        #   in Loop: Header=BB1_13 Depth=2
	beqz	$a0, .LBB1_13
.LBB1_17:                               # %if.end64.loopexit
                                        #   in Loop: Header=BB1_7 Depth=1
	bnez	$s1, .LBB1_23
	b	.LBB1_5
	.p2align	4, , 16
.LBB1_18:                               # %sw.bb80
                                        #   in Loop: Header=BB1_7 Depth=1
	beqz	$s2, .LBB1_25
# %bb.19:                               # %land.lhs.true82
                                        #   in Loop: Header=BB1_7 Depth=1
	ld.d	$a0, $s0, 80
	ld.bu	$a1, $a0, 32
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB1_25
# %bb.20:                               # %land.lhs.true89
                                        #   in Loop: Header=BB1_7 Depth=1
	ld.d	$a0, $a0, 80
	move	$a1, $fp
	pcaddu18i	$ra, %call36(SearchUses)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	sltu	$a0, $zero, $a0
	maskeqz	$a0, $s0, $a0
	bnez	$a1, .LBB1_5
# %bb.21:                               # %land.lhs.true89
                                        #   in Loop: Header=BB1_7 Depth=1
	bnez	$s1, .LBB1_26
	b	.LBB1_5
.LBB1_22:                               #   in Loop: Header=BB1_7 Depth=1
	move	$a0, $zero
	beqz	$s1, .LBB1_5
.LBB1_23:                               # %if.end64.loopexit
                                        #   in Loop: Header=BB1_7 Depth=1
	bnez	$a0, .LBB1_5
# %bb.24:                               # %land.lhs.true68
                                        #   in Loop: Header=BB1_7 Depth=1
	ld.bu	$a0, $s0, 32
	bne	$a0, $s6, .LBB1_6
	b	.LBB1_26
.LBB1_25:                               # %if.else
                                        #   in Loop: Header=BB1_7 Depth=1
	beqz	$s1, .LBB1_6
.LBB1_26:                               # %land.lhs.true74
                                        #   in Loop: Header=BB1_7 Depth=1
	ld.d	$a0, $s0, 80
	ld.d	$a0, $a0, 80
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	bne	$a0, $a1, .LBB1_6
	b	.LBB1_29
.LBB1_27:                               # %if.end.split.us
	ori	$a1, $zero, 8
	bne	$a0, $a1, .LBB1_30
.LBB1_28:
	move	$s0, $zero
.LBB1_29:                               # %while.end
	move	$a0, $s0
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
.LBB1_30:                               # %for.cond.preheader.us.lr.ph
	beqz	$s2, .LBB1_42
# %bb.31:                               # %for.cond.preheader.us.lr.ph.split
	beqz	$s1, .LBB1_50
# %bb.32:                               # %for.cond.preheader.us.us54.preheader
	ori	$s1, $zero, 122
	pcalau12i	$a0, %got_pc_hi20(InputSym)
	ld.d	$s2, $a0, %got_pc_lo12(InputSym)
	ori	$s5, $zero, 8
	ori	$s6, $zero, 121
	ori	$s7, $zero, 2
	b	.LBB1_36
	.p2align	4, , 16
.LBB1_33:                               # %land.lhs.true74.us.us75
                                        #   in Loop: Header=BB1_36 Depth=1
	ld.d	$a0, $s0, 80
.LBB1_34:                               # %land.lhs.true74.us.us75
                                        #   in Loop: Header=BB1_36 Depth=1
	ld.d	$a0, $a0, 80
	ld.d	$a1, $s2, 0
	beq	$a0, $a1, .LBB1_29
.LBB1_35:                               # %land.rhs.us.us85
                                        #   in Loop: Header=BB1_36 Depth=1
	ldx.d	$s4, $s4, $s3
	ld.bu	$a0, $s4, 32
	beq	$a0, $s5, .LBB1_28
.LBB1_36:                               # %for.cond.preheader.us.us54
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_37 Depth 2
	move	$s0, $s4
	.p2align	4, , 16
.LBB1_37:                               # %for.cond.us.us56
                                        #   Parent Loop BB1_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $s0, 16
	ld.bu	$a0, $s0, 32
	beqz	$a0, .LBB1_37
# %bb.38:                               # %for.cond.us.us56
                                        #   in Loop: Header=BB1_36 Depth=1
	beq	$a0, $s1, .LBB1_33
# %bb.39:                               # %for.cond.us.us56
                                        #   in Loop: Header=BB1_36 Depth=1
	bne	$a0, $s6, .LBB1_35
# %bb.40:                               # %sw.bb80.us.us61
                                        #   in Loop: Header=BB1_36 Depth=1
	ld.d	$a0, $s0, 80
	ld.bu	$a1, $a0, 32
	bne	$a1, $s7, .LBB1_34
# %bb.41:                               # %land.lhs.true89.us.us
                                        #   in Loop: Header=BB1_36 Depth=1
	ld.d	$a0, $a0, 80
	move	$a1, $fp
	pcaddu18i	$ra, %call36(SearchUses)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_33
	b	.LBB1_29
.LBB1_42:                               # %for.cond.preheader.us.lr.ph.split.us
	beqz	$s1, .LBB1_28
# %bb.43:                               # %for.cond.preheader.us.us.us.preheader
	pcalau12i	$a0, %got_pc_hi20(InputSym)
	ld.d	$a0, $a0, %got_pc_lo12(InputSym)
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 122
	ori	$a2, $zero, 8
	ori	$a3, $zero, 121
	b	.LBB1_46
	.p2align	4, , 16
.LBB1_44:                               # %land.lhs.true74.us.us.us
                                        #   in Loop: Header=BB1_46 Depth=1
	ld.d	$a4, $s0, 80
	ld.d	$a4, $a4, 80
	beq	$a4, $a0, .LBB1_29
.LBB1_45:                               # %land.rhs.us.us.us
                                        #   in Loop: Header=BB1_46 Depth=1
	ldx.d	$s4, $s4, $s3
	ld.bu	$a4, $s4, 32
	move	$s0, $zero
	beq	$a4, $a2, .LBB1_29
.LBB1_46:                               # %for.cond.preheader.us.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_47 Depth 2
	move	$s0, $s4
	.p2align	4, , 16
.LBB1_47:                               # %for.cond.us.us.us
                                        #   Parent Loop BB1_46 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $s0, 16
	ld.bu	$a4, $s0, 32
	beqz	$a4, .LBB1_47
# %bb.48:                               # %for.cond.us.us.us
                                        #   in Loop: Header=BB1_46 Depth=1
	beq	$a4, $a1, .LBB1_44
# %bb.49:                               # %for.cond.us.us.us
                                        #   in Loop: Header=BB1_46 Depth=1
	beq	$a4, $a3, .LBB1_44
	b	.LBB1_45
.LBB1_50:
	ori	$s1, $zero, 121
	ori	$s2, $zero, 2
	ori	$s5, $zero, 8
	b	.LBB1_52
	.p2align	4, , 16
.LBB1_51:                               # %land.rhs.us.us116
                                        #   in Loop: Header=BB1_52 Depth=1
	ldx.d	$s4, $s4, $s3
	ld.bu	$a0, $s4, 32
	beq	$a0, $s5, .LBB1_28
.LBB1_52:                               # %for.cond.preheader.us.us93
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_53 Depth 2
	move	$s0, $s4
	.p2align	4, , 16
.LBB1_53:                               # %for.cond.us.us95
                                        #   Parent Loop BB1_52 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $s0, 16
	ld.bu	$a0, $s0, 32
	beqz	$a0, .LBB1_53
# %bb.54:                               # %for.cond.us.us95
                                        #   in Loop: Header=BB1_52 Depth=1
	bne	$a0, $s1, .LBB1_51
# %bb.55:                               # %sw.bb80.us.us100
                                        #   in Loop: Header=BB1_52 Depth=1
	ld.d	$a0, $s0, 80
	ld.bu	$a1, $a0, 32
	bne	$a1, $s2, .LBB1_51
# %bb.56:                               # %land.lhs.true89.us.us105
                                        #   in Loop: Header=BB1_52 Depth=1
	ld.d	$a0, $a0, 80
	move	$a1, $fp
	pcaddu18i	$ra, %call36(SearchUses)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_51
	b	.LBB1_29
.Lfunc_end1:
	.size	SearchGalley, .Lfunc_end1-SearchGalley
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function AttachGalley
.LCPI2_0:
	.word	0x440dc000                      # float 567
	.text
	.globl	AttachGalley
	.p2align	5
	.type	AttachGalley,@function
AttachGalley:                           # @AttachGalley
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
	fst.d	$fs0, $sp, 416                  # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$s3, $a0, 24
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	bne	$s3, $a0, .LBB2_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	move	$s0, $a2
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a5, $a0, %pc_lo12(.L.str.5)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a2, $s0
	ld.d	$s3, $fp, 24
	.p2align	4, , 16
.LBB2_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s3, $s3, 0
	ld.bu	$a0, $s3, 32
	beqz	$a0, .LBB2_2
# %bb.3:                                # %for.cond
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	ori	$a1, $zero, 120
	beq	$a0, $a1, .LBB2_5
# %bb.4:                                # %if.then16
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
.LBB2_5:                                # %if.end18
	ld.hu	$a0, $fp, 42
	st.d	$zero, $sp, 392
	st.d	$zero, $sp, 408
	bstrpick.d	$a1, $a0, 8, 8
	sltui	$a2, $a1, 1
	addi.d	$a3, $fp, 48
	st.d	$a3, $sp, 128                   # 8-byte Folded Spill
	addi.d	$a3, $fp, 56
	st.d	$a3, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a3, $fp, 32
	st.d	$a3, $sp, 112                   # 8-byte Folded Spill
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	slli.d	$a2, $a2, 3
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	andi	$a2, $a0, 2
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	st.d	$a1, $sp, 256                   # 8-byte Folded Spill
	xori	$a1, $a1, 1
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(zz_lengths)
	ld.d	$s0, $a1, %got_pc_lo12(zz_lengths)
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s7, $a1, %got_pc_lo12(zz_size)
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$s2, $a1, %got_pc_lo12(zz_free)
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$s1, $a1, %got_pc_lo12(no_fpos)
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 192                  # 16-byte Folded Spill
	xvrepli.b	$xr0, 0
	xvst	$xr0, $sp, 160                  # 32-byte Folded Spill
	lu12i.w	$a1, 2047
	ori	$s5, $a1, 4095
	lu12i.w	$a1, -393217
	ori	$a1, $a1, 4095
	lu32i.d	$a1, 0
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	lu12i.w	$a1, 15
	ori	$a1, $a1, 4063
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
                                        # implicit-def: $r5
                                        # kill: killed $r5
	st.d	$s1, $sp, 240                   # 8-byte Folded Spill
	st.d	$fp, $sp, 288                   # 8-byte Folded Spill
	st.d	$s5, $sp, 208                   # 8-byte Folded Spill
	st.d	$s0, $sp, 280                   # 8-byte Folded Spill
	b	.LBB2_7
	.p2align	4, , 16
.LBB2_6:                                # %if.end4173
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.hu	$a0, $fp, 42
.LBB2_7:                                # %for.cond24
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_54 Depth 2
                                        #     Child Loop BB2_99 Depth 2
                                        #       Child Loop BB2_100 Depth 3
                                        #       Child Loop BB2_103 Depth 3
                                        #       Child Loop BB2_113 Depth 3
                                        #       Child Loop BB2_115 Depth 3
                                        #       Child Loop BB2_128 Depth 3
                                        #       Child Loop BB2_133 Depth 3
                                        #     Child Loop BB2_168 Depth 2
                                        #       Child Loop BB2_169 Depth 3
                                        #       Child Loop BB2_176 Depth 3
                                        #       Child Loop BB2_181 Depth 3
                                        #       Child Loop BB2_193 Depth 3
                                        #         Child Loop BB2_194 Depth 4
                                        #       Child Loop BB2_198 Depth 3
                                        #       Child Loop BB2_204 Depth 3
                                        #     Child Loop BB2_231 Depth 2
                                        #     Child Loop BB2_254 Depth 2
	ld.d	$a1, $fp, 88
	andi	$a0, $a0, 2
	bnez	$a0, .LBB2_10
# %bb.8:                                # %if.else461
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.bu	$a2, $fp, 40
	ld.d	$a0, $s3, 24
	ori	$a3, $zero, 133
	bne	$a2, $a3, .LBB2_12
# %bb.9:                                # %if.then466
                                        #   in Loop: Header=BB2_7 Depth=1
	ori	$a3, $zero, 1
	ori	$a4, $zero, 1
	move	$a2, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(SearchGalley)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	bnez	$a0, .LBB2_14
	b	.LBB2_357
	.p2align	4, , 16
.LBB2_10:                               # %if.then31
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $s3, 24
	ori	$a2, $zero, 1
	ori	$a4, $zero, 1
	ori	$a5, $zero, 1
	move	$a3, $zero
	pcaddu18i	$ra, %call36(SearchGalley)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_333
# %bb.11:                               # %if.else
                                        #   in Loop: Header=BB2_7 Depth=1
	move	$s4, $a0
	ld.d	$a0, $a0, 80
	pcalau12i	$a1, %got_pc_hi20(InputSym)
	ld.d	$a1, $a1, %got_pc_lo12(InputSym)
	ld.d	$a0, $a0, 80
	ld.d	$a1, $a1, 0
	bne	$a0, $a1, .LBB2_15
	b	.LBB2_341
	.p2align	4, , 16
.LBB2_12:                               # %if.else471
                                        #   in Loop: Header=BB2_7 Depth=1
	ori	$a3, $zero, 1
	ori	$a2, $zero, 1
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	move	$fp, $a1
	move	$a2, $zero
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(SearchGalley)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	bnez	$a0, .LBB2_15
# %bb.13:                               # %if.then480
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $s3, 24
	ori	$a2, $zero, 1
	ori	$a3, $zero, 1
	ori	$a4, $zero, 1
	move	$a1, $fp
	move	$a5, $zero
	pcaddu18i	$ra, %call36(SearchGalley)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	beqz	$a0, .LBB2_357
.LBB2_14:                               #   in Loop: Header=BB2_7 Depth=1
	st.d	$zero, $sp, 152                 # 8-byte Folded Spill
.LBB2_15:                               # %if.end491
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.bu	$a0, $s4, 32
	ori	$a1, $zero, 121
	beq	$a0, $a1, .LBB2_17
# %bb.16:                               # %if.then497
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a4, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a5, $a0, %pc_lo12(.L.str.8)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB2_17:                               # %if.end499
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$fp, $s4, 80
	ld.bu	$a0, $fp, 32
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB2_19
# %bb.18:                               # %if.then506
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a4, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a5, $a0, %pc_lo12(.L.str.9)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB2_19:                               # %if.end508
                                        #   in Loop: Header=BB2_7 Depth=1
	move	$a0, $zero
	pcaddu18i	$ra, %call36(EnterErrorBlock)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s0, 8
	slli.d	$a1, $a0, 3
	ldx.d	$a4, $s2, $a1
	st.w	$a0, $s7, 0
	beqz	$a4, .LBB2_21
# %bb.20:                               # %if.else522
                                        #   in Loop: Header=BB2_7 Depth=1
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$a4, $a0, 0
	ld.d	$a0, $a4, 0
	stx.d	$a0, $s2, $a1
	b	.LBB2_22
	.p2align	4, , 16
.LBB2_21:                               # %if.then520
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a1, $s1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	move	$a4, $a0
	st.d	$a0, $a1, 0
.LBB2_22:                               # %if.end531
                                        #   in Loop: Header=BB2_7 Depth=1
	st.d	$a4, $sp, 264                   # 8-byte Folded Spill
	ori	$a0, $zero, 8
	st.b	$a0, $a4, 32
	st.d	$a4, $a4, 24
	st.d	$a4, $a4, 16
	ld.hu	$a0, $a4, 42
	st.d	$a4, $a4, 8
	st.d	$a4, $a4, 0
	lu12i.w	$a5, 14
	ori	$a1, $a5, 4095
	and	$a1, $a0, $a1
	st.h	$a1, $a4, 42
	vld	$vr0, $sp, 192                  # 16-byte Folded Reload
	vst	$vr0, $a4, 104
	xvld	$xr1, $sp, 160                  # 32-byte Folded Reload
	xvst	$xr1, $a4, 128
	ld.h	$a1, $fp, 42
	ori	$a2, $a5, 3839
	and	$a0, $a0, $a2
	bstrpick.d	$a1, $a1, 58, 3
	bstrins.d	$a0, $a1, 8, 8
	xori	$a0, $a0, 256
	st.h	$a0, $a4, 42
	ld.h	$a1, $fp, 34
	st.h	$a1, $a4, 34
	ld.wu	$a1, $fp, 36
	ld.wu	$a2, $a4, 36
	srli.d	$a2, $a2, 20
	move	$a3, $a1
	bstrins.d	$a3, $a2, 63, 20
	st.w	$a3, $a4, 36
	ld.wu	$a2, $fp, 36
	srli.d	$a2, $a2, 20
	bstrins.d	$a1, $a2, 63, 20
	st.w	$a1, $a4, 36
	ld.d	$a1, $fp, 80
	st.d	$a1, $a4, 80
	vst	$vr0, $a4, 88
	ori	$a1, $zero, 129
	st.b	$a1, $a4, 40
	ori	$a1, $a5, 3965
	and	$a0, $a0, $a1
	st.h	$a0, $a4, 42
	st.d	$s4, $sp, 248                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	st.d	$fp, $sp, 232                   # 8-byte Folded Spill
	bnez	$a0, .LBB2_24
# %bb.23:                               # %if.else627
                                        #   in Loop: Header=BB2_7 Depth=1
	move	$a0, $s5
	bstrins.d	$a0, $s5, 54, 32
	st.d	$a0, $sp, 368
	st.w	$s5, $sp, 376
	b	.LBB2_31
	.p2align	4, , 16
.LBB2_24:                               # %if.then599
                                        #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a1, $sp, 368
	addi.d	$a3, $sp, 344
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(Constrained)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 368
	ld.w	$a1, $sp, 372
	ld.w	$a0, $sp, 376
	bne	$a2, $s5, .LBB2_28
# %bb.25:                               # %if.then599
                                        #   in Loop: Header=BB2_7 Depth=1
	bne	$a1, $s5, .LBB2_28
# %bb.26:                               # %if.then599
                                        #   in Loop: Header=BB2_7 Depth=1
	bne	$a0, $s5, .LBB2_28
# %bb.27:                               # %if.then608
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $fp, 80
	addi.d	$fp, $fp, 32
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a2, $a0, %pc_lo12(.L.str.10)
	ori	$a0, $zero, 19
	ori	$a1, $zero, 2
	ori	$a3, $zero, 1
	move	$a4, $fp
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 368
	ld.w	$a1, $sp, 372
	ld.w	$a0, $sp, 376
.LBB2_28:                               # %if.end613
                                        #   in Loop: Header=BB2_7 Depth=1
	bltz	$a2, .LBB2_266
# %bb.29:                               # %if.end613
                                        #   in Loop: Header=BB2_7 Depth=1
	bltz	$a1, .LBB2_266
# %bb.30:                               # %if.end613
                                        #   in Loop: Header=BB2_7 Depth=1
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB2_266
.LBB2_31:                               # %if.end631
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$s8, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $s8, 0
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	move	$a0, $s4
	pcaddu18i	$ra, %call36(CopyObject)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	ld.bu	$a2, $a1, 0
	slli.d	$a3, $a2, 3
	ldx.d	$a1, $s2, $a3
	st.w	$a2, $s7, 0
	beqz	$a1, .LBB2_33
# %bb.32:                               # %if.else646
                                        #   in Loop: Header=BB2_7 Depth=1
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a1, $a2, 0
	ld.d	$a2, $a1, 0
	stx.d	$a2, $s2, $a3
	b	.LBB2_34
	.p2align	4, , 16
.LBB2_33:                               # %if.then644
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a1, $s8, 0
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
.LBB2_34:                               # %cond.end701
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$s0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 264                   # 8-byte Folded Reload
	st.b	$zero, $a1, 32
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	pcalau12i	$a2, %got_pc_hi20(xx_link)
	ld.d	$a5, $a2, %got_pc_lo12(xx_link)
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$s6, $a2, %got_pc_lo12(zz_res)
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$s1, $a2, %got_pc_lo12(zz_hold)
	st.d	$a1, $a1, 0
	st.d	$a1, $a5, 0
	st.d	$a1, $s6, 0
	st.d	$a6, $s1, 0
	ld.d	$a2, $a6, 0
	pcalau12i	$a3, %got_pc_hi20(zz_tmp)
	ld.d	$a4, $a3, %got_pc_lo12(zz_tmp)
	st.d	$a2, $a4, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a6, 0
	ld.d	$a1, $s6, 0
	ld.d	$a2, $s1, 0
	ld.d	$a3, $a1, 0
	st.d	$a4, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a4, $a4, 0
	st.d	$a2, $a3, 8
	st.d	$a4, $a1, 0
	ld.d	$a2, $s6, 0
	st.d	$a5, $sp, 296                   # 8-byte Folded Spill
	ld.d	$a1, $a5, 0
	st.d	$a2, $a4, 8
	st.d	$a1, $s6, 0
	st.d	$a0, $s1, 0
	ld.d	$fp, $sp, 288                   # 8-byte Folded Reload
	beqz	$a0, .LBB2_37
# %bb.35:                               # %cond.end701
                                        #   in Loop: Header=BB2_7 Depth=1
	beqz	$a1, .LBB2_37
# %bb.36:                               # %cond.false710
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a2, $a0, 16
	ld.d	$a3, $a1, 16
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	st.d	$a2, $a4, 0
	st.d	$a3, $a0, 16
	st.d	$a0, $a3, 24
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
.LBB2_37:                               # %cond.end734
                                        #   in Loop: Header=BB2_7 Depth=1
	pcaddu18i	$ra, %call36(DetachEnv)
	jirl	$ra, $ra, 0
	ld.hu	$s5, $s4, 42
	ld.hu	$s4, $s0, 42
	ld.d	$a2, $fp, 136
	ld.d	$s0, $fp, 88
	move	$fp, $a0
	beqz	$a2, .LBB2_39
# %bb.38:                               # %cond.true768
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a1, $s8, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(CopyObject)
	jirl	$ra, $ra, 0
	b	.LBB2_40
	.p2align	4, , 16
.LBB2_39:                               #   in Loop: Header=BB2_7 Depth=1
	move	$a0, $zero
.LBB2_40:                               # %cond.end772
                                        #   in Loop: Header=BB2_7 Depth=1
	andi	$a1, $s5, 24
	sltu	$a2, $zero, $a1
	bstrpick.d	$a3, $s5, 2, 2
	andi	$a4, $s4, 1
	bstrpick.d	$a5, $s4, 6, 6
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	addi.d	$a6, $a1, 64
	st.d	$a0, $sp, 32
	addi.d	$a0, $sp, 392
	st.d	$a0, $sp, 24
	addi.d	$a0, $sp, 384
	st.d	$a0, $sp, 16
	addi.d	$a0, $sp, 400
	st.d	$a0, $sp, 8
	addi.d	$a7, $sp, 368
	st.d	$s0, $sp, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	move	$a1, $fp
	pcaddu18i	$ra, %call36(SizeGalley)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 384
	beqz	$a0, .LBB2_42
# %bb.41:                               # %if.then776
                                        #   in Loop: Header=BB2_7 Depth=1
	pcaddu18i	$ra, %call36(ExpandRecursives)
	jirl	$ra, $ra, 0
.LBB2_42:                               # %if.end777
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $sp, 400
	ld.d	$a2, $a0, 80
	ld.wu	$a0, $a2, 40
	lu12i.w	$a1, 393216
	and	$a1, $a0, $a1
	beqz	$a1, .LBB2_44
# %bb.43:                               # %if.end790
                                        #   in Loop: Header=BB2_7 Depth=1
	st.d	$a2, $sp, 272                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_45
	b	.LBB2_52
	.p2align	4, , 16
.LBB2_44:                               # %if.then785
                                        #   in Loop: Header=BB2_7 Depth=1
	lu12i.w	$a1, 131072
	or	$a0, $a0, $a1
	st.w	$a0, $a2, 40
	st.d	$a2, $sp, 272                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	beqz	$a0, .LBB2_52
.LBB2_45:                               # %if.then793
                                        #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a1, $sp, 368
	addi.d	$a3, $sp, 344
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	move	$a2, $zero
	pcaddu18i	$ra, %call36(Constrained)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 368
	ld.w	$a1, $sp, 372
	ld.w	$a0, $sp, 376
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	bne	$a2, $a3, .LBB2_49
# %bb.46:                               # %if.then793
                                        #   in Loop: Header=BB2_7 Depth=1
	bne	$a1, $a3, .LBB2_49
# %bb.47:                               # %if.then793
                                        #   in Loop: Header=BB2_7 Depth=1
	bne	$a0, $a3, .LBB2_49
# %bb.48:                               # %if.then806
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a5, $a0, %pc_lo12(.L.str.11)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 368
	ld.w	$a1, $sp, 372
	ld.w	$a0, $sp, 376
.LBB2_49:                               # %if.end808
                                        #   in Loop: Header=BB2_7 Depth=1
	bltz	$a2, .LBB2_266
# %bb.50:                               # %if.end808
                                        #   in Loop: Header=BB2_7 Depth=1
	bltz	$a1, .LBB2_266
# %bb.51:                               # %if.end808
                                        #   in Loop: Header=BB2_7 Depth=1
	bltz	$a0, .LBB2_266
.LBB2_52:                               # %if.end822
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$fp, $sp, 288                   # 8-byte Folded Reload
	ld.hu	$a0, $fp, 42
	andi	$a0, $a0, 2
	bnez	$a0, .LBB2_95
# %bb.53:                               # %if.then830
                                        #   in Loop: Header=BB2_7 Depth=1
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(EnterErrorBlock)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	st.d	$zero, $sp, 360
	ld.d	$s4, $sp, 248                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_54:                               # %for.cond837
                                        #   Parent Loop BB2_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB2_54
# %bb.55:                               # %for.end848
                                        #   in Loop: Header=BB2_7 Depth=1
	pcaddu18i	$ra, %call36(DetachEnv)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_57
# %bb.56:                               #   in Loop: Header=BB2_7 Depth=1
	move	$a3, $zero
	ld.d	$s0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	b	.LBB2_58
.LBB2_57:                               # %cond.true852
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	ld.hu	$a0, $a2, 42
	bstrpick.d	$a3, $a0, 2, 2
	ld.d	$s0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 240                   # 8-byte Folded Reload
.LBB2_58:                               # %cond.end860
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.hu	$a0, $s4, 42
	addi.d	$a6, $a2, 64
	st.d	$zero, $sp, 32
	addi.d	$a2, $sp, 408
	st.d	$a2, $sp, 24
	addi.d	$a2, $sp, 384
	st.d	$a2, $sp, 16
	addi.d	$a2, $sp, 360
	st.d	$a2, $sp, 8
	andi	$a4, $a0, 1
	ori	$a2, $zero, 1
	ori	$a5, $zero, 1
	addi.d	$a7, $sp, 368
	st.d	$zero, $sp, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(SizeGalley)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 384
	beqz	$a0, .LBB2_60
# %bb.59:                               # %if.then870
                                        #   in Loop: Header=BB2_7 Depth=1
	pcaddu18i	$ra, %call36(ExpandRecursives)
	jirl	$ra, $ra, 0
.LBB2_60:                               # %if.end871
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB2_94
# %bb.61:                               # %if.then873
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.bu	$a0, $s0, 124
	slli.d	$a1, $a0, 3
	ldx.d	$s4, $s2, $a1
	st.w	$a0, $s7, 0
	beqz	$s4, .LBB2_63
# %bb.62:                               # %if.else887
                                        #   in Loop: Header=BB2_7 Depth=1
	st.d	$s4, $s1, 0
	ld.d	$a1, $s4, 0
	alsl.d	$a0, $a0, $s2, 3
	st.d	$a1, $a0, 0
	b	.LBB2_64
.LBB2_63:                               # %if.then885
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a1, $s8, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.d	$a0, $s1, 0
.LBB2_64:                               # %if.end896
                                        #   in Loop: Header=BB2_7 Depth=1
	ori	$a0, $zero, 124
	st.b	$a0, $s4, 32
	st.d	$s4, $s4, 24
	st.d	$s4, $s4, 16
	st.d	$s4, $s4, 8
	st.d	$s4, $s4, 0
	ld.bu	$a0, $s0, 125
	slli.d	$a1, $a0, 3
	ldx.d	$fp, $s2, $a1
	st.w	$a0, $s7, 0
	beqz	$fp, .LBB2_66
# %bb.65:                               # %if.else924
                                        #   in Loop: Header=BB2_7 Depth=1
	st.d	$fp, $s1, 0
	ld.d	$a1, $fp, 0
	alsl.d	$a0, $a0, $s2, 3
	st.d	$a1, $a0, 0
	b	.LBB2_67
.LBB2_66:                               # %if.then922
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a1, $s8, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$a0, $s1, 0
.LBB2_67:                               # %if.end933
                                        #   in Loop: Header=BB2_7 Depth=1
	ori	$a0, $zero, 125
	st.b	$a0, $fp, 32
	st.d	$fp, $fp, 24
	st.d	$fp, $fp, 16
	ld.hu	$a0, $fp, 42
	st.d	$fp, $fp, 0
	ld.d	$a2, $s8, 0
	st.d	$fp, $fp, 8
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	and	$a0, $a0, $a1
	st.h	$a0, $fp, 42
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	ori	$a0, $zero, 11
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	ld.bu	$a2, $s0, 0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $s2, $a1
	move	$s5, $a0
	st.w	$a2, $s7, 0
	beqz	$a1, .LBB2_69
# %bb.68:                               # %if.else966
                                        #   in Loop: Header=BB2_7 Depth=1
	st.d	$a1, $s1, 0
	ld.d	$a0, $a1, 0
	alsl.d	$a2, $a2, $s2, 3
	st.d	$a0, $a2, 0
	b	.LBB2_70
.LBB2_69:                               # %if.then964
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a1, $s8, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.LBB2_70:                               # %cond.end1021
                                        #   in Loop: Header=BB2_7 Depth=1
	st.b	$zero, $a1, 32
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	st.d	$a1, $a1, 0
	ld.d	$a4, $sp, 296                   # 8-byte Folded Reload
	st.d	$a1, $a4, 0
	st.d	$a1, $s6, 0
	st.d	$s4, $s1, 0
	ld.d	$a0, $s4, 0
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	st.d	$a0, $a5, 0
	ld.d	$a0, $a1, 0
	st.d	$a0, $s4, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s1, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a5, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s6, 0
	ld.d	$a0, $a4, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s6, 0
	st.d	$s5, $s1, 0
	beqz	$s5, .LBB2_73
# %bb.71:                               # %cond.end1021
                                        #   in Loop: Header=BB2_7 Depth=1
	beqz	$a0, .LBB2_73
# %bb.72:                               # %cond.false1030
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a1, $s5, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $a5, 0
	st.d	$a2, $s5, 16
	st.d	$s5, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB2_73:                               # %cond.end1054
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.bu	$a2, $a0, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s2, $a0
	st.w	$a2, $s7, 0
	beqz	$a0, .LBB2_75
# %bb.74:                               # %if.else1069
                                        #   in Loop: Header=BB2_7 Depth=1
	st.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s2, 3
	st.d	$a1, $a2, 0
	b	.LBB2_76
.LBB2_75:                               # %if.then1067
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a1, $s8, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 296                   # 8-byte Folded Reload
.LBB2_76:                               # %cond.end1124
                                        #   in Loop: Header=BB2_7 Depth=1
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $a4, 0
	st.d	$a0, $s6, 0
	st.d	$fp, $s1, 0
	ld.d	$a1, $fp, 0
	st.d	$a1, $a5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $fp, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s1, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a5, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s6, 0
	ld.d	$a0, $a4, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s6, 0
	st.d	$s5, $s1, 0
	beqz	$s5, .LBB2_79
# %bb.77:                               # %cond.end1124
                                        #   in Loop: Header=BB2_7 Depth=1
	beqz	$a0, .LBB2_79
# %bb.78:                               # %cond.false1133
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a1, $s5, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $a5, 0
	st.d	$a2, $s5, 16
	st.d	$s5, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB2_79:                               # %cond.end1157
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$s0, $sp, 280                   # 8-byte Folded Reload
	ld.bu	$a2, $s0, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s2, $a0
	st.w	$a2, $s7, 0
	beqz	$a0, .LBB2_81
# %bb.80:                               # %if.else1172
                                        #   in Loop: Header=BB2_7 Depth=1
	st.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s2, 3
	st.d	$a1, $a2, 0
	b	.LBB2_82
.LBB2_81:                               # %if.then1170
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a1, $s8, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 296                   # 8-byte Folded Reload
.LBB2_82:                               # %if.end1181
                                        #   in Loop: Header=BB2_7 Depth=1
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a1, $s3, 24
	st.d	$a0, $a4, 0
	st.d	$a0, $s6, 0
	st.d	$a1, $s1, 0
	beqz	$a1, .LBB2_84
# %bb.83:                               # %cond.end1230
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a2, $a1, 0
	st.d	$a2, $a5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s1, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a5, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s6, 0
	ld.d	$a0, $a4, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s6, 0
	st.d	$s4, $s1, 0
	bnez	$a0, .LBB2_85
	b	.LBB2_86
.LBB2_84:                               # %cond.end1230.thread
                                        #   in Loop: Header=BB2_7 Depth=1
	st.d	$s4, $s1, 0
.LBB2_85:                               # %cond.false1239
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a1, $s4, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $a5, 0
	st.d	$a2, $s4, 16
	st.d	$s4, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB2_86:                               # %cond.end1263
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.bu	$a2, $s0, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s2, $a0
	st.w	$a2, $s7, 0
	beqz	$a0, .LBB2_88
# %bb.87:                               # %if.else1278
                                        #   in Loop: Header=BB2_7 Depth=1
	st.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s2, 3
	st.d	$a1, $a2, 0
	b	.LBB2_89
.LBB2_88:                               # %if.then1276
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a1, $s8, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 296                   # 8-byte Folded Reload
.LBB2_89:                               # %if.end1287
                                        #   in Loop: Header=BB2_7 Depth=1
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 8
	st.d	$a0, $a4, 0
	st.d	$a0, $s6, 0
	st.d	$a1, $s1, 0
	beqz	$a1, .LBB2_92
# %bb.90:                               # %cond.end1336
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a2, $a1, 0
	st.d	$a2, $a5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s1, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a5, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $a4, 0
	st.d	$a0, $a3, 8
	st.d	$a1, $s6, 0
	st.d	$fp, $s1, 0
	beqz	$a1, .LBB2_94
# %bb.91:                               # %cond.end1336.cond.false1345_crit_edge
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $a1, 16
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	b	.LBB2_93
.LBB2_92:                               # %cond.end1336.thread
                                        #   in Loop: Header=BB2_7 Depth=1
	st.d	$fp, $s1, 0
	move	$a1, $a0
.LBB2_93:                               # %cond.false1345
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a2, $fp, 16
	st.d	$a0, $fp, 16
	ld.d	$a0, $a1, 16
	st.d	$a2, $a5, 0
	st.d	$fp, $a0, 24
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
.LBB2_94:                               # %if.end1371
                                        #   in Loop: Header=BB2_7 Depth=1
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(LeaveErrorBlock)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 288                   # 8-byte Folded Reload
.LBB2_95:                               # %if.end1372
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_152
.LBB2_96:                               # %if.end1412
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$s8, $fp, 8
	ld.d	$s5, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 144                   # 8-byte Folded Reload
	ori	$a3, $zero, 9
	bne	$s8, $fp, .LBB2_99
	b	.LBB2_278
	.p2align	4, , 16
.LBB2_97:                               # %sw.bb2155
                                        #   in Loop: Header=BB2_99 Depth=2
	ld.wu	$a0, $s4, 40
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	ld.wu	$a1, $a1, 40
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	and	$a0, $a0, $a2
	srli.d	$a1, $a1, 29
	bstrins.d	$a0, $a1, 30, 29
	st.w	$a0, $s4, 40
.LBB2_98:                               # %for.inc3473
                                        #   in Loop: Header=BB2_99 Depth=2
	ld.d	$s8, $s8, 8
	beq	$s8, $fp, .LBB2_278
.LBB2_99:                               # %for.cond1423.preheader
                                        #   Parent Loop BB2_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_100 Depth 3
                                        #       Child Loop BB2_103 Depth 3
                                        #       Child Loop BB2_113 Depth 3
                                        #       Child Loop BB2_115 Depth 3
                                        #       Child Loop BB2_128 Depth 3
                                        #       Child Loop BB2_133 Depth 3
	move	$s4, $s8
	.p2align	4, , 16
.LBB2_100:                              # %for.cond1423
                                        #   Parent Loop BB2_7 Depth=1
                                        #     Parent Loop BB2_99 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s4, $s4, 16
	ld.bu	$a0, $s4, 32
	beqz	$a0, .LBB2_100
# %bb.101:                              # %for.cond1423
                                        #   in Loop: Header=BB2_99 Depth=2
	bne	$a0, $a3, .LBB2_104
# %bb.102:                              # %if.then1440
                                        #   in Loop: Header=BB2_99 Depth=2
	ldx.d	$s4, $s4, $s0
	.p2align	4, , 16
.LBB2_103:                              # %for.cond1456
                                        #   Parent Loop BB2_7 Depth=1
                                        #     Parent Loop BB2_99 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s4, $s4, 16
	ld.bu	$a0, $s4, 32
	beqz	$a0, .LBB2_103
.LBB2_104:                              # %if.end1468
                                        #   in Loop: Header=BB2_99 Depth=2
	addi.d	$a1, $a0, -1
	ori	$a2, $zero, 137
	bltu	$a2, $a1, .LBB2_121
# %bb.105:                              # %if.end1468
                                        #   in Loop: Header=BB2_99 Depth=2
	slli.d	$a1, $a1, 2
	pcalau12i	$a2, %pc_hi20(.LJTI2_0)
	addi.d	$a2, $a2, %pc_lo12(.LJTI2_0)
	ldx.w	$a1, $a2, $a1
	add.d	$a1, $a2, $a1
	jr	$a1
.LBB2_106:                              # %sw.bb1472
                                        #   in Loop: Header=BB2_99 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	beqz	$a0, .LBB2_98
# %bb.107:                              # %if.then1474
                                        #   in Loop: Header=BB2_99 Depth=2
	ld.d	$a0, $sp, 408
	bnez	$a0, .LBB2_145
# %bb.108:                              # %if.then1477
                                        #   in Loop: Header=BB2_99 Depth=2
	ld.bu	$a2, $s5, 17
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s2, $a0
	st.w	$a2, $s7, 0
	beqz	$a0, .LBB2_143
# %bb.109:                              # %if.else1491
                                        #   in Loop: Header=BB2_99 Depth=2
	st.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s2, 3
	st.d	$a1, $a2, 0
	b	.LBB2_144
.LBB2_110:                              # %sw.bb2121
                                        #   in Loop: Header=BB2_99 Depth=2
	ld.wu	$a0, $s4, 40
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	ld.wu	$a1, $a1, 40
	ld.hu	$a2, $s4, 44
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	and	$a0, $a0, $a3
	srli.d	$a1, $a1, 29
	bstrins.d	$a0, $a1, 30, 29
	andi	$a1, $a2, 512
	st.w	$a0, $s4, 40
	bnez	$a1, .LBB2_141
# %bb.111:                              # %if.then2137
                                        #   in Loop: Header=BB2_99 Depth=2
	ld.h	$a0, $fp, 42
	ori	$a0, $a0, 32
	st.h	$a0, $fp, 42
	ori	$a3, $zero, 9
	b	.LBB2_98
.LBB2_112:                              # %sw.bb1622
                                        #   in Loop: Header=BB2_99 Depth=2
	ld.d	$a0, $s4, 8
	.p2align	4, , 16
.LBB2_113:                              # %for.cond1629
                                        #   Parent Loop BB2_7 Depth=1
                                        #     Parent Loop BB2_99 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB2_113
# %bb.114:                              # %for.end1640
                                        #   in Loop: Header=BB2_99 Depth=2
	ld.d	$fp, $a0, 24
	ld.d	$a0, $a0, 16
	beq	$fp, $a0, .LBB2_125
	.p2align	4, , 16
.LBB2_115:                              # %for.cond1761
                                        #   Parent Loop BB2_7 Depth=1
                                        #     Parent Loop BB2_99 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$fp, $fp, 0
	ld.bu	$a0, $fp, 32
	beqz	$a0, .LBB2_115
# %bb.116:                              # %for.cond1761
                                        #   in Loop: Header=BB2_99 Depth=2
	ori	$a1, $zero, 124
	beq	$a0, $a1, .LBB2_118
# %bb.117:                              # %if.then1778
                                        #   in Loop: Header=BB2_99 Depth=2
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a5, $a0, %pc_lo12(.L.str.14)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB2_118:                              # %if.end1780
                                        #   in Loop: Header=BB2_99 Depth=2
	move	$a0, $fp
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(CheckComponentOrder)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 157
	beq	$a0, $a1, .LBB2_122
# %bb.119:                              # %if.end1780
                                        #   in Loop: Header=BB2_99 Depth=2
	ori	$a1, $zero, 155
	beq	$a0, $a1, .LBB2_266
# %bb.120:                              # %if.end1780
                                        #   in Loop: Header=BB2_99 Depth=2
	ld.d	$s5, $sp, 280                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 144                   # 8-byte Folded Reload
	ori	$a3, $zero, 9
	ori	$a1, $zero, 156
	bne	$a0, $a1, .LBB2_98
	b	.LBB2_320
.LBB2_121:                              # %sw.default3466
                                        #   in Loop: Header=BB2_99 Depth=2
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$fp, $a1, 0
	pcaddu18i	$ra, %call36(Image)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a2, $a0, %pc_lo12(.L.str.24)
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a5, $a0, %pc_lo12(.L.str.25)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 3
	move	$a3, $zero
	move	$a4, $fp
	ld.d	$fp, $sp, 288                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ori	$a3, $zero, 9
	ld.d	$a5, $sp, 296                   # 8-byte Folded Reload
	b	.LBB2_98
.LBB2_122:                              # %sw.bb1782
                                        #   in Loop: Header=BB2_99 Depth=2
	pcalau12i	$a0, %got_pc_hi20(xx_hold)
	ld.d	$a0, $a0, %got_pc_lo12(xx_hold)
	ld.d	$a1, $fp, 24
	st.d	$fp, $a0, 0
	ld.d	$s5, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 296                   # 8-byte Folded Reload
	bne	$a1, $fp, .LBB2_128
.LBB2_123:                              # %while.cond1884.preheader
                                        #   in Loop: Header=BB2_99 Depth=2
	ld.d	$a1, $fp, 8
	ld.d	$s0, $sp, 144                   # 8-byte Folded Reload
	bne	$a1, $fp, .LBB2_133
.LBB2_124:                              # %while.end1984
                                        #   in Loop: Header=BB2_99 Depth=2
	ld.bu	$a0, $fp, 32
	addi.d	$a1, $a0, -11
	sltui	$a1, $a1, 2
	addi.d	$a2, $fp, 33
	add.d	$a0, $s5, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ld.bu	$a0, $a0, 0
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s2, $a1
	st.d	$fp, $s1, 0
	st.w	$a0, $s7, 0
	st.d	$a1, $fp, 0
	ld.w	$a0, $s7, 0
	ld.d	$a1, $s1, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s2, $a0
.LBB2_125:                              # %if.then1649
                                        #   in Loop: Header=BB2_99 Depth=2
	ld.d	$s8, $s8, 0
	ld.d	$a0, $s8, 8
	ld.d	$a2, $a0, 24
	st.d	$a0, $a5, 0
	beq	$a2, $a0, .LBB2_137
# %bb.126:                              # %cond.false1662
                                        #   in Loop: Header=BB2_99 Depth=2
	ld.d	$a1, $a0, 16
	st.d	$a2, $s6, 0
	st.d	$a1, $a2, 16
	st.d	$a2, $a1, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	b	.LBB2_138
	.p2align	4, , 16
.LBB2_127:                              # %cond.end1851
                                        #   in Loop: Header=BB2_128 Depth=3
	ld.bu	$a2, $a1, 32
	addi.d	$a3, $a2, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $a1, 33
	add.d	$a2, $s5, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $s2, $a3
	st.d	$a1, $s1, 0
	st.w	$a2, $s7, 0
	st.d	$a3, $a1, 0
	ld.w	$a1, $s7, 0
	ld.d	$a2, $s1, 0
	ld.d	$fp, $a0, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $s2, $a1
	ld.d	$a1, $fp, 24
	beq	$a1, $fp, .LBB2_123
.LBB2_128:                              # %while.body1789
                                        #   Parent Loop BB2_7 Depth=1
                                        #     Parent Loop BB2_99 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $a1, 24
	st.d	$a1, $a5, 0
	beq	$a2, $a1, .LBB2_130
# %bb.129:                              # %cond.false1799
                                        #   in Loop: Header=BB2_128 Depth=3
	ld.d	$a3, $a1, 16
	st.d	$a2, $s6, 0
	st.d	$a3, $a2, 16
	st.d	$a2, $a3, 24
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
.LBB2_130:                              # %cond.end1821
                                        #   in Loop: Header=BB2_128 Depth=3
	ld.d	$a2, $a1, 8
	st.d	$a1, $s1, 0
	beq	$a2, $a1, .LBB2_127
# %bb.131:                              # %cond.false1829
                                        #   in Loop: Header=BB2_128 Depth=3
	st.d	$a2, $s6, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a2, 0
	ld.d	$a2, $s1, 0
	ld.d	$a1, $s6, 0
	ld.d	$a3, $a2, 0
	st.d	$a1, $a3, 8
	st.d	$a2, $a2, 0
	ld.d	$a1, $a5, 0
	st.d	$a2, $a2, 8
	b	.LBB2_127
	.p2align	4, , 16
.LBB2_132:                              # %cond.end1952
                                        #   in Loop: Header=BB2_133 Depth=3
	ld.bu	$a2, $a1, 32
	addi.d	$a3, $a2, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $a1, 33
	add.d	$a2, $s5, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $s2, $a3
	st.d	$a1, $s1, 0
	st.w	$a2, $s7, 0
	st.d	$a3, $a1, 0
	ld.w	$a1, $s7, 0
	ld.d	$a2, $s1, 0
	ld.d	$fp, $a0, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $s2, $a1
	ld.d	$a1, $fp, 8
	beq	$a1, $fp, .LBB2_124
.LBB2_133:                              # %while.body1890
                                        #   Parent Loop BB2_7 Depth=1
                                        #     Parent Loop BB2_99 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $a1, 24
	st.d	$a1, $a5, 0
	beq	$a2, $a1, .LBB2_135
# %bb.134:                              # %cond.false1900
                                        #   in Loop: Header=BB2_133 Depth=3
	ld.d	$a3, $a1, 16
	st.d	$a2, $s6, 0
	st.d	$a3, $a2, 16
	st.d	$a2, $a3, 24
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
.LBB2_135:                              # %cond.end1922
                                        #   in Loop: Header=BB2_133 Depth=3
	ld.d	$a2, $a1, 8
	st.d	$a1, $s1, 0
	beq	$a2, $a1, .LBB2_132
# %bb.136:                              # %cond.false1930
                                        #   in Loop: Header=BB2_133 Depth=3
	st.d	$a2, $s6, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a2, 0
	ld.d	$a2, $s1, 0
	ld.d	$a1, $s6, 0
	ld.d	$a3, $a2, 0
	st.d	$a1, $a3, 8
	st.d	$a2, $a2, 0
	ld.d	$a1, $a5, 0
	st.d	$a2, $a2, 8
	b	.LBB2_132
.LBB2_137:                              #   in Loop: Header=BB2_99 Depth=2
	move	$a2, $zero
.LBB2_138:                              # %cond.end1684
                                        #   in Loop: Header=BB2_99 Depth=2
	ld.d	$fp, $sp, 288                   # 8-byte Folded Reload
	pcalau12i	$a1, %got_pc_hi20(xx_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(xx_tmp)
	ld.d	$a3, $a0, 8
	st.d	$a2, $a1, 0
	st.d	$a0, $s1, 0
	beq	$a3, $a0, .LBB2_140
# %bb.139:                              # %cond.false1692
                                        #   in Loop: Header=BB2_99 Depth=2
	st.d	$a3, $s6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a3, 0
	ld.d	$a2, $s1, 0
	ld.d	$a0, $s6, 0
	ld.d	$a3, $a2, 0
	st.d	$a0, $a3, 8
	st.d	$a2, $a2, 0
	ld.d	$a0, $a5, 0
	st.d	$a2, $a2, 8
.LBB2_140:                              # %cond.end1714
                                        #   in Loop: Header=BB2_99 Depth=2
	ld.bu	$a2, $a0, 32
	addi.d	$a3, $a2, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $a0, 33
	add.d	$a2, $s5, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $s2, $a3
	st.d	$a0, $s1, 0
	st.w	$a2, $s7, 0
	st.d	$a3, $a0, 0
	ld.w	$a2, $s7, 0
	ld.d	$a3, $s1, 0
	ld.d	$a0, $a1, 0
	slli.d	$a1, $a2, 3
	stx.d	$a3, $s2, $a1
	ld.d	$a1, $a0, 24
	beq	$a1, $a0, .LBB2_142
.LBB2_141:                              #   in Loop: Header=BB2_99 Depth=2
	ori	$a3, $zero, 9
	b	.LBB2_98
.LBB2_142:                              # %if.then1751
                                        #   in Loop: Header=BB2_99 Depth=2
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 296                   # 8-byte Folded Reload
	ori	$a3, $zero, 9
	b	.LBB2_98
.LBB2_143:                              # %if.then1489
                                        #   in Loop: Header=BB2_99 Depth=2
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ori	$a3, $zero, 9
	ld.d	$a5, $sp, 296                   # 8-byte Folded Reload
	st.d	$a0, $s1, 0
.LBB2_144:                              # %if.end1500
                                        #   in Loop: Header=BB2_99 Depth=2
	ori	$a1, $zero, 17
	st.b	$a1, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $sp, 408
.LBB2_145:                              # %if.end1515
                                        #   in Loop: Header=BB2_99 Depth=2
	ld.bu	$a2, $s5, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s2, $a0
	st.w	$a2, $s7, 0
	beqz	$a0, .LBB2_147
# %bb.146:                              # %if.else1529
                                        #   in Loop: Header=BB2_99 Depth=2
	st.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s2, 3
	st.d	$a1, $a2, 0
	b	.LBB2_148
.LBB2_147:                              # %if.then1527
                                        #   in Loop: Header=BB2_99 Depth=2
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ori	$a3, $zero, 9
	ld.d	$a5, $sp, 296                   # 8-byte Folded Reload
.LBB2_148:                              # %if.end1538
                                        #   in Loop: Header=BB2_99 Depth=2
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 0
	ld.d	$a1, $sp, 408
	st.d	$a0, $a0, 8
	st.d	$a0, $a5, 0
	st.d	$a0, $s6, 0
	st.d	$a1, $s1, 0
	beqz	$a1, .LBB2_150
# %bb.149:                              # %cond.end1584
                                        #   in Loop: Header=BB2_99 Depth=2
	ld.d	$a2, $a1, 0
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	st.d	$a2, $a4, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s1, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a4, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s6, 0
	ld.d	$a0, $a5, 0
	st.d	$a1, $a3, 8
	ori	$a3, $zero, 9
	st.d	$a0, $s6, 0
	st.d	$s4, $s1, 0
	bnez	$a0, .LBB2_151
	b	.LBB2_98
.LBB2_150:                              # %cond.end1584.thread
                                        #   in Loop: Header=BB2_99 Depth=2
	st.d	$s4, $s1, 0
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
.LBB2_151:                              # %cond.false1593
                                        #   in Loop: Header=BB2_99 Depth=2
	ld.d	$a1, $s4, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $a4, 0
	st.d	$a2, $s4, 16
	st.d	$s4, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
	b	.LBB2_98
	.p2align	4, , 16
.LBB2_152:                              # %if.then1375
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.w	$a1, $sp, 368
	bge	$a1, $a0, .LBB2_208
.LBB2_153:                              # %if.then1404
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $fp, 80
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 80
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a2, $a0, %pc_lo12(.L.str.13)
	ori	$a0, $zero, 19
	ori	$a1, $zero, 3
	ori	$a3, $zero, 2
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	move	$a5, $fp
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB2_266
.LBB2_154:                              # %sw.bb2166
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.wu	$a1, $s4, 40
	ld.d	$s0, $sp, 272                   # 8-byte Folded Reload
	ld.wu	$a2, $s0, 40
	addi.d	$a3, $s4, 32
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	and	$a1, $a1, $a3
	srli.d	$a2, $a2, 29
	bstrins.d	$a1, $a2, 30, 29
	st.w	$a1, $s4, 40
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	beqz	$a1, .LBB2_158
# %bb.155:                              # %for.cond2183.preheader
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$s0, $s8, 8
	bne	$s0, $fp, .LBB2_168
# %bb.156:                              # %for.end2746
                                        #   in Loop: Header=BB2_7 Depth=1
	ori	$a1, $zero, 18
	ld.d	$s0, $sp, 272                   # 8-byte Folded Reload
	bne	$a0, $a1, .LBB2_158
.LBB2_157:                              # %if.then2752
                                        #   in Loop: Header=BB2_7 Depth=1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(VerticalHyphenate)
	jirl	$ra, $ra, 0
.LBB2_158:                              # %if.end2755
                                        #   in Loop: Header=BB2_7 Depth=1
	st.d	$zero, $sp, 352
	addi.d	$a1, $sp, 368
	addi.d	$a3, $sp, 352
	move	$a0, $s0
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $fp
	pcaddu18i	$ra, %call36(Constrained)
	jirl	$ra, $ra, 0
	alsl.d	$fp, $fp, $s4, 2
	ld.w	$a3, $fp, 48
	ld.w	$a0, $sp, 368
	bge	$a0, $a3, .LBB2_210
.LBB2_159:                              # %if.then2784
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.hu	$a0, $a0, 42
	lu12i.w	$a1, 1
	and	$a0, $a0, $a1
	beqz	$a0, .LBB2_162
# %bb.160:                              # %land.lhs.true2792
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.w	$a1, $fp, 56
	add.w	$a0, $a1, $a3
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB2_162
# %bb.161:                              # %if.then2804
                                        #   in Loop: Header=BB2_7 Depth=1
	addi.d	$s0, $fp, 48
	addi.d	$a2, $sp, 368
	move	$a0, $a3
	pcaddu18i	$ra, %call36(ScaleToConstraint)
	jirl	$ra, $ra, 0
	ld.w	$a3, $s0, 0
	move	$s5, $a0
	ori	$a0, $zero, 65
	bge	$s5, $a0, .LBB2_215
.LBB2_162:                              # %if.then2853
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.w	$a0, $fp, 56
	add.w	$a0, $a0, $a3
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB2_266
# %bb.163:                              # %if.then2867
                                        #   in Loop: Header=BB2_7 Depth=1
	pcalau12i	$a1, %pc_hi20(.LCPI2_0)
	fld.s	$fs0, $a1, %pc_lo12(.LCPI2_0)
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fa0, $fa0
	fdiv.s	$fa0, $fa0, $fs0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$s4, $a0, %pc_lo12(.L.str.15)
	addi.d	$a0, $sp, 324
	move	$a1, $s4
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 372
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fdiv.s	$fa0, $fa0, $fs0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	addi.d	$a0, $sp, 304
	move	$a1, $s4
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_213
# %bb.164:                              # %if.else2895
                                        #   in Loop: Header=BB2_7 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a2, $a0, %pc_lo12(.L.str.20)
	ori	$a0, $zero, 19
	ori	$a1, $zero, 13
	b	.LBB2_214
	.p2align	4, , 16
.LBB2_165:                              # %while.end2417
                                        #   in Loop: Header=BB2_168 Depth=2
	ld.bu	$a0, $fp, 32
	addi.d	$a1, $a0, -11
	sltui	$a1, $a1, 2
	addi.d	$a2, $fp, 33
	add.d	$a0, $s5, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ld.bu	$a0, $a0, 0
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s2, $a1
	st.d	$fp, $s1, 0
	st.w	$a0, $s7, 0
	st.d	$a1, $fp, 0
	ld.w	$a0, $s7, 0
	ld.d	$a1, $s1, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s2, $a0
.LBB2_166:                              # %for.inc2742.loopexit
                                        #   in Loop: Header=BB2_168 Depth=2
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
.LBB2_167:                              # %for.inc2742
                                        #   in Loop: Header=BB2_168 Depth=2
	ld.d	$s0, $s0, 8
	beq	$s0, $a1, .LBB2_212
.LBB2_168:                              # %for.cond2190.preheader
                                        #   Parent Loop BB2_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_169 Depth 3
                                        #       Child Loop BB2_176 Depth 3
                                        #       Child Loop BB2_181 Depth 3
                                        #       Child Loop BB2_193 Depth 3
                                        #         Child Loop BB2_194 Depth 4
                                        #       Child Loop BB2_198 Depth 3
                                        #       Child Loop BB2_204 Depth 3
	move	$fp, $s0
	.p2align	4, , 16
.LBB2_169:                              # %for.cond2190
                                        #   Parent Loop BB2_7 Depth=1
                                        #     Parent Loop BB2_168 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$fp, $fp, 16
	ld.bu	$a0, $fp, 32
	beqz	$a0, .LBB2_169
# %bb.170:                              # %for.cond2190
                                        #   in Loop: Header=BB2_168 Depth=2
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB2_186
# %bb.171:                              # %for.cond2190
                                        #   in Loop: Header=BB2_168 Depth=2
	ori	$a1, $zero, 122
	beq	$a0, $a1, .LBB2_188
# %bb.172:                              # %for.cond2190
                                        #   in Loop: Header=BB2_168 Depth=2
	ori	$a1, $zero, 121
	bne	$a0, $a1, .LBB2_166
# %bb.173:                              # %sw.bb2205
                                        #   in Loop: Header=BB2_168 Depth=2
	ld.hu	$a0, $fp, 42
	andi	$a0, $a0, 1
	beqz	$a0, .LBB2_319
# %bb.174:                              # %if.then2212
                                        #   in Loop: Header=BB2_168 Depth=2
	pcalau12i	$a0, %got_pc_hi20(xx_hold)
	ld.d	$a0, $a0, %got_pc_lo12(xx_hold)
	ld.d	$a1, $fp, 24
	ld.d	$s0, $s0, 0
	st.d	$fp, $a0, 0
	bne	$a1, $fp, .LBB2_176
	b	.LBB2_181
	.p2align	4, , 16
.LBB2_175:                              # %cond.end2284
                                        #   in Loop: Header=BB2_176 Depth=3
	ld.bu	$a2, $a1, 32
	addi.d	$a3, $a2, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $a1, 33
	add.d	$a2, $s5, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $s2, $a3
	st.d	$a1, $s1, 0
	st.w	$a2, $s7, 0
	st.d	$a3, $a1, 0
	ld.w	$a1, $s7, 0
	ld.d	$a2, $s1, 0
	ld.d	$fp, $a0, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $s2, $a1
	ld.d	$a1, $fp, 24
	beq	$a1, $fp, .LBB2_181
.LBB2_176:                              # %while.body2222
                                        #   Parent Loop BB2_7 Depth=1
                                        #     Parent Loop BB2_168 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $a1, 24
	st.d	$a1, $a5, 0
	beq	$a2, $a1, .LBB2_178
# %bb.177:                              # %cond.false2232
                                        #   in Loop: Header=BB2_176 Depth=3
	ld.d	$a3, $a1, 16
	st.d	$a2, $s6, 0
	st.d	$a3, $a2, 16
	st.d	$a2, $a3, 24
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
.LBB2_178:                              # %cond.end2254
                                        #   in Loop: Header=BB2_176 Depth=3
	ld.d	$a2, $a1, 8
	st.d	$a1, $s1, 0
	beq	$a2, $a1, .LBB2_175
# %bb.179:                              # %cond.false2262
                                        #   in Loop: Header=BB2_176 Depth=3
	st.d	$a2, $s6, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a2, 0
	ld.d	$a2, $s1, 0
	ld.d	$a1, $s6, 0
	ld.d	$a3, $a2, 0
	st.d	$a1, $a3, 8
	st.d	$a2, $a2, 0
	ld.d	$a1, $a5, 0
	st.d	$a2, $a2, 8
	b	.LBB2_175
	.p2align	4, , 16
.LBB2_180:                              # %cond.end2385
                                        #   in Loop: Header=BB2_181 Depth=3
	ld.bu	$a2, $a1, 32
	addi.d	$a3, $a2, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $a1, 33
	add.d	$a2, $s5, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $s2, $a3
	st.d	$a1, $s1, 0
	st.w	$a2, $s7, 0
	st.d	$a3, $a1, 0
	ld.w	$a1, $s7, 0
	ld.d	$a2, $s1, 0
	ld.d	$fp, $a0, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $s2, $a1
.LBB2_181:                              # %while.cond2317.preheader
                                        #   Parent Loop BB2_7 Depth=1
                                        #     Parent Loop BB2_168 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $fp, 8
	beq	$a1, $fp, .LBB2_165
# %bb.182:                              # %while.body2323
                                        #   in Loop: Header=BB2_181 Depth=3
	ld.d	$a2, $a1, 24
	st.d	$a1, $a5, 0
	beq	$a2, $a1, .LBB2_184
# %bb.183:                              # %cond.false2333
                                        #   in Loop: Header=BB2_181 Depth=3
	ld.d	$a3, $a1, 16
	st.d	$a2, $s6, 0
	st.d	$a3, $a2, 16
	st.d	$a2, $a3, 24
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
.LBB2_184:                              # %cond.end2355
                                        #   in Loop: Header=BB2_181 Depth=3
	ld.d	$a2, $a1, 8
	st.d	$a1, $s1, 0
	beq	$a2, $a1, .LBB2_180
# %bb.185:                              # %cond.false2363
                                        #   in Loop: Header=BB2_181 Depth=3
	st.d	$a2, $s6, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a2, 0
	ld.d	$a2, $s1, 0
	ld.d	$a1, $s6, 0
	ld.d	$a3, $a2, 0
	st.d	$a1, $a3, 8
	st.d	$a2, $a2, 0
	ld.d	$a1, $a5, 0
	st.d	$a2, $a2, 8
	b	.LBB2_180
	.p2align	4, , 16
.LBB2_186:                              # %sw.bb2729
                                        #   in Loop: Header=BB2_168 Depth=2
	ld.hu	$a0, $fp, 44
	andi	$a0, $a0, 512
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_167
# %bb.187:                              # %if.then2736
                                        #   in Loop: Header=BB2_168 Depth=2
	ld.d	$s0, $a1, 0
	b	.LBB2_167
	.p2align	4, , 16
.LBB2_188:                              # %sw.bb2450
                                        #   in Loop: Header=BB2_168 Depth=2
	ld.hu	$a0, $fp, 42
	andi	$a0, $a0, 1
	beqz	$a0, .LBB2_319
# %bb.189:                              # %if.then2457
                                        #   in Loop: Header=BB2_168 Depth=2
	ld.d	$a1, $fp, 8
	ld.d	$s0, $s0, 0
	bne	$a1, $fp, .LBB2_193
.LBB2_190:                              # %while.end2494
                                        #   in Loop: Header=BB2_168 Depth=2
	pcalau12i	$a0, %got_pc_hi20(xx_hold)
	ld.d	$a0, $a0, %got_pc_lo12(xx_hold)
	ld.d	$a2, $fp, 24
	st.d	$fp, $a0, 0
	ld.d	$s5, $sp, 280                   # 8-byte Folded Reload
	bne	$a2, $fp, .LBB2_198
# %bb.191:                              # %while.cond2596.preheader
                                        #   in Loop: Header=BB2_168 Depth=2
	bne	$a1, $fp, .LBB2_204
	b	.LBB2_165
	.p2align	4, , 16
.LBB2_192:                              # %if.end2493
                                        #   in Loop: Header=BB2_193 Depth=3
	move	$a0, $s5
	pcaddu18i	$ra, %call36(DetachGalley)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	move	$a1, $zero
	pcaddu18i	$ra, %call36(KillGalley)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 8
	ld.d	$a5, $sp, 296                   # 8-byte Folded Reload
	beq	$a1, $fp, .LBB2_190
.LBB2_193:                              # %while.body2467
                                        #   Parent Loop BB2_7 Depth=1
                                        #     Parent Loop BB2_168 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_194 Depth 4
	ld.d	$s5, $s4, 8
	.p2align	4, , 16
.LBB2_194:                              # %for.cond2474
                                        #   Parent Loop BB2_7 Depth=1
                                        #     Parent Loop BB2_168 Depth=2
                                        #       Parent Loop BB2_193 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$s5, $s5, 16
	ld.bu	$a0, $s5, 32
	beqz	$a0, .LBB2_194
# %bb.195:                              # %for.end2485
                                        #   in Loop: Header=BB2_193 Depth=3
	ld.d	$a0, $s5, 104
	beqz	$a0, .LBB2_192
# %bb.196:                              # %if.then2489
                                        #   in Loop: Header=BB2_193 Depth=3
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	st.d	$zero, $s5, 104
	b	.LBB2_192
	.p2align	4, , 16
.LBB2_197:                              # %cond.end2563
                                        #   in Loop: Header=BB2_198 Depth=3
	ld.bu	$a1, $a2, 32
	addi.d	$a3, $a1, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $a2, 33
	add.d	$a1, $s5, $a1
	masknez	$a1, $a1, $a3
	maskeqz	$a3, $a4, $a3
	or	$a1, $a3, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a3, $a1, 3
	ldx.d	$a3, $s2, $a3
	st.d	$a2, $s1, 0
	st.w	$a1, $s7, 0
	st.d	$a3, $a2, 0
	ld.w	$a1, $s7, 0
	ld.d	$a2, $s1, 0
	ld.d	$fp, $a0, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $s2, $a1
	ld.d	$a2, $fp, 24
	beq	$a2, $fp, .LBB2_202
.LBB2_198:                              # %while.body2501
                                        #   Parent Loop BB2_7 Depth=1
                                        #     Parent Loop BB2_168 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $a2, 24
	st.d	$a2, $a5, 0
	beq	$a1, $a2, .LBB2_200
# %bb.199:                              # %cond.false2511
                                        #   in Loop: Header=BB2_198 Depth=3
	ld.d	$a3, $a2, 16
	st.d	$a1, $s6, 0
	st.d	$a3, $a1, 16
	st.d	$a1, $a3, 24
	st.d	$a2, $a2, 24
	st.d	$a2, $a2, 16
.LBB2_200:                              # %cond.end2533
                                        #   in Loop: Header=BB2_198 Depth=3
	ld.d	$a1, $a2, 8
	st.d	$a2, $s1, 0
	beq	$a1, $a2, .LBB2_197
# %bb.201:                              # %cond.false2541
                                        #   in Loop: Header=BB2_198 Depth=3
	st.d	$a1, $s6, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a1, 0
	ld.d	$a1, $s1, 0
	ld.d	$a2, $s6, 0
	ld.d	$a3, $a1, 0
	st.d	$a2, $a3, 8
	st.d	$a1, $a1, 0
	ld.d	$a2, $a5, 0
	st.d	$a1, $a1, 8
	b	.LBB2_197
.LBB2_202:                              # %while.cond2596.preheader.loopexit
                                        #   in Loop: Header=BB2_168 Depth=2
	ld.d	$a1, $fp, 8
	bne	$a1, $fp, .LBB2_204
	b	.LBB2_165
	.p2align	4, , 16
.LBB2_203:                              # %cond.end2664
                                        #   in Loop: Header=BB2_204 Depth=3
	ld.bu	$a2, $a1, 32
	addi.d	$a3, $a2, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $a1, 33
	add.d	$a2, $s5, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $s2, $a3
	st.d	$a1, $s1, 0
	st.w	$a2, $s7, 0
	st.d	$a3, $a1, 0
	ld.w	$a1, $s7, 0
	ld.d	$a2, $s1, 0
	ld.d	$fp, $a0, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $s2, $a1
	ld.d	$a1, $fp, 8
	beq	$a1, $fp, .LBB2_165
.LBB2_204:                              # %while.body2602
                                        #   Parent Loop BB2_7 Depth=1
                                        #     Parent Loop BB2_168 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $a1, 24
	st.d	$a1, $a5, 0
	beq	$a2, $a1, .LBB2_206
# %bb.205:                              # %cond.false2612
                                        #   in Loop: Header=BB2_204 Depth=3
	ld.d	$a3, $a1, 16
	st.d	$a2, $s6, 0
	st.d	$a3, $a2, 16
	st.d	$a2, $a3, 24
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
.LBB2_206:                              # %cond.end2634
                                        #   in Loop: Header=BB2_204 Depth=3
	ld.d	$a2, $a1, 8
	st.d	$a1, $s1, 0
	beq	$a2, $a1, .LBB2_203
# %bb.207:                              # %cond.false2642
                                        #   in Loop: Header=BB2_204 Depth=3
	st.d	$a2, $s6, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a2, 0
	ld.d	$a2, $s1, 0
	ld.d	$a1, $s6, 0
	ld.d	$a3, $a2, 0
	st.d	$a1, $a3, 8
	st.d	$a2, $a2, 0
	ld.d	$a1, $a5, 0
	st.d	$a2, $a2, 8
	b	.LBB2_203
.LBB2_208:                              # %land.lhs.true1382
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	ld.w	$a2, $sp, 372
	add.w	$a0, $a1, $a0
	blt	$a2, $a0, .LBB2_153
# %bb.209:                              # %land.lhs.true1382
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.w	$a0, $sp, 376
	bge	$a0, $a1, .LBB2_96
	b	.LBB2_153
.LBB2_210:                              # %land.lhs.true2763
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.w	$a0, $fp, 56
	ld.w	$a1, $sp, 372
	add.w	$a2, $a0, $a3
	blt	$a1, $a2, .LBB2_159
# %bb.211:                              # %land.lhs.true2763
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.w	$a1, $sp, 376
	bge	$a1, $a0, .LBB2_219
	b	.LBB2_159
.LBB2_212:                              # %for.end2746.loopexit
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 18
	ld.d	$s0, $sp, 272                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB2_157
	b	.LBB2_158
.LBB2_213:                              # %if.then2890
                                        #   in Loop: Header=BB2_7 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a2, $a0, %pc_lo12(.L.str.19)
	ori	$a0, $zero, 19
	ori	$a1, $zero, 12
.LBB2_214:                              # %cleanup
                                        #   in Loop: Header=BB2_7 Depth=1
	ori	$a3, $zero, 2
	addi.d	$a5, $sp, 324
	addi.d	$a6, $sp, 304
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB2_266
.LBB2_215:                              # %if.then2817
                                        #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a0, $fp, 56
	ld.w	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.LCPI2_0)
	fld.s	$fs0, $a1, %pc_lo12(.LCPI2_0)
	add.d	$a0, $a0, $a3
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fdiv.s	$fa0, $fa0, $fs0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$fp, $a0, %pc_lo12(.L.str.15)
	addi.d	$a0, $sp, 324
	move	$a1, $fp
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 372
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fdiv.s	$fa0, $fa0, $fs0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	addi.d	$a0, $sp, 304
	move	$a1, $fp
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 272                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_217
# %bb.216:                              # %if.else2843
                                        #   in Loop: Header=BB2_7 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a2, $a0, %pc_lo12(.L.str.18)
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a7, $a0, %pc_lo12(.L.str.17)
	ori	$a0, $zero, 19
	ori	$a1, $zero, 5
	ori	$a3, $zero, 2
	addi.d	$a5, $sp, 324
	addi.d	$a6, $sp, 304
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a2, $zero
	b	.LBB2_218
.LBB2_217:                              # %if.then2838
                                        #   in Loop: Header=BB2_7 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a2, $a0, %pc_lo12(.L.str.16)
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a7, $a0, %pc_lo12(.L.str.17)
	ori	$a0, $zero, 19
	ori	$a1, $zero, 4
	ori	$a3, $zero, 2
	addi.d	$a5, $sp, 324
	addi.d	$a6, $sp, 304
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
.LBB2_218:                              # %cleanup.thread
                                        #   in Loop: Header=BB2_7 Depth=1
	move	$a0, $s4
	move	$a1, $s5
	pcaddu18i	$ra, %call36(InterposeScale)
	jirl	$ra, $ra, 0
	move	$s4, $a0
.LBB2_219:                              # %if.end2903
                                        #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a0, $s4, 52
	addi.d	$a1, $s4, 60
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	masknez	$a2, $a2, $a3
	maskeqz	$a0, $a0, $a3
	or	$a0, $a0, $a2
	ld.w	$fp, $a0, 0
	ld.w	$s5, $a1, 0
	addi.d	$a1, $sp, 368
	addi.d	$a3, $sp, 344
	move	$a0, $s0
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Constrained)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 368
	bge	$a0, $fp, .LBB2_225
.LBB2_220:                              # %if.then2942
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.hu	$a0, $a0, 42
	lu12i.w	$a1, 1
	and	$a0, $a0, $a1
	beqz	$a0, .LBB2_266
# %bb.221:                              # %land.lhs.true2951
                                        #   in Loop: Header=BB2_7 Depth=1
	add.w	$s0, $s5, $fp
	ori	$a0, $zero, 1
	blt	$s0, $a0, .LBB2_266
# %bb.222:                              # %if.then2955
                                        #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a2, $sp, 368
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(ScaleToConstraint)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 65
	blt	$a1, $a0, .LBB2_266
# %bb.223:                              # %if.then2961
                                        #   in Loop: Header=BB2_7 Depth=1
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	fld.s	$fs0, $a0, %pc_lo12(.LCPI2_0)
	bstrpick.d	$a0, $s0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fa0, $fa0
	fdiv.s	$fa0, $fa0, $fs0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$s0, $a0, %pc_lo12(.L.str.15)
	addi.d	$a0, $sp, 324
	move	$a1, $s0
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 372
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fdiv.s	$fa0, $fa0, $fs0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	addi.d	$a0, $sp, 304
	move	$a1, $s0
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a4, $s4, 32
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_228
# %bb.224:                              # %if.then2979
                                        #   in Loop: Header=BB2_7 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a2, $a0, %pc_lo12(.L.str.16)
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a7, $a0, %pc_lo12(.L.str.17)
	ori	$a0, $zero, 19
	ori	$a1, $zero, 6
	ori	$a3, $zero, 2
	addi.d	$a5, $sp, 324
	addi.d	$a6, $sp, 304
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	b	.LBB2_229
.LBB2_225:                              # %land.lhs.true2933
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.w	$a0, $sp, 372
	add.w	$a1, $s5, $fp
	blt	$a0, $a1, .LBB2_220
# %bb.226:                              # %land.lhs.true2933
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.w	$a0, $sp, 376
	blt	$a0, $s5, .LBB2_220
# %bb.227:                              #   in Loop: Header=BB2_7 Depth=1
	st.d	$s5, $sp, 88                    # 8-byte Folded Spill
	b	.LBB2_230
.LBB2_228:                              # %if.else2984
                                        #   in Loop: Header=BB2_7 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a2, $a0, %pc_lo12(.L.str.18)
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a7, $a0, %pc_lo12(.L.str.17)
	ori	$a0, $zero, 19
	ori	$a1, $zero, 7
	ori	$a3, $zero, 2
	addi.d	$a5, $sp, 324
	addi.d	$a6, $sp, 304
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a2, $zero
.LBB2_229:                              # %if.end2993
                                        #   in Loop: Header=BB2_7 Depth=1
	st.d	$s5, $sp, 88                    # 8-byte Folded Spill
	move	$a0, $s4
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(InterposeScale)
	jirl	$ra, $ra, 0
	move	$s4, $a0
.LBB2_230:                              # %if.end3000
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$s0, $sp, 256                   # 8-byte Folded Reload
	alsl.d	$a0, $s0, $s4, 2
	ld.w	$a1, $a0, 48
	ld.w	$a2, $a0, 56
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $s5
	move	$a3, $s0
	pcaddu18i	$ra, %call36(AdjustSize)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	move	$a1, $fp
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(AdjustSize)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 368
	addi.d	$a3, $sp, 352
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $s0
	pcaddu18i	$ra, %call36(Constrained)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$fp, $a0, 0
	.p2align	4, , 16
.LBB2_231:                              # %for.cond3016
                                        #   Parent Loop BB2_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$fp, $fp, 16
	ld.bu	$a0, $fp, 32
	beqz	$a0, .LBB2_231
# %bb.232:                              # %for.end3027
                                        #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a0, $a0, -119
	ori	$a1, $zero, 19
	bltu	$a1, $a0, .LBB2_234
# %bb.233:                              # %if.then3039
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a5, $a0, %pc_lo12(.L.str.21)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB2_234:                              # %if.end3041
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	alsl.d	$s0, $a0, $fp, 2
	ld.w	$a0, $s0, 48
	addi.d	$s5, $s0, 48
	bltz	$a0, .LBB2_236
# %bb.235:                              # %land.lhs.true3048
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.w	$a1, $s0, 56
	addi.w	$a2, $zero, -1
	blt	$a2, $a1, .LBB2_237
.LBB2_236:                              # %if.then3055
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a5, $a0, %pc_lo12(.L.str.22)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 0
.LBB2_237:                              # %if.end3057
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.w	$a1, $sp, 368
	bge	$a1, $a0, .LBB2_245
.LBB2_238:                              # %if.then3086
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	ld.hu	$a1, $a1, 42
	lu12i.w	$a2, 1
	and	$a1, $a1, $a2
	beqz	$a1, .LBB2_242
# %bb.239:                              # %land.lhs.true3095
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.w	$a1, $s0, 56
	add.w	$a2, $a1, $a0
	ori	$a3, $zero, 1
	blt	$a2, $a3, .LBB2_242
# %bb.240:                              # %land.lhs.true3107
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 128
	ld.d	$a3, $sp, 352
	beq	$a2, $a3, .LBB2_242
# %bb.241:                              # %if.then3111
                                        #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a2, $sp, 368
	pcaddu18i	$ra, %call36(ScaleToConstraint)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 65
	bge	$a1, $a0, .LBB2_249
.LBB2_242:                              # %if.then3166
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $sp, 352
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	st.d	$a0, $a1, 128
	ld.w	$a0, $s5, 0
	ld.w	$a1, $s0, 56
	add.w	$a0, $a1, $a0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB2_266
# %bb.243:                              # %if.then3181
                                        #   in Loop: Header=BB2_7 Depth=1
	pcalau12i	$a1, %pc_hi20(.LCPI2_0)
	fld.s	$fs0, $a1, %pc_lo12(.LCPI2_0)
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fa0, $fa0
	fdiv.s	$fa0, $fa0, $fs0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$fp, $a0, %pc_lo12(.L.str.15)
	addi.d	$a0, $sp, 324
	move	$a1, $fp
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 372
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fdiv.s	$fa0, $fa0, $fs0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	addi.d	$a0, $sp, 304
	move	$a1, $fp
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a4, $s4, 32
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_247
# %bb.244:                              # %if.else3209
                                        #   in Loop: Header=BB2_7 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a2, $a0, %pc_lo12(.L.str.20)
	ori	$a0, $zero, 19
	ori	$a1, $zero, 15
	b	.LBB2_248
.LBB2_245:                              # %land.lhs.true3065
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.w	$a1, $s0, 56
	ld.w	$a2, $sp, 372
	add.w	$a3, $a1, $a0
	blt	$a2, $a3, .LBB2_238
# %bb.246:                              # %land.lhs.true3065
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.w	$a2, $sp, 376
	bge	$a2, $a1, .LBB2_253
	b	.LBB2_238
.LBB2_247:                              # %if.then3204
                                        #   in Loop: Header=BB2_7 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a2, $a0, %pc_lo12(.L.str.19)
	ori	$a0, $zero, 19
	ori	$a1, $zero, 14
.LBB2_248:                              # %cleanup3219
                                        #   in Loop: Header=BB2_7 Depth=1
	ori	$a3, $zero, 2
	addi.d	$a5, $sp, 324
	addi.d	$a6, $sp, 304
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB2_266
.LBB2_249:                              # %if.then3125
                                        #   in Loop: Header=BB2_7 Depth=1
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	addi.d	$a0, $s0, 56
	ld.w	$a1, $s5, 0
	ld.w	$a0, $a0, 0
	pcalau12i	$a2, %pc_hi20(.LCPI2_0)
	fld.s	$fs0, $a2, %pc_lo12(.LCPI2_0)
	add.d	$a0, $a0, $a1
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fdiv.s	$fa0, $fa0, $fs0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$s5, $a0, %pc_lo12(.L.str.15)
	addi.d	$a0, $sp, 324
	move	$a1, $s5
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 372
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fdiv.s	$fa0, $fa0, $fs0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	addi.d	$a0, $sp, 304
	move	$a1, $s5
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a4, $s4, 32
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_251
# %bb.250:                              # %if.else3155
                                        #   in Loop: Header=BB2_7 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a2, $a0, %pc_lo12(.L.str.18)
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a7, $a0, %pc_lo12(.L.str.17)
	ori	$a0, $zero, 19
	ori	$a1, $zero, 9
	ori	$a3, $zero, 2
	addi.d	$a5, $sp, 324
	addi.d	$a6, $sp, 304
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$s5, $zero
	b	.LBB2_252
.LBB2_251:                              # %if.then3150
                                        #   in Loop: Header=BB2_7 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a2, $a0, %pc_lo12(.L.str.16)
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a7, $a0, %pc_lo12(.L.str.17)
	ori	$a0, $zero, 19
	ori	$a1, $zero, 8
	ori	$a3, $zero, 2
	addi.d	$a5, $sp, 324
	addi.d	$a6, $sp, 304
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ori	$s5, $zero, 1
.LBB2_252:                              # %cleanup3219.thread
                                        #   in Loop: Header=BB2_7 Depth=1
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(InterposeWideOrHigh)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	move	$a2, $s5
	pcaddu18i	$ra, %call36(InterposeScale)
	jirl	$ra, $ra, 0
.LBB2_253:                              # %if.end3222
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $sp, 352
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	st.d	$a0, $a1, 128
	addi.d	$a1, $sp, 368
	addi.d	$a3, $sp, 344
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Constrained)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$fp, $a0, 0
	.p2align	4, , 16
.LBB2_254:                              # %for.cond3231
                                        #   Parent Loop BB2_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$fp, $fp, 16
	ld.bu	$a0, $fp, 32
	beqz	$a0, .LBB2_254
# %bb.255:                              # %for.end3242
                                        #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a0, $a0, -119
	ori	$a1, $zero, 19
	bltu	$a1, $a0, .LBB2_257
# %bb.256:                              # %if.then3254
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a5, $a0, %pc_lo12(.L.str.21)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB2_257:                              # %if.end3256
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	alsl.d	$s0, $a0, $fp, 2
	ld.w	$a0, $s0, 48
	addi.d	$s5, $s0, 48
	bltz	$a0, .LBB2_259
# %bb.258:                              # %land.lhs.true3264
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.w	$a1, $s0, 56
	addi.w	$a2, $zero, -1
	blt	$a2, $a1, .LBB2_260
.LBB2_259:                              # %if.then3272
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a5, $a0, %pc_lo12(.L.str.23)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 0
.LBB2_260:                              # %if.end3274
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.w	$a1, $sp, 368
	blt	$a1, $a0, .LBB2_263
# %bb.261:                              # %land.lhs.true3283
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.w	$a1, $s0, 56
	ld.w	$a2, $sp, 372
	add.w	$a3, $a1, $a0
	blt	$a2, $a3, .LBB2_263
# %bb.262:                              # %land.lhs.true3283
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.w	$a2, $sp, 376
	bge	$a2, $a1, .LBB2_373
.LBB2_263:                              # %if.then3307
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	ld.hu	$a1, $a1, 42
	lu12i.w	$a2, 1
	and	$a1, $a1, $a2
	beqz	$a1, .LBB2_266
# %bb.264:                              # %land.lhs.true3316
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.w	$a1, $s0, 56
	add.w	$a2, $a1, $a0
	ori	$a3, $zero, 1
	blt	$a2, $a3, .LBB2_266
# %bb.265:                              # %if.then3330
                                        #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a2, $sp, 368
	pcaddu18i	$ra, %call36(ScaleToConstraint)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 65
	bge	$a0, $a1, .LBB2_369
	.p2align	4, , 16
.LBB2_266:                              # %REJECT
                                        #   in Loop: Header=BB2_7 Depth=1
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(LeaveErrorBlock)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 392
	beqz	$a0, .LBB2_268
# %bb.267:                              # %if.then4013
                                        #   in Loop: Header=BB2_7 Depth=1
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 392
.LBB2_268:                              # %if.end4015
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 288                   # 8-byte Folded Reload
	ld.bu	$a0, $fp, 40
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
	ori	$a1, $zero, 133
	bne	$a0, $a1, .LBB2_273
# %bb.269:                              # %land.lhs.true4022
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.hu	$a0, $fp, 42
	andi	$a0, $a0, 2
	bnez	$a0, .LBB2_273
# %bb.270:                              # %if.then4030
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $s3, 24
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a2, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	ld.d	$a3, $a0, 8
	st.d	$a0, $a2, 0
	st.d	$a0, $a1, 0
	beq	$a3, $a0, .LBB2_272
# %bb.271:                              # %cond.false4040
                                        #   in Loop: Header=BB2_7 Depth=1
	pcalau12i	$a4, %got_pc_hi20(zz_res)
	ld.d	$a4, $a4, %got_pc_lo12(zz_res)
	st.d	$a3, $a4, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a3, 0
	ld.d	$a3, $a1, 0
	ld.d	$a0, $a4, 0
	ld.d	$a4, $a3, 0
	st.d	$a0, $a4, 8
	st.d	$a3, $a3, 0
	ld.d	$a0, $a2, 0
	st.d	$a3, $a3, 8
.LBB2_272:                              # %cond.end4062
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$s0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 208                   # 8-byte Folded Reload
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a3, $a2, %got_pc_lo12(zz_res)
	ld.d	$a2, $a5, 24
	st.d	$a0, $a3, 0
	st.d	$a2, $a1, 0
	bnez	$a2, .LBB2_276
	b	.LBB2_6
	.p2align	4, , 16
.LBB2_273:                              # %if.else4100
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $s3, 24
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a2, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	ld.d	$a3, $a0, 8
	st.d	$a0, $a2, 0
	st.d	$a0, $a1, 0
	beq	$a3, $a0, .LBB2_275
# %bb.274:                              # %cond.false4110
                                        #   in Loop: Header=BB2_7 Depth=1
	pcalau12i	$a4, %got_pc_hi20(zz_res)
	ld.d	$a4, $a4, %got_pc_lo12(zz_res)
	st.d	$a3, $a4, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a3, 0
	ld.d	$a3, $a1, 0
	ld.d	$a0, $a4, 0
	ld.d	$a4, $a3, 0
	st.d	$a0, $a4, 8
	st.d	$a3, $a3, 0
	ld.d	$a0, $a2, 0
	st.d	$a3, $a3, 8
.LBB2_275:                              # %cond.end4132
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$s0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a2, $a5, 24
	pcalau12i	$a3, %got_pc_hi20(zz_res)
	ld.d	$a3, $a3, %got_pc_lo12(zz_res)
	ld.d	$a2, $a2, 8
	st.d	$a0, $a3, 0
	st.d	$a2, $a1, 0
	beqz	$a2, .LBB2_6
.LBB2_276:                              # %cond.end4062
                                        #   in Loop: Header=BB2_7 Depth=1
	beqz	$a0, .LBB2_6
# %bb.277:                              # %if.end4173.sink.split
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a1, $a2, 0
	pcalau12i	$a3, %got_pc_hi20(zz_tmp)
	ld.d	$a3, $a3, %got_pc_lo12(zz_tmp)
	st.d	$a1, $a3, 0
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $a2, 0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	ld.d	$a2, $a1, 0
	ld.d	$a0, $a0, 0
	ld.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a0, $a4, 8
	st.d	$a3, $a2, 0
	ld.d	$a0, $a1, 0
	st.d	$a0, $a3, 8
	b	.LBB2_6
.LBB2_278:                              # %for.end3477
	ld.d	$a0, $sp, 392
	beqz	$a0, .LBB2_280
# %bb.279:                              # %if.then3480
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 392
.LBB2_280:                              # %if.end3482
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(LeaveErrorBlock)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $fp, 8
	ld.d	$s8, $sp, 240                   # 8-byte Folded Reload
	beq	$fp, $a0, .LBB2_294
# %bb.281:                              # %for.cond3494.preheader.preheader
	pcalau12i	$a0, %got_pc_hi20(xx_tmp)
	ld.d	$s0, $a0, %got_pc_lo12(xx_tmp)
	ori	$s4, $zero, 7
	ori	$s5, $zero, 1
	ld.d	$a5, $sp, 296                   # 8-byte Folded Reload
	b	.LBB2_283
	.p2align	4, , 16
.LBB2_282:                              # %for.inc3616
                                        #   in Loop: Header=BB2_283 Depth=1
	ld.d	$fp, $fp, 8
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	beq	$fp, $a0, .LBB2_293
.LBB2_283:                              # %for.cond3494.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_284 Depth 2
	move	$a0, $fp
	.p2align	4, , 16
.LBB2_284:                              # %for.cond3494
                                        #   Parent Loop BB2_283 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB2_284
# %bb.285:                              # %for.cond3494
                                        #   in Loop: Header=BB2_283 Depth=1
	bltu	$s4, $a1, .LBB2_282
# %bb.286:                              # %for.cond3494
                                        #   in Loop: Header=BB2_283 Depth=1
	sll.d	$a0, $s5, $a1
	andi	$a0, $a0, 246
	beqz	$a0, .LBB2_282
# %bb.287:                              # %sw.bb3509
                                        #   in Loop: Header=BB2_283 Depth=1
	ld.d	$fp, $fp, 0
	ld.d	$a0, $fp, 8
	ld.d	$a1, $a0, 24
	st.d	$a0, $a5, 0
	beq	$a1, $a0, .LBB2_292
# %bb.288:                              # %cond.false3522
                                        #   in Loop: Header=BB2_283 Depth=1
	ld.d	$a2, $a0, 16
	st.d	$a1, $s6, 0
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	ld.d	$a2, $a0, 8
	st.d	$a1, $s0, 0
	st.d	$a0, $s1, 0
	beq	$a2, $a0, .LBB2_290
.LBB2_289:                              # %cond.false3552
                                        #   in Loop: Header=BB2_283 Depth=1
	st.d	$a2, $s6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a2, 0
	ld.d	$a1, $s1, 0
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $a5, 0
	st.d	$a1, $a1, 8
.LBB2_290:                              # %cond.end3574
                                        #   in Loop: Header=BB2_283 Depth=1
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	ld.d	$a4, $sp, 280                   # 8-byte Folded Reload
	add.d	$a1, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s2, $a2
	st.d	$a0, $s1, 0
	st.w	$a1, $s7, 0
	st.d	$a2, $a0, 0
	ld.w	$a1, $s7, 0
	ld.d	$a2, $s1, 0
	ld.d	$a0, $s0, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $s2, $a1
	ld.d	$a1, $a0, 24
	bne	$a1, $a0, .LBB2_282
# %bb.291:                              # %if.then3611
                                        #   in Loop: Header=BB2_283 Depth=1
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 296                   # 8-byte Folded Reload
	b	.LBB2_282
	.p2align	4, , 16
.LBB2_292:                              #   in Loop: Header=BB2_283 Depth=1
	move	$a1, $zero
	ld.d	$a2, $a0, 8
	st.d	$a1, $s0, 0
	st.d	$a0, $s1, 0
	bne	$a2, $a0, .LBB2_289
	b	.LBB2_290
.LBB2_293:                              # %for.end3620.loopexit
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$fp, $a0, 8
	ld.d	$s5, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 248                   # 8-byte Folded Reload
	bne	$fp, $a0, .LBB2_295
	b	.LBB2_299
.LBB2_294:
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 248                   # 8-byte Folded Reload
	beq	$fp, $a0, .LBB2_299
.LBB2_295:                              # %if.then3629
	ld.bu	$a0, $fp, 32
	ld.d	$s0, $s4, 24
	beqz	$a0, .LBB2_297
# %bb.296:                              # %if.then3635
	ld.d	$a4, $s8, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a5, $a0, %pc_lo12(.L.str.26)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 296                   # 8-byte Folded Reload
.LBB2_297:                              # %if.end3637
	st.d	$fp, $s6, 0
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	st.d	$a1, $s1, 0
	ld.d	$a0, $a1, 0
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	st.d	$a0, $a3, 0
	ld.d	$a0, $fp, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s1, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a3, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s6, 0
	st.d	$a0, $a3, 8
	st.d	$fp, $s6, 0
	st.d	$s0, $s1, 0
	beqz	$s0, .LBB2_299
# %bb.298:                              # %cond.false3678
	ld.d	$a0, $s0, 0
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	st.d	$a0, $a3, 0
	ld.d	$a0, $fp, 0
	st.d	$a0, $s0, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s1, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a3, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s6, 0
	st.d	$a0, $a3, 8
.LBB2_299:                              # %if.end3704
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 24
	ld.d	$a1, $a0, 8
	st.d	$a0, $a5, 0
	st.d	$a0, $s1, 0
	beq	$a1, $a0, .LBB2_317
# %bb.300:                              # %cond.end3736
	st.d	$a1, $s6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a1, $s1, 0
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $a5, 0
	st.d	$a1, $a1, 8
	st.d	$a0, $s6, 0
	st.d	$s4, $s1, 0
	bnez	$a0, .LBB2_318
# %bb.301:                              # %cond.end3769
	ld.bu	$a0, $s3, 32
	ori	$a1, $zero, 120
	beq	$a0, $a1, .LBB2_303
.LBB2_302:                              # %if.then3776
	ld.d	$a4, $s8, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a5, $a0, %pc_lo12(.L.str.27)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 296                   # 8-byte Folded Reload
.LBB2_303:                              # %if.end3778
	pcalau12i	$a0, %got_pc_hi20(xx_hold)
	ld.d	$a0, $a0, %got_pc_lo12(xx_hold)
	ld.d	$a1, $s3, 24
	st.d	$s3, $a0, 0
	bne	$a1, $s3, .LBB2_305
	b	.LBB2_310
	.p2align	4, , 16
.LBB2_304:                              # %cond.end3847
                                        #   in Loop: Header=BB2_305 Depth=1
	ld.bu	$a2, $a1, 32
	addi.d	$a3, $a2, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $a1, 33
	add.d	$a2, $s5, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $s2, $a3
	st.d	$a1, $s1, 0
	st.w	$a2, $s7, 0
	st.d	$a3, $a1, 0
	ld.w	$a1, $s7, 0
	ld.d	$a2, $s1, 0
	ld.d	$s3, $a0, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $s2, $a1
	ld.d	$a1, $s3, 24
	beq	$a1, $s3, .LBB2_310
.LBB2_305:                              # %while.body3785
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a1, 24
	st.d	$a1, $a5, 0
	beq	$a2, $a1, .LBB2_307
# %bb.306:                              # %cond.false3795
                                        #   in Loop: Header=BB2_305 Depth=1
	ld.d	$a3, $a1, 16
	st.d	$a2, $s6, 0
	st.d	$a3, $a2, 16
	st.d	$a2, $a3, 24
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
.LBB2_307:                              # %cond.end3817
                                        #   in Loop: Header=BB2_305 Depth=1
	ld.d	$a2, $a1, 8
	st.d	$a1, $s1, 0
	beq	$a2, $a1, .LBB2_304
# %bb.308:                              # %cond.false3825
                                        #   in Loop: Header=BB2_305 Depth=1
	st.d	$a2, $s6, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a2, 0
	ld.d	$a2, $s1, 0
	ld.d	$a1, $s6, 0
	ld.d	$a3, $a2, 0
	st.d	$a1, $a3, 8
	st.d	$a2, $a2, 0
	ld.d	$a1, $a5, 0
	st.d	$a2, $a2, 8
	b	.LBB2_304
	.p2align	4, , 16
.LBB2_309:                              # %cond.end3948
                                        #   in Loop: Header=BB2_310 Depth=1
	ld.bu	$a2, $a1, 32
	addi.d	$a3, $a2, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $a1, 33
	add.d	$a2, $s5, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $s2, $a3
	st.d	$a1, $s1, 0
	st.w	$a2, $s7, 0
	st.d	$a3, $a1, 0
	ld.w	$a1, $s7, 0
	ld.d	$a2, $s1, 0
	ld.d	$s3, $a0, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $s2, $a1
.LBB2_310:                              # %while.cond3880.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s3, 8
	beq	$a1, $s3, .LBB2_315
# %bb.311:                              # %while.body3886
                                        #   in Loop: Header=BB2_310 Depth=1
	ld.d	$a2, $a1, 24
	st.d	$a1, $a5, 0
	beq	$a2, $a1, .LBB2_313
# %bb.312:                              # %cond.false3896
                                        #   in Loop: Header=BB2_310 Depth=1
	ld.d	$a3, $a1, 16
	st.d	$a2, $s6, 0
	st.d	$a3, $a2, 16
	st.d	$a2, $a3, 24
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
.LBB2_313:                              # %cond.end3918
                                        #   in Loop: Header=BB2_310 Depth=1
	ld.d	$a2, $a1, 8
	st.d	$a1, $s1, 0
	beq	$a2, $a1, .LBB2_309
# %bb.314:                              # %cond.false3926
                                        #   in Loop: Header=BB2_310 Depth=1
	st.d	$a2, $s6, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a2, 0
	ld.d	$a2, $s1, 0
	ld.d	$a1, $s6, 0
	ld.d	$a3, $a2, 0
	st.d	$a1, $a3, 8
	st.d	$a2, $a2, 0
	ld.d	$a1, $a5, 0
	st.d	$a2, $a2, 8
	b	.LBB2_309
.LBB2_315:                              # %while.end3980
	ld.bu	$a0, $s3, 32
	addi.d	$a1, $a0, -11
	sltui	$a1, $a1, 2
	addi.d	$a2, $s3, 33
	add.d	$a0, $s5, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ld.bu	$a0, $a0, 0
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s2, $a1
	st.d	$s3, $s1, 0
	st.w	$a0, $s7, 0
	st.d	$a1, $s3, 0
	ld.w	$a0, $s7, 0
	ld.d	$a1, $s1, 0
	ld.d	$a2, $sp, 408
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s2, $a0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.d	$a2, $a0, 0
	ori	$a0, $zero, 4
.LBB2_316:                              # %cleanup5813
	fld.d	$fs0, $sp, 416                  # 8-byte Folded Reload
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
.LBB2_317:                              # %cond.end3736.thread
	st.d	$a0, $s6, 0
	st.d	$s4, $s1, 0
.LBB2_318:                              # %cond.false3745
	ld.d	$a1, $s4, 0
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	st.d	$a1, $a3, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s4, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s1, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a3, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s6, 0
	st.d	$a0, $a3, 8
	ld.bu	$a0, $s3, 32
	ori	$a1, $zero, 120
	bne	$a0, $a1, .LBB2_302
	b	.LBB2_303
.LBB2_319:
	move	$s4, $fp
.LBB2_320:                              # %SUSPEND
	ld.h	$a0, $s4, 42
	ori	$a0, $a0, 32
	st.h	$a0, $s4, 42
	move	$a0, $zero
	pcaddu18i	$ra, %call36(LeaveErrorBlock)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 392
	beqz	$a0, .LBB2_322
# %bb.321:                              # %if.then4181
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 392
.LBB2_322:                              # %if.end4183
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 24
	ld.d	$a1, $a0, 8
	ld.d	$a3, $sp, 296                   # 8-byte Folded Reload
	st.d	$a0, $a3, 0
	st.d	$a0, $s1, 0
	beq	$a1, $a0, .LBB2_324
# %bb.323:                              # %cond.false4194
	st.d	$a1, $s6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a1, $s1, 0
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $a3, 0
	st.d	$a1, $a1, 8
.LBB2_324:                              # %cond.end4216
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 24
	st.d	$a0, $s6, 0
	st.d	$a1, $s1, 0
	beqz	$a1, .LBB2_327
# %bb.325:                              # %cond.end4216
	beqz	$a0, .LBB2_327
# %bb.326:                              # %cond.false4228
	ld.d	$a2, $a1, 0
	st.d	$a2, $a3, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s1, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a3, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s6, 0
	st.d	$a0, $a3, 8
.LBB2_327:                              # %cond.end4252
	ld.d	$a0, $sp, 408
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	bnez	$a1, .LBB2_329
# %bb.328:
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	b	.LBB2_332
.LBB2_329:                              # %if.then4255
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	beqz	$a0, .LBB2_331
# %bb.330:                              # %if.then4258
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
.LBB2_331:                              # %if.end4262
	move	$a0, $zero
.LBB2_332:                              # %if.end4262
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $a1, 0
	st.d	$s4, $fp, 0
	ori	$a0, $zero, 3
	b	.LBB2_316
.LBB2_333:                              # %for.cond42.preheader
	ori	$a0, $zero, 9
	ori	$a1, $zero, 90
	move	$a2, $fp
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	b	.LBB2_335
	.p2align	4, , 16
.LBB2_334:                              # %if.end90
                                        #   in Loop: Header=BB2_335 Depth=1
	addi.d	$a4, $a4, -9
	bgeu	$a1, $a4, .LBB2_358
.LBB2_335:                              # %for.cond42
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_337 Depth 2
                                        #     Child Loop BB2_340 Depth 2
	ld.d	$a2, $a2, 8
	beq	$a2, $fp, .LBB2_359
# %bb.336:                              # %for.cond49.preheader
                                        #   in Loop: Header=BB2_335 Depth=1
	move	$a3, $a2
	.p2align	4, , 16
.LBB2_337:                              # %for.cond49
                                        #   Parent Loop BB2_335 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a3, 16
	ld.bu	$a4, $a3, 32
	beqz	$a4, .LBB2_337
# %bb.338:                              # %for.cond49
                                        #   in Loop: Header=BB2_335 Depth=1
	bne	$a4, $a0, .LBB2_334
# %bb.339:                              # %if.then66
                                        #   in Loop: Header=BB2_335 Depth=1
	ldx.d	$a3, $a3, $a5
	.p2align	4, , 16
.LBB2_340:                              # %for.cond78
                                        #   Parent Loop BB2_335 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a3, 16
	ld.bu	$a4, $a3, 32
	beqz	$a4, .LBB2_340
	b	.LBB2_334
.LBB2_341:                              # %if.then129
	pcalau12i	$a0, %got_pc_hi20(xx_hold)
	ld.d	$a0, $a0, %got_pc_lo12(xx_hold)
	ld.d	$a4, $s3, 24
	st.d	$s3, $a0, 0
	beq	$a4, $s3, .LBB2_348
# %bb.342:
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a1, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	pcalau12i	$a3, %got_pc_hi20(zz_res)
	ld.d	$a3, $a3, %got_pc_lo12(zz_res)
	b	.LBB2_344
	.p2align	4, , 16
.LBB2_343:                              # %cond.end196
                                        #   in Loop: Header=BB2_344 Depth=1
	ld.bu	$a5, $a4, 32
	addi.d	$a6, $a5, -11
	sltui	$a6, $a6, 2
	addi.d	$a7, $a4, 33
	add.d	$a5, $s0, $a5
	masknez	$a5, $a5, $a6
	maskeqz	$a6, $a7, $a6
	or	$a5, $a6, $a5
	ld.bu	$a5, $a5, 0
	slli.d	$a6, $a5, 3
	ldx.d	$a6, $s2, $a6
	st.d	$a4, $a2, 0
	st.w	$a5, $s7, 0
	st.d	$a6, $a4, 0
	ld.w	$a4, $s7, 0
	ld.d	$a5, $a2, 0
	ld.d	$s3, $a0, 0
	slli.d	$a4, $a4, 3
	stx.d	$a5, $s2, $a4
	ld.d	$a4, $s3, 24
	beq	$a4, $s3, .LBB2_348
.LBB2_344:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 24
	st.d	$a4, $a1, 0
	beq	$a5, $a4, .LBB2_346
# %bb.345:                              # %cond.false144
                                        #   in Loop: Header=BB2_344 Depth=1
	ld.d	$a6, $a4, 16
	st.d	$a5, $a3, 0
	st.d	$a6, $a5, 16
	st.d	$a5, $a6, 24
	st.d	$a4, $a4, 24
	st.d	$a4, $a4, 16
.LBB2_346:                              # %cond.end166
                                        #   in Loop: Header=BB2_344 Depth=1
	ld.d	$a5, $a4, 8
	st.d	$a4, $a2, 0
	beq	$a5, $a4, .LBB2_343
# %bb.347:                              # %cond.false174
                                        #   in Loop: Header=BB2_344 Depth=1
	st.d	$a5, $a3, 0
	ld.d	$a4, $a4, 0
	st.d	$a4, $a5, 0
	ld.d	$a5, $a2, 0
	ld.d	$a4, $a3, 0
	ld.d	$a6, $a5, 0
	st.d	$a4, $a6, 8
	st.d	$a5, $a5, 0
	ld.d	$a4, $a1, 0
	st.d	$a5, $a5, 8
	b	.LBB2_343
.LBB2_348:                              # %while.cond225.preheader
	ld.d	$a4, $s3, 8
	beq	$a4, $s3, .LBB2_355
# %bb.349:
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a1, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	pcalau12i	$a3, %got_pc_hi20(zz_res)
	ld.d	$a3, $a3, %got_pc_lo12(zz_res)
	b	.LBB2_351
	.p2align	4, , 16
.LBB2_350:                              # %cond.end293
                                        #   in Loop: Header=BB2_351 Depth=1
	ld.bu	$a5, $a4, 32
	addi.d	$a6, $a5, -11
	sltui	$a6, $a6, 2
	addi.d	$a7, $a4, 33
	add.d	$a5, $s0, $a5
	masknez	$a5, $a5, $a6
	maskeqz	$a6, $a7, $a6
	or	$a5, $a6, $a5
	ld.bu	$a5, $a5, 0
	slli.d	$a6, $a5, 3
	ldx.d	$a6, $s2, $a6
	st.d	$a4, $a2, 0
	st.w	$a5, $s7, 0
	st.d	$a6, $a4, 0
	ld.w	$a4, $s7, 0
	ld.d	$a5, $a2, 0
	ld.d	$s3, $a0, 0
	slli.d	$a4, $a4, 3
	stx.d	$a5, $s2, $a4
	ld.d	$a4, $s3, 8
	beq	$a4, $s3, .LBB2_355
.LBB2_351:                              # %while.body231
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 24
	st.d	$a4, $a1, 0
	beq	$a5, $a4, .LBB2_353
# %bb.352:                              # %cond.false241
                                        #   in Loop: Header=BB2_351 Depth=1
	ld.d	$a6, $a4, 16
	st.d	$a5, $a3, 0
	st.d	$a6, $a5, 16
	st.d	$a5, $a6, 24
	st.d	$a4, $a4, 24
	st.d	$a4, $a4, 16
.LBB2_353:                              # %cond.end263
                                        #   in Loop: Header=BB2_351 Depth=1
	ld.d	$a5, $a4, 8
	st.d	$a4, $a2, 0
	beq	$a5, $a4, .LBB2_350
# %bb.354:                              # %cond.false271
                                        #   in Loop: Header=BB2_351 Depth=1
	st.d	$a5, $a3, 0
	ld.d	$a4, $a4, 0
	st.d	$a4, $a5, 0
	ld.d	$a5, $a2, 0
	ld.d	$a4, $a3, 0
	ld.d	$a6, $a5, 0
	st.d	$a4, $a6, 8
	st.d	$a5, $a5, 0
	ld.d	$a4, $a1, 0
	st.d	$a5, $a5, 8
	b	.LBB2_350
.LBB2_355:                              # %while.end325
	ld.bu	$a0, $s3, 32
	addi.d	$a1, $a0, -11
	sltui	$a1, $a1, 2
	addi.d	$a2, $s3, 33
	add.d	$a0, $s0, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ld.bu	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$fp, $a1, %got_pc_lo12(zz_hold)
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s2, $a1
	st.d	$s3, $fp, 0
	st.w	$a0, $s7, 0
	st.d	$a1, $s3, 0
	ld.w	$a0, $s7, 0
	ld.d	$a1, $fp, 0
	ld.bu	$a2, $s0, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s2, $a0
	slli.d	$a1, $a2, 3
	ldx.d	$a0, $s2, $a1
	st.w	$a2, $s7, 0
	beqz	$a0, .LBB2_364
# %bb.356:                              # %if.else369
	st.d	$a0, $fp, 0
	ld.d	$a2, $a0, 0
	stx.d	$a2, $s2, $a1
	b	.LBB2_365
.LBB2_357:                              # %if.then489
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.d	$zero, $a0, 0
	ori	$a0, $zero, 2
	b	.LBB2_316
.LBB2_358:                              # %if.then110
	ld.d	$a0, $fp, 80
	addi.d	$fp, $a3, 32
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a2, $a0, %pc_lo12(.L.str.7)
	ori	$a0, $zero, 19
	ori	$a1, $zero, 1
	ori	$a3, $zero, 2
	move	$a4, $fp
	ld.d	$fp, $sp, 288                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB2_359:                              # %if.end114
	ld.d	$a0, $sp, 408
	beqz	$a0, .LBB2_361
# %bb.360:                              # %if.then117
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 408
.LBB2_361:                              # %if.end119
	ld.d	$a0, $sp, 392
	beqz	$a0, .LBB2_363
# %bb.362:                              # %if.then122
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 392
.LBB2_363:                              # %if.end124
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(KillGalley)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	st.d	$zero, $a1, 0
	b	.LBB2_316
.LBB2_364:                              # %if.then367
	ld.d	$a1, $s1, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB2_365:                              # %cond.end424
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a2, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a3, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $a2, 0
	st.d	$a0, $a3, 0
	st.d	$s4, $fp, 0
	ld.d	$a4, $s4, 0
	pcalau12i	$a1, %got_pc_hi20(zz_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(zz_tmp)
	st.d	$a4, $a1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s4, 0
	ld.d	$a0, $a3, 0
	ld.d	$a4, $fp, 0
	ld.d	$a5, $a0, 0
	ld.d	$a6, $a1, 0
	st.d	$a4, $a5, 8
	st.d	$a6, $a0, 0
	ld.d	$a4, $a3, 0
	ld.d	$a0, $a2, 0
	st.d	$a4, $a6, 8
	st.d	$a0, $a3, 0
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	st.d	$a4, $fp, 0
	beqz	$a4, .LBB2_368
# %bb.366:                              # %cond.end424
	beqz	$a0, .LBB2_368
# %bb.367:                              # %cond.false433
	ld.d	$a2, $a4, 16
	ld.d	$a3, $a0, 16
	st.d	$a2, $a1, 0
	st.d	$a3, $a4, 16
	st.d	$a4, $a3, 24
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
.LBB2_368:                              # %cond.end457
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.d	$zero, $a0, 0
	ori	$a0, $zero, 1
	b	.LBB2_316
.LBB2_369:                              # %if.then3346
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	addi.d	$a0, $s0, 56
	ld.w	$a1, $s5, 0
	ld.w	$a0, $a0, 0
	pcalau12i	$a2, %pc_hi20(.LCPI2_0)
	fld.s	$fs0, $a2, %pc_lo12(.LCPI2_0)
	add.d	$a0, $a0, $a1
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fdiv.s	$fa0, $fa0, $fs0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$s5, $a0, %pc_lo12(.L.str.15)
	addi.d	$a0, $sp, 324
	move	$a1, $s5
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 372
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fdiv.s	$fa0, $fa0, $fs0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	addi.d	$a0, $sp, 304
	move	$a1, $s5
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a4, $s4, 32
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_371
# %bb.370:                              # %if.then3374
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a2, $a0, %pc_lo12(.L.str.16)
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a7, $a0, %pc_lo12(.L.str.17)
	ori	$a0, $zero, 19
	ori	$a1, $zero, 10
	ori	$a3, $zero, 2
	addi.d	$a5, $sp, 324
	addi.d	$a6, $sp, 304
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ori	$s5, $zero, 1
	b	.LBB2_372
.LBB2_371:                              # %if.else3379
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a2, $a0, %pc_lo12(.L.str.18)
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a7, $a0, %pc_lo12(.L.str.17)
	ori	$a0, $zero, 19
	ori	$a1, $zero, 11
	ori	$a3, $zero, 2
	addi.d	$a5, $sp, 324
	addi.d	$a6, $sp, 304
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$s5, $zero
.LBB2_372:                              # %if.end3384
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(InterposeWideOrHigh)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $s5
	pcaddu18i	$ra, %call36(InterposeScale)
	jirl	$ra, $ra, 0
.LBB2_373:                              # %if.end3397
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.hu	$a0, $a0, 42
	andi	$a1, $a0, 8
	ld.d	$s5, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 272                   # 8-byte Folded Reload
	bnez	$a1, .LBB2_379
# %bb.374:                              # %if.else3406
	andi	$a0, $a0, 16
	ld.d	$fp, $sp, 264                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_378
# %bb.375:                              # %if.else3426
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$fp, $a0, 0
.LBB2_376:                              # %for.cond3433
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $fp, 16
	ld.bu	$a0, $fp, 32
	beqz	$a0, .LBB2_376
# %bb.377:                              # %for.end3444
	ld.d	$a3, $sp, 256                   # 8-byte Folded Reload
	alsl.d	$a0, $a3, $fp, 2
	ld.w	$a1, $a0, 48
	ld.w	$a2, $a0, 56
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(AdjustSize)
	jirl	$ra, $ra, 0
.LBB2_378:                              # %ACCEPT.sink.split
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	alsl.d	$a0, $a3, $fp, 2
	ld.w	$a1, $a0, 48
	ld.w	$a2, $a0, 56
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(AdjustSize)
	jirl	$ra, $ra, 0
.LBB2_379:                              # %ACCEPT
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(LeaveErrorBlock)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 24
	ld.d	$a1, $a0, 8
	ld.d	$a4, $sp, 296                   # 8-byte Folded Reload
	st.d	$a0, $a4, 0
	st.d	$a0, $s1, 0
	beq	$a1, $a0, .LBB2_381
# %bb.380:                              # %cond.false4272
	st.d	$a1, $s6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a1, $s1, 0
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $a4, 0
	st.d	$a1, $a1, 8
.LBB2_381:                              # %cond.end4294
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 400
	st.d	$a0, $s6, 0
	st.d	$a1, $s1, 0
	beqz	$a1, .LBB2_384
# %bb.382:                              # %cond.end4294
	beqz	$a0, .LBB2_384
# %bb.383:                              # %cond.false4303
	ld.d	$a2, $a1, 0
	st.d	$a2, $a3, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s1, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a3, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s6, 0
	st.d	$a0, $a3, 8
.LBB2_384:                              # %cond.end4327
	ld.bu	$a0, $s3, 32
	ori	$a1, $zero, 120
	beq	$a0, $a1, .LBB2_386
# %bb.385:                              # %if.then4334
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a5, $a0, %pc_lo12(.L.str.27)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 296                   # 8-byte Folded Reload
.LBB2_386:                              # %if.end4336
	pcalau12i	$a0, %got_pc_hi20(xx_hold)
	ld.d	$fp, $a0, %got_pc_lo12(xx_hold)
	ld.d	$a0, $s3, 24
	st.d	$s3, $fp, 0
	bne	$a0, $s3, .LBB2_388
	b	.LBB2_393
.LBB2_387:                              # %cond.end4405
                                        #   in Loop: Header=BB2_388 Depth=1
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	add.d	$a1, $s5, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s2, $a2
	st.d	$a0, $s1, 0
	st.w	$a1, $s7, 0
	st.d	$a2, $a0, 0
	ld.w	$a0, $s7, 0
	ld.d	$a1, $s1, 0
	ld.d	$s3, $fp, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s2, $a0
	ld.d	$a0, $s3, 24
	beq	$a0, $s3, .LBB2_393
.LBB2_388:                              # %while.body4343
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a0, 24
	st.d	$a0, $a4, 0
	beq	$a1, $a0, .LBB2_390
# %bb.389:                              # %cond.false4353
                                        #   in Loop: Header=BB2_388 Depth=1
	ld.d	$a2, $a0, 16
	st.d	$a1, $s6, 0
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
.LBB2_390:                              # %cond.end4375
                                        #   in Loop: Header=BB2_388 Depth=1
	ld.d	$a1, $a0, 8
	st.d	$a0, $s1, 0
	beq	$a1, $a0, .LBB2_387
# %bb.391:                              # %cond.false4383
                                        #   in Loop: Header=BB2_388 Depth=1
	st.d	$a1, $s6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a1, $s1, 0
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $a4, 0
	st.d	$a1, $a1, 8
	b	.LBB2_387
.LBB2_392:                              # %cond.end4506
                                        #   in Loop: Header=BB2_393 Depth=1
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	add.d	$a1, $s5, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s2, $a2
	st.d	$a0, $s1, 0
	st.w	$a1, $s7, 0
	st.d	$a2, $a0, 0
	ld.w	$a0, $s7, 0
	ld.d	$a1, $s1, 0
	ld.d	$s3, $fp, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s2, $a0
.LBB2_393:                              # %while.cond4438.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 8
	beq	$a0, $s3, .LBB2_398
# %bb.394:                              # %while.body4444
                                        #   in Loop: Header=BB2_393 Depth=1
	ld.d	$a1, $a0, 24
	st.d	$a0, $a4, 0
	beq	$a1, $a0, .LBB2_396
# %bb.395:                              # %cond.false4454
                                        #   in Loop: Header=BB2_393 Depth=1
	ld.d	$a2, $a0, 16
	st.d	$a1, $s6, 0
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
.LBB2_396:                              # %cond.end4476
                                        #   in Loop: Header=BB2_393 Depth=1
	ld.d	$a1, $a0, 8
	st.d	$a0, $s1, 0
	beq	$a1, $a0, .LBB2_392
# %bb.397:                              # %cond.false4484
                                        #   in Loop: Header=BB2_393 Depth=1
	st.d	$a1, $s6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a1, $s1, 0
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $a4, 0
	st.d	$a1, $a1, 8
	b	.LBB2_392
.LBB2_398:                              # %while.end4538
	ld.bu	$a0, $s3, 32
	addi.d	$a1, $a0, -11
	sltui	$a1, $a1, 2
	addi.d	$a2, $s3, 33
	add.d	$a0, $s5, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ld.bu	$a0, $a0, 0
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s2, $a1
	st.d	$s3, $s1, 0
	st.w	$a0, $s7, 0
	st.d	$a1, $s3, 0
	ld.w	$a0, $s7, 0
	ld.d	$a1, $s1, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s2, $a0
	ld.hu	$a0, $s0, 42
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	bnez	$a1, .LBB2_405
# %bb.399:                              # %land.lhs.true4583
	andi	$a0, $a0, 8
	bnez	$a0, .LBB2_407
# %bb.400:                              # %if.then4591
	ori	$a1, $zero, 17
	move	$a0, $s0
	move	$a2, $s4
	move	$a3, $s4
	pcaddu18i	$ra, %call36(Interpose)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 24
.LBB2_401:                              # %for.cond4598
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 0
	ld.bu	$a1, $a0, 32
	st.d	$a0, $sp, 344
	beqz	$a1, .LBB2_401
# %bb.402:                              # %for.cond4598
	ori	$a2, $zero, 17
	beq	$a1, $a2, .LBB2_404
# %bb.403:                              # %if.then4615
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a5, $a0, %pc_lo12(.L.str.28)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344
.LBB2_404:                              # %if.end4617
	ld.hu	$a2, $s0, 64
	ld.h	$a1, $a0, 64
	bstrpick.d	$a2, $a2, 7, 7
	bstrins.d	$a1, $a2, 7, 7
	st.h	$a1, $a0, 64
	ld.hu	$a2, $s0, 64
	bstrpick.d	$a2, $a2, 8, 8
	move	$a3, $a1
	bstrins.d	$a3, $a2, 8, 8
	st.h	$a3, $a0, 64
	ld.hu	$a2, $s0, 64
	bstrpick.d	$a2, $a2, 9, 9
	bstrins.d	$a3, $a2, 9, 9
	st.h	$a3, $a0, 64
	ld.hu	$a2, $s0, 64
	bstrpick.d	$a2, $a2, 12, 10
	bstrins.d	$a3, $a2, 12, 10
	st.h	$a3, $a0, 64
	ld.hu	$a2, $s0, 64
	srli.d	$a2, $a2, 13
	bstrins.d	$a3, $a2, 63, 13
	st.h	$a3, $a0, 64
	ld.h	$a2, $s0, 66
	st.h	$a2, $a0, 66
	ld.bu	$a2, $s0, 68
	ld.b	$a3, $a0, 68
	andi	$a2, $a2, 3
	bstrins.d	$a3, $a2, 1, 0
	st.b	$a3, $a0, 68
	ld.bu	$a2, $s0, 68
	bstrpick.d	$a2, $a2, 3, 2
	bstrins.d	$a3, $a2, 3, 2
	st.b	$a3, $a0, 68
	ld.bu	$a2, $s0, 68
	andi	$a3, $a3, 143
	srli.d	$a2, $a2, 4
	bstrins.d	$a3, $a2, 6, 4
	st.b	$a3, $a0, 68
	ld.bu	$a2, $s0, 64
	bstrpick.d	$a2, $a2, 3, 3
	bstrins.d	$a1, $a2, 3, 3
	st.b	$a1, $a0, 64
	ld.hu	$a2, $s0, 68
	ld.h	$a3, $a0, 68
	bstrpick.d	$a2, $a2, 7, 7
	bstrins.d	$a3, $a2, 7, 7
	st.h	$a3, $a0, 68
	ld.hu	$a2, $s0, 68
	bstrpick.d	$a2, $a2, 8, 8
	bstrins.d	$a3, $a2, 8, 8
	st.h	$a3, $a0, 68
	ld.hu	$a2, $s0, 68
	bstrpick.d	$a2, $a2, 9, 9
	bstrins.d	$a3, $a2, 9, 9
	st.h	$a3, $a0, 68
	ld.hu	$a2, $s0, 68
	bstrpick.d	$a2, $a2, 12, 10
	bstrins.d	$a3, $a2, 12, 10
	st.h	$a3, $a0, 68
	ld.hu	$a2, $s0, 68
	srli.d	$a2, $a2, 13
	bstrins.d	$a3, $a2, 63, 13
	st.h	$a3, $a0, 68
	ld.h	$a2, $s0, 70
	st.h	$a2, $a0, 70
	ld.wu	$a2, $s0, 76
	ld.w	$a3, $a0, 76
	andi	$a2, $a2, 4095
	bstrins.d	$a3, $a2, 11, 0
	st.w	$a3, $a0, 76
	ld.wu	$a2, $s0, 76
	bstrpick.d	$a2, $a2, 21, 12
	bstrins.d	$a3, $a2, 21, 12
	st.w	$a3, $a0, 76
	ld.wu	$a2, $s0, 76
	bstrpick.d	$a2, $a2, 23, 22
	bstrins.d	$a3, $a2, 23, 22
	st.w	$a3, $a0, 76
	ld.wu	$a2, $s0, 76
	bstrpick.d	$a2, $a2, 29, 24
	bstrins.d	$a3, $a2, 29, 24
	st.w	$a3, $a0, 76
	ld.w	$a2, $s0, 76
	srli.d	$a2, $a2, 31
	bstrins.d	$a3, $a2, 63, 31
	st.w	$a3, $a0, 76
	ld.wu	$a2, $s0, 76
	lu12i.w	$a4, -262145
	ori	$a4, $a4, 4095
	lu32i.d	$a4, 0
	and	$a3, $a3, $a4
	srli.d	$a2, $a2, 30
	bstrins.d	$a3, $a2, 30, 30
	st.w	$a3, $a0, 76
	ld.bu	$a2, $s0, 64
	srli.d	$a1, $a1, 1
	bstrins.d	$a2, $a1, 63, 1
	st.b	$a2, $a0, 64
	ld.bu	$a1, $s0, 64
	bstrpick.d	$a1, $a1, 1, 1
	bstrins.d	$a2, $a1, 1, 1
	st.b	$a2, $a0, 64
	ld.bu	$a1, $s0, 64
	bstrpick.d	$a3, $a1, 2, 2
	bstrins.d	$a2, $a3, 2, 2
	st.b	$a2, $a0, 64
	ld.bu	$a3, $s0, 64
	andi	$a2, $a2, 143
	srli.d	$a3, $a3, 4
	bstrins.d	$a2, $a3, 6, 4
	st.b	$a2, $a0, 64
	ld.h	$a2, $s0, 72
	st.h	$a2, $a0, 72
	ld.h	$a2, $s0, 74
	ld.hu	$a3, $a0, 42
	st.h	$a2, $a0, 74
	lu12i.w	$a2, 15
	ori	$a2, $a2, 2047
	and	$a2, $a3, $a2
	srli.d	$a1, $a1, 2
	bstrins.d	$a2, $a1, 11, 11
	st.h	$a2, $a0, 42
	b	.LBB2_407
.LBB2_405:                              # %land.lhs.true4571
	andi	$a0, $a0, 16
	bnez	$a0, .LBB2_407
# %bb.406:                              # %if.then4579
	ori	$a1, $zero, 19
	move	$a0, $s0
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	move	$a3, $s4
	pcaddu18i	$ra, %call36(Interpose)
	jirl	$ra, $ra, 0
.LBB2_407:                              # %cond.false4960
	ld.d	$a1, $s8, 8
	ld.d	$a2, $sp, 400
	ori	$a3, $zero, 1
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Promote)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.hu	$a0, $a0, 42
	andi	$a0, $a0, 24
	ld.d	$s8, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 248                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_411
# %bb.408:                              # %if.then4981
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
.LBB2_409:                              # %for.cond4988
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a2, 16
	ld.bu	$a0, $a2, 32
	beqz	$a0, .LBB2_409
# %bb.410:                              # %for.end4999
	ori	$a1, $zero, 19
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	move	$a3, $a2
	pcaddu18i	$ra, %call36(Interpose)
	jirl	$ra, $ra, 0
.LBB2_411:                              # %if.end5000
	ori	$a3, $zero, 1
	ld.d	$s3, $sp, 264                   # 8-byte Folded Reload
	move	$a0, $s3
	move	$a1, $s3
	move	$a2, $s0
	pcaddu18i	$ra, %call36(Promote)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 24
	st.d	$s3, $fp, 0
	ld.d	$a4, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	bne	$a0, $s3, .LBB2_413
	b	.LBB2_418
.LBB2_412:                              # %cond.end5069
                                        #   in Loop: Header=BB2_413 Depth=1
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	add.d	$a1, $s5, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s2, $a2
	st.d	$a0, $s1, 0
	st.w	$a1, $s7, 0
	st.d	$a2, $a0, 0
	ld.w	$a0, $s7, 0
	ld.d	$a1, $s1, 0
	ld.d	$s3, $fp, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s2, $a0
	ld.d	$a0, $s3, 24
	beq	$a0, $s3, .LBB2_418
.LBB2_413:                              # %while.body5007
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a0, 24
	st.d	$a0, $a4, 0
	beq	$a1, $a0, .LBB2_415
# %bb.414:                              # %cond.false5017
                                        #   in Loop: Header=BB2_413 Depth=1
	ld.d	$a2, $a0, 16
	st.d	$a1, $s6, 0
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
.LBB2_415:                              # %cond.end5039
                                        #   in Loop: Header=BB2_413 Depth=1
	ld.d	$a1, $a0, 8
	st.d	$a0, $s1, 0
	beq	$a1, $a0, .LBB2_412
# %bb.416:                              # %cond.false5047
                                        #   in Loop: Header=BB2_413 Depth=1
	st.d	$a1, $s6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a1, $s1, 0
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $a4, 0
	st.d	$a1, $a1, 8
	b	.LBB2_412
.LBB2_417:                              # %cond.end5170
                                        #   in Loop: Header=BB2_418 Depth=1
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	add.d	$a1, $s5, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s2, $a2
	st.d	$a0, $s1, 0
	st.w	$a1, $s7, 0
	st.d	$a2, $a0, 0
	ld.w	$a0, $s7, 0
	ld.d	$a1, $s1, 0
	ld.d	$s3, $fp, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s2, $a0
.LBB2_418:                              # %while.cond5102.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 8
	beq	$a0, $s3, .LBB2_423
# %bb.419:                              # %while.body5108
                                        #   in Loop: Header=BB2_418 Depth=1
	ld.d	$a1, $a0, 24
	st.d	$a0, $a4, 0
	beq	$a1, $a0, .LBB2_421
# %bb.420:                              # %cond.false5118
                                        #   in Loop: Header=BB2_418 Depth=1
	ld.d	$a2, $a0, 16
	st.d	$a1, $s6, 0
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
.LBB2_421:                              # %cond.end5140
                                        #   in Loop: Header=BB2_418 Depth=1
	ld.d	$a1, $a0, 8
	st.d	$a0, $s1, 0
	beq	$a1, $a0, .LBB2_417
# %bb.422:                              # %cond.false5148
                                        #   in Loop: Header=BB2_418 Depth=1
	st.d	$a1, $s6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a1, $s1, 0
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $a4, 0
	st.d	$a1, $a1, 8
	b	.LBB2_417
.LBB2_423:                              # %while.end5202
	ld.bu	$a0, $s3, 32
	addi.d	$a1, $a0, -11
	sltui	$a1, $a1, 2
	addi.d	$a2, $s3, 33
	add.d	$a0, $s5, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ld.bu	$a0, $a0, 0
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s2, $a1
	st.d	$s3, $s1, 0
	st.w	$a0, $s7, 0
	st.d	$a1, $s3, 0
	ld.w	$a0, $s7, 0
	ld.d	$a1, $s1, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s2, $a0
	ld.d	$a0, $s0, 8
	beq	$a0, $s0, .LBB2_425
# %bb.424:                              # %if.then5238
	ld.d	$a4, $s8, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a5, $a0, %pc_lo12(.L.str.29)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 296                   # 8-byte Folded Reload
.LBB2_425:                              # %if.end5240
	ld.hu	$a0, $s0, 42
	andi	$a0, $a0, 32
	beqz	$a0, .LBB2_427
# %bb.426:                              # %if.then5248
	ld.d	$a0, $sp, 400
	ld.h	$a1, $a0, 42
	ori	$a1, $a1, 32
	st.h	$a1, $a0, 42
.LBB2_427:                              # %if.end5254
	ld.d	$a0, $s0, 24
	st.d	$s0, $fp, 0
	bne	$a0, $s0, .LBB2_429
	b	.LBB2_434
.LBB2_428:                              # %cond.end5323
                                        #   in Loop: Header=BB2_429 Depth=1
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	add.d	$a1, $s5, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s2, $a2
	st.d	$a0, $s1, 0
	st.w	$a1, $s7, 0
	st.d	$a2, $a0, 0
	ld.w	$a0, $s7, 0
	ld.d	$a1, $s1, 0
	ld.d	$s0, $fp, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s2, $a0
	ld.d	$a0, $s0, 24
	beq	$a0, $s0, .LBB2_434
.LBB2_429:                              # %while.body5261
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a0, 24
	st.d	$a0, $a4, 0
	beq	$a1, $a0, .LBB2_431
# %bb.430:                              # %cond.false5271
                                        #   in Loop: Header=BB2_429 Depth=1
	ld.d	$a2, $a0, 16
	st.d	$a1, $s6, 0
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
.LBB2_431:                              # %cond.end5293
                                        #   in Loop: Header=BB2_429 Depth=1
	ld.d	$a1, $a0, 8
	st.d	$a0, $s1, 0
	beq	$a1, $a0, .LBB2_428
# %bb.432:                              # %cond.false5301
                                        #   in Loop: Header=BB2_429 Depth=1
	st.d	$a1, $s6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a1, $s1, 0
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $a4, 0
	st.d	$a1, $a1, 8
	b	.LBB2_428
.LBB2_433:                              # %cond.end5424
                                        #   in Loop: Header=BB2_434 Depth=1
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	add.d	$a1, $s5, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s2, $a2
	st.d	$a0, $s1, 0
	st.w	$a1, $s7, 0
	st.d	$a2, $a0, 0
	ld.w	$a0, $s7, 0
	ld.d	$a1, $s1, 0
	ld.d	$s0, $fp, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s2, $a0
.LBB2_434:                              # %while.cond5356.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 8
	beq	$a0, $s0, .LBB2_439
# %bb.435:                              # %while.body5362
                                        #   in Loop: Header=BB2_434 Depth=1
	ld.d	$a1, $a0, 24
	st.d	$a0, $a4, 0
	beq	$a1, $a0, .LBB2_437
# %bb.436:                              # %cond.false5372
                                        #   in Loop: Header=BB2_434 Depth=1
	ld.d	$a2, $a0, 16
	st.d	$a1, $s6, 0
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
.LBB2_437:                              # %cond.end5394
                                        #   in Loop: Header=BB2_434 Depth=1
	ld.d	$a1, $a0, 8
	st.d	$a0, $s1, 0
	beq	$a1, $a0, .LBB2_433
# %bb.438:                              # %cond.false5402
                                        #   in Loop: Header=BB2_434 Depth=1
	st.d	$a1, $s6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a1, $s1, 0
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $a4, 0
	st.d	$a1, $a1, 8
	b	.LBB2_433
.LBB2_439:                              # %while.end5456
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
	ldx.d	$a1, $s2, $a1
	st.d	$s0, $s1, 0
	st.w	$a0, $s7, 0
	st.d	$a1, $s0, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $s7, 0
	ld.d	$s3, $sp, 392
	ld.d	$s0, $sp, 408
	slli.d	$a1, $a1, 3
	stx.d	$a0, $s2, $a1
	beqz	$s3, .LBB2_458
# %bb.440:                              # %if.else5490
	beqz	$s0, .LBB2_459
# %bb.441:                              # %if.else5494
	ld.d	$s4, $s0, 8
	beq	$s4, $s0, .LBB2_445
# %bb.442:                              # %if.then5503
	ld.bu	$a0, $s4, 32
	beqz	$a0, .LBB2_444
# %bb.443:                              # %if.then5509
	ld.d	$a4, $s8, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a5, $a0, %pc_lo12(.L.str.26)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 296                   # 8-byte Folded Reload
.LBB2_444:                              # %cond.false5552
	st.d	$s4, $s6, 0
	st.d	$s0, $s1, 0
	ld.d	$a0, $s0, 0
	st.d	$a0, $a5, 0
	ld.d	$a0, $s4, 0
	st.d	$a0, $s0, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s1, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a5, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s6, 0
	st.d	$a0, $a3, 8
	st.d	$s4, $s6, 0
	st.d	$s3, $s1, 0
	ld.d	$a0, $s3, 0
	st.d	$a0, $a5, 0
	ld.d	$a0, $s4, 0
	st.d	$a0, $s3, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s1, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a5, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s6, 0
	ld.d	$s0, $sp, 408
	st.d	$a0, $a3, 8
.LBB2_445:                              # %if.end5578
	ld.d	$a0, $s0, 24
	st.d	$s0, $fp, 0
	bne	$a0, $s0, .LBB2_447
	b	.LBB2_452
.LBB2_446:                              # %cond.end5647
                                        #   in Loop: Header=BB2_447 Depth=1
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	add.d	$a1, $s5, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s2, $a2
	st.d	$a0, $s1, 0
	st.w	$a1, $s7, 0
	st.d	$a2, $a0, 0
	ld.w	$a0, $s7, 0
	ld.d	$a1, $s1, 0
	ld.d	$s0, $fp, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s2, $a0
	ld.d	$a0, $s0, 24
	beq	$a0, $s0, .LBB2_452
.LBB2_447:                              # %while.body5585
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a0, 24
	st.d	$a0, $a4, 0
	beq	$a1, $a0, .LBB2_449
# %bb.448:                              # %cond.false5595
                                        #   in Loop: Header=BB2_447 Depth=1
	ld.d	$a2, $a0, 16
	st.d	$a1, $s6, 0
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
.LBB2_449:                              # %cond.end5617
                                        #   in Loop: Header=BB2_447 Depth=1
	ld.d	$a1, $a0, 8
	st.d	$a0, $s1, 0
	beq	$a1, $a0, .LBB2_446
# %bb.450:                              # %cond.false5625
                                        #   in Loop: Header=BB2_447 Depth=1
	st.d	$a1, $s6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a1, $s1, 0
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $a4, 0
	st.d	$a1, $a1, 8
	b	.LBB2_446
.LBB2_451:                              # %cond.end5748
                                        #   in Loop: Header=BB2_452 Depth=1
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	add.d	$a1, $s5, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s2, $a2
	st.d	$a0, $s1, 0
	st.w	$a1, $s7, 0
	st.d	$a2, $a0, 0
	ld.w	$a0, $s7, 0
	ld.d	$a1, $s1, 0
	ld.d	$s0, $fp, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s2, $a0
.LBB2_452:                              # %while.cond5680.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 8
	beq	$a0, $s0, .LBB2_457
# %bb.453:                              # %while.body5686
                                        #   in Loop: Header=BB2_452 Depth=1
	ld.d	$a1, $a0, 24
	st.d	$a0, $a4, 0
	beq	$a1, $a0, .LBB2_455
# %bb.454:                              # %cond.false5696
                                        #   in Loop: Header=BB2_452 Depth=1
	ld.d	$a2, $a0, 16
	st.d	$a1, $s6, 0
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
.LBB2_455:                              # %cond.end5718
                                        #   in Loop: Header=BB2_452 Depth=1
	ld.d	$a1, $a0, 8
	st.d	$a0, $s1, 0
	beq	$a1, $a0, .LBB2_451
# %bb.456:                              # %cond.false5726
                                        #   in Loop: Header=BB2_452 Depth=1
	st.d	$a1, $s6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a1, $s1, 0
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $a4, 0
	st.d	$a1, $a1, 8
	b	.LBB2_451
.LBB2_457:                              # %while.end5780
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
	ldx.d	$a1, $s2, $a1
	st.d	$s0, $s1, 0
	st.w	$a0, $s7, 0
	st.d	$a1, $s0, 0
	ld.w	$a0, $s7, 0
	ld.d	$a1, $s1, 0
	ld.d	$a2, $sp, 392
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s2, $a0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.d	$a2, $a0, 0
	ori	$a0, $zero, 5
	b	.LBB2_316
.LBB2_458:                              # %if.then5489
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.d	$s0, $a0, 0
	ori	$a0, $zero, 5
	b	.LBB2_316
.LBB2_459:                              # %if.then5493
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.d	$s3, $a0, 0
	ori	$a0, $zero, 5
	b	.LBB2_316
.Lfunc_end2:
	.size	AttachGalley, .Lfunc_end2-AttachGalley
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI2_0:
	.word	.LBB2_110-.LJTI2_0
	.word	.LBB2_97-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_97-.LJTI2_0
	.word	.LBB2_97-.LJTI2_0
	.word	.LBB2_97-.LJTI2_0
	.word	.LBB2_97-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_97-.LJTI2_0
	.word	.LBB2_97-.LJTI2_0
	.word	.LBB2_97-.LJTI2_0
	.word	.LBB2_97-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_106-.LJTI2_0
	.word	.LBB2_320-.LJTI2_0
	.word	.LBB2_320-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_106-.LJTI2_0
	.word	.LBB2_112-.LJTI2_0
	.word	.LBB2_121-.LJTI2_0
	.word	.LBB2_98-.LJTI2_0
	.word	.LBB2_98-.LJTI2_0
	.word	.LBB2_98-.LJTI2_0
	.word	.LBB2_98-.LJTI2_0
	.word	.LBB2_98-.LJTI2_0
	.word	.LBB2_98-.LJTI2_0
	.word	.LBB2_98-.LJTI2_0
	.word	.LBB2_98-.LJTI2_0
	.word	.LBB2_98-.LJTI2_0
	.word	.LBB2_98-.LJTI2_0
	.word	.LBB2_98-.LJTI2_0
	.word	.LBB2_98-.LJTI2_0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function InterposeScale
	.type	InterposeScale,@function
InterposeScale:                         # @InterposeScale
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
	pcalau12i	$a3, %got_pc_hi20(zz_lengths)
	ld.d	$s4, $a3, %got_pc_lo12(zz_lengths)
	ld.bu	$a3, $s4, 34
	pcalau12i	$a4, %got_pc_hi20(zz_free)
	ld.d	$s3, $a4, %got_pc_lo12(zz_free)
	pcalau12i	$a4, %got_pc_hi20(zz_size)
	ld.d	$s5, $a4, %got_pc_lo12(zz_size)
	slli.d	$a4, $a3, 3
	ldx.d	$s0, $s3, $a4
	move	$s1, $a2
	move	$s2, $a1
	move	$fp, $a0
	st.w	$a3, $s5, 0
	beqz	$s0, .LBB3_2
# %bb.1:                                # %if.else7
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$s0, $a0, 0
	ld.d	$a0, $s0, 0
	alsl.d	$a1, $a3, $s3, 3
	b	.LBB3_3
.LBB3_2:                                # %if.then5
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a3
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	move	$s0, $a0
.LBB3_3:                                # %if.end13
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 34
	st.b	$a0, $s0, 32
	st.d	$s0, $s0, 24
	st.d	$s0, $s0, 16
	st.d	$s0, $s0, 8
	st.d	$s0, $s0, 0
	ld.h	$a0, $fp, 34
	st.h	$a0, $s0, 34
	ld.wu	$a0, $fp, 36
	ld.wu	$a1, $s0, 36
	srli.d	$a1, $a1, 20
	move	$a2, $a0
	bstrins.d	$a2, $a1, 63, 20
	st.w	$a2, $s0, 36
	ld.wu	$a1, $fp, 36
	srli.d	$a1, $a1, 20
	bstrins.d	$a0, $a1, 63, 20
	st.w	$a0, $s0, 36
	sltui	$a0, $s1, 1
	ori	$a1, $zero, 128
	masknez	$a2, $a1, $a0
	maskeqz	$a3, $s2, $a0
	or	$a2, $a3, $a2
	masknez	$a3, $s2, $a0
	maskeqz	$a0, $a1, $a0
	or	$a0, $a0, $a3
	st.w	$a2, $s0, 64
	st.w	$a0, $s0, 72
	addi.d	$a0, $fp, 48
	slli.d	$a1, $s1, 2
	ldx.w	$a2, $a0, $a1
	mul.w	$a2, $a2, $s2
	bstrpick.d	$a3, $a2, 62, 56
	add.w	$a2, $a2, $a3
	srli.d	$a2, $a2, 7
	addi.d	$a3, $s0, 48
	stx.w	$a2, $a3, $a1
	addi.d	$a2, $fp, 56
	ldx.w	$a4, $a2, $a1
	mul.w	$a4, $a4, $s2
	bstrpick.d	$a5, $a4, 62, 56
	add.w	$a4, $a4, $a5
	srli.d	$a4, $a4, 7
	addi.d	$a5, $s0, 56
	stx.w	$a4, $a5, $a1
	xori	$a1, $s1, 1
	slli.d	$a1, $a1, 2
	ldx.w	$a0, $a0, $a1
	stx.w	$a0, $a3, $a1
	ldx.w	$a0, $a2, $a1
	stx.w	$a0, $a5, $a1
	ld.d	$a0, $fp, 24
	beq	$a0, $fp, .LBB3_5
# %bb.4:                                # %cond.false118
	ld.d	$a1, $fp, 16
	st.d	$a1, $a0, 16
	pcalau12i	$a2, %got_pc_hi20(xx_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(xx_tmp)
	st.d	$a0, $a1, 24
	st.d	$fp, $fp, 24
	st.d	$fp, $fp, 16
	st.d	$a0, $a2, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	ld.d	$a3, $a0, 16
	pcalau12i	$a4, %got_pc_hi20(zz_tmp)
	ld.d	$a4, $a4, %got_pc_lo12(zz_tmp)
	ld.d	$a5, $s0, 16
	st.d	$s0, $a1, 0
	st.d	$a0, $a2, 0
	st.d	$a3, $a4, 0
	st.d	$a5, $a0, 16
	st.d	$a0, $a5, 24
	st.d	$a3, $s0, 16
	st.d	$s0, $a3, 24
	b	.LBB3_6
.LBB3_5:                                # %cond.end.thread
	pcalau12i	$a0, %got_pc_hi20(xx_tmp)
	ld.d	$a0, $a0, %got_pc_lo12(xx_tmp)
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$zero, $a0, 0
	st.d	$s0, $a1, 0
	st.d	$zero, $a2, 0
.LBB3_6:                                # %cond.end142
	ld.bu	$a2, $s4, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s3, $a0
	st.w	$a2, $s5, 0
	beqz	$a0, .LBB3_8
# %bb.7:                                # %if.else157
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s3, 3
	st.d	$a1, $a2, 0
	b	.LBB3_9
.LBB3_8:                                # %if.then155
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB3_9:                                # %cond.end212
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a2, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a3, $a1, %got_pc_lo12(zz_res)
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a4, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a0, 0
	st.d	$a0, $a2, 0
	st.d	$a0, $a3, 0
	st.d	$s0, $a4, 0
	ld.d	$a5, $s0, 0
	pcalau12i	$a1, %got_pc_hi20(zz_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(zz_tmp)
	st.d	$a5, $a1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s0, 0
	ld.d	$a0, $a3, 0
	ld.d	$a5, $a4, 0
	ld.d	$a6, $a0, 0
	ld.d	$a7, $a1, 0
	st.d	$a5, $a6, 8
	st.d	$a7, $a0, 0
	ld.d	$a5, $a3, 0
	ld.d	$a0, $a2, 0
	st.d	$a5, $a7, 8
	st.d	$a0, $a3, 0
	st.d	$fp, $a4, 0
	beqz	$a0, .LBB3_11
# %bb.10:                               # %cond.false221
	ld.d	$a2, $fp, 16
	ld.d	$a3, $a0, 16
	st.d	$a2, $a1, 0
	st.d	$a3, $fp, 16
	st.d	$fp, $a3, 24
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
.LBB3_11:                               # %cond.end245
	move	$a0, $s0
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
	.size	InterposeScale, .Lfunc_end3-InterposeScale
                                        # -- End function
	.p2align	5                               # -- Begin function InterposeWideOrHigh
	.type	InterposeWideOrHigh,@function
InterposeWideOrHigh:                    # @InterposeWideOrHigh
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
	pcalau12i	$a2, %got_pc_hi20(zz_lengths)
	ld.d	$s3, $a2, %got_pc_lo12(zz_lengths)
	move	$s1, $a1
	sltui	$a1, $a1, 1
	xori	$s5, $a1, 27
	ldx.bu	$a2, $s3, $s5
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$s2, $a1, %got_pc_lo12(zz_free)
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s4, $a1, %got_pc_lo12(zz_size)
	slli.d	$a1, $a2, 3
	ldx.d	$s0, $s2, $a1
	move	$fp, $a0
	st.w	$a2, $s4, 0
	beqz	$s0, .LBB4_2
# %bb.1:                                # %if.else10
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$s0, $a0, 0
	ld.d	$a0, $s0, 0
	alsl.d	$a1, $a2, $s2, 3
	b	.LBB4_3
.LBB4_2:                                # %if.then8
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	move	$s0, $a0
.LBB4_3:                                # %if.end16
	st.d	$a0, $a1, 0
	st.b	$s5, $s0, 32
	st.d	$s0, $s0, 24
	st.d	$s0, $s0, 16
	st.d	$s0, $s0, 8
	st.d	$s0, $s0, 0
	ld.h	$a0, $fp, 34
	st.h	$a0, $s0, 34
	ld.wu	$a0, $fp, 36
	ld.wu	$a1, $s0, 36
	srli.d	$a1, $a1, 20
	move	$a2, $a0
	bstrins.d	$a2, $a1, 63, 20
	st.w	$a2, $s0, 36
	ld.wu	$a1, $fp, 36
	srli.d	$a1, $a1, 20
	bstrins.d	$a0, $a1, 63, 20
	st.w	$a0, $s0, 36
	addi.d	$a0, $fp, 48
	slli.d	$a1, $s1, 2
	ldx.w	$a2, $a0, $a1
	addi.d	$a3, $s0, 48
	stx.w	$a2, $a3, $a1
	addi.d	$a4, $fp, 56
	ldx.w	$a5, $a4, $a1
	addi.d	$a6, $s0, 56
	stx.w	$a5, $a6, $a1
	xori	$a1, $s1, 1
	slli.d	$a1, $a1, 2
	ldx.w	$a0, $a0, $a1
	stx.w	$a0, $a3, $a1
	ldx.w	$a0, $a4, $a1
	stx.w	$a0, $a6, $a1
	lu12i.w	$a0, 2047
	ori	$a0, $a0, 4095
	st.w	$a0, $s0, 64
	add.d	$a1, $a5, $a2
	st.w	$a1, $s0, 68
	st.w	$a0, $s0, 72
	ld.d	$a0, $fp, 24
	beq	$a0, $fp, .LBB4_5
# %bb.4:                                # %cond.false124
	ld.d	$a1, $fp, 16
	st.d	$a1, $a0, 16
	pcalau12i	$a2, %got_pc_hi20(xx_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(xx_tmp)
	st.d	$a0, $a1, 24
	st.d	$fp, $fp, 24
	st.d	$fp, $fp, 16
	st.d	$a0, $a2, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	ld.d	$a3, $a0, 16
	pcalau12i	$a4, %got_pc_hi20(zz_tmp)
	ld.d	$a4, $a4, %got_pc_lo12(zz_tmp)
	ld.d	$a5, $s0, 16
	st.d	$s0, $a1, 0
	st.d	$a0, $a2, 0
	st.d	$a3, $a4, 0
	st.d	$a5, $a0, 16
	st.d	$a0, $a5, 24
	st.d	$a3, $s0, 16
	st.d	$s0, $a3, 24
	b	.LBB4_6
.LBB4_5:                                # %cond.end.thread
	pcalau12i	$a0, %got_pc_hi20(xx_tmp)
	ld.d	$a0, $a0, %got_pc_lo12(xx_tmp)
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$zero, $a0, 0
	st.d	$s0, $a1, 0
	st.d	$zero, $a2, 0
.LBB4_6:                                # %cond.end148
	ld.bu	$a2, $s3, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s2, $a0
	st.w	$a2, $s4, 0
	beqz	$a0, .LBB4_8
# %bb.7:                                # %if.else163
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s2, 3
	st.d	$a1, $a2, 0
	b	.LBB4_9
.LBB4_8:                                # %if.then161
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB4_9:                                # %cond.end218
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a2, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a3, $a1, %got_pc_lo12(zz_res)
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a4, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a0, 0
	st.d	$a0, $a2, 0
	st.d	$a0, $a3, 0
	st.d	$s0, $a4, 0
	ld.d	$a5, $s0, 0
	pcalau12i	$a1, %got_pc_hi20(zz_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(zz_tmp)
	st.d	$a5, $a1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s0, 0
	ld.d	$a0, $a3, 0
	ld.d	$a5, $a4, 0
	ld.d	$a6, $a0, 0
	ld.d	$a7, $a1, 0
	st.d	$a5, $a6, 8
	st.d	$a7, $a0, 0
	ld.d	$a5, $a3, 0
	ld.d	$a0, $a2, 0
	st.d	$a5, $a7, 8
	st.d	$a0, $a3, 0
	st.d	$fp, $a4, 0
	beqz	$a0, .LBB4_11
# %bb.10:                               # %cond.false227
	ld.d	$a2, $fp, 16
	ld.d	$a3, $a0, 16
	st.d	$a2, $a1, 0
	st.d	$a3, $fp, 16
	st.d	$fp, $a3, 24
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
.LBB4_11:                               # %cond.end251
	move	$a0, $s0
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
	.size	InterposeWideOrHigh, .Lfunc_end4-InterposeWideOrHigh
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"assert failed in %s"
	.size	.L.str, 20

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"DetachGalley: precondition!"
	.size	.L.str.1, 28

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"DetachGalley: parent!"
	.size	.L.str.2, 22

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"SearchGalley: start!"
	.size	.L.str.4, 21

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"AttachGalley: no index!"
	.size	.L.str.5, 24

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"AttachGalley: not UNATTACHED!"
	.size	.L.str.6, 30

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"galley %s deleted from here (no target)"
	.size	.L.str.7, 40

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"AttachGalley: target_index!"
	.size	.L.str.8, 28

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"AttachGalley: target!"
	.size	.L.str.9, 22

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"receptive symbol %s has unconstrained width"
	.size	.L.str.10, 44

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"AttachGalley: dest unconstrained!"
	.size	.L.str.11, 34

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.space	1
	.size	.L.str.12, 1

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"too little horizontal space for galley %s at %s"
	.size	.L.str.13, 48

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Attach: PRECEDES!"
	.size	.L.str.14, 18

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"%.1fc"
	.size	.L.str.15, 6

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"%s object too high for %s space; %s inserted"
	.size	.L.str.16, 45

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"@Scale"
	.size	.L.str.17, 7

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"%s object too wide for %s space; %s inserted"
	.size	.L.str.18, 45

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"%s object too high for %s space; will try elsewhere"
	.size	.L.str.19, 52

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"%s object too wide for %s space; will try elsewhere"
	.size	.L.str.20, 52

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"AttachGalley: is_index(z)!"
	.size	.L.str.21, 27

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"AttachGalley: z size!"
	.size	.L.str.22, 22

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"AttachGalley: z size (perpendicular)!"
	.size	.L.str.23, 38

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"assert failed in %s %s"
	.size	.L.str.24, 23

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"AttachGalley:"
	.size	.L.str.25, 14

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"TransferLinks: start_link!"
	.size	.L.str.26, 27

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"AttachGalley: type(hd_index)!"
	.size	.L.str.27, 30

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"AttachGalley: type(junk) != ACAT!"
	.size	.L.str.28, 34

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"AttachGalley: target_ind"
	.size	.L.str.29, 25

	.section	".note.GNU-stack","",@progbits
	.addrsig
