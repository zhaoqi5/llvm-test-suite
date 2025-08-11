	.file	"prepair.c"
	.text
	.globl	prepair                         # -- Begin function prepair
	.p2align	5
	.type	prepair,@function
prepair:                                # @prepair
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
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	ori	$s0, $zero, 1
	blt	$a0, $s0, .LBB0_9
# %bb.1:                                # %for.body.preheader
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(pnodeArray)
	ld.d	$s1, $a0, %got_pc_lo12(pnodeArray)
	ld.d	$a1, $s1, 0
	pcalau12i	$a0, %got_pc_hi20(numnodes)
	ld.d	$s2, $a0, %got_pc_lo12(numnodes)
	addi.d	$a0, $fp, 1
	bstrpick.d	$s3, $a0, 31, 0
	ori	$s4, $zero, 1
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                # %for.inc30
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.d	$s4, $s4, 1
	beq	$s4, $s3, .LBB0_9
.LBB0_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #     Child Loop BB0_7 Depth 2
	slli.d	$a0, $s4, 4
	alsl.d	$s5, $s4, $a0, 3
	stx.w	$zero, $a1, $s5
	ld.w	$a0, $s2, 0
	add.w	$a0, $a0, $fp
	blt	$a0, $s0, .LBB0_6
# %bb.4:                                # %for.body3.lr.ph
                                        #   in Loop: Header=BB0_3 Depth=1
	add.d	$a0, $a1, $s5
	ld.d	$a2, $a0, 8
	move	$a0, $zero
	addi.d	$a2, $a2, 12
	.p2align	4, , 16
.LBB0_5:                                # %for.body3
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$zero, $a2, 8
	st.d	$zero, $a2, 0
	ld.w	$a3, $s2, 0
	add.w	$a3, $a3, $fp
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 12
	blt	$a0, $a3, .LBB0_5
.LBB0_6:                                # %for.end
                                        #   in Loop: Header=BB0_3 Depth=1
	add.d	$a0, $a1, $s5
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB0_2
	.p2align	4, , 16
.LBB0_7:                                # %do.body
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s6, $a0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	bnez	$s6, .LBB0_7
# %bb.8:                                # %do.end
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a1, $s1, 0
	add.d	$a0, $a1, $s5
	st.d	$zero, $a0, 16
	b	.LBB0_2
.LBB0_9:                                # %for.end32
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
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
	.size	prepair, .Lfunc_end0-prepair
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
