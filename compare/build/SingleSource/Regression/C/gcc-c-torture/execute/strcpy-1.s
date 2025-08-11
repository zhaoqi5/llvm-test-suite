	.file	"strcpy-1.c"
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
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
	move	$a1, $zero
	addi.w	$a2, $zero, -1
	pcalau12i	$a0, %pc_hi20(u1)
	addi.d	$fp, $a0, %pc_lo12(u1)
	pcalau12i	$a0, %pc_hi20(u2)
	addi.d	$s5, $a0, %pc_lo12(u2)
	addi.d	$a0, $fp, 1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$s7, $zero, 97
	ori	$s8, $zero, 95
	ori	$s4, $zero, 65
	b	.LBB0_2
	.p2align	4, , 16
.LBB0_1:                                # %for.inc93
                                        #   in Loop: Header=BB0_2 Depth=1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	ori	$a0, $zero, 8
	beq	$a1, $a0, .LBB0_43
.LBB0_2:                                # %for.cond2.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
                                        #       Child Loop BB0_5 Depth 3
                                        #         Child Loop BB0_6 Depth 4
                                        #         Child Loop BB0_8 Depth 4
                                        #         Child Loop BB0_11 Depth 4
                                        #     Child Loop BB0_25 Depth 2
                                        #       Child Loop BB0_26 Depth 3
                                        #         Child Loop BB0_27 Depth 4
                                        #         Child Loop BB0_29 Depth 4
	add.d	$a0, $fp, $a1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	beqz	$a1, .LBB0_24
# %bb.3:                                # %for.cond7.preheader.us.preheader
                                        #   in Loop: Header=BB0_2 Depth=1
	move	$s6, $zero
	bstrpick.d	$a0, $a2, 31, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB0_4:                                # %for.cond7.preheader.us
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_5 Depth 3
                                        #         Child Loop BB0_6 Depth 4
                                        #         Child Loop BB0_8 Depth 4
                                        #         Child Loop BB0_11 Depth 4
	move	$s0, $zero
	add.d	$a0, $s5, $s6
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	addi.d	$s3, $s6, 65
	ori	$s1, $zero, 1
	.p2align	4, , 16
.LBB0_5:                                # %for.cond12.preheader.us.us
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_4 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_6 Depth 4
                                        #         Child Loop BB0_8 Depth 4
                                        #         Child Loop BB0_11 Depth 4
	pcalau12i	$a0, %pc_hi20(u1)
	addi.d	$s2, $a0, %pc_lo12(u1)
	ori	$a1, $zero, 97
	ori	$a2, $zero, 97
	move	$a0, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ori	$a1, $zero, 65
	.p2align	4, , 16
.LBB0_6:                                # %for.body16.us.us
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_4 Depth=2
                                        #       Parent Loop BB0_5 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ext.w.b	$a2, $a1
	slt	$a2, $s8, $a2
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s4, $a2
	or	$a1, $a2, $a1
	stx.b	$a1, $s5, $a0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 1
	bne	$a0, $s7, .LBB0_6
# %bb.7:                                # %for.end.us.us
                                        #   in Loop: Header=BB0_5 Depth=3
	add.d	$a0, $s1, $s6
	stx.b	$zero, $s5, $a0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_8:                                # %for.body36.us.us
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_4 Depth=2
                                        #       Parent Loop BB0_5 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$a1, $s2, 0
	bne	$a1, $s7, .LBB0_42
# %bb.9:                                # %for.inc42.us.us
                                        #   in Loop: Header=BB0_8 Depth=4
	addi.d	$a0, $a0, -1
	addi.d	$s2, $s2, 1
	bnez	$a0, .LBB0_8
# %bb.10:                               # %for.body50.us.us.preheader
                                        #   in Loop: Header=BB0_5 Depth=3
	move	$a0, $zero
	move	$a1, $s3
	.p2align	4, , 16
