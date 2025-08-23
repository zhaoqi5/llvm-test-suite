	.file	"struct_vector.c"
	.text
	.globl	hypre_StructVectorCreate        # -- Begin function hypre_StructVectorCreate
	.p2align	5
	.type	hypre_StructVectorCreate,@function
hypre_StructVectorCreate:               # @hypre_StructVectorCreate
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 80
	ori	$s2, $zero, 1
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.w	$s0, $a0, 0
	addi.d	$a1, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_StructGridRef)
	jirl	$ra, $ra, 0
	st.w	$s2, $s1, 32
	st.w	$s2, $s1, 76
	vrepli.w	$vr0, 1
	vst	$vr0, $s1, 48
	lu32i.d	$s2, 1
	st.d	$s2, $s1, 64
	move	$a0, $s1
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end0:
	.size	hypre_StructVectorCreate, .Lfunc_end0-hypre_StructVectorCreate
                                        # -- End function
	.globl	hypre_StructVectorRef           # -- Begin function hypre_StructVectorRef
	.p2align	5
	.type	hypre_StructVectorRef,@function
hypre_StructVectorRef:                  # @hypre_StructVectorRef
# %bb.0:                                # %entry
	ld.w	$a1, $a0, 76
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 76
	ret
.Lfunc_end1:
	.size	hypre_StructVectorRef, .Lfunc_end1-hypre_StructVectorRef
                                        # -- End function
	.globl	hypre_StructVectorDestroy       # -- Begin function hypre_StructVectorDestroy
	.p2align	5
	.type	hypre_StructVectorDestroy,@function
hypre_StructVectorDestroy:              # @hypre_StructVectorDestroy
# %bb.0:                                # %entry
	beqz	$a0, .LBB2_2
# %bb.1:                                # %if.then
	ld.w	$a1, $a0, 76
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 76
	beqz	$a1, .LBB2_3
.LBB2_2:                                # %if.end9
	move	$a0, $zero
	ret
.LBB2_3:                                # %if.then2
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.w	$a1, $a0, 32
	beqz	$a1, .LBB2_5
