	.file	"laplace.c"
	.text
	.globl	GenerateSeqLaplacian            # -- Begin function GenerateSeqLaplacian
	.p2align	5
	.type	GenerateSeqLaplacian,@function
GenerateSeqLaplacian:                   # @GenerateSeqLaplacian
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
	st.d	$a6, $sp, 64                    # 8-byte Folded Spill
	st.d	$a5, $sp, 56                    # 8-byte Folded Spill
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	move	$s5, $a3
	move	$s6, $a2
	move	$s7, $a1
	move	$s8, $a0
	mul.d	$s0, $a1, $a0
	mul.w	$s2, $s0, $a2
	addi.w	$a0, $s2, 1
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a1, $zero, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a1, $zero, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a1, $zero, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	blt	$s2, $a1, .LBB0_5
# %bb.1:                                # %for.body.preheader
	ori	$a2, $zero, 12
	bgeu	$s2, $a2, .LBB0_64
# %bb.2:
	move	$a6, $zero
.LBB0_3:                                # %for.body.preheader304
	alsl.d	$a2, $a6, $fp, 3
	alsl.d	$a3, $a6, $a0, 3
	alsl.d	$a4, $a6, $s1, 3
	sub.d	$a6, $s2, $a6
	lu52i.d	$a5, $zero, 1023
	.p2align	4, , 16
.LBB0_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	st.d	$zero, $a4, 0
	st.d	$zero, $a3, 0
	st.d	$a5, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, 8
	addi.d	$a6, $a6, -1
	addi.d	$a4, $a4, 8
	bnez	$a6, .LBB0_4
.LBB0_5:                                # %for.end
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	st.w	$zero, $s3, 0
	blt	$s6, $a1, .LBB0_25
# %bb.6:                                # %for.cond13.preheader.lr.ph
	ori	$a0, $zero, 1
	blt	$s7, $a0, .LBB0_25
# %bb.7:                                # %for.cond13.preheader.us.preheader
	move	$t0, $zero
	addi.d	$a1, $s8, -1
	sltu	$a1, $zero, $a1
	addi.d	$a2, $s3, 4
	addi.d	$a3, $s8, -2
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a3, $a3, 2
	ori	$a4, $zero, 2
	ori	$a5, $zero, 1
	b	.LBB0_9
	.p2align	4, , 16
.LBB0_8:                                # %for.cond13.for.inc69_crit_edge.us
                                        #   in Loop: Header=BB0_9 Depth=1
	move	$t0, $a6
	beq	$a6, $s6, .LBB0_25
.LBB0_9:                                # %for.cond13.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #       Child Loop BB0_22 Depth 3
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_16 Depth 3
	addi.w	$a6, $t0, 1
	blt	$s8, $a0, .LBB0_8
# %bb.10:                               # %for.cond16.preheader.us.us.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	move	$a7, $zero
	sltui	$t0, $t0, 1
	sub.d	$t0, $a4, $t0
	slt	$t1, $a6, $s6
	addi.d	$t1, $t1, 1
	add.d	$t2, $t1, $a1
	b	.LBB0_13
	.p2align	4, , 16
.LBB0_11:                               #   in Loop: Header=BB0_13 Depth=2
	addi.w	$a5, $a5, 1
.LBB0_12:                               # %for.cond16.for.inc66_crit_edge.us.us
                                        #   in Loop: Header=BB0_13 Depth=2
	beq	$a7, $s7, .LBB0_8
.LBB0_13:                               # %for.cond16.preheader.us.us
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_22 Depth 3
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_16 Depth 3
	alsl.d	$t4, $a5, $s3, 2
	ld.w	$t5, $t4, -4
	sltu	$t3, $zero, $a7
	addi.w	$a7, $a7, 1
	add.d	$t3, $t0, $t3
	add.d	$t5, $t5, $t3
	bge	$a7, $s7, .LBB0_17
# %bb.14:                               # %if.end40.us.us.us.peel
                                        #   in Loop: Header=BB0_13 Depth=2
	add.d	$t5, $t5, $t2
	st.w	$t5, $t4, 0
	beq	$s8, $a0, .LBB0_11
# %bb.15:                               # %for.body18.us.us.us.peel.next
                                        #   in Loop: Header=BB0_13 Depth=2
	slli.d	$t4, $a5, 2
	ldx.w	$t5, $s3, $t4
	alsl.d	$t4, $a5, $a2, 2
	add.w	$a5, $a3, $a5
	ori	$t6, $zero, 1
	.p2align	4, , 16
