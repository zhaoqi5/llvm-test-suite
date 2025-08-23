	.file	"findpatn.c"
	.text
	.globl	findpatn                        # -- Begin function findpatn
	.p2align	5
	.type	findpatn,@function
findpatn:                               # @findpatn
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
	pcalau12i	$a3, %got_pc_hi20(opn)
	ld.d	$s3, $a3, %got_pc_lo12(opn)
	ld.w	$a3, $s3, 16
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	beqz	$a3, .LBB0_5
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(findpatn.mtype)
	ld.w	$a3, $a0, %pc_lo12(findpatn.mtype)
	st.w	$zero, $s3, 16
	pcalau12i	$a0, %pc_hi20(findpatn.cnd)
	addi.d	$a2, $a0, %pc_lo12(findpatn.cnd)
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(opening)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_3
# %bb.2:                                # %if.then2
	ori	$a0, $zero, 1
	st.w	$a0, $s3, 16
.LBB0_3:                                # %if.end
	ld.w	$a0, $s1, 0
	pcalau12i	$a1, %got_pc_hi20(p)
	ld.d	$a1, $a1, %got_pc_lo12(p)
	ld.w	$a2, $s0, 0
	alsl.d	$a3, $a0, $a0, 3
	alsl.d	$a0, $a3, $a0, 1
	add.d	$a0, $a1, $a0
	ldx.bu	$a0, $a0, $a2
	beqz	$a0, .LBB0_22
# %bb.4:                                # %if.else
	st.w	$zero, $s3, 16
.LBB0_5:                                # %if.end8
	ld.w	$a0, $s3, 0
	beqz	$a0, .LBB0_8
# %bb.6:                                # %if.then10
	st.w	$zero, $s3, 0
	ori	$a2, $zero, 5
	ori	$a3, $zero, 5
	move	$a0, $zero
	move	$a1, $zero
	pcaddu18i	$ra, %call36(openregion)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_8
# %bb.7:                                # %if.then13
	pcalau12i	$a0, %pc_hi20(findpatn.cnd)
	addi.d	$s2, $a0, %pc_lo12(findpatn.cnd)
	st.w	$zero, $s2, 0
	pcalau12i	$s4, %pc_hi20(findpatn.mtype)
	st.w	$zero, $s4, %pc_lo12(findpatn.mtype)
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s2
	move	$a3, $zero
	b	.LBB0_20
.LBB0_8:                                # %if.end20
	ld.w	$a0, $s3, 4
	beqz	$a0, .LBB0_13
# %bb.9:                                # %if.then22
	st.w	$zero, $s3, 4
	ori	$a0, $zero, 13
	ori	$a2, $zero, 18
	ori	$a3, $zero, 5
	move	$a1, $zero
	pcaddu18i	$ra, %call36(openregion)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_13
# %bb.10:                               # %if.then25
	pcalau12i	$a0, %pc_hi20(findpatn.cnd)
	addi.d	$s2, $a0, %pc_lo12(findpatn.cnd)
	st.w	$zero, $s2, 0
	pcalau12i	$s4, %pc_hi20(findpatn.mtype)
	ori	$a0, $zero, 1
	st.w	$a0, $s4, %pc_lo12(findpatn.mtype)
	ori	$a3, $zero, 1
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(opening)
	jirl	$ra, $ra, 0
	ld.w	$a3, $s4, %pc_lo12(findpatn.mtype)
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(opening)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 1
	beqz	$a1, .LBB0_12
# %bb.11:                               # %if.then29
	st.w	$a0, $s3, 16
.LBB0_12:                               # %if.end30
	ori	$a1, $zero, 80
	st.w	$a1, $fp, 0
	b	.LBB0_23
.LBB0_13:                               # %if.end32
	ld.w	$a0, $s3, 8
	beqz	$a0, .LBB0_16
# %bb.14:                               # %if.then34
	st.w	$zero, $s3, 8
	ori	$a1, $zero, 13
	ori	$a2, $zero, 5
	ori	$a3, $zero, 18
	move	$a0, $zero
	pcaddu18i	$ra, %call36(openregion)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_16
# %bb.15:                               # %if.then37
	pcalau12i	$a0, %pc_hi20(findpatn.cnd)
	addi.d	$s2, $a0, %pc_lo12(findpatn.cnd)
	st.w	$zero, $s2, 0
	pcalau12i	$s4, %pc_hi20(findpatn.mtype)
	ori	$a0, $zero, 2
	st.w	$a0, $s4, %pc_lo12(findpatn.mtype)
	ori	$a3, $zero, 2
	b	.LBB0_19
.LBB0_16:                               # %if.end44
	ld.w	$a0, $s3, 12
	beqz	$a0, .LBB0_24
# %bb.17:                               # %if.then46
	st.w	$zero, $s3, 12
	ori	$a0, $zero, 13
	ori	$a1, $zero, 13
	ori	$a2, $zero, 18
	ori	$a3, $zero, 18
	pcaddu18i	$ra, %call36(openregion)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_24
# %bb.18:                               # %if.then49
	pcalau12i	$a0, %pc_hi20(findpatn.cnd)
	addi.d	$s2, $a0, %pc_lo12(findpatn.cnd)
	st.w	$zero, $s2, 0
	pcalau12i	$s4, %pc_hi20(findpatn.mtype)
	ori	$a0, $zero, 3
	st.w	$a0, $s4, %pc_lo12(findpatn.mtype)
	ori	$a3, $zero, 3
.LBB0_19:                               # %if.then37
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s2
.LBB0_20:                               # %if.then37
	pcaddu18i	$ra, %call36(opening)
	jirl	$ra, $ra, 0
	ld.w	$a3, $s4, %pc_lo12(findpatn.mtype)
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(opening)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_22
# %bb.21:                               # %if.then17
	ori	$a0, $zero, 1
	st.w	$a0, $s3, 16
