	.file	"genGalign11.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function genG__align11
.LCPI0_0:
	.dword	0x3ff4cccccccccccd              # double 1.3
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI0_1:
	.word	0xcb189680                      # float -1.0E+7
	.text
	.globl	genG__align11
	.p2align	5
	.type	genG__align11,@function
genG__align11:                          # @genG__align11
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -288
	st.d	$ra, $sp, 280                   # 8-byte Folded Spill
	st.d	$fp, $sp, 272                   # 8-byte Folded Spill
	st.d	$s0, $sp, 264                   # 8-byte Folded Spill
	st.d	$s1, $sp, 256                   # 8-byte Folded Spill
	st.d	$s2, $sp, 248                   # 8-byte Folded Spill
	st.d	$s3, $sp, 240                   # 8-byte Folded Spill
	st.d	$s4, $sp, 232                   # 8-byte Folded Spill
	st.d	$s5, $sp, 224                   # 8-byte Folded Spill
	st.d	$s6, $sp, 216                   # 8-byte Folded Spill
	st.d	$s7, $sp, 208                   # 8-byte Folded Spill
	st.d	$s8, $sp, 200                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 192                  # 8-byte Folded Spill
	pcalau12i	$a3, %got_pc_hi20(penalty)
	ld.d	$a3, $a3, %got_pc_lo12(penalty)
	pcalau12i	$a4, %got_pc_hi20(penalty_OP)
	ld.d	$a4, $a4, %got_pc_lo12(penalty_OP)
	ld.w	$s2, $a3, 0
	pcalau12i	$a3, %got_pc_hi20(penalty_ex)
	ld.d	$a3, $a3, %got_pc_lo12(penalty_ex)
	ld.w	$s8, $a4, 0
	pcalau12i	$s3, %pc_hi20(genG__align11.orlgth1)
	ld.w	$a4, $s3, %pc_lo12(genG__align11.orlgth1)
	ld.w	$a3, $a3, 0
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(genG__align11.mseq1)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(genG__align11.mseq2)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	bnez	$a4, .LBB0_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$s1, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $s1, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(genG__align11.mseq1)
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(genG__align11.mseq2)
.LBB0_2:                                # %if.end
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	move	$s4, $a0
	addi.w	$s6, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	addi.w	$a0, $a0, 0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	blt	$s6, $a1, .LBB0_36
# %bb.3:                                # %if.end
	blez	$a0, .LBB0_36
.LBB0_4:                                # %if.end16
	ld.w	$s7, $s3, %pc_lo12(genG__align11.orlgth1)
	pcalau12i	$a1, %pc_hi20(genG__align11.orlgth2)
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	ld.w	$s1, $a1, %pc_lo12(genG__align11.orlgth2)
	pcalau12i	$a1, %pc_hi20(genG__align11.w1)
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(genG__align11.w2)
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(genG__align11.initverticalw)
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(genG__align11.lastverticalw)
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(genG__align11.m)
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(genG__align11.mp)
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(genG__align11.largeM)
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(genG__align11.Mp)
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$s5, %pc_hi20(genG__align11.mseq)
	st.d	$s8, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s6, $sp, 48                    # 8-byte Folded Spill
	blt	$s7, $s6, .LBB0_6
# %bb.5:                                # %if.end16
	bge	$s1, $a0, .LBB0_10
.LBB0_6:                                # %if.then22
	ori	$a0, $zero, 1
	pcalau12i	$s6, %pc_hi20(genG__align11.match)
	pcalau12i	$a1, %pc_hi20(genG__align11.cpmx1)
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(genG__align11.cpmx2)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(genG__align11.floatwork)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(genG__align11.intwork)
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	blt	$s7, $a0, .LBB0_9
# %bb.7:                                # %if.then22
	blt	$s1, $a0, .LBB0_9
