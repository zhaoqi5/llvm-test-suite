	.file	"rna.c"
	.text
	.globl	rnaalifoldcall                  # -- Begin function rnaalifoldcall
	.p2align	5
	.type	rnaalifoldcall,@function
rnaalifoldcall:                         # @rnaalifoldcall
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$s4, %pc_hi20(rnaalifoldcall.order)
	ld.d	$a1, $s4, %pc_lo12(rnaalifoldcall.order)
	move	$s1, $a0
	pcalau12i	$s5, %pc_hi20(rnaalifoldcall.name)
	bnez	$a1, .LBB0_4
# %bb.1:                                # %if.then
	pcaddu18i	$ra, %call36(getpid)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(rnaalifoldcall.fnamein)
	addi.d	$a0, $a0, %pc_lo12(rnaalifoldcall.fnamein)
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$s6, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $s6, 0
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s6, 0
	st.d	$a0, $s4, %pc_lo12(rnaalifoldcall.order)
	ori	$a1, $zero, 10
	move	$a0, $a2
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, 0
	ori	$a2, $zero, 1
	st.d	$a0, $s5, %pc_lo12(rnaalifoldcall.name)
	blt	$a1, $a2, .LBB0_4
# %bb.2:                                # %for.body.preheader
	move	$s7, $zero
	move	$s8, $zero
	move	$s2, $zero
	move	$s0, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s3, $a0, %pc_lo12(.L.str.1)
	.p2align	4, , 16
.LBB0_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s5, %pc_lo12(rnaalifoldcall.name)
	ld.d	$a1, $s4, %pc_lo12(rnaalifoldcall.order)
	ldx.d	$a0, $a0, $s8
	stx.w	$s2, $a1, $s7
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 0
	addi.d	$s0, $s0, 1
	addi.w	$s2, $s2, 1
	addi.d	$s8, $s8, 8
	addi.d	$s7, $s7, 4
	blt	$s0, $a0, .LBB0_3
.LBB0_4:                                # %if.end
	pcalau12i	$a0, %pc_hi20(rnaalifoldcall.fnamein)
	addi.d	$a0, $a0, %pc_lo12(rnaalifoldcall.fnamein)
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_6
# %bb.5:                                # %if.then24
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 31
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_6:                                # %if.end26
	ld.d	$a4, $s5, %pc_lo12(rnaalifoldcall.name)
	ld.d	$a7, $s4, %pc_lo12(rnaalifoldcall.order)
	addi.w	$a2, $s1, 0
	move	$s1, $a0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	move	$a3, $fp
	move	$a5, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(clustalout_pointer)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(rnaalifoldcall.cmd)
	addi.d	$a0, $a0, %pc_lo12(rnaalifoldcall.cmd)
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	pcalau12i	$a2, %pc_hi20(rnaalifoldcall.fnamein)
	addi.d	$a2, $a2, %pc_lo12(rnaalifoldcall.fnamein)
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ori	$a1, $zero, 29
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	rnaalifoldcall, .Lfunc_end0-rnaalifoldcall
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function foldrna
.LCPI1_0:
	.word	0x44160000                      # float 600
	.text
	.globl	foldrna
	.p2align	5
	.type	foldrna,@function
foldrna:                                # @foldrna
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -416
	st.d	$ra, $sp, 408                   # 8-byte Folded Spill
	st.d	$fp, $sp, 400                   # 8-byte Folded Spill
	st.d	$s0, $sp, 392                   # 8-byte Folded Spill
	st.d	$s1, $sp, 384                   # 8-byte Folded Spill
	st.d	$s2, $sp, 376                   # 8-byte Folded Spill
	st.d	$s3, $sp, 368                   # 8-byte Folded Spill
	st.d	$s4, $sp, 360                   # 8-byte Folded Spill
	st.d	$s5, $sp, 352                   # 8-byte Folded Spill
	st.d	$s6, $sp, 344                   # 8-byte Folded Spill
	st.d	$s7, $sp, 336                   # 8-byte Folded Spill
	st.d	$s8, $sp, 328                   # 8-byte Folded Spill
	move	$s2, $a2
	ld.d	$a2, $sp, 416
	st.d	$a2, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a2, $s2, 0
	st.d	$a7, $sp, 312                   # 8-byte Folded Spill
	st.d	$a6, $sp, 320                   # 8-byte Folded Spill
	move	$s6, $a5
	move	$s0, $a4
	move	$fp, $a3
	move	$s7, $a1
	move	$s8, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	move	$s5, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	addi.w	$s1, $s5, 10
	move	$a0, $s8
	move	$a1, $s1
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(foldrna.useq1)
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	st.d	$a0, $a1, %pc_lo12(foldrna.useq1)
	addi.w	$s3, $s4, 10
	move	$a0, $s7
	move	$a1, $s3
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(foldrna.useq2)
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	st.d	$a0, $a1, %pc_lo12(foldrna.useq2)
	move	$a0, $s8
	move	$a1, $s1
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(foldrna.oseq1)
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	st.d	$a0, $a1, %pc_lo12(foldrna.oseq1)
	move	$a0, $s7
	move	$a1, $s3
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(foldrna.oseq2)
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	st.d	$a0, $a1, %pc_lo12(foldrna.oseq2)
	move	$a0, $s8
	move	$a1, $s1
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(foldrna.oseq1r)
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	st.d	$a0, $a1, %pc_lo12(foldrna.oseq1r)
	move	$a0, $s7
	move	$a1, $s3
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(foldrna.oseq2r)
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	st.d	$a0, $a1, %pc_lo12(foldrna.oseq2r)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(foldrna.odir1)
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	st.d	$a0, $a1, %pc_lo12(foldrna.odir1)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(foldrna.odir2)
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	st.d	$a0, $a1, %pc_lo12(foldrna.odir2)
	addi.w	$a1, $s5, 1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	addi.w	$a1, $s4, 1
	st.d	$s7, $sp, 296                   # 8-byte Folded Spill
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s5, $sp, 152                   # 8-byte Folded Spill
	addi.w	$s3, $s5, 0
	st.d	$s4, $sp, 160                   # 8-byte Folded Spill
	addi.w	$s1, $s4, 0
	slt	$a0, $s1, $s3
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $s3, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 8
	move	$a0, $s3
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(foldrna.pairprob1)
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	st.d	$a0, $a1, %pc_lo12(foldrna.pairprob1)
	ori	$a1, $zero, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(foldrna.pairprob2)
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	st.d	$a0, $a1, %pc_lo12(foldrna.pairprob2)
	move	$a0, $s3
	move	$a1, $s1
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(foldrna.map)
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	st.d	$a0, $a1, %pc_lo12(foldrna.map)
	move	$a0, $s3
	move	$a1, $s1
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(foldrna.impmtx2)
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	st.d	$a0, $a1, %pc_lo12(foldrna.impmtx2)
	st.d	$s3, $sp, 248                   # 8-byte Folded Spill
	move	$a0, $s3
	st.d	$s1, $sp, 240                   # 8-byte Folded Spill
	move	$a1, $s1
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 1
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	blt	$s8, $s1, .LBB1_3
# %bb.1:                                # %for.body.lr.ph
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s3, $a0, %pc_lo12(foldrna.useq1)
	move	$s4, $s8
	move	$s5, $s2
	.p2align	4, , 16
.LBB1_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a1, $s5, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, 8
	addi.d	$s4, $s4, -1
	addi.d	$s3, $s3, 8
	bnez	$s4, .LBB1_2
.LBB1_3:                                # %for.cond38.preheader
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	blt	$a0, $s1, .LBB1_6
# %bb.4:                                # %for.body41.lr.ph
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s1, $a0, %pc_lo12(foldrna.useq2)
	ld.d	$s3, $sp, 296                   # 8-byte Folded Reload
	move	$s4, $fp
	.p2align	4, , 16
.LBB1_5:                                # %for.body41
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s4, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, 8
	addi.d	$s3, $s3, -1
	addi.d	$s1, $s1, 8
	bnez	$s3, .LBB1_5
.LBB1_6:                                # %for.cond50.preheader
	ori	$s1, $zero, 1
	blt	$s8, $s1, .LBB1_9
# %bb.7:                                # %for.body53.lr.ph
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s3, $a0, %pc_lo12(foldrna.oseq1)
	move	$s4, $s8
	.p2align	4, , 16
.LBB1_8:                                # %for.body53
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a1, $s2, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 8
	addi.d	$s4, $s4, -1
	addi.d	$s3, $s3, 8
	bnez	$s4, .LBB1_8
.LBB1_9:                                # %for.cond62.preheader
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	blt	$a0, $s1, .LBB1_12
# %bb.10:                               # %for.body65.lr.ph
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s1, $a0, %pc_lo12(foldrna.oseq2)
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_11:                               # %for.body65
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	ld.d	$a1, $fp, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	addi.d	$s2, $s2, -1
	addi.d	$s1, $s1, 8
	bnez	$s2, .LBB1_11
.LBB1_12:                               # %for.cond74.preheader
	ori	$fp, $zero, 1
	ld.d	$s3, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	blt	$s8, $fp, .LBB1_15
# %bb.13:                               # %for.body77.preheader
	move	$s1, $zero
	slli.d	$s2, $s8, 3
	.p2align	4, , 16
.LBB1_14:                               # %for.body77
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, %pc_lo12(foldrna.useq1)
	ldx.d	$a2, $s4, $s1
	add.d	$a1, $a0, $s1
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(commongappick_record)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 8
	bne	$s2, $s1, .LBB1_14
.LBB1_15:                               # %for.cond83.preheader
	ld.d	$s2, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	blt	$a0, $fp, .LBB1_18
# %bb.16:                               # %for.body86.preheader
	move	$fp, $zero
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	slli.d	$s1, $a0, 3
	.p2align	4, , 16
.LBB1_17:                               # %for.body86
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, %pc_lo12(foldrna.useq2)
	ldx.d	$a2, $s3, $fp
	add.d	$a1, $a0, $fp
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(commongappick_record)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	bne	$s1, $fp, .LBB1_17
.LBB1_18:                               # %for.cond94.preheader
	ori	$fp, $zero, 1
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	blt	$a0, $fp, .LBB1_21
# %bb.19:                               # %for.body97.lr.ph
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s1, $a0, %pc_lo12(foldrna.pairprob1)
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	bstrpick.d	$s2, $a0, 30, 0
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	lu52i.d	$s3, $a0, -1032
	.p2align	4, , 16
