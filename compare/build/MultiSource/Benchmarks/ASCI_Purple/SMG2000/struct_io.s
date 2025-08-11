	.file	"struct_io.c"
	.text
	.globl	hypre_PrintBoxArrayData         # -- Begin function hypre_PrintBoxArrayData
	.p2align	5
	.type	hypre_PrintBoxArrayData,@function
hypre_PrintBoxArrayData:                # @hypre_PrintBoxArrayData
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
	ld.w	$a5, $a1, 8
	ori	$a6, $zero, 1
	st.d	$a4, $sp, 88                    # 8-byte Folded Spill
	st.d	$a3, $sp, 112                   # 8-byte Folded Spill
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	blt	$a5, $a6, .LBB0_17
# %bb.1:                                # %for.body.lr.ph
	move	$s3, $a0
	move	$s4, $zero
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                # %for.end266
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	mulw.d.w	$a0, $a1, $a0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a2, $a1, 8
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	mul.d	$a0, $a0, $a3
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a3
	addi.d	$s4, $s4, 1
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	alsl.d	$a3, $a0, $a3, 3
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	bge	$s4, $a2, .LBB0_17
.LBB0_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
                                        #       Child Loop BB0_12 Depth 3
                                        #         Child Loop BB0_14 Depth 4
                                        #           Child Loop BB0_15 Depth 5
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	slli.d	$a2, $s4, 4
	alsl.d	$a2, $s4, $a2, 3
	add.d	$s0, $a0, $a2
	ld.w	$a3, $s0, 12
	ldx.w	$a0, $a0, $a2
	add.d	$s5, $a1, $a2
	sub.w	$a0, $a3, $a0
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	slt	$a1, $a5, $a0
	ld.w	$a2, $s0, 16
	ld.w	$a3, $s0, 4
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a5, $a1
	or	$a0, $a0, $a1
	sub.w	$a1, $a2, $a3
	slt	$a2, $a5, $a1
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $a5, $a2
	ld.w	$a3, $s0, 20
	ld.w	$a4, $s0, 8
	or	$a1, $a1, $a2
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	addi.w	$a0, $a1, 1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	sub.w	$a0, $a3, $a4
	slt	$a1, $a5, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a5, $a1
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	addi.d	$a1, $sp, 156
	move	$a0, $s5
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 164
	ori	$a0, $zero, 1
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	blt	$a1, $a0, .LBB0_2
# %bb.4:                                # %for.cond228.preheader.lr.ph
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.w	$a1, $sp, 160
	ori	$a0, $zero, 1
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	blt	$a1, $a0, .LBB0_2
# %bb.5:                                # %for.cond228.preheader.us.preheader
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.w	$a0, $s0, 4
	ld.w	$a1, $s0, 16
	move	$s2, $zero
	ld.w	$a7, $sp, 156
	ld.w	$a2, $s0, 0
	sub.w	$a1, $a1, $a0
	ld.d	$a6, $sp, 32                    # 8-byte Folded Reload
	slt	$a3, $a6, $a1
	maskeqz	$a1, $a1, $a3
	ld.w	$a4, $s0, 12
	masknez	$a3, $a6, $a3
	or	$a1, $a1, $a3
	addi.d	$a1, $a1, 1
	sub.w	$a3, $a4, $a2
	slt	$a4, $a6, $a3
	ld.w	$a5, $s5, 0
	maskeqz	$a3, $a3, $a4
	masknez	$a4, $a6, $a4
	or	$a3, $a3, $a4
	sub.d	$a2, $a5, $a2
	ld.w	$a4, $s5, 4
	ld.w	$a5, $s5, 8
	ld.w	$a6, $s0, 8
	addi.d	$a3, $a3, 1
	sub.d	$a0, $a4, $a0
	sub.d	$t0, $a3, $a7
	sub.d	$a4, $a5, $a6
	ld.d	$a6, $sp, 104                   # 8-byte Folded Reload
	sub.d	$a5, $a1, $a6
	mulw.d.w	$a5, $a3, $a5
	st.d	$a5, $sp, 72                    # 8-byte Folded Spill
	mul.d	$a1, $a1, $a4
	add.d	$a0, $a0, $a1
	mul.d	$a0, $a0, $a3
	add.w	$a2, $a2, $a0
	addi.d	$a0, $a6, -1
	st.d	$t0, $sp, 96                    # 8-byte Folded Spill
	mul.d	$a0, $t0, $a0
	add.d	$a0, $a3, $a0
	st.d	$a7, $sp, 128                   # 8-byte Folded Spill
	sub.d	$a0, $a0, $a7
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	mul.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$s7, $a0, 3
	b	.LBB0_8
	.p2align	4, , 16
