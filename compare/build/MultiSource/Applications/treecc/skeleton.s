	.file	"skeleton.c"
	.text
	.globl	TreeCCIncludeSkeleton           # -- Begin function TreeCCIncludeSkeleton
	.p2align	5
	.type	TreeCCIncludeSkeleton,@function
TreeCCIncludeSkeleton:                  # @TreeCCIncludeSkeleton
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
	lu12i.w	$a3, 1
	ori	$a3, $a3, 2176
	sub.d	$sp, $sp, $a3
	pcalau12i	$a3, %got_pc_hi20(TreeCCSkelFiles)
	ld.d	$a3, $a3, %got_pc_lo12(TreeCCSkelFiles)
	ld.d	$a4, $a3, 0
	move	$s1, $a2
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	beqz	$a4, .LBB0_4
# %bb.1:                                # %while.body.i.preheader
	move	$fp, $a1
	move	$a0, $a4
	addi.d	$s0, $a3, 16
	.p2align	4, , 16
.LBB0_2:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_5
# %bb.3:                                # %if.end.i
                                        #   in Loop: Header=BB0_2 Depth=1
	ld.d	$a0, $s0, 0
	addi.d	$s0, $s0, 16
	bnez	$a0, .LBB0_2
.LBB0_4:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_5:                                # %FindSkeletonString.exit
	ld.d	$s3, $s0, -8
	beqz	$s3, .LBB0_4
# %bb.6:                                # %if.end
	ori	$a1, $zero, 1
	move	$a0, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(TreeCCStreamLine)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s3, 0
	beqz	$a1, .LBB0_34
# %bb.7:                                # %while.cond.i.preheader.lr.ph
	lu12i.w	$a2, 2
	addi.d	$s5, $sp, 24
	ori	$s6, $zero, 89
	ori	$s7, $zero, 121
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s1, $a0, %pc_lo12(.L.str.1)
	ori	$s4, $zero, 10
	addi.d	$a0, $sp, 24
	bnez	$a1, .LBB0_11
	b	.LBB0_16
	.p2align	4, , 16
.LBB0_8:                                # %if.end67.sink.split
                                        #   in Loop: Header=BB0_16 Depth=1
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(TreeCCStreamCode)
	jirl	$ra, $ra, 0
.LBB0_9:                                # %if.end67
                                        #   in Loop: Header=BB0_16 Depth=1
	ld.bu	$a1, $s3, 0
	addi.d	$a0, $sp, 24
	lu12i.w	$a2, 2
	beqz	$a1, .LBB0_34
# %bb.10:                               # %while.cond.i
                                        #   in Loop: Header=BB0_16 Depth=1
	beqz	$a1, .LBB0_16
.LBB0_11:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	bne	$a1, $s4, .LBB0_13
# %bb.12:                               # %if.then16.i
	st.b	$s4, $a0, 0
	addi.d	$a0, $a0, 1
	addi.d	$s3, $s3, 1
	b	.LBB0_16
	.p2align	4, , 16
.LBB0_13:                               # %while.body.i31
                                        #   in Loop: Header=BB0_11 Depth=1
	ori	$a3, $zero, 3
	blt	$a2, $a3, .LBB0_15
# %bb.14:                               # %if.then10.i
                                        #   in Loop: Header=BB0_11 Depth=1
	st.b	$a1, $a0, 0
	addi.d	$a0, $a0, 1
	addi.w	$a2, $a2, -1
.LBB0_15:                               # %if.end11.i
                                        #   in Loop: Header=BB0_11 Depth=1
	ld.bu	$a1, $s3, 1
	addi.d	$s3, $s3, 1
	bnez	$a1, .LBB0_11
	.p2align	4, , 16