.LBB1_20:                               # %for.body97
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 1
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 0
	st.d	$s3, $a0, 16
	addi.d	$s2, $s2, -1
	addi.d	$s1, $s1, 8
	bnez	$s2, .LBB1_20
.LBB1_21:                               # %for.cond110.preheader
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	blt	$s3, $fp, .LBB1_24
# %bb.22:                               # %for.body113.lr.ph
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(foldrna.pairprob2)
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	bstrpick.d	$s1, $a0, 30, 0
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	lu52i.d	$s2, $a0, -1032
	.p2align	4, , 16
.LBB1_23:                               # %for.body113
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 1
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	st.d	$s2, $a0, 16
	addi.d	$s1, $s1, -1
	addi.d	$fp, $fp, 8
	bnez	$s1, .LBB1_23
.LBB1_24:                               # %for.end127
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(foldrna.oseq1)
	ori	$a1, $zero, 1
	ld.d	$t6, $sp, 216                   # 8-byte Folded Reload
	blt	$s8, $a1, .LBB1_36
# %bb.25:                               # %for.end127
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	blt	$a2, $a1, .LBB1_36
# %bb.26:                               # %for.cond1.preheader.us.preheader.i
	move	$a2, $zero
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	bstrpick.d	$a3, $a3, 30, 0
	ori	$a4, $zero, 20
	ori	$a5, $zero, 45
	ori	$a6, $zero, 1
	lu12i.w	$a7, 384
	b	.LBB1_28
	.p2align	4, , 16
.LBB1_27:                               # %for.cond1.for.inc86_crit_edge.us.i
                                        #   in Loop: Header=BB1_28 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a2, $a3, .LBB1_36
.LBB1_28:                               # %for.cond1.preheader.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_31 Depth 2
	move	$t0, $a0
	move	$t1, $s8
	b	.LBB1_31
	.p2align	4, , 16
.LBB1_29:                               # %if.then19.us.i
                                        #   in Loop: Header=BB1_31 Depth=2
	ori	$t3, $zero, 116
.LBB1_30:                               # %for.inc.us.i
                                        #   in Loop: Header=BB1_31 Depth=2
	stx.b	$t3, $t2, $a2
	addi.d	$t1, $t1, -1
	addi.d	$t0, $t0, 8
	beqz	$t1, .LBB1_27
.LBB1_31:                               # %for.body3.us.i
                                        #   Parent Loop BB1_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t2, $t0, 0
	ldx.bu	$t3, $t2, $a2
	addi.d	$t4, $t3, -97
	bltu	$a4, $t4, .LBB1_34
# %bb.32:                               # %for.body3.us.i
                                        #   in Loop: Header=BB1_31 Depth=2
	sll.d	$t4, $a6, $t4
	andi	$t5, $t4, 69
	bnez	$t5, .LBB1_30
# %bb.33:                               # %for.body3.us.i
                                        #   in Loop: Header=BB1_31 Depth=2
	and	$t4, $t4, $a7
	bnez	$t4, .LBB1_29
.LBB1_34:                               # %for.body3.us.i
                                        #   in Loop: Header=BB1_31 Depth=2
	beq	$t3, $a5, .LBB1_30
# %bb.35:                               # %if.else76.us.i
                                        #   in Loop: Header=BB1_31 Depth=2
	ori	$t3, $zero, 110
	b	.LBB1_30
.LBB1_36:                               # %utot.exit
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	blt	$a2, $a1, .LBB1_48
# %bb.37:                               # %utot.exit
	ori	$a1, $zero, 1
	blt	$s3, $a1, .LBB1_48
# %bb.38:                               # %for.cond1.preheader.us.preheader.i228
	move	$a2, $zero
	ld.d	$a3, $t6, %pc_lo12(foldrna.oseq2)
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	bstrpick.d	$a4, $a4, 30, 0
	ori	$a5, $zero, 20
	ori	$a6, $zero, 45
	lu12i.w	$a7, 384
	b	.LBB1_40
	.p2align	4, , 16
.LBB1_39:                               # %for.cond1.for.inc86_crit_edge.us.i241
                                        #   in Loop: Header=BB1_40 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a2, $a4, .LBB1_48
.LBB1_40:                               # %for.cond1.preheader.us.i231
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_43 Depth 2
	move	$t0, $a3
	ld.d	$t1, $sp, 296                   # 8-byte Folded Reload
	b	.LBB1_43
	.p2align	4, , 16
.LBB1_41:                               # %if.then19.us.i246
                                        #   in Loop: Header=BB1_43 Depth=2
	ori	$t3, $zero, 116
.LBB1_42:                               # %for.inc.us.i237
                                        #   in Loop: Header=BB1_43 Depth=2
	stx.b	$t3, $t2, $a2
	addi.d	$t1, $t1, -1
	addi.d	$t0, $t0, 8
	beqz	$t1, .LBB1_39
.LBB1_43:                               # %for.body3.us.i233
                                        #   Parent Loop BB1_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t2, $t0, 0
	ldx.bu	$t3, $t2, $a2
	addi.d	$t4, $t3, -97
	bltu	$a5, $t4, .LBB1_46
# %bb.44:                               # %for.body3.us.i233
                                        #   in Loop: Header=BB1_43 Depth=2
	sll.d	$t4, $a1, $t4
	andi	$t5, $t4, 69
	bnez	$t5, .LBB1_42
# %bb.45:                               # %for.body3.us.i233
                                        #   in Loop: Header=BB1_43 Depth=2
	and	$t4, $t4, $a7
	bnez	$t4, .LBB1_41
.LBB1_46:                               # %for.body3.us.i233
                                        #   in Loop: Header=BB1_43 Depth=2
	beq	$t3, $a6, .LBB1_42
# %bb.47:                               # %if.else76.us.i248
                                        #   in Loop: Header=BB1_43 Depth=2
	ori	$t3, $zero, 110
	b	.LBB1_42
.LBB1_48:                               # %utot.exit249
	pcalau12i	$a1, %got_pc_hi20(rnaprediction)
	ld.d	$fp, $a1, %got_pc_lo12(rnaprediction)
	ld.bu	$a1, $fp, 0
	ori	$s1, $zero, 114
	beq	$a1, $s1, .LBB1_203
# %bb.49:                               # %if.else
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(foldrna.useq1)
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a3, $a2, %pc_lo12(foldrna.pairprob1)
	ld.d	$a0, $a0, 0
	move	$a2, $s8
	ld.d	$a4, $sp, 320                   # 8-byte Folded Reload
	move	$a5, $s4
	move	$a6, $s0
	pcaddu18i	$ra, %call36(mccaskillextract)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $fp, 0
	ld.d	$fp, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $fp, %pc_lo12(foldrna.oseq2)
	beq	$a1, $s1, .LBB1_204
# %bb.50:                               # %if.else135
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(foldrna.useq2)
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a3, $a2, %pc_lo12(foldrna.pairprob2)
	ld.d	$a0, $a0, 0
	ld.d	$s1, $sp, 296                   # 8-byte Folded Reload
	move	$a2, $s1
	ld.d	$a4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	move	$a6, $s6
	pcaddu18i	$ra, %call36(mccaskillextract)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(foldrna.oseq1)
	ld.d	$a1, $fp, %pc_lo12(foldrna.oseq2)
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(foldrna.map)
	st.d	$a2, $sp, 24
	st.d	$zero, $sp, 16
	vrepli.b	$vr0, 0
	lu12i.w	$a2, 2
	ori	$a6, $a2, 1808
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	vst	$vr0, $sp, 0
	move	$a2, $s0
	move	$a3, $s6
	move	$a4, $s8
	move	$a5, $s1
	move	$a7, $zero
	pcaddu18i	$ra, %call36(Lalignmm_hmout)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(RNAscoremtx)
	ld.d	$a0, $a0, %got_pc_lo12(RNAscoremtx)
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 110
	pcalau12i	$a2, %pc_hi20(foldrna.pairpt2)
	st.d	$a2, $sp, 176                   # 8-byte Folded Spill
	beq	$a0, $a1, .LBB1_69
# %bb.51:                               # %if.else135
	ori	$a1, $zero, 114
	vld	$vr8, $sp, 64                   # 16-byte Folded Reload
	bne	$a0, $a1, .LBB1_149
# %bb.52:                               # %for.cond165.preheader
	ori	$a0, $zero, 1
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB1_196
# %bb.53:                               # %for.cond169.preheader.lr.ph
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	bstrpick.d	$s1, $a1, 30, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	bstrpick.d	$a2, $a1, 30, 0
	st.d	$a2, $sp, 288                   # 8-byte Folded Spill
	bstrpick.d	$t8, $a1, 30, 4
	andi	$t7, $a1, 12
	bstrpick.d	$fp, $a1, 30, 2
	xvrepli.b	$xr0, 0
	ld.d	$t6, $sp, 216                   # 8-byte Folded Reload
	blt	$s3, $a0, .LBB1_73
# %bb.54:                               # %for.cond169.preheader.us.preheader
	move	$a2, $zero
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a3, $a0, %pc_lo12(foldrna.impmtx2)
	slli.d	$a4, $t8, 4
	slli.d	$a5, $fp, 2
	sub.d	$a6, $zero, $a5
	ori	$a7, $zero, 4
	lu12i.w	$t0, 260096
	ori	$t1, $zero, 64
	ori	$t2, $zero, 16
	vreplgr2vr.w	$vr1, $t0
	xvreplgr2vr.w	$xr2, $t0
	b	.LBB1_56
	.p2align	4, , 16
.LBB1_55:                               # %for.cond169.for.inc184_crit_edge.us
                                        #   in Loop: Header=BB1_56 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a2, $s1, .LBB1_73
.LBB1_56:                               # %iter.check
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_61 Depth 2
                                        #     Child Loop BB1_65 Depth 2
                                        #     Child Loop BB1_68 Depth 2
	slli.d	$a1, $a2, 3
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	ldx.d	$t3, $a3, $a1
	move	$t4, $zero
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	bltu	$a1, $a7, .LBB1_67
# %bb.57:                               # %iter.check
                                        #   in Loop: Header=BB1_56 Depth=1
	sub.d	$a1, $t3, $a0
	bltu	$a1, $t1, .LBB1_67
