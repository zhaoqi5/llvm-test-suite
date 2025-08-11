	.file	"struct_grid.c"
	.text
	.globl	hypre_StructGridCreate          # -- Begin function hypre_StructGridCreate
	.p2align	5
	.type	hypre_StructGridCreate,@function
hypre_StructGridCreate:                 # @hypre_StructGridCreate
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	ori	$a0, $zero, 72
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.w	$s1, $a0, 0
	st.w	$s0, $a0, 4
	move	$a0, $zero
	pcaddu18i	$ra, %call36(hypre_BoxArrayCreate)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 8
	vrepli.b	$vr0, 0
	vst	$vr0, $s2, 16
	ori	$a0, $zero, 2
	st.w	$a0, $s2, 32
	st.d	$zero, $s2, 40
	vst	$vr0, $s2, 48
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	st.d	$a0, $s2, 64
	st.d	$s2, $fp, 0
	move	$a0, $zero
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end0:
	.size	hypre_StructGridCreate, .Lfunc_end0-hypre_StructGridCreate
                                        # -- End function
	.globl	hypre_StructGridRef             # -- Begin function hypre_StructGridRef
	.p2align	5
	.type	hypre_StructGridRef,@function
hypre_StructGridRef:                    # @hypre_StructGridRef
# %bb.0:                                # %entry
	ld.w	$a2, $a0, 68
	addi.d	$a2, $a2, 1
	st.w	$a2, $a0, 68
	st.d	$a0, $a1, 0
	move	$a0, $zero
	ret
.Lfunc_end1:
	.size	hypre_StructGridRef, .Lfunc_end1-hypre_StructGridRef
                                        # -- End function
	.globl	hypre_StructGridDestroy         # -- Begin function hypre_StructGridDestroy
	.p2align	5
	.type	hypre_StructGridDestroy,@function
hypre_StructGridDestroy:                # @hypre_StructGridDestroy
# %bb.0:                                # %entry
	beqz	$a0, .LBB2_2
# %bb.1:                                # %if.then
	ld.w	$a1, $a0, 68
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 68
	beqz	$a1, .LBB2_3
.LBB2_2:                                # %if.end6
	move	$a0, $zero
	ret
.LBB2_3:                                # %if.then2
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.d	$a1, $a0, 40
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(hypre_BoxDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	pcaddu18i	$ra, %call36(hypre_BoxNeighborsDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	st.d	$zero, $fp, 16
	pcaddu18i	$ra, %call36(hypre_BoxArrayDestroy)
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
	.size	hypre_StructGridDestroy, .Lfunc_end2-hypre_StructGridDestroy
                                        # -- End function
	.globl	hypre_StructGridSetHoodInfo     # -- Begin function hypre_StructGridSetHoodInfo
	.p2align	5
	.type	hypre_StructGridSetHoodInfo,@function
hypre_StructGridSetHoodInfo:            # @hypre_StructGridSetHoodInfo
# %bb.0:                                # %entry
	st.w	$a1, $a0, 32
	move	$a0, $zero
	ret
.Lfunc_end3:
	.size	hypre_StructGridSetHoodInfo, .Lfunc_end3-hypre_StructGridSetHoodInfo
                                        # -- End function
	.globl	hypre_StructGridSetPeriodic     # -- Begin function hypre_StructGridSetPeriodic
	.p2align	5
	.type	hypre_StructGridSetPeriodic,@function
hypre_StructGridSetPeriodic:            # @hypre_StructGridSetPeriodic
# %bb.0:                                # %entry
	ld.w	$a2, $a1, 0
	st.w	$a2, $a0, 56
	ld.w	$a2, $a1, 4
	st.w	$a2, $a0, 60
	ld.w	$a1, $a1, 8
	st.w	$a1, $a0, 64
	move	$a0, $zero
	ret
.Lfunc_end4:
	.size	hypre_StructGridSetPeriodic, .Lfunc_end4-hypre_StructGridSetPeriodic
                                        # -- End function
	.globl	hypre_StructGridSetExtents      # -- Begin function hypre_StructGridSetExtents
	.p2align	5
	.type	hypre_StructGridSetExtents,@function
hypre_StructGridSetExtents:             # @hypre_StructGridSetExtents
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	pcaddu18i	$ra, %call36(hypre_BoxCreate)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(hypre_BoxSetExtents)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_AppendBox)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_BoxDestroy)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end5:
	.size	hypre_StructGridSetExtents, .Lfunc_end5-hypre_StructGridSetExtents
                                        # -- End function
	.globl	hypre_StructGridSetBoxes        # -- Begin function hypre_StructGridSetBoxes
	.p2align	5
	.type	hypre_StructGridSetBoxes,@function
hypre_StructGridSetBoxes:               # @hypre_StructGridSetBoxes
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	move	$s0, $a1
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	st.d	$s0, $fp, 8
	move	$a0, $zero
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end6:
	.size	hypre_StructGridSetBoxes, .Lfunc_end6-hypre_StructGridSetBoxes
                                        # -- End function
	.globl	hypre_StructGridSetHood         # -- Begin function hypre_StructGridSetHood
	.p2align	5
	.type	hypre_StructGridSetHood,@function
hypre_StructGridSetHood:                # @hypre_StructGridSetHood
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
	move	$fp, $a7
	move	$s1, $a6
	move	$s2, $a5
	move	$s3, $a4
	move	$s4, $a3
	move	$s5, $a2
	move	$s6, $a1
	move	$s0, $a0
	move	$a0, $a5
	pcaddu18i	$ra, %call36(hypre_BoxArrayCreate)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	slli.w	$a0, $s2, 2
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$s8, $a0
	blt	$s2, $a1, .LBB7_3
# %bb.1:                                # %for.body.lr.ph
	ld.d	$a1, $s7, 0
	ld.d	$a2, $s6, 0
	alsl.d	$a0, $s3, $s4, 2
	addi.d	$a1, $a1, 12
	slli.d	$a3, $s3, 4
	alsl.d	$a3, $s3, $a3, 3
	add.d	$a2, $a3, $a2
	addi.d	$a2, $a2, 12
	move	$a3, $s8
	move	$a4, $s2
	.p2align	4, , 16
.LBB7_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a2, -12
	st.w	$a5, $a1, -12
	ld.w	$a5, $a2, -8
	st.w	$a5, $a1, -8
	ld.w	$a5, $a2, -4
	st.w	$a5, $a1, -4
	ld.w	$a5, $a2, 0
	st.w	$a5, $a1, 0
	ld.w	$a5, $a2, 4
	st.w	$a5, $a1, 4
	ld.w	$a5, $a2, 8
	st.w	$a5, $a1, 8
	ld.w	$a5, $a0, 0
	st.w	$a5, $a3, 0
	addi.d	$a4, $a4, -1
	addi.d	$a0, $a0, 4
	addi.d	$a1, $a1, 24
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, 24
	bnez	$a4, .LBB7_2
.LBB7_3:                                # %for.end
	ld.d	$a0, $s0, 8
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 16
	st.d	$zero, $s0, 8
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	st.d	$s7, $s0, 8
	st.d	$s8, $s0, 16
	addi.d	$a6, $sp, 16
	move	$a0, $s6
	move	$a1, $s5
	move	$a2, $s4
	move	$a3, $s3
	move	$a4, $s2
	move	$a5, $s1
	pcaddu18i	$ra, %call36(hypre_BoxNeighborsCreate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 16
	ld.d	$a0, $s0, 40
	st.d	$a1, $s0, 24
	pcaddu18i	$ra, %call36(hypre_BoxDestroy)
	jirl	$ra, $ra, 0
	st.d	$fp, $s0, 40
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
.Lfunc_end7:
	.size	hypre_StructGridSetHood, .Lfunc_end7-hypre_StructGridSetHood
                                        # -- End function
	.globl	hypre_StructGridAssemble        # -- Begin function hypre_StructGridAssemble
	.p2align	5
	.type	hypre_StructGridAssemble,@function
hypre_StructGridAssemble:               # @hypre_StructGridAssemble
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
	move	$fp, $a0
	ld.d	$a0, $a0, 24
	ld.d	$s0, $fp, 8
	bnez	$a0, .LBB8_49
# %bb.1:                                # %if.then
	ld.w	$a0, $fp, 0
	ld.w	$s2, $fp, 4
	addi.d	$a2, $sp, 40
	addi.d	$a3, $sp, 32
	addi.d	$a4, $sp, 28
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_GatherAllBoxes)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 8
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(hypre_BoxCreate)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	blt	$s2, $a1, .LBB8_19
# %bb.2:                                # %for.body.lr.ph
	ld.d	$a2, $sp, 40
	ld.d	$a3, $a2, 0
	move	$a4, $zero
	addi.d	$a5, $a3, 12
	addi.d	$a6, $a0, 12
	addi.d	$a7, $a3, 192
	addi.d	$t0, $a3, 84
	ori	$t1, $zero, 4
	ori	$t2, $zero, 16
	move	$t3, $a3
	b	.LBB8_4
	.p2align	4, , 16
.LBB8_3:                                # %for.end
                                        #   in Loop: Header=BB8_4 Depth=1
	stx.w	$t8, $a0, $t4
	stx.w	$t7, $a6, $t4
	addi.d	$a4, $a4, 1
	addi.d	$a7, $a7, 4
	addi.d	$t0, $t0, 4
	addi.d	$t3, $t3, 4
	beq	$a4, $s2, .LBB8_18
.LBB8_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_10 Depth 2
                                        #     Child Loop BB8_14 Depth 2
                                        #     Child Loop BB8_17 Depth 2
	slli.d	$t4, $a4, 2
	ldx.w	$t8, $a3, $t4
	ld.w	$t5, $a2, 8
	ldx.w	$t7, $a5, $t4
	blt	$t5, $a1, .LBB8_3
# %bb.5:                                # %iter.check
                                        #   in Loop: Header=BB8_4 Depth=1
	bgeu	$t5, $t1, .LBB8_7
# %bb.6:                                #   in Loop: Header=BB8_4 Depth=1
	move	$t6, $zero
	b	.LBB8_16
	.p2align	4, , 16
.LBB8_7:                                # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB8_4 Depth=1
	bgeu	$t5, $t2, .LBB8_9
# %bb.8:                                #   in Loop: Header=BB8_4 Depth=1
	move	$t6, $zero
	b	.LBB8_13
.LBB8_9:                                # %vector.ph
                                        #   in Loop: Header=BB8_4 Depth=1
	bstrpick.d	$t6, $t5, 30, 4
	slli.d	$t6, $t6, 4
	xvreplgr2vr.w	$xr2, $t7
	xvreplgr2vr.w	$xr0, $t8
	move	$t7, $a7
	move	$t8, $t6
	xvori.b	$xr3, $xr2, 0
	xvori.b	$xr1, $xr0, 0
	.p2align	4, , 16