.LBB0_6:                                # %for.cond231.preheader.us146.preheader
                                        #   in Loop: Header=BB0_8 Depth=2
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	add.d	$a2, $a0, $a2
.LBB0_7:                                # %for.cond228.for.end257_crit_edge.us
                                        #   in Loop: Header=BB0_8 Depth=2
	addi.w	$s2, $s2, 1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	add.w	$a2, $a2, $a0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	beq	$s2, $a0, .LBB0_2
.LBB0_8:                                # %for.cond228.preheader.us
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_12 Depth 3
                                        #         Child Loop BB0_14 Depth 4
                                        #           Child Loop BB0_15 Depth 5
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB0_6
# %bb.9:                                # %for.cond231.preheader.us.us.preheader
                                        #   in Loop: Header=BB0_8 Depth=2
	move	$s0, $zero
	b	.LBB0_12
	.p2align	4, , 16
.LBB0_10:                               # %for.cond234.preheader.us132.us.preheader
                                        #   in Loop: Header=BB0_12 Depth=3
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	add.d	$a2, $a0, $a2
.LBB0_11:                               # %for.cond231.for.end251_crit_edge.us.us
                                        #   in Loop: Header=BB0_12 Depth=3
	addi.w	$s0, $s0, 1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	add.w	$a2, $a0, $a2
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB0_7
.LBB0_12:                               # %for.cond231.preheader.us.us
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_8 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_14 Depth 4
                                        #           Child Loop BB0_15 Depth 5
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	blez	$a0, .LBB0_10
# %bb.13:                               # %for.cond234.preheader.us.us.us.preheader
                                        #   in Loop: Header=BB0_12 Depth=3
	move	$s8, $zero
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	alsl.d	$fp, $a2, $a0, 3
	.p2align	4, , 16
.LBB0_14:                               # %for.cond234.preheader.us.us.us
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_8 Depth=2
                                        #       Parent Loop BB0_12 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_15 Depth 5
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	move	$s6, $zero
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
	st.d	$fp, $sp, 136                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB0_15:                               # %for.body236.us.us.us
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_8 Depth=2
                                        #       Parent Loop BB0_12 Depth=3
                                        #         Parent Loop BB0_14 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.w	$a0, $s5, 0
	ld.w	$a1, $s5, 4
	ld.w	$a2, $s5, 8
	ld.d	$a7, $fp, 0
	add.w	$a3, $a0, $s8
	add.w	$a4, $a1, $s0
	add.w	$a5, $a2, $s2
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	move	$a0, $s3
	move	$a2, $s4
	move	$a6, $s6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.w	$s6, $s6, 1
	addi.d	$s1, $s1, -1
	add.d	$fp, $fp, $s7
	bnez	$s1, .LBB0_15
# %bb.16:                               # %for.cond234.for.end_crit_edge.us.us.us
                                        #   in Loop: Header=BB0_14 Depth=4
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	addi.w	$s8, $s8, 1
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
	addi.d	$fp, $fp, 8
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	bne	$s8, $a0, .LBB0_14
	b	.LBB0_11
.LBB0_17:                               # %for.end270
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
.Lfunc_end0:
	.size	hypre_PrintBoxArrayData, .Lfunc_end0-hypre_PrintBoxArrayData
                                        # -- End function
	.globl	hypre_ReadBoxArrayData          # -- Begin function hypre_ReadBoxArrayData
	.p2align	5
	.type	hypre_ReadBoxArrayData,@function
