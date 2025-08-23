	.file	"communication.c"
	.text
	.globl	hypre_CommPkgCreate             # -- Begin function hypre_CommPkgCreate
	.p2align	5
	.type	hypre_CommPkgCreate,@function
hypre_CommPkgCreate:                    # @hypre_CommPkgCreate
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
	ld.d	$s4, $sp, 224
	ld.d	$s5, $sp, 216
	ld.d	$s6, $sp, 208
	move	$s8, $a7
	move	$s2, $a6
	st.d	$a5, $sp, 48                    # 8-byte Folded Spill
	move	$s0, $a4
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	move	$s7, $a2
	move	$s1, $a1
	move	$s3, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 80
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.w	$s6, $a0, 0
	st.w	$s5, $a0, 4
	addi.d	$a0, $sp, 64
	st.d	$a0, $sp, 16
	addi.d	$a0, $sp, 96
	st.d	$a0, $sp, 8
	addi.d	$a0, $sp, 104
	addi.d	$a7, $sp, 116
	st.d	$a0, $sp, 0
	move	$a0, $s3
	move	$a1, $s7
	move	$a2, $s0
	move	$a3, $s2
	move	$a4, $s6
	move	$a5, $s5
	move	$a6, $s4
	pcaddu18i	$ra, %call36(hypre_CommPkgCreateInfo)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 116
	ld.d	$a1, $sp, 104
	ld.d	$a2, $sp, 96
	ld.d	$a3, $sp, 64
	st.w	$a0, $fp, 8
	st.d	$a1, $fp, 16
	st.d	$a2, $fp, 32
	st.d	$a3, $fp, 64
	addi.d	$a0, $sp, 56
	st.d	$a0, $sp, 16
	addi.d	$a0, $sp, 72
	st.d	$a0, $sp, 8
	addi.d	$a0, $sp, 80
	addi.d	$a7, $sp, 92
	st.d	$a0, $sp, 0
	move	$a0, $s1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	move	$a3, $s8
	move	$a4, $s6
	move	$a5, $s5
	ori	$s5, $zero, 1
	move	$a6, $s4
	pcaddu18i	$ra, %call36(hypre_CommPkgCreateInfo)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 92
	ld.d	$a1, $sp, 80
	ld.d	$a2, $sp, 72
	ld.d	$a3, $sp, 56
	ld.w	$a4, $s3, 8
	st.w	$a0, $fp, 12
	st.d	$a1, $fp, 24
	st.d	$a2, $fp, 40
	st.d	$a3, $fp, 72
	blt	$a4, $s5, .LBB0_3
# %bb.1:                                # %for.body.preheader
	move	$s0, $zero
	move	$s4, $s2
	.p2align	4, , 16
.LBB0_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 0
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 8
	st.d	$zero, $s4, 0
	addi.d	$s0, $s0, 1
	addi.d	$s4, $s4, 8
	blt	$s0, $a0, .LBB0_2
.LBB0_3:                                # %for.end
	move	$a0, $s3
	pcaddu18i	$ra, %call36(hypre_BoxArrayArrayDestroy)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 8
	blt	$a0, $s5, .LBB0_6
# %bb.4:                                # %for.body19.preheader
	move	$s0, $zero
	move	$s2, $s8
	.p2align	4, , 16
.LBB0_5:                                # %for.body19
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 8
	st.d	$zero, $s2, 0
	addi.d	$s0, $s0, 1
	addi.d	$s2, $s2, 8
	blt	$s0, $a0, .LBB0_5
.LBB0_6:                                # %for.end26
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_BoxArrayArrayDestroy)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 8
	slli.w	$a0, $a0, 2
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 8
	ld.d	$a2, $fp, 32
	move	$a3, $a0
	st.d	$a0, $fp, 48
	move	$a0, $a1
	pcaddu18i	$ra, %call36(hypre_CommTypeBuildMPI)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 12
	slli.w	$a0, $a0, 2
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 12
	ld.d	$a2, $fp, 40
	move	$a3, $a0
	st.d	$a0, $fp, 56
	move	$a0, $a1
	pcaddu18i	$ra, %call36(hypre_CommTypeBuildMPI)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 8
	ori	$s1, $zero, 1
	blt	$a0, $s1, .LBB0_19
# %bb.7:                                # %for.body32.preheader
	move	$s2, $zero
	b	.LBB0_11
	.p2align	4, , 16
.LBB0_8:                                # %if.end.loopexit.i
                                        #   in Loop: Header=BB0_11 Depth=1
	ld.d	$a0, $s0, 0
.LBB0_9:                                # %if.end.i
                                        #   in Loop: Header=BB0_11 Depth=1
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 8
.LBB0_10:                               # %hypre_CommTypeDestroy.exit
                                        #   in Loop: Header=BB0_11 Depth=1
	addi.d	$s2, $s2, 1
	bge	$s2, $a0, .LBB0_19
.LBB0_11:                               # %for.body32
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_16 Depth 2
	ld.d	$a1, $fp, 32
	slli.d	$a2, $s2, 3
	ldx.d	$s0, $a1, $a2
	beqz	$s0, .LBB0_10
# %bb.12:                               # %if.then.i
                                        #   in Loop: Header=BB0_11 Depth=1
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB0_18
# %bb.13:                               # %for.cond.preheader.i
                                        #   in Loop: Header=BB0_11 Depth=1
	ld.w	$a1, $s0, 8
	blt	$a1, $s1, .LBB0_9
# %bb.14:                               # %for.body.i.preheader
                                        #   in Loop: Header=BB0_11 Depth=1
	move	$s3, $zero
	move	$s4, $zero
	b	.LBB0_16
	.p2align	4, , 16
.LBB0_15:                               # %hypre_CommTypeEntryDestroy.exit.i
                                        #   in Loop: Header=BB0_16 Depth=2
	addi.d	$s4, $s4, 1
	addi.d	$s3, $s3, 8
	bge	$s4, $a1, .LBB0_8
.LBB0_16:                               # %for.body.i
                                        #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s0, 0
	ldx.d	$a0, $a0, $s3
	beqz	$a0, .LBB0_15
# %bb.17:                               # %if.then.i.i
                                        #   in Loop: Header=BB0_16 Depth=2
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 8
	b	.LBB0_15
	.p2align	4, , 16
.LBB0_18:                               #   in Loop: Header=BB0_11 Depth=1
	move	$a0, $zero
	b	.LBB0_9
.LBB0_19:                               # %for.end39
	ld.d	$a0, $fp, 32
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 12
	st.d	$zero, $fp, 32
	blt	$a0, $s1, .LBB0_32
# %bb.20:                               # %for.body45.preheader
	move	$s1, $zero
	ori	$s2, $zero, 1
	b	.LBB0_24
	.p2align	4, , 16
.LBB0_21:                               # %if.end.loopexit.i64
                                        #   in Loop: Header=BB0_24 Depth=1
	ld.d	$a0, $s0, 0
.LBB0_22:                               # %if.end.i54
                                        #   in Loop: Header=BB0_24 Depth=1
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 12
.LBB0_23:                               # %hypre_CommTypeDestroy.exit66
                                        #   in Loop: Header=BB0_24 Depth=1
	addi.d	$s1, $s1, 1
	bge	$s1, $a0, .LBB0_32
.LBB0_24:                               # %for.body45
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_29 Depth 2
	ld.d	$a1, $fp, 40
	slli.d	$a2, $s1, 3
	ldx.d	$s0, $a1, $a2
	beqz	$s0, .LBB0_23
# %bb.25:                               # %if.then.i49
                                        #   in Loop: Header=BB0_24 Depth=1
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB0_31
# %bb.26:                               # %for.cond.preheader.i51
                                        #   in Loop: Header=BB0_24 Depth=1
	ld.w	$a1, $s0, 8
	blt	$a1, $s2, .LBB0_22
# %bb.27:                               # %for.body.i55.preheader
                                        #   in Loop: Header=BB0_24 Depth=1
	move	$s3, $zero
	move	$s4, $zero
	b	.LBB0_29
	.p2align	4, , 16
.LBB0_28:                               # %hypre_CommTypeEntryDestroy.exit.i61
                                        #   in Loop: Header=BB0_29 Depth=2
	addi.d	$s4, $s4, 1
	addi.d	$s3, $s3, 8
	bge	$s4, $a1, .LBB0_21
