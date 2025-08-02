	.file	"initAtoms.c"
	.text
	.globl	initAtoms                       # -- Begin function initAtoms
	.p2align	5
	.type	initAtoms,@function
initAtoms:                              # @initAtoms
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 56
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$s7, $fp, 20
	move	$fp, $a0
	slli.w	$s6, $s7, 6
	slli.d	$s0, $s6, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	st.d	$a0, $fp, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.d	$a0, $fp, 16
	alsl.d	$a0, $s6, $s6, 1
	slli.d	$s2, $a0, 3
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $fp, 24
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$a0, $fp, 32
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$a0, $fp, 40
	slli.d	$a0, $s6, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	st.d	$a0, $fp, 48
	ori	$a0, $zero, 1
	st.d	$zero, $fp, 0
	blt	$s7, $a0, .LBB0_2
# %bb.1:                                # %for.body.preheader
	slt	$a1, $a0, $s6
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s6, $a1
	or	$s7, $a1, $a0
	slli.d	$s6, $s7, 2
	move	$a0, $s3
	move	$a1, $zero
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	move	$a1, $zero
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	slli.d	$a2, $s7, 3
	move	$a0, $s5
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s7, 4
	alsl.d	$s3, $s7, $a0, 3
	move	$a0, $s0
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB0_2:                                # %for.cond.cleanup
	move	$a0, $fp
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end0:
	.size	initAtoms, .Lfunc_end0-initAtoms
                                        # -- End function
	.globl	destroyAtoms                    # -- Begin function destroyAtoms
	.p2align	5
	.type	destroyAtoms,@function
destroyAtoms:                           # @destroyAtoms
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	beqz	$a0, .LBB1_2
# %bb.1:                                # %if.then
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_2:                                # %if.end
	ld.d	$a0, $fp, 16
	st.d	$zero, $fp, 8
	beqz	$a0, .LBB1_4
# %bb.3:                                # %if.then4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_4:                                # %if.end6
	ld.d	$a0, $fp, 24
	st.d	$zero, $fp, 16
	beqz	$a0, .LBB1_6
# %bb.5:                                # %if.then9
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_6:                                # %if.end11
	ld.d	$a0, $fp, 32
	st.d	$zero, $fp, 24
	beqz	$a0, .LBB1_8
# %bb.7:                                # %if.then14
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_8:                                # %if.end16
	ld.d	$a0, $fp, 40
	st.d	$zero, $fp, 32
	beqz	$a0, .LBB1_10
# %bb.9:                                # %if.then19
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_10:                               # %if.end21
	ld.d	$a0, $fp, 48
	st.d	$zero, $fp, 40
	beqz	$a0, .LBB1_12
# %bb.11:                               # %if.then24
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_12:                               # %if.end26
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end1:
	.size	destroyAtoms, .Lfunc_end1-destroyAtoms
                                        # -- End function
	.globl	createFccLattice                # -- Begin function createFccLattice
	.p2align	5
	.type	createFccLattice,@function
createFccLattice:                       # @createFccLattice
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 56                   # 8-byte Folded Spill
	move	$fp, $a3
	ld.d	$s1, $a3, 16
	fld.d	$fa1, $s1, 96
	fmov.d	$fs0, $fa0
	fdiv.d	$fa0, $fa1, $fa0
	vreplvei.d	$vr0, $vr0, 0
	fld.d	$fa1, $s1, 120
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	fdiv.d	$fa0, $fa1, $fs0
	vreplvei.d	$vr0, $vr0, 0
	vfrintrp.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a3, $fa0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	bge	$a0, $a3, .LBB2_37
# %bb.1:                                # %for.body19.lr.ph
	fld.d	$fa0, $s1, 104
	fdiv.d	$fa0, $fa0, $fs0
	vreplvei.d	$vr0, $vr0, 0
	fld.d	$fa1, $s1, 128
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	fdiv.d	$fa0, $fa1, $fs0
	vreplvei.d	$vr0, $vr0, 0
	vfrintrp.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$s5, $fa0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	bge	$a0, $s5, .LBB2_37