.LBB8_10:                               # %vector.body
                                        #   Parent Loop BB8_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$s3, $t7, -192
	ld.w	$s4, $t7, -168
	ld.w	$s5, $t7, -144
	ld.w	$s6, $t7, -120
	ld.w	$s7, $t7, -96
	ld.w	$s8, $t7, -72
	ld.w	$ra, $t7, -48
	ld.w	$s1, $t7, -24
	xvinsgr2vr.w	$xr4, $s3, 0
	xvinsgr2vr.w	$xr4, $s4, 1
	xvinsgr2vr.w	$xr4, $s5, 2
	xvinsgr2vr.w	$xr4, $s6, 3
	xvinsgr2vr.w	$xr4, $s7, 4
	xvinsgr2vr.w	$xr4, $s8, 5
	xvinsgr2vr.w	$xr4, $ra, 6
	xvinsgr2vr.w	$xr4, $s1, 7
	ld.w	$s1, $t7, 0
	ld.w	$s3, $t7, 24
	ld.w	$s4, $t7, 48
	ld.w	$s5, $t7, 72
	ld.w	$s6, $t7, 96
	ld.w	$s7, $t7, 120
	ld.w	$s8, $t7, 144
	ld.w	$ra, $t7, 168
	xvinsgr2vr.w	$xr5, $s1, 0
	xvinsgr2vr.w	$xr5, $s3, 1
	xvinsgr2vr.w	$xr5, $s4, 2
	xvinsgr2vr.w	$xr5, $s5, 3
	xvinsgr2vr.w	$xr5, $s6, 4
	xvinsgr2vr.w	$xr5, $s7, 5
	xvinsgr2vr.w	$xr5, $s8, 6
	xvinsgr2vr.w	$xr5, $ra, 7
	xvmin.w	$xr0, $xr0, $xr4
	xvmin.w	$xr1, $xr1, $xr5
	ld.w	$s1, $t7, -180
	ld.w	$s3, $t7, -156
	ld.w	$s4, $t7, -132
	ld.w	$s5, $t7, -108
	ld.w	$s6, $t7, -84
	ld.w	$s7, $t7, -60
	ld.w	$s8, $t7, -36
	ld.w	$ra, $t7, -12
	xvinsgr2vr.w	$xr4, $s1, 0
	xvinsgr2vr.w	$xr4, $s3, 1
	xvinsgr2vr.w	$xr4, $s4, 2
	xvinsgr2vr.w	$xr4, $s5, 3
	xvinsgr2vr.w	$xr4, $s6, 4
	xvinsgr2vr.w	$xr4, $s7, 5
	xvinsgr2vr.w	$xr4, $s8, 6
	xvinsgr2vr.w	$xr4, $ra, 7
	ld.w	$s1, $t7, 12
	ld.w	$s3, $t7, 36
	ld.w	$s4, $t7, 60
	ld.w	$s5, $t7, 84
	ld.w	$s6, $t7, 108
	ld.w	$s7, $t7, 132
	ld.w	$s8, $t7, 156
	ld.w	$ra, $t7, 180
	xvinsgr2vr.w	$xr5, $s1, 0
	xvinsgr2vr.w	$xr5, $s3, 1
	xvinsgr2vr.w	$xr5, $s4, 2
	xvinsgr2vr.w	$xr5, $s5, 3
	xvinsgr2vr.w	$xr5, $s6, 4
	xvinsgr2vr.w	$xr5, $s7, 5
	xvinsgr2vr.w	$xr5, $s8, 6
	xvinsgr2vr.w	$xr5, $ra, 7
	xvmax.w	$xr2, $xr2, $xr4
	xvmax.w	$xr3, $xr3, $xr5
	addi.d	$t8, $t8, -16
	addi.d	$t7, $t7, 384
	bnez	$t8, .LBB8_10
# %bb.11:                               # %middle.block
                                        #   in Loop: Header=BB8_4 Depth=1
	xvmax.w	$xr2, $xr2, $xr3
	xvpermi.d	$xr3, $xr2, 78
	xvshuf4i.w	$xr3, $xr3, 228
	xvmax.w	$xr2, $xr2, $xr3
	xvpermi.d	$xr3, $xr2, 68
	xvshuf4i.w	$xr3, $xr3, 14
	xvmax.w	$xr2, $xr2, $xr3
	xvpermi.d	$xr3, $xr2, 68
	xvrepl128vei.w	$xr3, $xr3, 1
	xvmax.w	$xr2, $xr2, $xr3
	xvpickve2gr.w	$t7, $xr2, 0
	xvmin.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 78
	xvshuf4i.w	$xr1, $xr1, 228
	xvmin.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvshuf4i.w	$xr1, $xr1, 14
	xvmin.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvmin.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$t8, $xr0, 0
	beq	$t6, $t5, .LBB8_3
# %bb.12:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB8_4 Depth=1
	andi	$s1, $t5, 12
	beqz	$s1, .LBB8_16
.LBB8_13:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB8_4 Depth=1
	move	$s1, $t6
	bstrpick.d	$t6, $t5, 30, 2
	slli.d	$t6, $t6, 2
	vreplgr2vr.w	$vr1, $t7
	vreplgr2vr.w	$vr0, $t8
	sub.d	$t7, $s1, $t6
	slli.d	$t8, $s1, 4
	alsl.d	$t8, $s1, $t8, 3
	move	$s3, $t0
	.p2align	4, , 16
.LBB8_14:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB8_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$s1, $s3, $t8
	ld.w	$s4, $s1, -84
	ld.w	$s5, $s1, -60
	ld.w	$s6, $s1, -36
	ld.w	$s7, $s1, -12
	vinsgr2vr.w	$vr2, $s4, 0
	vinsgr2vr.w	$vr2, $s5, 1
	vinsgr2vr.w	$vr2, $s6, 2
	vinsgr2vr.w	$vr2, $s7, 3
	vmin.w	$vr0, $vr0, $vr2
	ld.w	$s4, $s1, -72
	ld.w	$s5, $s1, -48
	ld.w	$s1, $s1, -24
	ldx.w	$s6, $s3, $t8
	vinsgr2vr.w	$vr2, $s4, 0
	vinsgr2vr.w	$vr2, $s5, 1
	vinsgr2vr.w	$vr2, $s1, 2
	vinsgr2vr.w	$vr2, $s6, 3
	vmax.w	$vr1, $vr1, $vr2
	addi.d	$t7, $t7, 4
	addi.d	$s3, $s3, 96
	bnez	$t7, .LBB8_14
# %bb.15:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB8_4 Depth=1
	vshuf4i.w	$vr2, $vr1, 14
	vmax.w	$vr1, $vr1, $vr2
	vreplvei.w	$vr2, $vr1, 1
	vmax.w	$vr1, $vr1, $vr2
	vpickve2gr.w	$t7, $vr1, 0
	vshuf4i.w	$vr1, $vr0, 14
	vmin.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmin.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$t8, $vr0, 0
	beq	$t6, $t5, .LBB8_3
.LBB8_16:                               # %for.body17.preheader
                                        #   in Loop: Header=BB8_4 Depth=1
	slli.d	$s1, $t6, 4
	alsl.d	$s3, $t6, $s1, 3
	sub.d	$t5, $t5, $t6
	.p2align	4, , 16
.LBB8_17:                               # %for.body17
                                        #   Parent Loop BB8_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$t6, $t3, $s3
	add.d	$s1, $t3, $s3
	slt	$s4, $t8, $t6
	ld.w	$s1, $s1, 12
	masknez	$t6, $t6, $s4
	maskeqz	$t8, $t8, $s4
	or	$t8, $t8, $t6
	slt	$t6, $s1, $t7
	masknez	$s1, $s1, $t6
	maskeqz	$t6, $t7, $t6
	or	$t7, $t6, $s1
	addi.d	$t5, $t5, -1
	addi.d	$s3, $s3, 24
	bnez	$t5, .LBB8_17
	b	.LBB8_3
.LBB8_18:                               # %for.cond48.preheader
	ori	$a1, $zero, 2
	blt	$a1, $s2, .LBB8_22
.LBB8_19:                               # %for.body50.lr.ph
	addi.d	$a1, $s2, 1
	bstrpick.d	$a2, $a1, 31, 0
	ori	$a1, $zero, 4
	sub.d	$a1, $a1, $a2
	ori	$a3, $zero, 10
	bgeu	$a1, $a3, .LBB8_26
.LBB8_20:                               # %for.body50.preheader
	alsl.d	$a1, $s2, $a0, 2
	addi.d	$a2, $s2, 1
	ori	$a3, $zero, 3
	.p2align	4, , 16
.LBB8_21:                               # %for.body50
                                        # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a1, 0
	st.w	$zero, $a1, 12
	bstrpick.d	$a4, $a2, 31, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 1
	bne	$a4, $a3, .LBB8_21
.LBB8_22:                               # %for.end59
	ld.d	$a2, $sp, 40
	ld.w	$a1, $a2, 8
	ori	$s4, $zero, 1
	st.d	$a0, $fp, 40
	blt	$a1, $s4, .LBB8_25
# %bb.23:                               # %iter.check167
	ld.d	$a0, $a2, 0
	ori	$a2, $zero, 8
	bgeu	$a1, $a2, .LBB8_31
# %bb.24:
	move	$a2, $zero
	move	$a3, $zero
	b	.LBB8_40
.LBB8_25:
	move	$a3, $zero
	b	.LBB8_42
.LBB8_26:                               # %vector.scevcheck
	ori	$a3, $zero, 3
	sub.d	$a2, $a3, $a2
	addi.w	$a3, $a2, 0
	addi.d	$a4, $zero, -2
	sub.w	$a4, $a4, $s2
	bltu	$a4, $a3, .LBB8_20
# %bb.27:                               # %vector.scevcheck
	srli.d	$a2, $a2, 32
	bnez	$a2, .LBB8_20
# %bb.28:                               # %vector.ph155
	move	$a2, $a1
	bstrins.d	$a2, $zero, 0, 0
	add.d	$a3, $a2, $s2
	alsl.d	$a4, $s2, $a0, 2
	move	$a5, $a2
	.p2align	4, , 16
.LBB8_29:                               # %vector.body158
                                        # =>This Inner Loop Header: Depth=1
	st.d	$zero, $a4, 0
	st.d	$zero, $a4, 12
	addi.d	$a5, $a5, -2
	addi.d	$a4, $a4, 8
	bnez	$a5, .LBB8_29
# %bb.30:                               # %middle.block161
	move	$s2, $a3
	bne	$a1, $a2, .LBB8_20
	b	.LBB8_22
.LBB8_31:                               # %vector.main.loop.iter.check169
	ori	$a2, $zero, 16
	bgeu	$a1, $a2, .LBB8_36
# %bb.32:
	move	$a2, $zero
	move	$a3, $zero
.LBB8_33:                               # %vec.epilog.ph183
	move	$a4, $a2
	bstrpick.d	$a2, $a1, 30, 3
	slli.d	$a2, $a2, 3
	xvrepli.b	$xr0, 0
	xvinsgr2vr.w	$xr0, $a3, 0
	sub.d	$a3, $a4, $a2
	slli.d	$a5, $a4, 4
	alsl.d	$a4, $a4, $a5, 3
	add.d	$a4, $a4, $a0
	addi.d	$a4, $a4, 96
	.p2align	4, , 16
