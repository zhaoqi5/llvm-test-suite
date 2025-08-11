	.file	"coarsen.c"
	.text
	.globl	hypre_StructMapFineToCoarse     # -- Begin function hypre_StructMapFineToCoarse
	.p2align	5
	.type	hypre_StructMapFineToCoarse,@function
hypre_StructMapFineToCoarse:            # @hypre_StructMapFineToCoarse
# %bb.0:                                # %entry
	ld.w	$a4, $a0, 0
	ld.w	$a5, $a1, 0
	ld.w	$a6, $a2, 0
	sub.w	$a4, $a4, $a5
	div.w	$a4, $a4, $a6
	st.w	$a4, $a3, 0
	ld.w	$a4, $a0, 4
	ld.w	$a5, $a1, 4
	ld.w	$a6, $a2, 4
	sub.w	$a4, $a4, $a5
	div.w	$a4, $a4, $a6
	st.w	$a4, $a3, 4
	ld.w	$a0, $a0, 8
	ld.w	$a1, $a1, 8
	ld.w	$a2, $a2, 8
	sub.w	$a0, $a0, $a1
	div.w	$a0, $a0, $a2
	st.w	$a0, $a3, 8
	move	$a0, $zero
	ret
.Lfunc_end0:
	.size	hypre_StructMapFineToCoarse, .Lfunc_end0-hypre_StructMapFineToCoarse
                                        # -- End function
	.globl	hypre_StructMapCoarseToFine     # -- Begin function hypre_StructMapCoarseToFine
	.p2align	5
	.type	hypre_StructMapCoarseToFine,@function
hypre_StructMapCoarseToFine:            # @hypre_StructMapCoarseToFine
# %bb.0:                                # %entry
	ld.w	$a4, $a0, 0
	ld.w	$a5, $a2, 0
	ld.w	$a6, $a1, 0
	mul.d	$a4, $a5, $a4
	add.d	$a4, $a4, $a6
	st.w	$a4, $a3, 0
	ld.w	$a4, $a0, 4
	ld.w	$a5, $a2, 4
	ld.w	$a6, $a1, 4
	mul.d	$a4, $a5, $a4
	add.d	$a4, $a4, $a6
	st.w	$a4, $a3, 4
	ld.w	$a0, $a0, 8
	ld.w	$a2, $a2, 8
	ld.w	$a1, $a1, 8
	mul.d	$a0, $a2, $a0
	add.d	$a0, $a0, $a1
	st.w	$a0, $a3, 8
	move	$a0, $zero
	ret
.Lfunc_end1:
	.size	hypre_StructMapCoarseToFine, .Lfunc_end1-hypre_StructMapCoarseToFine
                                        # -- End function
	.globl	hypre_StructCoarsen             # -- Begin function hypre_StructCoarsen
	.p2align	5
	.type	hypre_StructCoarsen,@function
hypre_StructCoarsen:                    # @hypre_StructCoarsen
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -368
	st.d	$ra, $sp, 360                   # 8-byte Folded Spill
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	st.d	$s0, $sp, 344                   # 8-byte Folded Spill
	st.d	$s1, $sp, 336                   # 8-byte Folded Spill
	st.d	$s2, $sp, 328                   # 8-byte Folded Spill
	st.d	$s3, $sp, 320                   # 8-byte Folded Spill
	st.d	$s4, $sp, 312                   # 8-byte Folded Spill
	st.d	$s5, $sp, 304                   # 8-byte Folded Spill
	st.d	$s6, $sp, 296                   # 8-byte Folded Spill
	st.d	$s7, $sp, 288                   # 8-byte Folded Spill
	st.d	$s8, $sp, 280                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$s0, $a0, 24
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.w	$s3, $fp, 4
	ld.d	$a0, $s0, 0
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	move	$s1, $a2
	move	$s6, $a1
	pcaddu18i	$ra, %call36(hypre_BoxArrayDuplicate)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	ld.w	$s8, $a0, 8
	ld.d	$s2, $s0, 8
	slli.w	$s4, $s8, 2
	move	$a0, $s4
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s4, $sp, 160                   # 8-byte Folded Spill
	blt	$s8, $a1, .LBB2_5
# %bb.1:                                # %iter.check
	ori	$a1, $zero, 4
	move	$a0, $zero
	bltu	$s8, $a1, .LBB2_13
# %bb.2:                                # %iter.check
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $s2
	ori	$a2, $zero, 64
	bltu	$a1, $a2, .LBB2_13
# %bb.3:                                # %vector.main.loop.iter.check
	ori	$a0, $zero, 16
	bgeu	$s8, $a0, .LBB2_6
# %bb.4:
	move	$a0, $zero
	b	.LBB2_10
.LBB2_5:                                # %for.end
	move	$a0, $s4
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	b	.LBB2_28
.LBB2_6:                                # %vector.ph
	bstrpick.d	$a0, $s8, 30, 4
	slli.d	$a0, $a0, 4
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 32
	addi.d	$a2, $s2, 32
	move	$a3, $a0
	.p2align	4, , 16
.LBB2_7:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a2, -32
	xvld	$xr1, $a2, 0
	xvst	$xr0, $a1, -32
	xvst	$xr1, $a1, 0
	addi.d	$a3, $a3, -16
	addi.d	$a1, $a1, 64
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB2_7
# %bb.8:                                # %middle.block
	beq	$a0, $s8, .LBB2_15