.LBB0_16:                               # %if.end40.us.us.us
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.w	$t6, $t6, 1
	slt	$t7, $t6, $s8
	add.d	$t7, $t7, $t3
	add.d	$t5, $t7, $t5
	add.d	$t5, $t5, $t1
	addi.d	$t5, $t5, 1
	st.w	$t5, $t4, 0
	addi.d	$t4, $t4, 4
	bne	$s8, $t6, .LBB0_16
	b	.LBB0_12
	.p2align	4, , 16
.LBB0_17:                               # %for.body18.lr.ph.split.us193.us
                                        #   in Loop: Header=BB0_13 Depth=2
	bge	$a6, $s6, .LBB0_20
# %bb.18:                               # %if.end40.us156.us.us.peel
                                        #   in Loop: Header=BB0_13 Depth=2
	bne	$s8, $a0, .LBB0_23
# %bb.19:                               # %if.end47.us161.us.us.peel.thread
                                        #   in Loop: Header=BB0_13 Depth=2
	addi.w	$a5, $a5, 1
	addi.d	$t3, $t5, 1
	st.w	$t3, $t4, 0
	b	.LBB0_12
	.p2align	4, , 16
.LBB0_20:                               # %if.end40.us183.us.peel
                                        #   in Loop: Header=BB0_13 Depth=2
	st.w	$t5, $t4, 0
	beq	$s8, $a0, .LBB0_11
# %bb.21:                               # %for.body18.us173.us.peel.next
                                        #   in Loop: Header=BB0_13 Depth=2
	addi.d	$t5, $t5, 1
	st.w	$t5, $t4, 0
	slli.d	$t4, $a5, 2
	ldx.w	$t5, $s3, $t4
	alsl.d	$t4, $a5, $a2, 2
	add.w	$a5, $a3, $a5
	ori	$t6, $zero, 1
	.p2align	4, , 16
.LBB0_22:                               # %if.end40.us183.us
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.w	$t6, $t6, 1
	slt	$t7, $t6, $s8
	add.d	$t7, $t7, $t3
	add.d	$t5, $t7, $t5
	addi.d	$t5, $t5, 1
	st.w	$t5, $t4, 0
	addi.d	$t4, $t4, 4
	bne	$s8, $t6, .LBB0_22
	b	.LBB0_12
.LBB0_23:                               # %for.body18.us146.us.us.peel.next
                                        #   in Loop: Header=BB0_13 Depth=2
	addi.d	$t5, $t5, 2
	st.w	$t5, $t4, 0
	slli.d	$t4, $a5, 2
	ldx.w	$t5, $s3, $t4
	alsl.d	$t4, $a5, $a2, 2
	add.w	$a5, $a3, $a5
	ori	$t6, $zero, 1
	.p2align	4, , 16
.LBB0_24:                               # %if.end40.us156.us.us
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.w	$t6, $t6, 1
	slt	$t7, $t6, $s8
	add.d	$t7, $t7, $t3
	add.d	$t5, $t7, $t5
	addi.d	$t5, $t5, 2
	st.w	$t5, $t4, 0
	addi.d	$t4, $t4, 4
	bne	$s8, $t6, .LBB0_24
	b	.LBB0_12
.LBB0_25:                               # %for.end71
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	slli.d	$fp, $s2, 2
	ldx.w	$a0, $s3, $fp
	alsl.d	$a1, $s2, $s3, 2
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	ldx.w	$a2, $s3, $fp
	move	$s1, $a0
	ori	$a1, $zero, 8
	move	$a0, $a2
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$fp, $a0
	blt	$s6, $a1, .LBB0_57
# %bb.26:                               # %for.cond81.preheader.lr.ph
	ori	$a0, $zero, 1
	blt	$s7, $a0, .LBB0_57
# %bb.27:                               # %for.cond81.preheader.us.preheader
	move	$a5, $zero
	move	$t2, $zero
	move	$a3, $zero
	sub.d	$a0, $zero, $s8
	sub.d	$a1, $zero, $s0
	ori	$a2, $zero, 1
	b	.LBB0_30
	.p2align	4, , 16
.LBB0_28:                               #   in Loop: Header=BB0_30 Depth=1
	move	$a7, $t2
	move	$t1, $a5