.LBB8_34:                               # %vec.epilog.vector.body189
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a4, -84
	ld.w	$a6, $a4, -60
	ld.w	$a7, $a4, -36
	ld.w	$t0, $a4, -12
	ld.w	$t1, $a4, 12
	ld.w	$t2, $a4, 36
	ld.w	$t3, $a4, 60
	ld.w	$t4, $a4, 84
	xvinsgr2vr.w	$xr1, $a5, 0
	xvinsgr2vr.w	$xr1, $a6, 1
	xvinsgr2vr.w	$xr1, $a7, 2
	xvinsgr2vr.w	$xr1, $t0, 3
	xvinsgr2vr.w	$xr1, $t1, 4
	xvinsgr2vr.w	$xr1, $t2, 5
	xvinsgr2vr.w	$xr1, $t3, 6
	xvinsgr2vr.w	$xr1, $t4, 7
	ld.w	$a5, $a4, -96
	ld.w	$a6, $a4, -72
	ld.w	$a7, $a4, -48
	ld.w	$t0, $a4, -24
	ld.w	$t1, $a4, 0
	ld.w	$t2, $a4, 24
	ld.w	$t3, $a4, 48
	ld.w	$t4, $a4, 72
	xvinsgr2vr.w	$xr2, $a5, 0
	xvinsgr2vr.w	$xr2, $a6, 1
	xvinsgr2vr.w	$xr2, $a7, 2
	xvinsgr2vr.w	$xr2, $t0, 3
	xvinsgr2vr.w	$xr2, $t1, 4
	xvinsgr2vr.w	$xr2, $t2, 5
	xvinsgr2vr.w	$xr2, $t3, 6
	xvinsgr2vr.w	$xr2, $t4, 7
	xvsub.w	$xr1, $xr1, $xr2
	xvmaxi.w	$xr1, $xr1, -1
	xvaddi.wu	$xr1, $xr1, 1
	ld.w	$a5, $a4, -80
	ld.w	$a6, $a4, -56
	ld.w	$a7, $a4, -32
	ld.w	$t0, $a4, -8
	ld.w	$t1, $a4, 16
	ld.w	$t2, $a4, 40
	ld.w	$t3, $a4, 64
	ld.w	$t4, $a4, 88
	xvinsgr2vr.w	$xr2, $a5, 0
	xvinsgr2vr.w	$xr2, $a6, 1
	xvinsgr2vr.w	$xr2, $a7, 2
	xvinsgr2vr.w	$xr2, $t0, 3
	xvinsgr2vr.w	$xr2, $t1, 4
	xvinsgr2vr.w	$xr2, $t2, 5
	xvinsgr2vr.w	$xr2, $t3, 6
	xvinsgr2vr.w	$xr2, $t4, 7
	ld.w	$a5, $a4, -92
	ld.w	$a6, $a4, -68
	ld.w	$a7, $a4, -44
	ld.w	$t0, $a4, -20
	ld.w	$t1, $a4, 4
	ld.w	$t2, $a4, 28
	ld.w	$t3, $a4, 52
	ld.w	$t4, $a4, 76
	xvinsgr2vr.w	$xr3, $a5, 0
	xvinsgr2vr.w	$xr3, $a6, 1
	xvinsgr2vr.w	$xr3, $a7, 2
	xvinsgr2vr.w	$xr3, $t0, 3
	xvinsgr2vr.w	$xr3, $t1, 4
	xvinsgr2vr.w	$xr3, $t2, 5
	xvinsgr2vr.w	$xr3, $t3, 6
	xvinsgr2vr.w	$xr3, $t4, 7
	xvsub.w	$xr2, $xr2, $xr3
	xvmaxi.w	$xr2, $xr2, -1
	xvaddi.wu	$xr2, $xr2, 1
	xvmul.w	$xr1, $xr2, $xr1
	ld.w	$a5, $a4, -76
	ld.w	$a6, $a4, -52
	ld.w	$a7, $a4, -28
	ld.w	$t0, $a4, -4
	ld.w	$t1, $a4, 20
	ld.w	$t2, $a4, 44
	ld.w	$t3, $a4, 68
	ld.w	$t4, $a4, 92
	xvinsgr2vr.w	$xr2, $a5, 0
	xvinsgr2vr.w	$xr2, $a6, 1
	xvinsgr2vr.w	$xr2, $a7, 2
	xvinsgr2vr.w	$xr2, $t0, 3
	xvinsgr2vr.w	$xr2, $t1, 4
	xvinsgr2vr.w	$xr2, $t2, 5
	xvinsgr2vr.w	$xr2, $t3, 6
	xvinsgr2vr.w	$xr2, $t4, 7
	ld.w	$a5, $a4, -88
	ld.w	$a6, $a4, -64
	ld.w	$a7, $a4, -40
	ld.w	$t0, $a4, -16
	ld.w	$t1, $a4, 8
	ld.w	$t2, $a4, 32
	ld.w	$t3, $a4, 56
	ld.w	$t4, $a4, 80
	xvinsgr2vr.w	$xr3, $a5, 0
	xvinsgr2vr.w	$xr3, $a6, 1
	xvinsgr2vr.w	$xr3, $a7, 2
	xvinsgr2vr.w	$xr3, $t0, 3
	xvinsgr2vr.w	$xr3, $t1, 4
	xvinsgr2vr.w	$xr3, $t2, 5
	xvinsgr2vr.w	$xr3, $t3, 6
	xvinsgr2vr.w	$xr3, $t4, 7
	xvsub.w	$xr2, $xr2, $xr3
	xvmaxi.w	$xr2, $xr2, -1
	xvaddi.wu	$xr2, $xr2, 1
	xvmadd.w	$xr0, $xr1, $xr2
	addi.d	$a3, $a3, 8
	addi.d	$a4, $a4, 192
	bnez	$a3, .LBB8_34
# %bb.35:                               # %vec.epilog.middle.block193
	xvpermi.d	$xr1, $xr0, 78
	xvshuf4i.w	$xr1, $xr1, 228
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvshuf4i.w	$xr1, $xr1, 14
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvadd.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$a3, $xr0, 0
	bne	$a2, $a1, .LBB8_40
	b	.LBB8_42
.LBB8_36:                               # %vector.ph170
	bstrpick.d	$a2, $a1, 30, 4
	slli.d	$a2, $a2, 4
	xvrepli.b	$xr0, 0
	addi.d	$a3, $a0, 192
	move	$a4, $a2
	xvori.b	$xr1, $xr0, 0
	.p2align	4, , 16