# %bb.8:                                # %if.then27
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(genG__align11.w1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(genG__align11.w2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, %pc_lo12(genG__align11.match)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(genG__align11.initverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(genG__align11.lastverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(genG__align11.m)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(genG__align11.mp)
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(genG__align11.largeM)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(genG__align11.Mp)
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(genG__align11.mseq)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(genG__align11.cpmx1)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(genG__align11.cpmx2)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(genG__align11.floatwork)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(genG__align11.intwork)
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.w	$s7, $s3, %pc_lo12(genG__align11.orlgth1)
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.w	$s1, $a0, %pc_lo12(genG__align11.orlgth2)
.LBB0_9:                                # %if.end28
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI0_0)
	movgr2fr.w	$fa1, $s4
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	slt	$a1, $a0, $s7
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s7, $a1
	or	$s7, $a1, $a0
	addi.w	$s2, $s7, 100
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	slt	$a1, $a0, $s1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s1, $a1
	or	$s1, $a1, $a0
	addi.w	$s8, $s1, 100
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	move	$s3, $s4
	addi.w	$s4, $s1, 102
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(genG__align11.w1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(genG__align11.w2)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, %pc_lo12(genG__align11.match)
	addi.w	$s6, $s7, 102
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(genG__align11.initverticalw)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(genG__align11.lastverticalw)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(genG__align11.m)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(genG__align11.mp)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(genG__align11.largeM)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(njob)
	ld.d	$a1, $a1, %got_pc_lo12(njob)
	ld.w	$a2, $a1, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(genG__align11.Mp)
	add.w	$a1, $s8, $s2
	move	$a0, $a2
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $s5, %pc_lo12(genG__align11.mseq)
	ori	$a0, $zero, 26
	move	$a1, $s6
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(genG__align11.cpmx1)
	ori	$a0, $zero, 26
	move	$a1, $s4
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(genG__align11.cpmx2)
	slt	$a0, $s8, $s2
	masknez	$a1, $s8, $a0
	maskeqz	$a0, $s2, $a0
	or	$a0, $a0, $a1
	addi.w	$s4, $a0, 2
	ori	$a0, $zero, 26
	move	$a1, $s4
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(genG__align11.floatwork)
	ori	$a0, $zero, 26
	move	$a1, $s4
	move	$s4, $s3
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(genG__align11.intwork)
	st.w	$s7, $s3, %pc_lo12(genG__align11.orlgth1)
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	st.w	$s1, $a0, %pc_lo12(genG__align11.orlgth2)
	ld.d	$s8, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 48                    # 8-byte Folded Reload
.LBB0_10:                               # %if.end90
	ld.d	$a0, $s5, %pc_lo12(genG__align11.mseq)
	ld.d	$a1, $a0, 0
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(genG__align11.mseq1)
	st.d	$a1, $a2, 0
	ld.d	$a0, $a0, 8
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(genG__align11.mseq2)
	pcalau12i	$a2, %got_pc_hi20(commonAlloc1)
	ld.d	$s2, $a2, %got_pc_lo12(commonAlloc1)
	pcalau12i	$a2, %got_pc_hi20(commonAlloc2)
	ld.d	$s5, $a2, %got_pc_lo12(commonAlloc2)
	st.d	$a0, $a1, 0
	ld.w	$a1, $s2, 0
	ld.w	$a0, $s5, 0
	blt	$a1, $s7, .LBB0_13
# %bb.11:                               # %if.end90
	blt	$a0, $s1, .LBB0_13
# %bb.12:                               # %lor.lhs.false97.if.end125_crit_edge
	pcalau12i	$a0, %got_pc_hi20(commonJP)
	ld.d	$a0, $a0, %got_pc_lo12(commonJP)
	ld.d	$a0, $a0, 0
	b	.LBB0_17
.LBB0_13:                               # %if.then100
	move	$s8, $s4
	beqz	$a1, .LBB0_16
# %bb.14:                               # %if.then100
	beqz	$a0, .LBB0_16
# %bb.15:                               # %if.then105
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
	ld.w	$s7, $s3, %pc_lo12(genG__align11.orlgth1)
	ld.w	$a1, $s2, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.w	$s1, $a0, %pc_lo12(genG__align11.orlgth2)
	ld.w	$a0, $s5, 0
.LBB0_16:                               # %if.end106
	slt	$a2, $a1, $s7
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s7, $a2
	or	$s7, $a2, $a1
	slt	$a1, $a0, $s1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s1, $a1
	or	$s1, $a1, $a0
	addi.w	$s4, $s7, 10
	addi.w	$s6, $s1, 10
	move	$a0, $s4
	move	$a1, $s6
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(commonIP)
	ld.d	$a1, $a1, %got_pc_lo12(commonIP)
	st.d	$a0, $a1, 0
	move	$a0, $s4
	move	$a1, $s6
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(commonJP)
	ld.d	$a1, $a1, %got_pc_lo12(commonJP)
	st.d	$a0, $a1, 0
	st.w	$s7, $s2, 0
	st.w	$s1, $s5, 0
	move	$s4, $s8
	ld.d	$s6, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 64                    # 8-byte Folded Reload
.LBB0_17:                               # %if.end125
	pcalau12i	$a1, %got_pc_hi20(commonIP)
	ld.d	$a1, $a1, %got_pc_lo12(commonIP)
	ld.d	$s5, $a1, 0
	pcalau12i	$a2, %pc_hi20(genG__align11.ijpi)
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a4, $a1, %pc_lo12(genG__align11.w1)
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s3, $a1, %pc_lo12(genG__align11.w2)
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(genG__align11.initverticalw)
	ld.d	$a3, $fp, 0
	st.d	$a3, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a3, $s0, 0
	st.d	$a3, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a3, %got_pc_hi20(amino_dis)
	ld.d	$a3, $a3, %got_pc_lo12(amino_dis)
	st.d	$a3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s5, $a2, %pc_lo12(genG__align11.ijpi)
	pcalau12i	$a2, %pc_hi20(genG__align11.ijpj)
	st.d	$a0, $a2, %pc_lo12(genG__align11.ijpj)
	ld.d	$t0, $sp, 56                    # 8-byte Folded Reload
	beqz	$s6, .LBB0_20
# %bb.18:                               # %while.body.i.preheader
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ld.b	$a2, $a2, 0
	slli.d	$a2, $a2, 9
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	move	$a3, $a1
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
	move	$a5, $s4
	.p2align	4, , 16
.LBB0_19:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a7, $a6, 0
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $a2, $a7
	addi.w	$a5, $a5, -1
	addi.d	$a6, $a6, 1
	movgr2fr.w	$fa0, $a7
	ffint.s.w	$fa0, $fa0
	addi.d	$a7, $a3, 4
	fst.s	$fa0, $a3, 0
	move	$a3, $a7
	bnez	$a5, .LBB0_19
.LBB0_20:                               # %match_calc.exit
	movgr2fr.w	$fa0, $t0
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	beqz	$a2, .LBB0_23
# %bb.21:                               # %while.body.i170.preheader
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ld.b	$a2, $a2, 0
	slli.d	$a2, $a2, 9
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	move	$a3, $a4
	ld.d	$a6, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_22:                               # %while.body.i170
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a7, $a6, 0
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $a2, $a7
	addi.w	$a5, $a5, -1
	addi.d	$a6, $a6, 1
	movgr2fr.w	$fa1, $a7
	ffint.s.w	$fa1, $fa1
	addi.d	$a7, $a3, 4
	fst.s	$fa1, $a3, 0
	move	$a3, $a7
	bnez	$a5, .LBB0_22
.LBB0_23:                               # %match_calc.exit181
	pcalau12i	$a2, %got_pc_hi20(outgap)
	ld.d	$a7, $a2, %got_pc_lo12(outgap)
	ld.w	$a3, $a7, 0
	ffint.s.w	$fa0, $fa0
	ori	$a2, $zero, 1
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	slli.d	$a6, $a5, 32
	addi.d	$a5, $a5, 1
	bne	$a3, $a2, .LBB0_28
# %bb.24:                               # %for.cond.preheader
	blt	$s6, $a2, .LBB0_40
# %bb.25:                               # %iter.check
	addi.d	$a2, $s4, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a3, $a2, -1
	ori	$t0, $zero, 3
	ori	$t1, $zero, 1
	bgeu	$t0, $a3, .LBB0_38
# %bb.26:                               # %vector.main.loop.iter.check
	ori	$t0, $zero, 16
	bgeu	$a3, $t0, .LBB0_29
# %bb.27:
	move	$t0, $zero
	b	.LBB0_33
.LBB0_28:                               # %if.end145
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	bge	$a3, $a2, .LBB0_56
	b	.LBB0_44
.LBB0_29:                               # %vector.ph
	move	$t0, $a3
	bstrins.d	$t0, $zero, 3, 0
	xvreplve0.w	$xr1, $xr0
	addi.d	$t1, $a1, 36
	move	$t2, $t0
	.p2align	4, , 16
.LBB0_30:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $t1, -32
	xvld	$xr3, $t1, 0
	xvfadd.s	$xr2, $xr2, $xr1
	xvfadd.s	$xr3, $xr3, $xr1
	xvst	$xr2, $t1, -32
	xvst	$xr3, $t1, 0
	addi.d	$t2, $t2, -16
	addi.d	$t1, $t1, 64
	bnez	$t2, .LBB0_30
# %bb.31:                               # %middle.block
	beq	$a3, $t0, .LBB0_40
# %bb.32:                               # %vec.epilog.iter.check
	andi	$t1, $a3, 12
	beqz	$t1, .LBB0_37
.LBB0_33:                               # %vec.epilog.ph
	move	$t2, $a3
	bstrins.d	$t2, $zero, 1, 0
	ori	$t3, $zero, 1
	move	$t1, $a3
	bstrins.d	$t1, $t3, 1, 0
	vreplvei.w	$vr1, $vr0, 0
	alsl.d	$t3, $t0, $a1, 2
	addi.d	$t3, $t3, 4
	sub.d	$t0, $t0, $t2
	.p2align	4, , 16
.LBB0_34:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $t3, 0
	vfadd.s	$vr2, $vr2, $vr1
	vst	$vr2, $t3, 0
	addi.d	$t0, $t0, 4
	addi.d	$t3, $t3, 16
	bnez	$t0, .LBB0_34
# %bb.35:                               # %vec.epilog.middle.block
	bne	$a3, $t2, .LBB0_38
	b	.LBB0_40
.LBB0_36:                               # %if.then14
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	move	$a2, $s6
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	b	.LBB0_4
.LBB0_37:
	addi.d	$t1, $t0, 1
.LBB0_38:                               # %for.body.preheader
	alsl.d	$a3, $t1, $a1, 2
	sub.d	$a2, $a2, $t1
	.p2align	4, , 16
.LBB0_39:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a3, 0
	fadd.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	bnez	$a2, .LBB0_39
.LBB0_40:                               # %for.cond134.preheader
	ori	$t1, $zero, 1
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	blt	$a2, $t1, .LBB0_44
# %bb.41:                               # %iter.check299
	bstrpick.d	$a2, $a5, 31, 0
	addi.d	$a3, $a2, -1
	ori	$t0, $zero, 3
	bgeu	$t0, $a3, .LBB0_54
# %bb.42:                               # %vector.main.loop.iter.check301
	ori	$t0, $zero, 16
	bgeu	$a3, $t0, .LBB0_46
# %bb.43:
	move	$t0, $zero
	b	.LBB0_50
.LBB0_44:                               # %for.end167
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_59
# %bb.45:
	movgr2fr.w	$fa1, $zero
	b	.LBB0_60
.LBB0_46:                               # %vector.ph302
	move	$t0, $a3
	bstrins.d	$t0, $zero, 3, 0
	xvreplve0.w	$xr1, $xr0
	addi.d	$t1, $a4, 36
	move	$t2, $t0
	.p2align	4, , 16
.LBB0_47:                               # %vector.body307
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $t1, -32
	xvld	$xr3, $t1, 0
	xvfadd.s	$xr2, $xr2, $xr1
	xvfadd.s	$xr3, $xr3, $xr1
	xvst	$xr2, $t1, -32
	xvst	$xr3, $t1, 0
	addi.d	$t2, $t2, -16
	addi.d	$t1, $t1, 64
	bnez	$t2, .LBB0_47
# %bb.48:                               # %middle.block312
	beq	$a3, $t0, .LBB0_56
# %bb.49:                               # %vec.epilog.iter.check317
	andi	$t1, $a3, 12
	beqz	$t1, .LBB0_53
.LBB0_50:                               # %vec.epilog.ph316
	move	$t2, $a3
	bstrins.d	$t2, $zero, 1, 0
	ori	$t3, $zero, 1
	move	$t1, $a3
	bstrins.d	$t1, $t3, 1, 0
	vreplvei.w	$vr1, $vr0, 0
	alsl.d	$t3, $t0, $a4, 2
	addi.d	$t3, $t3, 4
	sub.d	$t0, $t0, $t2
	.p2align	4, , 16
.LBB0_51:                               # %vec.epilog.vector.body324
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $t3, 0
	vfadd.s	$vr2, $vr2, $vr1
	vst	$vr2, $t3, 0
	addi.d	$t0, $t0, 4
	addi.d	$t3, $t3, 16
	bnez	$t0, .LBB0_51
# %bb.52:                               # %vec.epilog.middle.block329
	bne	$a3, $t2, .LBB0_54
	b	.LBB0_56
.LBB0_53:
	addi.d	$t1, $t0, 1
.LBB0_54:                               # %for.body138.preheader
	alsl.d	$a3, $t1, $a4, 2
	sub.d	$a2, $a2, $t1
	.p2align	4, , 16
.LBB0_55:                               # %for.body138
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a3, 0
	fadd.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	bnez	$a2, .LBB0_55
.LBB0_56:                               # %iter.check340
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a3, $a2, %pc_lo12(genG__align11.m)
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t0, $a2, %pc_lo12(genG__align11.mp)
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t1, $a2, %pc_lo12(genG__align11.largeM)
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t2, $a2, %pc_lo12(genG__align11.Mp)
	bstrpick.d	$a2, $a5, 31, 0
	addi.d	$t3, $a2, -1
	ori	$t5, $zero, 4
	ori	$t4, $zero, 1
	bgeu	$t3, $t5, .LBB0_89
.LBB0_57:                               # %for.body150.preheader
	alsl.d	$a3, $t4, $a3, 2
	alsl.d	$t0, $t4, $t0, 2
	alsl.d	$t1, $t4, $t1, 2
	alsl.d	$t2, $t4, $t2, 2
	alsl.d	$t3, $t4, $a4, 2
	addi.d	$t3, $t3, -4
	sub.d	$a2, $a2, $t4
	.p2align	4, , 16
.LBB0_58:                               # %for.body150
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $t3, 0
	fst.s	$fa1, $a3, 0
	st.w	$zero, $t0, 0
	fst.s	$fa1, $t1, 0
	st.w	$zero, $t2, 0
	addi.d	$a3, $a3, 4
	addi.d	$t0, $t0, 4
	addi.d	$t1, $t1, 4
	addi.d	$t2, $t2, 4
	addi.d	$a2, $a2, -1
	addi.d	$t3, $t3, 4
	bnez	$a2, .LBB0_58
.LBB0_59:                               # %if.else
	ori	$a2, $zero, 0
	lu32i.d	$a2, -1
	add.d	$a2, $a6, $a2
	srai.d	$a2, $a2, 30
	fldx.s	$fa1, $a4, $a2
.LBB0_60:                               # %if.end176
	ld.w	$a2, $a7, 0
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a7, $a3, %pc_lo12(genG__align11.lastverticalw)
	sltu	$a2, $zero, $a2
	add.w	$t0, $a2, $s4
	ori	$a2, $zero, 2
	fst.s	$fa1, $a7, 0
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	st.d	$s5, $sp, 136                   # 8-byte Folded Spill
	blt	$t0, $a2, .LBB0_80
# %bb.61:                               # %for.body185.lr.ph
	movgr2fr.w	$fa1, $s8
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	movgr2fr.w	$fa2, $a0
	ffint.s.w	$fa1, $fa1
	ffint.s.w	$fa2, $fa2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a2, $a0, %pc_lo12(genG__align11.m)
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a3, $a0, %pc_lo12(genG__align11.largeM)
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t1, $a0, %pc_lo12(genG__align11.mp)
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t2, $a0, %pc_lo12(genG__align11.Mp)
	ori	$t3, $zero, 0
	lu32i.d	$t3, -1
	add.d	$a6, $a6, $t3
	srai.d	$a6, $a6, 30
	bstrpick.d	$a5, $a5, 31, 0
	addi.d	$a0, $a2, 4
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	addi.d	$a0, $a5, -1
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	addi.d	$a0, $a3, 4
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	addi.d	$a0, $t1, 4
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a0, $t2, 4
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(.LCPI0_1)
	fld.s	$fa3, $a2, %pc_lo12(.LCPI0_1)
	movgr2fr.w	$fs0, $zero
	ori	$t6, $zero, 1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	b	.LBB0_64
	.p2align	4, , 16
.LBB0_62:                               # %match_calc.exit196.thread
                                        #   in Loop: Header=BB0_64 Depth=1
	fldx.s	$fa4, $a1, $a4
	fst.s	$fa4, $t7, 0
.LBB0_63:                               # %for.end272
                                        #   in Loop: Header=BB0_64 Depth=1
	fldx.s	$fa4, $t7, $a6
	addi.d	$t6, $t6, 1
	fstx.s	$fa4, $a7, $a4
	move	$a4, $t7
	beq	$t6, $t0, .LBB0_81
.LBB0_64:                               # %for.body185
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_66 Depth 2
                                        #     Child Loop BB0_70 Depth 2
	addi.d	$t8, $t6, -1
	slli.d	$a2, $t8, 2
	fldx.s	$fa4, $a1, $a2
	move	$t7, $s3
	move	$s3, $a4
	fst.s	$fa4, $a4, 0
	slli.d	$a4, $t6, 2
	beqz	$a0, .LBB0_62
# %bb.65:                               # %while.body.i185.preheader
                                        #   in Loop: Header=BB0_64 Depth=1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ldx.b	$a2, $a2, $t6
	slli.d	$a2, $a2, 9
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	move	$a3, $t7
	ld.d	$t1, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_66:                               # %while.body.i185
                                        #   Parent Loop BB0_64 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$t2, $t1, 0
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $a2, $t2
	addi.w	$a5, $a5, -1
	addi.d	$t1, $t1, 1
	movgr2fr.w	$fa4, $t2
	ffint.s.w	$fa4, $fa4
	addi.d	$t2, $a3, 4
	fst.s	$fa4, $a3, 0
	move	$a3, $t2
	bnez	$a5, .LBB0_66
# %bb.67:                               # %match_calc.exit196
                                        #   in Loop: Header=BB0_64 Depth=1
	fldx.s	$fa4, $a1, $a4
	fst.s	$fa4, $t7, 0
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB0_63
# %bb.68:                               # %for.body209.preheader
                                        #   in Loop: Header=BB0_64 Depth=1
	fld.s	$fa4, $s3, 0
	slli.d	$a2, $t6, 3
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ldx.d	$a3, $a0, $a2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ldx.d	$a2, $a0, $a2
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	move	$s1, $zero
	move	$ra, $zero
	move	$s5, $zero
	move	$s7, $zero
	move	$s6, $zero
	addi.d	$s2, $t7, 4
	addi.d	$a3, $a3, 4
	addi.d	$s8, $a2, 4
	ld.d	$t4, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	fmov.s	$fa6, $fa3
	move	$a2, $s3
	fmov.s	$fa5, $fa4
	b	.LBB0_70
	.p2align	4, , 16
.LBB0_69:                               # %if.end256
                                        #   in Loop: Header=BB0_70 Depth=2
	fcmp.cult.s	$fcc0, $fa7, $fa4
	fsel	$fa4, $fa7, $fa4, $fcc0
	movcf2gr	$t5, $fcc0
	masknez	$s4, $s1, $t5
	maskeqz	$t5, $s7, $t5
	or	$s7, $t5, $s4
	fadd.s	$fa4, $fa4, $fa2
	fcmp.clt.s	$fcc0, $fa5, $ft0
	fsel	$fa5, $fa5, $ft0, $fcc0
	movcf2gr	$t5, $fcc0
	fld.s	$fa7, $s2, 0
	masknez	$s4, $s6, $t5
	maskeqz	$t5, $s1, $t5
	or	$s6, $t5, $s4
	fadd.s	$fa7, $fs0, $fa7
	fst.s	$fa7, $s2, 0
	addi.d	$a2, $a2, 4
	addi.d	$s1, $s1, 1
	addi.d	$a5, $a5, 4
	addi.d	$t1, $t1, -1
	addi.d	$s2, $s2, 4
	addi.d	$a3, $a3, 4
	addi.d	$s8, $s8, 4
	addi.d	$t2, $t2, 4
	addi.d	$t3, $t3, 4
	addi.d	$t4, $t4, 4
	beqz	$t1, .LBB0_63
.LBB0_70:                               # %for.body209
                                        #   Parent Loop BB0_64 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa7, $a2, 0
	st.w	$t8, $a3, 0
	fadd.s	$ft0, $fa4, $fa0
	fcmp.clt.s	$fcc0, $fa7, $ft0
	fsel	$fs0, $fa7, $ft0, $fcc0
	movcf2gr	$t5, $fcc0
	fld.s	$ft0, $a5, 0
	masknez	$s4, $s1, $t5
	maskeqz	$t5, $s7, $t5
	or	$t5, $t5, $s4
	fadd.s	$ft1, $ft0, $fa0
	fcmp.cule.s	$fcc0, $ft1, $fs0
	st.w	$t5, $s8, 0
	bcnez	$fcc0, .LBB0_72
# %bb.71:                               # %if.then226
                                        #   in Loop: Header=BB0_70 Depth=2
	ld.w	$t5, $t3, 0
	st.w	$t5, $a3, 0
	st.w	$s1, $s8, 0
	fmov.s	$fs0, $ft1
.LBB0_72:                               # %if.end228
                                        #   in Loop: Header=BB0_70 Depth=2
	fcmp.cult.s	$fcc0, $fa7, $ft0
	bcnez	$fcc0, .LBB0_74
# %bb.73:                               # %if.then231
                                        #   in Loop: Header=BB0_70 Depth=2
	fst.s	$fa7, $a5, 0
	st.w	$t8, $t3, 0
.LBB0_74:                               # %if.end233
                                        #   in Loop: Header=BB0_70 Depth=2
	fld.s	$ft0, $a5, 0
	fadd.s	$ft1, $ft0, $fa2
	fadd.s	$ft0, $fa6, $fa1
	fcmp.cule.s	$fcc0, $ft0, $fs0
	fst.s	$ft1, $a5, 0
	bcnez	$fcc0, .LBB0_76
# %bb.75:                               # %if.then240
                                        #   in Loop: Header=BB0_70 Depth=2
	st.w	$s5, $a3, 0
	st.w	$ra, $s8, 0
	fmov.s	$fs0, $ft0
.LBB0_76:                               # %if.end241
                                        #   in Loop: Header=BB0_70 Depth=2
	fld.s	$ft1, $t2, 0
	fcmp.clt.s	$fcc0, $fa6, $fa5
	fsel	$fa6, $fa6, $fa5, $fcc0
	fcmp.cule.s	$fcc1, $ft1, $fa6
	bcnez	$fcc1, .LBB0_78
# %bb.77:                               # %if.then249
                                        #   in Loop: Header=BB0_70 Depth=2
	ld.w	$s5, $t4, 0
	fmov.s	$fa6, $ft1
	move	$ra, $s1
	fld.s	$ft0, $a2, 0
	fcmp.cule.s	$fcc0, $ft0, $ft1
	bcnez	$fcc0, .LBB0_69
	b	.LBB0_79
	.p2align	4, , 16
.LBB0_78:                               #   in Loop: Header=BB0_70 Depth=2
	movcf2gr	$t5, $fcc0
	masknez	$s4, $s5, $t5
	maskeqz	$s5, $t8, $t5
	or	$s5, $s5, $s4
	masknez	$s4, $ra, $t5
	maskeqz	$t5, $s6, $t5
	or	$ra, $t5, $s4
	fld.s	$ft0, $a2, 0
	fcmp.cule.s	$fcc0, $ft0, $ft1
	bcnez	$fcc0, .LBB0_69
.LBB0_79:                               # %if.then254
                                        #   in Loop: Header=BB0_70 Depth=2
	fst.s	$ft0, $t2, 0
	fld.s	$ft0, $a2, 0
	st.w	$t8, $t4, 0
	b	.LBB0_69
.LBB0_80:
	movgr2fr.w	$fs0, $zero
.LBB0_81:                               # %for.end280
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s3, $a0, %pc_lo12(genG__align11.mseq1)
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $a0, %pc_lo12(genG__align11.mseq2)
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	addi.w	$s4, $a0, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$t6, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 136                   # 8-byte Folded Reload
	bltz	$s4, .LBB0_84
# %bb.82:                               # %for.body.preheader.i
	addi.d	$a1, $s2, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.w	$a2, $zero, -1
	lu32i.d	$a2, 0
	move	$a3, $t7
	move	$a4, $t6
	.p2align	4, , 16
.LBB0_83:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a3, 0
	ld.d	$a6, $a4, 0
	st.w	$a2, $a5, 0
	st.w	$a2, $a6, 0
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 8
	addi.d	$a3, $a3, 8
	bnez	$a1, .LBB0_83
.LBB0_84:                               # %for.cond10.preheader.i
	addi.w	$a1, $a0, 0
	bltz	$a1, .LBB0_104
# %bb.85:                               # %iter.check374
	ld.d	$a1, $t7, 0
	ld.d	$a2, $t6, 0
	addi.d	$a5, $a0, 1
	bstrpick.d	$a3, $a5, 31, 0
	ori	$a6, $zero, 4
	move	$a4, $zero
	bltu	$a3, $a6, .LBB0_102
# %bb.86:                               # %iter.check374
	sub.d	$a6, $a2, $a1
	ori	$a7, $zero, 63
	bgeu	$a7, $a6, .LBB0_102
# %bb.87:                               # %vector.main.loop.iter.check376
	ori	$a4, $zero, 16
	bgeu	$a3, $a4, .LBB0_95
# %bb.88:
	move	$a4, $zero
	b	.LBB0_99
.LBB0_89:                               # %vector.memcheck
	sub.d	$t6, $t1, $a3
	ori	$t5, $zero, 64
	bltu	$t6, $t5, .LBB0_57
# %bb.90:                               # %vector.memcheck
	sub.d	$t6, $a3, $a4
	addi.d	$t6, $t6, 4
	bltu	$t6, $t5, .LBB0_57
# %bb.91:                               # %vector.memcheck
	sub.d	$t5, $t1, $a4
	addi.d	$t6, $t5, 4
	ori	$t5, $zero, 64
	bltu	$t6, $t5, .LBB0_57
# %bb.92:                               # %vector.memcheck
	sub.d	$t6, $t2, $t0
	bltu	$t6, $t5, .LBB0_57
# %bb.93:                               # %vector.main.loop.iter.check342
	ori	$t4, $zero, 16
	bgeu	$t3, $t4, .LBB0_117
# %bb.94:
	move	$s6, $s4
	move	$t5, $zero
	b	.LBB0_122
.LBB0_95:                               # %vector.ph377
	bstrpick.d	$a4, $a5, 31, 4
	slli.d	$a4, $a4, 4
	addi.d	$a6, $a2, 32
	addi.d	$a7, $a1, 32
	xvrepli.b	$xr0, -1
	move	$t0, $a4
	.p2align	4, , 16
.LBB0_96:                               # %vector.body380
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a7, -32
	xvst	$xr0, $a7, 0
	xvst	$xr0, $a6, -32
	xvst	$xr0, $a6, 0
	addi.d	$t0, $t0, -16
	addi.d	$a6, $a6, 64
	addi.d	$a7, $a7, 64
	bnez	$t0, .LBB0_96
# %bb.97:                               # %middle.block383
	beq	$a3, $a4, .LBB0_104
# %bb.98:                               # %vec.epilog.iter.check388
	andi	$a6, $a5, 12
	beqz	$a6, .LBB0_102
.LBB0_99:                               # %vec.epilog.ph387
	move	$a7, $a4
	bstrpick.d	$a4, $a5, 31, 2
	slli.d	$a4, $a4, 2
	sub.d	$a5, $a7, $a4
	alsl.d	$a6, $a7, $a2, 2
	alsl.d	$a7, $a7, $a1, 2
	vrepli.b	$vr0, -1
	.p2align	4, , 16
.LBB0_100:                              # %vec.epilog.vector.body393
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a7, 0
	vst	$vr0, $a6, 0
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 16
	addi.d	$a7, $a7, 16
	bnez	$a5, .LBB0_100
# %bb.101:                              # %vec.epilog.middle.block396
	beq	$a3, $a4, .LBB0_104
.LBB0_102:                              # %for.body14.i.preheader
	sub.d	$a3, $a3, $a4
	alsl.d	$a2, $a4, $a2, 2
	alsl.d	$a1, $a4, $a1, 2
	addi.w	$a4, $zero, -1
	lu32i.d	$a4, 0
	.p2align	4, , 16
.LBB0_103:                              # %for.body14.i
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a4, $a1, 0
	st.w	$a4, $a2, 0
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB0_103
.LBB0_104:                              # %for.end23.i
	ld.d	$a2, $s3, 0
	add.w	$a1, $a0, $s2
	add.d	$a3, $a2, $a1
	st.d	$a3, $s3, 0
	stx.b	$zero, $a2, $a1
	ld.d	$a2, $s1, 0
	add.d	$a3, $a2, $a1
	st.d	$a3, $s1, 0
	stx.b	$zero, $a2, $a1
	bltz	$a1, .LBB0_114
# %bb.105:                              # %for.body37.i.preheader
	move	$a3, $zero
	ori	$a2, $zero, 1
	ori	$a4, $zero, 45
	.p2align	4, , 16
.LBB0_106:                              # %for.body37.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_107 Depth 2
                                        #     Child Loop BB0_110 Depth 2
	addi.w	$a7, $s2, 0
	slli.d	$a5, $a7, 3
	ldx.d	$a6, $t7, $a5
	addi.w	$t0, $a0, 0
	slli.d	$t1, $t0, 2
	ldx.d	$t2, $t6, $a5
	ldx.w	$a5, $a6, $t1
	ldx.w	$a6, $t2, $t1
	nor	$t1, $a5, $zero
	add.w	$t2, $s2, $t1
	beqz	$t2, .LBB0_109
	.p2align	4, , 16
.LBB0_107:                              # %while.body.i197
                                        #   Parent Loop BB0_106 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t3, $s0, 0
	ld.d	$t4, $s3, 0
	add.d	$t3, $t3, $a5
	ldx.b	$t3, $t3, $t2
	addi.d	$t5, $t4, -1
	st.d	$t5, $s3, 0
	st.b	$t3, $t4, -1
	ld.d	$t3, $s1, 0
	addi.d	$t4, $t3, -1
	st.d	$t4, $s1, 0
	addi.d	$t2, $t2, -1
	st.b	$a4, $t3, -1
	bnez	$t2, .LBB0_107
# %bb.108:                              # %while.end.loopexit.i
                                        #   in Loop: Header=BB0_106 Depth=1
	add.d	$a3, $a3, $s2
	add.d	$a3, $t1, $a3
.LBB0_109:                              # %while.end.i
                                        #   in Loop: Header=BB0_106 Depth=1
	nor	$t1, $a6, $zero
	add.w	$a0, $a0, $t1
	beqz	$a0, .LBB0_111
	.p2align	4, , 16
.LBB0_110:                              # %while.body58.i
                                        #   Parent Loop BB0_106 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t1, $s3, 0
	addi.d	$t2, $t1, -1
	st.d	$t2, $s3, 0
	st.b	$a4, $t1, -1
	ld.d	$t1, $fp, 0
	ld.d	$t2, $s1, 0
	add.d	$t1, $t1, $a6
	ldx.b	$t1, $t1, $a0
	addi.d	$t3, $t2, -1
	st.d	$t3, $s1, 0
	st.b	$t1, $t2, -1
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 1
	bnez	$a0, .LBB0_110
.LBB0_111:                              # %while.end69.i
                                        #   in Loop: Header=BB0_106 Depth=1
	blt	$a7, $a2, .LBB0_114
# %bb.112:                              # %while.end69.i
                                        #   in Loop: Header=BB0_106 Depth=1
	blt	$t0, $a2, .LBB0_114
# %bb.113:                              # %if.end.i
                                        #   in Loop: Header=BB0_106 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a7, $s3, 0
	ldx.b	$a0, $a0, $a5
	addi.d	$t0, $a7, -1
	st.d	$t0, $s3, 0
	st.b	$a0, $a7, -1
	ld.d	$a0, $fp, 0
	ld.d	$a7, $s1, 0
	ldx.b	$a0, $a0, $a6
	addi.d	$t0, $a7, -1
	st.d	$t0, $s1, 0
	addi.w	$a3, $a3, 2
	st.b	$a0, $a7, -1
	move	$s2, $a5
	move	$a0, $a6
	bge	$a1, $a3, .LBB0_106
.LBB0_114:                              # %genGtracking.exit
	ld.d	$s2, $s3, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	lu12i.w	$a4, 1220
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	blt	$a2, $a3, .LBB0_125
# %bb.115:                              # %genGtracking.exit
	ori	$a0, $a4, 2881
	bge	$a3, $a0, .LBB0_125
.LBB0_116:                              # %if.end292
	ld.d	$a0, $s0, 0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s1, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	fmov.s	$fa0, $fs0
	fld.d	$fs0, $sp, 192                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 272                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 280                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 288
	ret
.LBB0_117:                              # %vector.ph343
	move	$t5, $t3
	bstrins.d	$t5, $zero, 3, 0
	addi.d	$t4, $a4, 32
	addi.d	$t6, $a3, 36
	addi.d	$t7, $t2, 36
	addi.d	$t8, $t0, 36
	addi.d	$s1, $t1, 36
	xvrepli.b	$xr1, 0
	move	$s2, $t5
	.p2align	4, , 16
.LBB0_118:                              # %vector.body346
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $t4, -32
	xvld	$xr3, $t4, 0
	xvst	$xr2, $t6, -32
	xvst	$xr3, $t6, 0
	xvst	$xr1, $t8, -32
	xvst	$xr1, $t8, 0
	xvst	$xr2, $s1, -32
	xvst	$xr3, $s1, 0
	xvst	$xr1, $t7, -32
	xvst	$xr1, $t7, 0
	addi.d	$s2, $s2, -16
	addi.d	$t4, $t4, 64
	addi.d	$t6, $t6, 64
	addi.d	$t7, $t7, 64
	addi.d	$t8, $t8, 64
	addi.d	$s1, $s1, 64
	bnez	$s2, .LBB0_118
# %bb.119:                              # %middle.block351
	beq	$t3, $t5, .LBB0_59
# %bb.120:                              # %vec.epilog.iter.check356
	andi	$t4, $t3, 12
	beqz	$t4, .LBB0_126
# %bb.121:
	move	$s6, $s4
.LBB0_122:                              # %vec.epilog.ph355
	move	$t6, $t3
	bstrins.d	$t6, $zero, 1, 0
	ori	$t7, $zero, 1
	move	$t4, $t3
	bstrins.d	$t4, $t7, 1, 0
	slli.d	$t8, $t5, 2
	alsl.d	$t7, $t5, $a4, 2
	addi.d	$s4, $t8, 4
	add.d	$t8, $a3, $s4
	add.d	$s1, $t0, $s4
	add.d	$s2, $t1, $s4
	add.d	$s4, $t2, $s4
	sub.d	$t5, $t5, $t6
	vrepli.b	$vr1, 0
	.p2align	4, , 16
.LBB0_123:                              # %vec.epilog.vector.body361
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $t7, 0
	vst	$vr2, $t8, 0
	vst	$vr1, $s1, 0
	vst	$vr2, $s2, 0
	vst	$vr1, $s4, 0
	addi.d	$t7, $t7, 16
	addi.d	$t8, $t8, 16
	addi.d	$s1, $s1, 16
	addi.d	$s2, $s2, 16
	addi.d	$t5, $t5, 4
	addi.d	$s4, $s4, 16
	bnez	$t5, .LBB0_123
# %bb.124:                              # %vec.epilog.middle.block366
	move	$s4, $s6
	bne	$t3, $t6, .LBB0_57
	b	.LBB0_59
.LBB0_125:                              # %if.then290
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
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(genG__align11.mseq1)
	ld.d	$s2, $a0, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $a0, %pc_lo12(genG__align11.mseq2)
	b	.LBB0_116
.LBB0_126:
	addi.d	$t4, $t5, 1
	b	.LBB0_57
.Lfunc_end0:
	.size	genG__align11, .Lfunc_end0-genG__align11
                                        # -- End function
	.type	genG__align11.m,@object         # @genG__align11.m
	.local	genG__align11.m
	.comm	genG__align11.m,8,8
	.type	genG__align11.largeM,@object    # @genG__align11.largeM
	.local	genG__align11.largeM
	.comm	genG__align11.largeM,8,8
	.type	genG__align11.ijpi,@object      # @genG__align11.ijpi
	.local	genG__align11.ijpi
	.comm	genG__align11.ijpi,8,8
	.type	genG__align11.ijpj,@object      # @genG__align11.ijpj
	.local	genG__align11.ijpj
	.comm	genG__align11.ijpj,8,8
	.type	genG__align11.mp,@object        # @genG__align11.mp
	.local	genG__align11.mp
	.comm	genG__align11.mp,8,8
	.type	genG__align11.Mp,@object        # @genG__align11.Mp
	.local	genG__align11.Mp
	.comm	genG__align11.Mp,8,8
	.type	genG__align11.w1,@object        # @genG__align11.w1
	.local	genG__align11.w1
	.comm	genG__align11.w1,8,8
	.type	genG__align11.w2,@object        # @genG__align11.w2
	.local	genG__align11.w2
	.comm	genG__align11.w2,8,8
	.type	genG__align11.match,@object     # @genG__align11.match
	.local	genG__align11.match
	.comm	genG__align11.match,8,8
	.type	genG__align11.initverticalw,@object # @genG__align11.initverticalw
	.local	genG__align11.initverticalw
	.comm	genG__align11.initverticalw,8,8
	.type	genG__align11.lastverticalw,@object # @genG__align11.lastverticalw
	.local	genG__align11.lastverticalw
	.comm	genG__align11.lastverticalw,8,8
	.type	genG__align11.mseq1,@object     # @genG__align11.mseq1
	.local	genG__align11.mseq1
	.comm	genG__align11.mseq1,8,8
	.type	genG__align11.mseq2,@object     # @genG__align11.mseq2
	.local	genG__align11.mseq2
	.comm	genG__align11.mseq2,8,8
	.type	genG__align11.mseq,@object      # @genG__align11.mseq
	.local	genG__align11.mseq
	.comm	genG__align11.mseq,8,8
	.type	genG__align11.cpmx1,@object     # @genG__align11.cpmx1
	.local	genG__align11.cpmx1
	.comm	genG__align11.cpmx1,8,8
	.type	genG__align11.cpmx2,@object     # @genG__align11.cpmx2
	.local	genG__align11.cpmx2
	.comm	genG__align11.cpmx2,8,8
	.type	genG__align11.intwork,@object   # @genG__align11.intwork
	.local	genG__align11.intwork
	.comm	genG__align11.intwork,8,8
	.type	genG__align11.floatwork,@object # @genG__align11.floatwork
	.local	genG__align11.floatwork
	.comm	genG__align11.floatwork,8,8
	.type	genG__align11.orlgth1,@object   # @genG__align11.orlgth1
	.local	genG__align11.orlgth1
	.comm	genG__align11.orlgth1,4,4
	.type	genG__align11.orlgth2,@object   # @genG__align11.orlgth2
	.local	genG__align11.orlgth2
	.comm	genG__align11.orlgth2,4,4
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

	.section	".note.GNU-stack","",@progbits
	.addrsig