.LBB0_11:                               # %for.body50.us.us
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_4 Depth=2
                                        #       Parent Loop BB0_5 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ext.w.b	$a2, $a1
	slt	$a2, $s8, $a2
	masknez	$a1, $a1, $a2
	ldx.bu	$a3, $s2, $a0
	maskeqz	$a2, $s4, $a2
	or	$a1, $a2, $a1
	andi	$a2, $a1, 255
	bne	$a3, $a2, .LBB0_42
# %bb.12:                               # %for.inc62.us.us
                                        #   in Loop: Header=BB0_11 Depth=4
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 1
	bne	$s1, $a0, .LBB0_11
# %bb.13:                               # %for.end66.us.us
                                        #   in Loop: Header=BB0_5 Depth=3
	ldx.bu	$a0, $s2, $a0
	bnez	$a0, .LBB0_42
# %bb.14:                               # %for.cond73.preheader.us.us
                                        #   in Loop: Header=BB0_5 Depth=3
	add.d	$a0, $s2, $s0
	ld.bu	$a1, $a0, 2
	bne	$a1, $s7, .LBB0_42
# %bb.15:                               # %for.cond73.us.us
                                        #   in Loop: Header=BB0_5 Depth=3
	ld.bu	$a1, $a0, 3
	bne	$a1, $s7, .LBB0_42
# %bb.16:                               # %for.cond73.us.us.1
                                        #   in Loop: Header=BB0_5 Depth=3
	ld.bu	$a1, $a0, 4
	bne	$a1, $s7, .LBB0_42
# %bb.17:                               # %for.cond73.us.us.2
                                        #   in Loop: Header=BB0_5 Depth=3
	ld.bu	$a1, $a0, 5
	bne	$a1, $s7, .LBB0_42
# %bb.18:                               # %for.cond73.us.us.3
                                        #   in Loop: Header=BB0_5 Depth=3
	ld.bu	$a1, $a0, 6
	bne	$a1, $s7, .LBB0_42
# %bb.19:                               # %for.cond73.us.us.4
                                        #   in Loop: Header=BB0_5 Depth=3
	ld.bu	$a1, $a0, 7
	bne	$a1, $s7, .LBB0_42
# %bb.20:                               # %for.cond73.us.us.5
                                        #   in Loop: Header=BB0_5 Depth=3
	ld.bu	$a1, $a0, 8
	bne	$a1, $s7, .LBB0_42
# %bb.21:                               # %for.cond73.us.us.6
                                        #   in Loop: Header=BB0_5 Depth=3
	ld.bu	$a0, $a0, 9
	bne	$a0, $s7, .LBB0_42
# %bb.22:                               # %for.cond73.us.us.7
                                        #   in Loop: Header=BB0_5 Depth=3
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 1
	ori	$a0, $zero, 80
	bne	$s1, $a0, .LBB0_5
# %bb.23:                               # %for.inc90.split.us.us
                                        #   in Loop: Header=BB0_4 Depth=2
	addi.d	$s6, $s6, 1
	ori	$a0, $zero, 8
	bne	$s6, $a0, .LBB0_4
	b	.LBB0_1
	.p2align	4, , 16
.LBB0_24:                               # %for.cond7.preheader.preheader
                                        #   in Loop: Header=BB0_2 Depth=1
	move	$s0, $zero
	.p2align	4, , 16
.LBB0_25:                               # %for.cond7.preheader
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_26 Depth 3
                                        #         Child Loop BB0_27 Depth 4
                                        #         Child Loop BB0_29 Depth 4
	add.d	$a0, $s5, $s0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	addi.d	$s2, $s0, 65
	ori	$s3, $zero, 1
	move	$s6, $fp
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_26:                               # %for.cond12.preheader
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_25 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_27 Depth 4
                                        #         Child Loop BB0_29 Depth 4
	ori	$a1, $zero, 97
	ori	$a2, $zero, 97
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ori	$a1, $zero, 65
	.p2align	4, , 16
