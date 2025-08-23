	.file	"nullable.c"
	.text
	.globl	set_nullable                    # -- Begin function set_nullable
	.p2align	5
	.type	set_nullable,@function
set_nullable:                           # @set_nullable
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
	pcalau12i	$a0, %got_pc_hi20(nvars)
	ld.d	$s1, $a0, %got_pc_lo12(nvars)
	ld.w	$a0, $s1, 0
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(ntokens)
	ld.d	$s3, $a1, %got_pc_lo12(ntokens)
	ld.w	$a1, $s3, 0
	ld.w	$a2, $s1, 0
	sub.d	$a0, $a0, $a1
	pcalau12i	$s4, %pc_hi20(nullable)
	st.d	$a0, $s4, %pc_lo12(nullable)
	slli.w	$a0, $a2, 1
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(nrules)
	ld.d	$a1, $a1, %got_pc_lo12(nrules)
	ld.w	$a1, $a1, 0
	move	$fp, $a0
	ori	$a0, $zero, 2
	alsl.w	$a0, $a1, $a0, 1
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	move	$s0, $a0
	slli.w	$a0, $a1, 3
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(nitems)
	ld.d	$a1, $a1, %got_pc_lo12(nitems)
	ld.w	$a2, $s3, 0
	ld.w	$a1, $a1, 0
	ld.w	$a3, $s1, 0
	move	$s1, $a0
	slli.d	$a0, $a2, 3
	sub.d	$s5, $s1, $a0
	add.d	$a0, $a3, $a1
	ori	$a1, $zero, 16
	alsl.w	$a0, $a0, $a1, 4
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(ritem)
	ld.d	$a1, $a1, %got_pc_lo12(ritem)
	ld.d	$a6, $a1, 0
	ld.hu	$a5, $a6, 0
	move	$s2, $a0
	beqz	$a5, .LBB0_20
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(rlhs)
	ld.d	$a0, $a0, %got_pc_lo12(rlhs)
	addi.w	$a2, $zero, -1
	ori	$a3, $zero, 1
	move	$a1, $fp
	move	$a4, $s2
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_2:                                # %if.then
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a5, $a0, 0
	slli.d	$a7, $t0, 1
	sub.d	$a5, $a5, $a7
	ld.h	$a5, $a5, 0
	ld.d	$a7, $s4, %pc_lo12(nullable)
	ldx.bu	$t0, $a7, $a5
	addi.d	$a6, $a6, 2
	beqz	$t0, .LBB0_11
.LBB0_3:                                # %if.end67
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.hu	$a5, $a6, 0
	beqz	$a5, .LBB0_12
.LBB0_4:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
                                        #     Child Loop BB0_9 Depth 2
	ext.w.h	$t0, $a5
	bge	$a2, $t0, .LBB0_2
# %bb.5:                                # %for.body.lr.ph
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.w	$t1, $s3, 0
	addi.d	$a7, $a6, 2
	move	$t2, $zero
	move	$a6, $a7
	.p2align	4, , 16
.LBB0_6:                                # %for.body
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slt	$t3, $t0, $t1
	ld.h	$t0, $a6, 0
	masknez	$t2, $t2, $t3
	maskeqz	$t3, $a3, $t3
	or	$t2, $t3, $t2
	addi.d	$a6, $a6, 2
	bgtz	$t0, .LBB0_6
# %bb.7:                                # %for.end
                                        #   in Loop: Header=BB0_4 Depth=1
	andi	$t1, $t2, 255
	bnez	$t1, .LBB0_3
# %bb.8:                                # %for.body53.lr.ph
                                        #   in Loop: Header=BB0_4 Depth=1
	sub.d	$a6, $zero, $t0
	slli.d	$t0, $t0, 1
	sub.d	$t0, $s0, $t0
	.p2align	4, , 16
.LBB0_9:                                # %for.body53
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$t1, $t0, 0
	bstrpick.d	$a5, $a5, 15, 0
	addi.d	$t1, $t1, 1
	slli.d	$t2, $a5, 3
	ldx.d	$t3, $s5, $t2
	st.h	$t1, $t0, 0
	st.h	$a6, $a4, 8
	ld.h	$a5, $a7, 0
	st.d	$t3, $a4, 0
	stx.d	$a4, $s5, $t2
	addi.d	$a4, $a4, 16
	addi.d	$a7, $a7, 2
	bgtz	$a5, .LBB0_9
