	.file	"smg2_setup_rap.c"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function hypre_SMG2CreateRAPOp
.LCPI0_0:
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	4294967295                      # 0xffffffff
.LCPI0_1:
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_2:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.text
	.globl	hypre_SMG2CreateRAPOp
	.p2align	5
	.type	hypre_SMG2CreateRAPOp,@function
hypre_SMG2CreateRAPOp:                  # @hypre_SMG2CreateRAPOp
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	move	$fp, $a1
	pcalau12i	$a0, %pc_hi20(.L__const.hypre_SMG2CreateRAPOp.RAP_num_ghost)
	addi.d	$a0, $a0, %pc_lo12(.L__const.hypre_SMG2CreateRAPOp.RAP_num_ghost)
	ld.d	$a1, $a0, 16
	vld	$vr0, $a0, 0
	ld.w	$a0, $fp, 72
	move	$s0, $a3
	st.d	$a1, $sp, 24
	vst	$vr0, $sp, 8
	beqz	$a0, .LBB0_2
# %bb.1:                                # %for.inc34.2.1
	ori	$a0, $zero, 5
	ori	$a1, $zero, 12
	ori	$s1, $zero, 5
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	xvld	$xr0, $a1, %pc_lo12(.LCPI0_0)
	move	$a2, $a0
	xvst	$xr0, $a0, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	st.d	$a0, $a2, 32
	vrepli.b	$vr0, 0
	vst	$vr0, $a2, 40
	st.w	$zero, $a2, 56
	b	.LBB0_3
.LBB0_2:                                # %if.then
	ori	$a0, $zero, 9
	ori	$a1, $zero, 12
	ori	$s1, $zero, 9
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	xvld	$xr0, $a1, %pc_lo12(.LCPI0_0)
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	xvld	$xr1, $a0, %pc_lo12(.LCPI0_1)
	xvst	$xr0, $a2, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $a2, 40
	xvst	$xr1, $a2, 60
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_2)
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	st.d	$a0, $a2, 32
	st.w	$zero, $a2, 56
	vst	$vr0, $a2, 92
.LBB0_3:                                # %if.end40
	ori	$a0, $zero, 2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructStencilCreate)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	move	$s1, $a0
	move	$a0, $a1
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixCreate)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_StructStencilDestroy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 72
	st.w	$a0, $s0, 72
	beqz	$a0, .LBB0_5
# %bb.4:                                # %if.then48
	st.w	$zero, $sp, 12
	st.w	$zero, $sp, 20
.LBB0_5:                                # %if.end51
	addi.d	$a1, $sp, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixSetNumGhost)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end0:
	.size	hypre_SMG2CreateRAPOp, .Lfunc_end0-hypre_SMG2CreateRAPOp
                                        # -- End function
	.globl	hypre_SMG2BuildRAPSym           # -- Begin function hypre_SMG2BuildRAPSym
	.p2align	5
	.type	hypre_SMG2BuildRAPSym,@function
hypre_SMG2BuildRAPSym:                  # @hypre_SMG2BuildRAPSym
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -1008
	st.d	$ra, $sp, 1000                  # 8-byte Folded Spill
	st.d	$fp, $sp, 992                   # 8-byte Folded Spill
	st.d	$s0, $sp, 984                   # 8-byte Folded Spill
	st.d	$s1, $sp, 976                   # 8-byte Folded Spill
	st.d	$s2, $sp, 968                   # 8-byte Folded Spill
	st.d	$s3, $sp, 960                   # 8-byte Folded Spill
	st.d	$s4, $sp, 952                   # 8-byte Folded Spill
	st.d	$s5, $sp, 944                   # 8-byte Folded Spill
	st.d	$s6, $sp, 936                   # 8-byte Folded Spill
	st.d	$s7, $sp, 928                   # 8-byte Folded Spill
	st.d	$s8, $sp, 920                   # 8-byte Folded Spill
	st.d	$a3, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a3, $a3, 8
	ld.d	$a7, $a3, 8
	ld.w	$a6, $a7, 8
	ori	$t0, $zero, 1
	st.d	$a5, $sp, 104                   # 8-byte Folded Spill
	st.d	$a4, $sp, 56                    # 8-byte Folded Spill
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	blt	$a6, $t0, .LBB1_139
# %bb.1:                                # %while.cond.preheader.lr.ph
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a1, 8
	ld.d	$a1, $a1, 24
	move	$a4, $zero
	move	$a5, $zero
	ld.d	$a0, $a0, 16
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a0, $a3, 16
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.w	$a0, $a1, 8
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ori	$a0, $zero, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
	st.d	$a7, $sp, 32                    # 8-byte Folded Spill
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_2:                                # %for.inc1649
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a7, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a0, $a7, 8
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 1
	ld.d	$a5, $sp, 72                    # 8-byte Folded Reload
	bge	$a4, $a0, .LBB1_139
.LBB1_3:                                # %while.cond.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
                                        #     Child Loop BB1_133 Depth 2
                                        #       Child Loop BB1_135 Depth 3
                                        #         Child Loop BB1_136 Depth 4
                                        #     Child Loop BB1_13 Depth 2
                                        #       Child Loop BB1_16 Depth 3
                                        #         Child Loop BB1_113 Depth 4
                                        #         Child Loop BB1_121 Depth 4
	slli.d	$a0, $a4, 2
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	addi.d	$s1, $a5, -1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$a1, $a5, $a1, 2
	slli.d	$a2, $a5, 4
	alsl.d	$a2, $a5, $a2, 3
	addi.d	$a3, $a5, -1
	addi.d	$fp, $a2, -12
	.p2align	4, , 16
.LBB1_4:                                # %while.cond
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a1, 0
	addi.w	$a3, $a3, 1
	addi.w	$s1, $s1, 1
	addi.d	$a1, $a1, 4
	addi.d	$fp, $fp, 24
	bne	$a2, $a0, .LBB1_4
# %bb.5:                                # %while.end
                                        #   in Loop: Header=BB1_3 Depth=1
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $a7, 0
	slli.d	$a1, $a4, 4
	st.d	$a4, $sp, 152                   # 8-byte Folded Spill
	alsl.d	$s2, $a4, $a1, 3
	add.d	$a0, $a0, $s2
	addi.d	$a3, $sp, 896
	st.d	$a0, $sp, 848                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMapCoarseToFine)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $s3, 40
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $s6, 40
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a2, $s5, 40
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 40
	ld.d	$a4, $a0, 0
	ld.d	$a5, $a1, 0
	ld.d	$a1, $a2, 0
	ld.d	$a0, $a3, 0
	st.d	$a4, $sp, 864                   # 8-byte Folded Spill
	add.d	$s4, $a4, $fp
	st.d	$a5, $sp, 840                   # 8-byte Folded Spill
	add.d	$s0, $a5, $fp
	st.d	$a1, $sp, 856                   # 8-byte Folded Spill
	add.d	$s7, $a1, $fp
	add.d	$a0, $a0, $s2
	st.d	$a0, $sp, 872                   # 8-byte Folded Spill
	ld.d	$s2, $sp, 80                    # 8-byte Folded Reload
	st.d	$s2, $sp, 908
	st.w	$zero, $sp, 916
	addi.d	$a2, $sp, 908
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	st.d	$s8, $sp, 908
	st.w	$zero, $sp, 916
	addi.d	$a2, $sp, 908
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 832                   # 8-byte Folded Spill
	st.d	$s2, $sp, 908
	st.w	$zero, $sp, 916
	addi.d	$a2, $sp, 908
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 688                   # 8-byte Folded Spill
	st.d	$s8, $sp, 908
	st.w	$zero, $sp, 916
	addi.d	$a2, $sp, 908
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 680                   # 8-byte Folded Spill
	st.d	$zero, $sp, 908
	st.w	$zero, $sp, 916
	addi.d	$a2, $sp, 908
	move	$a0, $s3
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	addi.w	$s5, $zero, -1
	st.d	$a0, $sp, 720                   # 8-byte Folded Spill
	move	$s6, $s5
	lu32i.d	$s6, 0
	st.d	$s6, $sp, 908
	st.w	$zero, $sp, 916
	addi.d	$a2, $sp, 908
	move	$a0, $s3
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 712                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 908
	st.w	$zero, $sp, 916
	addi.d	$a2, $sp, 908
	move	$a0, $s3
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 824                   # 8-byte Folded Spill
	st.d	$s8, $sp, 908
	st.w	$zero, $sp, 916
	addi.d	$a2, $sp, 908
	move	$a0, $s3
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 704                   # 8-byte Folded Spill
	st.d	$s2, $sp, 908
	st.w	$zero, $sp, 916
	addi.d	$a2, $sp, 908
	move	$a0, $s3
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 696                   # 8-byte Folded Spill
	ori	$s3, $zero, 1
	lu32i.d	$s3, -1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ori	$a1, $zero, 6
	blt	$a0, $a1, .LBB1_7
# %bb.6:                                # %if.then
                                        #   in Loop: Header=BB1_3 Depth=1
	st.d	$s5, $sp, 908
	st.w	$zero, $sp, 916
	addi.d	$a2, $sp, 908
	ld.d	$s8, $sp, 64                    # 8-byte Folded Reload
	move	$a0, $s8
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 512                   # 8-byte Folded Spill
	st.d	$s3, $sp, 908
	st.w	$zero, $sp, 916
	addi.d	$a2, $sp, 908
	move	$a0, $s8
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 504                   # 8-byte Folded Spill
	move	$a0, $s5
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 908
	st.w	$zero, $sp, 916
	addi.d	$a2, $sp, 908
	move	$a0, $s8
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 496                   # 8-byte Folded Spill
.LBB1_7:                                # %if.end
                                        #   in Loop: Header=BB1_3 Depth=1
	st.d	$zero, $sp, 908
	st.w	$zero, $sp, 916
	addi.d	$a2, $sp, 908
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	move	$a0, $s1
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 672                   # 8-byte Folded Spill
	st.d	$s6, $sp, 908
	st.w	$zero, $sp, 916
	addi.d	$a2, $sp, 908
	move	$a0, $s1
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 664                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	st.d	$a0, $sp, 908
	st.w	$zero, $sp, 916
	addi.d	$a2, $sp, 908
	move	$a0, $s1
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 656                   # 8-byte Folded Spill
	st.d	$s5, $sp, 908
	st.w	$zero, $sp, 916
	addi.d	$a2, $sp, 908
	move	$a0, $s1
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 648                   # 8-byte Folded Spill
	st.d	$s3, $sp, 908
	st.w	$zero, $sp, 916
	addi.d	$a2, $sp, 908
	move	$a0, $s1
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.d	$a1, $sp, 908
	st.w	$zero, $sp, 916
	ld.d	$s6, $sp, 864                   # 8-byte Folded Reload
	ldx.w	$a1, $s6, $fp
	ld.w	$a2, $s4, -12
	st.d	$a0, $sp, 640                   # 8-byte Folded Spill
	sub.w	$a0, $a1, $a2
	slt	$a1, $s5, $a0
	maskeqz	$a0, $a0, $a1
	ld.d	$s8, $sp, 840                   # 8-byte Folded Reload
	ldx.w	$a2, $s8, $fp
	ld.w	$a3, $s0, -12
	masknez	$a1, $s5, $a1
	or	$a0, $a0, $a1
	addi.w	$s2, $a0, 1
	sub.w	$a0, $a2, $a3
	slt	$a1, $s5, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s5, $a1
	or	$a0, $a0, $a1
	addi.w	$s1, $a0, 1
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 908
	st.w	$zero, $sp, 916
	addi.d	$a1, $sp, 884
	ld.d	$s3, $sp, 848                   # 8-byte Folded Reload
	move	$a0, $s3
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 0
	ld.w	$a3, $s0, -12
	ld.w	$a1, $s3, 4
	ld.w	$a4, $s0, -8
	ld.w	$a2, $s3, 8
	ld.w	$a5, $s0, -4
	ld.w	$a6, $s0, 4
	sub.d	$a7, $a0, $a3
	sub.d	$t0, $a1, $a4
	sub.d	$a5, $a2, $a5
	sub.w	$a4, $a6, $a4
	slt	$a6, $s5, $a4
	maskeqz	$a4, $a4, $a6
	masknez	$a6, $s5, $a6
	or	$a4, $a4, $a6
	ldx.w	$a6, $s8, $fp
	addi.d	$t1, $a4, 1
	mul.d	$a4, $t1, $a5
	add.d	$a4, $t0, $a4
	sub.w	$a3, $a6, $a3
	slt	$a5, $s5, $a3
	maskeqz	$a3, $a3, $a5
	masknez	$a5, $s5, $a5
	or	$a3, $a3, $a5
	addi.d	$a3, $a3, 1
	st.d	$a3, $sp, 760                   # 8-byte Folded Spill
	mul.d	$a3, $a4, $a3
	add.w	$s3, $a7, $a3
	ld.w	$a3, $s7, -12
	ld.w	$a4, $s7, -8
	ld.w	$a5, $s7, -4
	ld.w	$a6, $s7, 4
	sub.d	$a7, $a0, $a3
	sub.d	$t0, $a1, $a4
	sub.d	$a5, $a2, $a5
	sub.w	$a4, $a6, $a4
	slt	$a6, $s5, $a4
	maskeqz	$a4, $a4, $a6
	masknez	$a6, $s5, $a6
	or	$a4, $a4, $a6
	ld.d	$a6, $sp, 856                   # 8-byte Folded Reload
	ldx.w	$a6, $a6, $fp
	addi.d	$t2, $a4, 1
	mul.d	$a4, $t2, $a5
	add.d	$a4, $t0, $a4
	sub.w	$a3, $a6, $a3
	slt	$a5, $s5, $a3
	maskeqz	$a3, $a3, $a5
	masknez	$a5, $s5, $a5
	or	$a3, $a3, $a5
	addi.d	$a3, $a3, 1
	st.d	$a3, $sp, 752                   # 8-byte Folded Spill
	mul.d	$a3, $a4, $a3
	add.w	$ra, $a7, $a3
	ld.w	$a3, $sp, 896
	ld.w	$a4, $s4, -12
	ld.w	$a5, $sp, 900
	ld.w	$a6, $s4, -8
	ld.w	$a7, $sp, 904
	ld.w	$t0, $s4, -4
	ld.w	$t3, $s4, 4
	sub.d	$a3, $a3, $a4
	sub.d	$a5, $a5, $a6
	sub.d	$a7, $a7, $t0
	sub.w	$a6, $t3, $a6
	slt	$t0, $s5, $a6
	maskeqz	$a6, $a6, $t0
	masknez	$t0, $s5, $t0
	or	$a6, $a6, $t0
	ldx.w	$t0, $s6, $fp
	addi.d	$a6, $a6, 1
	mul.d	$a7, $a6, $a7
	add.d	$a5, $a5, $a7
	sub.w	$a4, $t0, $a4
	slt	$a7, $s5, $a4
	maskeqz	$a4, $a4, $a7
	masknez	$a7, $s5, $a7
	or	$a4, $a4, $a7
	addi.d	$a4, $a4, 1
	mul.d	$a5, $a5, $a4
	add.w	$fp, $a3, $a5
	ld.d	$t3, $sp, 872                   # 8-byte Folded Reload
	ld.w	$a3, $t3, 0
	ld.w	$a5, $t3, 4
	ld.w	$a7, $t3, 8
	ld.w	$t0, $t3, 16
	sub.d	$a0, $a0, $a3
	sub.d	$a1, $a1, $a5
	sub.d	$a2, $a2, $a7
	sub.w	$a5, $t0, $a5
	slt	$a7, $s5, $a5
	maskeqz	$a5, $a5, $a7
	masknez	$a7, $s5, $a7
	or	$a5, $a5, $a7
	ld.w	$a7, $t3, 12
	addi.d	$t4, $a5, 1
	mul.d	$a2, $t4, $a2
	add.d	$a1, $a1, $a2
	sub.w	$a2, $a7, $a3
	slt	$a3, $s5, $a2
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $s5, $a3
	or	$a2, $a2, $a3
	addi.d	$a2, $a2, 1
	st.d	$a2, $sp, 744                   # 8-byte Folded Spill
	mul.d	$a1, $a1, $a2
	add.w	$s8, $a0, $a1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a7, $a1, 0
	ld.w	$a0, $a1, 4
	ld.w	$a1, $a1, 8
	ld.w	$a2, $sp, 884
	st.d	$a2, $sp, 600                   # 8-byte Folded Spill
	ld.w	$a2, $sp, 888
	st.d	$a2, $sp, 624                   # 8-byte Folded Spill
	ld.w	$a2, $sp, 892
	mul.d	$t5, $a0, $a4
	mulw.d.w	$a0, $a4, $a6
	mul.d	$t3, $a0, $a1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ori	$a1, $zero, 5
	st.d	$a7, $sp, 800                   # 8-byte Folded Spill
	st.d	$a2, $sp, 192                   # 8-byte Folded Spill
	ori	$a5, $zero, 1
	bne	$a0, $a1, .LBB1_128
# %bb.8:                                # %sw.bb
                                        #   in Loop: Header=BB1_3 Depth=1
	blt	$a2, $a5, .LBB1_2
# %bb.9:                                # %for.cond754.preheader.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 624                   # 8-byte Folded Reload
	blt	$a0, $a5, .LBB1_2
# %bb.10:                               # %for.cond754.preheader.us.preheader
                                        #   in Loop: Header=BB1_3 Depth=1
	st.d	$zero, $sp, 200                 # 8-byte Folded Spill
	ld.d	$t6, $sp, 600                   # 8-byte Folded Reload
	mul.d	$a0, $t6, $a7
	ld.d	$t0, $sp, 760                   # 8-byte Folded Reload
	sub.d	$a3, $t0, $t6
	ld.d	$t7, $sp, 752                   # 8-byte Folded Reload
	sub.d	$a4, $t7, $t6
	sub.d	$a6, $t5, $a0
	ld.d	$t8, $sp, 744                   # 8-byte Folded Reload
	sub.d	$a7, $t8, $t6
	ld.d	$a2, $sp, 624                   # 8-byte Folded Reload
	sub.d	$a1, $t1, $a2
	mul.d	$a1, $a1, $t0
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	sub.d	$a1, $t2, $a2
	mul.d	$a1, $a1, $t7
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	mul.d	$a1, $a2, $t5
	sub.d	$a1, $t3, $a1
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	sub.d	$a1, $t4, $a2
	mul.d	$a1, $a1, $t8
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	addi.d	$a1, $a2, -1
	st.d	$a3, $sp, 488                   # 8-byte Folded Spill
	mul.d	$a2, $a3, $a1
	add.d	$a2, $t0, $a2
	sub.d	$a2, $a2, $t6
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	st.d	$a4, $sp, 480                   # 8-byte Folded Spill
	mul.d	$a2, $a4, $a1
	add.d	$a2, $t7, $a2
	sub.d	$a2, $a2, $t6
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	st.d	$a6, $sp, 472                   # 8-byte Folded Spill
	mul.d	$a2, $a6, $a1
	add.d	$a2, $a2, $t5
	sub.d	$a0, $a2, $a0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	st.d	$a7, $sp, 464                   # 8-byte Folded Spill
	mul.d	$a0, $a7, $a1
	add.d	$a0, $t8, $a0
	sub.d	$a0, $a0, $t6
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	bstrpick.d	$t1, $s2, 31, 0
	bstrpick.d	$a0, $s1, 31, 0
	addi.d	$a1, $t6, -1
	bstrpick.d	$a1, $a1, 31, 0
	ld.d	$a2, $sp, 648                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a2, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 408                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 656                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a2, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 400                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 640                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a2, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 392                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 664                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a2, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 384                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 672                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a2, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 376                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 680                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a2, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 368                   # 8-byte Folded Spill
	ld.d	$a7, $sp, 712                   # 8-byte Folded Reload
	addi.d	$a2, $a7, 8
	alsl.d	$t8, $a1, $a2, 3
	ori	$a3, $zero, 27
	sltu	$a3, $a3, $t6
	ld.d	$a4, $sp, 800                   # 8-byte Folded Reload
	addi.d	$a4, $a4, -1
	sltui	$a4, $a4, 1
	and	$a3, $a3, $a4
	st.d	$a3, $sp, 448                   # 8-byte Folded Spill
	sub.d	$a3, $a1, $t1
	alsl.d	$a2, $a3, $a2, 3
	st.d	$a2, $sp, 360                   # 8-byte Folded Spill
	ld.d	$t2, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $t2, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 352                   # 8-byte Folded Spill
	slli.d	$a2, $a0, 3
	sub.d	$a0, $a1, $a0
	alsl.d	$a0, $a0, $t2, 3
	addi.d	$a0, $a0, 16
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	ld.d	$a6, $sp, 720                   # 8-byte Folded Reload
	addi.d	$a0, $a6, 8
	alsl.d	$a4, $a1, $a0, 3
	st.d	$a4, $sp, 336                   # 8-byte Folded Spill
	alsl.d	$a0, $a3, $a0, 3
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 704                   # 8-byte Folded Reload
	addi.d	$a0, $t0, 8
	alsl.d	$a4, $a1, $a0, 3
	st.d	$a4, $sp, 320                   # 8-byte Folded Spill
	alsl.d	$a0, $a3, $a0, 3
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	st.d	$t1, $sp, 584                   # 8-byte Folded Spill
	slli.d	$a0, $t1, 3
	ld.d	$t1, $sp, 824                   # 8-byte Folded Reload
	sub.d	$a4, $t1, $a0
	st.d	$a4, $sp, 576                   # 8-byte Folded Spill
	alsl.d	$a4, $a3, $t1, 3
	addi.d	$a4, $a4, 8
	st.d	$a4, $sp, 304                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 832                   # 8-byte Folded Reload
	addi.d	$a4, $t1, -8
	st.d	$a4, $sp, 568                   # 8-byte Folded Spill
	alsl.d	$a4, $a1, $t1, 3
	addi.d	$a4, $a4, 8
	st.d	$a4, $sp, 296                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 696                   # 8-byte Folded Reload
	addi.d	$a4, $t1, 8
	alsl.d	$a3, $a3, $a4, 3
	st.d	$a3, $sp, 288                   # 8-byte Folded Spill
	alsl.d	$a3, $a1, $a4, 3
	st.d	$a3, $sp, 280                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 688                   # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a3, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 272                   # 8-byte Folded Spill
	sub.d	$a1, $a7, $a0
	st.d	$a1, $sp, 560                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 800                   # 8-byte Folded Reload
	sub.d	$a3, $a6, $a0
	st.d	$a3, $sp, 552                   # 8-byte Folded Spill
	sub.d	$a3, $t0, $a0
	st.d	$a3, $sp, 544                   # 8-byte Folded Spill
	sub.d	$a0, $t1, $a0
	st.d	$a0, $sp, 536                   # 8-byte Folded Spill
	bstrpick.d	$a3, $t6, 31, 0
	bstrpick.d	$a0, $a3, 30, 2
	slli.d	$a4, $a0, 2
	st.d	$a3, $sp, 240                   # 8-byte Folded Spill
	slli.d	$a0, $a3, 3
	bstrpick.d	$a0, $a0, 33, 5
	slli.d	$a0, $a0, 5
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	addi.d	$a0, $t2, -8
	st.d	$a0, $sp, 528                   # 8-byte Folded Spill
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 520                   # 8-byte Folded Spill
	sub.d	$a0, $t2, $a2
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	st.d	$a4, $sp, 264                   # 8-byte Folded Spill
	mul.d	$a0, $a4, $a1
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	slli.d	$a0, $a1, 5
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	slli.d	$s0, $a1, 3
	st.d	$t8, $sp, 456                   # 8-byte Folded Spill
	st.d	$s0, $sp, 256                   # 8-byte Folded Spill
	b	.LBB1_13
	.p2align	4, , 16
.LBB1_11:                               # %for.cond757.preheader.us801.preheader
                                        #   in Loop: Header=BB1_13 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	add.d	$s3, $a0, $s3
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	add.d	$ra, $a0, $ra
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	add.d	$fp, $a0, $fp
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	add.d	$s8, $a0, $s8
.LBB1_12:                               # %for.cond754.for.end887_crit_edge.us
                                        #   in Loop: Header=BB1_13 Depth=2
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	add.w	$s3, $s3, $a0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	add.w	$ra, $ra, $a0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	add.w	$fp, $a0, $fp
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	add.w	$s8, $s8, $a0
	ori	$a5, $zero, 1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	beq	$a1, $a0, .LBB1_2
.LBB1_13:                               # %for.cond754.preheader.us
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_16 Depth 3
                                        #         Child Loop BB1_113 Depth 4
                                        #         Child Loop BB1_121 Depth 4
	ld.d	$a0, $sp, 600                   # 8-byte Folded Reload
	blt	$a0, $a5, .LBB1_11
# %bb.14:                               # %for.cond757.preheader.us.us.preheader
                                        #   in Loop: Header=BB1_13 Depth=2
	move	$s2, $zero
	b	.LBB1_16
	.p2align	4, , 16
.LBB1_15:                               # %for.cond757.for.end_crit_edge.us.us
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	add.w	$s3, $a0, $t6
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	add.w	$ra, $a0, $ra
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	add.w	$fp, $a0, $fp
	ld.d	$s2, $sp, 608                   # 8-byte Folded Reload
	addi.w	$s2, $s2, 1
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	add.w	$s8, $a0, $s8
	ld.d	$a0, $sp, 624                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 456                   # 8-byte Folded Reload
	move	$s0, $t4
	beq	$s2, $a0, .LBB1_12
.LBB1_16:                               # %for.cond757.preheader.us.us
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_13 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_113 Depth 4
                                        #         Child Loop BB1_121 Depth 4
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	st.d	$s2, $sp, 608                   # 8-byte Folded Spill
	beqz	$a0, .LBB1_115
