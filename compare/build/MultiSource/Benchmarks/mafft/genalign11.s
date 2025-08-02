	.file	"genalign11.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function genL__align11
.LCPI0_0:
	.dword	0x3ff4cccccccccccd              # double 1.3
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI0_1:
	.word	0xce6e6b28                      # float -1.0E+9
.LCPI0_2:
	.word	0xc97423fe                      # float -999999.875
	.text
	.globl	genL__align11
	.p2align	5
	.type	genL__align11,@function
genL__align11:                          # @genL__align11
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -320
	st.d	$ra, $sp, 312                   # 8-byte Folded Spill
	st.d	$fp, $sp, 304                   # 8-byte Folded Spill
	st.d	$s0, $sp, 296                   # 8-byte Folded Spill
	st.d	$s1, $sp, 288                   # 8-byte Folded Spill
	st.d	$s2, $sp, 280                   # 8-byte Folded Spill
	st.d	$s3, $sp, 272                   # 8-byte Folded Spill
	st.d	$s4, $sp, 264                   # 8-byte Folded Spill
	st.d	$s5, $sp, 256                   # 8-byte Folded Spill
	st.d	$s6, $sp, 248                   # 8-byte Folded Spill
	st.d	$s7, $sp, 240                   # 8-byte Folded Spill
	st.d	$s8, $sp, 232                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 224                  # 8-byte Folded Spill
	pcalau12i	$a5, %got_pc_hi20(penalty)
	ld.d	$a5, $a5, %got_pc_lo12(penalty)
	pcalau12i	$a6, %got_pc_hi20(penalty_OP)
	ld.d	$a6, $a6, %got_pc_lo12(penalty_OP)
	ld.w	$s4, $a5, 0
	pcalau12i	$a5, %got_pc_hi20(penalty_ex)
	ld.d	$a5, $a5, %got_pc_lo12(penalty_ex)
	ld.w	$a6, $a6, 0
	st.d	$a6, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a6, %got_pc_hi20(offset)
	ld.d	$a6, $a6, %got_pc_lo12(offset)
	ld.w	$a5, $a5, 0
	st.d	$a5, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$s7, %pc_hi20(genL__align11.orlgth1)
	ld.w	$s6, $s7, %pc_lo12(genL__align11.orlgth1)
	ld.w	$a5, $a6, 0
	st.d	$a5, $sp, 64                    # 8-byte Folded Spill
	st.d	$a4, $sp, 104                   # 8-byte Folded Spill
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(genL__align11.mseq1)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(genL__align11.mseq2)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	bnez	$s6, .LBB0_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$fp, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $fp, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(genL__align11.mseq1)
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$s6, $s7, %pc_lo12(genL__align11.orlgth1)
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(genL__align11.mseq2)
.LBB0_2:                                # %if.end
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	move	$s5, $a0
	addi.w	$fp, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$s1, %pc_hi20(genL__align11.orlgth2)
	ld.w	$s3, $s1, %pc_lo12(genL__align11.orlgth2)
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	addi.w	$s2, $a0, 0
	pcalau12i	$a0, %pc_hi20(genL__align11.w1)
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(genL__align11.w2)
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(genL__align11.initverticalw)
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(genL__align11.lastverticalw)
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(genL__align11.m)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(genL__align11.mp)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(genL__align11.largeM)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(genL__align11.Mp)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$s8, %pc_hi20(genL__align11.mseq)
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	blt	$s6, $fp, .LBB0_4
# %bb.3:                                # %if.end
	bge	$s3, $s2, .LBB0_8
.LBB0_4:                                # %if.then16
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	pcalau12i	$s7, %pc_hi20(genL__align11.match)
	pcalau12i	$a1, %pc_hi20(genL__align11.cpmx1)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(genL__align11.cpmx2)
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$s0, %pc_hi20(genL__align11.floatwork)
	pcalau12i	$fp, %pc_hi20(genL__align11.intwork)
	blt	$s6, $a0, .LBB0_7
# %bb.5:                                # %if.then16
	blt	$s3, $a0, .LBB0_7
