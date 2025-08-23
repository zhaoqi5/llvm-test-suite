	.file	"usite1.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function usite1
.LCPI0_0:
	.dword	0x41dfffffffc00000              # double 2147483647
	.text
	.globl	usite1
	.p2align	5
	.type	usite1,@function
usite1:                                 # @usite1
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a3, %got_pc_hi20(cellarray)
	ld.d	$a3, $a3, %got_pc_lo12(cellarray)
	ld.d	$a3, $a3, 0
	move	$s0, $a0
	slli.d	$a0, $a0, 3
	ldx.d	$fp, $a3, $a0
	ld.w	$a3, $fp, 56
	ld.w	$a4, $fp, 12
	alsl.d	$a0, $a3, $fp, 3
	ld.d	$a0, $a0, 152
	pcalau12i	$a5, %got_pc_hi20(penalty)
	ld.d	$a7, $a5, %got_pc_lo12(penalty)
	pcalau12i	$a5, %got_pc_hi20(overlap)
	ld.d	$s4, $a5, %got_pc_lo12(overlap)
	ld.w	$a6, $fp, 16
	ld.d	$s3, $a0, 88
	st.d	$a7, $sp, 32                    # 8-byte Folded Spill
	ld.w	$s5, $a7, 0
	ld.d	$a7, $s4, 0
	move	$s1, $a2
	move	$s2, $a1
	ori	$a5, $zero, 1
	move	$a0, $s0
	move	$a1, $a4
	move	$a2, $a6
	move	$a4, $zero
	move	$a6, $zero
	jirl	$ra, $a7, 0
	pcalau12i	$a1, %got_pc_hi20(binX)
	ld.d	$s6, $a1, %got_pc_lo12(binX)
	pcalau12i	$a1, %got_pc_hi20(blockarray)
	ld.d	$s7, $a1, %got_pc_lo12(blockarray)
	ld.w	$a1, $s6, 0
	pcalau12i	$a2, %got_pc_hi20(binY)
	ld.d	$s8, $a2, %got_pc_lo12(binY)
	ld.d	$a2, $s7, 0
	slli.d	$a1, $a1, 3
	ld.w	$a3, $s8, 0
	ldx.d	$a1, $a2, $a1
	slli.d	$a2, $a3, 3
	ldx.d	$a1, $a1, $a2
	pcalau12i	$a2, %got_pc_hi20(occa1ptr)
	ld.d	$a2, $a2, %got_pc_lo12(occa1ptr)
	ld.d	$a7, $s4, 0
	ld.w	$a3, $fp, 56
	sub.d	$s5, $s5, $a0
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	st.d	$a1, $a2, 0
	ori	$a5, $zero, 1
	move	$a0, $s0
	move	$a1, $s2
	move	$a2, $s1
	move	$a4, $zero
	move	$a6, $zero
	jirl	$ra, $a7, 0
	ld.w	$a1, $s6, 0
	ld.d	$a2, $s7, 0
	slli.d	$a1, $a1, 3
	ld.w	$a3, $s8, 0
	ldx.d	$a1, $a2, $a1
	slli.d	$a2, $a3, 3
	ldx.d	$a1, $a1, $a2
	pcalau12i	$a2, %got_pc_hi20(occa2ptr)
	ld.d	$s4, $a2, %got_pc_lo12(occa2ptr)
	add.d	$s6, $a0, $s5
	st.d	$a1, $s4, 0
	move	$a0, $s3
	move	$a1, $zero
	move	$a2, $s2
	move	$a3, $s1
	pcaddu18i	$ra, %call36(ufixpin)
	jirl	$ra, $ra, 0
	ld.w	$a4, $fp, 56
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $s2
	move	$a3, $s1
	pcaddu18i	$ra, %call36(usoftpin)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(funccost)
	ld.d	$s8, $a0, %got_pc_lo12(funccost)
	ld.w	$s5, $s8, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(ufixnet)
	jirl	$ra, $ra, 0
	add.d	$s5, $a0, $s5
	move	$a0, $fp
	pcaddu18i	$ra, %call36(usoftnet)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(finalShot)
	ld.d	$s7, $a1, %got_pc_lo12(finalShot)
	ld.w	$a1, $s7, 0
	add.d	$s5, $s5, $a0
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB0_2
# %bb.1:                                # %if.then
	move	$a0, $s0
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(deltaBB)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	add.d	$s6, $a0, $s6
	b	.LBB0_3
.LBB0_2:
                                        # implicit-def: $r4
                                        # kill: killed $r4
.LBB0_3:                                # %if.end
	ld.w	$a1, $s8, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a2, $a0, 0
	add.w	$a0, $s6, $s5
	add.w	$a1, $a2, $a1
	bge	$a1, $a0, .LBB0_5
# %bb.4:                                # %lor.lhs.false
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
	bcnez	$fcc0, .LBB0_12
.LBB0_5:                                # %if.then33
	ori	$a1, $zero, 1
	move	$a0, $s3
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
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a0, $s4, 0
	ld.d	$a6, $sp, 16                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB0_9
# %bb.6:                                # %for.cond.preheader
	addi.d	$a2, $a1, 4
	.p2align	4, , 16
.LBB0_7:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, 0
	addi.d	$a2, $a2, 4
	bne	$a3, $s0, .LBB0_7
# %bb.8:                                # %for.end
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
	stx.w	$s0, $a0, $a1
.LBB0_9:                                # %if.end50
	ld.w	$a0, $s7, 0
	st.w	$s2, $fp, 12
	st.w	$s1, $fp, 16
	st.w	$s5, $s8, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_11
# %bb.10:                               # %if.then55
	pcalau12i	$a0, %got_pc_hi20(bbbl)
	ld.d	$a0, $a0, %got_pc_lo12(bbbl)
	ld.w	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(bbleft)
	ld.d	$a1, $a1, %got_pc_lo12(bbleft)
	pcalau12i	$a2, %got_pc_hi20(bbbr)
	ld.d	$a2, $a2, %got_pc_lo12(bbbr)
	st.w	$a0, $a1, 0
	ld.w	$a0, $a2, 0
	pcalau12i	$a1, %got_pc_hi20(bbright)
	pcalau12i	$a2, %got_pc_hi20(bbbb)
	ld.d	$a2, $a2, %got_pc_lo12(bbbb)
	ld.d	$a1, $a1, %got_pc_lo12(bbright)
	pcalau12i	$a3, %got_pc_hi20(bbbt)
	ld.d	$a3, $a3, %got_pc_lo12(bbbt)
	ld.w	$a2, $a2, 0
	pcalau12i	$a4, %got_pc_hi20(bbbottom)
	ld.d	$a4, $a4, %got_pc_lo12(bbbottom)
	ld.w	$a3, $a3, 0
	pcalau12i	$a5, %got_pc_hi20(bbtop)
	ld.d	$a5, $a5, %got_pc_lo12(bbtop)
	st.w	$a0, $a1, 0
	st.w	$a2, $a4, 0
	sub.d	$s6, $s6, $a6
	st.w	$a3, $a5, 0
.LBB0_11:                               # %if.end57
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.w	$s6, $a0, 0
	ori	$a0, $zero, 1
	b	.LBB0_13
.LBB0_12:
	move	$a0, $zero
.LBB0_13:                               # %cleanup
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end0:
	.size	usite1, .Lfunc_end0-usite1
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