# %bb.58:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB1_56 Depth=1
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	bgeu	$a1, $t2, .LBB1_60
# %bb.59:                               #   in Loop: Header=BB1_56 Depth=1
	move	$t5, $zero
	b	.LBB1_64
	.p2align	4, , 16
.LBB1_60:                               # %vector.body.preheader
                                        #   in Loop: Header=BB1_56 Depth=1
	addi.d	$a1, $t3, 32
	addi.d	$t4, $a0, 32
	move	$t5, $a4
	.p2align	4, , 16
.LBB1_61:                               # %vector.body
                                        #   Parent Loop BB1_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr2, $t4, -32
	xvst	$xr2, $t4, 0
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$t5, $t5, -16
	addi.d	$a1, $a1, 64
	addi.d	$t4, $t4, 64
	bnez	$t5, .LBB1_61
# %bb.62:                               # %middle.block
                                        #   in Loop: Header=BB1_56 Depth=1
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	beq	$a1, $a4, .LBB1_55
# %bb.63:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB1_56 Depth=1
	move	$t5, $a4
	move	$t4, $a4
	beqz	$t7, .LBB1_67
.LBB1_64:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB1_56 Depth=1
	add.d	$a1, $a6, $t5
	alsl.d	$t4, $t5, $t3, 2
	alsl.d	$t5, $t5, $a0, 2
	.p2align	4, , 16
.LBB1_65:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB1_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr1, $t5, 0
	vst	$vr8, $t4, 0
	addi.d	$a1, $a1, 4
	addi.d	$t4, $t4, 16
	addi.d	$t5, $t5, 16
	bnez	$a1, .LBB1_65
# %bb.66:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB1_56 Depth=1
	move	$t4, $a5
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	beq	$a1, $a5, .LBB1_55
.LBB1_67:                               # %for.body172.us.preheader
                                        #   in Loop: Header=BB1_56 Depth=1
	alsl.d	$a0, $t4, $a0, 2
	alsl.d	$a1, $t4, $t3, 2
	ld.d	$t3, $sp, 288                   # 8-byte Folded Reload
	sub.d	$t3, $t3, $t4
	.p2align	4, , 16
.LBB1_68:                               # %for.body172.us
                                        #   Parent Loop BB1_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$t0, $a0, 0
	st.w	$zero, $a1, 0
	addi.d	$a0, $a0, 4
	addi.d	$t3, $t3, -1
	addi.d	$a1, $a1, 4
	bnez	$t3, .LBB1_68
	b	.LBB1_55
.LBB1_69:                               # %for.cond142.preheader
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB1_196
# %bb.70:                               # %for.cond146.preheader.lr.ph
	blt	$s3, $a0, .LBB1_150
# %bb.71:                               # %for.cond146.preheader.us.preheader
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s0, $a0, %pc_lo12(foldrna.impmtx2)
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	bstrpick.d	$a0, $a0, 32, 2
	slli.d	$fp, $a0, 2
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	bstrpick.d	$s1, $a0, 30, 0
	.p2align	4, , 16
.LBB1_72:                               # %for.cond146.preheader.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, -1
	addi.d	$s0, $s0, 8
	bnez	$s1, .LBB1_72
	b	.LBB1_150
.LBB1_73:                               # %for.body190.lr.ph
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$t8, $sp, 56                    # 8-byte Folded Spill
	st.d	$t7, $sp, 40                    # 8-byte Folded Spill
	move	$a7, $zero
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a6, $a0, %pc_lo12(foldrna.pairprob1)
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(foldrna.pairprob2)
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$t2, $a0, %pc_lo12(foldrna.oseq1)
	ld.d	$t1, $t6, %pc_lo12(foldrna.oseq2)
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	bstrpick.d	$t7, $a0, 31, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(foldrna.impmtx2)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	addi.w	$t6, $zero, -1
	movgr2fr.w	$fa1, $zero
	pcalau12i	$a0, %got_pc_hi20(amino_n)
	ld.d	$a3, $a0, %got_pc_lo12(amino_n)
	ori	$t8, $zero, 3
	pcalau12i	$a0, %got_pc_hi20(ribosumdis)
	ld.d	$a4, $a0, %got_pc_lo12(ribosumdis)
	ori	$fp, $zero, 36
	ori	$ra, $zero, 148
	ori	$a5, $zero, 104
	st.d	$s1, $sp, 256                   # 8-byte Folded Spill
	st.d	$a6, $sp, 128                   # 8-byte Folded Spill
	b	.LBB1_76
	.p2align	4, , 16
.LBB1_74:                               # %for.cond193.for.inc265_crit_edge.split.us
                                        #   in Loop: Header=BB1_76 Depth=1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	st.d	$a1, $a2, %pc_lo12(foldrna.pairpt2)
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 128                   # 8-byte Folded Reload
.LBB1_75:                               # %for.inc265
                                        #   in Loop: Header=BB1_76 Depth=1
	addi.d	$a7, $a7, 1
	beq	$a7, $s1, .LBB1_123
.LBB1_76:                               # %for.body190
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_121 Depth 2
                                        #     Child Loop BB1_80 Depth 2
                                        #       Child Loop BB1_82 Depth 3
                                        #         Child Loop BB1_86 Depth 4
                                        #           Child Loop BB1_110 Depth 5
                                        #             Child Loop BB1_117 Depth 6
                                        #             Child Loop BB1_112 Depth 6
                                        #           Child Loop BB1_93 Depth 5
                                        #             Child Loop BB1_100 Depth 6
                                        #             Child Loop BB1_95 Depth 6
	slli.d	$a0, $a7, 3
	ldx.d	$t0, $a6, $a0
	ld.w	$a2, $t0, 16
	beq	$a2, $t6, .LBB1_122
# %bb.77:                               # %for.cond198.preheader.lr.ph
                                        #   in Loop: Header=BB1_76 Depth=1
	blez	$s3, .LBB1_121
# %bb.78:                               # %for.cond198.preheader.us.preheader
                                        #   in Loop: Header=BB1_76 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $a0, 3
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $a0, 3
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	b	.LBB1_80
	.p2align	4, , 16
.LBB1_79:                               # %for.cond198.for.inc262_crit_edge.us
                                        #   in Loop: Header=BB1_80 Depth=2
	ld.w	$a2, $t0, 40
	addi.d	$a0, $t0, 24
	move	$t0, $a0
	beq	$a2, $t6, .LBB1_74
.LBB1_80:                               # %for.cond198.preheader.us
                                        #   Parent Loop BB1_76 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_82 Depth 3
                                        #         Child Loop BB1_86 Depth 4
                                        #           Child Loop BB1_110 Depth 5
                                        #             Child Loop BB1_117 Depth 6
                                        #             Child Loop BB1_112 Depth 6
                                        #           Child Loop BB1_93 Depth 5
                                        #             Child Loop BB1_100 Depth 6
                                        #             Child Loop BB1_95 Depth 6
	move	$s3, $zero
	st.d	$t0, $sp, 320                   # 8-byte Folded Spill
	b	.LBB1_82
	.p2align	4, , 16
.LBB1_81:                               # %for.inc259.us
                                        #   in Loop: Header=BB1_82 Depth=3
	addi.d	$s3, $s3, 1
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	beq	$s3, $a0, .LBB1_79
.LBB1_82:                               # %for.body201.us
                                        #   Parent Loop BB1_76 Depth=1
                                        #     Parent Loop BB1_80 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_86 Depth 4
                                        #           Child Loop BB1_110 Depth 5
                                        #             Child Loop BB1_117 Depth 6
                                        #             Child Loop BB1_112 Depth 6
                                        #           Child Loop BB1_93 Depth 5
                                        #             Child Loop BB1_100 Depth 6
                                        #             Child Loop BB1_95 Depth 6
	slli.d	$a0, $s3, 3
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	ldx.d	$s5, $a1, $a0
	ld.w	$s4, $s5, 16
	bne	$s4, $t6, .LBB1_86
# %bb.83:                               #   in Loop: Header=BB1_82 Depth=3
	move	$a1, $s5
	b	.LBB1_81
	.p2align	4, , 16
.LBB1_84:                               # %for.inc257.us.sink.split
                                        #   in Loop: Header=BB1_86 Depth=4
	pcalau12i	$a0, %got_pc_hi20(consweight_multi)
	ld.d	$a0, $a0, %got_pc_lo12(consweight_multi)
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	fld.s	$fa5, $a0, 0
	slli.d	$a0, $s3, 2
	fldx.s	$fa6, $a1, $a0
	fmul.s	$fa2, $fa2, $fa3
	ld.d	$a6, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a6, $a6, 0
	fmul.s	$fa3, $fa2, $fa4
	fmadd.s	$fa3, $fa3, $fa5, $fa6
	fstx.s	$fa3, $a1, $a0
	fldx.s	$fa3, $a6, $a0
	fsub.s	$fa2, $fa3, $fa2
	fstx.s	$fa2, $a6, $a0
	ld.d	$t0, $sp, 320                   # 8-byte Folded Reload
.LBB1_85:                               # %for.inc257.us
                                        #   in Loop: Header=BB1_86 Depth=4
	ld.w	$s4, $s5, 40
	addi.d	$a1, $s5, 24
	move	$s5, $a1
	beq	$s4, $t6, .LBB1_81
.LBB1_86:                               # %for.body208.us
                                        #   Parent Loop BB1_76 Depth=1
                                        #     Parent Loop BB1_80 Depth=2
                                        #       Parent Loop BB1_82 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB1_110 Depth 5
                                        #             Child Loop BB1_117 Depth 6
                                        #             Child Loop BB1_112 Depth 6
                                        #           Child Loop BB1_93 Depth 5
                                        #             Child Loop BB1_100 Depth 6
                                        #             Child Loop BB1_95 Depth 6
	or	$a0, $s4, $a2
	bltz	$a0, .LBB1_85
# %bb.87:                               # %if.then217.us
                                        #   in Loop: Header=BB1_86 Depth=4
	fld.s	$fa2, $t0, 20
	fld.s	$fa3, $s5, 20
	bge	$a7, $a2, .LBB1_104