.LBB0_29:                               # %for.cond81.for.inc165_crit_edge.us
                                        #   in Loop: Header=BB0_30 Depth=1
	move	$a5, $t1
	move	$t2, $a7
	move	$a3, $a4
	beq	$a4, $s6, .LBB0_57
.LBB0_30:                               # %for.cond81.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_34 Depth 2
                                        #       Child Loop BB0_47 Depth 3
	addi.w	$a4, $a3, 1
	blt	$s8, $a2, .LBB0_28
# %bb.31:                               # %for.cond84.preheader.us.us.preheader
                                        #   in Loop: Header=BB0_30 Depth=1
	move	$a6, $zero
	b	.LBB0_34
	.p2align	4, , 16
.LBB0_32:                               # %for.cond84.for.inc162_crit_edge.us.us.loopexit
                                        #   in Loop: Header=BB0_34 Depth=2
	add.d	$a5, $a5, $t4
	addi.d	$t1, $a5, -1
.LBB0_33:                               # %for.cond84.for.inc162_crit_edge.us.us
                                        #   in Loop: Header=BB0_34 Depth=2
	move	$a5, $t1
	move	$t2, $a7
	move	$a6, $t0
	beq	$t0, $s7, .LBB0_29
.LBB0_34:                               # %for.cond84.preheader.us.us
                                        #   Parent Loop BB0_30 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_47 Depth 3
	slli.d	$a7, $t2, 2
	fld.d	$fa0, $s5, 0
	stx.w	$a5, $s1, $a7
	addi.w	$a7, $t2, 1
	slli.d	$t0, $t2, 3
	fstx.d	$fa0, $fp, $t0
	beqz	$a3, .LBB0_36
# %bb.35:                               # %if.then94.us.us.peel
                                        #   in Loop: Header=BB0_34 Depth=2
	sub.d	$t0, $a5, $s0
	slli.d	$t1, $a7, 2
	fld.d	$fa0, $s5, 24
	stx.w	$t0, $s1, $t1
	slli.d	$a7, $a7, 3
	addi.w	$t0, $t2, 2
	fstx.d	$fa0, $fp, $a7
	move	$a7, $t0
.LBB0_36:                               # %if.end103.us.us.peel
                                        #   in Loop: Header=BB0_34 Depth=2
	beqz	$a6, .LBB0_38
# %bb.37:                               # %if.then105.us.us.peel
                                        #   in Loop: Header=BB0_34 Depth=2
	sub.d	$t0, $a5, $s8
	slli.d	$t1, $a7, 2
	fld.d	$fa0, $s5, 16
	stx.w	$t0, $s1, $t1
	slli.d	$t0, $a7, 3
	addi.w	$a7, $a7, 1
	fstx.d	$fa0, $fp, $t0
.LBB0_38:                               # %if.end123.us.us.peel
                                        #   in Loop: Header=BB0_34 Depth=2
	addi.d	$t1, $a5, 1
	bne	$s8, $a2, .LBB0_42
# %bb.39:                               # %if.end134.us.us.peel
                                        #   in Loop: Header=BB0_34 Depth=2
	addi.w	$t0, $a6, 1
	bge	$t0, $s7, .LBB0_43
.LBB0_40:                               # %if.then137.us.us.peel
                                        #   in Loop: Header=BB0_34 Depth=2
	add.d	$t2, $a5, $s8
	slli.d	$t3, $a7, 2
	fld.d	$fa0, $s5, 16
	stx.w	$t2, $s1, $t3
	slli.d	$t2, $a7, 3
	addi.w	$a7, $a7, 1
	fstx.d	$fa0, $fp, $t2
	blt	$a4, $s6, .LBB0_44
.LBB0_41:                               # %if.end157.us.us.peel
                                        #   in Loop: Header=BB0_34 Depth=2
	beq	$s8, $a2, .LBB0_33
	b	.LBB0_45
	.p2align	4, , 16
.LBB0_42:                               # %if.then126.us.us.peel
                                        #   in Loop: Header=BB0_34 Depth=2
	slli.d	$t0, $a7, 2
	fld.d	$fa0, $s5, 8
	stx.w	$t1, $s1, $t0
	slli.d	$t0, $a7, 3
	addi.w	$a7, $a7, 1
	fstx.d	$fa0, $fp, $t0
	addi.w	$t0, $a6, 1
	blt	$t0, $s7, .LBB0_40