.LBB8_37:                               # %vector.body173
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a3, -180
	ld.w	$a6, $a3, -156
	ld.w	$a7, $a3, -132
	ld.w	$t0, $a3, -108
	ld.w	$t1, $a3, -84
	ld.w	$t2, $a3, -60
	ld.w	$t3, $a3, -36
	ld.w	$t4, $a3, -12
	xvinsgr2vr.w	$xr2, $a5, 0
	xvinsgr2vr.w	$xr2, $a6, 1
	xvinsgr2vr.w	$xr2, $a7, 2
	xvinsgr2vr.w	$xr2, $t0, 3
	xvinsgr2vr.w	$xr2, $t1, 4
	xvinsgr2vr.w	$xr2, $t2, 5
	xvinsgr2vr.w	$xr2, $t3, 6
	xvinsgr2vr.w	$xr2, $t4, 7
	ld.w	$a5, $a3, 12
	ld.w	$a6, $a3, 36
	ld.w	$a7, $a3, 60
	ld.w	$t0, $a3, 84
	ld.w	$t1, $a3, 108
	ld.w	$t2, $a3, 132
	ld.w	$t3, $a3, 156
	ld.w	$t4, $a3, 180
	xvinsgr2vr.w	$xr3, $a5, 0
	xvinsgr2vr.w	$xr3, $a6, 1
	xvinsgr2vr.w	$xr3, $a7, 2
	xvinsgr2vr.w	$xr3, $t0, 3
	xvinsgr2vr.w	$xr3, $t1, 4
	xvinsgr2vr.w	$xr3, $t2, 5
	xvinsgr2vr.w	$xr3, $t3, 6
	xvinsgr2vr.w	$xr3, $t4, 7
	ld.w	$a5, $a3, -192
	ld.w	$a6, $a3, -168
	ld.w	$a7, $a3, -144
	ld.w	$t0, $a3, -120
	ld.w	$t1, $a3, -96
	ld.w	$t2, $a3, -72
	ld.w	$t3, $a3, -48
	ld.w	$t4, $a3, -24
	xvinsgr2vr.w	$xr4, $a5, 0
	xvinsgr2vr.w	$xr4, $a6, 1
	xvinsgr2vr.w	$xr4, $a7, 2
	xvinsgr2vr.w	$xr4, $t0, 3
	xvinsgr2vr.w	$xr4, $t1, 4
	xvinsgr2vr.w	$xr4, $t2, 5
	xvinsgr2vr.w	$xr4, $t3, 6
	xvinsgr2vr.w	$xr4, $t4, 7
	ld.w	$a5, $a3, 0
	ld.w	$a6, $a3, 24
	ld.w	$a7, $a3, 48
	ld.w	$t0, $a3, 72
	ld.w	$t1, $a3, 96
	ld.w	$t2, $a3, 120
	ld.w	$t3, $a3, 144
	ld.w	$t4, $a3, 168
	xvinsgr2vr.w	$xr5, $a5, 0
	xvinsgr2vr.w	$xr5, $a6, 1
	xvinsgr2vr.w	$xr5, $a7, 2
	xvinsgr2vr.w	$xr5, $t0, 3
	xvinsgr2vr.w	$xr5, $t1, 4
	xvinsgr2vr.w	$xr5, $t2, 5
	xvinsgr2vr.w	$xr5, $t3, 6
	xvinsgr2vr.w	$xr5, $t4, 7
	xvsub.w	$xr2, $xr2, $xr4
	xvsub.w	$xr3, $xr3, $xr5
	xvmaxi.w	$xr2, $xr2, -1
	xvmaxi.w	$xr3, $xr3, -1
	xvaddi.wu	$xr2, $xr2, 1
	xvaddi.wu	$xr4, $xr3, 1
	ld.w	$a5, $a3, -176
	ld.w	$a6, $a3, -152
	ld.w	$a7, $a3, -128
	ld.w	$t0, $a3, -104
	ld.w	$t1, $a3, -80
	ld.w	$t2, $a3, -56
	ld.w	$t3, $a3, -32
	ld.w	$t4, $a3, -8
	xvinsgr2vr.w	$xr3, $a5, 0
	xvinsgr2vr.w	$xr3, $a6, 1
	xvinsgr2vr.w	$xr3, $a7, 2
	xvinsgr2vr.w	$xr3, $t0, 3
	xvinsgr2vr.w	$xr3, $t1, 4
	xvinsgr2vr.w	$xr3, $t2, 5
	xvinsgr2vr.w	$xr3, $t3, 6
	xvinsgr2vr.w	$xr3, $t4, 7
	ld.w	$a5, $a3, 16
	ld.w	$a6, $a3, 40
	ld.w	$a7, $a3, 64
	ld.w	$t0, $a3, 88
	ld.w	$t1, $a3, 112
	ld.w	$t2, $a3, 136
	ld.w	$t3, $a3, 160
	ld.w	$t4, $a3, 184
	xvinsgr2vr.w	$xr5, $a5, 0
	xvinsgr2vr.w	$xr5, $a6, 1
	xvinsgr2vr.w	$xr5, $a7, 2
	xvinsgr2vr.w	$xr5, $t0, 3
	xvinsgr2vr.w	$xr5, $t1, 4
	xvinsgr2vr.w	$xr5, $t2, 5
	xvinsgr2vr.w	$xr5, $t3, 6
	xvinsgr2vr.w	$xr5, $t4, 7
	ld.w	$a5, $a3, -188
	ld.w	$a6, $a3, -164
	ld.w	$a7, $a3, -140
	ld.w	$t0, $a3, -116
	ld.w	$t1, $a3, -92
	ld.w	$t2, $a3, -68
	ld.w	$t3, $a3, -44
	ld.w	$t4, $a3, -20
	xvinsgr2vr.w	$xr6, $a5, 0
	xvinsgr2vr.w	$xr6, $a6, 1
	xvinsgr2vr.w	$xr6, $a7, 2
	xvinsgr2vr.w	$xr6, $t0, 3
	xvinsgr2vr.w	$xr6, $t1, 4
	xvinsgr2vr.w	$xr6, $t2, 5
	xvinsgr2vr.w	$xr6, $t3, 6
	xvinsgr2vr.w	$xr6, $t4, 7
	ld.w	$a5, $a3, 4
	ld.w	$a6, $a3, 28
	ld.w	$a7, $a3, 52
	ld.w	$t0, $a3, 76
	ld.w	$t1, $a3, 100
	ld.w	$t2, $a3, 124
	ld.w	$t3, $a3, 148
	ld.w	$t4, $a3, 172
	xvinsgr2vr.w	$xr7, $a5, 0
	xvinsgr2vr.w	$xr7, $a6, 1
	xvinsgr2vr.w	$xr7, $a7, 2
	xvinsgr2vr.w	$xr7, $t0, 3
	xvinsgr2vr.w	$xr7, $t1, 4
	xvinsgr2vr.w	$xr7, $t2, 5
	xvinsgr2vr.w	$xr7, $t3, 6
	xvinsgr2vr.w	$xr7, $t4, 7
	xvsub.w	$xr3, $xr3, $xr6
	xvsub.w	$xr5, $xr5, $xr7
	xvmaxi.w	$xr3, $xr3, -1
	xvmaxi.w	$xr5, $xr5, -1
	xvaddi.wu	$xr3, $xr3, 1
	xvaddi.wu	$xr5, $xr5, 1
	xvmul.w	$xr3, $xr3, $xr2
	xvmul.w	$xr2, $xr5, $xr4
	ld.w	$a5, $a3, -172
	ld.w	$a6, $a3, -148
	ld.w	$a7, $a3, -124
	ld.w	$t0, $a3, -100
	ld.w	$t1, $a3, -76
	ld.w	$t2, $a3, -52
	ld.w	$t3, $a3, -28
	ld.w	$t4, $a3, -4
	xvinsgr2vr.w	$xr4, $a5, 0
	xvinsgr2vr.w	$xr4, $a6, 1
	xvinsgr2vr.w	$xr4, $a7, 2
	xvinsgr2vr.w	$xr4, $t0, 3
	xvinsgr2vr.w	$xr4, $t1, 4
	xvinsgr2vr.w	$xr4, $t2, 5
	xvinsgr2vr.w	$xr4, $t3, 6
	xvinsgr2vr.w	$xr4, $t4, 7
	ld.w	$a5, $a3, 20
	ld.w	$a6, $a3, 44
	ld.w	$a7, $a3, 68
	ld.w	$t0, $a3, 92
	ld.w	$t1, $a3, 116
	ld.w	$t2, $a3, 140
	ld.w	$t3, $a3, 164
	ld.w	$t4, $a3, 188
	xvinsgr2vr.w	$xr5, $a5, 0
	xvinsgr2vr.w	$xr5, $a6, 1
	xvinsgr2vr.w	$xr5, $a7, 2
	xvinsgr2vr.w	$xr5, $t0, 3
	xvinsgr2vr.w	$xr5, $t1, 4
	xvinsgr2vr.w	$xr5, $t2, 5
	xvinsgr2vr.w	$xr5, $t3, 6
	xvinsgr2vr.w	$xr5, $t4, 7
	ld.w	$a5, $a3, -184
	ld.w	$a6, $a3, -160
	ld.w	$a7, $a3, -136
	ld.w	$t0, $a3, -112
	ld.w	$t1, $a3, -88
	ld.w	$t2, $a3, -64
	ld.w	$t3, $a3, -40
	ld.w	$t4, $a3, -16
	xvinsgr2vr.w	$xr6, $a5, 0
	xvinsgr2vr.w	$xr6, $a6, 1
	xvinsgr2vr.w	$xr6, $a7, 2
	xvinsgr2vr.w	$xr6, $t0, 3
	xvinsgr2vr.w	$xr6, $t1, 4
	xvinsgr2vr.w	$xr6, $t2, 5
	xvinsgr2vr.w	$xr6, $t3, 6
	xvinsgr2vr.w	$xr6, $t4, 7
	ld.w	$a5, $a3, 8
	ld.w	$a6, $a3, 32
	ld.w	$a7, $a3, 56
	ld.w	$t0, $a3, 80
	ld.w	$t1, $a3, 104
	ld.w	$t2, $a3, 128
	ld.w	$t3, $a3, 152
	ld.w	$t4, $a3, 176
	xvinsgr2vr.w	$xr7, $a5, 0
	xvinsgr2vr.w	$xr7, $a6, 1
	xvinsgr2vr.w	$xr7, $a7, 2
	xvinsgr2vr.w	$xr7, $t0, 3
	xvinsgr2vr.w	$xr7, $t1, 4
	xvinsgr2vr.w	$xr7, $t2, 5
	xvinsgr2vr.w	$xr7, $t3, 6
	xvinsgr2vr.w	$xr7, $t4, 7
	xvsub.w	$xr4, $xr4, $xr6
	xvsub.w	$xr5, $xr5, $xr7
	xvmaxi.w	$xr4, $xr4, -1
	xvmaxi.w	$xr5, $xr5, -1
	xvaddi.wu	$xr4, $xr4, 1
	xvaddi.wu	$xr5, $xr5, 1
	xvmadd.w	$xr0, $xr3, $xr4
	xvmadd.w	$xr1, $xr2, $xr5
	addi.d	$a4, $a4, -16
	addi.d	$a3, $a3, 384
	bnez	$a4, .LBB8_37
# %bb.38:                               # %middle.block178
	xvadd.w	$xr0, $xr1, $xr0
	xvpermi.d	$xr1, $xr0, 78
	xvshuf4i.w	$xr1, $xr1, 228
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvshuf4i.w	$xr1, $xr1, 14
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvadd.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$a3, $xr0, 0
	beq	$a2, $a1, .LBB8_42
# %bb.39:                               # %vec.epilog.iter.check184
	andi	$a4, $a1, 8
	bnez	$a4, .LBB8_33
.LBB8_40:                               # %for.body64.preheader
	slli.d	$a4, $a2, 4
	alsl.d	$a4, $a2, $a4, 3
	add.d	$a0, $a4, $a0
	addi.d	$a0, $a0, 16
	sub.d	$a1, $a1, $a2
	addi.w	$a2, $zero, -1
	.p2align	4, , 16
.LBB8_41:                               # %for.body64
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a0, -4
	ld.w	$a5, $a0, -16
	sub.w	$a4, $a4, $a5
	slt	$a5, $a2, $a4
	maskeqz	$a4, $a4, $a5
	ld.d	$a6, $a0, 0
	masknez	$a5, $a2, $a5
	ld.d	$a7, $a0, -12
	or	$a4, $a4, $a5
	vinsgr2vr.d	$vr0, $a6, 0
	addi.d	$a4, $a4, 1
	vinsgr2vr.d	$vr1, $a7, 0
	vsub.w	$vr0, $vr0, $vr1
	vmaxi.w	$vr0, $vr0, -1
	vaddi.wu	$vr0, $vr0, 1
	vpickve2gr.w	$a5, $vr0, 0
	mul.d	$a4, $a5, $a4
	vpickve2gr.w	$a5, $vr0, 1
	mul.d	$a4, $a4, $a5
	add.d	$a3, $a4, $a3
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 24
	bnez	$a1, .LBB8_41
.LBB8_42:                               # %for.end121
	st.w	$a3, $fp, 52
	addi.d	$a1, $sp, 40
	addi.d	$a2, $sp, 32
	addi.d	$a3, $sp, 28
	addi.d	$a4, $sp, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_StructGridPeriodicAllBoxes)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 40
	ld.w	$a0, $s3, 8
	slli.w	$a0, $a0, 2
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 8
	move	$s2, $a0
	blt	$a1, $s4, .LBB8_45
# %bb.43:                               # %for.body131.preheader
	move	$a0, $zero
	move	$a1, $zero
	move	$a2, $s2
	.p2align	4, , 16
.LBB8_44:                               # %for.body131
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a0, $a2, 0
	ld.w	$a3, $s3, 8
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 4
	blt	$a1, $a3, .LBB8_44
.LBB8_45:                               # %for.end136
	ld.d	$a1, $sp, 32
	ld.w	$s4, $sp, 28
	ld.w	$a5, $sp, 24
	addi.d	$a6, $sp, 48
	move	$a0, $s3
	move	$a2, $s2
	move	$a3, $s4
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_BoxNeighborsCreate)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48
	ld.w	$a1, $s0, 8
	st.d	$a0, $fp, 24
	slli.w	$a0, $a1, 2
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 8
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB8_48
# %bb.46:                               # %for.body148.preheader
	move	$a1, $zero
	alsl.d	$a2, $s4, $s2, 2
	move	$a3, $a0
	.p2align	4, , 16
.LBB8_47:                               # %for.body148
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, 0
	st.w	$a4, $a3, 0
	ld.w	$a4, $s0, 8
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	blt	$a1, $a4, .LBB8_47
.LBB8_48:                               # %for.end156
	ld.d	$a1, $fp, 24
	st.d	$a0, $fp, 16
	move	$a0, $a1
.LBB8_49:                               # %if.end
	ld.w	$a1, $fp, 32
	ori	$a2, $zero, 1
	ori	$s1, $zero, 1
	pcaddu18i	$ra, %call36(hypre_BoxNeighborsAssemble)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 8
	blt	$a0, $s1, .LBB8_52
# %bb.50:                               # %iter.check200
	ld.d	$a1, $s0, 0
	ori	$a2, $zero, 8
	bgeu	$a0, $a2, .LBB8_53
# %bb.51:
	move	$a2, $zero
	move	$a3, $zero
	b	.LBB8_62
.LBB8_52:
	move	$a3, $zero
	b	.LBB8_64
.LBB8_53:                               # %vector.main.loop.iter.check202
	ori	$a2, $zero, 16
	bgeu	$a0, $a2, .LBB8_58
# %bb.54:
	move	$a2, $zero
	move	$a3, $zero
.LBB8_55:                               # %vec.epilog.ph217
	move	$a4, $a2
	bstrpick.d	$a2, $a0, 30, 3
	slli.d	$a2, $a2, 3
	xvrepli.b	$xr0, 0
	xvinsgr2vr.w	$xr0, $a3, 0
	sub.d	$a3, $a4, $a2
	slli.d	$a5, $a4, 4
	alsl.d	$a4, $a4, $a5, 3
	add.d	$a4, $a4, $a1
	addi.d	$a4, $a4, 96
	.p2align	4, , 16
