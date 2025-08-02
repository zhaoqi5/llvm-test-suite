	.file	"semi_interp.c"
	.text
	.globl	hypre_SemiInterpCreate          # -- Begin function hypre_SemiInterpCreate
	.p2align	5
	.type	hypre_SemiInterpCreate,@function
hypre_SemiInterpCreate:                 # @hypre_SemiInterpCreate
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ori	$a0, $zero, 1
	ori	$a1, $zero, 64
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(hypre_InitializeTiming)
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, 60
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	hypre_SemiInterpCreate, .Lfunc_end0-hypre_SemiInterpCreate
                                        # -- End function
	.globl	hypre_SemiInterpSetup           # -- Begin function hypre_SemiInterpSetup
	.p2align	5
	.type	hypre_SemiInterpSetup,@function
hypre_SemiInterpSetup:                  # @hypre_SemiInterpSetup
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	move	$s6, $a4
	move	$s3, $a1
	ld.d	$s5, $a4, 8
	ld.d	$a1, $a1, 24
	move	$s0, $a7
	move	$s1, $a6
	move	$s2, $a5
	move	$s4, $a2
	move	$fp, $a0
	addi.d	$a2, $sp, 96
	addi.d	$a3, $sp, 88
	addi.d	$a4, $sp, 80
	addi.d	$a5, $sp, 72
	addi.d	$a6, $sp, 64
	addi.d	$a7, $sp, 56
	move	$a0, $s5
	pcaddu18i	$ra, %call36(hypre_CreateComputeInfo)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96
	move	$a1, $s2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(hypre_ProjectBoxArrayArray)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	move	$a1, $s2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(hypre_ProjectBoxArrayArray)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(hypre_ProjectBoxArrayArray)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(hypre_ProjectBoxArrayArray)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96
	ld.d	$a1, $sp, 88
	ld.d	$a4, $sp, 80
	ld.d	$a5, $sp, 72
	ld.d	$a6, $sp, 64
	ld.d	$a7, $sp, 56
	ld.d	$a2, $s6, 16
	addi.d	$a3, $sp, 48
	st.d	$a3, $sp, 32
	ori	$a3, $zero, 1
	st.d	$a3, $sp, 24
	st.d	$a2, $sp, 16
	st.d	$s5, $sp, 8
	st.d	$s0, $sp, 0
	move	$a2, $s0
	move	$a3, $s0
	pcaddu18i	$ra, %call36(hypre_ComputePkgCreate)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixRef)
	jirl	$ra, $ra, 0
	st.w	$s4, $fp, 8
	ld.w	$a1, $s2, 0
	st.w	$a1, $fp, 24
	ld.w	$a1, $s2, 4
	st.w	$a1, $fp, 28
	ld.w	$a1, $s2, 8
	st.w	$a1, $fp, 32
	ld.w	$a1, $s1, 0
	st.w	$a1, $fp, 36
	ld.w	$a1, $s1, 4
	st.w	$a1, $fp, 40
	ld.w	$a1, $s1, 8
	st.w	$a1, $fp, 44
	ld.w	$a1, $s0, 0
	st.w	$a1, $fp, 48
	ld.w	$a1, $s0, 4
	ld.d	$a2, $sp, 48
	st.w	$a1, $fp, 52
	ld.w	$a1, $s0, 8
	st.d	$a0, $fp, 0
	st.d	$a2, $fp, 16
	st.w	$a1, $fp, 56
	move	$a0, $zero
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.Lfunc_end1:
	.size	hypre_SemiInterpSetup, .Lfunc_end1-hypre_SemiInterpSetup
                                        # -- End function
	.globl	hypre_SemiInterp                # -- Begin function hypre_SemiInterp
	.p2align	5
	.type	hypre_SemiInterp,@function
hypre_SemiInterp:                       # @hypre_SemiInterp
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -352
	st.d	$ra, $sp, 344                   # 8-byte Folded Spill
	st.d	$fp, $sp, 336                   # 8-byte Folded Spill
	st.d	$s0, $sp, 328                   # 8-byte Folded Spill
	st.d	$s1, $sp, 320                   # 8-byte Folded Spill
	st.d	$s2, $sp, 312                   # 8-byte Folded Spill
	st.d	$s3, $sp, 304                   # 8-byte Folded Spill
	st.d	$s4, $sp, 296                   # 8-byte Folded Spill
	st.d	$s5, $sp, 288                   # 8-byte Folded Spill
	st.d	$s6, $sp, 280                   # 8-byte Folded Spill
	st.d	$s7, $sp, 272                   # 8-byte Folded Spill
	st.d	$s8, $sp, 264                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 60
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	move	$s0, $a2
	move	$s1, $a1
	pcaddu18i	$ra, %call36(hypre_BeginTiming)
	jirl	$ra, $ra, 0
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a0, $s0, 8
	ld.d	$a4, $a0, 8
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a1, $s1, 24
	ld.w	$a2, $fp, 8
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a2, $fp, 16
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a2, $a4, 8
	ld.d	$a1, $a1, 0
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	ori	$a1, $zero, 1
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	addi.d	$a3, $fp, 48
	st.d	$a3, $sp, 136                   # 8-byte Folded Spill
	blt	$a2, $a1, .LBB2_21