hypre_ReadBoxArrayData:                 # @hypre_ReadBoxArrayData
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	st.d	$s3, $sp, 192                   # 8-byte Folded Spill
	st.d	$s4, $sp, 184                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	st.d	$s6, $sp, 168                   # 8-byte Folded Spill
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
	ld.w	$a5, $a1, 8
	ori	$a6, $zero, 1
	st.d	$a4, $sp, 104                   # 8-byte Folded Spill
	st.d	$a3, $sp, 128                   # 8-byte Folded Spill
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	blt	$a5, $a6, .LBB1_17
# %bb.1:                                # %for.body.lr.ph
	move	$s3, $a0
	move	$a4, $zero
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	bstrpick.d	$s6, $a0, 31, 0
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_2:                                # %for.end260
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	mulw.d.w	$a0, $a1, $a0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a2, $a1, 8
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	mul.d	$a0, $a0, $a3
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a3
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a4, $a4, 1
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	alsl.d	$a3, $a0, $a3, 3
	st.d	$a3, $sp, 104                   # 8-byte Folded Spill
	bge	$a4, $a2, .LBB1_17
.LBB1_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_8 Depth 2
                                        #       Child Loop BB1_12 Depth 3
                                        #         Child Loop BB1_14 Depth 4
                                        #           Child Loop BB1_15 Depth 5
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	slli.d	$a2, $a4, 4
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	alsl.d	$a2, $a4, $a2, 3
	add.d	$s4, $a0, $a2
	ld.w	$a3, $s4, 12
	ldx.w	$a0, $a0, $a2
	add.d	$fp, $a1, $a2
	sub.w	$a0, $a3, $a0
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	slt	$a1, $a5, $a0
	ld.w	$a2, $s4, 16
	ld.w	$a3, $s4, 4
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a5, $a1
	or	$a0, $a0, $a1
	sub.w	$a1, $a2, $a3
	slt	$a2, $a5, $a1
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $a5, $a2
	ld.w	$a3, $s4, 20
	ld.w	$a4, $s4, 8
	or	$a1, $a1, $a2
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	addi.w	$a0, $a1, 1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	sub.w	$a0, $a3, $a4
	slt	$a1, $a5, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a5, $a1
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a1, $sp, 140
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 148
	ori	$a0, $zero, 1
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	blt	$a1, $a0, .LBB1_2
# %bb.4:                                # %for.cond228.preheader.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a1, $sp, 144
	ori	$a0, $zero, 1
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	blt	$a1, $a0, .LBB1_2
# %bb.5:                                # %for.cond228.preheader.us.preheader
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a0, $s4, 4
	ld.w	$a1, $s4, 16
	move	$t0, $zero
	ld.w	$s8, $sp, 140
	ld.w	$a2, $s4, 0
	sub.w	$a1, $a1, $a0
	ld.d	$a6, $sp, 32                    # 8-byte Folded Reload
	slt	$a3, $a6, $a1
	maskeqz	$a1, $a1, $a3
	ld.w	$a4, $s4, 12
	masknez	$a3, $a6, $a3
	or	$a1, $a1, $a3
	addi.d	$a1, $a1, 1
	sub.w	$a3, $a4, $a2
	slt	$a4, $a6, $a3
	maskeqz	$a3, $a3, $a4
	ld.w	$a5, $fp, 0
	masknez	$a4, $a6, $a4
	or	$a3, $a3, $a4
	addi.d	$a3, $a3, 1
	sub.d	$a2, $a5, $a2
	ld.w	$a4, $fp, 4
	sub.d	$t1, $a3, $s8
	ld.w	$a5, $fp, 8
	ld.w	$a6, $s4, 8
	sub.d	$a0, $a4, $a0
	ld.d	$a7, $sp, 120                   # 8-byte Folded Reload
	sub.d	$a4, $a1, $a7
	mulw.d.w	$a4, $a3, $a4
	st.d	$a4, $sp, 80                    # 8-byte Folded Spill
	sub.d	$a4, $a5, $a6
	mul.d	$a1, $a1, $a4
	add.d	$a0, $a0, $a1
	mul.d	$a0, $a0, $a3
	add.w	$fp, $a2, $a0
	addi.d	$a0, $a7, -1
	st.d	$t1, $sp, 112                   # 8-byte Folded Spill
	mul.d	$a0, $t1, $a0
	add.d	$a0, $a3, $a0
	sub.d	$a0, $a0, $s8
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	mul.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$s5, $a0, 3
	b	.LBB1_8
	.p2align	4, , 16