# %bb.4:                                # %if.then4
	ld.d	$a1, $a0, 24
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	st.d	$zero, $fp, 24
.LBB2_5:                                # %if.end
	ld.d	$a1, $a0, 40
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	st.d	$zero, $fp, 40
	pcaddu18i	$ra, %call36(hypre_BoxArrayDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(hypre_StructGridDestroy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	move	$a0, $zero
	ret
.Lfunc_end2:
	.size	hypre_StructVectorDestroy, .Lfunc_end2-hypre_StructVectorDestroy
                                        # -- End function
	.globl	hypre_StructVectorInitializeShell # -- Begin function hypre_StructVectorInitializeShell
	.p2align	5
	.type	hypre_StructVectorInitializeShell,@function
hypre_StructVectorInitializeShell:      # @hypre_StructVectorInitializeShell
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$s0, $a0, 16
	ld.d	$s1, $a0, 8
	beqz	$s0, .LBB3_2
# %bb.1:                                # %if.end
	ld.d	$a0, $fp, 40
	bnez	$a0, .LBB3_11
	b	.LBB3_6
.LBB3_2:                                # %if.then
	ld.d	$s2, $s1, 8
	ld.w	$a0, $s2, 8
	pcaddu18i	$ra, %call36(hypre_BoxArrayCreate)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 8
	ori	$a2, $zero, 1
	move	$s0, $a0
	blt	$a1, $a2, .LBB3_5
# %bb.3:                                # %for.body.lr.ph
	ld.d	$a1, $s2, 0
	ld.d	$a2, $s0, 0
	move	$a0, $zero
	addi.d	$a1, $a1, 12
	addi.d	$a2, $a2, 12
	.p2align	4, , 16
.LBB3_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, -12
	st.w	$a3, $a2, -12
	ld.w	$a4, $a1, -8
	st.w	$a4, $a2, -8
	ld.w	$a5, $a1, -4
	st.w	$a5, $a2, -4
	ld.w	$a6, $a1, 0
	st.w	$a6, $a2, 0
	ld.w	$a7, $a1, 4
	st.w	$a7, $a2, 4
	ld.w	$t0, $a1, 8
	st.w	$t0, $a2, 8
	ld.w	$t1, $fp, 48
	sub.d	$a3, $a3, $t1
	st.w	$a3, $a2, -12
	ld.w	$a3, $fp, 52
	add.d	$a3, $a6, $a3
	st.w	$a3, $a2, 0
	ld.w	$a3, $fp, 56
	sub.d	$a3, $a4, $a3
	st.w	$a3, $a2, -8
	ld.w	$a3, $fp, 60
	add.d	$a3, $a7, $a3
	st.w	$a3, $a2, 4
	ld.w	$a3, $fp, 64
	sub.d	$a3, $a5, $a3
	st.w	$a3, $a2, -4
	ld.w	$a3, $fp, 68
	add.d	$a3, $t0, $a3
	st.w	$a3, $a2, 8
	ld.w	$a3, $s2, 8
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 24
	addi.d	$a2, $a2, 24
	blt	$a0, $a3, .LBB3_4
.LBB3_5:                                # %for.end50
	st.d	$s0, $fp, 16
	ld.d	$a0, $fp, 40
	bnez	$a0, .LBB3_11
.LBB3_6:                                # %if.then54
	ld.w	$a0, $s0, 8
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 8
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB3_9
# %bb.7:                                # %for.body61.lr.ph
	ld.d	$a3, $s0, 0
	move	$a2, $zero
	move	$a1, $zero
	addi.d	$a3, $a3, 16
	addi.w	$a4, $zero, -1
	move	$a5, $a0
	.p2align	4, , 16
.LBB3_8:                                # %for.body61
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a1, $a5, 0
	ld.w	$a6, $a3, -4
	ld.w	$a7, $a3, -16
	sub.w	$a6, $a6, $a7
	slt	$a7, $a4, $a6
	maskeqz	$a6, $a6, $a7
	ld.d	$t0, $a3, 0
	masknez	$a7, $a4, $a7
	ld.d	$t1, $a3, -12
	or	$a6, $a6, $a7
	vinsgr2vr.d	$vr0, $t0, 0
	addi.d	$a6, $a6, 1
	vinsgr2vr.d	$vr1, $t1, 0
	vsub.w	$vr0, $vr0, $vr1
	vmaxi.w	$vr0, $vr0, -1
	vaddi.wu	$vr0, $vr0, 1
	vpickve2gr.w	$a7, $vr0, 0
	mul.d	$a6, $a7, $a6
	vpickve2gr.w	$a7, $vr0, 1
	mul.d	$a6, $a6, $a7
	ld.w	$a7, $s0, 8
	add.d	$a1, $a6, $a1
	addi.d	$a2, $a2, 1
	addi.d	$a5, $a5, 4
	addi.d	$a3, $a3, 24
	blt	$a2, $a7, .LBB3_8
	b	.LBB3_10
.LBB3_9:
	move	$a1, $zero
.LBB3_10:                               # %for.end119
	st.d	$a0, $fp, 40
	st.w	$a1, $fp, 36
.LBB3_11:                               # %if.end122
	ld.w	$a0, $s1, 52
	st.w	$a0, $fp, 72
	move	$a0, $zero
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end3:
	.size	hypre_StructVectorInitializeShell, .Lfunc_end3-hypre_StructVectorInitializeShell
                                        # -- End function
	.globl	hypre_StructVectorInitializeData # -- Begin function hypre_StructVectorInitializeData
	.p2align	5
	.type	hypre_StructVectorInitializeData,@function
hypre_StructVectorInitializeData:       # @hypre_StructVectorInitializeData
# %bb.0:                                # %entry
	st.d	$a1, $a0, 24
	st.w	$zero, $a0, 32
	move	$a0, $zero
	ret
.Lfunc_end4:
	.size	hypre_StructVectorInitializeData, .Lfunc_end4-hypre_StructVectorInitializeData
                                        # -- End function
	.globl	hypre_StructVectorInitialize    # -- Begin function hypre_StructVectorInitialize
	.p2align	5
	.type	hypre_StructVectorInitialize,@function
hypre_StructVectorInitialize:           # @hypre_StructVectorInitialize
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(hypre_StructVectorInitializeShell)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 36
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 24
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 32
	move	$a0, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end5:
	.size	hypre_StructVectorInitialize, .Lfunc_end5-hypre_StructVectorInitialize
                                        # -- End function
	.globl	hypre_StructVectorSetValues     # -- Begin function hypre_StructVectorSetValues
	.p2align	5
	.type	hypre_StructVectorSetValues,@function
hypre_StructVectorSetValues:            # @hypre_StructVectorSetValues
# %bb.0:                                # %entry
	ld.d	$a3, $a0, 8
	ld.d	$a5, $a3, 8
	ld.w	$a7, $a5, 8
	ori	$a3, $zero, 1
	blt	$a7, $a3, .LBB6_12
# %bb.1:                                # %for.body.lr.ph
	move	$a3, $zero
	move	$a4, $zero
	ld.d	$a5, $a5, 0
	ld.w	$a6, $a1, 0
	slli.d	$t0, $a7, 4
	alsl.d	$a7, $a7, $t0, 3
	addi.w	$t0, $zero, -1
	b	.LBB6_4
.LBB6_2:                                # %for.inc.sink.split
                                        #   in Loop: Header=BB6_4 Depth=1
	fst.d	$fa1, $t1, 0
	.p2align	4, , 16
.LBB6_3:                                # %for.inc
                                        #   in Loop: Header=BB6_4 Depth=1
	addi.d	$a4, $a4, 24
	addi.d	$a3, $a3, 4
	beq	$a7, $a4, .LBB6_12
.LBB6_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$t1, $a5, $a4
	blt	$a6, $t1, .LBB6_3
# %bb.5:                                # %land.lhs.true
                                        #   in Loop: Header=BB6_4 Depth=1
	add.d	$t3, $a5, $a4
	ld.w	$t1, $t3, 12
	blt	$t1, $a6, .LBB6_3
# %bb.6:                                # %land.lhs.true9
                                        #   in Loop: Header=BB6_4 Depth=1
	ld.w	$t1, $a1, 4
	ld.w	$t2, $t3, 4
	blt	$t1, $t2, .LBB6_3
# %bb.7:                                # %land.lhs.true14
                                        #   in Loop: Header=BB6_4 Depth=1
	ld.w	$t2, $t3, 16
	blt	$t2, $t1, .LBB6_3
# %bb.8:                                # %land.lhs.true19
                                        #   in Loop: Header=BB6_4 Depth=1
	ld.w	$t2, $a1, 8
	ld.w	$t4, $t3, 8
	blt	$t2, $t4, .LBB6_3
# %bb.9:                                # %land.lhs.true24
                                        #   in Loop: Header=BB6_4 Depth=1
	ld.w	$t3, $t3, 20
	blt	$t3, $t2, .LBB6_3
# %bb.10:                               # %if.then
                                        #   in Loop: Header=BB6_4 Depth=1
	ld.d	$t3, $a0, 40
	ld.d	$t4, $a0, 16
	ld.d	$t5, $a0, 24
	ldx.w	$t3, $t3, $a3
	ld.d	$t4, $t4, 0
	alsl.d	$t3, $t3, $t5, 3
	add.d	$t5, $t4, $a4
	ld.w	$t6, $t5, 8
	ldx.w	$t4, $t4, $a4
	ld.w	$t7, $t5, 4
	ld.w	$t8, $t5, 16
	sub.d	$t2, $t2, $t6
	sub.d	$t6, $a6, $t4
	sub.d	$t1, $t1, $t7
	sub.w	$t7, $t8, $t7
	slt	$t8, $t0, $t7
	maskeqz	$t7, $t7, $t8
	masknez	$t8, $t0, $t8
	or	$t7, $t7, $t8
	ld.w	$t5, $t5, 12
	addi.d	$t7, $t7, 1
	mul.d	$t2, $t7, $t2
	add.d	$t1, $t1, $t2
	sub.w	$t2, $t5, $t4
	slt	$t4, $t0, $t2
	maskeqz	$t2, $t2, $t4
	masknez	$t4, $t0, $t4
	or	$t2, $t2, $t4
	addi.d	$t2, $t2, 1
	mul.d	$t1, $t1, $t2
	add.w	$t1, $t6, $t1
	alsl.d	$t1, $t1, $t3, 3
	fmov.d	$fa1, $fa0
	beqz	$a2, .LBB6_2
# %bb.11:                               # %if.then119
                                        #   in Loop: Header=BB6_4 Depth=1
	fld.d	$fa1, $t1, 0
	fadd.d	$fa1, $fa0, $fa1
	b	.LBB6_2
.LBB6_12:                               # %for.end
	move	$a0, $zero
	ret
.Lfunc_end6:
	.size	hypre_StructVectorSetValues, .Lfunc_end6-hypre_StructVectorSetValues
                                        # -- End function
	.globl	hypre_StructVectorSetBoxValues  # -- Begin function hypre_StructVectorSetBoxValues
	.p2align	5
	.type	hypre_StructVectorSetBoxValues,@function
hypre_StructVectorSetBoxValues:         # @hypre_StructVectorSetBoxValues
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
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 8
	ld.d	$fp, $a0, 8
	ld.w	$a0, $fp, 8
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	move	$s2, $a2
	move	$s3, $a1
	pcaddu18i	$ra, %call36(hypre_BoxArrayCreate)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	pcaddu18i	$ra, %call36(hypre_BoxCreate)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 8
	ori	$a2, $zero, 1
	move	$s4, $a0
	blt	$a1, $a2, .LBB7_4
# %bb.1:                                # %for.body.lr.ph
	move	$s0, $zero
	move	$s1, $zero
	.p2align	4, , 16
.LBB7_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	add.d	$a1, $a0, $s0
	move	$a0, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(hypre_IntersectBoxes)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 0
	ld.d	$a1, $s6, 0
	stx.w	$a0, $a1, $s0
	ld.w	$a0, $s4, 4
	add.d	$a1, $a1, $s0
	st.w	$a0, $a1, 4
	ld.w	$a0, $s4, 8
	st.w	$a0, $a1, 8
	ld.w	$a0, $s4, 12
	st.w	$a0, $a1, 12
	ld.w	$a0, $s4, 16
	st.w	$a0, $a1, 16
	ld.w	$a0, $s4, 20
	st.w	$a0, $a1, 20
	ld.w	$a0, $fp, 8
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 24
	blt	$s1, $a0, .LBB7_2
# %bb.3:                                # %for.end.thread
	move	$a0, $s4
	pcaddu18i	$ra, %call36(hypre_BoxDestroy)
	jirl	$ra, $ra, 0
	b	.LBB7_5
.LBB7_4:                                # %for.end
	move	$a0, $s4
	pcaddu18i	$ra, %call36(hypre_BoxDestroy)
	jirl	$ra, $ra, 0
	beqz	$s6, .LBB7_45
.LBB7_5:                                # %if.then
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	move	$a0, $s3
	pcaddu18i	$ra, %call36(hypre_BoxDuplicate)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, 8
	ori	$a2, $zero, 1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	blt	$a1, $a2, .LBB7_44
# %bb.6:                                # %for.body57.lr.ph
	ld.d	$s0, $s6, 0
	beqz	$s0, .LBB7_44
# %bb.7:                                # %for.body57.preheader
	move	$s1, $zero
	addi.d	$a0, $s2, 8
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s8, $s2, 32
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$s5, $zero, 8
	st.d	$s6, $sp, 32                    # 8-byte Folded Spill
	beqz	$s0, .LBB7_42
	.p2align	4, , 16
.LBB7_8:                                # %if.then65
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $a0, 0
	alsl.d	$a0, $s1, $s1, 1
	slli.d	$s6, $a0, 3
	add.d	$s4, $s0, $s6
	ldx.w	$a0, $s0, $s6
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.w	$a0, $s4, 4
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a1, 40
	ld.w	$a2, $s4, 8
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	ld.d	$fp, $a1, 24
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	slli.d	$a1, $s1, 2
	ldx.w	$s3, $a0, $a1
	add.d	$s1, $s7, $s6
	addi.d	$a1, $sp, 108
	move	$a0, $s4
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ldx.w	$a0, $s0, $s6
	ldx.w	$a1, $s7, $s6
	ld.w	$a2, $s4, 4
	ld.w	$a3, $s1, 4
	ld.w	$a4, $s4, 8
	ld.w	$a5, $s1, 8
	ld.w	$a6, $s1, 16
	sub.d	$a0, $a0, $a1
	sub.d	$a2, $a2, $a3
	sub.d	$a4, $a4, $a5
	sub.w	$a3, $a6, $a3
	ld.d	$t3, $sp, 24                    # 8-byte Folded Reload
	slt	$a5, $t3, $a3
	maskeqz	$a3, $a3, $a5
	masknez	$a5, $t3, $a5
	or	$a3, $a3, $a5
	ld.w	$a5, $s1, 12
	addi.d	$t0, $a3, 1
	mul.d	$a3, $t0, $a4
	add.d	$a2, $a2, $a3
	sub.w	$a1, $a5, $a1
	slt	$a3, $t3, $a1
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $t3, $a3
	or	$a1, $a1, $a3
	addi.d	$t1, $a1, 1
	mul.d	$a1, $a2, $t1
	add.w	$a4, $a0, $a1
	ld.d	$a7, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a0, $a7, 0
	ld.w	$a1, $a7, 4
	ld.w	$a2, $a7, 8
	ld.w	$a3, $a7, 16
	ld.d	$a5, $sp, 88                    # 8-byte Folded Reload
	sub.d	$a5, $a5, $a0
	ld.d	$a6, $sp, 80                    # 8-byte Folded Reload
	sub.d	$a6, $a6, $a1
	ld.d	$t2, $sp, 72                    # 8-byte Folded Reload
	sub.d	$a2, $t2, $a2
	sub.w	$a1, $a3, $a1
	slt	$a3, $t3, $a1
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $t3, $a3
	or	$a1, $a1, $a3
	ld.w	$a3, $a7, 12
	addi.d	$t2, $a1, 1
	mul.d	$a1, $t2, $a2
	add.d	$a2, $a6, $a1
	sub.w	$a0, $a3, $a0
	slt	$a1, $t3, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $t3, $a1
	or	$a0, $a0, $a1
	addi.d	$t3, $a0, 1
	ld.w	$a0, $sp, 108
	ld.w	$a1, $sp, 112
	mul.d	$a2, $a2, $t3
	add.w	$a3, $a5, $a2
	ld.w	$a2, $sp, 116
	slt	$a5, $a0, $a1
	masknez	$a6, $a0, $a5
	maskeqz	$a5, $a1, $a5
	or	$a5, $a5, $a6
	slt	$a6, $a5, $a2
	masknez	$a5, $a5, $a6
	maskeqz	$a6, $a2, $a6
	or	$a5, $a6, $a5
	ld.d	$a6, $sp, 48                    # 8-byte Folded Reload
	beqz	$a6, .LBB7_26
# %bb.9:                                # %if.then78
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ori	$a6, $zero, 1
	blt	$a5, $a6, .LBB7_42
# %bb.10:                               # %for.cond358.preheader.lr.ph
	blt	$a2, $a6, .LBB7_42
# %bb.11:                               # %for.cond358.preheader.lr.ph
	blt	$a1, $a6, .LBB7_42
# %bb.12:                               # %for.cond358.preheader.lr.ph
	blt	$a0, $a6, .LBB7_42
# %bb.13:                               # %for.cond361.preheader.us.us.us.us.us.preheader
	move	$a5, $zero
	sub.d	$a6, $t1, $a0
	sub.d	$a7, $t3, $a0
	sub.d	$t0, $t0, $a1
	mul.d	$t0, $t0, $t1
	sub.d	$t1, $t2, $a1
	mul.d	$t1, $t3, $t1
	alsl.d	$t2, $s3, $fp, 3
	addi.d	$t3, $a0, -1
	bstrpick.d	$t4, $t3, 31, 0
	alsl.d	$t3, $t4, $t2, 3
	addi.d	$t3, $t3, 8
	ld.d	$t5, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$t4, $t4, $t5, 3
	bstrpick.d	$t5, $a0, 30, 3
	slli.d	$t5, $t5, 3
	addi.d	$t6, $t2, 32
	b	.LBB7_15
	.p2align	4, , 16
.LBB7_14:                               # %for.cond361.for.end385_crit_edge.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB7_15 Depth=1
	add.w	$a4, $a4, $t0
	addi.w	$a5, $a5, 1
	add.w	$a3, $a3, $t1
	beq	$a5, $a2, .LBB7_42
.LBB7_15:                               # %for.cond361.preheader.us.us.us.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_17 Depth 2
                                        #       Child Loop BB7_24 Depth 3
                                        #       Child Loop BB7_22 Depth 3
	move	$t7, $zero
	b	.LBB7_17
	.p2align	4, , 16
.LBB7_16:                               # %for.cond364.for.end376_crit_edge.us.us.us.us.us.us
                                        #   in Loop: Header=BB7_17 Depth=2
	add.w	$a4, $a6, $fp
	addi.w	$t7, $t7, 1
	add.w	$a3, $a7, $t8
	beq	$t7, $a1, .LBB7_14
.LBB7_17:                               # %for.cond364.preheader.us.us.us.us.us.us
                                        #   Parent Loop BB7_15 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_24 Depth 3
                                        #       Child Loop BB7_22 Depth 3
	bltu	$a0, $s5, .LBB7_20
# %bb.18:                               # %vector.memcheck466
                                        #   in Loop: Header=BB7_17 Depth=2
	alsl.d	$t8, $a4, $t2, 3
	alsl.d	$fp, $a3, $t4, 3
	bgeu	$t8, $fp, .LBB7_23
# %bb.19:                               # %vector.memcheck466
                                        #   in Loop: Header=BB7_17 Depth=2
	alsl.d	$t8, $a4, $t3, 3
	alsl.d	$fp, $a3, $s2, 3
	bgeu	$fp, $t8, .LBB7_23
.LBB7_20:                               #   in Loop: Header=BB7_17 Depth=2
	move	$s0, $zero
	move	$t8, $a3
	move	$fp, $a4
.LBB7_21:                               # %for.body366.us.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB7_17 Depth=2
	alsl.d	$a3, $t8, $s2, 3
	alsl.d	$a4, $fp, $t2, 3
	sub.d	$s0, $a0, $s0
	.p2align	4, , 16
.LBB7_22:                               # %for.body366.us.us.us.us.us.us
                                        #   Parent Loop BB7_15 Depth=1
                                        #     Parent Loop BB7_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $a3, 0
	fld.d	$fa1, $a4, 0
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a4, 0
	addi.d	$fp, $fp, 1
	addi.d	$t8, $t8, 1
	addi.d	$a3, $a3, 8
	addi.w	$s0, $s0, -1
	addi.d	$a4, $a4, 8
	bnez	$s0, .LBB7_22
	b	.LBB7_16
	.p2align	4, , 16
.LBB7_23:                               # %vector.ph477
                                        #   in Loop: Header=BB7_17 Depth=2
	add.d	$t8, $t5, $a3
	add.d	$fp, $t5, $a4
	alsl.d	$a4, $a4, $t6, 3
	alsl.d	$a3, $a3, $s8, 3
	move	$s0, $t5
	.p2align	4, , 16
.LBB7_24:                               # %vector.body480
                                        #   Parent Loop BB7_15 Depth=1
                                        #     Parent Loop BB7_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr0, $a3, -32
	xvld	$xr1, $a3, 0
	xvld	$xr2, $a4, -32
	xvld	$xr3, $a4, 0
	xvfadd.d	$xr0, $xr0, $xr2
	xvfadd.d	$xr1, $xr1, $xr3
	xvst	$xr0, $a4, -32
	xvst	$xr1, $a4, 0
	addi.d	$s0, $s0, -8
	addi.d	$a4, $a4, 64
	addi.d	$a3, $a3, 64
	bnez	$s0, .LBB7_24
# %bb.25:                               # %middle.block489
                                        #   in Loop: Header=BB7_17 Depth=2
	move	$s0, $t5
	beq	$t5, $a0, .LBB7_16
	b	.LBB7_21
	.p2align	4, , 16
.LBB7_26:                               # %if.else398
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ori	$a6, $zero, 1
	ori	$s0, $zero, 64
	blt	$a5, $a6, .LBB7_42
# %bb.27:                               # %for.cond709.preheader.lr.ph
	blt	$a2, $a6, .LBB7_42
# %bb.28:                               # %for.cond709.preheader.lr.ph
	blt	$a1, $a6, .LBB7_42
# %bb.29:                               # %for.cond709.preheader.lr.ph
	blt	$a0, $a6, .LBB7_42
# %bb.30:                               # %for.cond712.preheader.us.us.us.us.us.preheader
	move	$a5, $zero
	sub.d	$a6, $t1, $a0
	sub.d	$a7, $t3, $a0
	sub.d	$t0, $t0, $a1
	mul.d	$t0, $t0, $t1
	sub.d	$t1, $t2, $a1
	mul.d	$t1, $t3, $t1
	bstrpick.d	$t2, $a0, 30, 3
	slli.d	$t2, $t2, 3
	alsl.d	$t3, $s3, $fp, 3
	addi.d	$t4, $t3, 32
	b	.LBB7_32
	.p2align	4, , 16
.LBB7_31:                               # %for.cond712.for.end735_crit_edge.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB7_32 Depth=1
	add.w	$a4, $a4, $t0
	addi.w	$a5, $a5, 1
	add.w	$a3, $a3, $t1
	beq	$a5, $a2, .LBB7_42
.LBB7_32:                               # %for.cond712.preheader.us.us.us.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_34 Depth 2
                                        #       Child Loop BB7_40 Depth 3
                                        #       Child Loop BB7_38 Depth 3
	move	$t5, $zero
	b	.LBB7_34
	.p2align	4, , 16
.LBB7_33:                               # %for.cond715.for.end726_crit_edge.us.us.us.us.us.us
                                        #   in Loop: Header=BB7_34 Depth=2
	add.w	$a4, $a6, $t6
	addi.w	$t5, $t5, 1
	add.w	$a3, $a7, $a3
	beq	$t5, $a1, .LBB7_31
.LBB7_34:                               # %for.cond715.preheader.us.us.us.us.us.us
                                        #   Parent Loop BB7_32 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_40 Depth 3
                                        #       Child Loop BB7_38 Depth 3
	bltu	$a0, $s5, .LBB7_36
# %bb.35:                               # %vector.memcheck
                                        #   in Loop: Header=BB7_34 Depth=2
	add.d	$t6, $s3, $a4
	alsl.d	$t6, $t6, $fp, 3
	alsl.d	$t7, $a3, $s2, 3
	sub.d	$t6, $t6, $t7
	bgeu	$t6, $s0, .LBB7_39
.LBB7_36:                               #   in Loop: Header=BB7_34 Depth=2
	move	$t8, $zero
	move	$t6, $a4
.LBB7_37:                               # %for.body717.us.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB7_34 Depth=2
	alsl.d	$a4, $a3, $s2, 3
	alsl.d	$t7, $t6, $t3, 3
	sub.d	$t8, $a0, $t8
	.p2align	4, , 16
.LBB7_38:                               # %for.body717.us.us.us.us.us.us
                                        #   Parent Loop BB7_32 Depth=1
                                        #     Parent Loop BB7_34 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $a4, 0
	fst.d	$fa0, $t7, 0
	addi.d	$t6, $t6, 1
	addi.d	$a3, $a3, 1
	addi.d	$a4, $a4, 8
	addi.w	$t8, $t8, -1
	addi.d	$t7, $t7, 8
	bnez	$t8, .LBB7_38
	b	.LBB7_33
	.p2align	4, , 16
.LBB7_39:                               # %vector.ph
                                        #   in Loop: Header=BB7_34 Depth=2
	slli.d	$t7, $a3, 3
	add.d	$a3, $t2, $a3
	add.d	$t6, $t2, $a4
	alsl.d	$a4, $a4, $t4, 3
	add.d	$t7, $s8, $t7
	move	$t8, $t2
	.p2align	4, , 16
.LBB7_40:                               # %vector.body
                                        #   Parent Loop BB7_32 Depth=1
                                        #     Parent Loop BB7_34 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr0, $t7, -32
	xvld	$xr1, $t7, 0
	xvst	$xr0, $a4, -32
	xvst	$xr1, $a4, 0
	addi.d	$t8, $t8, -8
	addi.d	$a4, $a4, 64
	addi.d	$t7, $t7, 64
	bnez	$t8, .LBB7_40
# %bb.41:                               # %middle.block
                                        #   in Loop: Header=BB7_34 Depth=2
	move	$t8, $t2
	beq	$t2, $a0, .LBB7_33
	b	.LBB7_37
	.p2align	4, , 16
.LBB7_42:                               # %for.inc750
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s6, 8
	addi.d	$s1, $s1, 1
	bge	$s1, $a0, .LBB7_44
# %bb.43:                               # %for.body57thread-pre-split
                                        #   in Loop: Header=BB7_42 Depth=1
	ld.d	$s0, $s6, 0
	bnez	$s0, .LBB7_8
	b	.LBB7_42
.LBB7_44:                               # %for.end752
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_BoxDestroy)
	jirl	$ra, $ra, 0
.LBB7_45:                               # %if.end754
	move	$a0, $s6
	pcaddu18i	$ra, %call36(hypre_BoxArrayDestroy)
	jirl	$ra, $ra, 0
	move	$a0, $zero
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
.Lfunc_end7:
	.size	hypre_StructVectorSetBoxValues, .Lfunc_end7-hypre_StructVectorSetBoxValues
                                        # -- End function
	.globl	hypre_StructVectorGetValues     # -- Begin function hypre_StructVectorGetValues
	.p2align	5
	.type	hypre_StructVectorGetValues,@function
hypre_StructVectorGetValues:            # @hypre_StructVectorGetValues
# %bb.0:                                # %entry
	ld.d	$a3, $a0, 8
	ld.d	$a5, $a3, 8
	ld.w	$a7, $a5, 8
	ori	$a3, $zero, 1
	blt	$a7, $a3, .LBB8_10
# %bb.1:                                # %for.body.lr.ph
	move	$a3, $zero
	move	$a4, $zero
	ld.d	$a5, $a5, 0
	ld.w	$a6, $a1, 0
	slli.d	$t0, $a7, 4
	alsl.d	$a7, $a7, $t0, 3
	addi.w	$t0, $zero, -1
                                        # implicit-def: $f0_64
	b	.LBB8_3
	.p2align	4, , 16
.LBB8_2:                                # %for.inc
                                        #   in Loop: Header=BB8_3 Depth=1
	addi.d	$a4, $a4, 24
	addi.d	$a3, $a3, 4
	beq	$a7, $a4, .LBB8_11
.LBB8_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$t1, $a5, $a4
	blt	$a6, $t1, .LBB8_2
# %bb.4:                                # %land.lhs.true
                                        #   in Loop: Header=BB8_3 Depth=1
	add.d	$t3, $a5, $a4
	ld.w	$t1, $t3, 12
	blt	$t1, $a6, .LBB8_2
# %bb.5:                                # %land.lhs.true9
                                        #   in Loop: Header=BB8_3 Depth=1
	ld.w	$t1, $a1, 4
	ld.w	$t2, $t3, 4
	blt	$t1, $t2, .LBB8_2
# %bb.6:                                # %land.lhs.true14
                                        #   in Loop: Header=BB8_3 Depth=1
	ld.w	$t2, $t3, 16
	blt	$t2, $t1, .LBB8_2
# %bb.7:                                # %land.lhs.true19
                                        #   in Loop: Header=BB8_3 Depth=1
	ld.w	$t2, $a1, 8
	ld.w	$t4, $t3, 8
	blt	$t2, $t4, .LBB8_2
# %bb.8:                                # %land.lhs.true24
                                        #   in Loop: Header=BB8_3 Depth=1
	ld.w	$t3, $t3, 20
	blt	$t3, $t2, .LBB8_2
# %bb.9:                                # %if.then
                                        #   in Loop: Header=BB8_3 Depth=1
	ld.d	$t3, $a0, 40
	ld.d	$t4, $a0, 16
	ld.d	$t5, $a0, 24
	ldx.w	$t3, $t3, $a3
	ld.d	$t4, $t4, 0
	alsl.d	$t3, $t3, $t5, 3
	add.d	$t5, $t4, $a4
	ld.w	$t6, $t5, 8
	ldx.w	$t4, $t4, $a4
	ld.w	$t7, $t5, 4
	ld.w	$t8, $t5, 16
	sub.d	$t2, $t2, $t6
	sub.d	$t6, $a6, $t4
	sub.d	$t1, $t1, $t7
	sub.w	$t7, $t8, $t7
	slt	$t8, $t0, $t7
	maskeqz	$t7, $t7, $t8
	masknez	$t8, $t0, $t8
	or	$t7, $t7, $t8
	ld.w	$t5, $t5, 12
	addi.d	$t7, $t7, 1
	mul.d	$t2, $t7, $t2
	add.d	$t1, $t1, $t2
	sub.w	$t2, $t5, $t4
	slt	$t4, $t0, $t2
	maskeqz	$t2, $t2, $t4
	masknez	$t4, $t0, $t4
	or	$t2, $t2, $t4
	addi.d	$t2, $t2, 1
	mul.d	$t1, $t1, $t2
	add.w	$t1, $t6, $t1
	slli.d	$t1, $t1, 3
	fldx.d	$fa0, $t3, $t1
	b	.LBB8_2
.LBB8_10:
                                        # implicit-def: $f0_64
.LBB8_11:                               # %for.end
	fst.d	$fa0, $a2, 0
	move	$a0, $zero
	ret
.Lfunc_end8:
	.size	hypre_StructVectorGetValues, .Lfunc_end8-hypre_StructVectorGetValues
                                        # -- End function
	.globl	hypre_StructVectorGetBoxValues  # -- Begin function hypre_StructVectorGetBoxValues
	.p2align	5
	.type	hypre_StructVectorGetBoxValues,@function
hypre_StructVectorGetBoxValues:         # @hypre_StructVectorGetBoxValues
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
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 8
	ld.d	$fp, $a0, 8
	ld.w	$a0, $fp, 8
	move	$s1, $a2
	move	$s2, $a1
	pcaddu18i	$ra, %call36(hypre_BoxArrayCreate)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcaddu18i	$ra, %call36(hypre_BoxCreate)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 8
	ori	$a2, $zero, 1
	move	$s3, $a0
	blt	$a1, $a2, .LBB9_4
# %bb.1:                                # %for.body.lr.ph
	move	$s4, $zero
	move	$s5, $zero
	.p2align	4, , 16
.LBB9_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	add.d	$a1, $a0, $s4
	move	$a0, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(hypre_IntersectBoxes)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 0
	ld.d	$a1, $s0, 0
	stx.w	$a0, $a1, $s4
	ld.w	$a0, $s3, 4
	add.d	$a1, $a1, $s4
	st.w	$a0, $a1, 4
	ld.w	$a0, $s3, 8
	st.w	$a0, $a1, 8
	ld.w	$a0, $s3, 12
	st.w	$a0, $a1, 12
	ld.w	$a0, $s3, 16
	st.w	$a0, $a1, 16
	ld.w	$a0, $s3, 20
	st.w	$a0, $a1, 20
	ld.w	$a0, $fp, 8
	addi.d	$s5, $s5, 1
	addi.d	$s4, $s4, 24
	blt	$s5, $a0, .LBB9_2
# %bb.3:                                # %for.end.thread
	move	$a0, $s3
	pcaddu18i	$ra, %call36(hypre_BoxDestroy)
	jirl	$ra, $ra, 0
	b	.LBB9_5
.LBB9_4:                                # %for.end
	move	$a0, $s3
	pcaddu18i	$ra, %call36(hypre_BoxDestroy)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB9_27
.LBB9_5:                                # %if.then
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_BoxDuplicate)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 8
	ori	$a2, $zero, 1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	blt	$a1, $a2, .LBB9_26