# %bb.2:                                # %for.body19.us.preheader
	fld.d	$fa0, $s1, 112
	fdiv.d	$fa0, $fa0, $fs0
	vreplvei.d	$vr0, $vr0, 0
	fld.d	$fa1, $s1, 136
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$s2, $fa0
	fdiv.d	$fa0, $fa1, $fs0
	vreplvei.d	$vr0, $vr0, 0
	vfrintrp.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$s7, $fa0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	add.d	$a0, $a3, $a0
	mul.d	$a0, $a2, $a0
	add.d	$a0, $s2, $a0
	slli.d	$a0, $a0, 2
	addi.w	$a0, $a0, 3
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	mul.d	$a0, $a2, $a1
	slli.d	$a0, $a0, 2
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	slli.d	$s4, $a2, 2
	vldi	$vr2, -944
	vldi	$vr3, -920
	movgr2fr.d	$fs1, $zero
	b	.LBB2_4
	.p2align	4, , 16
.LBB2_3:                                # %for.cond21.for.cond.cleanup25_crit_edge.us
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	add.w	$a1, $a1, $a2
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB2_37
.LBB2_4:                                # %for.body19.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_7 Depth 2
                                        #       Child Loop BB2_9 Depth 3
	bge	$s2, $s7, .LBB2_3
# %bb.5:                                # %for.body26.us.us.preheader
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fadd.d	$fa1, $fa0, $fa2
	fmul.d	$fs2, $fs0, $fa1
	fadd.d	$fa0, $fa0, $fa3
	fmul.d	$fs3, $fs0, $fa0
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	b	.LBB2_7
	.p2align	4, , 16
.LBB2_6:                                # %for.cond28.for.cond.cleanup32_crit_edge.us.us
                                        #   in Loop: Header=BB2_7 Depth=2
	addi.w	$s3, $s3, 1
	add.w	$s8, $s8, $s4
	beq	$s3, $s5, .LBB2_3
.LBB2_7:                                # %for.body26.us.us
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_9 Depth 3
	movgr2fr.w	$fa0, $s3
	ffint.d.w	$fa0, $fa0
	fadd.d	$fa1, $fa0, $fa2
	fmul.d	$fs4, $fs0, $fa1
	fadd.d	$fa0, $fa0, $fa3
	fmul.d	$fs5, $fs0, $fa0
	move	$s0, $s8
	move	$s6, $s2
	b	.LBB2_9
	.p2align	4, , 16
.LBB2_8:                                # %cleanup.us.us.3
                                        #   in Loop: Header=BB2_9 Depth=3
	addi.w	$s6, $s6, 1
	addi.w	$s0, $s0, 4
	beq	$s7, $s6, .LBB2_6
.LBB2_9:                                # %for.cond34.preheader.us.us
                                        #   Parent Loop BB2_4 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $s1, 96
	movgr2fr.w	$fa1, $s6
	ffint.d.w	$fs7, $fa1
	fadd.d	$fa1, $fs7, $fa2
	fcmp.clt.d	$fcc0, $fs2, $fa0
	fmul.d	$fs6, $fs0, $fa1
	bcnez	$fcc0, .LBB2_16
# %bb.10:                               # %lor.lhs.false.us.us
                                        #   in Loop: Header=BB2_9 Depth=3
	fld.d	$fa1, $s1, 120
	fcmp.cle.d	$fcc0, $fa1, $fs2
	bcnez	$fcc0, .LBB2_16
# %bb.11:                               # %if.end.us.us
                                        #   in Loop: Header=BB2_9 Depth=3
	fld.d	$fa1, $s1, 104
	fcmp.clt.d	$fcc0, $fs4, $fa1
	bcnez	$fcc0, .LBB2_16
# %bb.12:                               # %lor.lhs.false64.us.us
                                        #   in Loop: Header=BB2_9 Depth=3
	fld.d	$fa1, $s1, 128
	fcmp.cle.d	$fcc0, $fa1, $fs4
	bcnez	$fcc0, .LBB2_16
# %bb.13:                               # %if.end69.us.us
                                        #   in Loop: Header=BB2_9 Depth=3
	fld.d	$fa1, $s1, 112
	fcmp.clt.d	$fcc0, $fs6, $fa1
	bcnez	$fcc0, .LBB2_16