# %bb.1:                                # %while.cond.preheader.lr.ph
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 8
	move	$a3, $zero
	move	$s7, $zero
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a2, $a2, 24
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	ld.d	$s1, $a1, 16
	ld.d	$a0, $a0, 16
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ori	$s2, $zero, 64
	st.d	$a4, $sp, 160                   # 8-byte Folded Spill
	b	.LBB2_3
	.p2align	4, , 16
.LBB2_2:                                # %for.end361
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a0, $a4, 8
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 1
	bge	$a3, $a0, .LBB2_21
.LBB2_3:                                # %while.cond.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_4 Depth 2
                                        #     Child Loop BB2_10 Depth 2
                                        #       Child Loop BB2_13 Depth 3
                                        #         Child Loop BB2_19 Depth 4
                                        #         Child Loop BB2_17 Depth 4
	slli.d	$s0, $a3, 2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ldx.w	$a0, $a0, $s0
	slli.d	$fp, $s7, 2
	slli.d	$a1, $s7, 4
	alsl.d	$a1, $s7, $a1, 3
	addi.d	$s7, $s7, -1
	addi.d	$s8, $a1, -12
	.p2align	4, , 16
.LBB2_4:                                # %while.cond
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a1, $s1, $fp
	addi.w	$s7, $s7, 1
	addi.d	$fp, $fp, 4
	addi.d	$s8, $s8, 24
	bne	$a1, $a0, .LBB2_4
