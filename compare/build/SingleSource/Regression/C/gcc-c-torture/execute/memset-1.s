	.file	"memset-1.c"
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
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
	move	$s3, $zero
	pcalau12i	$a0, %pc_hi20(A)
	ld.bu	$fp, $a0, %pc_lo12(A)
	addi.w	$a1, $zero, -1
	pcalau12i	$a0, %pc_hi20(u)
	addi.d	$s0, $a0, %pc_lo12(u)
	ori	$s5, $zero, 97
	ori	$s6, $zero, 65
	ori	$s7, $zero, 66
	.p2align	4, , 16
.LBB0_1:                                # %for.cond2.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
                                        #       Child Loop BB0_4 Depth 3
                                        #       Child Loop BB0_7 Depth 3
                                        #       Child Loop BB0_19 Depth 3
                                        #       Child Loop BB0_22 Depth 3
                                        #       Child Loop BB0_34 Depth 3
                                        #       Child Loop BB0_37 Depth 3
	move	$s4, $zero
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a1, 31, 0
	addi.d	$s8, $a0, 1
	add.d	$s1, $s0, $s3
	ori	$s2, $zero, 1
	.p2align	4, , 16
.LBB0_2:                                # %for.cond7.preheader
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_4 Depth 3
                                        #       Child Loop BB0_7 Depth 3
                                        #       Child Loop BB0_19 Depth 3
                                        #       Child Loop BB0_22 Depth 3
                                        #       Child Loop BB0_34 Depth 3
                                        #       Child Loop BB0_37 Depth 3
	ori	$a1, $zero, 97
	ori	$a2, $zero, 96
	move	$a0, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $zero
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	beqz	$s3, .LBB0_6
# %bb.3:                                # %for.body20.preheader
                                        #   in Loop: Header=BB0_2 Depth=2
	pcalau12i	$a0, %pc_hi20(u)
	addi.d	$a1, $a0, %pc_lo12(u)
	move	$a0, $s8
	.p2align	4, , 16
.LBB0_4:                                # %for.body20
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a2, $a1, 0
	bne	$a2, $s5, .LBB0_50
# %bb.5:                                # %for.inc26
                                        #   in Loop: Header=BB0_4 Depth=3
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 1
	bnez	$a0, .LBB0_4
.LBB0_6:                                # %for.cond29.preheader
                                        #   in Loop: Header=BB0_2 Depth=2
	move	$a2, $zero
	add.d	$a0, $a1, $s2
	.p2align	4, , 16
.LBB0_7:                                # %for.body32
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.bu	$a3, $a1, $a2
	bnez	$a3, .LBB0_50
# %bb.8:                                # %for.inc38
                                        #   in Loop: Header=BB0_7 Depth=3
	addi.d	$a2, $a2, 1
	bne	$s2, $a2, .LBB0_7
# %bb.9:                                # %for.body46.preheader
                                        #   in Loop: Header=BB0_2 Depth=2
	ld.bu	$a1, $a0, 0
	bne	$a1, $s5, .LBB0_50
# %bb.10:                               # %for.inc52
                                        #   in Loop: Header=BB0_2 Depth=2
	ld.bu	$a1, $a0, 1
	bne	$a1, $s5, .LBB0_50
# %bb.11:                               # %for.inc52.1
                                        #   in Loop: Header=BB0_2 Depth=2
	ld.bu	$a1, $a0, 2
	bne	$a1, $s5, .LBB0_50
# %bb.12:                               # %for.inc52.2
                                        #   in Loop: Header=BB0_2 Depth=2
	ld.bu	$a1, $a0, 3
	bne	$a1, $s5, .LBB0_50
# %bb.13:                               # %for.inc52.3
                                        #   in Loop: Header=BB0_2 Depth=2
	ld.bu	$a1, $a0, 4
	bne	$a1, $s5, .LBB0_50
# %bb.14:                               # %for.inc52.4
                                        #   in Loop: Header=BB0_2 Depth=2
	ld.bu	$a1, $a0, 5
	bne	$a1, $s5, .LBB0_50
# %bb.15:                               # %for.inc52.5
                                        #   in Loop: Header=BB0_2 Depth=2
	ld.bu	$a1, $a0, 6
	bne	$a1, $s5, .LBB0_50
# %bb.16:                               # %for.inc52.6
                                        #   in Loop: Header=BB0_2 Depth=2
	ld.bu	$a0, $a0, 7
	bne	$a0, $s5, .LBB0_50
# %bb.17:                               # %for.inc52.7
                                        #   in Loop: Header=BB0_2 Depth=2
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	beqz	$s3, .LBB0_21
# %bb.18:                               # %for.body69.preheader
                                        #   in Loop: Header=BB0_2 Depth=2
	pcalau12i	$a0, %pc_hi20(u)
	addi.d	$a1, $a0, %pc_lo12(u)
	move	$a0, $s8
	.p2align	4, , 16
.LBB0_19:                               # %for.body69
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a2, $a1, 0
	bne	$a2, $s5, .LBB0_50
# %bb.20:                               # %for.inc75
                                        #   in Loop: Header=BB0_19 Depth=3
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 1
	bnez	$a0, .LBB0_19
.LBB0_21:                               # %for.cond79.preheader
                                        #   in Loop: Header=BB0_2 Depth=2
	move	$a2, $zero
	add.d	$a0, $a1, $s2
	.p2align	4, , 16
.LBB0_22:                               # %for.body82
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.bu	$a3, $a1, $a2
	bne	$a3, $s6, .LBB0_50
