	.file	"struct_matvec.c"
	.text
	.globl	hypre_StructMatvecCreate        # -- Begin function hypre_StructMatvecCreate
	.p2align	5
	.type	hypre_StructMatvecCreate,@function
hypre_StructMatvecCreate:               # @hypre_StructMatvecCreate
# %bb.0:                                # %entry
	ori	$a0, $zero, 1
	ori	$a1, $zero, 24
	pcaddu18i	$t8, %call36(hypre_CAlloc)
	jr	$t8
.Lfunc_end0:
	.size	hypre_StructMatvecCreate, .Lfunc_end0-hypre_StructMatvecCreate
                                        # -- End function
	.globl	hypre_StructMatvecSetup         # -- Begin function hypre_StructMatvecSetup
	.p2align	5
	.type	hypre_StructMatvecSetup,@function
hypre_StructMatvecSetup:                # @hypre_StructMatvecSetup
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	move	$s1, $a1
	ld.d	$s2, $a1, 8
	ld.d	$a1, $a1, 24
	move	$s0, $a2
	move	$fp, $a0
	addi.d	$a2, $sp, 112
	addi.d	$a3, $sp, 104
	addi.d	$a4, $sp, 96
	addi.d	$a5, $sp, 88
	addi.d	$a6, $sp, 80
	addi.d	$a7, $sp, 72
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_CreateComputeInfo)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	ori	$a3, $zero, 1
	ld.d	$a0, $sp, 112
	ld.d	$a1, $sp, 104
	ld.d	$a4, $sp, 96
	ld.d	$a5, $sp, 88
	ld.d	$a6, $sp, 80
	ld.d	$a7, $sp, 72
	ld.d	$t0, $s0, 16
	lu32i.d	$a3, 1
	st.d	$a3, $sp, 60
	st.w	$a2, $sp, 68
	addi.d	$a3, $sp, 48
	st.d	$a3, $sp, 32
	st.d	$a2, $sp, 24
	st.d	$t0, $sp, 16
	st.d	$s2, $sp, 8
	addi.d	$t0, $sp, 60
	addi.d	$a2, $sp, 60
	addi.d	$a3, $sp, 60
	st.d	$t0, $sp, 0
	pcaddu18i	$ra, %call36(hypre_ComputePkgCreate)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixRef)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_StructVectorRef)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 48
	st.d	$a0, $fp, 8
	st.d	$a1, $fp, 16
	move	$a0, $zero
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end1:
	.size	hypre_StructMatvecSetup, .Lfunc_end1-hypre_StructMatvecSetup
                                        # -- End function
	.globl	hypre_StructMatvecCompute       # -- Begin function hypre_StructMatvecCompute
	.p2align	5
	.type	hypre_StructMatvecCompute,@function
hypre_StructMatvecCompute:              # @hypre_StructMatvecCompute
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -976
	st.d	$ra, $sp, 968                   # 8-byte Folded Spill
	st.d	$fp, $sp, 960                   # 8-byte Folded Spill
	st.d	$s0, $sp, 952                   # 8-byte Folded Spill
	st.d	$s1, $sp, 944                   # 8-byte Folded Spill
	st.d	$s2, $sp, 936                   # 8-byte Folded Spill
	st.d	$s3, $sp, 928                   # 8-byte Folded Spill
	st.d	$s4, $sp, 920                   # 8-byte Folded Spill
	st.d	$s5, $sp, 912                   # 8-byte Folded Spill
	st.d	$s6, $sp, 904                   # 8-byte Folded Spill
	st.d	$s7, $sp, 896                   # 8-byte Folded Spill
	st.d	$s8, $sp, 888                   # 8-byte Folded Spill
	fmov.d	$ft0, $fa0
	ld.d	$a0, $a0, 16
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	movgr2fr.d	$fa0, $zero
	fcmp.cune.d	$fcc0, $ft0, $fa0
	st.d	$a3, $sp, 160                   # 8-byte Folded Spill
                                        # kill: def $f1_64 killed $f1_64 def $xr1
	bcnez	$fcc0, .LBB2_19
# %bb.1:                                # %if.then
	ld.d	$a0, $a1, 8
	ld.d	$fp, $a0, 8
	ld.w	$a0, $fp, 8
	ori	$s0, $zero, 1
	blt	$a0, $s0, .LBB2_255
# %bb.2:                                # %for.body.lr.ph
	move	$s2, $zero
	xvreplve0.d	$xr3, $xr1
	addi.w	$s3, $zero, -1
	xvst	$xr1, $sp, 832                  # 32-byte Folded Spill
	xvst	$xr3, $sp, 800                  # 32-byte Folded Spill
	b	.LBB2_4
	.p2align	4, , 16
.LBB2_3:                                # %for.end205
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.w	$a0, $fp, 8
	addi.d	$s2, $s2, 1
	bge	$s2, $a0, .LBB2_255
.LBB2_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_9 Depth 2
                                        #       Child Loop BB2_12 Depth 3
                                        #         Child Loop BB2_14 Depth 4
                                        #         Child Loop BB2_18 Depth 4
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a2, 16
	ld.d	$s7, $fp, 0
	ld.d	$a1, $a2, 40
	ld.d	$s8, $a0, 0
	ld.d	$s5, $a2, 24
	slli.d	$a0, $s2, 2
	ldx.w	$s6, $a1, $a0
	alsl.d	$a0, $s2, $s2, 1
	slli.d	$s4, $a0, 3
	add.d	$s1, $s7, $s4
	addi.d	$a1, $sp, 868
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	xvld	$xr3, $sp, 800                  # 32-byte Folded Reload
	xvld	$xr1, $sp, 832                  # 32-byte Folded Reload
	ld.w	$a0, $sp, 876
	blt	$a0, $s0, .LBB2_3
# %bb.5:                                # %for.cond181.preheader.lr.ph
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.w	$a1, $sp, 872
	blt	$a1, $s0, .LBB2_3
# %bb.6:                                # %for.cond181.preheader.us.preheader
                                        #   in Loop: Header=BB2_4 Depth=1
	move	$a2, $zero
	add.d	$a3, $s8, $s4
	ldx.w	$a4, $s7, $s4
	ldx.w	$a5, $s8, $s4
	ld.w	$a6, $s1, 4
	ld.w	$a7, $a3, 4
	ld.w	$t0, $s1, 8
	ld.w	$t1, $a3, 8
	ld.w	$t2, $a3, 16
	sub.d	$a4, $a4, $a5
	sub.d	$a6, $a6, $a7
	sub.d	$t0, $t0, $t1
	sub.w	$a7, $t2, $a7
	slt	$t1, $s3, $a7
	maskeqz	$a7, $a7, $t1
	masknez	$t1, $s3, $t1
	or	$a7, $a7, $t1
	ld.w	$a3, $a3, 12
	addi.d	$a7, $a7, 1
	mul.d	$t0, $a7, $t0
	add.d	$a6, $a6, $t0
	sub.w	$a3, $a3, $a5
	slt	$a5, $s3, $a3
	maskeqz	$a3, $a3, $a5
	masknez	$a5, $s3, $a5
	or	$a3, $a3, $a5
	addi.d	$a5, $a3, 1
	mul.d	$a3, $a6, $a5
	add.w	$t8, $a4, $a3
	ld.d	$a4, $sp, 360                   # 8-byte Folded Reload
	ld.w	$a6, $a4, 28
	ld.w	$a3, $a4, 24
	ld.w	$t0, $a4, 32
	ld.wu	$a4, $sp, 868
	mul.d	$t1, $a5, $a6
	mul.d	$a5, $a5, $a7
	mul.d	$a6, $a5, $t0
	mul.d	$a7, $a4, $a3
	sub.d	$a5, $t1, $a7
	mul.d	$t0, $a1, $t1
	sub.d	$a6, $a6, $t0
	addi.d	$t0, $a1, -1
	mul.d	$t0, $a5, $t0
	add.d	$t0, $t0, $t1
	sub.d	$a7, $t0, $a7
	ori	$t0, $zero, 7
	sltu	$t0, $t0, $a4
	addi.d	$t1, $a3, -1
	sltui	$t1, $t1, 1
	and	$t0, $t0, $t1
	bstrpick.d	$t1, $a4, 30, 3
	slli.d	$t1, $t1, 3
	mul.d	$t2, $t1, $a3
	alsl.d	$t3, $s6, $s5, 3
	addi.d	$t4, $t3, 32
	slli.d	$t5, $a3, 6
	slli.d	$t6, $a3, 3
	b	.LBB2_9
	.p2align	4, , 16
.LBB2_7:                                # %for.cond184.preheader.us2746.preheader
                                        #   in Loop: Header=BB2_9 Depth=2
	add.d	$t8, $a7, $t8
.LBB2_8:                                # %for.cond181.for.end196_crit_edge.us
                                        #   in Loop: Header=BB2_9 Depth=2
	addi.w	$a2, $a2, 1
	add.w	$t8, $a6, $t8
	beq	$a2, $a0, .LBB2_3
.LBB2_9:                                # %for.cond181.preheader.us
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_12 Depth 3
                                        #         Child Loop BB2_14 Depth 4
                                        #         Child Loop BB2_18 Depth 4
	addi.w	$t7, $a4, 0
	blt	$t7, $s0, .LBB2_7
# %bb.10:                               # %for.cond184.preheader.us.us.preheader
                                        #   in Loop: Header=BB2_9 Depth=2
	move	$t7, $zero
	b	.LBB2_12
	.p2align	4, , 16
.LBB2_11:                               # %for.cond184.for.end_crit_edge.us.us
                                        #   in Loop: Header=BB2_12 Depth=3
	addi.w	$t7, $t7, 1
	add.w	$t8, $a5, $s1
	beq	$t7, $a1, .LBB2_8
.LBB2_12:                               # %for.cond184.preheader.us.us
                                        #   Parent Loop BB2_4 Depth=1
                                        #     Parent Loop BB2_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_14 Depth 4
                                        #         Child Loop BB2_18 Depth 4
	beqz	$t0, .LBB2_16
# %bb.13:                               # %vector.ph3897
                                        #   in Loop: Header=BB2_12 Depth=3
	add.d	$s1, $t2, $t8
	alsl.d	$t8, $t8, $t4, 3
	move	$s4, $t1
	.p2align	4, , 16
.LBB2_14:                               # %vector.body3902
                                        #   Parent Loop BB2_4 Depth=1
                                        #     Parent Loop BB2_9 Depth=2
                                        #       Parent Loop BB2_12 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvld	$xr0, $t8, -32
	xvld	$xr2, $t8, 0
	xvfmul.d	$xr0, $xr3, $xr0
	xvfmul.d	$xr2, $xr3, $xr2
	xvst	$xr0, $t8, -32
	xvst	$xr2, $t8, 0
	addi.d	$s4, $s4, -8
	add.d	$t8, $t8, $t5
	bnez	$s4, .LBB2_14
# %bb.15:                               # %middle.block3908
                                        #   in Loop: Header=BB2_12 Depth=3
	move	$s4, $t1
	beq	$t1, $a4, .LBB2_11
	b	.LBB2_17
	.p2align	4, , 16
.LBB2_16:                               #   in Loop: Header=BB2_12 Depth=3
	move	$s4, $zero
	move	$s1, $t8
.LBB2_17:                               # %for.body186.us.us.preheader
                                        #   in Loop: Header=BB2_12 Depth=3
	alsl.d	$t8, $s1, $t3, 3
	sub.d	$s4, $a4, $s4
	.p2align	4, , 16
.LBB2_18:                               # %for.body186.us.us
                                        #   Parent Loop BB2_4 Depth=1
                                        #     Parent Loop BB2_9 Depth=2
                                        #       Parent Loop BB2_12 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.d	$fa0, $t8, 0
	fmul.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $t8, 0
	add.d	$s1, $s1, $a3
	addi.w	$s4, $s4, -1
	add.d	$t8, $t8, $t6
	bnez	$s4, .LBB2_18
	b	.LBB2_11
.LBB2_19:                               # %if.end209
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a2, $a1, 24
	move	$a0, $zero
	ld.d	$a3, $a2, 0
	st.d	$a3, $sp, 320                   # 8-byte Folded Spill
	ld.w	$s7, $a2, 8
	fdiv.d	$fa2, $fa1, $ft0
	xvreplve0.d	$xr1, $xr2
	xvst	$xr1, $sp, 48                   # 32-byte Folded Spill
	xvreplve0.d	$xr3, $xr8
	vldi	$vr1, -912
	fcmp.ceq.d	$fcc0, $ft0, $fa1
	movcf2gr	$a2, $fcc0
	st.d	$a2, $sp, 200
	fcmp.ceq.d	$fcc0, $fa2, $fa1
	movcf2gr	$a2, $fcc0
	st.d	$a2, $sp, 32
	xvst	$xr2, $sp, 80                   # 32-byte Folded Spill
	fcmp.ceq.d	$fcc0, $fa2, $fa0
	movcf2gr	$a2, $fcc0
	st.d	$a2, $sp, 24
	xvrepli.b	$xr0, 0
	xvst	$xr0, $sp, 112                  # 32-byte Folded Spill
	ori	$a3, $zero, 1
	xvst	$xr8, $sp, 240                  # 32-byte Folded Spill
	st.d	$a1, $sp, 432                   # 8-byte Folded Spill
	st.d	$s7, $sp, 440                   # 8-byte Folded Spill
	xvst	$xr3, $sp, 208                  # 32-byte Folded Spill
	b	.LBB2_21
	.p2align	4, , 16
.LBB2_20:                               # %for.inc6112
                                        #   in Loop: Header=BB2_21 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	andi	$a2, $a0, 1
	ori	$a0, $zero, 1
	move	$a3, $zero
	beqz	$a2, .LBB2_255
.LBB2_21:                               # %for.body214
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_43 Depth 2
                                        #       Child Loop BB2_48 Depth 3
                                        #         Child Loop BB2_51 Depth 4
                                        #           Child Loop BB2_53 Depth 5
                                        #           Child Loop BB2_57 Depth 5
                                        #     Child Loop BB2_27 Depth 2
                                        #       Child Loop BB2_32 Depth 3
                                        #         Child Loop BB2_35 Depth 4
                                        #           Child Loop BB2_37 Depth 5
                                        #           Child Loop BB2_41 Depth 5
                                        #     Child Loop BB2_63 Depth 2
                                        #       Child Loop BB2_66 Depth 3
                                        #         Child Loop BB2_69 Depth 4
                                        #           Child Loop BB2_159 Depth 5
                                        #             Child Loop BB2_164 Depth 6
                                        #               Child Loop BB2_180 Depth 7
                                        #               Child Loop BB2_184 Depth 7
                                        #           Child Loop BB2_215 Depth 5
                                        #             Child Loop BB2_219 Depth 6
                                        #               Child Loop BB2_233 Depth 7
                                        #               Child Loop BB2_237 Depth 7
                                        #           Child Loop BB2_189 Depth 5
                                        #             Child Loop BB2_193 Depth 6
                                        #               Child Loop BB2_205 Depth 7
                                        #               Child Loop BB2_209 Depth 7
                                        #           Child Loop BB2_93 Depth 5
                                        #             Child Loop BB2_97 Depth 6
                                        #               Child Loop BB2_107 Depth 7
                                        #               Child Loop BB2_111 Depth 7
                                        #           Child Loop BB2_137 Depth 5
                                        #             Child Loop BB2_141 Depth 6
                                        #               Child Loop BB2_149 Depth 7
                                        #               Child Loop BB2_153 Depth 7
                                        #           Child Loop BB2_117 Depth 5
                                        #             Child Loop BB2_121 Depth 6
                                        #               Child Loop BB2_127 Depth 7
                                        #               Child Loop BB2_131 Depth 7
                                        #           Child Loop BB2_75 Depth 5
                                        #             Child Loop BB2_78 Depth 6
                                        #               Child Loop BB2_82 Depth 7
                                        #               Child Loop BB2_87 Depth 7
                                        #         Child Loop BB2_245 Depth 4
                                        #           Child Loop BB2_248 Depth 5
                                        #             Child Loop BB2_250 Depth 6
                                        #             Child Loop BB2_254 Depth 6
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	andi	$a0, $a0, 1
	beqz	$a0, .LBB2_23
# %bb.22:                               # %sw.bb700
                                        #   in Loop: Header=BB2_21 Depth=1
	ld.d	$a0, $sp, 880
	pcaddu18i	$ra, %call36(hypre_FinalizeIndtComputations)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s8, $a0, 16
	b	.LBB2_58
	.p2align	4, , 16
.LBB2_23:                               # %sw.bb
                                        #   in Loop: Header=BB2_21 Depth=1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 24
	addi.d	$a2, $sp, 880
	ld.d	$fp, $sp, 360                   # 8-byte Folded Reload
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_InitializeIndtComputations)
	jirl	$ra, $ra, 0
	ld.d	$s8, $fp, 8
	ld.d	$a0, $sp, 32
	movgr2cf	$fcc0, $a0
	bcnez	$fcc0, .LBB2_58
# %bb.24:                               # %if.then219
                                        #   in Loop: Header=BB2_21 Depth=1
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a0, $a1, 8
	ld.d	$fp, $a0, 8
	ld.w	$a0, $fp, 8
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB2_59
# %bb.25:                               # %for.body225.lr.ph
                                        #   in Loop: Header=BB2_21 Depth=1
	ld.d	$a0, $sp, 24
	move	$s0, $zero
	movgr2cf	$fcc0, $a0
	bcnez	$fcc0, .LBB2_27
	b	.LBB2_43
	.p2align	4, , 16
.LBB2_26:                               # %for.inc696.us
                                        #   in Loop: Header=BB2_27 Depth=2
	ld.w	$a0, $fp, 8
	addi.d	$s0, $s0, 1
	bge	$s0, $a0, .LBB2_58
.LBB2_27:                               # %for.body225.us
                                        #   Parent Loop BB2_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_32 Depth 3
                                        #         Child Loop BB2_35 Depth 4
                                        #           Child Loop BB2_37 Depth 5
                                        #           Child Loop BB2_41 Depth 5
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a2, 16
	ld.d	$s4, $fp, 0
	ld.d	$a1, $a2, 40
	ld.d	$s5, $a0, 0
	ld.d	$s1, $a2, 24
	slli.d	$a0, $s0, 2
	ldx.w	$s2, $a1, $a0
	alsl.d	$a0, $s0, $s0, 1
	slli.d	$s6, $a0, 3
	add.d	$s3, $s4, $s6
	addi.d	$a1, $sp, 868
	move	$a0, $s3
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 876
	xvld	$xr0, $sp, 112                  # 32-byte Folded Reload
	blez	$a0, .LBB2_26
# %bb.28:                               # %for.cond441.preheader.lr.ph.us
                                        #   in Loop: Header=BB2_27 Depth=2
	ld.w	$a1, $sp, 872
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB2_26
# %bb.29:                               # %for.cond441.preheader.us.us.preheader
                                        #   in Loop: Header=BB2_27 Depth=2
	move	$a2, $zero
	add.d	$a3, $s5, $s6
	ldx.w	$a4, $s4, $s6
	ldx.w	$a5, $s5, $s6
	ld.w	$a6, $s3, 4
	ld.w	$a7, $a3, 4
	ld.w	$t0, $s3, 8
	ld.w	$t1, $a3, 8
	ld.w	$t2, $a3, 16
	sub.d	$a4, $a4, $a5
	sub.d	$a6, $a6, $a7
	sub.d	$t0, $t0, $t1
	sub.w	$a7, $t2, $a7
	addi.w	$t1, $zero, -1
	slt	$t2, $t1, $a7
	maskeqz	$a7, $a7, $t2
	masknez	$t2, $t1, $t2
	or	$a7, $a7, $t2
	ld.w	$a3, $a3, 12
	addi.d	$a7, $a7, 1
	mul.d	$t0, $a7, $t0
	add.d	$a6, $a6, $t0
	sub.w	$a3, $a3, $a5
	slt	$a5, $t1, $a3
	maskeqz	$a3, $a3, $a5
	masknez	$a5, $t1, $a5
	or	$a3, $a3, $a5
	addi.d	$a5, $a3, 1
	mul.d	$a3, $a6, $a5
	add.w	$t8, $a4, $a3
	ld.d	$a4, $sp, 360                   # 8-byte Folded Reload
	ld.w	$a6, $a4, 28
	ld.w	$a3, $a4, 24
	ld.w	$t0, $a4, 32
	ld.wu	$a4, $sp, 868
	mul.d	$t1, $a5, $a6
	mul.d	$a5, $a5, $a7
	mul.d	$a6, $a5, $t0
	mul.d	$a7, $a4, $a3
	sub.d	$a5, $t1, $a7
	mul.d	$t0, $a1, $t1
	sub.d	$a6, $a6, $t0
	addi.d	$t0, $a1, -1
	mul.d	$t0, $a5, $t0
	add.d	$t0, $t0, $t1
	sub.d	$a7, $t0, $a7
	ori	$t0, $zero, 7
	sltu	$t0, $t0, $a4
	addi.d	$t1, $a3, -1
	sltui	$t1, $t1, 1
	and	$t0, $t0, $t1
	bstrpick.d	$t1, $a4, 30, 3
	slli.d	$t1, $t1, 3
	mul.d	$t2, $t1, $a3
	alsl.d	$t3, $s2, $s1, 3
	addi.d	$t4, $t3, 32
	slli.d	$t5, $a3, 6
	slli.d	$t6, $a3, 3
	b	.LBB2_32
	.p2align	4, , 16
.LBB2_30:                               # %for.cond444.preheader.us2456.us.preheader
                                        #   in Loop: Header=BB2_32 Depth=3
	add.d	$t8, $a7, $t8
.LBB2_31:                               # %for.cond441.for.end458_crit_edge.us.us
                                        #   in Loop: Header=BB2_32 Depth=3
	addi.w	$a2, $a2, 1
	add.w	$t8, $a6, $t8
	beq	$a2, $a0, .LBB2_26
.LBB2_32:                               # %for.cond441.preheader.us.us
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_27 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_35 Depth 4
                                        #           Child Loop BB2_37 Depth 5
                                        #           Child Loop BB2_41 Depth 5
	addi.w	$t7, $a4, 0
	ori	$s1, $zero, 1
	blt	$t7, $s1, .LBB2_30
# %bb.33:                               # %for.cond444.preheader.us.us.us.preheader
                                        #   in Loop: Header=BB2_32 Depth=3
	move	$t7, $zero
	b	.LBB2_35
	.p2align	4, , 16
.LBB2_34:                               # %for.cond444.for.end452_crit_edge.us.us.us
                                        #   in Loop: Header=BB2_35 Depth=4
	addi.w	$t7, $t7, 1
	add.w	$t8, $a5, $s1
	beq	$t7, $a1, .LBB2_31
.LBB2_35:                               # %for.cond444.preheader.us.us.us
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_27 Depth=2
                                        #       Parent Loop BB2_32 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB2_37 Depth 5
                                        #           Child Loop BB2_41 Depth 5
	beqz	$t0, .LBB2_39
# %bb.36:                               # %vector.ph3863
                                        #   in Loop: Header=BB2_35 Depth=4
	add.d	$s1, $t2, $t8
	alsl.d	$t8, $t8, $t4, 3
	move	$s2, $t1
	.p2align	4, , 16
.LBB2_37:                               # %vector.body3866
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_27 Depth=2
                                        #       Parent Loop BB2_32 Depth=3
                                        #         Parent Loop BB2_35 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	xvst	$xr0, $t8, -32
	xvst	$xr0, $t8, 0
	addi.d	$s2, $s2, -8
	add.d	$t8, $t8, $t5
	bnez	$s2, .LBB2_37
# %bb.38:                               # %middle.block3870
                                        #   in Loop: Header=BB2_35 Depth=4
	move	$s2, $t1
	beq	$t1, $a4, .LBB2_34
	b	.LBB2_40
	.p2align	4, , 16
.LBB2_39:                               #   in Loop: Header=BB2_35 Depth=4
	move	$s2, $zero
	move	$s1, $t8
.LBB2_40:                               # %for.body446.us.us.us.preheader
                                        #   in Loop: Header=BB2_35 Depth=4
	alsl.d	$t8, $s1, $t3, 3
	sub.d	$s2, $a4, $s2
	.p2align	4, , 16
.LBB2_41:                               # %for.body446.us.us.us
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_27 Depth=2
                                        #       Parent Loop BB2_32 Depth=3
                                        #         Parent Loop BB2_35 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	st.d	$zero, $t8, 0
	add.d	$s1, $s1, $a3
	addi.w	$s2, $s2, -1
	add.d	$t8, $t8, $t6
	bnez	$s2, .LBB2_41
	b	.LBB2_34
	.p2align	4, , 16
.LBB2_42:                               # %for.inc696
                                        #   in Loop: Header=BB2_43 Depth=2
	ld.w	$a0, $fp, 8
	addi.d	$s0, $s0, 1
	bge	$s0, $a0, .LBB2_58