.LBB8_56:                               # %vec.epilog.vector.body223
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a4, -84
	ld.w	$a6, $a4, -60
	ld.w	$a7, $a4, -36
	ld.w	$t0, $a4, -12
	ld.w	$t1, $a4, 12
	ld.w	$t2, $a4, 36
	ld.w	$t3, $a4, 60
	ld.w	$t4, $a4, 84
	xvinsgr2vr.w	$xr1, $a5, 0
	xvinsgr2vr.w	$xr1, $a6, 1
	xvinsgr2vr.w	$xr1, $a7, 2
	xvinsgr2vr.w	$xr1, $t0, 3
	xvinsgr2vr.w	$xr1, $t1, 4
	xvinsgr2vr.w	$xr1, $t2, 5
	xvinsgr2vr.w	$xr1, $t3, 6
	xvinsgr2vr.w	$xr1, $t4, 7
	ld.w	$a5, $a4, -96
	ld.w	$a6, $a4, -72
	ld.w	$a7, $a4, -48
	ld.w	$t0, $a4, -24
	ld.w	$t1, $a4, 0
	ld.w	$t2, $a4, 24
	ld.w	$t3, $a4, 48
	ld.w	$t4, $a4, 72
	xvinsgr2vr.w	$xr2, $a5, 0
	xvinsgr2vr.w	$xr2, $a6, 1
	xvinsgr2vr.w	$xr2, $a7, 2
	xvinsgr2vr.w	$xr2, $t0, 3
	xvinsgr2vr.w	$xr2, $t1, 4
	xvinsgr2vr.w	$xr2, $t2, 5
	xvinsgr2vr.w	$xr2, $t3, 6
	xvinsgr2vr.w	$xr2, $t4, 7
	xvsub.w	$xr1, $xr1, $xr2
	xvmaxi.w	$xr1, $xr1, -1
	xvaddi.wu	$xr1, $xr1, 1
	ld.w	$a5, $a4, -80
	ld.w	$a6, $a4, -56
	ld.w	$a7, $a4, -32
	ld.w	$t0, $a4, -8
	ld.w	$t1, $a4, 16
	ld.w	$t2, $a4, 40
	ld.w	$t3, $a4, 64
	ld.w	$t4, $a4, 88
	xvinsgr2vr.w	$xr2, $a5, 0
	xvinsgr2vr.w	$xr2, $a6, 1
	xvinsgr2vr.w	$xr2, $a7, 2
	xvinsgr2vr.w	$xr2, $t0, 3
	xvinsgr2vr.w	$xr2, $t1, 4
	xvinsgr2vr.w	$xr2, $t2, 5
	xvinsgr2vr.w	$xr2, $t3, 6
	xvinsgr2vr.w	$xr2, $t4, 7
	ld.w	$a5, $a4, -92
	ld.w	$a6, $a4, -68
	ld.w	$a7, $a4, -44
	ld.w	$t0, $a4, -20
	ld.w	$t1, $a4, 4
	ld.w	$t2, $a4, 28
	ld.w	$t3, $a4, 52
	ld.w	$t4, $a4, 76
	xvinsgr2vr.w	$xr3, $a5, 0
	xvinsgr2vr.w	$xr3, $a6, 1
	xvinsgr2vr.w	$xr3, $a7, 2
	xvinsgr2vr.w	$xr3, $t0, 3
	xvinsgr2vr.w	$xr3, $t1, 4
	xvinsgr2vr.w	$xr3, $t2, 5
	xvinsgr2vr.w	$xr3, $t3, 6
	xvinsgr2vr.w	$xr3, $t4, 7
	xvsub.w	$xr2, $xr2, $xr3
	xvmaxi.w	$xr2, $xr2, -1
	xvaddi.wu	$xr2, $xr2, 1
	xvmul.w	$xr1, $xr2, $xr1
	ld.w	$a5, $a4, -76
	ld.w	$a6, $a4, -52
	ld.w	$a7, $a4, -28
	ld.w	$t0, $a4, -4
	ld.w	$t1, $a4, 20
	ld.w	$t2, $a4, 44
	ld.w	$t3, $a4, 68
	ld.w	$t4, $a4, 92
	xvinsgr2vr.w	$xr2, $a5, 0
	xvinsgr2vr.w	$xr2, $a6, 1
	xvinsgr2vr.w	$xr2, $a7, 2
	xvinsgr2vr.w	$xr2, $t0, 3
	xvinsgr2vr.w	$xr2, $t1, 4
	xvinsgr2vr.w	$xr2, $t2, 5
	xvinsgr2vr.w	$xr2, $t3, 6
	xvinsgr2vr.w	$xr2, $t4, 7
	ld.w	$a5, $a4, -88
	ld.w	$a6, $a4, -64
	ld.w	$a7, $a4, -40
	ld.w	$t0, $a4, -16
	ld.w	$t1, $a4, 8
	ld.w	$t2, $a4, 32
	ld.w	$t3, $a4, 56
	ld.w	$t4, $a4, 80
	xvinsgr2vr.w	$xr3, $a5, 0
	xvinsgr2vr.w	$xr3, $a6, 1
	xvinsgr2vr.w	$xr3, $a7, 2
	xvinsgr2vr.w	$xr3, $t0, 3
	xvinsgr2vr.w	$xr3, $t1, 4
	xvinsgr2vr.w	$xr3, $t2, 5
	xvinsgr2vr.w	$xr3, $t3, 6
	xvinsgr2vr.w	$xr3, $t4, 7
	xvsub.w	$xr2, $xr2, $xr3
	xvmaxi.w	$xr2, $xr2, -1
	xvaddi.wu	$xr2, $xr2, 1
	xvmadd.w	$xr0, $xr1, $xr2
	addi.d	$a3, $a3, 8
	addi.d	$a4, $a4, 192
	bnez	$a3, .LBB8_56
# %bb.57:                               # %vec.epilog.middle.block227
	xvpermi.d	$xr1, $xr0, 78
	xvshuf4i.w	$xr1, $xr1, 228
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvshuf4i.w	$xr1, $xr1, 14
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvadd.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$a3, $xr0, 0
	bne	$a2, $a0, .LBB8_62
	b	.LBB8_64
.LBB8_58:                               # %vector.ph203
	xvrepli.b	$xr0, 0
	bstrpick.d	$a2, $a0, 30, 4
	slli.d	$a2, $a2, 4
	addi.d	$a3, $a1, 192
	move	$a4, $a2
	xvori.b	$xr1, $xr0, 0
	.p2align	4, , 16