# %bb.14:                               # %lor.lhs.false73.us.us
                                        #   in Loop: Header=BB2_9 Depth=3
	fld.d	$fa1, $s1, 136
	fcmp.cle.d	$fcc0, $fa1, $fs6
	bcnez	$fcc0, .LBB2_16
# %bb.15:                               # %if.end78.us.us
                                        #   in Loop: Header=BB2_9 Depth=3
	ld.d	$a0, $fp, 24
	ld.d	$a1, $fp, 32
	addi.w	$a2, $s0, -3
	move	$a3, $zero
	fmov.d	$fa0, $fs2
	fmov.d	$fa1, $fs4
	fmov.d	$fa2, $fs6
	fmov.d	$fa3, $fs1
	fmov.d	$fa4, $fs1
	fmov.d	$fa5, $fs1
	pcaddu18i	$ra, %call36(putAtomInBox)
	jirl	$ra, $ra, 0
	vldi	$vr3, -920
	vldi	$vr2, -944
	fld.d	$fa0, $s1, 96
	.p2align	4, , 16
.LBB2_16:                               # %cleanup.us.us
                                        #   in Loop: Header=BB2_9 Depth=3
	fadd.d	$fa1, $fs7, $fa3
	fcmp.clt.d	$fcc0, $fs2, $fa0
	fmul.d	$fs7, $fs0, $fa1
	bcnez	$fcc0, .LBB2_23
# %bb.17:                               # %lor.lhs.false.us.us.1
                                        #   in Loop: Header=BB2_9 Depth=3
	fld.d	$fa1, $s1, 120
	fcmp.cle.d	$fcc0, $fa1, $fs2
	bcnez	$fcc0, .LBB2_23
# %bb.18:                               # %if.end.us.us.1
                                        #   in Loop: Header=BB2_9 Depth=3
	fld.d	$fa1, $s1, 104
	fcmp.clt.d	$fcc0, $fs5, $fa1
	bcnez	$fcc0, .LBB2_23
# %bb.19:                               # %lor.lhs.false64.us.us.1
                                        #   in Loop: Header=BB2_9 Depth=3
	fld.d	$fa1, $s1, 128
	fcmp.cle.d	$fcc0, $fa1, $fs5
	bcnez	$fcc0, .LBB2_23
# %bb.20:                               # %if.end69.us.us.1
                                        #   in Loop: Header=BB2_9 Depth=3
	fld.d	$fa1, $s1, 112
	fcmp.clt.d	$fcc0, $fs7, $fa1
	bcnez	$fcc0, .LBB2_23
# %bb.21:                               # %lor.lhs.false73.us.us.1
                                        #   in Loop: Header=BB2_9 Depth=3
	fld.d	$fa1, $s1, 136
	fcmp.cle.d	$fcc0, $fa1, $fs7
	bcnez	$fcc0, .LBB2_23
# %bb.22:                               # %if.end78.us.us.1
                                        #   in Loop: Header=BB2_9 Depth=3
	ld.d	$a0, $fp, 24
	ld.d	$a1, $fp, 32
	addi.w	$a2, $s0, -2
	move	$a3, $zero
	fmov.d	$fa0, $fs2
	fmov.d	$fa1, $fs5
	fmov.d	$fa2, $fs7
	fmov.d	$fa3, $fs1
	fmov.d	$fa4, $fs1
	fmov.d	$fa5, $fs1
	pcaddu18i	$ra, %call36(putAtomInBox)
	jirl	$ra, $ra, 0
	vldi	$vr3, -920
	vldi	$vr2, -944
	fld.d	$fa0, $s1, 96
	.p2align	4, , 16
.LBB2_23:                               # %cleanup.us.us.1
                                        #   in Loop: Header=BB2_9 Depth=3
	fcmp.clt.d	$fcc0, $fs3, $fa0
	bcnez	$fcc0, .LBB2_30
# %bb.24:                               # %lor.lhs.false.us.us.2
                                        #   in Loop: Header=BB2_9 Depth=3
	fld.d	$fa1, $s1, 120
	fcmp.cle.d	$fcc0, $fa1, $fs3
	bcnez	$fcc0, .LBB2_30