# %bb.88:                               # %if.then217.us
                                        #   in Loop: Header=BB1_86 Depth=4
	bge	$s4, $s3, .LBB1_104
# %bb.89:                               # %if.then223.us
                                        #   in Loop: Header=BB1_86 Depth=4
	fmov.s	$fa4, $fa1
	ori	$a0, $zero, 1
	blt	$s8, $a0, .LBB1_84
# %bb.90:                               # %for.cond1.preheader.lr.ph.i.us
                                        #   in Loop: Header=BB1_86 Depth=4
	fmov.s	$fa4, $fa1
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB1_84
# %bb.91:                               # %for.cond1.preheader.us.i252.us.preheader
                                        #   in Loop: Header=BB1_86 Depth=4
	move	$s1, $zero
	fmov.s	$fa4, $fa1
	b	.LBB1_93
	.p2align	4, , 16
.LBB1_92:                               # %for.cond1.for.inc85_crit_edge.us.i.us
                                        #   in Loop: Header=BB1_93 Depth=5
	addi.d	$s1, $s1, 1
	beq	$s1, $s8, .LBB1_84
.LBB1_93:                               # %for.cond1.preheader.us.i252.us
                                        #   Parent Loop BB1_76 Depth=1
                                        #     Parent Loop BB1_80 Depth=2
                                        #       Parent Loop BB1_82 Depth=3
                                        #         Parent Loop BB1_86 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB1_100 Depth 6
                                        #             Child Loop BB1_95 Depth 6
	slli.d	$a0, $s1, 3
	ldx.d	$a0, $t2, $a0
	ldx.b	$a1, $a0, $a7
	ldx.b	$a0, $a0, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$a6, $a3, $a1
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a3, $a0
	slt	$t0, $t8, $a6
	slt	$a1, $t8, $a0
	alsl.d	$a0, $a6, $a0, 2
	addi.w	$t3, $a0, 4
	alsl.d	$a0, $s1, $s0, 3
	masknez	$t3, $t3, $a1
	maskeqz	$a1, $fp, $a1
	or	$a1, $a1, $t3
	masknez	$a1, $a1, $t0
	maskeqz	$t3, $fp, $t0
	or	$a1, $t3, $a1
	masknez	$a6, $a6, $t0
	or	$t0, $t3, $a6
	bne	$a1, $fp, .LBB1_96
# %bb.94:                               # %for.body3.us.i255.us.us.preheader
                                        #   in Loop: Header=BB1_93 Depth=5
	fld.d	$fa5, $a0, 0
	move	$a0, $t1
	move	$a1, $s6
	move	$t3, $t7
	.p2align	4, , 16
.LBB1_95:                               # %for.body3.us.i255.us.us
                                        #   Parent Loop BB1_76 Depth=1
                                        #     Parent Loop BB1_80 Depth=2
                                        #       Parent Loop BB1_82 Depth=3
                                        #         Parent Loop BB1_86 Depth=4
                                        #           Parent Loop BB1_93 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ld.d	$a6, $a0, 0
	ldx.b	$a6, $a6, $s3
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a3, $a6
	slt	$t4, $t8, $a6
	masknez	$t5, $t0, $t4
	pcalau12i	$s2, %got_pc_hi20(n_dis)
	ld.d	$s2, $s2, %got_pc_lo12(n_dis)
	maskeqz	$t4, $fp, $t4
	or	$t4, $t4, $t5
	mul.d	$t4, $t4, $a5
	add.d	$t4, $s2, $t4
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $t4, $a6
	movgr2fr.w	$fa6, $a6
	ffint.s.w	$fa6, $fa6
	fld.d	$fa7, $a1, 0
	fcvt.d.s	$fa6, $fa6
	fmul.d	$fa6, $fa5, $fa6
	fcvt.d.s	$fa4, $fa4
	fmadd.d	$fa4, $fa6, $fa7, $fa4
	fcvt.s.d	$fa4, $fa4
	addi.d	$t3, $t3, -1
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	bnez	$t3, .LBB1_95
	b	.LBB1_92
	.p2align	4, , 16
.LBB1_96:                               #   in Loop: Header=BB1_93 Depth=5
	mul.d	$a1, $a1, $ra
	add.d	$a1, $a4, $a1
	move	$t3, $t1
	move	$s7, $s6
	move	$t4, $t7
	b	.LBB1_100
	.p2align	4, , 16
.LBB1_97:                               # %for.body3.us.if.then54.us_crit_edge.i.us425
                                        #   in Loop: Header=BB1_100 Depth=6
	fld.d	$fa5, $a0, 0
	ori	$s2, $zero, 36
.LBB1_98:                               # %if.then54.us.i.us427
                                        #   in Loop: Header=BB1_100 Depth=6
	pcalau12i	$a6, %got_pc_hi20(n_dis)
	ld.d	$a6, $a6, %got_pc_lo12(n_dis)
	mul.d	$s2, $s2, $a5
	add.d	$a6, $a6, $s2
	alsl.d	$t5, $t5, $a6, 2
.LBB1_99:                               # %for.inc.us.i257.us
                                        #   in Loop: Header=BB1_100 Depth=6
	ld.w	$a6, $t5, 0
	movgr2fr.w	$fa6, $a6
	ffint.s.w	$fa6, $fa6
	fld.d	$fa7, $s7, 0
	fcvt.d.s	$fa6, $fa6
	fmul.d	$fa5, $fa5, $fa6
	fcvt.d.s	$fa4, $fa4
	fmadd.d	$fa4, $fa5, $fa7, $fa4
	fcvt.s.d	$fa4, $fa4
	addi.d	$t4, $t4, -1
	addi.d	$s7, $s7, 8
	addi.d	$t3, $t3, 8
	beqz	$t4, .LBB1_92
.LBB1_100:                              # %for.body3.us.i255.us415
                                        #   Parent Loop BB1_76 Depth=1
                                        #     Parent Loop BB1_80 Depth=2
                                        #       Parent Loop BB1_82 Depth=3
                                        #         Parent Loop BB1_86 Depth=4
                                        #           Parent Loop BB1_93 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ld.d	$s2, $t3, 0
	ldx.b	$a6, $s2, $s3
	slli.d	$a6, $a6, 2
	ldx.w	$t5, $a3, $a6
	blt	$t8, $t5, .LBB1_97
# %bb.101:                              # %if.else40.us.i.us423
                                        #   in Loop: Header=BB1_100 Depth=6
	ldx.b	$a6, $s2, $s4
	slli.d	$a6, $a6, 2
	ldx.w	$s2, $a3, $a6
	fld.d	$fa5, $a0, 0
	bge	$t8, $s2, .LBB1_103
# %bb.102:                              #   in Loop: Header=BB1_100 Depth=6
	move	$s2, $t0
	b	.LBB1_98
	.p2align	4, , 16
.LBB1_103:                              # %if.else69.us.i.us
                                        #   in Loop: Header=BB1_100 Depth=6
	alsl.d	$a6, $t5, $s2, 2
	addi.w	$a6, $a6, 4
	alsl.d	$t5, $a6, $a1, 2
	b	.LBB1_99
	.p2align	4, , 16
.LBB1_104:                              # %if.else235.us
                                        #   in Loop: Header=BB1_86 Depth=4
	bge	$a7, $a2, .LBB1_85
# %bb.105:                              # %if.else235.us
                                        #   in Loop: Header=BB1_86 Depth=4
	bge	$s3, $s4, .LBB1_85
# %bb.106:                              # %if.then241.us
                                        #   in Loop: Header=BB1_86 Depth=4
	fmov.s	$fa4, $fa1
	ori	$a0, $zero, 1
	blt	$s8, $a0, .LBB1_84
# %bb.107:                              # %for.cond1.preheader.lr.ph.i263.us
                                        #   in Loop: Header=BB1_86 Depth=4
	fmov.s	$fa4, $fa1
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB1_84
# %bb.108:                              # %for.cond1.preheader.us.i272.us.preheader
                                        #   in Loop: Header=BB1_86 Depth=4
	move	$s1, $zero
	fmov.s	$fa4, $fa1
	b	.LBB1_110
	.p2align	4, , 16
.LBB1_109:                              # %for.cond1.for.inc85_crit_edge.us.i326.us
                                        #   in Loop: Header=BB1_110 Depth=5
	addi.d	$s1, $s1, 1
	beq	$s1, $s8, .LBB1_84
.LBB1_110:                              # %for.cond1.preheader.us.i272.us
                                        #   Parent Loop BB1_76 Depth=1
                                        #     Parent Loop BB1_80 Depth=2
                                        #       Parent Loop BB1_82 Depth=3
                                        #         Parent Loop BB1_86 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB1_117 Depth 6
                                        #             Child Loop BB1_112 Depth 6
	slli.d	$a0, $s1, 3
	ldx.d	$a0, $t2, $a0
	ldx.b	$a1, $a0, $a7
	ldx.b	$a0, $a0, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$t0, $a3, $a1
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a3, $a0
	slt	$t3, $t8, $t0
	slt	$a1, $t8, $a0
	alsl.d	$a0, $a0, $t0, 2
	addi.w	$t4, $a0, 4
	alsl.d	$a0, $s1, $s0, 3
	masknez	$t4, $t4, $a1
	maskeqz	$a1, $fp, $a1
	or	$a1, $a1, $t4
	masknez	$a1, $a1, $t3
	maskeqz	$t4, $fp, $t3
	or	$a1, $t4, $a1
	masknez	$t0, $t0, $t3
	or	$s2, $t4, $t0
	bne	$a1, $fp, .LBB1_113
# %bb.111:                              # %for.body3.us.i293.us.us.preheader
                                        #   in Loop: Header=BB1_110 Depth=5
	fld.d	$fa5, $a0, 0
	move	$a0, $t1
	move	$a1, $s6
	move	$t3, $t7
	.p2align	4, , 16