# %bb.17:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 648                   # 8-byte Folded Reload
	alsl.d	$t0, $s8, $a0, 3
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	alsl.d	$a4, $s8, $a0, 3
	ld.d	$a0, $sp, 656                   # 8-byte Folded Reload
	alsl.d	$t1, $s8, $a0, 3
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$t3, $s8, $a0, 3
	sltu	$a0, $t0, $t3
	sltu	$a1, $t1, $a4
	and	$a0, $a0, $a1
	move	$s1, $zero
	ld.d	$a3, $sp, 720                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 712                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 704                   # 8-byte Folded Reload
	bnez	$a0, .LBB1_116
# %bb.18:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 640                   # 8-byte Folded Reload
	alsl.d	$t2, $s8, $a0, 3
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	alsl.d	$a6, $s8, $a0, 3
	sltu	$a0, $t0, $a6
	sltu	$a1, $t2, $a4
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_116
# %bb.19:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	st.d	$ra, $sp, 792                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 664                   # 8-byte Folded Reload
	alsl.d	$t7, $s8, $a0, 3
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$t4, $s8, $a0, 3
	sltu	$a0, $t0, $t4
	sltu	$a1, $t7, $a4
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_122
# %bb.20:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 672                   # 8-byte Folded Reload
	alsl.d	$ra, $s8, $a0, 3
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$t6, $s8, $a0, 3
	sltu	$a0, $t0, $t6
	sltu	$a1, $ra, $a4
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_122
# %bb.21:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 680                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 792                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a0, 3
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 3
	move	$s5, $a0
	sltu	$a0, $t0, $a0
	st.d	$a2, $sp, 864                   # 8-byte Folded Spill
	sltu	$a1, $a2, $a4
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_122
# %bb.22:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 584                   # 8-byte Folded Reload
	add.d	$a0, $a0, $fp
	alsl.d	$a2, $a0, $a7, 3
	alsl.d	$a1, $a0, $t8, 3
	move	$s4, $a1
	sltu	$a1, $t0, $a1
	st.d	$a2, $sp, 440                   # 8-byte Folded Spill
	sltu	$a2, $a2, $a4
	and	$a1, $a1, $a2
	bnez	$a1, .LBB1_122
# %bb.23:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	alsl.d	$a2, $fp, $a7, 3
	alsl.d	$a1, $fp, $t8, 3
	st.d	$a1, $sp, 424                   # 8-byte Folded Spill
	sltu	$a1, $t0, $a1
	st.d	$a2, $sp, 432                   # 8-byte Folded Spill
	sltu	$a2, $a2, $a4
	and	$a1, $a1, $a2
	bnez	$a1, .LBB1_122
# %bb.24:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 560                   # 8-byte Folded Reload
	alsl.d	$a2, $fp, $a1, 3
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	alsl.d	$a1, $fp, $a1, 3
	move	$t8, $a1
	sltu	$a1, $t0, $a1
	st.d	$a2, $sp, 856                   # 8-byte Folded Spill
	sltu	$a2, $a2, $a4
	and	$a1, $a1, $a2
	ld.d	$a7, $sp, 336                   # 8-byte Folded Reload
	bnez	$a1, .LBB1_122
# %bb.25:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 528                   # 8-byte Folded Reload
	alsl.d	$a2, $s3, $a1, 3
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	alsl.d	$a1, $s3, $a1, 3
	st.d	$a1, $sp, 872                   # 8-byte Folded Spill
	sltu	$a1, $t0, $a1
	st.d	$a2, $sp, 592                   # 8-byte Folded Spill
	sltu	$a2, $a2, $a4
	and	$a1, $a1, $a2
	bnez	$a1, .LBB1_122
# %bb.26:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 520                   # 8-byte Folded Reload
	alsl.d	$a2, $s3, $a1, 3
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	alsl.d	$a1, $s3, $a1, 3
	st.d	$a1, $sp, 832                   # 8-byte Folded Spill
	sltu	$a1, $t0, $a1
	st.d	$a2, $sp, 840                   # 8-byte Folded Spill
	sltu	$a2, $a2, $a4
	and	$a1, $a1, $a2
	bnez	$a1, .LBB1_122
# %bb.27:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	alsl.d	$a2, $a0, $a3, 3
	alsl.d	$a1, $a0, $a7, 3
	st.d	$a1, $sp, 824                   # 8-byte Folded Spill
	sltu	$a1, $t0, $a1
	st.d	$a2, $sp, 848                   # 8-byte Folded Spill
	sltu	$a2, $a2, $a4
	and	$a1, $a1, $a2
	bnez	$a1, .LBB1_122
# %bb.28:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	st.d	$s8, $sp, 784                   # 8-byte Folded Spill
	alsl.d	$s7, $fp, $a3, 3
	alsl.d	$a1, $fp, $a7, 3
	st.d	$a1, $sp, 816                   # 8-byte Folded Spill
	sltu	$a1, $t0, $a1
	sltu	$a2, $s7, $a4
	and	$a1, $a1, $a2
	bnez	$a1, .LBB1_123
# %bb.29:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 552                   # 8-byte Folded Reload
	alsl.d	$s8, $fp, $a1, 3
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	alsl.d	$a1, $fp, $a1, 3
	st.d	$a1, $sp, 808                   # 8-byte Folded Spill
	sltu	$a1, $t0, $a1
	sltu	$a2, $s8, $a4
	and	$a1, $a1, $a2
	bnez	$a1, .LBB1_123
# %bb.30:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	st.d	$s1, $sp, 416                   # 8-byte Folded Spill
	alsl.d	$s6, $a0, $t5, 3
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a2, 3
	st.d	$a0, $sp, 768                   # 8-byte Folded Spill
	sltu	$a0, $t0, $a0
	sltu	$a1, $s6, $a4
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_124
# %bb.31:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	alsl.d	$s1, $fp, $t5, 3
	alsl.d	$a0, $fp, $a2, 3
	st.d	$a0, $sp, 760                   # 8-byte Folded Spill
	sltu	$a0, $t0, $a0
	sltu	$a1, $s1, $a4
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_124
# %bb.32:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	st.d	$s3, $sp, 776                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$a2, $fp, $a0, 3
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	alsl.d	$a0, $fp, $a0, 3
	st.d	$a0, $sp, 752                   # 8-byte Folded Spill
	sltu	$a0, $t0, $a0
	sltu	$a1, $a2, $a4
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_125
# %bb.33:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 576                   # 8-byte Folded Reload
	alsl.d	$t5, $fp, $a0, 3
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	alsl.d	$a0, $fp, $a0, 3
	st.d	$a0, $sp, 744                   # 8-byte Folded Spill
	sltu	$a0, $t0, $a0
	sltu	$a1, $t5, $a4
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_125
# %bb.34:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	st.d	$fp, $sp, 616                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 568                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 776                   # 8-byte Folded Reload
	alsl.d	$s0, $a1, $a0, 3
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 3
	st.d	$a0, $sp, 736                   # 8-byte Folded Spill
	sltu	$a0, $t0, $a0
	sltu	$a1, $s0, $a4
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.35:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 688                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 792                   # 8-byte Folded Reload
	alsl.d	$s2, $a1, $a0, 3
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 3
	move	$a5, $a0
	sltu	$a0, $t0, $a0
	sltu	$a1, $s2, $a4
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.36:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	move	$a7, $s5
	move	$s5, $t8
	ld.d	$a0, $sp, 696                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 616                   # 8-byte Folded Reload
	alsl.d	$t8, $fp, $a0, 3
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	alsl.d	$a0, $fp, $a0, 3
	st.d	$a0, $sp, 728                   # 8-byte Folded Spill
	sltu	$a0, $t0, $a0
	sltu	$a1, $t8, $a4
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_127
# %bb.37:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	move	$s3, $s4
	ld.d	$a0, $sp, 536                   # 8-byte Folded Reload
	alsl.d	$s4, $fp, $a0, 3
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	alsl.d	$a0, $fp, $a0, 3
	st.d	$a0, $sp, 632                   # 8-byte Folded Spill
	sltu	$a0, $t0, $a0
	sltu	$a1, $s4, $a4
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.38:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	sltu	$a0, $t1, $a6
	sltu	$a1, $t2, $t3
	and	$a0, $a0, $a1
	ld.d	$a3, $sp, 440                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 432                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 424                   # 8-byte Folded Reload
	bnez	$a0, .LBB1_117
# %bb.39:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	sltu	$a0, $t1, $t4
	sltu	$a1, $t7, $t3
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.40:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	sltu	$a0, $t1, $t6
	sltu	$a1, $ra, $t3
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.41:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	sltu	$a0, $t1, $a7
	ld.d	$a1, $sp, 864                   # 8-byte Folded Reload
	sltu	$a1, $a1, $t3
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.42:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	sltu	$a0, $t1, $s3
	sltu	$a1, $a3, $t3
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.43:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	sltu	$a0, $t1, $fp
	sltu	$a1, $a4, $t3
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.44:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	sltu	$a0, $t1, $s5
	ld.d	$a1, $sp, 856                   # 8-byte Folded Reload
	sltu	$a1, $a1, $t3
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.45:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 872                   # 8-byte Folded Reload
	sltu	$a0, $t1, $a0
	ld.d	$a1, $sp, 592                   # 8-byte Folded Reload
	sltu	$a1, $a1, $t3
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.46:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 832                   # 8-byte Folded Reload
	sltu	$a0, $t1, $a0
	ld.d	$a1, $sp, 840                   # 8-byte Folded Reload
	sltu	$a1, $a1, $t3
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.47:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 824                   # 8-byte Folded Reload
	sltu	$a0, $t1, $a0
	ld.d	$a1, $sp, 848                   # 8-byte Folded Reload
	sltu	$a1, $a1, $t3
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.48:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 816                   # 8-byte Folded Reload
	sltu	$a0, $t1, $a0
	sltu	$a1, $s7, $t3
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.49:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 808                   # 8-byte Folded Reload
	sltu	$a0, $t1, $a0
	sltu	$a1, $s8, $t3
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.50:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 768                   # 8-byte Folded Reload
	sltu	$a0, $t1, $a0
	sltu	$a1, $s6, $t3
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.51:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 760                   # 8-byte Folded Reload
	sltu	$a0, $t1, $a0
	sltu	$a1, $s1, $t3
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.52:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 752                   # 8-byte Folded Reload
	sltu	$a0, $t1, $a0
	sltu	$a1, $a2, $t3
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.53:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 744                   # 8-byte Folded Reload
	sltu	$a0, $t1, $a0
	sltu	$a1, $t5, $t3
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.54:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 736                   # 8-byte Folded Reload
	sltu	$a0, $t1, $a0
	sltu	$a1, $s0, $t3
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.55:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	sltu	$a0, $t1, $a5
	sltu	$a1, $s2, $t3
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.56:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 728                   # 8-byte Folded Reload
	sltu	$a0, $t1, $a0
	sltu	$a1, $t8, $t3
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.57:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 632                   # 8-byte Folded Reload
	sltu	$a0, $t1, $a0
	sltu	$a1, $s4, $t3
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.58:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	sltu	$a0, $t2, $t4
	sltu	$a1, $t7, $a6
	and	$a0, $a0, $a1
	ld.d	$t3, $sp, 592                   # 8-byte Folded Reload
	bnez	$a0, .LBB1_117
# %bb.59:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	sltu	$a0, $t2, $t6
	sltu	$a1, $ra, $a6
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.60:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	sltu	$a0, $t2, $a7
	ld.d	$a1, $sp, 864                   # 8-byte Folded Reload
	sltu	$a1, $a1, $a6
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.61:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	sltu	$a0, $t2, $s3
	sltu	$a1, $a3, $a6
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.62:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	sltu	$a0, $t2, $fp
	sltu	$a1, $a4, $a6
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.63:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	sltu	$a0, $t2, $s5
	ld.d	$a1, $sp, 856                   # 8-byte Folded Reload
	sltu	$a1, $a1, $a6
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.64:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 872                   # 8-byte Folded Reload
	sltu	$a0, $t2, $a0
	sltu	$a1, $t3, $a6
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.65:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 832                   # 8-byte Folded Reload
	sltu	$a0, $t2, $a0
	ld.d	$a1, $sp, 840                   # 8-byte Folded Reload
	sltu	$a1, $a1, $a6
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.66:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 824                   # 8-byte Folded Reload
	sltu	$a0, $t2, $a0
	ld.d	$a1, $sp, 848                   # 8-byte Folded Reload
	sltu	$a1, $a1, $a6
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.67:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 816                   # 8-byte Folded Reload
	sltu	$a0, $t2, $a0
	sltu	$a1, $s7, $a6
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.68:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 808                   # 8-byte Folded Reload
	sltu	$a0, $t2, $a0
	sltu	$a1, $s8, $a6
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.69:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 768                   # 8-byte Folded Reload
	sltu	$a0, $t2, $a0
	sltu	$a1, $s6, $a6
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.70:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 760                   # 8-byte Folded Reload
	sltu	$a0, $t2, $a0
	sltu	$a1, $s1, $a6
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.71:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 752                   # 8-byte Folded Reload
	sltu	$a0, $t2, $a0
	sltu	$a1, $a2, $a6
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.72:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 744                   # 8-byte Folded Reload
	sltu	$a0, $t2, $a0
	sltu	$a1, $t5, $a6
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.73:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 736                   # 8-byte Folded Reload
	sltu	$a0, $t2, $a0
	sltu	$a1, $s0, $a6
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.74:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	sltu	$a0, $t2, $a5
	sltu	$a1, $s2, $a6
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.75:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 728                   # 8-byte Folded Reload
	sltu	$a0, $t2, $a0
	sltu	$a1, $t8, $a6
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.76:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 632                   # 8-byte Folded Reload
	sltu	$a0, $t2, $a0
	sltu	$a1, $s4, $a6
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.77:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	sltu	$a0, $t7, $t6
	sltu	$a1, $ra, $t4
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.78:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	sltu	$a0, $t7, $a7
	ld.d	$a1, $sp, 864                   # 8-byte Folded Reload
	sltu	$a1, $a1, $t4
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.79:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	move	$a6, $a3
	sltu	$a0, $t7, $s3
	sltu	$a1, $a3, $t4
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.80:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	sltu	$a0, $t7, $fp
	sltu	$a1, $a4, $t4
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.81:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	sltu	$a0, $t7, $s5
	ld.d	$a1, $sp, 856                   # 8-byte Folded Reload
	sltu	$a1, $a1, $t4
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.82:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 872                   # 8-byte Folded Reload
	sltu	$a0, $t7, $a0
	sltu	$a1, $t3, $t4
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.83:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 832                   # 8-byte Folded Reload
	sltu	$a0, $t7, $a0
	ld.d	$a1, $sp, 840                   # 8-byte Folded Reload
	sltu	$a1, $a1, $t4
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.84:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 824                   # 8-byte Folded Reload
	sltu	$a0, $t7, $a0
	ld.d	$a1, $sp, 848                   # 8-byte Folded Reload
	sltu	$a1, $a1, $t4
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.85:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 816                   # 8-byte Folded Reload
	sltu	$a0, $t7, $a0
	sltu	$a1, $s7, $t4
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.86:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 808                   # 8-byte Folded Reload
	sltu	$a0, $t7, $a0
	sltu	$a1, $s8, $t4
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.87:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 768                   # 8-byte Folded Reload
	sltu	$a0, $t7, $a0
	sltu	$a1, $s6, $t4
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.88:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 760                   # 8-byte Folded Reload
	sltu	$a0, $t7, $a0
	sltu	$a1, $s1, $t4
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.89:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 752                   # 8-byte Folded Reload
	sltu	$a0, $t7, $a0
	sltu	$a1, $a2, $t4
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.90:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 744                   # 8-byte Folded Reload
	sltu	$a0, $t7, $a0
	sltu	$a1, $t5, $t4
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.91:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 736                   # 8-byte Folded Reload
	sltu	$a0, $t7, $a0
	sltu	$a1, $s0, $t4
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.92:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	sltu	$a0, $t7, $a5
	sltu	$a1, $s2, $t4
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.93:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 728                   # 8-byte Folded Reload
	sltu	$a0, $t7, $a0
	sltu	$a1, $t8, $t4
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.94:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 632                   # 8-byte Folded Reload
	sltu	$a0, $t7, $a0
	sltu	$a1, $s4, $t4
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.95:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	sltu	$a0, $ra, $a7
	ld.d	$a1, $sp, 864                   # 8-byte Folded Reload
	sltu	$a1, $a1, $t6
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.96:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	sltu	$a0, $ra, $s3
	sltu	$a1, $a6, $t6
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.97:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	sltu	$a0, $ra, $fp
	sltu	$a1, $a4, $t6
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.98:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	sltu	$a0, $ra, $s5
	ld.d	$a1, $sp, 856                   # 8-byte Folded Reload
	sltu	$a1, $a1, $t6
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.99:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 872                   # 8-byte Folded Reload
	sltu	$a0, $ra, $a0
	sltu	$a1, $t3, $t6
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.100:                              # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 832                   # 8-byte Folded Reload
	sltu	$a0, $ra, $a0
	ld.d	$a1, $sp, 840                   # 8-byte Folded Reload
	sltu	$a1, $a1, $t6
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.101:                              # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 824                   # 8-byte Folded Reload
	sltu	$a0, $ra, $a0
	ld.d	$a1, $sp, 848                   # 8-byte Folded Reload
	sltu	$a1, $a1, $t6
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.102:                              # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 816                   # 8-byte Folded Reload
	sltu	$a0, $ra, $a0
	sltu	$a1, $s7, $t6
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.103:                              # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 808                   # 8-byte Folded Reload
	sltu	$a0, $ra, $a0
	sltu	$a1, $s8, $t6
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.104:                              # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 768                   # 8-byte Folded Reload
	sltu	$a0, $ra, $a0
	sltu	$a1, $s6, $t6
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.105:                              # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 760                   # 8-byte Folded Reload
	sltu	$a0, $ra, $a0
	sltu	$a1, $s1, $t6
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.106:                              # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 752                   # 8-byte Folded Reload
	sltu	$a0, $ra, $a0
	sltu	$a1, $a2, $t6
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.107:                              # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 744                   # 8-byte Folded Reload
	sltu	$a0, $ra, $a0
	sltu	$a1, $t5, $t6
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.108:                              # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 736                   # 8-byte Folded Reload
	sltu	$a0, $ra, $a0
	sltu	$a1, $s0, $t6
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.109:                              # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	sltu	$a0, $ra, $a5
	sltu	$a1, $s2, $t6
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.110:                              # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 728                   # 8-byte Folded Reload
	sltu	$a0, $ra, $a0
	sltu	$a1, $t8, $t6
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.111:                              # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 632                   # 8-byte Folded Reload
	sltu	$a0, $ra, $a0
	sltu	$a1, $s4, $t6
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_117
# %bb.112:                              # %vector.ph
                                        #   in Loop: Header=BB1_16 Depth=3
	move	$a0, $zero
	move	$a1, $zero
	st.d	$a2, $sp, 872                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 792                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	st.d	$a2, $sp, 792                   # 8-byte Folded Spill
	ld.d	$s5, $sp, 848                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 856                   # 8-byte Folded Reload
	move	$fp, $a4
	ld.d	$a4, $sp, 776                   # 8-byte Folded Reload
	add.d	$t6, $a3, $a4
	ld.d	$a2, $sp, 784                   # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	st.d	$a2, $sp, 784                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 616                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	st.d	$a2, $sp, 616                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a2, $a4, $a2, 3
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$a3, $a4, $a3, 3
	ld.d	$t3, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 864                   # 8-byte Folded Reload
	move	$s3, $a6
	.p2align	4, , 16
.LBB1_113:                              # %vector.body
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_13 Depth=2
                                        #       Parent Loop BB1_16 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvldx	$xr0, $a5, $a1
	xvldx	$xr1, $a7, $a0
	add.d	$a4, $a3, $a1
	xvld	$xr2, $a4, -8
	xvfmul.d	$xr1, $xr0, $xr1
	xvfmul.d	$xr2, $xr1, $xr2
	xvstx	$xr2, $t0, $a1
	xvldx	$xr2, $s8, $a0
	ld.d	$a6, $sp, 872                   # 8-byte Folded Reload
	xvldx	$xr3, $a6, $a0
	xvldx	$xr4, $a3, $a1
	xvldx	$xr5, $s1, $a0
	xvfmul.d	$xr2, $xr0, $xr2
	xvfmul.d	$xr3, $xr0, $xr3
	xvfmadd.d	$xr2, $xr2, $xr4, $xr3
	xvfmadd.d	$xr2, $xr5, $xr4, $xr2
	xvldx	$xr3, $fp, $a0
	xvldx	$xr4, $s0, $a1
	add.d	$a6, $a2, $a1
	xvld	$xr5, $a6, -8
	add.d	$a6, $s0, $a1
	xvldx	$xr6, $s2, $a1
	xvldx	$xr7, $s3, $a0
	xvfmadd.d	$xr1, $xr1, $xr4, $xr3
	xvldx	$xr3, $a5, $a1
	xvldx	$xr4, $s8, $a0
	xvfmul.d	$xr6, $xr6, $xr7
	xvfmadd.d	$xr1, $xr6, $xr5, $xr1
	xvldx	$xr5, $s7, $a0
	xvfmul.d	$xr4, $xr3, $xr4
	xvld	$xr6, $a6, 8
	xvldx	$xr7, $s2, $a1
	xvldx	$xr8, $s5, $a0
	xvldx	$xr9, $a2, $a1
	xvfmadd.d	$xr4, $xr4, $xr6, $xr5
	xvldx	$xr5, $s4, $a0
	xvfmul.d	$xr8, $xr7, $xr8
	xvfmadd.d	$xr4, $xr8, $xr9, $xr4
	xvldx	$xr8, $t5, $a0
	xvfmadd.d	$xr3, $xr3, $xr5, $xr4
	xvld	$xr4, $a4, 8
	xvldx	$xr5, $s6, $a0
	xvstx	$xr2, $t1, $a1
	xvfmul.d	$xr0, $xr0, $xr8
	xvfmul.d	$xr0, $xr0, $xr4
	xvfmadd.d	$xr2, $xr7, $xr5, $xr3
	xvldx	$xr3, $s1, $a0
	xvldx	$xr4, $t8, $a0
	xvstx	$xr0, $t2, $a1
	xvstx	$xr1, $t7, $a1
	xvfmadd.d	$xr0, $xr3, $xr6, $xr2
	xvfmadd.d	$xr0, $xr4, $xr9, $xr0
	xvstx	$xr0, $ra, $a1
	addi.d	$a1, $a1, 32
	add.d	$a0, $a0, $t4
	bne	$t3, $a1, .LBB1_113
# %bb.114:                              # %middle.block
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	move	$s1, $a1
	ld.d	$ra, $sp, 792                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 616                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 784                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 256                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB1_15
	b	.LBB1_120
	.p2align	4, , 16
.LBB1_115:                              #   in Loop: Header=BB1_16 Depth=3
	move	$s1, $zero
.LBB1_116:                              #   in Loop: Header=BB1_16 Depth=3
	move	$t6, $s3
	move	$t4, $s0
	b	.LBB1_120
	.p2align	4, , 16
.LBB1_117:                              #   in Loop: Header=BB1_16 Depth=3
	ld.d	$t6, $sp, 776                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 792                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 616                   # 8-byte Folded Reload
.LBB1_118:                              # %for.body759.us.us.preheader
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$s8, $sp, 784                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 256                   # 8-byte Folded Reload
.LBB1_119:                              # %for.body759.us.us.preheader
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$s1, $sp, 416                   # 8-byte Folded Reload
.LBB1_120:                              # %for.body759.us.us.preheader
                                        #   in Loop: Header=BB1_16 Depth=3
	move	$a4, $zero
	move	$a5, $zero
	ld.d	$a0, $sp, 680                   # 8-byte Folded Reload
	alsl.d	$a6, $ra, $a0, 3
	ld.d	$a0, $sp, 688                   # 8-byte Folded Reload
	alsl.d	$a7, $ra, $a0, 3
	ld.d	$a0, $sp, 600                   # 8-byte Folded Reload
	sub.d	$t0, $a0, $s1
	ld.d	$a0, $sp, 568                   # 8-byte Folded Reload
	alsl.d	$t1, $t6, $a0, 3
	ld.d	$a0, $sp, 528                   # 8-byte Folded Reload
	alsl.d	$t2, $t6, $a0, 3
	ld.d	$a0, $sp, 536                   # 8-byte Folded Reload
	alsl.d	$a0, $fp, $a0, 3
	st.d	$a0, $sp, 872                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 576                   # 8-byte Folded Reload
	alsl.d	$a0, $fp, $a0, 3
	st.d	$a0, $sp, 864                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 520                   # 8-byte Folded Reload
	alsl.d	$a2, $t6, $a0, 3
	ld.d	$a0, $sp, 648                   # 8-byte Folded Reload
	alsl.d	$a0, $s8, $a0, 3
	st.d	$a0, $sp, 856                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 656                   # 8-byte Folded Reload
	alsl.d	$a0, $s8, $a1, 3
	st.d	$a0, $sp, 848                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 640                   # 8-byte Folded Reload
	alsl.d	$t5, $s8, $a1, 3
	ld.d	$a1, $sp, 664                   # 8-byte Folded Reload
	alsl.d	$a1, $s8, $a1, 3
	ld.d	$t7, $sp, 672                   # 8-byte Folded Reload
	alsl.d	$t7, $s8, $t7, 3
	ld.d	$s5, $sp, 704                   # 8-byte Folded Reload
	alsl.d	$t8, $fp, $s5, 3
	ld.d	$s2, $sp, 712                   # 8-byte Folded Reload
	alsl.d	$t3, $fp, $s2, 3
	ld.d	$s3, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$s0, $fp, $s3, 3
	ld.d	$s1, $sp, 696                   # 8-byte Folded Reload
	alsl.d	$s1, $fp, $s1, 3
	move	$a0, $t4
	ld.d	$t4, $sp, 584                   # 8-byte Folded Reload
	add.d	$s4, $t4, $fp
	alsl.d	$s2, $s4, $s2, 3
	alsl.d	$s3, $s4, $s3, 3
	alsl.d	$s4, $s4, $s5, 3
	ld.d	$t4, $sp, 560                   # 8-byte Folded Reload
	alsl.d	$s5, $fp, $t4, 3
	ld.d	$t4, $sp, 552                   # 8-byte Folded Reload
	alsl.d	$s6, $fp, $t4, 3
	ld.d	$t4, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$s7, $fp, $t4, 3
	.p2align	4, , 16