.LBB2_43:                               # %for.body225
                                        #   Parent Loop BB2_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_48 Depth 3
                                        #         Child Loop BB2_51 Depth 4
                                        #           Child Loop BB2_53 Depth 5
                                        #           Child Loop BB2_57 Depth 5
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a2, 16
	ld.d	$s4, $fp, 0
	ld.d	$a1, $a2, 40
	ld.d	$s5, $a0, 0
	ld.d	$s1, $a2, 24
	slli.d	$a0, $s0, 2
	ldx.w	$s2, $a1, $a0
	alsl.d	$a0, $s0, $s0, 1
	slli.d	$s6, $a0, 3
	add.d	$s3, $s4, $s6
	addi.d	$a1, $sp, 868
	move	$a0, $s3
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 876
	xvld	$xr2, $sp, 80                   # 32-byte Folded Reload
	xvld	$xr3, $sp, 48                   # 32-byte Folded Reload
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB2_42
# %bb.44:                               # %for.cond667.preheader.lr.ph
                                        #   in Loop: Header=BB2_43 Depth=2
	ld.w	$a1, $sp, 872
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB2_42
# %bb.45:                               # %for.cond667.preheader.us.preheader
                                        #   in Loop: Header=BB2_43 Depth=2
	move	$a2, $zero
	add.d	$a3, $s5, $s6
	ldx.w	$a4, $s4, $s6
	ldx.w	$a5, $s5, $s6
	ld.w	$a6, $s3, 4
	ld.w	$a7, $a3, 4
	ld.w	$t0, $s3, 8
	ld.w	$t1, $a3, 8
	ld.w	$t2, $a3, 16
	sub.d	$a4, $a4, $a5
	sub.d	$a6, $a6, $a7
	sub.d	$t0, $t0, $t1
	sub.w	$a7, $t2, $a7
	addi.w	$t1, $zero, -1
	slt	$t2, $t1, $a7
	maskeqz	$a7, $a7, $t2
	masknez	$t2, $t1, $t2
	or	$a7, $a7, $t2
	ld.w	$a3, $a3, 12
	addi.d	$a7, $a7, 1
	mul.d	$t0, $a7, $t0
	add.d	$a6, $a6, $t0
	sub.w	$a3, $a3, $a5
	slt	$a5, $t1, $a3
	maskeqz	$a3, $a3, $a5
	masknez	$a5, $t1, $a5
	or	$a3, $a3, $a5
	addi.d	$a5, $a3, 1
	mul.d	$a3, $a6, $a5
	add.w	$t8, $a4, $a3
	ld.d	$a4, $sp, 360                   # 8-byte Folded Reload
	ld.w	$a6, $a4, 28
	ld.w	$a3, $a4, 24
	ld.w	$t0, $a4, 32
	ld.wu	$a4, $sp, 868
	mul.d	$t1, $a5, $a6
	mul.d	$a5, $a5, $a7
	mul.d	$a6, $a5, $t0
	mul.d	$a7, $a4, $a3
	sub.d	$a5, $t1, $a7
	mul.d	$t0, $a1, $t1
	sub.d	$a6, $a6, $t0
	addi.d	$t0, $a1, -1
	mul.d	$t0, $a5, $t0
	add.d	$t0, $t0, $t1
	sub.d	$a7, $t0, $a7
	ori	$t0, $zero, 7
	sltu	$t0, $t0, $a4
	addi.d	$t1, $a3, -1
	sltui	$t1, $t1, 1
	and	$t0, $t0, $t1
	bstrpick.d	$t1, $a4, 30, 3
	slli.d	$t1, $t1, 3
	mul.d	$t2, $t1, $a3
	alsl.d	$t3, $s2, $s1, 3
	addi.d	$t4, $t3, 32
	slli.d	$t5, $a3, 6
	slli.d	$t6, $a3, 3
	b	.LBB2_48
	.p2align	4, , 16
.LBB2_46:                               # %for.cond670.preheader.us2434.preheader
                                        #   in Loop: Header=BB2_48 Depth=3
	add.d	$t8, $a7, $t8
.LBB2_47:                               # %for.cond667.for.end685_crit_edge.us
                                        #   in Loop: Header=BB2_48 Depth=3
	addi.w	$a2, $a2, 1
	add.w	$t8, $a6, $t8
	beq	$a2, $a0, .LBB2_42
.LBB2_48:                               # %for.cond667.preheader.us
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_43 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_51 Depth 4
                                        #           Child Loop BB2_53 Depth 5
                                        #           Child Loop BB2_57 Depth 5
	addi.w	$t7, $a4, 0
	ori	$s1, $zero, 1
	blt	$t7, $s1, .LBB2_46
# %bb.49:                               # %for.cond670.preheader.us.us.preheader
                                        #   in Loop: Header=BB2_48 Depth=3
	move	$t7, $zero
	b	.LBB2_51
	.p2align	4, , 16
.LBB2_50:                               # %for.cond670.for.end679_crit_edge.us.us
                                        #   in Loop: Header=BB2_51 Depth=4
	addi.w	$t7, $t7, 1
	add.w	$t8, $a5, $s1
	beq	$t7, $a1, .LBB2_47
.LBB2_51:                               # %for.cond670.preheader.us.us
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_43 Depth=2
                                        #       Parent Loop BB2_48 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB2_53 Depth 5
                                        #           Child Loop BB2_57 Depth 5
	beqz	$t0, .LBB2_55
# %bb.52:                               # %vector.ph3878
                                        #   in Loop: Header=BB2_51 Depth=4
	add.d	$s1, $t2, $t8
	alsl.d	$t8, $t8, $t4, 3
	move	$s2, $t1
	.p2align	4, , 16
.LBB2_53:                               # %vector.body3883
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_43 Depth=2
                                        #       Parent Loop BB2_48 Depth=3
                                        #         Parent Loop BB2_51 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	xvld	$xr0, $t8, -32
	xvld	$xr1, $t8, 0
	xvfmul.d	$xr0, $xr3, $xr0
	xvfmul.d	$xr1, $xr3, $xr1
	xvst	$xr0, $t8, -32
	xvst	$xr1, $t8, 0
	addi.d	$s2, $s2, -8
	add.d	$t8, $t8, $t5
	bnez	$s2, .LBB2_53
# %bb.54:                               # %middle.block3889
                                        #   in Loop: Header=BB2_51 Depth=4
	move	$s2, $t1
	beq	$t1, $a4, .LBB2_50
	b	.LBB2_56
	.p2align	4, , 16
.LBB2_55:                               #   in Loop: Header=BB2_51 Depth=4
	move	$s2, $zero
	move	$s1, $t8
.LBB2_56:                               # %for.body672.us.us.preheader
                                        #   in Loop: Header=BB2_51 Depth=4
	alsl.d	$t8, $s1, $t3, 3
	sub.d	$s2, $a4, $s2
	.p2align	4, , 16
.LBB2_57:                               # %for.body672.us.us
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_43 Depth=2
                                        #       Parent Loop BB2_48 Depth=3
                                        #         Parent Loop BB2_51 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	fld.d	$fa0, $t8, 0
	fmul.d	$fa0, $fa2, $fa0
	fst.d	$fa0, $t8, 0
	add.d	$s1, $s1, $a3
	addi.w	$s2, $s2, -1
	add.d	$t8, $t8, $t6
	bnez	$s2, .LBB2_57
	b	.LBB2_50
	.p2align	4, , 16
.LBB2_58:                               # %sw.epilog
                                        #   in Loop: Header=BB2_21 Depth=1
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
.LBB2_59:                               # %sw.epilog
                                        #   in Loop: Header=BB2_21 Depth=1
	ld.w	$a0, $s8, 8
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB2_20
# %bb.60:                               # %for.body705.preheader
                                        #   in Loop: Header=BB2_21 Depth=1
	move	$a4, $zero
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
	b	.LBB2_63
	.p2align	4, , 16
.LBB2_61:                               # %for.inc6109.loopexit
                                        #   in Loop: Header=BB2_63 Depth=2
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a0, $s8, 8
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
.LBB2_62:                               # %for.inc6109
                                        #   in Loop: Header=BB2_63 Depth=2
	addi.d	$a4, $a4, 1
	bge	$a4, $a0, .LBB2_20
.LBB2_63:                               # %for.body705
                                        #   Parent Loop BB2_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_66 Depth 3
                                        #         Child Loop BB2_69 Depth 4
                                        #           Child Loop BB2_159 Depth 5
                                        #             Child Loop BB2_164 Depth 6
                                        #               Child Loop BB2_180 Depth 7
                                        #               Child Loop BB2_184 Depth 7
                                        #           Child Loop BB2_215 Depth 5
                                        #             Child Loop BB2_219 Depth 6
                                        #               Child Loop BB2_233 Depth 7
                                        #               Child Loop BB2_237 Depth 7
                                        #           Child Loop BB2_189 Depth 5
                                        #             Child Loop BB2_193 Depth 6
                                        #               Child Loop BB2_205 Depth 7
                                        #               Child Loop BB2_209 Depth 7
                                        #           Child Loop BB2_93 Depth 5
                                        #             Child Loop BB2_97 Depth 6
                                        #               Child Loop BB2_107 Depth 7
                                        #               Child Loop BB2_111 Depth 7
                                        #           Child Loop BB2_137 Depth 5
                                        #             Child Loop BB2_141 Depth 6
                                        #               Child Loop BB2_149 Depth 7
                                        #               Child Loop BB2_153 Depth 7
                                        #           Child Loop BB2_117 Depth 5
                                        #             Child Loop BB2_121 Depth 6
                                        #               Child Loop BB2_127 Depth 7
                                        #               Child Loop BB2_131 Depth 7
                                        #           Child Loop BB2_75 Depth 5
                                        #             Child Loop BB2_78 Depth 6
                                        #               Child Loop BB2_82 Depth 7
                                        #               Child Loop BB2_87 Depth 7
                                        #         Child Loop BB2_245 Depth 4
                                        #           Child Loop BB2_248 Depth 5
                                        #             Child Loop BB2_250 Depth 6
                                        #             Child Loop BB2_254 Depth 6
	ld.d	$a2, $s8, 0
	slli.d	$a3, $a4, 3
	st.d	$a3, $sp, 352                   # 8-byte Folded Spill
	ldx.d	$a7, $a2, $a3
	ld.w	$a2, $a7, 8
	ori	$a3, $zero, 1
	blt	$a2, $a3, .LBB2_62
# %bb.64:                               # %for.body735.lr.ph
                                        #   in Loop: Header=BB2_63 Depth=2
	ld.d	$a0, $a1, 40
	ld.d	$a6, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a1, $a6, 16
	move	$t0, $zero
	ld.d	$a0, $a0, 0
	alsl.d	$a2, $a4, $a4, 1
	ld.d	$a1, $a1, 0
	ld.d	$a5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a3, $a5, 16
	slli.d	$a2, $a2, 3
	add.d	$a0, $a0, $a2
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	add.d	$a0, $a1, $a2
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	ld.d	$a0, $a3, 0
	ld.d	$a1, $a5, 40
	ld.d	$a3, $a6, 40
	st.d	$a4, $sp, 168                   # 8-byte Folded Spill
	slli.d	$a4, $a4, 2
	ld.d	$a5, $a5, 24
	ldx.w	$a1, $a1, $a4
	ld.d	$a6, $a6, 24
	ldx.w	$a3, $a3, $a4
	add.d	$a0, $a0, $a2
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	alsl.d	$a0, $a1, $a5, 3
	addi.d	$a1, $a0, 8
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	alsl.d	$a1, $a3, $a6, 3
	addi.d	$a2, $a1, 8
	st.d	$a2, $sp, 176                   # 8-byte Folded Spill
	st.d	$a1, $sp, 328                   # 8-byte Folded Spill
	addi.d	$a1, $a1, 32
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	st.d	$a0, $sp, 832                   # 8-byte Folded Spill
	addi.d	$fp, $a0, 32
	st.d	$a7, $sp, 288                   # 8-byte Folded Spill
	st.d	$fp, $sp, 280                   # 8-byte Folded Spill
	b	.LBB2_66
	.p2align	4, , 16
.LBB2_65:                               # %for.inc6106
                                        #   in Loop: Header=BB2_66 Depth=3
	ld.d	$a7, $sp, 288                   # 8-byte Folded Reload
	ld.w	$a0, $a7, 8
	ld.d	$t0, $sp, 296                   # 8-byte Folded Reload
	addi.d	$t0, $t0, 1
	bge	$t0, $a0, .LBB2_61
.LBB2_66:                               # %for.body735
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_69 Depth 4
                                        #           Child Loop BB2_159 Depth 5
                                        #             Child Loop BB2_164 Depth 6
                                        #               Child Loop BB2_180 Depth 7
                                        #               Child Loop BB2_184 Depth 7
                                        #           Child Loop BB2_215 Depth 5
                                        #             Child Loop BB2_219 Depth 6
                                        #               Child Loop BB2_233 Depth 7
                                        #               Child Loop BB2_237 Depth 7
                                        #           Child Loop BB2_189 Depth 5
                                        #             Child Loop BB2_193 Depth 6
                                        #               Child Loop BB2_205 Depth 7
                                        #               Child Loop BB2_209 Depth 7
                                        #           Child Loop BB2_93 Depth 5
                                        #             Child Loop BB2_97 Depth 6
                                        #               Child Loop BB2_107 Depth 7
                                        #               Child Loop BB2_111 Depth 7
                                        #           Child Loop BB2_137 Depth 5
                                        #             Child Loop BB2_141 Depth 6
                                        #               Child Loop BB2_149 Depth 7
                                        #               Child Loop BB2_153 Depth 7
                                        #           Child Loop BB2_117 Depth 5
                                        #             Child Loop BB2_121 Depth 6
                                        #               Child Loop BB2_127 Depth 7
                                        #               Child Loop BB2_131 Depth 7
                                        #           Child Loop BB2_75 Depth 5
                                        #             Child Loop BB2_78 Depth 6
                                        #               Child Loop BB2_82 Depth 7
                                        #               Child Loop BB2_87 Depth 7
                                        #         Child Loop BB2_245 Depth 4
                                        #           Child Loop BB2_248 Depth 5
                                        #             Child Loop BB2_250 Depth 6
                                        #             Child Loop BB2_254 Depth 6
	ld.d	$a0, $a7, 0
	slli.d	$a1, $t0, 4
	st.d	$t0, $sp, 296                   # 8-byte Folded Spill
	alsl.d	$a1, $t0, $a1, 3
	add.d	$a0, $a0, $a1
	addi.d	$a1, $sp, 868
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	xvld	$xr8, $sp, 240                  # 32-byte Folded Reload
	ori	$a0, $zero, 1
	blt	$s7, $a0, .LBB2_239
# %bb.67:                               # %for.body745.lr.ph
                                        #   in Loop: Header=BB2_66 Depth=3
	ld.w	$a4, $sp, 868
	ld.w	$a2, $sp, 872
	ld.w	$a3, $sp, 876
	slt	$a0, $a4, $a2
	masknez	$a1, $a4, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	slt	$a1, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$a0, $a1, $a0
	slti	$a0, $a0, 1
	st.d	$a3, $sp, 504                   # 8-byte Folded Spill
	slti	$a1, $a3, 1
	st.d	$a2, $sp, 792                   # 8-byte Folded Spill
	addi.d	$a2, $a2, -1
	st.d	$a2, $sp, 312                   # 8-byte Folded Spill
	addi.d	$a2, $a4, -1
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a3, $a2, 3
	st.d	$a3, $sp, 384                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a3, 3
	st.d	$a3, $sp, 784                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a3, 3
	st.d	$a2, $sp, 376                   # 8-byte Folded Spill
	bstrpick.d	$a2, $a4, 31, 0
	st.d	$a2, $sp, 768                   # 8-byte Folded Spill
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	move	$a1, $zero
	bstrpick.d	$a0, $a4, 30, 3
	slli.d	$a0, $a0, 3
	st.d	$a0, $sp, 520                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a4, 30, 2
	slli.d	$a0, $a0, 2
	st.d	$a0, $sp, 776                   # 8-byte Folded Spill
	ori	$a0, $zero, 11
	st.d	$a4, $sp, 800                   # 8-byte Folded Spill
	sltu	$a0, $a0, $a4
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	b	.LBB2_69
	.p2align	4, , 16
.LBB2_68:                               # %for.inc5876
                                        #   in Loop: Header=BB2_69 Depth=4
	ld.d	$a1, $sp, 448                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 7
	addi.w	$a0, $a1, 0
	ld.d	$s7, $sp, 440                   # 8-byte Folded Reload
	bge	$a0, $s7, .LBB2_239
.LBB2_69:                               # %for.body745
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB2_159 Depth 5
                                        #             Child Loop BB2_164 Depth 6
                                        #               Child Loop BB2_180 Depth 7
                                        #               Child Loop BB2_184 Depth 7
                                        #           Child Loop BB2_215 Depth 5
                                        #             Child Loop BB2_219 Depth 6
                                        #               Child Loop BB2_233 Depth 7
                                        #               Child Loop BB2_237 Depth 7
                                        #           Child Loop BB2_189 Depth 5
                                        #             Child Loop BB2_193 Depth 6
                                        #               Child Loop BB2_205 Depth 7
                                        #               Child Loop BB2_209 Depth 7
                                        #           Child Loop BB2_93 Depth 5
                                        #             Child Loop BB2_97 Depth 6
                                        #               Child Loop BB2_107 Depth 7
                                        #               Child Loop BB2_111 Depth 7
                                        #           Child Loop BB2_137 Depth 5
                                        #             Child Loop BB2_141 Depth 6
                                        #               Child Loop BB2_149 Depth 7
                                        #               Child Loop BB2_153 Depth 7
                                        #           Child Loop BB2_117 Depth 5
                                        #             Child Loop BB2_121 Depth 6
                                        #               Child Loop BB2_127 Depth 7
                                        #               Child Loop BB2_131 Depth 7
                                        #           Child Loop BB2_75 Depth 5
                                        #             Child Loop BB2_78 Depth 6
                                        #               Child Loop BB2_82 Depth 7
                                        #               Child Loop BB2_87 Depth 7
	st.d	$a1, $sp, 448                   # 8-byte Folded Spill
	sub.w	$a0, $s7, $a1
	slti	$a1, $a0, 7
	maskeqz	$a0, $a0, $a1
	ori	$a2, $zero, 7
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI2_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI2_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB2_70:                               # %sw.bb5338
                                        #   in Loop: Header=BB2_69 Depth=4
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_68
# %bb.71:                               # %for.cond5828.preheader.lr.ph
                                        #   in Loop: Header=BB2_69 Depth=4
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 792                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB2_68
# %bb.72:                               # %for.cond5828.preheader.us.preheader
                                        #   in Loop: Header=BB2_69 Depth=4
	ld.d	$a2, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a0, $a2, 64
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	ldx.d	$a1, $a0, $a1
	move	$a0, $zero
	ld.d	$t4, $a2, 48
	ld.d	$a3, $sp, 448                   # 8-byte Folded Reload
	slli.d	$a2, $a3, 2
	ldx.w	$t5, $a1, $a2
	alsl.d	$a1, $a3, $a3, 1
	slli.d	$a1, $a1, 2
	ld.d	$a5, $sp, 320                   # 8-byte Folded Reload
	add.d	$a2, $a5, $a1
	ld.d	$s2, $sp, 336                   # 8-byte Folded Reload
	ld.w	$a3, $s2, 16
	ld.w	$a4, $s2, 4
	ldx.w	$t6, $a5, $a1
	ld.w	$a5, $a2, 4
	ld.w	$a2, $a2, 8
	sub.w	$a3, $a3, $a4
	addi.w	$a1, $zero, -1
	slt	$a6, $a1, $a3
	maskeqz	$a3, $a3, $a6
	masknez	$a6, $a1, $a6
	or	$a3, $a3, $a6
	ld.w	$a6, $s2, 12
	ld.w	$a7, $s2, 0
	addi.d	$a3, $a3, 1
	mul.d	$a2, $a3, $a2
	add.d	$t7, $a2, $a5
	sub.w	$a2, $a6, $a7
	slt	$a5, $a1, $a2
	maskeqz	$a2, $a2, $a5
	masknez	$a5, $a1, $a5
	or	$a2, $a2, $a5
	addi.d	$t8, $a2, 1
	ld.d	$t1, $sp, 392                   # 8-byte Folded Reload
	ld.w	$a2, $t1, 0
	ld.d	$s1, $sp, 344                   # 8-byte Folded Reload
	ld.w	$a5, $s1, 0
	ld.w	$a6, $t1, 4
	ld.w	$t0, $s1, 4
	ld.w	$t1, $t1, 8
	ld.w	$t2, $s1, 8
	ld.w	$t3, $s1, 16
	sub.d	$fp, $a2, $a5
	sub.d	$s0, $a6, $t0
	sub.d	$t2, $t1, $t2
	sub.w	$t0, $t3, $t0
	slt	$t3, $a1, $t0
	maskeqz	$t0, $t0, $t3
	masknez	$t3, $a1, $t3
	or	$t0, $t0, $t3
	ld.w	$t3, $s1, 12
	addi.d	$t0, $t0, 1
	mul.d	$t2, $t0, $t2
	add.d	$t2, $s0, $t2
	sub.w	$a5, $t3, $a5
	slt	$t3, $a1, $a5
	maskeqz	$a5, $a5, $t3
	masknez	$t3, $a1, $t3
	or	$a5, $a5, $t3
	addi.d	$a5, $a5, 1
	mul.d	$t2, $t2, $a5
	ld.w	$t3, $s2, 8
	add.w	$s5, $fp, $t2
	sub.d	$a7, $a2, $a7
	sub.d	$a4, $a6, $a4
	sub.d	$t2, $t1, $t3
	mul.d	$t2, $t2, $a3
	add.d	$a4, $a4, $t2
	mul.d	$a4, $a4, $t8
	add.w	$s6, $a7, $a4
	ld.d	$fp, $sp, 368                   # 8-byte Folded Reload
	ld.w	$a4, $fp, 0
	ld.w	$a7, $fp, 4
	ld.w	$t2, $fp, 8
	ld.w	$t3, $fp, 16
	sub.d	$a2, $a2, $a4
	sub.d	$a6, $a6, $a7
	sub.d	$t1, $t1, $t2
	sub.w	$a7, $t3, $a7
	slt	$t2, $a1, $a7
	maskeqz	$a7, $a7, $t2
	masknez	$t2, $a1, $t2
	or	$a7, $a7, $t2
	ld.w	$t2, $fp, 12
	addi.d	$a7, $a7, 1
	mul.d	$t1, $a7, $t1
	add.d	$a6, $a6, $t1
	sub.w	$a4, $t2, $a4
	slt	$t1, $a1, $a4
	maskeqz	$a4, $a4, $t1
	masknez	$a1, $a1, $t1
	or	$a1, $a4, $a1
	addi.d	$a4, $a1, 1
	ld.d	$t3, $sp, 360                   # 8-byte Folded Reload
	ld.w	$t1, $t3, 28
	mul.d	$a1, $a6, $a4
	add.w	$a1, $a2, $a1
	ld.w	$a2, $t3, 24
	mul.d	$t2, $t1, $a5
	ld.w	$a6, $t3, 32
	mul.d	$t3, $t1, $t8
	mul.d	$t1, $a4, $t1
	mul.d	$a4, $a4, $a7
	mul.d	$fp, $a4, $a6
	mul.d	$a3, $t8, $a3
	mul.d	$a7, $a3, $a6
	mul.d	$a3, $a5, $t0
	mul.d	$a6, $a3, $a6
	ld.d	$s1, $sp, 800                   # 8-byte Folded Reload
	mul.d	$s0, $s1, $a2
	sub.d	$a3, $t2, $s0
	sub.d	$a4, $t3, $s0
	sub.d	$a5, $t1, $s0
	ld.d	$s2, $sp, 792                   # 8-byte Folded Reload
	mul.d	$t0, $s2, $t2
	sub.d	$a6, $a6, $t0
	st.d	$a6, $sp, 760                   # 8-byte Folded Spill
	mul.d	$t0, $s2, $t3
	sub.d	$a7, $a7, $t0
	mul.d	$t0, $s2, $t1
	sub.d	$t0, $fp, $t0
	ori	$fp, $zero, 7
	sltu	$fp, $fp, $s1
	ld.d	$a6, $sp, 312                   # 8-byte Folded Reload
	mul.d	$s1, $a6, $a3
	add.d	$t2, $s1, $t2
	sub.d	$t2, $t2, $s0
	st.d	$t2, $sp, 752                   # 8-byte Folded Spill
	mul.d	$t2, $a6, $a4
	add.d	$t2, $t2, $t3
	sub.d	$t2, $t2, $s0
	st.d	$t2, $sp, 744                   # 8-byte Folded Spill
	mul.d	$t2, $a6, $a5
	add.d	$t1, $t2, $t1
	sub.d	$a6, $t1, $s0
	st.d	$a6, $sp, 736                   # 8-byte Folded Spill
	alsl.d	$t4, $t5, $t4, 3
	ld.d	$a6, $sp, 384                   # 8-byte Folded Reload
	add.d	$t1, $t4, $a6
	addi.d	$t5, $t1, 8
	mul.d	$t1, $t7, $t8
	add.w	$t1, $t6, $t1
	ld.d	$t2, $sp, 328                   # 8-byte Folded Reload
	alsl.d	$t6, $t1, $t2, 3
	ld.d	$a6, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$t7, $t1, $a6, 3
	addi.d	$t2, $a2, -1
	sltui	$t2, $t2, 1
	and	$t8, $fp, $t2
	ld.d	$a6, $sp, 520                   # 8-byte Folded Reload
	mul.d	$fp, $a6, $a2
	slli.d	$s0, $a2, 6
	addi.d	$s2, $t4, 32
	ld.d	$t2, $sp, 192                   # 8-byte Folded Reload
	alsl.d	$s3, $t1, $t2, 3
	slli.d	$s4, $a2, 3
	b	.LBB2_75
	.p2align	4, , 16
.LBB2_73:                               # %for.cond5831.preheader.us2504.preheader
                                        #   in Loop: Header=BB2_75 Depth=5
	ld.d	$a6, $sp, 752                   # 8-byte Folded Reload
	add.d	$s5, $a6, $s5
	ld.d	$a6, $sp, 744                   # 8-byte Folded Reload
	add.d	$s6, $a6, $s6
	ld.d	$a6, $sp, 736                   # 8-byte Folded Reload
	add.d	$a1, $a6, $a1
.LBB2_74:                               # %for.cond5828.for.end5859_crit_edge.us
                                        #   in Loop: Header=BB2_75 Depth=5
	ld.d	$a6, $sp, 760                   # 8-byte Folded Reload
	add.w	$s5, $a6, $s5
	add.w	$s6, $a7, $s6
	addi.w	$a0, $a0, 1
	add.w	$a1, $t0, $a1
	ld.d	$a6, $sp, 504                   # 8-byte Folded Reload
	beq	$a0, $a6, .LBB2_68