# %bb.6:                                # %if.then21
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(genL__align11.w1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(genL__align11.w2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, %pc_lo12(genL__align11.match)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(genL__align11.initverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(genL__align11.lastverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(genL__align11.m)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(genL__align11.mp)
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(genL__align11.largeM)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(genL__align11.Mp)
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, %pc_lo12(genL__align11.mseq)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(genL__align11.cpmx1)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(genL__align11.cpmx2)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(genL__align11.floatwork)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(genL__align11.intwork)
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$s6, $a0, %pc_lo12(genL__align11.orlgth1)
	ld.w	$s3, $s1, %pc_lo12(genL__align11.orlgth2)
.LBB0_7:                                # %if.end22
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI0_0)
	movgr2fr.w	$fa1, $s5
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	slt	$a1, $a0, $s6
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s6, $a1
	or	$s6, $a1, $a0
	addi.w	$s4, $s6, 100
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	slt	$a1, $a0, $s3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s3, $a1
	or	$s3, $a1, $a0
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	addi.w	$s0, $s3, 100
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	move	$fp, $s5
	addi.w	$s5, $s3, 102
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(genL__align11.w1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(genL__align11.w2)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, %pc_lo12(genL__align11.match)
	addi.w	$s7, $s6, 102
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(genL__align11.initverticalw)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(genL__align11.lastverticalw)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(genL__align11.m)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(genL__align11.mp)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(genL__align11.largeM)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(njob)
	ld.d	$a1, $a1, %got_pc_lo12(njob)
	ld.w	$a2, $a1, 0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(genL__align11.Mp)
	add.w	$a1, $s0, $s4
	move	$a0, $a2
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $s8, %pc_lo12(genL__align11.mseq)
	ori	$a0, $zero, 26
	move	$a1, $s7
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(genL__align11.cpmx1)
	ori	$a0, $zero, 26
	move	$a1, $s5
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(genL__align11.cpmx2)
	slt	$a0, $s0, $s4
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $s4, $a0
	or	$a0, $a0, $a1
	addi.w	$s5, $a0, 2
	ori	$a0, $zero, 26
	move	$a1, $s5
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(genL__align11.floatwork)
	ori	$a0, $zero, 26
	move	$a1, $s5
	move	$s5, $fp
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(genL__align11.intwork)
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	st.w	$s6, $s7, %pc_lo12(genL__align11.orlgth1)
	st.w	$s3, $s1, %pc_lo12(genL__align11.orlgth2)
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
.LBB0_8:                                # %if.end84
	ld.d	$a0, $s8, %pc_lo12(genL__align11.mseq)
	ld.d	$a1, $a0, 0
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(genL__align11.mseq1)
	st.d	$a1, $a2, 0
	ld.d	$a0, $a0, 8
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(genL__align11.mseq2)
	pcalau12i	$a2, %got_pc_hi20(commonAlloc1)
	ld.d	$fp, $a2, %got_pc_lo12(commonAlloc1)
	pcalau12i	$a2, %got_pc_hi20(commonAlloc2)
	ld.d	$s0, $a2, %got_pc_lo12(commonAlloc2)
	st.d	$a0, $a1, 0
	ld.w	$a1, $fp, 0
	ld.w	$a0, $s0, 0
	blt	$a1, $s6, .LBB0_11
# %bb.9:                                # %if.end84
	blt	$a0, $s3, .LBB0_11
# %bb.10:                               # %lor.lhs.false91.if.end119_crit_edge
	pcalau12i	$a0, %got_pc_hi20(commonJP)
	ld.d	$a0, $a0, %got_pc_lo12(commonJP)
	ld.d	$t6, $a0, 0
	ld.d	$s8, $sp, 176                   # 8-byte Folded Reload
	b	.LBB0_16
.LBB0_11:                               # %if.then94
	move	$s4, $s5
	beqz	$a1, .LBB0_14
# %bb.12:                               # %if.then94
	ld.d	$s8, $sp, 176                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_15
# %bb.13:                               # %if.then99
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(commonJP)
	ld.d	$a0, $a0, %got_pc_lo12(commonJP)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.w	$s6, $s7, %pc_lo12(genL__align11.orlgth1)
	ld.w	$a1, $fp, 0
	ld.w	$s3, $s1, %pc_lo12(genL__align11.orlgth2)
	ld.w	$a0, $s0, 0
	b	.LBB0_15
.LBB0_14:
	ld.d	$s8, $sp, 176                   # 8-byte Folded Reload
.LBB0_15:                               # %if.end100
	slt	$a2, $a1, $s6
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s6, $a2
	or	$s1, $a2, $a1
	slt	$a1, $a0, $s3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s3, $a1
	or	$s3, $a1, $a0
	addi.w	$s5, $s1, 10
	addi.w	$s7, $s3, 10
	move	$a0, $s5
	move	$a1, $s7
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(commonIP)
	ld.d	$a1, $a1, %got_pc_lo12(commonIP)
	st.d	$a0, $a1, 0
	move	$a0, $s5
	move	$a1, $s7
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(commonJP)
	ld.d	$a1, $a1, %got_pc_lo12(commonJP)
	move	$t6, $a0
	st.d	$a0, $a1, 0
	st.w	$s1, $fp, 0
	st.w	$s3, $s0, 0
	move	$s5, $s4
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
.LBB0_16:                               # %if.end119
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a5, $a0, 0
	pcalau12i	$a4, %pc_hi20(genL__align11.ijpi)
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a3, $a0, %pc_lo12(genL__align11.w1)
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a2, $a0, %pc_lo12(genL__align11.w2)
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(genL__align11.initverticalw)
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	st.d	$a5, $sp, 208                   # 8-byte Folded Spill
	st.d	$a5, $a4, %pc_lo12(genL__align11.ijpi)
	pcalau12i	$a4, %pc_hi20(genL__align11.ijpj)
	st.d	$t6, $a4, %pc_lo12(genL__align11.ijpj)
	beqz	$s8, .LBB0_19
# %bb.17:                               # %while.body.lr.ph.i
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.b	$a4, $a0, 0
	pcalau12i	$a5, %got_pc_hi20(amino_dis)
	ld.d	$a5, $a5, %got_pc_lo12(amino_dis)
	slli.d	$a4, $a4, 9
	add.d	$a4, $a5, $a4
	ld.d	$a7, $sp, 192                   # 8-byte Folded Reload
	move	$a6, $a1
	move	$a5, $s5
	.p2align	4, , 16
.LBB0_18:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$t0, $a7, 0
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $a4, $t0
	addi.w	$a5, $a5, -1
	addi.d	$a7, $a7, 1
	movgr2fr.w	$fa0, $t0
	ffint.s.w	$fa0, $fa0
	addi.d	$t0, $a6, 4
	fst.s	$fa0, $a6, 0
	move	$a6, $t0
	bnez	$a5, .LBB0_18
.LBB0_19:                               # %match_calc.exit
	ori	$a6, $zero, 1
	ori	$s7, $zero, 1
	beqz	$s2, .LBB0_27
# %bb.20:                               # %while.body.lr.ph.i170
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.b	$a4, $a0, 0
	pcalau12i	$a5, %got_pc_hi20(amino_dis)
	ld.d	$a5, $a5, %got_pc_lo12(amino_dis)
	slli.d	$a4, $a4, 9
	add.d	$a4, $a5, $a4
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	move	$a7, $a3
	ld.d	$a5, $sp, 200                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_21:                               # %while.body.i173
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$t1, $t0, 0
	slli.d	$t1, $t1, 2
	ldx.w	$t1, $a4, $t1
	addi.w	$a5, $a5, -1
	addi.d	$t0, $t0, 1
	movgr2fr.w	$fa0, $t1
	ffint.s.w	$fa0, $fa0
	addi.d	$t1, $a7, 4
	fst.s	$fa0, $a7, 0
	move	$a7, $t1
	bnez	$a5, .LBB0_21
# %bb.22:                               # %match_calc.exit184
	ori	$s7, $zero, 1
	blt	$s2, $s7, .LBB0_27
# %bb.23:                               # %iter.check
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a5, $a0, %pc_lo12(genL__align11.m)
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a7, $a0, %pc_lo12(genL__align11.mp)
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t0, $a0, %pc_lo12(genL__align11.largeM)
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t1, $a0, %pc_lo12(genL__align11.Mp)
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	addi.d	$a4, $a0, 1
	bstrpick.d	$a4, $a4, 31, 0
	addi.d	$t2, $a4, -1
	ori	$t4, $zero, 4
	ori	$t3, $zero, 1
	bgeu	$t2, $t4, .LBB0_59
.LBB0_24:                               # %for.body.preheader
	alsl.d	$a5, $t3, $a5, 2
	alsl.d	$a7, $t3, $a7, 2
	alsl.d	$t0, $t3, $t0, 2
	alsl.d	$t1, $t3, $t1, 2
	alsl.d	$t2, $t3, $a3, 2
	addi.d	$t2, $t2, -4
	sub.d	$a4, $a4, $t3
	.p2align	4, , 16
.LBB0_25:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $t2, 0
	fst.s	$fa0, $a5, 0
	st.w	$zero, $a7, 0
	fst.s	$fa0, $t0, 0
	st.w	$zero, $t1, 0
	addi.d	$a5, $a5, 4
	addi.d	$a7, $a7, 4
	addi.d	$t0, $t0, 4
	addi.d	$t1, $t1, 4
	addi.d	$a4, $a4, -1
	addi.d	$t2, $t2, 4
	bnez	$a4, .LBB0_25
.LBB0_26:
	move	$s7, $zero
.LBB0_27:                               # %for.end
	st.d	$t6, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	slli.d	$a5, $a0, 32
	ori	$a7, $zero, 0
	lu32i.d	$a7, -1
	add.d	$a7, $a5, $a7
	srai.d	$a5, $a7, 30
	fldx.s	$fa0, $a3, $a5
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(genL__align11.lastverticalw)
	st.d	$a4, $sp, 216                   # 8-byte Folded Spill
	fst.s	$fa0, $a4, 0
	addi.w	$t2, $s5, 1
	add.w	$s1, $t2, $a0
	pcalau12i	$t3, %pc_hi20(.LCPI0_1)
	blt	$s8, $a6, .LBB0_48
# %bb.28:                               # %for.body146.lr.ph
	move	$s6, $zero
	move	$s8, $zero
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	movgr2fr.w	$fa0, $a0
	movgr2fr.w	$fa1, $s4
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	movgr2fr.w	$fa2, $a0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	movgr2fr.w	$fa3, $a0
	ffint.s.w	$fa4, $fa0
	ffint.s.w	$fa0, $fa1
	ffint.s.w	$fa1, $fa2
	ffint.s.w	$fa2, $fa3
	fneg.s	$fa3, $fa4
	srai.d	$t4, $a7, 32
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a6, $a0, %pc_lo12(genL__align11.m)
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a7, $a0, %pc_lo12(genL__align11.largeM)
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$t0, $a0, %pc_lo12(genL__align11.mp)
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t1, $a0, %pc_lo12(genL__align11.Mp)
	fld.s	$fs0, $t3, %pc_lo12(.LCPI0_1)
	pcalau12i	$t3, %pc_hi20(.LCPI0_2)
	fld.s	$fa4, $t3, %pc_lo12(.LCPI0_2)
	bstrpick.d	$t2, $t2, 31, 0
	ori	$t3, $zero, 1
	slli.d	$t4, $t4, 2
	b	.LBB0_30
	.p2align	4, , 16
.LBB0_29:                               # %for.end239
                                        #   in Loop: Header=BB0_30 Depth=1
	fldx.s	$fa5, $a2, $t4
	addi.d	$t3, $t3, 1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	fstx.s	$fa5, $a0, $a3
	move	$a3, $a2
	move	$a2, $t5
	move	$s7, $a5
	beq	$t3, $t2, .LBB0_49
.LBB0_30:                               # %for.body146
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_32 Depth 2
                                        #     Child Loop BB0_36 Depth 2
	addi.d	$t6, $t3, -1
	slli.d	$t5, $t6, 2
	fldx.s	$fa5, $a1, $t5
	move	$t5, $a3
	fst.s	$fa5, $a3, 0
	beqz	$s2, .LBB0_33
# %bb.31:                               # %while.body.lr.ph.i186
                                        #   in Loop: Header=BB0_30 Depth=1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ldx.b	$a3, $a0, $t3
	pcalau12i	$t7, %got_pc_hi20(amino_dis)
	ld.d	$t7, $t7, %got_pc_lo12(amino_dis)
	slli.d	$a3, $a3, 9
	add.d	$a3, $t7, $a3
	ld.d	$fp, $sp, 184                   # 8-byte Folded Reload
	move	$t8, $a2
	ld.d	$t7, $sp, 200                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_32:                               # %while.body.i189
                                        #   Parent Loop BB0_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$s0, $fp, 0
	slli.d	$s0, $s0, 2
	ldx.w	$s0, $a3, $s0
	addi.w	$t7, $t7, -1
	addi.d	$fp, $fp, 1
	movgr2fr.w	$fa5, $s0
	ffint.s.w	$fa5, $fa5
	addi.d	$s0, $t8, 4
	fst.s	$fa5, $t8, 0
	move	$t8, $s0
	bnez	$t7, .LBB0_32
.LBB0_33:                               # %match_calc.exit200
                                        #   in Loop: Header=BB0_30 Depth=1
	slli.d	$a3, $t3, 2
	fldx.s	$fa5, $a1, $a3
	fst.s	$fa5, $a2, 0
	move	$a5, $s7
	bnez	$s7, .LBB0_29
# %bb.34:                               # %for.body170.preheader
                                        #   in Loop: Header=BB0_30 Depth=1
	fld.s	$fa5, $t5, 0
	slli.d	$t8, $t3, 3
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ldx.d	$t7, $a0, $t8
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ldx.d	$t8, $a0, $t8
	move	$s5, $zero
	move	$fp, $zero
	move	$ra, $zero
	move	$s3, $zero
	move	$s7, $zero
	ori	$s4, $zero, 4
	fmov.s	$fa7, $fa4
	fmov.s	$fa6, $fa5
	b	.LBB0_36
	.p2align	4, , 16
.LBB0_35:                               # %if.end228
                                        #   in Loop: Header=BB0_36 Depth=2
	addi.w	$a0, $s5, 1
	fcmp.clt.s	$fcc0, $fa5, $ft1
	fsel	$fa5, $fa5, $ft1, $fcc0
	movcf2gr	$a4, $fcc0
	masknez	$s0, $s3, $a4
	maskeqz	$a4, $s5, $a4
	or	$s3, $a4, $s0
	fadd.s	$fa5, $fa5, $fa2
	fcmp.clt.s	$fcc0, $fa6, $ft3
	fsel	$fa6, $fa6, $ft3, $fcc0
	movcf2gr	$a4, $fcc0
	masknez	$s0, $s7, $a4
	maskeqz	$a4, $s5, $a4
	or	$s7, $a4, $s0
	fcmp.clt.s	$fcc0, $fs0, $ft0
	fsel	$fs0, $fs0, $ft0, $fcc0
	movcf2gr	$a4, $fcc0
	masknez	$s0, $s8, $a4
	maskeqz	$s5, $t3, $a4
	or	$s8, $s5, $s0
	fldx.s	$ft0, $a2, $s4
	masknez	$s0, $s6, $a4
	maskeqz	$a4, $a0, $a4
	or	$s6, $a4, $s0
	fadd.s	$ft0, $ft2, $ft0
	fstx.s	$ft0, $a2, $s4
	addi.d	$s4, $s4, 4
	move	$s5, $a0
	beq	$s2, $a0, .LBB0_29
.LBB0_36:                               # %for.body170
                                        #   Parent Loop BB0_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$s0, $t5, $s4
	fld.s	$ft1, $s0, -4
	stx.w	$t6, $t8, $s4
	fadd.s	$ft0, $fa5, $fa0
	fcmp.clt.s	$fcc0, $ft1, $ft0
	fsel	$ft0, $ft1, $ft0, $fcc0
	movcf2gr	$a4, $fcc0
	fldx.s	$ft2, $a6, $s4
	masknez	$a0, $s5, $a4
	maskeqz	$a4, $s3, $a4
	or	$a0, $a4, $a0
	fadd.s	$ft3, $ft2, $fa0
	fcmp.cule.s	$fcc0, $ft3, $ft0
	stx.w	$a0, $t7, $s4
	bcnez	$fcc0, .LBB0_38
# %bb.37:                               # %if.then187
                                        #   in Loop: Header=BB0_36 Depth=2
	ldx.w	$a0, $t0, $s4
	stx.w	$a0, $t8, $s4
	stx.w	$s5, $t7, $s4
	fmov.s	$ft0, $ft3
.LBB0_38:                               # %if.end189
                                        #   in Loop: Header=BB0_36 Depth=2
	fcmp.cule.s	$fcc0, $ft1, $ft2
	bcnez	$fcc0, .LBB0_40
# %bb.39:                               # %if.then192
                                        #   in Loop: Header=BB0_36 Depth=2
	stx.w	$t6, $t0, $s4
	fmov.s	$ft2, $ft1
.LBB0_40:                               # %if.end194
                                        #   in Loop: Header=BB0_36 Depth=2
	fadd.s	$ft3, $ft2, $fa2
	fadd.s	$ft2, $fa7, $fa1
	fcmp.cule.s	$fcc0, $ft2, $ft0
	fstx.s	$ft3, $a6, $s4
	bcnez	$fcc0, .LBB0_42
# %bb.41:                               # %if.then199
                                        #   in Loop: Header=BB0_36 Depth=2
	stx.w	$ra, $t8, $s4
	stx.w	$fp, $t7, $s4
	fmov.s	$ft0, $ft2
.LBB0_42:                               # %if.end200
                                        #   in Loop: Header=BB0_36 Depth=2
	fldx.s	$ft2, $a7, $s4
	fcmp.clt.s	$fcc0, $fa7, $fa6
	fsel	$fa7, $fa7, $fa6, $fcc0
	fcmp.cule.s	$fcc1, $ft2, $fa7
	bcnez	$fcc1, .LBB0_44
# %bb.43:                               # %if.then208
                                        #   in Loop: Header=BB0_36 Depth=2
	ldx.w	$ra, $t1, $s4
	fmov.s	$fa7, $ft2
	move	$fp, $s5
	fld.s	$ft3, $s0, -4
	fcmp.cule.s	$fcc0, $ft3, $ft2
	bceqz	$fcc0, .LBB0_45
	b	.LBB0_46
	.p2align	4, , 16
.LBB0_44:                               #   in Loop: Header=BB0_36 Depth=2
	movcf2gr	$a0, $fcc0
	masknez	$a4, $ra, $a0
	maskeqz	$ra, $t6, $a0
	or	$ra, $ra, $a4
	masknez	$a4, $fp, $a0
	maskeqz	$a0, $s7, $a0
	or	$fp, $a0, $a4
	fld.s	$ft3, $s0, -4
	fcmp.cule.s	$fcc0, $ft3, $ft2
	bcnez	$fcc0, .LBB0_46
.LBB0_45:                               # %if.then213
                                        #   in Loop: Header=BB0_36 Depth=2
	fstx.s	$ft3, $a7, $s4
	fld.s	$ft3, $s0, -4
	stx.w	$t6, $t1, $s4
.LBB0_46:                               # %if.end215
                                        #   in Loop: Header=BB0_36 Depth=2
	fcmp.cule.s	$fcc0, $fa3, $ft0
	fmov.s	$ft2, $ft0
	bcnez	$fcc0, .LBB0_35
# %bb.47:                               # %if.then227
                                        #   in Loop: Header=BB0_36 Depth=2
	stx.w	$s1, $t8, $s4
	fmov.s	$ft2, $fa3
	b	.LBB0_35
.LBB0_48:
	fld.s	$fs0, $t3, %pc_lo12(.LCPI0_1)
	move	$s8, $zero
	move	$s6, $zero
.LBB0_49:                               # %for.end247
	addi.w	$s7, $s8, 0
	slli.d	$s3, $s7, 3
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $s3
	slli.d	$s5, $s6, 2
	ldx.w	$a0, $a0, $s5
	bne	$a0, $s1, .LBB0_51
# %bb.50:                               # %if.then254
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.w	$zero, $a0, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.w	$zero, $a0, 0
	movgr2fr.w	$fs0, $zero
	b	.LBB0_91
.LBB0_51:                               # %if.end259
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s4, $a0, %pc_lo12(genL__align11.mseq1)
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $a0, %pc_lo12(genL__align11.mseq2)
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.w	$fp, $a0, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$t1, $s0
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 176                   # 8-byte Folded Reload
	bltz	$fp, .LBB0_54
# %bb.52:                               # %for.body.lr.ph.i
	addi.d	$a1, $t1, 1
	bstrpick.d	$a1, $a1, 31, 0
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	move	$a3, $t3
	.p2align	4, , 16
.LBB0_53:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 0
	ld.d	$a5, $a3, 0
	st.w	$s1, $a4, 0
	st.w	$s1, $a5, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB0_53
.LBB0_54:                               # %for.cond10.preheader.i
	addi.w	$a1, $a0, 0
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	bltz	$a1, .LBB0_74
# %bb.55:                               # %iter.check299
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$a2, $t3, 0
	addi.d	$a5, $a0, 1
	bstrpick.d	$a3, $a5, 31, 0
	ori	$a6, $zero, 4
	move	$a4, $zero
	bltu	$a3, $a6, .LBB0_72
# %bb.56:                               # %iter.check299
	sub.d	$a6, $a2, $a1
	ori	$a7, $zero, 63
	bgeu	$a7, $a6, .LBB0_72
# %bb.57:                               # %vector.main.loop.iter.check301
	ori	$a4, $zero, 16
	bgeu	$a3, $a4, .LBB0_65
# %bb.58:
	move	$a4, $zero
	b	.LBB0_69
.LBB0_59:                               # %vector.memcheck
	sub.d	$t5, $t0, $a5
	ori	$t4, $zero, 64
	bltu	$t5, $t4, .LBB0_24
# %bb.60:                               # %vector.memcheck
	sub.d	$t5, $a5, $a3
	addi.d	$t5, $t5, 4
	bltu	$t5, $t4, .LBB0_24
# %bb.61:                               # %vector.memcheck
	sub.d	$t4, $t0, $a3
	addi.d	$t5, $t4, 4
	ori	$t4, $zero, 64
	bltu	$t5, $t4, .LBB0_24
# %bb.62:                               # %vector.memcheck
	sub.d	$t5, $t1, $a7
	bltu	$t5, $t4, .LBB0_24
# %bb.63:                               # %vector.main.loop.iter.check
	move	$a0, $t6
	ori	$t3, $zero, 16
	bgeu	$t2, $t3, .LBB0_92
# %bb.64:
	move	$t4, $zero
	b	.LBB0_98
.LBB0_65:                               # %vector.ph302
	bstrpick.d	$a4, $a5, 31, 4
	slli.d	$a4, $a4, 4
	xvreplgr2vr.w	$xr0, $s1
	addi.d	$a6, $a2, 32
	addi.d	$a7, $a1, 32
	move	$t0, $a4
	.p2align	4, , 16
.LBB0_66:                               # %vector.body305
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a7, -32
	xvst	$xr0, $a7, 0
	xvst	$xr0, $a6, -32
	xvst	$xr0, $a6, 0
	addi.d	$t0, $t0, -16
	addi.d	$a6, $a6, 64
	addi.d	$a7, $a7, 64
	bnez	$t0, .LBB0_66
# %bb.67:                               # %middle.block308
	beq	$a3, $a4, .LBB0_74
# %bb.68:                               # %vec.epilog.iter.check313
	andi	$a6, $a5, 12
	beqz	$a6, .LBB0_72
.LBB0_69:                               # %vec.epilog.ph312
	move	$a7, $a4
	bstrpick.d	$a4, $a5, 31, 2
	slli.d	$a4, $a4, 2
	vreplgr2vr.w	$vr0, $s1
	sub.d	$a5, $a7, $a4
	alsl.d	$a6, $a7, $a2, 2
	alsl.d	$a7, $a7, $a1, 2
	.p2align	4, , 16
.LBB0_70:                               # %vec.epilog.vector.body320
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a7, 0
	vst	$vr0, $a6, 0
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 16
	addi.d	$a7, $a7, 16
	bnez	$a5, .LBB0_70
# %bb.71:                               # %vec.epilog.middle.block323
	beq	$a3, $a4, .LBB0_74
.LBB0_72:                               # %for.body14.i.preheader
	sub.d	$a3, $a3, $a4
	alsl.d	$a2, $a4, $a2, 2
	alsl.d	$a1, $a4, $a1, 2
	.p2align	4, , 16
.LBB0_73:                               # %for.body14.i
                                        # =>This Inner Loop Header: Depth=1
	st.w	$s1, $a1, 0
	st.w	$s1, $a2, 0
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB0_73
.LBB0_74:                               # %for.end23.i
	ld.d	$a1, $s4, 0
	add.w	$a0, $a0, $t1
	add.d	$a2, $a1, $a0
	st.d	$a2, $s4, 0
	stx.b	$zero, $a1, $a0
	ld.d	$a1, $s2, 0
	add.d	$a2, $a1, $a0
	st.d	$a2, $s2, 0
	addi.w	$a2, $zero, -1
	stx.b	$zero, $a1, $a0
	bge	$a2, $a0, .LBB0_87
# %bb.75:                               # %for.body36.lr.ph.i
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$a1, $s7, $a1, 3
	ld.d	$a1, $a1, 0
	ldx.d	$a2, $t3, $s3
	ldx.w	$a6, $a1, $s5
	ldx.w	$a7, $a2, $s5
	move	$a2, $zero
	ori	$a1, $zero, 1
	ori	$a3, $zero, 45
	.p2align	4, , 16
.LBB0_76:                               # %for.body36.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_77 Depth 2
                                        #     Child Loop BB0_80 Depth 2
	move	$a5, $a6
	nor	$a6, $a6, $zero
	add.w	$t0, $s8, $a6
	move	$a4, $a7
	beqz	$t0, .LBB0_79
	.p2align	4, , 16
.LBB0_77:                               # %while.body.i201
                                        #   Parent Loop BB0_76 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a7, $fp, 0
	ld.d	$t1, $s4, 0
	add.d	$a7, $a7, $a5
	ldx.b	$a7, $a7, $t0
	addi.d	$t2, $t1, -1
	st.d	$t2, $s4, 0
	st.b	$a7, $t1, -1
	ld.d	$a7, $s2, 0
	addi.d	$t1, $a7, -1
	st.d	$t1, $s2, 0
	addi.d	$t0, $t0, -1
	st.b	$a3, $a7, -1
	bnez	$t0, .LBB0_77
# %bb.78:                               # %while.end.loopexit.i
                                        #   in Loop: Header=BB0_76 Depth=1
	add.d	$a2, $a2, $a6
	add.d	$a2, $a2, $s8
.LBB0_79:                               # %while.end.i
                                        #   in Loop: Header=BB0_76 Depth=1
	nor	$a6, $a4, $zero
	add.w	$a6, $s6, $a6
	beqz	$a6, .LBB0_81
	.p2align	4, , 16
.LBB0_80:                               # %while.body57.i
                                        #   Parent Loop BB0_76 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a7, $s4, 0
	addi.d	$t0, $a7, -1
	st.d	$t0, $s4, 0
	st.b	$a3, $a7, -1
	ld.d	$a7, $s0, 0
	ld.d	$t0, $s2, 0
	add.d	$a7, $a7, $a4
	ldx.b	$a7, $a7, $a6
	addi.d	$t1, $t0, -1
	st.d	$t1, $s2, 0
	st.b	$a7, $t0, -1
	addi.d	$a6, $a6, -1
	addi.d	$a2, $a2, 1
	bnez	$a6, .LBB0_80
.LBB0_81:                               # %while.end68.i
                                        #   in Loop: Header=BB0_76 Depth=1
	addi.w	$a6, $s8, 0
	blt	$a6, $a1, .LBB0_86
# %bb.82:                               # %while.end68.i
                                        #   in Loop: Header=BB0_76 Depth=1
	blt	$s6, $a1, .LBB0_86
# %bb.83:                               # %if.end.i
                                        #   in Loop: Header=BB0_76 Depth=1
	ld.d	$a6, $fp, 0
	ld.d	$a7, $s4, 0
	ldx.b	$a6, $a6, $a5
	addi.d	$t0, $a7, -1
	st.d	$t0, $s4, 0
	st.b	$a6, $a7, -1
	ld.d	$a6, $s0, 0
	ld.d	$a7, $s2, 0
	ldx.b	$a6, $a6, $a4
	addi.d	$t0, $a7, -1
	st.d	$t0, $s2, 0
	st.b	$a6, $a7, -1
	slli.d	$a7, $a5, 3
	ld.d	$a6, $sp, 208                   # 8-byte Folded Reload
	ldx.d	$a6, $a6, $a7
	slli.d	$t0, $a4, 2
	ldx.w	$a6, $a6, $t0
	beq	$a6, $s1, .LBB0_86
# %bb.84:                               # %if.end90.i
                                        #   in Loop: Header=BB0_76 Depth=1
	ldx.d	$a7, $t3, $a7
	ldx.w	$a7, $a7, $t0
	beq	$a7, $s1, .LBB0_86
# %bb.85:                               # %if.end90.i
                                        #   in Loop: Header=BB0_76 Depth=1
	addi.w	$a2, $a2, 2
	move	$s8, $a5
	move	$s6, $a4
	bge	$a0, $a2, .LBB0_76
.LBB0_86:                               # %for.end102.i
	addi.d	$a0, $a5, 1
	sltui	$a0, $a0, 1
	masknez	$a0, $a5, $a0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	addi.d	$a0, $a4, 1
	sltui	$a0, $a0, 1
	masknez	$a0, $a4, $a0
	b	.LBB0_88
.LBB0_87:                               # %.thread.i
	move	$a0, $zero
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.w	$zero, $a1, 0
.LBB0_88:                               # %gentracking.exit
	ld.d	$s3, $s4, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	lu12i.w	$a4, 1220
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	blt	$a2, $a3, .LBB0_96
# %bb.89:                               # %gentracking.exit
	ori	$a0, $a4, 2881
	bge	$a3, $a0, .LBB0_96
.LBB0_90:                               # %if.end271
	ld.d	$a0, $fp, 0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s2, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
.LBB0_91:                               # %cleanup
	fmov.s	$fa0, $fs0
	fld.d	$fs0, $sp, 224                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 312                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 320
	ret
.LBB0_92:                               # %vector.ph
	move	$t4, $t2
	bstrins.d	$t4, $zero, 3, 0
	addi.d	$t3, $a3, 32
	addi.d	$t5, $a5, 36
	addi.d	$t6, $t1, 36
	addi.d	$t7, $a7, 36
	addi.d	$t8, $t0, 36
	xvrepli.b	$xr0, 0
	move	$fp, $t4
	.p2align	4, , 16
.LBB0_93:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $t3, -32
	xvld	$xr2, $t3, 0
	xvst	$xr1, $t5, -32
	xvst	$xr2, $t5, 0
	xvst	$xr0, $t7, -32
	xvst	$xr0, $t7, 0
	xvst	$xr1, $t8, -32
	xvst	$xr2, $t8, 0
	xvst	$xr0, $t6, -32
	xvst	$xr0, $t6, 0
	addi.d	$fp, $fp, -16
	addi.d	$t3, $t3, 64
	addi.d	$t5, $t5, 64
	addi.d	$t6, $t6, 64
	addi.d	$t7, $t7, 64
	addi.d	$t8, $t8, 64
	bnez	$fp, .LBB0_93
# %bb.94:                               # %middle.block
	bne	$t2, $t4, .LBB0_97
# %bb.95:
	move	$s7, $zero
	move	$t6, $a0
	b	.LBB0_27
.LBB0_96:                               # %if.then269
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
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(genL__align11.mseq1)
	ld.d	$s3, $a0, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $a0, %pc_lo12(genL__align11.mseq2)
	b	.LBB0_90
.LBB0_97:                               # %vec.epilog.iter.check
	andi	$t3, $t2, 12
	beqz	$t3, .LBB0_101
.LBB0_98:                               # %vec.epilog.ph
	move	$t5, $t2
	bstrins.d	$t5, $zero, 1, 0
	ori	$t6, $zero, 1
	move	$t3, $t2
	bstrins.d	$t3, $t6, 1, 0
	slli.d	$t7, $t4, 2
	alsl.d	$t6, $t4, $a3, 2
	addi.d	$s0, $t7, 4
	add.d	$t7, $a5, $s0
	add.d	$t8, $a7, $s0
	add.d	$fp, $t0, $s0
	add.d	$s0, $t1, $s0
	sub.d	$t4, $t4, $t5
	vrepli.b	$vr0, 0
	.p2align	4, , 16
.LBB0_99:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $t6, 0
	vst	$vr1, $t7, 0
	vst	$vr0, $t8, 0
	vst	$vr1, $fp, 0
	vst	$vr0, $s0, 0
	addi.d	$t6, $t6, 16
	addi.d	$t7, $t7, 16
	addi.d	$t8, $t8, 16
	addi.d	$fp, $fp, 16
	addi.d	$t4, $t4, 4
	addi.d	$s0, $s0, 16
	bnez	$t4, .LBB0_99
# %bb.100:                              # %vec.epilog.middle.block
	move	$t6, $a0
	bne	$t2, $t5, .LBB0_24
	b	.LBB0_26
.LBB0_101:
	move	$t6, $a0
	addi.d	$t3, $t4, 1
	b	.LBB0_24
.Lfunc_end0:
	.size	genL__align11, .Lfunc_end0-genL__align11
                                        # -- End function
	.type	genL__align11.m,@object         # @genL__align11.m
	.local	genL__align11.m
	.comm	genL__align11.m,8,8
	.type	genL__align11.largeM,@object    # @genL__align11.largeM
	.local	genL__align11.largeM
	.comm	genL__align11.largeM,8,8
	.type	genL__align11.ijpi,@object      # @genL__align11.ijpi
	.local	genL__align11.ijpi
	.comm	genL__align11.ijpi,8,8
	.type	genL__align11.ijpj,@object      # @genL__align11.ijpj
	.local	genL__align11.ijpj
	.comm	genL__align11.ijpj,8,8
	.type	genL__align11.mp,@object        # @genL__align11.mp
	.local	genL__align11.mp
	.comm	genL__align11.mp,8,8
	.type	genL__align11.Mp,@object        # @genL__align11.Mp
	.local	genL__align11.Mp
	.comm	genL__align11.Mp,8,8
	.type	genL__align11.w1,@object        # @genL__align11.w1
	.local	genL__align11.w1
	.comm	genL__align11.w1,8,8
	.type	genL__align11.w2,@object        # @genL__align11.w2
	.local	genL__align11.w2
	.comm	genL__align11.w2,8,8
	.type	genL__align11.match,@object     # @genL__align11.match
	.local	genL__align11.match
	.comm	genL__align11.match,8,8
	.type	genL__align11.initverticalw,@object # @genL__align11.initverticalw
	.local	genL__align11.initverticalw
	.comm	genL__align11.initverticalw,8,8
	.type	genL__align11.lastverticalw,@object # @genL__align11.lastverticalw
	.local	genL__align11.lastverticalw
	.comm	genL__align11.lastverticalw,8,8
	.type	genL__align11.mseq1,@object     # @genL__align11.mseq1
	.local	genL__align11.mseq1
	.comm	genL__align11.mseq1,8,8
	.type	genL__align11.mseq2,@object     # @genL__align11.mseq2
	.local	genL__align11.mseq2
	.comm	genL__align11.mseq2,8,8
	.type	genL__align11.mseq,@object      # @genL__align11.mseq
	.local	genL__align11.mseq
	.comm	genL__align11.mseq,8,8
	.type	genL__align11.cpmx1,@object     # @genL__align11.cpmx1
	.local	genL__align11.cpmx1
	.comm	genL__align11.cpmx1,8,8
	.type	genL__align11.cpmx2,@object     # @genL__align11.cpmx2
	.local	genL__align11.cpmx2
	.comm	genL__align11.cpmx2,8,8
	.type	genL__align11.intwork,@object   # @genL__align11.intwork
	.local	genL__align11.intwork
	.comm	genL__align11.intwork,8,8
	.type	genL__align11.floatwork,@object # @genL__align11.floatwork
	.local	genL__align11.floatwork
	.comm	genL__align11.floatwork,8,8
	.type	genL__align11.orlgth1,@object   # @genL__align11.orlgth1
	.local	genL__align11.orlgth1
	.comm	genL__align11.orlgth1,4,4
	.type	genL__align11.orlgth2,@object   # @genL__align11.orlgth2
	.local	genL__align11.orlgth2
	.comm	genL__align11.orlgth2,4,4
	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"alloclen=%d, resultlen=%d, N=%d\n"
	.size	.L.str.1, 33

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"LENGTH OVER!\n"
	.size	.L.str.2, 14

	.section	".note.GNU-stack","",@progbits
	.addrsig