.LBB1_121:                              # %for.body759.us.us
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_13 Depth=2
                                        #       Parent Loop BB1_16 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $a6, $a5
	fldx.d	$fa1, $s5, $a4
	fldx.d	$fa2, $a2, $a5
	fmul.d	$fa0, $fa0, $fa1
	move	$t4, $s8
	add.d	$s8, $a2, $a5
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$a3, $sp, 856                   # 8-byte Folded Reload
	fstx.d	$fa0, $a3, $a5
	fldx.d	$fa0, $a6, $a5
	fldx.d	$fa1, $s6, $a4
	fldx.d	$fa2, $s7, $a4
	fld.d	$fa3, $s8, 8
	fldx.d	$fa4, $t8, $a4
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$a3, $sp, 848                   # 8-byte Folded Reload
	fstx.d	$fa0, $a3, $a5
	fldx.d	$fa0, $a6, $a5
	ld.d	$a3, $sp, 864                   # 8-byte Folded Reload
	fldx.d	$fa1, $a3, $a4
	fld.d	$fa2, $s8, 16
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fstx.d	$fa0, $t5, $a5
	fldx.d	$fa0, $a6, $a5
	fldx.d	$fa1, $s5, $a4
	fldx.d	$fa2, $t3, $a4
	fmul.d	$fa0, $fa0, $fa1
	fldx.d	$fa1, $t1, $a5
	fldx.d	$fa3, $a7, $a5
	fldx.d	$fa4, $s2, $a4
	fldx.d	$fa5, $t2, $a5
	add.d	$s8, $t1, $a5
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	fmul.d	$fa1, $fa3, $fa4
	fmadd.d	$fa0, $fa1, $fa5, $fa0
	fstx.d	$fa0, $a1, $a5
	fld.d	$fa0, $s8, 8
	add.d	$s8, $t2, $a5
	fldx.d	$fa1, $s0, $a4
	fldx.d	$fa2, $a6, $a5
	fldx.d	$fa3, $s6, $a4
	fldx.d	$fa4, $a7, $a5
	fldx.d	$fa5, $s3, $a4
	fld.d	$fa6, $s8, 8
	move	$s8, $t4
	move	$t4, $a0
	fmul.d	$fa3, $fa2, $fa3
	fmadd.d	$fa1, $fa3, $fa0, $fa1
	fmul.d	$fa3, $fa4, $fa5
	fmadd.d	$fa1, $fa3, $fa6, $fa1
	ld.d	$a3, $sp, 872                   # 8-byte Folded Reload
	fldx.d	$fa3, $a3, $a4
	fldx.d	$fa5, $s4, $a4
	fldx.d	$fa7, $t8, $a4
	fldx.d	$ft0, $s1, $a4
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fmadd.d	$fa1, $fa4, $fa5, $fa1
	fmadd.d	$fa0, $fa7, $fa0, $fa1
	fmadd.d	$fa0, $ft0, $fa6, $fa0
	fstx.d	$fa0, $t7, $a5
	addi.d	$t6, $t6, 1
	addi.d	$ra, $ra, 1
	ld.d	$a3, $sp, 800                   # 8-byte Folded Reload
	add.d	$fp, $fp, $a3
	addi.d	$s8, $s8, 1
	addi.d	$a5, $a5, 8
	addi.w	$t0, $t0, -1
	add.d	$a4, $a4, $a0
	bnez	$t0, .LBB1_121
	b	.LBB1_15
.LBB1_122:                              #   in Loop: Header=BB1_16 Depth=3
	move	$t6, $s3
	ld.d	$ra, $sp, 792                   # 8-byte Folded Reload
	move	$t4, $s0
	b	.LBB1_120
.LBB1_123:                              #   in Loop: Header=BB1_16 Depth=3
	move	$t6, $s3
	ld.d	$ra, $sp, 792                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 784                   # 8-byte Folded Reload
	move	$t4, $s0
	b	.LBB1_120
.LBB1_124:                              #   in Loop: Header=BB1_16 Depth=3
	move	$t6, $s3
	b	.LBB1_126
.LBB1_125:                              #   in Loop: Header=BB1_16 Depth=3
	ld.d	$t6, $sp, 776                   # 8-byte Folded Reload
.LBB1_126:                              # %for.body759.us.us.preheader
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$ra, $sp, 792                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 784                   # 8-byte Folded Reload
	move	$t4, $s0
	b	.LBB1_119
.LBB1_127:                              #   in Loop: Header=BB1_16 Depth=3
	ld.d	$t6, $sp, 776                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 792                   # 8-byte Folded Reload
	b	.LBB1_118
	.p2align	4, , 16
.LBB1_128:                              # %sw.default
                                        #   in Loop: Header=BB1_3 Depth=1
	blt	$a2, $a5, .LBB1_2
# %bb.129:                              # %for.cond1455.preheader.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 624                   # 8-byte Folded Reload
	blt	$a0, $a5, .LBB1_2
# %bb.130:                              # %for.cond1455.preheader.us.preheader
                                        #   in Loop: Header=BB1_3 Depth=1
	move	$s0, $zero
	ld.d	$a6, $sp, 600                   # 8-byte Folded Reload
	mul.d	$a0, $a6, $a7
	ld.d	$t6, $sp, 760                   # 8-byte Folded Reload
	sub.d	$a1, $t6, $a6
	ld.d	$t7, $sp, 752                   # 8-byte Folded Reload
	sub.d	$a2, $t7, $a6
	sub.d	$s4, $t5, $a0
	ld.d	$t8, $sp, 744                   # 8-byte Folded Reload
	sub.d	$a3, $t8, $a6
	ld.d	$t0, $sp, 624                   # 8-byte Folded Reload
	sub.d	$a4, $t1, $t0
	mul.d	$a4, $a4, $t6
	st.d	$a4, $sp, 488                   # 8-byte Folded Spill
	sub.d	$a4, $t2, $t0
	mul.d	$a4, $a4, $t7
	st.d	$a4, $sp, 480                   # 8-byte Folded Spill
	mul.d	$a4, $t0, $t5
	sub.d	$a4, $t3, $a4
	st.d	$a4, $sp, 472                   # 8-byte Folded Spill
	sub.d	$a4, $t4, $t0
	mul.d	$a4, $a4, $t8
	st.d	$a4, $sp, 464                   # 8-byte Folded Spill
	addi.d	$a4, $t0, -1
	mul.d	$a1, $a1, $a4
	add.d	$a1, $t6, $a1
	sub.d	$a1, $a1, $a6
	st.d	$a1, $sp, 456                   # 8-byte Folded Spill
	mul.d	$a1, $a2, $a4
	add.d	$a1, $t7, $a1
	sub.d	$a1, $a1, $a6
	st.d	$a1, $sp, 448                   # 8-byte Folded Spill
	st.d	$s4, $sp, 736                   # 8-byte Folded Spill
	mul.d	$a1, $s4, $a4
	add.d	$a1, $a1, $t5
	sub.d	$a0, $a1, $a0
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
	mul.d	$a0, $a3, $a4
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	add.d	$a0, $t8, $a0
	sub.d	$a0, $a0, $a6
	st.d	$a0, $sp, 432                   # 8-byte Folded Spill
	bstrpick.d	$a2, $s2, 31, 0
	bstrpick.d	$a0, $s1, 31, 0
	ld.d	$a1, $sp, 832                   # 8-byte Folded Reload
	addi.d	$a1, $a1, -8
	st.d	$a1, $sp, 632                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	addi.d	$a4, $a1, -8
	st.d	$a2, $sp, 728                   # 8-byte Folded Spill
	slli.d	$a1, $a2, 3
	ld.d	$a2, $sp, 696                   # 8-byte Folded Reload
	sub.d	$a2, $a2, $a1
	st.d	$a2, $sp, 608                   # 8-byte Folded Spill
	slli.d	$a6, $a7, 3
	ld.d	$a2, $sp, 496                   # 8-byte Folded Reload
	sub.d	$a2, $a2, $a1
	st.d	$a2, $sp, 584                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 3
	st.d	$a4, $sp, 616                   # 8-byte Folded Spill
	sub.d	$a0, $a4, $a0
	st.d	$a0, $sp, 576                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 712                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 568                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 512                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 560                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 720                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 552                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 704                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 544                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 824                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 536                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 528                   # 8-byte Folded Spill
	st.d	$a6, $sp, 592                   # 8-byte Folded Spill
	b	.LBB1_133
	.p2align	4, , 16
.LBB1_131:                              # %for.cond1458.preheader.us752.preheader
                                        #   in Loop: Header=BB1_133 Depth=2
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	add.d	$s3, $a0, $s3
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	add.d	$ra, $a0, $ra
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	add.d	$fp, $a0, $fp
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	add.d	$s8, $a0, $s8
.LBB1_132:                              # %for.cond1455.for.end1630_crit_edge.us
                                        #   in Loop: Header=BB1_133 Depth=2
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	add.w	$s3, $s3, $a0
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	add.w	$ra, $ra, $a0
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	add.w	$fp, $a0, $fp
	addi.w	$s0, $s0, 1
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	add.w	$s8, $s8, $a0
	beq	$s0, $a3, .LBB1_2
.LBB1_133:                              # %for.cond1455.preheader.us
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_135 Depth 3
                                        #         Child Loop BB1_136 Depth 4
	ld.d	$a0, $sp, 600                   # 8-byte Folded Reload
	blt	$a0, $a5, .LBB1_131
# %bb.134:                              # %for.cond1458.preheader.us.us.preheader
                                        #   in Loop: Header=BB1_133 Depth=2
	st.d	$s0, $sp, 520                   # 8-byte Folded Spill
	move	$a2, $zero
	.p2align	4, , 16
.LBB1_135:                              # %for.cond1458.preheader.us.us
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_133 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_136 Depth 4
	st.d	$a2, $sp, 768                   # 8-byte Folded Spill
	move	$t8, $zero
	move	$t1, $zero
	ld.d	$a0, $sp, 680                   # 8-byte Folded Reload
	alsl.d	$t2, $ra, $a0, 3
	ld.d	$a0, $sp, 688                   # 8-byte Folded Reload
	st.d	$ra, $sp, 792                   # 8-byte Folded Spill
	alsl.d	$t3, $ra, $a0, 3
	ld.d	$a0, $sp, 608                   # 8-byte Folded Reload
	alsl.d	$a0, $fp, $a0, 3
	st.d	$a0, $sp, 872                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 584                   # 8-byte Folded Reload
	alsl.d	$a0, $fp, $a0, 3
	st.d	$a0, $sp, 864                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 512                   # 8-byte Folded Reload
	alsl.d	$a5, $fp, $a1, 3
	ld.d	$t0, $sp, 704                   # 8-byte Folded Reload
	alsl.d	$a4, $fp, $t0, 3
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	alsl.d	$a0, $fp, $a0, 3
	st.d	$a0, $sp, 856                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 712                   # 8-byte Folded Reload
	alsl.d	$a0, $fp, $a3, 3
	st.d	$a0, $sp, 848                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 496                   # 8-byte Folded Reload
	alsl.d	$a0, $fp, $a0, 3
	st.d	$a0, $sp, 840                   # 8-byte Folded Spill
	ld.d	$a7, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$a0, $fp, $a7, 3
	st.d	$a0, $sp, 832                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 696                   # 8-byte Folded Reload
	alsl.d	$a0, $fp, $a0, 3
	st.d	$a0, $sp, 824                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 728                   # 8-byte Folded Reload
	add.d	$a0, $a0, $fp
	ld.d	$a2, $sp, 568                   # 8-byte Folded Reload
	alsl.d	$s2, $fp, $a2, 3
	ld.d	$a2, $sp, 560                   # 8-byte Folded Reload
	alsl.d	$a2, $fp, $a2, 3
	st.d	$a2, $sp, 816                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 552                   # 8-byte Folded Reload
	alsl.d	$s5, $fp, $a2, 3
	ld.d	$a2, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$a2, $fp, $a2, 3
	st.d	$a2, $sp, 808                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 536                   # 8-byte Folded Reload
	alsl.d	$s7, $fp, $a2, 3
	move	$s0, $s8
	ld.d	$a2, $sp, 528                   # 8-byte Folded Reload
	alsl.d	$s8, $fp, $a2, 3
	ld.d	$a2, $sp, 736                   # 8-byte Folded Reload
	add.d	$fp, $a2, $fp
	ld.d	$a2, $sp, 632                   # 8-byte Folded Reload
	alsl.d	$ra, $s3, $a2, 3
	ld.d	$a2, $sp, 616                   # 8-byte Folded Reload
	alsl.d	$t5, $s3, $a2, 3
	st.d	$s3, $sp, 776                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 576                   # 8-byte Folded Reload
	alsl.d	$t6, $s3, $a2, 3
	ld.d	$a2, $sp, 648                   # 8-byte Folded Reload
	alsl.d	$a2, $s0, $a2, 3
	alsl.d	$t7, $a0, $a3, 3
	alsl.d	$a3, $a0, $a1, 3
	alsl.d	$s3, $a0, $a7, 3
	alsl.d	$a1, $a0, $t0, 3
	ld.d	$a0, $sp, 656                   # 8-byte Folded Reload
	alsl.d	$t4, $s0, $a0, 3
	ld.d	$a0, $sp, 640                   # 8-byte Folded Reload
	alsl.d	$a6, $s0, $a0, 3
	ld.d	$a0, $sp, 664                   # 8-byte Folded Reload
	alsl.d	$a7, $s0, $a0, 3
	ld.d	$a0, $sp, 672                   # 8-byte Folded Reload
	st.d	$s0, $sp, 784                   # 8-byte Folded Spill
	alsl.d	$t0, $s0, $a0, 3
	ld.d	$a0, $sp, 600                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 800                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 592                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_136:                              # %for.body1460.us.us
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_133 Depth=2
                                        #       Parent Loop BB1_135 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $t2, $t1
	fldx.d	$fa1, $s2, $t8
	fmul.d	$fa1, $fa0, $fa1
	ld.d	$s0, $sp, 816                   # 8-byte Folded Reload
	fldx.d	$fa2, $s0, $t8
	fldx.d	$fa3, $t6, $t1
	fldx.d	$fa4, $a5, $t8
	move	$s0, $fp
	add.d	$fp, $t6, $t1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	fstx.d	$fa0, $a2, $t1
	fldx.d	$fa0, $t2, $t1
	fldx.d	$fa1, $s5, $t8
	ld.d	$s6, $sp, 808                   # 8-byte Folded Reload
	fldx.d	$fa2, $s6, $t8
	fld.d	$fa3, $fp, 8
	fldx.d	$fa4, $a4, $t8
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	fstx.d	$fa0, $t4, $t1
	fldx.d	$fa0, $t2, $t1
	fldx.d	$fa1, $s7, $t8
	fldx.d	$fa2, $s8, $t8
	fld.d	$fa3, $fp, 16
	ld.d	$fp, $sp, 856                   # 8-byte Folded Reload
	fldx.d	$fa4, $fp, $t8
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	fstx.d	$fa0, $a6, $t1
	fldx.d	$fa0, $t2, $t1
	fldx.d	$fa1, $s2, $t8
	ld.d	$fp, $sp, 848                   # 8-byte Folded Reload
	fldx.d	$fa2, $fp, $t8
	fmul.d	$fa1, $fa0, $fa1
	fldx.d	$fa3, $ra, $t1
	fldx.d	$fa4, $t3, $t1
	fldx.d	$fa5, $t7, $t8
	fldx.d	$fa6, $t5, $t1
	add.d	$fp, $ra, $t1
	fmadd.d	$fa1, $fa1, $fa3, $fa2
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa1, $fa2, $fa6, $fa1
	ld.d	$s6, $sp, 864                   # 8-byte Folded Reload
	fldx.d	$fa2, $s6, $t8
	fldx.d	$fa5, $a3, $t8
	fldx.d	$fa7, $a5, $t8
	ld.d	$s6, $sp, 840                   # 8-byte Folded Reload
	fldx.d	$ft0, $s6, $t8
	fmadd.d	$fa0, $fa0, $fa2, $fa1
	fmadd.d	$fa0, $fa4, $fa5, $fa0
	fmadd.d	$fa0, $fa7, $fa3, $fa0
	fmadd.d	$fa0, $ft0, $fa6, $fa0
	fstx.d	$fa0, $a7, $t1
	fld.d	$fa0, $fp, 8
	add.d	$fp, $t5, $t1
	ld.d	$s6, $sp, 832                   # 8-byte Folded Reload
	fldx.d	$fa1, $s6, $t8
	fldx.d	$fa2, $t2, $t1
	fldx.d	$fa3, $s5, $t8
	fldx.d	$fa4, $t3, $t1
	fldx.d	$fa5, $s3, $t8
	fld.d	$fa6, $fp, 8
	move	$fp, $s0
	fmul.d	$fa3, $fa2, $fa3
	fmadd.d	$fa1, $fa3, $fa0, $fa1
	fmul.d	$fa3, $fa4, $fa5
	fmadd.d	$fa1, $fa3, $fa6, $fa1
	ld.d	$s0, $sp, 872                   # 8-byte Folded Reload
	fldx.d	$fa3, $s0, $t8
	fldx.d	$fa5, $a1, $t8
	fldx.d	$fa7, $a4, $t8
	ld.d	$s0, $sp, 824                   # 8-byte Folded Reload
	fldx.d	$ft0, $s0, $t8
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fmadd.d	$fa1, $fa4, $fa5, $fa1
	fmadd.d	$fa0, $fa7, $fa0, $fa1
	fmadd.d	$fa0, $ft0, $fa6, $fa0
	fstx.d	$fa0, $t0, $t1
	addi.d	$t1, $t1, 8
	addi.w	$a0, $a0, -1
	add.w	$fp, $fp, $s1
	add.d	$t8, $t8, $s4
	bnez	$a0, .LBB1_136
# %bb.137:                              # %for.cond1458.for.end1615_crit_edge.us.us
                                        #   in Loop: Header=BB1_135 Depth=3
	ld.d	$a1, $sp, 776                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 760                   # 8-byte Folded Reload
	add.d	$a1, $a2, $a1
	sub.w	$s3, $a1, $a0
	ld.d	$a1, $sp, 792                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 752                   # 8-byte Folded Reload
	add.d	$a1, $a2, $a1
	sub.w	$ra, $a1, $a0
	ld.d	$a1, $sp, 784                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 744                   # 8-byte Folded Reload
	add.d	$a1, $a2, $a1
	ld.d	$a2, $sp, 768                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	sub.w	$s8, $a1, $a0
	ld.d	$a0, $sp, 624                   # 8-byte Folded Reload
	bne	$a2, $a0, .LBB1_135
# %bb.138:                              # %for.cond1455.for.end1630_crit_edge.us.loopexit
                                        #   in Loop: Header=BB1_133 Depth=2
	ori	$a5, $zero, 1
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 520                   # 8-byte Folded Reload
	b	.LBB1_132
.LBB1_139:                              # %for.end1651
	move	$a0, $zero
	ld.d	$s8, $sp, 920                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 928                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 936                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 944                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 952                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 960                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 968                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 976                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 984                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 992                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 1000                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1008
	ret
.Lfunc_end1:
	.size	hypre_SMG2BuildRAPSym, .Lfunc_end1-hypre_SMG2BuildRAPSym
                                        # -- End function
	.globl	hypre_SMG2BuildRAPNoSym         # -- Begin function hypre_SMG2BuildRAPNoSym
	.p2align	5
	.type	hypre_SMG2BuildRAPNoSym,@function
hypre_SMG2BuildRAPNoSym:                # @hypre_SMG2BuildRAPNoSym
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -992
	st.d	$ra, $sp, 984                   # 8-byte Folded Spill
	st.d	$fp, $sp, 976                   # 8-byte Folded Spill
	st.d	$s0, $sp, 968                   # 8-byte Folded Spill
	st.d	$s1, $sp, 960                   # 8-byte Folded Spill
	st.d	$s2, $sp, 952                   # 8-byte Folded Spill
	st.d	$s3, $sp, 944                   # 8-byte Folded Spill
	st.d	$s4, $sp, 936                   # 8-byte Folded Spill
	st.d	$s5, $sp, 928                   # 8-byte Folded Spill
	st.d	$s6, $sp, 920                   # 8-byte Folded Spill
	st.d	$s7, $sp, 912                   # 8-byte Folded Spill
	st.d	$s8, $sp, 904                   # 8-byte Folded Spill
	st.d	$a3, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a3, $a3, 8
	ld.d	$a7, $a3, 8
	ld.w	$a6, $a7, 8
	ori	$t0, $zero, 1
	st.d	$a5, $sp, 104                   # 8-byte Folded Spill
	st.d	$a4, $sp, 64                    # 8-byte Folded Spill
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	blt	$a6, $t0, .LBB2_192
# %bb.1:                                # %while.cond.preheader.lr.ph
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a1, 8
	ld.d	$a1, $a1, 24
	move	$a4, $zero
	move	$a5, $zero
	ld.d	$a0, $a0, 16
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a0, $a3, 16
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a0, $a1, 8
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ori	$a0, $zero, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
	st.d	$a7, $sp, 40                    # 8-byte Folded Spill
	b	.LBB2_3
	.p2align	4, , 16
.LBB2_2:                                # %for.inc1559
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a7, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a7, 8
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 1
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	bge	$a4, $a0, .LBB2_192
.LBB2_3:                                # %while.cond.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_4 Depth 2
                                        #     Child Loop BB2_93 Depth 2
                                        #       Child Loop BB2_96 Depth 3
                                        #         Child Loop BB2_180 Depth 4
                                        #         Child Loop BB2_186 Depth 4
                                        #     Child Loop BB2_13 Depth 2
                                        #       Child Loop BB2_16 Depth 3
                                        #         Child Loop BB2_72 Depth 4
                                        #         Child Loop BB2_78 Depth 4
	slli.d	$a0, $a4, 2
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	addi.d	$s5, $a5, -1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$a1, $a5, $a1, 2
	slli.d	$a2, $a5, 4
	alsl.d	$a2, $a5, $a2, 3
	addi.d	$a3, $a5, -1
	addi.d	$s1, $a2, -12
	.p2align	4, , 16
.LBB2_4:                                # %while.cond
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a1, 0
	addi.w	$a3, $a3, 1
	addi.w	$s5, $s5, 1
	addi.d	$a1, $a1, 4
	addi.d	$s1, $s1, 24
	bne	$a2, $a0, .LBB2_4
# %bb.5:                                # %while.end
                                        #   in Loop: Header=BB2_3 Depth=1
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a0, $a7, 0
	slli.d	$a1, $a4, 4
	st.d	$a4, $sp, 152                   # 8-byte Folded Spill
	alsl.d	$s2, $a4, $a1, 3
	add.d	$a0, $a0, $s2
	addi.d	$a3, $sp, 880
	st.d	$a0, $sp, 832                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMapCoarseToFine)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $s3, 40
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $s7, 40
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $s6, 40
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 40
	ld.d	$a4, $a0, 0
	ld.d	$a5, $a1, 0
	ld.d	$a1, $a2, 0
	ld.d	$a0, $a3, 0
	st.d	$a4, $sp, 848                   # 8-byte Folded Spill
	add.d	$s4, $a4, $s1
	st.d	$a5, $sp, 824                   # 8-byte Folded Spill
	add.d	$s0, $a5, $s1
	st.d	$a1, $sp, 840                   # 8-byte Folded Spill
	add.d	$s8, $a1, $s1
	add.d	$a0, $a0, $s2
	st.d	$a0, $sp, 856                   # 8-byte Folded Spill
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	st.d	$s2, $sp, 892
	st.w	$zero, $sp, 900
	addi.d	$a2, $sp, 892
	move	$a0, $s7
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 816                   # 8-byte Folded Spill
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	st.d	$fp, $sp, 892
	st.w	$zero, $sp, 900
	addi.d	$a2, $sp, 892
	move	$a0, $s7
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 736                   # 8-byte Folded Spill
	st.d	$s2, $sp, 892
	st.w	$zero, $sp, 900
	addi.d	$a2, $sp, 892
	move	$a0, $s6
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 808                   # 8-byte Folded Spill
	st.d	$fp, $sp, 892
	st.w	$zero, $sp, 900
	addi.d	$a2, $sp, 892
	move	$a0, $s6
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 800                   # 8-byte Folded Spill
	st.d	$zero, $sp, 892
	st.w	$zero, $sp, 900
	addi.d	$a2, $sp, 892
	move	$a0, $s3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	addi.w	$s6, $zero, -1
	st.d	$a0, $sp, 792                   # 8-byte Folded Spill
	move	$a0, $s6
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 892
	st.w	$zero, $sp, 900
	addi.d	$a2, $sp, 892
	move	$a0, $s3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 784                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 892
	st.w	$zero, $sp, 900
	addi.d	$a2, $sp, 892
	move	$a0, $s3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 728                   # 8-byte Folded Spill
	st.d	$s2, $sp, 892
	st.w	$zero, $sp, 900
	addi.d	$a2, $sp, 892
	move	$a0, $s3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 776                   # 8-byte Folded Spill
	ori	$s7, $zero, 1
	lu32i.d	$s7, 1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ori	$a1, $zero, 6
	blt	$a0, $a1, .LBB2_7
