	.file	"Galign11.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function G__align11
.LCPI0_0:
	.dword	0x3ff4cccccccccccd              # double 1.3
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI0_3:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI0_2:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.text
	.globl	G__align11
	.p2align	5
	.type	G__align11,@function
G__align11:                             # @G__align11
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -256
	st.d	$ra, $sp, 248                   # 8-byte Folded Spill
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	st.d	$s0, $sp, 232                   # 8-byte Folded Spill
	st.d	$s1, $sp, 224                   # 8-byte Folded Spill
	st.d	$s2, $sp, 216                   # 8-byte Folded Spill
	st.d	$s3, $sp, 208                   # 8-byte Folded Spill
	st.d	$s4, $sp, 200                   # 8-byte Folded Spill
	st.d	$s5, $sp, 192                   # 8-byte Folded Spill
	st.d	$s6, $sp, 184                   # 8-byte Folded Spill
	st.d	$s7, $sp, 176                   # 8-byte Folded Spill
	st.d	$s8, $sp, 168                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 160                  # 8-byte Folded Spill
	pcalau12i	$a3, %got_pc_hi20(penalty)
	ld.d	$a3, $a3, %got_pc_lo12(penalty)
	pcalau12i	$a4, %got_pc_hi20(penalty_ex)
	ld.d	$a4, $a4, %got_pc_lo12(penalty_ex)
	ld.w	$a3, $a3, 0
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$s5, %pc_hi20(G__align11.orlgth1)
	ld.w	$a3, $s5, %pc_lo12(G__align11.orlgth1)
	ld.w	$s8, $a4, 0
	move	$s2, $a2
	move	$fp, $a1
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(G__align11.mseq1)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(G__align11.mseq2)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	bnez	$a3, .LBB0_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$s1, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $s1, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(G__align11.mseq1)
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(G__align11.mseq2)
.LBB0_2:                                # %if.end
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	move	$s3, $a0
	addi.w	$s1, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$t1, $s1
	ori	$a1, $zero, 1
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	addi.w	$s4, $a0, 0
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	blt	$s1, $a1, .LBB0_36
# %bb.3:                                # %if.end
	blez	$s4, .LBB0_36
.LBB0_4:                                # %if.end15
	st.d	$s5, $sp, 56                    # 8-byte Folded Spill
	ld.w	$s5, $s5, %pc_lo12(G__align11.orlgth1)
	pcalau12i	$a0, %pc_hi20(G__align11.orlgth2)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.w	$s7, $a0, %pc_lo12(G__align11.orlgth2)
	pcalau12i	$a0, %pc_hi20(G__align11.w1)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(G__align11.w2)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(G__align11.initverticalw)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(G__align11.lastverticalw)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$s6, %pc_hi20(G__align11.m)
	pcalau12i	$a0, %pc_hi20(G__align11.mp)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$s1, %pc_hi20(G__align11.mseq)
	st.d	$s2, $sp, 80                    # 8-byte Folded Spill
	st.d	$s3, $sp, 72                    # 8-byte Folded Spill
	blt	$s5, $t1, .LBB0_6
# %bb.5:                                # %if.end15
	bge	$s7, $s4, .LBB0_10
.LBB0_6:                                # %if.then21
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	pcalau12i	$s6, %pc_hi20(G__align11.match)
	pcalau12i	$a1, %pc_hi20(G__align11.floatwork)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(G__align11.intwork)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 16                    # 8-byte Folded Spill
	blt	$s5, $a0, .LBB0_9
# %bb.7:                                # %if.then21
	blt	$s7, $a0, .LBB0_9
