	.file	"shortpath.c"
	.text
	.globl	shortpath                       # -- Begin function shortpath
	.p2align	5
	.type	shortpath,@function
shortpath:                              # @shortpath
# %bb.0:                                # %entry
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_14
# %bb.1:                                # %for.body.preheader
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
	move	$fp, $a0
	addi.d	$a0, $a0, 1
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(numnodes)
	ld.d	$s3, $a0, %got_pc_lo12(numnodes)
	pcalau12i	$a0, %got_pc_hi20(pnodeArray)
	ld.d	$a0, $a0, %got_pc_lo12(pnodeArray)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(gnodeArray)
	ld.d	$s5, $a0, %got_pc_lo12(gnodeArray)
	lu12i.w	$a0, 244140
	ori	$s6, $a0, 2560
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB0_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #     Child Loop BB0_11 Depth 2
                                        #       Child Loop BB0_9 Depth 3
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.w	$a0, $s3, 0
	slli.d	$a2, $a3, 4
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	alsl.d	$a2, $a3, $a2, 3
	add.d	$a1, $a1, $a2
	ld.d	$s1, $a1, 8
	add.w	$a1, $a0, $fp
	st.d	$zero, $sp, 64
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB0_11
# %bb.3:                                # %for.body4.lr.ph
                                        #   in Loop: Header=BB0_2 Depth=1
	move	$s2, $zero
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	add.w	$s0, $a0, $a1
	slli.d	$a1, $s0, 3
	alsl.d	$a1, $s0, $a1, 2
	add.d	$a1, $s1, $a1
	addi.d	$s4, $a1, 8
	addi.d	$s7, $s1, 16
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$s8, $a0, -1
	b	.LBB0_5
	.p2align	4, , 16
.LBB0_4:                                # %for.inc
                                        #   in Loop: Header=BB0_5 Depth=2
	st.w	$a0, $s7, 0
	ld.w	$a0, $s3, 0
	add.w	$a0, $a0, $fp
	addi.d	$s2, $s2, 1
	addi.d	$s7, $s7, 12
	bge	$s2, $a0, .LBB0_11
.LBB0_5:                                # %for.body4
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s6
	bne	$s8, $s2, .LBB0_4
# %bb.6:                                # %if.then
                                        #   in Loop: Header=BB0_5 Depth=2
	addi.d	$a0, $sp, 64
	move	$a1, $zero
	move	$a2, $s0
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	st.h	$zero, $s4, 0
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_7:                                # %if.end17
                                        #   in Loop: Header=BB0_11 Depth=2
	ld.w	$a0, $sp, 48
	ld.d	$a1, $s5, 0
	slli.d	$a0, $a0, 3
	ldx.d	$s2, $a1, $a0
	bnez	$s2, .LBB0_9
	b	.LBB0_11
	.p2align	4, , 16
.LBB0_8:                                # %for.inc42
                                        #   in Loop: Header=BB0_9 Depth=3
	ld.d	$s2, $s2, 32
	beqz	$s2, .LBB0_11
.LBB0_9:                                # %for.body22
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$s0, $s2, 0
	ld.w	$s4, $s2, 8
	slli.d	$a0, $s0, 3
	alsl.d	$a0, $s0, $a0, 2
	add.d	$s7, $s1, $a0
	ld.w	$a0, $sp, 52
	ld.w	$a1, $s7, 4
	add.w	$a0, $a0, $s4
	bge	$a0, $a1, .LBB0_8
# %bb.10:                               # %if.then29
                                        #   in Loop: Header=BB0_9 Depth=3
	addi.d	$a0, $sp, 64
	move	$a2, $s0
	pcaddu18i	$ra, %call36(tdelete)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 52
	add.w	$a1, $a0, $s4
	addi.d	$a0, $sp, 64
	move	$a2, $s0
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 52
	add.d	$a0, $a0, $s4
	st.w	$a0, $s7, 4
	ld.h	$a0, $sp, 48
	st.h	$a0, $s7, 8
	b	.LBB0_8
	.p2align	4, , 16
.LBB0_11:                               # %for.cond14.loopexit
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_9 Depth 3
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 56
	addi.d	$a2, $sp, 52
	addi.d	$a3, $sp, 48
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56
	bnez	$a0, .LBB0_7
# %bb.12:                               # %for.inc45
                                        #   in Loop: Header=BB0_2 Depth=1
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	addi.d	$a3, $a3, 1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	bne	$a3, $a0, .LBB0_2
# %bb.13:
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
.LBB0_14:                               # %for.end47
	ret
.Lfunc_end0:
	.size	shortpath, .Lfunc_end0-shortpath
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