# %bb.5:                                # %while.end
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $a4, 0
	st.d	$a3, $sp, 168                   # 8-byte Folded Spill
	alsl.d	$a1, $a3, $a3, 1
	slli.d	$a2, $a1, 3
	ldx.w	$a1, $a0, $a2
	st.d	$a2, $sp, 200                   # 8-byte Folded Spill
	add.d	$s6, $a0, $a2
	st.w	$a1, $sp, 220
	ld.w	$a0, $s6, 4
	st.w	$a0, $sp, 224
	ld.w	$a0, $s6, 8
	st.w	$a0, $sp, 228
	addi.d	$a0, $sp, 220
	addi.d	$a3, $sp, 232
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMapCoarseToFine)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a3, 16
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $a2, 16
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a0, $a3, 40
	ld.d	$a1, $a1, 0
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	ld.d	$s3, $a3, 24
	ld.d	$a1, $a2, 40
	add.d	$a0, $a0, $fp
	ld.w	$s5, $a0, -4
	ld.d	$fp, $a2, 24
	ldx.w	$s4, $a1, $s0
	addi.d	$a1, $sp, 244
	move	$a0, $s6
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 252
	ori	$a0, $zero, 1
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	blt	$a1, $a0, .LBB2_2
# %bb.6:                                # %for.cond328.preheader.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.w	$a1, $sp, 248
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB2_2
# %bb.7:                                # %for.cond328.preheader.us.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	move	$a2, $zero
	ld.d	$t4, $sp, 184                   # 8-byte Folded Reload
	add.d	$a0, $t4, $s8
	ld.d	$t2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 192                   # 8-byte Folded Reload
	add.d	$a3, $t3, $t2
	ld.w	$a4, $sp, 232
	ld.w	$a5, $a0, -12
	ld.w	$a6, $sp, 236
	ld.w	$a7, $a0, -8
	ld.w	$t0, $sp, 240
	ld.w	$t1, $a0, -4
	ld.w	$a0, $a0, 4
	sub.d	$a4, $a4, $a5
	sub.d	$a6, $a6, $a7
	sub.d	$t0, $t0, $t1
	sub.w	$a0, $a0, $a7
	ld.d	$t5, $sp, 128                   # 8-byte Folded Reload
	slt	$a7, $t5, $a0
	maskeqz	$a0, $a0, $a7
	masknez	$a7, $t5, $a7
	or	$a0, $a0, $a7
	ldx.w	$a7, $t4, $s8
	addi.d	$t1, $a0, 1
	mul.d	$a0, $t1, $t0
	add.d	$a0, $a6, $a0
	sub.w	$a5, $a7, $a5
	slt	$a6, $t5, $a5
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $t5, $a6
	or	$a5, $a5, $a6
	addi.d	$a5, $a5, 1
	mul.d	$a0, $a0, $a5
	add.w	$a0, $a4, $a0
	ld.w	$a4, $sp, 220
	ldx.w	$a6, $t3, $t2
	ld.w	$a7, $sp, 224
	ld.w	$t0, $a3, 4
	ld.w	$t2, $sp, 228
	ld.w	$t3, $a3, 8
	ld.w	$t4, $a3, 16
	sub.d	$a4, $a4, $a6
	sub.d	$a7, $a7, $t0
	sub.d	$t2, $t2, $t3
	sub.w	$t0, $t4, $t0
	slt	$t3, $t5, $t0
	maskeqz	$t0, $t0, $t3
	masknez	$t3, $t5, $t3
	or	$t0, $t0, $t3
	ld.w	$a3, $a3, 12
	addi.d	$t0, $t0, 1
	mul.d	$t2, $t0, $t2
	add.d	$a7, $a7, $t2
	sub.w	$a3, $a3, $a6
	slt	$a6, $t5, $a3
	maskeqz	$a3, $a3, $a6
	masknez	$a6, $t5, $a6
	or	$a3, $a3, $a6
	addi.d	$t2, $a3, 1
	mul.d	$a3, $a7, $t2
	add.w	$a7, $a4, $a3
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a6, $a4, 52
	ld.w	$a3, $a4, 48
	ld.w	$t3, $a4, 56
	ld.wu	$a4, $sp, 244
	mul.d	$t4, $a6, $a5
	mul.d	$a5, $a5, $t1
	mul.d	$t1, $a5, $t3
	mul.d	$t3, $a4, $a3
	sub.d	$a5, $t4, $t3
	sub.d	$a6, $t2, $a4
	mul.d	$t5, $a1, $t4
	sub.d	$t1, $t1, $t5
	st.d	$t1, $sp, 200                   # 8-byte Folded Spill
	sub.d	$t0, $t0, $a1
	mul.d	$t0, $t0, $t2
	st.d	$t0, $sp, 192                   # 8-byte Folded Spill
	addi.d	$t0, $a1, -1
	mul.d	$t1, $a5, $t0
	add.d	$t1, $t1, $t4
	sub.d	$t1, $t1, $t3
	st.d	$t1, $sp, 184                   # 8-byte Folded Spill
	mul.d	$t0, $a6, $t0
	add.d	$t0, $t2, $t0
	sub.d	$t0, $t0, $a4
	st.d	$t0, $sp, 176                   # 8-byte Folded Spill
	ori	$t0, $zero, 7
	sltu	$t0, $t0, $a4
	addi.d	$t1, $a3, -1
	sltui	$t1, $t1, 1
	and	$t3, $t0, $t1
	bstrpick.d	$t0, $a4, 30, 3
	slli.d	$t4, $t0, 3
	mul.d	$t5, $t4, $a3
	alsl.d	$t6, $s5, $s3, 3
	addi.d	$t7, $t6, 32
	slli.d	$t8, $a3, 6
	alsl.d	$s6, $s4, $fp, 3
	addi.d	$s8, $s6, 32
	slli.d	$ra, $a3, 3
	b	.LBB2_10
	.p2align	4, , 16
.LBB2_8:                                # %for.cond331.preheader.us391.preheader
                                        #   in Loop: Header=BB2_10 Depth=2
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	add.d	$a0, $t0, $a0
	ld.d	$t0, $sp, 176                   # 8-byte Folded Reload
	add.d	$a7, $t0, $a7
.LBB2_9:                                # %for.cond328.for.end349_crit_edge.us
                                        #   in Loop: Header=BB2_10 Depth=2
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	add.w	$a0, $t0, $a0
	addi.w	$a2, $a2, 1
	ld.d	$t0, $sp, 192                   # 8-byte Folded Reload
	add.w	$a7, $a7, $t0
	ld.d	$t0, $sp, 208                   # 8-byte Folded Reload
	beq	$a2, $t0, .LBB2_2
.LBB2_10:                               # %for.cond328.preheader.us
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_13 Depth 3
                                        #         Child Loop BB2_19 Depth 4
                                        #         Child Loop BB2_17 Depth 4
	addi.w	$t0, $a4, 0
	ori	$t1, $zero, 1
	blt	$t0, $t1, .LBB2_8
# %bb.11:                               # %for.cond331.preheader.us.us.preheader
                                        #   in Loop: Header=BB2_10 Depth=2
	move	$t1, $zero
	b	.LBB2_13
	.p2align	4, , 16
.LBB2_12:                               # %for.cond331.for.end_crit_edge.us.us
                                        #   in Loop: Header=BB2_13 Depth=3
	add.w	$a0, $a5, $s0
	addi.w	$t1, $t1, 1
	add.w	$a7, $a6, $t2
	beq	$t1, $a1, .LBB2_9
.LBB2_13:                               # %for.cond331.preheader.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_10 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_19 Depth 4
                                        #         Child Loop BB2_17 Depth 4
	beqz	$t3, .LBB2_15