.LBB0_43:                               # %if.end145.us.us.peel
                                        #   in Loop: Header=BB0_34 Depth=2
	bge	$a4, $s6, .LBB0_41
.LBB0_44:                               # %if.then148.us.us.peel
                                        #   in Loop: Header=BB0_34 Depth=2
	add.d	$t2, $a5, $s0
	slli.d	$t3, $a7, 2
	fld.d	$fa0, $s5, 24
	stx.w	$t2, $s1, $t3
	slli.d	$t2, $a7, 3
	addi.w	$a7, $a7, 1
	fstx.d	$fa0, $fp, $t2
	beq	$s8, $a2, .LBB0_33
.LBB0_45:                               # %for.body86.us.us.preheader
                                        #   in Loop: Header=BB0_34 Depth=2
	add.d	$t1, $s0, $a5
	add.d	$t2, $s8, $a5
	add.d	$t3, $a0, $a5
	add.d	$t5, $a1, $a5
	ori	$t4, $zero, 2
	b	.LBB0_47
	.p2align	4, , 16
.LBB0_46:                               # %if.end157.us.us
                                        #   in Loop: Header=BB0_47 Depth=3
	addi.w	$t4, $t4, 1
	add.w	$t6, $a0, $t4
	beq	$t6, $a2, .LBB0_32
.LBB0_47:                               # %for.body86.us.us
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_34 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t6, $a5, $t4
	addi.d	$t8, $t6, -1
	slli.d	$t7, $a7, 2
	fld.d	$fa0, $s5, 0
	stx.w	$t8, $s1, $t7
	addi.w	$t7, $a7, 1
	slli.d	$ra, $a7, 3
	fstx.d	$fa0, $fp, $ra
	beqz	$a3, .LBB0_49
# %bb.48:                               # %if.then94.us.us
                                        #   in Loop: Header=BB0_47 Depth=3
	add.d	$ra, $t5, $t4
	addi.d	$ra, $ra, -1
	slli.d	$s4, $t7, 2
	fld.d	$fa0, $s5, 24
	stx.w	$ra, $s1, $s4
	slli.d	$t7, $t7, 3
	addi.w	$a7, $a7, 2
	fstx.d	$fa0, $fp, $t7
	move	$t7, $a7
.LBB0_49:                               # %if.end103.us.us
                                        #   in Loop: Header=BB0_47 Depth=3
	beqz	$a6, .LBB0_51
# %bb.50:                               # %if.then105.us.us
                                        #   in Loop: Header=BB0_47 Depth=3
	add.d	$a7, $t3, $t4
	addi.d	$a7, $a7, -1
	slli.d	$s4, $t7, 2
	fld.d	$fa0, $s5, 16
	stx.w	$a7, $s1, $s4
	slli.d	$a7, $t7, 3
	addi.w	$t7, $t7, 1
	fstx.d	$fa0, $fp, $a7
.LBB0_51:                               # %if.end123.us.us
                                        #   in Loop: Header=BB0_47 Depth=3
	slli.d	$a7, $t7, 2
	addi.d	$t8, $t8, -1
	fld.d	$fa0, $s5, 8
	stx.w	$t8, $s1, $a7
	addi.w	$a7, $t7, 1
	slli.d	$t8, $t7, 3
	fstx.d	$fa0, $fp, $t8
	bge	$t4, $s8, .LBB0_54
# %bb.52:                               # %if.then126.us.us
                                        #   in Loop: Header=BB0_47 Depth=3
	slli.d	$t8, $a7, 2
	fld.d	$fa0, $s5, 8
	stx.w	$t6, $s1, $t8
	slli.d	$a7, $a7, 3
	addi.w	$t6, $t7, 2
	fstx.d	$fa0, $fp, $a7
	move	$a7, $t6
	blt	$t0, $s7, .LBB0_55
.LBB0_53:                               # %if.end145.us.us
                                        #   in Loop: Header=BB0_47 Depth=3
	bge	$a4, $s6, .LBB0_46
	b	.LBB0_56
	.p2align	4, , 16
.LBB0_54:                               # %if.end134.us.us
                                        #   in Loop: Header=BB0_47 Depth=3
	bge	$t0, $s7, .LBB0_53
.LBB0_55:                               # %if.then137.us.us
                                        #   in Loop: Header=BB0_47 Depth=3
	add.d	$t6, $t2, $t4
	addi.d	$t6, $t6, -1
	slli.d	$t7, $a7, 2
	fld.d	$fa0, $s5, 16
	stx.w	$t6, $s1, $t7
	slli.d	$t6, $a7, 3
	addi.w	$a7, $a7, 1
	fstx.d	$fa0, $fp, $t6
	bge	$a4, $s6, .LBB0_46