.LBB8_59:                               # %vector.body206
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a3, -180
	ld.w	$a6, $a3, -156
	ld.w	$a7, $a3, -132
	ld.w	$t0, $a3, -108
	ld.w	$t1, $a3, -84
	ld.w	$t2, $a3, -60
	ld.w	$t3, $a3, -36
	ld.w	$t4, $a3, -12
	xvinsgr2vr.w	$xr2, $a5, 0
	xvinsgr2vr.w	$xr2, $a6, 1
	xvinsgr2vr.w	$xr2, $a7, 2
	xvinsgr2vr.w	$xr2, $t0, 3
	xvinsgr2vr.w	$xr2, $t1, 4
	xvinsgr2vr.w	$xr2, $t2, 5
	xvinsgr2vr.w	$xr2, $t3, 6
	xvinsgr2vr.w	$xr2, $t4, 7
	ld.w	$a5, $a3, 12
	ld.w	$a6, $a3, 36
	ld.w	$a7, $a3, 60
	ld.w	$t0, $a3, 84
	ld.w	$t1, $a3, 108
	ld.w	$t2, $a3, 132
	ld.w	$t3, $a3, 156
	ld.w	$t4, $a3, 180
	xvinsgr2vr.w	$xr3, $a5, 0
	xvinsgr2vr.w	$xr3, $a6, 1
	xvinsgr2vr.w	$xr3, $a7, 2
	xvinsgr2vr.w	$xr3, $t0, 3
	xvinsgr2vr.w	$xr3, $t1, 4
	xvinsgr2vr.w	$xr3, $t2, 5
	xvinsgr2vr.w	$xr3, $t3, 6
	xvinsgr2vr.w	$xr3, $t4, 7
	ld.w	$a5, $a3, -192
	ld.w	$a6, $a3, -168
	ld.w	$a7, $a3, -144
	ld.w	$t0, $a3, -120
	ld.w	$t1, $a3, -96
	ld.w	$t2, $a3, -72
	ld.w	$t3, $a3, -48
	ld.w	$t4, $a3, -24
	xvinsgr2vr.w	$xr4, $a5, 0
	xvinsgr2vr.w	$xr4, $a6, 1
	xvinsgr2vr.w	$xr4, $a7, 2
	xvinsgr2vr.w	$xr4, $t0, 3
	xvinsgr2vr.w	$xr4, $t1, 4
	xvinsgr2vr.w	$xr4, $t2, 5
	xvinsgr2vr.w	$xr4, $t3, 6
	xvinsgr2vr.w	$xr4, $t4, 7
	ld.w	$a5, $a3, 0
	ld.w	$a6, $a3, 24
	ld.w	$a7, $a3, 48
	ld.w	$t0, $a3, 72
	ld.w	$t1, $a3, 96
	ld.w	$t2, $a3, 120
	ld.w	$t3, $a3, 144
	ld.w	$t4, $a3, 168
	xvinsgr2vr.w	$xr5, $a5, 0
	xvinsgr2vr.w	$xr5, $a6, 1
	xvinsgr2vr.w	$xr5, $a7, 2
	xvinsgr2vr.w	$xr5, $t0, 3
	xvinsgr2vr.w	$xr5, $t1, 4
	xvinsgr2vr.w	$xr5, $t2, 5
	xvinsgr2vr.w	$xr5, $t3, 6
	xvinsgr2vr.w	$xr5, $t4, 7
	xvsub.w	$xr2, $xr2, $xr4
	xvsub.w	$xr3, $xr3, $xr5
	xvmaxi.w	$xr2, $xr2, -1
	xvmaxi.w	$xr3, $xr3, -1
	xvaddi.wu	$xr2, $xr2, 1
	xvaddi.wu	$xr4, $xr3, 1
	ld.w	$a5, $a3, -176
	ld.w	$a6, $a3, -152
	ld.w	$a7, $a3, -128
	ld.w	$t0, $a3, -104
	ld.w	$t1, $a3, -80
	ld.w	$t2, $a3, -56
	ld.w	$t3, $a3, -32
	ld.w	$t4, $a3, -8
	xvinsgr2vr.w	$xr3, $a5, 0
	xvinsgr2vr.w	$xr3, $a6, 1
	xvinsgr2vr.w	$xr3, $a7, 2
	xvinsgr2vr.w	$xr3, $t0, 3
	xvinsgr2vr.w	$xr3, $t1, 4
	xvinsgr2vr.w	$xr3, $t2, 5
	xvinsgr2vr.w	$xr3, $t3, 6
	xvinsgr2vr.w	$xr3, $t4, 7
	ld.w	$a5, $a3, 16
	ld.w	$a6, $a3, 40
	ld.w	$a7, $a3, 64
	ld.w	$t0, $a3, 88
	ld.w	$t1, $a3, 112
	ld.w	$t2, $a3, 136
	ld.w	$t3, $a3, 160
	ld.w	$t4, $a3, 184
	xvinsgr2vr.w	$xr5, $a5, 0
	xvinsgr2vr.w	$xr5, $a6, 1
	xvinsgr2vr.w	$xr5, $a7, 2
	xvinsgr2vr.w	$xr5, $t0, 3
	xvinsgr2vr.w	$xr5, $t1, 4
	xvinsgr2vr.w	$xr5, $t2, 5
	xvinsgr2vr.w	$xr5, $t3, 6
	xvinsgr2vr.w	$xr5, $t4, 7
	ld.w	$a5, $a3, -188
	ld.w	$a6, $a3, -164
	ld.w	$a7, $a3, -140
	ld.w	$t0, $a3, -116
	ld.w	$t1, $a3, -92
	ld.w	$t2, $a3, -68
	ld.w	$t3, $a3, -44
	ld.w	$t4, $a3, -20
	xvinsgr2vr.w	$xr6, $a5, 0
	xvinsgr2vr.w	$xr6, $a6, 1
	xvinsgr2vr.w	$xr6, $a7, 2
	xvinsgr2vr.w	$xr6, $t0, 3
	xvinsgr2vr.w	$xr6, $t1, 4
	xvinsgr2vr.w	$xr6, $t2, 5
	xvinsgr2vr.w	$xr6, $t3, 6
	xvinsgr2vr.w	$xr6, $t4, 7
	ld.w	$a5, $a3, 4
	ld.w	$a6, $a3, 28
	ld.w	$a7, $a3, 52
	ld.w	$t0, $a3, 76
	ld.w	$t1, $a3, 100
	ld.w	$t2, $a3, 124
	ld.w	$t3, $a3, 148
	ld.w	$t4, $a3, 172
	xvinsgr2vr.w	$xr7, $a5, 0
	xvinsgr2vr.w	$xr7, $a6, 1
	xvinsgr2vr.w	$xr7, $a7, 2
	xvinsgr2vr.w	$xr7, $t0, 3
	xvinsgr2vr.w	$xr7, $t1, 4
	xvinsgr2vr.w	$xr7, $t2, 5
	xvinsgr2vr.w	$xr7, $t3, 6
	xvinsgr2vr.w	$xr7, $t4, 7
	xvsub.w	$xr3, $xr3, $xr6
	xvsub.w	$xr5, $xr5, $xr7
	xvmaxi.w	$xr3, $xr3, -1
	xvmaxi.w	$xr5, $xr5, -1
	xvaddi.wu	$xr3, $xr3, 1
	xvaddi.wu	$xr5, $xr5, 1
	xvmul.w	$xr3, $xr3, $xr2
	xvmul.w	$xr2, $xr5, $xr4
	ld.w	$a5, $a3, -172
	ld.w	$a6, $a3, -148
	ld.w	$a7, $a3, -124
	ld.w	$t0, $a3, -100
	ld.w	$t1, $a3, -76
	ld.w	$t2, $a3, -52
	ld.w	$t3, $a3, -28
	ld.w	$t4, $a3, -4
	xvinsgr2vr.w	$xr4, $a5, 0
	xvinsgr2vr.w	$xr4, $a6, 1
	xvinsgr2vr.w	$xr4, $a7, 2
	xvinsgr2vr.w	$xr4, $t0, 3
	xvinsgr2vr.w	$xr4, $t1, 4
	xvinsgr2vr.w	$xr4, $t2, 5
	xvinsgr2vr.w	$xr4, $t3, 6
	xvinsgr2vr.w	$xr4, $t4, 7
	ld.w	$a5, $a3, 20
	ld.w	$a6, $a3, 44
	ld.w	$a7, $a3, 68
	ld.w	$t0, $a3, 92
	ld.w	$t1, $a3, 116
	ld.w	$t2, $a3, 140
	ld.w	$t3, $a3, 164
	ld.w	$t4, $a3, 188
	xvinsgr2vr.w	$xr5, $a5, 0
	xvinsgr2vr.w	$xr5, $a6, 1
	xvinsgr2vr.w	$xr5, $a7, 2
	xvinsgr2vr.w	$xr5, $t0, 3
	xvinsgr2vr.w	$xr5, $t1, 4
	xvinsgr2vr.w	$xr5, $t2, 5
	xvinsgr2vr.w	$xr5, $t3, 6
	xvinsgr2vr.w	$xr5, $t4, 7
	ld.w	$a5, $a3, -184
	ld.w	$a6, $a3, -160
	ld.w	$a7, $a3, -136
	ld.w	$t0, $a3, -112
	ld.w	$t1, $a3, -88
	ld.w	$t2, $a3, -64
	ld.w	$t3, $a3, -40
	ld.w	$t4, $a3, -16
	xvinsgr2vr.w	$xr6, $a5, 0
	xvinsgr2vr.w	$xr6, $a6, 1
	xvinsgr2vr.w	$xr6, $a7, 2
	xvinsgr2vr.w	$xr6, $t0, 3
	xvinsgr2vr.w	$xr6, $t1, 4
	xvinsgr2vr.w	$xr6, $t2, 5
	xvinsgr2vr.w	$xr6, $t3, 6
	xvinsgr2vr.w	$xr6, $t4, 7
	ld.w	$a5, $a3, 8
	ld.w	$a6, $a3, 32
	ld.w	$a7, $a3, 56
	ld.w	$t0, $a3, 80
	ld.w	$t1, $a3, 104
	ld.w	$t2, $a3, 128
	ld.w	$t3, $a3, 152
	ld.w	$t4, $a3, 176
	xvinsgr2vr.w	$xr7, $a5, 0
	xvinsgr2vr.w	$xr7, $a6, 1
	xvinsgr2vr.w	$xr7, $a7, 2
	xvinsgr2vr.w	$xr7, $t0, 3
	xvinsgr2vr.w	$xr7, $t1, 4
	xvinsgr2vr.w	$xr7, $t2, 5
	xvinsgr2vr.w	$xr7, $t3, 6
	xvinsgr2vr.w	$xr7, $t4, 7
	xvsub.w	$xr4, $xr4, $xr6
	xvsub.w	$xr5, $xr5, $xr7
	xvmaxi.w	$xr4, $xr4, -1
	xvmaxi.w	$xr5, $xr5, -1
	xvaddi.wu	$xr4, $xr4, 1
	xvaddi.wu	$xr5, $xr5, 1
	xvmadd.w	$xr0, $xr3, $xr4
	xvmadd.w	$xr1, $xr2, $xr5
	addi.d	$a4, $a4, -16
	addi.d	$a3, $a3, 384
	bnez	$a4, .LBB8_59
# %bb.60:                               # %middle.block211
	xvadd.w	$xr0, $xr1, $xr0
	xvpermi.d	$xr1, $xr0, 78
	xvshuf4i.w	$xr1, $xr1, 228
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvshuf4i.w	$xr1, $xr1, 14
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvadd.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$a3, $xr0, 0
	beq	$a2, $a0, .LBB8_64
# %bb.61:                               # %vec.epilog.iter.check218
	andi	$a4, $a0, 8
	bnez	$a4, .LBB8_55
.LBB8_62:                               # %for.body164.preheader
	slli.d	$a4, $a2, 4
	alsl.d	$a4, $a2, $a4, 3
	add.d	$a1, $a4, $a1
	addi.d	$a1, $a1, 16
	sub.d	$a0, $a0, $a2
	addi.w	$a2, $zero, -1
	.p2align	4, , 16
.LBB8_63:                               # %for.body164
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, -4
	ld.w	$a5, $a1, -16
	sub.w	$a4, $a4, $a5
	slt	$a5, $a2, $a4
	maskeqz	$a4, $a4, $a5
	ld.d	$a6, $a1, 0
	masknez	$a5, $a2, $a5
	ld.d	$a7, $a1, -12
	or	$a4, $a4, $a5
	vinsgr2vr.d	$vr0, $a6, 0
	addi.d	$a4, $a4, 1
	vinsgr2vr.d	$vr1, $a7, 0
	vsub.w	$vr0, $vr0, $vr1
	vmaxi.w	$vr0, $vr0, -1
	vaddi.wu	$vr0, $vr0, 1
	vpickve2gr.w	$a5, $vr0, 0
	mul.d	$a4, $a5, $a4
	vpickve2gr.w	$a5, $vr0, 1
	mul.d	$a4, $a4, $a5
	add.d	$a3, $a4, $a3
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 24
	bnez	$a0, .LBB8_63
.LBB8_64:                               # %for.end227
	st.w	$a3, $fp, 48
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
.Lfunc_end8:
	.size	hypre_StructGridAssemble, .Lfunc_end8-hypre_StructGridAssemble
                                        # -- End function
	.globl	hypre_GatherAllBoxes            # -- Begin function hypre_GatherAllBoxes
	.p2align	5
	.type	hypre_GatherAllBoxes,@function
hypre_GatherAllBoxes:                   # @hypre_GatherAllBoxes
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
	move	$fp, $a4
	move	$s1, $a3
	move	$s2, $a2
	move	$s7, $a1
	move	$s6, $a0
	addi.d	$a1, $sp, 76
	pcaddu18i	$ra, %call36(hypre_MPI_Comm_size)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 72
	move	$a0, $s6
	pcaddu18i	$ra, %call36(hypre_MPI_Comm_rank)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 8
	ld.w	$a1, $sp, 76
	slli.d	$a2, $a0, 3
	sub.d	$a0, $a2, $a0
	st.w	$a0, $sp, 68
	slli.w	$a0, $a1, 2
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 76
	move	$s3, $a0
	slli.w	$a0, $a1, 2
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	addi.d	$a0, $sp, 68
	ori	$a1, $zero, 1
	ori	$a2, $zero, 1
	ori	$a4, $zero, 1
	ori	$a5, $zero, 1
	ori	$s0, $zero, 1
	move	$a3, $s3
	move	$a6, $s6
	pcaddu18i	$ra, %call36(hypre_MPI_Allgather)
	jirl	$ra, $ra, 0
	st.w	$zero, $s8, 0
	ld.w	$a1, $sp, 76
	ld.w	$a0, $s3, 0
	ori	$a2, $zero, 2
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s1, $sp, 40                    # 8-byte Folded Spill
	st.d	$s2, $sp, 32                    # 8-byte Folded Spill
	blt	$a1, $a2, .LBB9_3
# %bb.1:                                # %for.body.preheader
	move	$a1, $zero
	addi.d	$a2, $s3, 4
	addi.d	$a3, $s8, 4
	ori	$a4, $zero, 1
	move	$fp, $a0
	.p2align	4, , 16
.LBB9_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a1, $a0, $a1
	st.w	$a1, $a3, 0
	ld.w	$a0, $a2, 0
	ld.w	$a5, $sp, 76
	add.w	$fp, $a0, $fp
	addi.d	$a4, $a4, 1
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	blt	$a4, $a5, .LBB9_2
	b	.LBB9_4
.LBB9_3:
	move	$fp, $a0