# %bb.9:                                # %vec.epilog.iter.check
	andi	$a1, $s8, 12
	beqz	$a1, .LBB2_13
.LBB2_10:                               # %vec.epilog.ph
	move	$a3, $a0
	bstrpick.d	$a0, $s8, 30, 2
	slli.d	$a0, $a0, 2
	sub.d	$a1, $a3, $a0
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 2
	alsl.d	$a3, $a3, $s2, 2
	.p2align	4, , 16
.LBB2_11:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, 0
	vst	$vr0, $a2, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, 16
	bnez	$a1, .LBB2_11
# %bb.12:                               # %vec.epilog.middle.block
	beq	$a0, $s8, .LBB2_15
.LBB2_13:                               # %for.body.preheader
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 2
	alsl.d	$a2, $a0, $s2, 2
	sub.d	$a0, $s8, $a0
	.p2align	4, , 16
.LBB2_14:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, 0
	st.w	$a3, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 4
	bnez	$a0, .LBB2_14
.LBB2_15:                               # %iter.check703
	ld.d	$s2, $s0, 16
	move	$a0, $s4
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 4
	move	$a4, $zero
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	bltu	$s8, $a1, .LBB2_26
# %bb.16:                               # %iter.check703
	sub.d	$a1, $a0, $s2
	ori	$a2, $zero, 64
	bltu	$a1, $a2, .LBB2_26
# %bb.17:                               # %vector.main.loop.iter.check705
	ori	$a1, $zero, 16
	bgeu	$s8, $a1, .LBB2_19
# %bb.18:
	move	$a4, $zero
	b	.LBB2_23
.LBB2_19:                               # %vector.ph706
	bstrpick.d	$a1, $s8, 30, 4
	slli.d	$a4, $a1, 4
	move	$a1, $zero
	move	$a2, $a4
	.p2align	4, , 16
.LBB2_20:                               # %vector.body709
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $s2, $a1
	xvldx	$xr0, $s2, $a1
	xvld	$xr1, $a3, 32
	add.d	$a3, $a0, $a1
	xvstx	$xr0, $a0, $a1
	xvst	$xr1, $a3, 32
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB2_20
# %bb.21:                               # %middle.block714
	beq	$a4, $s8, .LBB2_28
# %bb.22:                               # %vec.epilog.iter.check719
	andi	$a1, $s8, 12
	beqz	$a1, .LBB2_26
.LBB2_23:                               # %vec.epilog.ph718
	move	$a2, $a4
	bstrpick.d	$a1, $s8, 30, 2
	slli.d	$a4, $a1, 2
	sub.d	$a1, $a2, $a4
	slli.d	$a2, $a2, 2
	.p2align	4, , 16
.LBB2_24:                               # %vec.epilog.vector.body724
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr0, $s2, $a2
	vstx	$vr0, $a0, $a2
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 16
	bnez	$a1, .LBB2_24
# %bb.25:                               # %vec.epilog.middle.block728
	beq	$a4, $s8, .LBB2_28
.LBB2_26:                               # %for.body16.preheader
	slli.d	$a1, $a4, 2
	sub.d	$a3, $s8, $a4
	.p2align	4, , 16
.LBB2_27:                               # %for.body16
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a2, $s2, $a1
	stx.w	$a2, $a0, $a1
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB2_27
.LBB2_28:                               # %for.end23
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	ld.w	$s2, $s0, 24
	ld.wu	$a1, $s0, 28
	ld.w	$a0, $s0, 32
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ld.w	$a0, $fp, 32
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a0, $fp, 40
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	addi.w	$a1, $a1, 0
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(hypre_BoxDuplicate)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 56
	ld.d	$a2, $fp, 60
	move	$fp, $a0
	st.w	$a1, $sp, 260
	st.d	$a2, $sp, 264
	addi.d	$a1, $sp, 252
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_MPI_Comm_rank)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s6
	move	$a2, $s1
	pcaddu18i	$ra, %call36(hypre_ProjectBox)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	ld.w	$a1, $s6, 0
	ld.w	$a2, $s1, 0
	sub.w	$a0, $a0, $a1
	div.w	$a0, $a0, $a2
	st.w	$a0, $fp, 0
	ld.w	$a0, $fp, 4
	ld.w	$a1, $s6, 4
	ld.w	$a2, $s1, 4
	sub.w	$a0, $a0, $a1
	div.w	$a0, $a0, $a2
	st.w	$a0, $fp, 4
	ld.w	$a0, $fp, 8
	ld.w	$a1, $s6, 8
	ld.w	$a2, $s1, 8
	sub.w	$a0, $a0, $a1
	div.w	$a0, $a0, $a2
	st.w	$a0, $fp, 8
	ld.w	$a0, $fp, 12
	ld.w	$a1, $s6, 0
	ld.w	$a2, $s1, 0
	sub.w	$a0, $a0, $a1
	div.w	$a0, $a0, $a2
	st.w	$a0, $fp, 12
	ld.w	$a0, $fp, 16
	ld.w	$a1, $s6, 4
	ld.w	$a2, $s1, 4
	sub.w	$a0, $a0, $a1
	div.w	$a0, $a0, $a2
	st.w	$a0, $fp, 16
	ld.w	$a0, $fp, 20
	ld.w	$a1, $s6, 8
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	ld.w	$a2, $s1, 8
	sub.w	$a0, $a0, $a1
	div.w	$a0, $a0, $a2
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.w	$a0, $fp, 20
	pcaddu18i	$ra, %call36(hypre_BoxCreate)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	pcaddu18i	$ra, %call36(hypre_BoxCreate)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$s0, $a0
	st.d	$s2, $sp, 80                    # 8-byte Folded Spill
	blt	$s8, $a1, .LBB2_43