.LBB2_75:                               # %for.cond5828.preheader.us
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB2_78 Depth 6
                                        #               Child Loop BB2_82 Depth 7
                                        #               Child Loop BB2_87 Depth 7
	ori	$t1, $zero, 1
	ld.d	$t2, $sp, 800                   # 8-byte Folded Reload
	blt	$t2, $t1, .LBB2_73
# %bb.76:                               # %for.cond5831.preheader.us.us.preheader
                                        #   in Loop: Header=BB2_75 Depth=5
	move	$s7, $zero
	b	.LBB2_78
	.p2align	4, , 16
.LBB2_77:                               # %for.cond5831.for.end5847_crit_edge.us.us
                                        #   in Loop: Header=BB2_78 Depth=6
	add.w	$s5, $a3, $s8
	add.w	$s6, $a4, $s1
	addi.w	$s7, $s7, 1
	add.w	$a1, $a5, $a1
	ld.d	$a6, $sp, 792                   # 8-byte Folded Reload
	beq	$s7, $a6, .LBB2_74
.LBB2_78:                               # %for.cond5831.preheader.us.us
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        #           Parent Loop BB2_75 Depth=5
                                        # =>          This Loop Header: Depth=6
                                        #               Child Loop BB2_82 Depth 7
                                        #               Child Loop BB2_87 Depth 7
	beqz	$t8, .LBB2_84
# %bb.79:                               # %vector.memcheck3808
                                        #   in Loop: Header=BB2_78 Depth=6
	ld.d	$t1, $sp, 832                   # 8-byte Folded Reload
	alsl.d	$ra, $a1, $t1, 3
	ld.d	$a6, $sp, 784                   # 8-byte Folded Reload
	alsl.d	$t2, $a1, $a6, 3
	alsl.d	$t1, $s5, $t4, 3
	alsl.d	$t3, $s5, $t5, 3
	sltu	$t3, $ra, $t3
	sltu	$t1, $t1, $t2
	and	$t3, $t3, $t1
	move	$t1, $zero
	bnez	$t3, .LBB2_85
# %bb.80:                               # %vector.memcheck3808
                                        #   in Loop: Header=BB2_78 Depth=6
	alsl.d	$t3, $s6, $t6, 3
	alsl.d	$s1, $s6, $t7, 3
	sltu	$s1, $ra, $s1
	sltu	$t2, $t3, $t2
	and	$t2, $s1, $t2
	bnez	$t2, .LBB2_85
# %bb.81:                               # %vector.ph3838
                                        #   in Loop: Header=BB2_78 Depth=6
	move	$t1, $zero
	add.d	$a1, $fp, $a1
	add.d	$s1, $fp, $s6
	add.d	$s8, $fp, $s5
	alsl.d	$s5, $s5, $s2, 3
	alsl.d	$s6, $s6, $s3, 3
	ld.d	$t2, $sp, 520                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_82:                               # %vector.body3841
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        #           Parent Loop BB2_75 Depth=5
                                        #             Parent Loop BB2_78 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	add.d	$t3, $s5, $t1
	xvld	$xr0, $t3, -32
	xvldx	$xr1, $s5, $t1
	add.d	$t3, $s6, $t1
	xvld	$xr2, $t3, -32
	xvldx	$xr3, $s6, $t1
	add.d	$t3, $ra, $t1
	xvldx	$xr4, $ra, $t1
	xvld	$xr5, $t3, 32
	xvfmadd.d	$xr0, $xr0, $xr2, $xr4
	xvfmadd.d	$xr1, $xr1, $xr3, $xr5
	xvstx	$xr0, $ra, $t1
	xvst	$xr1, $t3, 32
	addi.d	$t2, $t2, -8
	add.d	$t1, $t1, $s0
	bnez	$t2, .LBB2_82
# %bb.83:                               # %middle.block3853
                                        #   in Loop: Header=BB2_78 Depth=6
	ld.d	$t2, $sp, 520                   # 8-byte Folded Reload
	move	$t1, $t2
	ld.d	$a6, $sp, 768                   # 8-byte Folded Reload
	beq	$t2, $a6, .LBB2_77
	b	.LBB2_86
	.p2align	4, , 16
.LBB2_84:                               #   in Loop: Header=BB2_78 Depth=6
	move	$t1, $zero
.LBB2_85:                               #   in Loop: Header=BB2_78 Depth=6
	move	$s1, $s6
	move	$s8, $s5
.LBB2_86:                               # %for.body5833.us.us.preheader
                                        #   in Loop: Header=BB2_78 Depth=6
	move	$s5, $zero
	move	$t2, $zero
	ld.d	$t3, $sp, 832                   # 8-byte Folded Reload
	alsl.d	$s6, $a1, $t3, 3
	alsl.d	$ra, $s1, $t6, 3
	alsl.d	$t3, $s8, $t4, 3
	ld.d	$a6, $sp, 800                   # 8-byte Folded Reload
	sub.d	$t1, $a6, $t1
	.p2align	4, , 16
.LBB2_87:                               # %for.body5833.us.us
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        #           Parent Loop BB2_75 Depth=5
                                        #             Parent Loop BB2_78 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	fldx.d	$fa0, $t3, $t2
	fldx.d	$fa1, $ra, $t2
	fldx.d	$fa2, $s6, $t2
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	fstx.d	$fa0, $s6, $t2
	add.d	$t2, $t2, $s4
	addi.w	$t1, $t1, -1
	sub.d	$s5, $s5, $a2
	bnez	$t1, .LBB2_87
# %bb.88:                               # %for.cond5831.for.end5847_crit_edge.us.us.loopexit
                                        #   in Loop: Header=BB2_78 Depth=6
	sub.d	$a1, $a1, $s5
	sub.d	$s1, $s1, $s5
	sub.d	$s8, $s8, $s5
	b	.LBB2_77
.LBB2_89:                               # %sw.bb3334
                                        #   in Loop: Header=BB2_69 Depth=4
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_68
# %bb.90:                               # %for.cond4001.preheader.lr.ph
                                        #   in Loop: Header=BB2_69 Depth=4
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 64
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	st.d	$zero, $sp, 656                 # 8-byte Folded Spill
	ld.d	$t0, $sp, 448                   # 8-byte Folded Reload
	slli.d	$a1, $t0, 2
	ldx.w	$a1, $a0, $a1
	st.d	$a1, $sp, 736                   # 8-byte Folded Spill
	addi.d	$t1, $t0, 1
	slli.d	$a1, $t1, 2
	ldx.w	$a1, $a0, $a1
	st.d	$a1, $sp, 712                   # 8-byte Folded Spill
	addi.d	$t2, $t0, 2
	slli.d	$a1, $t2, 2
	ldx.w	$a1, $a0, $a1
	st.d	$a1, $sp, 720                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 368                   # 8-byte Folded Reload
	ld.w	$a2, $s8, 12
	ld.w	$a1, $s8, 0
	addi.d	$t6, $t0, 3
	slli.d	$a3, $t6, 2
	ldx.w	$a0, $a0, $a3
	st.d	$a0, $sp, 728                   # 8-byte Folded Spill
	sub.w	$a0, $a2, $a1
	addi.w	$a5, $zero, -1
	slt	$a2, $a5, $a0
	maskeqz	$a0, $a0, $a2
	ld.w	$t3, $s8, 16
	ld.w	$a3, $s8, 4
	masknez	$a2, $a5, $a2
	or	$a0, $a0, $a2
	addi.d	$a2, $a0, 1
	sub.w	$a0, $t3, $a3
	slt	$t3, $a5, $a0
	maskeqz	$a0, $a0, $t3
	masknez	$t3, $a5, $t3
	or	$a0, $a0, $t3
	addi.d	$t8, $a0, 1
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	ld.w	$fp, $ra, 32
	ld.w	$s0, $ra, 28
	ld.d	$a6, $sp, 336                   # 8-byte Folded Reload
	ld.w	$a0, $a6, 12
	ld.w	$s1, $a6, 0
	mul.d	$t3, $a2, $t8
	mul.d	$t5, $t3, $fp
	mul.d	$t4, $a2, $s0
	sub.w	$a0, $a0, $s1
	slt	$t3, $a5, $a0
	maskeqz	$a0, $a0, $t3
	ld.w	$t7, $a6, 16
	ld.w	$s2, $a6, 4
	masknez	$t3, $a5, $t3
	or	$a0, $a0, $t3
	addi.d	$t3, $a0, 1
	sub.w	$a0, $t7, $s2
	slt	$t7, $a5, $a0
	maskeqz	$a0, $a0, $t7
	masknez	$t7, $a5, $t7
	or	$a0, $a0, $t7
	ld.d	$a4, $sp, 344                   # 8-byte Folded Reload
	ld.w	$s3, $a4, 12
	ld.w	$s4, $a4, 0
	addi.d	$a7, $a0, 1
	mul.d	$t7, $t3, $a7
	mul.d	$t7, $t7, $fp
	sub.w	$s3, $s3, $s4
	slt	$s5, $a5, $s3
	maskeqz	$s3, $s3, $s5
	ld.w	$s6, $a4, 16
	ld.w	$s7, $a4, 4
	masknez	$s5, $a5, $s5
	or	$s3, $s3, $s5
	addi.d	$s3, $s3, 1
	sub.w	$s5, $s6, $s7
	slt	$s6, $a5, $s5
	maskeqz	$s5, $s5, $s6
	masknez	$a5, $a5, $s6
	or	$a5, $s5, $a5
	addi.d	$a5, $a5, 1
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	ld.w	$s5, $a0, 8
	ld.w	$s6, $s8, 8
	mul.d	$s8, $s3, $a5
	mul.d	$fp, $s8, $fp
	ld.w	$s8, $a0, 4
	sub.d	$s6, $s5, $s6
	mul.d	$t8, $t8, $s6
	ld.w	$s6, $a0, 0
	sub.d	$a3, $s8, $a3
	add.d	$a3, $a3, $t8
	mul.d	$t8, $s0, $t3
	mul.d	$s0, $s0, $s3
	sub.d	$a1, $s6, $a1
	mul.d	$a2, $a3, $a2
	add.w	$a1, $a1, $a2
	ld.w	$a3, $a6, 8
	ld.w	$a2, $ra, 24
	sub.d	$s1, $s6, $s1
	sub.d	$s2, $s8, $s2
	sub.d	$a3, $s5, $a3
	mul.d	$a3, $a3, $a7
	add.d	$a3, $s2, $a3
	mul.d	$a3, $a3, $t3
	ld.w	$s2, $a4, 8
	add.w	$a3, $s1, $a3
	sub.d	$s1, $s6, $s4
	sub.d	$s4, $s8, $s7
	sub.d	$s2, $s5, $s2
	mul.d	$a5, $a5, $s2
	add.d	$a5, $s4, $a5
	mul.d	$a5, $a5, $s3
	add.w	$a5, $s1, $a5
	ori	$s5, $zero, 12
	mul.d	$t6, $t6, $s5
	ld.d	$s8, $sp, 320                   # 8-byte Folded Reload
	add.d	$s1, $s8, $t6
	ld.w	$s2, $s1, 8
	ld.w	$s1, $s1, 4
	mul.d	$t2, $t2, $s5
	add.d	$s3, $s8, $t2
	ld.w	$s4, $s3, 8
	ld.w	$s3, $s3, 4
	mul.d	$s2, $s2, $a7
	add.d	$s1, $s2, $s1
	mul.d	$s2, $s4, $a7
	add.d	$s2, $s2, $s3
	mul.d	$ra, $t1, $s5
	add.d	$s3, $s8, $ra
	ld.w	$s4, $s3, 8
	ld.w	$s3, $s3, 4
	mul.d	$s5, $t0, $s5
	add.d	$s6, $s8, $s5
	ld.w	$s7, $s6, 8
	ld.w	$s6, $s6, 4
	mul.d	$s4, $s4, $a7
	add.d	$s4, $s4, $s3
	mul.d	$a0, $a7, $s7
	add.d	$a0, $a0, $s6
	ld.d	$s7, $sp, 800                   # 8-byte Folded Reload
	mul.d	$s3, $s7, $a2
	sub.d	$a6, $s0, $s3
	sub.d	$a7, $t8, $s3
	ld.d	$a4, $sp, 792                   # 8-byte Folded Reload
	mul.d	$s6, $a4, $s0
	sub.d	$t0, $fp, $s6
	st.d	$t0, $sp, 648                   # 8-byte Folded Spill
	mul.d	$fp, $a4, $t8
	sub.d	$t0, $t7, $fp
	st.d	$t0, $sp, 640                   # 8-byte Folded Spill
	mul.d	$t7, $a4, $t4
	sub.d	$a4, $t5, $t7
	st.d	$a4, $sp, 632                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 312                   # 8-byte Folded Reload
	st.d	$a6, $sp, 760                   # 8-byte Folded Spill
	mul.d	$t5, $a6, $a4
	add.d	$t5, $t5, $s0
	st.d	$a7, $sp, 752                   # 8-byte Folded Spill
	mul.d	$t7, $a7, $a4
	add.d	$t7, $t7, $t8
	sub.d	$a6, $t4, $s3
	st.d	$a6, $sp, 744                   # 8-byte Folded Spill
	mul.d	$t8, $a6, $a4
	add.d	$t4, $t8, $t4
	sub.d	$a4, $t5, $s3
	st.d	$a4, $sp, 624                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 432                   # 8-byte Folded Reload
	ld.d	$t5, $a4, 48
	sub.d	$a4, $t7, $s3
	st.d	$a4, $sp, 616                   # 8-byte Folded Spill
	sub.d	$a4, $t4, $s3
	st.d	$a4, $sp, 608                   # 8-byte Folded Spill
	ldx.w	$t4, $s8, $t6
	ld.d	$a4, $sp, 384                   # 8-byte Folded Reload
	add.d	$t6, $t5, $a4
	addi.d	$t7, $t6, 8
	ld.d	$a4, $sp, 728                   # 8-byte Folded Reload
	alsl.d	$t6, $a4, $t5, 3
	alsl.d	$a4, $a4, $t7, 3
	st.d	$a4, $sp, 728                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$t8, $a4, $t5, 3
	alsl.d	$a4, $a4, $t7, 3
	st.d	$a4, $sp, 720                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 712                   # 8-byte Folded Reload
	alsl.d	$s0, $a4, $t5, 3
	alsl.d	$a4, $a4, $t7, 3
	st.d	$a4, $sp, 712                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$s3, $a4, $t5, 3
	alsl.d	$a4, $a4, $t7, 3
	st.d	$a4, $sp, 704                   # 8-byte Folded Spill
	ldx.w	$a4, $s8, $t2
	mul.d	$a7, $s1, $t3
	add.w	$a7, $t4, $a7
	ldx.w	$a6, $s8, $ra
	mul.d	$t0, $s2, $t3
	add.w	$a4, $a4, $t0
	ldx.w	$t0, $s8, $s5
	mul.d	$t1, $s4, $t3
	add.w	$a6, $a6, $t1
	mul.d	$a0, $a0, $t3
	ori	$t1, $zero, 7
	sltu	$t1, $t1, $s7
	add.w	$a0, $t0, $a0
	addi.d	$t0, $a2, -1
	sltui	$t0, $t0, 1
	and	$t0, $t1, $t0
	st.d	$t0, $sp, 736                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 328                   # 8-byte Folded Reload
	alsl.d	$s6, $a7, $t0, 3
	ld.d	$t1, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$a7, $a7, $t1, 3
	st.d	$a7, $sp, 696                   # 8-byte Folded Spill
	alsl.d	$s8, $a4, $t0, 3
	alsl.d	$a4, $a4, $t1, 3
	st.d	$a4, $sp, 688                   # 8-byte Folded Spill
	alsl.d	$t3, $a6, $t0, 3
	alsl.d	$a4, $a6, $t1, 3
	st.d	$a4, $sp, 680                   # 8-byte Folded Spill
	alsl.d	$t5, $a0, $t0, 3
	alsl.d	$a0, $a0, $t1, 3
	st.d	$a0, $sp, 672                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 776                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a2
	st.d	$a0, $sp, 664                   # 8-byte Folded Spill
	slli.d	$t1, $a2, 5
	slli.d	$a4, $a2, 3
	b	.LBB2_93
	.p2align	4, , 16
.LBB2_91:                               # %for.cond4004.preheader.preheader
                                        #   in Loop: Header=BB2_93 Depth=5
	ld.d	$a0, $sp, 624                   # 8-byte Folded Reload
	add.d	$a5, $a0, $a5
	ld.d	$a0, $sp, 616                   # 8-byte Folded Reload
	add.d	$a3, $a0, $a3
	ld.d	$a0, $sp, 608                   # 8-byte Folded Reload
	add.d	$a1, $a0, $a1
.LBB2_92:                               # %for.end4051
                                        #   in Loop: Header=BB2_93 Depth=5
	ld.d	$a0, $sp, 648                   # 8-byte Folded Reload
	add.w	$a5, $a0, $a5
	ld.d	$a0, $sp, 640                   # 8-byte Folded Reload
	add.w	$a3, $a0, $a3
	ld.d	$a6, $sp, 656                   # 8-byte Folded Reload
	addi.w	$a6, $a6, 1
	ld.d	$a0, $sp, 632                   # 8-byte Folded Reload
	add.w	$a1, $a0, $a1
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	st.d	$a6, $sp, 656                   # 8-byte Folded Spill
	beq	$a6, $a0, .LBB2_68
.LBB2_93:                               # %for.cond4001.preheader
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB2_97 Depth 6
                                        #               Child Loop BB2_107 Depth 7
                                        #               Child Loop BB2_111 Depth 7
	ori	$a0, $zero, 1
	ld.d	$a6, $sp, 792                   # 8-byte Folded Reload
	blt	$a6, $a0, .LBB2_92
# %bb.94:                               # %for.cond4004.preheader.lr.ph
                                        #   in Loop: Header=BB2_93 Depth=5
	ld.d	$a6, $sp, 800                   # 8-byte Folded Reload
	blt	$a6, $a0, .LBB2_91
# %bb.95:                               # %for.cond4004.preheader.us.preheader
                                        #   in Loop: Header=BB2_93 Depth=5
	move	$a7, $zero
	b	.LBB2_97
	.p2align	4, , 16
.LBB2_96:                               # %for.cond4004.for.end4039_crit_edge.us
                                        #   in Loop: Header=BB2_97 Depth=6
	ld.d	$a0, $sp, 760                   # 8-byte Folded Reload
	add.w	$a5, $a0, $a5
	ld.d	$a0, $sp, 752                   # 8-byte Folded Reload
	add.w	$a3, $a0, $a3
	addi.w	$a7, $a7, 1
	ld.d	$a0, $sp, 744                   # 8-byte Folded Reload
	add.w	$a1, $a0, $a1
	ld.d	$a0, $sp, 792                   # 8-byte Folded Reload
	beq	$a7, $a0, .LBB2_92
.LBB2_97:                               # %for.cond4004.preheader.us
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        #           Parent Loop BB2_93 Depth=5
                                        # =>          This Loop Header: Depth=6
                                        #               Child Loop BB2_107 Depth 7
                                        #               Child Loop BB2_111 Depth 7
	ld.d	$a0, $sp, 736                   # 8-byte Folded Reload
	beqz	$a0, .LBB2_109
# %bb.98:                               # %vector.memcheck3514
                                        #   in Loop: Header=BB2_97 Depth=6
	ld.d	$a0, $sp, 832                   # 8-byte Folded Reload
	alsl.d	$t4, $a1, $a0, 3
	ld.d	$a0, $sp, 784                   # 8-byte Folded Reload
	alsl.d	$t0, $a1, $a0, 3
	alsl.d	$t7, $a5, $t6, 3
	ld.d	$a0, $sp, 728                   # 8-byte Folded Reload
	alsl.d	$a0, $a5, $a0, 3
	sltu	$a0, $t4, $a0
	sltu	$a6, $t7, $t0
	and	$a0, $a0, $a6
	move	$s1, $zero
	bnez	$a0, .LBB2_110
# %bb.99:                               # %vector.memcheck3514
                                        #   in Loop: Header=BB2_97 Depth=6
	alsl.d	$s4, $a5, $t8, 3
	ld.d	$a0, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$a0, $a5, $a0, 3
	sltu	$a0, $t4, $a0
	sltu	$a6, $s4, $t0
	and	$a0, $a0, $a6
	bnez	$a0, .LBB2_110
# %bb.100:                              # %vector.memcheck3514
                                        #   in Loop: Header=BB2_97 Depth=6
	alsl.d	$fp, $a5, $s0, 3
	ld.d	$a0, $sp, 712                   # 8-byte Folded Reload
	alsl.d	$a0, $a5, $a0, 3
	sltu	$a0, $t4, $a0
	sltu	$a6, $fp, $t0
	and	$a0, $a0, $a6
	bnez	$a0, .LBB2_110
# %bb.101:                              # %vector.memcheck3514
                                        #   in Loop: Header=BB2_97 Depth=6
	alsl.d	$s2, $a5, $s3, 3
	ld.d	$a0, $sp, 704                   # 8-byte Folded Reload
	alsl.d	$a0, $a5, $a0, 3
	sltu	$a0, $t4, $a0
	sltu	$a6, $s2, $t0
	and	$a0, $a0, $a6
	bnez	$a0, .LBB2_110
# %bb.102:                              # %vector.memcheck3514
                                        #   in Loop: Header=BB2_97 Depth=6
	alsl.d	$ra, $a3, $s6, 3
	ld.d	$a0, $sp, 696                   # 8-byte Folded Reload
	alsl.d	$a0, $a3, $a0, 3
	sltu	$a0, $t4, $a0
	sltu	$a6, $ra, $t0
	and	$a0, $a0, $a6
	bnez	$a0, .LBB2_110
# %bb.103:                              # %vector.memcheck3514
                                        #   in Loop: Header=BB2_97 Depth=6
	alsl.d	$s7, $a3, $s8, 3
	ld.d	$a0, $sp, 688                   # 8-byte Folded Reload
	alsl.d	$a0, $a3, $a0, 3
	sltu	$a0, $t4, $a0
	sltu	$a6, $s7, $t0
	and	$a0, $a0, $a6
	bnez	$a0, .LBB2_110
# %bb.104:                              # %vector.memcheck3514
                                        #   in Loop: Header=BB2_97 Depth=6
	alsl.d	$a0, $a3, $t3, 3
	ld.d	$a6, $sp, 680                   # 8-byte Folded Reload
	alsl.d	$a6, $a3, $a6, 3
	sltu	$a6, $t4, $a6
	sltu	$t2, $a0, $t0
	and	$a6, $a6, $t2
	bnez	$a6, .LBB2_110
# %bb.105:                              # %vector.memcheck3514
                                        #   in Loop: Header=BB2_97 Depth=6
	alsl.d	$a6, $a3, $t5, 3
	ld.d	$t2, $sp, 672                   # 8-byte Folded Reload
	alsl.d	$t2, $a3, $t2, 3
	sltu	$t2, $t4, $t2
	sltu	$t0, $a6, $t0
	and	$t0, $t2, $t0
	bnez	$t0, .LBB2_110
# %bb.106:                              # %vector.ph3610
                                        #   in Loop: Header=BB2_97 Depth=6
	move	$t0, $zero
	ld.d	$t2, $sp, 664                   # 8-byte Folded Reload
	add.d	$a1, $t2, $a1
	add.d	$a3, $t2, $a3
	add.d	$a5, $t2, $a5
	ld.d	$t2, $sp, 776                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_107:                              # %vector.body3613
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        #           Parent Loop BB2_93 Depth=5
                                        #             Parent Loop BB2_97 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	xvldx	$xr0, $fp, $t0
	xvldx	$xr1, $a0, $t0
	xvldx	$xr2, $s2, $t0
	xvldx	$xr3, $a6, $t0
	xvfmul.d	$xr0, $xr0, $xr1
	xvldx	$xr1, $s4, $t0
	xvldx	$xr4, $s7, $t0
	xvldx	$xr5, $t7, $t0
	xvldx	$xr6, $ra, $t0
	xvldx	$xr7, $t4, $t0
	xvfmadd.d	$xr0, $xr2, $xr3, $xr0
	xvfmadd.d	$xr0, $xr1, $xr4, $xr0
	xvfmadd.d	$xr0, $xr5, $xr6, $xr0
	xvfadd.d	$xr0, $xr7, $xr0
	xvstx	$xr0, $t4, $t0
	addi.d	$t2, $t2, -4
	add.d	$t0, $t0, $t1
	bnez	$t2, .LBB2_107
# %bb.108:                              # %middle.block3628
                                        #   in Loop: Header=BB2_97 Depth=6
	ld.d	$a6, $sp, 776                   # 8-byte Folded Reload
	move	$s1, $a6
	ld.d	$a0, $sp, 768                   # 8-byte Folded Reload
	beq	$a6, $a0, .LBB2_96
	b	.LBB2_110
	.p2align	4, , 16
.LBB2_109:                              #   in Loop: Header=BB2_97 Depth=6
	move	$s1, $zero
.LBB2_110:                              # %for.body4006.us.preheader
                                        #   in Loop: Header=BB2_97 Depth=6
	move	$a0, $zero
	move	$a6, $zero
	ld.d	$t0, $sp, 832                   # 8-byte Folded Reload
	alsl.d	$t0, $a1, $t0, 3
	alsl.d	$t4, $a3, $s6, 3
	alsl.d	$t7, $a3, $s8, 3
	alsl.d	$fp, $a3, $t3, 3
	alsl.d	$s2, $a3, $t5, 3
	alsl.d	$s4, $a5, $s3, 3
	alsl.d	$s7, $a5, $s0, 3
	alsl.d	$ra, $a5, $t8, 3
	alsl.d	$t2, $a5, $t6, 3
	ld.d	$s5, $sp, 800                   # 8-byte Folded Reload
	sub.d	$s1, $s5, $s1
	.p2align	4, , 16
