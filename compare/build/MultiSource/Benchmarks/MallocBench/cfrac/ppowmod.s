	.file	"ppowmod.c"
	.text
	.globl	ppowmod                         # -- Begin function ppowmod
	.p2align	5
	.type	ppowmod,@function
ppowmod:                                # @ppowmod
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	st.d	$zero, $sp, 32
	st.d	$zero, $sp, 24
	st.d	$zero, $sp, 16
	beqz	$a2, .LBB0_2
# %bb.1:                                # %land.rhs
	ld.h	$a0, $fp, 0
	addi.d	$a0, $a0, 1
	st.h	$a0, $fp, 0
.LBB0_2:                                # %land.end
	beqz	$s1, .LBB0_4
# %bb.3:                                # %land.rhs3
	ld.h	$a0, $s1, 0
	addi.d	$a0, $a0, 1
	st.h	$a0, $s1, 0
.LBB0_4:                                # %land.end7
	addi.d	$a0, $sp, 24
	move	$a1, $s1
	pcaddu18i	$ra, %call36(psetq)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB0_6
# %bb.5:                                # %land.rhs11
	ld.h	$a0, $s0, 0
	addi.d	$a0, $a0, 1
	st.h	$a0, $s0, 0
.LBB0_6:                                # %land.end15
	addi.d	$a0, $sp, 16
	move	$a1, $s0
	pcaddu18i	$ra, %call36(psetq)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(pone)
	ld.d	$a0, $a0, %got_pc_lo12(pone)
	ld.d	$a1, $a0, 0
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(psetq)
	jirl	$ra, $ra, 0
	addi.w	$s2, $zero, -1
	ld.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(podd)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_8
	.p2align	4, , 16
.LBB0_7:                                # %if.then
	ld.d	$a0, $sp, 24
	ld.d	$a1, $sp, 32
	pcaddu18i	$ra, %call36(pmul)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	move	$a2, $zero
	move	$a3, $s2
	pcaddu18i	$ra, %call36(pdivmod)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(psetq)
	jirl	$ra, $ra, 0
.LBB0_8:                                # %if.end
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(phalf)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(psetq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(pcmpz)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 24
	beqz	$a0, .LBB0_10
# %bb.9:                                # %if.end30
                                        #   in Loop: Header=BB0_8 Depth=1
	move	$a0, $a1
	pcaddu18i	$ra, %call36(pmul)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	move	$a2, $zero
	move	$a3, $s2
	pcaddu18i	$ra, %call36(pdivmod)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(psetq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(podd)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_7
	b	.LBB0_8
.LBB0_10:                               # %do.end
	beqz	$a1, .LBB0_13
# %bb.11:                               # %land.lhs.true
	ld.h	$a0, $a1, 0
	addi.d	$a0, $a0, -1
	slli.d	$a2, $a0, 48
	st.h	$a0, $a1, 0
	bnez	$a2, .LBB0_13
# %bb.12:                               # %land.rhs39
	move	$a0, $a1
	pcaddu18i	$ra, %call36(pfree)
	jirl	$ra, $ra, 0
.LBB0_13:                               # %land.end42
	ld.d	$a0, $sp, 16
	beqz	$a0, .LBB0_16
# %bb.14:                               # %land.lhs.true46
	ld.h	$a1, $a0, 0
	addi.d	$a1, $a1, -1
	slli.d	$a2, $a1, 48
	st.h	$a1, $a0, 0
	bnez	$a2, .LBB0_16
# %bb.15:                               # %land.rhs51
	pcaddu18i	$ra, %call36(pfree)
	jirl	$ra, $ra, 0
.LBB0_16:                               # %land.end54
	beqz	$s1, .LBB0_19
# %bb.17:                               # %land.lhs.true58
	ld.h	$a0, $s1, 0
	addi.d	$a0, $a0, -1
	slli.d	$a1, $a0, 48
	st.h	$a0, $s1, 0
	bnez	$a1, .LBB0_19
# %bb.18:                               # %land.rhs63
	move	$a0, $s1
	pcaddu18i	$ra, %call36(pfree)
	jirl	$ra, $ra, 0
.LBB0_19:                               # %land.end66
	beqz	$s0, .LBB0_22
# %bb.20:                               # %land.lhs.true70
	ld.h	$a0, $s0, 0
	addi.d	$a0, $a0, -1
	slli.d	$a1, $a0, 48
	st.h	$a0, $s0, 0
	bnez	$a1, .LBB0_22
# %bb.21:                               # %land.rhs75
	move	$a0, $s0
	pcaddu18i	$ra, %call36(pfree)
	jirl	$ra, $ra, 0
.LBB0_22:                               # %land.end78
	beqz	$fp, .LBB0_25
# %bb.23:                               # %land.lhs.true82
	ld.h	$a0, $fp, 0
	addi.d	$a0, $a0, -1
	slli.d	$a1, $a0, 48
	st.h	$a0, $fp, 0
	bnez	$a1, .LBB0_25
# %bb.24:                               # %land.rhs87
	move	$a0, $fp
	pcaddu18i	$ra, %call36(pfree)
	jirl	$ra, $ra, 0
.LBB0_25:                               # %land.end90
	ld.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(presult)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end0:
	.size	ppowmod, .Lfunc_end0-ppowmod
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
