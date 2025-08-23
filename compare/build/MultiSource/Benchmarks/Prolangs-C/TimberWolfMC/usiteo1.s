	.file	"usiteo1.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function usiteo1
.LCPI0_0:
	.dword	0x41dfffffffc00000              # double 2147483647
	.text
	.globl	usiteo1
	.p2align	5
	.type	usiteo1,@function
usiteo1:                                # @usiteo1
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a4, %got_pc_hi20(cellarray)
	ld.d	$a4, $a4, %got_pc_lo12(cellarray)
	ld.d	$a4, $a4, 0
	move	$s1, $a0
	slli.d	$a0, $a0, 3
	ldx.d	$fp, $a4, $a0
	move	$s4, $a3
	ld.w	$a6, $fp, 12
	alsl.d	$a0, $a3, $fp, 3
	ld.d	$a0, $a0, 152
	pcalau12i	$a3, %got_pc_hi20(penalty)
	ld.d	$a5, $a3, %got_pc_lo12(penalty)
	st.d	$a5, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a3, %got_pc_hi20(overlap)
	ld.d	$s5, $a3, %got_pc_lo12(overlap)
	ld.w	$a4, $fp, 16
	ld.d	$a0, $a0, 88
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.w	$s6, $a5, 0
	ld.d	$a7, $s5, 0
	ld.w	$a3, $fp, 56
	move	$s3, $a2
	move	$s2, $a1
	ori	$a5, $zero, 1
	move	$a0, $s1
	move	$a1, $a6
	move	$a2, $a4
	move	$a4, $zero
	move	$a6, $zero
	jirl	$ra, $a7, 0
	pcalau12i	$a1, %got_pc_hi20(binX)
	ld.d	$s7, $a1, %got_pc_lo12(binX)
	pcalau12i	$a1, %got_pc_hi20(blockarray)
	ld.d	$s8, $a1, %got_pc_lo12(blockarray)
	ld.w	$a1, $s7, 0
	pcalau12i	$a2, %got_pc_hi20(binY)
	ld.d	$s0, $a2, %got_pc_lo12(binY)
	ld.d	$a2, $s8, 0
	slli.d	$a1, $a1, 3
	ld.w	$a3, $s0, 0
	ldx.d	$a1, $a2, $a1
	slli.d	$a2, $a3, 3
	ldx.d	$a1, $a1, $a2
	pcalau12i	$a2, %got_pc_hi20(occa1ptr)
	ld.d	$a2, $a2, %got_pc_lo12(occa1ptr)
	ld.d	$a7, $s5, 0
	sub.d	$s5, $s6, $a0
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	st.d	$a1, $a2, 0
	ori	$a5, $zero, 1
	move	$a0, $s1
	move	$a1, $s2
	move	$a2, $s3
	move	$a3, $s4
	move	$a4, $zero
	move	$a6, $zero
	jirl	$ra, $a7, 0
	ld.w	$a1, $s7, 0
	ld.d	$a2, $s8, 0
	slli.d	$a1, $a1, 3
	ld.w	$a3, $s0, 0
	ldx.d	$a1, $a2, $a1
	slli.d	$a2, $a3, 3
	ldx.d	$a1, $a1, $a2
	pcalau12i	$a2, %got_pc_hi20(occa2ptr)
	ld.d	$s7, $a2, %got_pc_lo12(occa2ptr)
	add.d	$s5, $a0, $s5
	st.d	$a1, $s7, 0
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	move	$a0, $s0
	move	$a1, $zero
	move	$a2, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(ufixpin)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $zero
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	move	$a2, $s2
	move	$s2, $s0
	st.d	$s3, $sp, 24                    # 8-byte Folded Spill
	move	$a3, $s3
	st.d	$s4, $sp, 32                    # 8-byte Folded Spill
	move	$a4, $s4
	ld.d	$s4, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(usoftpin)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(funccost)
	ld.d	$s6, $a0, %got_pc_lo12(funccost)
	ld.w	$s0, $s6, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(ufixnet)
	jirl	$ra, $ra, 0
	add.d	$s0, $a0, $s0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(usoftnet)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, 0
	ld.w	$a2, $s4, 0
	add.d	$s8, $s0, $a0
	move	$s0, $s5
	add.w	$a0, $s8, $s5
	add.w	$a1, $a2, $a1
	bge	$a1, $a0, .LBB0_2
# %bb.1:                                # %lor.lhs.false
	pcalau12i	$a2, %got_pc_hi20(T)
	ld.d	$a2, $a2, %got_pc_lo12(T)
	fld.d	$fa0, $a2, 0
	sub.d	$a0, $a1, $a0
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa1, $fa0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(randVar)
	ld.d	$a0, $a0, %got_pc_lo12(randVar)
	ld.w	$a1, $a0, 0
	lu12i.w	$a2, 269412
	ori	$a2, $a2, 3693
	mul.d	$a1, $a1, $a2
	lu12i.w	$a2, 3
	ori	$a2, $a2, 57
	add.d	$a1, $a1, $a2
	pcalau12i	$a2, %pc_hi20(.LCPI0_0)
	fld.d	$fa1, $a2, %pc_lo12(.LCPI0_0)
	bstrpick.d	$a2, $a1, 30, 0
	movgr2fr.w	$fa2, $a2
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa1, $fa2, $fa1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	st.w	$a1, $a0, 0
	bcnez	$fcc0, .LBB0_7
.LBB0_2:                                # %if.then
	ori	$a1, $zero, 1
	ori	$s5, $zero, 1
	move	$a0, $s2
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(ufixpin)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$a0, $fp
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(usoftpin)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a0, $s7, 0
	beq	$a1, $a0, .LBB0_6
# %bb.3:                                # %for.cond.preheader
	addi.d	$a2, $a1, 4
	.p2align	4, , 16
.LBB0_4:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, 0
	addi.d	$a2, $a2, 4
	bne	$a3, $s1, .LBB0_4
# %bb.5:                                # %for.end
	ld.w	$a3, $a1, 0
	addi.d	$a4, $a3, -1
	st.w	$a4, $a1, 0
	slli.d	$a3, $a3, 2
	ldx.w	$a1, $a1, $a3
	st.w	$a1, $a2, -4
	ld.w	$a1, $a0, 0
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 0
	slli.d	$a1, $a1, 2
	stx.w	$s1, $a0, $a1
.LBB0_6:                                # %if.end
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.w	$a0, $fp, 12
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.w	$a0, $fp, 16
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.w	$a0, $fp, 56
	st.w	$s8, $s6, 0
	st.w	$s0, $s4, 0
	b	.LBB0_8
.LBB0_7:
	move	$s5, $zero
.LBB0_8:                                # %cleanup
	move	$a0, $s5
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end0:
	.size	usiteo1, .Lfunc_end0-usiteo1
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