.LBB2_111:                              # %for.body4006.us
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        #           Parent Loop BB2_93 Depth=5
                                        #             Parent Loop BB2_97 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	fldx.d	$fa0, $s7, $a6
	fldx.d	$fa1, $fp, $a6
	fldx.d	$fa2, $s4, $a6
	fldx.d	$fa3, $s2, $a6
	fmul.d	$fa0, $fa0, $fa1
	fldx.d	$fa1, $ra, $a6
	fldx.d	$fa4, $t7, $a6
	fldx.d	$fa5, $t2, $a6
	fldx.d	$fa6, $t4, $a6
	fldx.d	$fa7, $t0, $a6
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmadd.d	$fa0, $fa1, $fa4, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fadd.d	$fa0, $fa7, $fa0
	fstx.d	$fa0, $t0, $a6
	add.d	$a6, $a6, $a4
	addi.w	$s1, $s1, -1
	sub.d	$a0, $a0, $a2
	bnez	$s1, .LBB2_111
# %bb.112:                              # %for.cond4004.for.end4039_crit_edge.us.loopexit
                                        #   in Loop: Header=BB2_97 Depth=6
	sub.d	$a1, $a1, $a0
	sub.d	$a3, $a3, $a0
	sub.d	$a5, $a5, $a0
	b	.LBB2_96
.LBB2_113:                              # %sw.bb4735
                                        #   in Loop: Header=BB2_69 Depth=4
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_68
# %bb.114:                              # %for.cond5284.preheader.lr.ph
                                        #   in Loop: Header=BB2_69 Depth=4
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a0, $a1, 64
	ld.d	$a2, $sp, 352                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a2
	st.d	$zero, $sp, 752                 # 8-byte Folded Spill
	ld.d	$t8, $a1, 48
	ld.d	$t2, $sp, 448                   # 8-byte Folded Reload
	slli.d	$a1, $t2, 2
	ldx.w	$a1, $a0, $a1
	st.d	$a1, $sp, 760                   # 8-byte Folded Spill
	addi.d	$t7, $t2, 1
	ld.d	$s6, $sp, 368                   # 8-byte Folded Reload
	ld.w	$a1, $s6, 12
	ld.w	$a2, $s6, 0
	slli.d	$a3, $t7, 2
	ldx.w	$s1, $a0, $a3
	ori	$a0, $zero, 7
	ld.d	$fp, $sp, 800                   # 8-byte Folded Reload
	sltu	$a0, $a0, $fp
	st.d	$a0, $sp, 696                   # 8-byte Folded Spill
	sub.w	$a0, $a1, $a2
	addi.w	$a1, $zero, -1
	slt	$a5, $a1, $a0
	maskeqz	$a0, $a0, $a5
	ld.w	$a6, $s6, 16
	ld.w	$a3, $s6, 4
	masknez	$a5, $a1, $a5
	or	$a0, $a0, $a5
	addi.d	$a4, $a0, 1
	sub.w	$a5, $a6, $a3
	slt	$a6, $a1, $a5
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $a1, $a6
	or	$a5, $a5, $a6
	addi.d	$s7, $a5, 1
	ld.d	$s8, $sp, 360                   # 8-byte Folded Reload
	ld.w	$a7, $s8, 32
	ld.w	$t0, $s8, 28
	ld.d	$a6, $sp, 336                   # 8-byte Folded Reload
	ld.w	$a5, $a6, 12
	ld.w	$t3, $a6, 0
	mul.d	$t1, $a4, $s7
	mul.d	$a0, $t1, $a7
	st.d	$a0, $sp, 728                   # 8-byte Folded Spill
	mul.d	$t5, $a4, $t0
	sub.w	$a5, $a5, $t3
	slt	$t1, $a1, $a5
	maskeqz	$a5, $a5, $t1
	ld.w	$t4, $a6, 16
	ld.w	$t6, $a6, 4
	masknez	$t1, $a1, $t1
	or	$a5, $a5, $t1
	addi.d	$s3, $a5, 1
	sub.w	$a5, $t4, $t6
	slt	$t1, $a1, $a5
	maskeqz	$a5, $a5, $t1
	masknez	$t1, $a1, $t1
	or	$a5, $a5, $t1
	ld.d	$ra, $sp, 344                   # 8-byte Folded Reload
	ld.w	$t4, $ra, 12
	ld.w	$s0, $ra, 0
	addi.d	$a5, $a5, 1
	mul.d	$t1, $s3, $a5
	mul.d	$t1, $t1, $a7
	sub.w	$t4, $t4, $s0
	slt	$s2, $a1, $t4
	maskeqz	$t4, $t4, $s2
	ld.w	$s4, $ra, 16
	ld.w	$s5, $ra, 4
	masknez	$s2, $a1, $s2
	or	$t4, $t4, $s2
	addi.d	$t4, $t4, 1
	sub.w	$s2, $s4, $s5
	slt	$s4, $a1, $s2
	maskeqz	$s2, $s2, $s4
	masknez	$a1, $a1, $s4
	or	$a1, $s2, $a1
	addi.d	$a1, $a1, 1
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	ld.w	$s2, $a0, 8
	ld.w	$s4, $s6, 8
	mul.d	$s6, $t4, $a1
	mul.d	$s6, $s6, $a7
	ld.w	$a7, $a0, 4
	sub.d	$s4, $s2, $s4
	mul.d	$s7, $s7, $s4
	ld.w	$s4, $a0, 0
	sub.d	$a3, $a7, $a3
	add.d	$a3, $a3, $s7
	mul.d	$s7, $t0, $s3
	mul.d	$t0, $t0, $t4
	sub.d	$a2, $s4, $a2
	mul.d	$a0, $a3, $a4
	add.w	$a0, $a2, $a0
	ld.w	$a3, $a6, 8
	ld.w	$a2, $s8, 24
	sub.d	$a6, $s4, $t3
	sub.d	$t3, $a7, $t6
	sub.d	$a3, $s2, $a3
	mul.d	$a3, $a3, $a5
	add.d	$a3, $t3, $a3
	mul.d	$a3, $a3, $s3
	ld.w	$t3, $ra, 8
	add.w	$a3, $a6, $a3
	sub.d	$a6, $s4, $s0
	sub.d	$a7, $a7, $s5
	sub.d	$t3, $s2, $t3
	mul.d	$a1, $a1, $t3
	ori	$s4, $zero, 12
	mul.d	$t3, $t7, $s4
	ld.d	$s2, $sp, 320                   # 8-byte Folded Reload
	add.d	$t6, $s2, $t3
	ld.w	$s0, $t6, 8
	add.d	$a1, $a7, $a1
	mul.d	$a1, $a1, $t4
	add.w	$a4, $a6, $a1
	mul.d	$a1, $s0, $a5
	ld.w	$a6, $t6, 4
	mul.d	$a7, $t2, $s4
	add.d	$t4, $s2, $a7
	ld.w	$t6, $t4, 8
	ld.w	$t4, $t4, 4
	add.d	$a1, $a1, $a6
	ldx.w	$t3, $s2, $t3
	mul.d	$a5, $a5, $t6
	add.d	$t4, $a5, $t4
	ldx.w	$s4, $s2, $a7
	mul.d	$t6, $fp, $a2
	sub.d	$a5, $t0, $t6
	sub.d	$a6, $s7, $t6
	sub.d	$a7, $t5, $t6
	ld.d	$t2, $sp, 792                   # 8-byte Folded Reload
	mul.d	$s0, $t2, $t0
	sub.d	$t7, $s6, $s0
	st.d	$t7, $sp, 744                   # 8-byte Folded Spill
	mul.d	$s0, $t2, $s7
	sub.d	$t1, $t1, $s0
	st.d	$t1, $sp, 736                   # 8-byte Folded Spill
	mul.d	$t1, $t2, $t5
	ld.d	$t2, $sp, 728                   # 8-byte Folded Reload
	sub.d	$t1, $t2, $t1
	st.d	$t1, $sp, 728                   # 8-byte Folded Spill
	ld.d	$t2, $sp, 312                   # 8-byte Folded Reload
	mul.d	$t1, $t2, $a5
	add.d	$t0, $t1, $t0
	sub.d	$t0, $t0, $t6
	st.d	$t0, $sp, 720                   # 8-byte Folded Spill
	mul.d	$t0, $t2, $a6
	add.d	$t0, $t0, $s7
	sub.d	$t0, $t0, $t6
	st.d	$t0, $sp, 712                   # 8-byte Folded Spill
	mul.d	$t0, $t2, $a7
	add.d	$t0, $t0, $t5
	sub.d	$t0, $t0, $t6
	st.d	$t0, $sp, 704                   # 8-byte Folded Spill
	alsl.d	$t6, $s1, $t8, 3
	ld.d	$t0, $sp, 384                   # 8-byte Folded Reload
	add.d	$t0, $t8, $t0
	addi.d	$t0, $t0, 8
	alsl.d	$t7, $s1, $t0, 3
	ld.d	$t1, $sp, 760                   # 8-byte Folded Reload
	alsl.d	$t8, $t1, $t8, 3
	alsl.d	$fp, $t1, $t0, 3
	mul.d	$a1, $a1, $s3
	add.w	$a1, $t3, $a1
	ld.d	$t0, $sp, 328                   # 8-byte Folded Reload
	alsl.d	$s0, $a1, $t0, 3
	ld.d	$t1, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$s2, $a1, $t1, 3
	mul.d	$a1, $t4, $s3
	add.w	$a1, $s4, $a1
	alsl.d	$s3, $a1, $t0, 3
	alsl.d	$a1, $a1, $t1, 3
	st.d	$a1, $sp, 760                   # 8-byte Folded Spill
	addi.d	$a1, $a2, -1
	sltui	$a1, $a1, 1
	ld.d	$t0, $sp, 696                   # 8-byte Folded Reload
	and	$s5, $t0, $a1
	ld.d	$a1, $sp, 776                   # 8-byte Folded Reload
	mul.d	$s6, $a1, $a2
	slli.d	$s7, $a2, 5
	slli.d	$s8, $a2, 3
	b	.LBB2_117
	.p2align	4, , 16
.LBB2_115:                              # %for.cond5287.preheader.preheader
                                        #   in Loop: Header=BB2_117 Depth=5
	ld.d	$a1, $sp, 720                   # 8-byte Folded Reload
	add.d	$a4, $a1, $a4
	ld.d	$a1, $sp, 712                   # 8-byte Folded Reload
	add.d	$a3, $a1, $a3
	ld.d	$a1, $sp, 704                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
.LBB2_116:                              # %for.end5322
                                        #   in Loop: Header=BB2_117 Depth=5
	ld.d	$a1, $sp, 744                   # 8-byte Folded Reload
	add.w	$a4, $a1, $a4
	ld.d	$a1, $sp, 736                   # 8-byte Folded Reload
	add.w	$a3, $a1, $a3
	ld.d	$t0, $sp, 752                   # 8-byte Folded Reload
	addi.w	$t0, $t0, 1
	ld.d	$a1, $sp, 728                   # 8-byte Folded Reload
	add.w	$a0, $a1, $a0
	ld.d	$a1, $sp, 504                   # 8-byte Folded Reload
	st.d	$t0, $sp, 752                   # 8-byte Folded Spill
	beq	$t0, $a1, .LBB2_68
.LBB2_117:                              # %for.cond5284.preheader
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB2_121 Depth 6
                                        #               Child Loop BB2_127 Depth 7
                                        #               Child Loop BB2_131 Depth 7
	ori	$a1, $zero, 1
	ld.d	$t0, $sp, 792                   # 8-byte Folded Reload
	blt	$t0, $a1, .LBB2_116
# %bb.118:                              # %for.cond5287.preheader.lr.ph
                                        #   in Loop: Header=BB2_117 Depth=5
	ld.d	$t0, $sp, 800                   # 8-byte Folded Reload
	blt	$t0, $a1, .LBB2_115
# %bb.119:                              # %for.cond5287.preheader.us.preheader
                                        #   in Loop: Header=BB2_117 Depth=5
	move	$ra, $zero
	b	.LBB2_121
	.p2align	4, , 16
.LBB2_120:                              # %for.cond5287.for.end5310_crit_edge.us
                                        #   in Loop: Header=BB2_121 Depth=6
	add.w	$a4, $a5, $a4
	add.w	$a3, $a6, $a3
	addi.w	$ra, $ra, 1
	add.w	$a0, $a7, $a0
	ld.d	$a1, $sp, 792                   # 8-byte Folded Reload
	beq	$ra, $a1, .LBB2_116
.LBB2_121:                              # %for.cond5287.preheader.us
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        #           Parent Loop BB2_117 Depth=5
                                        # =>          This Loop Header: Depth=6
                                        #               Child Loop BB2_127 Depth 7
                                        #               Child Loop BB2_131 Depth 7
	beqz	$s5, .LBB2_129
# %bb.122:                              # %vector.memcheck3734
                                        #   in Loop: Header=BB2_121 Depth=6
	ld.d	$a1, $sp, 832                   # 8-byte Folded Reload
	alsl.d	$t3, $a0, $a1, 3
	ld.d	$a1, $sp, 784                   # 8-byte Folded Reload
	alsl.d	$t2, $a0, $a1, 3
	alsl.d	$t4, $a4, $t6, 3
	alsl.d	$a1, $a4, $t7, 3
	sltu	$a1, $t3, $a1
	sltu	$t0, $t4, $t2
	and	$a1, $a1, $t0
	move	$s1, $zero
	bnez	$a1, .LBB2_130
# %bb.123:                              # %vector.memcheck3734
                                        #   in Loop: Header=BB2_121 Depth=6
	alsl.d	$t5, $a4, $t8, 3
	alsl.d	$a1, $a4, $fp, 3
	sltu	$a1, $t3, $a1
	sltu	$t0, $t5, $t2
	and	$a1, $a1, $t0
	bnez	$a1, .LBB2_130
# %bb.124:                              # %vector.memcheck3734
                                        #   in Loop: Header=BB2_121 Depth=6
	alsl.d	$t0, $a3, $s0, 3
	alsl.d	$a1, $a3, $s2, 3
	sltu	$a1, $t3, $a1
	sltu	$t1, $t0, $t2
	and	$a1, $a1, $t1
	bnez	$a1, .LBB2_130
# %bb.125:                              # %vector.memcheck3734
                                        #   in Loop: Header=BB2_121 Depth=6
	alsl.d	$t1, $a3, $s3, 3
	ld.d	$a1, $sp, 760                   # 8-byte Folded Reload
	alsl.d	$a1, $a3, $a1, 3
	sltu	$a1, $t3, $a1
	sltu	$t2, $t1, $t2
	and	$a1, $a1, $t2
	bnez	$a1, .LBB2_130
# %bb.126:                              # %vector.ph3786
                                        #   in Loop: Header=BB2_121 Depth=6
	move	$a1, $zero
	add.d	$a0, $s6, $a0
	add.d	$a3, $s6, $a3
	add.d	$a4, $s6, $a4
	ld.d	$t2, $sp, 776                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_127:                              # %vector.body3789
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        #           Parent Loop BB2_117 Depth=5
                                        #             Parent Loop BB2_121 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	xvldx	$xr0, $t5, $a1
	xvldx	$xr1, $t4, $a1
	xvldx	$xr2, $t0, $a1
	xvldx	$xr3, $t1, $a1
	xvldx	$xr4, $t3, $a1
	xvfmul.d	$xr1, $xr1, $xr2
	xvfmadd.d	$xr0, $xr0, $xr3, $xr1
	xvfadd.d	$xr0, $xr4, $xr0
	xvstx	$xr0, $t3, $a1
	addi.d	$t2, $t2, -4
	add.d	$a1, $a1, $s7
	bnez	$t2, .LBB2_127
# %bb.128:                              # %middle.block3800
                                        #   in Loop: Header=BB2_121 Depth=6
	ld.d	$t0, $sp, 776                   # 8-byte Folded Reload
	move	$s1, $t0
	ld.d	$a1, $sp, 768                   # 8-byte Folded Reload
	beq	$t0, $a1, .LBB2_120
	b	.LBB2_130
	.p2align	4, , 16
.LBB2_129:                              #   in Loop: Header=BB2_121 Depth=6
	move	$s1, $zero
.LBB2_130:                              # %for.body5289.us.preheader
                                        #   in Loop: Header=BB2_121 Depth=6
	move	$t0, $zero
	move	$t1, $zero
	ld.d	$a1, $sp, 832                   # 8-byte Folded Reload
	alsl.d	$t3, $a0, $a1, 3
	alsl.d	$t4, $a3, $s0, 3
	alsl.d	$t5, $a3, $s3, 3
	alsl.d	$t2, $a4, $t8, 3
	alsl.d	$a1, $a4, $t6, 3
	ld.d	$s4, $sp, 800                   # 8-byte Folded Reload
	sub.d	$s1, $s4, $s1
	.p2align	4, , 16
.LBB2_131:                              # %for.body5289.us
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        #           Parent Loop BB2_117 Depth=5
                                        #             Parent Loop BB2_121 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	fldx.d	$fa0, $t2, $t1
	fldx.d	$fa1, $a1, $t1
	fldx.d	$fa2, $t4, $t1
	fldx.d	$fa3, $t5, $t1
	fldx.d	$fa4, $t3, $t1
	fmul.d	$fa1, $fa1, $fa2
	fmadd.d	$fa0, $fa0, $fa3, $fa1
	fadd.d	$fa0, $fa4, $fa0
	fstx.d	$fa0, $t3, $t1
	add.d	$t1, $t1, $s8
	addi.w	$s1, $s1, -1
	sub.d	$t0, $t0, $a2
	bnez	$s1, .LBB2_131
# %bb.132:                              # %for.cond5287.for.end5310_crit_edge.us.loopexit
                                        #   in Loop: Header=BB2_121 Depth=6
	sub.d	$a0, $a0, $t0
	sub.d	$a3, $a3, $t0
	sub.d	$a4, $a4, $t0
	b	.LBB2_120
.LBB2_133:                              # %sw.bb4067
                                        #   in Loop: Header=BB2_69 Depth=4
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_68
# %bb.134:                              # %for.cond4675.preheader.lr.ph
                                        #   in Loop: Header=BB2_69 Depth=4
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a0, $a1, 64
	ld.d	$a2, $sp, 352                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a2
	st.d	$zero, $sp, 704                 # 8-byte Folded Spill
	ld.d	$t3, $a1, 48
	ld.d	$t2, $sp, 448                   # 8-byte Folded Reload
	slli.d	$a1, $t2, 2
	ldx.w	$a1, $a0, $a1
	st.d	$a1, $sp, 744                   # 8-byte Folded Spill
	addi.d	$t5, $t2, 1
	slli.d	$a1, $t5, 2
	ldx.w	$a1, $a0, $a1
	st.d	$a1, $sp, 752                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 368                   # 8-byte Folded Reload
	ld.w	$a1, $s8, 12
	ld.w	$a5, $s8, 0
	addi.d	$t4, $t2, 2
	slli.d	$a3, $t4, 2
	ldx.w	$a0, $a0, $a3
	st.d	$a0, $sp, 760                   # 8-byte Folded Spill
	sub.w	$a0, $a1, $a5
	addi.w	$a6, $zero, -1
	slt	$a1, $a6, $a0
	maskeqz	$a3, $a0, $a1
	ld.w	$a7, $s8, 16
	ld.w	$a4, $s8, 4
	masknez	$a1, $a6, $a1
	or	$a1, $a3, $a1
	addi.d	$a3, $a1, 1
	sub.w	$a1, $a7, $a4
	slt	$a7, $a6, $a1
	maskeqz	$a1, $a1, $a7
	masknez	$a7, $a6, $a7
	or	$a1, $a1, $a7
	addi.d	$a7, $a1, 1
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	ld.w	$t8, $ra, 32
	ld.w	$fp, $ra, 28
	ld.d	$a2, $sp, 336                   # 8-byte Folded Reload
	ld.w	$a1, $a2, 12
	ld.w	$s0, $a2, 0
	mul.d	$t1, $a3, $a7
	mul.d	$a0, $t1, $t8
	st.d	$a0, $sp, 736                   # 8-byte Folded Spill
	mul.d	$t6, $a3, $fp
	sub.w	$a1, $a1, $s0
	slt	$t1, $a6, $a1
	maskeqz	$a1, $a1, $t1
	ld.w	$t7, $a2, 16
	ld.w	$s2, $a2, 4
	masknez	$t1, $a6, $t1
	or	$a1, $a1, $t1
	addi.d	$s1, $a1, 1
	sub.w	$a1, $t7, $s2
	slt	$t1, $a6, $a1
	maskeqz	$a1, $a1, $t1
	masknez	$t1, $a6, $t1
	or	$a1, $a1, $t1
	addi.d	$t0, $a1, 1
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	ld.w	$s3, $a1, 12
	ld.w	$s4, $a1, 0
	mul.d	$t1, $s1, $t0
	mul.d	$t7, $t1, $t8
	mul.d	$t1, $fp, $s1
	sub.w	$s3, $s3, $s4
	slt	$s5, $a6, $s3
	maskeqz	$s3, $s3, $s5
	ld.w	$s6, $a1, 16
	ld.w	$s7, $a1, 4
	masknez	$s5, $a6, $s5
	or	$s3, $s3, $s5
	addi.d	$s3, $s3, 1
	sub.w	$s5, $s6, $s7
	slt	$s6, $a6, $s5
	maskeqz	$s5, $s5, $s6
	masknez	$a6, $a6, $s6
	or	$a6, $s5, $a6
	addi.d	$a6, $a6, 1
	mul.d	$s5, $s3, $a6
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	ld.w	$s6, $a0, 8
	ld.w	$s8, $s8, 8
	mul.d	$t8, $s5, $t8
	mul.d	$fp, $fp, $s3
	ld.w	$s5, $a0, 4
	sub.d	$s8, $s6, $s8
	mul.d	$a7, $a7, $s8
	ld.w	$s8, $a0, 0
	sub.d	$a0, $s5, $a4
	add.d	$a7, $a0, $a7
	ld.w	$a0, $ra, 24
	sub.d	$a4, $s8, $a5
	mul.d	$a3, $a7, $a3
	ld.w	$a7, $a2, 8
	add.w	$a2, $a4, $a3
	sub.d	$a3, $s8, $s0
	sub.d	$s0, $s5, $s2
	sub.d	$a7, $s6, $a7
	mul.d	$a7, $a7, $t0
	add.d	$a7, $s0, $a7
	mul.d	$a7, $a7, $s1
	ld.w	$s0, $a1, 8
	add.w	$a3, $a3, $a7
	sub.d	$a7, $s8, $s4
	sub.d	$s2, $s5, $s7
	sub.d	$s0, $s6, $s0
	mul.d	$a6, $a6, $s0
	add.d	$a6, $s2, $a6
	ori	$s5, $zero, 12
	mul.d	$s2, $t4, $s5
	ld.d	$s8, $sp, 320                   # 8-byte Folded Reload
	add.d	$a4, $s8, $s2
	ld.w	$s0, $a4, 8
	ld.w	$s4, $a4, 4
	mul.d	$a4, $a6, $s3
	add.w	$a4, $a7, $a4
	mul.d	$a6, $s0, $t0
	add.d	$s3, $a6, $s4
	mul.d	$s4, $t5, $s5
	add.d	$a5, $s8, $s4
	ld.w	$a6, $a5, 8
	ld.w	$a5, $a5, 4
	mul.d	$s5, $t2, $s5
	add.d	$a7, $s8, $s5
	ld.w	$s0, $a7, 8
	ld.w	$a7, $a7, 4
	mul.d	$a6, $a6, $t0
	add.d	$s6, $a6, $a5
	mul.d	$a1, $t0, $s0
	add.d	$a1, $a1, $a7
	ld.d	$t4, $sp, 800                   # 8-byte Folded Reload
	mul.d	$s0, $t4, $a0
	sub.d	$a5, $fp, $s0
	sub.d	$a6, $t1, $s0
	sub.d	$a7, $t6, $s0
	ld.d	$t0, $sp, 792                   # 8-byte Folded Reload
	mul.d	$s7, $t0, $fp
	sub.d	$t2, $t8, $s7
	st.d	$t2, $sp, 696                   # 8-byte Folded Spill
	mul.d	$t8, $t0, $t1
	sub.d	$t2, $t7, $t8
	st.d	$t2, $sp, 688                   # 8-byte Folded Spill
	mul.d	$t7, $t0, $t6
	ld.d	$t0, $sp, 736                   # 8-byte Folded Reload
	sub.d	$t0, $t0, $t7
	st.d	$t0, $sp, 680                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 312                   # 8-byte Folded Reload
	mul.d	$t2, $t0, $a5
	add.d	$t2, $t2, $fp
	sub.d	$t2, $t2, $s0
	st.d	$t2, $sp, 672                   # 8-byte Folded Spill
	mul.d	$t2, $t0, $a6
	add.d	$t1, $t2, $t1
	sub.d	$t1, $t1, $s0
	st.d	$t1, $sp, 664                   # 8-byte Folded Spill
	mul.d	$t1, $t0, $a7
	add.d	$t1, $t1, $t6
	sub.d	$t0, $t1, $s0
	st.d	$t0, $sp, 656                   # 8-byte Folded Spill
	ld.d	$t2, $sp, 760                   # 8-byte Folded Reload
	alsl.d	$t6, $t2, $t3, 3
	ld.d	$t0, $sp, 384                   # 8-byte Folded Reload
	add.d	$t1, $t3, $t0
	addi.d	$t1, $t1, 8
	alsl.d	$t0, $t2, $t1, 3
	st.d	$t0, $sp, 760                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 752                   # 8-byte Folded Reload
	alsl.d	$t8, $t0, $t3, 3
	alsl.d	$t0, $t0, $t1, 3
	st.d	$t0, $sp, 752                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 744                   # 8-byte Folded Reload
	alsl.d	$s0, $t0, $t3, 3
	alsl.d	$t0, $t0, $t1, 3
	st.d	$t0, $sp, 744                   # 8-byte Folded Spill
	ori	$t0, $zero, 7
	sltu	$t0, $t0, $t4
	ldx.w	$t1, $s8, $s2
	ldx.w	$t2, $s8, $s4
	ldx.w	$t3, $s8, $s5
	mul.d	$t4, $s3, $s1
	add.w	$t1, $t1, $t4
	ld.d	$t4, $sp, 328                   # 8-byte Folded Reload
	alsl.d	$s3, $t1, $t4, 3
	ld.d	$t5, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$t1, $t1, $t5, 3
	st.d	$t1, $sp, 736                   # 8-byte Folded Spill
	mul.d	$t1, $s6, $s1
	add.w	$t1, $t2, $t1
	alsl.d	$s5, $t1, $t4, 3
	alsl.d	$t1, $t1, $t5, 3
	st.d	$t1, $sp, 728                   # 8-byte Folded Spill
	mul.d	$a1, $a1, $s1
	add.w	$a1, $t3, $a1
	alsl.d	$s7, $a1, $t4, 3
	alsl.d	$a1, $a1, $t5, 3
	st.d	$a1, $sp, 720                   # 8-byte Folded Spill
	addi.d	$a1, $a0, -1
	sltui	$a1, $a1, 1
	and	$ra, $t0, $a1
	ld.d	$a1, $sp, 776                   # 8-byte Folded Reload
	mul.d	$a1, $a1, $a0
	st.d	$a1, $sp, 712                   # 8-byte Folded Spill
	slli.d	$t4, $a0, 5
	slli.d	$t5, $a0, 3
	b	.LBB2_137
	.p2align	4, , 16