# %bb.10:                               #   in Loop: Header=BB0_4 Depth=1
	move	$a6, $a7
	b	.LBB0_3
.LBB0_11:                               # %if.then30
                                        #   in Loop: Header=BB0_4 Depth=1
	bstrpick.d	$t0, $a5, 15, 0
	stx.b	$a3, $a7, $a5
	addi.d	$a5, $a1, 2
	st.h	$t0, $a1, 0
	move	$a1, $a5
	b	.LBB0_3
.LBB0_12:                               # %while.cond68.preheader
	bgeu	$fp, $a1, .LBB0_20
# %bb.13:
	ori	$a2, $zero, 1
	move	$a3, $fp
	b	.LBB0_15
	.p2align	4, , 16
.LBB0_14:                               # %while.cond68.loopexit
                                        #   in Loop: Header=BB0_15 Depth=1
	addi.d	$a3, $a3, 2
	bgeu	$a3, $a1, .LBB0_20
.LBB0_15:                               # %while.body71
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_17 Depth 2
	ld.h	$a4, $a3, 0
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $s5, $a4
	bnez	$a4, .LBB0_17
	b	.LBB0_14
	.p2align	4, , 16
.LBB0_16:                               # %if.end99
                                        #   in Loop: Header=BB0_17 Depth=2
	beqz	$a4, .LBB0_14
.LBB0_17:                               # %while.body77
                                        #   Parent Loop BB0_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$a5, $a4, 8
	slli.d	$a5, $a5, 1
	ldx.h	$a6, $s0, $a5
	ld.d	$a4, $a4, 0
	addi.d	$a6, $a6, -1
	bstrpick.d	$a7, $a6, 15, 0
	stx.h	$a6, $s0, $a5
	bnez	$a7, .LBB0_16
# %bb.18:                               # %if.then86
                                        #   in Loop: Header=BB0_17 Depth=2
	ld.d	$a6, $a0, 0
	ldx.h	$a5, $a6, $a5
	ld.d	$a6, $s4, %pc_lo12(nullable)
	ldx.bu	$a7, $a6, $a5
	bnez	$a7, .LBB0_16
# %bb.19:                               # %if.then93
                                        #   in Loop: Header=BB0_17 Depth=2
	bstrpick.d	$a7, $a5, 15, 0
	stx.b	$a2, $a6, $a5
	addi.d	$a5, $a1, 2
	st.h	$a7, $a1, 0
	move	$a1, $a5
	b	.LBB0_16
.LBB0_20:                               # %while.end101
	beqz	$fp, .LBB0_22
# %bb.21:                               # %if.then103
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_22:                               # %if.end104
	beqz	$s0, .LBB0_24
# %bb.23:                               # %if.then106
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_24:                               # %if.end107
	beqz	$s1, .LBB0_26
# %bb.25:                               # %if.then111
	ld.w	$a0, $s3, 0
	alsl.d	$a0, $a0, $s5, 3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_26:                               # %if.end114
	beqz	$s2, .LBB0_28
# %bb.27:                               # %if.then116
	move	$a0, $s2
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB0_28:                               # %if.end117
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
	.size	set_nullable, .Lfunc_end0-set_nullable
                                        # -- End function
	.globl	free_nullable                   # -- Begin function free_nullable
	.p2align	5
	.type	free_nullable,@function
free_nullable:                          # @free_nullable
# %bb.0:                                # %entry
	pcalau12i	$a0, %pc_hi20(nullable)
	ld.d	$a0, $a0, %pc_lo12(nullable)
	beqz	$a0, .LBB1_2
# %bb.1:                                # %if.then
	pcalau12i	$a1, %got_pc_hi20(ntokens)
	ld.d	$a1, $a1, %got_pc_lo12(ntokens)
	ld.w	$a1, $a1, 0
	add.d	$a0, $a0, $a1
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB1_2:                                # %if.end
	ret
.Lfunc_end1:
	.size	free_nullable, .Lfunc_end1-free_nullable
                                        # -- End function
	.type	nullable,@object                # @nullable
	.bss
	.globl	nullable
	.p2align	3, 0x0
nullable:
	.dword	0
	.size	nullable, 8

	.section	".note.GNU-stack","",@progbits
	.addrsig