.LBB9_4:                                # %for.end
	ld.w	$a0, $sp, 68
	slli.w	$a0, $a0, 2
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	slli.w	$a0, $fp, 2
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s7, 8
	move	$s5, $a0
	blt	$a1, $s0, .LBB9_7
# %bb.5:                                # %for.body33.lr.ph
	ld.d	$a2, $s7, 0
	move	$a0, $zero
	move	$a1, $zero
	addi.d	$a2, $a2, 12
	.p2align	4, , 16
.LBB9_6:                                # %for.body33
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $sp, 72
	slli.d	$a4, $a1, 2
	stx.w	$a3, $s4, $a4
	ld.w	$a3, $a2, -12
	alsl.d	$a4, $a1, $s4, 2
	st.w	$a3, $a4, 4
	ld.w	$a3, $a2, 0
	st.w	$a3, $a4, 8
	ld.w	$a3, $a2, -8
	addi.w	$a5, $a1, 3
	slli.d	$a5, $a5, 2
	stx.w	$a3, $s4, $a5
	ld.w	$a3, $a2, 4
	st.w	$a3, $a4, 16
	ld.w	$a3, $a2, -4
	addi.w	$a5, $a1, 5
	slli.d	$a5, $a5, 2
	stx.w	$a3, $s4, $a5
	ld.w	$a3, $a2, 8
	st.w	$a3, $a4, 24
	ld.w	$a3, $s7, 8
	addi.w	$a1, $a1, 7
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 24
	blt	$a0, $a3, .LBB9_6
.LBB9_7:                                # %for.end61
	ld.w	$a1, $sp, 68
	ori	$a2, $zero, 1
	ori	$a6, $zero, 1
	ori	$s0, $zero, 1
	move	$a0, $s4
	move	$a3, $s5
	st.d	$s3, $sp, 24                    # 8-byte Folded Spill
	move	$a4, $s3
	st.d	$s8, $sp, 16                    # 8-byte Folded Spill
	move	$a5, $s8
	move	$a7, $s6
	pcaddu18i	$ra, %call36(hypre_MPI_Allgatherv)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -449390
	ori	$a0, $a0, 1171
	mul.d	$a0, $fp, $a0
	srli.d	$a0, $a0, 32
	add.w	$a0, $a0, $fp
	bstrpick.d	$a1, $a0, 31, 31
	srli.d	$a0, $a0, 2
	add.w	$s7, $a0, $a1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(hypre_BoxArrayCreate)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	slli.w	$a0, $s7, 2
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	pcaddu18i	$ra, %call36(hypre_BoxCreate)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	blt	$fp, $s0, .LBB9_12
# %bb.8:                                # %while.body.lr.ph
	addi.w	$s1, $zero, -1
	move	$s3, $zero
	move	$s2, $zero
	move	$s7, $zero
	move	$s0, $s1
	b	.LBB9_10
	.p2align	4, , 16
.LBB9_9:                                # %if.end
                                        #   in Loop: Header=BB9_10 Depth=1
	addi.w	$s7, $s7, 7
	addi.d	$s6, $s6, 4
	addi.w	$s2, $s2, 1
	addi.d	$s3, $s3, 24
	bge	$s7, $fp, .LBB9_13
.LBB9_10:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a0, $s7, 2
	ldx.w	$a0, $s5, $a0
	alsl.d	$a1, $s7, $s5, 2
	st.w	$a0, $s6, 0
	ld.w	$a0, $a1, 4
	st.w	$a0, $sp, 92
	ld.w	$a0, $a1, 8
	st.w	$a0, $sp, 80
	addi.w	$a0, $s7, 3
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s5, $a0
	st.w	$a0, $sp, 96
	ld.w	$a0, $a1, 16
	st.w	$a0, $sp, 84
	addi.w	$a0, $s7, 5
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s5, $a0
	st.w	$a0, $sp, 100
	ld.w	$a0, $a1, 24
	st.w	$a0, $sp, 88
	addi.d	$a1, $sp, 92
	addi.d	$a2, $sp, 80
	move	$a0, $s8
	pcaddu18i	$ra, %call36(hypre_BoxSetExtents)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	stx.w	$a0, $a1, $s3
	ld.w	$a0, $s8, 4
	add.d	$a1, $a1, $s3
	st.w	$a0, $a1, 4
	ld.w	$a0, $s8, 8
	st.w	$a0, $a1, 8
	ld.w	$a0, $s8, 12
	st.w	$a0, $a1, 12
	ld.w	$a0, $s8, 16
	st.w	$a0, $a1, 16
	ld.w	$a0, $s8, 20
	st.w	$a0, $a1, 20
	blt	$s1, $s0, .LBB9_9
# %bb.11:                               # %land.lhs.true
                                        #   in Loop: Header=BB9_10 Depth=1
	ld.w	$a0, $s6, 0
	ld.w	$a1, $sp, 72
	xor	$a0, $a0, $a1
	sltui	$a0, $a0, 1
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $s2, $a0
	or	$s0, $a0, $a1
	b	.LBB9_9
.LBB9_12:
	addi.d	$s0, $zero, -1
.LBB9_13:                               # %while.end
	move	$a0, $s8
	pcaddu18i	$ra, %call36(hypre_BoxDestroy)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.w	$s0, $a0, 0
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
.Lfunc_end9:
	.size	hypre_GatherAllBoxes, .Lfunc_end9-hypre_GatherAllBoxes
                                        # -- End function
	.globl	hypre_StructGridPeriodicAllBoxes # -- Begin function hypre_StructGridPeriodicAllBoxes
	.p2align	5
	.type	hypre_StructGridPeriodicAllBoxes,@function
hypre_StructGridPeriodicAllBoxes:       # @hypre_StructGridPeriodicAllBoxes
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
	ld.w	$a5, $a0, 56
	ld.w	$a6, $a0, 60
	ld.w	$s4, $a0, 64
	or	$a0, $a6, $a5
	or	$a0, $a0, $s4
	beqz	$a0, .LBB10_25
# %bb.1:                                # %if.then15
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
	st.d	$a5, $sp, 112                   # 8-byte Folded Spill
	sltu	$s0, $zero, $a5
	st.d	$a6, $sp, 136                   # 8-byte Folded Spill
	sltu	$s2, $zero, $a6
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a1, $a1, 0
	sltu	$s1, $zero, $s4
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $a2, 0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a0, $a3, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	ld.w	$fp, $a1, 8
	ori	$s3, $zero, 1
	masknez	$a0, $s3, $s0
	ori	$a1, $zero, 3
	maskeqz	$a2, $a1, $s0
	or	$a0, $a2, $a0
	masknez	$a2, $s3, $s2
	maskeqz	$a3, $a1, $s2
	or	$a2, $a3, $a2
	mul.d	$a0, $a2, $a0
	masknez	$a2, $s3, $s1
	maskeqz	$a1, $a1, $s1
	or	$a1, $a1, $a2
	mul.d	$a0, $a0, $a1
	mul.w	$s6, $a0, $fp
	move	$a0, $s6
	pcaddu18i	$ra, %call36(hypre_BoxArrayCreate)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	slli.w	$a0, $s6, 2
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	blt	$fp, $s3, .LBB10_26
# %bb.2:                                # %for.cond.preheader.preheader
	move	$a6, $fp
	move	$fp, $zero
	move	$t0, $zero
	move	$t1, $zero
	sub.w	$a0, $zero, $s0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	sub.w	$a0, $zero, $s2
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	sub.w	$a0, $zero, $s1
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	addi.d	$a4, $s1, 1
	addi.d	$t8, $s2, 1
	addi.d	$s2, $s0, 1
                                        # implicit-def: $r23
	st.d	$a6, $sp, 40                    # 8-byte Folded Spill
	st.d	$t8, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	b	.LBB10_4
	.p2align	4, , 16
.LBB10_3:                               # %for.end226
                                        #   in Loop: Header=BB10_4 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	xor	$a0, $a2, $a0
	sltui	$a0, $a0, 1
	ld.d	$a5, $sp, 96                    # 8-byte Folded Reload
	add.d	$a2, $a5, $t2
	sub.d	$a2, $t1, $a2
	add.d	$a2, $a2, $a1
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	masknez	$a3, $a3, $a0
	maskeqz	$a5, $a5, $a0
	or	$s0, $a5, $a3
	maskeqz	$a2, $a2, $a0
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	masknez	$a0, $a3, $a0
	addi.w	$a3, $ra, 0
	or	$fp, $a2, $a0
	move	$t0, $a1
	move	$t1, $ra
	ld.d	$a6, $sp, 40                    # 8-byte Folded Reload
	bge	$a3, $a6, .LBB10_27
.LBB10_4:                               # %for.cond.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_5 Depth 2
                                        #     Child Loop BB10_11 Depth 2
                                        #       Child Loop BB10_12 Depth 3
                                        #         Child Loop BB10_13 Depth 4
                                        #     Child Loop BB10_17 Depth 2
                                        #       Child Loop BB10_19 Depth 3
                                        #         Child Loop BB10_21 Depth 4
                                        #           Child Loop BB10_23 Depth 5
	move	$a1, $zero
	move	$a0, $zero
	addi.w	$a7, $t1, 0
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	alsl.d	$s1, $a7, $a2, 2
	addi.w	$a2, $t1, 1
	slt	$a3, $a2, $a6
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a6, $a3
	or	$t2, $a3, $a2
	ori	$a5, $zero, 24
	mul.d	$a2, $a7, $a5
	alsl.d	$a3, $t0, $s6, 2
	st.d	$t0, $sp, 96                    # 8-byte Folded Spill
	mul.d	$t0, $t0, $a5
	move	$t4, $s1
	move	$t5, $a7
	st.d	$fp, $sp, 88                    # 8-byte Folded Spill
	st.d	$s0, $sp, 80                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB10_5:                               # %for.body
                                        #   Parent Loop BB10_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t3, $t4, 0
	ld.w	$t6, $s1, 0
	bne	$t3, $t6, .LBB10_8
# %bb.6:                                # %if.end36
                                        #   in Loop: Header=BB10_5 Depth=2
	ld.d	$a5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t3, $a5, 0
	add.d	$t3, $t3, $a2
	ld.d	$t6, $s5, 0
	ldx.w	$t7, $t3, $a1
	add.d	$t3, $t3, $a1
	add.d	$t6, $t6, $t0
	stx.w	$t7, $t6, $a1
	ld.w	$t7, $t3, 4
	add.d	$t6, $t6, $a1
	st.w	$t7, $t6, 4
	ld.w	$t7, $t3, 8
	st.w	$t7, $t6, 8
	ld.w	$t7, $t3, 12
	st.w	$t7, $t6, 12
	ld.w	$t7, $t3, 16
	st.w	$t7, $t6, 16
	ld.w	$t3, $t3, 20
	st.w	$t3, $t6, 20
	ld.w	$t3, $t4, 0
	st.w	$t3, $a3, 0
	addi.d	$t5, $t5, 1
	addi.d	$a0, $a0, 1
	addi.d	$t4, $t4, 4
	addi.d	$a1, $a1, 24
	addi.d	$a3, $a3, 4
	blt	$t5, $a6, .LBB10_5