.LBB2_135:                              # %for.cond4678.preheader.preheader
                                        #   in Loop: Header=BB2_137 Depth=5
	ld.d	$a1, $sp, 672                   # 8-byte Folded Reload
	add.d	$a4, $a1, $a4
	ld.d	$a1, $sp, 664                   # 8-byte Folded Reload
	add.d	$a3, $a1, $a3
	ld.d	$a1, $sp, 656                   # 8-byte Folded Reload
	add.d	$a2, $a1, $a2
.LBB2_136:                              # %for.end4719
                                        #   in Loop: Header=BB2_137 Depth=5
	ld.d	$a1, $sp, 696                   # 8-byte Folded Reload
	add.w	$a4, $a1, $a4
	ld.d	$a1, $sp, 688                   # 8-byte Folded Reload
	add.w	$a3, $a1, $a3
	ld.d	$t0, $sp, 704                   # 8-byte Folded Reload
	addi.w	$t0, $t0, 1
	ld.d	$a1, $sp, 680                   # 8-byte Folded Reload
	add.w	$a2, $a1, $a2
	ld.d	$a1, $sp, 504                   # 8-byte Folded Reload
	st.d	$t0, $sp, 704                   # 8-byte Folded Spill
	beq	$t0, $a1, .LBB2_68
.LBB2_137:                              # %for.cond4675.preheader
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB2_141 Depth 6
                                        #               Child Loop BB2_149 Depth 7
                                        #               Child Loop BB2_153 Depth 7
	ori	$a1, $zero, 1
	ld.d	$t0, $sp, 792                   # 8-byte Folded Reload
	blt	$t0, $a1, .LBB2_136
# %bb.138:                              # %for.cond4678.preheader.lr.ph
                                        #   in Loop: Header=BB2_137 Depth=5
	ld.d	$t0, $sp, 800                   # 8-byte Folded Reload
	blt	$t0, $a1, .LBB2_135
# %bb.139:                              # %for.cond4678.preheader.us.preheader
                                        #   in Loop: Header=BB2_137 Depth=5
	move	$t0, $zero
	b	.LBB2_141
	.p2align	4, , 16
.LBB2_140:                              # %for.cond4678.for.end4707_crit_edge.us
                                        #   in Loop: Header=BB2_141 Depth=6
	add.w	$a4, $a5, $a4
	add.w	$a3, $a6, $a3
	addi.w	$t0, $t0, 1
	add.w	$a2, $a7, $a2
	ld.d	$a1, $sp, 792                   # 8-byte Folded Reload
	beq	$t0, $a1, .LBB2_136
.LBB2_141:                              # %for.cond4678.preheader.us
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        #           Parent Loop BB2_137 Depth=5
                                        # =>          This Loop Header: Depth=6
                                        #               Child Loop BB2_149 Depth 7
                                        #               Child Loop BB2_153 Depth 7
	beqz	$ra, .LBB2_151
# %bb.142:                              # %vector.memcheck3636
                                        #   in Loop: Header=BB2_141 Depth=6
	ld.d	$a1, $sp, 832                   # 8-byte Folded Reload
	alsl.d	$t1, $a2, $a1, 3
	ld.d	$a1, $sp, 784                   # 8-byte Folded Reload
	alsl.d	$s2, $a2, $a1, 3
	alsl.d	$t2, $a4, $t6, 3
	ld.d	$a1, $sp, 760                   # 8-byte Folded Reload
	alsl.d	$a1, $a4, $a1, 3
	sltu	$a1, $t1, $a1
	sltu	$t7, $t2, $s2
	and	$a1, $a1, $t7
	move	$s1, $zero
	bnez	$a1, .LBB2_152
# %bb.143:                              # %vector.memcheck3636
                                        #   in Loop: Header=BB2_141 Depth=6
	alsl.d	$a1, $a4, $t8, 3
	ld.d	$t3, $sp, 752                   # 8-byte Folded Reload
	alsl.d	$t7, $a4, $t3, 3
	sltu	$t7, $t1, $t7
	sltu	$fp, $a1, $s2
	and	$t7, $t7, $fp
	bnez	$t7, .LBB2_152
# %bb.144:                              # %vector.memcheck3636
                                        #   in Loop: Header=BB2_141 Depth=6
	alsl.d	$s8, $a4, $s0, 3
	ld.d	$t3, $sp, 744                   # 8-byte Folded Reload
	alsl.d	$t7, $a4, $t3, 3
	sltu	$t7, $t1, $t7
	sltu	$fp, $s8, $s2
	and	$t7, $t7, $fp
	bnez	$t7, .LBB2_152
# %bb.145:                              # %vector.memcheck3636
                                        #   in Loop: Header=BB2_141 Depth=6
	alsl.d	$s6, $a3, $s3, 3
	ld.d	$t3, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$t7, $a3, $t3, 3
	sltu	$t7, $t1, $t7
	sltu	$fp, $s6, $s2
	and	$t7, $t7, $fp
	bnez	$t7, .LBB2_152
# %bb.146:                              # %vector.memcheck3636
                                        #   in Loop: Header=BB2_141 Depth=6
	alsl.d	$s4, $a3, $s5, 3
	ld.d	$t3, $sp, 728                   # 8-byte Folded Reload
	alsl.d	$t7, $a3, $t3, 3
	sltu	$t7, $t1, $t7
	sltu	$fp, $s4, $s2
	and	$t7, $t7, $fp
	bnez	$t7, .LBB2_152
# %bb.147:                              # %vector.memcheck3636
                                        #   in Loop: Header=BB2_141 Depth=6
	alsl.d	$fp, $a3, $s7, 3
	ld.d	$t3, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$t7, $a3, $t3, 3
	sltu	$t7, $t1, $t7
	sltu	$s2, $fp, $s2
	and	$t7, $t7, $s2
	bnez	$t7, .LBB2_152
# %bb.148:                              # %vector.ph3710
                                        #   in Loop: Header=BB2_141 Depth=6
	move	$t7, $zero
	ld.d	$t3, $sp, 712                   # 8-byte Folded Reload
	add.d	$a2, $t3, $a2
	add.d	$a3, $t3, $a3
	add.d	$a4, $t3, $a4
	ld.d	$s1, $sp, 776                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_149:                              # %vector.body3713
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        #           Parent Loop BB2_137 Depth=5
                                        #             Parent Loop BB2_141 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	xvldx	$xr0, $s8, $t7
	xvldx	$xr1, $fp, $t7
	xvldx	$xr2, $a1, $t7
	xvldx	$xr3, $s4, $t7
	xvldx	$xr4, $t2, $t7
	xvldx	$xr5, $s6, $t7
	xvldx	$xr6, $t1, $t7
	xvfmul.d	$xr2, $xr2, $xr3
	xvfmadd.d	$xr0, $xr0, $xr1, $xr2
	xvfmadd.d	$xr0, $xr4, $xr5, $xr0
	xvfadd.d	$xr0, $xr6, $xr0
	xvstx	$xr0, $t1, $t7
	addi.d	$s1, $s1, -4
	add.d	$t7, $t7, $t4
	bnez	$s1, .LBB2_149
# %bb.150:                              # %middle.block3726
                                        #   in Loop: Header=BB2_141 Depth=6
	ld.d	$t1, $sp, 776                   # 8-byte Folded Reload
	move	$s1, $t1
	ld.d	$a1, $sp, 768                   # 8-byte Folded Reload
	beq	$t1, $a1, .LBB2_140
	b	.LBB2_152
	.p2align	4, , 16
.LBB2_151:                              #   in Loop: Header=BB2_141 Depth=6
	move	$s1, $zero
.LBB2_152:                              # %for.body4680.us.preheader
                                        #   in Loop: Header=BB2_141 Depth=6
	move	$a1, $zero
	move	$t1, $zero
	ld.d	$t2, $sp, 832                   # 8-byte Folded Reload
	alsl.d	$t2, $a2, $t2, 3
	alsl.d	$fp, $a3, $s3, 3
	alsl.d	$s2, $a3, $s5, 3
	alsl.d	$s4, $a3, $s7, 3
	alsl.d	$s6, $a4, $s0, 3
	alsl.d	$s8, $a4, $t8, 3
	alsl.d	$t7, $a4, $t6, 3
	ld.d	$t3, $sp, 800                   # 8-byte Folded Reload
	sub.d	$s1, $t3, $s1
	.p2align	4, , 16
.LBB2_153:                              # %for.body4680.us
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        #           Parent Loop BB2_137 Depth=5
                                        #             Parent Loop BB2_141 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	fldx.d	$fa0, $s6, $t1
	fldx.d	$fa1, $s4, $t1
	fldx.d	$fa2, $s8, $t1
	fldx.d	$fa3, $s2, $t1
	fldx.d	$fa4, $t7, $t1
	fldx.d	$fa5, $fp, $t1
	fldx.d	$fa6, $t2, $t1
	fmul.d	$fa2, $fa2, $fa3
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	fmadd.d	$fa0, $fa4, $fa5, $fa0
	fadd.d	$fa0, $fa6, $fa0
	fstx.d	$fa0, $t2, $t1
	add.d	$t1, $t1, $t5
	addi.w	$s1, $s1, -1
	sub.d	$a1, $a1, $a0
	bnez	$s1, .LBB2_153
# %bb.154:                              # %for.cond4678.for.end4707_crit_edge.us.loopexit
                                        #   in Loop: Header=BB2_141 Depth=6
	sub.d	$a2, $a2, $a1
	sub.d	$a3, $a3, $a1
	sub.d	$a4, $a4, $a1
	b	.LBB2_140
.LBB2_155:                              # %sw.bb753
                                        #   in Loop: Header=BB2_69 Depth=4
	ld.w	$a1, $sp, 876
	ori	$a0, $zero, 1
	st.d	$a1, $sp, 480                   # 8-byte Folded Spill
	blt	$a1, $a0, .LBB2_68
# %bb.156:                              # %for.cond1589.preheader.lr.ph
                                        #   in Loop: Header=BB2_69 Depth=4
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 64
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	st.d	$zero, $sp, 488                 # 8-byte Folded Spill
	ld.d	$a7, $sp, 448                   # 8-byte Folded Reload
	slli.d	$a1, $a7, 2
	ldx.w	$a1, $a0, $a1
	st.d	$a1, $sp, 704                   # 8-byte Folded Spill
	addi.d	$a1, $a7, 1
	st.d	$a1, $sp, 760                   # 8-byte Folded Spill
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	st.d	$a1, $sp, 712                   # 8-byte Folded Spill
	addi.d	$a1, $a7, 2
	st.d	$a1, $sp, 696                   # 8-byte Folded Spill
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	st.d	$a1, $sp, 720                   # 8-byte Folded Spill
	addi.d	$t1, $a7, 3
	slli.d	$a1, $t1, 2
	ldx.w	$a1, $a0, $a1
	st.d	$a1, $sp, 728                   # 8-byte Folded Spill
	addi.d	$t4, $a7, 4
	slli.d	$a1, $t4, 2
	ldx.w	$a1, $a0, $a1
	st.d	$a1, $sp, 736                   # 8-byte Folded Spill
	addi.d	$t5, $a7, 5
	slli.d	$a1, $t5, 2
	ldx.w	$a1, $a0, $a1
	st.d	$a1, $sp, 744                   # 8-byte Folded Spill
	ld.d	$a6, $sp, 368                   # 8-byte Folded Reload
	ld.w	$a1, $a6, 12
	ld.w	$t7, $a6, 0
	addi.d	$fp, $a7, 6
	slli.d	$a2, $fp, 2
	ldx.w	$a0, $a0, $a2
	st.d	$a0, $sp, 752                   # 8-byte Folded Spill
	sub.w	$a0, $a1, $t7
	addi.w	$a1, $zero, -1
	slt	$a2, $a1, $a0
	maskeqz	$a0, $a0, $a2
	ld.w	$t0, $a6, 16
	ld.w	$t8, $a6, 4
	masknez	$a2, $a1, $a2
	or	$a0, $a0, $a2
	addi.d	$t2, $a0, 1
	sub.w	$a2, $t0, $t8
	slt	$t0, $a1, $a2
	ld.d	$a5, $sp, 336                   # 8-byte Folded Reload
	ld.w	$t6, $a5, 12
	ld.w	$a3, $a5, 0
	maskeqz	$a2, $a2, $t0
	masknez	$t0, $a1, $t0
	or	$a2, $a2, $t0
	sub.w	$t0, $t6, $a3
	slt	$t6, $a1, $t0
	ld.w	$s0, $a5, 16
	ld.w	$s1, $a5, 4
	maskeqz	$t0, $t0, $t6
	masknez	$t6, $a1, $t6
	or	$t0, $t0, $t6
	sub.w	$t6, $s0, $s1
	slt	$s0, $a1, $t6
	ld.d	$a4, $sp, 344                   # 8-byte Folded Reload
	ld.w	$s2, $a4, 12
	ld.w	$s4, $a4, 0
	maskeqz	$t6, $t6, $s0
	masknez	$s0, $a1, $s0
	or	$s0, $t6, $s0
	sub.w	$t6, $s2, $s4
	slt	$s2, $a1, $t6
	ld.w	$s3, $a4, 16
	ld.w	$s6, $a4, 4
	maskeqz	$t6, $t6, $s2
	masknez	$s2, $a1, $s2
	or	$s5, $t6, $s2
	sub.w	$t6, $s3, $s6
	slt	$s2, $a1, $t6
	maskeqz	$t6, $t6, $s2
	masknez	$a1, $a1, $s2
	ld.d	$t3, $sp, 360                   # 8-byte Folded Reload
	ld.w	$s7, $t3, 32
	addi.d	$a2, $a2, 1
	or	$a1, $t6, $a1
	mul.d	$t6, $t2, $a2
	mul.d	$t6, $t6, $s7
	addi.d	$t0, $t0, 1
	addi.d	$s2, $s0, 1
	mul.d	$s0, $t0, $s2
	mul.d	$s0, $s0, $s7
	addi.d	$s3, $s5, 1
	addi.d	$a1, $a1, 1
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	ld.w	$s8, $a0, 8
	ld.w	$ra, $a6, 8
	mul.d	$s5, $s3, $a1
	mul.d	$s5, $s5, $s7
	ld.w	$s7, $a0, 4
	sub.d	$ra, $s8, $ra
	ld.w	$a0, $a0, 0
	mul.d	$a2, $a2, $ra
	sub.d	$t8, $s7, $t8
	add.d	$a2, $t8, $a2
	sub.d	$t7, $a0, $t7
	ld.w	$t8, $a5, 8
	mul.d	$a2, $a2, $t2
	add.w	$t7, $t7, $a2
	sub.d	$a2, $s7, $s1
	sub.d	$t8, $s8, $t8
	mul.d	$t8, $t8, $s2
	add.d	$a2, $a2, $t8
	sub.d	$a3, $a0, $a3
	mul.d	$a2, $a2, $t0
	ld.w	$s1, $a4, 8
	add.w	$t8, $a3, $a2
	sub.d	$a0, $a0, $s4
	sub.d	$a2, $s7, $s6
	sub.d	$a3, $s8, $s1
	mul.d	$a1, $a1, $a3
	add.d	$a1, $a2, $a1
	mul.d	$a1, $a1, $s3
	add.w	$ra, $a0, $a1
	ori	$a4, $zero, 12
	mul.d	$s8, $fp, $a4
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	add.d	$a0, $a2, $s8
	ld.w	$a1, $a0, 8
	ld.w	$a0, $a0, 4
	mul.d	$s1, $t5, $a4
	add.d	$a5, $a2, $s1
	ld.w	$a3, $a5, 8
	ld.w	$a6, $a5, 4
	mul.d	$a1, $a1, $s2
	add.d	$a5, $a1, $a0
	mul.d	$a0, $a3, $s2
	add.d	$a0, $a0, $a6
	st.d	$a0, $sp, 688                   # 8-byte Folded Spill
	mul.d	$a6, $t4, $a4
	add.d	$a0, $a2, $a6
	ld.w	$a1, $a0, 8
	ld.w	$a0, $a0, 4
	mul.d	$t5, $t1, $a4
	add.d	$fp, $a2, $t5
	ld.w	$a3, $fp, 8
	ld.w	$fp, $fp, 4
	mul.d	$a1, $a1, $s2
	add.d	$s6, $a1, $a0
	mul.d	$a0, $a3, $s2
	add.d	$a0, $a0, $fp
	st.d	$a0, $sp, 680                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 696                   # 8-byte Folded Reload
	mul.d	$s7, $a0, $a4
	add.d	$a0, $a2, $s7
	ld.w	$a1, $a0, 8
	ld.w	$a0, $a0, 4
	ld.d	$a3, $sp, 760                   # 8-byte Folded Reload
	mul.d	$t4, $a3, $a4
	add.d	$t1, $a2, $t4
	ld.w	$a3, $t1, 8
	ld.w	$t1, $t1, 4
	mul.d	$a1, $a1, $s2
	add.d	$fp, $a1, $a0
	mul.d	$a0, $a3, $s2
	add.d	$s4, $a0, $t1
	mul.d	$a1, $a7, $a4
	add.d	$a3, $a2, $a1
	ld.w	$t1, $a3, 8
	ld.w	$a3, $a3, 4
	ld.w	$a0, $t3, 28
	ld.w	$a7, $sp, 872
	mul.d	$t1, $s2, $t1
	add.d	$s2, $t1, $a3
	mul.d	$a3, $a0, $s3
	mul.d	$t1, $a7, $a3
	sub.d	$a4, $s5, $t1
	st.d	$a4, $sp, 472                   # 8-byte Folded Spill
	mul.d	$t2, $t2, $a0
	mul.d	$a0, $a0, $t0
	ld.w	$t1, $t3, 24
	mul.d	$s3, $a7, $a0
	sub.d	$a4, $s0, $s3
	st.d	$a4, $sp, 464                   # 8-byte Folded Spill
	mul.d	$s0, $a7, $t2
	sub.d	$a4, $t6, $s0
	st.d	$a4, $sp, 456                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 800                   # 8-byte Folded Reload
	mul.d	$t6, $a4, $t1
	sub.d	$a4, $a3, $t6
	st.d	$a7, $sp, 664                   # 8-byte Folded Spill
	addi.d	$s0, $a7, -1
	st.d	$a4, $sp, 656                   # 8-byte Folded Spill
	mul.d	$s3, $a4, $s0
	add.d	$a3, $s3, $a3
	sub.d	$a4, $a0, $t6
	st.d	$a4, $sp, 648                   # 8-byte Folded Spill
	mul.d	$s3, $a4, $s0
	add.d	$a0, $s3, $a0
	sub.d	$a4, $t2, $t6
	st.d	$a4, $sp, 640                   # 8-byte Folded Spill
	mul.d	$s0, $a4, $s0
	add.d	$t2, $s0, $t2
	sub.d	$a3, $a3, $t6
	st.d	$a3, $sp, 424                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 48
	sub.d	$a0, $a0, $t6
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	sub.d	$a0, $t2, $t6
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	ldx.w	$a0, $a2, $s8
	ld.d	$a4, $sp, 384                   # 8-byte Folded Reload
	add.d	$t2, $a3, $a4
	addi.d	$t2, $t2, 8
	ld.d	$a7, $sp, 752                   # 8-byte Folded Reload
	alsl.d	$a4, $a7, $a3, 3
	st.d	$a4, $sp, 760                   # 8-byte Folded Spill
	alsl.d	$a4, $a7, $t2, 3
	st.d	$a4, $sp, 624                   # 8-byte Folded Spill
	ld.d	$a7, $sp, 744                   # 8-byte Folded Reload
	alsl.d	$a4, $a7, $a3, 3
	st.d	$a4, $sp, 752                   # 8-byte Folded Spill
	alsl.d	$a4, $a7, $t2, 3
	st.d	$a4, $sp, 616                   # 8-byte Folded Spill
	ld.d	$a7, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$a4, $a7, $a3, 3
	st.d	$a4, $sp, 744                   # 8-byte Folded Spill
	alsl.d	$a4, $a7, $t2, 3
	st.d	$a4, $sp, 608                   # 8-byte Folded Spill
	ld.d	$a7, $sp, 728                   # 8-byte Folded Reload
	alsl.d	$a4, $a7, $a3, 3
	st.d	$a4, $sp, 736                   # 8-byte Folded Spill
	alsl.d	$a4, $a7, $t2, 3
	st.d	$a4, $sp, 600                   # 8-byte Folded Spill
	ld.d	$a7, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$a4, $a7, $a3, 3
	st.d	$a4, $sp, 728                   # 8-byte Folded Spill
	alsl.d	$a4, $a7, $t2, 3
	st.d	$a4, $sp, 592                   # 8-byte Folded Spill
	ld.d	$a7, $sp, 712                   # 8-byte Folded Reload
	alsl.d	$a4, $a7, $a3, 3
	st.d	$a4, $sp, 720                   # 8-byte Folded Spill
	alsl.d	$a4, $a7, $t2, 3
	st.d	$a4, $sp, 584                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 704                   # 8-byte Folded Reload
	alsl.d	$a3, $a4, $a3, 3
	st.d	$a3, $sp, 712                   # 8-byte Folded Spill
	alsl.d	$a3, $a4, $t2, 3
	st.d	$a3, $sp, 576                   # 8-byte Folded Spill
	ldx.w	$a3, $a2, $s1
	mul.d	$a5, $a5, $t0
	add.w	$a0, $a0, $a5
	ldx.w	$a5, $a2, $a6
	ld.d	$a4, $sp, 688                   # 8-byte Folded Reload
	mul.d	$a6, $a4, $t0
	add.w	$a3, $a3, $a6
	ldx.w	$a6, $a2, $t5
	mul.d	$t2, $s6, $t0
	add.w	$a5, $a5, $t2
	ldx.w	$t2, $a2, $s7
	ld.d	$a4, $sp, 680                   # 8-byte Folded Reload
	mul.d	$t3, $a4, $t0
	add.w	$a6, $a6, $t3
	ldx.w	$a7, $a2, $t4
	mul.d	$a4, $fp, $t0
	add.w	$a4, $t2, $a4
	ldx.w	$a1, $a2, $a1
	mul.d	$a2, $s4, $t0
	add.w	$a2, $a7, $a2
	mul.d	$a7, $s2, $t0
	add.w	$a1, $a1, $a7
	ld.d	$a7, $sp, 328                   # 8-byte Folded Reload
	alsl.d	$t0, $a0, $a7, 3
	st.d	$t0, $sp, 704                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $t0, 3
	st.d	$a0, $sp, 568                   # 8-byte Folded Spill
	alsl.d	$a0, $a3, $a7, 3
	st.d	$a0, $sp, 696                   # 8-byte Folded Spill
	alsl.d	$a0, $a3, $t0, 3
	st.d	$a0, $sp, 560                   # 8-byte Folded Spill
	alsl.d	$fp, $a5, $a7, 3
	alsl.d	$a0, $a5, $t0, 3
	st.d	$a0, $sp, 552                   # 8-byte Folded Spill
	alsl.d	$a3, $a6, $a7, 3
	alsl.d	$a0, $a6, $t0, 3
	st.d	$a0, $sp, 544                   # 8-byte Folded Spill
	alsl.d	$a0, $a4, $a7, 3
	st.d	$a0, $sp, 688                   # 8-byte Folded Spill
	alsl.d	$a0, $a4, $t0, 3
	st.d	$a0, $sp, 536                   # 8-byte Folded Spill
	alsl.d	$a0, $a2, $a7, 3
	st.d	$a0, $sp, 680                   # 8-byte Folded Spill
	alsl.d	$a0, $a2, $t0, 3
	st.d	$a0, $sp, 528                   # 8-byte Folded Spill
	alsl.d	$a0, $a1, $a7, 3
	st.d	$a0, $sp, 672                   # 8-byte Folded Spill
	alsl.d	$a0, $a1, $t0, 3
	st.d	$a0, $sp, 512                   # 8-byte Folded Spill
	addi.d	$a0, $t1, -1
	sltui	$a0, $a0, 1
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	and	$a0, $a1, $a0
	st.d	$a0, $sp, 632                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 776                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $t1
	st.d	$a0, $sp, 496                   # 8-byte Folded Spill
	slli.d	$t6, $t1, 5
	slli.d	$a1, $t1, 3
	b	.LBB2_159
	.p2align	4, , 16
.LBB2_157:                              # %for.cond1592.preheader.preheader
                                        #   in Loop: Header=BB2_159 Depth=5
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	add.d	$ra, $a0, $ra
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	add.d	$t8, $a0, $t8
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	add.d	$t7, $a0, $t7
.LBB2_158:                              # %for.end1657
                                        #   in Loop: Header=BB2_159 Depth=5
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	add.w	$ra, $a0, $ra
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	add.w	$t8, $a0, $t8
	ld.d	$a2, $sp, 488                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	add.w	$t7, $a0, $t7
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	st.d	$a2, $sp, 488                   # 8-byte Folded Spill
	beq	$a2, $a0, .LBB2_68