# %bb.25:                               # %if.end.us.us.2
                                        #   in Loop: Header=BB2_9 Depth=3
	fld.d	$fa1, $s1, 104
	fcmp.clt.d	$fcc0, $fs4, $fa1
	bcnez	$fcc0, .LBB2_30
# %bb.26:                               # %lor.lhs.false64.us.us.2
                                        #   in Loop: Header=BB2_9 Depth=3
	fld.d	$fa1, $s1, 128
	fcmp.cle.d	$fcc0, $fa1, $fs4
	bcnez	$fcc0, .LBB2_30
# %bb.27:                               # %if.end69.us.us.2
                                        #   in Loop: Header=BB2_9 Depth=3
	fld.d	$fa1, $s1, 112
	fcmp.clt.d	$fcc0, $fs7, $fa1
	bcnez	$fcc0, .LBB2_30
# %bb.28:                               # %lor.lhs.false73.us.us.2
                                        #   in Loop: Header=BB2_9 Depth=3
	fld.d	$fa1, $s1, 136
	fcmp.cle.d	$fcc0, $fa1, $fs7
	bcnez	$fcc0, .LBB2_30
# %bb.29:                               # %if.end78.us.us.2
                                        #   in Loop: Header=BB2_9 Depth=3
	ld.d	$a0, $fp, 24
	ld.d	$a1, $fp, 32
	addi.w	$a2, $s0, -1
	move	$a3, $zero
	fmov.d	$fa0, $fs3
	fmov.d	$fa1, $fs4
	fmov.d	$fa2, $fs7
	fmov.d	$fa3, $fs1
	fmov.d	$fa4, $fs1
	fmov.d	$fa5, $fs1
	pcaddu18i	$ra, %call36(putAtomInBox)
	jirl	$ra, $ra, 0
	vldi	$vr3, -920
	vldi	$vr2, -944
	fld.d	$fa0, $s1, 96
	.p2align	4, , 16
.LBB2_30:                               # %cleanup.us.us.2
                                        #   in Loop: Header=BB2_9 Depth=3
	fcmp.clt.d	$fcc0, $fs3, $fa0
	bcnez	$fcc0, .LBB2_8
# %bb.31:                               # %lor.lhs.false.us.us.3
                                        #   in Loop: Header=BB2_9 Depth=3
	fld.d	$fa0, $s1, 120
	fcmp.cle.d	$fcc0, $fa0, $fs3
	bcnez	$fcc0, .LBB2_8
# %bb.32:                               # %if.end.us.us.3
                                        #   in Loop: Header=BB2_9 Depth=3
	fld.d	$fa0, $s1, 104
	fcmp.clt.d	$fcc0, $fs5, $fa0
	bcnez	$fcc0, .LBB2_8
# %bb.33:                               # %lor.lhs.false64.us.us.3
                                        #   in Loop: Header=BB2_9 Depth=3
	fld.d	$fa0, $s1, 128
	fcmp.cle.d	$fcc0, $fa0, $fs5
	bcnez	$fcc0, .LBB2_8
# %bb.34:                               # %if.end69.us.us.3
                                        #   in Loop: Header=BB2_9 Depth=3
	fld.d	$fa0, $s1, 112
	fcmp.clt.d	$fcc0, $fs6, $fa0
	bcnez	$fcc0, .LBB2_8
# %bb.35:                               # %lor.lhs.false73.us.us.3
                                        #   in Loop: Header=BB2_9 Depth=3
	fld.d	$fa0, $s1, 136
	fcmp.cle.d	$fcc0, $fa0, $fs6
	bcnez	$fcc0, .LBB2_8
# %bb.36:                               # %if.end78.us.us.3
                                        #   in Loop: Header=BB2_9 Depth=3
	ld.d	$a0, $fp, 24
	ld.d	$a1, $fp, 32
	move	$a2, $s0
	move	$a3, $zero
	fmov.d	$fa0, $fs3
	fmov.d	$fa1, $fs5
	fmov.d	$fa2, $fs6
	fmov.d	$fa3, $fs1
	fmov.d	$fa4, $fs1
	fmov.d	$fa5, $fs1
	pcaddu18i	$ra, %call36(putAtomInBox)
	jirl	$ra, $ra, 0
	vldi	$vr3, -920
	vldi	$vr2, -944
	b	.LBB2_8