# %bb.23:                               # %for.inc88
                                        #   in Loop: Header=BB0_22 Depth=3
	addi.d	$a2, $a2, 1
	bne	$s2, $a2, .LBB0_22
# %bb.24:                               # %for.body96.preheader
                                        #   in Loop: Header=BB0_2 Depth=2
	ld.bu	$a1, $a0, 0
	bne	$a1, $s5, .LBB0_50
# %bb.25:                               # %for.inc102
                                        #   in Loop: Header=BB0_2 Depth=2
	ld.bu	$a1, $a0, 1
	bne	$a1, $s5, .LBB0_50
# %bb.26:                               # %for.inc102.1
                                        #   in Loop: Header=BB0_2 Depth=2
	ld.bu	$a1, $a0, 2
	bne	$a1, $s5, .LBB0_50
# %bb.27:                               # %for.inc102.2
                                        #   in Loop: Header=BB0_2 Depth=2
	ld.bu	$a1, $a0, 3
	bne	$a1, $s5, .LBB0_50
# %bb.28:                               # %for.inc102.3
                                        #   in Loop: Header=BB0_2 Depth=2
	ld.bu	$a1, $a0, 4
	bne	$a1, $s5, .LBB0_50
# %bb.29:                               # %for.inc102.4
                                        #   in Loop: Header=BB0_2 Depth=2
	ld.bu	$a1, $a0, 5
	bne	$a1, $s5, .LBB0_50
# %bb.30:                               # %for.inc102.5
                                        #   in Loop: Header=BB0_2 Depth=2
	ld.bu	$a1, $a0, 6
	bne	$a1, $s5, .LBB0_50
# %bb.31:                               # %for.inc102.6
                                        #   in Loop: Header=BB0_2 Depth=2
	ld.bu	$a0, $a0, 7
	bne	$a0, $s5, .LBB0_50
# %bb.32:                               # %for.inc102.7
                                        #   in Loop: Header=BB0_2 Depth=2
	ori	$a1, $zero, 66
	move	$a0, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	beqz	$s3, .LBB0_36
# %bb.33:                               # %for.body118.preheader
                                        #   in Loop: Header=BB0_2 Depth=2
	move	$a0, $s8
	move	$a1, $s0
	.p2align	4, , 16
.LBB0_34:                               # %for.body118
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a2, $a1, 0
	bne	$a2, $s5, .LBB0_50
# %bb.35:                               # %for.inc124
                                        #   in Loop: Header=BB0_34 Depth=3
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 1
	bnez	$a0, .LBB0_34
.LBB0_36:                               # %for.cond128.preheader
                                        #   in Loop: Header=BB0_2 Depth=2
	move	$a2, $zero
	add.d	$a0, $a1, $s2
	.p2align	4, , 16
.LBB0_37:                               # %for.body131
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.bu	$a3, $a1, $a2
	bne	$a3, $s7, .LBB0_50
# %bb.38:                               # %for.inc137
                                        #   in Loop: Header=BB0_37 Depth=3
	addi.d	$a2, $a2, 1
	bne	$s2, $a2, .LBB0_37
# %bb.39:                               # %for.body145.preheader
                                        #   in Loop: Header=BB0_2 Depth=2
	ld.bu	$a1, $a0, 0
	bne	$a1, $s5, .LBB0_50
# %bb.40:                               # %for.inc151
                                        #   in Loop: Header=BB0_2 Depth=2
	ld.bu	$a1, $a0, 1
	bne	$a1, $s5, .LBB0_50
# %bb.41:                               # %for.inc151.1
                                        #   in Loop: Header=BB0_2 Depth=2
	ld.bu	$a1, $a0, 2
	bne	$a1, $s5, .LBB0_50
# %bb.42:                               # %for.inc151.2
                                        #   in Loop: Header=BB0_2 Depth=2
	ld.bu	$a1, $a0, 3
	bne	$a1, $s5, .LBB0_50
# %bb.43:                               # %for.inc151.3
                                        #   in Loop: Header=BB0_2 Depth=2
	ld.bu	$a1, $a0, 4
	bne	$a1, $s5, .LBB0_50
# %bb.44:                               # %for.inc151.4
                                        #   in Loop: Header=BB0_2 Depth=2
	ld.bu	$a1, $a0, 5
	bne	$a1, $s5, .LBB0_50
# %bb.45:                               # %for.inc151.5
                                        #   in Loop: Header=BB0_2 Depth=2
	ld.bu	$a1, $a0, 6
	bne	$a1, $s5, .LBB0_50
# %bb.46:                               # %for.inc151.6
                                        #   in Loop: Header=BB0_2 Depth=2
	ld.bu	$a0, $a0, 7
	bne	$a0, $s5, .LBB0_50
# %bb.47:                               # %for.inc151.7
                                        #   in Loop: Header=BB0_2 Depth=2
	addi.d	$s4, $s4, 1
	addi.d	$s2, $s2, 1
	ori	$a0, $zero, 79
	bne	$s4, $a0, .LBB0_2
# %bb.48:                               # %for.inc158
                                        #   in Loop: Header=BB0_1 Depth=1
	addi.d	$s3, $s3, 1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	ori	$a0, $zero, 8
	bne	$s3, $a0, .LBB0_1
# %bb.49:                               # %for.end160
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_50:                               # %if.then24
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	A,@object                       # @A
	.data
	.globl	A
A:
	.byte	65                              # 0x41
	.size	A, 1

	.type	u,@object                       # @u
	.local	u
	.comm	u,96,16
	.section	".note.GNU-stack","",@progbits
	.addrsig