.LBB2_159:                              # %for.cond1589.preheader
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB2_164 Depth 6
                                        #               Child Loop BB2_180 Depth 7
                                        #               Child Loop BB2_184 Depth 7
	ori	$a0, $zero, 1
	ld.d	$a2, $sp, 664                   # 8-byte Folded Reload
	blt	$a2, $a0, .LBB2_158
# %bb.160:                              # %for.cond1592.preheader.lr.ph
                                        #   in Loop: Header=BB2_159 Depth=5
	ld.d	$a2, $sp, 800                   # 8-byte Folded Reload
	blt	$a2, $a0, .LBB2_157
# %bb.161:                              # %for.cond1592.preheader.us.preheader
                                        #   in Loop: Header=BB2_159 Depth=5
	move	$a0, $zero
	b	.LBB2_164
	.p2align	4, , 16
.LBB2_162:                              # %for.cond1592.for.end1645_crit_edge.us.loopexit
                                        #   in Loop: Header=BB2_164 Depth=6
	sub.d	$t7, $t7, $a2
	sub.d	$t8, $t8, $a2
	sub.d	$ra, $ra, $a2
.LBB2_163:                              # %for.cond1592.for.end1645_crit_edge.us
                                        #   in Loop: Header=BB2_164 Depth=6
	ld.d	$a2, $sp, 656                   # 8-byte Folded Reload
	add.w	$ra, $a2, $ra
	ld.d	$a2, $sp, 648                   # 8-byte Folded Reload
	add.w	$t8, $a2, $t8
	addi.w	$a0, $a0, 1
	ld.d	$a2, $sp, 640                   # 8-byte Folded Reload
	add.w	$t7, $a2, $t7
	ld.d	$a2, $sp, 664                   # 8-byte Folded Reload
	beq	$a0, $a2, .LBB2_158
.LBB2_164:                              # %for.cond1592.preheader.us
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        #           Parent Loop BB2_159 Depth=5
                                        # =>          This Loop Header: Depth=6
                                        #               Child Loop BB2_180 Depth 7
                                        #               Child Loop BB2_184 Depth 7
	ld.d	$a2, $sp, 632                   # 8-byte Folded Reload
	beqz	$a2, .LBB2_182
# %bb.165:                              # %vector.memcheck
                                        #   in Loop: Header=BB2_164 Depth=6
	ld.d	$a2, $sp, 832                   # 8-byte Folded Reload
	alsl.d	$s1, $t7, $a2, 3
	ld.d	$a2, $sp, 784                   # 8-byte Folded Reload
	alsl.d	$s7, $t7, $a2, 3
	ld.d	$a2, $sp, 760                   # 8-byte Folded Reload
	alsl.d	$s5, $ra, $a2, 3
	ld.d	$a2, $sp, 624                   # 8-byte Folded Reload
	alsl.d	$a2, $ra, $a2, 3
	sltu	$a2, $s1, $a2
	sltu	$a4, $s5, $s7
	and	$a2, $a2, $a4
	move	$s2, $zero
	bnez	$a2, .LBB2_183
# %bb.166:                              # %vector.memcheck
                                        #   in Loop: Header=BB2_164 Depth=6
	ld.d	$a2, $sp, 752                   # 8-byte Folded Reload
	alsl.d	$s8, $ra, $a2, 3
	ld.d	$a2, $sp, 616                   # 8-byte Folded Reload
	alsl.d	$a2, $ra, $a2, 3
	sltu	$a2, $s1, $a2
	sltu	$a4, $s8, $s7
	and	$a2, $a2, $a4
	bnez	$a2, .LBB2_183
# %bb.167:                              # %vector.memcheck
                                        #   in Loop: Header=BB2_164 Depth=6
	ld.d	$a2, $sp, 744                   # 8-byte Folded Reload
	alsl.d	$a7, $ra, $a2, 3
	ld.d	$a2, $sp, 608                   # 8-byte Folded Reload
	alsl.d	$a2, $ra, $a2, 3
	sltu	$a2, $s1, $a2
	sltu	$a4, $a7, $s7
	and	$a2, $a2, $a4
	bnez	$a2, .LBB2_183
# %bb.168:                              # %vector.memcheck
                                        #   in Loop: Header=BB2_164 Depth=6
	ld.d	$a2, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$t4, $ra, $a2, 3
	ld.d	$a2, $sp, 600                   # 8-byte Folded Reload
	alsl.d	$a2, $ra, $a2, 3
	sltu	$a2, $s1, $a2
	sltu	$a4, $t4, $s7
	and	$a2, $a2, $a4
	bnez	$a2, .LBB2_183
# %bb.169:                              # %vector.memcheck
                                        #   in Loop: Header=BB2_164 Depth=6
	ld.d	$a2, $sp, 728                   # 8-byte Folded Reload
	alsl.d	$a2, $ra, $a2, 3
	ld.d	$a4, $sp, 592                   # 8-byte Folded Reload
	alsl.d	$a4, $ra, $a4, 3
	sltu	$a4, $s1, $a4
	sltu	$a5, $a2, $s7
	and	$a4, $a4, $a5
	bnez	$a4, .LBB2_183
# %bb.170:                              # %vector.memcheck
                                        #   in Loop: Header=BB2_164 Depth=6
	ld.d	$a4, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$s4, $ra, $a4, 3
	ld.d	$a4, $sp, 584                   # 8-byte Folded Reload
	alsl.d	$a4, $ra, $a4, 3
	sltu	$a4, $s1, $a4
	sltu	$a5, $s4, $s7
	and	$a4, $a4, $a5
	bnez	$a4, .LBB2_183
# %bb.171:                              # %vector.memcheck
                                        #   in Loop: Header=BB2_164 Depth=6
	ld.d	$a4, $sp, 712                   # 8-byte Folded Reload
	alsl.d	$a4, $ra, $a4, 3
	ld.d	$a5, $sp, 576                   # 8-byte Folded Reload
	alsl.d	$a5, $ra, $a5, 3
	sltu	$a5, $s1, $a5
	sltu	$a6, $a4, $s7
	and	$a5, $a5, $a6
	bnez	$a5, .LBB2_183
# %bb.172:                              # %vector.memcheck
                                        #   in Loop: Header=BB2_164 Depth=6
	ld.d	$a5, $sp, 704                   # 8-byte Folded Reload
	alsl.d	$s0, $t8, $a5, 3
	ld.d	$a5, $sp, 568                   # 8-byte Folded Reload
	alsl.d	$a5, $t8, $a5, 3
	sltu	$a5, $s1, $a5
	sltu	$a6, $s0, $s7
	and	$a5, $a5, $a6
	bnez	$a5, .LBB2_183
# %bb.173:                              # %vector.memcheck
                                        #   in Loop: Header=BB2_164 Depth=6
	ld.d	$a5, $sp, 696                   # 8-byte Folded Reload
	alsl.d	$s6, $t8, $a5, 3
	ld.d	$a5, $sp, 560                   # 8-byte Folded Reload
	alsl.d	$a5, $t8, $a5, 3
	sltu	$a5, $s1, $a5
	sltu	$a6, $s6, $s7
	and	$a5, $a5, $a6
	bnez	$a5, .LBB2_183
# %bb.174:                              # %vector.memcheck
                                        #   in Loop: Header=BB2_164 Depth=6
	alsl.d	$t5, $t8, $fp, 3
	ld.d	$a5, $sp, 552                   # 8-byte Folded Reload
	alsl.d	$a5, $t8, $a5, 3
	sltu	$a5, $s1, $a5
	sltu	$a6, $t5, $s7
	and	$a5, $a5, $a6
	bnez	$a5, .LBB2_183
# %bb.175:                              # %vector.memcheck
                                        #   in Loop: Header=BB2_164 Depth=6
	alsl.d	$a5, $t8, $a3, 3
	ld.d	$a6, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$a6, $t8, $a6, 3
	sltu	$a6, $s1, $a6
	sltu	$t0, $a5, $s7
	and	$a6, $a6, $t0
	bnez	$a6, .LBB2_183
# %bb.176:                              # %vector.memcheck
                                        #   in Loop: Header=BB2_164 Depth=6
	ld.d	$a6, $sp, 688                   # 8-byte Folded Reload
	alsl.d	$s3, $t8, $a6, 3
	ld.d	$a6, $sp, 536                   # 8-byte Folded Reload
	alsl.d	$a6, $t8, $a6, 3
	sltu	$a6, $s1, $a6
	sltu	$t0, $s3, $s7
	and	$a6, $a6, $t0
	bnez	$a6, .LBB2_183
# %bb.177:                              # %vector.memcheck
                                        #   in Loop: Header=BB2_164 Depth=6
	ld.d	$a6, $sp, 680                   # 8-byte Folded Reload
	alsl.d	$t0, $t8, $a6, 3
	ld.d	$a6, $sp, 528                   # 8-byte Folded Reload
	alsl.d	$a6, $t8, $a6, 3
	sltu	$a6, $s1, $a6
	sltu	$t2, $t0, $s7
	and	$a6, $a6, $t2
	bnez	$a6, .LBB2_183
# %bb.178:                              # %vector.memcheck
                                        #   in Loop: Header=BB2_164 Depth=6
	ld.d	$a6, $sp, 672                   # 8-byte Folded Reload
	alsl.d	$t2, $t8, $a6, 3
	ld.d	$a6, $sp, 512                   # 8-byte Folded Reload
	alsl.d	$a6, $t8, $a6, 3
	sltu	$a6, $s1, $a6
	sltu	$s7, $t2, $s7
	and	$a6, $a6, $s7
	bnez	$a6, .LBB2_183
# %bb.179:                              # %vector.ph3166
                                        #   in Loop: Header=BB2_164 Depth=6
	move	$a6, $zero
	ld.d	$t3, $sp, 496                   # 8-byte Folded Reload
	add.d	$t7, $t3, $t7
	add.d	$t8, $t3, $t8
	add.d	$ra, $t3, $ra
	ld.d	$s2, $sp, 776                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_180:                              # %vector.body3169
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        #           Parent Loop BB2_159 Depth=5
                                        #             Parent Loop BB2_164 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	xvldx	$xr0, $a4, $a6
	xvldx	$xr1, $t2, $a6
	xvldx	$xr2, $s4, $a6
	xvldx	$xr3, $t0, $a6
	xvldx	$xr4, $a2, $a6
	xvldx	$xr5, $s3, $a6
	xvldx	$xr6, $t4, $a6
	xvldx	$xr7, $a5, $a6
	xvfmul.d	$xr2, $xr2, $xr3
	xvfmadd.d	$xr0, $xr0, $xr1, $xr2
	xvfmadd.d	$xr0, $xr4, $xr5, $xr0
	xvfmadd.d	$xr0, $xr6, $xr7, $xr0
	xvldx	$xr1, $a7, $a6
	xvldx	$xr2, $t5, $a6
	xvldx	$xr3, $s8, $a6
	xvldx	$xr4, $s6, $a6
	xvldx	$xr5, $s5, $a6
	xvldx	$xr6, $s0, $a6
	xvldx	$xr7, $s1, $a6
	xvfmadd.d	$xr0, $xr1, $xr2, $xr0
	xvfmadd.d	$xr0, $xr3, $xr4, $xr0
	xvfmadd.d	$xr0, $xr5, $xr6, $xr0
	xvfadd.d	$xr0, $xr7, $xr0
	xvstx	$xr0, $s1, $a6
	addi.d	$s2, $s2, -4
	add.d	$a6, $a6, $t6
	bnez	$s2, .LBB2_180
# %bb.181:                              # %middle.block3190
                                        #   in Loop: Header=BB2_164 Depth=6
	ld.d	$a4, $sp, 776                   # 8-byte Folded Reload
	move	$s2, $a4
	ld.d	$a2, $sp, 768                   # 8-byte Folded Reload
	beq	$a4, $a2, .LBB2_163
	b	.LBB2_183
	.p2align	4, , 16
.LBB2_182:                              #   in Loop: Header=BB2_164 Depth=6
	move	$s2, $zero
.LBB2_183:                              # %for.body1594.us.preheader
                                        #   in Loop: Header=BB2_164 Depth=6
	move	$a2, $zero
	move	$a4, $zero
	ld.d	$a5, $sp, 832                   # 8-byte Folded Reload
	alsl.d	$a5, $t7, $a5, 3
	ld.d	$a6, $sp, 704                   # 8-byte Folded Reload
	alsl.d	$a7, $t8, $a6, 3
	ld.d	$a6, $sp, 696                   # 8-byte Folded Reload
	alsl.d	$t0, $t8, $a6, 3
	alsl.d	$t4, $t8, $fp, 3
	alsl.d	$t2, $t8, $a3, 3
	ld.d	$a6, $sp, 688                   # 8-byte Folded Reload
	alsl.d	$t5, $t8, $a6, 3
	ld.d	$a6, $sp, 680                   # 8-byte Folded Reload
	alsl.d	$s0, $t8, $a6, 3
	ld.d	$a6, $sp, 672                   # 8-byte Folded Reload
	alsl.d	$s1, $t8, $a6, 3
	ld.d	$a6, $sp, 712                   # 8-byte Folded Reload
	alsl.d	$s3, $ra, $a6, 3
	ld.d	$a6, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$s4, $ra, $a6, 3
	ld.d	$a6, $sp, 728                   # 8-byte Folded Reload
	alsl.d	$s5, $ra, $a6, 3
	ld.d	$a6, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$s6, $ra, $a6, 3
	ld.d	$a6, $sp, 744                   # 8-byte Folded Reload
	alsl.d	$s7, $ra, $a6, 3
	ld.d	$a6, $sp, 752                   # 8-byte Folded Reload
	alsl.d	$s8, $ra, $a6, 3
	ld.d	$a6, $sp, 760                   # 8-byte Folded Reload
	alsl.d	$a6, $ra, $a6, 3
	ld.d	$t3, $sp, 800                   # 8-byte Folded Reload
	sub.d	$s2, $t3, $s2
	.p2align	4, , 16
.LBB2_184:                              # %for.body1594.us
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        #           Parent Loop BB2_159 Depth=5
                                        #             Parent Loop BB2_164 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	fldx.d	$fa0, $s3, $a4
	fldx.d	$fa1, $s1, $a4
	fldx.d	$fa2, $s4, $a4
	fldx.d	$fa3, $s0, $a4
	fldx.d	$fa4, $s5, $a4
	fldx.d	$fa5, $t5, $a4
	fldx.d	$fa6, $s6, $a4
	fldx.d	$fa7, $t2, $a4
	fmul.d	$fa2, $fa2, $fa3
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	fmadd.d	$fa0, $fa4, $fa5, $fa0
	fmadd.d	$fa0, $fa6, $fa7, $fa0
	fldx.d	$fa1, $s7, $a4
	fldx.d	$fa2, $t4, $a4
	fldx.d	$fa3, $s8, $a4
	fldx.d	$fa4, $t0, $a4
	fldx.d	$fa5, $a6, $a4
	fldx.d	$fa6, $a7, $a4
	fldx.d	$fa7, $a5, $a4
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fmadd.d	$fa0, $fa3, $fa4, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fadd.d	$fa0, $fa7, $fa0
	fstx.d	$fa0, $a5, $a4
	add.d	$a4, $a4, $a1
	addi.w	$s2, $s2, -1
	sub.d	$a2, $a2, $t1
	bnez	$s2, .LBB2_184
	b	.LBB2_162
.LBB2_185:                              # %sw.bb2536
                                        #   in Loop: Header=BB2_69 Depth=4
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 504                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB2_68
# %bb.186:                              # %for.cond3262.preheader.lr.ph
                                        #   in Loop: Header=BB2_69 Depth=4
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 64
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	st.d	$zero, $sp, 608                 # 8-byte Folded Spill
	ld.d	$t3, $sp, 448                   # 8-byte Folded Reload
	slli.d	$a1, $t3, 2
	ldx.w	$a1, $a0, $a1
	st.d	$a1, $sp, 736                   # 8-byte Folded Spill
	addi.d	$a6, $t3, 1
	slli.d	$a2, $a6, 2
	ldx.w	$a1, $a0, $a2
	st.d	$a1, $sp, 704                   # 8-byte Folded Spill
	addi.d	$t0, $t3, 2
	slli.d	$a2, $t0, 2
	ldx.w	$a1, $a0, $a2
	st.d	$a1, $sp, 680                   # 8-byte Folded Spill
	addi.d	$t2, $t3, 3
	slli.d	$a2, $t2, 2
	ldx.w	$a1, $a0, $a2
	st.d	$a1, $sp, 744                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 368                   # 8-byte Folded Reload
	ld.w	$a3, $s8, 12
	ld.w	$a2, $s8, 0
	addi.d	$t5, $t3, 4
	slli.d	$a4, $t5, 2
	ldx.w	$a7, $a0, $a4
	sub.w	$a3, $a3, $a2
	addi.w	$a4, $zero, -1
	slt	$t1, $a4, $a3
	maskeqz	$a3, $a3, $t1
	ld.w	$t4, $s8, 16
	ld.w	$fp, $s8, 4
	masknez	$t1, $a4, $t1
	or	$a3, $a3, $t1
	addi.d	$a3, $a3, 1
	sub.w	$t1, $t4, $fp
	slt	$t4, $a4, $t1
	maskeqz	$t1, $t1, $t4
	masknez	$t4, $a4, $t4
	or	$t1, $t1, $t4
	ld.d	$a5, $sp, 360                   # 8-byte Folded Reload
	ld.w	$s0, $a5, 32
	ld.d	$ra, $sp, 336                   # 8-byte Folded Reload
	ld.w	$t4, $ra, 12
	ld.w	$s1, $ra, 0
	addi.d	$s2, $t1, 1
	mul.d	$t1, $a3, $s2
	mul.d	$t1, $t1, $s0
	sub.w	$t4, $t4, $s1
	slt	$t6, $a4, $t4
	maskeqz	$t4, $t4, $t6
	ld.w	$t7, $ra, 16
	ld.w	$s3, $ra, 4
	masknez	$t6, $a4, $t6
	or	$t4, $t4, $t6
	addi.d	$t4, $t4, 1
	sub.w	$t6, $t7, $s3
	slt	$t7, $a4, $t6
	maskeqz	$t6, $t6, $t7
	masknez	$t7, $a4, $t7
	or	$t6, $t6, $t7
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	ld.w	$t8, $a1, 12
	ld.w	$s4, $a1, 0
	addi.d	$t7, $t6, 1
	mul.d	$t6, $t4, $t7
	mul.d	$t6, $t6, $s0
	sub.w	$t8, $t8, $s4
	slt	$s5, $a4, $t8
	maskeqz	$t8, $t8, $s5
	ld.w	$s6, $a1, 16
	ld.w	$s7, $a1, 4
	masknez	$s5, $a4, $s5
	or	$t8, $t8, $s5
	addi.d	$t8, $t8, 1
	sub.w	$s5, $s6, $s7
	slt	$s6, $a4, $s5
	maskeqz	$s5, $s5, $s6
	masknez	$a4, $a4, $s6
	or	$a4, $s5, $a4
	addi.d	$a4, $a4, 1
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	ld.w	$s5, $a0, 8
	ld.w	$s6, $s8, 8
	mul.d	$s8, $t8, $a4
	mul.d	$s0, $s8, $s0
	ld.w	$s8, $a0, 4
	sub.d	$s6, $s5, $s6
	mul.d	$s2, $s2, $s6
	ld.w	$s6, $a0, 0
	sub.d	$fp, $s8, $fp
	add.d	$fp, $fp, $s2
	ld.w	$s2, $a5, 28
	sub.d	$a2, $s6, $a2
	mul.d	$fp, $fp, $a3
	add.w	$a2, $a2, $fp
	ld.w	$ra, $ra, 8
	mul.d	$fp, $a3, $s2
	sub.d	$a3, $s6, $s1
	sub.d	$s1, $s8, $s3
	sub.d	$s3, $s5, $ra
	mul.d	$s3, $s3, $t7
	add.d	$s1, $s1, $s3
	mul.d	$s1, $s1, $t4
	ld.w	$s3, $a1, 8
	add.w	$a3, $a3, $s1
	sub.d	$s1, $s6, $s4
	sub.d	$s4, $s8, $s7
	sub.d	$s3, $s5, $s3
	mul.d	$a4, $a4, $s3
	add.d	$a4, $s4, $a4
	mul.d	$a4, $a4, $t8
	add.w	$a4, $s1, $a4
	ori	$ra, $zero, 12
	mul.d	$s3, $t5, $ra
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	add.d	$t5, $a0, $s3
	ld.w	$s1, $t5, 8
	ld.w	$t5, $t5, 4
	mul.d	$t2, $t2, $ra
	add.d	$s4, $a0, $t2
	ld.w	$s5, $s4, 8
	ld.w	$s4, $s4, 4
	mul.d	$s1, $s1, $t7
	add.d	$s1, $s1, $t5
	mul.d	$t5, $s5, $t7
	add.d	$t5, $t5, $s4
	mul.d	$t0, $t0, $ra
	add.d	$s4, $a0, $t0
	ld.w	$s5, $s4, 8
	ld.w	$s4, $s4, 4
	mul.d	$s7, $a6, $ra
	add.d	$a1, $a0, $s7
	ld.w	$s6, $a1, 8
	ld.w	$a1, $a1, 4
	mul.d	$s5, $s5, $t7
	add.d	$s5, $s5, $s4
	mul.d	$s4, $s6, $t7
	add.d	$s8, $s4, $a1
	mul.d	$ra, $t3, $ra
	add.d	$a1, $a0, $ra
	ld.w	$s4, $a1, 8
	mul.d	$t8, $s2, $t8
	ld.w	$s6, $a1, 4
	mul.d	$s2, $s2, $t4
	mul.d	$t7, $t7, $s4
	ld.w	$a1, $a5, 24
	add.d	$t7, $t7, $s6
	ld.d	$a5, $sp, 792                   # 8-byte Folded Reload
	mul.d	$s4, $a5, $t8
	sub.d	$a6, $s0, $s4
	st.d	$a6, $sp, 600                   # 8-byte Folded Spill
	mul.d	$s0, $a5, $s2
	sub.d	$a6, $t6, $s0
	st.d	$a6, $sp, 592                   # 8-byte Folded Spill
	mul.d	$t6, $a5, $fp
	sub.d	$a5, $t1, $t6
	st.d	$a5, $sp, 584                   # 8-byte Folded Spill
	ld.d	$t3, $sp, 800                   # 8-byte Folded Reload
	mul.d	$t1, $t3, $a1
	sub.d	$a6, $t8, $t1
	ld.d	$a5, $sp, 312                   # 8-byte Folded Reload
	st.d	$a6, $sp, 728                   # 8-byte Folded Spill
	mul.d	$t6, $a6, $a5
	add.d	$t6, $t6, $t8
	sub.d	$a6, $s2, $t1
	st.d	$a6, $sp, 720                   # 8-byte Folded Spill
	mul.d	$t8, $a6, $a5
	add.d	$t8, $t8, $s2
	sub.d	$a6, $fp, $t1
	st.d	$a6, $sp, 712                   # 8-byte Folded Spill
	mul.d	$s0, $a6, $a5
	add.d	$fp, $s0, $fp
	sub.d	$a5, $t6, $t1
	st.d	$a5, $sp, 576                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 432                   # 8-byte Folded Reload
	ld.d	$t6, $a5, 48
	sub.d	$a5, $t8, $t1
	st.d	$a5, $sp, 568                   # 8-byte Folded Spill
	sub.d	$a5, $fp, $t1
	st.d	$a5, $sp, 560                   # 8-byte Folded Spill
	ldx.w	$t1, $a0, $s3
	ld.d	$a5, $sp, 384                   # 8-byte Folded Reload
	add.d	$t8, $t6, $a5
	addi.d	$t8, $t8, 8
	alsl.d	$a5, $a7, $t6, 3
	st.d	$a5, $sp, 760                   # 8-byte Folded Spill
	alsl.d	$a5, $a7, $t8, 3
	st.d	$a5, $sp, 696                   # 8-byte Folded Spill
	ld.d	$a6, $sp, 744                   # 8-byte Folded Reload
	alsl.d	$a5, $a6, $t6, 3
	st.d	$a5, $sp, 752                   # 8-byte Folded Spill
	alsl.d	$a5, $a6, $t8, 3
	st.d	$a5, $sp, 688                   # 8-byte Folded Spill
	ld.d	$a6, $sp, 680                   # 8-byte Folded Reload
	alsl.d	$a5, $a6, $t6, 3
	st.d	$a5, $sp, 744                   # 8-byte Folded Spill
	alsl.d	$a5, $a6, $t8, 3
	st.d	$a5, $sp, 680                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 704                   # 8-byte Folded Reload
	alsl.d	$s4, $a5, $t6, 3
	alsl.d	$a5, $a5, $t8, 3
	st.d	$a5, $sp, 672                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$s6, $a5, $t6, 3
	alsl.d	$a5, $a5, $t8, 3
	st.d	$a5, $sp, 664                   # 8-byte Folded Spill
	ldx.w	$t2, $a0, $t2
	mul.d	$a5, $s1, $t4
	add.w	$a5, $t1, $a5
	ldx.w	$a6, $a0, $t0
	mul.d	$a7, $t5, $t4
	add.w	$t5, $t2, $a7
	ldx.w	$a7, $a0, $s7
	mul.d	$t0, $s5, $t4
	add.w	$a6, $a6, $t0
	ldx.w	$t0, $a0, $ra
	mul.d	$t1, $s8, $t4
	add.w	$a7, $a7, $t1
	mul.d	$t1, $t7, $t4
	add.w	$t0, $t0, $t1
	addi.d	$t1, $a1, -1
	sltui	$t1, $t1, 1
	ori	$a0, $zero, 7
	sltu	$t2, $a0, $t3
	and	$a0, $t2, $t1
	st.d	$a0, $sp, 704                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	alsl.d	$s8, $a5, $a0, 3
	ld.d	$t1, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$a5, $a5, $t1, 3
	st.d	$a5, $sp, 656                   # 8-byte Folded Spill
	alsl.d	$t3, $t5, $a0, 3
	alsl.d	$a5, $t5, $t1, 3
	st.d	$a5, $sp, 648                   # 8-byte Folded Spill
	alsl.d	$t6, $a6, $a0, 3
	alsl.d	$a5, $a6, $t1, 3
	st.d	$a5, $sp, 640                   # 8-byte Folded Spill
	alsl.d	$a6, $a7, $a0, 3
	alsl.d	$a5, $a7, $t1, 3
	st.d	$a5, $sp, 632                   # 8-byte Folded Spill
	alsl.d	$a0, $t0, $a0, 3
	st.d	$a0, $sp, 736                   # 8-byte Folded Spill
	alsl.d	$a0, $t0, $t1, 3
	st.d	$a0, $sp, 624                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 776                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	st.d	$a0, $sp, 616                   # 8-byte Folded Spill
	slli.d	$t8, $a1, 5
	slli.d	$s0, $a1, 3
	b	.LBB2_189
	.p2align	4, , 16