.LBB0_22:                               # %if.then6
	ori	$a0, $zero, 80
	st.w	$a0, $fp, 0
	ori	$a0, $zero, 1
.LBB0_23:                               # %cleanup
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
.LBB0_24:                               # %if.end56
	ld.w	$a0, $s3, 20
	beqz	$a0, .LBB0_27
# %bb.25:                               # %if.then58
	st.w	$zero, $s3, 20
	ori	$a1, $zero, 6
	ori	$a2, $zero, 4
	ori	$a3, $zero, 11
	move	$a0, $zero
	pcaddu18i	$ra, %call36(openregion)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_27
# %bb.26:                               # %if.then61
	ori	$a0, $zero, 3
	b	.LBB0_30
.LBB0_27:                               # %if.end63
	ld.w	$a0, $s3, 24
	beqz	$a0, .LBB0_31
# %bb.28:                               # %if.then65
	st.w	$zero, $s3, 24
	ori	$a0, $zero, 18
	ori	$a1, $zero, 6
	ori	$a2, $zero, 14
	ori	$a3, $zero, 11
	pcaddu18i	$ra, %call36(openregion)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_31
# %bb.29:                               # %if.then68
	ori	$a0, $zero, 15
.LBB0_30:                               # %cleanup
	st.w	$a0, $s1, 0
	ori	$a0, $zero, 9
	st.w	$a0, $s0, 0
	b	.LBB0_22
.LBB0_31:                               # %if.end70
	ld.w	$a0, $s3, 28
	beqz	$a0, .LBB0_34
# %bb.32:                               # %if.then72
	st.w	$zero, $s3, 28
	ori	$a0, $zero, 6
	ori	$a2, $zero, 11
	ori	$a3, $zero, 4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(openregion)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_34
# %bb.33:                               # %if.then75
	ori	$a0, $zero, 9
	st.w	$a0, $s1, 0
	ori	$a0, $zero, 3
	st.w	$a0, $s0, 0
	b	.LBB0_22
.LBB0_34:                               # %if.end77
	ld.w	$a0, $s3, 32
	beqz	$a0, .LBB0_37
# %bb.35:                               # %if.then79
	st.w	$zero, $s3, 32
	ori	$a0, $zero, 6
	ori	$a1, $zero, 18
	ori	$a2, $zero, 11
	ori	$a3, $zero, 14
	pcaddu18i	$ra, %call36(openregion)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_37
# %bb.36:                               # %if.then82
	ori	$a0, $zero, 9
	st.w	$a0, $s1, 0
	ori	$a0, $zero, 15
	st.w	$a0, $s0, 0
	b	.LBB0_22
.LBB0_37:                               # %if.end84
	move	$s2, $zero
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.w	$a0, $s1, 0
	pcalau12i	$a1, %got_pc_hi20(p)
	ld.d	$s4, $a1, %got_pc_lo12(p)
	pcalau12i	$a1, %got_pc_hi20(mymove)
	ld.d	$s5, $a1, %got_pc_lo12(mymove)
	st.w	$a0, $s0, 0
	st.w	$a0, $fp, 0
	ori	$s6, $zero, 19
	b	.LBB0_39
	.p2align	4, , 16
.LBB0_38:                               # %for.inc105
                                        #   in Loop: Header=BB0_39 Depth=1
	addi.d	$s2, $s2, 1
	addi.d	$s4, $s4, 19
	beq	$s2, $s6, .LBB0_45
.LBB0_39:                               # %for.cond87.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_41 Depth 2
	move	$s3, $zero
	move	$s7, $zero
	b	.LBB0_41
	.p2align	4, , 16
.LBB0_40:                               # %for.inc
                                        #   in Loop: Header=BB0_41 Depth=2
	addi.d	$s7, $s7, 1
	addi.w	$s3, $s3, 1
	beq	$s7, $s6, .LBB0_38
.LBB0_41:                               # %for.body90
                                        #   Parent Loop BB0_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a0, $s4, $s7
	ld.w	$a1, $s5, 0
	bne	$a1, $a0, .LBB0_40
# %bb.42:                               # %land.lhs.true
                                        #   in Loop: Header=BB0_41 Depth=2
	addi.d	$a2, $sp, 28
	addi.d	$a3, $sp, 24
	addi.d	$a4, $sp, 20
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(matchpat)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_40
# %bb.43:                               # %land.lhs.true100
                                        #   in Loop: Header=BB0_41 Depth=2
	ld.w	$a0, $sp, 20
	ld.w	$a1, $fp, 0
	bge	$a1, $a0, .LBB0_40
# %bb.44:                               # %if.then103
                                        #   in Loop: Header=BB0_41 Depth=2
	ld.w	$a1, $sp, 28
	ld.w	$a2, $sp, 24
	st.w	$a0, $fp, 0
	st.w	$a1, $s1, 0
	st.w	$a2, $s0, 0
	b	.LBB0_40
.LBB0_45:                               # %for.end107
	ld.w	$a0, $fp, 0
	slt	$a0, $zero, $a0
	b	.LBB0_23
.Lfunc_end0:
	.size	findpatn, .Lfunc_end0-findpatn
                                        # -- End function
	.type	findpatn.cnd,@object            # @findpatn.cnd
	.local	findpatn.cnd
	.comm	findpatn.cnd,4,4
	.type	findpatn.mtype,@object          # @findpatn.mtype
	.local	findpatn.mtype
	.comm	findpatn.mtype,4,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym findpatn.cnd