.LBB0_29:                               # %for.body.i55
                                        #   Parent Loop BB0_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s0, 0
	ldx.d	$a0, $a0, $s3
	beqz	$a0, .LBB0_28
# %bb.30:                               # %if.then.i.i59
                                        #   in Loop: Header=BB0_29 Depth=2
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 8
	b	.LBB0_28
	.p2align	4, , 16
.LBB0_31:                               #   in Loop: Header=BB0_24 Depth=1
	move	$a0, $zero
	b	.LBB0_22
.LBB0_32:                               # %for.end52
	ld.d	$a0, $fp, 40
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 40
	move	$a0, $fp
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
.Lfunc_end0:
	.size	hypre_CommPkgCreate, .Lfunc_end0-hypre_CommPkgCreate
                                        # -- End function
	.globl	hypre_CommPkgCreateInfo         # -- Begin function hypre_CommPkgCreateInfo
	.p2align	5
	.type	hypre_CommPkgCreateInfo,@function
hypre_CommPkgCreateInfo:                # @hypre_CommPkgCreateInfo
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -224
	st.d	$ra, $sp, 216                   # 8-byte Folded Spill
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	st.d	$s2, $sp, 184                   # 8-byte Folded Spill
	st.d	$s3, $sp, 176                   # 8-byte Folded Spill
	st.d	$s4, $sp, 168                   # 8-byte Folded Spill
	st.d	$s5, $sp, 160                   # 8-byte Folded Spill
	st.d	$s6, $sp, 152                   # 8-byte Folded Spill
	st.d	$s7, $sp, 144                   # 8-byte Folded Spill
	st.d	$s8, $sp, 136                   # 8-byte Folded Spill
	st.d	$a7, $sp, 24                    # 8-byte Folded Spill
	move	$s0, $a6
	move	$fp, $a5
	st.d	$a4, $sp, 104                   # 8-byte Folded Spill
	move	$s4, $a3
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	move	$s3, $a0
	addi.d	$a1, $sp, 132
	move	$a0, $a5
	pcaddu18i	$ra, %call36(hypre_MPI_Comm_size)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 128
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_MPI_Comm_rank)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 132
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	ld.w	$a4, $s3, 8
	ori	$fp, $zero, 1
	move	$s1, $a0
	blt	$a4, $fp, .LBB1_9
# %bb.1:                                # %for.body.lr.ph
	ld.d	$a0, $s3, 0
	move	$a1, $zero
	move	$s2, $zero
	addi.w	$a2, $zero, -1
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_2:                                # %for.inc69.loopexit
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.w	$a4, $s3, 8
.LBB1_3:                                # %for.inc69
                                        #   in Loop: Header=BB1_4 Depth=1
	addi.d	$a1, $a1, 1
	bge	$a1, $a4, .LBB1_10
.LBB1_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_7 Depth 2
	slli.d	$a3, $a1, 3
	ldx.d	$a3, $a0, $a3
	ld.w	$t0, $a3, 8
	blt	$t0, $fp, .LBB1_3
# %bb.5:                                # %for.body6.lr.ph
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a7, $a3, 0
	move	$a4, $zero
	move	$a5, $zero
	alsl.d	$a6, $a1, $s4, 3
	addi.d	$a7, $a7, 16
	b	.LBB1_7
	.p2align	4, , 16
.LBB1_6:                                # %for.inc
                                        #   in Loop: Header=BB1_7 Depth=2
	addi.d	$a5, $a5, 1
	addi.d	$a4, $a4, 4
	addi.d	$a7, $a7, 24
	bge	$a5, $t0, .LBB1_2
.LBB1_7:                                # %for.body6
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t1, $a7, -4
	ld.w	$t2, $a7, -16
	sub.w	$t1, $t1, $t2
	slt	$t2, $a2, $t1
	maskeqz	$t1, $t1, $t2
	ld.d	$t3, $a7, 0
	ld.d	$t4, $a7, -12
	masknez	$t2, $a2, $t2
	or	$t1, $t1, $t2
	vinsgr2vr.d	$vr0, $t3, 0
	vinsgr2vr.d	$vr1, $t4, 0
	vsub.w	$vr0, $vr0, $vr1
	vmaxi.w	$vr0, $vr0, -1
	vaddi.wu	$vr0, $vr0, 1
	vpickve2gr.w	$t2, $vr0, 0
	vpickve2gr.w	$t3, $vr0, 1
	addi.d	$t1, $t1, 1
	sltui	$t1, $t1, 1
	sltui	$t2, $t2, 1
	or	$t1, $t2, $t1
	sltui	$t2, $t3, 1
	or	$t1, $t1, $t2
	bnez	$t1, .LBB1_6
# %bb.8:                                # %if.then
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.d	$t0, $a6, 0
	ldx.w	$t0, $t0, $a4
	slli.d	$t1, $t0, 2
	ldx.w	$t2, $s1, $t1
	addi.d	$t3, $t2, 1
	stx.w	$t3, $s1, $t1
	ld.w	$t1, $sp, 128
	sltui	$t2, $t2, 1
	xor	$t1, $t0, $t1
	ld.w	$t0, $a3, 8
	sltu	$t1, $zero, $t1
	and	$t1, $t2, $t1
	add.w	$s2, $s2, $t1
	b	.LBB1_6
.LBB1_9:
	move	$s2, $zero
.LBB1_10:                               # %for.end71
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	ld.w	$a0, $sp, 132
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	slli.w	$a0, $s2, 2
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 8
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 96                    # 8-byte Folded Spill
	blt	$a1, $fp, .LBB1_22
# %bb.11:                               # %for.body80.preheader
	move	$a4, $zero
	st.d	$zero, $sp, 72                  # 8-byte Folded Spill
	st.d	$zero, $sp, 120                 # 8-byte Folded Spill
	addi.w	$s5, $zero, -1
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	b	.LBB1_14
	.p2align	4, , 16
.LBB1_12:                               # %for.end191.loopexit
                                        #   in Loop: Header=BB1_14 Depth=1
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a1, $s3, 8
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
.LBB1_13:                               # %for.end191
                                        #   in Loop: Header=BB1_14 Depth=1
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a0, $a4, 12
	ld.w	$a2, $a4, 0
	sub.w	$a0, $a0, $a2
	slt	$a2, $s5, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s5, $a2
	ld.d	$a3, $a4, 16
	ld.d	$a4, $a4, 4
	or	$a0, $a0, $a2
	addi.d	$a0, $a0, 1
	vinsgr2vr.d	$vr0, $a3, 0
	vinsgr2vr.d	$vr1, $a4, 0
	vsub.w	$vr0, $vr0, $vr1
	vmaxi.w	$vr0, $vr0, -1
	vaddi.wu	$vr0, $vr0, 1
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a2
	vpickve2gr.w	$a2, $vr0, 0
	mul.d	$a0, $a0, $a2
	vpickve2gr.w	$a2, $vr0, 1
	mul.d	$a0, $a0, $a2
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	addi.d	$a4, $a4, 1
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	add.w	$a2, $a0, $a2
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	bge	$a4, $a1, .LBB1_22
.LBB1_14:                               # %for.body80
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_18 Depth 2
	ld.d	$a0, $s3, 0
	slli.d	$a2, $a4, 3
	ldx.d	$s8, $a0, $a2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.w	$a2, $s8, 8
	slli.d	$a3, $a4, 4
	alsl.d	$a3, $a4, $a3, 3
	add.d	$a0, $a0, $a3
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a4, $sp, 56                    # 8-byte Folded Spill
	blt	$a2, $a0, .LBB1_13
# %bb.15:                               # %for.body91.lr.ph
                                        #   in Loop: Header=BB1_14 Depth=1
	move	$s2, $zero
	move	$s6, $zero
	move	$s3, $zero
	alsl.d	$a0, $a4, $s4, 3
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	b	.LBB1_18
	.p2align	4, , 16