# %bb.6:                                # %if.then
                                        #   in Loop: Header=BB2_3 Depth=1
	ori	$a0, $zero, 1
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 892
	st.w	$zero, $sp, 900
	addi.d	$a2, $sp, 892
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
	move	$a0, $s3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 544                   # 8-byte Folded Spill
	move	$a0, $s6
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 892
	st.w	$zero, $sp, 900
	addi.d	$a2, $sp, 892
	move	$a0, $s3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 536                   # 8-byte Folded Spill
	st.d	$s7, $sp, 892
	st.w	$zero, $sp, 900
	addi.d	$a2, $sp, 892
	move	$a0, $s3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 528                   # 8-byte Folded Spill
.LBB2_7:                                # %if.end
                                        #   in Loop: Header=BB2_3 Depth=1
	ori	$s2, $zero, 1
	st.d	$s2, $sp, 892
	st.w	$zero, $sp, 900
	addi.d	$a2, $sp, 892
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	move	$a0, $s5
	ld.d	$s3, $sp, 152                   # 8-byte Folded Reload
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 768                   # 8-byte Folded Spill
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
	st.d	$fp, $sp, 892
	st.w	$zero, $sp, 900
	addi.d	$a2, $sp, 892
	move	$a0, $s5
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 760                   # 8-byte Folded Spill
	st.d	$s7, $sp, 892
	st.w	$zero, $sp, 900
	addi.d	$a2, $sp, 892
	move	$a0, $s5
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 752                   # 8-byte Folded Spill
	move	$a0, $s6
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 892
	st.w	$zero, $sp, 900
	addi.d	$a2, $sp, 892
	move	$a0, $s5
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 892
	st.w	$zero, $sp, 900
	ld.d	$fp, $sp, 848                   # 8-byte Folded Reload
	ldx.w	$a1, $fp, $s1
	ld.w	$a2, $s4, -12
	st.d	$a0, $sp, 744                   # 8-byte Folded Spill
	sub.w	$a0, $a1, $a2
	slt	$a1, $s6, $a0
	maskeqz	$a0, $a0, $a1
	ld.d	$s7, $sp, 824                   # 8-byte Folded Reload
	ldx.w	$a2, $s7, $s1
	ld.w	$a3, $s0, -12
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 712                   # 8-byte Folded Spill
	sub.w	$a0, $a2, $a3
	slt	$a1, $s6, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 704                   # 8-byte Folded Spill
	ori	$s5, $zero, 1
	st.d	$s2, $sp, 892
	st.w	$zero, $sp, 900
	addi.d	$a1, $sp, 868
	ld.d	$s3, $sp, 832                   # 8-byte Folded Reload
	move	$a0, $s3
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 0
	ld.w	$a1, $s0, -12
	ld.w	$a2, $s3, 4
	ld.w	$a4, $s0, -8
	ld.w	$a3, $s3, 8
	ld.w	$a5, $s0, -4
	ld.w	$a6, $s0, 4
	sub.d	$a7, $a0, $a1
	sub.d	$t0, $a2, $a4
	sub.d	$t1, $a3, $a5
	sub.w	$a4, $a6, $a4
	slt	$a5, $s6, $a4
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $s6, $a5
	or	$a4, $a4, $a5
	ldx.w	$a6, $s7, $s1
	addi.d	$a5, $a4, 1
	mul.d	$a4, $a5, $t1
	add.d	$t0, $t0, $a4
	sub.w	$a1, $a6, $a1
	slt	$a4, $s6, $a1
	maskeqz	$a1, $a1, $a4
	masknez	$a4, $s6, $a4
	or	$a1, $a1, $a4
	addi.d	$a4, $a1, 1
	mul.d	$a1, $t0, $a4
	add.w	$t8, $a7, $a1
	ld.w	$a1, $s8, -12
	ld.w	$a6, $s8, -8
	ld.w	$a7, $s8, -4
	ld.w	$t0, $s8, 4
	sub.d	$t1, $a0, $a1
	sub.d	$t2, $a2, $a6
	sub.d	$t3, $a3, $a7
	sub.w	$a6, $t0, $a6
	slt	$a7, $s6, $a6
	maskeqz	$a6, $a6, $a7
	masknez	$a7, $s6, $a7
	or	$a6, $a6, $a7
	ld.d	$a7, $sp, 840                   # 8-byte Folded Reload
	ldx.w	$t0, $a7, $s1
	addi.d	$a7, $a6, 1
	mul.d	$a6, $a7, $t3
	add.d	$t2, $t2, $a6
	sub.w	$a1, $t0, $a1
	slt	$a6, $s6, $a1
	maskeqz	$a1, $a1, $a6
	masknez	$a6, $s6, $a6
	or	$a1, $a1, $a6
	addi.d	$a6, $a1, 1
	mul.d	$a1, $t2, $a6
	add.w	$s8, $t1, $a1
	ld.w	$a1, $sp, 880
	ld.w	$t0, $s4, -12
	ld.w	$t1, $sp, 884
	ld.w	$t2, $s4, -8
	ld.w	$t3, $sp, 888
	ld.w	$t4, $s4, -4
	ld.w	$t5, $s4, 4
	sub.d	$a1, $a1, $t0
	sub.d	$t1, $t1, $t2
	sub.d	$t3, $t3, $t4
	sub.w	$t2, $t5, $t2
	slt	$t4, $s6, $t2
	maskeqz	$t2, $t2, $t4
	masknez	$t4, $s6, $t4
	or	$t2, $t2, $t4
	ldx.w	$t4, $fp, $s1
	addi.d	$t5, $t2, 1
	mul.d	$t2, $t5, $t3
	add.d	$t1, $t1, $t2
	sub.w	$t0, $t4, $t0
	slt	$t2, $s6, $t0
	maskeqz	$t0, $t0, $t2
	masknez	$t2, $s6, $t2
	or	$t0, $t0, $t2
	addi.d	$t3, $t0, 1
	mul.d	$t0, $t1, $t3
	add.w	$s4, $a1, $t0
	ld.d	$a1, $sp, 856                   # 8-byte Folded Reload
	ld.w	$t0, $a1, 0
	ld.w	$t1, $a1, 4
	ld.w	$t2, $a1, 8
	ld.w	$t4, $a1, 16
	sub.d	$a0, $a0, $t0
	sub.d	$a2, $a2, $t1
	sub.d	$a3, $a3, $t2
	sub.w	$t1, $t4, $t1
	slt	$t2, $s6, $t1
	maskeqz	$t1, $t1, $t2
	masknez	$t2, $s6, $t2
	or	$t1, $t1, $t2
	ld.w	$t4, $a1, 12
	addi.d	$t2, $t1, 1
	mul.d	$a3, $t2, $a3
	add.d	$a2, $a2, $a3
	sub.w	$a3, $t4, $t0
	slt	$t0, $s6, $a3
	maskeqz	$a3, $a3, $t0
	masknez	$t0, $s6, $t0
	or	$a3, $a3, $t0
	addi.d	$t0, $a3, 1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a3, $a1, 4
	mul.d	$a2, $a2, $t0
	add.w	$s7, $a0, $a2
	ld.w	$s6, $a1, 0
	mul.d	$t1, $a3, $t3
	ld.w	$a0, $a1, 8
	ld.wu	$a1, $sp, 868
	ld.w	$a2, $sp, 872
	st.d	$a2, $sp, 680                   # 8-byte Folded Spill
	ld.w	$a3, $sp, 876
	mulw.d.w	$a2, $t3, $t5
	mul.d	$t3, $a2, $a0
	st.d	$a1, $sp, 720                   # 8-byte Folded Spill
	addi.w	$a0, $a1, 0
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ori	$a1, $zero, 5
	st.d	$s6, $sp, 832                   # 8-byte Folded Spill
	st.d	$a3, $sp, 208                   # 8-byte Folded Spill
	bne	$a0, $a1, .LBB2_88
# %bb.8:                                # %sw.bb
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$ra, $sp, 728                   # 8-byte Folded Reload
	blt	$a3, $s5, .LBB2_2
# %bb.9:                                # %for.cond744.preheader.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 680                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB2_2
# %bb.10:                               # %for.cond744.preheader.us.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	move	$t5, $zero
	ld.d	$t4, $sp, 720                   # 8-byte Folded Reload
	mul.d	$a0, $t4, $s6
	sub.d	$a3, $a4, $t4
	sub.d	$t6, $a6, $t4
	sub.d	$t7, $t1, $a0
	sub.d	$fp, $t0, $t4
	ld.d	$a1, $sp, 680                   # 8-byte Folded Reload
	sub.d	$a2, $a5, $a1
	mul.d	$a2, $a2, $a4
	st.d	$a2, $sp, 376                   # 8-byte Folded Spill
	sub.d	$a2, $a7, $a1
	mul.d	$a2, $a2, $a6
	st.d	$a2, $sp, 368                   # 8-byte Folded Spill
	mul.d	$a2, $a1, $t1
	sub.d	$a2, $t3, $a2
	st.d	$a2, $sp, 360                   # 8-byte Folded Spill
	sub.d	$a2, $t2, $a1
	mul.d	$a2, $a2, $t0
	st.d	$a2, $sp, 352                   # 8-byte Folded Spill
	addi.d	$a2, $a1, -1
	st.d	$a3, $sp, 624                   # 8-byte Folded Spill
	mul.d	$a3, $a3, $a2
	add.d	$a3, $a4, $a3
	sub.d	$a1, $a3, $t4
	st.d	$a1, $sp, 344                   # 8-byte Folded Spill
	st.d	$t6, $sp, 616                   # 8-byte Folded Spill
	mul.d	$a3, $t6, $a2
	add.d	$a3, $a6, $a3
	sub.d	$a1, $a3, $t4
	st.d	$a1, $sp, 336                   # 8-byte Folded Spill
	st.d	$t7, $sp, 608                   # 8-byte Folded Spill
	mul.d	$a3, $t7, $a2
	add.d	$a3, $a3, $t1
	sub.d	$a0, $a3, $a0
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	st.d	$fp, $sp, 600                   # 8-byte Folded Spill
	mul.d	$a0, $fp, $a2
	add.d	$a0, $t0, $a0
	sub.d	$a0, $a0, $t4
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 712                   # 8-byte Folded Reload
	bstrpick.d	$a4, $a0, 31, 0
	ld.d	$a0, $sp, 704                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$a2, $t4, -1
	bstrpick.d	$a2, $a2, 31, 0
	ld.d	$a1, $sp, 752                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a1, 3
	addi.d	$a1, $a3, 8
	st.d	$a1, $sp, 552                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 760                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a1, 3
	addi.d	$a1, $a3, 8
	st.d	$a1, $sp, 520                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 744                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a1, 3
	addi.d	$a1, $a3, 8
	st.d	$a1, $sp, 512                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 768                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a1, 3
	addi.d	$a1, $a3, 8
	st.d	$a1, $sp, 504                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 808                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a1, 3
	addi.d	$a1, $a3, 8
	st.d	$a1, $sp, 496                   # 8-byte Folded Spill
	slli.d	$a3, $a4, 3
	sub.d	$a1, $ra, $a3
	st.d	$a1, $sp, 656                   # 8-byte Folded Spill
	addi.d	$a3, $ra, 8
	st.d	$a4, $sp, 664                   # 8-byte Folded Spill
	sub.d	$a4, $a2, $a4
	alsl.d	$a1, $a4, $a3, 3
	st.d	$a1, $sp, 488                   # 8-byte Folded Spill
	alsl.d	$a1, $a2, $a3, 3
	st.d	$a1, $sp, 480                   # 8-byte Folded Spill
	ori	$a1, $zero, 19
	sltu	$a3, $a1, $t4
	addi.d	$a4, $s6, -1
	sltui	$a4, $a4, 1
	and	$a1, $a3, $a4
	st.d	$a1, $sp, 592                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a1, 3
	addi.d	$a4, $a3, 16
	addi.d	$a5, $a1, 8
	alsl.d	$a3, $a0, $a1, 3
	addi.d	$a1, $a3, -8
	st.d	$a1, $sp, 464                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 792                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a1, 3
	addi.d	$a1, $a3, 8
	st.d	$a1, $sp, 456                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 776                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a1, 3
	addi.d	$a6, $a3, 8
	ld.d	$a1, $sp, 784                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a1, 3
	addi.d	$a1, $a3, 8
	st.d	$a1, $sp, 448                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 800                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a1, 3
	addi.d	$a1, $a3, 8
	st.d	$a1, $sp, 440                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 816                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a1, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 640                   # 8-byte Folded Spill
	addi.d	$a1, $a2, 16
	st.d	$a1, $sp, 432                   # 8-byte Folded Spill
	bstrpick.d	$a2, $t4, 30, 2
	slli.d	$a1, $a2, 2
	slli.d	$a2, $t4, 3
	bstrpick.d	$a2, $a2, 33, 5
	slli.d	$a2, $a2, 5
	st.d	$a2, $sp, 408                   # 8-byte Folded Spill
	st.d	$a4, $sp, 472                   # 8-byte Folded Spill
	alsl.d	$a2, $a0, $a4, 3
	st.d	$a2, $sp, 416                   # 8-byte Folded Spill
	st.d	$a5, $sp, 648                   # 8-byte Folded Spill
	alsl.d	$a0, $a0, $a5, 3
	st.d	$a0, $sp, 632                   # 8-byte Folded Spill
	st.d	$a1, $sp, 424                   # 8-byte Folded Spill
	mul.d	$a0, $a1, $s6
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	slli.d	$a0, $s6, 5
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	slli.d	$s3, $s6, 3
	st.d	$a6, $sp, 584                   # 8-byte Folded Spill
	b	.LBB2_13
	.p2align	4, , 16
.LBB2_11:                               # %for.cond747.preheader.us735.preheader
                                        #   in Loop: Header=BB2_13 Depth=2
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	add.d	$t8, $a0, $t8
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	add.d	$s8, $a0, $s8
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	add.d	$s4, $a0, $s4
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	add.d	$s7, $a0, $s7
.LBB2_12:                               # %for.cond744.for.end837_crit_edge.us
                                        #   in Loop: Header=BB2_13 Depth=2
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	add.w	$t8, $t8, $a0
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	add.w	$s8, $s8, $a0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	add.w	$s4, $a0, $s4
	ld.d	$t5, $sp, 384                   # 8-byte Folded Reload
	addi.w	$t5, $t5, 1
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	add.w	$s7, $s7, $a0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	beq	$t5, $a0, .LBB2_2
.LBB2_13:                               # %for.cond744.preheader.us
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_16 Depth 3
                                        #         Child Loop BB2_72 Depth 4
                                        #         Child Loop BB2_78 Depth 4
	st.d	$t5, $sp, 384                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB2_11
# %bb.14:                               # %for.cond747.preheader.us.us.preheader
                                        #   in Loop: Header=BB2_13 Depth=2
	move	$a5, $zero
	b	.LBB2_16
	.p2align	4, , 16
.LBB2_15:                               # %for.cond747.for.end_crit_edge.us.us
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a0, $sp, 624                   # 8-byte Folded Reload
	add.w	$t8, $a0, $s5
	ld.d	$a0, $sp, 616                   # 8-byte Folded Reload
	add.w	$s8, $a0, $s8
	ld.d	$a0, $sp, 608                   # 8-byte Folded Reload
	add.w	$s4, $a0, $s4
	ld.d	$a5, $sp, 856                   # 8-byte Folded Reload
	addi.w	$a5, $a5, 1
	ld.d	$a0, $sp, 600                   # 8-byte Folded Reload
	add.w	$s7, $a0, $s7
	ld.d	$a0, $sp, 680                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 584                   # 8-byte Folded Reload
	beq	$a5, $a0, .LBB2_12
.LBB2_16:                               # %for.cond747.preheader.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_13 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_72 Depth 4
                                        #         Child Loop BB2_78 Depth 4
	ld.d	$a0, $sp, 592                   # 8-byte Folded Reload
	st.d	$a5, $sp, 856                   # 8-byte Folded Spill
	beqz	$a0, .LBB2_74
# %bb.17:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	st.d	$s4, $sp, 848                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 752                   # 8-byte Folded Reload
	alsl.d	$t0, $s7, $a0, 3
	ld.d	$a0, $sp, 552                   # 8-byte Folded Reload
	alsl.d	$a3, $s7, $a0, 3
	ld.d	$a0, $sp, 760                   # 8-byte Folded Reload
	alsl.d	$fp, $s7, $a0, 3
	ld.d	$a0, $sp, 520                   # 8-byte Folded Reload
	alsl.d	$t4, $s7, $a0, 3
	sltu	$a0, $t0, $t4
	sltu	$a2, $fp, $a3
	and	$a0, $a0, $a2
	move	$t5, $zero
	ld.d	$a4, $sp, 480                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_83
# %bb.18:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a0, $sp, 744                   # 8-byte Folded Reload
	alsl.d	$s4, $s7, $a0, 3
	ld.d	$a0, $sp, 512                   # 8-byte Folded Reload
	alsl.d	$t6, $s7, $a0, 3
	sltu	$a0, $t0, $t6
	sltu	$a2, $s4, $a3
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_84
# %bb.19:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a0, $sp, 768                   # 8-byte Folded Reload
	alsl.d	$s6, $s7, $a0, 3
	st.d	$s7, $sp, 816                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	alsl.d	$s5, $s7, $a0, 3
	sltu	$a0, $t0, $s5
	sltu	$a2, $s6, $a3
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_85
# %bb.20:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a0, $sp, 808                   # 8-byte Folded Reload
	alsl.d	$s7, $s8, $a0, 3
	st.d	$s8, $sp, 840                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 496                   # 8-byte Folded Reload
	alsl.d	$a0, $s8, $a0, 3
	st.d	$a0, $sp, 576                   # 8-byte Folded Spill
	sltu	$a0, $t0, $a0
	sltu	$a2, $s7, $a3
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_79
# %bb.21:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a1, $sp, 848                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 656                   # 8-byte Folded Reload
	alsl.d	$s8, $a1, $a0, 3
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 3
	st.d	$a0, $sp, 568                   # 8-byte Folded Spill
	sltu	$a0, $t0, $a0
	sltu	$a2, $s8, $a3
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_82
# %bb.22:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	alsl.d	$a7, $a1, $ra, 3
	alsl.d	$a0, $a1, $a4, 3
	st.d	$a0, $sp, 824                   # 8-byte Folded Spill
	sltu	$a0, $t0, $a0
	sltu	$a2, $a7, $a3
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_82
# %bb.23:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a0, $sp, 664                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	alsl.d	$t1, $a0, $ra, 3
	alsl.d	$a1, $a0, $a4, 3
	st.d	$a1, $sp, 712                   # 8-byte Folded Spill
	sltu	$a2, $t0, $a1
	sltu	$a4, $t1, $a3
	and	$a2, $a2, $a4
	bnez	$a2, .LBB2_79
# %bb.24:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a1, $sp, 648                   # 8-byte Folded Reload
	alsl.d	$t2, $t8, $a1, 3
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	alsl.d	$a1, $t8, $a1, 3
	st.d	$a1, $sp, 704                   # 8-byte Folded Spill
	sltu	$a2, $t0, $a1
	sltu	$a4, $t2, $a3
	and	$a2, $a2, $a4
	bnez	$a2, .LBB2_79
# %bb.25:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a1, $sp, 464                   # 8-byte Folded Reload
	alsl.d	$a4, $t8, $a1, 3
	ld.d	$a1, $sp, 416                   # 8-byte Folded Reload
	alsl.d	$a1, $t8, $a1, 3
	st.d	$a1, $sp, 688                   # 8-byte Folded Spill
	sltu	$a2, $t0, $a1
	st.d	$a4, $sp, 696                   # 8-byte Folded Spill
	sltu	$a4, $a4, $a3
	and	$a2, $a2, $a4
	bnez	$a2, .LBB2_80
# %bb.26:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a1, $sp, 792                   # 8-byte Folded Reload
	alsl.d	$ra, $a0, $a1, 3
	ld.d	$a1, $sp, 456                   # 8-byte Folded Reload
	alsl.d	$t3, $a0, $a1, 3
	sltu	$a2, $t0, $t3
	sltu	$a4, $ra, $a3
	and	$a2, $a2, $a4
	bnez	$a2, .LBB2_80
# %bb.27:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a1, $sp, 776                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 848                   # 8-byte Folded Reload
	alsl.d	$t7, $a2, $a1, 3
	alsl.d	$a5, $a2, $a6, 3
	sltu	$a2, $t0, $a5
	sltu	$a4, $t7, $a3
	and	$a2, $a2, $a4
	bnez	$a2, .LBB2_80
# %bb.28:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	st.d	$t5, $sp, 560                   # 8-byte Folded Spill
	alsl.d	$t5, $a0, $a1, 3
	alsl.d	$s0, $a0, $a6, 3
	sltu	$a2, $t0, $s0
	sltu	$a4, $t5, $a3
	and	$a2, $a2, $a4
	bnez	$a2, .LBB2_81
# %bb.29:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a1, $sp, 784                   # 8-byte Folded Reload
	alsl.d	$s1, $a0, $a1, 3
	ld.d	$a1, $sp, 448                   # 8-byte Folded Reload
	alsl.d	$s2, $a0, $a1, 3
	sltu	$a0, $t0, $s2
	sltu	$a2, $s1, $a3
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_81
# %bb.30:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a0, $sp, 800                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 840                   # 8-byte Folded Reload
	alsl.d	$a6, $a1, $a0, 3
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	alsl.d	$a4, $a1, $a0, 3
	sltu	$a0, $t0, $a4
	sltu	$a2, $a6, $a3
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_81
# %bb.31:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	move	$a0, $t8
	ld.d	$a1, $sp, 640                   # 8-byte Folded Reload
	alsl.d	$t8, $t8, $a1, 3
	st.d	$a0, $sp, 736                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 3
	st.d	$a0, $sp, 672                   # 8-byte Folded Spill
	sltu	$a0, $t0, $a0
	sltu	$a2, $t8, $a3
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_75
# %bb.32:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	sltu	$a0, $fp, $t6
	sltu	$a2, $s4, $t4
	and	$a0, $a0, $a2
	ld.d	$a1, $sp, 576                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 568                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_75
# %bb.33:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	sltu	$a0, $fp, $s5
	sltu	$a2, $s6, $t4
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_75
# %bb.34:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	sltu	$a0, $fp, $a1
	sltu	$a2, $s7, $t4
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_75
# %bb.35:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	sltu	$a0, $fp, $a3
	sltu	$a2, $s8, $t4
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_75
# %bb.36:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a0, $sp, 824                   # 8-byte Folded Reload
	sltu	$a0, $fp, $a0
	sltu	$a2, $a7, $t4
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_75
# %bb.37:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a0, $sp, 712                   # 8-byte Folded Reload
	sltu	$a0, $fp, $a0
	sltu	$a2, $t1, $t4
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_75
# %bb.38:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a0, $sp, 704                   # 8-byte Folded Reload
	sltu	$a0, $fp, $a0
	sltu	$a2, $t2, $t4
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_75
# %bb.39:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a0, $sp, 688                   # 8-byte Folded Reload
	sltu	$a0, $fp, $a0
	ld.d	$a2, $sp, 696                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_75