# %bb.14:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_13 Depth=3
	add.d	$t0, $s5, $a0
	alsl.d	$t0, $t0, $s3, 3
	add.d	$t2, $s4, $a7
	alsl.d	$t2, $t2, $fp, 3
	sub.d	$t0, $t0, $t2
	bgeu	$t0, $s2, .LBB2_18
.LBB2_15:                               #   in Loop: Header=BB2_13 Depth=3
	move	$t0, $zero
	move	$s0, $a0
	move	$t2, $a7
.LBB2_16:                               # %for.body333.us.us.preheader
                                        #   in Loop: Header=BB2_13 Depth=3
	alsl.d	$a0, $s0, $t6, 3
	alsl.d	$a7, $t2, $s6, 3
	sub.d	$t0, $a4, $t0
	.p2align	4, , 16
.LBB2_17:                               # %for.body333.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_10 Depth=2
                                        #       Parent Loop BB2_13 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.d	$fa0, $a7, 0
	fst.d	$fa0, $a0, 0
	add.d	$s0, $s0, $a3
	addi.d	$t2, $t2, 1
	add.d	$a0, $a0, $ra
	addi.w	$t0, $t0, -1
	addi.d	$a7, $a7, 8
	bnez	$t0, .LBB2_17
	b	.LBB2_12
	.p2align	4, , 16
.LBB2_18:                               # %vector.ph
                                        #   in Loop: Header=BB2_13 Depth=3
	add.d	$s0, $t5, $a0
	add.d	$t2, $t4, $a7
	alsl.d	$a0, $a0, $t7, 3
	alsl.d	$a7, $a7, $s8, 3
	move	$t0, $t4
	.p2align	4, , 16
.LBB2_19:                               # %vector.body
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_10 Depth=2
                                        #       Parent Loop BB2_13 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvld	$xr0, $a7, -32
	xvld	$xr1, $a7, 0
	xvst	$xr0, $a0, -32
	xvst	$xr1, $a0, 0
	add.d	$a0, $a0, $t8
	addi.d	$t0, $t0, -8
	addi.d	$a7, $a7, 64
	bnez	$t0, .LBB2_19
# %bb.20:                               # %middle.block
                                        #   in Loop: Header=BB2_13 Depth=3
	move	$t0, $t4
	beq	$t4, $a4, .LBB2_12
	b	.LBB2_16
.LBB2_21:                               # %for.cond365.preheader
	move	$a0, $zero
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 36
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	addi.d	$a2, $a1, 8
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	addi.d	$a1, $a1, 16
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	addi.w	$a1, $zero, -1
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	ori	$s1, $zero, 64
	ori	$a2, $zero, 1
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	b	.LBB2_23
	.p2align	4, , 16
.LBB2_22:                               # %for.inc945
                                        #   in Loop: Header=BB2_23 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	andi	$a1, $a0, 1
	ori	$a0, $zero, 1
	move	$a2, $zero
	beqz	$a1, .LBB2_54
.LBB2_23:                               # %for.body367
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_29 Depth 2
                                        #       Child Loop BB2_35 Depth 3
                                        #         Child Loop BB2_40 Depth 4
                                        #           Child Loop BB2_43 Depth 5
                                        #             Child Loop BB2_49 Depth 6
                                        #             Child Loop BB2_53 Depth 6
	andi	$a0, $a0, 1
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	beqz	$a0, .LBB2_25
# %bb.24:                               # %sw.bb370
                                        #   in Loop: Header=BB2_23 Depth=1
	ld.d	$a0, $sp, 256
	pcaddu18i	$ra, %call36(hypre_FinalizeIndtComputations)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$t5, $a0, 0
	ld.w	$a6, $t5, 8
	ori	$a0, $zero, 1
	bge	$a6, $a0, .LBB2_26
	b	.LBB2_22
	.p2align	4, , 16
.LBB2_25:                               # %sw.bb
                                        #   in Loop: Header=BB2_23 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 24
	addi.d	$a2, $sp, 256
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_InitializeIndtComputations)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$t5, $a0, 0
	ld.w	$a6, $t5, 8
	ori	$a0, $zero, 1
	blt	$a6, $a0, .LBB2_22
.LBB2_26:                               # %for.body375.preheader
                                        #   in Loop: Header=BB2_23 Depth=1
	move	$t6, $zero
	st.d	$t5, $sp, 56                    # 8-byte Folded Spill
	b	.LBB2_29
	.p2align	4, , 16
.LBB2_27:                               # %for.inc942.loopexit
                                        #   in Loop: Header=BB2_29 Depth=2
	ld.d	$t5, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a6, $t5, 8
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 88                    # 8-byte Folded Reload
.LBB2_28:                               # %for.inc942
                                        #   in Loop: Header=BB2_29 Depth=2
	addi.d	$t6, $t6, 1
	bge	$t6, $a6, .LBB2_22