.LBB1_16:                               # %if.end177
                                        #   in Loop: Header=BB1_18 Depth=2
	move	$a0, $s4
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_CommTypeEntryCreate)
	jirl	$ra, $ra, 0
	ldx.w	$a1, $s1, $fp
	ld.d	$a3, $s7, 0
	addi.d	$a2, $a1, 1
	stx.w	$a2, $s1, $fp
	ld.w	$a2, $s8, 8
	slli.d	$a1, $a1, 3
	stx.d	$a0, $a3, $a1
.LBB1_17:                               # %for.inc189
                                        #   in Loop: Header=BB1_18 Depth=2
	addi.d	$s3, $s3, 1
	addi.d	$s6, $s6, 4
	addi.d	$s2, $s2, 24
	bge	$s3, $a2, .LBB1_12
.LBB1_18:                               # %for.body91
                                        #   Parent Loop BB1_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s8, 0
	add.d	$s4, $a0, $s2
	ld.w	$a1, $s4, 12
	ldx.w	$a0, $a0, $s2
	sub.w	$a0, $a1, $a0
	slt	$a1, $s5, $a0
	maskeqz	$a0, $a0, $a1
	ld.d	$a3, $s4, 16
	ld.d	$a4, $s4, 4
	masknez	$a1, $s5, $a1
	or	$a0, $a0, $a1
	vinsgr2vr.d	$vr0, $a3, 0
	vinsgr2vr.d	$vr1, $a4, 0
	vsub.w	$vr0, $vr0, $vr1
	vmaxi.w	$vr0, $vr0, -1
	vaddi.wu	$vr0, $vr0, 1
	vpickve2gr.w	$a1, $vr0, 0
	vpickve2gr.w	$a3, $vr0, 1
	addi.d	$a0, $a0, 1
	sltui	$a0, $a0, 1
	sltui	$a1, $a1, 1
	or	$a0, $a1, $a0
	sltui	$a1, $a3, 1
	or	$a0, $a0, $a1
	bnez	$a0, .LBB1_17
# %bb.19:                               # %if.then157
                                        #   in Loop: Header=BB1_18 Depth=2
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldx.w	$s0, $a0, $s6
	slli.d	$a0, $s0, 3
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	alsl.d	$s7, $s0, $a1, 3
	slli.d	$fp, $s0, 2
	bnez	$a0, .LBB1_16
# %bb.20:                               # %if.then162
                                        #   in Loop: Header=BB1_18 Depth=2
	ldx.w	$a0, $s1, $fp
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	stx.w	$zero, $s1, $fp
	ld.w	$a1, $sp, 128
	st.d	$a0, $s7, 0
	beq	$s0, $a1, .LBB1_16
# %bb.21:                               # %if.then172
                                        #   in Loop: Header=BB1_18 Depth=2
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	slli.d	$a0, $a2, 2
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	stx.w	$s0, $a1, $a0
	addi.w	$a2, $a2, 1
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	b	.LBB1_16
.LBB1_22:                               # %for.end252
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	slli.w	$a0, $s8, 3
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$fp, $a0
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	blt	$s8, $a1, .LBB1_25
# %bb.23:                               # %for.body260.preheader
	move	$s0, $s8
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
	move	$s3, $fp
	.p2align	4, , 16
.LBB1_24:                               # %for.body260
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s2, 0
	slli.d	$a1, $a0, 3
	ldx.d	$s4, $s6, $a1
	slli.d	$a0, $a0, 2
	ldx.w	$s5, $s1, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	st.d	$s4, $a0, 0
	st.w	$s5, $a0, 8
	st.d	$a0, $s3, 0
	move	$a1, $s7
	pcaddu18i	$ra, %call36(hypre_CommTypeSort)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, 8
	addi.d	$s0, $s0, -1
	addi.d	$s2, $s2, 4
	bnez	$s0, .LBB1_24
.LBB1_25:                               # %for.end275
	ld.w	$a0, $sp, 128
	ld.d	$s2, $sp, 240
	ld.d	$s3, $sp, 232
	slli.d	$a1, $a0, 3
	ldx.d	$s5, $s6, $a1
	ld.d	$s4, $sp, 224
	beqz	$s5, .LBB1_27
# %bb.26:                               # %if.then280
	slli.d	$a0, $a0, 2
	ldx.w	$s6, $s1, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s5, $a0, 0
	st.w	$s6, $a0, 8
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
	move	$a1, $s7
	pcaddu18i	$ra, %call36(hypre_CommTypeSort)
	jirl	$ra, $ra, 0
	b	.LBB1_28
.LBB1_27:                               # %if.else
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$zero, $a0, 0
	st.w	$zero, $a0, 8
.LBB1_28:                               # %if.end288
	move	$a0, $s6
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.w	$s8, $a0, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.d	$a0, $s4, 0
	st.d	$fp, $s3, 0
	st.d	$s0, $s2, 0
	move	$a0, $zero
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 216                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 224
	ret
.Lfunc_end1:
	.size	hypre_CommPkgCreateInfo, .Lfunc_end1-hypre_CommPkgCreateInfo
                                        # -- End function
	.globl	hypre_CommPkgCommit             # -- Begin function hypre_CommPkgCommit
	.p2align	5
	.type	hypre_CommPkgCommit,@function
hypre_CommPkgCommit:                    # @hypre_CommPkgCommit
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 8
	slli.w	$a0, $a0, 2
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 8
	ld.d	$a2, $fp, 32
	move	$a3, $a0
	st.d	$a0, $fp, 48
	move	$a0, $a1
	pcaddu18i	$ra, %call36(hypre_CommTypeBuildMPI)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 12
	slli.w	$a0, $a0, 2
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 12
	ld.d	$a2, $fp, 40
	move	$a3, $a0
	st.d	$a0, $fp, 56
	move	$a0, $a1
	pcaddu18i	$ra, %call36(hypre_CommTypeBuildMPI)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end2:
	.size	hypre_CommPkgCommit, .Lfunc_end2-hypre_CommPkgCommit
                                        # -- End function
	.globl	hypre_CommTypeDestroy           # -- Begin function hypre_CommTypeDestroy
	.p2align	5
	.type	hypre_CommTypeDestroy,@function
hypre_CommTypeDestroy:                  # @hypre_CommTypeDestroy
# %bb.0:                                # %entry
	beqz	$a0, .LBB3_10
# %bb.1:                                # %if.then
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB3_8
# %bb.2:                                # %for.cond.preheader
	ld.w	$a1, $fp, 8
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB3_9
# %bb.3:                                # %for.body.preheader
	move	$s0, $zero
	move	$s1, $zero
	b	.LBB3_5
	.p2align	4, , 16
.LBB3_4:                                # %hypre_CommTypeEntryDestroy.exit
                                        #   in Loop: Header=BB3_5 Depth=1
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	bge	$s1, $a1, .LBB3_7
.LBB3_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	ldx.d	$a0, $a0, $s0
	beqz	$a0, .LBB3_4
# %bb.6:                                # %if.then.i
                                        #   in Loop: Header=BB3_5 Depth=1
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 8
	b	.LBB3_4
.LBB3_7:                                # %if.end.loopexit
	ld.d	$a0, $fp, 0
	b	.LBB3_9
.LBB3_8:
	move	$a0, $zero
.LBB3_9:                                # %if.end
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB3_10:                               # %if.end6
	move	$a0, $zero
	ret
.Lfunc_end3:
	.size	hypre_CommTypeDestroy, .Lfunc_end3-hypre_CommTypeDestroy
                                        # -- End function
	.globl	hypre_CommPkgDestroy            # -- Begin function hypre_CommPkgDestroy
	.p2align	5
	.type	hypre_CommPkgDestroy,@function
hypre_CommPkgDestroy:                   # @hypre_CommPkgDestroy
# %bb.0:                                # %entry
	beqz	$a0, .LBB4_32
# %bb.1:                                # %if.then.i
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$s0, $a0, 48
	beqz	$s0, .LBB4_6
# %bb.2:                                # %for.cond.preheader.i
	ld.w	$a0, $fp, 8
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB4_5
# %bb.3:                                # %for.body.i.preheader
	move	$s2, $zero
	move	$s1, $s0
	.p2align	4, , 16
.LBB4_4:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_MPI_Type_free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 8
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 4
	blt	$s2, $a0, .LBB4_4
.LBB4_5:                                # %for.end.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
.LBB4_6:                                # %if.end.i
	ld.d	$s0, $fp, 56
	beqz	$s0, .LBB4_11