# %bb.40:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	sltu	$a0, $fp, $t3
	sltu	$a2, $ra, $t4
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_75
# %bb.41:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	sltu	$a0, $fp, $a5
	sltu	$a2, $t7, $t4
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_75
# %bb.42:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	sltu	$a0, $fp, $s0
	sltu	$a2, $t5, $t4
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_75
# %bb.43:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	sltu	$a0, $fp, $s2
	sltu	$a2, $s1, $t4
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_75
# %bb.44:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	sltu	$a0, $fp, $a4
	sltu	$a2, $a6, $t4
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_75
# %bb.45:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a0, $sp, 672                   # 8-byte Folded Reload
	sltu	$a0, $fp, $a0
	sltu	$a2, $t8, $t4
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_75
# %bb.46:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	sltu	$a0, $s4, $s5
	sltu	$a2, $s6, $t6
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_75
# %bb.47:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	sltu	$a0, $s4, $a1
	sltu	$a2, $s7, $t6
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_75
# %bb.48:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	sltu	$a0, $s4, $a3
	sltu	$a2, $s8, $t6
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_75
# %bb.49:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a0, $sp, 824                   # 8-byte Folded Reload
	sltu	$a0, $s4, $a0
	sltu	$a2, $a7, $t6
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_75
# %bb.50:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a0, $sp, 712                   # 8-byte Folded Reload
	sltu	$a0, $s4, $a0
	sltu	$a2, $t1, $t6
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_75
# %bb.51:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a0, $sp, 704                   # 8-byte Folded Reload
	sltu	$a0, $s4, $a0
	sltu	$a2, $t2, $t6
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_75
# %bb.52:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a0, $sp, 688                   # 8-byte Folded Reload
	sltu	$a0, $s4, $a0
	ld.d	$a2, $sp, 696                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t6
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_75
# %bb.53:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	sltu	$a0, $s4, $t3
	sltu	$a2, $ra, $t6
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_75
# %bb.54:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	sltu	$a0, $s4, $a5
	sltu	$a2, $t7, $t6
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_75
# %bb.55:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	sltu	$a0, $s4, $s0
	sltu	$a2, $t5, $t6
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_75
# %bb.56:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	sltu	$a0, $s4, $s2
	sltu	$a2, $s1, $t6
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_75
# %bb.57:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	sltu	$a0, $s4, $a4
	sltu	$a2, $a6, $t6
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_75
# %bb.58:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a0, $sp, 672                   # 8-byte Folded Reload
	sltu	$a0, $s4, $a0
	sltu	$a2, $t8, $t6
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_75
# %bb.59:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	sltu	$a0, $s6, $a1
	sltu	$a2, $s7, $s5
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_75
# %bb.60:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	sltu	$a0, $s6, $a3
	sltu	$a2, $s8, $s5
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_75
# %bb.61:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a0, $sp, 824                   # 8-byte Folded Reload
	sltu	$a0, $s6, $a0
	sltu	$a2, $a7, $s5
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_75
# %bb.62:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a0, $sp, 712                   # 8-byte Folded Reload
	sltu	$a0, $s6, $a0
	sltu	$a2, $t1, $s5
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_75
# %bb.63:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a0, $sp, 704                   # 8-byte Folded Reload
	sltu	$a0, $s6, $a0
	sltu	$a2, $t2, $s5
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_75
# %bb.64:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a0, $sp, 688                   # 8-byte Folded Reload
	sltu	$a0, $s6, $a0
	ld.d	$a1, $sp, 696                   # 8-byte Folded Reload
	sltu	$a2, $a1, $s5
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_75
# %bb.65:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	sltu	$a0, $s6, $t3
	sltu	$a2, $ra, $s5
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_75
# %bb.66:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	sltu	$a0, $s6, $a5
	sltu	$a2, $t7, $s5
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_75
# %bb.67:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	sltu	$a0, $s6, $s0
	sltu	$a2, $t5, $s5
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_75
# %bb.68:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	sltu	$a0, $s6, $s2
	sltu	$a2, $s1, $s5
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_75
# %bb.69:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	sltu	$a0, $s6, $a4
	sltu	$a2, $a6, $s5
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_75
# %bb.70:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a0, $sp, 672                   # 8-byte Folded Reload
	sltu	$a0, $s6, $a0
	sltu	$a2, $t8, $s5
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_75
# %bb.71:                               # %vector.ph
                                        #   in Loop: Header=BB2_16 Depth=3
	move	$a0, $zero
	move	$a2, $zero
	ld.d	$a1, $sp, 840                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 424                   # 8-byte Folded Reload
	add.d	$a1, $a4, $a1
	st.d	$a1, $sp, 840                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 736                   # 8-byte Folded Reload
	add.d	$s5, $a4, $a3
	ld.d	$a1, $sp, 816                   # 8-byte Folded Reload
	add.d	$a1, $a4, $a1
	st.d	$a1, $sp, 816                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 848                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 400                   # 8-byte Folded Reload
	add.d	$a1, $a4, $a1
	st.d	$a1, $sp, 848                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 632                   # 8-byte Folded Reload
	alsl.d	$a3, $a3, $a1, 3
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 392                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_72:                               # %vector.body
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_13 Depth=2
                                        #       Parent Loop BB2_16 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvldx	$xr0, $s7, $a2
	xvldx	$xr1, $t1, $a0
	xvldx	$xr2, $a3, $a2
	xvfmul.d	$xr1, $xr0, $xr1
	add.d	$a4, $a3, $a2
	xvfmul.d	$xr2, $xr1, $xr2
	xvldx	$xr3, $ra, $a0
	xvldx	$xr4, $t5, $a0
	xvstx	$xr2, $t0, $a2
	xvld	$xr2, $a4, -8
	xvfmul.d	$xr3, $xr0, $xr3
	xvfmul.d	$xr4, $xr0, $xr4
	xvldx	$xr5, $t7, $a0
	xvfmadd.d	$xr3, $xr3, $xr2, $xr4
	xvldx	$xr4, $s1, $a0
	xvld	$xr6, $a4, -16
	xvfmadd.d	$xr2, $xr5, $xr2, $xr3
	xvstx	$xr2, $fp, $a2
	xvfmul.d	$xr0, $xr0, $xr4
	xvfmul.d	$xr0, $xr0, $xr6
	xvldx	$xr2, $a7, $a0
	xvldx	$xr3, $a6, $a2
	xvldx	$xr4, $s8, $a0
	xvldx	$xr5, $t2, $a2
	xvldx	$xr6, $t8, $a2
	xvstx	$xr0, $s4, $a2
	xvfmul.d	$xr0, $xr3, $xr4
	xvfmadd.d	$xr0, $xr0, $xr5, $xr2
	xvfmadd.d	$xr0, $xr1, $xr6, $xr0
	xvstx	$xr0, $s6, $a2
	addi.d	$a2, $a2, 32
	add.d	$a0, $a0, $a5
	bne	$a1, $a2, .LBB2_72
# %bb.73:                               # %middle.block
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	move	$t5, $a1
	ld.d	$ra, $sp, 728                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 840                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 848                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 816                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 832                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 720                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB2_15
	b	.LBB2_77
	.p2align	4, , 16
.LBB2_74:                               #   in Loop: Header=BB2_16 Depth=3
	move	$t5, $zero
	move	$s5, $t8
	b	.LBB2_77
	.p2align	4, , 16
.LBB2_75:                               #   in Loop: Header=BB2_16 Depth=3
	ld.d	$s5, $sp, 736                   # 8-byte Folded Reload
.LBB2_76:                               # %for.body749.us.us.preheader
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$ra, $sp, 728                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 840                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 848                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 816                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 832                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 560                   # 8-byte Folded Reload
.LBB2_77:                               # %for.body749.us.us.preheader
                                        #   in Loop: Header=BB2_16 Depth=3
	move	$a0, $zero
	move	$a2, $zero
	ld.d	$a1, $sp, 808                   # 8-byte Folded Reload
	alsl.d	$a3, $s8, $a1, 3
	ld.d	$a1, $sp, 800                   # 8-byte Folded Reload
	alsl.d	$a4, $s8, $a1, 3
	ld.d	$a1, $sp, 720                   # 8-byte Folded Reload
	sub.d	$a5, $a1, $t5
	ld.d	$a1, $sp, 632                   # 8-byte Folded Reload
	alsl.d	$a6, $s5, $a1, 3
	ld.d	$a1, $sp, 648                   # 8-byte Folded Reload
	alsl.d	$a7, $s5, $a1, 3
	ld.d	$a1, $sp, 640                   # 8-byte Folded Reload
	alsl.d	$t0, $s5, $a1, 3
	ld.d	$a1, $sp, 752                   # 8-byte Folded Reload
	alsl.d	$t1, $s7, $a1, 3
	ld.d	$a1, $sp, 760                   # 8-byte Folded Reload
	alsl.d	$t2, $s7, $a1, 3
	ld.d	$a1, $sp, 744                   # 8-byte Folded Reload
	alsl.d	$t3, $s7, $a1, 3
	ld.d	$a1, $sp, 768                   # 8-byte Folded Reload
	alsl.d	$t4, $s7, $a1, 3
	ld.d	$fp, $sp, 776                   # 8-byte Folded Reload
	alsl.d	$t5, $s4, $fp, 3
	alsl.d	$t6, $s4, $ra, 3
	ld.d	$a1, $sp, 664                   # 8-byte Folded Reload
	add.d	$s0, $a1, $s4
	alsl.d	$t7, $s0, $ra, 3
	ld.d	$a1, $sp, 792                   # 8-byte Folded Reload
	alsl.d	$t8, $s0, $a1, 3
	alsl.d	$fp, $s0, $fp, 3
	ld.d	$a1, $sp, 784                   # 8-byte Folded Reload
	alsl.d	$s0, $s0, $a1, 3
	ld.d	$a1, $sp, 656                   # 8-byte Folded Reload
	alsl.d	$s1, $s4, $a1, 3
	.p2align	4, , 16
.LBB2_78:                               # %for.body749.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_13 Depth=2
                                        #       Parent Loop BB2_16 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $a3, $a2
	fldx.d	$fa1, $t7, $a0
	fldx.d	$fa2, $a6, $a2
	fmul.d	$fa0, $fa0, $fa1
	add.d	$s2, $a6, $a2
	fmul.d	$fa0, $fa0, $fa2
	fstx.d	$fa0, $t1, $a2
	fldx.d	$fa0, $a3, $a2
	fldx.d	$fa1, $t8, $a0
	fldx.d	$fa2, $fp, $a0
	fld.d	$fa3, $s2, -8
	fldx.d	$fa4, $t5, $a0
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	fstx.d	$fa0, $t2, $a2
	fldx.d	$fa0, $a3, $a2
	fldx.d	$fa1, $s0, $a0
	fld.d	$fa2, $s2, -16
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fstx.d	$fa0, $t3, $a2
	fldx.d	$fa0, $a4, $a2
	fldx.d	$fa1, $s1, $a0
	fldx.d	$fa2, $t6, $a0
	fmul.d	$fa0, $fa0, $fa1
	fldx.d	$fa1, $a7, $a2
	fldx.d	$fa3, $a3, $a2
	fldx.d	$fa4, $t7, $a0
	fldx.d	$fa5, $t0, $a2
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	addi.d	$s5, $s5, 1
	fmul.d	$fa1, $fa3, $fa4
	fmadd.d	$fa0, $fa1, $fa5, $fa0
	fstx.d	$fa0, $t4, $a2
	addi.d	$s8, $s8, 1
	add.d	$s4, $s4, $s6
	addi.d	$s7, $s7, 1
	addi.d	$a2, $a2, 8
	addi.w	$a5, $a5, -1
	add.d	$a0, $a0, $s3
	bnez	$a5, .LBB2_78
	b	.LBB2_15
.LBB2_79:                               #   in Loop: Header=BB2_16 Depth=3
	move	$s5, $t8
	ld.d	$s8, $sp, 840                   # 8-byte Folded Reload
	b	.LBB2_86
.LBB2_80:                               #   in Loop: Header=BB2_16 Depth=3
	move	$s5, $t8
	ld.d	$ra, $sp, 728                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 840                   # 8-byte Folded Reload
	b	.LBB2_86
.LBB2_81:                               #   in Loop: Header=BB2_16 Depth=3
	move	$s5, $t8
	b	.LBB2_76
.LBB2_82:                               #   in Loop: Header=BB2_16 Depth=3
	move	$s5, $t8
	ld.d	$s8, $sp, 840                   # 8-byte Folded Reload
	move	$s4, $a1
	b	.LBB2_87
.LBB2_83:                               #   in Loop: Header=BB2_16 Depth=3
	move	$s5, $t8
	ld.d	$s4, $sp, 848                   # 8-byte Folded Reload
	b	.LBB2_77
.LBB2_84:                               #   in Loop: Header=BB2_16 Depth=3
	move	$s5, $t8
	ld.d	$s4, $sp, 848                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 832                   # 8-byte Folded Reload
	b	.LBB2_77
.LBB2_85:                               #   in Loop: Header=BB2_16 Depth=3
	move	$s5, $t8
.LBB2_86:                               # %for.body749.us.us.preheader
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$s4, $sp, 848                   # 8-byte Folded Reload
.LBB2_87:                               # %for.body749.us.us.preheader
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$s7, $sp, 816                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 832                   # 8-byte Folded Reload
	b	.LBB2_77
	.p2align	4, , 16
.LBB2_88:                               # %sw.default
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$t4, $sp, 728                   # 8-byte Folded Reload
	blt	$a3, $s5, .LBB2_2
# %bb.89:                               # %for.cond1405.preheader.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 680                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB2_2
# %bb.90:                               # %for.cond1405.preheader.us.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	move	$t6, $zero
	ld.d	$t5, $sp, 720                   # 8-byte Folded Reload
	mul.d	$a0, $t5, $s6
	sub.d	$a3, $a4, $t5
	sub.d	$t7, $a6, $t5
	sub.d	$fp, $t1, $a0
	sub.d	$s0, $t0, $t5
	ld.d	$a1, $sp, 680                   # 8-byte Folded Reload
	sub.d	$a2, $a5, $a1
	mul.d	$a2, $a2, $a4
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	sub.d	$a2, $a7, $a1
	mul.d	$a2, $a2, $a6
	st.d	$a2, $sp, 176                   # 8-byte Folded Spill
	mul.d	$a2, $a1, $t1
	sub.d	$a2, $t3, $a2
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	sub.d	$a2, $t2, $a1
	mul.d	$a2, $a2, $t0
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
	addi.d	$a2, $a1, -1
	st.d	$a3, $sp, 472                   # 8-byte Folded Spill
	mul.d	$a3, $a3, $a2
	add.d	$a3, $a4, $a3
	sub.d	$a1, $a3, $t5
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	st.d	$t7, $sp, 464                   # 8-byte Folded Spill
	mul.d	$a3, $t7, $a2
	add.d	$a3, $a6, $a3
	sub.d	$a1, $a3, $t5
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 456                   # 8-byte Folded Spill
	mul.d	$a3, $fp, $a2
	add.d	$a3, $a3, $t1
	sub.d	$a0, $a3, $a0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 448                   # 8-byte Folded Spill
	mul.d	$a0, $s0, $a2
	add.d	$a0, $t0, $a0
	sub.d	$a0, $a0, $t5
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 712                   # 8-byte Folded Reload
	bstrpick.d	$a6, $a0, 31, 0
	ld.d	$a0, $sp, 704                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$a2, $t5, -1
	bstrpick.d	$a2, $a2, 31, 0
	ld.d	$a1, $sp, 752                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a1, 3
	addi.d	$a1, $a3, 8
	st.d	$a1, $sp, 384                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 760                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a1, 3
	addi.d	$a1, $a3, 8
	st.d	$a1, $sp, 376                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 744                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a1, 3
	addi.d	$a1, $a3, 8
	st.d	$a1, $sp, 368                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 768                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a1, 3
	addi.d	$a1, $a3, 8
	st.d	$a1, $sp, 360                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 808                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a1, 3
	addi.d	$a1, $a3, 8
	st.d	$a1, $sp, 352                   # 8-byte Folded Spill
	addi.d	$a3, $t4, 8
	sub.d	$a4, $a2, $a6
	alsl.d	$a1, $a4, $a3, 3
	st.d	$a1, $sp, 344                   # 8-byte Folded Spill
	alsl.d	$a7, $a2, $a3, 3
	ori	$a1, $zero, 23
	sltu	$a3, $a1, $t5
	addi.d	$a5, $s6, -1
	sltui	$a5, $a5, 1
	and	$a1, $a3, $a5
	st.d	$a1, $sp, 432                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a1, 3
	addi.d	$a5, $a3, 16
	addi.d	$t0, $a1, 8
	alsl.d	$a3, $a0, $a1, 3
	addi.d	$a1, $a3, -8
	st.d	$a1, $sp, 328                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a1, 3
	addi.d	$a1, $a3, 8
	st.d	$a1, $sp, 320                   # 8-byte Folded Spill
	st.d	$a6, $sp, 520                   # 8-byte Folded Spill
	slli.d	$a3, $a6, 3
	sub.d	$a1, $t4, $a3
	st.d	$a1, $sp, 504                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 528                   # 8-byte Folded Reload
	sub.d	$a3, $a1, $a3
	st.d	$a3, $sp, 496                   # 8-byte Folded Spill
	addi.d	$a3, $a1, 8
	alsl.d	$a1, $a4, $a3, 3
	st.d	$a1, $sp, 312                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 536                   # 8-byte Folded Reload
	alsl.d	$a4, $a2, $a1, 3
	addi.d	$a1, $a4, 8
	st.d	$a1, $sp, 304                   # 8-byte Folded Spill
	alsl.d	$a1, $a2, $a3, 3
	st.d	$a1, $sp, 296                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 792                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a1, 3
	addi.d	$a1, $a3, 8
	st.d	$a1, $sp, 288                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 776                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a1, 3
	addi.d	$a1, $a3, 8
	st.d	$a1, $sp, 280                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 784                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a1, 3
	addi.d	$a1, $a3, 8
	st.d	$a1, $sp, 272                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 800                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a1, 3
	addi.d	$a1, $a3, 8
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 816                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a1, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 488                   # 8-byte Folded Spill
	addi.d	$a1, $a2, 16
	st.d	$a1, $sp, 256                   # 8-byte Folded Spill
	bstrpick.d	$a2, $t5, 30, 2
	slli.d	$a1, $a2, 2
	slli.d	$a2, $t5, 3
	bstrpick.d	$a2, $a2, 33, 5
	slli.d	$a2, $a2, 5
	st.d	$a2, $sp, 232                   # 8-byte Folded Spill
	st.d	$a5, $sp, 336                   # 8-byte Folded Spill
	alsl.d	$a2, $a0, $a5, 3
	st.d	$a2, $sp, 240                   # 8-byte Folded Spill
	st.d	$t0, $sp, 512                   # 8-byte Folded Spill
	alsl.d	$a0, $a0, $t0, 3
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	mul.d	$a0, $a1, $s6
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	slli.d	$a0, $s6, 5
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	slli.d	$t2, $s6, 3
	st.d	$a7, $sp, 440                   # 8-byte Folded Spill
	st.d	$t2, $sp, 824                   # 8-byte Folded Spill
	b	.LBB2_93
	.p2align	4, , 16
.LBB2_91:                               # %for.cond1408.preheader.us686.preheader
                                        #   in Loop: Header=BB2_93 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	add.d	$t8, $a0, $t8
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	add.d	$s8, $a0, $s8
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	add.d	$s4, $a0, $s4
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	add.d	$s7, $a0, $s7
.LBB2_92:                               # %for.cond1405.for.end1540_crit_edge.us
                                        #   in Loop: Header=BB2_93 Depth=2
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	add.w	$t8, $t8, $a0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	add.w	$s8, $s8, $a0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	add.w	$s4, $a0, $s4
	ld.d	$t6, $sp, 192                   # 8-byte Folded Reload
	addi.w	$t6, $t6, 1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	add.w	$s7, $s7, $a0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	beq	$t6, $a0, .LBB2_2
.LBB2_93:                               # %for.cond1405.preheader.us
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_96 Depth 3
                                        #         Child Loop BB2_180 Depth 4
                                        #         Child Loop BB2_186 Depth 4
	st.d	$t6, $sp, 192                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB2_91
# %bb.94:                               # %for.cond1408.preheader.us.us.preheader
                                        #   in Loop: Header=BB2_93 Depth=2
	move	$t3, $zero
	b	.LBB2_96
	.p2align	4, , 16
.LBB2_95:                               # %for.cond1408.for.end1525_crit_edge.us.us
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	add.w	$t8, $a0, $a4
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	add.w	$s8, $a0, $s8
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	add.w	$s4, $a0, $s4
	ld.d	$t3, $sp, 672                   # 8-byte Folded Reload
	addi.w	$t3, $t3, 1
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	add.w	$s7, $a0, $s7
	ld.d	$t4, $sp, 728                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 680                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 440                   # 8-byte Folded Reload
	beq	$t3, $a0, .LBB2_92
.LBB2_96:                               # %for.cond1408.preheader.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_93 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_180 Depth 4
                                        #         Child Loop BB2_186 Depth 4
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	st.d	$t3, $sp, 672                   # 8-byte Folded Spill
	beqz	$a0, .LBB2_182
# %bb.97:                               # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a0, $sp, 752                   # 8-byte Folded Reload
	alsl.d	$s0, $s7, $a0, 3
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$t6, $s7, $a0, 3
	ld.d	$a0, $sp, 760                   # 8-byte Folded Reload
	alsl.d	$s1, $s7, $a0, 3
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$a5, $s7, $a0, 3
	sltu	$a0, $s0, $a5
	sltu	$a2, $s1, $t6
	and	$a0, $a0, $a2
	move	$t7, $zero
	ld.d	$t0, $sp, 536                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_187
# %bb.98:                               # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a0, $sp, 744                   # 8-byte Folded Reload
	alsl.d	$s2, $s7, $a0, 3
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	alsl.d	$t1, $s7, $a0, 3
	sltu	$a0, $s0, $t1
	sltu	$a2, $s2, $t6
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_187
# %bb.99:                               # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a0, $sp, 768                   # 8-byte Folded Reload
	alsl.d	$s3, $s7, $a0, 3
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	alsl.d	$a4, $s7, $a0, 3
	sltu	$a0, $s0, $a4
	sltu	$a2, $s3, $t6
	and	$a0, $a0, $a2
	ld.d	$a1, $sp, 544                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_187
# %bb.100:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a0, $sp, 808                   # 8-byte Folded Reload
	alsl.d	$a2, $s8, $a0, 3
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	alsl.d	$a0, $s8, $a0, 3
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	sltu	$a0, $s0, $a0
	st.d	$a2, $sp, 424                   # 8-byte Folded Spill
	sltu	$a2, $a2, $t6
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_187
# %bb.101:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	alsl.d	$a2, $s4, $a0, 3
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	alsl.d	$a0, $s4, $a0, 3
	st.d	$a0, $sp, 664                   # 8-byte Folded Spill
	sltu	$a0, $s0, $a0
	st.d	$a2, $sp, 712                   # 8-byte Folded Spill
	sltu	$a2, $a2, $t6
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_187
# %bb.102:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	alsl.d	$a2, $s4, $t4, 3
	alsl.d	$a0, $s4, $a7, 3
	st.d	$a0, $sp, 656                   # 8-byte Folded Spill
	sltu	$a0, $s0, $a0
	st.d	$a2, $sp, 416                   # 8-byte Folded Spill
	sltu	$a2, $a2, $t6
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_187
# %bb.103:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a0, $sp, 520                   # 8-byte Folded Reload
	add.d	$a0, $a0, $s4
	alsl.d	$a3, $a0, $t4, 3
	alsl.d	$a2, $a0, $a7, 3
	st.d	$a2, $sp, 648                   # 8-byte Folded Spill
	sltu	$a2, $s0, $a2
	st.d	$a3, $sp, 400                   # 8-byte Folded Spill
	sltu	$a3, $a3, $t6
	and	$a2, $a2, $a3
	bnez	$a2, .LBB2_187
# %bb.104:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a2, $sp, 512                   # 8-byte Folded Reload
	alsl.d	$a3, $t8, $a2, 3
	ld.d	$a2, $sp, 336                   # 8-byte Folded Reload
	alsl.d	$a2, $t8, $a2, 3
	st.d	$a2, $sp, 640                   # 8-byte Folded Spill
	sltu	$a2, $s0, $a2
	move	$s5, $a3
	sltu	$a3, $a3, $t6
	and	$a2, $a2, $a3
	ld.d	$a6, $sp, 320                   # 8-byte Folded Reload
	bnez	$a2, .LBB2_187
# %bb.105:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a2, $sp, 328                   # 8-byte Folded Reload
	alsl.d	$a3, $t8, $a2, 3
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	alsl.d	$a2, $t8, $a2, 3
	move	$s6, $a2
	sltu	$a2, $s0, $a2
	st.d	$a3, $sp, 632                   # 8-byte Folded Spill
	sltu	$a3, $a3, $t6
	and	$a2, $a2, $a3
	bnez	$a2, .LBB2_187
# %bb.106:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	st.d	$s7, $sp, 816                   # 8-byte Folded Spill
	alsl.d	$a3, $s4, $a1, 3
	alsl.d	$a2, $s4, $a6, 3
	move	$a7, $a2
	sltu	$a2, $s0, $a2
	move	$fp, $a3
	sltu	$a3, $a3, $t6
	and	$a2, $a2, $a3
	bnez	$a2, .LBB2_188
# %bb.107:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	alsl.d	$s7, $a0, $a1, 3
	alsl.d	$a1, $a0, $a6, 3
	sltu	$a2, $s0, $a1
	sltu	$a3, $s7, $t6
	and	$a2, $a2, $a3
	bnez	$a2, .LBB2_188
# %bb.108:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	move	$ra, $a1
	ld.d	$a1, $sp, 496                   # 8-byte Folded Reload
	alsl.d	$a6, $s4, $a1, 3
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	alsl.d	$a1, $s4, $a1, 3
	sltu	$a2, $s0, $a1
	sltu	$a3, $a6, $t6
	and	$a2, $a2, $a3
	bnez	$a2, .LBB2_188
# %bb.109:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	move	$t5, $a1
	st.d	$s8, $sp, 840                   # 8-byte Folded Spill
	alsl.d	$a3, $s4, $t0, 3
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	alsl.d	$a2, $s4, $a1, 3
	st.d	$a2, $sp, 624                   # 8-byte Folded Spill
	sltu	$a2, $s0, $a2
	st.d	$a3, $sp, 704                   # 8-byte Folded Spill
	sltu	$a3, $a3, $t6
	and	$a2, $a2, $a3
	bnez	$a2, .LBB2_189
# %bb.110:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	alsl.d	$s8, $a0, $t0, 3
	alsl.d	$a1, $a0, $a1, 3
	st.d	$a1, $sp, 616                   # 8-byte Folded Spill
	sltu	$a2, $s0, $a1
	sltu	$a3, $s8, $t6
	and	$a2, $a2, $a3
	bnez	$a2, .LBB2_189
# %bb.111:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a1, $sp, 528                   # 8-byte Folded Reload
	alsl.d	$a3, $s4, $a1, 3
	ld.d	$t0, $sp, 296                   # 8-byte Folded Reload
	alsl.d	$a2, $s4, $t0, 3
	st.d	$a2, $sp, 608                   # 8-byte Folded Spill
	sltu	$a2, $s0, $a2
	st.d	$a3, $sp, 696                   # 8-byte Folded Spill
	sltu	$a3, $a3, $t6
	and	$a2, $a2, $a3
	bnez	$a2, .LBB2_189