# %bb.29:                               # %for.body55.lr.ph
	move	$a2, $zero
	st.d	$zero, $sp, 216                 # 8-byte Folded Spill
	move	$s1, $zero
	st.d	$zero, $sp, 184                 # 8-byte Folded Spill
	st.d	$zero, $sp, 176                 # 8-byte Folded Spill
	slli.d	$a0, $s2, 4
	alsl.d	$a0, $s2, $a0, 3
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 144                   # 8-byte Folded Spill
	st.d	$s5, $sp, 168                   # 8-byte Folded Spill
	b	.LBB2_31
	.p2align	4, , 16
.LBB2_30:                               # %for.inc205
                                        #   in Loop: Header=BB2_31 Depth=1
	addi.d	$a2, $a2, 1
	ld.d	$s8, $sp, 144                   # 8-byte Folded Reload
	beq	$a2, $s8, .LBB2_44
.LBB2_31:                               # %for.body55
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_36 Depth 2
	slli.d	$a0, $a2, 2
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	ld.w	$a1, $sp, 252
	beq	$a0, $a1, .LBB2_30
# %bb.32:                               # %for.cond60.preheader
                                        #   in Loop: Header=BB2_31 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB2_30
# %bb.33:                               # %for.body63.preheader
                                        #   in Loop: Header=BB2_31 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$s3, $a2, $a0, 2
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	st.d	$a2, $sp, 208                   # 8-byte Folded Spill
	st.d	$s3, $sp, 200                   # 8-byte Folded Spill
	b	.LBB2_36
	.p2align	4, , 16
.LBB2_34:                               # %if.then174
                                        #   in Loop: Header=BB2_36 Depth=2
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 0
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	st.w	$a1, $a0, 0
	ori	$s1, $zero, 1
.LBB2_35:                               # %for.inc201
                                        #   in Loop: Header=BB2_36 Depth=2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	st.d	$s2, $sp, 216                   # 8-byte Folded Spill
	addi.d	$s8, $s8, -1
	addi.d	$fp, $fp, 24
	beqz	$s8, .LBB2_30
.LBB2_36:                               # %for.body63
                                        #   Parent Loop BB2_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s5, $s5, 0
	ldx.w	$a0, $s5, $fp
	add.d	$a1, $s5, $fp
	st.w	$a0, $s7, 0
	ld.w	$a0, $a1, 4
	st.w	$a0, $s7, 4
	ld.w	$a0, $a1, 8
	st.w	$a0, $s7, 8
	ld.w	$a0, $a1, 12
	st.w	$a0, $s7, 12
	ld.w	$a0, $a1, 16
	st.w	$a0, $s7, 16
	ld.w	$a0, $a1, 20
	slli.d	$a1, $a2, 4
	alsl.d	$s4, $a2, $a1, 3
	add.d	$s2, $s5, $s4
	st.w	$a0, $s7, 20
	move	$a0, $s7
	move	$a1, $s6
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	move	$a2, $s3
	pcaddu18i	$ra, %call36(hypre_ProjectBox)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 0
	ld.w	$a1, $s6, 0
	ld.w	$a2, $s3, 0
	sub.w	$a0, $a0, $a1
	div.w	$a0, $a0, $a2
	st.w	$a0, $s7, 0
	ld.w	$a0, $s7, 4
	ld.w	$a1, $s6, 4
	ld.w	$a2, $s3, 4
	sub.w	$a0, $a0, $a1
	div.w	$a0, $a0, $a2
	st.w	$a0, $s7, 4
	ld.w	$a0, $s7, 8
	ld.w	$a1, $s6, 8
	ld.w	$a2, $s3, 8
	sub.w	$a0, $a0, $a1
	div.w	$a0, $a0, $a2
	st.w	$a0, $s7, 8
	ld.w	$a0, $s7, 12
	ld.w	$a1, $s6, 0
	ld.w	$a2, $s3, 0
	sub.w	$a0, $a0, $a1
	div.w	$a0, $a0, $a2
	st.w	$a0, $s7, 12
	ld.w	$a0, $s7, 16
	ld.w	$a1, $s6, 4
	ld.w	$a2, $s3, 4
	sub.w	$a0, $a0, $a1
	div.w	$a0, $a0, $a2
	st.w	$a0, $s7, 16
	ld.w	$a0, $s7, 20
	ld.w	$a1, $s6, 8
	ld.w	$a2, $s3, 8
	sub.w	$a0, $a0, $a1
	div.w	$a0, $a0, $a2
	st.w	$a0, $s7, 20
	ldx.w	$a0, $s5, $s4
	st.w	$a0, $s0, 0
	ld.w	$a0, $s2, 4
	st.w	$a0, $s0, 4
	ld.w	$a0, $s2, 8
	st.w	$a0, $s0, 8
	ld.w	$a0, $s2, 12
	st.w	$a0, $s0, 12
	ld.w	$a0, $s2, 16
	st.w	$a0, $s0, 16
	ld.w	$a0, $s2, 20
	st.w	$a0, $s0, 20
	move	$a0, $s0
	move	$a1, $s6
	move	$a2, $s3
	pcaddu18i	$ra, %call36(hypre_ProjectBox)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 0
	ld.w	$a1, $s6, 0
	ld.w	$a2, $s3, 0
	sub.w	$a0, $a0, $a1
	div.w	$a0, $a0, $a2
	st.w	$a0, $s0, 0
	ld.w	$a0, $s0, 4
	ld.w	$a1, $s6, 4
	ld.w	$a2, $s3, 4
	sub.w	$a0, $a0, $a1
	div.w	$a0, $a0, $a2
	st.w	$a0, $s0, 4
	ld.w	$a0, $s0, 8
	ld.w	$a1, $s6, 8
	ld.w	$a2, $s3, 8
	sub.w	$a0, $a0, $a1
	div.w	$a0, $a0, $a2
	st.w	$a0, $s0, 8
	ld.w	$a0, $s0, 12
	ld.w	$a1, $s6, 0
	ld.w	$a2, $s3, 0
	sub.w	$a0, $a0, $a1
	div.w	$a0, $a0, $a2
	st.w	$a0, $s0, 12
	ld.w	$a0, $s0, 16
	ld.w	$a1, $s6, 4
	ld.w	$a2, $s3, 4
	sub.w	$a0, $a0, $a1
	div.w	$a0, $a0, $a2
	st.w	$a0, $s0, 16
	ld.w	$a0, $s0, 20
	ld.w	$a1, $s6, 8
	ld.w	$a2, $s3, 8
	sub.w	$a0, $a0, $a1
	div.w	$a0, $a0, $a2
	st.w	$a0, $s0, 20
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	beqz	$s2, .LBB2_40
# %bb.37:                               # %if.else
                                        #   in Loop: Header=BB2_36 Depth=2
	ld.d	$s3, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a0, $s3, 0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	alsl.d	$a1, $s2, $a1, 2
	ld.w	$a2, $a1, -4
	beq	$a0, $a2, .LBB2_39