# %bb.7:                                # %for.cond5.preheader.i
	ld.w	$a0, $fp, 12
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB4_10
# %bb.8:                                # %for.body7.i.preheader
	move	$s2, $zero
	move	$s1, $s0
	.p2align	4, , 16
.LBB4_9:                                # %for.body7.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_MPI_Type_free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 12
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 4
	blt	$s2, $a0, .LBB4_9
.LBB4_10:                               # %for.end13.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
.LBB4_11:                               # %hypre_CommPkgUnCommit.exit
	ld.d	$a0, $fp, 16
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	st.d	$zero, $fp, 16
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 64
	st.d	$zero, $fp, 24
	beqz	$s0, .LBB4_21
# %bb.12:                               # %if.then.i10
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB4_19
# %bb.13:                               # %for.cond.preheader.i11
	ld.w	$a1, $s0, 8
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB4_20
# %bb.14:                               # %for.body.i13.preheader
	move	$s1, $zero
	move	$s2, $zero
	b	.LBB4_16
	.p2align	4, , 16
.LBB4_15:                               # %hypre_CommTypeEntryDestroy.exit.i
                                        #   in Loop: Header=BB4_16 Depth=1
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 8
	bge	$s2, $a1, .LBB4_18
.LBB4_16:                               # %for.body.i13
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	ldx.d	$a0, $a0, $s1
	beqz	$a0, .LBB4_15
# %bb.17:                               # %if.then.i.i
                                        #   in Loop: Header=BB4_16 Depth=1
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 8
	b	.LBB4_15
.LBB4_18:                               # %if.end.loopexit.i
	ld.d	$a0, $s0, 0
	b	.LBB4_20
.LBB4_19:
	move	$a0, $zero
.LBB4_20:                               # %if.end.i12
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
.LBB4_21:                               # %hypre_CommTypeDestroy.exit
	ld.d	$s0, $fp, 72
	beqz	$s0, .LBB4_31
# %bb.22:                               # %if.then.i18
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB4_29
# %bb.23:                               # %for.cond.preheader.i20
	ld.w	$a1, $s0, 8
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB4_30
# %bb.24:                               # %for.body.i24.preheader
	move	$s1, $zero
	move	$s2, $zero
	b	.LBB4_26
	.p2align	4, , 16
.LBB4_25:                               # %hypre_CommTypeEntryDestroy.exit.i30
                                        #   in Loop: Header=BB4_26 Depth=1
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 8
	bge	$s2, $a1, .LBB4_28
.LBB4_26:                               # %for.body.i24
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	ldx.d	$a0, $a0, $s1
	beqz	$a0, .LBB4_25
# %bb.27:                               # %if.then.i.i28
                                        #   in Loop: Header=BB4_26 Depth=1
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 8
	b	.LBB4_25
.LBB4_28:                               # %if.end.loopexit.i33
	ld.d	$a0, $s0, 0
	b	.LBB4_30
.LBB4_29:
	move	$a0, $zero
.LBB4_30:                               # %if.end.i23
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
.LBB4_31:                               # %hypre_CommTypeDestroy.exit35
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
.LBB4_32:                               # %if.end
	move	$a0, $zero
	ret
.Lfunc_end4:
	.size	hypre_CommPkgDestroy, .Lfunc_end4-hypre_CommPkgDestroy
                                        # -- End function
	.globl	hypre_CommPkgUnCommit           # -- Begin function hypre_CommPkgUnCommit
	.p2align	5
	.type	hypre_CommPkgUnCommit,@function
hypre_CommPkgUnCommit:                  # @hypre_CommPkgUnCommit
# %bb.0:                                # %entry
	beqz	$a0, .LBB5_12
# %bb.1:                                # %if.then
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$s0, $a0, 48
	beqz	$s0, .LBB5_6
# %bb.2:                                # %for.cond.preheader
	ld.w	$a0, $fp, 8
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB5_5
# %bb.3:                                # %for.body.preheader
	move	$s2, $zero
	move	$s1, $s0
	.p2align	4, , 16
.LBB5_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_MPI_Type_free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 8
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 4
	blt	$s2, $a0, .LBB5_4
.LBB5_5:                                # %for.end
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
.LBB5_6:                                # %if.end
	ld.d	$s0, $fp, 56
	beqz	$s0, .LBB5_11
# %bb.7:                                # %for.cond5.preheader
	ld.w	$a0, $fp, 12
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB5_10
# %bb.8:                                # %for.body7.preheader
	move	$s2, $zero
	move	$s1, $s0
	.p2align	4, , 16
.LBB5_9:                                # %for.body7
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_MPI_Type_free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 12
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 4
	blt	$s2, $a0, .LBB5_9
.LBB5_10:                               # %for.end13
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
.LBB5_11:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
.LBB5_12:                               # %if.end15
	move	$a0, $zero
	ret
.Lfunc_end5:
	.size	hypre_CommPkgUnCommit, .Lfunc_end5-hypre_CommPkgUnCommit
                                        # -- End function
	.globl	hypre_InitializeCommunication   # -- Begin function hypre_InitializeCommunication
	.p2align	5
	.type	hypre_InitializeCommunication,@function
hypre_InitializeCommunication:          # @hypre_InitializeCommunication
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
	move	$s0, $a0
	ld.w	$s7, $a0, 8
	ld.w	$s8, $a0, 12
	ld.w	$s5, $a0, 4
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	move	$s1, $a2
	move	$s3, $a1
	add.w	$s2, $s8, $s7
	ori	$a1, $zero, 4
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ori	$a1, $zero, 4
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	blt	$s8, $a1, .LBB6_4
# %bb.1:                                # %for.body.lr.ph
	move	$s6, $zero
	slli.d	$fp, $s8, 2
	.p2align	4, , 16
.LBB6_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 56
	ld.d	$a1, $s0, 24
	ldx.w	$a2, $a0, $s6
	ldx.w	$a3, $a1, $s6
	add.d	$a6, $s4, $s6
	ori	$a1, $zero, 1
	move	$a0, $s1
	move	$a4, $zero
	move	$a5, $s5
	pcaddu18i	$ra, %call36(hypre_MPI_Irecv)
	jirl	$ra, $ra, 0
	addi.d	$s6, $s6, 4
	bne	$fp, $s6, .LBB6_2
# %bb.3:                                # %for.cond11.preheader.loopexit
	ori	$a1, $zero, 1
	bge	$s7, $a1, .LBB6_5
	b	.LBB6_7
.LBB6_4:
	move	$s8, $zero
	blt	$s7, $a1, .LBB6_7
.LBB6_5:                                # %for.body13.lr.ph
	move	$fp, $zero
	slli.d	$s7, $s7, 2
	alsl.d	$s6, $s8, $s4, 2
	.p2align	4, , 16
.LBB6_6:                                # %for.body13
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 48
	ld.d	$a1, $s0, 16
	ldx.w	$a2, $a0, $fp
	ldx.w	$a3, $a1, $fp
	add.d	$a6, $s6, $fp
	ori	$a1, $zero, 1
	move	$a0, $s3
	move	$a4, $zero
	move	$a5, $s5
	pcaddu18i	$ra, %call36(hypre_MPI_Isend)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 4
	bne	$s7, $fp, .LBB6_6
.LBB6_7:                                # %for.end24
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s1
	pcaddu18i	$ra, %call36(hypre_ExchangeLocalData)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	st.d	$s0, $a0, 0
	st.d	$s3, $a0, 8
	st.d	$s1, $a0, 16
	st.w	$s2, $a0, 24
	st.d	$s4, $a0, 32
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	st.d	$a1, $a0, 40
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $a1, 0
	move	$a0, $zero
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end6:
	.size	hypre_InitializeCommunication, .Lfunc_end6-hypre_InitializeCommunication
                                        # -- End function
	.globl	hypre_ExchangeLocalData         # -- Begin function hypre_ExchangeLocalData
	.p2align	5
	.type	hypre_ExchangeLocalData,@function