.LBB2_29:                               # %for.body375
                                        #   Parent Loop BB2_23 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_35 Depth 3
                                        #         Child Loop BB2_40 Depth 4
                                        #           Child Loop BB2_43 Depth 5
                                        #             Child Loop BB2_49 Depth 6
                                        #             Child Loop BB2_53 Depth 6
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 40
	slli.d	$a7, $t6, 3
	ld.d	$a1, $a2, 64
	ld.d	$a5, $a0, 0
	slli.d	$a4, $t6, 4
	ld.d	$a0, $a2, 48
	ldx.d	$t0, $a1, $a7
	ld.w	$a1, $fp, 0
	ld.w	$a2, $fp, 4
	ld.w	$a3, $fp, 8
	alsl.d	$a4, $t6, $a4, 3
	add.d	$t7, $a5, $a4
	addi.d	$a5, $t0, 4
	ld.d	$t1, $sp, 72                    # 8-byte Folded Reload
	beqz	$t1, .LBB2_31
# %bb.30:                               # %if.then386
                                        #   in Loop: Header=BB2_29 Depth=2
	ld.w	$t0, $t0, 0
	ld.w	$t1, $t7, 16
	ld.w	$t2, $t7, 4
	alsl.d	$t0, $t0, $a0, 3
	sub.w	$t1, $t1, $t2
	ld.d	$t4, $sp, 120                   # 8-byte Folded Reload
	slt	$t2, $t4, $t1
	maskeqz	$t1, $t1, $t2
	masknez	$t2, $t4, $t2
	or	$t1, $t1, $t2
	ld.w	$t2, $t7, 12
	ld.w	$t3, $t7, 0
	addi.d	$t1, $t1, 1
	mul.d	$t1, $t1, $a3
	add.d	$t1, $t1, $a2
	sub.w	$t2, $t2, $t3
	slt	$t3, $t4, $t2
	maskeqz	$t2, $t2, $t3
	masknez	$t3, $t4, $t3
	or	$t2, $t2, $t3
	addi.d	$t2, $t2, 1
	mul.d	$t1, $t1, $t2
	add.w	$t1, $t1, $a1
	slli.d	$t1, $t1, 3
	sub.d	$s7, $t0, $t1
	b	.LBB2_32
	.p2align	4, , 16
.LBB2_31:                               # %if.else447
                                        #   in Loop: Header=BB2_29 Depth=2
	ld.w	$a5, $a5, 0
	alsl.d	$s7, $a5, $a0, 3
	move	$a5, $t0
.LBB2_32:                               # %if.end462
                                        #   in Loop: Header=BB2_29 Depth=2
	ld.d	$t0, $t5, 0
	ldx.d	$t3, $t0, $a7
	ld.w	$a7, $t3, 8
	ori	$t0, $zero, 1
	blt	$a7, $t0, .LBB2_28
# %bb.33:                               # %for.body564.lr.ph
                                        #   in Loop: Header=BB2_29 Depth=2
	st.d	$t7, $sp, 112                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a6, $t0, 16
	ld.d	$a6, $a6, 0
	move	$t4, $zero
	add.d	$t5, $a6, $a4
	ld.w	$a4, $a5, 0
	ld.d	$a5, $t0, 40
	ld.w	$a6, $t5, 16
	ld.w	$a7, $t5, 4
	ld.d	$t0, $t0, 24
	st.d	$t6, $sp, 88                    # 8-byte Folded Spill
	slli.d	$t1, $t6, 2
	ldx.w	$a5, $a5, $t1
	sub.w	$a6, $a6, $a7
	ld.d	$t2, $sp, 120                   # 8-byte Folded Reload
	slt	$a7, $t2, $a6
	maskeqz	$a6, $a6, $a7
	masknez	$a7, $t2, $a7
	or	$a6, $a6, $a7
	ld.w	$a7, $t5, 12
	st.d	$t5, $sp, 104                   # 8-byte Folded Spill
	ld.w	$t1, $t5, 0
	addi.d	$a6, $a6, 1
	mul.d	$a3, $a6, $a3
	add.d	$a2, $a3, $a2
	sub.w	$a3, $a7, $t1
	slt	$a7, $t2, $a3
	maskeqz	$a3, $a3, $a7
	masknez	$a7, $t2, $a7
	ld.w	$t1, $fp, 20
	or	$a3, $a3, $a7
	ld.w	$a7, $fp, 16
	addi.d	$a3, $a3, 1
	mul.d	$a6, $t1, $a6
	ld.w	$t1, $fp, 12
	add.d	$a6, $a6, $a7
	alsl.d	$s4, $a5, $t0, 3
	alsl.d	$s8, $a4, $a0, 3
	mul.d	$a0, $a2, $a3
	add.w	$a0, $a1, $a0
	slli.d	$s2, $a0, 3
	sub.d	$s5, $zero, $s2
	mul.d	$a0, $a6, $a3
	add.w	$a0, $t1, $a0
	slli.d	$s0, $a0, 3
	sub.d	$s3, $zero, $s0
	addi.d	$a0, $s4, 32
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	addi.d	$a0, $s7, 32
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	addi.d	$fp, $s8, 32
	st.d	$t3, $sp, 144                   # 8-byte Folded Spill
	b	.LBB2_35
	.p2align	4, , 16