# %bb.38:                               # %if.then161
                                        #   in Loop: Header=BB2_36 Depth=2
	st.w	$a0, $a1, 0
	addi.w	$s2, $s2, 1
.LBB2_39:                               # %if.then171
                                        #   in Loop: Header=BB2_36 Depth=2
	ld.d	$s5, $sp, 168                   # 8-byte Folded Reload
	bnez	$s1, .LBB2_41
	b	.LBB2_34
	.p2align	4, , 16
.LBB2_40:                               # %if.then145
                                        #   in Loop: Header=BB2_36 Depth=2
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a1, $s3, 0
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	st.w	$a1, $a0, 0
	ori	$s2, $zero, 1
	ld.d	$s5, $sp, 168                   # 8-byte Folded Reload
	beqz	$s1, .LBB2_34
.LBB2_41:                               # %if.else184
                                        #   in Loop: Header=BB2_36 Depth=2
	ld.w	$a0, $s3, 0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	alsl.d	$a1, $s1, $a1, 2
	ld.w	$a2, $a1, -4
	beq	$a0, $a2, .LBB2_35
# %bb.42:                               # %if.then192
                                        #   in Loop: Header=BB2_36 Depth=2
	st.w	$a0, $a1, 0
	addi.w	$s1, $s1, 1
	b	.LBB2_35
.LBB2_43:
	st.d	$zero, $sp, 176                 # 8-byte Folded Spill
	st.d	$zero, $sp, 184                 # 8-byte Folded Spill
	move	$s1, $zero
	st.d	$zero, $sp, 216                 # 8-byte Folded Spill
.LBB2_44:                               # %for.end207
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	move	$a0, $s7
	pcaddu18i	$ra, %call36(hypre_BoxDestroy)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_BoxDestroy)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ori	$a0, $zero, 1
	blt	$s8, $a0, .LBB2_47
# %bb.45:                               # %for.body213.preheader
	move	$fp, $zero
	slli.d	$a0, $s8, 4
	alsl.d	$s2, $s8, $a0, 3
	.p2align	4, , 16
.LBB2_46:                               # %for.body213
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s3, $s5, 0
	add.d	$s0, $s3, $fp
	move	$a0, $s0
	move	$a1, $s6
	move	$a2, $s1
	pcaddu18i	$ra, %call36(hypre_ProjectBox)
	jirl	$ra, $ra, 0
	ldx.w	$a0, $s3, $fp
	ld.w	$a1, $s6, 0
	ld.w	$a2, $s1, 0
	sub.w	$a0, $a0, $a1
	div.w	$a0, $a0, $a2
	stx.w	$a0, $s3, $fp
	ld.w	$a0, $s0, 4
	ld.w	$a1, $s6, 4
	ld.w	$a2, $s1, 4
	sub.w	$a0, $a0, $a1
	div.w	$a0, $a0, $a2
	st.w	$a0, $s0, 4
	ld.w	$a0, $s0, 8
	ld.w	$a1, $s6, 8
	ld.w	$a2, $s1, 8
	sub.w	$a0, $a0, $a1
	div.w	$a0, $a0, $a2
	st.w	$a0, $s0, 8
	ld.w	$a0, $s0, 12
	ld.w	$a1, $s6, 0
	ld.w	$a2, $s1, 0
	sub.w	$a0, $a0, $a1
	div.w	$a0, $a0, $a2
	st.w	$a0, $s0, 12
	ld.w	$a0, $s0, 16
	ld.w	$a1, $s6, 4
	ld.w	$a2, $s1, 4
	sub.w	$a0, $a0, $a1
	div.w	$a0, $a0, $a2
	st.w	$a0, $s0, 16
	ld.w	$a0, $s0, 20
	ld.w	$a1, $s6, 8
	ld.w	$a2, $s1, 8
	sub.w	$a0, $a0, $a1
	div.w	$a0, $a0, $a2
	addi.d	$fp, $fp, 24
	st.w	$a0, $s0, 20
	bne	$s2, $fp, .LBB2_46