hypre_ExchangeLocalData:                # @hypre_ExchangeLocalData
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
	ld.d	$a3, $a0, 64
	ld.w	$a4, $a3, 8
	ori	$a5, $zero, 1
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	blt	$a4, $a5, .LBB7_22
# %bb.1:                                # %for.body.lr.ph
	ld.d	$a0, $a0, 72
	move	$a4, $zero
	ld.d	$a3, $a3, 0
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $a2, 32
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $a1, 32
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$t1, $zero, 8
	b	.LBB7_3
	.p2align	4, , 16
.LBB7_2:                                # %for.inc61
                                        #   in Loop: Header=BB7_3 Depth=1
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	addi.d	$a4, $a4, 1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	beq	$a4, $a0, .LBB7_22
.LBB7_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_10 Depth 2
                                        #       Child Loop BB7_12 Depth 3
                                        #         Child Loop BB7_14 Depth 4
                                        #           Child Loop BB7_20 Depth 5
                                        #           Child Loop BB7_18 Depth 5
	st.d	$a4, $sp, 56                    # 8-byte Folded Spill
	slli.d	$a0, $a4, 3
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	ldx.d	$a3, $a3, $a0
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	ldx.d	$a0, $a4, $a0
	ld.w	$t2, $a3, 24
	ld.w	$t3, $a0, 24
	alsl.d	$t4, $t2, $a1, 3
	alsl.d	$t5, $t3, $a2, 3
	beq	$t5, $t4, .LBB7_2
# %bb.4:                                # %if.then
                                        #   in Loop: Header=BB7_3 Depth=1
	ld.w	$a5, $a3, 44
	ori	$a4, $zero, 1
	st.d	$a5, $sp, 80                    # 8-byte Folded Spill
	blt	$a5, $a4, .LBB7_2
# %bb.5:                                # %for.cond18.preheader.lr.ph
                                        #   in Loop: Header=BB7_3 Depth=1
	ld.w	$a5, $a3, 40
	ori	$a4, $zero, 1
	st.d	$a5, $sp, 128                   # 8-byte Folded Spill
	blt	$a5, $a4, .LBB7_2
# %bb.6:                                # %for.cond18.preheader.lr.ph.split.us
                                        #   in Loop: Header=BB7_3 Depth=1
	ld.w	$t8, $a3, 36
	ori	$a4, $zero, 1
	blt	$t8, $a4, .LBB7_2
# %bb.7:                                # %for.cond18.preheader.lr.ph.split.us.split.us
                                        #   in Loop: Header=BB7_3 Depth=1
	ld.w	$fp, $a3, 32
	ori	$a4, $zero, 1
	blt	$fp, $a4, .LBB7_2
# %bb.8:                                # %for.cond18.preheader.lr.ph.split.us.split.us.split.us
                                        #   in Loop: Header=BB7_3 Depth=1
	move	$t7, $zero
	move	$s4, $zero
	move	$a7, $zero
	ld.w	$a4, $a3, 60
	st.d	$a4, $sp, 72                    # 8-byte Folded Spill
	ld.w	$a4, $a3, 56
	st.d	$a4, $sp, 120                   # 8-byte Folded Spill
	ld.w	$s5, $a3, 52
	ld.w	$a4, $a0, 60
	st.d	$a4, $sp, 64                    # 8-byte Folded Spill
	ld.w	$a4, $a3, 48
	ld.w	$a3, $a0, 56
	st.d	$a3, $sp, 112                   # 8-byte Folded Spill
	ld.w	$a5, $a0, 48
	ld.w	$s8, $a0, 52
	addi.d	$a0, $a4, -1
	sltu	$a0, $zero, $a0
	addi.d	$a3, $a5, -1
	sltu	$a3, $zero, $a3
	or	$ra, $a3, $a0
	bstrpick.d	$a0, $fp, 30, 3
	slli.d	$a6, $a0, 3
	mul.d	$a0, $a6, $a5
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	mul.d	$a0, $a6, $a4
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$a0, $t3, $a0, 3
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	slli.d	$a3, $a5, 6
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	slli.d	$s3, $a4, 6
	slli.d	$s6, $a5, 3
	slli.d	$t6, $a4, 3
	b	.LBB7_10
	.p2align	4, , 16
.LBB7_9:                                # %for.cond18.for.inc58_crit_edge.split.us.split.us.us.us.us
                                        #   in Loop: Header=BB7_10 Depth=2
	ld.d	$a7, $sp, 88                    # 8-byte Folded Reload
	addi.w	$a7, $a7, 1
	ld.d	$s4, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	add.w	$s4, $s4, $a0
	ld.d	$t7, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	add.w	$t7, $t7, $a0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	beq	$a7, $a0, .LBB7_2
.LBB7_10:                               # %for.cond18.preheader.us.us.us
                                        #   Parent Loop BB7_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_12 Depth 3
                                        #         Child Loop BB7_14 Depth 4
                                        #           Child Loop BB7_20 Depth 5
                                        #           Child Loop BB7_18 Depth 5
	st.d	$a7, $sp, 88                    # 8-byte Folded Spill
	move	$a0, $zero
	st.d	$t7, $sp, 104                   # 8-byte Folded Spill
	st.d	$s4, $sp, 96                    # 8-byte Folded Spill
	b	.LBB7_12
	.p2align	4, , 16
.LBB7_11:                               # %for.cond22.for.inc55_crit_edge.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB7_12 Depth=3
	addi.w	$a0, $a0, 1
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	add.w	$s4, $s4, $a4
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	add.w	$t7, $t7, $a4
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	beq	$a0, $a4, .LBB7_9
.LBB7_12:                               # %for.cond22.preheader.us.us.us.us.us
                                        #   Parent Loop BB7_3 Depth=1
                                        #     Parent Loop BB7_10 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_14 Depth 4
                                        #           Child Loop BB7_20 Depth 5
                                        #           Child Loop BB7_18 Depth 5
	move	$s2, $zero
	move	$s0, $t7
	move	$s1, $s4
	b	.LBB7_14
	.p2align	4, , 16
.LBB7_13:                               # %for.cond40.for.inc52_crit_edge.us.us.us.us.us.us
                                        #   in Loop: Header=BB7_14 Depth=4
	addi.w	$s2, $s2, 1
	add.w	$s1, $s1, $s5
	add.w	$s0, $s0, $s8
	beq	$s2, $t8, .LBB7_11
.LBB7_14:                               # %for.body25.us.us.us.us.us.us
                                        #   Parent Loop BB7_3 Depth=1
                                        #     Parent Loop BB7_10 Depth=2
                                        #       Parent Loop BB7_12 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB7_20 Depth 5
                                        #           Child Loop BB7_18 Depth 5
	bltu	$fp, $t1, .LBB7_16
# %bb.15:                               # %vector.scevcheck
                                        #   in Loop: Header=BB7_14 Depth=4
	add.d	$a4, $t3, $s0
	alsl.d	$a4, $a4, $a2, 3
	add.d	$a5, $t2, $s1
	alsl.d	$a5, $a5, $a1, 3
	sub.d	$a4, $a4, $a5
	sltui	$a4, $a4, 64
	or	$a4, $ra, $a4
	beqz	$a4, .LBB7_19
.LBB7_16:                               #   in Loop: Header=BB7_14 Depth=4
	move	$a7, $zero
	move	$s7, $s0
	move	$t0, $s1
.LBB7_17:                               # %for.body43.us.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB7_14 Depth=4
	alsl.d	$a4, $s7, $t5, 3
	alsl.d	$a5, $t0, $t4, 3
	sub.d	$t0, $fp, $a7
	.p2align	4, , 16
.LBB7_18:                               # %for.body43.us.us.us.us.us.us
                                        #   Parent Loop BB7_3 Depth=1
                                        #     Parent Loop BB7_10 Depth=2
                                        #       Parent Loop BB7_12 Depth=3
                                        #         Parent Loop BB7_14 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	fld.d	$fa0, $a5, 0
	fst.d	$fa0, $a4, 0
	add.d	$a4, $a4, $s6
	addi.w	$t0, $t0, -1
	add.d	$a5, $a5, $t6
	bnez	$t0, .LBB7_18
	b	.LBB7_13
	.p2align	4, , 16