# %bb.112:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	st.d	$s4, $sp, 848                   # 8-byte Folded Spill
	alsl.d	$a3, $a0, $a1, 3
	alsl.d	$a1, $a0, $t0, 3
	st.d	$a1, $sp, 600                   # 8-byte Folded Spill
	sltu	$a2, $s0, $a1
	st.d	$a3, $sp, 688                   # 8-byte Folded Spill
	sltu	$a3, $a3, $t6
	and	$a2, $a2, $a3
	bnez	$a2, .LBB2_191
# %bb.113:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	st.d	$t7, $sp, 392                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 792                   # 8-byte Folded Reload
	alsl.d	$s4, $a0, $a1, 3
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	st.d	$a1, $sp, 592                   # 8-byte Folded Spill
	sltu	$a2, $s0, $a1
	sltu	$a3, $s4, $t6
	and	$a2, $a2, $a3
	ld.d	$t0, $sp, 280                   # 8-byte Folded Reload
	bnez	$a2, .LBB2_190
# %bb.114:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a1, $sp, 776                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 848                   # 8-byte Folded Reload
	alsl.d	$t7, $a2, $a1, 3
	alsl.d	$a2, $a2, $t0, 3
	st.d	$a2, $sp, 584                   # 8-byte Folded Spill
	sltu	$a2, $s0, $a2
	sltu	$a3, $t7, $t6
	and	$a2, $a2, $a3
	bnez	$a2, .LBB2_190
# %bb.115:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	st.d	$t8, $sp, 736                   # 8-byte Folded Spill
	alsl.d	$t4, $a0, $a1, 3
	alsl.d	$a1, $a0, $t0, 3
	st.d	$a1, $sp, 576                   # 8-byte Folded Spill
	sltu	$a2, $s0, $a1
	sltu	$a3, $t4, $t6
	and	$a2, $a2, $a3
	bnez	$a2, .LBB2_183
# %bb.116:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a1, $sp, 784                   # 8-byte Folded Reload
	alsl.d	$t8, $a0, $a1, 3
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 3
	st.d	$a0, $sp, 568                   # 8-byte Folded Spill
	sltu	$a0, $s0, $a0
	sltu	$a2, $t8, $t6
	and	$a0, $a0, $a2
	ld.d	$a3, $sp, 416                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_183
# %bb.117:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a0, $sp, 800                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 840                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a0, 3
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 3
	st.d	$a0, $sp, 560                   # 8-byte Folded Spill
	sltu	$a0, $s0, $a0
	st.d	$a2, $sp, 856                   # 8-byte Folded Spill
	sltu	$a2, $a2, $t6
	and	$a0, $a0, $a2
	ld.d	$t2, $sp, 408                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_183
# %bb.118:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	move	$t0, $s6
	move	$s6, $s5
	ld.d	$a0, $sp, 736                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 488                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a1, 3
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 3
	st.d	$a0, $sp, 552                   # 8-byte Folded Spill
	sltu	$a0, $s0, $a0
	move	$t3, $a2
	sltu	$a2, $a2, $t6
	and	$a0, $a0, $a2
	ld.d	$s5, $sp, 400                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_183
# %bb.119:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	sltu	$a0, $s1, $t1
	sltu	$a2, $s2, $a5
	and	$a0, $a0, $a2
	ld.d	$t6, $sp, 424                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_183
# %bb.120:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	sltu	$a0, $s1, $a4
	sltu	$a2, $s3, $a5
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.121:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	sltu	$a0, $s1, $t2
	sltu	$a2, $t6, $a5
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.122:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a0, $sp, 664                   # 8-byte Folded Reload
	sltu	$a0, $s1, $a0
	ld.d	$a1, $sp, 712                   # 8-byte Folded Reload
	sltu	$a2, $a1, $a5
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.123:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a0, $sp, 656                   # 8-byte Folded Reload
	sltu	$a0, $s1, $a0
	sltu	$a2, $a3, $a5
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.124:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a0, $sp, 648                   # 8-byte Folded Reload
	sltu	$a0, $s1, $a0
	sltu	$a2, $s5, $a5
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.125:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a0, $sp, 640                   # 8-byte Folded Reload
	sltu	$a0, $s1, $a0
	sltu	$a2, $s6, $a5
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.126:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	sltu	$a0, $s1, $t0
	ld.d	$a1, $sp, 632                   # 8-byte Folded Reload
	sltu	$a2, $a1, $a5
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.127:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	sltu	$a0, $s1, $a7
	sltu	$a2, $fp, $a5
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.128:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	sltu	$a0, $s1, $ra
	sltu	$a2, $s7, $a5
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.129:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	sltu	$a0, $s1, $t5
	sltu	$a2, $a6, $a5
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.130:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a0, $sp, 624                   # 8-byte Folded Reload
	sltu	$a0, $s1, $a0
	ld.d	$a1, $sp, 704                   # 8-byte Folded Reload
	sltu	$a2, $a1, $a5
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.131:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a0, $sp, 616                   # 8-byte Folded Reload
	sltu	$a0, $s1, $a0
	sltu	$a2, $s8, $a5
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.132:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a0, $sp, 608                   # 8-byte Folded Reload
	sltu	$a0, $s1, $a0
	ld.d	$a1, $sp, 696                   # 8-byte Folded Reload
	sltu	$a2, $a1, $a5
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.133:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a0, $sp, 600                   # 8-byte Folded Reload
	sltu	$a0, $s1, $a0
	ld.d	$a1, $sp, 688                   # 8-byte Folded Reload
	sltu	$a2, $a1, $a5
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.134:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a0, $sp, 592                   # 8-byte Folded Reload
	sltu	$a0, $s1, $a0
	sltu	$a2, $s4, $a5
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.135:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a0, $sp, 584                   # 8-byte Folded Reload
	sltu	$a0, $s1, $a0
	sltu	$a2, $t7, $a5
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.136:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a0, $sp, 576                   # 8-byte Folded Reload
	sltu	$a0, $s1, $a0
	sltu	$a2, $t4, $a5
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.137:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a0, $sp, 568                   # 8-byte Folded Reload
	sltu	$a0, $s1, $a0
	sltu	$a2, $t8, $a5
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.138:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a0, $sp, 560                   # 8-byte Folded Reload
	sltu	$a0, $s1, $a0
	ld.d	$a1, $sp, 856                   # 8-byte Folded Reload
	sltu	$a2, $a1, $a5
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.139:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a0, $sp, 552                   # 8-byte Folded Reload
	sltu	$a0, $s1, $a0
	sltu	$a2, $t3, $a5
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.140:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	sltu	$a0, $s2, $a4
	sltu	$a2, $s3, $t1
	and	$a0, $a0, $a2
	ld.d	$a5, $sp, 856                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_183
# %bb.141:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	sltu	$a0, $s2, $t2
	sltu	$a2, $t6, $t1
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.142:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a0, $sp, 664                   # 8-byte Folded Reload
	sltu	$a0, $s2, $a0
	ld.d	$a1, $sp, 712                   # 8-byte Folded Reload
	sltu	$a2, $a1, $t1
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.143:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a0, $sp, 656                   # 8-byte Folded Reload
	sltu	$a0, $s2, $a0
	sltu	$a2, $a3, $t1
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.144:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a0, $sp, 648                   # 8-byte Folded Reload
	sltu	$a0, $s2, $a0
	sltu	$a2, $s5, $t1
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.145:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a0, $sp, 640                   # 8-byte Folded Reload
	sltu	$a0, $s2, $a0
	sltu	$a2, $s6, $t1
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.146:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	sltu	$a0, $s2, $t0
	ld.d	$a1, $sp, 632                   # 8-byte Folded Reload
	sltu	$a2, $a1, $t1
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.147:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	sltu	$a0, $s2, $a7
	sltu	$a2, $fp, $t1
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.148:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	sltu	$a0, $s2, $ra
	sltu	$a2, $s7, $t1
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.149:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	sltu	$a0, $s2, $t5
	sltu	$a2, $a6, $t1
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.150:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a0, $sp, 624                   # 8-byte Folded Reload
	sltu	$a0, $s2, $a0
	ld.d	$a1, $sp, 704                   # 8-byte Folded Reload
	sltu	$a2, $a1, $t1
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.151:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a0, $sp, 616                   # 8-byte Folded Reload
	sltu	$a0, $s2, $a0
	sltu	$a2, $s8, $t1
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.152:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a0, $sp, 608                   # 8-byte Folded Reload
	sltu	$a0, $s2, $a0
	ld.d	$a1, $sp, 696                   # 8-byte Folded Reload
	sltu	$a2, $a1, $t1
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.153:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a0, $sp, 600                   # 8-byte Folded Reload
	sltu	$a0, $s2, $a0
	ld.d	$a1, $sp, 688                   # 8-byte Folded Reload
	sltu	$a2, $a1, $t1
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.154:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a0, $sp, 592                   # 8-byte Folded Reload
	sltu	$a0, $s2, $a0
	sltu	$a2, $s4, $t1
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.155:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a0, $sp, 584                   # 8-byte Folded Reload
	sltu	$a0, $s2, $a0
	sltu	$a2, $t7, $t1
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.156:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a0, $sp, 576                   # 8-byte Folded Reload
	sltu	$a0, $s2, $a0
	sltu	$a2, $t4, $t1
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.157:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a0, $sp, 568                   # 8-byte Folded Reload
	sltu	$a0, $s2, $a0
	sltu	$a2, $t8, $t1
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.158:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a0, $sp, 560                   # 8-byte Folded Reload
	sltu	$a0, $s2, $a0
	sltu	$a2, $a5, $t1
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.159:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a0, $sp, 552                   # 8-byte Folded Reload
	sltu	$a0, $s2, $a0
	sltu	$a2, $t3, $t1
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.160:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	sltu	$a0, $s3, $t2
	sltu	$a2, $t6, $a4
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.161:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a0, $sp, 664                   # 8-byte Folded Reload
	sltu	$a0, $s3, $a0
	ld.d	$a1, $sp, 712                   # 8-byte Folded Reload
	sltu	$a2, $a1, $a4
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.162:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a0, $sp, 656                   # 8-byte Folded Reload
	sltu	$a0, $s3, $a0
	sltu	$a2, $a3, $a4
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.163:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a0, $sp, 648                   # 8-byte Folded Reload
	sltu	$a0, $s3, $a0
	sltu	$a2, $s5, $a4
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.164:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a0, $sp, 640                   # 8-byte Folded Reload
	sltu	$a0, $s3, $a0
	sltu	$a2, $s6, $a4
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.165:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	sltu	$a0, $s3, $t0
	ld.d	$a1, $sp, 632                   # 8-byte Folded Reload
	sltu	$a2, $a1, $a4
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.166:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	sltu	$a0, $s3, $a7
	sltu	$a2, $fp, $a4
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.167:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	sltu	$a0, $s3, $ra
	sltu	$a2, $s7, $a4
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.168:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	sltu	$a0, $s3, $t5
	sltu	$a2, $a6, $a4
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.169:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a0, $sp, 624                   # 8-byte Folded Reload
	sltu	$a0, $s3, $a0
	ld.d	$a1, $sp, 704                   # 8-byte Folded Reload
	sltu	$a2, $a1, $a4
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.170:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a0, $sp, 616                   # 8-byte Folded Reload
	sltu	$a0, $s3, $a0
	sltu	$a2, $s8, $a4
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.171:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a0, $sp, 608                   # 8-byte Folded Reload
	sltu	$a0, $s3, $a0
	ld.d	$a1, $sp, 696                   # 8-byte Folded Reload
	sltu	$a2, $a1, $a4
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.172:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a0, $sp, 600                   # 8-byte Folded Reload
	sltu	$a0, $s3, $a0
	ld.d	$a1, $sp, 688                   # 8-byte Folded Reload
	sltu	$a2, $a1, $a4
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.173:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a0, $sp, 592                   # 8-byte Folded Reload
	sltu	$a0, $s3, $a0
	sltu	$a2, $s4, $a4
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.174:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a0, $sp, 584                   # 8-byte Folded Reload
	sltu	$a0, $s3, $a0
	sltu	$a2, $t7, $a4
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.175:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a0, $sp, 576                   # 8-byte Folded Reload
	sltu	$a0, $s3, $a0
	sltu	$a2, $t4, $a4
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.176:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a0, $sp, 568                   # 8-byte Folded Reload
	sltu	$a0, $s3, $a0
	sltu	$a2, $t8, $a4
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.177:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a0, $sp, 560                   # 8-byte Folded Reload
	sltu	$a0, $s3, $a0
	sltu	$a2, $a5, $a4
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.178:                              # %vector.memcheck1106
                                        #   in Loop: Header=BB2_96 Depth=3
	move	$t1, $t3
	ld.d	$a0, $sp, 552                   # 8-byte Folded Reload
	sltu	$a0, $s3, $a0
	sltu	$a2, $t3, $a4
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_183
# %bb.179:                              # %vector.ph1534
                                        #   in Loop: Header=BB2_96 Depth=3
	move	$a0, $zero
	move	$a2, $zero
	ld.d	$a1, $sp, 840                   # 8-byte Folded Reload
	move	$a7, $fp
	ld.d	$ra, $sp, 704                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 696                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 688                   # 8-byte Folded Reload
	move	$t2, $s5
	move	$s5, $a3
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	add.d	$a1, $a3, $a1
	st.d	$a1, $sp, 840                   # 8-byte Folded Spill
	ld.d	$t3, $sp, 736                   # 8-byte Folded Reload
	add.d	$a4, $a3, $t3
	ld.d	$a1, $sp, 816                   # 8-byte Folded Reload
	add.d	$a1, $a3, $a1
	st.d	$a1, $sp, 816                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 848                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	add.d	$a1, $a3, $a1
	st.d	$a1, $sp, 848                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 480                   # 8-byte Folded Reload
	alsl.d	$a3, $t3, $a1, 3
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 712                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_180:                              # %vector.body1537
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_93 Depth=2
                                        #       Parent Loop BB2_96 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvldx	$xr0, $t6, $a2
	xvldx	$xr1, $t2, $a0
	xvfmul.d	$xr1, $xr0, $xr1
	xvldx	$xr2, $fp, $a0
	xvldx	$xr3, $a3, $a2
	xvldx	$xr4, $t5, $a0
	add.d	$a5, $a3, $a2
	xvfmul.d	$xr2, $xr0, $xr2
	xvfmadd.d	$xr2, $xr1, $xr3, $xr2
	xvfmadd.d	$xr2, $xr4, $xr3, $xr2
	xvstx	$xr2, $s0, $a2
	xvldx	$xr2, $s4, $a0
	xvldx	$xr3, $t4, $a0
	xvld	$xr5, $a5, -8
	xvldx	$xr6, $t7, $a0
	xvfmul.d	$xr2, $xr0, $xr2
	xvfmul.d	$xr3, $xr0, $xr3
	xvfmadd.d	$xr2, $xr2, $xr5, $xr3
	xvfmadd.d	$xr2, $xr6, $xr5, $xr2
	xvldx	$xr3, $t8, $a0
	xvldx	$xr5, $s8, $a0
	xvld	$xr6, $a5, -16
	xvldx	$xr7, $ra, $a0
	xvfmul.d	$xr3, $xr0, $xr3
	xvfmul.d	$xr5, $xr0, $xr5
	xvfmadd.d	$xr3, $xr3, $xr6, $xr5
	xvfmadd.d	$xr3, $xr7, $xr6, $xr3
	xvldx	$xr5, $s5, $a0
	ld.d	$a5, $sp, 856                   # 8-byte Folded Reload
	xvldx	$xr6, $a5, $a2
	xvldx	$xr7, $t3, $a0
	xvldx	$xr8, $s6, $a2
	xvldx	$xr9, $t1, $a2
	xvldx	$xr10, $a6, $a0
	xvfmul.d	$xr7, $xr6, $xr7
	xvfmadd.d	$xr5, $xr7, $xr8, $xr5
	xvfmadd.d	$xr1, $xr1, $xr9, $xr5
	xvfmadd.d	$xr1, $xr6, $xr10, $xr1
	xvldx	$xr5, $s7, $a0
	xvldx	$xr6, $a7, $a0
	xvstx	$xr2, $s1, $a2
	xvstx	$xr3, $s2, $a2
	xvfmadd.d	$xr0, $xr0, $xr5, $xr1
	xvfmadd.d	$xr0, $xr6, $xr8, $xr0
	xvfmadd.d	$xr0, $xr4, $xr9, $xr0
	xvstx	$xr0, $s3, $a2
	addi.d	$a2, $a2, 32
	add.d	$a0, $a0, $t0
	bne	$a1, $a2, .LBB2_180
# %bb.181:                              # %middle.block1570
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	move	$t7, $a1
	ld.d	$s8, $sp, 840                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 848                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 816                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 720                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB2_95
	b	.LBB2_185
	.p2align	4, , 16
.LBB2_182:                              #   in Loop: Header=BB2_96 Depth=3
	move	$t7, $zero
	move	$a4, $t8
	b	.LBB2_185
	.p2align	4, , 16
.LBB2_183:                              #   in Loop: Header=BB2_96 Depth=3
	ld.d	$a4, $sp, 736                   # 8-byte Folded Reload
.LBB2_184:                              # %for.body1410.us.us.preheader
                                        #   in Loop: Header=BB2_96 Depth=3
	ld.d	$s8, $sp, 840                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 848                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 816                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 392                   # 8-byte Folded Reload
.LBB2_185:                              # %for.body1410.us.us.preheader
                                        #   in Loop: Header=BB2_96 Depth=3
	move	$a5, $zero
	move	$a6, $zero
	ld.d	$a0, $sp, 808                   # 8-byte Folded Reload
	alsl.d	$a7, $s8, $a0, 3
	ld.d	$a0, $sp, 800                   # 8-byte Folded Reload
	alsl.d	$a0, $s8, $a0, 3
	st.d	$a0, $sp, 856                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 720                   # 8-byte Folded Reload
	sub.d	$t1, $a0, $t7
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	alsl.d	$t2, $a4, $a0, 3
	ld.d	$a0, $sp, 512                   # 8-byte Folded Reload
	alsl.d	$a0, $a4, $a0, 3
	st.d	$a0, $sp, 848                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	alsl.d	$a0, $a4, $a0, 3
	st.d	$a0, $sp, 840                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 752                   # 8-byte Folded Reload
	alsl.d	$t6, $s7, $a0, 3
	ld.d	$a0, $sp, 760                   # 8-byte Folded Reload
	alsl.d	$t7, $s7, $a0, 3
	ld.d	$a0, $sp, 744                   # 8-byte Folded Reload
	alsl.d	$t8, $s7, $a0, 3
	ld.d	$a0, $sp, 768                   # 8-byte Folded Reload
	alsl.d	$fp, $s7, $a0, 3
	ld.d	$a3, $sp, 528                   # 8-byte Folded Reload
	alsl.d	$s0, $s4, $a3, 3
	ld.d	$t0, $sp, 776                   # 8-byte Folded Reload
	alsl.d	$s1, $s4, $t0, 3
	ld.d	$a2, $sp, 536                   # 8-byte Folded Reload
	alsl.d	$s2, $s4, $a2, 3
	ld.d	$t3, $sp, 728                   # 8-byte Folded Reload
	alsl.d	$s3, $s4, $t3, 3
	ld.d	$a1, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$t4, $s4, $a1, 3
	ld.d	$a0, $sp, 520                   # 8-byte Folded Reload
	add.d	$a0, $a0, $s4
	alsl.d	$s5, $a0, $t3, 3
	alsl.d	$s6, $a0, $a3, 3
	ld.d	$a3, $sp, 792                   # 8-byte Folded Reload
	alsl.d	$t5, $a0, $a3, 3
	alsl.d	$t0, $a0, $t0, 3
	ld.d	$a3, $sp, 784                   # 8-byte Folded Reload
	alsl.d	$ra, $a0, $a3, 3
	alsl.d	$t3, $a0, $a2, 3
	alsl.d	$a3, $a0, $a1, 3
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	alsl.d	$a0, $s4, $a0, 3
	ld.d	$a1, $sp, 496                   # 8-byte Folded Reload
	alsl.d	$a2, $s4, $a1, 3
	.p2align	4, , 16
.LBB2_186:                              # %for.body1410.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_93 Depth=2
                                        #       Parent Loop BB2_96 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $a7, $a6
	fldx.d	$fa1, $s5, $a5
	fmul.d	$fa1, $fa0, $fa1
	fldx.d	$fa2, $s6, $a5
	fldx.d	$fa3, $t2, $a6
	fldx.d	$fa4, $s0, $a5
	add.d	$a1, $t2, $a6
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	fstx.d	$fa0, $t6, $a6
	fldx.d	$fa0, $a7, $a6
	fldx.d	$fa1, $t5, $a5
	fldx.d	$fa2, $t0, $a5
	fld.d	$fa3, $a1, -8
	fldx.d	$fa4, $s1, $a5
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	fstx.d	$fa0, $t7, $a6
	fldx.d	$fa0, $a7, $a6
	fldx.d	$fa1, $ra, $a5
	fldx.d	$fa2, $t3, $a5
	fld.d	$fa3, $a1, -16
	fldx.d	$fa4, $s2, $a5
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	fstx.d	$fa0, $t8, $a6
	ld.d	$a1, $sp, 856                   # 8-byte Folded Reload
	fldx.d	$fa0, $a1, $a6
	fldx.d	$fa1, $a0, $a5
	fldx.d	$fa2, $s3, $a5
	fmul.d	$fa1, $fa0, $fa1
	ld.d	$a1, $sp, 848                   # 8-byte Folded Reload
	fldx.d	$fa3, $a1, $a6
	fldx.d	$fa4, $a7, $a6
	fldx.d	$fa5, $s5, $a5
	ld.d	$a1, $sp, 840                   # 8-byte Folded Reload
	fldx.d	$fa6, $a1, $a6
	fmadd.d	$fa1, $fa1, $fa3, $fa2
	fldx.d	$fa2, $a2, $a5
	fmul.d	$fa5, $fa4, $fa5
	fmadd.d	$fa1, $fa5, $fa6, $fa1
	fldx.d	$fa5, $a3, $a5
	fmadd.d	$fa0, $fa0, $fa2, $fa1
	fldx.d	$fa1, $t4, $a5
	fldx.d	$fa2, $s0, $a5
	fmadd.d	$fa0, $fa4, $fa5, $fa0
	addi.d	$a4, $a4, 1
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	fstx.d	$fa0, $fp, $a6
	addi.d	$s8, $s8, 1
	ld.d	$a1, $sp, 832                   # 8-byte Folded Reload
	add.d	$s4, $s4, $a1
	addi.d	$s7, $s7, 1
	addi.d	$a6, $a6, 8
	addi.w	$t1, $t1, -1
	ld.d	$a1, $sp, 824                   # 8-byte Folded Reload
	add.d	$a5, $a5, $a1
	bnez	$t1, .LBB2_186
	b	.LBB2_95
.LBB2_187:                              #   in Loop: Header=BB2_96 Depth=3
	move	$a4, $t8
	b	.LBB2_185
.LBB2_188:                              #   in Loop: Header=BB2_96 Depth=3
	move	$a4, $t8
	ld.d	$s7, $sp, 816                   # 8-byte Folded Reload
	b	.LBB2_185
.LBB2_189:                              #   in Loop: Header=BB2_96 Depth=3
	move	$a4, $t8
	ld.d	$s8, $sp, 840                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 816                   # 8-byte Folded Reload
	b	.LBB2_185
.LBB2_190:                              #   in Loop: Header=BB2_96 Depth=3
	move	$a4, $t8
	b	.LBB2_184
.LBB2_191:                              #   in Loop: Header=BB2_96 Depth=3
	move	$a4, $t8
	ld.d	$s8, $sp, 840                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 848                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 816                   # 8-byte Folded Reload
	b	.LBB2_185
.LBB2_192:                              # %for.end1561
	move	$a0, $zero
	ld.d	$s8, $sp, 904                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 912                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 920                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 928                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 936                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 944                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 952                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 960                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 968                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 976                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 984                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 992
	ret
.Lfunc_end2:
	.size	hypre_SMG2BuildRAPNoSym, .Lfunc_end2-hypre_SMG2BuildRAPNoSym
                                        # -- End function
	.globl	hypre_SMG2RAPPeriodicSym        # -- Begin function hypre_SMG2RAPPeriodicSym
	.p2align	5
	.type	hypre_SMG2RAPPeriodicSym,@function
hypre_SMG2RAPPeriodicSym:               # @hypre_SMG2RAPPeriodicSym
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -336
	st.d	$ra, $sp, 328                   # 8-byte Folded Spill
	st.d	$fp, $sp, 320                   # 8-byte Folded Spill
	st.d	$s0, $sp, 312                   # 8-byte Folded Spill
	st.d	$s1, $sp, 304                   # 8-byte Folded Spill
	st.d	$s2, $sp, 296                   # 8-byte Folded Spill
	st.d	$s3, $sp, 288                   # 8-byte Folded Spill
	st.d	$s4, $sp, 280                   # 8-byte Folded Spill
	st.d	$s5, $sp, 272                   # 8-byte Folded Spill
	st.d	$s6, $sp, 264                   # 8-byte Folded Spill
	st.d	$s7, $sp, 256                   # 8-byte Folded Spill
	st.d	$s8, $sp, 248                   # 8-byte Folded Spill
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a0, $a0, 8
	ld.w	$a1, $a0, 60
	ori	$fp, $zero, 1
	bne	$a1, $fp, .LBB3_40
# %bb.1:                                # %if.then
	ld.d	$s1, $a0, 8
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixAssemble)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 8
	blt	$a0, $fp, .LBB3_40