.LBB2_47:                               # %for.end230
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	beqz	$s2, .LBB2_55
# %bb.48:                               # %if.then231
	slli.w	$s0, $s2, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 176                   # 8-byte Folded Reload
	blt	$s2, $a1, .LBB2_51
# %bb.49:                               # %for.body247.preheader
	move	$fp, $zero
	slli.d	$s0, $s2, 2
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_50:                               # %for.body247
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a3, $s3, $fp
	add.d	$a0, $s7, $fp
	add.d	$a6, $s1, $fp
	ori	$a1, $zero, 1
	ori	$a2, $zero, 1
	move	$a4, $zero
	move	$a5, $s4
	pcaddu18i	$ra, %call36(hypre_MPI_Irecv)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 4
	bne	$s0, $fp, .LBB2_50
.LBB2_51:                               # %if.end258
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	beqz	$s7, .LBB2_56
.LBB2_52:                               # %if.then260
	slli.w	$s0, $s7, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, 8
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	slli.d	$a0, $a1, 3
	ori	$a1, $zero, 1
	st.w	$a0, $sp, 256
	blt	$s7, $a1, .LBB2_115
# %bb.53:                               # %for.body274.preheader
	move	$fp, $zero
	slli.d	$s0, $s7, 2
	ld.d	$s7, $sp, 200                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_54:                               # %for.body274
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a3, $s6, $fp
	add.d	$a6, $s7, $fp
	addi.d	$a0, $sp, 256
	ori	$a1, $zero, 1
	ori	$a2, $zero, 1
	move	$a4, $zero
	move	$a5, $s4
	pcaddu18i	$ra, %call36(hypre_MPI_Isend)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 4
	bne	$s0, $fp, .LBB2_54
	b	.LBB2_57
.LBB2_55:
                                        # implicit-def: $r24
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	bnez	$s7, .LBB2_52
.LBB2_56:
                                        # implicit-def: $r30
                                        # implicit-def: $r4
                                        # kill: killed $r4
.LBB2_57:                               # %if.end283
	beqz	$s2, .LBB2_59
.LBB2_58:                               # %if.then285
	move	$a0, $s2
	move	$a1, $s1
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_MPI_Waitall)
	jirl	$ra, $ra, 0
.LBB2_59:                               # %if.end287
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	beqz	$a0, .LBB2_61
# %bb.60:                               # %if.then289
	move	$a1, $s7
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_MPI_Waitall)
	jirl	$ra, $ra, 0
.LBB2_61:                               # %if.end291
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s7, $sp, 200                   # 8-byte Folded Spill
	beqz	$s2, .LBB2_101
# %bb.62:                               # %if.then293
	slli.w	$a0, $s2, 3
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$s1, $a0
	blt	$s2, $a1, .LBB2_66
# %bb.63:                               # %for.body301.preheader
	move	$fp, $zero
	slli.d	$s0, $s2, 3
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_64:                               # %for.body301
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s2, 0
	slli.w	$a0, $a0, 2
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	ld.w	$a3, $s3, 0
	stx.d	$a0, $s1, $fp
	ori	$a2, $zero, 1
	move	$a4, $zero
	move	$a5, $s4
	move	$a6, $s7
	pcaddu18i	$ra, %call36(hypre_MPI_Irecv)
	jirl	$ra, $ra, 0
	addi.d	$s7, $s7, 4
	addi.d	$s3, $s3, 4
	addi.d	$fp, $fp, 8
	addi.d	$s2, $s2, 4
	bne	$s0, $fp, .LBB2_64
# %bb.65:
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
.LBB2_66:                               # %if.end322
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	beqz	$s3, .LBB2_102
.LBB2_67:                               # %if.then324
	ld.w	$a0, $sp, 256
	slli.w	$a0, $a0, 2
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$s7, $a0
	blt	$s8, $a1, .LBB2_70
# %bb.68:                               # %for.body332.lr.ph
	ld.d	$a2, $s5, 0
	move	$a0, $zero
	addi.d	$a2, $a2, 12
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	move	$a5, $s8
	.p2align	4, , 16