.LBB2_34:                               # %for.end938
                                        #   in Loop: Header=BB2_35 Depth=3
	ld.d	$t3, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a0, $t3, 8
	ld.d	$t4, $sp, 152                   # 8-byte Folded Reload
	addi.d	$t4, $t4, 1
	bge	$t4, $a0, .LBB2_27
.LBB2_35:                               # %for.body564
                                        #   Parent Loop BB2_23 Depth=1
                                        #     Parent Loop BB2_29 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_40 Depth 4
                                        #           Child Loop BB2_43 Depth 5
                                        #             Child Loop BB2_49 Depth 6
                                        #             Child Loop BB2_53 Depth 6
	ld.d	$a0, $t3, 0
	slli.d	$a1, $t4, 4
	st.d	$t4, $sp, 152                   # 8-byte Folded Spill
	alsl.d	$a1, $t4, $a1, 3
	ldx.w	$a2, $a0, $a1
	add.d	$a1, $a0, $a1
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	st.w	$a2, $sp, 232
	ld.w	$a0, $a1, 4
	st.w	$a0, $sp, 236
	ld.w	$a0, $a1, 8
	st.w	$a0, $sp, 240
	addi.d	$a0, $sp, 232
	addi.d	$a3, $sp, 220
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	move	$a2, $s6
	pcaddu18i	$ra, %call36(hypre_StructMapFineToCoarse)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 244
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	move	$a1, $s6
	pcaddu18i	$ra, %call36(hypre_BoxGetStrideSize)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 252
	ori	$a0, $zero, 1
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	blt	$a1, $a0, .LBB2_34
# %bb.36:                               # %for.cond895.preheader.lr.ph
                                        #   in Loop: Header=BB2_35 Depth=3
	ld.w	$a1, $sp, 248
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB2_34
# %bb.37:                               # %for.cond895.preheader.us.preheader
                                        #   in Loop: Header=BB2_35 Depth=3
	move	$a2, $zero
	ld.w	$a0, $sp, 220
	ld.d	$t1, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a3, $t1, 0
	ld.w	$a4, $sp, 224
	ld.w	$a5, $t1, 4
	ld.w	$a6, $sp, 228
	ld.w	$a7, $t1, 8
	ld.w	$t0, $t1, 16
	sub.d	$a0, $a0, $a3
	sub.d	$a4, $a4, $a5
	sub.d	$a6, $a6, $a7
	sub.w	$a5, $t0, $a5
	ld.d	$t4, $sp, 120                   # 8-byte Folded Reload
	slt	$a7, $t4, $a5
	maskeqz	$a5, $a5, $a7
	masknez	$a7, $t4, $a7
	or	$a5, $a5, $a7
	ld.w	$a7, $t1, 12
	addi.d	$t1, $a5, 1
	mul.d	$a5, $t1, $a6
	add.d	$a4, $a4, $a5
	sub.w	$a3, $a7, $a3
	slt	$a5, $t4, $a3
	maskeqz	$a3, $a3, $a5
	masknez	$a5, $t4, $a5
	or	$a3, $a3, $a5
	addi.d	$t2, $a3, 1
	mul.d	$a3, $a4, $t2
	add.w	$a3, $a0, $a3
	ld.w	$a0, $sp, 232
	ld.d	$t5, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a4, $t5, 0
	ld.w	$a5, $sp, 236
	ld.w	$a6, $t5, 4
	ld.w	$a7, $sp, 240
	ld.w	$t0, $t5, 8
	ld.w	$t3, $t5, 16
	sub.d	$a0, $a0, $a4
	sub.d	$a5, $a5, $a6
	sub.d	$a7, $a7, $t0
	sub.w	$a6, $t3, $a6
	slt	$t0, $t4, $a6
	maskeqz	$a6, $a6, $t0
	masknez	$t0, $t4, $t0
	or	$a6, $a6, $t0
	ld.w	$t0, $t5, 12
	addi.d	$t3, $a6, 1
	mul.d	$a6, $t3, $a7
	add.d	$a5, $a5, $a6
	sub.w	$a4, $t0, $a4
	slt	$a6, $t4, $a4
	maskeqz	$a4, $a4, $a6
	masknez	$a6, $t4, $a6
	or	$a4, $a4, $a6
	addi.d	$a7, $a4, 1
	mul.d	$a4, $a5, $a7
	add.w	$a4, $a0, $a4
	ld.d	$a6, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a6, 52
	ld.w	$a5, $a6, 48
	ld.w	$t0, $a6, 56
	ld.wu	$a6, $sp, 244
	mul.d	$a0, $a7, $a0
	mul.d	$a7, $a7, $t3
	mul.d	$t3, $a7, $t0
	mul.d	$t4, $a6, $a5
	sub.d	$a7, $t2, $a6
	sub.d	$t0, $a0, $t4
	sub.d	$t1, $t1, $a1
	mul.d	$t1, $t1, $t2
	st.d	$t1, $sp, 184                   # 8-byte Folded Spill
	mul.d	$t1, $a1, $a0
	sub.d	$t1, $t3, $t1
	st.d	$t1, $sp, 176                   # 8-byte Folded Spill
	addi.d	$t1, $a1, -1
	mul.d	$t3, $a7, $t1
	add.d	$t2, $t2, $t3
	sub.d	$t2, $t2, $a6
	st.d	$t2, $sp, 168                   # 8-byte Folded Spill
	mul.d	$t1, $t0, $t1
	add.d	$a0, $t1, $a0
	sub.d	$a0, $a0, $t4
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ori	$a0, $zero, 7
	sltu	$a0, $a0, $a6
	addi.d	$t1, $a5, -1
	sltui	$t1, $t1, 1
	and	$t5, $a0, $t1
	bstrpick.d	$a0, $a6, 30, 3
	slli.d	$t4, $a0, 3
	mul.d	$t7, $t4, $a5
	slli.d	$t8, $a5, 6
	slli.d	$ra, $a5, 3
	b	.LBB2_40
	.p2align	4, , 16