.LBB0_56:                               # %if.then148.us.us
                                        #   in Loop: Header=BB0_47 Depth=3
	add.d	$t6, $t1, $t4
	addi.d	$t6, $t6, -1
	slli.d	$t7, $a7, 2
	fld.d	$fa0, $s5, 24
	stx.w	$t6, $s1, $t7
	slli.d	$t6, $a7, 3
	addi.w	$a7, $a7, 1
	fstx.d	$fa0, $fp, $t6
	b	.LBB0_46
.LBB0_57:                               # %for.end167
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a2, $a0, 0
	move	$a0, $s2
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_CSRMatrixCreate)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_SeqVectorCreate)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.d	$a0, $s6, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_SeqVectorCreate)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.d	$a0, $s7, 0
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	ori	$a0, $zero, 1
	blt	$s2, $a0, .LBB0_63
# %bb.58:                               # %for.body176.preheader
	ld.w	$a2, $s3, 0
	move	$a0, $zero
	b	.LBB0_60
	.p2align	4, , 16
.LBB0_59:                               # %for.cond174.loopexit
                                        #   in Loop: Header=BB0_60 Depth=1
	move	$a2, $a1
	beq	$a0, $s2, .LBB0_63
.LBB0_60:                               # %for.body176
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_62 Depth 2
	move	$a3, $a0
	addi.d	$a0, $a0, 1
	slli.d	$a1, $a0, 2
	ldx.w	$a1, $s3, $a1
	bge	$a2, $a1, .LBB0_59
# %bb.61:                               # %for.body184.lr.ph
                                        #   in Loop: Header=BB0_60 Depth=1
	slli.d	$a4, $a3, 3
	fldx.d	$fa0, $a5, $a4
	alsl.d	$a3, $a3, $a5, 3
	alsl.d	$a4, $a2, $fp, 3
	sub.d	$a2, $a1, $a2
	.p2align	4, , 16
.LBB0_62:                               # %for.body184
                                        #   Parent Loop BB0_60 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a4, 0
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a4, $a4, 8
	bnez	$a2, .LBB0_62
	b	.LBB0_59
.LBB0_63:                               # %for.end195
	move	$a0, $s2
	move	$s0, $a5
	pcaddu18i	$ra, %call36(hypre_SeqVectorCreate)
	jirl	$ra, $ra, 0
	st.d	$s0, $a0, 0
	st.d	$s3, $s5, 8
	st.d	$s1, $s5, 16
	st.d	$fp, $s5, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$s6, $a1, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	st.d	$s7, $a1, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.d	$a0, $a1, 0
	move	$a0, $s5
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
.LBB0_64:                               # %vector.memcheck
	sub.d	$a3, $a0, $s1
	ori	$a2, $zero, 64
	move	$a6, $zero
	bltu	$a3, $a2, .LBB0_3
# %bb.65:                               # %vector.memcheck
	sub.d	$a3, $fp, $s1
	bltu	$a3, $a2, .LBB0_3
# %bb.66:                               # %vector.memcheck
	sub.d	$a2, $fp, $a0
	ori	$a3, $zero, 64
	bltu	$a2, $a3, .LBB0_3
# %bb.67:                               # %vector.ph
	bstrpick.d	$a2, $s2, 30, 3
	slli.d	$a6, $a2, 3
	addi.d	$a2, $fp, 32
	addi.d	$a3, $a0, 32
	addi.d	$a4, $s1, 32
	xvrepli.b	$xr0, 0
	lu52i.d	$a5, $zero, 1023
	xvreplgr2vr.d	$xr1, $a5
	move	$a5, $a6
	.p2align	4, , 16
.LBB0_68:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a4, -32
	xvst	$xr0, $a4, 0
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	xvst	$xr1, $a2, -32
	xvst	$xr1, $a2, 0
	addi.d	$a5, $a5, -8
	addi.d	$a2, $a2, 64
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB0_68
# %bb.69:                               # %middle.block
	bne	$a6, $s2, .LBB0_3
	b	.LBB0_5
.Lfunc_end0:
	.size	GenerateSeqLaplacian, .Lfunc_end0-GenerateSeqLaplacian
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