.LBB1_112:                              # %for.body3.us.i293.us.us
                                        #   Parent Loop BB1_76 Depth=1
                                        #     Parent Loop BB1_80 Depth=2
                                        #       Parent Loop BB1_82 Depth=3
                                        #         Parent Loop BB1_86 Depth=4
                                        #           Parent Loop BB1_110 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ld.d	$a6, $a0, 0
	ldx.b	$a6, $a6, $s3
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a3, $a6
	slt	$t0, $t8, $a6
	masknez	$t4, $s2, $t0
	pcalau12i	$t5, %got_pc_hi20(n_dis)
	ld.d	$t5, $t5, %got_pc_lo12(n_dis)
	maskeqz	$t0, $fp, $t0
	or	$t0, $t0, $t4
	mul.d	$t0, $t0, $a5
	add.d	$t0, $t5, $t0
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $t0, $a6
	movgr2fr.w	$fa6, $a6
	ffint.s.w	$fa6, $fa6
	fld.d	$fa7, $a1, 0
	fcvt.d.s	$fa6, $fa6
	fmul.d	$fa6, $fa5, $fa6
	fcvt.d.s	$fa4, $fa4
	fmadd.d	$fa4, $fa6, $fa7, $fa4
	fcvt.s.d	$fa4, $fa4
	addi.d	$t3, $t3, -1
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	bnez	$t3, .LBB1_112
	b	.LBB1_109
	.p2align	4, , 16
.LBB1_113:                              #   in Loop: Header=BB1_110 Depth=5
	mul.d	$a1, $a1, $ra
	add.d	$a1, $a4, $a1
	move	$t3, $t1
	move	$s7, $s6
	move	$t4, $t7
	b	.LBB1_117
	.p2align	4, , 16
.LBB1_114:                              # %for.body3.us.if.then54.us_crit_edge.i335.us396
                                        #   in Loop: Header=BB1_117 Depth=6
	fld.d	$fa5, $a0, 0
	ori	$t0, $zero, 36
.LBB1_115:                              # %if.then54.us.i329.us398
                                        #   in Loop: Header=BB1_117 Depth=6
	pcalau12i	$a6, %got_pc_hi20(n_dis)
	ld.d	$a6, $a6, %got_pc_lo12(n_dis)
	mul.d	$t0, $t0, $a5
	add.d	$a6, $a6, $t0
	alsl.d	$t0, $t5, $a6, 2
.LBB1_116:                              # %for.inc.us.i314.us
                                        #   in Loop: Header=BB1_117 Depth=6
	ld.w	$a6, $t0, 0
	movgr2fr.w	$fa6, $a6
	ffint.s.w	$fa6, $fa6
	fld.d	$fa7, $s7, 0
	fcvt.d.s	$fa6, $fa6
	fmul.d	$fa5, $fa5, $fa6
	fcvt.d.s	$fa4, $fa4
	fmadd.d	$fa4, $fa5, $fa7, $fa4
	fcvt.s.d	$fa4, $fa4
	addi.d	$t4, $t4, -1
	addi.d	$s7, $s7, 8
	addi.d	$t3, $t3, 8
	beqz	$t4, .LBB1_109
.LBB1_117:                              # %for.body3.us.i293.us386
                                        #   Parent Loop BB1_76 Depth=1
                                        #     Parent Loop BB1_80 Depth=2
                                        #       Parent Loop BB1_82 Depth=3
                                        #         Parent Loop BB1_86 Depth=4
                                        #           Parent Loop BB1_110 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ld.d	$t0, $t3, 0
	ldx.b	$t5, $t0, $s3
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $a3, $t5
	blt	$t8, $t5, .LBB1_114
# %bb.118:                              # %if.else40.us.i304.us394
                                        #   in Loop: Header=BB1_117 Depth=6
	ldx.b	$t0, $t0, $s4
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $a3, $t0
	fld.d	$fa5, $a0, 0
	bge	$t8, $t0, .LBB1_120
# %bb.119:                              #   in Loop: Header=BB1_117 Depth=6
	move	$t0, $s2
	b	.LBB1_115
	.p2align	4, , 16
.LBB1_120:                              # %if.else69.us.i308.us
                                        #   in Loop: Header=BB1_117 Depth=6
	alsl.d	$t0, $t0, $t5, 2
	addi.w	$t0, $t0, 4
	alsl.d	$t0, $t0, $a1, 2
	b	.LBB1_116
	.p2align	4, , 16
.LBB1_121:                              # %for.cond198.preheader
                                        #   Parent Loop BB1_76 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $t0, 40
	addi.d	$a0, $t0, 24
	move	$t0, $a0
	bne	$a1, $t6, .LBB1_121
	b	.LBB1_75
	.p2align	4, , 16
.LBB1_122:                              #   in Loop: Header=BB1_76 Depth=1
	move	$a0, $t0
	b	.LBB1_75
.LBB1_123:                              # %for.cond268.preheader
	pcalau12i	$a1, %pc_hi20(foldrna.pairpt1)
	ori	$a2, $zero, 1
	st.d	$a0, $a1, %pc_lo12(foldrna.pairpt1)
	blt	$s3, $a2, .LBB1_150
# %bb.124:                              # %for.cond272.preheader.us.preheader
	move	$a5, $zero
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a6, $a0, %pc_lo12(foldrna.oseq1)
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a7, $a0, %pc_lo12(foldrna.oseq2)
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	bstrpick.d	$t0, $a0, 31, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$t1, $a0, %pc_lo12(foldrna.impmtx2)
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	slli.d	$t2, $a0, 2
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	slli.d	$t3, $a0, 4
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	slli.d	$t4, $a0, 2
	sub.d	$a0, $zero, $t4
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	movgr2fr.w	$fa1, $zero
	ori	$t6, $zero, 3
	ori	$t7, $zero, 36
	ori	$t8, $zero, 148
	ori	$fp, $zero, 4
	b	.LBB1_126
	.p2align	4, , 16
.LBB1_125:                              # %for.cond272.for.inc290_crit_edge.us
                                        #   in Loop: Header=BB1_126 Depth=1
	addi.d	$a5, $a5, 1
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	beq	$a5, $a0, .LBB1_149
.LBB1_126:                              # %for.cond272.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_141 Depth 2
                                        #     Child Loop BB1_145 Depth 2
                                        #     Child Loop BB1_148 Depth 2
                                        #     Child Loop BB1_129 Depth 2
                                        #       Child Loop BB1_131 Depth 3
                                        #         Child Loop BB1_132 Depth 4
	slli.d	$a0, $a5, 3
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	ldx.d	$s3, $a1, $a0
	ldx.d	$s4, $t1, $a0
	blt	$s8, $a2, .LBB1_134
# %bb.127:                              # %for.body275.us.us.preheader
                                        #   in Loop: Header=BB1_126 Depth=1
	move	$s1, $zero
	b	.LBB1_129
	.p2align	4, , 16
.LBB1_128:                              # %singleribosumscore.exit.us.us
                                        #   in Loop: Header=BB1_129 Depth=2
	pcalau12i	$a0, %got_pc_hi20(consweight_multi)
	ld.d	$a0, $a0, %got_pc_lo12(consweight_multi)
	slli.d	$a1, $s1, 2
	fldx.s	$fa3, $s3, $a1
	fld.s	$fa4, $a0, 0
	fldx.s	$fa5, $s4, $a1
	fmul.s	$fa2, $fa3, $fa2
	fmadd.s	$fa2, $fa2, $fa4, $fa5
	addi.d	$s1, $s1, 1
	fstx.s	$fa2, $s4, $a1
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	beq	$s1, $a0, .LBB1_125
.LBB1_129:                              # %for.body275.us.us
                                        #   Parent Loop BB1_126 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_131 Depth 3
                                        #         Child Loop BB1_132 Depth 4
	fmov.s	$fa2, $fa1
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	blt	$a0, $a2, .LBB1_128
# %bb.130:                              # %for.cond1.preheader.us.i342.us.us.preheader
                                        #   in Loop: Header=BB1_129 Depth=2
	move	$a0, $zero
	fmov.s	$fa2, $fa1
	.p2align	4, , 16
.LBB1_131:                              # %for.cond1.preheader.us.i342.us.us
                                        #   Parent Loop BB1_126 Depth=1
                                        #     Parent Loop BB1_129 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_132 Depth 4
	slli.d	$a1, $a0, 3
	ldx.d	$s5, $a6, $a1
	ldx.b	$s5, $s5, $a5
	slli.d	$s5, $s5, 2
	ldx.w	$s5, $a3, $s5
	slt	$s7, $t6, $s5
	masknez	$s5, $s5, $s7
	maskeqz	$s7, $t7, $s7
	fldx.d	$fa3, $s0, $a1
	or	$a1, $s7, $s5
	mul.d	$a1, $a1, $t8
	add.d	$a1, $a4, $a1
	move	$s5, $a7
	move	$s7, $s6
	move	$ra, $t0
	.p2align	4, , 16
.LBB1_132:                              # %for.body3.us.i347.us.us
                                        #   Parent Loop BB1_126 Depth=1
                                        #     Parent Loop BB1_129 Depth=2
                                        #       Parent Loop BB1_131 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$s2, $s5, 0
	ldx.b	$s2, $s2, $s1
	slli.d	$s2, $s2, 2
	ldx.w	$s2, $a3, $s2
	slt	$t5, $t6, $s2
	masknez	$s2, $s2, $t5
	maskeqz	$t5, $t7, $t5
	or	$t5, $t5, $s2
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $a1, $t5
	movgr2fr.w	$fa4, $t5
	ffint.s.w	$fa4, $fa4
	fld.d	$fa5, $s7, 0
	fcvt.d.s	$fa4, $fa4
	fmul.d	$fa4, $fa3, $fa4
	fcvt.d.s	$fa2, $fa2
	fmadd.d	$fa2, $fa4, $fa5, $fa2
	fcvt.s.d	$fa2, $fa2
	addi.d	$ra, $ra, -1
	addi.d	$s7, $s7, 8
	addi.d	$s5, $s5, 8
	bnez	$ra, .LBB1_132
# %bb.133:                              # %for.cond1.for.inc34_crit_edge.us.i.us.us
                                        #   in Loop: Header=BB1_131 Depth=3
	addi.d	$a0, $a0, 1
	bne	$a0, $s8, .LBB1_131
	b	.LBB1_128
	.p2align	4, , 16
.LBB1_134:                              # %iter.check687
                                        #   in Loop: Header=BB1_126 Depth=1
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	bgeu	$a0, $fp, .LBB1_136
# %bb.135:                              #   in Loop: Header=BB1_126 Depth=1
	move	$s1, $zero
	b	.LBB1_147