.LBB7_19:                               # %vector.ph
                                        #   in Loop: Header=BB7_14 Depth=4
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	alsl.d	$a4, $s0, $a4, 3
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$a5, $s1, $a5, 3
	ld.d	$a7, $sp, 160                   # 8-byte Folded Reload
	add.d	$s7, $a7, $s0
	ld.d	$a7, $sp, 152                   # 8-byte Folded Reload
	add.d	$t0, $a7, $s1
	move	$a7, $a6
	.p2align	4, , 16
.LBB7_20:                               # %vector.body
                                        #   Parent Loop BB7_3 Depth=1
                                        #     Parent Loop BB7_10 Depth=2
                                        #       Parent Loop BB7_12 Depth=3
                                        #         Parent Loop BB7_14 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	xvld	$xr0, $a5, -32
	xvld	$xr1, $a5, 0
	xvst	$xr0, $a4, -32
	xvst	$xr1, $a4, 0
	addi.d	$a7, $a7, -8
	add.d	$a4, $a4, $a3
	add.d	$a5, $a5, $s3
	bnez	$a7, .LBB7_20
# %bb.21:                               # %middle.block
                                        #   in Loop: Header=BB7_14 Depth=4
	move	$a7, $a6
	beq	$a6, $fp, .LBB7_13
	b	.LBB7_17
.LBB7_22:                               # %for.end63
	move	$a0, $zero
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
.Lfunc_end7:
	.size	hypre_ExchangeLocalData, .Lfunc_end7-hypre_ExchangeLocalData
                                        # -- End function
	.globl	hypre_FinalizeCommunication     # -- Begin function hypre_FinalizeCommunication
	.p2align	5
	.type	hypre_FinalizeCommunication,@function
hypre_FinalizeCommunication:            # @hypre_FinalizeCommunication
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 24
	beqz	$a0, .LBB8_2
# %bb.1:                                # %if.then
	ld.d	$a1, $fp, 32
	ld.d	$a2, $fp, 40
	pcaddu18i	$ra, %call36(hypre_MPI_Waitall)
	jirl	$ra, $ra, 0
.LBB8_2:                                # %if.end
	ld.d	$a0, $fp, 32
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	st.d	$zero, $fp, 32
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end8:
	.size	hypre_FinalizeCommunication, .Lfunc_end8-hypre_FinalizeCommunication
                                        # -- End function
	.globl	hypre_CommTypeCreate            # -- Begin function hypre_CommTypeCreate
	.p2align	5
	.type	hypre_CommTypeCreate,@function
hypre_CommTypeCreate:                   # @hypre_CommTypeCreate
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	st.d	$s0, $a0, 0
	st.w	$fp, $a0, 8
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end9:
	.size	hypre_CommTypeCreate, .Lfunc_end9-hypre_CommTypeCreate
                                        # -- End function
	.globl	hypre_CommTypeEntryDestroy      # -- Begin function hypre_CommTypeEntryDestroy
	.p2align	5
	.type	hypre_CommTypeEntryDestroy,@function
hypre_CommTypeEntryDestroy:             # @hypre_CommTypeEntryDestroy
# %bb.0:                                # %entry
	beqz	$a0, .LBB10_2
# %bb.1:                                # %if.then
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB10_2:                               # %if.end
	move	$a0, $zero
	ret
.Lfunc_end10:
	.size	hypre_CommTypeEntryDestroy, .Lfunc_end10-hypre_CommTypeEntryDestroy
                                        # -- End function
	.globl	hypre_CommTypeEntryCreate       # -- Begin function hypre_CommTypeEntryCreate
	.p2align	5
	.type	hypre_CommTypeEntryCreate,@function
hypre_CommTypeEntryCreate:              # @hypre_CommTypeEntryCreate
# %bb.0:                                # %for.inc115.2
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	move	$s3, $a4
	move	$s1, $a3
	move	$fp, $a2
	move	$s0, $a1
	move	$s2, $a0
	ori	$a0, $zero, 64
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	move	$s4, $a0
	st.w	$a1, $a0, 0
	ld.w	$a0, $s2, 4
	st.w	$a0, $s4, 4
	ld.w	$a0, $s2, 8
	st.w	$a0, $s4, 8
	ld.w	$a0, $s2, 12
	st.w	$a0, $s4, 12
	ld.w	$a0, $s2, 16
	st.w	$a0, $s4, 16
	ld.w	$a0, $s2, 20
	st.w	$a0, $s4, 20
	ld.w	$a0, $s2, 0
	ld.w	$a1, $s2, 4
	ld.w	$a2, $fp, 4
	ld.w	$a3, $s2, 8
	ld.w	$a4, $fp, 8
	ld.w	$a5, $fp, 16
	ld.w	$a6, $fp, 0
	sub.d	$a1, $a1, $a2
	sub.d	$a3, $a3, $a4
	sub.w	$a2, $a5, $a2
	addi.w	$s5, $zero, -1
	slt	$a4, $s5, $a2
	maskeqz	$a2, $a2, $a4
	masknez	$a4, $s5, $a4
	or	$a2, $a2, $a4
	ld.w	$a4, $fp, 12
	addi.d	$a2, $a2, 1
	mul.d	$a2, $a2, $a3
	add.d	$a1, $a1, $a2
	sub.w	$a2, $a4, $a6
	slt	$a3, $s5, $a2
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $s5, $a3
	or	$a2, $a2, $a3
	addi.d	$a2, $a2, 1
	mul.d	$a1, $a1, $a2
	add.d	$a0, $a0, $s3
	sub.d	$a0, $a0, $a6
	add.d	$a0, $a0, $a1
	st.w	$a0, $s4, 24
	addi.d	$s3, $s4, 32
	addi.d	$a2, $sp, 20
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_BoxGetStrideSize)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 20
	ld.d	$a2, $sp, 24
	st.w	$a1, $s4, 32
	st.d	$a2, $s4, 36
	st.w	$s1, $s4, 44
	ld.w	$a1, $s0, 0
	st.w	$a1, $s4, 48
	ld.w	$a1, $s0, 4
	st.w	$a1, $s4, 52
	ld.w	$a2, $fp, 12
	ld.w	$a3, $fp, 0
	sub.w	$a2, $a2, $a3
	slt	$a3, $s5, $a2
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $s5, $a3
	or	$a2, $a2, $a3
	addi.d	$a2, $a2, 1
	mul.d	$a1, $a2, $a1
	st.w	$a1, $s4, 52
	ld.w	$a1, $s0, 8
	st.w	$a1, $s4, 56
	ld.w	$a2, $fp, 12
	ld.w	$a3, $fp, 0
	sub.w	$a2, $a2, $a3
	slt	$a3, $s5, $a2
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $s5, $a3
	or	$a2, $a2, $a3
	addi.d	$a2, $a2, 1
	mul.d	$a1, $a2, $a1
	st.w	$a1, $s4, 56
	ld.w	$a2, $fp, 16
	ld.w	$a3, $fp, 4
	sub.w	$a2, $a2, $a3
	slt	$a3, $s5, $a2
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $s5, $a3
	or	$a2, $a2, $a3
	addi.d	$a2, $a2, 1
	mul.d	$a1, $a2, $a1
	st.w	$a1, $s4, 56
	ld.w	$a3, $fp, 12
	ld.w	$a4, $fp, 0
	move	$a1, $zero
	addi.d	$a2, $s4, 48
	sub.w	$a3, $a3, $a4
	slt	$a4, $s5, $a3
	maskeqz	$a3, $a3, $a4
	ld.w	$a5, $fp, 16
	ld.w	$a6, $fp, 4
	masknez	$a4, $s5, $a4
	or	$a4, $a3, $a4
	addi.d	$a3, $s4, 52
	sub.w	$a5, $a5, $a6
	slt	$a6, $s5, $a5
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $s5, $a6
	or	$a5, $a5, $a6
	ld.w	$a6, $fp, 20
	ld.w	$a7, $fp, 8
	addi.d	$a4, $a4, 1
	addi.d	$a5, $a5, 1
	mul.d	$a4, $a5, $a4
	sub.w	$a5, $a6, $a7
	slt	$a6, $s5, $a5
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $s5, $a6
	or	$a5, $a5, $a6
	addi.d	$a5, $a5, 1
	mul.d	$a4, $a4, $a5
	st.w	$a4, $s4, 60
	ori	$a4, $zero, 4
	ori	$a5, $zero, 1
	b	.LBB11_2
	.p2align	4, , 16