.LBB2_187:                              # %for.cond3265.preheader.preheader
                                        #   in Loop: Header=BB2_189 Depth=5
	ld.d	$a0, $sp, 576                   # 8-byte Folded Reload
	add.d	$a4, $a0, $a4
	ld.d	$a0, $sp, 568                   # 8-byte Folded Reload
	add.d	$a3, $a0, $a3
	ld.d	$a0, $sp, 560                   # 8-byte Folded Reload
	add.d	$a2, $a0, $a2
.LBB2_188:                              # %for.end3318
                                        #   in Loop: Header=BB2_189 Depth=5
	ld.d	$a0, $sp, 600                   # 8-byte Folded Reload
	add.w	$a4, $a0, $a4
	ld.d	$a0, $sp, 592                   # 8-byte Folded Reload
	add.w	$a3, $a0, $a3
	ld.d	$a5, $sp, 608                   # 8-byte Folded Reload
	addi.w	$a5, $a5, 1
	ld.d	$a0, $sp, 584                   # 8-byte Folded Reload
	add.w	$a2, $a0, $a2
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	st.d	$a5, $sp, 608                   # 8-byte Folded Spill
	beq	$a5, $a0, .LBB2_68
.LBB2_189:                              # %for.cond3262.preheader
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB2_193 Depth 6
                                        #               Child Loop BB2_205 Depth 7
                                        #               Child Loop BB2_209 Depth 7
	ori	$a0, $zero, 1
	ld.d	$a5, $sp, 792                   # 8-byte Folded Reload
	blt	$a5, $a0, .LBB2_188
# %bb.190:                              # %for.cond3265.preheader.lr.ph
                                        #   in Loop: Header=BB2_189 Depth=5
	ld.d	$a5, $sp, 800                   # 8-byte Folded Reload
	blt	$a5, $a0, .LBB2_187
# %bb.191:                              # %for.cond3265.preheader.us.preheader
                                        #   in Loop: Header=BB2_189 Depth=5
	move	$s3, $zero
	b	.LBB2_193
	.p2align	4, , 16
.LBB2_192:                              # %for.cond3265.for.end3306_crit_edge.us
                                        #   in Loop: Header=BB2_193 Depth=6
	ld.d	$a0, $sp, 728                   # 8-byte Folded Reload
	add.w	$a4, $a0, $a4
	ld.d	$a0, $sp, 720                   # 8-byte Folded Reload
	add.w	$a3, $a0, $a3
	addi.w	$s3, $s3, 1
	ld.d	$a0, $sp, 712                   # 8-byte Folded Reload
	add.w	$a2, $a0, $a2
	ld.d	$a0, $sp, 792                   # 8-byte Folded Reload
	beq	$s3, $a0, .LBB2_188
.LBB2_193:                              # %for.cond3265.preheader.us
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        #           Parent Loop BB2_189 Depth=5
                                        # =>          This Loop Header: Depth=6
                                        #               Child Loop BB2_205 Depth 7
                                        #               Child Loop BB2_209 Depth 7
	ld.d	$a0, $sp, 704                   # 8-byte Folded Reload
	beqz	$a0, .LBB2_207
# %bb.194:                              # %vector.memcheck3368
                                        #   in Loop: Header=BB2_193 Depth=6
	ld.d	$a0, $sp, 832                   # 8-byte Folded Reload
	alsl.d	$s1, $a2, $a0, 3
	ld.d	$a0, $sp, 784                   # 8-byte Folded Reload
	alsl.d	$t1, $a2, $a0, 3
	ld.d	$a0, $sp, 760                   # 8-byte Folded Reload
	alsl.d	$a0, $a4, $a0, 3
	ld.d	$a5, $sp, 696                   # 8-byte Folded Reload
	alsl.d	$a5, $a4, $a5, 3
	sltu	$a5, $s1, $a5
	sltu	$a7, $a0, $t1
	and	$a5, $a5, $a7
	move	$s5, $zero
	bnez	$a5, .LBB2_208
# %bb.195:                              # %vector.memcheck3368
                                        #   in Loop: Header=BB2_193 Depth=6
	ld.d	$a5, $sp, 752                   # 8-byte Folded Reload
	alsl.d	$a5, $a4, $a5, 3
	ld.d	$a7, $sp, 688                   # 8-byte Folded Reload
	alsl.d	$a7, $a4, $a7, 3
	sltu	$a7, $s1, $a7
	sltu	$t0, $a5, $t1
	and	$a7, $a7, $t0
	bnez	$a7, .LBB2_208
# %bb.196:                              # %vector.memcheck3368
                                        #   in Loop: Header=BB2_193 Depth=6
	ld.d	$a7, $sp, 744                   # 8-byte Folded Reload
	alsl.d	$t4, $a4, $a7, 3
	ld.d	$a7, $sp, 680                   # 8-byte Folded Reload
	alsl.d	$a7, $a4, $a7, 3
	sltu	$a7, $s1, $a7
	sltu	$t0, $t4, $t1
	and	$a7, $a7, $t0
	bnez	$a7, .LBB2_208
# %bb.197:                              # %vector.memcheck3368
                                        #   in Loop: Header=BB2_193 Depth=6
	alsl.d	$ra, $a4, $s4, 3
	ld.d	$a7, $sp, 672                   # 8-byte Folded Reload
	alsl.d	$a7, $a4, $a7, 3
	sltu	$a7, $s1, $a7
	sltu	$t0, $ra, $t1
	and	$a7, $a7, $t0
	bnez	$a7, .LBB2_208
# %bb.198:                              # %vector.memcheck3368
                                        #   in Loop: Header=BB2_193 Depth=6
	alsl.d	$a7, $a4, $s6, 3
	ld.d	$t0, $sp, 664                   # 8-byte Folded Reload
	alsl.d	$t0, $a4, $t0, 3
	sltu	$t0, $s1, $t0
	sltu	$t2, $a7, $t1
	and	$t0, $t0, $t2
	bnez	$t0, .LBB2_208
# %bb.199:                              # %vector.memcheck3368
                                        #   in Loop: Header=BB2_193 Depth=6
	alsl.d	$t0, $a3, $s8, 3
	ld.d	$t2, $sp, 656                   # 8-byte Folded Reload
	alsl.d	$t2, $a3, $t2, 3
	sltu	$t2, $s1, $t2
	sltu	$t5, $t0, $t1
	and	$t2, $t2, $t5
	bnez	$t2, .LBB2_208
# %bb.200:                              # %vector.memcheck3368
                                        #   in Loop: Header=BB2_193 Depth=6
	alsl.d	$t2, $a3, $t3, 3
	ld.d	$t5, $sp, 648                   # 8-byte Folded Reload
	alsl.d	$t5, $a3, $t5, 3
	sltu	$t5, $s1, $t5
	sltu	$t7, $t2, $t1
	and	$t5, $t5, $t7
	bnez	$t5, .LBB2_208
# %bb.201:                              # %vector.memcheck3368
                                        #   in Loop: Header=BB2_193 Depth=6
	alsl.d	$s7, $a3, $t6, 3
	ld.d	$t5, $sp, 640                   # 8-byte Folded Reload
	alsl.d	$t5, $a3, $t5, 3
	sltu	$t5, $s1, $t5
	sltu	$t7, $s7, $t1
	and	$t5, $t5, $t7
	bnez	$t5, .LBB2_208
# %bb.202:                              # %vector.memcheck3368
                                        #   in Loop: Header=BB2_193 Depth=6
	alsl.d	$t5, $a3, $a6, 3
	ld.d	$t7, $sp, 632                   # 8-byte Folded Reload
	alsl.d	$t7, $a3, $t7, 3
	sltu	$t7, $s1, $t7
	sltu	$fp, $t5, $t1
	and	$t7, $t7, $fp
	bnez	$t7, .LBB2_208
# %bb.203:                              # %vector.memcheck3368
                                        #   in Loop: Header=BB2_193 Depth=6
	ld.d	$t7, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$t7, $a3, $t7, 3
	ld.d	$fp, $sp, 624                   # 8-byte Folded Reload
	alsl.d	$fp, $a3, $fp, 3
	sltu	$fp, $s1, $fp
	sltu	$t1, $t7, $t1
	and	$t1, $fp, $t1
	bnez	$t1, .LBB2_208
# %bb.204:                              # %vector.ph3486
                                        #   in Loop: Header=BB2_193 Depth=6
	move	$t1, $zero
	ld.d	$fp, $sp, 616                   # 8-byte Folded Reload
	add.d	$a2, $fp, $a2
	add.d	$a3, $fp, $a3
	add.d	$a4, $fp, $a4
	ld.d	$fp, $sp, 776                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_205:                              # %vector.body3489
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        #           Parent Loop BB2_189 Depth=5
                                        #             Parent Loop BB2_193 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	xvldx	$xr0, $a7, $t1
	xvldx	$xr1, $ra, $t1
	xvldx	$xr2, $t5, $t1
	xvldx	$xr3, $t7, $t1
	xvfmul.d	$xr1, $xr1, $xr2
	xvfmadd.d	$xr0, $xr0, $xr3, $xr1
	xvldx	$xr1, $t4, $t1
	xvldx	$xr2, $s7, $t1
	xvldx	$xr3, $a5, $t1
	xvldx	$xr4, $t2, $t1
	xvldx	$xr5, $a0, $t1
	xvldx	$xr6, $t0, $t1
	xvldx	$xr7, $s1, $t1
	xvfmadd.d	$xr0, $xr1, $xr2, $xr0
	xvfmadd.d	$xr0, $xr3, $xr4, $xr0
	xvfmadd.d	$xr0, $xr5, $xr6, $xr0
	xvfadd.d	$xr0, $xr7, $xr0
	xvstx	$xr0, $s1, $t1
	addi.d	$fp, $fp, -4
	add.d	$t1, $t1, $t8
	bnez	$fp, .LBB2_205
# %bb.206:                              # %middle.block3506
                                        #   in Loop: Header=BB2_193 Depth=6
	ld.d	$a5, $sp, 776                   # 8-byte Folded Reload
	move	$s5, $a5
	ld.d	$a0, $sp, 768                   # 8-byte Folded Reload
	beq	$a5, $a0, .LBB2_192
	b	.LBB2_208
	.p2align	4, , 16
.LBB2_207:                              #   in Loop: Header=BB2_193 Depth=6
	move	$s5, $zero
.LBB2_208:                              # %for.body3267.us.preheader
                                        #   in Loop: Header=BB2_193 Depth=6
	move	$a0, $zero
	move	$a5, $zero
	ld.d	$a7, $sp, 832                   # 8-byte Folded Reload
	alsl.d	$a7, $a2, $a7, 3
	alsl.d	$t0, $a3, $s8, 3
	alsl.d	$t1, $a3, $t3, 3
	alsl.d	$t2, $a3, $t6, 3
	alsl.d	$t4, $a3, $a6, 3
	ld.d	$t5, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$t5, $a3, $t5, 3
	alsl.d	$t7, $a4, $s6, 3
	alsl.d	$s1, $a4, $s4, 3
	ld.d	$fp, $sp, 744                   # 8-byte Folded Reload
	alsl.d	$s7, $a4, $fp, 3
	ld.d	$fp, $sp, 752                   # 8-byte Folded Reload
	alsl.d	$ra, $a4, $fp, 3
	ld.d	$fp, $sp, 760                   # 8-byte Folded Reload
	alsl.d	$fp, $a4, $fp, 3
	ld.d	$s2, $sp, 800                   # 8-byte Folded Reload
	sub.d	$s5, $s2, $s5
	.p2align	4, , 16
.LBB2_209:                              # %for.body3267.us
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        #           Parent Loop BB2_189 Depth=5
                                        #             Parent Loop BB2_193 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	fldx.d	$fa0, $t7, $a5
	fldx.d	$fa1, $s1, $a5
	fldx.d	$fa2, $t4, $a5
	fldx.d	$fa3, $t5, $a5
	fmul.d	$fa1, $fa1, $fa2
	fmadd.d	$fa0, $fa0, $fa3, $fa1
	fldx.d	$fa1, $s7, $a5
	fldx.d	$fa2, $t2, $a5
	fldx.d	$fa3, $ra, $a5
	fldx.d	$fa4, $t1, $a5
	fldx.d	$fa5, $fp, $a5
	fldx.d	$fa6, $t0, $a5
	fldx.d	$fa7, $a7, $a5
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fmadd.d	$fa0, $fa3, $fa4, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fadd.d	$fa0, $fa7, $fa0
	fstx.d	$fa0, $a7, $a5
	add.d	$a5, $a5, $s0
	addi.w	$s5, $s5, -1
	sub.d	$a0, $a0, $a1
	bnez	$s5, .LBB2_209
# %bb.210:                              # %for.cond3265.for.end3306_crit_edge.us.loopexit
                                        #   in Loop: Header=BB2_193 Depth=6
	sub.d	$a2, $a2, $a0
	sub.d	$a3, $a3, $a0
	sub.d	$a4, $a4, $a0
	b	.LBB2_192
.LBB2_211:                              # %sw.bb1673
                                        #   in Loop: Header=BB2_69 Depth=4
	ld.w	$a1, $sp, 876
	ori	$a0, $zero, 1
	st.d	$a1, $sp, 544                   # 8-byte Folded Spill
	blt	$a1, $a0, .LBB2_68
# %bb.212:                              # %for.cond2458.preheader.lr.ph
                                        #   in Loop: Header=BB2_69 Depth=4
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 64
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	st.d	$zero, $sp, 552                 # 8-byte Folded Spill
	ld.d	$a6, $sp, 448                   # 8-byte Folded Reload
	slli.d	$a1, $a6, 2
	ldx.w	$a1, $a0, $a1
	st.d	$a1, $sp, 712                   # 8-byte Folded Spill
	addi.d	$s6, $a6, 1
	slli.d	$a1, $s6, 2
	ldx.w	$a1, $a0, $a1
	st.d	$a1, $sp, 720                   # 8-byte Folded Spill
	addi.d	$t0, $a6, 2
	slli.d	$a4, $t0, 2
	ldx.w	$a1, $a0, $a4
	st.d	$a1, $sp, 728                   # 8-byte Folded Spill
	addi.d	$t2, $a6, 3
	slli.d	$a4, $t2, 2
	ldx.w	$a1, $a0, $a4
	st.d	$a1, $sp, 736                   # 8-byte Folded Spill
	addi.d	$t6, $a6, 4
	slli.d	$a4, $t6, 2
	ldx.w	$a1, $a0, $a4
	st.d	$a1, $sp, 744                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	ld.w	$a5, $a1, 12
	ld.w	$t4, $a1, 0
	addi.d	$a4, $a6, 5
	slli.d	$t1, $a4, 2
	ldx.w	$a0, $a0, $t1
	st.d	$a0, $sp, 752                   # 8-byte Folded Spill
	sub.w	$a5, $a5, $t4
	addi.w	$t1, $zero, -1
	slt	$t5, $t1, $a5
	maskeqz	$a5, $a5, $t5
	ld.w	$t7, $a1, 16
	ld.w	$s0, $a1, 4
	masknez	$t5, $t1, $t5
	or	$a5, $a5, $t5
	addi.d	$a7, $a5, 1
	sub.w	$t5, $t7, $s0
	slt	$t7, $t1, $t5
	maskeqz	$t5, $t5, $t7
	masknez	$t7, $t1, $t7
	or	$t5, $t5, $t7
	ld.d	$a5, $sp, 360                   # 8-byte Folded Reload
	ld.w	$t7, $a5, 32
	ld.d	$t3, $sp, 336                   # 8-byte Folded Reload
	ld.w	$t8, $t3, 12
	ld.w	$s2, $t3, 0
	addi.d	$s3, $t5, 1
	mul.d	$t5, $a7, $s3
	mul.d	$a0, $t5, $t7
	st.d	$a0, $sp, 760                   # 8-byte Folded Spill
	sub.w	$t5, $t8, $s2
	slt	$t8, $t1, $t5
	maskeqz	$t5, $t5, $t8
	ld.w	$fp, $t3, 16
	ld.w	$s5, $t3, 4
	masknez	$t8, $t1, $t8
	or	$t5, $t5, $t8
	addi.d	$t5, $t5, 1
	sub.w	$t8, $fp, $s5
	slt	$fp, $t1, $t8
	maskeqz	$t8, $t8, $fp
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	ld.w	$s1, $a2, 12
	ld.w	$s7, $a2, 0
	masknez	$fp, $t1, $fp
	or	$t8, $t8, $fp
	addi.d	$t8, $t8, 1
	sub.w	$fp, $s1, $s7
	slt	$s1, $t1, $fp
	ld.w	$s4, $a2, 16
	ld.w	$s8, $a2, 4
	maskeqz	$fp, $fp, $s1
	masknez	$s1, $t1, $s1
	or	$s1, $fp, $s1
	sub.w	$fp, $s4, $s8
	slt	$s4, $t1, $fp
	maskeqz	$ra, $fp, $s4
	masknez	$t1, $t1, $s4
	mul.d	$fp, $t5, $t8
	mul.d	$fp, $fp, $t7
	addi.d	$s1, $s1, 1
	or	$t1, $ra, $t1
	addi.d	$t1, $t1, 1
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	ld.w	$ra, $a0, 8
	ld.w	$a1, $a1, 8
	mul.d	$s4, $s1, $t1
	mul.d	$s4, $s4, $t7
	ld.w	$a3, $a0, 4
	sub.d	$t7, $ra, $a1
	ld.w	$a1, $a0, 0
	mul.d	$t7, $s3, $t7
	sub.d	$s0, $a3, $s0
	add.d	$t7, $s0, $t7
	sub.d	$t4, $a1, $t4
	ld.w	$s0, $t3, 8
	mul.d	$t7, $t7, $a7
	add.w	$t7, $t4, $t7
	sub.d	$t4, $a3, $s5
	sub.d	$s0, $ra, $s0
	mul.d	$s0, $s0, $t8
	add.d	$t4, $t4, $s0
	sub.d	$s0, $a1, $s2
	mul.d	$t4, $t4, $t5
	ld.w	$s2, $a2, 8
	add.w	$t4, $s0, $t4
	sub.d	$a1, $a1, $s7
	sub.d	$a0, $a3, $s8
	sub.d	$s0, $ra, $s2
	mul.d	$t1, $t1, $s0
	add.d	$a0, $a0, $t1
	ori	$s8, $zero, 12
	mul.d	$s5, $a4, $s8
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	add.d	$a4, $a2, $s5
	ld.w	$t1, $a4, 8
	ld.w	$s0, $a4, 4
	mul.d	$a0, $a0, $s1
	add.w	$a4, $a1, $a0
	mul.d	$a0, $t1, $t8
	add.d	$a3, $a0, $s0
	mul.d	$t6, $t6, $s8
	add.d	$a0, $a2, $t6
	ld.w	$a1, $a0, 8
	ld.w	$a0, $a0, 4
	mul.d	$t3, $t2, $s8
	add.d	$t1, $a2, $t3
	ld.w	$s2, $t1, 8
	ld.w	$t1, $t1, 4
	mul.d	$a1, $a1, $t8
	add.d	$s3, $a1, $a0
	mul.d	$a0, $s2, $t8
	add.d	$s2, $a0, $t1
	mul.d	$ra, $t0, $s8
	add.d	$a0, $a2, $ra
	ld.w	$a1, $a0, 8
	ld.w	$a0, $a0, 4
	mul.d	$t2, $s6, $s8
	add.d	$t1, $a2, $t2
	ld.w	$s7, $t1, 8
	ld.w	$t1, $t1, 4
	mul.d	$a1, $a1, $t8
	add.d	$s6, $a1, $a0
	mul.d	$a0, $s7, $t8
	add.d	$s7, $a0, $t1
	mul.d	$t1, $a6, $s8
	add.d	$a0, $a2, $t1
	ld.w	$a1, $a0, 8
	ld.w	$a0, $a0, 4
	ld.w	$s8, $a5, 28
	ld.w	$a6, $sp, 872
	mul.d	$a1, $t8, $a1
	add.d	$a0, $a1, $a0
	mul.d	$a1, $s8, $s1
	mul.d	$t8, $a6, $a1
	sub.d	$t0, $s4, $t8
	st.d	$t0, $sp, 536                   # 8-byte Folded Spill
	mul.d	$t8, $a7, $s8
	mul.d	$s1, $s8, $t5
	ld.w	$a5, $a5, 24
	mul.d	$s4, $a6, $s1
	sub.d	$a7, $fp, $s4
	st.d	$a7, $sp, 528                   # 8-byte Folded Spill
	mul.d	$fp, $a6, $t8
	ld.d	$a7, $sp, 760                   # 8-byte Folded Reload
	sub.d	$a7, $a7, $fp
	st.d	$a7, $sp, 512                   # 8-byte Folded Spill
	ld.d	$s0, $sp, 800                   # 8-byte Folded Reload
	mul.d	$fp, $s0, $a5
	sub.d	$a7, $a1, $fp
	st.d	$a6, $sp, 696                   # 8-byte Folded Spill
	addi.d	$s4, $a6, -1
	st.d	$a7, $sp, 688                   # 8-byte Folded Spill
	mul.d	$s8, $a7, $s4
	add.d	$a1, $s8, $a1
	sub.d	$a6, $s1, $fp
	st.d	$a6, $sp, 680                   # 8-byte Folded Spill
	mul.d	$s8, $a6, $s4
	add.d	$s1, $s8, $s1
	sub.d	$a6, $t8, $fp
	st.d	$a6, $sp, 672                   # 8-byte Folded Spill
	mul.d	$s4, $a6, $s4
	add.d	$t8, $s4, $t8
	sub.d	$a1, $a1, $fp
	st.d	$a1, $sp, 496                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 48
	sub.d	$a6, $s1, $fp
	st.d	$a6, $sp, 488                   # 8-byte Folded Spill
	sub.d	$a6, $t8, $fp
	st.d	$a6, $sp, 480                   # 8-byte Folded Spill
	ldx.w	$t8, $a2, $s5
	ld.d	$a6, $sp, 384                   # 8-byte Folded Reload
	add.d	$fp, $a1, $a6
	addi.d	$fp, $fp, 8
	ld.d	$a7, $sp, 752                   # 8-byte Folded Reload
	alsl.d	$a6, $a7, $a1, 3
	st.d	$a6, $sp, 760                   # 8-byte Folded Spill
	alsl.d	$a6, $a7, $fp, 3
	st.d	$a6, $sp, 656                   # 8-byte Folded Spill
	ld.d	$a7, $sp, 744                   # 8-byte Folded Reload
	alsl.d	$a6, $a7, $a1, 3
	st.d	$a6, $sp, 752                   # 8-byte Folded Spill
	alsl.d	$a6, $a7, $fp, 3
	st.d	$a6, $sp, 648                   # 8-byte Folded Spill
	ld.d	$a7, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$a6, $a7, $a1, 3
	st.d	$a6, $sp, 744                   # 8-byte Folded Spill
	alsl.d	$a6, $a7, $fp, 3
	st.d	$a6, $sp, 640                   # 8-byte Folded Spill
	ld.d	$a7, $sp, 728                   # 8-byte Folded Reload
	alsl.d	$a6, $a7, $a1, 3
	st.d	$a6, $sp, 736                   # 8-byte Folded Spill
	alsl.d	$a6, $a7, $fp, 3
	st.d	$a6, $sp, 632                   # 8-byte Folded Spill
	ld.d	$a7, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$a6, $a7, $a1, 3
	st.d	$a6, $sp, 728                   # 8-byte Folded Spill
	alsl.d	$a6, $a7, $fp, 3
	st.d	$a6, $sp, 624                   # 8-byte Folded Spill
	ld.d	$a6, $sp, 712                   # 8-byte Folded Reload
	alsl.d	$a1, $a6, $a1, 3
	st.d	$a1, $sp, 720                   # 8-byte Folded Spill
	alsl.d	$a1, $a6, $fp, 3
	st.d	$a1, $sp, 616                   # 8-byte Folded Spill
	ldx.w	$a1, $a2, $t6
	mul.d	$a3, $a3, $t5
	add.w	$a3, $t8, $a3
	ldx.w	$a7, $a2, $t3
	mul.d	$t0, $s3, $t5
	add.w	$a1, $a1, $t0
	ldx.w	$a6, $a2, $ra
	mul.d	$t0, $s2, $t5
	add.w	$t0, $a7, $t0
	ldx.w	$t2, $a2, $t2
	mul.d	$a7, $s6, $t5
	add.w	$a6, $a6, $a7
	ldx.w	$a7, $a2, $t1
	mul.d	$t1, $s7, $t5
	add.w	$a2, $t2, $t1
	mul.d	$a0, $a0, $t5
	add.w	$a0, $a7, $a0
	addi.d	$a7, $a5, -1
	sltui	$a7, $a7, 1
	ori	$t1, $zero, 7
	sltu	$t1, $t1, $s0
	and	$a7, $t1, $a7
	st.d	$a7, $sp, 664                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 328                   # 8-byte Folded Reload
	alsl.d	$t5, $a3, $t1, 3
	ld.d	$t2, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$a3, $a3, $t2, 3
	st.d	$a3, $sp, 608                   # 8-byte Folded Spill
	alsl.d	$a7, $a1, $t1, 3
	alsl.d	$a1, $a1, $t2, 3
	st.d	$a1, $sp, 600                   # 8-byte Folded Spill
	alsl.d	$t6, $t0, $t1, 3
	alsl.d	$a1, $t0, $t2, 3
	st.d	$a1, $sp, 592                   # 8-byte Folded Spill
	alsl.d	$s3, $a6, $t1, 3
	alsl.d	$a1, $a6, $t2, 3
	st.d	$a1, $sp, 584                   # 8-byte Folded Spill
	alsl.d	$a1, $a2, $t1, 3
	st.d	$a1, $sp, 712                   # 8-byte Folded Spill
	alsl.d	$a1, $a2, $t2, 3
	st.d	$a1, $sp, 576                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $t1, 3
	st.d	$a1, $sp, 704                   # 8-byte Folded Spill
	alsl.d	$a0, $a0, $t2, 3
	st.d	$a0, $sp, 568                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 776                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a5
	st.d	$a0, $sp, 560                   # 8-byte Folded Spill
	slli.d	$s5, $a5, 5
	slli.d	$s0, $a5, 3
	b	.LBB2_215
	.p2align	4, , 16