.LBB1_136:                              # %vector.memcheck680
                                        #   in Loop: Header=BB1_126 Depth=1
	add.d	$a1, $s4, $t2
	add.d	$a0, $s3, $t2
	sltu	$a0, $s4, $a0
	sltu	$s1, $s3, $a1
	and	$a0, $a0, $s1
	move	$s1, $zero
	bnez	$a0, .LBB1_147
# %bb.137:                              # %vector.memcheck680
                                        #   in Loop: Header=BB1_126 Depth=1
	pcalau12i	$a0, %got_pc_hi20(consweight_multi)
	ld.d	$a0, $a0, %got_pc_lo12(consweight_multi)
	addi.d	$s5, $a0, 4
	sltu	$s5, $s4, $s5
	sltu	$a1, $a0, $a1
	and	$a1, $s5, $a1
	bnez	$a1, .LBB1_147
# %bb.138:                              # %vector.main.loop.iter.check689
                                        #   in Loop: Header=BB1_126 Depth=1
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	ori	$t5, $zero, 16
	bgeu	$a1, $t5, .LBB1_140
# %bb.139:                              #   in Loop: Header=BB1_126 Depth=1
	move	$s5, $zero
	b	.LBB1_144
.LBB1_140:                              # %vector.ph690
                                        #   in Loop: Header=BB1_126 Depth=1
	xvldrepl.w	$xr2, $a0, 0
	addi.d	$a1, $s4, 32
	addi.d	$s1, $s3, 32
	move	$s5, $t3
	.p2align	4, , 16
.LBB1_141:                              # %vector.body693
                                        #   Parent Loop BB1_126 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr3, $s1, -32
	xvld	$xr4, $s1, 0
	xvld	$xr5, $a1, -32
	xvld	$xr6, $a1, 0
	xvfmul.s	$xr3, $xr3, $xr0
	xvfmul.s	$xr4, $xr4, $xr0
	xvfmadd.s	$xr3, $xr3, $xr2, $xr5
	xvfmadd.s	$xr4, $xr4, $xr2, $xr6
	xvst	$xr3, $a1, -32
	xvst	$xr4, $a1, 0
	addi.d	$s5, $s5, -16
	addi.d	$a1, $a1, 64
	addi.d	$s1, $s1, 64
	bnez	$s5, .LBB1_141
# %bb.142:                              # %middle.block699
                                        #   in Loop: Header=BB1_126 Depth=1
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	beq	$a1, $t3, .LBB1_125
# %bb.143:                              # %vec.epilog.iter.check704
                                        #   in Loop: Header=BB1_126 Depth=1
	move	$s5, $t3
	move	$s1, $t3
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	beqz	$a1, .LBB1_147
.LBB1_144:                              # %vec.epilog.ph703
                                        #   in Loop: Header=BB1_126 Depth=1
	vldrepl.w	$vr2, $a0, 0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	add.d	$a0, $a0, $s5
	alsl.d	$a1, $s5, $s4, 2
	alsl.d	$s1, $s5, $s3, 2
	.p2align	4, , 16
.LBB1_145:                              # %vec.epilog.vector.body709
                                        #   Parent Loop BB1_126 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr3, $s1, 0
	vld	$vr4, $a1, 0
	vfmul.s	$vr3, $vr3, $vr8
	vfmadd.s	$vr3, $vr3, $vr2, $vr4
	vst	$vr3, $a1, 0
	addi.d	$a0, $a0, 4
	addi.d	$a1, $a1, 16
	addi.d	$s1, $s1, 16
	bnez	$a0, .LBB1_145
# %bb.146:                              # %vec.epilog.middle.block716
                                        #   in Loop: Header=BB1_126 Depth=1
	move	$s1, $t4
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	beq	$a0, $t4, .LBB1_125
	.p2align	4, , 16
.LBB1_147:                              # %for.body275.us454.preheader
                                        #   in Loop: Header=BB1_126 Depth=1
	alsl.d	$a0, $s1, $s3, 2
	alsl.d	$a1, $s1, $s4, 2
	ld.d	$t5, $sp, 288                   # 8-byte Folded Reload
	sub.d	$s1, $t5, $s1
	.p2align	4, , 16
.LBB1_148:                              # %for.body275.us454
                                        #   Parent Loop BB1_126 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$s3, %got_pc_hi20(consweight_multi)
	ld.d	$s3, $s3, %got_pc_lo12(consweight_multi)
	fld.s	$fa2, $a0, 0
	fld.s	$fa3, $s3, 0
	fld.s	$fa4, $a1, 0
	fmul.s	$fa2, $fa2, $fa1
	fmadd.s	$fa2, $fa2, $fa3, $fa4
	fst.s	$fa2, $a1, 0
	addi.d	$a0, $a0, 4
	addi.d	$s1, $s1, -1
	addi.d	$a1, $a1, 4
	bnez	$s1, .LBB1_148
	b	.LBB1_125
.LBB1_149:                              # %if.end294
	ori	$a0, $zero, 1
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB1_196
.LBB1_150:                              # %for.body298.lr.ph
	move	$a2, $zero
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a3, $a0, %pc_lo12(foldrna.pairprob1)
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a4, $a0, %pc_lo12(foldrna.pairprob2)
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a5, $a0, %pc_lo12(foldrna.map)
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a6, $a0, %pc_lo12(foldrna.impmtx2)
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 30, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 30, 0
	pcalau12i	$a7, %got_pc_hi20(consweight_rna)
	ld.d	$a7, $a7, %got_pc_lo12(consweight_rna)
	pcalau12i	$t0, %pc_hi20(.LCPI1_0)
	fld.s	$fa0, $t0, %pc_lo12(.LCPI1_0)
	addi.w	$t0, $zero, -1
	movgr2fr.w	$fa1, $zero
	ori	$t1, $zero, 1
	ld.d	$s2, $sp, 176                   # 8-byte Folded Reload
	b	.LBB1_153
	.p2align	4, , 16
.LBB1_151:                              # %for.cond301.for.inc370_crit_edge.split.us
                                        #   in Loop: Header=BB1_153 Depth=1
	st.d	$s0, $s2, %pc_lo12(foldrna.pairpt2)
.LBB1_152:                              # %for.inc370
                                        #   in Loop: Header=BB1_153 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a2, $a0, .LBB1_177
.LBB1_153:                              # %for.body298
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_175 Depth 2
                                        #     Child Loop BB1_157 Depth 2
                                        #       Child Loop BB1_159 Depth 3
                                        #         Child Loop BB1_161 Depth 4
                                        #       Child Loop BB1_165 Depth 3
                                        #         Child Loop BB1_172 Depth 4
                                        #         Child Loop BB1_168 Depth 4
	slli.d	$t2, $a2, 3
	ldx.d	$t2, $a3, $t2
	ld.w	$t3, $t2, 16
	beq	$t3, $t0, .LBB1_176
# %bb.154:                              # %for.cond306.preheader.lr.ph
                                        #   in Loop: Header=BB1_153 Depth=1
	blez	$s3, .LBB1_175
# %bb.155:                              # %for.cond306.preheader.us.preheader
                                        #   in Loop: Header=BB1_153 Depth=1
	alsl.d	$t4, $a2, $a6, 3
	b	.LBB1_157
	.p2align	4, , 16
.LBB1_156:                              # %for.cond306.for.inc367_crit_edge.us
                                        #   in Loop: Header=BB1_157 Depth=2
	ld.w	$t3, $t2, 40
	addi.d	$t5, $t2, 24
	move	$t2, $t5
	beq	$t3, $t0, .LBB1_151
.LBB1_157:                              # %for.cond306.preheader.us
                                        #   Parent Loop BB1_153 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_159 Depth 3
                                        #         Child Loop BB1_161 Depth 4
                                        #       Child Loop BB1_165 Depth 3
                                        #         Child Loop BB1_172 Depth 4
                                        #         Child Loop BB1_168 Depth 4
	slt	$t5, $a2, $t3
	alsl.d	$t6, $t3, $a5, 3
	move	$t7, $zero
	blt	$t3, $a2, .LBB1_165
	b	.LBB1_159
	.p2align	4, , 16
.LBB1_158:                              # %for.inc364.us509
                                        #   in Loop: Header=BB1_159 Depth=3
	addi.d	$t7, $t7, 1
	beq	$t7, $a1, .LBB1_156
.LBB1_159:                              # %for.body309.us503
                                        #   Parent Loop BB1_153 Depth=1
                                        #     Parent Loop BB1_157 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_161 Depth 4
	slli.d	$t8, $t7, 3
	ldx.d	$s0, $a4, $t8
	ld.w	$t8, $s0, 16
	bne	$t8, $t0, .LBB1_161
	b	.LBB1_158
	.p2align	4, , 16
.LBB1_160:                              # %for.inc361.us.us
                                        #   in Loop: Header=BB1_161 Depth=4
	ld.w	$t8, $s0, 40
	addi.d	$s0, $s0, 24
	beq	$t8, $t0, .LBB1_158
.LBB1_161:                              # %for.body316.us.us
                                        #   Parent Loop BB1_153 Depth=1
                                        #     Parent Loop BB1_157 Depth=2
                                        #       Parent Loop BB1_159 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	or	$fp, $t8, $t3
	slt	$fp, $t0, $fp
	slt	$s1, $t7, $t8
	and	$fp, $s1, $fp
	and	$fp, $fp, $t5
	bne	$fp, $t1, .LBB1_160
# %bb.162:                              # %if.then338.us.us
                                        #   in Loop: Header=BB1_161 Depth=4
	ld.d	$fp, $t6, 0
	fld.s	$fa2, $t2, 20
	fld.s	$fa3, $s0, 20
	slli.d	$t8, $t8, 2
	fldx.s	$fa4, $fp, $t8
	fmul.s	$fa2, $fa2, $fa3
	ld.d	$t8, $t4, 0
	fcmp.clt.s	$fcc0, $fa4, $fa1
	fld.s	$fa3, $a7, 0
	slli.d	$fp, $t7, 2
	fldx.s	$fa5, $t8, $fp
	fsel	$fa4, $fa4, $fa1, $fcc0
	fmul.s	$fa3, $fa3, $fa4
	fmul.s	$fa3, $fa3, $fa0
	fmadd.s	$fa2, $fa3, $fa2, $fa5
	fstx.s	$fa2, $t8, $fp
	b	.LBB1_160
	.p2align	4, , 16