.LBB2_37:                               # %for.cond.cleanup18
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(profileStart)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 32
	addi.d	$a1, $a0, 4
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(addIntParallel)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	fld.d	$fs7, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 112                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	pcaddu18i	$t8, %call36(profileStop)
	jr	$t8
.Lfunc_end2:
	.size	createFccLattice, .Lfunc_end2-createFccLattice
                                        # -- End function
	.globl	setVcm                          # -- Begin function setVcm
	.p2align	5
	.type	setVcm,@function
setVcm:                                 # @setVcm
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a2, $a0, 24
	xvrepli.b	$xr0, 0
	xvst	$xr0, $sp, 48
	xvst	$xr0, $sp, 16
	ld.w	$a0, $a2, 12
	ori	$s1, $zero, 1
	move	$s0, $a1
	blt	$a0, $s1, .LBB3_6
# %bb.1:                                # %for.body.lr.ph.i
	ld.d	$a1, $a2, 120
	movgr2fr.d	$fa0, $zero
	move	$a2, $zero
	move	$a3, $zero
	fmov.d	$fa1, $fa0
	fmov.d	$fa2, $fa0
	fmov.d	$fa3, $fa0
	b	.LBB3_3
	.p2align	4, , 16
.LBB3_2:                                # %for.cond.cleanup4.i
                                        #   in Loop: Header=BB3_3 Depth=1
	addi.d	$a2, $a2, 1
	addi.w	$a3, $a3, 64
	beq	$a2, $a0, .LBB3_6
.LBB3_3:                                # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_5 Depth 2
	slli.d	$a4, $a2, 2
	ldx.w	$a4, $a1, $a4
	blt	$a4, $s1, .LBB3_2
# %bb.4:                                # %for.body5.lr.ph.i
                                        #   in Loop: Header=BB3_3 Depth=1
	ld.d	$a5, $fp, 32
	bstrpick.d	$a6, $a3, 31, 0
	slli.d	$a7, $a6, 2
	slli.d	$t0, $a6, 4
	ld.d	$t1, $a5, 16
	ld.d	$t2, $a5, 32
	alsl.d	$t0, $a6, $t0, 3
	ld.d	$a5, $fp, 40
	add.d	$a6, $t1, $a7
	add.d	$a7, $t2, $t0
	addi.d	$a7, $a7, 16
	.p2align	4, , 16
.LBB3_5:                                # %for.body5.i
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa4, $a7, -16
	fadd.d	$fa3, $fa3, $fa4
	fst.d	$fa3, $sp, 48
	fld.d	$fa4, $a7, -8
	fadd.d	$fa2, $fa2, $fa4
	fst.d	$fa2, $sp, 56
	fld.d	$fa4, $a7, 0
	ld.w	$t0, $a6, 0
	fadd.d	$fa1, $fa1, $fa4
	fst.d	$fa1, $sp, 64
	alsl.d	$t0, $t0, $a5, 4
	fld.d	$fa4, $t0, 8
	fadd.d	$fa0, $fa0, $fa4
	fst.d	$fa0, $sp, 72
	addi.w	$a4, $a4, -1
	addi.d	$a6, $a6, 4
	addi.d	$a7, $a7, 24
	bnez	$a4, .LBB3_5
	b	.LBB3_2
.LBB3_6:                                # %computeVcm.exit
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(profileStart)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 4
	pcaddu18i	$ra, %call36(addRealParallel)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(profileStop)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 24
	ld.w	$a0, $a3, 12
	blt	$a0, $s1, .LBB3_12
# %bb.7:                                # %for.body.lr.ph
	fld.d	$fa0, $sp, 40
	fld.d	$fa1, $sp, 32
	move	$a1, $zero
	move	$a2, $zero
	fdiv.d	$fa1, $fa1, $fa0
	vld	$vr2, $sp, 16
	vreplvei.d	$vr0, $vr0, 0
	vld	$vr3, $s0, 0
	fld.d	$fa4, $s0, 16
	vfdiv.d	$vr0, $vr2, $vr0
	ld.d	$a3, $a3, 120
	vfsub.d	$vr0, $vr3, $vr0
	fsub.d	$fa1, $fa4, $fa1
	ori	$a4, $zero, 1
	b	.LBB3_9
	.p2align	4, , 16