.LBB0_16:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_19 Depth 2
                                        #       Child Loop BB0_22 Depth 3
	st.b	$zero, $a0, 0
	addi.d	$a0, $sp, 24
	ori	$a1, $zero, 89
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_18
# %bb.17:                               # %lor.lhs.false
                                        #   in Loop: Header=BB0_16 Depth=1
	addi.d	$a0, $sp, 24
	ori	$a1, $zero, 121
	addi.d	$s2, $sp, 24
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_8
.LBB0_18:                               # %while.cond10.preheader
                                        #   in Loop: Header=BB0_16 Depth=1
	move	$s0, $zero
.LBB0_19:                               # %while.cond10.outer
                                        #   Parent Loop BB0_16 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_22 Depth 3
	add.d	$s2, $s5, $s0
	move	$s8, $s0
	b	.LBB0_22
	.p2align	4, , 16
.LBB0_20:                               # %land.lhs.true37
                                        #   in Loop: Header=BB0_22 Depth=3
	ldx.bu	$a0, $s4, $s5
	beq	$a0, $s7, .LBB0_29
.LBB0_21:                               # %if.else55
                                        #   in Loop: Header=BB0_22 Depth=3
	addi.d	$s2, $s2, 1
	move	$s8, $s4
.LBB0_22:                               # %while.cond10
                                        #   Parent Loop BB0_16 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a0, $s2, 0
	addi.w	$s4, $s8, 1
	beq	$a0, $s6, .LBB0_25
# %bb.23:                               # %while.cond10
                                        #   in Loop: Header=BB0_22 Depth=3
	beq	$a0, $s7, .LBB0_20
# %bb.24:                               # %while.cond10
                                        #   in Loop: Header=BB0_22 Depth=3
	bnez	$a0, .LBB0_21
	b	.LBB0_32
	.p2align	4, , 16
.LBB0_25:                               # %land.lhs.true
                                        #   in Loop: Header=BB0_22 Depth=3
	ori	$a2, $zero, 11
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_21
# %bb.26:                               # %if.then22
                                        #   in Loop: Header=BB0_19 Depth=2
	st.b	$zero, $s2, 0
	bge	$s0, $s8, .LBB0_28
# %bb.27:                               # %if.then27
                                        #   in Loop: Header=BB0_19 Depth=2
	add.d	$a1, $s5, $s0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamCode)
	jirl	$ra, $ra, 0
.LBB0_28:                               # %if.end31
                                        #   in Loop: Header=BB0_19 Depth=2
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ldptr.d	$a1, $a0, 8256
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamCode)
	jirl	$ra, $ra, 0
	addi.w	$s0, $s8, 11
	b	.LBB0_19
	.p2align	4, , 16
.LBB0_29:                               # %if.then44
                                        #   in Loop: Header=BB0_19 Depth=2
	st.b	$zero, $s2, 0
	bge	$s0, $s8, .LBB0_31
# %bb.30:                               # %if.then49
                                        #   in Loop: Header=BB0_19 Depth=2
	add.d	$a1, $s5, $s0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamCode)
	jirl	$ra, $ra, 0
.LBB0_31:                               # %if.end53
                                        #   in Loop: Header=BB0_19 Depth=2
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ldptr.d	$a1, $a0, 8248
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamCode)
	jirl	$ra, $ra, 0
	addi.w	$s0, $s8, 2
	b	.LBB0_19
	.p2align	4, , 16
.LBB0_32:                               # %while.end
                                        #   in Loop: Header=BB0_16 Depth=1
	ori	$s4, $zero, 10
	bge	$s0, $s8, .LBB0_9
# %bb.33:                               # %if.then60
                                        #   in Loop: Header=BB0_16 Depth=1
	add.d	$s2, $s5, $s0
	b	.LBB0_8
.LBB0_34:                               # %while.end68
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamFixLine)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2176
	add.d	$sp, $sp, $a0
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
.Lfunc_end0:
	.size	TreeCCIncludeSkeleton, .Lfunc_end0-TreeCCIncludeSkeleton
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"treecc: internal error - could not find skeleton \"%s\"\n"
	.size	.L.str, 55

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"YYNODESTATE"
	.size	.L.str.1, 12

	.section	".note.GNU-stack","",@progbits
	.addrsig