# %bb.6:                                # %for.body57.lr.ph
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB9_26
# %bb.7:                                # %for.body57.preheader
	move	$s5, $zero
	addi.d	$s6, $s1, 32
	addi.w	$a1, $zero, -1
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ori	$s4, $zero, 8
	ori	$s7, $zero, 64
	beqz	$a0, .LBB9_24
	.p2align	4, , 16
.LBB9_8:                                # %if.then65
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s8, $a1, 0
	alsl.d	$a1, $s5, $s5, 1
	slli.d	$a1, $a1, 3
	add.d	$s3, $a0, $a1
	ldx.w	$a0, $a0, $a1
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.w	$a0, $s3, 4
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a1, 40
	ld.w	$a2, $s3, 8
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	ld.d	$s2, $a1, 24
	slli.d	$a1, $s5, 2
	ldx.w	$fp, $a0, $a1
	addi.d	$a1, $sp, 76
	move	$a0, $s3
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ori	$a5, $zero, 1
	ld.w	$a0, $sp, 76
	ld.w	$a1, $sp, 80
	ld.w	$a2, $sp, 84
	slt	$a3, $a0, $a1
	masknez	$a4, $a0, $a3
	maskeqz	$a3, $a1, $a3
	or	$a3, $a3, $a4
	slt	$a4, $a3, $a2
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a2, $a4
	or	$a3, $a4, $a3
	blt	$a3, $a5, .LBB9_24