.LBB3_8:                                # %for.cond.cleanup15
                                        #   in Loop: Header=BB3_9 Depth=1
	addi.d	$a1, $a1, 1
	addi.w	$a2, $a2, 64
	beq	$a1, $a0, .LBB3_12
.LBB3_9:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_11 Depth 2
	slli.d	$a5, $a1, 2
	ldx.w	$a5, $a3, $a5
	blt	$a5, $a4, .LBB3_8
# %bb.10:                               # %for.body16.lr.ph
                                        #   in Loop: Header=BB3_9 Depth=1
	ld.d	$a6, $fp, 32
	bstrpick.d	$a7, $a2, 31, 0
	slli.d	$t0, $a7, 4
	alsl.d	$t0, $a7, $t0, 3
	ld.d	$t1, $a6, 32
	slli.d	$t2, $a7, 2
	ld.d	$t3, $a6, 16
	ld.d	$a6, $fp, 40
	add.d	$a7, $t1, $t0
	addi.d	$a7, $a7, 16
	add.d	$t0, $t3, $t2
	.p2align	4, , 16
.LBB3_11:                               # %for.body16
                                        #   Parent Loop BB3_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t1, $t0, 0
	alsl.d	$t1, $t1, $a6, 4
	fld.d	$fa2, $t1, 8
	vld	$vr3, $a7, -16
	fld.d	$fa4, $a7, 0
	vreplvei.d	$vr5, $vr2, 0
	vfmadd.d	$vr3, $vr5, $vr0, $vr3
	vst	$vr3, $a7, -16
	fmadd.d	$fa2, $fa2, $fa1, $fa4
	fst.d	$fa2, $a7, 0
	addi.d	$a7, $a7, 24
	addi.w	$a5, $a5, -1
	addi.d	$t0, $t0, 4
	bnez	$a5, .LBB3_11
	b	.LBB3_8
.LBB3_12:                               # %for.cond.cleanup
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end3:
	.size	setVcm, .Lfunc_end3-setVcm
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function setTemperature
.LCPI4_0:
	.dword	0x3f1696fe6ef7eb54              # double 8.6173323999999996E-5
	.text
	.globl	setTemperature
	.p2align	5
	.type	setTemperature,@function
setTemperature:                         # @setTemperature
# %bb.0:                                # %entry
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
	fst.d	$fs0, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 40                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 12
	fmov.d	$fs0, $fa0
	ori	$s1, $zero, 1
	pcalau12i	$s0, %pc_hi20(.LCPI4_0)
	blt	$a1, $s1, .LBB4_8
# %bb.1:                                # %for.body.lr.ph
	fld.d	$fa0, $s0, %pc_lo12(.LCPI4_0)
	move	$s2, $zero
	move	$s3, $zero
	fmul.d	$fs2, $fs0, $fa0
	b	.LBB4_3
	.p2align	4, , 16
.LBB4_2:                                # %for.cond.cleanup4
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$a1, $a0, 12
	addi.d	$s2, $s2, 1
	addi.w	$s3, $s3, 64
	bge	$s2, $a1, .LBB4_8
.LBB4_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_5 Depth 2
	ld.d	$a1, $a0, 120
	slli.d	$s4, $s2, 2
	ldx.w	$a1, $a1, $s4
	blt	$a1, $s1, .LBB4_2
# %bb.4:                                # %for.body5.preheader
                                        #   in Loop: Header=BB4_3 Depth=1
	move	$s5, $zero
	bstrpick.d	$a0, $s3, 31, 0
	ld.d	$s8, $fp, 32
	slli.d	$a1, $a0, 4
	alsl.d	$s6, $a0, $a1, 3
	slli.d	$s7, $a0, 2
	.p2align	4, , 16
.LBB4_5:                                # %for.body5
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s8, 16
	ldx.w	$a0, $a0, $s7
	ld.d	$a1, $fp, 40
	alsl.d	$a0, $a0, $a1, 4
	fld.d	$fs3, $a0, 8
	fdiv.d	$fa0, $fs2, $fs3
	fsqrt.d	$fs1, $fa0
	fcmp.cor.d	$fcc0, $fs1, $fs1
	bceqz	$fcc0, .LBB4_7
