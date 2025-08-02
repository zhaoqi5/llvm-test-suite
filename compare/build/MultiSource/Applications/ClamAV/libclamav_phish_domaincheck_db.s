	.file	"libclamav_phish_domaincheck_db.c"
	.text
	.globl	domainlist_match                # -- Begin function domainlist_match
	.p2align	5
	.type	domainlist_match,@function
domainlist_match:                       # @domainlist_match
# %bb.0:                                # %entry
	ld.d	$a0, $a0, 64
	beqz	$a0, .LBB0_12
# %bb.1:                                # %cond.end5
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	move	$s0, $a5
	sltui	$a5, $a4, 1
	masknez	$a3, $a3, $a5
	addi.d	$a5, $sp, 16
	move	$a6, $zero
	pcaddu18i	$ra, %call36(regex_list_match)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_11
# %bb.2:                                # %cond.end5
	ld.d	$fp, $sp, 16
	beqz	$fp, .LBB0_11
# %bb.3:                                # %land.lhs.true9
	ld.bu	$s2, $fp, 0
	beqz	$s2, .LBB0_11
# %bb.4:                                # %land.lhs.true9
	ori	$a1, $zero, 58
	beq	$s2, $a1, .LBB0_11
# %bb.5:                                # %if.then
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB0_9
# %bb.6:                                # %land.lhs.true18
	ext.w.b	$s2, $s2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s2, 1
	ldx.hu	$a2, $a0, $a1
	lu12i.w	$a1, 1
	and	$a2, $a2, $a1
	beqz	$a2, .LBB0_9
# %bb.7:                                # %land.lhs.true25
	ld.b	$a2, $fp, 1
	slli.d	$a2, $a2, 1
	ldx.hu	$a2, $a0, $a2
	and	$a2, $a2, $a1
	beqz	$a2, .LBB0_9
# %bb.8:                                # %land.lhs.true34
	ld.b	$a2, $fp, 2
	slli.d	$a2, $a2, 1
	ldx.hu	$a0, $a0, $a2
	and	$a0, $a0, $a1
	bnez	$a0, .LBB0_13
.LBB0_9:                                # %if.else
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
.LBB0_10:
	move	$a0, $s1
.LBB0_11:
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB0_12:
	move	$a0, $zero
	ret
.LBB0_13:                               # %if.then43
	st.h	$zero, $sp, 14
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 14
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ld.h	$a0, $sp, 14
	ld.h	$a1, $s0, 0
	andn	$a0, $a1, $a0
	st.h	$a0, $s0, 0
	b	.LBB0_10
.Lfunc_end0:
	.size	domainlist_match, .Lfunc_end0-domainlist_match
                                        # -- End function
	.globl	init_domainlist                 # -- Begin function init_domainlist
	.p2align	5
	.type	init_domainlist,@function
init_domainlist:                        # @init_domainlist
# %bb.0:                                # %entry
	beqz	$a0, .LBB1_3
# %bb.1:                                # %if.then
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 96
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 64
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	beqz	$a0, .LBB1_4
# %bb.2:                                # %if.end
	pcaddu18i	$t8, %call36(init_regex_list)
	jr	$t8
.LBB1_3:
	addi.w	$a0, $zero, -111
	ret
.LBB1_4:
	addi.w	$a0, $zero, -114
	ret
.Lfunc_end1:
	.size	init_domainlist, .Lfunc_end1-init_domainlist
                                        # -- End function
	.globl	is_domainlist_ok                # -- Begin function is_domainlist_ok
	.p2align	5
	.type	is_domainlist_ok,@function
is_domainlist_ok:                       # @is_domainlist_ok
# %bb.0:                                # %entry
	beqz	$a0, .LBB2_3
# %bb.1:                                # %land.lhs.true
	ld.d	$a0, $a0, 64
	beqz	$a0, .LBB2_3
# %bb.2:                                # %cond.true
	pcaddu18i	$t8, %call36(is_regex_ok)
	jr	$t8
.LBB2_3:                                # %cond.end
	ori	$a0, $zero, 1
	ret
.Lfunc_end2:
	.size	is_domainlist_ok, .Lfunc_end2-is_domainlist_ok
                                        # -- End function
	.globl	domainlist_cleanup              # -- Begin function domainlist_cleanup
	.p2align	5
	.type	domainlist_cleanup,@function
domainlist_cleanup:                     # @domainlist_cleanup
# %bb.0:                                # %entry
	beqz	$a0, .LBB3_3
# %bb.1:                                # %land.lhs.true
	ld.d	$a0, $a0, 64
	beqz	$a0, .LBB3_3
# %bb.2:                                # %if.then
	pcaddu18i	$t8, %call36(regex_list_cleanup)
	jr	$t8
.LBB3_3:                                # %if.end
	ret
.Lfunc_end3:
	.size	domainlist_cleanup, .Lfunc_end3-domainlist_cleanup
                                        # -- End function
	.globl	domainlist_done                 # -- Begin function domainlist_done
	.p2align	5
	.type	domainlist_done,@function
domainlist_done:                        # @domainlist_done
# %bb.0:                                # %entry
	beqz	$a0, .LBB4_4
# %bb.1:                                # %land.lhs.true
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 64
	beqz	$a0, .LBB4_3
# %bb.2:                                # %if.then
	pcaddu18i	$ra, %call36(regex_list_done)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 64
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 64
.LBB4_3:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB4_4:                                # %if.end
	ret
.Lfunc_end4:
	.size	domainlist_done, .Lfunc_end4-domainlist_done
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%hx"
	.size	.L.str, 4

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Phishcheck:Unknown flag format in domain-list, 3 hex digits expected"
	.size	.L.str.1, 69

	.section	".note.GNU-stack","",@progbits
	.addrsig