# %bb.2:                                # %for.body.lr.ph
	addi.w	$a0, $zero, -1
	move	$s3, $zero
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	lu52i.d	$a0, $zero, 1024
	xvreplgr2vr.d	$xr0, $a0
	xvst	$xr0, $sp, 16                   # 32-byte Folded Spill
	xvrepli.b	$xr7, 0
	st.d	$s1, $sp, 136                   # 8-byte Folded Spill
	xvst	$xr7, $sp, 80                   # 32-byte Folded Spill
	b	.LBB3_4
	.p2align	4, , 16
.LBB3_3:                                # %for.end511
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a0, $s1, 8
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	addi.d	$s3, $s3, 1
	bge	$s3, $a0, .LBB3_40
.LBB3_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_9 Depth 2
                                        #       Child Loop BB3_12 Depth 3
                                        #         Child Loop BB3_24 Depth 4
                                        #         Child Loop BB3_15 Depth 4
                                        #     Child Loop BB3_30 Depth 2
                                        #       Child Loop BB3_33 Depth 3
                                        #         Child Loop BB3_36 Depth 4
                                        #         Child Loop BB3_39 Depth 4
	ld.d	$s0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $s0, 40
	ld.d	$s7, $s1, 0
	slli.d	$a1, $s3, 4
	alsl.d	$fp, $s3, $a1, 3
	ld.d	$s8, $a0, 0
	add.d	$s6, $s7, $fp
	st.d	$zero, $sp, 232
	st.w	$zero, $sp, 240
	addi.d	$a2, $sp, 232
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	st.d	$a0, $sp, 232
	st.w	$zero, $sp, 240
	addi.d	$a2, $sp, 232
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $sp, 232
	st.w	$zero, $sp, 240
	addi.d	$a2, $sp, 232
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $sp, 232
	st.w	$zero, $sp, 240
	addi.d	$a2, $sp, 232
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	st.d	$a0, $sp, 232
	st.w	$zero, $sp, 240
	addi.d	$a2, $sp, 232
	move	$a0, $s0
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.d	$a1, $sp, 220
	move	$a0, $s6
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	xvld	$xr7, $sp, 80                   # 32-byte Folded Reload
	ld.w	$a2, $sp, 228
	ori	$a0, $zero, 1
	blt	$a2, $a0, .LBB3_3
# %bb.5:                                # %for.cond249.preheader.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a1, $sp, 224
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB3_3
# %bb.6:                                # %for.cond249.preheader.us.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	st.d	$a2, $sp, 192                   # 8-byte Folded Spill
	st.d	$zero, $sp, 200                 # 8-byte Folded Spill
	add.d	$a0, $s8, $fp
	ldx.w	$a2, $s7, $fp
	ldx.w	$a3, $s8, $fp
	ld.w	$a4, $s6, 4
	ld.w	$a5, $a0, 4
	ld.w	$a6, $s6, 8
	ld.w	$a7, $a0, 8
	ld.w	$t0, $a0, 16
	sub.d	$t1, $a2, $a3
	sub.d	$a2, $a4, $a5
	sub.d	$a4, $a6, $a7
	sub.w	$a5, $t0, $a5
	ld.d	$a7, $sp, 152                   # 8-byte Folded Reload
	slt	$a6, $a7, $a5
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $a7, $a6
	or	$a5, $a5, $a6
	ld.w	$a0, $a0, 12
	addi.d	$a5, $a5, 1
	mul.d	$a4, $a5, $a4
	add.d	$a4, $a2, $a4
	sub.w	$a0, $a0, $a3
	slt	$a2, $a7, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a7, $a2
	or	$a0, $a0, $a2
	ld.wu	$a2, $sp, 220
	addi.d	$a7, $a0, 1
	mul.d	$a0, $a4, $a7
	add.w	$a6, $a0, $t1
	sub.d	$a3, $a7, $a2
	sub.d	$a0, $a5, $a1
	mul.d	$s3, $a7, $a0
	addi.d	$a0, $a1, -1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	mul.d	$a0, $a3, $a0
	st.d	$a7, $sp, 64                    # 8-byte Folded Spill
	add.d	$a0, $a7, $a0
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	addi.d	$a0, $a2, -1
	bstrpick.d	$a0, $a0, 31, 0
	alsl.d	$a4, $a0, $s5, 3
	addi.d	$t3, $a4, 8
	alsl.d	$a4, $a0, $s4, 3
	addi.d	$t4, $a4, 8
	addi.d	$t5, $s0, -8
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	alsl.d	$t6, $a0, $s0, 3
	alsl.d	$a4, $a0, $s2, 3
	addi.d	$t7, $a4, 8
	alsl.d	$a0, $a0, $s1, 3
	addi.d	$a0, $a0, 8
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 30, 2
	slli.d	$t2, $a0, 2
	move	$ra, $a6
	ori	$t8, $zero, 8
	vldi	$vr5, -1024
	xvld	$xr6, $sp, 16                   # 32-byte Folded Reload
	st.d	$s3, $sp, 184                   # 8-byte Folded Spill
	b	.LBB3_9
	.p2align	4, , 16
.LBB3_7:                                # %for.cond252.preheader.us237.preheader
                                        #   in Loop: Header=BB3_9 Depth=2
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	add.d	$ra, $a0, $ra
.LBB3_8:                                # %for.cond249.for.end275_crit_edge.us
                                        #   in Loop: Header=BB3_9 Depth=2
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	addi.w	$a4, $a4, 1
	ld.d	$s3, $sp, 184                   # 8-byte Folded Reload
	add.w	$ra, $ra, $s3
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	st.d	$a4, $sp, 200                   # 8-byte Folded Spill
	beq	$a4, $a0, .LBB3_27
.LBB3_9:                                # %for.cond249.preheader.us
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_12 Depth 3
                                        #         Child Loop BB3_24 Depth 4
                                        #         Child Loop BB3_15 Depth 4
	addi.w	$a4, $a2, 0
	ori	$a0, $zero, 1
	st.d	$a4, $sp, 176                   # 8-byte Folded Spill
	blt	$a4, $a0, .LBB3_7
# %bb.10:                               # %for.cond252.preheader.us.us.preheader
                                        #   in Loop: Header=BB3_9 Depth=2
	move	$t1, $zero
	b	.LBB3_12
	.p2align	4, , 16
.LBB3_11:                               # %for.cond252.for.end_crit_edge.us.us
                                        #   in Loop: Header=BB3_12 Depth=3
	addi.w	$t1, $t1, 1
	add.w	$ra, $a3, $ra
	beq	$t1, $a1, .LBB3_8
.LBB3_12:                               # %for.cond252.preheader.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_24 Depth 4
                                        #         Child Loop BB3_15 Depth 4
	bgeu	$a2, $t8, .LBB3_16
# %bb.13:                               #   in Loop: Header=BB3_12 Depth=3
	move	$s6, $zero
.LBB3_14:                               # %for.body254.us.us.preheader
                                        #   in Loop: Header=BB3_12 Depth=3
	alsl.d	$a0, $ra, $t5, 3
	alsl.d	$t0, $ra, $s2, 3
	alsl.d	$fp, $ra, $s5, 3
	alsl.d	$s0, $ra, $s1, 3
	alsl.d	$s7, $ra, $s4, 3
	sub.d	$s6, $a2, $s6
	.p2align	4, , 16
.LBB3_15:                               # %for.body254.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_9 Depth=2
                                        #       Parent Loop BB3_12 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $t0, 0
	fld.d	$fa2, $fp, 0
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fst.d	$fa0, $fp, 0
	fld.d	$fa0, $s0, 0
	fld.d	$fa1, $s7, 0
	fmadd.d	$fa0, $fa0, $fa5, $fa1
	fst.d	$fa0, $s7, 0
	addi.d	$ra, $ra, 1
	addi.d	$a0, $a0, 8
	addi.d	$t0, $t0, 8
	addi.d	$fp, $fp, 8
	addi.d	$s0, $s0, 8
	addi.w	$s6, $s6, -1
	addi.d	$s7, $s7, 8
	bnez	$s6, .LBB3_15
	b	.LBB3_11
	.p2align	4, , 16
.LBB3_16:                               # %vector.memcheck296
                                        #   in Loop: Header=BB3_12 Depth=3
	alsl.d	$fp, $ra, $s5, 3
	alsl.d	$a5, $ra, $t3, 3
	alsl.d	$t0, $ra, $s4, 3
	alsl.d	$a4, $ra, $t4, 3
	sltu	$a0, $fp, $a4
	sltu	$a7, $t0, $a5
	and	$a0, $a0, $a7
	move	$s6, $zero
	bnez	$a0, .LBB3_14
# %bb.17:                               # %vector.memcheck296
                                        #   in Loop: Header=BB3_12 Depth=3
	alsl.d	$s7, $ra, $t5, 3
	alsl.d	$s8, $ra, $t6, 3
	sltu	$a0, $fp, $s8
	sltu	$a7, $s7, $a5
	and	$a0, $a0, $a7
	bnez	$a0, .LBB3_14
# %bb.18:                               # %vector.memcheck296
                                        #   in Loop: Header=BB3_12 Depth=3
	alsl.d	$s0, $ra, $s2, 3
	alsl.d	$a7, $ra, $t7, 3
	sltu	$a0, $fp, $a7
	sltu	$s3, $s0, $a5
	and	$a0, $a0, $s3
	bnez	$a0, .LBB3_14
# %bb.19:                               # %vector.memcheck296
                                        #   in Loop: Header=BB3_12 Depth=3
	alsl.d	$a0, $ra, $s1, 3
	ld.d	$t8, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$s3, $ra, $t8, 3
	sltu	$t8, $fp, $s3
	sltu	$a5, $a0, $a5
	and	$a5, $t8, $a5
	bnez	$a5, .LBB3_26
# %bb.20:                               # %vector.memcheck296
                                        #   in Loop: Header=BB3_12 Depth=3
	sltu	$a5, $t0, $s8
	sltu	$t8, $s7, $a4
	and	$a5, $a5, $t8
	bnez	$a5, .LBB3_26
# %bb.21:                               # %vector.memcheck296
                                        #   in Loop: Header=BB3_12 Depth=3
	sltu	$a5, $t0, $a7
	sltu	$a7, $s0, $a4
	and	$a5, $a5, $a7
	ori	$t8, $zero, 8
	bnez	$a5, .LBB3_14
# %bb.22:                               # %vector.memcheck296
                                        #   in Loop: Header=BB3_12 Depth=3
	sltu	$a5, $t0, $s3
	sltu	$a4, $a0, $a4
	and	$a4, $a5, $a4
	bnez	$a4, .LBB3_14
# %bb.23:                               # %vector.ph342
                                        #   in Loop: Header=BB3_12 Depth=3
	add.d	$ra, $t2, $ra
	move	$a4, $t2
	.p2align	4, , 16
.LBB3_24:                               # %vector.body345
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_9 Depth=2
                                        #       Parent Loop BB3_12 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvld	$xr0, $s7, 0
	xvld	$xr1, $s0, 0
	xvld	$xr2, $fp, 0
	xvld	$xr3, $a0, 0
	xvld	$xr4, $t0, 0
	xvfadd.d	$xr0, $xr0, $xr1
	xvfadd.d	$xr0, $xr2, $xr0
	xvst	$xr0, $fp, 0
	xvfmadd.d	$xr0, $xr3, $xr6, $xr4
	xvst	$xr0, $t0, 0
	addi.d	$a4, $a4, -4
	addi.d	$t0, $t0, 32
	addi.d	$a0, $a0, 32
	addi.d	$fp, $fp, 32
	addi.d	$s0, $s0, 32
	addi.d	$s7, $s7, 32
	bnez	$a4, .LBB3_24
# %bb.25:                               # %middle.block353
                                        #   in Loop: Header=BB3_12 Depth=3
	move	$s6, $t2
	beq	$t2, $a2, .LBB3_11
	b	.LBB3_14
.LBB3_26:                               #   in Loop: Header=BB3_12 Depth=3
	ori	$t8, $zero, 8
	b	.LBB3_14
	.p2align	4, , 16
.LBB3_27:                               # %for.cond481.preheader.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$a7, $zero
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	mul.d	$a0, $a3, $a0
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	add.d	$a0, $a4, $a0
	sub.d	$t0, $a0, $a2
	sub.d	$a0, $s1, $s2
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	sub.d	$a4, $fp, $s2
	sub.d	$a5, $fp, $s1
	sltui	$a0, $a0, 64
	sltui	$a4, $a4, 64
	or	$a0, $a0, $a4
	sltui	$a4, $a5, 64
	or	$t1, $a0, $a4
	bstrpick.d	$a0, $a2, 30, 3
	slli.d	$t2, $a0, 3
	addi.d	$t3, $s2, 32
	addi.d	$t4, $fp, 32
	addi.d	$t5, $s1, 32
	ld.d	$s0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 176                   # 8-byte Folded Reload
	b	.LBB3_30
	.p2align	4, , 16
.LBB3_28:                               # %for.cond484.preheader.us256.preheader
                                        #   in Loop: Header=BB3_30 Depth=2
	add.d	$a6, $t0, $a6
.LBB3_29:                               # %for.cond481.for.end502_crit_edge.us
                                        #   in Loop: Header=BB3_30 Depth=2
	addi.w	$a7, $a7, 1
	add.w	$a6, $a6, $s3
	beq	$a7, $s0, .LBB3_3
.LBB3_30:                               # %for.cond481.preheader.us
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_33 Depth 3
                                        #         Child Loop BB3_36 Depth 4
                                        #         Child Loop BB3_39 Depth 4
	ori	$a0, $zero, 1
	blt	$s4, $a0, .LBB3_28
# %bb.31:                               # %for.cond484.preheader.us.us.preheader
                                        #   in Loop: Header=BB3_30 Depth=2
	move	$t6, $zero
	b	.LBB3_33
	.p2align	4, , 16
.LBB3_32:                               # %for.cond484.for.end496_crit_edge.us.us
                                        #   in Loop: Header=BB3_33 Depth=3
	addi.w	$t6, $t6, 1
	add.w	$a6, $a3, $t7
	beq	$t6, $a1, .LBB3_29
.LBB3_33:                               # %for.cond484.preheader.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_30 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_36 Depth 4
                                        #         Child Loop BB3_39 Depth 4
	sltui	$a0, $a2, 8
	or	$a0, $a0, $t1
	andi	$a0, $a0, 1
	beqz	$a0, .LBB3_35
# %bb.34:                               #   in Loop: Header=BB3_33 Depth=3
	move	$a5, $zero
	move	$t7, $a6
	b	.LBB3_38
	.p2align	4, , 16
.LBB3_35:                               # %vector.ph
                                        #   in Loop: Header=BB3_33 Depth=3
	add.d	$t7, $t2, $a6
	alsl.d	$a0, $a6, $t3, 3
	alsl.d	$a4, $a6, $t4, 3
	alsl.d	$a5, $a6, $t5, 3
	move	$a6, $t2
	.p2align	4, , 16
.LBB3_36:                               # %vector.body
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_30 Depth=2
                                        #       Parent Loop BB3_33 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvst	$xr7, $a0, -32
	xvst	$xr7, $a0, 0
	xvst	$xr7, $a5, -32
	xvst	$xr7, $a5, 0
	xvst	$xr7, $a4, -32
	xvst	$xr7, $a4, 0
	addi.d	$a6, $a6, -8
	addi.d	$a0, $a0, 64
	addi.d	$a4, $a4, 64
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB3_36
# %bb.37:                               # %middle.block
                                        #   in Loop: Header=BB3_33 Depth=3
	move	$a5, $t2
	beq	$t2, $a2, .LBB3_32
.LBB3_38:                               # %for.body486.us.us.preheader
                                        #   in Loop: Header=BB3_33 Depth=3
	alsl.d	$a0, $t7, $s2, 3
	alsl.d	$a4, $t7, $s1, 3
	alsl.d	$a6, $t7, $fp, 3
	sub.d	$t8, $a2, $a5
	.p2align	4, , 16
.LBB3_39:                               # %for.body486.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_30 Depth=2
                                        #       Parent Loop BB3_33 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	st.d	$zero, $a0, 0
	st.d	$zero, $a4, 0
	st.d	$zero, $a6, 0
	addi.d	$t7, $t7, 1
	addi.d	$a0, $a0, 8
	addi.d	$a4, $a4, 8
	addi.w	$t8, $t8, -1
	addi.d	$a6, $a6, 8
	bnez	$t8, .LBB3_39
	b	.LBB3_32
.LBB3_40:                               # %if.end515
	move	$a0, $zero
	ld.d	$s8, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 320                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 328                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 336
	ret
.Lfunc_end3:
	.size	hypre_SMG2RAPPeriodicSym, .Lfunc_end3-hypre_SMG2RAPPeriodicSym
                                        # -- End function
	.globl	hypre_SMG2RAPPeriodicNoSym      # -- Begin function hypre_SMG2RAPPeriodicNoSym
	.p2align	5
	.type	hypre_SMG2RAPPeriodicNoSym,@function
hypre_SMG2RAPPeriodicNoSym:             # @hypre_SMG2RAPPeriodicNoSym
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -336
	st.d	$ra, $sp, 328                   # 8-byte Folded Spill
	st.d	$fp, $sp, 320                   # 8-byte Folded Spill
	st.d	$s0, $sp, 312                   # 8-byte Folded Spill
	st.d	$s1, $sp, 304                   # 8-byte Folded Spill
	st.d	$s2, $sp, 296                   # 8-byte Folded Spill
	st.d	$s3, $sp, 288                   # 8-byte Folded Spill
	st.d	$s4, $sp, 280                   # 8-byte Folded Spill
	st.d	$s5, $sp, 272                   # 8-byte Folded Spill
	st.d	$s6, $sp, 264                   # 8-byte Folded Spill
	st.d	$s7, $sp, 256                   # 8-byte Folded Spill
	st.d	$s8, $sp, 248                   # 8-byte Folded Spill
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 8
	ld.w	$a2, $a0, 60
	ori	$a1, $zero, 1
	bne	$a2, $a1, .LBB4_25
# %bb.1:                                # %for.cond.preheader
	ld.d	$a2, $a0, 8
	ld.w	$a0, $a2, 8
	blt	$a0, $a1, .LBB4_25
# %bb.2:                                # %for.body.lr.ph
	addi.w	$a0, $zero, -1
	move	$s1, $zero
	move	$a1, $a0
	lu32i.d	$a1, 0
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	ori	$a1, $zero, 0
	ori	$a3, $zero, 0
	lu32i.d	$a3, -1
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	ori	$a3, $zero, 1
	lu32i.d	$a3, -1
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	lu32i.d	$a1, 1
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	b	.LBB4_4
	.p2align	4, , 16
.LBB4_3:                                # %for.end281
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a0, $a2, 8
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	addi.d	$s1, $s1, 1
	bge	$s1, $a0, .LBB4_25
.LBB4_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_9 Depth 2
                                        #       Child Loop BB4_12 Depth 3
                                        #         Child Loop BB4_20 Depth 4
                                        #         Child Loop BB4_24 Depth 4
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $fp, 40
	ld.d	$a1, $a2, 0
	slli.d	$a2, $s1, 4
	alsl.d	$a2, $s1, $a2, 3
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	st.d	$a2, $sp, 200                   # 8-byte Folded Spill
	add.d	$s5, $a1, $a2
	st.d	$zero, $sp, 236
	st.w	$zero, $sp, 244
	addi.d	$a2, $sp, 236
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $sp, 236
	st.w	$zero, $sp, 244
	addi.d	$a2, $sp, 236
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.d	$a0, $sp, 236
	st.w	$zero, $sp, 244
	addi.d	$a2, $sp, 236
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $sp, 236
	st.w	$zero, $sp, 244
	addi.d	$a2, $sp, 236
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.d	$a0, $sp, 236
	st.w	$zero, $sp, 244
	addi.d	$a2, $sp, 236
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	ori	$s0, $zero, 1
	st.d	$s0, $sp, 236
	st.w	$zero, $sp, 244
	addi.d	$a2, $sp, 236
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $sp, 236
	st.w	$zero, $sp, 244
	addi.d	$a2, $sp, 236
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $sp, 236
	st.w	$zero, $sp, 244
	addi.d	$a2, $sp, 236
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	st.d	$a0, $sp, 236
	st.w	$zero, $sp, 244
	addi.d	$a2, $sp, 236
	move	$a0, $fp
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	move	$a1, $s1
	move	$s1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.d	$a1, $sp, 224
	move	$a0, $s5
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.d	$t7, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a0, $sp, 232
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	blt	$a0, $s0, .LBB4_3
# %bb.5:                                # %for.cond224.preheader.lr.ph
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.w	$s0, $sp, 228
	ori	$a0, $zero, 1
	blt	$s0, $a0, .LBB4_3
# %bb.6:                                # %for.cond224.preheader.us.preheader
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 192                   # 8-byte Folded Reload
	add.d	$a1, $a5, $a4
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 16
	move	$t2, $zero
	ld.wu	$a3, $sp, 224
	ldx.w	$a4, $a5, $a4
	sub.w	$a2, $a2, $a0
	ld.d	$a7, $sp, 72                    # 8-byte Folded Reload
	slt	$a5, $a7, $a2
	maskeqz	$a2, $a2, $a5
	ld.w	$a6, $a1, 12
	masknez	$a5, $a7, $a5
	or	$a2, $a2, $a5
	addi.d	$a2, $a2, 1
	sub.w	$a5, $a6, $a4
	slt	$a6, $a7, $a5
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $a7, $a6
	or	$a5, $a5, $a6
	addi.d	$a5, $a5, 1
	sub.d	$s3, $a5, $a3
	sub.d	$a6, $a2, $s0
	ld.w	$a7, $s5, 0
	ld.w	$t0, $s5, 4
	ld.w	$t1, $s5, 8
	ld.w	$a1, $a1, 8
	mulw.d.w	$a6, $a5, $a6
	st.d	$a6, $sp, 96                    # 8-byte Folded Spill
	sub.d	$a4, $a7, $a4
	sub.d	$a0, $t0, $a0
	sub.d	$a1, $t1, $a1
	mul.d	$a1, $a2, $a1
	add.d	$a0, $a0, $a1
	mul.d	$a0, $a0, $a5
	add.w	$a6, $a4, $a0
	addi.d	$a0, $s0, -1
	mul.d	$a0, $s3, $a0
	add.d	$a0, $a5, $a0
	sub.d	$a0, $a0, $a3
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	addi.d	$a0, $a3, -1
	bstrpick.d	$a0, $a0, 31, 0
	alsl.d	$a1, $a0, $s2, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $fp, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $s4, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $t7, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $s7, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $s1, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $s6, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $s8, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 3
	addi.d	$a0, $a0, 8
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a3, 30, 2
	slli.d	$a0, $a0, 2
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	slli.d	$a0, $a3, 3
	bstrpick.d	$a0, $a0, 33, 5
	slli.d	$a7, $a0, 5
	st.d	$s0, $sp, 208                   # 8-byte Folded Spill
	st.d	$s3, $sp, 200                   # 8-byte Folded Spill
	b	.LBB4_9
	.p2align	4, , 16
.LBB4_7:                                # %for.cond227.preheader.us152.preheader
                                        #   in Loop: Header=BB4_9 Depth=2
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	add.d	$a6, $a0, $a6
.LBB4_8:                                # %for.cond224.for.end272_crit_edge.us
                                        #   in Loop: Header=BB4_9 Depth=2
	ld.d	$t2, $sp, 112                   # 8-byte Folded Reload
	addi.w	$t2, $t2, 1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	add.w	$a6, $a6, $a0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	beq	$t2, $a0, .LBB4_3
.LBB4_9:                                # %for.cond224.preheader.us
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_12 Depth 3
                                        #         Child Loop BB4_20 Depth 4
                                        #         Child Loop BB4_24 Depth 4
	st.d	$t2, $sp, 112                   # 8-byte Folded Spill
	addi.w	$a0, $a3, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB4_7
# %bb.10:                               # %for.cond227.preheader.us.us.preheader
                                        #   in Loop: Header=BB4_9 Depth=2
	move	$a5, $zero
	b	.LBB4_12
	.p2align	4, , 16
.LBB4_11:                               # %for.cond227.for.end_crit_edge.us.us
                                        #   in Loop: Header=BB4_12 Depth=3
	addi.w	$a5, $a5, 1
	add.w	$a6, $s3, $a6
	beq	$a5, $s0, .LBB4_8
.LBB4_12:                               # %for.cond227.preheader.us.us
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_20 Depth 4
                                        #         Child Loop BB4_24 Depth 4
	ori	$a0, $zero, 20
	bgeu	$a3, $a0, .LBB4_14
# %bb.13:                               #   in Loop: Header=BB4_12 Depth=3
	move	$t8, $zero
	b	.LBB4_23
	.p2align	4, , 16