.LBB4_6:                                # %for.body5.split
                                        #   in Loop: Header=BB4_5 Depth=2
	ld.d	$a0, $s8, 8
	ldx.w	$a0, $a0, $s7
	ori	$a1, $zero, 123
	pcaddu18i	$ra, %call36(mkSeed)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 16
	fmul.d	$fs1, $fs3, $fs1
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(gasdev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 32
	ld.d	$a0, $a0, 32
	fmul.d	$fa0, $fs1, $fa0
	fstx.d	$fa0, $a0, $s6
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(gasdev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 32
	ld.d	$a0, $a0, 32
	fmul.d	$fa0, $fs1, $fa0
	add.d	$a0, $a0, $s6
	fst.d	$fa0, $a0, 8
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(gasdev)
	jirl	$ra, $ra, 0
	ld.d	$s8, $fp, 32
	ld.d	$a0, $s8, 32
	fmul.d	$fa0, $fs1, $fa0
	add.d	$a0, $a0, $s6
	fst.d	$fa0, $a0, 16
	ld.d	$a0, $fp, 24
	ld.d	$a1, $a0, 120
	ldx.w	$a1, $a1, $s4
	addi.w	$s5, $s5, 1
	addi.d	$s6, $s6, 24
	addi.d	$s7, $s7, 4
	blt	$s5, $a1, .LBB4_5
	b	.LBB4_2
.LBB4_7:                                # %call.sqrt
                                        #   in Loop: Header=BB4_5 Depth=2
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fs1, $fa0
	b	.LBB4_6
.LBB4_8:                                # %for.cond.cleanup
	movgr2fr.d	$fa0, $zero
	fcmp.ceq.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB4_18
# %bb.9:                                # %if.end
	st.d	$zero, $sp, 32
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(setVcm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(kineticEnergy)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 32
	ld.w	$a0, $s1, 4
	fld.d	$fa0, $fp, 56
	fld.d	$fa1, $s0, %pc_lo12(.LCPI4_0)
	movgr2fr.w	$fa2, $a0
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa0, $fa0, $fa2
	fdiv.d	$fa0, $fa0, $fa1
	vldi	$vr1, -904
	fdiv.d	$fa0, $fa0, $fa1
	fdiv.d	$fa1, $fs0, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB4_16
# %bb.10:                               # %if.end.split
	ld.d	$a2, $fp, 24
	ld.w	$a0, $a2, 12
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB4_17
.LBB4_11:                               # %for.body57.lr.ph
	ld.d	$a2, $a2, 120
	move	$a3, $zero
	move	$a4, $zero
	b	.LBB4_13
	.p2align	4, , 16
.LBB4_12:                               # %for.cond.cleanup68
                                        #   in Loop: Header=BB4_13 Depth=1
	addi.d	$a3, $a3, 1
	addi.w	$a4, $a4, 64
	beq	$a3, $a0, .LBB4_17
.LBB4_13:                               # %for.body57
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_15 Depth 2
	slli.d	$a5, $a3, 2
	ldx.w	$a5, $a2, $a5
	blt	$a5, $a1, .LBB4_12
# %bb.14:                               # %for.body69.lr.ph
                                        #   in Loop: Header=BB4_13 Depth=1
	ld.d	$a6, $s1, 32
	bstrpick.d	$a7, $a4, 31, 0
	slli.d	$t0, $a7, 4
	alsl.d	$a7, $a7, $t0, 3
	add.d	$a6, $a6, $a7
	addi.d	$a6, $a6, 16
	.p2align	4, , 16
.LBB4_15:                               # %for.body69
                                        #   Parent Loop BB4_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a6, -16
	fld.d	$fa2, $a6, -8
	fmul.d	$fa1, $fa0, $fa1
	fld.d	$fa3, $a6, 0
	fst.d	$fa1, $a6, -16
	fmul.d	$fa1, $fa0, $fa2
	fst.d	$fa1, $a6, -8
	fmul.d	$fa1, $fa0, $fa3
	fst.d	$fa1, $a6, 0
	addi.w	$a5, $a5, -1
	addi.d	$a6, $a6, 24
	bnez	$a5, .LBB4_15
	b	.LBB4_12
.LBB4_16:                               # %call.sqrt85
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 24
	ld.w	$a0, $a2, 12
	ori	$a1, $zero, 1
	bge	$a0, $a1, .LBB4_11
.LBB4_17:                               # %for.cond.cleanup56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(kineticEnergy)
	jirl	$ra, $ra, 0
.LBB4_18:                               # %return
	fld.d	$fs3, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 64                   # 8-byte Folded Reload
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
	ret
.Lfunc_end4:
	.size	setTemperature, .Lfunc_end4-setTemperature
                                        # -- End function
	.globl	randomDisplacements             # -- Begin function randomDisplacements
	.p2align	5
	.type	randomDisplacements,@function
randomDisplacements:                    # @randomDisplacements
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 12
	ori	$s0, $zero, 1
	blt	$a1, $s0, .LBB5_6
# %bb.1:                                # %for.body.lr.ph
	fmov.d	$fs0, $fa0
	move	$s1, $zero
	move	$s2, $zero
	b	.LBB5_3
	.p2align	4, , 16
.LBB5_2:                                # %for.cond.cleanup4
                                        #   in Loop: Header=BB5_3 Depth=1
	ld.w	$a1, $a0, 12
	addi.d	$s1, $s1, 1
	addi.w	$s2, $s2, 64
	bge	$s1, $a1, .LBB5_6
.LBB5_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_5 Depth 2
	ld.d	$a1, $a0, 120
	slli.d	$s3, $s1, 2
	ldx.w	$a1, $a1, $s3
	blt	$a1, $s0, .LBB5_2
# %bb.4:                                # %for.body5.preheader
                                        #   in Loop: Header=BB5_3 Depth=1
	move	$s4, $zero
	bstrpick.d	$a0, $s2, 31, 0
	ld.d	$a1, $fp, 32
	slli.d	$a2, $a0, 4
	alsl.d	$s5, $a0, $a2, 3
	slli.d	$s6, $a0, 2
	.p2align	4, , 16
.LBB5_5:                                # %for.body5
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a1, 8
	ldx.w	$a0, $a0, $s6
	ori	$a1, $zero, 457
	pcaddu18i	$ra, %call36(mkSeed)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 8
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(lcg61)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 32
	ld.d	$a0, $a0, 24
	fldx.d	$fa1, $a0, $s5
	vldi	$vr2, -784
	vldi	$vr3, -1024
	fmadd.d	$fa0, $fa0, $fa3, $fa2
	fmadd.d	$fa0, $fa0, $fs0, $fa1
	fstx.d	$fa0, $a0, $s5
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(lcg61)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 32
	ld.d	$a0, $a0, 24
	add.d	$a0, $a0, $s5
	fld.d	$fa1, $a0, 8
	vldi	$vr2, -784
	vldi	$vr3, -1024
	fmadd.d	$fa0, $fa0, $fa3, $fa2
	fmadd.d	$fa0, $fa0, $fs0, $fa1
	fst.d	$fa0, $a0, 8
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(lcg61)
	jirl	$ra, $ra, 0
	vldi	$vr2, -784
	ld.d	$a1, $fp, 32
	ld.d	$a2, $a1, 24
	ld.d	$a0, $fp, 24
	add.d	$a2, $a2, $s5
	fld.d	$fa1, $a2, 16
	ld.d	$a3, $a0, 120
	vldi	$vr3, -1024
	fmadd.d	$fa0, $fa0, $fa3, $fa2
	fmadd.d	$fa0, $fa0, $fs0, $fa1
	ldx.w	$a3, $a3, $s3
	fst.d	$fa0, $a2, 16
	addi.w	$s4, $s4, 1
	addi.d	$s5, $s5, 24
	addi.d	$s6, $s6, 4
	blt	$s4, $a3, .LBB5_5
	b	.LBB5_2
.LBB5_6:                                # %for.cond.cleanup
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end5:
	.size	randomDisplacements, .Lfunc_end5-randomDisplacements
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