# %bb.9:                                # %for.cond356.preheader.lr.ph
	blt	$a2, $a5, .LBB9_24
# %bb.10:                               # %for.cond356.preheader.lr.ph
	blt	$a1, $a5, .LBB9_24
# %bb.11:                               # %for.cond356.preheader.lr.ph
	blt	$a0, $a5, .LBB9_24
# %bb.12:                               # %for.cond359.preheader.us.us.us.us.us.preheader
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	ld.w	$t0, $ra, 4
	ld.w	$a4, $ra, 16
	move	$a3, $zero
	ld.w	$t1, $ra, 0
	sub.w	$a4, $a4, $t0
	ld.d	$t7, $sp, 16                    # 8-byte Folded Reload
	slt	$a5, $t7, $a4
	maskeqz	$a4, $a4, $a5
	ld.w	$a6, $ra, 12
	masknez	$a5, $t7, $a5
	or	$a4, $a4, $a5
	addi.d	$t2, $a4, 1
	sub.w	$a4, $a6, $t1
	slt	$a5, $t7, $a4
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $t7, $a5
	slli.d	$a6, $s5, 4
	alsl.d	$a6, $s5, $a6, 3
	add.d	$a7, $s8, $a6
	ld.w	$t3, $a7, 4
	ld.w	$t4, $a7, 16
	or	$a4, $a4, $a5
	addi.d	$t5, $a4, 1
	ldx.w	$a6, $s8, $a6
	sub.w	$a4, $t4, $t3
	slt	$a5, $t7, $a4
	maskeqz	$a4, $a4, $a5
	ld.w	$t4, $a7, 12
	masknez	$a5, $t7, $a5
	or	$a4, $a4, $a5
	addi.d	$t6, $a4, 1
	sub.w	$a4, $t4, $a6
	slt	$a5, $t7, $a4
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $t7, $a5
	or	$a4, $a4, $a5
	addi.d	$t4, $a4, 1
	ld.w	$t7, $s3, 0
	sub.d	$a4, $t4, $a0
	sub.d	$a5, $t5, $a0
	sub.d	$t8, $t6, $a1
	sub.d	$t7, $t7, $a6
	ld.w	$s8, $s3, 4
	mulw.d.w	$a6, $t8, $t4
	ld.w	$t8, $s3, 8
	ld.w	$s3, $a7, 8
	sub.d	$t3, $s8, $t3
	sub.d	$a7, $t2, $a1
	mulw.d.w	$a7, $t5, $a7
	sub.d	$t8, $t8, $s3
	mul.d	$t6, $t6, $t8
	add.d	$t3, $t3, $t6
	mul.d	$t3, $t3, $t4
	ld.w	$t4, $ra, 8
	add.w	$t6, $t7, $t3
	ld.d	$t3, $sp, 64                    # 8-byte Folded Reload
	sub.d	$t1, $t3, $t1
	ld.d	$t3, $sp, 56                    # 8-byte Folded Reload
	sub.d	$t0, $t3, $t0
	ld.d	$t3, $sp, 48                    # 8-byte Folded Reload
	sub.d	$t3, $t3, $t4
	mul.d	$t2, $t2, $t3
	add.d	$t0, $t0, $t2
	mul.d	$t0, $t0, $t5
	add.w	$t0, $t1, $t0
	bstrpick.d	$t1, $a0, 30, 3
	slli.d	$t1, $t1, 3
	alsl.d	$t2, $fp, $s2, 3
	addi.d	$t3, $t2, 32
	b	.LBB9_14
	.p2align	4, , 16