.LBB2_69:                               # %for.body332
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a4, 0
	slli.d	$a7, $a0, 2
	stx.w	$a6, $s7, $a7
	ld.w	$a6, $a3, 0
	alsl.d	$a7, $a0, $s7, 2
	st.w	$a6, $a7, 4
	ld.w	$a6, $a2, -12
	addi.w	$t0, $a0, 2
	slli.d	$t1, $t0, 2
	stx.w	$a6, $s7, $t1
	ld.w	$a6, $a2, 0
	st.w	$a6, $a7, 12
	ld.w	$a6, $a2, -8
	addi.d	$a7, $t0, 2
	slli.d	$t1, $a7, 2
	stx.w	$a6, $s7, $t1
	ld.w	$a6, $a2, 4
	alsl.d	$t0, $t0, $s7, 2
	st.w	$a6, $t0, 12
	ld.w	$a6, $a2, -4
	st.w	$a6, $t0, 16
	ld.w	$a6, $a2, 8
	slli.d	$a7, $a7, 32
	srai.d	$a7, $a7, 30
	add.d	$a7, $s7, $a7
	st.w	$a6, $a7, 12
	addi.w	$a0, $a0, 8
	addi.d	$a5, $a5, -1
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, 24
	bnez	$a5, .LBB2_69
.LBB2_70:                               # %for.cond368.preheader
	blt	$s3, $a1, .LBB2_73
# %bb.71:                               # %for.body371.preheader
	move	$fp, $s3
	move	$s2, $s6
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_72:                               # %for.body371
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $sp, 256
	ld.w	$a3, $s2, 0
	ori	$a2, $zero, 1
	move	$a0, $s7
	move	$a4, $zero
	move	$a5, $s4
	move	$a6, $s0
	pcaddu18i	$ra, %call36(hypre_MPI_Isend)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 4
	addi.d	$fp, $fp, -1
	addi.d	$s2, $s2, 4
	bnez	$fp, .LBB2_72
.LBB2_73:
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	beqz	$s2, .LBB2_75
.LBB2_74:                               # %if.then382
	move	$a0, $s2
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	move	$a1, $fp
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	move	$a2, $s0
	pcaddu18i	$ra, %call36(hypre_MPI_Waitall)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
.LBB2_75:                               # %if.end384
	beqz	$s3, .LBB2_77
# %bb.76:                               # %if.then386
	move	$a0, $s3
	ld.d	$fp, $sp, 200                   # 8-byte Folded Reload
	move	$a1, $fp
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	move	$a2, $s0
	pcaddu18i	$ra, %call36(hypre_MPI_Waitall)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
.LBB2_77:                               # %if.end388
	beqz	$s2, .LBB2_103
# %bb.78:                               # %if.then390
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	move	$a0, $s8
	pcaddu18i	$ra, %call36(hypre_BoxArrayCreate)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	move	$a1, $zero
	pcaddu18i	$ra, %call36(hypre_BoxArraySetSize)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(hypre_BoxCreate)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ori	$a1, $zero, 4
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	move	$s6, $zero
	move	$a0, $s2
	move	$s2, $zero
	addi.w	$s1, $zero, -1
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	move	$a0, $s1
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
                                        # implicit-def: $r4
                                        # kill: killed $r4
	move	$s3, $s8
                                        # implicit-def: $r30
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	bge	$s2, $s8, .LBB2_80
	b	.LBB2_82
	.p2align	4, , 16
.LBB2_79:                               # %if.then496
	slli.d	$a1, $s2, 2
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ldx.w	$a2, $a2, $a1
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	stx.w	$a2, $a3, $a6
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ldx.w	$a1, $a2, $a1
	ld.d	$a2, $s5, 0
	stx.w	$a1, $a0, $a6
	slli.d	$a0, $s2, 4
	alsl.d	$a0, $s2, $a0, 3
	add.d	$a0, $a2, $a0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_AppendBox)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	xor	$a0, $s2, $a0
	sltui	$a0, $a0, 1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s6, $a0
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	addi.w	$s2, $s2, 1
	move	$s6, $s0
	blt	$s2, $s8, .LBB2_82
.LBB2_80:                               # %if.end429.thread
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB2_100
# %bb.81:
	addi.w	$fp, $zero, -2
	lu32i.d	$fp, 0
	b	.LBB2_83
	.p2align	4, , 16
.LBB2_82:                               # %if.end429
	slli.d	$a0, $s2, 2
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ldx.w	$s7, $a1, $a0
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	blez	$a0, .LBB2_92
.LBB2_83:                               # %for.body433.preheader
	move	$a0, $zero
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	b	.LBB2_86
	.p2align	4, , 16
.LBB2_84:                               #   in Loop: Header=BB2_86 Depth=1
	move	$fp, $a0
	move	$s7, $a6
.LBB2_85:                               # %for.inc475
                                        #   in Loop: Header=BB2_86 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a4, $a4, 8
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	beqz	$a1, .LBB2_91
.LBB2_86:                               # %for.body433
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a2, 0
	ld.w	$a6, $a3, 0
	bge	$a5, $a6, .LBB2_85
# %bb.87:                               # %if.then440
                                        #   in Loop: Header=BB2_86 Depth=1
	ld.d	$a6, $a4, 0
	slli.d	$a7, $a5, 2
	ldx.w	$a6, $a6, $a7
	addi.w	$a7, $zero, -2
	lu32i.d	$a7, 0
	beq	$fp, $a7, .LBB2_84
# %bb.88:                               # %if.then440
                                        #   in Loop: Header=BB2_86 Depth=1
	addi.w	$a7, $s7, 0
	blt	$a6, $a7, .LBB2_84