.LBB11_1:                               # %if.else
                                        #   in Loop: Header=BB11_2 Depth=1
	addi.w	$a1, $a1, 1
	bge	$a1, $a4, .LBB11_7
.LBB11_2:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_5 Depth 2
	slli.d	$a6, $a1, 2
	ldx.w	$a6, $s3, $a6
	bne	$a6, $a5, .LBB11_1
# %bb.3:                                # %for.cond176.preheader
                                        #   in Loop: Header=BB11_2 Depth=1
	addi.w	$a4, $a4, -1
	bge	$a1, $a4, .LBB11_6
# %bb.4:                                # %for.body179.preheader
                                        #   in Loop: Header=BB11_2 Depth=1
	alsl.d	$a6, $a1, $a3, 2
	sub.d	$a7, $a4, $a1
	.p2align	4, , 16
.LBB11_5:                               # %for.body179
                                        #   Parent Loop BB11_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t0, $a6, -16
	ld.w	$t1, $a6, 0
	st.w	$t0, $a6, -20
	st.w	$t1, $a6, -4
	addi.d	$a7, $a7, -1
	addi.d	$a6, $a6, 4
	bnez	$a7, .LBB11_5
.LBB11_6:                               # %for.end192
                                        #   in Loop: Header=BB11_2 Depth=1
	slli.d	$a6, $a4, 2
	stx.w	$a5, $s3, $a6
	stx.w	$a5, $a2, $a6
	blt	$a1, $a4, .LBB11_2
.LBB11_7:                               # %while.end
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a4
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a4, $a2
	or	$a1, $a2, $a1
	st.w	$a1, $s4, 28
	move	$a0, $s4
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
.Lfunc_end11:
	.size	hypre_CommTypeEntryCreate, .Lfunc_end11-hypre_CommTypeEntryCreate
                                        # -- End function
	.globl	hypre_CommTypeSort              # -- Begin function hypre_CommTypeSort
	.p2align	5
	.type	hypre_CommTypeSort,@function
hypre_CommTypeSort:                     # @hypre_CommTypeSort
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
	ld.w	$a3, $a0, 8
	ori	$a2, $zero, 2
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	blt	$a3, $a2, .LBB12_30
# %bb.1:                                # %for.cond3.preheader.preheader
	move	$fp, $a1
	ld.d	$a1, $a0, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	addi.w	$a0, $a0, -1
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	addi.d	$s4, $a1, 8
	ori	$s5, $zero, 1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	b	.LBB12_3
	.p2align	4, , 16
.LBB12_2:                               # %for.inc45
                                        #   in Loop: Header=BB12_3 Depth=1
	addi.d	$a0, $s6, -1
	bge	$s5, $s6, .LBB12_11
.LBB12_3:                               # %for.cond3.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_6 Depth 2
	move	$s7, $zero
	move	$s6, $a0
	move	$s3, $s4
	b	.LBB12_6
	.p2align	4, , 16
.LBB12_4:                               # %if.then33
                                        #   in Loop: Header=BB12_6 Depth=2
	ld.d	$a0, $s3, 0
	ld.d	$a1, $s3, -8
	st.d	$a0, $s3, -8
	st.d	$a1, $s3, 0
.LBB12_5:                               # %for.inc
                                        #   in Loop: Header=BB12_6 Depth=2
	addi.d	$s7, $s7, 1
	addi.d	$s3, $s3, 8
	beq	$s6, $s7, .LBB12_2
.LBB12_6:                               # %for.body5
                                        #   Parent Loop BB12_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s1, $s3, -8
	ld.d	$s0, $s3, 0
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_IModPeriodZ)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_IModPeriodZ)
	jirl	$ra, $ra, 0
	blt	$a0, $s2, .LBB12_4
# %bb.7:                                # %if.else
                                        #   in Loop: Header=BB12_6 Depth=2
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_IModPeriodZ)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_IModPeriodZ)
	jirl	$ra, $ra, 0
	bne	$s2, $a0, .LBB12_5
# %bb.8:                                # %if.then15
                                        #   in Loop: Header=BB12_6 Depth=2
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_IModPeriodY)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_IModPeriodY)
	jirl	$ra, $ra, 0
	blt	$a0, $s2, .LBB12_4
# %bb.9:                                # %if.else20
                                        #   in Loop: Header=BB12_6 Depth=2
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_IModPeriodY)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_IModPeriodY)
	jirl	$ra, $ra, 0
	bne	$s2, $a0, .LBB12_5
# %bb.10:                               # %if.then24
                                        #   in Loop: Header=BB12_6 Depth=2
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_IModPeriodX)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_IModPeriodX)
	jirl	$ra, $ra, 0
	blt	$a0, $s1, .LBB12_4
	b	.LBB12_5
.LBB12_11:                              # %for.body50.preheader
	move	$s8, $zero
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 8
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB12_13
	.p2align	4, , 16
.LBB12_12:                              # %for.cond47.loopexit
                                        #   in Loop: Header=BB12_13 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	bge	$s8, $a0, .LBB12_30
.LBB12_13:                              # %for.body50
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_14 Depth 2
                                        #     Child Loop BB12_22 Depth 2
                                        #       Child Loop BB12_25 Depth 3
	move	$s3, $s8
	slli.d	$a0, $s8, 3
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ldx.d	$s0, $a1, $a0
	addi.w	$a0, $s8, 1
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	slt	$a1, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s4, $a1, $a0
	addi.w	$s7, $s4, -1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$s6, $s8, $a0, 3
	addi.d	$s5, $s8, 1
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB12_14:                              # %for.cond56
                                        #   Parent Loop BB12_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	bge	$s5, $a0, .LBB12_20
# %bb.15:                               # %for.body58
                                        #   in Loop: Header=BB12_14 Depth=2
	ld.d	$s1, $s6, 0
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_IModPeriodX)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_IModPeriodX)
	jirl	$ra, $ra, 0
	bne	$s2, $a0, .LBB12_19
# %bb.16:                               # %lor.lhs.false
                                        #   in Loop: Header=BB12_14 Depth=2
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_IModPeriodY)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_IModPeriodY)
	jirl	$ra, $ra, 0
	bne	$s2, $a0, .LBB12_19
# %bb.17:                               # %lor.lhs.false69
                                        #   in Loop: Header=BB12_14 Depth=2
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_IModPeriodZ)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_IModPeriodZ)
	jirl	$ra, $ra, 0
	addi.w	$s8, $s8, 1
	addi.d	$s6, $s6, 8
	addi.d	$s5, $s5, 1
	beq	$s2, $a0, .LBB12_14
# %bb.18:                               # %for.end77.split.loop.exit114
                                        #   in Loop: Header=BB12_13 Depth=1
	addi.w	$s7, $s8, -1
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	blt	$s3, $s7, .LBB12_22
	b	.LBB12_12
	.p2align	4, , 16
.LBB12_19:                              # %for.end77.split.loop.exit111
                                        #   in Loop: Header=BB12_13 Depth=1
	addi.w	$a0, $s8, 1
	move	$s7, $s8
	move	$s8, $a0
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	blt	$s3, $s7, .LBB12_22
	b	.LBB12_12
	.p2align	4, , 16
.LBB12_20:                              #   in Loop: Header=BB12_13 Depth=1
	move	$s8, $s4
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	blt	$s3, $s7, .LBB12_22
	b	.LBB12_12
	.p2align	4, , 16
.LBB12_21:                              # %for.inc136
                                        #   in Loop: Header=BB12_22 Depth=2
	addi.d	$s7, $s7, -1
	bge	$s3, $s7, .LBB12_12
.LBB12_22:                              # %for.cond82.preheader
                                        #   Parent Loop BB12_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_25 Depth 3
	move	$s5, $s6
	move	$s4, $s3
	b	.LBB12_25
	.p2align	4, , 16
.LBB12_23:                              # %if.then121
                                        #   in Loop: Header=BB12_25 Depth=3
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s5, -8
	st.d	$a0, $s5, -8
	st.d	$a1, $s5, 0
.LBB12_24:                              # %for.inc133
                                        #   in Loop: Header=BB12_25 Depth=3
	addi.d	$s4, $s4, 1
	addi.d	$s5, $s5, 8
	bge	$s4, $s7, .LBB12_21