.LBB9_13:                               # %for.cond359.for.end382_crit_edge.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB9_14 Depth=1
	add.w	$t6, $t6, $a6
	addi.w	$a3, $a3, 1
	add.w	$t0, $t0, $a7
	beq	$a3, $a2, .LBB9_24
.LBB9_14:                               # %for.cond359.preheader.us.us.us.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_16 Depth 2
                                        #       Child Loop BB9_22 Depth 3
                                        #       Child Loop BB9_20 Depth 3
	move	$t4, $zero
	b	.LBB9_16
	.p2align	4, , 16
.LBB9_15:                               # %for.cond362.for.end373_crit_edge.us.us.us.us.us.us
                                        #   in Loop: Header=BB9_16 Depth=2
	add.w	$t6, $a4, $t5
	addi.w	$t4, $t4, 1
	add.w	$t0, $a5, $t0
	beq	$t4, $a1, .LBB9_13
.LBB9_16:                               # %for.cond362.preheader.us.us.us.us.us.us
                                        #   Parent Loop BB9_14 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_22 Depth 3
                                        #       Child Loop BB9_20 Depth 3
	bltu	$a0, $s4, .LBB9_18
# %bb.17:                               # %vector.memcheck
                                        #   in Loop: Header=BB9_16 Depth=2
	alsl.d	$t5, $t0, $s1, 3
	add.d	$t7, $fp, $t6
	alsl.d	$t7, $t7, $s2, 3
	sub.d	$t5, $t5, $t7
	bgeu	$t5, $s7, .LBB9_21
.LBB9_18:                               #   in Loop: Header=BB9_16 Depth=2
	move	$t8, $zero
	move	$t5, $t6
.LBB9_19:                               # %for.body364.us.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB9_16 Depth=2
	alsl.d	$t6, $t0, $s1, 3
	alsl.d	$t7, $t5, $t2, 3
	sub.d	$t8, $a0, $t8
	.p2align	4, , 16
.LBB9_20:                               # %for.body364.us.us.us.us.us.us
                                        #   Parent Loop BB9_14 Depth=1
                                        #     Parent Loop BB9_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $t7, 0
	fst.d	$fa0, $t6, 0
	addi.d	$t5, $t5, 1
	addi.d	$t0, $t0, 1
	addi.d	$t6, $t6, 8
	addi.w	$t8, $t8, -1
	addi.d	$t7, $t7, 8
	bnez	$t8, .LBB9_20
	b	.LBB9_15
	.p2align	4, , 16
.LBB9_21:                               # %vector.ph
                                        #   in Loop: Header=BB9_16 Depth=2
	slli.d	$t7, $t0, 3
	add.d	$t0, $t1, $t0
	add.d	$t5, $t1, $t6
	add.d	$t7, $s6, $t7
	alsl.d	$t6, $t6, $t3, 3
	move	$t8, $t1
	.p2align	4, , 16
.LBB9_22:                               # %vector.body
                                        #   Parent Loop BB9_14 Depth=1
                                        #     Parent Loop BB9_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr0, $t6, -32
	xvld	$xr1, $t6, 0
	xvst	$xr0, $t7, -32
	xvst	$xr1, $t7, 0
	addi.d	$t8, $t8, -8
	addi.d	$t7, $t7, 64
	addi.d	$t6, $t6, 64
	bnez	$t8, .LBB9_22
# %bb.23:                               # %middle.block
                                        #   in Loop: Header=BB9_16 Depth=2
	move	$t8, $t1
	beq	$t1, $a0, .LBB9_15
	b	.LBB9_19
	.p2align	4, , 16
.LBB9_24:                               # %for.inc396
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s0, 8
	addi.d	$s5, $s5, 1
	bge	$s5, $a0, .LBB9_26
# %bb.25:                               # %for.body57thread-pre-split
                                        #   in Loop: Header=BB9_24 Depth=1
	ld.d	$a0, $s0, 0
	bnez	$a0, .LBB9_8
	b	.LBB9_24
.LBB9_26:                               # %for.end398
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_BoxDestroy)
	jirl	$ra, $ra, 0
.LBB9_27:                               # %if.end400
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_BoxArrayDestroy)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
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
.Lfunc_end9:
	.size	hypre_StructVectorGetBoxValues, .Lfunc_end9-hypre_StructVectorGetBoxValues
                                        # -- End function
	.globl	hypre_StructVectorSetNumGhost   # -- Begin function hypre_StructVectorSetNumGhost
	.p2align	5
	.type	hypre_StructVectorSetNumGhost,@function
hypre_StructVectorSetNumGhost:          # @hypre_StructVectorSetNumGhost
# %bb.0:                                # %entry
	ld.w	$a2, $a1, 0
	st.w	$a2, $a0, 48
	ld.w	$a2, $a1, 4
	st.w	$a2, $a0, 52
	ld.w	$a2, $a1, 8
	st.w	$a2, $a0, 56
	ld.w	$a2, $a1, 12
	st.w	$a2, $a0, 60
	ld.w	$a2, $a1, 16
	st.w	$a2, $a0, 64
	ld.w	$a1, $a1, 20
	st.w	$a1, $a0, 68
	move	$a0, $zero
	ret
.Lfunc_end10:
	.size	hypre_StructVectorSetNumGhost, .Lfunc_end10-hypre_StructVectorSetNumGhost
                                        # -- End function
	.globl	hypre_StructVectorAssemble      # -- Begin function hypre_StructVectorAssemble
	.p2align	5
	.type	hypre_StructVectorAssemble,@function
hypre_StructVectorAssemble:             # @hypre_StructVectorAssemble
# %bb.0:                                # %entry
	move	$a0, $zero
	ret