.LBB1_6:                                # %for.cond231.preheader.us136.preheader
                                        #   in Loop: Header=BB1_8 Depth=2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	add.d	$fp, $a0, $fp
.LBB1_7:                                # %for.cond228.for.end251_crit_edge.us
                                        #   in Loop: Header=BB1_8 Depth=2
	ld.d	$t0, $sp, 96                    # 8-byte Folded Reload
	addi.w	$t0, $t0, 1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	add.w	$fp, $fp, $a0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	beq	$t0, $a0, .LBB1_2
.LBB1_8:                                # %for.cond228.preheader.us
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_12 Depth 3
                                        #         Child Loop BB1_14 Depth 4
                                        #           Child Loop BB1_15 Depth 5
	st.d	$t0, $sp, 96                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	blt	$s8, $a0, .LBB1_6
# %bb.9:                                # %for.cond231.preheader.us.us.preheader
                                        #   in Loop: Header=BB1_8 Depth=2
	move	$s0, $zero
	b	.LBB1_12
	.p2align	4, , 16
.LBB1_10:                               # %for.cond234.preheader.us123.us.preheader
                                        #   in Loop: Header=BB1_12 Depth=3
	add.d	$fp, $s8, $fp
.LBB1_11:                               # %for.cond231.for.end245_crit_edge.us.us
                                        #   in Loop: Header=BB1_12 Depth=3
	addi.w	$s0, $s0, 1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	add.w	$fp, $a0, $fp
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB1_7
.LBB1_12:                               # %for.cond231.preheader.us.us
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_8 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_14 Depth 4
                                        #           Child Loop BB1_15 Depth 5
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	blez	$a0, .LBB1_10
# %bb.13:                               # %for.cond234.preheader.us.us.us.preheader
                                        #   in Loop: Header=BB1_12 Depth=3
	move	$s1, $zero
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	alsl.d	$s2, $fp, $a0, 3
	.p2align	4, , 16
.LBB1_14:                               # %for.cond234.preheader.us.us.us
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_8 Depth=2
                                        #       Parent Loop BB1_12 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB1_15 Depth 5
	move	$s7, $s6
	move	$s4, $s2
	.p2align	4, , 16
.LBB1_15:                               # %for.body236.us.us.us
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_8 Depth=2
                                        #       Parent Loop BB1_12 Depth=3
                                        #         Parent Loop BB1_14 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	addi.d	$a2, $sp, 136
	addi.d	$a3, $sp, 136
	addi.d	$a4, $sp, 136
	addi.d	$a5, $sp, 136
	addi.d	$a6, $sp, 136
	move	$a0, $s3
	move	$a7, $s4
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$s7, $s7, -1
	add.d	$s4, $s4, $s5
	bnez	$s7, .LBB1_15
# %bb.16:                               # %for.cond234.for.end_crit_edge.us.us.us
                                        #   in Loop: Header=BB1_14 Depth=4
	addi.d	$fp, $fp, 1
	addi.w	$s1, $s1, 1
	addi.d	$s2, $s2, 8
	bne	$s1, $s8, .LBB1_14
	b	.LBB1_11
.LBB1_17:                               # %for.end264
	move	$a0, $zero
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.Lfunc_end1:
	.size	hypre_ReadBoxArrayData, .Lfunc_end1-hypre_ReadBoxArrayData
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d: (%d, %d, %d; %d) %e\n"
	.size	.L.str, 25

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"%d: (%d, %d, %d; %d) %le\n"
	.size	.L.str.1, 26

	.section	".note.GNU-stack","",@progbits
	.addrsig