.LBB0_27:                               # %for.body16
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_25 Depth=2
                                        #       Parent Loop BB0_26 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ext.w.b	$a2, $a1
	slt	$a2, $s8, $a2
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s4, $a2
	or	$a1, $a2, $a1
	stx.b	$a1, $s5, $a0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 1
	bne	$a0, $s7, .LBB0_27
# %bb.28:                               # %for.end
                                        #   in Loop: Header=BB0_26 Depth=3
	add.d	$a0, $s3, $s0
	stx.b	$zero, $s5, $a0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	move	$a1, $s2
	.p2align	4, , 16
.LBB0_29:                               # %for.body50
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_25 Depth=2
                                        #       Parent Loop BB0_26 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ext.w.b	$a2, $a1
	slt	$a2, $s8, $a2
	masknez	$a1, $a1, $a2
	ldx.bu	$a3, $fp, $a0
	maskeqz	$a2, $s4, $a2
	or	$a1, $a2, $a1
	andi	$a2, $a1, 255
	bne	$a3, $a2, .LBB0_42
# %bb.30:                               # %for.inc62
                                        #   in Loop: Header=BB0_29 Depth=4
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 1
	bne	$s3, $a0, .LBB0_29
# %bb.31:                               # %for.end66
                                        #   in Loop: Header=BB0_26 Depth=3
	ld.bu	$a0, $s1, 0
	bnez	$a0, .LBB0_42
# %bb.32:                               # %for.cond73.preheader
                                        #   in Loop: Header=BB0_26 Depth=3
	ld.bu	$a0, $s6, 2
	bne	$a0, $s7, .LBB0_42
# %bb.33:                               # %for.cond73
                                        #   in Loop: Header=BB0_26 Depth=3
	ld.bu	$a0, $s6, 3
	bne	$a0, $s7, .LBB0_42
# %bb.34:                               # %for.cond73.1
                                        #   in Loop: Header=BB0_26 Depth=3
	ld.bu	$a0, $s6, 4
	bne	$a0, $s7, .LBB0_42
# %bb.35:                               # %for.cond73.2
                                        #   in Loop: Header=BB0_26 Depth=3
	ld.bu	$a0, $s6, 5
	bne	$a0, $s7, .LBB0_42
# %bb.36:                               # %for.cond73.3
                                        #   in Loop: Header=BB0_26 Depth=3
	ld.bu	$a0, $s6, 6
	bne	$a0, $s7, .LBB0_42
# %bb.37:                               # %for.cond73.4
                                        #   in Loop: Header=BB0_26 Depth=3
	ld.bu	$a0, $s6, 7
	bne	$a0, $s7, .LBB0_42
# %bb.38:                               # %for.cond73.5
                                        #   in Loop: Header=BB0_26 Depth=3
	ld.bu	$a0, $s6, 8
	bne	$a0, $s7, .LBB0_42
# %bb.39:                               # %for.cond73.6
                                        #   in Loop: Header=BB0_26 Depth=3
	ld.bu	$a0, $s6, 9
	bne	$a0, $s7, .LBB0_42
# %bb.40:                               # %for.cond73.7
                                        #   in Loop: Header=BB0_26 Depth=3
	addi.d	$s3, $s3, 1
	addi.d	$s1, $s1, 1
	addi.d	$s6, $s6, 1
	ori	$a0, $zero, 80
	bne	$s3, $a0, .LBB0_26
# %bb.41:                               # %for.inc90.split
                                        #   in Loop: Header=BB0_25 Depth=2
	addi.d	$s0, $s0, 1
	ori	$a0, $zero, 8
	bne	$s0, $a0, .LBB0_25
	b	.LBB0_1
.LBB0_42:                               # %if.then40
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.LBB0_43:                               # %for.end95
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	u1,@object                      # @u1
	.local	u1
	.comm	u1,112,16
	.type	u2,@object                      # @u2
	.local	u2
	.comm	u2,112,16
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym u1
	.addrsig_sym u2