.Lfunc_end11:
	.size	hypre_StructVectorAssemble, .Lfunc_end11-hypre_StructVectorAssemble
                                        # -- End function
	.globl	hypre_StructVectorSetConstantValues # -- Begin function hypre_StructVectorSetConstantValues
	.p2align	5
	.type	hypre_StructVectorSetConstantValues,@function
hypre_StructVectorSetConstantValues:    # @hypre_StructVectorSetConstantValues
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
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	ld.d	$s1, $a0, 8
	ld.w	$a0, $s1, 8
	ori	$s2, $zero, 1
                                        # kill: def $f0_64 killed $f0_64 def $xr0
	blt	$a0, $s2, .LBB12_18
# %bb.1:                                # %for.body.lr.ph
	move	$s3, $zero
	xvreplve0.d	$xr1, $xr0
	addi.w	$s4, $zero, -1
	ori	$s5, $zero, 8
	xvst	$xr0, $sp, 48                   # 32-byte Folded Spill
	xvst	$xr1, $sp, 16                   # 32-byte Folded Spill
	b	.LBB12_3
	.p2align	4, , 16
.LBB12_2:                               # %for.end202
                                        #   in Loop: Header=BB12_3 Depth=1
	ld.w	$a0, $s1, 8
	addi.d	$s3, $s3, 1
	bge	$s3, $a0, .LBB12_18
.LBB12_3:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_9 Depth 2
                                        #       Child Loop BB12_11 Depth 3
                                        #         Child Loop BB12_14 Depth 4
                                        #         Child Loop BB12_17 Depth 4
	ld.d	$a0, $fp, 16
	ld.d	$a1, $s1, 0
	ld.d	$a2, $fp, 40
	ld.d	$s8, $a0, 0
	ld.d	$s6, $fp, 24
	slli.d	$a0, $s3, 2
	ldx.w	$s7, $a2, $a0
	alsl.d	$a0, $s3, $s3, 1
	slli.d	$a0, $a0, 3
	add.d	$s0, $a1, $a0
	addi.d	$a1, $sp, 92
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 16                   # 32-byte Folded Reload
	xvld	$xr0, $sp, 48                   # 32-byte Folded Reload
	ld.w	$a0, $sp, 92
	ld.w	$a1, $sp, 96
	ld.w	$a2, $sp, 100
	slt	$a3, $a0, $a1
	masknez	$a4, $a0, $a3
	maskeqz	$a3, $a1, $a3
	or	$a3, $a3, $a4
	slt	$a4, $a3, $a2
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a2, $a4
	or	$a3, $a4, $a3
	blt	$a3, $s2, .LBB12_2
# %bb.4:                                # %for.cond176.preheader.lr.ph
                                        #   in Loop: Header=BB12_3 Depth=1
	blt	$a2, $s2, .LBB12_2
# %bb.5:                                # %for.cond176.preheader.lr.ph
                                        #   in Loop: Header=BB12_3 Depth=1
	blt	$a1, $s2, .LBB12_2
# %bb.6:                                # %for.cond176.preheader.lr.ph
                                        #   in Loop: Header=BB12_3 Depth=1
	blt	$a0, $s2, .LBB12_2
# %bb.7:                                # %for.cond179.preheader.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB12_3 Depth=1
	slli.d	$a3, $s3, 4
	alsl.d	$a4, $s3, $a3, 3
	add.d	$a5, $s8, $a4
	ld.w	$a6, $a5, 4
	ld.w	$a7, $a5, 16
	move	$a3, $zero
	ldx.w	$a4, $s8, $a4
	sub.w	$a7, $a7, $a6
	slt	$t0, $s4, $a7
	maskeqz	$a7, $a7, $t0
	ld.w	$t1, $a5, 12
	masknez	$t0, $s4, $t0
	or	$a7, $a7, $t0
	addi.d	$a7, $a7, 1
	sub.w	$t0, $t1, $a4
	slt	$t1, $s4, $t0
	maskeqz	$t0, $t0, $t1
	ld.w	$t2, $s0, 0
	masknez	$t1, $s4, $t1
	or	$t0, $t0, $t1
	addi.d	$t0, $t0, 1
	sub.d	$t1, $t2, $a4
	ld.w	$t2, $s0, 4
	sub.d	$a4, $t0, $a0
	ld.w	$t3, $s0, 8
	ld.w	$t4, $a5, 8
	sub.d	$a6, $t2, $a6
	sub.d	$a5, $a7, $a1
	mulw.d.w	$a5, $t0, $a5
	sub.d	$t2, $t3, $t4
	mul.d	$a7, $a7, $t2
	add.d	$a6, $a6, $a7
	mul.d	$a6, $a6, $t0
	add.w	$t3, $t1, $a6
	bstrpick.d	$a6, $a0, 30, 3
	slli.d	$a6, $a6, 3
	alsl.d	$a7, $s7, $s6, 3
	addi.d	$t0, $a7, 32
	b	.LBB12_9
	.p2align	4, , 16
.LBB12_8:                               # %for.cond179.for.end193_crit_edge.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB12_9 Depth=2
	addi.w	$a3, $a3, 1
	add.w	$t3, $t3, $a5
	beq	$a3, $a2, .LBB12_2
.LBB12_9:                               # %for.cond179.preheader.us.us.us.us.us
                                        #   Parent Loop BB12_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_11 Depth 3
                                        #         Child Loop BB12_14 Depth 4
                                        #         Child Loop BB12_17 Depth 4
	move	$t1, $zero
	b	.LBB12_11
	.p2align	4, , 16
.LBB12_10:                              # %for.cond182.for.end_crit_edge.us.us.us.us.us.us
                                        #   in Loop: Header=BB12_11 Depth=3
	addi.w	$t1, $t1, 1
	add.w	$t3, $a4, $t2
	beq	$t1, $a1, .LBB12_8
.LBB12_11:                              # %for.cond182.preheader.us.us.us.us.us.us
                                        #   Parent Loop BB12_3 Depth=1
                                        #     Parent Loop BB12_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_14 Depth 4
                                        #         Child Loop BB12_17 Depth 4
	bgeu	$a0, $s5, .LBB12_13
# %bb.12:                               #   in Loop: Header=BB12_11 Depth=3
	move	$t4, $zero
	move	$t2, $t3
	b	.LBB12_16
	.p2align	4, , 16
.LBB12_13:                              # %vector.ph
                                        #   in Loop: Header=BB12_11 Depth=3
	add.d	$t2, $a6, $t3
	alsl.d	$t3, $t3, $t0, 3
	move	$t4, $a6
	.p2align	4, , 16
.LBB12_14:                              # %vector.body
                                        #   Parent Loop BB12_3 Depth=1
                                        #     Parent Loop BB12_9 Depth=2
                                        #       Parent Loop BB12_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvst	$xr1, $t3, -32
	xvst	$xr1, $t3, 0
	addi.d	$t4, $t4, -8
	addi.d	$t3, $t3, 64
	bnez	$t4, .LBB12_14
# %bb.15:                               # %middle.block
                                        #   in Loop: Header=BB12_11 Depth=3
	move	$t4, $a6
	beq	$a6, $a0, .LBB12_10
.LBB12_16:                              # %for.body184.us.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB12_11 Depth=3
	alsl.d	$t3, $t2, $a7, 3
	sub.d	$t4, $a0, $t4
	.p2align	4, , 16
.LBB12_17:                              # %for.body184.us.us.us.us.us.us
                                        #   Parent Loop BB12_3 Depth=1
                                        #     Parent Loop BB12_9 Depth=2
                                        #       Parent Loop BB12_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fst.d	$fa0, $t3, 0
	addi.d	$t2, $t2, 1
	addi.w	$t4, $t4, -1
	addi.d	$t3, $t3, 8
	bnez	$t4, .LBB12_17
	b	.LBB12_10
.LBB12_18:                              # %for.end205
	move	$a0, $zero
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
	ret
.Lfunc_end12:
	.size	hypre_StructVectorSetConstantValues, .Lfunc_end12-hypre_StructVectorSetConstantValues
                                        # -- End function
	.globl	hypre_StructVectorClearGhostValues # -- Begin function hypre_StructVectorClearGhostValues
	.p2align	5
	.type	hypre_StructVectorClearGhostValues,@function
hypre_StructVectorClearGhostValues:     # @hypre_StructVectorClearGhostValues
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
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 8
	ld.d	$fp, $a0, 8
	move	$a0, $zero
	pcaddu18i	$ra, %call36(hypre_BoxArrayCreate)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 8
	ori	$a2, $zero, 1
	move	$s1, $a0
	blt	$a1, $a2, .LBB13_14
# %bb.1:                                # %for.body.lr.ph
	move	$a5, $zero
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.d	$fp, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	b	.LBB13_3
	.p2align	4, , 16
.LBB13_2:                               # %for.inc215
                                        #   in Loop: Header=BB13_3 Depth=1
	ld.d	$fp, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a0, $fp, 8
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	addi.d	$a5, $a5, 1
	bge	$a5, $a0, .LBB13_14
.LBB13_3:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_6 Depth 2
                                        #       Child Loop BB13_11 Depth 3
                                        #         Child Loop BB13_12 Depth 4
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a4, 16
	ld.d	$a1, $fp, 0
	alsl.d	$a2, $a5, $a5, 1
	ld.d	$a3, $a4, 40
	ld.d	$a0, $a0, 0
	ld.d	$fp, $a4, 24
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	slli.d	$a4, $a5, 2
	ldx.w	$s0, $a3, $a4
	slli.d	$a2, $a2, 3
	add.d	$a1, $a1, $a2
	add.d	$a0, $a0, $a2
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	move	$a2, $s1
	pcaddu18i	$ra, %call36(hypre_SubtractBoxes)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 8
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB13_2
# %bb.4:                                # %for.body15.lr.ph
                                        #   in Loop: Header=BB13_3 Depth=1
	move	$s7, $zero
	alsl.d	$s8, $s0, $fp, 3
	b	.LBB13_6
	.p2align	4, , 16