.LBB1_163:                              #   in Loop: Header=BB1_165 Depth=3
	move	$s0, $t8
.LBB1_164:                              # %for.inc364.us.us
                                        #   in Loop: Header=BB1_165 Depth=3
	addi.d	$t7, $t7, 1
	beq	$t7, $a1, .LBB1_156
.LBB1_165:                              # %for.body309.us.us
                                        #   Parent Loop BB1_153 Depth=1
                                        #     Parent Loop BB1_157 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_172 Depth 4
                                        #         Child Loop BB1_168 Depth 4
	slli.d	$t8, $t7, 3
	ldx.d	$t8, $a4, $t8
	ld.w	$s1, $t8, 16
	beq	$s1, $t0, .LBB1_163
# %bb.166:                              # %for.body316.lr.ph.us.us
                                        #   in Loop: Header=BB1_165 Depth=3
	slli.d	$fp, $t7, 2
	bnez	$t5, .LBB1_168
	b	.LBB1_172
	.p2align	4, , 16
.LBB1_167:                              # %for.inc361.us491.us533
                                        #   in Loop: Header=BB1_168 Depth=4
	ld.w	$s1, $t8, 40
	addi.d	$s0, $t8, 24
	move	$t8, $s0
	beq	$s1, $t0, .LBB1_164
.LBB1_168:                              # %for.body316.us475.us517
                                        #   Parent Loop BB1_153 Depth=1
                                        #     Parent Loop BB1_157 Depth=2
                                        #       Parent Loop BB1_165 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	or	$s0, $s1, $t3
	bltz	$s0, .LBB1_167
# %bb.169:                              # %land.lhs.true327.us480.us522
                                        #   in Loop: Header=BB1_168 Depth=4
	bstrpick.d	$s0, $s1, 31, 0
	beq	$t7, $s0, .LBB1_167
# %bb.170:                              # %if.then338.us483.us525
                                        #   in Loop: Header=BB1_168 Depth=4
	ld.d	$s1, $t6, 0
	fld.s	$fa2, $t2, 20
	fld.s	$fa3, $t8, 20
	slli.d	$s0, $s0, 2
	fldx.s	$fa4, $s1, $s0
	ld.d	$s0, $t4, 0
	fmul.s	$fa2, $fa2, $fa3
	fld.s	$fa3, $a7, 0
	fcmp.clt.s	$fcc0, $fa4, $fa1
	fldx.s	$fa5, $s0, $fp
	fsel	$fa4, $fa4, $fa1, $fcc0
	fmul.s	$fa3, $fa3, $fa4
	fmul.s	$fa3, $fa3, $fa0
	fmadd.s	$fa2, $fa3, $fa2, $fa5
	fstx.s	$fa2, $s0, $fp
	b	.LBB1_167
	.p2align	4, , 16
.LBB1_171:                              # %for.inc361.us491.us.us
                                        #   in Loop: Header=BB1_172 Depth=4
	ld.w	$s1, $t8, 40
	addi.d	$s0, $t8, 24
	move	$t8, $s0
	beq	$s1, $t0, .LBB1_164
.LBB1_172:                              # %for.body316.us475.us.us
                                        #   Parent Loop BB1_153 Depth=1
                                        #     Parent Loop BB1_157 Depth=2
                                        #       Parent Loop BB1_165 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	or	$s0, $s1, $t3
	bltz	$s0, .LBB1_171
# %bb.173:                              # %for.body316.us475.us.us
                                        #   in Loop: Header=BB1_172 Depth=4
	bge	$s1, $t7, .LBB1_171
# %bb.174:                              # %if.then338.us483.us.us
                                        #   in Loop: Header=BB1_172 Depth=4
	ld.d	$s0, $t6, 0
	fld.s	$fa2, $t2, 20
	fld.s	$fa3, $t8, 20
	slli.d	$s1, $s1, 2
	fldx.s	$fa4, $s0, $s1
	ld.d	$s0, $t4, 0
	fmul.s	$fa2, $fa2, $fa3
	fld.s	$fa3, $a7, 0
	fcmp.clt.s	$fcc0, $fa4, $fa1
	fldx.s	$fa5, $s0, $fp
	fsel	$fa4, $fa4, $fa1, $fcc0
	fmul.s	$fa3, $fa3, $fa4
	fmul.s	$fa3, $fa3, $fa0
	fmadd.s	$fa2, $fa3, $fa2, $fa5
	fstx.s	$fa2, $s0, $fp
	b	.LBB1_171
	.p2align	4, , 16
.LBB1_175:                              # %for.cond306.preheader
                                        #   Parent Loop BB1_153 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t3, $t2, 40
	addi.d	$t5, $t2, 24
	move	$t2, $t5
	bne	$t3, $t0, .LBB1_175
	b	.LBB1_152
	.p2align	4, , 16
.LBB1_176:                              #   in Loop: Header=BB1_153 Depth=1
	move	$t5, $t2
	b	.LBB1_152
.LBB1_177:                              # %for.cond373.preheader
	pcalau12i	$a3, %pc_hi20(foldrna.pairpt1)
	ori	$a2, $zero, 1
	st.d	$t5, $a3, %pc_lo12(foldrna.pairpt1)
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	blt	$a3, $a2, .LBB1_196
# %bb.178:                              # %for.cond377.preheader.lr.ph
	blt	$s3, $a2, .LBB1_196
# %bb.179:                              # %for.cond377.preheader.us.preheader
	move	$a2, $zero
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(foldrna.impmtx2)
	slli.d	$a4, $a1, 2
	ld.d	$a7, $sp, 160                   # 8-byte Folded Reload
	bstrpick.d	$a5, $a7, 30, 4
	slli.d	$a5, $a5, 4
	andi	$a6, $a7, 12
	bstrpick.d	$a7, $a7, 30, 2
	slli.d	$a7, $a7, 2
	sub.d	$t0, $zero, $a7
	ori	$t1, $zero, 4
	ori	$t2, $zero, 16
	b	.LBB1_181
	.p2align	4, , 16
.LBB1_180:                              # %for.cond377.for.inc393_crit_edge.us
                                        #   in Loop: Header=BB1_181 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a2, $a0, .LBB1_196
.LBB1_181:                              # %iter.check727
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_190 Depth 2
                                        #     Child Loop BB1_194 Depth 2
                                        #     Child Loop BB1_186 Depth 2
	slli.d	$t4, $a2, 3
	ldx.d	$t3, $a3, $t4
	ld.d	$t5, $sp, 264                   # 8-byte Folded Reload
	ldx.d	$t4, $t5, $t4
	bltu	$a1, $t1, .LBB1_184
# %bb.182:                              # %vector.memcheck719
                                        #   in Loop: Header=BB1_181 Depth=1
	add.d	$t5, $t3, $a4
	bgeu	$t4, $t5, .LBB1_187
# %bb.183:                              # %vector.memcheck719
                                        #   in Loop: Header=BB1_181 Depth=1
	add.d	$t5, $t4, $a4
	bgeu	$t3, $t5, .LBB1_187
.LBB1_184:                              #   in Loop: Header=BB1_181 Depth=1
	move	$t5, $zero
.LBB1_185:                              # %for.body380.us.preheader
                                        #   in Loop: Header=BB1_181 Depth=1
	alsl.d	$t3, $t5, $t3, 2
	alsl.d	$t4, $t5, $t4, 2
	sub.d	$t5, $a1, $t5
	.p2align	4, , 16
.LBB1_186:                              # %for.body380.us
                                        #   Parent Loop BB1_181 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $t3, 0
	fld.s	$fa1, $t4, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $t4, 0
	addi.d	$t3, $t3, 4
	addi.d	$t5, $t5, -1
	addi.d	$t4, $t4, 4
	bnez	$t5, .LBB1_186
	b	.LBB1_180
	.p2align	4, , 16
.LBB1_187:                              # %vector.main.loop.iter.check729
                                        #   in Loop: Header=BB1_181 Depth=1
	bgeu	$a1, $t2, .LBB1_189
# %bb.188:                              #   in Loop: Header=BB1_181 Depth=1
	move	$t7, $zero
	b	.LBB1_193
.LBB1_189:                              # %vector.body733.preheader
                                        #   in Loop: Header=BB1_181 Depth=1
	addi.d	$t5, $t4, 32
	addi.d	$t6, $t3, 32
	move	$t7, $a5
	.p2align	4, , 16
.LBB1_190:                              # %vector.body733
                                        #   Parent Loop BB1_181 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $t6, -32
	xvld	$xr1, $t6, 0
	xvld	$xr2, $t5, -32
	xvld	$xr3, $t5, 0
	xvfadd.s	$xr0, $xr0, $xr2
	xvfadd.s	$xr1, $xr1, $xr3
	xvst	$xr0, $t5, -32
	xvst	$xr1, $t5, 0
	addi.d	$t7, $t7, -16
	addi.d	$t5, $t5, 64
	addi.d	$t6, $t6, 64
	bnez	$t7, .LBB1_190
# %bb.191:                              # %middle.block740
                                        #   in Loop: Header=BB1_181 Depth=1
	beq	$a1, $a5, .LBB1_180
# %bb.192:                              # %vec.epilog.iter.check745
                                        #   in Loop: Header=BB1_181 Depth=1
	move	$t7, $a5
	move	$t5, $a5
	beqz	$a6, .LBB1_185
.LBB1_193:                              # %vec.epilog.ph744
                                        #   in Loop: Header=BB1_181 Depth=1
	add.d	$t5, $t0, $t7
	alsl.d	$t6, $t7, $t4, 2
	alsl.d	$t7, $t7, $t3, 2
	.p2align	4, , 16
.LBB1_194:                              # %vec.epilog.vector.body750
                                        #   Parent Loop BB1_181 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t7, 0
	vld	$vr1, $t6, 0
	vfadd.s	$vr0, $vr0, $vr1
	vst	$vr0, $t6, 0
	addi.d	$t5, $t5, 4
	addi.d	$t6, $t6, 16
	addi.d	$t7, $t7, 16
	bnez	$t5, .LBB1_194