# %bb.89:                               # %if.else460
                                        #   in Loop: Header=BB2_86 Depth=1
	bne	$a6, $a7, .LBB2_85
# %bb.90:                               # %if.then467
                                        #   in Loop: Header=BB2_86 Depth=1
	addi.d	$a5, $a5, 8
	st.w	$a5, $a2, 0
	b	.LBB2_85
	.p2align	4, , 16
.LBB2_91:                               # %for.end477
	addi.w	$a0, $fp, 0
	addi.w	$a1, $zero, -2
	bge	$a1, $a0, .LBB2_97
.LBB2_92:                               # %if.then480
	bstrpick.d	$a0, $s3, 31, 0
	bne	$s6, $a0, .LBB2_94
# %bb.93:                               # %if.then483
	add.w	$s3, $s3, $s8
	slli.w	$s0, $s3, 2
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_ReAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_ReAlloc)
	jirl	$ra, $ra, 0
	b	.LBB2_95
	.p2align	4, , 16
.LBB2_94:
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
.LBB2_95:                               # %if.end493
	move	$a1, $s1
	lu32i.d	$a1, 0
	slli.d	$a6, $s6, 2
	addi.d	$s0, $s6, 1
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	beq	$fp, $a1, .LBB2_79
# %bb.96:                               # %if.else514
	slli.d	$s4, $fp, 2
	slli.d	$a1, $fp, 3
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	move	$s3, $s8
	move	$s8, $s1
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ldx.w	$a2, $s1, $s4
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	ldx.d	$a1, $a3, $a1
	slli.d	$a3, $a2, 2
	ldx.w	$a3, $a1, $a3
	alsl.d	$a4, $a2, $a1, 2
	stx.w	$a3, $a0, $a6
	ld.w	$a3, $a4, 4
	ld.d	$a5, $sp, 208                   # 8-byte Folded Reload
	stx.w	$a3, $a5, $a6
	addi.w	$a0, $a2, 2
	slli.d	$a3, $a0, 2
	ldx.w	$a3, $a1, $a3
	st.w	$a3, $sp, 240
	ld.w	$a3, $a4, 12
	st.w	$a3, $sp, 228
	addi.d	$a3, $a0, 2
	slli.d	$a4, $a3, 2
	ldx.w	$a4, $a1, $a4
	alsl.d	$a0, $a0, $a1, 2
	st.w	$a4, $sp, 244
	ld.w	$a4, $a0, 12
	st.w	$a4, $sp, 232
	ld.w	$a0, $a0, 16
	st.w	$a0, $sp, 248
	slli.d	$a0, $a3, 32
	srai.d	$a0, $a0, 30
	add.d	$a0, $a1, $a0
	ld.w	$a0, $a0, 12
	st.w	$a0, $sp, 236
	addi.d	$fp, $a2, 8
	addi.d	$a1, $sp, 240
	addi.d	$a2, $sp, 228
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	move	$a0, $s6
	pcaddu18i	$ra, %call36(hypre_BoxSetExtents)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_AppendBox)
	jirl	$ra, $ra, 0
	stx.w	$fp, $s1, $s4
	move	$s1, $s8
	move	$s8, $s3
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	move	$s6, $s0
	bge	$s2, $s8, .LBB2_80
	b	.LBB2_82