.LBB13_5:                               # %for.end211
                                        #   in Loop: Header=BB13_6 Depth=2
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $s1, 8
	addi.d	$s7, $s7, 1
	bge	$s7, $a0, .LBB13_2
.LBB13_6:                               # %for.body15
                                        #   Parent Loop BB13_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_11 Depth 3
                                        #         Child Loop BB13_12 Depth 4
	ld.d	$s5, $s1, 0
	slli.d	$a0, $s7, 4
	alsl.d	$s6, $s7, $a0, 3
	add.d	$s2, $s5, $s6
	addi.d	$a1, $sp, 60
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 60
	ld.w	$s0, $sp, 64
	ld.w	$fp, $sp, 68
	slt	$a1, $a0, $s0
	masknez	$a2, $a0, $a1
	maskeqz	$a1, $s0, $a1
	or	$a1, $a1, $a2
	slt	$a2, $a1, $fp
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $fp, $a2
	or	$a1, $a2, $a1
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB13_5
# %bb.7:                                # %for.cond185.preheader.lr.ph
                                        #   in Loop: Header=BB13_6 Depth=2
	ori	$a1, $zero, 1
	blt	$fp, $a1, .LBB13_5
# %bb.8:                                # %for.cond185.preheader.lr.ph
                                        #   in Loop: Header=BB13_6 Depth=2
	ori	$a1, $zero, 1
	blt	$s0, $a1, .LBB13_5
# %bb.9:                                # %for.cond185.preheader.lr.ph
                                        #   in Loop: Header=BB13_6 Depth=2
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB13_5
# %bb.10:                               # %for.cond188.preheader.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB13_6 Depth=2
	move	$s4, $zero
	ldx.w	$a1, $s5, $s6
	ld.w	$a2, $s2, 8
	ld.d	$t0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a3, $t0, 8
	ld.w	$a4, $s2, 4
	ld.w	$a5, $t0, 4
	ld.w	$a6, $t0, 16
	sub.d	$a2, $a2, $a3
	ld.w	$a3, $t0, 0
	sub.d	$a4, $a4, $a5
	sub.w	$a5, $a6, $a5
	ld.d	$a7, $sp, 32                    # 8-byte Folded Reload
	slt	$a6, $a7, $a5
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $a7, $a6
	or	$a5, $a5, $a6
	addi.d	$a5, $a5, 1
	ld.w	$a6, $t0, 12
	mul.d	$a2, $a5, $a2
	add.d	$a2, $a4, $a2
	sub.d	$a1, $a1, $a3
	sub.w	$a3, $a6, $a3
	slt	$a4, $a7, $a3
	maskeqz	$a3, $a3, $a4
	masknez	$a4, $a7, $a4
	or	$a3, $a3, $a4
	addi.d	$s5, $a3, 1
	mul.d	$a2, $a2, $s5
	add.w	$s6, $a1, $a2
	sub.d	$a1, $a5, $s0
	mul.d	$s1, $s5, $a1
	slli.d	$s2, $a0, 3
	.p2align	4, , 16
.LBB13_11:                              # %for.cond188.preheader.us.us.us.us.us
                                        #   Parent Loop BB13_3 Depth=1
                                        #     Parent Loop BB13_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB13_12 Depth 4
	move	$s3, $s0
	.p2align	4, , 16
.LBB13_12:                              # %for.cond191.preheader.us.us.us.us.us.us
                                        #   Parent Loop BB13_3 Depth=1
                                        #     Parent Loop BB13_6 Depth=2
                                        #       Parent Loop BB13_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	alsl.d	$a0, $s6, $s8, 3
	move	$a1, $zero
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.w	$s3, $s3, -1
	add.w	$s6, $s6, $s5
	bnez	$s3, .LBB13_12
# %bb.13:                               # %for.cond188.for.end202_crit_edge.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB13_11 Depth=3
	addi.w	$s4, $s4, 1
	add.w	$s6, $s1, $s6
	bne	$s4, $fp, .LBB13_11
	b	.LBB13_5
.LBB13_14:                              # %for.end217
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_BoxArrayDestroy)
	jirl	$ra, $ra, 0
	move	$a0, $zero
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
.Lfunc_end13:
	.size	hypre_StructVectorClearGhostValues, .Lfunc_end13-hypre_StructVectorClearGhostValues
                                        # -- End function
	.globl	hypre_StructVectorClearAllValues # -- Begin function hypre_StructVectorClearAllValues
	.p2align	5
	.type	hypre_StructVectorClearAllValues,@function
hypre_StructVectorClearAllValues:       # @hypre_StructVectorClearAllValues
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	move	$s0, $a0
	pcaddu18i	$ra, %call36(hypre_BoxCreate)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$s1, $zero, 1
	ori	$a0, $zero, 1
	ld.w	$a1, $s0, 36
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 36
	st.w	$s1, $sp, 44
	st.w	$a1, $sp, 24
	st.d	$a0, $sp, 28
	addi.d	$a1, $sp, 36
	addi.d	$a2, $sp, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_BoxSetExtents)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s0, 24
	addi.d	$a1, $sp, 12
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 12
	ld.w	$a1, $sp, 16
	ld.w	$a2, $sp, 20
	slt	$a3, $a0, $a1
	masknez	$a4, $a0, $a3
	maskeqz	$a3, $a1, $a3
	or	$a3, $a3, $a4
	slt	$a4, $a3, $a2
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a2, $a4
	or	$a3, $a4, $a3
	blt	$a3, $s1, .LBB14_15
# %bb.1:                                # %for.cond173.preheader.lr.ph
	blt	$a2, $s1, .LBB14_15
# %bb.2:                                # %for.cond173.preheader.lr.ph
	ori	$a3, $zero, 1
	blt	$a1, $a3, .LBB14_15
# %bb.3:                                # %for.cond173.preheader.lr.ph
	blt	$a0, $a3, .LBB14_15
# %bb.4:                                # %for.cond176.preheader.us.us.us.us.us.preheader
	move	$a3, $zero
	ld.w	$a4, $sp, 36
	ld.w	$a5, $fp, 0
	ld.w	$a6, $sp, 40
	ld.w	$a7, $fp, 4
	ld.w	$t0, $sp, 44
	ld.w	$t1, $fp, 8
	ld.w	$t2, $fp, 16
	sub.d	$t3, $a4, $a5
	sub.d	$t4, $a6, $a7
	sub.d	$t1, $t0, $t1
	sub.w	$a7, $t2, $a7
	addi.w	$t2, $zero, -1
	slt	$t5, $t2, $a7
	maskeqz	$a7, $a7, $t5
	masknez	$t5, $t2, $t5
	or	$a7, $a7, $t5
	ld.w	$t5, $fp, 12
	addi.d	$a7, $a7, 1
	mul.d	$t1, $a7, $t1
	add.d	$t1, $t4, $t1
	sub.w	$a5, $t5, $a5
	slt	$t4, $t2, $a5
	maskeqz	$a5, $a5, $t4
	masknez	$t2, $t2, $t4
	or	$a5, $a5, $t2
	addi.d	$a5, $a5, 1
	mul.d	$t1, $t1, $a5
	add.w	$t6, $t3, $t1
	mul.d	$a6, $a5, $a6
	mul.d	$t1, $a6, $a1
	mul.d	$a7, $a7, $t0
	mul.d	$a7, $a7, $a5
	mul.d	$a5, $a0, $a4
	sub.d	$a5, $a6, $a5
	sub.d	$a6, $a7, $t1
	ori	$a7, $zero, 7
	sltu	$a7, $a7, $a0
	addi.d	$t0, $a4, -1
	sltui	$t0, $t0, 1
	and	$a7, $a7, $t0
	bstrpick.d	$t0, $a0, 30, 3
	slli.d	$t0, $t0, 3
	mul.d	$t1, $t0, $a4
	addi.d	$t2, $s0, 32
	slli.d	$t3, $a4, 6
	slli.d	$t4, $a4, 3
	xvrepli.b	$xr0, 0
	b	.LBB14_6
	.p2align	4, , 16
.LBB14_5:                               # %for.cond176.for.end189_crit_edge.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB14_6 Depth=1
	addi.w	$a3, $a3, 1
	add.w	$t6, $a6, $t6
	beq	$a3, $a2, .LBB14_15
.LBB14_6:                               # %for.cond176.preheader.us.us.us.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_8 Depth 2
                                        #       Child Loop BB14_10 Depth 3
                                        #       Child Loop BB14_14 Depth 3
	move	$t5, $zero
	b	.LBB14_8
	.p2align	4, , 16
.LBB14_7:                               # %for.cond179.for.end_crit_edge.us.us.us.us.us.us
                                        #   in Loop: Header=BB14_8 Depth=2
	addi.w	$t5, $t5, 1
	add.w	$t6, $a5, $t7
	beq	$t5, $a1, .LBB14_5
.LBB14_8:                               # %for.cond179.preheader.us.us.us.us.us.us
                                        #   Parent Loop BB14_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB14_10 Depth 3
                                        #       Child Loop BB14_14 Depth 3
	beqz	$a7, .LBB14_12