.LBB2_38:                               # %for.cond898.preheader.us425.preheader
                                        #   in Loop: Header=BB2_40 Depth=4
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	add.d	$a3, $a0, $a3
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	add.d	$a4, $a0, $a4
.LBB2_39:                               # %for.cond895.for.end926_crit_edge.us
                                        #   in Loop: Header=BB2_40 Depth=4
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	add.w	$a3, $a3, $a0
	addi.w	$a2, $a2, 1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	add.w	$a4, $a0, $a4
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beq	$a2, $a0, .LBB2_34
.LBB2_40:                               # %for.cond895.preheader.us
                                        #   Parent Loop BB2_23 Depth=1
                                        #     Parent Loop BB2_29 Depth=2
                                        #       Parent Loop BB2_35 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB2_43 Depth 5
                                        #             Child Loop BB2_49 Depth 6
                                        #             Child Loop BB2_53 Depth 6
	addi.w	$a0, $a6, 0
	ori	$t1, $zero, 1
	blt	$a0, $t1, .LBB2_38
# %bb.41:                               # %for.cond898.preheader.us.us.preheader
                                        #   in Loop: Header=BB2_40 Depth=4
	move	$t3, $zero
	b	.LBB2_43
	.p2align	4, , 16
.LBB2_42:                               # %for.cond898.for.end917_crit_edge.us.us
                                        #   in Loop: Header=BB2_43 Depth=5
	add.w	$a3, $a7, $a3
	addi.w	$t3, $t3, 1
	add.w	$a4, $t0, $a4
	beq	$t3, $a1, .LBB2_39
.LBB2_43:                               # %for.cond898.preheader.us.us
                                        #   Parent Loop BB2_23 Depth=1
                                        #     Parent Loop BB2_29 Depth=2
                                        #       Parent Loop BB2_35 Depth=3
                                        #         Parent Loop BB2_40 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB2_49 Depth 6
                                        #             Child Loop BB2_53 Depth 6
	beqz	$t5, .LBB2_51
# %bb.44:                               # %vector.memcheck477
                                        #   in Loop: Header=BB2_43 Depth=5
	alsl.d	$a0, $a4, $s4, 3
	alsl.d	$t1, $a3, $s8, 3
	sub.d	$t1, $a0, $t1
	move	$t6, $zero
	bltu	$t1, $s1, .LBB2_52
# %bb.45:                               # %vector.memcheck477
                                        #   in Loop: Header=BB2_43 Depth=5
	bltu	$s5, $s1, .LBB2_52
# %bb.46:                               # %vector.memcheck477
                                        #   in Loop: Header=BB2_43 Depth=5
	alsl.d	$t1, $a3, $s7, 3
	sub.d	$a0, $a0, $t1
	bltu	$a0, $s1, .LBB2_52
# %bb.47:                               # %vector.memcheck477
                                        #   in Loop: Header=BB2_43 Depth=5
	bltu	$s3, $s1, .LBB2_52