.LBB2_213:                              # %for.cond2461.preheader.preheader
                                        #   in Loop: Header=BB2_215 Depth=5
	ld.d	$a0, $sp, 496                   # 8-byte Folded Reload
	add.d	$a4, $a0, $a4
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	add.d	$t4, $a0, $t4
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	add.d	$t7, $a0, $t7
.LBB2_214:                              # %for.end2520
                                        #   in Loop: Header=BB2_215 Depth=5
	ld.d	$a0, $sp, 536                   # 8-byte Folded Reload
	add.w	$a4, $a0, $a4
	ld.d	$a0, $sp, 528                   # 8-byte Folded Reload
	add.w	$t4, $a0, $t4
	ld.d	$a1, $sp, 552                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	ld.d	$a0, $sp, 512                   # 8-byte Folded Reload
	add.w	$t7, $a0, $t7
	ld.d	$a0, $sp, 544                   # 8-byte Folded Reload
	st.d	$a1, $sp, 552                   # 8-byte Folded Spill
	beq	$a1, $a0, .LBB2_68
.LBB2_215:                              # %for.cond2458.preheader
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB2_219 Depth 6
                                        #               Child Loop BB2_233 Depth 7
                                        #               Child Loop BB2_237 Depth 7
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 696                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB2_214
# %bb.216:                              # %for.cond2461.preheader.lr.ph
                                        #   in Loop: Header=BB2_215 Depth=5
	ld.d	$a1, $sp, 800                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB2_213
# %bb.217:                              # %for.cond2461.preheader.us.preheader
                                        #   in Loop: Header=BB2_215 Depth=5
	move	$a0, $zero
	b	.LBB2_219
	.p2align	4, , 16
.LBB2_218:                              # %for.cond2461.for.end2508_crit_edge.us
                                        #   in Loop: Header=BB2_219 Depth=6
	ld.d	$a1, $sp, 688                   # 8-byte Folded Reload
	add.w	$a4, $a1, $a4
	ld.d	$a1, $sp, 680                   # 8-byte Folded Reload
	add.w	$t4, $a1, $t4
	addi.w	$a0, $a0, 1
	ld.d	$a1, $sp, 672                   # 8-byte Folded Reload
	add.w	$t7, $a1, $t7
	ld.d	$a1, $sp, 696                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB2_214
.LBB2_219:                              # %for.cond2461.preheader.us
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        #           Parent Loop BB2_215 Depth=5
                                        # =>          This Loop Header: Depth=6
                                        #               Child Loop BB2_233 Depth 7
                                        #               Child Loop BB2_237 Depth 7
	ld.d	$a1, $sp, 664                   # 8-byte Folded Reload
	beqz	$a1, .LBB2_235
# %bb.220:                              # %vector.memcheck3198
                                        #   in Loop: Header=BB2_219 Depth=6
	ld.d	$a1, $sp, 832                   # 8-byte Folded Reload
	alsl.d	$s1, $t7, $a1, 3
	ld.d	$a1, $sp, 784                   # 8-byte Folded Reload
	alsl.d	$fp, $t7, $a1, 3
	ld.d	$a1, $sp, 760                   # 8-byte Folded Reload
	alsl.d	$a3, $a4, $a1, 3
	ld.d	$a1, $sp, 656                   # 8-byte Folded Reload
	alsl.d	$a1, $a4, $a1, 3
	sltu	$a1, $s1, $a1
	sltu	$a2, $a3, $fp
	and	$a1, $a1, $a2
	move	$t0, $zero
	bnez	$a1, .LBB2_236
# %bb.221:                              # %vector.memcheck3198
                                        #   in Loop: Header=BB2_219 Depth=6
	ld.d	$a1, $sp, 752                   # 8-byte Folded Reload
	alsl.d	$t3, $a4, $a1, 3
	ld.d	$a1, $sp, 648                   # 8-byte Folded Reload
	alsl.d	$a1, $a4, $a1, 3
	sltu	$a1, $s1, $a1
	sltu	$a2, $t3, $fp
	and	$a1, $a1, $a2
	bnez	$a1, .LBB2_236
# %bb.222:                              # %vector.memcheck3198
                                        #   in Loop: Header=BB2_219 Depth=6
	ld.d	$a1, $sp, 744                   # 8-byte Folded Reload
	alsl.d	$t1, $a4, $a1, 3
	ld.d	$a1, $sp, 640                   # 8-byte Folded Reload
	alsl.d	$a1, $a4, $a1, 3
	sltu	$a1, $s1, $a1
	sltu	$a2, $t1, $fp
	and	$a1, $a1, $a2
	bnez	$a1, .LBB2_236
# %bb.223:                              # %vector.memcheck3198
                                        #   in Loop: Header=BB2_219 Depth=6
	ld.d	$a1, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$t2, $a4, $a1, 3
	ld.d	$a1, $sp, 632                   # 8-byte Folded Reload
	alsl.d	$a1, $a4, $a1, 3
	sltu	$a1, $s1, $a1
	sltu	$a2, $t2, $fp
	and	$a1, $a1, $a2
	bnez	$a1, .LBB2_236
# %bb.224:                              # %vector.memcheck3198
                                        #   in Loop: Header=BB2_219 Depth=6
	ld.d	$a1, $sp, 728                   # 8-byte Folded Reload
	alsl.d	$a6, $a4, $a1, 3
	ld.d	$a1, $sp, 624                   # 8-byte Folded Reload
	alsl.d	$a1, $a4, $a1, 3
	sltu	$a1, $s1, $a1
	sltu	$a2, $a6, $fp
	and	$a1, $a1, $a2
	bnez	$a1, .LBB2_236
# %bb.225:                              # %vector.memcheck3198
                                        #   in Loop: Header=BB2_219 Depth=6
	ld.d	$a1, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$a2, $a4, $a1, 3
	ld.d	$a1, $sp, 616                   # 8-byte Folded Reload
	alsl.d	$a1, $a4, $a1, 3
	sltu	$a1, $s1, $a1
	sltu	$t8, $a2, $fp
	and	$a1, $a1, $t8
	bnez	$a1, .LBB2_236
# %bb.226:                              # %vector.memcheck3198
                                        #   in Loop: Header=BB2_219 Depth=6
	alsl.d	$t8, $t4, $t5, 3
	ld.d	$a1, $sp, 608                   # 8-byte Folded Reload
	alsl.d	$a1, $t4, $a1, 3
	sltu	$a1, $s1, $a1
	sltu	$s2, $t8, $fp
	and	$a1, $a1, $s2
	bnez	$a1, .LBB2_236
# %bb.227:                              # %vector.memcheck3198
                                        #   in Loop: Header=BB2_219 Depth=6
	alsl.d	$s2, $t4, $a7, 3
	ld.d	$a1, $sp, 600                   # 8-byte Folded Reload
	alsl.d	$a1, $t4, $a1, 3
	sltu	$a1, $s1, $a1
	sltu	$s4, $s2, $fp
	and	$a1, $a1, $s4
	bnez	$a1, .LBB2_236
# %bb.228:                              # %vector.memcheck3198
                                        #   in Loop: Header=BB2_219 Depth=6
	alsl.d	$ra, $t4, $t6, 3
	ld.d	$a1, $sp, 592                   # 8-byte Folded Reload
	alsl.d	$a1, $t4, $a1, 3
	sltu	$a1, $s1, $a1
	sltu	$s4, $ra, $fp
	and	$a1, $a1, $s4
	bnez	$a1, .LBB2_236
# %bb.229:                              # %vector.memcheck3198
                                        #   in Loop: Header=BB2_219 Depth=6
	alsl.d	$s4, $t4, $s3, 3
	ld.d	$a1, $sp, 584                   # 8-byte Folded Reload
	alsl.d	$a1, $t4, $a1, 3
	sltu	$a1, $s1, $a1
	sltu	$s6, $s4, $fp
	and	$a1, $a1, $s6
	bnez	$a1, .LBB2_236
# %bb.230:                              # %vector.memcheck3198
                                        #   in Loop: Header=BB2_219 Depth=6
	ld.d	$a1, $sp, 712                   # 8-byte Folded Reload
	alsl.d	$s6, $t4, $a1, 3
	ld.d	$a1, $sp, 576                   # 8-byte Folded Reload
	alsl.d	$a1, $t4, $a1, 3
	sltu	$a1, $s1, $a1
	sltu	$s8, $s6, $fp
	and	$a1, $a1, $s8
	bnez	$a1, .LBB2_236
# %bb.231:                              # %vector.memcheck3198
                                        #   in Loop: Header=BB2_219 Depth=6
	ld.d	$a1, $sp, 704                   # 8-byte Folded Reload
	alsl.d	$s8, $t4, $a1, 3
	ld.d	$a1, $sp, 568                   # 8-byte Folded Reload
	alsl.d	$a1, $t4, $a1, 3
	sltu	$a1, $s1, $a1
	sltu	$fp, $s8, $fp
	and	$a1, $a1, $fp
	bnez	$a1, .LBB2_236
# %bb.232:                              # %vector.ph3338
                                        #   in Loop: Header=BB2_219 Depth=6
	move	$a1, $zero
	ld.d	$t0, $sp, 560                   # 8-byte Folded Reload
	add.d	$t7, $t0, $t7
	add.d	$t4, $t0, $t4
	add.d	$a4, $t0, $a4
	ld.d	$t0, $sp, 776                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_233:                              # %vector.body3341
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        #           Parent Loop BB2_215 Depth=5
                                        #             Parent Loop BB2_219 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	xvldx	$xr0, $a2, $a1
	xvldx	$xr1, $s8, $a1
	xvldx	$xr2, $a6, $a1
	xvldx	$xr3, $s6, $a1
	xvldx	$xr4, $t2, $a1
	xvldx	$xr5, $s4, $a1
	xvfmul.d	$xr2, $xr2, $xr3
	xvfmadd.d	$xr0, $xr0, $xr1, $xr2
	xvfmadd.d	$xr0, $xr4, $xr5, $xr0
	xvldx	$xr1, $t1, $a1
	xvldx	$xr2, $ra, $a1
	xvldx	$xr3, $t3, $a1
	xvldx	$xr4, $s2, $a1
	xvldx	$xr5, $a3, $a1
	xvldx	$xr6, $t8, $a1
	xvldx	$xr7, $s1, $a1
	xvfmadd.d	$xr0, $xr1, $xr2, $xr0
	xvfmadd.d	$xr0, $xr3, $xr4, $xr0
	xvfmadd.d	$xr0, $xr5, $xr6, $xr0
	xvfadd.d	$xr0, $xr7, $xr0
	xvstx	$xr0, $s1, $a1
	addi.d	$t0, $t0, -4
	add.d	$a1, $a1, $s5
	bnez	$t0, .LBB2_233
# %bb.234:                              # %middle.block3360
                                        #   in Loop: Header=BB2_219 Depth=6
	ld.d	$a2, $sp, 776                   # 8-byte Folded Reload
	move	$t0, $a2
	ld.d	$a1, $sp, 768                   # 8-byte Folded Reload
	beq	$a2, $a1, .LBB2_218
	b	.LBB2_236
	.p2align	4, , 16
.LBB2_235:                              #   in Loop: Header=BB2_219 Depth=6
	move	$t0, $zero
.LBB2_236:                              # %for.body2463.us.preheader
                                        #   in Loop: Header=BB2_219 Depth=6
	move	$a2, $zero
	move	$a3, $zero
	ld.d	$a1, $sp, 832                   # 8-byte Folded Reload
	alsl.d	$a6, $t7, $a1, 3
	alsl.d	$t1, $t4, $t5, 3
	alsl.d	$t2, $t4, $a7, 3
	alsl.d	$t3, $t4, $t6, 3
	alsl.d	$t8, $t4, $s3, 3
	ld.d	$a1, $sp, 712                   # 8-byte Folded Reload
	alsl.d	$fp, $t4, $a1, 3
	ld.d	$a1, $sp, 704                   # 8-byte Folded Reload
	alsl.d	$s1, $t4, $a1, 3
	ld.d	$a1, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$s2, $a4, $a1, 3
	ld.d	$a1, $sp, 728                   # 8-byte Folded Reload
	alsl.d	$s4, $a4, $a1, 3
	ld.d	$a1, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$s6, $a4, $a1, 3
	ld.d	$a1, $sp, 744                   # 8-byte Folded Reload
	alsl.d	$s8, $a4, $a1, 3
	ld.d	$a1, $sp, 752                   # 8-byte Folded Reload
	alsl.d	$ra, $a4, $a1, 3
	ld.d	$a1, $sp, 760                   # 8-byte Folded Reload
	alsl.d	$a1, $a4, $a1, 3
	ld.d	$s7, $sp, 800                   # 8-byte Folded Reload
	sub.d	$t0, $s7, $t0
	.p2align	4, , 16
.LBB2_237:                              # %for.body2463.us
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        #           Parent Loop BB2_215 Depth=5
                                        #             Parent Loop BB2_219 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	fldx.d	$fa0, $s2, $a3
	fldx.d	$fa1, $s1, $a3
	fldx.d	$fa2, $s4, $a3
	fldx.d	$fa3, $fp, $a3
	fldx.d	$fa4, $s6, $a3
	fldx.d	$fa5, $t8, $a3
	fmul.d	$fa2, $fa2, $fa3
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	fmadd.d	$fa0, $fa4, $fa5, $fa0
	fldx.d	$fa1, $s8, $a3
	fldx.d	$fa2, $t3, $a3
	fldx.d	$fa3, $ra, $a3
	fldx.d	$fa4, $t2, $a3
	fldx.d	$fa5, $a1, $a3
	fldx.d	$fa6, $t1, $a3
	fldx.d	$fa7, $a6, $a3
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fmadd.d	$fa0, $fa3, $fa4, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fadd.d	$fa0, $fa7, $fa0
	fstx.d	$fa0, $a6, $a3
	add.d	$a3, $a3, $s0
	addi.w	$t0, $t0, -1
	sub.d	$a2, $a2, $a5
	bnez	$t0, .LBB2_237
# %bb.238:                              # %for.cond2461.for.end2508_crit_edge.us.loopexit
                                        #   in Loop: Header=BB2_219 Depth=6
	sub.d	$t7, $t7, $a2
	sub.d	$t4, $t4, $a2
	sub.d	$a4, $a4, $a2
	b	.LBB2_218
	.p2align	4, , 16
.LBB2_239:                              # %for.end5878
                                        #   in Loop: Header=BB2_66 Depth=3
	xvld	$xr3, $sp, 208                  # 32-byte Folded Reload
	ld.d	$a0, $sp, 200
	movgr2cf	$fcc0, $a0
	ld.d	$fp, $sp, 280                   # 8-byte Folded Reload
	bcnez	$fcc0, .LBB2_65
# %bb.240:                              # %if.then5880
                                        #   in Loop: Header=BB2_66 Depth=3
	ld.w	$a0, $sp, 876
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB2_65
# %bb.241:                              # %for.cond6077.preheader.lr.ph
                                        #   in Loop: Header=BB2_66 Depth=3
	ld.w	$a1, $sp, 872
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB2_65
# %bb.242:                              # %for.cond6077.preheader.us.preheader
                                        #   in Loop: Header=BB2_66 Depth=3
	move	$a2, $zero
	ld.d	$a7, $sp, 392                   # 8-byte Folded Reload
	ld.w	$a3, $a7, 0
	ld.d	$t2, $sp, 368                   # 8-byte Folded Reload
	ld.w	$a4, $t2, 0
	ld.w	$a5, $a7, 4
	ld.w	$a6, $t2, 4
	ld.w	$a7, $a7, 8
	ld.w	$t0, $t2, 8
	ld.w	$t1, $t2, 16
	sub.d	$a3, $a3, $a4
	sub.d	$a5, $a5, $a6
	sub.d	$a7, $a7, $t0
	sub.w	$a6, $t1, $a6
	addi.w	$t0, $zero, -1
	slt	$t1, $t0, $a6
	maskeqz	$a6, $a6, $t1
	masknez	$t1, $t0, $t1
	or	$a6, $a6, $t1
	ld.w	$t1, $t2, 12
	addi.d	$a6, $a6, 1
	mul.d	$a7, $a6, $a7
	add.d	$a5, $a5, $a7
	sub.w	$a4, $t1, $a4
	slt	$a7, $t0, $a4
	maskeqz	$a4, $a4, $a7
	masknez	$a7, $t0, $a7
	or	$a4, $a4, $a7
	addi.d	$a7, $a4, 1
	mul.d	$a4, $a5, $a7
	add.w	$t6, $a3, $a4
	ld.d	$a4, $sp, 360                   # 8-byte Folded Reload
	ld.w	$a5, $a4, 28
	ld.w	$a3, $a4, 24
	ld.w	$t0, $a4, 32
	ld.wu	$a4, $sp, 868
	mul.d	$t1, $a7, $a5
	mul.d	$a5, $a7, $a6
	mul.d	$a6, $a5, $t0
	mul.d	$a7, $a4, $a3
	sub.d	$a5, $t1, $a7
	mul.d	$t0, $a1, $t1
	sub.d	$a6, $a6, $t0
	addi.d	$t0, $a1, -1
	mul.d	$t0, $a5, $t0
	add.d	$t0, $t0, $t1
	sub.d	$a7, $t0, $a7
	ori	$t0, $zero, 7
	sltu	$t0, $t0, $a4
	addi.d	$t1, $a3, -1
	sltui	$t1, $t1, 1
	and	$t0, $t0, $t1
	bstrpick.d	$t1, $a4, 30, 3
	slli.d	$t1, $t1, 3
	mul.d	$t2, $t1, $a3
	slli.d	$t3, $a3, 6
	slli.d	$t4, $a3, 3
	b	.LBB2_245
	.p2align	4, , 16
.LBB2_243:                              # %for.cond6080.preheader.us2717.preheader
                                        #   in Loop: Header=BB2_245 Depth=4
	add.d	$t6, $a7, $t6
.LBB2_244:                              # %for.cond6077.for.end6095_crit_edge.us
                                        #   in Loop: Header=BB2_245 Depth=4
	addi.w	$a2, $a2, 1
	add.w	$t6, $a6, $t6
	beq	$a2, $a0, .LBB2_65
.LBB2_245:                              # %for.cond6077.preheader.us
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB2_248 Depth 5
                                        #             Child Loop BB2_250 Depth 6
                                        #             Child Loop BB2_254 Depth 6
	addi.w	$t5, $a4, 0
	ori	$t7, $zero, 1
	blt	$t5, $t7, .LBB2_243
# %bb.246:                              # %for.cond6080.preheader.us.us.preheader
                                        #   in Loop: Header=BB2_245 Depth=4
	move	$t5, $zero
	b	.LBB2_248
	.p2align	4, , 16
.LBB2_247:                              # %for.cond6080.for.end6089_crit_edge.us.us
                                        #   in Loop: Header=BB2_248 Depth=5
	addi.w	$t5, $t5, 1
	add.w	$t6, $a5, $t7
	beq	$t5, $a1, .LBB2_244
.LBB2_248:                              # %for.cond6080.preheader.us.us
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_245 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB2_250 Depth 6
                                        #             Child Loop BB2_254 Depth 6
	beqz	$t0, .LBB2_252
# %bb.249:                              # %vector.ph
                                        #   in Loop: Header=BB2_248 Depth=5
	add.d	$t7, $t2, $t6
	alsl.d	$t6, $t6, $fp, 3
	move	$t8, $t1
	.p2align	4, , 16
.LBB2_250:                              # %vector.body
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_245 Depth=4
                                        #           Parent Loop BB2_248 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	xvld	$xr0, $t6, -32
	xvld	$xr1, $t6, 0
	xvfmul.d	$xr0, $xr3, $xr0
	xvfmul.d	$xr1, $xr3, $xr1
	xvst	$xr0, $t6, -32
	xvst	$xr1, $t6, 0
	addi.d	$t8, $t8, -8
	add.d	$t6, $t6, $t3
	bnez	$t8, .LBB2_250
# %bb.251:                              # %middle.block
                                        #   in Loop: Header=BB2_248 Depth=5
	move	$t8, $t1
	beq	$t1, $a4, .LBB2_247
	b	.LBB2_253
	.p2align	4, , 16
.LBB2_252:                              #   in Loop: Header=BB2_248 Depth=5
	move	$t8, $zero
	move	$t7, $t6
.LBB2_253:                              # %for.body6082.us.us.preheader
                                        #   in Loop: Header=BB2_248 Depth=5
	ld.d	$t6, $sp, 832                   # 8-byte Folded Reload
	alsl.d	$t6, $t7, $t6, 3
	sub.d	$t8, $a4, $t8
	.p2align	4, , 16
.LBB2_254:                              # %for.body6082.us.us
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_245 Depth=4
                                        #           Parent Loop BB2_248 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	fld.d	$fa0, $t6, 0
	fmul.d	$fa0, $ft0, $fa0
	fst.d	$fa0, $t6, 0
	add.d	$t7, $t7, $a3
	addi.w	$t8, $t8, -1
	add.d	$t6, $t6, $t4
	bnez	$t8, .LBB2_254
	b	.LBB2_247
.LBB2_255:                              # %cleanup
	move	$a0, $zero
	ld.d	$s8, $sp, 888                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 896                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 904                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 912                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 920                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 928                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 936                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 944                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 952                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 960                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 968                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 976
	ret
.Lfunc_end2:
	.size	hypre_StructMatvecCompute, .Lfunc_end2-hypre_StructMatvecCompute
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI2_0:
	.word	.LBB2_68-.LJTI2_0
	.word	.LBB2_70-.LJTI2_0
	.word	.LBB2_113-.LJTI2_0
	.word	.LBB2_133-.LJTI2_0
	.word	.LBB2_89-.LJTI2_0
	.word	.LBB2_185-.LJTI2_0
	.word	.LBB2_211-.LJTI2_0
	.word	.LBB2_155-.LJTI2_0
                                        # -- End function
	.text
	.globl	hypre_StructMatvecDestroy       # -- Begin function hypre_StructMatvecDestroy
	.p2align	5
	.type	hypre_StructMatvecDestroy,@function
hypre_StructMatvecDestroy:              # @hypre_StructMatvecDestroy
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
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(hypre_StructVectorDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	pcaddu18i	$ra, %call36(hypre_ComputePkgDestroy)
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
	.size	hypre_StructMatvecDestroy, .Lfunc_end3-hypre_StructMatvecDestroy
                                        # -- End function
	.globl	hypre_StructMatvec              # -- Begin function hypre_StructMatvec
	.p2align	5
	.type	hypre_StructMatvec,@function
hypre_StructMatvec:                     # @hypre_StructMatvec
# %bb.0:                                # %hypre_StructMatvecDestroy.exit
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 120                  # 8-byte Folded Spill
	move	$s0, $a2
	fmov.d	$fs0, $fa1
	move	$s1, $a1
	move	$s2, $a0
	fmov.d	$fs1, $fa0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 24
	ori	$s4, $zero, 1
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	ld.d	$s3, $s2, 8
	ld.d	$a1, $s2, 24
	move	$fp, $a0
	addi.d	$a2, $sp, 112
	addi.d	$a3, $sp, 104
	addi.d	$a4, $sp, 96
	addi.d	$a5, $sp, 88
	addi.d	$a6, $sp, 80
	addi.d	$a7, $sp, 72
	move	$a0, $s3
	pcaddu18i	$ra, %call36(hypre_CreateComputeInfo)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 112
	ld.d	$a1, $sp, 104
	ld.d	$a4, $sp, 96
	ld.d	$a5, $sp, 88
	ld.d	$a6, $sp, 80
	ld.d	$a7, $sp, 72
	ld.d	$a3, $s1, 16
	lu32i.d	$a2, 1
	st.d	$a2, $sp, 60
	st.w	$s4, $sp, 68
	addi.d	$a2, $sp, 48
	st.d	$a2, $sp, 32
	st.d	$s4, $sp, 24
	st.d	$a3, $sp, 16
	st.d	$s3, $sp, 8
	addi.d	$t0, $sp, 60
	addi.d	$a2, $sp, 60
	addi.d	$a3, $sp, 60
	st.d	$t0, $sp, 0
	pcaddu18i	$ra, %call36(hypre_ComputePkgCreate)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixRef)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_StructVectorRef)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 48
	st.d	$a0, $fp, 8
	st.d	$a1, $fp, 16
	move	$a0, $fp
	fmov.d	$fa0, $fs1
	move	$a1, $s2
	move	$a2, $s1
	fmov.d	$fa1, $fs0
	move	$a3, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatvecCompute)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(hypre_StructMatrixDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(hypre_StructVectorDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	pcaddu18i	$ra, %call36(hypre_ComputePkgDestroy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fld.d	$fs1, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 128                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.Lfunc_end4:
	.size	hypre_StructMatvec, .Lfunc_end4-hypre_StructMatvec
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