# %bb.9:                                # %vector.ph
                                        #   in Loop: Header=BB14_8 Depth=2
	add.d	$t7, $t1, $t6
	alsl.d	$t6, $t6, $t2, 3
	move	$t8, $t0
	.p2align	4, , 16
.LBB14_10:                              # %vector.body
                                        #   Parent Loop BB14_6 Depth=1
                                        #     Parent Loop BB14_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvst	$xr0, $t6, -32
	xvst	$xr0, $t6, 0
	addi.d	$t8, $t8, -8
	add.d	$t6, $t6, $t3
	bnez	$t8, .LBB14_10
# %bb.11:                               # %middle.block
                                        #   in Loop: Header=BB14_8 Depth=2
	move	$t8, $t0
	beq	$t0, $a0, .LBB14_7
	b	.LBB14_13
	.p2align	4, , 16
.LBB14_12:                              #   in Loop: Header=BB14_8 Depth=2
	move	$t8, $zero
	move	$t7, $t6
.LBB14_13:                              # %for.body181.us.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB14_8 Depth=2
	alsl.d	$t6, $t7, $s0, 3
	sub.d	$t8, $a0, $t8
	.p2align	4, , 16
.LBB14_14:                              # %for.body181.us.us.us.us.us.us
                                        #   Parent Loop BB14_6 Depth=1
                                        #     Parent Loop BB14_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.d	$zero, $t6, 0
	add.d	$t7, $t7, $a4
	addi.w	$t8, $t8, -1
	add.d	$t6, $t6, $t4
	bnez	$t8, .LBB14_14
	b	.LBB14_7
.LBB14_15:                              # %for.end198
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_BoxDestroy)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end14:
	.size	hypre_StructVectorClearAllValues, .Lfunc_end14-hypre_StructVectorClearAllValues
                                        # -- End function
	.globl	hypre_StructVectorGetMigrateCommPkg # -- Begin function hypre_StructVectorGetMigrateCommPkg
	.p2align	5
	.type	hypre_StructVectorGetMigrateCommPkg,@function
hypre_StructVectorGetMigrateCommPkg:    # @hypre_StructVectorGetMigrateCommPkg
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	ori	$s1, $zero, 1
	ori	$a2, $zero, 1
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	lu32i.d	$a2, 1
	st.d	$a2, $sp, 36
	st.w	$s1, $sp, 44
	addi.d	$a2, $sp, 72
	addi.d	$a3, $sp, 64
	addi.d	$a4, $sp, 56
	addi.d	$a5, $sp, 48
	pcaddu18i	$ra, %call36(hypre_CreateCommInfoFromGrids)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72
	ld.d	$a1, $sp, 64
	ld.d	$a4, $s0, 16
	ld.d	$a5, $fp, 16
	ld.d	$a6, $sp, 56
	ld.d	$a7, $sp, 48
	ld.d	$a2, $s0, 8
	ld.w	$a3, $s0, 0
	addi.d	$a2, $a2, 56
	st.d	$a2, $sp, 16
	st.d	$a3, $sp, 8
	addi.d	$a2, $sp, 36
	addi.d	$a3, $sp, 36
	st.d	$s1, $sp, 0
	pcaddu18i	$ra, %call36(hypre_CommPkgCreate)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end15:
	.size	hypre_StructVectorGetMigrateCommPkg, .Lfunc_end15-hypre_StructVectorGetMigrateCommPkg
                                        # -- End function
	.globl	hypre_StructVectorMigrate       # -- Begin function hypre_StructVectorMigrate
	.p2align	5
	.type	hypre_StructVectorMigrate,@function
hypre_StructVectorMigrate:              # @hypre_StructVectorMigrate
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a1, $a1, 24
	ld.d	$a2, $a2, 24
	addi.d	$a3, $sp, 0
	pcaddu18i	$ra, %call36(hypre_InitializeCommunication)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(hypre_FinalizeCommunication)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end16:
	.size	hypre_StructVectorMigrate, .Lfunc_end16-hypre_StructVectorMigrate
                                        # -- End function
	.globl	hypre_StructVectorPrint         # -- Begin function hypre_StructVectorPrint
	.p2align	5
	.type	hypre_StructVectorPrint,@function
hypre_StructVectorPrint:                # @hypre_StructVectorPrint
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -336
	st.d	$ra, $sp, 328                   # 8-byte Folded Spill
	st.d	$fp, $sp, 320                   # 8-byte Folded Spill
	st.d	$s0, $sp, 312                   # 8-byte Folded Spill
	st.d	$s1, $sp, 304                   # 8-byte Folded Spill
	st.d	$s2, $sp, 296                   # 8-byte Folded Spill
	st.d	$s3, $sp, 288                   # 8-byte Folded Spill
	st.d	$s4, $sp, 280                   # 8-byte Folded Spill
	move	$fp, $a1
	ld.w	$a3, $a1, 0
	move	$s1, $a2
	move	$s0, $a0
	addi.d	$a1, $sp, 20
	move	$a0, $a3
	pcaddu18i	$ra, %call36(hypre_MPI_Comm_rank)
	jirl	$ra, $ra, 0
	ld.w	$a3, $sp, 20
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a0, $sp, 25
	move	$a2, $s0
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	addi.d	$a0, $sp, 25
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB17_4
# %bb.1:                                # %if.end
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 13
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	ori	$a1, $zero, 7
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$s4, $fp, 8
	move	$a0, $s0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(hypre_StructGridPrint)
	jirl	$ra, $ra, 0
	ld.d	$s2, $fp, 16
	move	$s3, $s2
	bnez	$s1, .LBB17_3
# %bb.2:                                # %if.else
	ld.d	$s3, $s4, 8
.LBB17_3:                               # %if.end13
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ori	$a1, $zero, 7
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a4, $fp, 24
	ori	$a3, $zero, 1
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(hypre_PrintBoxArrayData)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 320                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 328                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 336
	ret
.LBB17_4:                               # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	addi.d	$a1, $sp, 25
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end17:
	.size	hypre_StructVectorPrint, .Lfunc_end17-hypre_StructVectorPrint
                                        # -- End function
	.globl	hypre_StructVectorRead          # -- Begin function hypre_StructVectorRead
	.p2align	5
	.type	hypre_StructVectorRead,@function
hypre_StructVectorRead:                 # @hypre_StructVectorRead
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -336
	st.d	$ra, $sp, 328                   # 8-byte Folded Spill
	st.d	$fp, $sp, 320                   # 8-byte Folded Spill
	st.d	$s0, $sp, 312                   # 8-byte Folded Spill
	st.d	$s1, $sp, 304                   # 8-byte Folded Spill
	st.d	$s2, $sp, 296                   # 8-byte Folded Spill
	st.d	$s3, $sp, 288                   # 8-byte Folded Spill
	st.d	$s4, $sp, 280                   # 8-byte Folded Spill
	move	$s0, $a2
	move	$fp, $a1
	move	$s2, $a0
	addi.d	$a1, $sp, 12
	pcaddu18i	$ra, %call36(hypre_MPI_Comm_rank)
	jirl	$ra, $ra, 0
	ld.w	$a3, $sp, 12
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a0, $sp, 25
	move	$a2, $fp
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
	addi.d	$a0, $sp, 25
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB18_2
# %bb.1:                                # %if.end
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	move	$fp, $a0
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 16
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructGridRead)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 16
	ori	$a0, $zero, 1
	ori	$a1, $zero, 80
	ori	$s4, $zero, 1
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.w	$s2, $a0, 0
	addi.d	$a1, $a0, 8
	move	$a0, $s3
	pcaddu18i	$ra, %call36(hypre_StructGridRef)
	jirl	$ra, $ra, 0
	st.w	$s4, $s1, 32
	st.w	$s4, $s1, 76
	vrepli.w	$vr0, 1
	vst	$vr0, $s1, 48
	ori	$a0, $zero, 1
	lu32i.d	$a0, 1
	st.d	$a0, $s1, 64
	ld.w	$a0, $s0, 0
	st.w	$a0, $s1, 48
	ld.w	$a0, $s0, 4
	st.w	$a0, $s1, 52
	ld.w	$a0, $s0, 8
	st.w	$a0, $s1, 56
	ld.w	$a0, $s0, 12
	st.w	$a0, $s1, 60
	ld.w	$a0, $s0, 16
	st.w	$a0, $s1, 64
	ld.w	$a0, $s0, 20
	st.w	$a0, $s1, 68
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_StructVectorInitializeShell)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 36
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 16
	ld.d	$s0, $a1, 8
	ld.d	$s2, $s1, 16
	st.d	$a0, $s1, 24
	st.w	$s4, $s1, 32
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.d	$a4, $s1, 24
	ori	$a3, $zero, 1
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(hypre_ReadBoxArrayData)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 320                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 328                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 336
	ret
.LBB18_2:                               # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	addi.d	$a1, $sp, 25
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end18:
	.size	hypre_StructVectorRead, .Lfunc_end18-hypre_StructVectorRead
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s.%05d"
	.size	.L.str, 8

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"w"
	.size	.L.str.1, 2

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Error: can't open output file %s\n"
	.size	.L.str.2, 34

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"StructVector\n"
	.size	.L.str.3, 14

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"\nGrid:\n"
	.size	.L.str.4, 8

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"\nData:\n"
	.size	.L.str.5, 8

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"r"
	.size	.L.str.6, 2

	.section	".note.GNU-stack","",@progbits
	.addrsig
