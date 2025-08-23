	.file	"pidiv.c"
	.text
	.globl	pidiv                           # -- Begin function pidiv
	.p2align	5
	.type	pidiv,@function
pidiv:                                  # @pidiv
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	beqz	$a0, .LBB0_2
# %bb.1:                                # %land.rhs
	ld.h	$a0, $fp, 0
	addi.d	$a0, $a0, 1
	st.h	$a0, $fp, 0
.LBB0_2:                                # %land.end
	srai.d	$a0, $s0, 31
	xor	$a1, $s0, $a0
	sub.d	$a0, $a1, $a0
	bstrpick.d	$s2, $a0, 15, 0
	beqz	$s2, .LBB0_12
# %bb.3:                                # %if.end17
	ld.hu	$s1, $fp, 4
	move	$a0, $s1
	pcaddu18i	$ra, %call36(palloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_13
# %bb.4:                                # %if.end23
	move	$a4, $zero
	addi.d	$a1, $a0, 8
	slli.d	$a2, $s1, 1
	addi.d	$a3, $a2, 6
	ori	$a2, $zero, 10
	.p2align	4, , 16
.LBB0_5:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	ldx.hu	$a5, $fp, $a3
	slli.w	$a4, $a4, 16
	or	$a4, $a4, $a5
	div.wu	$a5, $a4, $s2
	stx.h	$a5, $a0, $a3
	mul.d	$a5, $a5, $s2
	addi.d	$a6, $a3, 2
	addi.d	$a3, $a3, -2
	sub.d	$a4, $a4, $a5
	bltu	$a2, $a6, .LBB0_5
# %bb.6:                                # %do.end
	ori	$a2, $zero, 2
	bltu	$s1, $a2, .LBB0_9
# %bb.7:                                # %land.lhs.true
	alsl.d	$a2, $s1, $a1, 1
	ld.hu	$a2, $a2, -2
	bnez	$a2, .LBB0_9
# %bb.8:                                # %if.then50
	ld.h	$a2, $a0, 4
	addi.d	$a2, $a2, -1
	st.h	$a2, $a0, 4
.LBB0_9:                                # %if.end52
	ld.bu	$a2, $fp, 6
	bstrpick.d	$a3, $s0, 31, 31
	ld.hu	$a4, $a0, 4
	xor	$a2, $a3, $a2
	sltu	$a2, $zero, $a2
	ori	$a3, $zero, 1
	st.b	$a2, $a0, 6
	bne	$a4, $a3, .LBB0_14
# %bb.10:                               # %land.lhs.true64
	ld.hu	$a1, $a1, 0
	bnez	$a1, .LBB0_14
# %bb.11:                               # %if.then70
	st.b	$zero, $a0, 6
	b	.LBB0_14
.LBB0_12:                               # %done
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a2, $a0, %pc_lo12(.L.str.2)
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(errorp)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(pnew)
	jirl	$ra, $ra, 0
	bnez	$fp, .LBB0_14
	b	.LBB0_16
.LBB0_13:
	move	$a0, $zero
.LBB0_14:                               # %land.lhs.true75
	ld.h	$a1, $fp, 0
	addi.d	$a1, $a1, -1
	bstrpick.d	$a2, $a1, 15, 0
	st.h	$a1, $fp, 0
	bnez	$a2, .LBB0_16
# %bb.15:                               # %land.rhs80
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(pfree)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB0_16:                               # %land.end83
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(presult)
	jr	$t8
.Lfunc_end0:
	.size	pidiv, .Lfunc_end0-pidiv
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"pidiv"
	.size	.L.str, 6

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"divide by zero"
	.size	.L.str.2, 15

	.section	".note.GNU-stack","",@progbits
	.addrsig