.LBB4_14:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_12 Depth=3
	move	$s3, $s2
	alsl.d	$a0, $a6, $s2, 3
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	alsl.d	$t4, $a6, $a1, 3
	alsl.d	$a2, $a6, $fp, 3
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	alsl.d	$t6, $a6, $a1, 3
	move	$s5, $s4
	alsl.d	$s0, $a6, $s4, 3
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	alsl.d	$a1, $a6, $a1, 3
	move	$s2, $t7
	alsl.d	$t0, $a6, $t7, 3
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	alsl.d	$t8, $a6, $a4, 3
	alsl.d	$t1, $a6, $s7, 3
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	alsl.d	$a4, $a6, $a4, 3
	move	$s4, $s1
	alsl.d	$t2, $a6, $s1, 3
	ld.d	$t3, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$ra, $a6, $t3, 3
	ld.d	$t3, $sp, 144                   # 8-byte Folded Reload
	alsl.d	$t5, $a6, $t3, 3
	alsl.d	$t3, $a6, $s8, 3
	xvinsgr2vr.d	$xr0, $t1, 0
	ld.d	$t7, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$t7, $a6, $t7, 3
	xvori.b	$xr3, $xr0, 0
	xvinsgr2vr.d	$xr3, $t2, 1
	xvinsgr2vr.d	$xr11, $t0, 0
	xvinsgr2vr.d	$xr3, $t3, 2
	xvori.b	$xr6, $xr11, 0
	xvinsgr2vr.d	$xr6, $t2, 1
	xvinsgr2vr.d	$xr3, $t2, 3
	xvori.b	$xr4, $xr6, 0
	xvinsgr2vr.d	$xr4, $t1, 2
	xvinsgr2vr.d	$xr4, $t3, 3
	xvinsgr2vr.d	$xr6, $t0, 2
	xvinsgr2vr.d	$xr6, $t3, 3
	xvinsgr2vr.d	$xr8, $t2, 0
	xvinsgr2vr.d	$xr8, $s0, 1
	xvinsgr2vr.d	$xr8, $t3, 2
	xvinsgr2vr.d	$xr8, $s0, 3
	xvinsgr2vr.d	$xr10, $t3, 0
	xvinsgr2vr.d	$xr10, $a2, 1
	xvinsgr2vr.d	$xr10, $t0, 2
	xvinsgr2vr.d	$xr10, $s0, 3
	xvinsgr2vr.d	$xr11, $a2, 1
	xvinsgr2vr.d	$xr11, $t2, 2
	xvinsgr2vr.d	$xr2, $a0, 0
	xvinsgr2vr.d	$xr11, $a2, 3
	xvori.b	$xr13, $xr2, 0
	xvinsgr2vr.d	$xr13, $t3, 1
	xvinsgr2vr.d	$xr13, $a0, 2
	xvinsgr2vr.d	$xr13, $a2, 3
	xvinsgr2vr.d	$xr2, $t0, 1
	xvinsgr2vr.d	$xr2, $a0, 2
	xvinsgr2vr.d	$xr7, $t7, 0
	xvinsgr2vr.d	$xr2, $t2, 3
	xvori.b	$xr5, $xr7, 0
	xvinsgr2vr.d	$xr5, $t5, 1
	xvinsgr2vr.d	$xr5, $ra, 2
	xvinsgr2vr.d	$xr5, $t7, 3
	xvinsgr2vr.d	$xr7, $a4, 1
	xvinsgr2vr.d	$xr7, $t5, 2
	xvinsgr2vr.d	$xr1, $a4, 0
	xvinsgr2vr.d	$xr7, $a4, 3
	xvori.b	$xr9, $xr1, 0
	xvinsgr2vr.d	$xr9, $t8, 1
	xvinsgr2vr.d	$xr9, $t5, 2
	xvinsgr2vr.d	$xr16, $a1, 0
	xvinsgr2vr.d	$xr9, $t8, 3
	xvori.b	$xr12, $xr16, 0
	xvinsgr2vr.d	$xr12, $t5, 1
	xvinsgr2vr.d	$xr12, $a1, 2
	xvinsgr2vr.d	$xr15, $t6, 0
	xvinsgr2vr.d	$xr12, $t7, 3
	xvori.b	$xr14, $xr15, 0
	xvinsgr2vr.d	$xr14, $t7, 1
	xvinsgr2vr.d	$xr14, $a1, 2
	xvinsgr2vr.d	$xr14, $a4, 3
	xvinsgr2vr.d	$xr15, $a4, 1
	xvinsgr2vr.d	$xr15, $t6, 2
	xvinsgr2vr.d	$xr15, $t5, 3
	xvinsgr2vr.d	$xr17, $t5, 0
	xvinsgr2vr.d	$xr17, $t4, 1
	xvinsgr2vr.d	$xr17, $t7, 2
	xvinsgr2vr.d	$xr17, $a1, 3
	xvinsgr2vr.d	$xr16, $t4, 1
	xvinsgr2vr.d	$xr16, $a4, 2
	xvinsgr2vr.d	$xr16, $t4, 3
	xvslt.du	$xr16, $xr2, $xr16
	xvpickve2gr.d	$s1, $xr16, 0
	vinsgr2vr.b	$vr2, $s1, 0
	xvpickve2gr.d	$s1, $xr16, 1
	vinsgr2vr.b	$vr2, $s1, 1
	xvpickve2gr.d	$s1, $xr16, 2
	vinsgr2vr.b	$vr2, $s1, 2
	xvpickve2gr.d	$s1, $xr16, 3
	vinsgr2vr.b	$vr2, $s1, 3
	xvslt.du	$xr13, $xr13, $xr17
	xvpickve2gr.d	$s1, $xr13, 0
	vinsgr2vr.b	$vr2, $s1, 4
	xvpickve2gr.d	$s1, $xr13, 1
	vinsgr2vr.b	$vr2, $s1, 5
	xvpickve2gr.d	$s1, $xr13, 2
	vinsgr2vr.b	$vr2, $s1, 6
	xvpickve2gr.d	$s1, $xr13, 3
	vinsgr2vr.b	$vr2, $s1, 7
	xvslt.du	$xr11, $xr11, $xr15
	xvpickve2gr.d	$s1, $xr11, 0
	vinsgr2vr.b	$vr2, $s1, 8
	xvpickve2gr.d	$s1, $xr11, 1
	vinsgr2vr.b	$vr2, $s1, 9
	xvpickve2gr.d	$s1, $xr11, 2
	vinsgr2vr.b	$vr2, $s1, 10
	xvpickve2gr.d	$s1, $xr11, 3
	vinsgr2vr.b	$vr2, $s1, 11
	xvslt.du	$xr10, $xr10, $xr14
	xvpickve2gr.d	$s1, $xr10, 0
	vinsgr2vr.b	$vr2, $s1, 12
	xvpickve2gr.d	$s1, $xr10, 1
	vinsgr2vr.b	$vr2, $s1, 13
	xvpickve2gr.d	$s1, $xr10, 2
	vinsgr2vr.b	$vr2, $s1, 14
	xvpickve2gr.d	$s1, $xr10, 3
	vinsgr2vr.b	$vr2, $s1, 15
	xvslt.du	$xr8, $xr8, $xr12
	xvpickve2gr.d	$s1, $xr8, 0
	xvpermi.d	$xr10, $xr2, 14
	vinsgr2vr.b	$vr10, $s1, 0
	xvpermi.q	$xr2, $xr10, 2
	xvpickve2gr.d	$s1, $xr8, 1
	xvpermi.d	$xr10, $xr2, 14
	vinsgr2vr.b	$vr10, $s1, 1
	xvpermi.q	$xr2, $xr10, 2
	xvpickve2gr.d	$s1, $xr8, 2
	xvpermi.d	$xr10, $xr2, 14
	vinsgr2vr.b	$vr10, $s1, 2
	xvpermi.q	$xr2, $xr10, 2
	xvpickve2gr.d	$s1, $xr8, 3
	xvpermi.d	$xr8, $xr2, 14
	vinsgr2vr.b	$vr8, $s1, 3
	xvpermi.q	$xr2, $xr8, 2
	xvslt.du	$xr6, $xr6, $xr9
	xvpickve2gr.d	$s1, $xr6, 0
	xvpermi.d	$xr8, $xr2, 14
	vinsgr2vr.b	$vr8, $s1, 4
	xvpermi.q	$xr2, $xr8, 2
	xvpickve2gr.d	$s1, $xr6, 1
	xvpermi.d	$xr8, $xr2, 14
	vinsgr2vr.b	$vr8, $s1, 5
	xvpermi.q	$xr2, $xr8, 2
	xvpickve2gr.d	$s1, $xr6, 2
	xvpermi.d	$xr8, $xr2, 14
	vinsgr2vr.b	$vr8, $s1, 6
	xvpermi.q	$xr2, $xr8, 2
	xvpickve2gr.d	$s1, $xr6, 3
	xvpermi.d	$xr6, $xr2, 14
	vinsgr2vr.b	$vr6, $s1, 7
	xvpermi.q	$xr2, $xr6, 2
	xvslt.du	$xr4, $xr4, $xr7
	xvpickve2gr.d	$s1, $xr4, 0
	xvpermi.d	$xr6, $xr2, 14
	vinsgr2vr.b	$vr6, $s1, 8
	xvpermi.q	$xr2, $xr6, 2
	xvpickve2gr.d	$s1, $xr4, 1
	xvpermi.d	$xr6, $xr2, 14
	vinsgr2vr.b	$vr6, $s1, 9
	xvpermi.q	$xr2, $xr6, 2
	xvpickve2gr.d	$s1, $xr4, 2
	xvpermi.d	$xr6, $xr2, 14
	vinsgr2vr.b	$vr6, $s1, 10
	xvpermi.q	$xr2, $xr6, 2
	xvpickve2gr.d	$s1, $xr4, 3
	xvpermi.d	$xr4, $xr2, 14
	vinsgr2vr.b	$vr4, $s1, 11
	xvpermi.q	$xr2, $xr4, 2
	xvslt.du	$xr3, $xr3, $xr5
	xvpickve2gr.d	$s1, $xr3, 0
	xvpermi.d	$xr4, $xr2, 14
	vinsgr2vr.b	$vr4, $s1, 12
	xvpermi.q	$xr2, $xr4, 2
	xvpickve2gr.d	$s1, $xr3, 1
	xvpermi.d	$xr4, $xr2, 14
	vinsgr2vr.b	$vr4, $s1, 13
	xvpermi.q	$xr2, $xr4, 2
	xvpickve2gr.d	$s1, $xr3, 2
	xvpermi.d	$xr4, $xr2, 14
	vinsgr2vr.b	$vr4, $s1, 14
	xvpermi.q	$xr2, $xr4, 2
	xvpickve2gr.d	$s1, $xr3, 3
	xvpermi.d	$xr3, $xr2, 14
	xvinsgr2vr.d	$xr11, $t8, 0
	vinsgr2vr.b	$vr3, $s1, 15
	xvori.b	$xr7, $xr11, 0
	xvinsgr2vr.d	$xr7, $ra, 1
	alsl.d	$s1, $a6, $s6, 3
	xvori.b	$xr4, $xr7, 0
	xvinsgr2vr.d	$xr4, $a4, 2
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$a4, $a6, $a4, 3
	xvinsgr2vr.d	$xr8, $ra, 0
	xvinsgr2vr.d	$xr8, $a1, 1
	xvinsgr2vr.d	$xr8, $a4, 2
	xvinsgr2vr.d	$xr8, $a1, 3
	xvinsgr2vr.d	$xr10, $a4, 0
	xvinsgr2vr.d	$xr10, $t6, 1
	xvinsgr2vr.d	$xr10, $t8, 2
	xvinsgr2vr.d	$xr10, $a1, 3
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$a1, $a6, $a1, 3
	xvinsgr2vr.d	$xr6, $a1, 0
	xvpermi.q	$xr2, $xr3, 2
	xvori.b	$xr3, $xr6, 0
	xvinsgr2vr.d	$xr3, $s1, 1
	xvinsgr2vr.d	$xr3, $t2, 2
	xvinsgr2vr.d	$xr3, $a1, 3
	xvinsgr2vr.d	$xr6, $t1, 1
	xvinsgr2vr.d	$xr6, $s1, 2
	xvinsgr2vr.d	$xr6, $t1, 3
	xvinsgr2vr.d	$xr0, $t0, 1
	xvinsgr2vr.d	$xr0, $s1, 2
	xvinsgr2vr.d	$xr5, $s0, 0
	xvinsgr2vr.d	$xr0, $t0, 3
	xvori.b	$xr9, $xr5, 0
	xvinsgr2vr.d	$xr9, $s1, 1
	xvinsgr2vr.d	$xr9, $s0, 2
	xvinsgr2vr.d	$xr13, $a2, 0
	xvinsgr2vr.d	$xr9, $a1, 3
	xvori.b	$xr12, $xr13, 0
	xvinsgr2vr.d	$xr12, $a1, 1
	xvinsgr2vr.d	$xr12, $s0, 2
	xvinsgr2vr.d	$xr12, $t1, 3
	xvinsgr2vr.d	$xr13, $t1, 1
	xvinsgr2vr.d	$xr13, $a2, 2
	xvinsgr2vr.d	$xr13, $s1, 3
	xvinsgr2vr.d	$xr14, $s1, 0
	xvinsgr2vr.d	$xr14, $a0, 1
	xvinsgr2vr.d	$xr14, $a1, 2
	xvinsgr2vr.d	$xr14, $s0, 3
	xvinsgr2vr.d	$xr5, $a0, 1
	xvinsgr2vr.d	$xr5, $t1, 2
	xvinsgr2vr.d	$xr5, $a0, 3
	xvinsgr2vr.d	$xr1, $ra, 1
	xvinsgr2vr.d	$xr1, $a4, 2
	xvinsgr2vr.d	$xr1, $ra, 3
	xvinsgr2vr.d	$xr4, $a4, 3
	xvinsgr2vr.d	$xr7, $t8, 2
	xvinsgr2vr.d	$xr7, $a4, 3
	xvinsgr2vr.d	$xr11, $t6, 1
	xvinsgr2vr.d	$xr11, $ra, 2
	xvinsgr2vr.d	$xr15, $t4, 0
	xvinsgr2vr.d	$xr11, $t6, 3
	xvori.b	$xr16, $xr15, 0
	xvinsgr2vr.d	$xr16, $a4, 1
	xvinsgr2vr.d	$xr16, $t4, 2
	xvinsgr2vr.d	$xr16, $t6, 3
	xvinsgr2vr.d	$xr15, $t8, 1
	xvinsgr2vr.d	$xr15, $t4, 2
	xvinsgr2vr.d	$xr15, $ra, 3
	xvslt.du	$xr15, $xr5, $xr15
	xvpickve2gr.d	$t8, $xr15, 0
	vinsgr2vr.b	$vr5, $t8, 0
	xvpickve2gr.d	$t8, $xr15, 1
	vinsgr2vr.b	$vr5, $t8, 1
	xvpickve2gr.d	$t8, $xr15, 2
	vinsgr2vr.b	$vr5, $t8, 2
	xvpickve2gr.d	$t8, $xr15, 3
	vinsgr2vr.b	$vr5, $t8, 3
	xvslt.du	$xr14, $xr14, $xr16
	xvpickve2gr.d	$t8, $xr14, 0
	vinsgr2vr.b	$vr5, $t8, 4
	xvpickve2gr.d	$t8, $xr14, 1
	vinsgr2vr.b	$vr5, $t8, 5
	xvpickve2gr.d	$t8, $xr14, 2
	vinsgr2vr.b	$vr5, $t8, 6
	xvpickve2gr.d	$t8, $xr14, 3
	vinsgr2vr.b	$vr5, $t8, 7
	xvslt.du	$xr11, $xr13, $xr11
	xvpickve2gr.d	$t8, $xr11, 0
	vinsgr2vr.b	$vr5, $t8, 8
	xvpickve2gr.d	$t8, $xr11, 1
	vinsgr2vr.b	$vr5, $t8, 9
	xvpickve2gr.d	$t8, $xr11, 2
	vinsgr2vr.b	$vr5, $t8, 10
	xvpickve2gr.d	$t8, $xr11, 3
	vinsgr2vr.b	$vr5, $t8, 11
	xvslt.du	$xr10, $xr12, $xr10
	xvpickve2gr.d	$t8, $xr10, 0
	vinsgr2vr.b	$vr5, $t8, 12
	xvpickve2gr.d	$t8, $xr10, 1
	vinsgr2vr.b	$vr5, $t8, 13
	xvpickve2gr.d	$t8, $xr10, 2
	vinsgr2vr.b	$vr5, $t8, 14
	xvpickve2gr.d	$t8, $xr10, 3
	vinsgr2vr.b	$vr5, $t8, 15
	xvslt.du	$xr8, $xr9, $xr8
	xvpickve2gr.d	$t8, $xr8, 0
	xvpermi.d	$xr9, $xr5, 14
	vinsgr2vr.b	$vr9, $t8, 0
	xvpermi.q	$xr5, $xr9, 2
	xvpickve2gr.d	$t8, $xr8, 1
	xvpermi.d	$xr9, $xr5, 14
	vinsgr2vr.b	$vr9, $t8, 1
	xvpermi.q	$xr5, $xr9, 2
	xvpickve2gr.d	$t8, $xr8, 2
	xvpermi.d	$xr9, $xr5, 14
	vinsgr2vr.b	$vr9, $t8, 2
	xvpermi.q	$xr5, $xr9, 2
	xvpickve2gr.d	$t8, $xr8, 3
	xvpermi.d	$xr8, $xr5, 14
	vinsgr2vr.b	$vr8, $t8, 3
	xvpermi.q	$xr5, $xr8, 2
	xvslt.du	$xr0, $xr0, $xr7
	xvpickve2gr.d	$t8, $xr0, 0
	xvpermi.d	$xr7, $xr5, 14
	vinsgr2vr.b	$vr7, $t8, 4
	xvpermi.q	$xr5, $xr7, 2
	xvpickve2gr.d	$t8, $xr0, 1
	xvpermi.d	$xr7, $xr5, 14
	vinsgr2vr.b	$vr7, $t8, 5
	xvpermi.q	$xr5, $xr7, 2
	xvpickve2gr.d	$t8, $xr0, 2
	xvpermi.d	$xr7, $xr5, 14
	vinsgr2vr.b	$vr7, $t8, 6
	xvpermi.q	$xr5, $xr7, 2
	xvpickve2gr.d	$t8, $xr0, 3
	xvpermi.d	$xr0, $xr5, 14
	vinsgr2vr.b	$vr0, $t8, 7
	xvpermi.q	$xr5, $xr0, 2
	xvslt.du	$xr0, $xr6, $xr4
	xvpickve2gr.d	$t8, $xr0, 0
	xvpermi.d	$xr4, $xr5, 14
	vinsgr2vr.b	$vr4, $t8, 8
	xvpermi.q	$xr5, $xr4, 2
	xvpickve2gr.d	$t8, $xr0, 1
	xvpermi.d	$xr4, $xr5, 14
	vinsgr2vr.b	$vr4, $t8, 9
	xvpermi.q	$xr5, $xr4, 2
	xvpickve2gr.d	$t8, $xr0, 2
	xvpermi.d	$xr4, $xr5, 14
	vinsgr2vr.b	$vr4, $t8, 10
	xvpermi.q	$xr5, $xr4, 2
	xvpickve2gr.d	$t8, $xr0, 3
	xvpermi.d	$xr0, $xr5, 14
	vinsgr2vr.b	$vr0, $t8, 11
	xvpermi.q	$xr5, $xr0, 2
	xvslt.du	$xr0, $xr3, $xr1
	xvpickve2gr.d	$t8, $xr0, 0
	xvpermi.d	$xr1, $xr5, 14
	vinsgr2vr.b	$vr1, $t8, 12
	xvpermi.q	$xr5, $xr1, 2
	xvpickve2gr.d	$t8, $xr0, 1
	xvpermi.d	$xr1, $xr5, 14
	vinsgr2vr.b	$vr1, $t8, 13
	xvpermi.q	$xr5, $xr1, 2
	xvpickve2gr.d	$t8, $xr0, 2
	xvpermi.d	$xr1, $xr5, 14
	vinsgr2vr.b	$vr1, $t8, 14
	xvpermi.q	$xr5, $xr1, 2
	xvpickve2gr.d	$t8, $xr0, 3
	xvpermi.d	$xr0, $xr5, 14
	vinsgr2vr.b	$vr0, $t8, 15
	xvpermi.q	$xr5, $xr0, 2
	xvand.v	$xr0, $xr2, $xr5
	xvslli.b	$xr0, $xr0, 7
	xvmskltz.b	$xr0, $xr0
	xvpickve2gr.wu	$t8, $xr0, 0
	xvpickve2gr.wu	$ra, $xr0, 4
	bstrins.d	$t8, $ra, 31, 16
	addi.w	$ra, $t8, 0
	move	$t8, $zero
	bnez	$ra, .LBB4_22
# %bb.15:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_12 Depth=3
	sltu	$t6, $a0, $t6
	sltu	$t4, $a2, $t4
	and	$t4, $t6, $t4
	bnez	$t4, .LBB4_22
# %bb.16:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_12 Depth=3
	sltu	$t4, $s1, $a4
	sltu	$t6, $t3, $t5
	and	$t4, $t4, $t6
	bnez	$t4, .LBB4_22
# %bb.17:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_12 Depth=3
	sltu	$t4, $s1, $t7
	sltu	$t5, $a1, $t5
	and	$t4, $t4, $t5
	bnez	$t4, .LBB4_22
# %bb.18:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_12 Depth=3
	sltu	$t4, $t3, $t7
	sltu	$a4, $a1, $a4
	and	$a4, $t4, $a4
	bnez	$a4, .LBB4_22
# %bb.19:                               # %vector.ph
                                        #   in Loop: Header=BB4_12 Depth=3
	move	$a4, $zero
	ld.d	$t4, $sp, 120                   # 8-byte Folded Reload
	add.d	$a6, $t4, $a6
	move	$t7, $s2
	.p2align	4, , 16
.LBB4_20:                               # %vector.body
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_9 Depth=2
                                        #       Parent Loop BB4_12 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvldx	$xr0, $a2, $a4
	xvldx	$xr1, $s0, $a4
	xvfadd.d	$xr0, $xr0, $xr1
	xvldx	$xr1, $a0, $a4
	xvldx	$xr2, $t1, $a4
	xvldx	$xr3, $t2, $a4
	xvldx	$xr4, $t0, $a4
	xvfadd.d	$xr0, $xr1, $xr0
	xvstx	$xr0, $a0, $a4
	xvfadd.d	$xr0, $xr2, $xr3
	xvfadd.d	$xr0, $xr4, $xr0
	xvldx	$xr1, $t3, $a4
	xvldx	$xr2, $a1, $a4
	xvstx	$xr0, $t0, $a4
	xvrepli.b	$xr0, 0
	xvstx	$xr0, $a2, $a4
	xvfadd.d	$xr1, $xr1, $xr2
	xvldx	$xr2, $s1, $a4
	xvstx	$xr0, $s0, $a4
	xvstx	$xr0, $t1, $a4
	xvstx	$xr0, $t2, $a4
	xvfadd.d	$xr1, $xr2, $xr1
	xvstx	$xr1, $s1, $a4
	xvstx	$xr0, $t3, $a4
	xvstx	$xr0, $a1, $a4
	addi.d	$a4, $a4, 32
	bne	$a7, $a4, .LBB4_20
# %bb.21:                               # %middle.block
                                        #   in Loop: Header=BB4_12 Depth=3
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	move	$t8, $a0
	move	$s2, $s3
	move	$s1, $s4
	move	$s4, $s5
	ld.d	$s0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 200                   # 8-byte Folded Reload
	beq	$a0, $a3, .LBB4_11
	b	.LBB4_23
	.p2align	4, , 16
.LBB4_22:                               #   in Loop: Header=BB4_12 Depth=3
	move	$t7, $s2
	move	$s2, $s3
	move	$s1, $s4
	move	$s4, $s5
	ld.d	$s0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 200                   # 8-byte Folded Reload
.LBB4_23:                               # %for.body229.us.us.preheader
                                        #   in Loop: Header=BB4_12 Depth=3
	slli.d	$a0, $a6, 3
	sub.d	$a1, $a3, $t8
	move	$a2, $s6
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	move	$t0, $s8
	move	$t1, $t7
	move	$t2, $s1
	move	$t3, $s7
	move	$t4, $s2
	move	$t5, $s4
	move	$t6, $fp
	.p2align	4, , 16
.LBB4_24:                               # %for.body229.us.us
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_9 Depth=2
                                        #       Parent Loop BB4_12 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $t6, $a0
	fldx.d	$fa1, $t5, $a0
	fldx.d	$fa2, $t4, $a0
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $t4, $a0
	stx.d	$zero, $t6, $a0
	stx.d	$zero, $t5, $a0
	fldx.d	$fa0, $t3, $a0
	fldx.d	$fa1, $t2, $a0
	fldx.d	$fa2, $t1, $a0
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $t1, $a0
	stx.d	$zero, $t3, $a0
	stx.d	$zero, $t2, $a0
	fldx.d	$fa0, $t0, $a0
	fldx.d	$fa1, $a4, $a0
	fldx.d	$fa2, $a2, $a0
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $a2, $a0
	stx.d	$zero, $t0, $a0
	stx.d	$zero, $a4, $a0
	addi.d	$a6, $a6, 1
	addi.d	$t6, $t6, 8
	addi.d	$t5, $t5, 8
	addi.d	$t4, $t4, 8
	addi.d	$t3, $t3, 8
	addi.d	$t2, $t2, 8
	addi.d	$t1, $t1, 8
	addi.d	$t0, $t0, 8
	addi.d	$a4, $a4, 8
	addi.w	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB4_24
	b	.LBB4_11
.LBB4_25:                               # %if.end285
	move	$a0, $zero
	ld.d	$s8, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 320                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 328                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 336
	ret
.Lfunc_end4:
	.size	hypre_SMG2RAPPeriodicNoSym, .Lfunc_end4-hypre_SMG2RAPPeriodicNoSym
                                        # -- End function
	.type	.L__const.hypre_SMG2CreateRAPOp.RAP_num_ghost,@object # @__const.hypre_SMG2CreateRAPOp.RAP_num_ghost
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.L__const.hypre_SMG2CreateRAPOp.RAP_num_ghost:
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.size	.L__const.hypre_SMG2CreateRAPOp.RAP_num_ghost, 24

	.section	".note.GNU-stack","",@progbits
	.addrsig