# %bb.7:                                # %for.end.loopexit
                                        #   in Loop: Header=BB10_4 Depth=1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	add.w	$a1, $a1, $a0
	b	.LBB10_9
	.p2align	4, , 16
.LBB10_8:                               # %for.end.split.loop.exit
                                        #   in Loop: Header=BB10_4 Depth=1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	add.w	$a1, $a1, $a0
	add.w	$t2, $t1, $a0
.LBB10_9:                               # %for.end
                                        #   in Loop: Header=BB10_4 Depth=1
	addi.w	$a2, $t1, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	move	$ra, $t2
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	bge	$a2, $t2, .LBB10_11
# %bb.10:                               # %for.cond105.preheader.us.preheader
                                        #   in Loop: Header=BB10_4 Depth=1
	slli.d	$a0, $a7, 4
	alsl.d	$t6, $a7, $a0, 3
	addi.d	$a0, $a7, 1
	slt	$a2, $t2, $a0
	masknez	$a3, $t2, $a2
	maskeqz	$a0, $a0, $a2
	or	$t7, $a0, $a3
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	move	$ra, $t2
	b	.LBB10_17
	.p2align	4, , 16
.LBB10_11:                              # %for.cond105.preheader
                                        #   Parent Loop BB10_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_12 Depth 3
                                        #         Child Loop BB10_13 Depth 4
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB10_12:                              # %iter.check
                                        #   Parent Loop BB10_4 Depth=1
                                        #     Parent Loop BB10_11 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB10_13 Depth 4
	or	$a3, $a2, $a0
	ld.d	$a7, $sp, 152                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB10_13:                              # %for.body113
                                        #   Parent Loop BB10_4 Depth=1
                                        #     Parent Loop BB10_11 Depth=2
                                        #       Parent Loop BB10_12 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	or	$a5, $a3, $a7
	sltui	$a5, $a5, 1
	masknez	$a6, $t1, $a5
	maskeqz	$a5, $ra, $a5
	addi.w	$a7, $a7, 1
	or	$ra, $a5, $a6
	bne	$a4, $a7, .LBB10_13
# %bb.14:                               # %for.inc221.split
                                        #   in Loop: Header=BB10_12 Depth=3
	addi.w	$a2, $a2, 1
	bne	$a2, $t8, .LBB10_12
# %bb.15:                               # %for.inc224.split
                                        #   in Loop: Header=BB10_11 Depth=2
	addi.w	$a0, $a0, 1
	bne	$a0, $s2, .LBB10_11
	b	.LBB10_3
	.p2align	4, , 16
.LBB10_16:                              # %for.inc224.split.us.us
                                        #   in Loop: Header=BB10_17 Depth=2
	addi.w	$a3, $a3, 1
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	beq	$a3, $s2, .LBB10_3
.LBB10_17:                              # %for.cond105.preheader.us
                                        #   Parent Loop BB10_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_19 Depth 3
                                        #         Child Loop BB10_21 Depth 4
                                        #           Child Loop BB10_23 Depth 5
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	mul.d	$s0, $a3, $a0
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	st.d	$a3, $sp, 144                   # 8-byte Folded Spill
	b	.LBB10_19
	.p2align	4, , 16
.LBB10_18:                              # %for.inc221.split.us.us.us
                                        #   in Loop: Header=BB10_19 Depth=3
	addi.w	$a2, $a2, 1
	ld.d	$t8, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	beq	$a2, $t8, .LBB10_16
.LBB10_19:                              # %for.cond110.preheader.us.us
                                        #   Parent Loop BB10_4 Depth=1
                                        #     Parent Loop BB10_17 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB10_21 Depth 4
                                        #           Child Loop BB10_23 Depth 5
	or	$a0, $a2, $a3
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	mul.d	$s2, $a2, $a3
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	b	.LBB10_21
	.p2align	4, , 16
.LBB10_20:                              # %for.inc218.us.us.us
                                        #   in Loop: Header=BB10_21 Depth=4
	addi.w	$a3, $a3, 1
	beq	$a3, $a4, .LBB10_18
.LBB10_21:                              # %for.body113.us.us.us
                                        #   Parent Loop BB10_4 Depth=1
                                        #     Parent Loop BB10_17 Depth=2
                                        #       Parent Loop BB10_19 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB10_23 Depth 5
	or	$t0, $a0, $a3
	beqz	$t0, .LBB10_20
# %bb.22:                               # %for.cond123.preheader.us.us.us
                                        #   in Loop: Header=BB10_21 Depth=4
	ld.d	$a5, $s5, 0
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a6, $a6, 0
	move	$fp, $s4
	mul.d	$ra, $a3, $s4
	alsl.d	$t5, $a1, $s6, 2
	slli.d	$t0, $a1, 4
	alsl.d	$t0, $a1, $t0, 3
	add.d	$a5, $a5, $t0
	addi.d	$t0, $a5, 12
	add.d	$a5, $a6, $t6
	addi.d	$s7, $a5, 12
	move	$t4, $s1
	move	$t3, $a7
	.p2align	4, , 16
.LBB10_23:                              # %for.body127.us.us.us
                                        #   Parent Loop BB10_4 Depth=1
                                        #     Parent Loop BB10_17 Depth=2
                                        #       Parent Loop BB10_19 Depth=3
                                        #         Parent Loop BB10_21 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.w	$a6, $s7, -12
	st.w	$a6, $t0, -12
	ld.w	$s8, $s7, -8
	st.w	$s8, $t0, -8
	ld.w	$a5, $s7, -4
	st.w	$a5, $t0, -4
	ld.w	$s3, $s7, 0
	st.w	$s3, $t0, 0
	ld.w	$t8, $s7, 4
	st.w	$t8, $t0, 4
	ld.w	$s4, $s7, 8
	add.d	$a6, $a6, $s0
	st.w	$a6, $t0, -12
	add.d	$a6, $s8, $s2
	st.w	$a6, $t0, -8
	add.d	$a5, $a5, $ra
	st.w	$a5, $t0, -4
	add.d	$a5, $s3, $s0
	st.w	$a5, $t0, 0
	add.d	$a5, $t8, $s2
	st.w	$a5, $t0, 4
	add.d	$a5, $s4, $ra
	st.w	$a5, $t0, 8
	ld.w	$a5, $t4, 0
	st.w	$a5, $t5, 0
	addi.d	$t3, $t3, 1
	addi.w	$a1, $a1, 1
	addi.d	$t5, $t5, 4
	addi.d	$t0, $t0, 24
	addi.d	$s7, $s7, 24
	addi.d	$t4, $t4, 4
	blt	$t3, $t2, .LBB10_23
# %bb.24:                               #   in Loop: Header=BB10_21 Depth=4
	move	$ra, $t7
	move	$s4, $fp
	b	.LBB10_20
.LBB10_25:
	move	$fp, $zero
	b	.LBB10_28
.LBB10_26:
	move	$a1, $zero
	move	$fp, $zero
                                        # implicit-def: $r23
.LBB10_27:                              # %while.end
	move	$a0, $s5
	pcaddu18i	$ra, %call36(hypre_BoxArraySetSize)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_BoxArrayDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	st.d	$s5, $a0, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.d	$s6, $a0, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.w	$s0, $a0, 0
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
.LBB10_28:                              # %if.end235
	st.w	$fp, $a4, 0
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
.Lfunc_end10:
	.size	hypre_StructGridPeriodicAllBoxes, .Lfunc_end10-hypre_StructGridPeriodicAllBoxes
                                        # -- End function
	.globl	hypre_StructGridPrint           # -- Begin function hypre_StructGridPrint
	.p2align	5
	.type	hypre_StructGridPrint,@function
hypre_StructGridPrint:                  # @hypre_StructGridPrint
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	move	$s0, $a1
	ld.w	$a2, $a1, 4
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s1, $a0, %pc_lo12(.L.str)
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s0, 8
	ld.w	$a2, $s2, 8
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 8
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB11_3
# %bb.1:                                # %for.body.preheader
	move	$s3, $zero
	move	$s0, $zero
	move	$s4, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s1, $a0, %pc_lo12(.L.str.1)
	.p2align	4, , 16
.LBB11_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	add.d	$a1, $a0, $s3
	ldx.w	$a3, $a0, $s3
	ld.w	$a4, $a1, 4
	ld.w	$a5, $a1, 8
	ld.w	$a6, $a1, 12
	ld.w	$a7, $a1, 16
	ld.w	$a0, $a1, 20
	st.d	$a0, $sp, 0
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 8
	addi.d	$s4, $s4, 1
	addi.w	$s0, $s0, 1
	addi.d	$s3, $s3, 24
	blt	$s4, $a0, .LBB11_2
.LBB11_3:                               # %for.end
	move	$a0, $zero
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end11:
	.size	hypre_StructGridPrint, .Lfunc_end11-hypre_StructGridPrint
                                        # -- End function
	.globl	hypre_StructGridRead            # -- Begin function hypre_StructGridRead
	.p2align	5
	.type	hypre_StructGridRead,@function
hypre_StructGridRead:                   # @hypre_StructGridRead
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
	move	$fp, $a2
	move	$s0, $a1
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s3, $a0, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 28
	move	$a0, $a1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$s4, $sp, 28
	ori	$a0, $zero, 72
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.w	$s2, $a0, 0
	st.w	$s4, $a0, 4
	move	$a0, $zero
	pcaddu18i	$ra, %call36(hypre_BoxArrayCreate)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 8
	vrepli.b	$vr0, 0
	vst	$vr0, $s1, 16
	ori	$a0, $zero, 2
	st.w	$a0, $s1, 32
	st.d	$zero, $s1, 40
	vst	$vr0, $s1, 48
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	st.d	$a0, $s1, 64
	addi.d	$a2, $sp, 24
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 24
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB12_3
# %bb.1:                                # %for.body.lr.ph
	move	$s7, $zero
	addi.d	$s2, $sp, 48
	addi.d	$s3, $sp, 52
	addi.d	$s4, $sp, 36
	addi.d	$s8, $sp, 40
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s5, $a0, %pc_lo12(.L.str.1)
	.p2align	4, , 16
.LBB12_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a2, $sp, 20
	addi.d	$a3, $sp, 44
	addi.d	$a6, $sp, 32
	st.d	$s8, $sp, 0
	move	$a0, $s0
	move	$a1, $s5
	move	$a4, $s2
	move	$a5, $s3
	move	$a7, $s4
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(hypre_BoxCreate)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	addi.d	$a1, $sp, 44
	addi.d	$a2, $sp, 32
	pcaddu18i	$ra, %call36(hypre_BoxSetExtents)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 8
	move	$a0, $s6
	pcaddu18i	$ra, %call36(hypre_AppendBox)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(hypre_BoxDestroy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 24
	addi.w	$s7, $s7, 1
	blt	$s7, $a0, .LBB12_2
.LBB12_3:                               # %for.end
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_StructGridAssemble)
	jirl	$ra, $ra, 0
	st.d	$s1, $fp, 0
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
	.size	hypre_StructGridRead, .Lfunc_end12-hypre_StructGridRead
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d\n"
	.size	.L.str, 4

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"%d:  (%d, %d, %d)  x  (%d, %d, %d)\n"
	.size	.L.str.1, 36

	.section	".note.GNU-stack","",@progbits
	.addrsig
