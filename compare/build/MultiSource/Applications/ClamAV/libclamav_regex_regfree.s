	.file	"libclamav_regex_regfree.c"
	.text
	.globl	cli_regfree                     # -- Begin function cli_regfree
	.p2align	5
	.type	cli_regfree,@function
cli_regfree:                            # @cli_regfree
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.w	$a1, $a0, 0
	lu12i.w	$a2, 15
	ori	$a2, $a2, 613
	bne	$a1, $a2, .LBB0_12
# %bb.1:                                # %if.end
	ld.d	$fp, $a0, 24
	beqz	$fp, .LBB0_12
# %bb.2:                                # %lor.lhs.false
	ld.w	$a1, $fp, 0
	lu12i.w	$a2, 13
	ori	$a2, $a2, 581
	bne	$a1, $a2, .LBB0_12
# %bb.3:                                # %if.end4
	ld.d	$a1, $fp, 8
	st.w	$zero, $a0, 0
	st.w	$zero, $fp, 0
	beqz	$a1, .LBB0_5
# %bb.4:                                # %if.then8
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_5:                                # %if.end10
	ld.d	$a0, $fp, 24
	beqz	$a0, .LBB0_7
# %bb.6:                                # %if.then12
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_7:                                # %if.end14
	ld.d	$a0, $fp, 32
	beqz	$a0, .LBB0_9
# %bb.8:                                # %if.then16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_9:                                # %if.end18
	ld.d	$a0, $fp, 96
	beqz	$a0, .LBB0_11
# %bb.10:                               # %if.then20
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_11:                               # %if.end22
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB0_12:                               # %cleanup
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	cli_regfree, .Lfunc_end0-cli_regfree
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