# %bb.8:                                # %if.then26
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(G__align11.w1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(G__align11.w2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, %pc_lo12(G__align11.match)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(G__align11.initverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(G__align11.lastverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(G__align11.m)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(G__align11.mp)
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(G__align11.mseq)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(G__align11.floatwork)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(G__align11.intwork)
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.w	$s5, $a0, %pc_lo12(G__align11.orlgth1)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$s7, $a0, %pc_lo12(G__align11.orlgth2)
.LBB0_9:                                # %if.end27
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI0_0)
	movgr2fr.w	$fa1, $s3
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	slt	$a1, $a0, $s5
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s5, $a1
	or	$s5, $a1, $a0
	addi.w	$s3, $s5, 100
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	slt	$a1, $a0, $s7
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s7, $a1
	or	$s7, $a1, $a0
	addi.w	$s8, $s7, 100
	addi.w	$s2, $s7, 102
	move	$a0, $s2
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(G__align11.w1)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(G__align11.w2)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, %pc_lo12(G__align11.match)
	addi.w	$s6, $s5, 102
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(G__align11.initverticalw)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(G__align11.lastverticalw)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $s6, %pc_lo12(G__align11.m)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(njob)
	ld.d	$a1, $a1, %got_pc_lo12(njob)
	ld.w	$a2, $a1, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(G__align11.mp)
	add.w	$a1, $s8, $s3
	move	$a0, $a2
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, %pc_lo12(G__align11.mseq)
	slt	$a0, $s8, $s3
	masknez	$a1, $s8, $a0
	maskeqz	$a0, $s3, $a0
	or	$a0, $a0, $a1
	addi.w	$s2, $a0, 2
	ori	$a0, $zero, 26
	move	$a1, $s2
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(G__align11.floatwork)
	ori	$a0, $zero, 26
	move	$a1, $s2
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(G__align11.intwork)
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	st.w	$s5, $a0, %pc_lo12(G__align11.orlgth1)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.w	$s7, $a0, %pc_lo12(G__align11.orlgth2)
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 128                   # 8-byte Folded Reload
.LBB0_10:                               # %if.end81
	ld.d	$a0, $s1, %pc_lo12(G__align11.mseq)
	ld.d	$a1, $a0, 0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(G__align11.mseq1)
	st.d	$a1, $a2, 0
	ld.d	$a0, $a0, 8
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(G__align11.mseq2)
	pcalau12i	$a2, %got_pc_hi20(commonAlloc1)
	ld.d	$s1, $a2, %got_pc_lo12(commonAlloc1)
	pcalau12i	$a2, %got_pc_hi20(commonAlloc2)
	ld.d	$s3, $a2, %got_pc_lo12(commonAlloc2)
	st.d	$a0, $a1, 0
	ld.w	$a1, $s1, 0
	ld.w	$a0, $s3, 0
	blt	$a1, $s5, .LBB0_13
# %bb.11:                               # %if.end81
	blt	$a0, $s7, .LBB0_13
# %bb.12:                               # %lor.lhs.false88.if.end113_crit_edge
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$s7, $a0, 0
	b	.LBB0_17
.LBB0_13:                               # %if.then91
	move	$s2, $s8
	move	$s8, $s6
	beqz	$a1, .LBB0_16
# %bb.14:                               # %if.then91
	beqz	$a0, .LBB0_16
# %bb.15:                               # %if.then96
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.w	$s5, $a0, %pc_lo12(G__align11.orlgth1)
	ld.w	$a1, $s1, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$s7, $a0, %pc_lo12(G__align11.orlgth2)
	ld.w	$a0, $s3, 0
.LBB0_16:                               # %if.end97
	slt	$a2, $a1, $s5
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s5, $a2
	or	$s5, $a2, $a1
	slt	$a1, $a0, $s7
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s7, $a1
	or	$s6, $a1, $a0
	addi.w	$a0, $s5, 10
	addi.w	$a1, $s6, 10
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(commonIP)
	ld.d	$a1, $a1, %got_pc_lo12(commonIP)
	move	$s7, $a0
	st.d	$a0, $a1, 0
	st.w	$s5, $s1, 0
	st.w	$s6, $s3, 0
	move	$s6, $s8
	move	$s8, $s2
	ld.d	$t1, $sp, 128                   # 8-byte Folded Reload
.LBB0_17:                               # %if.end113
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a4, $a0, %pc_lo12(G__align11.w1)
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a3, $a0, %pc_lo12(G__align11.w2)
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(G__align11.initverticalw)
	ld.d	$a0, $fp, 0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a0, $s0, 0
	pcalau12i	$a2, %got_pc_hi20(amino_dis)
	ld.d	$a2, $a2, %got_pc_lo12(amino_dis)
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(G__align11.ijp)
	st.d	$s7, $a2, %pc_lo12(G__align11.ijp)
	ld.d	$s1, $sp, 72                    # 8-byte Folded Reload
	beqz	$t1, .LBB0_20
# %bb.18:                               # %while.body.i.preheader
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ld.b	$a2, $a2, 0
	slli.d	$a2, $a2, 9
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	add.d	$a2, $a5, $a2
	move	$a5, $a1
	move	$a7, $a0
	move	$a6, $s1
	.p2align	4, , 16
.LBB0_19:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$t0, $a7, 0
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $a2, $t0
	addi.w	$a6, $a6, -1
	addi.d	$a7, $a7, 1
	movgr2fr.w	$fa0, $t0
	ffint.s.w	$fa0, $fa0
	addi.d	$t0, $a5, 4
	fst.s	$fa0, $a5, 0
	move	$a5, $t0
	bnez	$a6, .LBB0_19
.LBB0_20:                               # %match_calc.exit
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	movgr2fr.w	$fa0, $a2
	beqz	$s4, .LBB0_23
# %bb.21:                               # %while.body.i127.preheader
	ld.b	$a2, $a0, 0
	slli.d	$a2, $a2, 9
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	add.d	$a2, $a5, $a2
	move	$a5, $a4
	ld.d	$a7, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 144                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_22:                               # %while.body.i127
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$t0, $a7, 0
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $a2, $t0
	addi.w	$a6, $a6, -1
	addi.d	$a7, $a7, 1
	movgr2fr.w	$fa1, $t0
	ffint.s.w	$fa1, $fa1
	addi.d	$t0, $a5, 4
	fst.s	$fa1, $a5, 0
	move	$a5, $t0
	bnez	$a6, .LBB0_22
.LBB0_23:                               # %match_calc.exit138
	pcalau12i	$a2, %got_pc_hi20(outgap)
	ld.d	$a7, $a2, %got_pc_lo12(outgap)
	ld.w	$t0, $a7, 0
	ffint.s.w	$fa0, $fa0
	ori	$a2, $zero, 1
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	slli.d	$a6, $a5, 32
	addi.d	$a5, $a5, 1
	bne	$t0, $a2, .LBB0_28
# %bb.24:                               # %for.cond.preheader
	blt	$t1, $a2, .LBB0_40
# %bb.25:                               # %iter.check
	addi.d	$a2, $s1, 1
	bstrpick.d	$t0, $a2, 31, 0
	addi.d	$a2, $t0, -1
	ori	$t1, $zero, 3
	ori	$t2, $zero, 1
	bgeu	$t1, $a2, .LBB0_38
# %bb.26:                               # %vector.main.loop.iter.check
	ori	$t1, $zero, 16
	bgeu	$a2, $t1, .LBB0_29
# %bb.27:
	move	$t1, $zero
	b	.LBB0_33
.LBB0_28:                               # %if.end133
	bge	$s4, $a2, .LBB0_56
	b	.LBB0_44
.LBB0_29:                               # %vector.ph
	move	$t1, $a2
	bstrins.d	$t1, $zero, 3, 0
	xvreplve0.w	$xr1, $xr0
	addi.d	$t2, $a1, 36
	move	$t3, $t1
	.p2align	4, , 16
.LBB0_30:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $t2, -32
	xvld	$xr3, $t2, 0
	xvfadd.s	$xr2, $xr2, $xr1
	xvfadd.s	$xr3, $xr3, $xr1
	xvst	$xr2, $t2, -32
	xvst	$xr3, $t2, 0
	addi.d	$t3, $t3, -16
	addi.d	$t2, $t2, 64
	bnez	$t3, .LBB0_30
# %bb.31:                               # %middle.block
	beq	$a2, $t1, .LBB0_40
# %bb.32:                               # %vec.epilog.iter.check
	andi	$t2, $a2, 12
	beqz	$t2, .LBB0_37
.LBB0_33:                               # %vec.epilog.ph
	move	$t3, $a2
	bstrins.d	$t3, $zero, 1, 0
	ori	$t4, $zero, 1
	move	$t2, $a2
	bstrins.d	$t2, $t4, 1, 0
	vreplvei.w	$vr1, $vr0, 0
	alsl.d	$t4, $t1, $a1, 2
	addi.d	$t4, $t4, 4
	sub.d	$t1, $t1, $t3
	.p2align	4, , 16
.LBB0_34:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $t4, 0
	vfadd.s	$vr2, $vr2, $vr1
	vst	$vr2, $t4, 0
	addi.d	$t1, $t1, 4
	addi.d	$t4, $t4, 16
	bnez	$t1, .LBB0_34
# %bb.35:                               # %vec.epilog.middle.block
	bne	$a2, $t3, .LBB0_38
	b	.LBB0_40
.LBB0_36:                               # %if.then13
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	move	$a2, $t1
	move	$a3, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$t1, $sp, 128                   # 8-byte Folded Reload
	b	.LBB0_4
.LBB0_37:
	addi.d	$t2, $t1, 1
.LBB0_38:                               # %for.body.preheader
	alsl.d	$a2, $t2, $a1, 2
	sub.d	$t0, $t0, $t2
	.p2align	4, , 16
.LBB0_39:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a2, 0
	fadd.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $a2, 0
	addi.d	$t0, $t0, -1
	addi.d	$a2, $a2, 4
	bnez	$t0, .LBB0_39
.LBB0_40:                               # %for.cond122.preheader
	ori	$t2, $zero, 1
	blt	$s4, $t2, .LBB0_44
# %bb.41:                               # %iter.check238
	bstrpick.d	$a2, $a5, 31, 0
	addi.d	$t0, $a2, -1
	ori	$t1, $zero, 3
	bgeu	$t1, $t0, .LBB0_54
# %bb.42:                               # %vector.main.loop.iter.check240
	ori	$t1, $zero, 16
	bgeu	$t0, $t1, .LBB0_46
# %bb.43:
	move	$t1, $zero
	b	.LBB0_50
.LBB0_44:                               # %for.end148
	bnez	$s4, .LBB0_70
# %bb.45:
	movgr2fr.w	$fa1, $zero
	b	.LBB0_71
.LBB0_46:                               # %vector.ph241
	move	$t1, $t0
	bstrins.d	$t1, $zero, 3, 0
	xvreplve0.w	$xr1, $xr0
	addi.d	$t2, $a4, 36
	move	$t3, $t1
	.p2align	4, , 16
.LBB0_47:                               # %vector.body246
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $t2, -32
	xvld	$xr3, $t2, 0
	xvfadd.s	$xr2, $xr2, $xr1
	xvfadd.s	$xr3, $xr3, $xr1
	xvst	$xr2, $t2, -32
	xvst	$xr3, $t2, 0
	addi.d	$t3, $t3, -16
	addi.d	$t2, $t2, 64
	bnez	$t3, .LBB0_47
# %bb.48:                               # %middle.block251
	beq	$t0, $t1, .LBB0_56
# %bb.49:                               # %vec.epilog.iter.check256
	andi	$t2, $t0, 12
	beqz	$t2, .LBB0_53
.LBB0_50:                               # %vec.epilog.ph255
	move	$t3, $t0
	bstrins.d	$t3, $zero, 1, 0
	ori	$t4, $zero, 1
	move	$t2, $t0
	bstrins.d	$t2, $t4, 1, 0
	vreplvei.w	$vr1, $vr0, 0
	alsl.d	$t4, $t1, $a4, 2
	addi.d	$t4, $t4, 4
	sub.d	$t1, $t1, $t3
	.p2align	4, , 16
.LBB0_51:                               # %vec.epilog.vector.body263
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $t4, 0
	vfadd.s	$vr2, $vr2, $vr1
	vst	$vr2, $t4, 0
	addi.d	$t1, $t1, 4
	addi.d	$t4, $t4, 16
	bnez	$t1, .LBB0_51
# %bb.52:                               # %vec.epilog.middle.block268
	bne	$t0, $t3, .LBB0_54
	b	.LBB0_56
.LBB0_53:
	addi.d	$t2, $t1, 1
.LBB0_54:                               # %for.body126.preheader
	alsl.d	$t0, $t2, $a4, 2
	sub.d	$a2, $a2, $t2
	.p2align	4, , 16
.LBB0_55:                               # %for.body126
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $t0, 0
	fadd.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $t0, 0
	addi.d	$a2, $a2, -1
	addi.d	$t0, $t0, 4
	bnez	$a2, .LBB0_55
.LBB0_56:                               # %iter.check274
	ld.d	$t0, $s6, %pc_lo12(G__align11.m)
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t1, $a2, %pc_lo12(G__align11.mp)
	bstrpick.d	$t2, $a5, 31, 0
	addi.d	$t3, $t2, -1
	ori	$t4, $zero, 4
	ori	$a2, $zero, 1
	bltu	$t3, $t4, .LBB0_68
# %bb.57:                               # %vector.memcheck
	sub.d	$t4, $t0, $a4
	addi.d	$t4, $t4, 4
	ori	$t5, $zero, 64
	bltu	$t4, $t5, .LBB0_68
# %bb.58:                               # %vector.main.loop.iter.check276
	ori	$a2, $zero, 16
	bgeu	$t3, $a2, .LBB0_60
# %bb.59:
	move	$t4, $zero
	b	.LBB0_64
.LBB0_60:                               # %vector.ph277
	move	$t4, $t3
	bstrins.d	$t4, $zero, 3, 0
	addi.d	$a2, $a4, 32
	addi.d	$t5, $t0, 36
	addi.d	$t6, $t1, 36
	xvrepli.b	$xr1, 0
	move	$t7, $t4
	.p2align	4, , 16
.LBB0_61:                               # %vector.body280
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a2, -32
	xvld	$xr3, $a2, 0
	xvst	$xr2, $t5, -32
	xvst	$xr3, $t5, 0
	xvst	$xr1, $t6, -32
	xvst	$xr1, $t6, 0
	addi.d	$t7, $t7, -16
	addi.d	$a2, $a2, 64
	addi.d	$t5, $t5, 64
	addi.d	$t6, $t6, 64
	bnez	$t7, .LBB0_61
# %bb.62:                               # %middle.block285
	beq	$t3, $t4, .LBB0_70
# %bb.63:                               # %vec.epilog.iter.check290
	andi	$a2, $t3, 12
	beqz	$a2, .LBB0_67
.LBB0_64:                               # %vec.epilog.ph289
	move	$t5, $t3
	bstrins.d	$t5, $zero, 1, 0
	ori	$t6, $zero, 1
	move	$a2, $t3
	bstrins.d	$a2, $t6, 1, 0
	slli.d	$t7, $t4, 2
	alsl.d	$t6, $t4, $a4, 2
	addi.d	$t8, $t7, 4
	add.d	$t7, $t0, $t8
	add.d	$t8, $t1, $t8
	sub.d	$t4, $t4, $t5
	vrepli.b	$vr1, 0
	.p2align	4, , 16
.LBB0_65:                               # %vec.epilog.vector.body295
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $t6, 0
	vst	$vr2, $t7, 0
	vst	$vr1, $t8, 0
	addi.d	$t6, $t6, 16
	addi.d	$t7, $t7, 16
	addi.d	$t4, $t4, 4
	addi.d	$t8, $t8, 16
	bnez	$t4, .LBB0_65
# %bb.66:                               # %vec.epilog.middle.block300
	bne	$t3, $t5, .LBB0_68
	b	.LBB0_70
.LBB0_67:
	addi.d	$a2, $t4, 1
.LBB0_68:                               # %for.body138.preheader
	alsl.d	$t3, $a2, $a4, 2
	addi.d	$t3, $t3, -4
	alsl.d	$t0, $a2, $t0, 2
	alsl.d	$t1, $a2, $t1, 2
	sub.d	$a2, $t2, $a2
	.p2align	4, , 16
.LBB0_69:                               # %for.body138
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $t3, 0
	fst.s	$fa1, $t0, 0
	st.w	$zero, $t1, 0
	addi.d	$t3, $t3, 4
	addi.d	$t0, $t0, 4
	addi.d	$a2, $a2, -1
	addi.d	$t1, $t1, 4
	bnez	$a2, .LBB0_69
.LBB0_70:                               # %if.else
	ori	$a2, $zero, 0
	lu32i.d	$a2, -1
	add.d	$a2, $a6, $a2
	srai.d	$a2, $a2, 30
	fldx.s	$fa1, $a4, $a2
.LBB0_71:                               # %if.end157
	ld.w	$a2, $a7, 0
	ld.d	$a7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a7, $a7, %pc_lo12(G__align11.lastverticalw)
	sltu	$a2, $zero, $a2
	add.w	$t0, $a2, $s1
	ori	$a2, $zero, 2
	fst.s	$fa1, $a7, 0
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	blt	$t0, $a2, .LBB0_85
# %bb.72:                               # %for.body166.lr.ph
	movgr2fr.w	$fa1, $s8
	ffint.s.w	$fa1, $fa1
	ld.d	$a2, $s6, %pc_lo12(G__align11.m)
	ld.d	$t1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t2, $t1, %pc_lo12(G__align11.mp)
	ori	$t1, $zero, 0
	lu32i.d	$t1, -1
	add.d	$a6, $a6, $t1
	srai.d	$a6, $a6, 30
	bstrpick.d	$t1, $a5, 31, 0
	addi.d	$a5, $a2, 4
	addi.d	$t1, $t1, -1
	addi.d	$t2, $t2, 4
	movgr2fr.w	$fs0, $zero
	ori	$t3, $zero, 1
	ori	$t4, $zero, 1
	b	.LBB0_75
	.p2align	4, , 16
.LBB0_73:                               # %match_calc.exit153.thread
                                        #   in Loop: Header=BB0_75 Depth=1
	fldx.s	$fa2, $a1, $a4
	fst.s	$fa2, $t5, 0
.LBB0_74:                               # %for.end219
                                        #   in Loop: Header=BB0_75 Depth=1
	fldx.s	$fa2, $t5, $a6
	addi.d	$t4, $t4, 1
	fstx.s	$fa2, $a7, $a4
	move	$a4, $t5
	beq	$t4, $t0, .LBB0_86
.LBB0_75:                               # %for.body166
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_77 Depth 2
                                        #     Child Loop BB0_81 Depth 2
	addi.d	$t6, $t4, -1
	slli.d	$a2, $t6, 2
	fldx.s	$fa2, $a1, $a2
	move	$t5, $a3
	move	$a3, $a4
	fst.s	$fa2, $a4, 0
	slli.d	$a4, $t4, 2
	beqz	$s4, .LBB0_73
# %bb.76:                               # %while.body.i142.preheader
                                        #   in Loop: Header=BB0_75 Depth=1
	ldx.b	$a2, $a0, $t4
	slli.d	$a2, $a2, 9
	ld.d	$t7, $sp, 136                   # 8-byte Folded Reload
	add.d	$a2, $t7, $a2
	move	$t7, $t5
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 144                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_77:                               # %while.body.i142
                                        #   Parent Loop BB0_75 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$s3, $s1, 0
	slli.d	$s3, $s3, 2
	ldx.w	$s3, $a2, $s3
	addi.w	$t8, $t8, -1
	addi.d	$s1, $s1, 1
	movgr2fr.w	$fa2, $s3
	ffint.s.w	$fa2, $fa2
	addi.d	$s3, $t7, 4
	fst.s	$fa2, $t7, 0
	move	$t7, $s3
	bnez	$t8, .LBB0_77
# %bb.78:                               # %match_calc.exit153
                                        #   in Loop: Header=BB0_75 Depth=1
	fldx.s	$fa2, $a1, $a4
	fst.s	$fa2, $t5, 0
	blt	$s4, $t3, .LBB0_74
# %bb.79:                               # %for.body184.preheader
                                        #   in Loop: Header=BB0_75 Depth=1
	slli.d	$a2, $t4, 3
	ld.d	$t7, $sp, 128                   # 8-byte Folded Reload
	ldx.d	$a2, $t7, $a2
	move	$t7, $zero
	move	$t8, $zero
	fld.s	$fa2, $a3, 0
	addi.d	$s1, $t5, 4
	addi.d	$s5, $a2, 4
	move	$s7, $t2
	move	$s8, $t1
	move	$ra, $a5
	addi.d	$s3, $zero, -1
	move	$a2, $a3
	b	.LBB0_81
	.p2align	4, , 16
.LBB0_80:                               # %if.end208
                                        #   in Loop: Header=BB0_81 Depth=2
	fld.s	$fa4, $ra, 0
	fcmp.cult.s	$fcc0, $fa3, $fa2
	fsel	$fa2, $fa3, $fa2, $fcc0
	movcf2gr	$s2, $fcc0
	masknez	$s6, $t7, $s2
	fadd.s	$fa3, $fa4, $fa1
	fst.s	$fa3, $ra, 0
	fld.s	$fa3, $s1, 0
	maskeqz	$t8, $t8, $s2
	or	$t8, $t8, $s6
	fadd.s	$fa2, $fa2, $fa1
	fadd.s	$fa3, $fs0, $fa3
	fst.s	$fa3, $s1, 0
	addi.d	$a2, $a2, 4
	addi.d	$t7, $t7, 1
	addi.d	$s3, $s3, -1
	addi.d	$ra, $ra, 4
	addi.d	$s8, $s8, -1
	addi.d	$s1, $s1, 4
	addi.d	$s5, $s5, 4
	addi.d	$s7, $s7, 4
	beqz	$s8, .LBB0_74
.LBB0_81:                               # %for.body184
                                        #   Parent Loop BB0_75 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa3, $a2, 0
	fadd.s	$fa5, $fa2, $fa0
	fcmp.clt.s	$fcc0, $fa3, $fa5
	fld.s	$fa4, $ra, 0
	add.d	$s6, $t8, $s3
	fsel	$fs0, $fa3, $fa5, $fcc0
	movcf2gr	$s2, $fcc0
	maskeqz	$s2, $s6, $s2
	fadd.s	$fa5, $fa4, $fa0
	fcmp.cule.s	$fcc0, $fa5, $fs0
	st.w	$s2, $s5, 0
	bcnez	$fcc0, .LBB0_83
# %bb.82:                               # %if.then201
                                        #   in Loop: Header=BB0_81 Depth=2
	ld.w	$s2, $s7, 0
	sub.d	$s2, $t4, $s2
	st.w	$s2, $s5, 0
	fmov.s	$fs0, $fa5
.LBB0_83:                               # %if.end203
                                        #   in Loop: Header=BB0_81 Depth=2
	fcmp.cult.s	$fcc0, $fa3, $fa4
	bcnez	$fcc0, .LBB0_80
# %bb.84:                               # %if.then206
                                        #   in Loop: Header=BB0_81 Depth=2
	fst.s	$fa3, $ra, 0
	st.w	$t6, $s7, 0
	b	.LBB0_80
.LBB0_85:
	movgr2fr.w	$fs0, $zero
.LBB0_86:                               # %for.end227
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $a1, %pc_lo12(G__align11.mseq1)
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $a1, %pc_lo12(G__align11.mseq2)
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	addi.w	$s2, $a0, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$t7, $sp, 128                   # 8-byte Folded Reload
	bltz	$s2, .LBB0_94
# %bb.87:                               # %for.body.preheader.i
	addi.d	$a2, $s3, 1
	bstrpick.d	$a1, $a2, 31, 0
	ori	$a3, $zero, 4
	bgeu	$a1, $a3, .LBB0_89
# %bb.88:
	move	$a2, $zero
	b	.LBB0_92
.LBB0_89:                               # %vector.ph305
	pcalau12i	$a3, %pc_hi20(.LCPI0_1)
	vld	$vr0, $a3, %pc_lo12(.LCPI0_1)
	bstrpick.d	$a2, $a2, 31, 2
	slli.d	$a2, $a2, 2
	addi.d	$a3, $t7, 16
	move	$a4, $a2
	.p2align	4, , 16
.LBB0_90:                               # %vector.body308
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a3, -16
	vld	$vr2, $a3, 0
	vshuf4i.w	$vr3, $vr0, 8
	vaddi.wu	$vr4, $vr3, 1
	vaddi.wu	$vr3, $vr3, 3
	vpickve2gr.d	$a5, $vr1, 0
	vstelm.w	$vr4, $a5, 0, 0
	vpickve2gr.d	$a5, $vr1, 1
	vstelm.w	$vr4, $a5, 0, 1
	vpickve2gr.d	$a5, $vr2, 0
	vstelm.w	$vr3, $a5, 0, 0
	vpickve2gr.d	$a5, $vr2, 1
	vstelm.w	$vr3, $a5, 0, 1
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB0_90
# %bb.91:                               # %middle.block313
	beq	$a1, $a2, .LBB0_94
.LBB0_92:                               # %for.body.i.preheader
	alsl.d	$a3, $a2, $t7, 3
	sub.d	$a1, $a1, $a2
	addi.d	$a2, $a2, 1
	.p2align	4, , 16
.LBB0_93:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a3, 0
	st.w	$a2, $a4, 0
	addi.d	$a3, $a3, 8
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 1
	bnez	$a1, .LBB0_93
.LBB0_94:                               # %for.cond8.preheader.i
	addi.w	$a1, $a0, 0
	bltz	$a1, .LBB0_108
# %bb.95:                               # %iter.check319
	ld.d	$a1, $t7, 0
	addi.d	$a4, $a0, 1
	bstrpick.d	$a2, $a4, 31, 0
	ori	$a3, $zero, 3
	bltu	$a3, $a2, .LBB0_97
# %bb.96:
	move	$a3, $zero
	b	.LBB0_106
.LBB0_97:                               # %vector.main.loop.iter.check321
	ori	$a3, $zero, 16
	bgeu	$a2, $a3, .LBB0_99
# %bb.98:
	move	$a3, $zero
	b	.LBB0_103
.LBB0_99:                               # %vector.ph322
	bstrpick.d	$a3, $a4, 31, 4
	slli.d	$a3, $a3, 4
	pcalau12i	$a5, %pc_hi20(.LCPI0_2)
	xvld	$xr0, $a5, %pc_lo12(.LCPI0_2)
	addi.d	$a5, $a1, 32
	xvrepli.b	$xr1, -1
	xvrepli.w	$xr2, -9
	move	$a6, $a3
	.p2align	4, , 16
.LBB0_100:                              # %vector.body325
                                        # =>This Inner Loop Header: Depth=1
	xvxor.v	$xr3, $xr0, $xr1
	xvsub.w	$xr4, $xr2, $xr0
	xvst	$xr3, $a5, -32
	xvst	$xr4, $a5, 0
	xvaddi.wu	$xr0, $xr0, 16
	addi.d	$a6, $a6, -16
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB0_100
# %bb.101:                              # %middle.block331
	beq	$a2, $a3, .LBB0_108
# %bb.102:                              # %vec.epilog.iter.check336
	andi	$a5, $a4, 12
	beqz	$a5, .LBB0_106
.LBB0_103:                              # %vec.epilog.ph335
	move	$a5, $a3
	pcalau12i	$a3, %pc_hi20(.LCPI0_3)
	vld	$vr0, $a3, %pc_lo12(.LCPI0_3)
	bstrpick.d	$a3, $a4, 31, 2
	slli.d	$a3, $a3, 2
	vreplgr2vr.w	$vr1, $a5
	vor.v	$vr0, $vr1, $vr0
	sub.d	$a4, $a5, $a3
	alsl.d	$a5, $a5, $a1, 2
	vrepli.b	$vr1, -1
	.p2align	4, , 16
.LBB0_104:                              # %vec.epilog.vector.body343
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr2, $vr0, $vr1
	vst	$vr2, $a5, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 16
	bnez	$a4, .LBB0_104
# %bb.105:                              # %vec.epilog.middle.block348
	beq	$a2, $a3, .LBB0_108
.LBB0_106:                              # %for.body12.i.preheader
	alsl.d	$a1, $a3, $a1, 2
	nor	$a4, $a3, $zero
	sub.d	$a2, $a2, $a3
	.p2align	4, , 16
.LBB0_107:                              # %for.body12.i
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a4, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, -1
	addi.d	$a4, $a4, -1
	bnez	$a2, .LBB0_107
.LBB0_108:                              # %for.end19.i
	ld.d	$a2, $s4, 0
	add.w	$a1, $a0, $s3
	add.d	$a3, $a2, $a1
	st.d	$a3, $s4, 0
	stx.b	$zero, $a2, $a1
	ld.d	$a2, $s1, 0
	add.d	$a3, $a2, $a1
	st.d	$a3, $s1, 0
	stx.b	$zero, $a2, $a1
	bltz	$a1, .LBB0_124
# %bb.109:                              # %for.body33.i.preheader
	move	$a3, $zero
	addi.w	$a2, $zero, -1
	ori	$a4, $zero, 1
	ori	$a5, $zero, 45
	.p2align	4, , 16
.LBB0_110:                              # %for.body33.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_116 Depth 2
                                        #     Child Loop BB0_120 Depth 2
	addi.w	$a7, $s3, 0
	slli.d	$a6, $a7, 3
	ldx.d	$a6, $t7, $a6
	addi.w	$t0, $a0, 0
	slli.d	$t1, $t0, 2
	ldx.w	$t1, $a6, $t1
	bge	$a2, $t1, .LBB0_113
# %bb.111:                              # %if.else.i
                                        #   in Loop: Header=BB0_110 Depth=1
	beqz	$t1, .LBB0_114
# %bb.112:                              # %if.then52.i
                                        #   in Loop: Header=BB0_110 Depth=1
	sub.w	$a6, $s3, $t1
	b	.LBB0_115
	.p2align	4, , 16
.LBB0_113:                              # %if.then.i
                                        #   in Loop: Header=BB0_110 Depth=1
	addi.w	$a6, $s3, -1
	nor	$t2, $a6, $zero
	add.w	$t3, $s3, $t2
	bnez	$t3, .LBB0_116
	b	.LBB0_118
	.p2align	4, , 16
.LBB0_114:                              # %if.else59.i
                                        #   in Loop: Header=BB0_110 Depth=1
	addi.w	$a6, $s3, -1
.LBB0_115:                              # %if.end62.i
                                        #   in Loop: Header=BB0_110 Depth=1
	move	$t1, $a2
	nor	$t2, $a6, $zero
	add.w	$t3, $s3, $t2
	beqz	$t3, .LBB0_118
	.p2align	4, , 16
.LBB0_116:                              # %while.body.i154
                                        #   Parent Loop BB0_110 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t4, $s0, 0
	ld.d	$t5, $s4, 0
	add.d	$t4, $t4, $a6
	ldx.b	$t4, $t4, $t3
	addi.d	$t6, $t5, -1
	st.d	$t6, $s4, 0
	st.b	$t4, $t5, -1
	ld.d	$t4, $s1, 0
	addi.d	$t5, $t4, -1
	st.d	$t5, $s1, 0
	addi.d	$t3, $t3, -1
	st.b	$a5, $t4, -1
	bnez	$t3, .LBB0_116
# %bb.117:                              # %while.end.loopexit.i
                                        #   in Loop: Header=BB0_110 Depth=1
	add.d	$a3, $s3, $a3
	add.d	$a3, $t2, $a3
.LBB0_118:                              # %while.end.i
                                        #   in Loop: Header=BB0_110 Depth=1
	add.w	$a0, $t1, $a0
	beq	$t1, $a2, .LBB0_121
# %bb.119:                              # %while.body76.preheader.i
                                        #   in Loop: Header=BB0_110 Depth=1
	nor	$t1, $t1, $zero
	.p2align	4, , 16
.LBB0_120:                              # %while.body76.i
                                        #   Parent Loop BB0_110 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t2, $s4, 0
	addi.d	$t3, $t2, -1
	st.d	$t3, $s4, 0
	st.b	$a5, $t2, -1
	ld.d	$t2, $fp, 0
	ld.d	$t3, $s1, 0
	add.d	$t2, $t2, $a0
	ldx.b	$t2, $t2, $t1
	addi.d	$t4, $t3, -1
	st.d	$t4, $s1, 0
	st.b	$t2, $t3, -1
	addi.d	$t1, $t1, -1
	addi.d	$a3, $a3, 1
	bnez	$t1, .LBB0_120
.LBB0_121:                              # %while.end87.i
                                        #   in Loop: Header=BB0_110 Depth=1
	blt	$a7, $a4, .LBB0_124
# %bb.122:                              # %while.end87.i
                                        #   in Loop: Header=BB0_110 Depth=1
	blt	$t0, $a4, .LBB0_124
# %bb.123:                              # %if.end93.i
                                        #   in Loop: Header=BB0_110 Depth=1
	ld.d	$a7, $s0, 0
	ld.d	$t0, $s4, 0
	ldx.b	$a7, $a7, $a6
	addi.d	$t1, $t0, -1
	st.d	$t1, $s4, 0
	st.b	$a7, $t0, -1
	ld.d	$a7, $fp, 0
	ld.d	$t0, $s1, 0
	ldx.b	$a7, $a7, $a0
	addi.d	$t1, $t0, -1
	st.d	$t1, $s1, 0
	addi.w	$a3, $a3, 2
	st.b	$a7, $t0, -1
	move	$s3, $a6
	bge	$a1, $a3, .LBB0_110
.LBB0_124:                              # %Atracking.exit
	ld.d	$s2, $s4, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	lu12i.w	$a4, 1220
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	blt	$a2, $a3, .LBB0_127
# %bb.125:                              # %Atracking.exit
	ori	$a0, $a4, 2881
	bge	$a3, $a0, .LBB0_127
.LBB0_126:                              # %if.end239
	ld.d	$a0, $s0, 0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s1, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	fmov.s	$fa0, $fs0
	fld.d	$fs0, $sp, 160                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 256
	ret
.LBB0_127:                              # %if.then237
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	ori	$a4, $a4, 2880
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(G__align11.mseq1)
	ld.d	$s2, $a0, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $a0, %pc_lo12(G__align11.mseq2)
	b	.LBB0_126
.Lfunc_end0:
	.size	G__align11, .Lfunc_end0-G__align11
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function G__align11_noalign
.LCPI1_0:
	.dword	0x3ff4cccccccccccd              # double 1.3
	.text
	.globl	G__align11_noalign
	.p2align	5
	.type	G__align11_noalign,@function
G__align11_noalign:                     # @G__align11_noalign
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
	move	$s2, $a3
	ld.d	$a3, $a3, 0
	move	$s0, $a4
	move	$s3, $a2
	move	$s7, $a1
	move	$fp, $a0
	move	$a0, $a3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	st.d	$s0, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a1, $s0, 0
	move	$s5, $a0
	addi.w	$s4, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 1
	addi.w	$s1, $s0, 0
	blt	$s4, $a0, .LBB1_27
# %bb.1:                                # %entry
	blez	$s1, .LBB1_27
.LBB1_2:                                # %if.end
	pcalau12i	$a3, %pc_hi20(G__align11_noalign.orlgth1)
	ld.w	$a1, $a3, %pc_lo12(G__align11_noalign.orlgth1)
	pcalau12i	$a4, %pc_hi20(G__align11_noalign.orlgth2)
	ld.w	$a0, $a4, %pc_lo12(G__align11_noalign.orlgth2)
	pcalau12i	$a5, %pc_hi20(G__align11_noalign.w1)
	pcalau12i	$a2, %pc_hi20(G__align11_noalign.w2)
	pcalau12i	$a6, %pc_hi20(G__align11_noalign.initverticalw)
	pcalau12i	$s6, %pc_hi20(G__align11_noalign.lastverticalw)
	pcalau12i	$s8, %pc_hi20(G__align11_noalign.m)
	blt	$a1, $s4, .LBB1_4
# %bb.3:                                # %if.end
	bge	$a0, $s1, .LBB1_8
.LBB1_4:                                # %if.then15
	st.d	$a6, $sp, 80                    # 8-byte Folded Spill
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s2, $sp, 32                    # 8-byte Folded Spill
	ori	$a2, $zero, 1
	pcalau12i	$a7, %pc_hi20(G__align11_noalign.match)
	pcalau12i	$a6, %pc_hi20(G__align11_noalign.floatwork)
	st.d	$a6, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a6, %pc_hi20(G__align11_noalign.intwork)
	st.d	$a6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 40                    # 8-byte Folded Spill
	st.d	$a3, $sp, 104                   # 8-byte Folded Spill
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a5
	move	$s7, $a7
	blt	$a1, $a2, .LBB1_7
# %bb.5:                                # %if.then15
	blt	$a0, $a2, .LBB1_7
# %bb.6:                                # %if.then20
	ld.d	$a0, $fp, %pc_lo12(G__align11_noalign.w1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(G__align11_noalign.w2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, %pc_lo12(G__align11_noalign.match)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(G__align11_noalign.initverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, %pc_lo12(G__align11_noalign.lastverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, %pc_lo12(G__align11_noalign.m)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(G__align11_noalign.floatwork)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(G__align11_noalign.intwork)
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(G__align11_noalign.orlgth1)
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(G__align11_noalign.orlgth2)
.LBB1_7:                                # %if.end21
	pcalau12i	$a2, %pc_hi20(.LCPI1_0)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI1_0)
	movgr2fr.w	$fa1, $s5
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a2, $fa1
	slt	$a3, $a2, $a1
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	or	$s3, $a1, $a2
	movgr2fr.w	$fa1, $s0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	slt	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	or	$s5, $a0, $a1
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	addi.w	$s8, $s5, 102
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, %pc_lo12(G__align11_noalign.w1)
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	st.d	$a0, $s4, %pc_lo12(G__align11_noalign.w2)
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, %pc_lo12(G__align11_noalign.match)
	addi.w	$s2, $s3, 102
	move	$a0, $s2
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $s7, %pc_lo12(G__align11_noalign.initverticalw)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, %pc_lo12(G__align11_noalign.lastverticalw)
	move	$a0, $s8
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s8, %pc_lo12(G__align11_noalign.m)
	slt	$a0, $s5, $s3
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s3, $a0
	or	$a0, $a0, $a1
	addi.w	$s2, $a0, 102
	ori	$a0, $zero, 26
	move	$a1, $s2
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(G__align11_noalign.floatwork)
	ori	$a0, $zero, 26
	move	$a1, $s2
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	move	$a6, $s7
	move	$a2, $s4
	move	$a5, $fp
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(G__align11_noalign.intwork)
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.w	$s3, $a0, %pc_lo12(G__align11_noalign.orlgth1)
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.w	$s5, $a0, %pc_lo12(G__align11_noalign.orlgth2)
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
.LBB1_8:                                # %if.end71
	ld.d	$a0, $a5, %pc_lo12(G__align11_noalign.w1)
	ld.d	$a4, $a2, %pc_lo12(G__align11_noalign.w2)
	ld.d	$a1, $a6, %pc_lo12(G__align11_noalign.initverticalw)
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	ld.d	$a3, $s2, 0
	beqz	$s4, .LBB1_11
# %bb.9:                                # %while.body.i.preheader
	ld.b	$a5, $a2, 0
	slli.d	$a5, $a5, 9
	add.d	$a5, $fp, $a5
	move	$a6, $a1
	move	$t0, $a3
	move	$a7, $s5
	.p2align	4, , 16
.LBB1_10:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$t1, $t0, 0
	slli.d	$t1, $t1, 2
	ldx.w	$t1, $a5, $t1
	addi.w	$a7, $a7, -1
	addi.d	$t0, $t0, 1
	movgr2fr.w	$fa0, $t1
	ffint.s.w	$fa0, $fa0
	addi.d	$t1, $a6, 4
	fst.s	$fa0, $a6, 0
	move	$a6, $t1
	bnez	$a7, .LBB1_10
.LBB1_11:                               # %match_calc_mtx.exit
	movgr2fr.w	$fa0, $s7
	beqz	$s1, .LBB1_14
# %bb.12:                               # %while.body.i101.preheader
	ld.b	$a5, $a3, 0
	slli.d	$a5, $a5, 9
	add.d	$a5, $fp, $a5
	move	$a6, $a0
	move	$t0, $a2
	move	$a7, $s0
	.p2align	4, , 16
.LBB1_13:                               # %while.body.i101
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$t1, $t0, 0
	slli.d	$t1, $t1, 2
	ldx.w	$t1, $a5, $t1
	addi.w	$a7, $a7, -1
	addi.d	$t0, $t0, 1
	movgr2fr.w	$fa1, $t1
	ffint.s.w	$fa1, $fa1
	addi.d	$t1, $a6, 4
	fst.s	$fa1, $a6, 0
	move	$a6, $t1
	bnez	$a7, .LBB1_13
.LBB1_14:                               # %match_calc_mtx.exit112
	pcalau12i	$a5, %got_pc_hi20(outgap)
	ld.d	$a5, $a5, %got_pc_lo12(outgap)
	ld.w	$a7, $a5, 0
	ffint.s.w	$fa1, $fa0
	ori	$t0, $zero, 1
	slli.d	$a6, $s0, 32
	addi.d	$a5, $s0, 1
	bne	$a7, $t0, .LBB1_19
# %bb.15:                               # %for.cond.preheader
	blt	$s4, $t0, .LBB1_31
# %bb.16:                               # %iter.check
	addi.d	$t0, $s5, 1
	bstrpick.d	$t0, $t0, 31, 0
	addi.d	$t1, $t0, -1
	ori	$t2, $zero, 3
	ori	$t3, $zero, 1
	bgeu	$t2, $t1, .LBB1_29
# %bb.17:                               # %vector.main.loop.iter.check
	ori	$t2, $zero, 16
	bgeu	$t1, $t2, .LBB1_20
# %bb.18:
	move	$t2, $zero
	b	.LBB1_24
.LBB1_19:                               # %if.end91
	bge	$s1, $t0, .LBB1_47
	b	.LBB1_35
.LBB1_20:                               # %vector.ph
	move	$t2, $t1
	bstrins.d	$t2, $zero, 3, 0
	xvreplve0.w	$xr0, $xr1
	addi.d	$t3, $a1, 36
	move	$t4, $t2
	.p2align	4, , 16
.LBB1_21:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $t3, -32
	xvld	$xr3, $t3, 0
	xvfadd.s	$xr2, $xr2, $xr0
	xvfadd.s	$xr3, $xr3, $xr0
	xvst	$xr2, $t3, -32
	xvst	$xr3, $t3, 0
	addi.d	$t4, $t4, -16
	addi.d	$t3, $t3, 64
	bnez	$t4, .LBB1_21
# %bb.22:                               # %middle.block
	beq	$t1, $t2, .LBB1_31
# %bb.23:                               # %vec.epilog.iter.check
	andi	$t3, $t1, 12
	beqz	$t3, .LBB1_28
.LBB1_24:                               # %vec.epilog.ph
	move	$t4, $t1
	bstrins.d	$t4, $zero, 1, 0
	ori	$t5, $zero, 1
	move	$t3, $t1
	bstrins.d	$t3, $t5, 1, 0
	vreplvei.w	$vr0, $vr1, 0
	alsl.d	$t5, $t2, $a1, 2
	addi.d	$t5, $t5, 4
	sub.d	$t2, $t2, $t4
	.p2align	4, , 16
.LBB1_25:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $t5, 0
	vfadd.s	$vr2, $vr2, $vr0
	vst	$vr2, $t5, 0
	addi.d	$t2, $t2, 4
	addi.d	$t5, $t5, 16
	bnez	$t2, .LBB1_25
# %bb.26:                               # %vec.epilog.middle.block
	bne	$t1, $t4, .LBB1_29
	b	.LBB1_31
.LBB1_27:                               # %if.then
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	move	$a2, $s4
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB1_2
.LBB1_28:
	addi.d	$t3, $t2, 1
.LBB1_29:                               # %for.body.preheader
	alsl.d	$t1, $t3, $a1, 2
	sub.d	$t0, $t0, $t3
	.p2align	4, , 16
.LBB1_30:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $t1, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $t1, 0
	addi.d	$t0, $t0, -1
	addi.d	$t1, $t1, 4
	bnez	$t0, .LBB1_30
.LBB1_31:                               # %for.cond80.preheader
	ori	$t3, $zero, 1
	blt	$s1, $t3, .LBB1_35
# %bb.32:                               # %iter.check183
	bstrpick.d	$t0, $a5, 31, 0
	addi.d	$t1, $t0, -1
	ori	$t2, $zero, 3
	bgeu	$t2, $t1, .LBB1_45
# %bb.33:                               # %vector.main.loop.iter.check185
	ori	$t2, $zero, 16
	bgeu	$t1, $t2, .LBB1_37
# %bb.34:
	move	$t2, $zero
	b	.LBB1_41
.LBB1_35:                               # %for.end104
	bnez	$s1, .LBB1_61
# %bb.36:
	movgr2fr.w	$fa0, $zero
	b	.LBB1_62
.LBB1_37:                               # %vector.ph186
	move	$t2, $t1
	bstrins.d	$t2, $zero, 3, 0
	xvreplve0.w	$xr0, $xr1
	addi.d	$t3, $a0, 36
	move	$t4, $t2
	.p2align	4, , 16
.LBB1_38:                               # %vector.body191
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $t3, -32
	xvld	$xr3, $t3, 0
	xvfadd.s	$xr2, $xr2, $xr0
	xvfadd.s	$xr3, $xr3, $xr0
	xvst	$xr2, $t3, -32
	xvst	$xr3, $t3, 0
	addi.d	$t4, $t4, -16
	addi.d	$t3, $t3, 64
	bnez	$t4, .LBB1_38
# %bb.39:                               # %middle.block196
	beq	$t1, $t2, .LBB1_47
# %bb.40:                               # %vec.epilog.iter.check201
	andi	$t3, $t1, 12
	beqz	$t3, .LBB1_44
.LBB1_41:                               # %vec.epilog.ph200
	move	$t4, $t1
	bstrins.d	$t4, $zero, 1, 0
	ori	$t5, $zero, 1
	move	$t3, $t1
	bstrins.d	$t3, $t5, 1, 0
	vreplvei.w	$vr0, $vr1, 0
	alsl.d	$t5, $t2, $a0, 2
	addi.d	$t5, $t5, 4
	sub.d	$t2, $t2, $t4
	.p2align	4, , 16
.LBB1_42:                               # %vec.epilog.vector.body208
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $t5, 0
	vfadd.s	$vr2, $vr2, $vr0
	vst	$vr2, $t5, 0
	addi.d	$t2, $t2, 4
	addi.d	$t5, $t5, 16
	bnez	$t2, .LBB1_42
# %bb.43:                               # %vec.epilog.middle.block213
	bne	$t1, $t4, .LBB1_45
	b	.LBB1_47
.LBB1_44:
	addi.d	$t3, $t2, 1
.LBB1_45:                               # %for.body84.preheader
	alsl.d	$t1, $t3, $a0, 2
	sub.d	$t0, $t0, $t3
	.p2align	4, , 16
.LBB1_46:                               # %for.body84
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $t1, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $t1, 0
	addi.d	$t0, $t0, -1
	addi.d	$t1, $t1, 4
	bnez	$t0, .LBB1_46
.LBB1_47:                               # %iter.check219
	ld.d	$t0, $s8, %pc_lo12(G__align11_noalign.m)
	bstrpick.d	$t1, $a5, 31, 0
	addi.d	$t2, $t1, -1
	ori	$t4, $zero, 4
	ori	$t3, $zero, 1
	bltu	$t2, $t4, .LBB1_59
# %bb.48:                               # %vector.memcheck
	sub.d	$t4, $t0, $a0
	addi.d	$t4, $t4, 4
	ori	$t5, $zero, 64
	bltu	$t4, $t5, .LBB1_59
# %bb.49:                               # %vector.main.loop.iter.check221
	ori	$t3, $zero, 16
	bgeu	$t2, $t3, .LBB1_51
# %bb.50:
	move	$t4, $zero
	b	.LBB1_55
.LBB1_51:                               # %vector.ph222
	move	$t4, $t2
	bstrins.d	$t4, $zero, 3, 0
	addi.d	$t3, $a0, 32
	addi.d	$t5, $t0, 36
	move	$t6, $t4
	.p2align	4, , 16
.LBB1_52:                               # %vector.body225
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $t3, -32
	xvld	$xr2, $t3, 0
	xvst	$xr0, $t5, -32
	xvst	$xr2, $t5, 0
	addi.d	$t3, $t3, 64
	addi.d	$t6, $t6, -16
	addi.d	$t5, $t5, 64
	bnez	$t6, .LBB1_52
# %bb.53:                               # %middle.block230
	beq	$t2, $t4, .LBB1_61
# %bb.54:                               # %vec.epilog.iter.check235
	andi	$t3, $t2, 12
	beqz	$t3, .LBB1_58
.LBB1_55:                               # %vec.epilog.ph234
	move	$t5, $t2
	bstrins.d	$t5, $zero, 1, 0
	ori	$t6, $zero, 1
	move	$t3, $t2
	bstrins.d	$t3, $t6, 1, 0
	alsl.d	$t6, $t4, $a0, 2
	alsl.d	$t7, $t4, $t0, 2
	addi.d	$t7, $t7, 4
	sub.d	$t4, $t4, $t5
	.p2align	4, , 16
.LBB1_56:                               # %vec.epilog.vector.body240
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $t6, 0
	vst	$vr0, $t7, 0
	addi.d	$t6, $t6, 16
	addi.d	$t4, $t4, 4
	addi.d	$t7, $t7, 16
	bnez	$t4, .LBB1_56
# %bb.57:                               # %vec.epilog.middle.block245
	bne	$t2, $t5, .LBB1_59
	b	.LBB1_61
.LBB1_58:
	addi.d	$t3, $t4, 1
.LBB1_59:                               # %for.body96.preheader
	alsl.d	$t2, $t3, $a0, 2
	addi.d	$t2, $t2, -4
	alsl.d	$t0, $t3, $t0, 2
	sub.d	$t1, $t1, $t3
	.p2align	4, , 16
.LBB1_60:                               # %for.body96
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $t2, 0
	fst.s	$fa0, $t0, 0
	addi.d	$t2, $t2, 4
	addi.d	$t1, $t1, -1
	addi.d	$t0, $t0, 4
	bnez	$t1, .LBB1_60
.LBB1_61:                               # %if.else
	ori	$t0, $zero, 0
	lu32i.d	$t0, -1
	add.d	$t0, $a6, $t0
	srai.d	$t0, $t0, 30
	fldx.s	$fa0, $a0, $t0
.LBB1_62:                               # %if.end113
	ld.d	$t0, $s6, %pc_lo12(G__align11_noalign.lastverticalw)
	sltu	$a7, $zero, $a7
	add.w	$a7, $a7, $s5
	ori	$t1, $zero, 2
	fst.s	$fa0, $t0, 0
	blt	$a7, $t1, .LBB1_74
# %bb.63:                               # %for.body121.lr.ph
	movgr2fr.w	$fa0, $s3
	ffint.s.w	$fa2, $fa0
	ld.d	$t1, $s8, %pc_lo12(G__align11_noalign.m)
	ori	$t2, $zero, 0
	lu32i.d	$t2, -1
	add.d	$a6, $a6, $t2
	srai.d	$a6, $a6, 30
	bstrpick.d	$t2, $a5, 31, 0
	addi.d	$a5, $t1, 4
	addi.d	$t1, $t2, -1
	movgr2fr.w	$fa0, $zero
	ori	$t2, $zero, 1
	ori	$t3, $zero, 1
	b	.LBB1_66
	.p2align	4, , 16
.LBB1_64:                               # %match_calc_mtx.exit127.thread
                                        #   in Loop: Header=BB1_66 Depth=1
	fld.s	$fa3, $t5, 0
	fst.s	$fa3, $a0, 0
.LBB1_65:                               # %for.end163
                                        #   in Loop: Header=BB1_66 Depth=1
	fldx.s	$fa3, $a0, $a6
	slli.d	$a4, $t3, 2
	addi.d	$t3, $t3, 1
	fstx.s	$fa3, $t0, $a4
	move	$a4, $t4
	beq	$t3, $a7, .LBB1_75
.LBB1_66:                               # %for.body121
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_68 Depth 2
                                        #     Child Loop BB1_72 Depth 2
	alsl.d	$t5, $t3, $a1, 2
	fld.s	$fa3, $t5, -4
	move	$t4, $a0
	move	$a0, $a4
	fst.s	$fa3, $t4, 0
	beqz	$s1, .LBB1_64
# %bb.67:                               # %while.body.i116.preheader
                                        #   in Loop: Header=BB1_66 Depth=1
	ldx.b	$a4, $a3, $t3
	slli.d	$a4, $a4, 9
	add.d	$a4, $fp, $a4
	move	$t6, $a0
	move	$t8, $a2
	move	$t7, $s0
	.p2align	4, , 16
.LBB1_68:                               # %while.body.i116
                                        #   Parent Loop BB1_66 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$s2, $t8, 0
	slli.d	$s2, $s2, 2
	ldx.w	$s2, $a4, $s2
	addi.w	$t7, $t7, -1
	addi.d	$t8, $t8, 1
	movgr2fr.w	$fa3, $s2
	ffint.s.w	$fa3, $fa3
	addi.d	$s2, $t6, 4
	fst.s	$fa3, $t6, 0
	move	$t6, $s2
	bnez	$t7, .LBB1_68
# %bb.69:                               # %match_calc_mtx.exit127
                                        #   in Loop: Header=BB1_66 Depth=1
	fld.s	$fa3, $t5, 0
	fst.s	$fa3, $a0, 0
	blt	$s1, $t2, .LBB1_65
# %bb.70:                               # %for.body135.preheader
                                        #   in Loop: Header=BB1_66 Depth=1
	fld.s	$fa3, $t4, 0
	addi.d	$a4, $a0, 4
	move	$t5, $t1
	move	$t6, $a5
	move	$t7, $t4
	b	.LBB1_72
	.p2align	4, , 16
.LBB1_71:                               # %if.end154
                                        #   in Loop: Header=BB1_72 Depth=2
	fadd.s	$fa5, $fa3, $fa1
	fcmp.clt.s	$fcc0, $fa4, $fa5
	fsel	$fa5, $fa4, $fa5, $fcc0
	fld.s	$fa6, $t6, 0
	fcmp.cle.s	$fcc0, $fa3, $fa4
	fsel	$fa3, $fa3, $fa4, $fcc0
	fadd.s	$fa3, $fa3, $fa2
	fadd.s	$fa4, $fa6, $fa2
	fst.s	$fa4, $t6, 0
	fld.s	$fa4, $a4, 0
	fadd.s	$fa0, $fa0, $fa1
	fcmp.clt.s	$fcc0, $fa5, $fa0
	fsel	$fa0, $fa5, $fa0, $fcc0
	fadd.s	$fa4, $fa0, $fa4
	fst.s	$fa4, $a4, 0
	addi.d	$t7, $t7, 4
	addi.d	$t6, $t6, 4
	addi.d	$t5, $t5, -1
	addi.d	$a4, $a4, 4
	beqz	$t5, .LBB1_65
.LBB1_72:                               # %for.body135
                                        #   Parent Loop BB1_66 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa4, $t7, 0
	fld.s	$fa0, $t6, 0
	fcmp.cult.s	$fcc0, $fa4, $fa0
	bcnez	$fcc0, .LBB1_71
# %bb.73:                               # %if.then153
                                        #   in Loop: Header=BB1_72 Depth=2
	fst.s	$fa4, $t6, 0
	b	.LBB1_71
.LBB1_74:
	movgr2fr.w	$fa0, $zero
.LBB1_75:                               # %for.end171
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
	ret
.Lfunc_end1:
	.size	G__align11_noalign, .Lfunc_end1-G__align11_noalign
                                        # -- End function
	.type	G__align11.m,@object            # @G__align11.m
	.local	G__align11.m
	.comm	G__align11.m,8,8
	.type	G__align11.ijp,@object          # @G__align11.ijp
	.local	G__align11.ijp
	.comm	G__align11.ijp,8,8
	.type	G__align11.mp,@object           # @G__align11.mp
	.local	G__align11.mp
	.comm	G__align11.mp,8,8
	.type	G__align11.w1,@object           # @G__align11.w1
	.local	G__align11.w1
	.comm	G__align11.w1,8,8
	.type	G__align11.w2,@object           # @G__align11.w2
	.local	G__align11.w2
	.comm	G__align11.w2,8,8
	.type	G__align11.match,@object        # @G__align11.match
	.local	G__align11.match
	.comm	G__align11.match,8,8
	.type	G__align11.initverticalw,@object # @G__align11.initverticalw
	.local	G__align11.initverticalw
	.comm	G__align11.initverticalw,8,8
	.type	G__align11.lastverticalw,@object # @G__align11.lastverticalw
	.local	G__align11.lastverticalw
	.comm	G__align11.lastverticalw,8,8
	.type	G__align11.mseq1,@object        # @G__align11.mseq1
	.local	G__align11.mseq1
	.comm	G__align11.mseq1,8,8
	.type	G__align11.mseq2,@object        # @G__align11.mseq2
	.local	G__align11.mseq2
	.comm	G__align11.mseq2,8,8
	.type	G__align11.mseq,@object         # @G__align11.mseq
	.local	G__align11.mseq
	.comm	G__align11.mseq,8,8
	.type	G__align11.intwork,@object      # @G__align11.intwork
	.local	G__align11.intwork
	.comm	G__align11.intwork,8,8
	.type	G__align11.floatwork,@object    # @G__align11.floatwork
	.local	G__align11.floatwork
	.comm	G__align11.floatwork,8,8
	.type	G__align11.orlgth1,@object      # @G__align11.orlgth1
	.local	G__align11.orlgth1
	.comm	G__align11.orlgth1,4,4
	.type	G__align11.orlgth2,@object      # @G__align11.orlgth2
	.local	G__align11.orlgth2
	.comm	G__align11.orlgth2,4,4
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"WARNING (g11): lgth1=%d, lgth2=%d\n"
	.size	.L.str, 35

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"alloclen=%d, resultlen=%d, N=%d\n"
	.size	.L.str.1, 33

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"LENGTH OVER!\n"
	.size	.L.str.2, 14

	.type	G__align11_noalign.m,@object    # @G__align11_noalign.m
	.local	G__align11_noalign.m
	.comm	G__align11_noalign.m,8,8
	.type	G__align11_noalign.w1,@object   # @G__align11_noalign.w1
	.local	G__align11_noalign.w1
	.comm	G__align11_noalign.w1,8,8
	.type	G__align11_noalign.w2,@object   # @G__align11_noalign.w2
	.local	G__align11_noalign.w2
	.comm	G__align11_noalign.w2,8,8
	.type	G__align11_noalign.match,@object # @G__align11_noalign.match
	.local	G__align11_noalign.match
	.comm	G__align11_noalign.match,8,8
	.type	G__align11_noalign.initverticalw,@object # @G__align11_noalign.initverticalw
	.local	G__align11_noalign.initverticalw
	.comm	G__align11_noalign.initverticalw,8,8
	.type	G__align11_noalign.lastverticalw,@object # @G__align11_noalign.lastverticalw
	.local	G__align11_noalign.lastverticalw
	.comm	G__align11_noalign.lastverticalw,8,8
	.type	G__align11_noalign.intwork,@object # @G__align11_noalign.intwork
	.local	G__align11_noalign.intwork
	.comm	G__align11_noalign.intwork,8,8
	.type	G__align11_noalign.floatwork,@object # @G__align11_noalign.floatwork
	.local	G__align11_noalign.floatwork
	.comm	G__align11_noalign.floatwork,8,8
	.type	G__align11_noalign.orlgth1,@object # @G__align11_noalign.orlgth1
	.local	G__align11_noalign.orlgth1
	.comm	G__align11_noalign.orlgth1,4,4
	.type	G__align11_noalign.orlgth2,@object # @G__align11_noalign.orlgth2
	.local	G__align11_noalign.orlgth2
	.comm	G__align11_noalign.orlgth2,4,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