.LBB12_25:                              # %for.body84
                                        #   Parent Loop BB12_13 Depth=1
                                        #     Parent Loop BB12_22 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s5, -8
	ld.d	$a1, $s5, 0
	addi.d	$s1, $a0, 12
	addi.d	$s0, $a1, 12
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_IModPeriodZ)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_IModPeriodZ)
	jirl	$ra, $ra, 0
	blt	$a0, $s2, .LBB12_23
# %bb.26:                               # %if.else97
                                        #   in Loop: Header=BB12_25 Depth=3
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_IModPeriodZ)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_IModPeriodZ)
	jirl	$ra, $ra, 0
	bne	$s2, $a0, .LBB12_24
# %bb.27:                               # %if.then101
                                        #   in Loop: Header=BB12_25 Depth=3
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_IModPeriodY)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_IModPeriodY)
	jirl	$ra, $ra, 0
	blt	$a0, $s2, .LBB12_23
# %bb.28:                               # %if.else106
                                        #   in Loop: Header=BB12_25 Depth=3
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_IModPeriodY)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_IModPeriodY)
	jirl	$ra, $ra, 0
	bne	$s2, $a0, .LBB12_24
# %bb.29:                               # %if.then110
                                        #   in Loop: Header=BB12_25 Depth=3
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_IModPeriodX)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_IModPeriodX)
	jirl	$ra, $ra, 0
	blt	$a0, $s1, .LBB12_23
	b	.LBB12_24
.LBB12_30:                              # %for.end140
	move	$a0, $zero
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
.Lfunc_end12:
	.size	hypre_CommTypeSort, .Lfunc_end12-hypre_CommTypeSort
                                        # -- End function
	.globl	hypre_CommTypeBuildMPI          # -- Begin function hypre_CommTypeBuildMPI
	.p2align	5
	.type	hypre_CommTypeBuildMPI,@function
hypre_CommTypeBuildMPI:                 # @hypre_CommTypeBuildMPI
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
	ori	$s8, $zero, 1
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	blt	$a0, $s8, .LBB13_9
# %bb.1:                                # %for.body.preheader
	move	$fp, $zero
	b	.LBB13_4
	.p2align	4, , 16
.LBB13_2:                               # %for.end42.critedge
                                        #   in Loop: Header=BB13_4 Depth=1
	move	$a0, $s5
	move	$a1, $s3
	move	$a2, $s7
	move	$a3, $s4
	move	$a4, $s1
	pcaddu18i	$ra, %call36(hypre_MPI_Type_struct)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_MPI_Type_commit)
	jirl	$ra, $ra, 0
.LBB13_3:                               # %for.end42
                                        #   in Loop: Header=BB13_4 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	beq	$fp, $a0, .LBB13_9
.LBB13_4:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_6 Depth 2
                                        #     Child Loop BB13_8 Depth 2
	slli.d	$a0, $fp, 3
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ldx.d	$s0, $a1, $a0
	ld.w	$s5, $s0, 8
	slli.w	$s4, $s5, 2
	move	$a0, $s4
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$s1, $fp, $a0, 2
	blt	$s5, $s8, .LBB13_2
# %bb.5:                                # %for.body14.preheader
                                        #   in Loop: Header=BB13_4 Depth=1
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	move	$s1, $zero
	slli.d	$s2, $s5, 3
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s7, $sp, 40                    # 8-byte Folded Spill
	move	$s6, $s7
	move	$s7, $s4
	.p2align	4, , 16
.LBB13_6:                               # %for.body14
                                        #   Parent Loop BB13_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s0, 0
	ldx.d	$a0, $a0, $s1
	st.w	$s8, $s3, 0
	ld.w	$a1, $a0, 24
	slli.d	$a1, $a1, 3
	st.w	$a1, $s6, 0
	move	$a1, $s7
	pcaddu18i	$ra, %call36(hypre_CommTypeEntryBuildMPI)
	jirl	$ra, $ra, 0
	addi.d	$s7, $s7, 4
	addi.d	$s6, $s6, 4
	addi.d	$s1, $s1, 8
	addi.d	$s3, $s3, 4
	bne	$s2, $s1, .LBB13_6
# %bb.7:                                # %for.end
                                        #   in Loop: Header=BB13_4 Depth=1
	move	$a0, $s5
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	move	$a1, $s3
	ld.d	$s7, $sp, 40                    # 8-byte Folded Reload
	move	$a2, $s7
	move	$a3, $s4
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	move	$a4, $s0
	pcaddu18i	$ra, %call36(hypre_MPI_Type_struct)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_MPI_Type_commit)
	jirl	$ra, $ra, 0
	move	$s6, $s4
	.p2align	4, , 16
.LBB13_8:                               # %for.body36
                                        #   Parent Loop BB13_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s6
	pcaddu18i	$ra, %call36(hypre_MPI_Type_free)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, -1
	addi.d	$s6, $s6, 4
	bnez	$s5, .LBB13_8
	b	.LBB13_3
.LBB13_9:                               # %for.end45
	move	$a0, $zero
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
.Lfunc_end13:
	.size	hypre_CommTypeBuildMPI, .Lfunc_end13-hypre_CommTypeBuildMPI
                                        # -- End function
	.globl	hypre_CommTypeEntryBuildMPI     # -- Begin function hypre_CommTypeEntryBuildMPI
	.p2align	5
	.type	hypre_CommTypeEntryBuildMPI,@function
hypre_CommTypeEntryBuildMPI:            # @hypre_CommTypeEntryBuildMPI
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
	ld.w	$s6, $a0, 28
	move	$fp, $a1
	addi.d	$s3, $a0, 32
	ori	$s5, $zero, 1
	addi.d	$s4, $a0, 48
	bne	$s6, $s5, .LBB14_2
# %bb.1:                                # %if.then
	ld.w	$a1, $s4, 0
	ld.w	$a0, $s3, 0
	slli.w	$a2, $a1, 3
	ori	$a1, $zero, 1
	move	$a3, $zero
	move	$a4, $fp
	pcaddu18i	$ra, %call36(hypre_MPI_Type_hvector)
	jirl	$ra, $ra, 0
	b	.LBB14_7
.LBB14_2:                               # %if.else
	move	$s1, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 0
	ld.w	$a3, $s3, 0
	move	$s0, $a0
	slli.w	$a2, $a1, 3
	ori	$a1, $zero, 1
	move	$a0, $a3
	move	$a3, $zero
	move	$a4, $s2
	pcaddu18i	$ra, %call36(hypre_MPI_Type_hvector)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3
	blt	$s6, $a0, .LBB14_5
# %bb.3:                                # %for.body.preheader
	addi.w	$s5, $s6, -1
	bstrpick.d	$a0, $s5, 31, 0
	addi.d	$s6, $s1, 52
	addi.d	$s7, $a0, -1
	.p2align	4, , 16
.LBB14_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	move	$s1, $s0
	move	$s0, $s2
	ld.w	$a0, $s6, -16
	ld.w	$a1, $s6, 0
	ld.w	$a3, $s2, 0
	slli.w	$a2, $a1, 3
	ori	$a1, $zero, 1
	move	$a4, $s1
	pcaddu18i	$ra, %call36(hypre_MPI_Type_hvector)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_MPI_Type_free)
	jirl	$ra, $ra, 0
	addi.d	$s7, $s7, -1
	addi.d	$s6, $s6, 4
	move	$s2, $s1
	bnez	$s7, .LBB14_4
	b	.LBB14_6
.LBB14_5:
	move	$s1, $s2
.LBB14_6:                               # %for.end
	slli.d	$a1, $s5, 2
	ldx.w	$a0, $s3, $a1
	ldx.w	$a1, $s4, $a1
	ld.w	$a3, $s1, 0
	slli.w	$a2, $a1, 3
	ori	$a1, $zero, 1
	move	$a4, $fp
	pcaddu18i	$ra, %call36(hypre_MPI_Type_hvector)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_MPI_Type_free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
.LBB14_7:                               # %if.end
	move	$a0, $zero
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
.Lfunc_end14:
	.size	hypre_CommTypeEntryBuildMPI, .Lfunc_end14-hypre_CommTypeEntryBuildMPI
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