# %bb.195:                              # %vec.epilog.middle.block755
                                        #   in Loop: Header=BB1_181 Depth=1
	move	$t5, $a7
	beq	$a1, $a7, .LBB1_180
	b	.LBB1_185
.LBB1_196:                              # %for.end395
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(foldrna.useq1)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(foldrna.useq2)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(foldrna.oseq1)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(foldrna.oseq2)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(foldrna.oseq1r)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(foldrna.oseq2r)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(foldrna.odir1)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(foldrna.odir2)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(foldrna.impmtx2)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(foldrna.map)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ori	$s0, $zero, 1
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	blt	$a0, $s0, .LBB1_199
# %bb.197:                              # %for.body399.lr.ph
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(foldrna.pairprob1)
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	bstrpick.d	$s1, $a0, 30, 0
	.p2align	4, , 16
.LBB1_198:                              # %for.body399
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, -1
	addi.d	$fp, $fp, 8
	bnez	$s1, .LBB1_198
.LBB1_199:                              # %for.cond405.preheader
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(foldrna.pairprob2)
	blt	$s3, $s0, .LBB1_202
# %bb.200:                              # %for.body408.lr.ph
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	bstrpick.d	$s0, $a0, 30, 0
	move	$s1, $fp
	.p2align	4, , 16
.LBB1_201:                              # %for.body408
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	bnez	$s0, .LBB1_201
.LBB1_202:                              # %for.end413
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(foldrna.pairprob1)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$s8, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 400                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 408                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 416
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB1_203:                              # %if.then
	move	$a1, $s8
	pcaddu18i	$ra, %call36(rnaalifoldcall)
	jirl	$ra, $ra, 0
.LBB1_204:                              # %if.then134
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(rnaalifoldcall)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	foldrna, .Lfunc_end1-foldrna
                                        # -- End function
	.p2align	5                               # -- Begin function mccaskillextract
	.type	mccaskillextract,@function
mccaskillextract:                       # @mccaskillextract
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 96                   # 8-byte Folded Spill
	st.d	$a6, $sp, 32                    # 8-byte Folded Spill
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	move	$s0, $a3
	move	$fp, $a2
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a2, %pc_hi20(mccaskillextract.pairnum)
	ori	$a1, $zero, 1
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	st.d	$a0, $a2, %pc_lo12(mccaskillextract.pairnum)
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	blt	$fp, $a1, .LBB2_14
# %bb.1:                                # %for.body8.preheader
	move	$a1, $zero
	addi.w	$s8, $zero, -1
	move	$a0, $s8
	lu32i.d	$a0, 0
	lu52i.d	$a0, $a0, -1032
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	b	.LBB2_3
	.p2align	4, , 16
.LBB2_2:                                # %for.inc110
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB2_14
.LBB2_3:                                # %for.body8
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_6 Depth 2
                                        #       Child Loop BB2_7 Depth 3
                                        #         Child Loop BB2_8 Depth 4
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	slli.d	$a0, $a1, 3
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB2_2
# %bb.4:                                # %for.body16.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	move	$s5, $zero
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	alsl.d	$a1, $a2, $a1, 3
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$s3, $a2, $a1, 3
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$a5, $a2, $a1, 3
	bstrpick.d	$a0, $a0, 30, 0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	b	.LBB2_6
	.p2align	4, , 16
.LBB2_5:                                # %for.inc107
                                        #   in Loop: Header=BB2_6 Depth=2
	addi.d	$s5, $s5, 1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	beq	$s5, $a0, .LBB2_2
.LBB2_6:                                # %for.body16
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_7 Depth 3
                                        #         Child Loop BB2_8 Depth 4
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s5, 3
	ldx.d	$s1, $a0, $a1
	ld.w	$a0, $s1, 16
	beq	$a0, $s8, .LBB2_5
	.p2align	4, , 16
.LBB2_7:                                # %for.body24
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_8 Depth 4
	ld.d	$a1, $s3, 0
	slli.d	$a2, $s5, 2
	ldx.w	$a2, $a1, $a2
	slli.d	$a0, $a0, 2
	ldx.w	$s7, $a1, $a0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s0, $a0
	fld.s	$fs0, $s1, 20
	alsl.d	$fp, $a2, $s0, 3
	addi.d	$a1, $a0, -24
	.p2align	4, , 16
.LBB2_8:                                # %for.cond36
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_6 Depth=2
                                        #       Parent Loop BB2_7 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a3, $a1, 40
	addi.d	$a1, $a1, 24
	beq	$a3, $s8, .LBB2_10
# %bb.9:                                # %for.cond36
                                        #   in Loop: Header=BB2_8 Depth=4
	bne	$a3, $s7, .LBB2_8
.LBB2_10:                               # %for.end45
                                        #   in Loop: Header=BB2_7 Depth=3
	bne	$a3, $s8, .LBB2_12
# %bb.11:                               # %if.then49
                                        #   in Loop: Header=BB2_7 Depth=3
	slli.d	$s6, $a2, 2
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ldx.w	$a1, $s4, $s6
	addi.w	$a1, $a1, 2
	ori	$a2, $zero, 24
	mul.d	$a1, $a1, $a2
	move	$s2, $a5
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	move	$a5, $s2
	ldx.w	$a1, $s4, $s6
	st.d	$a0, $fp, 0
	addi.w	$a2, $a1, 1
	stx.w	$a2, $s4, $s6
	ori	$a3, $zero, 24
	mul.d	$a1, $a1, $a3
	add.d	$a1, $a0, $a1
	st.w	$zero, $a1, 20
	st.w	$s7, $a1, 16
	mul.d	$a2, $a2, $a3
	add.d	$a0, $a0, $a2
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	st.d	$a2, $a0, 16
	move	$a3, $s7
.LBB2_12:                               # %if.end90
                                        #   in Loop: Header=BB2_7 Depth=3
	fld.s	$fa0, $a1, 20
	fld.d	$fa1, $a5, 0
	fcvt.d.s	$fa2, $fs0
	fcvt.d.s	$fa0, $fa0
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $a1, 20
	bne	$a3, $s7, .LBB2_15
# %bb.13:                               # %for.cond21
                                        #   in Loop: Header=BB2_7 Depth=3
	ld.w	$a0, $s1, 40
	addi.d	$s1, $s1, 24
	bne	$a0, $s8, .LBB2_7
	b	.LBB2_5
.LBB2_14:                               # %for.end137
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 96                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB2_15:                               # %if.then101
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	ori	$a1, $zero, 9
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	mccaskillextract, .Lfunc_end2-mccaskillextract
                                        # -- End function
	.type	rnaalifoldcall.order,@object    # @rnaalifoldcall.order
	.local	rnaalifoldcall.order
	.comm	rnaalifoldcall.order,8,8
	.type	rnaalifoldcall.name,@object     # @rnaalifoldcall.name
	.local	rnaalifoldcall.name
	.comm	rnaalifoldcall.name,8,8
	.type	rnaalifoldcall.fnamein,@object  # @rnaalifoldcall.fnamein
	.local	rnaalifoldcall.fnamein
	.comm	rnaalifoldcall.fnamein,100,1
	.type	rnaalifoldcall.cmd,@object      # @rnaalifoldcall.cmd
	.local	rnaalifoldcall.cmd
	.comm	rnaalifoldcall.cmd,1000,1
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"/tmp/_rnaalifoldin.%d"
	.size	.L.str, 22

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"seq%d"
	.size	.L.str.1, 6

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"w"
	.size	.L.str.2, 2

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Cannot open /tmp/_rnaalifoldin\n"
	.size	.L.str.3, 32

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"RNAalifold -p %s"
	.size	.L.str.4, 17

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Cannot execute system calls!\n"
	.size	.L.str.5, 30

	.type	foldrna.useq1,@object           # @foldrna.useq1
	.local	foldrna.useq1
	.comm	foldrna.useq1,8,8
	.type	foldrna.useq2,@object           # @foldrna.useq2
	.local	foldrna.useq2
	.comm	foldrna.useq2,8,8
	.type	foldrna.oseq1,@object           # @foldrna.oseq1
	.local	foldrna.oseq1
	.comm	foldrna.oseq1,8,8
	.type	foldrna.oseq2,@object           # @foldrna.oseq2
	.local	foldrna.oseq2
	.comm	foldrna.oseq2,8,8
	.type	foldrna.oseq1r,@object          # @foldrna.oseq1r
	.local	foldrna.oseq1r
	.comm	foldrna.oseq1r,8,8
	.type	foldrna.oseq2r,@object          # @foldrna.oseq2r
	.local	foldrna.oseq2r
	.comm	foldrna.oseq2r,8,8
	.type	foldrna.odir1,@object           # @foldrna.odir1
	.local	foldrna.odir1
	.comm	foldrna.odir1,8,8
	.type	foldrna.odir2,@object           # @foldrna.odir2
	.local	foldrna.odir2
	.comm	foldrna.odir2,8,8
	.type	foldrna.pairprob1,@object       # @foldrna.pairprob1
	.local	foldrna.pairprob1
	.comm	foldrna.pairprob1,8,8
	.type	foldrna.pairprob2,@object       # @foldrna.pairprob2
	.local	foldrna.pairprob2
	.comm	foldrna.pairprob2,8,8
	.type	foldrna.pairpt1,@object         # @foldrna.pairpt1
	.local	foldrna.pairpt1
	.comm	foldrna.pairpt1,8,8
	.type	foldrna.pairpt2,@object         # @foldrna.pairpt2
	.local	foldrna.pairpt2
	.comm	foldrna.pairpt2,8,8
	.type	foldrna.impmtx2,@object         # @foldrna.impmtx2
	.local	foldrna.impmtx2
	.comm	foldrna.impmtx2,8,8
	.type	foldrna.map,@object             # @foldrna.map
	.local	foldrna.map
	.comm	foldrna.map,8,8
	.type	mccaskillextract.pairnum,@object # @mccaskillextract.pairnum
	.local	mccaskillextract.pairnum
	.comm	mccaskillextract.pairnum,8,8
	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"okashii!\n"
	.size	.L.str.6, 10

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rnaalifoldcall.fnamein
	.addrsig_sym rnaalifoldcall.cmd