# %bb.48:                               # %vector.ph487
                                        #   in Loop: Header=BB2_43 Depth=5
	slli.d	$a0, $a4, 3
	slli.d	$t1, $a3, 3
	add.d	$a4, $t7, $a4
	add.d	$a3, $t4, $a3
	ld.d	$t2, $sp, 208                   # 8-byte Folded Reload
	add.d	$t6, $t2, $a0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	add.d	$a0, $a0, $t1
	add.d	$t1, $fp, $t1
	move	$t2, $t4
	.p2align	4, , 16
.LBB2_49:                               # %vector.body490
                                        #   Parent Loop BB2_23 Depth=1
                                        #     Parent Loop BB2_29 Depth=2
                                        #       Parent Loop BB2_35 Depth=3
                                        #         Parent Loop BB2_40 Depth=4
                                        #           Parent Loop BB2_43 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	xvld	$xr0, $t1, -32
	xvld	$xr1, $t1, 0
	add.d	$s6, $t6, $s0
	xvld	$xr2, $s6, -32
	add.d	$s6, $t6, $s2
	xvld	$xr3, $a0, -32
	xvld	$xr4, $a0, 0
	xvldx	$xr5, $t6, $s0
	xvld	$xr6, $s6, -32
	xvldx	$xr7, $t6, $s2
	xvfmul.d	$xr2, $xr3, $xr2
	xvfmul.d	$xr3, $xr4, $xr5
	xvfmadd.d	$xr0, $xr0, $xr6, $xr2
	xvfmadd.d	$xr1, $xr1, $xr7, $xr3
	xvst	$xr0, $t6, -32
	xvst	$xr1, $t6, 0
	addi.d	$t2, $t2, -8
	add.d	$t6, $t6, $t8
	addi.d	$a0, $a0, 64
	addi.d	$t1, $t1, 64
	bnez	$t2, .LBB2_49
# %bb.50:                               # %middle.block503
                                        #   in Loop: Header=BB2_43 Depth=5
	move	$t6, $t4
	beq	$t4, $a6, .LBB2_42
	b	.LBB2_52
	.p2align	4, , 16
.LBB2_51:                               #   in Loop: Header=BB2_43 Depth=5
	move	$t6, $zero
.LBB2_52:                               # %for.body900.us.us.preheader
                                        #   in Loop: Header=BB2_43 Depth=5
	alsl.d	$a0, $a4, $s4, 3
	alsl.d	$t1, $a3, $s8, 3
	alsl.d	$t2, $a3, $s7, 3
	sub.d	$t6, $a6, $t6
	.p2align	4, , 16
.LBB2_53:                               # %for.body900.us.us
                                        #   Parent Loop BB2_23 Depth=1
                                        #     Parent Loop BB2_29 Depth=2
                                        #       Parent Loop BB2_35 Depth=3
                                        #         Parent Loop BB2_40 Depth=4
                                        #           Parent Loop BB2_43 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	fld.d	$fa0, $t1, 0
	fld.d	$fa1, $t2, 0
	fldx.d	$fa2, $a0, $s0
	fldx.d	$fa3, $a0, $s2
	fmul.d	$fa1, $fa1, $fa2
	fmadd.d	$fa0, $fa0, $fa3, $fa1
	fst.d	$fa0, $a0, 0
	addi.d	$a3, $a3, 1
	add.d	$a4, $a4, $a5
	add.d	$a0, $a0, $ra
	addi.d	$t1, $t1, 8
	addi.w	$t6, $t6, -1
	addi.d	$t2, $t2, 8
	bnez	$t6, .LBB2_53
	b	.LBB2_42
.LBB2_54:                               # %for.end947
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 72
	alsl.w	$a0, $a0, $a0, 1
	pcaddu18i	$ra, %call36(hypre_IncFLOPCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 60
	pcaddu18i	$ra, %call36(hypre_EndTiming)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s8, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 336                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 344                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 352
	ret
.Lfunc_end2:
	.size	hypre_SemiInterp, .Lfunc_end2-hypre_SemiInterp
                                        # -- End function
	.globl	hypre_SemiInterpDestroy         # -- Begin function hypre_SemiInterpDestroy
	.p2align	5
	.type	hypre_SemiInterpDestroy,@function
hypre_SemiInterpDestroy:                # @hypre_SemiInterpDestroy
# %bb.0:                                # %entry
	beqz	$a0, .LBB3_2
# %bb.1:                                # %if.then
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.d	$a1, $a0, 0
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(hypre_StructMatrixDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	pcaddu18i	$ra, %call36(hypre_ComputePkgDestroy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 60
	pcaddu18i	$ra, %call36(hypre_FinalizeTiming)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB3_2:                                # %if.end
	move	$a0, $zero
	ret
.Lfunc_end3:
	.size	hypre_SemiInterpDestroy, .Lfunc_end3-hypre_SemiInterpDestroy
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"SemiInterp"
	.size	.L.str, 11

	.section	".note.GNU-stack","",@progbits
	.addrsig