.LBB2_97:                               # %for.cond562.preheader
	ori	$a0, $zero, 1
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	blt	$s0, $a0, .LBB2_100
# %bb.98:                               # %for.body565.preheader
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_99:                               # %for.body565
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	bnez	$s0, .LBB2_99
.LBB2_100:                              # %for.end572
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_BoxDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(hypre_BoxArrayDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	move	$s8, $s6
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	b	.LBB2_104
.LBB2_101:
                                        # implicit-def: $r24
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	bnez	$s3, .LBB2_67
.LBB2_102:
                                        # implicit-def: $r30
	bnez	$s2, .LBB2_74
	b	.LBB2_75
.LBB2_103:
	ld.d	$s6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
.LBB2_104:                              # %if.end575
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 192                   # 8-byte Folded Reload
	beqz	$a0, .LBB2_114
# %bb.105:                              # %for.cond578.preheader
	addi.w	$a0, $s8, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB2_116
# %bb.106:                              # %for.body581.lr.ph
	move	$a2, $zero
	move	$a1, $zero
	ld.d	$a3, $s5, 0
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	add.w	$a4, $s6, $a4
	ld.d	$a5, $sp, 8                     # 8-byte Folded Reload
	add.w	$a5, $a4, $a5
	addi.w	$a6, $s6, 0
	addi.w	$a7, $zero, -1
	addi.d	$t0, $a3, 20
	ld.d	$t1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 200                   # 8-byte Folded Reload
	move	$t2, $s3
	move	$s6, $a7
	move	$s2, $zero
	st.d	$zero, $sp, 136                 # 8-byte Folded Spill
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	b	.LBB2_110
	.p2align	4, , 16
.LBB2_107:                              # %if.else700
                                        #   in Loop: Header=BB2_110 Depth=1
	slt	$t3, $a2, $a4
	xori	$t3, $t3, 1
	slt	$t4, $a2, $a5
	and	$t3, $t3, $t4
	add.w	$s2, $s2, $t3
.LBB2_108:                              # %if.end712
                                        #   in Loop: Header=BB2_110 Depth=1
	addi.w	$a1, $a1, 1
.LBB2_109:                              # %for.inc715
                                        #   in Loop: Header=BB2_110 Depth=1
	addi.d	$a2, $a2, 1
	addi.d	$t2, $t2, 4
	addi.d	$t1, $t1, 4
	addi.d	$t0, $t0, 24
	beq	$a0, $a2, .LBB2_117
.LBB2_110:                              # %for.body581
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $t0, -20
	ld.w	$t3, $t0, -4
	ld.w	$t4, $t0, 0
	vreplvei.w	$vr1, $vr0, 3
	vinsgr2vr.w	$vr1, $t3, 1
	vsub.w	$vr1, $vr1, $vr0
	vmaxi.w	$vr1, $vr1, -1
	vaddi.wu	$vr1, $vr1, 1
	vpickve2gr.w	$t5, $vr1, 0
	vpickve2gr.w	$t6, $vr1, 1
	vpickve2gr.w	$t7, $vr0, 2
	sub.w	$t7, $t4, $t7
	slt	$t8, $a7, $t7
	maskeqz	$t7, $t7, $t8
	masknez	$t8, $a7, $t8
	or	$t7, $t7, $t8
	sltui	$t5, $t5, 1
	sltui	$t6, $t6, 1
	or	$t5, $t6, $t5
	addi.d	$t6, $t7, 1
	sltui	$t6, $t6, 1
	or	$t5, $t5, $t6
	bnez	$t5, .LBB2_109
# %bb.111:                              # %if.then638
                                        #   in Loop: Header=BB2_110 Depth=1
	slli.d	$t5, $a1, 4
	alsl.d	$t5, $a1, $t5, 3
	add.d	$t6, $a3, $t5
	vstx	$vr0, $a3, $t5
	st.w	$t3, $t6, 16
	st.w	$t4, $t6, 20
	ld.w	$t3, $t1, 0
	slli.d	$t4, $a1, 2
	ld.d	$t5, $sp, 208                   # 8-byte Folded Reload
	stx.w	$t3, $t5, $t4
	ld.w	$t3, $t2, 0
	stx.w	$t3, $s3, $t4
	blt	$a2, $a6, .LBB2_107
# %bb.112:                              # %if.then638
                                        #   in Loop: Header=BB2_110 Depth=1
	bge	$a2, $a4, .LBB2_107
# %bb.113:                              # %if.then694
                                        #   in Loop: Header=BB2_110 Depth=1
	addi.d	$t3, $s6, 1
	sltui	$t3, $t3, 1
	masknez	$t4, $s6, $t3
	maskeqz	$t3, $a1, $t3
	or	$s6, $t3, $t4
	ld.d	$t3, $sp, 136                   # 8-byte Folded Reload
	addi.w	$t3, $t3, 1
	st.d	$t3, $sp, 136                   # 8-byte Folded Spill
	b	.LBB2_108
.LBB2_114:
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	b	.LBB2_118
.LBB2_115:
	ld.d	$s7, $sp, 200                   # 8-byte Folded Reload
	bnez	$s2, .LBB2_58
	b	.LBB2_59
.LBB2_116:
	st.d	$zero, $sp, 136                 # 8-byte Folded Spill
	move	$s2, $zero
	move	$a1, $zero
	addi.d	$s6, $zero, -1
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
.LBB2_117:                              # %for.end717
	move	$a0, $s5
	pcaddu18i	$ra, %call36(hypre_BoxArraySetSize)
	jirl	$ra, $ra, 0
.LBB2_118:                              # %if.end719
	addi.d	$a2, $sp, 272
	move	$a0, $s4
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructGridCreate)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272
	addi.w	$a4, $s6, 0
	move	$a1, $s5
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	move	$a6, $s2
	move	$a7, $s1
	pcaddu18i	$ra, %call36(hypre_StructGridSetHood)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructGridSetHoodInfo)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	blt	$fp, $a0, .LBB2_123
# %bb.119:                              # %for.body726.preheader
	addi.d	$a1, $sp, 260
	b	.LBB2_121
	.p2align	4, , 16
.LBB2_120:                              # %for.inc739
                                        #   in Loop: Header=BB2_121 Depth=1
	addi.d	$s0, $s0, 4
	addi.d	$fp, $fp, -1
	addi.d	$a1, $a1, 4
	beqz	$fp, .LBB2_123
.LBB2_121:                              # %for.body726
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 0
	blt	$a2, $a0, .LBB2_120
# %bb.122:                              # %if.then731
                                        #   in Loop: Header=BB2_121 Depth=1
	ld.w	$a3, $s0, 0
	div.w	$a2, $a2, $a3
	st.w	$a2, $a1, 0
	b	.LBB2_120
.LBB2_123:                              # %for.end741
	ld.d	$a0, $sp, 272
	addi.d	$a1, $sp, 260
	pcaddu18i	$ra, %call36(hypre_StructGridSetPeriodic)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272
	pcaddu18i	$ra, %call36(hypre_StructGridAssemble)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $a1, 0
	move	$a0, $zero
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
	ret
.Lfunc_end2:
	.size	hypre_StructCoarsen, .Lfunc_end2-hypre_StructCoarsen
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
