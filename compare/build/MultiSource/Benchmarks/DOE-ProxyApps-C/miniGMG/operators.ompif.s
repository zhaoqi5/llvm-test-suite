	.file	"operators.ompif.c"
	.text
	.globl	DoBufferCopy                    # -- Begin function DoBufferCopy
	.p2align	5
	.type	DoBufferCopy,@function
DoBufferCopy:                           # @DoBufferCopy
# %bb.0:                                # %entry
	alsl.d	$a4, $a1, $a0, 3
	ld.d	$a4, $a4, 1432
	ori	$a5, $zero, 88
	mul.d	$a3, $a3, $a5
	add.d	$a6, $a4, $a3
	ld.w	$a3, $a6, 24
	ld.wu	$t1, $a6, 12
	bltz	$a3, .LBB0_3
# %bb.1:                                # %if.then
	ld.d	$a4, $a0, 1776
	slli.d	$a3, $a3, 8
	add.d	$a3, $a4, $a3
	ld.d	$a3, $a3, 248
	ori	$a4, $zero, 216
	mul.d	$a4, $a1, $a4
	add.d	$a3, $a3, $a4
	ld.d	$a3, $a3, 176
	alsl.d	$a7, $a2, $a3, 3
	ld.w	$a3, $a6, 56
	addi.w	$t3, $t1, 0
	bltz	$a3, .LBB0_4
.LBB0_2:                                # %if.then123
	ld.d	$a0, $a0, 1776
	slli.d	$a3, $a3, 8
	add.d	$a0, $a0, $a3
	ld.d	$a0, $a0, 248
	ori	$a3, $zero, 216
	mul.d	$a1, $a1, $a3
	add.d	$a0, $a0, $a1
	ld.d	$a0, $a0, 176
	slli.d	$a1, $a2, 3
	ldx.d	$a0, $a0, $a1
	b	.LBB0_5
.LBB0_3:
	addi.d	$a7, $a6, 48
	ld.w	$a3, $a6, 56
	addi.w	$t3, $t1, 0
	bgez	$a3, .LBB0_2
.LBB0_4:
	ld.d	$a0, $a6, 80
.LBB0_5:                                # %if.end140
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
	ld.w	$a1, $a6, 16
	ld.w	$a2, $a6, 20
	ld.w	$t6, $a6, 28
	ld.w	$t0, $a6, 32
	ld.w	$s0, $a6, 36
	ld.w	$a3, $a6, 40
	ld.w	$a4, $a6, 44
	ld.w	$t8, $a6, 60
	ld.w	$t2, $a6, 64
	ld.w	$fp, $a6, 68
	ld.w	$a5, $a6, 72
	ld.w	$a6, $a6, 76
	ld.d	$a7, $a7, 0
	ori	$t4, $zero, 1
	beq	$t3, $t4, .LBB0_13
# %bb.6:                                # %if.end140
	ori	$t4, $zero, 4
	bne	$t3, $t4, .LBB0_27
# %bb.7:                                # %for.cond171.preheader
	ori	$t1, $zero, 1
	blt	$a2, $t1, .LBB0_45
# %bb.8:                                # %for.cond171.preheader
	blt	$a1, $t1, .LBB0_45
# %bb.9:                                # %for.cond174.preheader.us.preheader
	move	$t1, $zero
	mul.d	$t3, $fp, $a6
	add.d	$t3, $t8, $t3
	mul.d	$t2, $t2, $a5
	add.w	$t2, $t3, $t2
	mul.d	$t3, $s0, $a4
	add.d	$t3, $t6, $t3
	mul.d	$t0, $t0, $a3
	add.w	$t0, $t3, $t0
	.p2align	4, , 16
.LBB0_10:                               # %for.cond174.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_11 Depth 2
	move	$t3, $a1
	move	$t4, $t0
	move	$t5, $t2
	.p2align	4, , 16
.LBB0_11:                               # %for.body176.us
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$t6, $t4, 3
	fldx.d	$fa0, $a7, $t6
	alsl.d	$t6, $t4, $a7, 3
	slli.d	$t7, $t5, 3
	fstx.d	$fa0, $a0, $t7
	fld.d	$fa0, $t6, 8
	alsl.d	$t7, $t5, $a0, 3
	fst.d	$fa0, $t7, 8
	fld.d	$fa0, $t6, 16
	fst.d	$fa0, $t7, 16
	fld.d	$fa0, $t6, 24
	fst.d	$fa0, $t7, 24
	add.w	$t5, $t5, $a5
	addi.d	$t3, $t3, -1
	add.w	$t4, $t4, $a3
	bnez	$t3, .LBB0_11
# %bb.12:                               # %for.cond174.for.inc218_crit_edge.us
                                        #   in Loop: Header=BB0_10 Depth=1
	addi.w	$t1, $t1, 1
	add.w	$t2, $t2, $a6
	add.w	$t0, $t0, $a4
	bne	$t1, $a2, .LBB0_10
	b	.LBB0_45
.LBB0_13:                               # %for.cond.preheader
	blt	$a2, $t4, .LBB0_45
# %bb.14:                               # %for.cond.preheader
	ori	$t1, $zero, 1
	blt	$a1, $t1, .LBB0_45
# %bb.15:                               # %for.cond147.preheader.us.preheader
	move	$t1, $zero
	addi.d	$s1, $a1, -1
	mul.d	$t3, $fp, $a6
	add.d	$t3, $t8, $t3
	add.w	$t4, $t3, $t2
	mul.d	$t5, $s0, $a4
	add.d	$t5, $t6, $t5
	add.w	$t6, $t5, $t0
	addi.d	$t7, $a5, -1
	sltu	$fp, $zero, $t7
	addi.d	$t7, $a3, -1
	sltu	$s0, $zero, $t7
	add.d	$t7, $t4, $s1
	srli.d	$t8, $s1, 32
	sltu	$s2, $zero, $t8
	add.d	$t8, $t6, $s1
	or	$fp, $fp, $s0
	or	$fp, $s2, $fp
	bstrpick.d	$s0, $a1, 30, 3
	slli.d	$s0, $s0, 3
	ori	$s1, $zero, 12
	ori	$s2, $zero, 64
	move	$s3, $t6
	move	$s4, $t4
	b	.LBB0_17
	.p2align	4, , 16
.LBB0_16:                               # %for.cond147.for.inc166_crit_edge.us
                                        #   in Loop: Header=BB0_17 Depth=1
	addi.w	$t1, $t1, 1
	add.w	$s4, $s4, $a6
	add.w	$s3, $s3, $a4
	add.d	$t3, $t3, $a6
	add.d	$t5, $t5, $a4
	beq	$t1, $a2, .LBB0_45
.LBB0_17:                               # %for.cond147.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_25 Depth 2
                                        #     Child Loop BB0_20 Depth 2
	bgeu	$a1, $s1, .LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=1
	move	$s5, $zero
.LBB0_19:                               # %for.body149.us.preheader
                                        #   in Loop: Header=BB0_17 Depth=1
	add.d	$s6, $t2, $s5
	mul.d	$s6, $a5, $s6
	add.w	$s6, $t3, $s6
	add.d	$s7, $t0, $s5
	mul.d	$s7, $a3, $s7
	add.w	$s7, $t5, $s7
	sub.d	$s5, $a1, $s5
	.p2align	4, , 16
.LBB0_20:                               # %for.body149.us
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$s8, $s7, 3
	fldx.d	$fa0, $a7, $s8
	slli.d	$s8, $s6, 3
	fstx.d	$fa0, $a0, $s8
	add.w	$s6, $s6, $a5
	addi.d	$s5, $s5, -1
	add.w	$s7, $s7, $a3
	bnez	$s5, .LBB0_20
	b	.LBB0_16
	.p2align	4, , 16
.LBB0_21:                               # %vector.scevcheck
                                        #   in Loop: Header=BB0_17 Depth=1
	mul.d	$s5, $a4, $t1
	add.w	$s6, $t6, $s5
	add.w	$s7, $s5, $t8
	move	$s5, $zero
	blt	$s7, $s6, .LBB0_19
# %bb.22:                               # %vector.scevcheck
                                        #   in Loop: Header=BB0_17 Depth=1
	mul.d	$s8, $a6, $t1
	add.w	$s7, $t4, $s8
	add.w	$s8, $s8, $t7
	slt	$s8, $s8, $s7
	or	$s8, $s8, $fp
	bnez	$s8, .LBB0_19
# %bb.23:                               # %vector.scevcheck
                                        #   in Loop: Header=BB0_17 Depth=1
	alsl.d	$s7, $s7, $a0, 3
	alsl.d	$s6, $s6, $a7, 3
	sub.d	$s6, $s7, $s6
	bltu	$s6, $s2, .LBB0_19
# %bb.24:                               # %vector.ph
                                        #   in Loop: Header=BB0_17 Depth=1
	move	$s5, $s3
	move	$s6, $s4
	move	$s7, $s0
	.p2align	4, , 16
.LBB0_25:                               # %vector.body
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	alsl.d	$s8, $s5, $a7, 3
	slli.d	$ra, $s5, 3
	xvldx	$xr0, $a7, $ra
	xvld	$xr1, $s8, 32
	alsl.d	$s8, $s6, $a0, 3
	slli.d	$ra, $s6, 3
	xvstx	$xr0, $a0, $ra
	xvst	$xr1, $s8, 32
	addi.d	$s7, $s7, -8
	addi.w	$s6, $s6, 8
	addi.w	$s5, $s5, 8
	bnez	$s7, .LBB0_25
# %bb.26:                               # %middle.block
                                        #   in Loop: Header=BB0_17 Depth=1
	move	$s5, $s0
	beq	$s0, $a1, .LBB0_16
	b	.LBB0_19
.LBB0_27:                               # %for.cond222.preheader
	ori	$t4, $zero, 1
	blt	$a2, $t4, .LBB0_45
# %bb.28:                               # %for.cond225.preheader.lr.ph
	blt	$a1, $t4, .LBB0_45
# %bb.29:                               # %for.cond225.preheader.us.preheader
	move	$t4, $zero
	addi.d	$t5, $t1, -1
	mul.d	$t7, $fp, $a6
	add.d	$t7, $t8, $t7
	mul.d	$t2, $t2, $a5
	add.w	$fp, $t7, $t2
	mul.d	$t2, $s0, $a4
	add.d	$t2, $t6, $t2
	mul.d	$t0, $t0, $a3
	add.w	$s2, $t2, $t0
	add.d	$t0, $fp, $t5
	st.d	$t0, $sp, 24                    # 8-byte Folded Spill
	add.d	$t0, $s2, $t5
	st.d	$t0, $sp, 16                    # 8-byte Folded Spill
	bstrpick.d	$t2, $t1, 30, 3
	slli.d	$t7, $t2, 3
	ori	$s0, $zero, 12
	ori	$s1, $zero, 64
	st.d	$s2, $sp, 32                    # 8-byte Folded Spill
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	b	.LBB0_31
	.p2align	4, , 16
.LBB0_30:                               # %for.cond225.for.inc257_crit_edge.us
                                        #   in Loop: Header=BB0_31 Depth=1
	addi.w	$t4, $t4, 1
	add.w	$fp, $fp, $a6
	add.w	$s2, $s2, $a4
	move	$t3, $a2
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	beq	$t4, $a2, .LBB0_45
.LBB0_31:                               # %for.cond225.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_34 Depth 2
                                        #       Child Loop BB0_43 Depth 3
                                        #       Child Loop BB0_37 Depth 3
	move	$a2, $t3
	ori	$t0, $zero, 1
	blt	$t3, $t0, .LBB0_30
# %bb.32:                               # %for.cond228.preheader.us.us.preheader
                                        #   in Loop: Header=BB0_31 Depth=1
	move	$s4, $zero
	mul.d	$t2, $a6, $t4
	ld.d	$t0, $sp, 40                    # 8-byte Folded Reload
	add.d	$s5, $t0, $t2
	mul.d	$t6, $a4, $t4
	ld.d	$t0, $sp, 32                    # 8-byte Folded Reload
	add.d	$s6, $t0, $t6
	ld.d	$t0, $sp, 24                    # 8-byte Folded Reload
	add.d	$s7, $t2, $t0
	ld.d	$t0, $sp, 16                    # 8-byte Folded Reload
	add.d	$s8, $t6, $t0
	move	$ra, $s2
	move	$t2, $fp
	b	.LBB0_34
	.p2align	4, , 16
.LBB0_33:                               # %for.cond228.for.inc254_crit_edge.us.us
                                        #   in Loop: Header=BB0_34 Depth=2
	addi.w	$s4, $s4, 1
	add.w	$t2, $t2, $a5
	add.w	$ra, $ra, $a3
	beq	$s4, $a1, .LBB0_30
.LBB0_34:                               # %for.cond228.preheader.us.us
                                        #   Parent Loop BB0_31 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_43 Depth 3
                                        #       Child Loop BB0_37 Depth 3
	bgeu	$t1, $s0, .LBB0_38
# %bb.35:                               #   in Loop: Header=BB0_34 Depth=2
	move	$t8, $zero
.LBB0_36:                               # %for.body230.us.us.preheader
                                        #   in Loop: Header=BB0_34 Depth=2
	sub.d	$t6, $t1, $t8
	.p2align	4, , 16
.LBB0_37:                               # %for.body230.us.us
                                        #   Parent Loop BB0_31 Depth=1
                                        #     Parent Loop BB0_34 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.w	$t0, $ra, $t8
	slli.d	$t0, $t0, 3
	fldx.d	$fa0, $a7, $t0
	add.w	$t0, $t2, $t8
	slli.d	$t0, $t0, 3
	fstx.d	$fa0, $a0, $t0
	addi.d	$t6, $t6, -1
	addi.d	$t8, $t8, 1
	bnez	$t6, .LBB0_37
	b	.LBB0_33
	.p2align	4, , 16
.LBB0_38:                               # %vector.scevcheck186
                                        #   in Loop: Header=BB0_34 Depth=2
	mul.d	$t8, $a5, $s4
	add.w	$t6, $s5, $t8
	add.w	$s3, $t8, $s7
	move	$t8, $zero
	blt	$s3, $t6, .LBB0_36
# %bb.39:                               # %vector.scevcheck186
                                        #   in Loop: Header=BB0_34 Depth=2
	mul.d	$t0, $a3, $s4
	add.w	$s3, $s6, $t0
	add.w	$t0, $t0, $s8
	blt	$t0, $s3, .LBB0_36
# %bb.40:                               # %vector.scevcheck186
                                        #   in Loop: Header=BB0_34 Depth=2
	srli.d	$t0, $t5, 32
	bnez	$t0, .LBB0_36
# %bb.41:                               # %vector.scevcheck186
                                        #   in Loop: Header=BB0_34 Depth=2
	alsl.d	$t0, $t6, $a0, 3
	alsl.d	$t6, $s3, $a7, 3
	sub.d	$t0, $t0, $t6
	bltu	$t0, $s1, .LBB0_36
# %bb.42:                               # %vector.body194.preheader
                                        #   in Loop: Header=BB0_34 Depth=2
	move	$t8, $ra
	move	$s3, $t2
	move	$t6, $t7
	.p2align	4, , 16
.LBB0_43:                               # %vector.body194
                                        #   Parent Loop BB0_31 Depth=1
                                        #     Parent Loop BB0_34 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	alsl.d	$t0, $t8, $a7, 3
	slli.d	$t3, $t8, 3
	xvldx	$xr0, $a7, $t3
	xvld	$xr1, $t0, 32
	alsl.d	$t0, $s3, $a0, 3
	slli.d	$t3, $s3, 3
	xvstx	$xr0, $a0, $t3
	xvst	$xr1, $t0, 32
	addi.d	$t6, $t6, -8
	addi.w	$s3, $s3, 8
	addi.w	$t8, $t8, 8
	bnez	$t6, .LBB0_43
# %bb.44:                               # %middle.block199
                                        #   in Loop: Header=BB0_34 Depth=2
	move	$t8, $t7
	beq	$t7, $t1, .LBB0_33
	b	.LBB0_36
.LBB0_45:                               # %if.end261
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
.Lfunc_end0:
	.size	DoBufferCopy, .Lfunc_end0-DoBufferCopy
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function exchange_boundary
.LCPI1_0:
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
.LCPI1_1:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
.LCPI1_2:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
.LCPI1_3:
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
.LCPI1_4:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI1_5:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
.LCPI1_6:
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.text
	.globl	exchange_boundary
	.p2align	5
	.type	exchange_boundary,@function
exchange_boundary:                      # @exchange_boundary
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
	move	$s0, $a5
	move	$s1, $a4
	move	$s2, $a3
	move	$s3, $a2
	move	$s4, $a1
	move	$s5, $a0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 40
	addi.d	$a0, $sp, 40
	ori	$a2, $zero, 108
	ori	$s6, $zero, 108
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB1_4
# %bb.1:                                # %entry.split
	beqz	$s1, .LBB1_10
# %bb.2:                                # %entry.split.split
	beqz	$s0, .LBB1_17
# %bb.3:                                # %vector.body
	xvld	$xr0, $sp, 40
	xvbitseti.w	$xr0, $xr0, 0
	xvst	$xr0, $sp, 40
	ld.w	$a0, $sp, 136
	xvld	$xr0, $sp, 72
	pcalau12i	$a1, %pc_hi20(.LCPI1_0)
	xvld	$xr1, $a1, %pc_lo12(.LCPI1_0)
	ori	$a0, $a0, 1
	ld.w	$a1, $sp, 140
	st.w	$a0, $sp, 136
	xvor.v	$xr0, $xr0, $xr1
	xvld	$xr1, $sp, 104
	ori	$a0, $a1, 1
	st.w	$a0, $sp, 140
	ld.w	$a0, $sp, 144
	xvst	$xr0, $sp, 72
	xvbitseti.w	$xr0, $xr1, 0
	xvst	$xr0, $sp, 104
	b	.LBB1_16
.LBB1_4:                                # %for.body.us.preheader
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__const.exchange_boundary.corners)
	addi.d	$a1, $a1, %pc_lo12(.L__const.exchange_boundary.corners)
	pcalau12i	$a2, %pc_hi20(.L__const.exchange_boundary.edges)
	addi.d	$a2, $a2, %pc_lo12(.L__const.exchange_boundary.edges)
	b	.LBB1_6
	.p2align	4, , 16
.LBB1_5:                                # %for.inc.us
                                        #   in Loop: Header=BB1_6 Depth=1
	addi.d	$a0, $a0, 4
	beq	$a0, $s6, .LBB1_18
.LBB1_6:                                # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	beqz	$s1, .LBB1_8
# %bb.7:                                # %if.then4.us
                                        #   in Loop: Header=BB1_6 Depth=1
	ldx.w	$a3, $a2, $a0
	ldx.w	$a4, $a0, $fp
	or	$a3, $a4, $a3
	stx.w	$a3, $a0, $fp
.LBB1_8:                                # %if.end10.us
                                        #   in Loop: Header=BB1_6 Depth=1
	beqz	$s0, .LBB1_5
# %bb.9:                                # %if.then12.us
                                        #   in Loop: Header=BB1_6 Depth=1
	ldx.w	$a3, $a1, $a0
	ldx.w	$a4, $a0, $fp
	or	$a3, $a4, $a3
	stx.w	$a3, $a0, $fp
	b	.LBB1_5
.LBB1_10:                               # %vector.body93
	xvld	$xr0, $sp, 40
	pcalau12i	$a0, %pc_hi20(.LCPI1_4)
	xvld	$xr1, $a0, %pc_lo12(.LCPI1_4)
	xvor.v	$xr1, $xr0, $xr1
	xvst	$xr1, $sp, 40
	beqz	$s0, .LBB1_12
# %bb.11:                               # %pred.store.if
	xvpickve2gr.w	$a0, $xr0, 0
	ori	$a0, $a0, 1
	st.w	$a0, $sp, 40
	xvstelm.w	$xr0, $sp, 44, 1
	xvpickve2gr.w	$a0, $xr0, 2
	ori	$a0, $a0, 1
	st.w	$a0, $sp, 48
	xvstelm.w	$xr0, $sp, 52, 3
	xvpickve2gr.w	$a0, $xr0, 4
	ori	$a0, $a0, 1
	st.w	$a0, $sp, 56
	xvstelm.w	$xr0, $sp, 60, 5
	xvpickve2gr.w	$a0, $xr0, 6
	ori	$a0, $a0, 1
	st.w	$a0, $sp, 64
	xvstelm.w	$xr0, $sp, 68, 7
.LBB1_12:                               # %pred.store.continue111
	xvld	$xr0, $sp, 72
	pcalau12i	$a0, %pc_hi20(.LCPI1_5)
	xvld	$xr1, $a0, %pc_lo12(.LCPI1_5)
	xvor.v	$xr1, $xr0, $xr1
	xvst	$xr1, $sp, 72
	beqz	$s0, .LBB1_14
# %bb.13:                               # %pred.store.if.1
	xvpickve2gr.w	$a0, $xr0, 0
	ori	$a0, $a0, 1
	st.w	$a0, $sp, 72
	xvstelm.w	$xr0, $sp, 76, 1
	xvpickve2gr.w	$a0, $xr0, 2
	ori	$a0, $a0, 1
	st.w	$a0, $sp, 80
	xvstelm.w	$xr0, $sp, 84, 3
	xvpickve2gr.w	$a0, $xr0, 4
	ori	$a0, $a0, 1
	st.w	$a0, $sp, 88
	xvstelm.w	$xr0, $sp, 92, 5
	xvpickve2gr.w	$a0, $xr0, 6
	ori	$a0, $a0, 1
	st.w	$a0, $sp, 96
	xvstelm.w	$xr0, $sp, 100, 7
.LBB1_14:                               # %pred.store.continue111.1
	xvld	$xr0, $sp, 104
	pcalau12i	$a0, %pc_hi20(.LCPI1_6)
	xvld	$xr1, $a0, %pc_lo12(.LCPI1_6)
	xvor.v	$xr1, $xr0, $xr1
	xvst	$xr1, $sp, 104
	beqz	$s0, .LBB1_18
# %bb.15:                               # %pred.store.if.2
	xvpickve2gr.w	$a0, $xr0, 0
	ori	$a0, $a0, 1
	st.w	$a0, $sp, 104
	xvpickve2gr.w	$a0, $xr0, 2
	ori	$a0, $a0, 1
	st.w	$a0, $sp, 112
	xvpickve2gr.w	$a0, $xr0, 4
	ori	$a0, $a0, 1
	st.w	$a0, $sp, 120
	xvpickve2gr.w	$a0, $xr0, 6
	ld.w	$a1, $sp, 136
	ori	$a0, $a0, 1
	st.w	$a0, $sp, 128
	xvstelm.w	$xr0, $sp, 108, 1
	ori	$a0, $a1, 1
	st.w	$a0, $sp, 136
	ld.w	$a0, $sp, 144
	xvstelm.w	$xr0, $sp, 116, 3
	xvstelm.w	$xr0, $sp, 124, 5
	xvstelm.w	$xr0, $sp, 132, 7
.LBB1_16:                               # %for.end
	ori	$a0, $a0, 1
	st.w	$a0, $sp, 144
	b	.LBB1_18
.LBB1_17:                               # %vector.body83
	xvld	$xr0, $sp, 40
	pcalau12i	$a0, %pc_hi20(.LCPI1_1)
	xvld	$xr1, $a0, %pc_lo12(.LCPI1_1)
	xvor.v	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 40
	xvld	$xr0, $sp, 72
	pcalau12i	$a0, %pc_hi20(.LCPI1_2)
	xvld	$xr1, $a0, %pc_lo12(.LCPI1_2)
	xvld	$xr2, $sp, 104
	pcalau12i	$a0, %pc_hi20(.LCPI1_3)
	xvld	$xr3, $a0, %pc_lo12(.LCPI1_3)
	xvor.v	$xr0, $xr0, $xr1
	ld.w	$a0, $sp, 140
	xvst	$xr0, $sp, 72
	xvor.v	$xr0, $xr2, $xr3
	xvst	$xr0, $sp, 104
	ori	$a0, $a0, 1
	st.w	$a0, $sp, 140
.LBB1_18:                               # %for.end
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.w	$fp, $s5, 1520
	ld.w	$a1, $s5, 1524
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	alsl.d	$a0, $s4, $s5, 3
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	bge	$fp, $a1, .LBB1_28
# %bb.19:                               # %for.body22.lr.ph
	addi.d	$s6, $a0, 1432
	ori	$a0, $zero, 88
	mul.d	$s8, $fp, $a0
	move	$s7, $fp
	b	.LBB1_22
	.p2align	4, , 16
.LBB1_20:                               # %if.then46
                                        #   in Loop: Header=BB1_22 Depth=1
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $s3
	move	$a3, $s7
	pcaddu18i	$ra, %call36(DoBufferCopy)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, 1524
.LBB1_21:                               # %for.inc48
                                        #   in Loop: Header=BB1_22 Depth=1
	addi.d	$fp, $fp, 1
	addi.w	$s7, $s7, 1
	addi.d	$s8, $s8, 88
	bge	$fp, $a1, .LBB1_28
.LBB1_22:                               # %for.body22
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
	beqz	$s2, .LBB1_24
# %bb.23:                               # %for.body22
                                        #   in Loop: Header=BB1_22 Depth=1
	ldx.w	$a2, $a0, $s8
	bnez	$a2, .LBB1_20
.LBB1_24:                               # %lor.lhs.false
                                        #   in Loop: Header=BB1_22 Depth=1
	add.d	$a0, $a0, $s8
	beqz	$s1, .LBB1_26
# %bb.25:                               # %lor.lhs.false
                                        #   in Loop: Header=BB1_22 Depth=1
	ld.w	$a2, $a0, 4
	bnez	$a2, .LBB1_20
.LBB1_26:                               # %lor.lhs.false37
                                        #   in Loop: Header=BB1_22 Depth=1
	beqz	$s0, .LBB1_21
# %bb.27:                               # %lor.lhs.false37
                                        #   in Loop: Header=BB1_22 Depth=1
	ld.w	$a0, $a0, 8
	bnez	$a0, .LBB1_20
	b	.LBB1_21
.LBB1_28:                               # %for.end50
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $fp, 560
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	add.d	$a0, $a0, $a1
	st.d	$a0, $fp, 560
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 400
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	add.d	$a0, $a0, $a1
	st.d	$a0, $fp, 400
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
	.size	exchange_boundary, .Lfunc_end1-exchange_boundary
                                        # -- End function
	.globl	rebuild_lambda                  # -- Begin function rebuild_lambda
	.p2align	5
	.type	rebuild_lambda,@function
rebuild_lambda:                         # @rebuild_lambda
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
	fst.d	$fs0, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 56                   # 8-byte Folded Spill
	fmov.d	$fs0, $fa1
	fmov.d	$fs1, $fa0
	move	$s1, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 1600
	ori	$fp, $zero, 1
	alsl.d	$s2, $s1, $s0, 3
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	blt	$a1, $fp, .LBB2_13
# %bb.1:                                # %for.body.lr.ph
	move	$a2, $zero
	ld.d	$a3, $s0, 1776
	addi.d	$a4, $s2, 1616
	vldi	$vr10, -784
	ori	$a5, $zero, 216
	mul.d	$a5, $s1, $a5
	b	.LBB2_4
	.p2align	4, , 16
.LBB2_2:                                #   in Loop: Header=BB2_4 Depth=1
	vldi	$vr0, -784
.LBB2_3:                                # %for.end209
                                        #   in Loop: Header=BB2_4 Depth=1
	fcmp.clt.d	$fcc0, $ft2, $fa0
	addi.d	$a2, $a2, 1
	fsel	$ft2, $ft2, $fa0, $fcc0
	beq	$a2, $a1, .LBB2_14
.LBB2_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_8 Depth 2
                                        #       Child Loop BB2_10 Depth 3
                                        #         Child Loop BB2_11 Depth 4
	slli.d	$a6, $a2, 8
	add.d	$a6, $a3, $a6
	ld.d	$a6, $a6, 248
	add.d	$t4, $a6, $a5
	ld.w	$a6, $t4, 28
	blt	$a6, $fp, .LBB2_2
# %bb.5:                                # %for.cond129.preheader.lr.ph
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.w	$a7, $t4, 24
	blt	$a7, $fp, .LBB2_2
# %bb.6:                                # %for.cond129.preheader.us.preheader
                                        #   in Loop: Header=BB2_4 Depth=1
	move	$t0, $zero
	move	$t1, $zero
	ld.w	$t2, $t4, 48
	ld.d	$t7, $t4, 176
	ld.w	$t3, $t4, 52
	ld.w	$t5, $t4, 44
	ld.wu	$t4, $t4, 20
	ld.d	$t6, $t7, 16
	add.d	$t8, $t2, $t3
	addi.d	$t8, $t8, 1
	ld.d	$s3, $t7, 40
	mul.w	$s4, $t5, $t8
	alsl.d	$t5, $s4, $t6, 3
	ld.d	$t8, $t7, 48
	alsl.d	$t6, $s4, $s3, 3
	ld.d	$s3, $t7, 56
	ld.d	$s5, $t7, 32
	alsl.d	$t7, $s4, $t8, 3
	fld.d	$fa0, $a4, 0
	alsl.d	$t8, $s4, $s3, 3
	alsl.d	$s3, $s4, $s5, 3
	addi.w	$s4, $t4, 0
	fmul.d	$fa0, $fa0, $fa0
	frecip.d	$fa0, $fa0
	fmul.d	$fa1, $fs0, $fa0
	vldi	$vr0, -784
	b	.LBB2_8
	.p2align	4, , 16
.LBB2_7:                                # %for.cond129.for.inc207_crit_edge.us
                                        #   in Loop: Header=BB2_8 Depth=2
	addi.w	$t1, $t1, 1
	add.w	$t0, $t0, $t3
	beq	$t1, $a6, .LBB2_3
.LBB2_8:                                # %for.cond129.preheader.us
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_10 Depth 3
                                        #         Child Loop BB2_11 Depth 4
	blt	$s4, $fp, .LBB2_7
# %bb.9:                                # %for.cond133.preheader.us.us.preheader
                                        #   in Loop: Header=BB2_8 Depth=2
	move	$s5, $zero
	move	$s6, $t0
	.p2align	4, , 16
.LBB2_10:                               # %for.cond133.preheader.us.us
                                        #   Parent Loop BB2_4 Depth=1
                                        #     Parent Loop BB2_8 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_11 Depth 4
	move	$s7, $t4
	move	$s8, $s6
	.p2align	4, , 16
.LBB2_11:                               # %for.body136.us.us
                                        #   Parent Loop BB2_4 Depth=1
                                        #     Parent Loop BB2_8 Depth=2
                                        #       Parent Loop BB2_10 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$ra, $s8, 3
	fldx.d	$fa2, $t6, $ra
	alsl.d	$s1, $s8, $t6, 3
	fld.d	$fa3, $s1, 8
	fmul.d	$fa4, $fa1, $fa2
	fabs.d	$fa4, $fa4
	fmul.d	$fa5, $fa1, $fa3
	fabs.d	$fa5, $fa5
	fadd.d	$fa4, $fa4, $fa5
	fldx.d	$fa5, $t7, $ra
	add.w	$s1, $t2, $s8
	slli.d	$s1, $s1, 3
	fldx.d	$fa6, $t7, $s1
	fmul.d	$fa7, $fa1, $fa5
	fabs.d	$fa7, $fa7
	fadd.d	$fa4, $fa4, $fa7
	fmul.d	$fa7, $fa1, $fa6
	fabs.d	$fa7, $fa7
	fadd.d	$fa4, $fa4, $fa7
	fldx.d	$fa7, $t8, $ra
	add.w	$s1, $t3, $s8
	slli.d	$s1, $s1, 3
	fldx.d	$ft0, $t8, $s1
	fmul.d	$ft1, $fa1, $fa7
	fabs.d	$ft1, $ft1
	fadd.d	$fa4, $fa4, $ft1
	fmul.d	$ft1, $fa1, $ft0
	fabs.d	$ft1, $ft1
	fadd.d	$fa4, $fa4, $ft1
	fldx.d	$ft1, $t5, $ra
	fneg.d	$fa2, $fa2
	fsub.d	$fa2, $fa2, $fa3
	fsub.d	$fa2, $fa2, $fa5
	fsub.d	$fa2, $fa2, $fa6
	fsub.d	$fa2, $fa2, $fa7
	fsub.d	$fa2, $fa2, $ft0
	fneg.d	$fa2, $fa2
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa2, $fs1, $ft1, $fa2
	frecip.d	$fa3, $fa2
	fstx.d	$fa3, $s3, $ra
	fadd.d	$fa3, $fa2, $fa4
	fdiv.d	$fa2, $fa3, $fa2
	fcmp.clt.d	$fcc0, $fa0, $fa2
	fsel	$fa0, $fa0, $fa2, $fcc0
	addi.d	$s7, $s7, -1
	addi.w	$s8, $s8, 1
	bnez	$s7, .LBB2_11
# %bb.12:                               # %for.cond133.for.inc204_crit_edge.us.us
                                        #   in Loop: Header=BB2_10 Depth=3
	addi.w	$s5, $s5, 1
	add.w	$s6, $s6, $t2
	bne	$s5, $a7, .LBB2_10
	b	.LBB2_7
.LBB2_13:
	vldi	$vr10, -784
.LBB2_14:                               # %for.end216
	vst	$vr10, $sp, 32                  # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 960
	ld.w	$a2, $s0, 1596
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a1
	st.d	$a0, $s2, 960
	bnez	$a2, .LBB2_18
# %bb.15:                               # %if.then224
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	bnez	$a1, .LBB2_17
# %bb.16:                               # %if.then227
	ori	$a0, $zero, 10
	move	$fp, $a1
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
.LBB2_17:                               # %if.end229
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
.LBB2_18:                               # %if.end232
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	fst.d	$fa0, $s2, 1696
	fld.d	$fs1, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 64                   # 8-byte Folded Reload
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
.Lfunc_end2:
	.size	rebuild_lambda, .Lfunc_end2-rebuild_lambda
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function smooth
.LCPI3_0:
	.dword	0xbfe5555555555555              # double -0.66666666666666663
	.text
	.globl	smooth
	.p2align	5
	.type	smooth,@function
smooth:                                 # @smooth
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -1120
	st.d	$ra, $sp, 1112                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1104                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1096                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1088                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1080                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1072                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1064                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1056                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1048                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1040                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1032                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 1024                 # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a4, $a0, 1612
	ori	$a0, $zero, 2
	fmov.d	$fs0, $fa1
                                        # kill: def $f0_64 killed $f0_64 def $xr0
	move	$s3, $a3
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	move	$s0, $a1
	st.d	$a4, $sp, 144                   # 8-byte Folded Spill
	xvst	$xr0, $sp, 112                  # 32-byte Folded Spill
	blt	$a4, $a0, .LBB3_2
# %bb.1:                                # %if.then
	ori	$a3, $zero, 1
	ori	$a4, $zero, 1
	ori	$a5, $zero, 1
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(exchange_boundary)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 112                  # 32-byte Folded Reload
.LBB3_2:                                # %if.end
	move	$a1, $zero
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	slt	$a0, $a2, $a0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	alsl.d	$a0, $s0, $fp, 3
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	addi.d	$a0, $a0, 1616
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	xvreplve0.d	$xr0, $xr0
	xvst	$xr0, $sp, 48                   # 32-byte Folded Spill
	ori	$a0, $zero, 216
	mul.d	$a0, $s0, $a0
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	slli.d	$a0, $s3, 3
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	lu12i.w	$a0, 349525
	ori	$a0, $a0, 1365
	lu32i.d	$a0, 349525
	lu52i.d	$a0, $a0, -1026
	xvreplgr2vr.d	$xr0, $a0
	xvst	$xr0, $sp, 16                   # 32-byte Folded Spill
	st.d	$fp, $sp, 152                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	b	.LBB3_4
	.p2align	4, , 16
.LBB3_3:                                # %for.end337
                                        #   in Loop: Header=BB3_4 Depth=1
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $a3, 0
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	add.w	$a1, $a2, $a1
	st.d	$a0, $a3, 0
	ld.d	$fp, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ori	$a0, $zero, 4
	bge	$a1, $a0, .LBB3_43
.LBB3_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_7 Depth 2
                                        #       Child Loop BB3_10 Depth 3
                                        #         Child Loop BB3_14 Depth 4
                                        #           Child Loop BB3_16 Depth 5
                                        #             Child Loop BB3_41 Depth 6
                                        #             Child Loop BB3_18 Depth 6
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	andi	$a0, $a1, 1
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 10
	masknez	$a1, $a1, $a0
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a2, $a0, $a1
	ori	$a3, $zero, 1
	move	$a0, $fp
	move	$a1, $s0
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	move	$a5, $a4
	pcaddu18i	$ra, %call36(exchange_boundary)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 1600
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	xvld	$xr9, $sp, 112                  # 32-byte Folded Reload
	ori	$a0, $zero, 1
	xvld	$xr10, $sp, 48                  # 32-byte Folded Reload
	xvld	$xr11, $sp, 16                  # 32-byte Folded Reload
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	blt	$a1, $a0, .LBB3_3
# %bb.5:                                # %for.body31.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 1776
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	move	$a1, $zero
	b	.LBB3_7
	.p2align	4, , 16
.LBB3_6:                                # %for.end334
                                        #   in Loop: Header=BB3_7 Depth=2
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB3_3
.LBB3_7:                                # %for.body31
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_10 Depth 3
                                        #         Child Loop BB3_14 Depth 4
                                        #           Child Loop BB3_16 Depth 5
                                        #             Child Loop BB3_41 Depth 6
                                        #             Child Loop BB3_18 Depth 6
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	slli.d	$a0, $a1, 8
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 248
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	ld.w	$a2, $a0, 44
	ori	$a1, $zero, 1
	st.d	$a2, $sp, 528                   # 8-byte Folded Spill
	blt	$a2, $a1, .LBB3_6
# %bb.8:                                # %for.body163.lr.ph
                                        #   in Loop: Header=BB3_7 Depth=2
	ld.w	$a4, $a0, 48
	ld.d	$a1, $a0, 176
	ld.w	$a5, $a0, 52
	st.d	$zero, $sp, 520                 # 8-byte Folded Spill
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ldx.d	$a7, $a1, $a2
	add.d	$t0, $a4, $a5
	addi.w	$a2, $t0, 1
	ld.d	$a6, $sp, 528                   # 8-byte Folded Reload
	mul.w	$t1, $a6, $a2
	ld.d	$t2, $a1, 16
	ld.d	$t3, $a1, 40
	ld.d	$t4, $a1, 48
	ld.d	$t5, $a1, 56
	ld.d	$t6, $a1, 32
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	fld.d	$fa0, $a3, 0
	ld.w	$a3, $a0, 20
	ld.w	$t7, $a0, 24
	st.d	$t7, $sp, 384                   # 8-byte Folded Spill
	ld.w	$a0, $a0, 28
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	fmul.d	$fa0, $fa0, $fa0
	frecip.d	$fa0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	ori	$a0, $zero, 1
	sub.w	$t7, $a0, $a6
	addi.d	$a0, $a1, 80
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 3
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	st.d	$a3, $sp, 320                   # 8-byte Folded Spill
	add.d	$a0, $a3, $a6
	addi.d	$a3, $a0, -1
	st.d	$t0, $sp, 416                   # 8-byte Folded Spill
	st.d	$t7, $sp, 1016                  # 8-byte Folded Spill
	mulw.d.w	$t0, $t0, $t7
	sub.d	$a0, $t0, $a6
	addi.w	$t7, $a0, 1
	bstrpick.d	$a1, $a2, 31, 0
	st.d	$a1, $sp, 280                   # 8-byte Folded Spill
	addi.d	$a0, $a0, 2
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	add.d	$a0, $a4, $t0
	st.d	$a0, $sp, 504                   # 8-byte Folded Spill
	sub.d	$a0, $a0, $a6
	addi.w	$a2, $a0, 1
	addi.d	$a0, $a5, 1
	add.d	$a1, $a0, $t0
	sub.w	$t8, $a1, $a6
	sub.d	$a1, $t1, $a5
	slli.d	$a1, $a1, 3
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	sub.d	$a1, $t1, $a4
	slli.d	$a1, $a1, 3
	st.d	$a1, $sp, 240                   # 8-byte Folded Spill
	xvreplve0.d	$xr1, $xr0
	add.d	$a0, $a0, $a4
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	st.d	$a7, $sp, 376                   # 8-byte Folded Spill
	alsl.d	$a7, $t1, $a7, 3
	st.d	$t2, $sp, 360                   # 8-byte Folded Spill
	alsl.d	$t2, $t1, $t2, 3
	st.d	$t3, $sp, 352                   # 8-byte Folded Spill
	alsl.d	$t3, $t1, $t3, 3
	st.d	$t4, $sp, 344                   # 8-byte Folded Spill
	alsl.d	$t4, $t1, $t4, 3
	st.d	$t5, $sp, 336                   # 8-byte Folded Spill
	alsl.d	$t5, $t1, $t5, 3
	st.d	$t6, $sp, 328                   # 8-byte Folded Spill
	alsl.d	$t6, $t1, $t6, 3
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	add.w	$a1, $a6, $a0
	st.d	$a1, $sp, 392                   # 8-byte Folded Spill
	st.d	$t1, $sp, 368                   # 8-byte Folded Spill
	slli.d	$a1, $t1, 3
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	sub.w	$a1, $t7, $a4
	st.d	$a1, $sp, 496                   # 8-byte Folded Spill
	sub.w	$a1, $t7, $a5
	st.d	$a1, $sp, 488                   # 8-byte Folded Spill
	sub.d	$a1, $t0, $a5
	st.d	$a1, $sp, 480                   # 8-byte Folded Spill
	st.d	$a5, $sp, 608                   # 8-byte Folded Spill
	add.d	$a1, $a5, $t0
	st.d	$a1, $sp, 472                   # 8-byte Folded Spill
	st.d	$a4, $sp, 992                   # 8-byte Folded Spill
	st.d	$t0, $sp, 512                   # 8-byte Folded Spill
	sub.d	$a1, $t0, $a4
	st.d	$a1, $sp, 464                   # 8-byte Folded Spill
	st.d	$a3, $sp, 296                   # 8-byte Folded Spill
	st.d	$a3, $sp, 456                   # 8-byte Folded Spill
	st.d	$t8, $sp, 256                   # 8-byte Folded Spill
	st.d	$t8, $sp, 448                   # 8-byte Folded Spill
	st.d	$a2, $sp, 264                   # 8-byte Folded Spill
	st.d	$a2, $sp, 440                   # 8-byte Folded Spill
	st.d	$t7, $sp, 288                   # 8-byte Folded Spill
	st.d	$t7, $sp, 432                   # 8-byte Folded Spill
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	b	.LBB3_10
	.p2align	4, , 16
.LBB3_9:                                # %for.end331
                                        #   in Loop: Header=BB3_10 Depth=3
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	ld.d	$a0, $sp, 1016                  # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 1016                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 520                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 520                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	add.w	$a1, $a1, $a0
	st.d	$a1, $sp, 432                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	add.w	$a1, $a1, $a0
	st.d	$a1, $sp, 440                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 496                   # 8-byte Folded Reload
	add.w	$a1, $a1, $a0
	st.d	$a1, $sp, 496                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 448                   # 8-byte Folded Reload
	add.w	$a1, $a1, $a0
	st.d	$a1, $sp, 448                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 488                   # 8-byte Folded Reload
	add.w	$a1, $a1, $a0
	st.d	$a1, $sp, 488                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	addi.d	$a0, $a0, -1
	st.d	$a0, $sp, 456                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 480                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 480                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 472                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 464                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 464                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 504                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 504                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 512                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 512                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	st.d	$a2, $sp, 424                   # 8-byte Folded Spill
	bge	$a2, $a0, .LBB3_6
.LBB3_10:                               # %for.body163
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_14 Depth 4
                                        #           Child Loop BB3_16 Depth 5
                                        #             Child Loop BB3_41 Depth 6
                                        #             Child Loop BB3_18 Depth 6
	ld.d	$a0, $sp, 528                   # 8-byte Folded Reload
	ori	$a1, $zero, 1
	sub.d	$a2, $a1, $a0
	addi.d	$a0, $a0, -1
	st.d	$a0, $sp, 528                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	st.d	$a2, $sp, 616                   # 8-byte Folded Spill
	st.d	$a0, $sp, 600                   # 8-byte Folded Spill
	bge	$a2, $a0, .LBB3_9
# %bb.11:                               # %for.cond231.preheader.lr.ph
                                        #   in Loop: Header=BB3_10 Depth=3
	ld.d	$a0, $sp, 528                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 384                   # 8-byte Folded Reload
	add.d	$a1, $a0, $a1
	ld.d	$a0, $sp, 616                   # 8-byte Folded Reload
	st.d	$a1, $sp, 976                   # 8-byte Folded Spill
	bge	$a0, $a1, .LBB3_9
# %bb.12:                               # %for.cond231.preheader.us.preheader
                                        #   in Loop: Header=BB3_10 Depth=3
	st.d	$zero, $sp, 736                 # 8-byte Folded Spill
	ld.d	$t7, $sp, 1016                  # 8-byte Folded Reload
	addi.d	$a0, $t7, 1
	ld.d	$a3, $sp, 456                   # 8-byte Folded Reload
	slt	$a1, $a0, $a3
	masknez	$a2, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	sub.d	$a1, $a1, $t7
	bstrins.d	$a1, $zero, 1, 0
	st.d	$a1, $sp, 648                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 520                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a3
	slt	$a2, $a0, $a1
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	or	$a0, $a1, $a0
	sub.d	$t8, $a0, $t7
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	mul.d	$a1, $a3, $a1
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	add.d	$fp, $a2, $a1
	slli.d	$a2, $t7, 3
	sub.d	$a2, $zero, $a2
	ld.d	$a3, $sp, 608                   # 8-byte Folded Reload
	add.d	$a3, $a3, $t7
	slli.d	$a3, $a3, 3
	sub.d	$a3, $zero, $a3
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	add.d	$s0, $a4, $a1
	ld.d	$a4, $sp, 992                   # 8-byte Folded Reload
	add.d	$a4, $a4, $t7
	slli.d	$a4, $a4, 3
	sub.d	$a4, $zero, $a4
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
	add.d	$s2, $a5, $a1
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	add.d	$s3, $a5, $a1
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	andi	$a1, $a1, 1
	sltui	$a1, $a1, 1
	ld.d	$t0, $sp, 312                   # 8-byte Folded Reload
	masknez	$a5, $t0, $a1
	ld.d	$t1, $sp, 304                   # 8-byte Folded Reload
	maskeqz	$a6, $t1, $a1
	or	$a5, $a6, $a5
	masknez	$a6, $t1, $a1
	maskeqz	$a1, $t0, $a1
	or	$a1, $a1, $a6
	ld.d	$a1, $a1, 0
	ld.d	$a5, $a5, 0
	nor	$a6, $t7, $zero
	add.d	$s6, $a0, $a6
	ld.d	$t0, $sp, 368                   # 8-byte Folded Reload
	alsl.d	$s1, $t0, $a1, 3
	alsl.d	$s5, $t0, $a5, 3
	ld.d	$a6, $sp, 528                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 320                   # 8-byte Folded Reload
	add.d	$s4, $a6, $t1
	ld.d	$a6, $sp, 232                   # 8-byte Folded Reload
	add.d	$t1, $a1, $a6
	st.d	$t1, $sp, 816                   # 8-byte Folded Spill
	add.d	$a1, $a1, $a2
	st.d	$a1, $sp, 808                   # 8-byte Folded Spill
	add.d	$a0, $a0, $t0
	st.d	$a0, $sp, 968                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	st.d	$a0, $sp, 800                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	add.d	$a0, $a5, $a0
	st.d	$a0, $sp, 792                   # 8-byte Folded Spill
	add.d	$a0, $a5, $a3
	st.d	$a0, $sp, 784                   # 8-byte Folded Spill
	add.d	$a1, $a5, $a6
	add.d	$a0, $a5, $a2
	st.d	$a0, $sp, 960                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	add.d	$a0, $a5, $a0
	st.d	$a0, $sp, 776                   # 8-byte Folded Spill
	add.d	$a0, $a5, $a4
	st.d	$a0, $sp, 768                   # 8-byte Folded Spill
	st.d	$a1, $sp, 936                   # 8-byte Folded Spill
	addi.d	$a0, $a1, -8
	st.d	$a0, $sp, 760                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	st.d	$a0, $sp, 912                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	st.d	$a0, $sp, 904                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	st.d	$a0, $sp, 880                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	st.d	$a0, $sp, 752                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	st.d	$a0, $sp, 744                   # 8-byte Folded Spill
	st.d	$t8, $sp, 984                   # 8-byte Folded Spill
	bstrins.d	$t8, $zero, 1, 0
	st.d	$fp, $sp, 592                   # 8-byte Folded Spill
	add.d	$a0, $fp, $s6
	st.d	$a0, $sp, 560                   # 8-byte Folded Spill
	st.d	$s3, $sp, 568                   # 8-byte Folded Spill
	add.d	$a0, $s3, $s6
	st.d	$a0, $sp, 552                   # 8-byte Folded Spill
	st.d	$s2, $sp, 576                   # 8-byte Folded Spill
	add.d	$a0, $s2, $s6
	st.d	$a0, $sp, 544                   # 8-byte Folded Spill
	st.d	$s0, $sp, 584                   # 8-byte Folded Spill
	st.d	$s6, $sp, 824                   # 8-byte Folded Spill
	add.d	$a0, $s0, $s6
	st.d	$a0, $sp, 536                   # 8-byte Folded Spill
	st.d	$t8, $sp, 640                   # 8-byte Folded Spill
	add.d	$a0, $t8, $t7
	st.d	$a0, $sp, 632                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 512                   # 8-byte Folded Reload
	st.d	$a0, $sp, 728                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	st.d	$a0, $sp, 720                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	st.d	$a0, $sp, 712                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	st.d	$a0, $sp, 704                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	st.d	$a0, $sp, 696                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	st.d	$a0, $sp, 688                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	st.d	$a0, $sp, 680                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 496                   # 8-byte Folded Reload
	st.d	$a0, $sp, 672                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	st.d	$a0, $sp, 664                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	st.d	$a0, $sp, 656                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 616                   # 8-byte Folded Reload
	b	.LBB3_14
	.p2align	4, , 16
.LBB3_13:                               # %for.cond231.for.inc329_crit_edge.us
                                        #   in Loop: Header=BB3_14 Depth=4
	ld.d	$a2, $sp, 624                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	ld.d	$a0, $sp, 736                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 736                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 608                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 656                   # 8-byte Folded Reload
	add.w	$a1, $a1, $a0
	st.d	$a1, $sp, 656                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 664                   # 8-byte Folded Reload
	add.w	$a1, $a1, $a0
	st.d	$a1, $sp, 664                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 672                   # 8-byte Folded Reload
	add.w	$a1, $a1, $a0
	st.d	$a1, $sp, 672                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 680                   # 8-byte Folded Reload
	add.w	$a1, $a1, $a0
	st.d	$a1, $sp, 680                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 688                   # 8-byte Folded Reload
	add.w	$a1, $a1, $a0
	st.d	$a1, $sp, 688                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 696                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 696                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 704                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 704                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 712                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 712                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 720                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 720                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 728                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 728                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 600                   # 8-byte Folded Reload
	bge	$a2, $a0, .LBB3_9
.LBB3_14:                               # %for.cond231.preheader.us
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_7 Depth=2
                                        #       Parent Loop BB3_10 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB3_16 Depth 5
                                        #             Child Loop BB3_41 Depth 6
                                        #             Child Loop BB3_18 Depth 6
	st.d	$a2, $sp, 624                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 616                   # 8-byte Folded Reload
	bge	$a0, $s4, .LBB3_13
# %bb.15:                               # %for.cond237.preheader.us.us.preheader
                                        #   in Loop: Header=BB3_14 Depth=4
	move	$t7, $zero
	ld.d	$a0, $sp, 608                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 736                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 592                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 856                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 584                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 928                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 576                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 872                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 568                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 840                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 560                   # 8-byte Folded Reload
	add.d	$a1, $a0, $a1
	st.d	$a1, $sp, 848                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 552                   # 8-byte Folded Reload
	add.d	$a1, $a0, $a1
	st.d	$a1, $sp, 832                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 544                   # 8-byte Folded Reload
	add.d	$a1, $a0, $a1
	st.d	$a1, $sp, 864                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 536                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 920                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 728                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 720                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 712                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 704                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 696                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 688                   # 8-byte Folded Reload
	st.d	$a0, $sp, 1008                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 680                   # 8-byte Folded Reload
	st.d	$a0, $sp, 1000                  # 8-byte Folded Spill
	ld.d	$s0, $sp, 672                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 664                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 656                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 616                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_16:                               # %for.cond237.preheader.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_7 Depth=2
                                        #       Parent Loop BB3_10 Depth=3
                                        #         Parent Loop BB3_14 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB3_41 Depth 6
                                        #             Child Loop BB3_18 Depth 6
	ld.d	$s7, $sp, 1016                  # 8-byte Folded Reload
	ori	$a0, $zero, 8
	ld.d	$a1, $sp, 984                   # 8-byte Folded Reload
	bgeu	$a1, $a0, .LBB3_20
.LBB3_17:                               # %for.body241.us.us.preheader
                                        #   in Loop: Header=BB3_16 Depth=5
	move	$a5, $s7
	.p2align	4, , 16
.LBB3_18:                               # %for.body241.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_7 Depth=2
                                        #       Parent Loop BB3_10 Depth=3
                                        #         Parent Loop BB3_14 Depth=4
                                        #           Parent Loop BB3_16 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	add.w	$a0, $t0, $s7
	slli.d	$a6, $a0, 3
	fldx.d	$fa2, $t2, $a6
	alsl.d	$a1, $a0, $s5, 3
	fldx.d	$fa3, $s5, $a6
	addi.w	$a0, $a0, 1
	slli.d	$a0, $a0, 3
	fldx.d	$fa4, $s5, $a0
	fld.d	$fa5, $a1, -8
	fldx.d	$fa6, $t3, $a0
	fldx.d	$fa7, $t3, $a6
	fsub.d	$fa4, $fa4, $fa3
	fsub.d	$fa5, $fa3, $fa5
	fneg.d	$fa5, $fa5
	fmul.d	$fa5, $fa7, $fa5
	fmadd.d	$fa4, $fa6, $fa4, $fa5
	add.w	$a0, $a4, $s7
	slli.d	$a0, $a0, 3
	fldx.d	$fa5, $t4, $a0
	fldx.d	$fa6, $s5, $a0
	add.w	$a0, $fp, $s7
	slli.d	$a0, $a0, 3
	fldx.d	$fa7, $s5, $a0
	fsub.d	$fa6, $fa6, $fa3
	fmadd.d	$fa4, $fa5, $fa6, $fa4
	fldx.d	$fa5, $t4, $a6
	fsub.d	$fa6, $fa3, $fa7
	add.w	$a0, $s8, $s7
	slli.d	$a0, $a0, 3
	fldx.d	$fa7, $s5, $a0
	fneg.d	$fa5, $fa5
	fmadd.d	$fa4, $fa5, $fa6, $fa4
	fldx.d	$fa5, $t5, $a0
	fsub.d	$fa6, $fa7, $fa3
	add.w	$a0, $s3, $s7
	slli.d	$a0, $a0, 3
	fldx.d	$fa7, $s5, $a0
	fldx.d	$ft0, $t5, $a6
	fmadd.d	$fa4, $fa5, $fa6, $fa4
	fmul.d	$fa2, $ft1, $fa2
	fsub.d	$fa5, $fa3, $fa7
	fneg.d	$fa6, $ft0
	fnmadd.d	$fa4, $fa6, $fa5, $fa4
	fldx.d	$fa5, $t6, $a6
	fldx.d	$fa6, $a7, $a6
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	fld.d	$fa7, $a0, %pc_lo12(.LCPI3_0)
	fmul.d	$fa4, $fa0, $fa4
	fmadd.d	$fa2, $fa2, $fa3, $fa4
	fsub.d	$fa2, $fa2, $fa6
	fmul.d	$fa4, $fa5, $fa7
	fmadd.d	$fa2, $fa4, $fa2, $fa3
	fstx.d	$fa2, $s1, $a6
	addi.d	$a5, $a5, 1
	addi.d	$s7, $s7, 1
	blt	$a5, $s4, .LBB3_18
.LBB3_19:                               # %for.cond237.for.inc326_crit_edge.us.us
                                        #   in Loop: Header=BB3_16 Depth=5
	addi.w	$s2, $s2, 1
	addi.d	$t7, $t7, 1
	ld.d	$a0, $sp, 992                   # 8-byte Folded Reload
	add.w	$t1, $t1, $a0
	add.w	$a2, $a2, $a0
	add.w	$s0, $s0, $a0
	ld.d	$a1, $sp, 1000                  # 8-byte Folded Reload
	add.w	$a1, $a1, $a0
	st.d	$a1, $sp, 1000                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 1008                  # 8-byte Folded Reload
	add.w	$a1, $a1, $a0
	st.d	$a1, $sp, 1008                  # 8-byte Folded Spill
	add.d	$s3, $s3, $a0
	add.d	$s8, $s8, $a0
	add.d	$fp, $fp, $a0
	add.d	$a4, $a4, $a0
	add.d	$t0, $t0, $a0
	ld.d	$a0, $sp, 976                   # 8-byte Folded Reload
	blt	$s2, $a0, .LBB3_16
	b	.LBB3_13
	.p2align	4, , 16
.LBB3_20:                               # %vector.scevcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	ld.d	$a0, $sp, 992                   # 8-byte Folded Reload
	mul.d	$a3, $a0, $t7
	ld.d	$a0, $sp, 928                   # 8-byte Folded Reload
	add.w	$a1, $a0, $a3
	ld.d	$a0, $sp, 920                   # 8-byte Folded Reload
	add.w	$a5, $a3, $a0
	ld.d	$s7, $sp, 1016                  # 8-byte Folded Reload
	blt	$a5, $a1, .LBB3_17
# %bb.21:                               # %vector.scevcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	ld.d	$a0, $sp, 872                   # 8-byte Folded Reload
	add.w	$a6, $a0, $a3
	ld.d	$a0, $sp, 864                   # 8-byte Folded Reload
	add.w	$a5, $a3, $a0
	ld.d	$s7, $sp, 1016                  # 8-byte Folded Reload
	st.d	$a6, $sp, 952                   # 8-byte Folded Spill
	blt	$a5, $a6, .LBB3_17
# %bb.22:                               # %vector.scevcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	ld.d	$a0, $sp, 856                   # 8-byte Folded Reload
	add.w	$t8, $a0, $a3
	ld.d	$a0, $sp, 848                   # 8-byte Folded Reload
	add.w	$a5, $a3, $a0
	ld.d	$s7, $sp, 1016                  # 8-byte Folded Reload
	blt	$a5, $t8, .LBB3_17
# %bb.23:                               # %vector.scevcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	ld.d	$a0, $sp, 840                   # 8-byte Folded Reload
	add.w	$a5, $a0, $a3
	ld.d	$a0, $sp, 832                   # 8-byte Folded Reload
	add.w	$a3, $a3, $a0
	ld.d	$s7, $sp, 1016                  # 8-byte Folded Reload
	st.d	$a5, $sp, 944                   # 8-byte Folded Spill
	blt	$a3, $a5, .LBB3_17
# %bb.24:                               # %vector.scevcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	ld.d	$a0, $sp, 824                   # 8-byte Folded Reload
	srli.d	$a3, $a0, 32
	ld.d	$s7, $sp, 1016                  # 8-byte Folded Reload
	bnez	$a3, .LBB3_17
# %bb.25:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	ld.d	$a0, $sp, 816                   # 8-byte Folded Reload
	alsl.d	$ra, $t8, $a0, 3
	ld.d	$a0, $sp, 968                   # 8-byte Folded Reload
	add.d	$a5, $a0, $t8
	ld.d	$a0, $sp, 808                   # 8-byte Folded Reload
	alsl.d	$a6, $a5, $a0, 3
	alsl.d	$a3, $t8, $t2, 3
	ld.d	$a0, $sp, 800                   # 8-byte Folded Reload
	alsl.d	$s7, $a5, $a0, 3
	sltu	$s7, $ra, $s7
	sltu	$a3, $a3, $a6
	and	$a3, $s7, $a3
	ld.d	$s7, $sp, 1016                  # 8-byte Folded Reload
	bnez	$a3, .LBB3_17
# %bb.26:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	ld.d	$a0, $sp, 792                   # 8-byte Folded Reload
	alsl.d	$a3, $t8, $a0, 3
	ld.d	$a0, $sp, 784                   # 8-byte Folded Reload
	alsl.d	$s7, $a5, $a0, 3
	sltu	$s7, $ra, $s7
	sltu	$a3, $a3, $a6
	and	$a3, $s7, $a3
	ld.d	$s7, $sp, 1016                  # 8-byte Folded Reload
	bnez	$a3, .LBB3_17
# %bb.27:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	ld.d	$a0, $sp, 936                   # 8-byte Folded Reload
	alsl.d	$a3, $a1, $a0, 3
	ld.d	$a0, $sp, 968                   # 8-byte Folded Reload
	add.d	$s6, $a0, $a1
	ld.d	$a0, $sp, 960                   # 8-byte Folded Reload
	st.d	$s6, $sp, 888                   # 8-byte Folded Spill
	alsl.d	$s7, $s6, $a0, 3
	sltu	$s7, $ra, $s7
	sltu	$a3, $a3, $a6
	and	$a3, $s7, $a3
	ld.d	$s7, $sp, 1016                  # 8-byte Folded Reload
	bnez	$a3, .LBB3_17
# %bb.28:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	ld.d	$a0, $sp, 776                   # 8-byte Folded Reload
	alsl.d	$a3, $t8, $a0, 3
	ld.d	$a0, $sp, 768                   # 8-byte Folded Reload
	alsl.d	$s7, $a5, $a0, 3
	sltu	$s7, $ra, $s7
	sltu	$a3, $a3, $a6
	and	$a3, $s7, $a3
	ld.d	$s7, $sp, 1016                  # 8-byte Folded Reload
	bnez	$a3, .LBB3_17
# %bb.29:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	ld.d	$a0, $sp, 936                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 952                   # 8-byte Folded Reload
	alsl.d	$a3, $s6, $a0, 3
	ld.d	$a0, $sp, 968                   # 8-byte Folded Reload
	add.d	$s6, $a0, $s6
	ld.d	$a0, $sp, 960                   # 8-byte Folded Reload
	st.d	$s6, $sp, 896                   # 8-byte Folded Spill
	alsl.d	$s7, $s6, $a0, 3
	sltu	$s7, $ra, $s7
	sltu	$a3, $a3, $a6
	and	$a3, $s7, $a3
	ld.d	$s7, $sp, 1016                  # 8-byte Folded Reload
	bnez	$a3, .LBB3_17
# %bb.30:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	ld.d	$a0, $sp, 760                   # 8-byte Folded Reload
	alsl.d	$a3, $t8, $a0, 3
	ld.d	$a0, $sp, 960                   # 8-byte Folded Reload
	alsl.d	$s7, $a5, $a0, 3
	sltu	$s7, $ra, $s7
	sltu	$a3, $a3, $a6
	and	$a3, $s7, $a3
	ld.d	$s7, $sp, 1016                  # 8-byte Folded Reload
	bnez	$a3, .LBB3_17
# %bb.31:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	ld.d	$a0, $sp, 936                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 944                   # 8-byte Folded Reload
	alsl.d	$s7, $a3, $a0, 3
	ld.d	$a0, $sp, 968                   # 8-byte Folded Reload
	add.d	$a3, $a0, $a3
	ld.d	$a0, $sp, 960                   # 8-byte Folded Reload
	alsl.d	$s6, $a3, $a0, 3
	sltu	$s6, $ra, $s6
	sltu	$s7, $s7, $a6
	and	$s6, $s6, $s7
	ld.d	$s7, $sp, 1016                  # 8-byte Folded Reload
	bnez	$s6, .LBB3_17
# %bb.32:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	alsl.d	$s6, $t8, $t3, 3
	ld.d	$a0, $sp, 912                   # 8-byte Folded Reload
	alsl.d	$s7, $a5, $a0, 3
	sltu	$s7, $ra, $s7
	sltu	$s6, $s6, $a6
	and	$s6, $s7, $s6
	ld.d	$s7, $sp, 1016                  # 8-byte Folded Reload
	bnez	$s6, .LBB3_17
# %bb.33:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	ld.d	$a0, $sp, 944                   # 8-byte Folded Reload
	alsl.d	$s6, $a0, $t3, 3
	ld.d	$a0, $sp, 912                   # 8-byte Folded Reload
	alsl.d	$a3, $a3, $a0, 3
	sltu	$a3, $ra, $a3
	sltu	$s6, $s6, $a6
	and	$a3, $a3, $s6
	ld.d	$s7, $sp, 1016                  # 8-byte Folded Reload
	bnez	$a3, .LBB3_17
# %bb.34:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	alsl.d	$a3, $t8, $t4, 3
	ld.d	$a0, $sp, 904                   # 8-byte Folded Reload
	alsl.d	$s6, $a5, $a0, 3
	sltu	$s6, $ra, $s6
	sltu	$a3, $a3, $a6
	and	$a3, $s6, $a3
	ld.d	$s7, $sp, 1016                  # 8-byte Folded Reload
	bnez	$a3, .LBB3_17
# %bb.35:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	ld.d	$a0, $sp, 952                   # 8-byte Folded Reload
	alsl.d	$a3, $a0, $t4, 3
	ld.d	$a0, $sp, 904                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 896                   # 8-byte Folded Reload
	alsl.d	$s6, $s6, $a0, 3
	sltu	$s6, $ra, $s6
	sltu	$a3, $a3, $a6
	and	$a3, $s6, $a3
	ld.d	$s7, $sp, 1016                  # 8-byte Folded Reload
	bnez	$a3, .LBB3_17
# %bb.36:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	alsl.d	$a3, $t8, $t5, 3
	ld.d	$a0, $sp, 880                   # 8-byte Folded Reload
	alsl.d	$s6, $a5, $a0, 3
	sltu	$s6, $ra, $s6
	sltu	$a3, $a3, $a6
	and	$a3, $s6, $a3
	ld.d	$s7, $sp, 1016                  # 8-byte Folded Reload
	bnez	$a3, .LBB3_17
# %bb.37:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	alsl.d	$a3, $a1, $t5, 3
	ld.d	$a0, $sp, 880                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 888                   # 8-byte Folded Reload
	alsl.d	$s6, $a1, $a0, 3
	sltu	$s6, $ra, $s6
	sltu	$a3, $a3, $a6
	and	$a3, $s6, $a3
	ld.d	$s7, $sp, 1016                  # 8-byte Folded Reload
	bnez	$a3, .LBB3_17
# %bb.38:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	alsl.d	$a3, $t8, $t6, 3
	ld.d	$a0, $sp, 752                   # 8-byte Folded Reload
	alsl.d	$s6, $a5, $a0, 3
	sltu	$s6, $ra, $s6
	sltu	$a3, $a3, $a6
	and	$a3, $s6, $a3
	ld.d	$s7, $sp, 1016                  # 8-byte Folded Reload
	bnez	$a3, .LBB3_17
# %bb.39:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	alsl.d	$a3, $t8, $a7, 3
	ld.d	$a0, $sp, 744                   # 8-byte Folded Reload
	alsl.d	$a5, $a5, $a0, 3
	sltu	$a5, $ra, $a5
	sltu	$a3, $a3, $a6
	and	$a3, $a5, $a3
	ld.d	$s7, $sp, 1016                  # 8-byte Folded Reload
	bnez	$a3, .LBB3_17
# %bb.40:                               # %vector.ph
                                        #   in Loop: Header=BB3_16 Depth=5
	ld.d	$a5, $sp, 648                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 1008                  # 8-byte Folded Reload
	ld.d	$t8, $sp, 1000                  # 8-byte Folded Reload
	move	$s6, $s0
	move	$s7, $a2
	move	$ra, $t1
	.p2align	4, , 16
.LBB3_41:                               # %vector.body
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_7 Depth=2
                                        #       Parent Loop BB3_10 Depth=3
                                        #         Parent Loop BB3_14 Depth=4
                                        #           Parent Loop BB3_16 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	slli.d	$a3, $ra, 3
	xvldx	$xr2, $t2, $a3
	alsl.d	$a0, $ra, $s5, 3
	xvldx	$xr3, $s5, $a3
	addi.w	$a1, $ra, 1
	slli.d	$a1, $a1, 3
	xvldx	$xr4, $s5, $a1
	xvld	$xr5, $a0, -8
	xvldx	$xr6, $t3, $a1
	xvldx	$xr7, $t3, $a3
	xvfsub.d	$xr4, $xr4, $xr3
	xvfsub.d	$xr5, $xr3, $xr5
	xvbitrevi.d	$xr5, $xr5, 63
	xvfmul.d	$xr5, $xr7, $xr5
	xvfmadd.d	$xr4, $xr6, $xr4, $xr5
	slli.d	$a0, $s7, 3
	xvldx	$xr5, $s5, $a0
	xvldx	$xr6, $t4, $a0
	slli.d	$a0, $s6, 3
	xvldx	$xr7, $s5, $a0
	xvfsub.d	$xr5, $xr5, $xr3
	xvfmadd.d	$xr4, $xr6, $xr5, $xr4
	xvldx	$xr5, $t4, $a3
	xvfsub.d	$xr6, $xr3, $xr7
	slli.d	$a0, $t8, 3
	xvldx	$xr7, $s5, $a0
	xvbitrevi.d	$xr5, $xr5, 63
	xvfmadd.d	$xr4, $xr5, $xr6, $xr4
	xvldx	$xr5, $t5, $a0
	xvfsub.d	$xr6, $xr7, $xr3
	slli.d	$a0, $a6, 3
	xvldx	$xr7, $s5, $a0
	xvldx	$xr8, $t5, $a3
	xvfmadd.d	$xr4, $xr5, $xr6, $xr4
	xvfmul.d	$xr2, $xr10, $xr2
	xvfsub.d	$xr5, $xr3, $xr7
	xvbitrevi.d	$xr6, $xr8, 63
	xvfnmadd.d	$xr4, $xr6, $xr5, $xr4
	xvldx	$xr5, $a7, $a3
	xvldx	$xr6, $t6, $a3
	xvfmul.d	$xr4, $xr1, $xr4
	xvfmadd.d	$xr2, $xr2, $xr3, $xr4
	xvfsub.d	$xr2, $xr2, $xr5
	xvfmul.d	$xr4, $xr6, $xr11
	xvfmadd.d	$xr2, $xr4, $xr2, $xr3
	xvstx	$xr2, $s1, $a3
	addi.w	$ra, $ra, 4
	addi.w	$s7, $s7, 4
	addi.w	$s6, $s6, 4
	addi.w	$t8, $t8, 4
	addi.d	$a5, $a5, -4
	addi.w	$a6, $a6, 4
	bnez	$a5, .LBB3_41
# %bb.42:                               # %middle.block
                                        #   in Loop: Header=BB3_16 Depth=5
	ld.d	$s7, $sp, 632                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 984                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 640                   # 8-byte Folded Reload
	bne	$a0, $a1, .LBB3_17
	b	.LBB3_19
.LBB3_43:                               # %for.end345
	fld.d	$fs0, $sp, 1024                 # 8-byte Folded Reload
	ld.d	$s8, $sp, 1032                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1040                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1048                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1056                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1064                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1072                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1080                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1088                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1096                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1104                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1112                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1120
	ret
.Lfunc_end3:
	.size	smooth, .Lfunc_end3-smooth
                                        # -- End function
	.globl	apply_op                        # -- Begin function apply_op
	.p2align	5
	.type	apply_op,@function
apply_op:                               # @apply_op
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -464
	st.d	$ra, $sp, 456                   # 8-byte Folded Spill
	st.d	$fp, $sp, 448                   # 8-byte Folded Spill
	st.d	$s0, $sp, 440                   # 8-byte Folded Spill
	st.d	$s1, $sp, 432                   # 8-byte Folded Spill
	st.d	$s2, $sp, 424                   # 8-byte Folded Spill
	st.d	$s3, $sp, 416                   # 8-byte Folded Spill
	st.d	$s4, $sp, 408                   # 8-byte Folded Spill
	st.d	$s5, $sp, 400                   # 8-byte Folded Spill
	st.d	$s6, $sp, 392                   # 8-byte Folded Spill
	st.d	$s7, $sp, 384                   # 8-byte Folded Spill
	st.d	$s8, $sp, 376                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 368                  # 8-byte Folded Spill
	fmov.d	$fs0, $fa1
                                        # kill: def $f0_64 killed $f0_64 def $xr0
	xvst	$xr0, $sp, 16                   # 32-byte Folded Spill
	move	$s1, $a3
	move	$s0, $a2
	move	$s2, $a1
	move	$s3, $a0
	ori	$a3, $zero, 1
	ori	$fp, $zero, 1
	move	$a2, $s1
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(exchange_boundary)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	xvld	$xr10, $sp, 16                  # 32-byte Folded Reload
	ld.w	$a1, $s3, 1600
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	alsl.d	$a0, $s2, $s3, 3
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	blt	$a1, $fp, .LBB4_40
# %bb.1:                                # %for.body.lr.ph
	move	$a1, $zero
	ld.d	$a0, $s3, 1776
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1616
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	xvreplve0.d	$xr0, $xr10
	ori	$a0, $zero, 216
	mul.d	$a0, $s2, $a0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	slli.d	$a0, $s1, 3
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	slli.d	$a0, $s0, 3
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ori	$fp, $zero, 8
	b	.LBB4_3
	.p2align	4, , 16
.LBB4_2:                                # %for.end243
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB4_40
.LBB4_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_7 Depth 2
                                        #       Child Loop BB4_9 Depth 3
                                        #         Child Loop BB4_33 Depth 4
                                        #         Child Loop BB4_12 Depth 4
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	slli.d	$a0, $a1, 8
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 248
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	ld.w	$a2, $a0, 28
	ori	$a1, $zero, 1
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	blt	$a2, $a1, .LBB4_2
# %bb.4:                                # %for.cond157.preheader.lr.ph
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$t1, $a0, 24
	ori	$a1, $zero, 1
	blt	$t1, $a1, .LBB4_2
# %bb.5:                                # %for.cond157.preheader.us.preheader
                                        #   in Loop: Header=BB4_3 Depth=1
	st.d	$zero, $sp, 192                 # 8-byte Folded Spill
	st.d	$zero, $sp, 184                 # 8-byte Folded Spill
	ld.w	$t4, $a0, 48
	ld.d	$a1, $a0, 176
	ld.w	$t5, $a0, 52
	ld.w	$a2, $a0, 44
	ld.wu	$t6, $a0, 20
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	add.d	$a3, $t4, $t5
	addi.d	$a3, $a3, 1
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	ldx.d	$a4, $a1, $a4
	ld.d	$a5, $a1, 16
	mul.w	$a2, $a2, $a3
	alsl.d	$t7, $a2, $a0, 3
	alsl.d	$t8, $a2, $a4, 3
	alsl.d	$s0, $a2, $a5, 3
	ld.d	$a3, $a1, 40
	ld.d	$a6, $a1, 48
	ld.d	$a1, $a1, 56
	ld.d	$a7, $sp, 80                    # 8-byte Folded Reload
	fld.d	$fa1, $a7, 0
	alsl.d	$s1, $a2, $a3, 3
	alsl.d	$s2, $a2, $a6, 3
	alsl.d	$s3, $a2, $a1, 3
	fmul.d	$fa1, $fa1, $fa1
	frecip.d	$fa1, $fa1
	fmul.d	$fa1, $fs0, $fa1
	addi.d	$t2, $t6, -1
	slli.d	$a2, $a2, 3
	alsl.d	$a7, $t6, $a2, 3
	add.d	$a4, $a4, $a7
	st.d	$a4, $sp, 288                   # 8-byte Folded Spill
	add.d	$a4, $a5, $a7
	st.d	$a4, $sp, 280                   # 8-byte Folded Spill
	slli.d	$a4, $t5, 3
	sub.d	$a5, $a2, $a4
	add.d	$a5, $a0, $a5
	st.d	$a5, $sp, 264                   # 8-byte Folded Spill
	sub.d	$a4, $a7, $a4
	add.d	$a4, $a0, $a4
	st.d	$a4, $sp, 256                   # 8-byte Folded Spill
	add.d	$s5, $a0, $a7
	slli.d	$a4, $t4, 3
	sub.d	$a2, $a2, $a4
	add.d	$a2, $a0, $a2
	st.d	$a2, $sp, 248                   # 8-byte Folded Spill
	sub.d	$a2, $a7, $a4
	add.d	$a0, $a0, $a2
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	addi.d	$a0, $t7, -8
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	add.d	$a0, $a3, $a7
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	add.d	$a0, $a6, $a7
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	add.d	$a0, $a1, $a7
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	addi.w	$a0, $t6, 0
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	add.d	$a0, $t4, $t2
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	bstrpick.d	$a0, $t6, 30, 2
	slli.d	$a0, $a0, 2
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	xvreplve0.d	$xr2, $xr1
	sub.d	$t0, $zero, $t5
	sub.d	$s4, $zero, $t4
	st.d	$t2, $sp, 296                   # 8-byte Folded Spill
	add.d	$a0, $t5, $t2
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	st.d	$t4, $sp, 176                   # 8-byte Folded Spill
	st.d	$s4, $sp, 168                   # 8-byte Folded Spill
	st.d	$t5, $sp, 160                   # 8-byte Folded Spill
	st.d	$t0, $sp, 152                   # 8-byte Folded Spill
	st.d	$t6, $sp, 216                   # 8-byte Folded Spill
	b	.LBB4_7
	.p2align	4, , 16
.LBB4_6:                                # %for.cond157.for.inc241_crit_edge.us
                                        #   in Loop: Header=BB4_7 Depth=2
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	add.w	$a0, $a0, $t5
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	add.d	$a0, $a0, $t5
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	add.d	$a0, $a0, $t5
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	add.d	$a0, $a0, $t5
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	add.d	$a0, $a0, $t5
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	beq	$a1, $a0, .LBB4_2
.LBB4_7:                                # %for.cond157.preheader.us
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_9 Depth 3
                                        #         Child Loop BB4_33 Depth 4
                                        #         Child Loop BB4_12 Depth 4
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB4_6
# %bb.8:                                # %for.cond161.preheader.us.us.preheader
                                        #   in Loop: Header=BB4_7 Depth=2
	move	$a3, $zero
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	mul.d	$a1, $t5, $a0
	add.d	$a0, $t5, $a1
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	add.d	$a0, $t4, $a1
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	addi.d	$a0, $a1, 1
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.d	$a1, $sp, 328                   # 8-byte Folded Spill
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	ld.d	$t3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 192                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_9:                                # %for.cond161.preheader.us.us
                                        #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_33 Depth 4
                                        #         Child Loop BB4_12 Depth 4
	bgeu	$t6, $fp, .LBB4_14
# %bb.10:                               #   in Loop: Header=BB4_9 Depth=3
	move	$s7, $zero
.LBB4_11:                               # %for.body164.us.us.preheader
                                        #   in Loop: Header=BB4_9 Depth=3
	sub.d	$a1, $t6, $s7
	.p2align	4, , 16
.LBB4_12:                               # %for.body164.us.us
                                        #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_7 Depth=2
                                        #       Parent Loop BB4_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.w	$a2, $a7, $s7
	slli.d	$a4, $a2, 3
	fldx.d	$fa3, $s0, $a4
	alsl.d	$a5, $a2, $t7, 3
	fldx.d	$fa4, $t7, $a4
	addi.w	$a2, $a2, 1
	slli.d	$a2, $a2, 3
	fldx.d	$fa5, $t7, $a2
	fld.d	$fa6, $a5, -8
	fldx.d	$fa7, $s1, $a2
	fldx.d	$ft0, $s1, $a4
	fsub.d	$fa5, $fa5, $fa4
	fsub.d	$fa6, $fa4, $fa6
	fneg.d	$fa6, $fa6
	fmul.d	$fa6, $ft0, $fa6
	fmadd.d	$fa5, $fa7, $fa5, $fa6
	add.w	$a2, $t3, $s7
	slli.d	$a2, $a2, 3
	fldx.d	$fa6, $s2, $a2
	fldx.d	$fa7, $t7, $a2
	add.w	$a2, $t2, $s7
	slli.d	$a2, $a2, 3
	fldx.d	$ft0, $t7, $a2
	fsub.d	$fa7, $fa7, $fa4
	fmadd.d	$fa5, $fa6, $fa7, $fa5
	fldx.d	$fa6, $s2, $a4
	fsub.d	$fa7, $fa4, $ft0
	add.w	$a2, $s8, $s7
	slli.d	$a2, $a2, 3
	fldx.d	$ft0, $t7, $a2
	fneg.d	$fa6, $fa6
	fmadd.d	$fa5, $fa6, $fa7, $fa5
	fldx.d	$fa6, $s3, $a2
	fsub.d	$fa7, $ft0, $fa4
	add.w	$a2, $a0, $s7
	slli.d	$a2, $a2, 3
	fldx.d	$ft0, $t7, $a2
	fldx.d	$ft1, $s3, $a4
	fmadd.d	$fa5, $fa6, $fa7, $fa5
	fmul.d	$fa3, $ft2, $fa3
	fsub.d	$fa6, $fa4, $ft0
	fneg.d	$fa7, $ft1
	fnmadd.d	$fa5, $fa7, $fa6, $fa5
	fmul.d	$fa5, $fa1, $fa5
	fmadd.d	$fa3, $fa3, $fa4, $fa5
	fstx.d	$fa3, $t8, $a4
	addi.d	$a1, $a1, -1
	addi.d	$s7, $s7, 1
	bnez	$a1, .LBB4_12
.LBB4_13:                               # %for.cond161.for.inc238_crit_edge.us.us
                                        #   in Loop: Header=BB4_9 Depth=3
	addi.w	$a3, $a3, 1
	add.w	$a7, $a7, $t4
	add.d	$a0, $a0, $t4
	add.d	$s8, $s8, $t4
	add.d	$t2, $t2, $t4
	add.d	$t3, $t3, $t4
	bne	$a3, $t1, .LBB4_9
	b	.LBB4_6
	.p2align	4, , 16
.LBB4_14:                               # %vector.scevcheck
                                        #   in Loop: Header=BB4_9 Depth=3
	mul.d	$a2, $t4, $a3
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	add.w	$a1, $a1, $a2
	ld.d	$a4, $sp, 352                   # 8-byte Folded Reload
	add.w	$a4, $a2, $a4
	move	$s7, $zero
	blt	$a4, $a1, .LBB4_11
# %bb.15:                               # %vector.scevcheck
                                        #   in Loop: Header=BB4_9 Depth=3
	ld.d	$a4, $sp, 344                   # 8-byte Folded Reload
	add.w	$ra, $a4, $a2
	ld.d	$a4, $sp, 336                   # 8-byte Folded Reload
	add.w	$a4, $a2, $a4
	blt	$a4, $ra, .LBB4_11
# %bb.16:                               # %vector.scevcheck
                                        #   in Loop: Header=BB4_9 Depth=3
	ld.d	$a4, $sp, 328                   # 8-byte Folded Reload
	add.w	$s6, $a4, $a2
	ld.d	$a4, $sp, 320                   # 8-byte Folded Reload
	add.w	$a4, $a2, $a4
	blt	$a4, $s6, .LBB4_11
# %bb.17:                               # %vector.scevcheck
                                        #   in Loop: Header=BB4_9 Depth=3
	ld.d	$a4, $sp, 312                   # 8-byte Folded Reload
	add.w	$a6, $a4, $a2
	ld.d	$a4, $sp, 304                   # 8-byte Folded Reload
	add.w	$a2, $a2, $a4
	blt	$a2, $a6, .LBB4_11
# %bb.18:                               # %vector.scevcheck
                                        #   in Loop: Header=BB4_9 Depth=3
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	srli.d	$a2, $a2, 32
	bnez	$a2, .LBB4_11
# %bb.19:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_9 Depth=3
	alsl.d	$a4, $s6, $t8, 3
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	alsl.d	$a2, $s6, $a2, 3
	alsl.d	$s7, $s6, $s0, 3
	ld.d	$a5, $sp, 280                   # 8-byte Folded Reload
	alsl.d	$fp, $s6, $a5, 3
	sltu	$fp, $a4, $fp
	sltu	$s7, $s7, $a2
	and	$fp, $fp, $s7
	move	$s7, $zero
	bnez	$fp, .LBB4_37
# %bb.20:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_9 Depth=3
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
	alsl.d	$fp, $s6, $a5, 3
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	alsl.d	$a5, $s6, $a5, 3
	sltu	$a5, $a4, $a5
	sltu	$fp, $fp, $a2
	and	$a5, $a5, $fp
	bnez	$a5, .LBB4_37
# %bb.21:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_9 Depth=3
	alsl.d	$a5, $a1, $t7, 3
	alsl.d	$fp, $a1, $s5, 3
	sltu	$fp, $a4, $fp
	sltu	$a5, $a5, $a2
	and	$a5, $fp, $a5
	bnez	$a5, .LBB4_37
# %bb.22:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_9 Depth=3
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a5, $s6, $a5, 3
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	alsl.d	$fp, $s6, $fp, 3
	sltu	$fp, $a4, $fp
	sltu	$a5, $a5, $a2
	and	$a5, $fp, $a5
	bnez	$a5, .LBB4_37
# %bb.23:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_9 Depth=3
	alsl.d	$a5, $ra, $t7, 3
	alsl.d	$fp, $ra, $s5, 3
	sltu	$fp, $a4, $fp
	sltu	$a5, $a5, $a2
	and	$a5, $fp, $a5
	bnez	$a5, .LBB4_37
# %bb.24:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_9 Depth=3
	ld.d	$a5, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$a5, $s6, $a5, 3
	alsl.d	$fp, $s6, $s5, 3
	sltu	$fp, $a4, $fp
	sltu	$a5, $a5, $a2
	and	$a5, $fp, $a5
	bnez	$a5, .LBB4_37
# %bb.25:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_9 Depth=3
	alsl.d	$a5, $a6, $t7, 3
	alsl.d	$fp, $a6, $s5, 3
	sltu	$fp, $a4, $fp
	sltu	$a5, $a5, $a2
	and	$a5, $fp, $a5
	bnez	$a5, .LBB4_37
# %bb.26:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_9 Depth=3
	move	$t6, $s5
	move	$s5, $t1
	alsl.d	$a5, $s6, $s1, 3
	ld.d	$t1, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$fp, $s6, $t1, 3
	sltu	$fp, $a4, $fp
	sltu	$a5, $a5, $a2
	and	$a5, $fp, $a5
	bnez	$a5, .LBB4_38
# %bb.27:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_9 Depth=3
	alsl.d	$a5, $a6, $s1, 3
	alsl.d	$a6, $a6, $t1, 3
	sltu	$a6, $a4, $a6
	sltu	$a5, $a5, $a2
	and	$a5, $a6, $a5
	ori	$fp, $zero, 8
	bnez	$a5, .LBB4_39
# %bb.28:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_9 Depth=3
	alsl.d	$a5, $s6, $s2, 3
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$a6, $s6, $fp, 3
	sltu	$a6, $a4, $a6
	sltu	$a5, $a5, $a2
	and	$a5, $a6, $a5
	move	$t1, $s5
	bnez	$a5, .LBB4_35
# %bb.29:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_9 Depth=3
	alsl.d	$a5, $ra, $s2, 3
	alsl.d	$a6, $ra, $fp, 3
	sltu	$a6, $a4, $a6
	sltu	$a5, $a5, $a2
	and	$a5, $a6, $a5
	move	$s5, $t6
	bnez	$a5, .LBB4_36
# %bb.30:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_9 Depth=3
	alsl.d	$a5, $s6, $s3, 3
	ld.d	$t6, $sp, 200                   # 8-byte Folded Reload
	alsl.d	$a6, $s6, $t6, 3
	move	$s6, $t6
	sltu	$a6, $a4, $a6
	sltu	$a5, $a5, $a2
	and	$a5, $a6, $a5
	ld.d	$t6, $sp, 216                   # 8-byte Folded Reload
	ori	$fp, $zero, 8
	bnez	$a5, .LBB4_11
# %bb.31:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_9 Depth=3
	alsl.d	$a5, $a1, $s3, 3
	alsl.d	$a1, $a1, $s6, 3
	sltu	$a1, $a4, $a1
	sltu	$a2, $a5, $a2
	and	$a1, $a1, $a2
	bnez	$a1, .LBB4_11
# %bb.32:                               # %vector.body.preheader
                                        #   in Loop: Header=BB4_9 Depth=3
	move	$a1, $a7
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_33:                               # %vector.body
                                        #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_7 Depth=2
                                        #       Parent Loop BB4_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$a4, $a1, 3
	xvldx	$xr3, $s0, $a4
	alsl.d	$a5, $a1, $t7, 3
	xvldx	$xr4, $t7, $a4
	addi.w	$a6, $a1, 1
	slli.d	$a6, $a6, 3
	xvldx	$xr5, $t7, $a6
	xvld	$xr6, $a5, -8
	xvldx	$xr7, $s1, $a6
	xvldx	$xr8, $s1, $a4
	xvfsub.d	$xr5, $xr5, $xr4
	xvfsub.d	$xr6, $xr4, $xr6
	xvbitrevi.d	$xr6, $xr6, 63
	xvfmul.d	$xr6, $xr8, $xr6
	xvfmadd.d	$xr5, $xr7, $xr5, $xr6
	add.w	$a5, $t4, $a1
	slli.d	$a5, $a5, 3
	xvldx	$xr6, $s2, $a5
	xvldx	$xr7, $t7, $a5
	add.w	$a5, $s4, $a1
	slli.d	$a5, $a5, 3
	xvldx	$xr8, $t7, $a5
	xvfsub.d	$xr7, $xr7, $xr4
	xvfmadd.d	$xr5, $xr6, $xr7, $xr5
	xvldx	$xr6, $s2, $a4
	xvfsub.d	$xr7, $xr4, $xr8
	add.w	$a5, $t5, $a1
	slli.d	$a5, $a5, 3
	xvldx	$xr8, $t7, $a5
	xvbitrevi.d	$xr6, $xr6, 63
	xvfmadd.d	$xr5, $xr6, $xr7, $xr5
	xvldx	$xr6, $s3, $a5
	xvfsub.d	$xr7, $xr8, $xr4
	add.w	$a5, $t0, $a1
	slli.d	$a5, $a5, 3
	xvldx	$xr8, $t7, $a5
	xvldx	$xr9, $s3, $a4
	xvfmadd.d	$xr5, $xr6, $xr7, $xr5
	xvfmul.d	$xr3, $xr0, $xr3
	xvfsub.d	$xr6, $xr4, $xr8
	xvbitrevi.d	$xr7, $xr9, 63
	xvfnmadd.d	$xr5, $xr7, $xr6, $xr5
	xvfmul.d	$xr5, $xr2, $xr5
	xvfmadd.d	$xr3, $xr3, $xr4, $xr5
	xvstx	$xr3, $t8, $a4
	addi.d	$a2, $a2, -4
	addi.w	$a1, $a1, 4
	bnez	$a2, .LBB4_33
# %bb.34:                               # %middle.block
                                        #   in Loop: Header=BB4_9 Depth=3
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	move	$s7, $a1
	bne	$a1, $t6, .LBB4_11
	b	.LBB4_13
.LBB4_35:                               #   in Loop: Header=BB4_9 Depth=3
	move	$s5, $t6
.LBB4_36:                               #   in Loop: Header=BB4_9 Depth=3
	ld.d	$t6, $sp, 216                   # 8-byte Folded Reload
	ori	$fp, $zero, 8
	b	.LBB4_11
.LBB4_37:                               #   in Loop: Header=BB4_9 Depth=3
	ori	$fp, $zero, 8
	b	.LBB4_11
.LBB4_38:                               #   in Loop: Header=BB4_9 Depth=3
	ori	$fp, $zero, 8
.LBB4_39:                               #   in Loop: Header=BB4_9 Depth=3
	move	$t1, $s5
	move	$s5, $t6
	ld.d	$t6, $sp, 216                   # 8-byte Folded Reload
	b	.LBB4_11
.LBB4_40:                               # %for.end246
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $a2, 80
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a1
	st.d	$a0, $a2, 80
	fld.d	$fs0, $sp, 368                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 440                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 448                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 456                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 464
	ret
.Lfunc_end4:
	.size	apply_op, .Lfunc_end4-apply_op
                                        # -- End function
	.globl	residual                        # -- Begin function residual
	.p2align	5
	.type	residual,@function
residual:                               # @residual
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -496
	st.d	$ra, $sp, 488                   # 8-byte Folded Spill
	st.d	$fp, $sp, 480                   # 8-byte Folded Spill
	st.d	$s0, $sp, 472                   # 8-byte Folded Spill
	st.d	$s1, $sp, 464                   # 8-byte Folded Spill
	st.d	$s2, $sp, 456                   # 8-byte Folded Spill
	st.d	$s3, $sp, 448                   # 8-byte Folded Spill
	st.d	$s4, $sp, 440                   # 8-byte Folded Spill
	st.d	$s5, $sp, 432                   # 8-byte Folded Spill
	st.d	$s6, $sp, 424                   # 8-byte Folded Spill
	st.d	$s7, $sp, 416                   # 8-byte Folded Spill
	st.d	$s8, $sp, 408                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 400                  # 8-byte Folded Spill
	fmov.d	$fs0, $fa1
                                        # kill: def $f0_64 killed $f0_64 def $xr0
	xvst	$xr0, $sp, 16                   # 32-byte Folded Spill
	move	$s0, $a4
	move	$s2, $a3
	move	$s1, $a2
	move	$s3, $a1
	move	$s4, $a0
	ori	$a3, $zero, 1
	ori	$fp, $zero, 1
	move	$a2, $s2
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(exchange_boundary)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	xvld	$xr10, $sp, 16                  # 32-byte Folded Reload
	ld.w	$a1, $s4, 1600
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	alsl.d	$a0, $s3, $s4, 3
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	blt	$a1, $fp, .LBB5_39
# %bb.1:                                # %for.body.lr.ph
	move	$a1, $zero
	ld.d	$a0, $s4, 1776
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1616
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	xvreplve0.d	$xr0, $xr10
	ori	$a0, $zero, 216
	mul.d	$a0, $s3, $a0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	slli.d	$a0, $s2, 3
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	slli.d	$a0, $s0, 3
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	slli.d	$a0, $s1, 3
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ori	$t2, $zero, 8
	b	.LBB5_3
	.p2align	4, , 16
.LBB5_2:                                # %for.end247
                                        #   in Loop: Header=BB5_3 Depth=1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB5_39
.LBB5_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_7 Depth 2
                                        #       Child Loop BB5_9 Depth 3
                                        #         Child Loop BB5_34 Depth 4
                                        #         Child Loop BB5_12 Depth 4
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	slli.d	$a0, $a1, 8
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 248
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	ld.w	$a2, $a0, 28
	ori	$a1, $zero, 1
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	blt	$a2, $a1, .LBB5_2
# %bb.4:                                # %for.cond158.preheader.lr.ph
                                        #   in Loop: Header=BB5_3 Depth=1
	ld.w	$a2, $a0, 24
	ori	$a1, $zero, 1
	st.d	$a2, $sp, 392                   # 8-byte Folded Spill
	blt	$a2, $a1, .LBB5_2
# %bb.5:                                # %for.cond158.preheader.us.preheader
                                        #   in Loop: Header=BB5_3 Depth=1
	st.d	$zero, $sp, 208                 # 8-byte Folded Spill
	st.d	$zero, $sp, 200                 # 8-byte Folded Spill
	ld.w	$t5, $a0, 48
	ld.d	$a1, $a0, 176
	ld.w	$t6, $a0, 52
	ld.w	$a2, $a0, 44
	ld.wu	$t7, $a0, 20
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	add.d	$a3, $t5, $t6
	addi.d	$a3, $a3, 1
	mul.w	$a2, $a2, $a3
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ldx.d	$a3, $a1, $a3
	ld.d	$a4, $a1, 16
	ld.d	$a6, $a1, 40
	alsl.d	$t8, $a2, $a0, 3
	alsl.d	$s0, $a2, $a3, 3
	alsl.d	$s1, $a2, $a4, 3
	alsl.d	$s2, $a2, $a6, 3
	ld.d	$a7, $a1, 48
	ld.d	$t0, $a1, 56
	ld.d	$a5, $sp, 72                    # 8-byte Folded Reload
	ldx.d	$a1, $a1, $a5
	ld.d	$a5, $sp, 96                    # 8-byte Folded Reload
	fld.d	$fa1, $a5, 0
	alsl.d	$s3, $a2, $a7, 3
	alsl.d	$s4, $a2, $t0, 3
	alsl.d	$s7, $a2, $a1, 3
	fmul.d	$fa1, $fa1, $fa1
	frecip.d	$fa1, $fa1
	fmul.d	$fa1, $fs0, $fa1
	addi.d	$t3, $t7, -1
	slli.d	$a2, $a2, 3
	alsl.d	$t1, $t7, $a2, 3
	add.d	$a1, $a1, $t1
	st.d	$a1, $sp, 312                   # 8-byte Folded Spill
	add.d	$a1, $a4, $t1
	st.d	$a1, $sp, 304                   # 8-byte Folded Spill
	slli.d	$a1, $t6, 3
	sub.d	$a4, $a2, $a1
	add.d	$a4, $a0, $a4
	st.d	$a4, $sp, 288                   # 8-byte Folded Spill
	sub.d	$a1, $t1, $a1
	add.d	$a1, $a0, $a1
	st.d	$a1, $sp, 280                   # 8-byte Folded Spill
	add.d	$a5, $a0, $t1
	slli.d	$a1, $t5, 3
	sub.d	$a2, $a2, $a1
	add.d	$a2, $a0, $a2
	st.d	$a2, $sp, 272                   # 8-byte Folded Spill
	sub.d	$a1, $t1, $a1
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	addi.d	$a0, $t8, -8
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	add.d	$a0, $a6, $t1
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	add.d	$a0, $a7, $t1
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	add.d	$a0, $t0, $t1
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	add.d	$a0, $a3, $t1
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	addi.w	$a0, $t7, 0
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	add.d	$a0, $t5, $t3
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	bstrpick.d	$a0, $t7, 30, 2
	slli.d	$a0, $a0, 2
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	xvreplve0.d	$xr2, $xr1
	sub.d	$a0, $zero, $t6
	sub.d	$ra, $zero, $t5
	st.d	$t3, $sp, 320                   # 8-byte Folded Spill
	add.d	$a1, $t6, $t3
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	st.d	$t5, $sp, 192                   # 8-byte Folded Spill
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$t6, $sp, 176                   # 8-byte Folded Spill
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	st.d	$t7, $sp, 240                   # 8-byte Folded Spill
	b	.LBB5_7
	.p2align	4, , 16
.LBB5_6:                                # %for.cond158.for.inc245_crit_edge.us
                                        #   in Loop: Header=BB5_7 Depth=2
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	add.w	$a1, $a1, $t6
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	add.d	$a1, $a1, $t6
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	add.d	$a1, $a1, $t6
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	add.d	$a1, $a1, $t6
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	add.d	$a1, $a1, $t6
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.d	$a2, $sp, 200                   # 8-byte Folded Spill
	beq	$a2, $a1, .LBB5_2
.LBB5_7:                                # %for.cond158.preheader.us
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_9 Depth 3
                                        #         Child Loop BB5_34 Depth 4
                                        #         Child Loop BB5_12 Depth 4
	ori	$a1, $zero, 1
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	blt	$a2, $a1, .LBB5_6
# %bb.8:                                # %for.cond162.preheader.us.us.preheader
                                        #   in Loop: Header=BB5_7 Depth=2
	move	$a7, $zero
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	mul.d	$a2, $t6, $a1
	add.d	$a1, $t6, $a2
	st.d	$a1, $sp, 384                   # 8-byte Folded Spill
	add.d	$a1, $t5, $a2
	st.d	$a1, $sp, 368                   # 8-byte Folded Spill
	addi.d	$a1, $a2, 1
	st.d	$a1, $sp, 336                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	add.d	$a1, $a2, $a1
	st.d	$a1, $sp, 344                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	add.d	$a1, $a2, $a1
	st.d	$a1, $sp, 328                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	add.d	$a1, $a2, $a1
	st.d	$a1, $sp, 360                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	st.d	$a2, $sp, 352                   # 8-byte Folded Spill
	add.d	$a1, $a2, $a1
	st.d	$a1, $sp, 376                   # 8-byte Folded Spill
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 208                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_9:                                # %for.cond162.preheader.us.us
                                        #   Parent Loop BB5_3 Depth=1
                                        #     Parent Loop BB5_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_34 Depth 4
                                        #         Child Loop BB5_12 Depth 4
	bgeu	$t7, $t2, .LBB5_14
# %bb.10:                               #   in Loop: Header=BB5_9 Depth=3
	move	$s5, $zero
.LBB5_11:                               # %for.body165.us.us.preheader
                                        #   in Loop: Header=BB5_9 Depth=3
	sub.d	$a1, $t7, $s5
	.p2align	4, , 16
.LBB5_12:                               # %for.body165.us.us
                                        #   Parent Loop BB5_3 Depth=1
                                        #     Parent Loop BB5_7 Depth=2
                                        #       Parent Loop BB5_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.w	$a2, $s6, $s5
	slli.d	$a4, $a2, 3
	fldx.d	$fa3, $s1, $a4
	alsl.d	$a6, $a2, $t8, 3
	fldx.d	$fa4, $t8, $a4
	addi.w	$a2, $a2, 1
	slli.d	$a2, $a2, 3
	fldx.d	$fa5, $t8, $a2
	fld.d	$fa6, $a6, -8
	fldx.d	$fa7, $s2, $a2
	fldx.d	$ft0, $s2, $a4
	fsub.d	$fa5, $fa5, $fa4
	fsub.d	$fa6, $fa4, $fa6
	fneg.d	$fa6, $fa6
	fmul.d	$fa6, $ft0, $fa6
	fmadd.d	$fa5, $fa7, $fa5, $fa6
	add.w	$a2, $fp, $s5
	slli.d	$a2, $a2, 3
	fldx.d	$fa6, $s3, $a2
	fldx.d	$fa7, $t8, $a2
	add.w	$a2, $a3, $s5
	slli.d	$a2, $a2, 3
	fldx.d	$ft0, $t8, $a2
	fsub.d	$fa7, $fa7, $fa4
	fmadd.d	$fa5, $fa6, $fa7, $fa5
	fldx.d	$fa6, $s3, $a4
	fsub.d	$fa7, $fa4, $ft0
	add.w	$a2, $t1, $s5
	slli.d	$a2, $a2, 3
	fldx.d	$ft0, $t8, $a2
	fneg.d	$fa6, $fa6
	fmadd.d	$fa5, $fa6, $fa7, $fa5
	fldx.d	$fa6, $s4, $a2
	fsub.d	$fa7, $ft0, $fa4
	add.w	$a2, $t0, $s5
	slli.d	$a2, $a2, 3
	fldx.d	$ft0, $t8, $a2
	fldx.d	$ft1, $s4, $a4
	fmadd.d	$fa5, $fa6, $fa7, $fa5
	fmul.d	$fa3, $ft2, $fa3
	fsub.d	$fa6, $fa4, $ft0
	fneg.d	$fa7, $ft1
	fldx.d	$ft0, $s0, $a4
	fnmadd.d	$fa5, $fa7, $fa6, $fa5
	fmul.d	$fa5, $fa1, $fa5
	fmadd.d	$fa3, $fa3, $fa4, $fa5
	fsub.d	$fa3, $ft0, $fa3
	fstx.d	$fa3, $s7, $a4
	addi.d	$a1, $a1, -1
	addi.d	$s5, $s5, 1
	bnez	$a1, .LBB5_12
.LBB5_13:                               # %for.cond162.for.inc242_crit_edge.us.us
                                        #   in Loop: Header=BB5_9 Depth=3
	addi.w	$a7, $a7, 1
	add.w	$s6, $s6, $t5
	add.d	$t0, $t0, $t5
	add.d	$t1, $t1, $t5
	add.d	$a3, $a3, $t5
	add.d	$fp, $fp, $t5
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	bne	$a7, $a1, .LBB5_9
	b	.LBB5_6
	.p2align	4, , 16
.LBB5_14:                               # %vector.scevcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	mul.d	$a1, $t5, $a7
	ld.d	$a2, $sp, 384                   # 8-byte Folded Reload
	add.w	$t3, $a2, $a1
	ld.d	$a2, $sp, 376                   # 8-byte Folded Reload
	add.w	$a4, $a1, $a2
	move	$s5, $zero
	blt	$a4, $t3, .LBB5_11
# %bb.15:                               # %vector.scevcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	add.w	$s8, $a2, $a1
	ld.d	$a2, $sp, 360                   # 8-byte Folded Reload
	add.w	$a4, $a1, $a2
	blt	$a4, $s8, .LBB5_11
# %bb.16:                               # %vector.scevcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	ld.d	$a2, $sp, 352                   # 8-byte Folded Reload
	add.w	$a6, $a2, $a1
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	add.w	$a4, $a1, $a2
	blt	$a4, $a6, .LBB5_11
# %bb.17:                               # %vector.scevcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	ld.d	$a2, $sp, 336                   # 8-byte Folded Reload
	add.w	$t4, $a2, $a1
	ld.d	$a2, $sp, 328                   # 8-byte Folded Reload
	add.w	$a1, $a1, $a2
	blt	$a1, $t4, .LBB5_11
# %bb.18:                               # %vector.scevcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	srli.d	$a1, $a1, 32
	bnez	$a1, .LBB5_11
# %bb.19:                               # %vector.memcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	alsl.d	$a1, $a6, $s7, 3
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	alsl.d	$a4, $a6, $a2, 3
	alsl.d	$s5, $a6, $s1, 3
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	alsl.d	$a2, $a6, $a2, 3
	sltu	$a2, $a1, $a2
	sltu	$s5, $s5, $a4
	and	$a2, $a2, $s5
	move	$s5, $zero
	bnez	$a2, .LBB5_11
# %bb.20:                               # %vector.memcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	alsl.d	$a2, $a6, $a2, 3
	ld.d	$t2, $sp, 280                   # 8-byte Folded Reload
	alsl.d	$t2, $a6, $t2, 3
	sltu	$t2, $a1, $t2
	sltu	$a2, $a2, $a4
	and	$a2, $t2, $a2
	bnez	$a2, .LBB5_36
# %bb.21:                               # %vector.memcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	alsl.d	$a2, $t3, $t8, 3
	alsl.d	$t2, $t3, $a5, 3
	sltu	$t2, $a1, $t2
	sltu	$a2, $a2, $a4
	and	$a2, $t2, $a2
	bnez	$a2, .LBB5_36
# %bb.22:                               # %vector.memcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	alsl.d	$a2, $a6, $a2, 3
	ld.d	$t2, $sp, 264                   # 8-byte Folded Reload
	alsl.d	$t2, $a6, $t2, 3
	sltu	$t2, $a1, $t2
	sltu	$a2, $a2, $a4
	and	$a2, $t2, $a2
	bnez	$a2, .LBB5_36
# %bb.23:                               # %vector.memcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	alsl.d	$a2, $s8, $t8, 3
	alsl.d	$t2, $s8, $a5, 3
	sltu	$t2, $a1, $t2
	sltu	$a2, $a2, $a4
	and	$a2, $t2, $a2
	bnez	$a2, .LBB5_36
# %bb.24:                               # %vector.memcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	alsl.d	$a2, $a6, $a2, 3
	alsl.d	$t2, $a6, $a5, 3
	sltu	$t2, $a1, $t2
	sltu	$a2, $a2, $a4
	and	$a2, $t2, $a2
	bnez	$a2, .LBB5_36
# %bb.25:                               # %vector.memcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	alsl.d	$a2, $t4, $t8, 3
	alsl.d	$t2, $t4, $a5, 3
	sltu	$t2, $a1, $t2
	sltu	$a2, $a2, $a4
	and	$a2, $t2, $a2
	bnez	$a2, .LBB5_36
# %bb.26:                               # %vector.memcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	move	$t7, $a5
	alsl.d	$a2, $a6, $s2, 3
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$t2, $a6, $a5, 3
	sltu	$t2, $a1, $t2
	sltu	$a2, $a2, $a4
	and	$a2, $t2, $a2
	bnez	$a2, .LBB5_38
# %bb.27:                               # %vector.memcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	alsl.d	$a2, $t4, $s2, 3
	alsl.d	$t2, $t4, $a5, 3
	sltu	$t2, $a1, $t2
	sltu	$a2, $a2, $a4
	and	$a2, $t2, $a2
	bnez	$a2, .LBB5_38
# %bb.28:                               # %vector.memcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	alsl.d	$a2, $a6, $s3, 3
	ld.d	$t4, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$t2, $a6, $t4, 3
	sltu	$t2, $a1, $t2
	sltu	$a2, $a2, $a4
	and	$a2, $t2, $a2
	move	$a5, $t7
	bnez	$a2, .LBB5_37
# %bb.29:                               # %vector.memcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	alsl.d	$a2, $s8, $s3, 3
	alsl.d	$t2, $s8, $t4, 3
	sltu	$t2, $a1, $t2
	sltu	$a2, $a2, $a4
	and	$a2, $t2, $a2
	ld.d	$t7, $sp, 240                   # 8-byte Folded Reload
	bnez	$a2, .LBB5_36
# %bb.30:                               # %vector.memcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	alsl.d	$a2, $a6, $s4, 3
	ld.d	$t4, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$t2, $a6, $t4, 3
	sltu	$t2, $a1, $t2
	sltu	$a2, $a2, $a4
	and	$a2, $t2, $a2
	bnez	$a2, .LBB5_36
# %bb.31:                               # %vector.memcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	alsl.d	$a2, $t3, $s4, 3
	alsl.d	$t2, $t3, $t4, 3
	sltu	$t2, $a1, $t2
	sltu	$a2, $a2, $a4
	and	$a2, $t2, $a2
	bnez	$a2, .LBB5_36
# %bb.32:                               # %vector.memcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	alsl.d	$a2, $a6, $s0, 3
	ld.d	$t2, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$a6, $a6, $t2, 3
	sltu	$a1, $a1, $a6
	sltu	$a2, $a2, $a4
	and	$a1, $a1, $a2
	ori	$t2, $zero, 8
	bnez	$a1, .LBB5_11
# %bb.33:                               # %vector.body.preheader
                                        #   in Loop: Header=BB5_9 Depth=3
	move	$a1, $s6
	ld.d	$a4, $sp, 296                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_34:                               # %vector.body
                                        #   Parent Loop BB5_3 Depth=1
                                        #     Parent Loop BB5_7 Depth=2
                                        #       Parent Loop BB5_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$a6, $a1, 3
	xvldx	$xr3, $s1, $a6
	alsl.d	$a2, $a1, $t8, 3
	xvldx	$xr4, $t8, $a6
	addi.w	$t2, $a1, 1
	slli.d	$t2, $t2, 3
	xvldx	$xr5, $t8, $t2
	xvld	$xr6, $a2, -8
	xvldx	$xr7, $s2, $t2
	xvldx	$xr8, $s2, $a6
	xvfsub.d	$xr5, $xr5, $xr4
	xvfsub.d	$xr6, $xr4, $xr6
	xvbitrevi.d	$xr6, $xr6, 63
	xvfmul.d	$xr6, $xr8, $xr6
	xvfmadd.d	$xr5, $xr7, $xr5, $xr6
	add.w	$a2, $t5, $a1
	slli.d	$a2, $a2, 3
	xvldx	$xr6, $s3, $a2
	xvldx	$xr7, $t8, $a2
	add.w	$a2, $ra, $a1
	slli.d	$a2, $a2, 3
	xvldx	$xr8, $t8, $a2
	xvfsub.d	$xr7, $xr7, $xr4
	xvfmadd.d	$xr5, $xr6, $xr7, $xr5
	xvldx	$xr6, $s3, $a6
	xvfsub.d	$xr7, $xr4, $xr8
	add.w	$a2, $t6, $a1
	slli.d	$a2, $a2, 3
	xvldx	$xr8, $t8, $a2
	xvbitrevi.d	$xr6, $xr6, 63
	xvfmadd.d	$xr5, $xr6, $xr7, $xr5
	xvldx	$xr6, $s4, $a2
	xvfsub.d	$xr7, $xr8, $xr4
	add.w	$a2, $a0, $a1
	slli.d	$a2, $a2, 3
	xvldx	$xr8, $t8, $a2
	xvldx	$xr9, $s4, $a6
	xvfmadd.d	$xr5, $xr6, $xr7, $xr5
	xvfmul.d	$xr3, $xr0, $xr3
	xvfsub.d	$xr6, $xr4, $xr8
	xvbitrevi.d	$xr7, $xr9, 63
	xvldx	$xr8, $s0, $a6
	xvfnmadd.d	$xr5, $xr7, $xr6, $xr5
	xvfmul.d	$xr5, $xr2, $xr5
	xvfmadd.d	$xr3, $xr3, $xr4, $xr5
	xvfsub.d	$xr3, $xr8, $xr3
	xvstx	$xr3, $s7, $a6
	addi.d	$a4, $a4, -4
	addi.w	$a1, $a1, 4
	bnez	$a4, .LBB5_34
# %bb.35:                               # %middle.block
                                        #   in Loop: Header=BB5_9 Depth=3
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	move	$s5, $a1
	ori	$t2, $zero, 8
	bne	$a1, $t7, .LBB5_11
	b	.LBB5_13
.LBB5_36:                               #   in Loop: Header=BB5_9 Depth=3
	ori	$t2, $zero, 8
	b	.LBB5_11
.LBB5_37:                               #   in Loop: Header=BB5_9 Depth=3
	ori	$t2, $zero, 8
	ld.d	$t7, $sp, 240                   # 8-byte Folded Reload
	b	.LBB5_11
.LBB5_38:                               #   in Loop: Header=BB5_9 Depth=3
	ori	$t2, $zero, 8
	move	$a5, $t7
	ld.d	$t7, $sp, 240                   # 8-byte Folded Reload
	b	.LBB5_11
.LBB5_39:                               # %for.end250
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a2, 160
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a1
	st.d	$a0, $a2, 160
	fld.d	$fs0, $sp, 400                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 472                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 480                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 488                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 496
	ret
.Lfunc_end5:
	.size	residual, .Lfunc_end5-residual
                                        # -- End function
	.globl	residual_and_restriction        # -- Begin function residual_and_restriction
	.p2align	5
	.type	residual_and_restriction,@function
residual_and_restriction:               # @residual_and_restriction
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -496
	st.d	$ra, $sp, 488                   # 8-byte Folded Spill
	st.d	$fp, $sp, 480                   # 8-byte Folded Spill
	st.d	$s0, $sp, 472                   # 8-byte Folded Spill
	st.d	$s1, $sp, 464                   # 8-byte Folded Spill
	st.d	$s2, $sp, 456                   # 8-byte Folded Spill
	st.d	$s3, $sp, 448                   # 8-byte Folded Spill
	st.d	$s4, $sp, 440                   # 8-byte Folded Spill
	st.d	$s5, $sp, 432                   # 8-byte Folded Spill
	st.d	$s6, $sp, 424                   # 8-byte Folded Spill
	st.d	$s7, $sp, 416                   # 8-byte Folded Spill
	st.d	$s8, $sp, 408                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 400                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 392                  # 8-byte Folded Spill
	fmov.d	$fs0, $fa1
	fmov.d	$fs1, $fa0
	move	$s0, $a5
	move	$s3, $a4
	move	$s1, $a3
	move	$s2, $a2
	move	$s4, $a1
	move	$s5, $a0
	ori	$a3, $zero, 1
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(exchange_boundary)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	ld.w	$a1, $s5, 1600
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	alsl.d	$a0, $s4, $s5, 3
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	blt	$a1, $a2, .LBB6_38
# %bb.1:                                # %for.body.lr.ph
	move	$a1, $zero
	ld.d	$a0, $s5, 1776
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1616
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ori	$a0, $zero, 216
	mul.d	$a3, $s3, $a0
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	mul.d	$a0, $s4, $a0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	slli.d	$a0, $s2, 3
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	slli.d	$a0, $s1, 3
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	slli.d	$a0, $s0, 3
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	xvrepli.b	$xr0, 0
	vldi	$vr1, -960
	b	.LBB6_3
	.p2align	4, , 16
.LBB6_2:                                # %for.end328
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB6_38
.LBB6_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_7 Depth 2
                                        #       Child Loop BB6_29 Depth 3
                                        #         Child Loop BB6_36 Depth 4
                                        #         Child Loop BB6_32 Depth 4
                                        #       Child Loop BB6_9 Depth 3
                                        #         Child Loop BB6_24 Depth 4
                                        #         Child Loop BB6_13 Depth 4
                                        #         Child Loop BB6_15 Depth 4
                                        #           Child Loop BB6_16 Depth 5
                                        #           Child Loop BB6_18 Depth 5
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	slli.d	$a0, $a1, 8
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.d	$a1, $a0, 248
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.w	$a3, $a0, 28
	st.d	$a3, $sp, 112                   # 8-byte Folded Spill
	blt	$a3, $a2, .LBB6_2
# %bb.4:                                # %for.cond197.preheader.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.w	$a3, $a0, 24
	st.d	$a3, $sp, 256                   # 8-byte Folded Spill
	blt	$a3, $a2, .LBB6_2
# %bb.5:                                # %for.cond197.preheader.us.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	move	$t1, $zero
	move	$t2, $zero
	st.d	$zero, $sp, 248                 # 8-byte Folded Spill
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	add.d	$a1, $a1, $a3
	ld.w	$t4, $a1, 48
	ld.w	$t8, $a1, 52
	ld.w	$a5, $a1, 44
	ld.wu	$t5, $a1, 20
	ld.w	$t6, $a0, 48
	ld.wu	$s2, $a0, 20
	ld.d	$a3, $a0, 176
	ld.w	$t7, $a0, 52
	ld.w	$a0, $a0, 44
	addi.w	$a4, $s2, 0
	st.d	$a4, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	ldx.d	$a4, $a3, $a4
	add.d	$s0, $t6, $t7
	addi.d	$a6, $s0, 1
	ld.d	$a7, $sp, 32                    # 8-byte Folded Reload
	ldx.d	$a7, $a3, $a7
	ld.d	$t0, $a3, 16
	mul.w	$a0, $a0, $a6
	alsl.d	$ra, $a0, $a4, 3
	alsl.d	$fp, $a0, $a7, 3
	alsl.d	$s7, $a0, $t0, 3
	move	$t0, $s0
	ld.d	$a4, $a3, 40
	ld.d	$a6, $a3, 48
	ld.d	$a7, $a3, 56
	ld.d	$a1, $a1, 176
	alsl.d	$a3, $a0, $a4, 3
	alsl.d	$a4, $a0, $a6, 3
	alsl.d	$a6, $a0, $a7, 3
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	add.d	$a1, $t4, $t8
	ld.d	$a7, $sp, 56                    # 8-byte Folded Reload
	fld.d	$fa2, $a7, 0
	addi.d	$a1, $a1, 1
	mul.w	$a1, $a5, $a1
	alsl.d	$a7, $a1, $a0, 3
	move	$a1, $zero
	fmul.d	$fa2, $fa2, $fa2
	frecip.d	$fa2, $fa2
	fmul.d	$fa2, $fs0, $fa2
	addi.d	$a0, $t5, -1
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	bstrpick.d	$a0, $t5, 30, 3
	slli.d	$a0, $a0, 3
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	sub.d	$a0, $zero, $t7
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	slli.d	$a0, $t7, 1
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	slli.d	$a0, $t6, 1
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	sub.d	$a0, $zero, $t6
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	sub.d	$a0, $t6, $t7
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ori	$a0, $zero, 2
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	st.d	$t6, $sp, 352                   # 8-byte Folded Spill
	st.d	$t6, $sp, 160                   # 8-byte Folded Spill
	st.d	$t7, $sp, 344                   # 8-byte Folded Spill
	st.d	$t7, $sp, 152                   # 8-byte Folded Spill
	st.d	$t4, $sp, 232                   # 8-byte Folded Spill
	st.d	$t8, $sp, 360                   # 8-byte Folded Spill
	st.d	$t5, $sp, 224                   # 8-byte Folded Spill
	b	.LBB6_7
	.p2align	4, , 16
.LBB6_6:                                # %for.cond197.for.inc326_crit_edge.us
                                        #   in Loop: Header=BB6_7 Depth=2
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
	addi.w	$a5, $a5, 2
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 2
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$t2, $sp, 144                   # 8-byte Folded Reload
	add.w	$t2, $t2, $t8
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 136                   # 8-byte Folded Reload
	add.d	$t1, $t1, $a2
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 120                   # 8-byte Folded Reload
	add.d	$t0, $t0, $a2
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	st.d	$a5, $sp, 248                   # 8-byte Folded Spill
	bge	$a5, $a0, .LBB6_2
.LBB6_7:                                # %for.cond197.preheader.us
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_29 Depth 3
                                        #         Child Loop BB6_36 Depth 4
                                        #         Child Loop BB6_32 Depth 4
                                        #       Child Loop BB6_9 Depth 3
                                        #         Child Loop BB6_24 Depth 4
                                        #         Child Loop BB6_13 Depth 4
                                        #         Child Loop BB6_15 Depth 4
                                        #           Child Loop BB6_16 Depth 5
                                        #           Child Loop BB6_18 Depth 5
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	mul.d	$t6, $t8, $a1
	addi.w	$a1, $t5, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.d	$t1, $sp, 136                   # 8-byte Folded Spill
	st.d	$t2, $sp, 144                   # 8-byte Folded Spill
	st.d	$t0, $sp, 120                   # 8-byte Folded Spill
	blt	$a0, $a2, .LBB6_26
# %bb.8:                                # %for.cond204.preheader.us.us.preheader
                                        #   in Loop: Header=BB6_7 Depth=2
	move	$a2, $zero
	move	$t3, $zero
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	st.d	$t6, $sp, 200                   # 8-byte Folded Spill
	add.d	$a0, $t6, $a0
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	move	$t6, $t0
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	move	$t7, $t1
	ld.d	$s0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	st.d	$a1, $sp, 240                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB6_9:                                # %for.cond204.preheader.us.us
                                        #   Parent Loop BB6_3 Depth=1
                                        #     Parent Loop BB6_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB6_24 Depth 4
                                        #         Child Loop BB6_13 Depth 4
                                        #         Child Loop BB6_15 Depth 4
                                        #           Child Loop BB6_16 Depth 5
                                        #           Child Loop BB6_18 Depth 5
	blez	$a1, .LBB6_14
# %bb.10:                               # %for.body207.lr.ph.us.us
                                        #   in Loop: Header=BB6_9 Depth=3
	ori	$a0, $zero, 8
	bgeu	$t5, $a0, .LBB6_21
# %bb.11:                               #   in Loop: Header=BB6_9 Depth=3
	move	$a5, $zero
.LBB6_12:                               # %for.body207.us.us.preheader
                                        #   in Loop: Header=BB6_9 Depth=3
	add.w	$a1, $t2, $a5
	sub.d	$a5, $t5, $a5
	.p2align	4, , 16
.LBB6_13:                               # %for.body207.us.us
                                        #   Parent Loop BB6_3 Depth=1
                                        #     Parent Loop BB6_7 Depth=2
                                        #       Parent Loop BB6_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$t0, $a1, 3
	stx.d	$zero, $a7, $t0
	addi.d	$a5, $a5, -1
	addi.w	$a1, $a1, 1
	bnez	$a5, .LBB6_13
.LBB6_14:                               # %for.cond215.preheader.us.us
                                        #   in Loop: Header=BB6_9 Depth=3
	st.d	$t2, $sp, 264                   # 8-byte Folded Spill
	st.d	$a2, $sp, 336                   # 8-byte Folded Spill
	st.d	$t3, $sp, 328                   # 8-byte Folded Spill
	bstrpick.d	$a1, $t3, 31, 1
	mul.d	$a0, $a1, $t4
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	st.d	$t6, $sp, 320                   # 8-byte Folded Spill
	move	$t4, $t6
	st.d	$s8, $sp, 312                   # 8-byte Folded Spill
	st.d	$t7, $sp, 304                   # 8-byte Folded Spill
	move	$a1, $t7
	st.d	$s0, $sp, 296                   # 8-byte Folded Spill
	move	$t1, $s0
	st.d	$s1, $sp, 288                   # 8-byte Folded Spill
	move	$t0, $s1
	st.d	$s3, $sp, 280                   # 8-byte Folded Spill
	move	$t2, $s3
	st.d	$s4, $sp, 272                   # 8-byte Folded Spill
	move	$t5, $s4
	ld.d	$t6, $sp, 248                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_15:                               # %for.cond220.preheader.us.us.us
                                        #   Parent Loop BB6_3 Depth=1
                                        #     Parent Loop BB6_7 Depth=2
                                        #       Parent Loop BB6_9 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB6_16 Depth 5
                                        #           Child Loop BB6_18 Depth 5
	move	$a5, $zero
	bstrpick.d	$t7, $t6, 31, 1
	mul.d	$t7, $t7, $t8
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	add.d	$s1, $a0, $t7
	move	$t8, $s2
	.p2align	4, , 16
.LBB6_16:                               # %for.body228.us.us.us.us
                                        #   Parent Loop BB6_3 Depth=1
                                        #     Parent Loop BB6_7 Depth=2
                                        #       Parent Loop BB6_9 Depth=3
                                        #         Parent Loop BB6_15 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	add.w	$t7, $a1, $a5
	bstrpick.d	$s0, $a5, 31, 1
	slli.d	$s3, $t7, 3
	alsl.d	$s6, $t7, $ra, 3
	fldx.d	$fa3, $ra, $s3
	addi.w	$t7, $t7, 1
	slli.d	$t7, $t7, 3
	fldx.d	$fa4, $ra, $t7
	fld.d	$fa5, $s6, -8
	fldx.d	$fa6, $a3, $t7
	fldx.d	$fa7, $a3, $s3
	fsub.d	$fa4, $fa4, $fa3
	fsub.d	$fa5, $fa3, $fa5
	fneg.d	$fa5, $fa5
	fmul.d	$fa5, $fa7, $fa5
	fmadd.d	$fa4, $fa6, $fa4, $fa5
	add.w	$t7, $t1, $a5
	slli.d	$t7, $t7, 3
	fldx.d	$fa5, $a4, $t7
	fldx.d	$fa6, $ra, $t7
	add.w	$t7, $t0, $a5
	slli.d	$t7, $t7, 3
	fldx.d	$fa7, $ra, $t7
	fldx.d	$ft0, $a4, $s3
	fsub.d	$fa6, $fa6, $fa3
	fmadd.d	$fa4, $fa5, $fa6, $fa4
	fsub.d	$fa5, $fa3, $fa7
	fneg.d	$fa6, $ft0
	add.w	$t7, $t2, $a5
	slli.d	$t7, $t7, 3
	fldx.d	$fa7, $ra, $t7
	fldx.d	$ft0, $a6, $t7
	fmadd.d	$fa4, $fa6, $fa5, $fa4
	fldx.d	$fa5, $s7, $s3
	fsub.d	$fa6, $fa7, $fa3
	fmadd.d	$fa4, $ft0, $fa6, $fa4
	add.w	$t7, $t5, $a5
	slli.d	$t7, $t7, 3
	fldx.d	$fa6, $ra, $t7
	fldx.d	$fa7, $a6, $s3
	add.w	$t7, $s1, $s0
	fmul.d	$fa5, $fs1, $fa5
	fsub.d	$fa6, $fa3, $fa6
	fneg.d	$fa7, $fa7
	fnmadd.d	$fa4, $fa7, $fa6, $fa4
	fldx.d	$fa6, $fp, $s3
	slli.d	$t7, $t7, 3
	fldx.d	$fa7, $a7, $t7
	fmul.d	$fa4, $fa2, $fa4
	fmadd.d	$fa3, $fa5, $fa3, $fa4
	fsub.d	$fa3, $fa6, $fa3
	fmadd.d	$fa3, $fa3, $fa1, $fa7
	fstx.d	$fa3, $a7, $t7
	addi.d	$t8, $t8, -1
	addi.w	$a5, $a5, 1
	bnez	$t8, .LBB6_16
# %bb.17:                               # %for.cond225.for.inc317_crit_edge.us.us.us.us
                                        #   in Loop: Header=BB6_15 Depth=4
	move	$s0, $zero
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	add.d	$t8, $a0, $a1
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	add.d	$a5, $a0, $a1
	move	$s4, $s2
	move	$s3, $s2
	.p2align	4, , 16
.LBB6_18:                               # %for.body228.us.us.us.us.1
                                        #   Parent Loop BB6_3 Depth=1
                                        #     Parent Loop BB6_7 Depth=2
                                        #       Parent Loop BB6_9 Depth=3
                                        #         Parent Loop BB6_15 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	add.w	$s2, $a5, $s0
	bstrpick.d	$s6, $s0, 31, 1
	slli.d	$t7, $s2, 3
	alsl.d	$s2, $s2, $ra, 3
	fldx.d	$fa3, $ra, $t7
	add.w	$s5, $t8, $s0
	add.w	$a0, $a1, $s0
	add.w	$a2, $t4, $s0
	add.w	$t3, $s8, $s0
	addi.w	$s0, $s0, 1
	fld.d	$fa4, $s2, -8
	add.w	$s2, $s0, $a5
	slli.d	$s2, $s2, 3
	fldx.d	$fa5, $a3, $s2
	fldx.d	$fa6, $a3, $t7
	fldx.d	$fa7, $ra, $s2
	fsub.d	$fa4, $fa3, $fa4
	fneg.d	$fa4, $fa4
	fmul.d	$fa4, $fa6, $fa4
	slli.d	$s2, $s5, 3
	fldx.d	$fa6, $a4, $s2
	fldx.d	$ft0, $ra, $s2
	fsub.d	$fa7, $fa7, $fa3
	fmadd.d	$fa4, $fa5, $fa7, $fa4
	slli.d	$a0, $a0, 3
	fldx.d	$fa5, $ra, $a0
	fldx.d	$fa7, $a4, $t7
	fsub.d	$ft0, $ft0, $fa3
	fmadd.d	$fa4, $fa6, $ft0, $fa4
	fsub.d	$fa5, $fa3, $fa5
	fneg.d	$fa6, $fa7
	slli.d	$a0, $a2, 3
	fldx.d	$fa7, $ra, $a0
	fldx.d	$ft0, $a6, $a0
	fmadd.d	$fa4, $fa6, $fa5, $fa4
	fldx.d	$fa5, $s7, $t7
	fsub.d	$fa6, $fa7, $fa3
	fmadd.d	$fa4, $ft0, $fa6, $fa4
	slli.d	$a0, $t3, 3
	fldx.d	$fa6, $ra, $a0
	fldx.d	$fa7, $a6, $t7
	add.w	$a0, $s1, $s6
	fmul.d	$fa5, $fs1, $fa5
	fsub.d	$fa6, $fa3, $fa6
	fneg.d	$fa7, $fa7
	fnmadd.d	$fa4, $fa7, $fa6, $fa4
	fldx.d	$fa6, $fp, $t7
	slli.d	$a0, $a0, 3
	fldx.d	$fa7, $a7, $a0
	fmul.d	$fa4, $fa2, $fa4
	fmadd.d	$fa3, $fa5, $fa3, $fa4
	fsub.d	$fa3, $fa6, $fa3
	fmadd.d	$fa3, $fa3, $fa1, $fa7
	addi.d	$s3, $s3, -1
	fstx.d	$fa3, $a7, $a0
	bnez	$s3, .LBB6_18
# %bb.19:                               # %for.cond225.for.inc317_crit_edge.us.us.us.us.1
                                        #   in Loop: Header=BB6_15 Depth=4
	addi.w	$t6, $t6, 1
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	add.d	$t5, $t5, $a0
	add.d	$t2, $t2, $a0
	add.d	$t0, $t0, $a0
	add.d	$t1, $t1, $a0
	add.d	$a1, $a1, $a0
	add.d	$s8, $s8, $a0
	add.d	$t4, $t4, $a0
	ld.d	$t8, $sp, 360                   # 8-byte Folded Reload
	move	$s2, $s4
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	bne	$t6, $a0, .LBB6_15
# %bb.20:                               # %for.end322.split.us.us.us
                                        #   in Loop: Header=BB6_9 Depth=3
	ld.d	$t3, $sp, 328                   # 8-byte Folded Reload
	addi.w	$t3, $t3, 2
	ld.d	$a2, $sp, 336                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	ld.d	$t4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 264                   # 8-byte Folded Reload
	add.w	$t2, $t2, $t4
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 272                   # 8-byte Folded Reload
	add.d	$s4, $s4, $a0
	ld.d	$s3, $sp, 280                   # 8-byte Folded Reload
	add.d	$s3, $s3, $a0
	ld.d	$s1, $sp, 288                   # 8-byte Folded Reload
	add.d	$s1, $s1, $a0
	ld.d	$s0, $sp, 296                   # 8-byte Folded Reload
	add.d	$s0, $s0, $a0
	ld.d	$t7, $sp, 304                   # 8-byte Folded Reload
	add.d	$t7, $t7, $a0
	ld.d	$s8, $sp, 312                   # 8-byte Folded Reload
	add.d	$s8, $s8, $a0
	ld.d	$t6, $sp, 320                   # 8-byte Folded Reload
	add.d	$t6, $t6, $a0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	blt	$t3, $a0, .LBB6_9
	b	.LBB6_6
	.p2align	4, , 16
.LBB6_21:                               # %vector.scevcheck
                                        #   in Loop: Header=BB6_9 Depth=3
	mul.d	$a1, $t4, $a2
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	add.w	$t0, $a0, $a1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	add.w	$a1, $a1, $a0
	move	$a5, $zero
	blt	$a1, $t0, .LBB6_12
# %bb.22:                               # %vector.scevcheck
                                        #   in Loop: Header=BB6_9 Depth=3
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	srli.d	$a1, $a0, 32
	bnez	$a1, .LBB6_12
# %bb.23:                               # %vector.body.preheader
                                        #   in Loop: Header=BB6_9 Depth=3
	move	$a1, $t2
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_24:                               # %vector.body
                                        #   Parent Loop BB6_3 Depth=1
                                        #     Parent Loop BB6_7 Depth=2
                                        #       Parent Loop BB6_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	alsl.d	$t0, $a1, $a7, 3
	slli.d	$t1, $a1, 3
	xvstx	$xr0, $a7, $t1
	xvst	$xr0, $t0, 32
	addi.d	$a5, $a5, -8
	addi.w	$a1, $a1, 8
	bnez	$a5, .LBB6_24
# %bb.25:                               # %middle.block
                                        #   in Loop: Header=BB6_9 Depth=3
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	move	$a5, $a0
	bne	$a0, $t5, .LBB6_12
	b	.LBB6_14
	.p2align	4, , 16
.LBB6_26:                               # %for.cond204.preheader.lr.ph.split.us200
                                        #   in Loop: Header=BB6_7 Depth=2
	blt	$a1, $a2, .LBB6_6
# %bb.27:                               # %for.cond204.preheader.us162.us.preheader
                                        #   in Loop: Header=BB6_7 Depth=2
	move	$a1, $zero
	move	$a5, $zero
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	add.d	$t0, $t6, $a0
	ld.d	$t1, $sp, 144                   # 8-byte Folded Reload
	b	.LBB6_29
	.p2align	4, , 16
.LBB6_28:                               # %for.cond204.for.cond215.preheader_crit_edge.us179.us
                                        #   in Loop: Header=BB6_29 Depth=3
	addi.w	$a5, $a5, 2
	addi.d	$a1, $a1, 1
	add.w	$t1, $t1, $t4
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	bge	$a5, $a0, .LBB6_6
.LBB6_29:                               # %for.cond204.preheader.us162.us
                                        #   Parent Loop BB6_3 Depth=1
                                        #     Parent Loop BB6_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB6_36 Depth 4
                                        #         Child Loop BB6_32 Depth 4
	ori	$a0, $zero, 8
	bgeu	$t5, $a0, .LBB6_33
# %bb.30:                               #   in Loop: Header=BB6_29 Depth=3
	move	$t2, $zero
.LBB6_31:                               # %for.body207.us166.us.preheader
                                        #   in Loop: Header=BB6_29 Depth=3
	add.w	$t3, $t1, $t2
	sub.d	$t2, $t5, $t2
	.p2align	4, , 16
.LBB6_32:                               # %for.body207.us166.us
                                        #   Parent Loop BB6_3 Depth=1
                                        #     Parent Loop BB6_7 Depth=2
                                        #       Parent Loop BB6_29 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$a0, $t3, 3
	stx.d	$zero, $a7, $a0
	addi.d	$t2, $t2, -1
	addi.w	$t3, $t3, 1
	bnez	$t2, .LBB6_32
	b	.LBB6_28
	.p2align	4, , 16
.LBB6_33:                               # %vector.scevcheck235
                                        #   in Loop: Header=BB6_29 Depth=3
	mul.d	$a0, $t4, $a1
	add.w	$a2, $t6, $a0
	add.w	$a0, $a0, $t0
	move	$t2, $zero
	blt	$a0, $a2, .LBB6_31
# %bb.34:                               # %vector.scevcheck235
                                        #   in Loop: Header=BB6_29 Depth=3
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	srli.d	$a0, $a0, 32
	bnez	$a0, .LBB6_31
# %bb.35:                               # %vector.body243.preheader
                                        #   in Loop: Header=BB6_29 Depth=3
	move	$t2, $t1
	ld.d	$t3, $sp, 216                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_36:                               # %vector.body243
                                        #   Parent Loop BB6_3 Depth=1
                                        #     Parent Loop BB6_7 Depth=2
                                        #       Parent Loop BB6_29 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	alsl.d	$a0, $t2, $a7, 3
	slli.d	$a2, $t2, 3
	xvstx	$xr0, $a7, $a2
	xvst	$xr0, $a0, 32
	addi.d	$t3, $t3, -8
	addi.w	$t2, $t2, 8
	bnez	$t3, .LBB6_36
# %bb.37:                               # %middle.block246
                                        #   in Loop: Header=BB6_29 Depth=3
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	move	$t2, $a0
	beq	$a0, $t5, .LBB6_28
	b	.LBB6_31
.LBB6_38:                               # %for.end331
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $a2, 160
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a1
	st.d	$a0, $a2, 160
	fld.d	$fs1, $sp, 392                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 400                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 472                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 480                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 488                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 496
	ret
.Lfunc_end6:
	.size	residual_and_restriction, .Lfunc_end6-residual_and_restriction
                                        # -- End function
	.globl	restriction                     # -- Begin function restriction
	.p2align	5
	.type	restriction,@function
restriction:                            # @restriction
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
	move	$s3, $a3
	move	$s2, $a2
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 1600
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	blez	$a1, .LBB7_12
# %bb.1:                                # %for.body.lr.ph
	move	$a0, $zero
	ld.d	$a2, $s0, 1776
	ori	$a3, $zero, 216
	mul.d	$a3, $fp, $a3
	slli.d	$a1, $s3, 3
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	slli.d	$a1, $s2, 3
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ori	$a6, $zero, 1
	vldi	$vr0, -960
	b	.LBB7_3
	.p2align	4, , 16
.LBB7_2:                                # %for.end166
                                        #   in Loop: Header=BB7_3 Depth=1
	addi.d	$a0, $a0, 1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB7_12
.LBB7_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_7 Depth 2
                                        #       Child Loop BB7_9 Depth 3
                                        #         Child Loop BB7_10 Depth 4
	slli.d	$a4, $a0, 8
	add.d	$a4, $a2, $a4
	ld.d	$a4, $a4, 248
	add.d	$t1, $a4, $a3
	ld.w	$a7, $t1, 244
	blt	$a7, $a6, .LBB7_2
# %bb.4:                                # %for.cond105.preheader.lr.ph
                                        #   in Loop: Header=BB7_3 Depth=1
	ld.w	$t0, $t1, 240
	blt	$t0, $a6, .LBB7_2
# %bb.5:                                # %for.cond105.preheader.us.preheader
                                        #   in Loop: Header=BB7_3 Depth=1
	move	$s0, $zero
	move	$a4, $zero
	move	$t3, $zero
	ld.w	$t2, $t1, 260
	ld.w	$t4, $t1, 264
	ld.w	$t5, $t1, 268
	ld.w	$t6, $t1, 48
	ld.d	$t8, $t1, 176
	ld.w	$t7, $t1, 52
	ld.wu	$fp, $t1, 236
	ld.w	$s1, $t1, 44
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ldx.d	$t8, $t8, $a1
	add.d	$s2, $t6, $t7
	addi.d	$s3, $s2, 1
	ld.d	$t1, $t1, 392
	mul.w	$s1, $s3, $s1
	addi.w	$s3, $fp, 0
	alsl.d	$s4, $s1, $t8, 3
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ldx.d	$t1, $t1, $a1
	add.d	$t8, $t4, $t5
	addi.d	$t8, $t8, 1
	mul.w	$t2, $t8, $t2
	alsl.d	$s5, $t2, $t1, 3
	slli.d	$s6, $t7, 1
	slli.d	$s7, $t6, 1
	b	.LBB7_7
	.p2align	4, , 16
.LBB7_6:                                # %for.cond105.for.inc164_crit_edge.us
                                        #   in Loop: Header=BB7_7 Depth=2
	addi.w	$t3, $t3, 1
	add.w	$a4, $a4, $s6
	add.w	$s0, $s0, $t5
	beq	$t3, $a7, .LBB7_2
.LBB7_7:                                # %for.cond105.preheader.us
                                        #   Parent Loop BB7_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_9 Depth 3
                                        #         Child Loop BB7_10 Depth 4
	blt	$s3, $a6, .LBB7_6
# %bb.8:                                # %for.cond109.preheader.us.us.preheader
                                        #   in Loop: Header=BB7_7 Depth=2
	move	$s8, $zero
	move	$t1, $s0
	move	$s1, $a4
	.p2align	4, , 16
.LBB7_9:                                # %for.cond109.preheader.us.us
                                        #   Parent Loop BB7_3 Depth=1
                                        #     Parent Loop BB7_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_10 Depth 4
	move	$t8, $fp
	move	$ra, $t1
	move	$t2, $s1
	.p2align	4, , 16
.LBB7_10:                               # %for.body112.us.us
                                        #   Parent Loop BB7_3 Depth=1
                                        #     Parent Loop BB7_7 Depth=2
                                        #       Parent Loop BB7_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$a5, $t2, 3
	fldx.d	$fa1, $s4, $a5
	addi.w	$a5, $t2, 1
	slli.d	$a5, $a5, 3
	fldx.d	$fa2, $s4, $a5
	add.w	$a5, $t6, $t2
	slli.d	$a1, $a5, 3
	fldx.d	$fa3, $s4, $a1
	addi.w	$a1, $a5, 1
	slli.d	$a1, $a1, 3
	fldx.d	$fa4, $s4, $a1
	fadd.d	$fa1, $fa1, $fa2
	fadd.d	$fa1, $fa1, $fa3
	fadd.d	$fa1, $fa1, $fa4
	add.w	$a1, $t7, $t2
	slli.d	$a5, $a1, 3
	fldx.d	$fa2, $s4, $a5
	addi.w	$a1, $a1, 1
	slli.d	$a1, $a1, 3
	fldx.d	$fa3, $s4, $a1
	add.w	$a1, $s2, $t2
	slli.d	$a5, $a1, 3
	fldx.d	$fa4, $s4, $a5
	addi.w	$a1, $a1, 1
	slli.d	$a1, $a1, 3
	fldx.d	$fa5, $s4, $a1
	fadd.d	$fa1, $fa1, $fa2
	fadd.d	$fa1, $fa1, $fa3
	fadd.d	$fa1, $fa1, $fa4
	fadd.d	$fa1, $fa1, $fa5
	fmul.d	$fa1, $fa1, $fa0
	slli.d	$a1, $ra, 3
	fstx.d	$fa1, $s5, $a1
	addi.w	$t2, $t2, 2
	addi.d	$t8, $t8, -1
	addi.w	$ra, $ra, 1
	bnez	$t8, .LBB7_10
# %bb.11:                               # %for.cond109.for.inc161_crit_edge.us.us
                                        #   in Loop: Header=BB7_9 Depth=3
	addi.w	$s8, $s8, 1
	add.w	$s1, $s1, $s7
	add.w	$t1, $t1, $t4
	bne	$s8, $t0, .LBB7_9
	b	.LBB7_6
.LBB7_12:                               # %for.end169
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a2, 3
	ld.d	$a2, $a1, 240
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a2
	st.d	$a0, $a1, 240
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
.Lfunc_end7:
	.size	restriction, .Lfunc_end7-restriction
                                        # -- End function
	.globl	restriction_betas               # -- Begin function restriction_betas
	.p2align	5
	.type	restriction_betas,@function
restriction_betas:                      # @restriction_betas
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -400
	st.d	$ra, $sp, 392                   # 8-byte Folded Spill
	st.d	$fp, $sp, 384                   # 8-byte Folded Spill
	st.d	$s0, $sp, 376                   # 8-byte Folded Spill
	st.d	$s1, $sp, 368                   # 8-byte Folded Spill
	st.d	$s2, $sp, 360                   # 8-byte Folded Spill
	st.d	$s3, $sp, 352                   # 8-byte Folded Spill
	st.d	$s4, $sp, 344                   # 8-byte Folded Spill
	st.d	$s5, $sp, 336                   # 8-byte Folded Spill
	st.d	$s6, $sp, 328                   # 8-byte Folded Spill
	st.d	$s7, $sp, 320                   # 8-byte Folded Spill
	st.d	$s8, $sp, 312                   # 8-byte Folded Spill
	move	$s2, $a2
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 1600
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	blez	$a1, .LBB8_76
# %bb.1:                                # %for.body.lr.ph
	move	$a1, $zero
	ld.d	$a0, $s0, 1776
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$a0, $zero, 216
	mul.d	$a2, $s2, $a0
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	mul.d	$a0, $fp, $a0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$a6, $zero, 28
	vldi	$vr0, -944
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	vreplgr2vr.d	$vr1, $a0
	lu52i.d	$a0, $zero, 1021
	vreplgr2vr.d	$vr2, $a0
	b	.LBB8_3
	.p2align	4, , 16
.LBB8_2:                                # %for.end317
                                        #   in Loop: Header=BB8_3 Depth=1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB8_76
.LBB8_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_7 Depth 2
                                        #       Child Loop BB8_9 Depth 3
                                        #         Child Loop BB8_25 Depth 4
                                        #         Child Loop BB8_12 Depth 4
                                        #     Child Loop BB8_31 Depth 2
                                        #       Child Loop BB8_33 Depth 3
                                        #         Child Loop BB8_49 Depth 4
                                        #         Child Loop BB8_36 Depth 4
                                        #     Child Loop BB8_56 Depth 2
                                        #       Child Loop BB8_58 Depth 3
                                        #         Child Loop BB8_74 Depth 4
                                        #         Child Loop BB8_61 Depth 4
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	slli.d	$a0, $a1, 8
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 248
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	add.d	$a1, $a0, $a1
	ld.w	$t0, $a1, 48
	ld.w	$a3, $a1, 52
	ld.wu	$t2, $a1, 20
	ld.w	$t3, $a1, 24
	ld.w	$a4, $a1, 28
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	ld.w	$t5, $a0, 52
	ld.w	$a2, $a0, 44
	ld.w	$t6, $a0, 48
	ld.d	$a0, $a0, 176
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.w	$a5, $a1, 44
	mul.w	$a0, $t5, $a2
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	mul.w	$a0, $t6, $a2
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a0, $a1, 176
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	st.d	$a3, $sp, 224                   # 8-byte Folded Spill
	mul.w	$a0, $a3, $a5
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	st.d	$a5, $sp, 104                   # 8-byte Folded Spill
	mul.w	$a0, $t0, $a5
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	addi.w	$a0, $t2, 0
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a4, $sp, 216                   # 8-byte Folded Spill
	blt	$a4, $a0, .LBB8_27
# %bb.4:                                # %for.cond109.preheader.lr.ph
                                        #   in Loop: Header=BB8_3 Depth=1
	ori	$a0, $zero, 1
	blt	$t3, $a0, .LBB8_27
# %bb.5:                                # %for.cond109.preheader.us.preheader
                                        #   in Loop: Header=BB8_3 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 40
	st.d	$zero, $sp, 192                 # 8-byte Folded Spill
	st.d	$zero, $sp, 184                 # 8-byte Folded Spill
	st.d	$zero, $sp, 176                 # 8-byte Folded Spill
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 40
	ld.d	$a7, $sp, 120                   # 8-byte Folded Reload
	alsl.d	$a2, $a7, $a0, 3
	ld.d	$t1, $sp, 112                   # 8-byte Folded Reload
	alsl.d	$a2, $t1, $a2, 3
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$s0, $a5, $a2, 3
	ld.d	$t4, $sp, 96                    # 8-byte Folded Reload
	alsl.d	$a2, $t4, $a1, 3
	ld.d	$t7, $sp, 88                    # 8-byte Folded Reload
	alsl.d	$a2, $t7, $a2, 3
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	alsl.d	$a2, $a4, $a2, 3
	add.d	$a3, $t6, $t5
	addi.d	$t8, $t2, -1
	slli.d	$fp, $t5, 1
	st.d	$fp, $sp, 168                   # 8-byte Folded Spill
	slli.d	$s7, $t6, 1
	add.d	$a4, $a4, $t7
	add.d	$a4, $a4, $t4
	alsl.d	$t4, $a4, $a1, 3
	st.d	$t4, $sp, 256                   # 8-byte Folded Spill
	add.d	$a4, $a4, $t2
	alsl.d	$a1, $a4, $a1, 3
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	slli.d	$a1, $a5, 3
	alsl.d	$a1, $t1, $a1, 3
	alsl.d	$a1, $a7, $a1, 3
	add.d	$s3, $a0, $a1
	alsl.d	$a1, $t2, $a1, 4
	add.d	$a0, $a0, $a1
	addi.d	$s5, $a0, -8
	slli.d	$a0, $t8, 1
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	alsl.w	$a0, $t8, $t6, 1
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	alsl.w	$a0, $t8, $t5, 1
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	st.d	$t8, $sp, 264                   # 8-byte Folded Spill
	alsl.w	$a0, $t8, $a3, 1
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	bstrpick.d	$a0, $t2, 30, 1
	slli.d	$a0, $a0, 1
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	vinsgr2vr.w	$vr3, $t6, 0
	vinsgr2vr.w	$vr3, $t6, 1
	vinsgr2vr.w	$vr4, $t5, 0
	vinsgr2vr.w	$vr4, $t5, 1
	vinsgr2vr.w	$vr5, $a3, 0
	vinsgr2vr.w	$vr5, $a3, 1
	b	.LBB8_7
	.p2align	4, , 16
.LBB8_6:                                # %for.cond109.for.inc147_crit_edge.us
                                        #   in Loop: Header=BB8_7 Depth=2
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	addi.w	$a4, $a4, 1
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	add.w	$a1, $a1, $a0
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	add.d	$a0, $a0, $t5
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	st.d	$a4, $sp, 176                   # 8-byte Folded Spill
	beq	$a4, $a0, .LBB8_27
.LBB8_7:                                # %for.cond109.preheader.us
                                        #   Parent Loop BB8_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_9 Depth 3
                                        #         Child Loop BB8_25 Depth 4
                                        #         Child Loop BB8_12 Depth 4
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB8_6
# %bb.8:                                # %for.cond113.preheader.us.us.preheader
                                        #   in Loop: Header=BB8_7 Depth=2
	move	$a1, $zero
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	mul.d	$a5, $a0, $a4
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	mul.d	$t8, $a0, $a4
	add.d	$s4, $a3, $t8
	add.d	$t7, $t5, $t8
	add.d	$a0, $t6, $t8
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	mul.d	$a0, $a4, $t5
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	st.d	$a5, $sp, 288                   # 8-byte Folded Spill
	add.d	$a0, $a5, $a0
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	add.d	$a0, $t8, $a0
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	add.d	$a0, $t8, $a0
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	add.d	$s8, $t8, $a0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	add.d	$s2, $t8, $a0
	ld.d	$ra, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 184                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB8_9:                                # %for.cond113.preheader.us.us
                                        #   Parent Loop BB8_3 Depth=1
                                        #     Parent Loop BB8_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB8_25 Depth 4
                                        #         Child Loop BB8_12 Depth 4
	bgeu	$t2, $a6, .LBB8_14
# %bb.10:                               #   in Loop: Header=BB8_9 Depth=3
	move	$a5, $zero
.LBB8_11:                               # %for.body116.us.us.preheader
                                        #   in Loop: Header=BB8_9 Depth=3
	add.d	$a0, $ra, $a5
	slli.w	$a4, $a0, 1
	add.w	$a7, $s1, $a5
	sub.d	$a5, $t2, $a5
	.p2align	4, , 16
.LBB8_12:                               # %for.body116.us.us
                                        #   Parent Loop BB8_3 Depth=1
                                        #     Parent Loop BB8_7 Depth=2
                                        #       Parent Loop BB8_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$a0, $a4, 3
	fldx.d	$fa6, $s0, $a0
	add.w	$a0, $t6, $a4
	slli.d	$a0, $a0, 3
	fldx.d	$fa7, $s0, $a0
	add.w	$a0, $t5, $a4
	slli.d	$a0, $a0, 3
	fldx.d	$ft0, $s0, $a0
	add.w	$a0, $a3, $a4
	slli.d	$a0, $a0, 3
	fldx.d	$ft1, $s0, $a0
	fadd.d	$fa6, $fa6, $fa7
	fadd.d	$fa6, $fa6, $ft0
	fadd.d	$fa6, $fa6, $ft1
	fmul.d	$fa6, $fa6, $fa0
	slli.d	$a0, $a7, 3
	fstx.d	$fa6, $a2, $a0
	addi.w	$a4, $a4, 2
	addi.d	$a5, $a5, -1
	addi.w	$a7, $a7, 1
	bnez	$a5, .LBB8_12
.LBB8_13:                               # %for.cond113.for.inc144_crit_edge.us.us
                                        #   in Loop: Header=BB8_9 Depth=3
	addi.w	$a1, $a1, 1
	add.w	$s1, $s1, $t0
	add.d	$ra, $ra, $t6
	bne	$a1, $t3, .LBB8_9
	b	.LBB8_6
	.p2align	4, , 16
.LBB8_14:                               # %vector.scevcheck342
                                        #   in Loop: Header=BB8_9 Depth=3
	mul.d	$a0, $s7, $a1
	add.w	$s6, $s4, $a0
	add.w	$a4, $a0, $s2
	move	$a5, $zero
	blt	$a4, $s6, .LBB8_11
# %bb.15:                               # %vector.scevcheck342
                                        #   in Loop: Header=BB8_9 Depth=3
	add.w	$t1, $t7, $a0
	add.w	$a4, $a0, $s8
	blt	$a4, $t1, .LBB8_11
# %bb.16:                               # %vector.scevcheck342
                                        #   in Loop: Header=BB8_9 Depth=3
	ld.d	$a4, $sp, 304                   # 8-byte Folded Reload
	add.w	$a4, $a4, $a0
	ld.d	$a7, $sp, 296                   # 8-byte Folded Reload
	add.w	$a7, $a0, $a7
	blt	$a7, $a4, .LBB8_11
# %bb.17:                               # %vector.scevcheck342
                                        #   in Loop: Header=BB8_9 Depth=3
	mul.d	$a7, $t0, $a1
	ld.d	$t4, $sp, 288                   # 8-byte Folded Reload
	add.w	$fp, $t4, $a7
	ld.d	$t4, $sp, 280                   # 8-byte Folded Reload
	add.w	$a7, $a7, $t4
	blt	$a7, $fp, .LBB8_11
# %bb.18:                               # %vector.scevcheck342
                                        #   in Loop: Header=BB8_9 Depth=3
	add.w	$a7, $t8, $a0
	ld.d	$t4, $sp, 272                   # 8-byte Folded Reload
	add.w	$a0, $a0, $t4
	blt	$a0, $a7, .LBB8_11
# %bb.19:                               # %vector.scevcheck342
                                        #   in Loop: Header=BB8_9 Depth=3
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	srli.d	$a0, $a0, 31
	bnez	$a0, .LBB8_11
# %bb.20:                               # %vector.memcheck355
                                        #   in Loop: Header=BB8_9 Depth=3
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	alsl.d	$t4, $fp, $a0, 3
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a0, $fp, $a0, 3
	alsl.d	$a5, $s6, $s3, 3
	alsl.d	$fp, $s6, $s5, 3
	sltu	$fp, $t4, $fp
	sltu	$a5, $a5, $a0
	and	$fp, $fp, $a5
	move	$a5, $zero
	bnez	$fp, .LBB8_11
# %bb.21:                               # %vector.memcheck355
                                        #   in Loop: Header=BB8_9 Depth=3
	alsl.d	$fp, $t1, $s3, 3
	alsl.d	$t1, $t1, $s5, 3
	sltu	$t1, $t4, $t1
	sltu	$fp, $fp, $a0
	and	$t1, $t1, $fp
	bnez	$t1, .LBB8_11
# %bb.22:                               # %vector.memcheck355
                                        #   in Loop: Header=BB8_9 Depth=3
	alsl.d	$t1, $a4, $s3, 3
	alsl.d	$a4, $a4, $s5, 3
	sltu	$a4, $t4, $a4
	sltu	$t1, $t1, $a0
	and	$a4, $a4, $t1
	bnez	$a4, .LBB8_11
# %bb.23:                               # %vector.memcheck355
                                        #   in Loop: Header=BB8_9 Depth=3
	alsl.d	$a4, $a7, $s3, 3
	alsl.d	$a7, $a7, $s5, 3
	sltu	$a7, $t4, $a7
	sltu	$a0, $a4, $a0
	and	$a0, $a7, $a0
	bnez	$a0, .LBB8_11
# %bb.24:                               # %vector.ph397
                                        #   in Loop: Header=BB8_9 Depth=3
	mul.d	$a0, $a1, $t6
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a4
	vinsgr2vr.w	$vr6, $a0, 0
	vinsgr2vr.w	$vr6, $a0, 1
	move	$a5, $s1
	ld.d	$a4, $sp, 240                   # 8-byte Folded Reload
	vori.b	$vr7, $vr1, 0
	.p2align	4, , 16
.LBB8_25:                               # %vector.body408
                                        #   Parent Loop BB8_3 Depth=1
                                        #     Parent Loop BB8_7 Depth=2
                                        #       Parent Loop BB8_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vadd.w	$vr8, $vr6, $vr7
	vslli.w	$vr8, $vr8, 1
	vshuf4i.w	$vr9, $vr8, 16
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vpickve2gr.d	$a0, $vr9, 0
	slli.d	$a0, $a0, 3
	vpickve2gr.d	$a7, $vr9, 1
	slli.d	$a7, $a7, 3
	fldx.d	$ft1, $s0, $a0
	fldx.d	$ft2, $s0, $a7
	vadd.w	$vr11, $vr8, $vr3
	vshuf4i.w	$vr11, $vr11, 16
	vslli.d	$vr11, $vr11, 32
	vsrai.d	$vr11, $vr11, 32
	vpickve2gr.d	$a0, $vr11, 0
	slli.d	$a0, $a0, 3
	vpickve2gr.d	$a7, $vr11, 1
	slli.d	$a7, $a7, 3
	fldx.d	$ft3, $s0, $a0
	fldx.d	$ft4, $s0, $a7
	vextrins.d	$vr9, $vr10, 16
	vextrins.d	$vr11, $vr12, 16
	vadd.w	$vr10, $vr8, $vr4
	vshuf4i.w	$vr10, $vr10, 16
	vslli.d	$vr10, $vr10, 32
	vsrai.d	$vr10, $vr10, 32
	vpickve2gr.d	$a0, $vr10, 0
	slli.d	$a0, $a0, 3
	vpickve2gr.d	$a7, $vr10, 1
	slli.d	$a7, $a7, 3
	fldx.d	$ft2, $s0, $a0
	fldx.d	$ft4, $s0, $a7
	vadd.w	$vr8, $vr8, $vr5
	vshuf4i.w	$vr8, $vr8, 16
	vslli.d	$vr8, $vr8, 32
	vsrai.d	$vr8, $vr8, 32
	vpickve2gr.d	$a0, $vr8, 0
	slli.d	$a0, $a0, 3
	vpickve2gr.d	$a7, $vr8, 1
	slli.d	$a7, $a7, 3
	fldx.d	$ft0, $s0, $a0
	fldx.d	$ft5, $s0, $a7
	vfadd.d	$vr9, $vr9, $vr11
	vextrins.d	$vr10, $vr12, 16
	vfadd.d	$vr9, $vr9, $vr10
	vextrins.d	$vr8, $vr13, 16
	vfadd.d	$vr8, $vr9, $vr8
	vfmul.d	$vr8, $vr8, $vr2
	slli.d	$a0, $a5, 3
	vstx	$vr8, $a2, $a0
	vaddi.wu	$vr7, $vr7, 2
	addi.d	$a4, $a4, -2
	addi.w	$a5, $a5, 2
	bnez	$a4, .LBB8_25
# %bb.26:                               # %middle.block413
                                        #   in Loop: Header=BB8_9 Depth=3
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	move	$a5, $a0
	bne	$a0, $t2, .LBB8_11
	b	.LBB8_13
	.p2align	4, , 16
.LBB8_27:                               # %for.end149
                                        #   in Loop: Header=BB8_3 Depth=1
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB8_52
# %bb.28:                               # %for.cond186.preheader.lr.ph
                                        #   in Loop: Header=BB8_3 Depth=1
	ori	$a0, $zero, 1
	blt	$t3, $a0, .LBB8_52
# %bb.29:                               # %for.cond186.preheader.us.preheader
                                        #   in Loop: Header=BB8_3 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 48
	st.d	$zero, $sp, 208                 # 8-byte Folded Spill
	st.d	$zero, $sp, 192                 # 8-byte Folded Spill
	move	$s0, $zero
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a3, $a1, 48
	ld.d	$a7, $sp, 120                   # 8-byte Folded Reload
	alsl.d	$a1, $a7, $a0, 3
	ld.d	$t1, $sp, 112                   # 8-byte Folded Reload
	alsl.d	$a1, $t1, $a1, 3
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$a2, $a5, $a1, 3
	ld.d	$t4, $sp, 96                    # 8-byte Folded Reload
	alsl.d	$a1, $t4, $a3, 3
	ld.d	$t7, $sp, 88                    # 8-byte Folded Reload
	alsl.d	$a1, $t7, $a1, 3
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	alsl.d	$a1, $a4, $a1, 3
	addi.d	$t8, $t2, -1
	slli.d	$fp, $t5, 1
	st.d	$fp, $sp, 184                   # 8-byte Folded Spill
	slli.d	$s7, $t6, 1
	addi.d	$fp, $t5, 1
	add.d	$a4, $a4, $t7
	add.d	$a4, $a4, $t4
	alsl.d	$t4, $a4, $a3, 3
	st.d	$t4, $sp, 264                   # 8-byte Folded Spill
	add.d	$a4, $a4, $t2
	alsl.d	$a3, $a4, $a3, 3
	st.d	$a3, $sp, 256                   # 8-byte Folded Spill
	slli.d	$a3, $a5, 3
	alsl.d	$a3, $t1, $a3, 3
	alsl.d	$a3, $a7, $a3, 3
	add.d	$s5, $a0, $a3
	alsl.d	$a3, $t2, $a3, 4
	add.d	$a0, $a0, $a3
	addi.d	$a0, $a0, -8
	slli.d	$a3, $t8, 1
	st.d	$a3, $sp, 168                   # 8-byte Folded Spill
	alsl.w	$a3, $t8, $t5, 1
	st.d	$a3, $sp, 160                   # 8-byte Folded Spill
	st.d	$t8, $sp, 272                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	alsl.w	$a3, $t8, $fp, 1
	st.d	$a3, $sp, 152                   # 8-byte Folded Spill
	bstrpick.d	$a3, $t2, 30, 1
	slli.d	$a3, $a3, 1
	st.d	$a3, $sp, 248                   # 8-byte Folded Spill
	vinsgr2vr.w	$vr3, $t5, 0
	vinsgr2vr.w	$vr3, $t5, 1
	b	.LBB8_31
	.p2align	4, , 16
.LBB8_30:                               # %for.cond186.for.inc231_crit_edge.us
                                        #   in Loop: Header=BB8_31 Depth=2
	addi.w	$s0, $s0, 1
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 192                   # 8-byte Folded Reload
	add.w	$a4, $a4, $a3
	st.d	$a4, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	add.d	$a3, $a3, $t5
	st.d	$a3, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	beq	$s0, $a3, .LBB8_52
.LBB8_31:                               # %for.cond186.preheader.us
                                        #   Parent Loop BB8_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_33 Depth 3
                                        #         Child Loop BB8_49 Depth 4
                                        #         Child Loop BB8_36 Depth 4
	ori	$a3, $zero, 1
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	blt	$a4, $a3, .LBB8_30
# %bb.32:                               # %for.cond190.preheader.us.us.preheader
                                        #   in Loop: Header=BB8_31 Depth=2
	move	$ra, $zero
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	mul.d	$a4, $a3, $s0
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	mul.d	$a5, $a3, $s0
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	add.d	$s4, $a3, $a5
	add.d	$s8, $t5, $a5
	ori	$t7, $a5, 1
	mul.d	$a3, $s0, $t5
	st.d	$a3, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	st.d	$a4, $sp, 296                   # 8-byte Folded Spill
	add.d	$a3, $a4, $a3
	st.d	$a3, $sp, 288                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	add.d	$a4, $a5, $a3
	st.d	$a4, $sp, 280                   # 8-byte Folded Spill
	add.d	$a3, $t7, $a3
	st.d	$a3, $sp, 304                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	add.d	$t4, $a5, $a3
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	add.d	$s2, $a5, $a3
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB8_33:                               # %for.cond190.preheader.us.us
                                        #   Parent Loop BB8_3 Depth=1
                                        #     Parent Loop BB8_31 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB8_49 Depth 4
                                        #         Child Loop BB8_36 Depth 4
	bgeu	$t2, $a6, .LBB8_38
# %bb.34:                               #   in Loop: Header=BB8_33 Depth=3
	move	$s6, $zero
.LBB8_35:                               # %for.body193.us.us.preheader
                                        #   in Loop: Header=BB8_33 Depth=3
	add.d	$a3, $fp, $s6
	slli.w	$s3, $a3, 1
	add.w	$a7, $s1, $s6
	sub.d	$s6, $t2, $s6
	.p2align	4, , 16
.LBB8_36:                               # %for.body193.us.us
                                        #   Parent Loop BB8_3 Depth=1
                                        #     Parent Loop BB8_31 Depth=2
                                        #       Parent Loop BB8_33 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$a3, $s3, 3
	fldx.d	$fa4, $a2, $a3
	addi.w	$a3, $s3, 1
	slli.d	$a3, $a3, 3
	fldx.d	$fa5, $a2, $a3
	add.w	$a3, $t5, $s3
	slli.d	$a4, $a3, 3
	fldx.d	$fa6, $a2, $a4
	addi.w	$a3, $a3, 1
	slli.d	$a3, $a3, 3
	fldx.d	$fa7, $a2, $a3
	fadd.d	$fa4, $fa4, $fa5
	fadd.d	$fa4, $fa4, $fa6
	fadd.d	$fa4, $fa4, $fa7
	fmul.d	$fa4, $fa4, $fa0
	slli.d	$a3, $a7, 3
	fstx.d	$fa4, $a1, $a3
	addi.w	$s3, $s3, 2
	addi.d	$s6, $s6, -1
	addi.w	$a7, $a7, 1
	bnez	$s6, .LBB8_36
.LBB8_37:                               # %for.cond190.for.inc228_crit_edge.us.us
                                        #   in Loop: Header=BB8_33 Depth=3
	addi.w	$ra, $ra, 1
	add.w	$s1, $s1, $t0
	add.d	$fp, $fp, $t6
	bne	$ra, $t3, .LBB8_33
	b	.LBB8_30
	.p2align	4, , 16
.LBB8_38:                               # %vector.scevcheck272
                                        #   in Loop: Header=BB8_33 Depth=3
	mul.d	$a4, $s7, $ra
	add.w	$a3, $s4, $a4
	add.w	$a7, $a4, $s2
	move	$s6, $zero
	blt	$a7, $a3, .LBB8_35
# %bb.39:                               # %vector.scevcheck272
                                        #   in Loop: Header=BB8_33 Depth=3
	add.w	$t8, $s8, $a4
	add.w	$a7, $a4, $t4
	blt	$a7, $t8, .LBB8_35
# %bb.40:                               # %vector.scevcheck272
                                        #   in Loop: Header=BB8_33 Depth=3
	add.w	$s3, $t7, $a4
	ld.d	$a7, $sp, 304                   # 8-byte Folded Reload
	add.w	$a7, $a4, $a7
	blt	$a7, $s3, .LBB8_35
# %bb.41:                               # %vector.scevcheck272
                                        #   in Loop: Header=BB8_33 Depth=3
	mul.d	$a7, $t0, $ra
	ld.d	$t1, $sp, 296                   # 8-byte Folded Reload
	add.w	$t1, $t1, $a7
	ld.d	$a6, $sp, 288                   # 8-byte Folded Reload
	add.w	$a7, $a7, $a6
	blt	$a7, $t1, .LBB8_51
# %bb.42:                               # %vector.scevcheck272
                                        #   in Loop: Header=BB8_33 Depth=3
	add.w	$a7, $a5, $a4
	ld.d	$a6, $sp, 280                   # 8-byte Folded Reload
	add.w	$a4, $a4, $a6
	ori	$a6, $zero, 28
	blt	$a4, $a7, .LBB8_35
# %bb.43:                               # %vector.scevcheck272
                                        #   in Loop: Header=BB8_33 Depth=3
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	srli.d	$a4, $a4, 31
	bnez	$a4, .LBB8_35
# %bb.44:                               # %vector.memcheck285
                                        #   in Loop: Header=BB8_33 Depth=3
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	alsl.d	$a4, $t1, $a4, 3
	ld.d	$s6, $sp, 256                   # 8-byte Folded Reload
	alsl.d	$t1, $t1, $s6, 3
	alsl.d	$s6, $a3, $s5, 3
	alsl.d	$a3, $a3, $a0, 3
	sltu	$a3, $a4, $a3
	sltu	$s6, $s6, $t1
	and	$a3, $a3, $s6
	move	$s6, $zero
	bnez	$a3, .LBB8_35
# %bb.45:                               # %vector.memcheck285
                                        #   in Loop: Header=BB8_33 Depth=3
	alsl.d	$a3, $t8, $s5, 3
	alsl.d	$t8, $t8, $a0, 3
	sltu	$t8, $a4, $t8
	sltu	$a3, $a3, $t1
	and	$a3, $t8, $a3
	bnez	$a3, .LBB8_35
# %bb.46:                               # %vector.memcheck285
                                        #   in Loop: Header=BB8_33 Depth=3
	alsl.d	$a3, $s3, $s5, 3
	alsl.d	$t8, $s3, $a0, 3
	sltu	$t8, $a4, $t8
	sltu	$a3, $a3, $t1
	and	$a3, $t8, $a3
	bnez	$a3, .LBB8_35
# %bb.47:                               # %vector.memcheck285
                                        #   in Loop: Header=BB8_33 Depth=3
	alsl.d	$a3, $a7, $s5, 3
	alsl.d	$a7, $a7, $a0, 3
	sltu	$a4, $a4, $a7
	sltu	$a3, $a3, $t1
	and	$a3, $a4, $a3
	bnez	$a3, .LBB8_35
# %bb.48:                               # %vector.ph327
                                        #   in Loop: Header=BB8_33 Depth=3
	mul.d	$a3, $ra, $t6
	ld.d	$a4, $sp, 240                   # 8-byte Folded Reload
	add.d	$a3, $a3, $a4
	vinsgr2vr.w	$vr4, $a3, 0
	vinsgr2vr.w	$vr4, $a3, 1
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	vreplgr2vr.d	$vr5, $a3
	move	$s6, $s1
	ld.d	$s3, $sp, 248                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB8_49:                               # %vector.body334
                                        #   Parent Loop BB8_3 Depth=1
                                        #     Parent Loop BB8_31 Depth=2
                                        #       Parent Loop BB8_33 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vadd.w	$vr6, $vr4, $vr5
	vslli.w	$vr6, $vr6, 1
	vshuf4i.w	$vr7, $vr6, 16
	vslli.d	$vr7, $vr7, 32
	vsrai.d	$vr7, $vr7, 32
	vpickve2gr.d	$a3, $vr7, 0
	slli.d	$a3, $a3, 3
	vpickve2gr.d	$a4, $vr7, 1
	slli.d	$a4, $a4, 3
	fldx.d	$fa7, $a2, $a3
	fldx.d	$ft0, $a2, $a4
	vbitseti.w	$vr9, $vr6, 0
	vshuf4i.w	$vr10, $vr9, 16
	vslli.d	$vr10, $vr10, 32
	vsrai.d	$vr10, $vr10, 32
	vpickve2gr.d	$a3, $vr10, 0
	slli.d	$a3, $a3, 3
	vpickve2gr.d	$a4, $vr10, 1
	slli.d	$a4, $a4, 3
	fldx.d	$ft2, $a2, $a3
	fldx.d	$ft3, $a2, $a4
	vextrins.d	$vr7, $vr8, 16
	vextrins.d	$vr10, $vr11, 16
	vadd.w	$vr6, $vr6, $vr3
	vshuf4i.w	$vr6, $vr6, 16
	vslli.d	$vr6, $vr6, 32
	vsrai.d	$vr6, $vr6, 32
	vpickve2gr.d	$a3, $vr6, 0
	slli.d	$a3, $a3, 3
	vpickve2gr.d	$a4, $vr6, 1
	slli.d	$a4, $a4, 3
	fldx.d	$fa6, $a2, $a3
	fldx.d	$ft0, $a2, $a4
	vadd.w	$vr9, $vr9, $vr3
	vshuf4i.w	$vr9, $vr9, 16
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vpickve2gr.d	$a3, $vr9, 0
	slli.d	$a3, $a3, 3
	vpickve2gr.d	$a4, $vr9, 1
	slli.d	$a4, $a4, 3
	fldx.d	$ft1, $a2, $a3
	fldx.d	$ft3, $a2, $a4
	vfadd.d	$vr7, $vr7, $vr10
	vextrins.d	$vr6, $vr8, 16
	vfadd.d	$vr6, $vr7, $vr6
	vextrins.d	$vr9, $vr11, 16
	vfadd.d	$vr6, $vr6, $vr9
	vfmul.d	$vr6, $vr6, $vr2
	slli.d	$a3, $s6, 3
	vstx	$vr6, $a1, $a3
	vaddi.wu	$vr5, $vr5, 2
	addi.d	$s3, $s3, -2
	addi.w	$s6, $s6, 2
	bnez	$s3, .LBB8_49
# %bb.50:                               # %middle.block339
                                        #   in Loop: Header=BB8_33 Depth=3
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	move	$s6, $a3
	bne	$a3, $t2, .LBB8_35
	b	.LBB8_37
.LBB8_51:                               #   in Loop: Header=BB8_33 Depth=3
	ori	$a6, $zero, 28
	b	.LBB8_35
	.p2align	4, , 16
.LBB8_52:                               # %for.end233
                                        #   in Loop: Header=BB8_3 Depth=1
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB8_2
# %bb.53:                               # %for.cond270.preheader.lr.ph
                                        #   in Loop: Header=BB8_3 Depth=1
	ori	$a0, $zero, 1
	blt	$t3, $a0, .LBB8_2
# %bb.54:                               # %for.cond270.preheader.us.preheader
                                        #   in Loop: Header=BB8_3 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 56
	st.d	$zero, $sp, 208                 # 8-byte Folded Spill
	st.d	$zero, $sp, 192                 # 8-byte Folded Spill
	st.d	$zero, $sp, 184                 # 8-byte Folded Spill
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a3, $a1, 56
	ld.d	$a7, $sp, 120                   # 8-byte Folded Reload
	alsl.d	$a1, $a7, $a0, 3
	ld.d	$t1, $sp, 112                   # 8-byte Folded Reload
	alsl.d	$a1, $t1, $a1, 3
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$a2, $a5, $a1, 3
	ld.d	$t4, $sp, 96                    # 8-byte Folded Reload
	alsl.d	$a1, $t4, $a3, 3
	ld.d	$t7, $sp, 88                    # 8-byte Folded Reload
	alsl.d	$a1, $t7, $a1, 3
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	alsl.d	$a1, $a4, $a1, 3
	addi.d	$fp, $t2, -1
	slli.d	$t8, $t5, 1
	st.d	$t8, $sp, 176                   # 8-byte Folded Spill
	slli.d	$s7, $t6, 1
	addi.d	$s1, $t6, 1
	add.d	$a4, $a4, $t7
	add.d	$a4, $a4, $t4
	alsl.d	$t4, $a4, $a3, 3
	st.d	$t4, $sp, 264                   # 8-byte Folded Spill
	add.d	$a4, $a4, $t2
	alsl.d	$a3, $a4, $a3, 3
	st.d	$a3, $sp, 256                   # 8-byte Folded Spill
	slli.d	$a3, $a5, 3
	alsl.d	$a3, $t1, $a3, 3
	alsl.d	$a3, $a7, $a3, 3
	add.d	$t8, $a0, $a3
	alsl.d	$a3, $t2, $a3, 4
	add.d	$a0, $a0, $a3
	addi.d	$a0, $a0, -8
	slli.d	$a3, $fp, 1
	st.d	$a3, $sp, 160                   # 8-byte Folded Spill
	alsl.w	$a3, $fp, $t6, 1
	st.d	$a3, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 272                   # 8-byte Folded Spill
	st.d	$s1, $sp, 168                   # 8-byte Folded Spill
	alsl.w	$a3, $fp, $s1, 1
	st.d	$a3, $sp, 144                   # 8-byte Folded Spill
	bstrpick.d	$a3, $t2, 30, 1
	slli.d	$a3, $a3, 1
	st.d	$a3, $sp, 248                   # 8-byte Folded Spill
	vinsgr2vr.w	$vr3, $t6, 0
	vinsgr2vr.w	$vr3, $t6, 1
	b	.LBB8_56
	.p2align	4, , 16
.LBB8_55:                               # %for.cond270.for.inc315_crit_edge.us
                                        #   in Loop: Header=BB8_56 Depth=2
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	addi.w	$a5, $a5, 1
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 192                   # 8-byte Folded Reload
	add.w	$a4, $a4, $a3
	st.d	$a4, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	add.d	$a3, $a3, $t5
	st.d	$a3, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	st.d	$a5, $sp, 184                   # 8-byte Folded Spill
	beq	$a5, $a3, .LBB8_2
.LBB8_56:                               # %for.cond270.preheader.us
                                        #   Parent Loop BB8_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_58 Depth 3
                                        #         Child Loop BB8_74 Depth 4
                                        #         Child Loop BB8_61 Depth 4
	ori	$a3, $zero, 1
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	blt	$a4, $a3, .LBB8_55
# %bb.57:                               # %for.cond274.preheader.us.us.preheader
                                        #   in Loop: Header=BB8_56 Depth=2
	move	$ra, $zero
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 184                   # 8-byte Folded Reload
	mul.d	$a4, $a3, $a7
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	mul.d	$a5, $a3, $a7
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	add.d	$s5, $a3, $a5
	add.d	$s8, $t6, $a5
	ori	$t7, $a5, 1
	mul.d	$a3, $a7, $t5
	st.d	$a3, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	st.d	$a4, $sp, 296                   # 8-byte Folded Spill
	add.d	$a3, $a4, $a3
	st.d	$a3, $sp, 288                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	add.d	$a4, $a5, $a3
	st.d	$a4, $sp, 280                   # 8-byte Folded Spill
	add.d	$a3, $t7, $a3
	st.d	$a3, $sp, 304                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	add.d	$t4, $a5, $a3
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	add.d	$s2, $a5, $a3
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB8_58:                               # %for.cond274.preheader.us.us
                                        #   Parent Loop BB8_3 Depth=1
                                        #     Parent Loop BB8_56 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB8_74 Depth 4
                                        #         Child Loop BB8_61 Depth 4
	bgeu	$t2, $a6, .LBB8_63
# %bb.59:                               #   in Loop: Header=BB8_58 Depth=3
	move	$s6, $zero
.LBB8_60:                               # %for.body277.us.us.preheader
                                        #   in Loop: Header=BB8_58 Depth=3
	add.d	$a3, $fp, $s6
	slli.w	$s3, $a3, 1
	add.w	$a7, $s1, $s6
	sub.d	$s6, $t2, $s6
	.p2align	4, , 16
.LBB8_61:                               # %for.body277.us.us
                                        #   Parent Loop BB8_3 Depth=1
                                        #     Parent Loop BB8_56 Depth=2
                                        #       Parent Loop BB8_58 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$a3, $s3, 3
	fldx.d	$fa4, $a2, $a3
	addi.w	$a3, $s3, 1
	slli.d	$a3, $a3, 3
	fldx.d	$fa5, $a2, $a3
	add.w	$a3, $t6, $s3
	slli.d	$a4, $a3, 3
	fldx.d	$fa6, $a2, $a4
	addi.w	$a3, $a3, 1
	slli.d	$a3, $a3, 3
	fldx.d	$fa7, $a2, $a3
	fadd.d	$fa4, $fa4, $fa5
	fadd.d	$fa4, $fa4, $fa6
	fadd.d	$fa4, $fa4, $fa7
	fmul.d	$fa4, $fa4, $fa0
	slli.d	$a3, $a7, 3
	fstx.d	$fa4, $a1, $a3
	addi.w	$s3, $s3, 2
	addi.d	$s6, $s6, -1
	addi.w	$a7, $a7, 1
	bnez	$s6, .LBB8_61
.LBB8_62:                               # %for.cond274.for.inc312_crit_edge.us.us
                                        #   in Loop: Header=BB8_58 Depth=3
	addi.w	$ra, $ra, 1
	add.w	$s1, $s1, $t0
	add.d	$fp, $fp, $t6
	bne	$ra, $t3, .LBB8_58
	b	.LBB8_55
	.p2align	4, , 16
.LBB8_63:                               # %vector.scevcheck
                                        #   in Loop: Header=BB8_58 Depth=3
	mul.d	$a4, $s7, $ra
	add.w	$a3, $s5, $a4
	add.w	$a7, $a4, $s2
	move	$s6, $zero
	blt	$a7, $a3, .LBB8_60
# %bb.64:                               # %vector.scevcheck
                                        #   in Loop: Header=BB8_58 Depth=3
	add.w	$s4, $s8, $a4
	add.w	$a7, $a4, $t4
	blt	$a7, $s4, .LBB8_60
# %bb.65:                               # %vector.scevcheck
                                        #   in Loop: Header=BB8_58 Depth=3
	add.w	$s3, $t7, $a4
	ld.d	$a7, $sp, 304                   # 8-byte Folded Reload
	add.w	$a7, $a4, $a7
	blt	$a7, $s3, .LBB8_60
# %bb.66:                               # %vector.scevcheck
                                        #   in Loop: Header=BB8_58 Depth=3
	mul.d	$a7, $t0, $ra
	ld.d	$t1, $sp, 296                   # 8-byte Folded Reload
	add.w	$t1, $t1, $a7
	ld.d	$s0, $sp, 288                   # 8-byte Folded Reload
	add.w	$a7, $a7, $s0
	blt	$a7, $t1, .LBB8_60
# %bb.67:                               # %vector.scevcheck
                                        #   in Loop: Header=BB8_58 Depth=3
	add.w	$a7, $a5, $a4
	ld.d	$s0, $sp, 280                   # 8-byte Folded Reload
	add.w	$a4, $a4, $s0
	blt	$a4, $a7, .LBB8_60
# %bb.68:                               # %vector.scevcheck
                                        #   in Loop: Header=BB8_58 Depth=3
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	srli.d	$a4, $a4, 31
	bnez	$a4, .LBB8_60
# %bb.69:                               # %vector.memcheck
                                        #   in Loop: Header=BB8_58 Depth=3
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	alsl.d	$a4, $t1, $a4, 3
	ld.d	$s6, $sp, 256                   # 8-byte Folded Reload
	alsl.d	$t1, $t1, $s6, 3
	alsl.d	$s6, $a3, $t8, 3
	alsl.d	$a3, $a3, $a0, 3
	sltu	$a3, $a4, $a3
	sltu	$s6, $s6, $t1
	and	$a3, $a3, $s6
	move	$s6, $zero
	bnez	$a3, .LBB8_60
# %bb.70:                               # %vector.memcheck
                                        #   in Loop: Header=BB8_58 Depth=3
	alsl.d	$a3, $s4, $t8, 3
	alsl.d	$s4, $s4, $a0, 3
	sltu	$s4, $a4, $s4
	sltu	$a3, $a3, $t1
	and	$a3, $s4, $a3
	bnez	$a3, .LBB8_60
# %bb.71:                               # %vector.memcheck
                                        #   in Loop: Header=BB8_58 Depth=3
	alsl.d	$a3, $s3, $t8, 3
	alsl.d	$s3, $s3, $a0, 3
	sltu	$s3, $a4, $s3
	sltu	$a3, $a3, $t1
	and	$a3, $s3, $a3
	bnez	$a3, .LBB8_60
# %bb.72:                               # %vector.memcheck
                                        #   in Loop: Header=BB8_58 Depth=3
	alsl.d	$a3, $a7, $t8, 3
	alsl.d	$a7, $a7, $a0, 3
	sltu	$a4, $a4, $a7
	sltu	$a3, $a3, $t1
	and	$a3, $a4, $a3
	bnez	$a3, .LBB8_60
# %bb.73:                               # %vector.ph
                                        #   in Loop: Header=BB8_58 Depth=3
	mul.d	$a3, $ra, $t6
	ld.d	$a4, $sp, 240                   # 8-byte Folded Reload
	add.d	$a3, $a3, $a4
	vinsgr2vr.w	$vr4, $a3, 0
	vinsgr2vr.w	$vr4, $a3, 1
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	vreplgr2vr.d	$vr5, $a3
	move	$s6, $s1
	ld.d	$s3, $sp, 248                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB8_74:                               # %vector.body
                                        #   Parent Loop BB8_3 Depth=1
                                        #     Parent Loop BB8_56 Depth=2
                                        #       Parent Loop BB8_58 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vadd.w	$vr6, $vr4, $vr5
	vslli.w	$vr6, $vr6, 1
	vshuf4i.w	$vr7, $vr6, 16
	vslli.d	$vr7, $vr7, 32
	vsrai.d	$vr7, $vr7, 32
	vpickve2gr.d	$a3, $vr7, 0
	slli.d	$a3, $a3, 3
	vpickve2gr.d	$a4, $vr7, 1
	slli.d	$a4, $a4, 3
	fldx.d	$fa7, $a2, $a3
	fldx.d	$ft0, $a2, $a4
	vbitseti.w	$vr9, $vr6, 0
	vshuf4i.w	$vr10, $vr9, 16
	vslli.d	$vr10, $vr10, 32
	vsrai.d	$vr10, $vr10, 32
	vpickve2gr.d	$a3, $vr10, 0
	slli.d	$a3, $a3, 3
	vpickve2gr.d	$a4, $vr10, 1
	slli.d	$a4, $a4, 3
	fldx.d	$ft2, $a2, $a3
	fldx.d	$ft3, $a2, $a4
	vextrins.d	$vr7, $vr8, 16
	vextrins.d	$vr10, $vr11, 16
	vadd.w	$vr6, $vr6, $vr3
	vshuf4i.w	$vr6, $vr6, 16
	vslli.d	$vr6, $vr6, 32
	vsrai.d	$vr6, $vr6, 32
	vpickve2gr.d	$a3, $vr6, 0
	slli.d	$a3, $a3, 3
	vpickve2gr.d	$a4, $vr6, 1
	slli.d	$a4, $a4, 3
	fldx.d	$fa6, $a2, $a3
	fldx.d	$ft0, $a2, $a4
	vadd.w	$vr9, $vr9, $vr3
	vshuf4i.w	$vr9, $vr9, 16
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vpickve2gr.d	$a3, $vr9, 0
	slli.d	$a3, $a3, 3
	vpickve2gr.d	$a4, $vr9, 1
	slli.d	$a4, $a4, 3
	fldx.d	$ft1, $a2, $a3
	fldx.d	$ft3, $a2, $a4
	vfadd.d	$vr7, $vr7, $vr10
	vextrins.d	$vr6, $vr8, 16
	vfadd.d	$vr6, $vr7, $vr6
	vextrins.d	$vr9, $vr11, 16
	vfadd.d	$vr6, $vr6, $vr9
	vfmul.d	$vr6, $vr6, $vr2
	slli.d	$a3, $s6, 3
	vstx	$vr6, $a1, $a3
	vaddi.wu	$vr5, $vr5, 2
	addi.d	$s3, $s3, -2
	addi.w	$s6, $s6, 2
	bnez	$s3, .LBB8_74
# %bb.75:                               # %middle.block
                                        #   in Loop: Header=BB8_58 Depth=3
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	move	$s6, $a3
	bne	$a3, $t2, .LBB8_60
	b	.LBB8_62
.LBB8_76:                               # %for.end320
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a2, 3
	ld.d	$a2, $a1, 240
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a2
	st.d	$a0, $a1, 240
	ld.d	$s8, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 384                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 392                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 400
	ret
.Lfunc_end8:
	.size	restriction_betas, .Lfunc_end8-restriction_betas
                                        # -- End function
	.globl	interpolation_constant          # -- Begin function interpolation_constant
	.p2align	5
	.type	interpolation_constant,@function
interpolation_constant:                 # @interpolation_constant
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	move	$s2, $a3
	move	$s3, $a2
	fmov.d	$fs0, $fa0
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	move	$s0, $a0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 1600
	ori	$a2, $zero, 1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	blt	$a1, $a2, .LBB9_12
# %bb.1:                                # %for.body.lr.ph
	move	$a0, $zero
	ld.d	$a3, $s0, 1776
	ori	$a4, $zero, 216
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	mul.d	$a4, $a5, $a4
	slli.d	$a5, $s3, 3
	slli.d	$a6, $s2, 3
	b	.LBB9_3
	.p2align	4, , 16
.LBB9_2:                                # %for.end135
                                        #   in Loop: Header=BB9_3 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $a1, .LBB9_12
.LBB9_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_7 Depth 2
                                        #       Child Loop BB9_9 Depth 3
                                        #         Child Loop BB9_10 Depth 4
	slli.d	$a7, $a0, 8
	add.d	$a7, $a3, $a7
	ld.d	$a7, $a7, 248
	add.d	$t7, $a7, $a4
	ld.w	$a7, $t7, 28
	blt	$a7, $a2, .LBB9_2
# %bb.4:                                # %for.cond105.preheader.lr.ph
                                        #   in Loop: Header=BB9_3 Depth=1
	ld.w	$t0, $t7, 24
	blt	$t0, $a2, .LBB9_2
# %bb.5:                                # %for.cond105.preheader.us.preheader
                                        #   in Loop: Header=BB9_3 Depth=1
	move	$t1, $zero
	move	$t2, $zero
	ld.w	$s2, $t7, 260
	ld.w	$t3, $t7, 48
	ld.d	$t6, $t7, 176
	ld.w	$t4, $t7, 52
	ld.w	$t5, $t7, 264
	ld.w	$t8, $t7, 44
	ldx.d	$s3, $t6, $a5
	add.d	$t6, $t3, $t4
	addi.d	$t6, $t6, 1
	mul.w	$t8, $t6, $t8
	ld.d	$s4, $t7, 392
	ld.w	$t6, $t7, 268
	ld.wu	$t7, $t7, 20
	alsl.d	$t8, $t8, $s3, 3
	ldx.d	$s3, $s4, $a6
	add.d	$s4, $t5, $t6
	addi.d	$s4, $s4, 1
	mul.w	$s4, $s4, $s2
	addi.w	$s2, $t7, 0
	alsl.d	$s3, $s4, $s3, 3
	b	.LBB9_7
	.p2align	4, , 16
.LBB9_6:                                # %for.cond105.for.inc133_crit_edge.us
                                        #   in Loop: Header=BB9_7 Depth=2
	addi.w	$t2, $t2, 1
	add.d	$t1, $t1, $t4
	beq	$t2, $a7, .LBB9_2
.LBB9_7:                                # %for.cond105.preheader.us
                                        #   Parent Loop BB9_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_9 Depth 3
                                        #         Child Loop BB9_10 Depth 4
	blt	$s2, $a2, .LBB9_6
# %bb.8:                                # %for.cond109.preheader.us.us.preheader
                                        #   in Loop: Header=BB9_7 Depth=2
	move	$s4, $zero
	bstrpick.d	$s5, $t2, 31, 1
	mul.d	$s5, $s5, $t6
	move	$s6, $t1
	.p2align	4, , 16
.LBB9_9:                                # %for.cond109.preheader.us.us
                                        #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_10 Depth 4
	move	$s7, $zero
	bstrpick.d	$s8, $s4, 31, 1
	mul.d	$s8, $s8, $t5
	add.d	$s8, $s8, $s5
	move	$ra, $t7
	.p2align	4, , 16
.LBB9_10:                               # %for.body112.us.us
                                        #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_7 Depth=2
                                        #       Parent Loop BB9_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.w	$s1, $s6, $s7
	bstrpick.d	$fp, $s7, 31, 1
	add.w	$fp, $s8, $fp
	slli.d	$s1, $s1, 3
	fldx.d	$fa0, $t8, $s1
	slli.d	$fp, $fp, 3
	fldx.d	$fa1, $s3, $fp
	fmadd.d	$fa0, $fs0, $fa0, $fa1
	fstx.d	$fa0, $t8, $s1
	addi.d	$ra, $ra, -1
	addi.w	$s7, $s7, 1
	bnez	$ra, .LBB9_10
# %bb.11:                               # %for.cond109.for.inc130_crit_edge.us.us
                                        #   in Loop: Header=BB9_9 Depth=3
	addi.w	$s4, $s4, 1
	add.d	$s6, $s6, $t3
	bne	$s4, $t0, .LBB9_9
	b	.LBB9_6
.LBB9_12:                               # %for.end138
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$a1, $a1, $s0, 3
	ld.d	$a2, $a1, 320
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a2
	st.d	$a0, $a1, 320
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end9:
	.size	interpolation_constant, .Lfunc_end9-interpolation_constant
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function interpolation_linear
.LCPI10_0:
	.dword	0xbfb8000000000000              # double -0.09375
.LCPI10_1:
	.dword	0x3fec200000000000              # double 0.87890625
.LCPI10_2:
	.dword	0x3fea5e0000000000              # double 0.823974609375
	.text
	.globl	interpolation_linear
	.p2align	5
	.type	interpolation_linear,@function
interpolation_linear:                   # @interpolation_linear
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
	fst.d	$fs0, $sp, 144                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 96                   # 8-byte Folded Spill
	move	$s2, $a3
	move	$s3, $a2
	fmov.d	$fs0, $fa0
	move	$fp, $a0
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	addi.w	$s4, $a1, 1
	ori	$a3, $zero, 1
	ori	$a4, $zero, 1
	ori	$a5, $zero, 1
	ori	$s0, $zero, 1
	move	$a1, $s4
	move	$a2, $s2
	pcaddu18i	$ra, %call36(exchange_boundary)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	ld.w	$a1, $fp, 1600
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	blt	$a1, $s0, .LBB10_12
# %bb.1:                                # %for.body.lr.ph
	move	$a2, $zero
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 1776
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ori	$a0, $zero, 216
	mul.d	$a1, $s4, $a0
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	mul.d	$a0, $a1, $a0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	slli.d	$a0, $s3, 3
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI10_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI10_0)
	slli.d	$a0, $s2, 3
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	vldi	$vr1, -956
	vldi	$vr2, -914
	b	.LBB10_3
	.p2align	4, , 16
.LBB10_2:                               # %for.end353
                                        #   in Loop: Header=BB10_3 Depth=1
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	beq	$a2, $a0, .LBB10_12
.LBB10_3:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_7 Depth 2
                                        #       Child Loop BB10_9 Depth 3
                                        #         Child Loop BB10_10 Depth 4
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	slli.d	$a0, $a2, 8
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.d	$a1, $a0, 248
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.w	$a3, $a0, 28
	ori	$a2, $zero, 1
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	blt	$a3, $a2, .LBB10_2
# %bb.4:                                # %for.cond129.preheader.lr.ph
                                        #   in Loop: Header=BB10_3 Depth=1
	ld.w	$t0, $a0, 24
	ori	$a2, $zero, 1
	blt	$t0, $a2, .LBB10_2
# %bb.5:                                # %for.cond129.preheader.us.preheader
                                        #   in Loop: Header=BB10_3 Depth=1
	move	$t1, $zero
	move	$t2, $zero
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	ld.w	$a2, $a1, 44
	ld.w	$t3, $a0, 48
	ld.d	$a3, $a0, 176
	ld.w	$t4, $a0, 52
	ld.w	$t5, $a1, 48
	ld.w	$a4, $a0, 44
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	ldx.d	$a3, $a3, $a5
	add.d	$a5, $t3, $t4
	addi.d	$a5, $a5, 1
	mul.w	$a4, $a5, $a4
	ld.d	$a5, $a1, 176
	ld.w	$t6, $a1, 52
	ld.wu	$s1, $a0, 20
	alsl.d	$t8, $a4, $a3, 3
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ldx.d	$a0, $a5, $a0
	add.d	$a1, $t5, $t6
	addi.d	$a1, $a1, 1
	mul.w	$a1, $a1, $a2
	addi.w	$s2, $s1, 0
	alsl.d	$s3, $a1, $a0, 3
	b	.LBB10_7
	.p2align	4, , 16
.LBB10_6:                               # %for.cond129.for.inc351_crit_edge.us
                                        #   in Loop: Header=BB10_7 Depth=2
	addi.w	$t2, $t2, 1
	add.d	$t1, $t1, $t4
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	beq	$t2, $a0, .LBB10_2
.LBB10_7:                               # %for.cond129.preheader.us
                                        #   Parent Loop BB10_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_9 Depth 3
                                        #         Child Loop BB10_10 Depth 4
	ori	$a0, $zero, 1
	blt	$s2, $a0, .LBB10_6
# %bb.8:                                # %for.cond133.preheader.us.us.preheader
                                        #   in Loop: Header=BB10_7 Depth=2
	move	$s4, $zero
	bstrpick.d	$a0, $t2, 31, 1
	andi	$a1, $t2, 1
	sltui	$a1, $a1, 1
	mul.d	$s6, $a0, $t6
	movgr2cf	$fcc0, $a1
	fsel	$fa3, $fa0, $fa1, $fcc0
	fsel	$fa4, $fa1, $fa0, $fcc0
	fmul.d	$fa5, $fa3, $fa2
	fmul.d	$fa6, $fa5, $fa2
	fmul.d	$fa7, $fa4, $fa2
	fmul.d	$ft0, $fa7, $fa2
	move	$s7, $t1
	.p2align	4, , 16
.LBB10_9:                               # %for.cond133.preheader.us.us
                                        #   Parent Loop BB10_3 Depth=1
                                        #     Parent Loop BB10_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB10_10 Depth 4
	move	$s8, $zero
	bstrpick.d	$a0, $s4, 31, 1
	mul.d	$a0, $a0, $t5
	andi	$a1, $s4, 1
	sltui	$a1, $a1, 1
	add.d	$ra, $a0, $s6
	movgr2cf	$fcc0, $a1
	fsel	$ft9, $fa0, $fa1, $fcc0
	fsel	$ft11, $fa1, $fa0, $fcc0
	fmul.d	$ft1, $fa3, $ft9
	fmul.d	$ft2, $ft1, $fa2
	fmul.d	$ft3, $fa3, $ft11
	fmul.d	$ft4, $ft3, $fa2
	fmul.d	$ft5, $ft9, $fa2
	fmul.d	$ft6, $ft5, $fa2
	fmul.d	$ft7, $ft11, $fa2
	fmul.d	$ft8, $ft7, $fa2
	fmul.d	$ft9, $fa4, $ft9
	fmul.d	$ft10, $ft9, $fa2
	fmul.d	$ft11, $fa4, $ft11
	fmul.d	$ft12, $ft11, $fa2
	move	$t7, $s1
	.p2align	4, , 16
.LBB10_10:                              # %for.body136.us.us
                                        #   Parent Loop BB10_3 Depth=1
                                        #     Parent Loop BB10_7 Depth=2
                                        #       Parent Loop BB10_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.w	$a0, $s7, $s8
	bstrpick.d	$a1, $s8, 31, 1
	andi	$a2, $s8, 1
	sltui	$a2, $a2, 1
	add.w	$s0, $ra, $a1
	movgr2cf	$fcc0, $a2
	fsel	$ft14, $fa0, $fa1, $fcc0
	fsel	$ft13, $fa1, $fa0, $fcc0
	slli.d	$fp, $a0, 3
	fldx.d	$ft15, $t8, $fp
	addi.w	$a3, $s0, -1
	sub.w	$a6, $a3, $t5
	sub.w	$a0, $a6, $t6
	slli.d	$a0, $a0, 3
	fldx.d	$fs1, $s3, $a0
	sub.w	$a2, $s0, $t5
	sub.w	$a0, $a2, $t6
	slli.d	$a0, $a0, 3
	fldx.d	$fs2, $s3, $a0
	fmul.d	$fs3, $ft1, $ft14
	fmul.d	$fs1, $fs3, $fs1
	fmadd.d	$ft15, $fs0, $ft15, $fs1
	fmadd.d	$ft15, $ft2, $fs2, $ft15
	fmul.d	$fs1, $ft1, $ft13
	addi.w	$a5, $s0, 1
	sub.w	$s5, $a5, $t5
	sub.w	$a0, $s5, $t6
	slli.d	$a0, $a0, 3
	fldx.d	$fs2, $s3, $a0
	sub.w	$a0, $a3, $t6
	slli.d	$a0, $a0, 3
	fldx.d	$fs3, $s3, $a0
	sub.w	$a0, $s0, $t6
	slli.d	$a0, $a0, 3
	fldx.d	$fs4, $s3, $a0
	fmadd.d	$ft15, $fs1, $fs2, $ft15
	fmul.d	$fs1, $fa5, $ft14
	fmadd.d	$ft15, $fs1, $fs3, $ft15
	fmadd.d	$ft15, $fa6, $fs4, $ft15
	fmul.d	$fs1, $fa5, $ft13
	sub.w	$a0, $a5, $t6
	slli.d	$a0, $a0, 3
	fldx.d	$fs2, $s3, $a0
	add.w	$a1, $a3, $t5
	sub.w	$a0, $a1, $t6
	slli.d	$a0, $a0, 3
	fldx.d	$fs3, $s3, $a0
	add.w	$a4, $s0, $t5
	sub.w	$a0, $a4, $t6
	slli.d	$a0, $a0, 3
	fldx.d	$fs4, $s3, $a0
	fmadd.d	$ft15, $fs1, $fs2, $ft15
	fmul.d	$fs1, $ft3, $ft14
	fmadd.d	$ft15, $fs1, $fs3, $ft15
	fmadd.d	$ft15, $ft4, $fs4, $ft15
	add.w	$a0, $a5, $t5
	sub.w	$a7, $a0, $t6
	slli.d	$a7, $a7, 3
	fldx.d	$fs1, $s3, $a7
	slli.d	$a7, $a6, 3
	fldx.d	$fs2, $s3, $a7
	fmul.d	$fs3, $ft3, $ft13
	fmadd.d	$ft15, $fs3, $fs1, $ft15
	fmul.d	$fs1, $ft5, $ft14
	fmadd.d	$ft15, $fs1, $fs2, $ft15
	slli.d	$a7, $a2, 3
	fldx.d	$fs1, $s3, $a7
	slli.d	$a7, $s5, 3
	fldx.d	$fs2, $s3, $a7
	pcalau12i	$a7, %pc_hi20(.LCPI10_1)
	fld.d	$fs3, $a7, %pc_lo12(.LCPI10_1)
	fmadd.d	$ft15, $ft6, $fs1, $ft15
	fmul.d	$fs1, $ft5, $ft13
	fmadd.d	$ft15, $fs1, $fs2, $ft15
	fmul.d	$fs1, $ft14, $fs3
	slli.d	$a7, $a3, 3
	fldx.d	$fs2, $s3, $a7
	slli.d	$a7, $s0, 3
	fldx.d	$fs4, $s3, $a7
	pcalau12i	$a7, %pc_hi20(.LCPI10_2)
	fld.d	$fs5, $a7, %pc_lo12(.LCPI10_2)
	slli.d	$a7, $a5, 3
	fldx.d	$fs6, $s3, $a7
	fmadd.d	$ft15, $fs1, $fs2, $ft15
	fmadd.d	$ft15, $fs4, $fs5, $ft15
	fmul.d	$fs1, $ft13, $fs3
	fmadd.d	$ft15, $fs1, $fs6, $ft15
	fmul.d	$fs1, $ft7, $ft14
	slli.d	$a7, $a1, 3
	fldx.d	$fs2, $s3, $a7
	slli.d	$a7, $a4, 3
	fldx.d	$fs3, $s3, $a7
	slli.d	$a7, $a0, 3
	fldx.d	$fs4, $s3, $a7
	fmadd.d	$ft15, $fs1, $fs2, $ft15
	fmadd.d	$ft15, $ft8, $fs3, $ft15
	fmul.d	$fs1, $ft7, $ft13
	fmadd.d	$ft15, $fs1, $fs4, $ft15
	fmul.d	$fs1, $ft9, $ft14
	add.w	$a6, $a6, $t6
	slli.d	$a6, $a6, 3
	fldx.d	$fs2, $s3, $a6
	add.w	$a2, $a2, $t6
	slli.d	$a2, $a2, 3
	fldx.d	$fs3, $s3, $a2
	add.w	$a2, $s5, $t6
	slli.d	$a2, $a2, 3
	fldx.d	$fs4, $s3, $a2
	fmadd.d	$ft15, $fs1, $fs2, $ft15
	fmadd.d	$ft15, $ft10, $fs3, $ft15
	fmul.d	$fs1, $ft9, $ft13
	fmadd.d	$ft15, $fs1, $fs4, $ft15
	fmul.d	$fs1, $fa7, $ft14
	add.w	$a2, $a3, $t6
	slli.d	$a2, $a2, 3
	fldx.d	$fs2, $s3, $a2
	add.w	$a2, $s0, $t6
	slli.d	$a2, $a2, 3
	fldx.d	$fs3, $s3, $a2
	add.w	$a2, $a5, $t6
	slli.d	$a2, $a2, 3
	fldx.d	$fs4, $s3, $a2
	fmadd.d	$ft15, $fs1, $fs2, $ft15
	fmadd.d	$ft15, $ft0, $fs3, $ft15
	fmul.d	$fs1, $fa7, $ft13
	fmadd.d	$ft15, $fs1, $fs4, $ft15
	fmul.d	$ft14, $ft11, $ft14
	add.w	$a1, $a1, $t6
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $s3, $a1
	add.w	$a1, $a4, $t6
	slli.d	$a1, $a1, 3
	fldx.d	$fs2, $s3, $a1
	add.w	$a0, $a0, $t6
	slli.d	$a0, $a0, 3
	fldx.d	$fs3, $s3, $a0
	fmadd.d	$ft14, $ft14, $fs1, $ft15
	fmadd.d	$ft14, $ft12, $fs2, $ft14
	fmul.d	$ft13, $ft11, $ft13
	fmadd.d	$ft13, $ft13, $fs3, $ft14
	fstx.d	$ft13, $t8, $fp
	addi.d	$t7, $t7, -1
	addi.w	$s8, $s8, 1
	bnez	$t7, .LBB10_10
# %bb.11:                               # %for.cond133.for.inc348_crit_edge.us.us
                                        #   in Loop: Header=BB10_9 Depth=3
	addi.w	$s4, $s4, 1
	add.d	$s7, $s7, $t3
	bne	$s4, $t0, .LBB10_9
	b	.LBB10_6
.LBB10_12:                              # %for.end356
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a2, 3
	ld.d	$a2, $a1, 320
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a2
	st.d	$a0, $a1, 320
	fld.d	$fs6, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 144                  # 8-byte Folded Reload
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
.Lfunc_end10:
	.size	interpolation_linear, .Lfunc_end10-interpolation_linear
                                        # -- End function
	.globl	zero_grid                       # -- Begin function zero_grid
	.p2align	5
	.type	zero_grid,@function
zero_grid:                              # @zero_grid
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
	move	$s2, $a2
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a2, $fp, 1600
	ori	$a1, $zero, 1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	blt	$a2, $a1, .LBB11_17
# %bb.1:                                # %for.body.lr.ph
	move	$a0, $zero
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 1776
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	ori	$a1, $zero, 216
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	mul.d	$a1, $a2, $a1
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	slli.d	$a1, $s2, 3
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ori	$a5, $zero, 7
	xvrepli.b	$xr0, 0
	b	.LBB11_3
	.p2align	4, , 16
.LBB11_2:                               # %for.end96
                                        #   in Loop: Header=BB11_3 Depth=1
	addi.d	$a0, $a0, 1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB11_17
.LBB11_3:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_7 Depth 2
                                        #       Child Loop BB11_10 Depth 3
                                        #         Child Loop BB11_13 Depth 4
                                        #         Child Loop BB11_16 Depth 4
	slli.d	$a1, $a0, 8
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	add.d	$a1, $a2, $a1
	ld.d	$a1, $a1, 248
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	add.d	$a4, $a1, $a2
	ld.w	$a6, $a4, 44
	ld.w	$a2, $a4, 28
	sub.w	$a1, $zero, $a6
	add.w	$a7, $a2, $a6
	bge	$a1, $a7, .LBB11_2
# %bb.4:                                # %for.cond74.preheader.lr.ph
                                        #   in Loop: Header=BB11_3 Depth=1
	ld.w	$a2, $a4, 24
	add.w	$t0, $a2, $a6
	bge	$a1, $t0, .LBB11_2
# %bb.5:                                # %for.cond74.preheader.us.preheader
                                        #   in Loop: Header=BB11_3 Depth=1
	ld.w	$t1, $a4, 48
	ld.d	$a2, $a4, 176
	ld.w	$t2, $a4, 52
	move	$t3, $zero
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	ldx.d	$a2, $a2, $a3
	add.d	$a3, $t1, $t2
	ld.w	$a4, $a4, 20
	addi.d	$a3, $a3, 1
	mul.w	$a3, $a6, $a3
	alsl.d	$t4, $a3, $a2, 3
	add.w	$t5, $a4, $a6
	bstrpick.d	$t6, $a1, 31, 0
	alsl.d	$a2, $a6, $a4, 1
	addi.w	$t7, $a2, -1
	nor	$a2, $t1, $zero
	sub.d	$a2, $a2, $t2
	mul.w	$t8, $a6, $a2
	bstrpick.d	$a2, $t7, 31, 0
	addi.d	$s2, $a2, 1
	add.d	$a2, $t8, $t7
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	bstrpick.d	$a2, $s2, 32, 3
	slli.d	$s4, $a2, 3
	alsl.d	$s5, $a2, $t6, 3
	add.d	$a2, $t2, $t1
	sub.d	$a2, $zero, $a2
	mul.d	$s0, $a6, $a2
	st.d	$t8, $sp, 80                    # 8-byte Folded Spill
	move	$s8, $a1
	b	.LBB11_7
	.p2align	4, , 16
.LBB11_6:                               # %for.cond74.for.inc94_crit_edge.us
                                        #   in Loop: Header=BB11_7 Depth=2
	addi.w	$s8, $s8, 1
	addi.d	$t3, $t3, 1
	add.w	$t8, $t8, $t2
	add.d	$s0, $s0, $t2
	beq	$s8, $a7, .LBB11_2
.LBB11_7:                               # %for.cond74.preheader.us
                                        #   Parent Loop BB11_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_10 Depth 3
                                        #         Child Loop BB11_13 Depth 4
                                        #         Child Loop BB11_16 Depth 4
	bge	$a1, $t5, .LBB11_6
# %bb.8:                                # %for.cond80.preheader.us.us.preheader
                                        #   in Loop: Header=BB11_7 Depth=2
	move	$ra, $zero
	mul.d	$a2, $t2, $t3
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	add.d	$s1, $a3, $a2
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	add.d	$fp, $a2, $a3
	move	$s6, $s0
	move	$s7, $t8
	move	$a6, $a1
	b	.LBB11_10
	.p2align	4, , 16
.LBB11_9:                               # %for.cond80.for.inc91_crit_edge.us.us
                                        #   in Loop: Header=BB11_10 Depth=3
	addi.w	$a6, $a6, 1
	addi.d	$ra, $ra, 1
	add.w	$s7, $s7, $t1
	add.d	$s6, $s6, $t1
	beq	$a6, $t0, .LBB11_6
.LBB11_10:                              # %for.cond80.preheader.us.us
                                        #   Parent Loop BB11_3 Depth=1
                                        #     Parent Loop BB11_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB11_13 Depth 4
                                        #         Child Loop BB11_16 Depth 4
	move	$a3, $t6
	bltu	$t7, $a5, .LBB11_15
# %bb.11:                               # %vector.scevcheck
                                        #   in Loop: Header=BB11_10 Depth=3
	mul.d	$a2, $t1, $ra
	add.w	$s3, $s1, $a2
	add.w	$a2, $a2, $fp
	move	$a3, $t6
	blt	$a2, $s3, .LBB11_15
# %bb.12:                               # %vector.body.preheader
                                        #   in Loop: Header=BB11_10 Depth=3
	move	$a2, $s4
	move	$a3, $s7
	.p2align	4, , 16
.LBB11_13:                              # %vector.body
                                        #   Parent Loop BB11_3 Depth=1
                                        #     Parent Loop BB11_7 Depth=2
                                        #       Parent Loop BB11_10 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	alsl.d	$s3, $a3, $t4, 3
	slli.d	$a4, $a3, 3
	xvstx	$xr0, $t4, $a4
	xvst	$xr0, $s3, 32
	addi.d	$a2, $a2, -8
	addi.w	$a3, $a3, 8
	bnez	$a2, .LBB11_13
# %bb.14:                               # %middle.block
                                        #   in Loop: Header=BB11_10 Depth=3
	move	$a3, $s5
	beq	$s2, $s4, .LBB11_9
	.p2align	4, , 16
.LBB11_15:                              # %for.body84.us.us.preheader
                                        #   in Loop: Header=BB11_10 Depth=3
	add.w	$a2, $s6, $a3
	sub.d	$a3, $t5, $a3
	.p2align	4, , 16
.LBB11_16:                              # %for.body84.us.us
                                        #   Parent Loop BB11_3 Depth=1
                                        #     Parent Loop BB11_7 Depth=2
                                        #       Parent Loop BB11_10 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$a4, $a2, 3
	stx.d	$zero, $t4, $a4
	addi.w	$a3, $a3, -1
	addi.w	$a2, $a2, 1
	bnez	$a3, .LBB11_16
	b	.LBB11_9
.LBB11_17:                              # %for.end99
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a2, 3
	ld.d	$a2, $a1, 960
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a2
	st.d	$a0, $a1, 960
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
.Lfunc_end11:
	.size	zero_grid, .Lfunc_end11-zero_grid
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function initialize_grid_to_scalar
.LCPI12_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI12_1:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	initialize_grid_to_scalar
	.p2align	5
	.type	initialize_grid_to_scalar,@function
initialize_grid_to_scalar:              # @initialize_grid_to_scalar
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
                                        # kill: def $f0_64 killed $f0_64 def $xr0
	xvst	$xr0, $sp, 16                   # 32-byte Folded Spill
	move	$s2, $a2
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	xvld	$xr16, $sp, 16                  # 32-byte Folded Reload
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	ld.w	$a2, $fp, 1600
	ori	$a1, $zero, 1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	blt	$a2, $a1, .LBB12_25
# %bb.1:                                # %for.body.lr.ph
	move	$a2, $zero
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 1776
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	xvreplve0.d	$xr0, $xr16
	ori	$a0, $zero, 216
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	mul.d	$a0, $a1, $a0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	slli.d	$a0, $s2, 3
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI12_0)
	xvld	$xr1, $a0, %pc_lo12(.LCPI12_0)
	pcalau12i	$a0, %pc_hi20(.LCPI12_1)
	vld	$vr2, $a0, %pc_lo12(.LCPI12_1)
	movgr2fr.d	$fa3, $zero
	vrepli.b	$vr4, -1
	xvrepli.b	$xr5, 0
	b	.LBB12_3
	.p2align	4, , 16
.LBB12_2:                               # %for.end111
                                        #   in Loop: Header=BB12_3 Depth=1
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	beq	$a2, $a0, .LBB12_25
.LBB12_3:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_7 Depth 2
                                        #       Child Loop BB12_10 Depth 3
                                        #         Child Loop BB12_21 Depth 4
                                        #         Child Loop BB12_24 Depth 4
                                        #         Child Loop BB12_14 Depth 4
                                        #         Child Loop BB12_17 Depth 4
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	slli.d	$a0, $a2, 8
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 248
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	ld.w	$a1, $a0, 44
	ld.w	$a2, $a0, 28
	sub.w	$s1, $zero, $a1
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	add.w	$a2, $a2, $a1
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	bge	$s1, $a2, .LBB12_2
# %bb.4:                                # %for.cond74.preheader.lr.ph
                                        #   in Loop: Header=BB12_3 Depth=1
	ld.w	$t1, $a0, 24
	add.w	$t2, $t1, $a1
	bge	$s1, $t2, .LBB12_2
# %bb.5:                                # %for.cond74.preheader.us.preheader
                                        #   in Loop: Header=BB12_3 Depth=1
	ld.w	$t3, $a0, 48
	ld.d	$a2, $a0, 176
	ld.w	$a3, $a0, 52
	st.d	$zero, $sp, 160                 # 8-byte Folded Spill
	ld.w	$t6, $a0, 20
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ldx.d	$a0, $a2, $a0
	add.d	$a2, $t3, $a3
	addi.d	$a2, $a2, 1
	mul.w	$a2, $a1, $a2
	alsl.d	$t7, $a2, $a0, 3
	add.w	$t8, $t6, $a1
	alsl.d	$a0, $a1, $t6, 1
	addi.w	$s2, $a0, -1
	nor	$a0, $t3, $zero
	sub.d	$a0, $a0, $a3
	mul.w	$a4, $a1, $a0
	bstrpick.d	$a0, $s2, 31, 0
	addi.d	$s4, $a0, 1
	add.d	$a0, $a4, $s2
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	bstrpick.d	$a0, $s4, 32, 3
	slli.d	$a6, $a0, 3
	alsl.d	$s7, $a0, $s1, 3
	xvreplgr2vr.d	$xr6, $t6
	xvreplgr2vr.d	$xr7, $s1
	xvadd.d	$xr7, $xr7, $xr1
	vreplgr2vr.w	$vr8, $s1
	vadd.w	$vr8, $vr8, $vr2
	st.d	$a3, $sp, 152                   # 8-byte Folded Spill
	add.d	$a0, $a3, $t3
	sub.d	$a0, $zero, $a0
	mul.d	$a2, $a1, $a0
	st.d	$a4, $sp, 128                   # 8-byte Folded Spill
	move	$a0, $a4
	move	$s5, $s1
	b	.LBB12_7
	.p2align	4, , 16
.LBB12_6:                               # %for.cond74.for.inc109_crit_edge.us
                                        #   in Loop: Header=BB12_7 Depth=2
	addi.w	$s5, $s5, 1
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	add.w	$a0, $a0, $a1
	add.d	$a2, $a2, $a1
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	beq	$s5, $a1, .LBB12_2
.LBB12_7:                               # %for.cond74.preheader.us
                                        #   Parent Loop BB12_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_10 Depth 3
                                        #         Child Loop BB12_21 Depth 4
                                        #         Child Loop BB12_24 Depth 4
                                        #         Child Loop BB12_14 Depth 4
                                        #         Child Loop BB12_17 Depth 4
	bge	$s1, $t8, .LBB12_6
# %bb.8:                                # %for.cond80.preheader.us.us.preheader
                                        #   in Loop: Header=BB12_7 Depth=2
	move	$fp, $zero
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	mul.d	$a1, $a1, $a3
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	add.d	$s0, $a3, $a1
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	slt	$a4, $s5, $a3
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a3
	move	$s8, $a2
	move	$s3, $a0
	move	$a7, $s1
	b	.LBB12_10
	.p2align	4, , 16
.LBB12_9:                               # %for.cond80.for.inc106_crit_edge.us.us
                                        #   in Loop: Header=BB12_10 Depth=3
	addi.w	$a7, $a7, 1
	addi.d	$fp, $fp, 1
	add.w	$s3, $s3, $t3
	add.d	$s8, $s8, $t3
	beq	$a7, $t2, .LBB12_6
.LBB12_10:                              # %for.cond80.preheader.us.us
                                        #   Parent Loop BB12_3 Depth=1
                                        #     Parent Loop BB12_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_21 Depth 4
                                        #         Child Loop BB12_24 Depth 4
                                        #         Child Loop BB12_14 Depth 4
                                        #         Child Loop BB12_17 Depth 4
	slt	$a3, $a7, $t1
	and	$a3, $a4, $a3
	mul.d	$ra, $t3, $fp
	beqz	$a3, .LBB12_18
# %bb.11:                               # %for.body84.us58.us.preheader
                                        #   in Loop: Header=BB12_10 Depth=3
	or	$a3, $a7, $s5
	move	$s6, $s1
	ori	$a5, $zero, 7
	bltu	$s2, $a5, .LBB12_16
# %bb.12:                               # %for.body84.us58.us.preheader
                                        #   in Loop: Header=BB12_10 Depth=3
	add.w	$t0, $s0, $ra
	add.w	$ra, $ra, $a1
	move	$s6, $s1
	blt	$ra, $t0, .LBB12_16
# %bb.13:                               # %vector.ph
                                        #   in Loop: Header=BB12_10 Depth=3
	vreplgr2vr.w	$vr9, $a3
	move	$s6, $a6
	move	$ra, $s3
	xvori.b	$xr10, $xr7, 0
	vori.b	$vr11, $vr8, 0
	.p2align	4, , 16
.LBB12_14:                              # %vector.body
                                        #   Parent Loop BB12_3 Depth=1
                                        #     Parent Loop BB12_7 Depth=2
                                        #       Parent Loop BB12_10 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvaddi.du	$xr12, $xr10, 4
	vaddi.wu	$vr13, $vr11, 4
	vor.v	$vr14, $vr9, $vr11
	vor.v	$vr13, $vr9, $vr13
	vslt.w	$vr14, $vr4, $vr14
	vpickve2gr.w	$t0, $vr14, 0
	xvinsgr2vr.d	$xr15, $t0, 0
	vpickve2gr.w	$t0, $vr14, 1
	xvinsgr2vr.d	$xr15, $t0, 1
	vpickve2gr.w	$t0, $vr14, 2
	xvinsgr2vr.d	$xr15, $t0, 2
	vpickve2gr.w	$t0, $vr14, 3
	xvinsgr2vr.d	$xr15, $t0, 3
	vslt.w	$vr13, $vr4, $vr13
	vpickve2gr.w	$t0, $vr13, 0
	xvinsgr2vr.d	$xr14, $t0, 0
	vpickve2gr.w	$t0, $vr13, 1
	xvinsgr2vr.d	$xr14, $t0, 1
	vpickve2gr.w	$t0, $vr13, 2
	xvinsgr2vr.d	$xr14, $t0, 2
	vpickve2gr.w	$t0, $vr13, 3
	xvinsgr2vr.d	$xr14, $t0, 3
	xvslt.d	$xr13, $xr10, $xr6
	xvslt.d	$xr12, $xr12, $xr6
	xvand.v	$xr13, $xr15, $xr13
	xvand.v	$xr12, $xr14, $xr12
	xvand.v	$xr13, $xr13, $xr0
	xvand.v	$xr12, $xr12, $xr0
	alsl.d	$t0, $ra, $t7, 3
	slli.d	$t4, $ra, 3
	xvstx	$xr13, $t7, $t4
	xvst	$xr12, $t0, 32
	xvaddi.du	$xr10, $xr10, 8
	vaddi.wu	$vr11, $vr11, 8
	addi.d	$s6, $s6, -8
	addi.w	$ra, $ra, 8
	bnez	$s6, .LBB12_14
# %bb.15:                               # %middle.block
                                        #   in Loop: Header=BB12_10 Depth=3
	move	$s6, $s7
	beq	$s4, $a6, .LBB12_9
.LBB12_16:                              # %for.body84.us58.us.preheader122
                                        #   in Loop: Header=BB12_10 Depth=3
	move	$ra, $s6
	.p2align	4, , 16
.LBB12_17:                              # %for.body84.us58.us
                                        #   Parent Loop BB12_3 Depth=1
                                        #     Parent Loop BB12_7 Depth=2
                                        #       Parent Loop BB12_10 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.w	$t0, $s8, $s6
	or	$t4, $a3, $s6
	addi.w	$t4, $t4, 0
	addi.w	$a5, $zero, -1
	slt	$t5, $ra, $t6
	slt	$a5, $a5, $t4
	movgr2cf	$fcc0, $t5
	fsel	$ft1, $fa3, $ft8, $fcc0
	movgr2cf	$fcc0, $a5
	fsel	$ft1, $fa3, $ft1, $fcc0
	slli.d	$a5, $t0, 3
	fstx.d	$ft1, $t7, $a5
	addi.w	$s6, $s6, 1
	addi.d	$ra, $ra, 1
	bne	$t8, $s6, .LBB12_17
	b	.LBB12_9
	.p2align	4, , 16
.LBB12_18:                              # %for.body84.us.us.us.preheader
                                        #   in Loop: Header=BB12_10 Depth=3
	move	$s6, $s1
	ori	$a3, $zero, 7
	bltu	$s2, $a3, .LBB12_23
# %bb.19:                               # %for.body84.us.us.us.preheader
                                        #   in Loop: Header=BB12_10 Depth=3
	add.w	$a3, $s0, $ra
	add.w	$ra, $ra, $a1
	move	$s6, $s1
	blt	$ra, $a3, .LBB12_23
# %bb.20:                               # %vector.body112.preheader
                                        #   in Loop: Header=BB12_10 Depth=3
	move	$a3, $a6
	move	$s6, $s3
	.p2align	4, , 16
.LBB12_21:                              # %vector.body112
                                        #   Parent Loop BB12_3 Depth=1
                                        #     Parent Loop BB12_7 Depth=2
                                        #       Parent Loop BB12_10 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	alsl.d	$ra, $s6, $t7, 3
	slli.d	$t0, $s6, 3
	xvstx	$xr5, $t7, $t0
	xvst	$xr5, $ra, 32
	addi.d	$a3, $a3, -8
	addi.w	$s6, $s6, 8
	bnez	$a3, .LBB12_21
# %bb.22:                               # %middle.block116
                                        #   in Loop: Header=BB12_10 Depth=3
	move	$s6, $s7
	beq	$s4, $a6, .LBB12_9
.LBB12_23:                              # %for.body84.us.us.us.preheader123
                                        #   in Loop: Header=BB12_10 Depth=3
	add.w	$a3, $s8, $s6
	sub.d	$s6, $t8, $s6
	.p2align	4, , 16
.LBB12_24:                              # %for.body84.us.us.us
                                        #   Parent Loop BB12_3 Depth=1
                                        #     Parent Loop BB12_7 Depth=2
                                        #       Parent Loop BB12_10 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$a5, $a3, 3
	stx.d	$zero, $t7, $a5
	addi.w	$s6, $s6, -1
	addi.w	$a3, $a3, 1
	bnez	$s6, .LBB12_24
	b	.LBB12_9
.LBB12_25:                              # %for.end114
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a2, 3
	ld.d	$a2, $a1, 960
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a2
	st.d	$a0, $a1, 960
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
.Lfunc_end12:
	.size	initialize_grid_to_scalar, .Lfunc_end12-initialize_grid_to_scalar
                                        # -- End function
	.globl	add_grids                       # -- Begin function add_grids
	.p2align	5
	.type	add_grids,@function
add_grids:                              # @add_grids
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
	move	$s2, $a4
                                        # kill: def $f1_64 killed $f1_64 def $xr1
	xvst	$xr1, $sp, 48                   # 32-byte Folded Spill
	move	$s3, $a3
                                        # kill: def $f0_64 killed $f0_64 def $xr0
	xvst	$xr0, $sp, 16                   # 32-byte Folded Spill
	move	$s4, $a2
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	xvld	$xr7, $sp, 16                   # 32-byte Folded Reload
	xvld	$xr6, $sp, 48                   # 32-byte Folded Reload
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	ld.w	$a1, $fp, 1600
	ori	$a2, $zero, 1
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	blt	$a1, $a2, .LBB13_18
# %bb.1:                                # %for.body.lr.ph
	move	$a0, $zero
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a3, $a3, 1776
	xvreplve0.d	$xr0, $xr6
	xvreplve0.d	$xr1, $xr7
	ori	$a4, $zero, 216
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
	mul.d	$a4, $a5, $a4
	slli.d	$a5, $s4, 3
	st.d	$a5, $sp, 128                   # 8-byte Folded Spill
	slli.d	$a5, $s3, 3
	st.d	$a5, $sp, 120                   # 8-byte Folded Spill
	slli.d	$a5, $s2, 3
	st.d	$a5, $sp, 112                   # 8-byte Folded Spill
	ori	$t0, $zero, 8
	b	.LBB13_3
	.p2align	4, , 16
.LBB13_2:                               # %for.end125
                                        #   in Loop: Header=BB13_3 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $a1, .LBB13_18
.LBB13_3:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_7 Depth 2
                                        #       Child Loop BB13_10 Depth 3
                                        #         Child Loop BB13_16 Depth 4
                                        #         Child Loop BB13_14 Depth 4
	slli.d	$a5, $a0, 8
	add.d	$a5, $a3, $a5
	ld.d	$a5, $a5, 248
	add.d	$t3, $a5, $a4
	ld.w	$t1, $t3, 28
	blt	$t1, $a2, .LBB13_2
# %bb.4:                                # %for.cond100.preheader.lr.ph
                                        #   in Loop: Header=BB13_3 Depth=1
	ld.w	$t2, $t3, 24
	blt	$t2, $a2, .LBB13_2
# %bb.5:                                # %for.cond100.preheader.us.preheader
                                        #   in Loop: Header=BB13_3 Depth=1
	move	$s0, $zero
	move	$t4, $zero
	ld.w	$t5, $t3, 48
	ld.d	$a5, $t3, 176
	ld.w	$t6, $t3, 52
	ld.w	$t8, $t3, 44
	ld.wu	$t7, $t3, 20
	ld.d	$a6, $sp, 128                   # 8-byte Folded Reload
	ldx.d	$t3, $a5, $a6
	add.d	$fp, $t5, $t6
	addi.d	$fp, $fp, 1
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	ldx.d	$s1, $a5, $a6
	ld.d	$a6, $sp, 112                   # 8-byte Folded Reload
	ldx.d	$a5, $a5, $a6
	mul.w	$fp, $t8, $fp
	alsl.d	$t8, $fp, $t3, 3
	alsl.d	$s2, $fp, $s1, 3
	alsl.d	$s3, $fp, $a5, 3
	addi.d	$s4, $t7, -1
	sub.d	$fp, $t3, $s1
	sub.d	$a5, $t3, $a5
	sltui	$t3, $fp, 64
	sltui	$a5, $a5, 64
	or	$s5, $t3, $a5
	bstrpick.d	$a5, $t7, 30, 3
	slli.d	$a5, $a5, 3
	addi.w	$s7, $t7, 0
	b	.LBB13_7
	.p2align	4, , 16
.LBB13_6:                               # %for.cond100.for.inc123_crit_edge.us
                                        #   in Loop: Header=BB13_7 Depth=2
	addi.w	$t4, $t4, 1
	add.w	$s0, $s0, $t6
	beq	$t4, $t1, .LBB13_2
.LBB13_7:                               # %for.cond100.preheader.us
                                        #   Parent Loop BB13_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_10 Depth 3
                                        #         Child Loop BB13_16 Depth 4
                                        #         Child Loop BB13_14 Depth 4
	blt	$s7, $a2, .LBB13_6
# %bb.8:                                # %for.cond104.preheader.us.us.preheader
                                        #   in Loop: Header=BB13_7 Depth=2
	move	$s8, $zero
	mul.d	$ra, $t6, $t4
	add.d	$s1, $ra, $s4
	move	$fp, $s0
	b	.LBB13_10
	.p2align	4, , 16
.LBB13_9:                               # %for.cond104.for.inc120_crit_edge.us.us
                                        #   in Loop: Header=BB13_10 Depth=3
	addi.w	$s8, $s8, 1
	add.w	$fp, $fp, $t5
	beq	$s8, $t2, .LBB13_6
.LBB13_10:                              # %for.cond104.preheader.us.us
                                        #   Parent Loop BB13_3 Depth=1
                                        #     Parent Loop BB13_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB13_16 Depth 4
                                        #         Child Loop BB13_14 Depth 4
	bltu	$t7, $t0, .LBB13_12
# %bb.11:                               # %vector.scevcheck
                                        #   in Loop: Header=BB13_10 Depth=3
	srli.d	$t3, $s4, 32
	sltu	$t3, $zero, $t3
	mul.d	$s6, $t5, $s8
	add.w	$a6, $ra, $s6
	add.w	$s6, $s6, $s1
	slt	$a6, $s6, $a6
	or	$a6, $a6, $t3
	or	$a6, $a6, $s5
	andi	$a6, $a6, 1
	beqz	$a6, .LBB13_15
.LBB13_12:                              #   in Loop: Header=BB13_10 Depth=3
	move	$s6, $zero
.LBB13_13:                              # %for.body107.us.us.preheader
                                        #   in Loop: Header=BB13_10 Depth=3
	add.w	$t3, $fp, $s6
	sub.d	$s6, $t7, $s6
	.p2align	4, , 16
.LBB13_14:                              # %for.body107.us.us
                                        #   Parent Loop BB13_3 Depth=1
                                        #     Parent Loop BB13_7 Depth=2
                                        #       Parent Loop BB13_10 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$a6, $t3, 3
	fldx.d	$fa2, $s3, $a6
	fldx.d	$fa3, $s2, $a6
	fmul.d	$fa2, $fa6, $fa2
	fmadd.d	$fa2, $fa7, $fa3, $fa2
	fstx.d	$fa2, $t8, $a6
	addi.d	$s6, $s6, -1
	addi.w	$t3, $t3, 1
	bnez	$s6, .LBB13_14
	b	.LBB13_9
	.p2align	4, , 16
.LBB13_15:                              # %vector.body.preheader
                                        #   in Loop: Header=BB13_10 Depth=3
	move	$t3, $fp
	move	$s6, $a5
	.p2align	4, , 16
.LBB13_16:                              # %vector.body
                                        #   Parent Loop BB13_3 Depth=1
                                        #     Parent Loop BB13_7 Depth=2
                                        #       Parent Loop BB13_10 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$a6, $t3, 3
	alsl.d	$a7, $t3, $s3, 3
	xvldx	$xr2, $s3, $a6
	xvld	$xr3, $a7, 32
	alsl.d	$a7, $t3, $s2, 3
	xvldx	$xr4, $s2, $a6
	xvld	$xr5, $a7, 32
	xvfmul.d	$xr2, $xr0, $xr2
	xvfmul.d	$xr3, $xr0, $xr3
	xvfmadd.d	$xr2, $xr1, $xr4, $xr2
	xvfmadd.d	$xr3, $xr1, $xr5, $xr3
	alsl.d	$a7, $t3, $t8, 3
	xvstx	$xr2, $t8, $a6
	xvst	$xr3, $a7, 32
	addi.d	$s6, $s6, -8
	addi.w	$t3, $t3, 8
	bnez	$s6, .LBB13_16
# %bb.17:                               # %middle.block
                                        #   in Loop: Header=BB13_10 Depth=3
	move	$s6, $a5
	beq	$a5, $t7, .LBB13_9
	b	.LBB13_13
.LBB13_18:                              # %for.end128
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a2, 3
	ld.d	$a2, $a1, 960
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a2
	st.d	$a0, $a1, 960
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
.Lfunc_end13:
	.size	add_grids, .Lfunc_end13-add_grids
                                        # -- End function
	.globl	mul_grids                       # -- Begin function mul_grids
	.p2align	5
	.type	mul_grids,@function
mul_grids:                              # @mul_grids
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
	move	$s2, $a4
	move	$s3, $a3
                                        # kill: def $f0_64 killed $f0_64 def $xr0
	xvst	$xr0, $sp, 16                   # 32-byte Folded Spill
	move	$s4, $a2
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	xvld	$xr5, $sp, 16                   # 32-byte Folded Reload
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	ld.w	$a1, $fp, 1600
	ori	$a2, $zero, 1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	blt	$a1, $a2, .LBB14_18
# %bb.1:                                # %for.body.lr.ph
	move	$a0, $zero
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a3, $a3, 1776
	xvreplve0.d	$xr0, $xr5
	ori	$a4, $zero, 216
	ld.d	$a5, $sp, 72                    # 8-byte Folded Reload
	mul.d	$a4, $a5, $a4
	slli.d	$a5, $s4, 3
	st.d	$a5, $sp, 96                    # 8-byte Folded Spill
	slli.d	$a5, $s3, 3
	st.d	$a5, $sp, 88                    # 8-byte Folded Spill
	slli.d	$a5, $s2, 3
	st.d	$a5, $sp, 80                    # 8-byte Folded Spill
	ori	$t0, $zero, 8
	b	.LBB14_3
	.p2align	4, , 16
.LBB14_2:                               # %for.end125
                                        #   in Loop: Header=BB14_3 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $a1, .LBB14_18
.LBB14_3:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_7 Depth 2
                                        #       Child Loop BB14_10 Depth 3
                                        #         Child Loop BB14_16 Depth 4
                                        #         Child Loop BB14_14 Depth 4
	slli.d	$a5, $a0, 8
	add.d	$a5, $a3, $a5
	ld.d	$a5, $a5, 248
	add.d	$t3, $a5, $a4
	ld.w	$t1, $t3, 28
	blt	$t1, $a2, .LBB14_2
# %bb.4:                                # %for.cond100.preheader.lr.ph
                                        #   in Loop: Header=BB14_3 Depth=1
	ld.w	$t2, $t3, 24
	blt	$t2, $a2, .LBB14_2
# %bb.5:                                # %for.cond100.preheader.us.preheader
                                        #   in Loop: Header=BB14_3 Depth=1
	move	$s0, $zero
	move	$t4, $zero
	ld.w	$t5, $t3, 48
	ld.d	$a5, $t3, 176
	ld.w	$t6, $t3, 52
	ld.w	$t8, $t3, 44
	ld.wu	$t7, $t3, 20
	ld.d	$a6, $sp, 96                    # 8-byte Folded Reload
	ldx.d	$t3, $a5, $a6
	add.d	$fp, $t5, $t6
	addi.d	$fp, $fp, 1
	ld.d	$a6, $sp, 88                    # 8-byte Folded Reload
	ldx.d	$s1, $a5, $a6
	ld.d	$a6, $sp, 80                    # 8-byte Folded Reload
	ldx.d	$a5, $a5, $a6
	mul.w	$fp, $t8, $fp
	alsl.d	$t8, $fp, $t3, 3
	alsl.d	$s2, $fp, $s1, 3
	alsl.d	$s3, $fp, $a5, 3
	addi.d	$s4, $t7, -1
	sub.d	$fp, $t3, $s1
	sub.d	$a5, $t3, $a5
	sltui	$t3, $fp, 64
	sltui	$a5, $a5, 64
	or	$s5, $t3, $a5
	bstrpick.d	$a5, $t7, 30, 3
	slli.d	$a5, $a5, 3
	addi.w	$s7, $t7, 0
	b	.LBB14_7
	.p2align	4, , 16
.LBB14_6:                               # %for.cond100.for.inc123_crit_edge.us
                                        #   in Loop: Header=BB14_7 Depth=2
	addi.w	$t4, $t4, 1
	add.w	$s0, $s0, $t6
	beq	$t4, $t1, .LBB14_2
.LBB14_7:                               # %for.cond100.preheader.us
                                        #   Parent Loop BB14_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB14_10 Depth 3
                                        #         Child Loop BB14_16 Depth 4
                                        #         Child Loop BB14_14 Depth 4
	blt	$s7, $a2, .LBB14_6
# %bb.8:                                # %for.cond104.preheader.us.us.preheader
                                        #   in Loop: Header=BB14_7 Depth=2
	move	$s8, $zero
	mul.d	$ra, $t6, $t4
	add.d	$s1, $ra, $s4
	move	$fp, $s0
	b	.LBB14_10
	.p2align	4, , 16
.LBB14_9:                               # %for.cond104.for.inc120_crit_edge.us.us
                                        #   in Loop: Header=BB14_10 Depth=3
	addi.w	$s8, $s8, 1
	add.w	$fp, $fp, $t5
	beq	$s8, $t2, .LBB14_6
.LBB14_10:                              # %for.cond104.preheader.us.us
                                        #   Parent Loop BB14_3 Depth=1
                                        #     Parent Loop BB14_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB14_16 Depth 4
                                        #         Child Loop BB14_14 Depth 4
	bltu	$t7, $t0, .LBB14_12
# %bb.11:                               # %vector.scevcheck
                                        #   in Loop: Header=BB14_10 Depth=3
	srli.d	$t3, $s4, 32
	sltu	$t3, $zero, $t3
	mul.d	$s6, $t5, $s8
	add.w	$a6, $ra, $s6
	add.w	$s6, $s6, $s1
	slt	$a6, $s6, $a6
	or	$a6, $a6, $t3
	or	$a6, $a6, $s5
	andi	$a6, $a6, 1
	beqz	$a6, .LBB14_15
.LBB14_12:                              #   in Loop: Header=BB14_10 Depth=3
	move	$s6, $zero
.LBB14_13:                              # %for.body107.us.us.preheader
                                        #   in Loop: Header=BB14_10 Depth=3
	add.w	$t3, $fp, $s6
	sub.d	$s6, $t7, $s6
	.p2align	4, , 16
.LBB14_14:                              # %for.body107.us.us
                                        #   Parent Loop BB14_3 Depth=1
                                        #     Parent Loop BB14_7 Depth=2
                                        #       Parent Loop BB14_10 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$a6, $t3, 3
	fldx.d	$fa1, $s2, $a6
	fldx.d	$fa2, $s3, $a6
	fmul.d	$fa1, $fa5, $fa1
	fmul.d	$fa1, $fa1, $fa2
	fstx.d	$fa1, $t8, $a6
	addi.d	$s6, $s6, -1
	addi.w	$t3, $t3, 1
	bnez	$s6, .LBB14_14
	b	.LBB14_9
	.p2align	4, , 16
.LBB14_15:                              # %vector.body.preheader
                                        #   in Loop: Header=BB14_10 Depth=3
	move	$t3, $fp
	move	$s6, $a5
	.p2align	4, , 16
.LBB14_16:                              # %vector.body
                                        #   Parent Loop BB14_3 Depth=1
                                        #     Parent Loop BB14_7 Depth=2
                                        #       Parent Loop BB14_10 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	alsl.d	$a6, $t3, $s2, 3
	slli.d	$a7, $t3, 3
	xvldx	$xr1, $s2, $a7
	xvld	$xr2, $a6, 32
	alsl.d	$a6, $t3, $s3, 3
	xvldx	$xr3, $s3, $a7
	xvld	$xr4, $a6, 32
	xvfmul.d	$xr1, $xr0, $xr1
	xvfmul.d	$xr2, $xr0, $xr2
	xvfmul.d	$xr1, $xr1, $xr3
	xvfmul.d	$xr2, $xr2, $xr4
	alsl.d	$a6, $t3, $t8, 3
	xvstx	$xr1, $t8, $a7
	xvst	$xr2, $a6, 32
	addi.d	$s6, $s6, -8
	addi.w	$t3, $t3, 8
	bnez	$s6, .LBB14_16
# %bb.17:                               # %middle.block
                                        #   in Loop: Header=BB14_10 Depth=3
	move	$s6, $a5
	beq	$a5, $t7, .LBB14_9
	b	.LBB14_13
.LBB14_18:                              # %for.end128
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a2, 3
	ld.d	$a2, $a1, 960
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a2
	st.d	$a0, $a1, 960
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
.Lfunc_end14:
	.size	mul_grids, .Lfunc_end14-mul_grids
                                        # -- End function
	.globl	scale_grid                      # -- Begin function scale_grid
	.p2align	5
	.type	scale_grid,@function
scale_grid:                             # @scale_grid
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
	move	$s2, $a3
                                        # kill: def $f0_64 killed $f0_64 def $xr0
	xvst	$xr0, $sp, 16                   # 32-byte Folded Spill
	move	$s3, $a2
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	xvld	$xr3, $sp, 16                   # 32-byte Folded Reload
	st.d	$fp, $sp, 56                    # 8-byte Folded Spill
	ld.w	$a1, $fp, 1600
	ori	$a2, $zero, 1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	blt	$a1, $a2, .LBB15_20
# %bb.1:                                # %for.body.lr.ph
	move	$a0, $zero
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a3, $a3, 1776
	xvreplve0.d	$xr0, $xr3
	ori	$a4, $zero, 216
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
	mul.d	$a4, $a5, $a4
	slli.d	$a5, $s3, 3
	st.d	$a5, $sp, 80                    # 8-byte Folded Spill
	slli.d	$a5, $s2, 3
	st.d	$a5, $sp, 72                    # 8-byte Folded Spill
	ori	$a7, $zero, 8
	ori	$t0, $zero, 64
	b	.LBB15_3
	.p2align	4, , 16
.LBB15_2:                               # %for.end108
                                        #   in Loop: Header=BB15_3 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $a1, .LBB15_20
.LBB15_3:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_7 Depth 2
                                        #       Child Loop BB15_10 Depth 3
                                        #         Child Loop BB15_18 Depth 4
                                        #         Child Loop BB15_13 Depth 4
	slli.d	$t1, $a0, 8
	add.d	$t1, $a3, $t1
	ld.d	$t1, $t1, 248
	add.d	$t3, $t1, $a4
	ld.w	$t1, $t3, 28
	blt	$t1, $a2, .LBB15_2
# %bb.4:                                # %for.cond86.preheader.lr.ph
                                        #   in Loop: Header=BB15_3 Depth=1
	ld.w	$t2, $t3, 24
	blt	$t2, $a2, .LBB15_2
# %bb.5:                                # %for.cond86.preheader.us.preheader
                                        #   in Loop: Header=BB15_3 Depth=1
	move	$s1, $zero
	move	$t4, $zero
	ld.w	$t5, $t3, 48
	ld.d	$t8, $t3, 176
	ld.w	$t6, $t3, 52
	ld.w	$fp, $t3, 44
	ld.wu	$t7, $t3, 20
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	ldx.d	$t3, $t8, $a5
	add.d	$s0, $t5, $t6
	ld.d	$a5, $sp, 72                    # 8-byte Folded Reload
	ldx.d	$s4, $t8, $a5
	addi.d	$t8, $s0, 1
	mul.w	$fp, $fp, $t8
	alsl.d	$t8, $fp, $t3, 3
	alsl.d	$s2, $fp, $s4, 3
	addi.d	$s3, $t7, -1
	sub.d	$s4, $t3, $s4
	bstrpick.d	$t3, $t7, 30, 3
	slli.d	$s0, $t3, 3
	addi.w	$s6, $t7, 0
	b	.LBB15_7
	.p2align	4, , 16
.LBB15_6:                               # %for.cond86.for.inc106_crit_edge.us
                                        #   in Loop: Header=BB15_7 Depth=2
	addi.w	$t4, $t4, 1
	add.w	$s1, $s1, $t6
	beq	$t4, $t1, .LBB15_2
.LBB15_7:                               # %for.cond86.preheader.us
                                        #   Parent Loop BB15_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_10 Depth 3
                                        #         Child Loop BB15_18 Depth 4
                                        #         Child Loop BB15_13 Depth 4
	blt	$s6, $a2, .LBB15_6
# %bb.8:                                # %for.cond90.preheader.us.us.preheader
                                        #   in Loop: Header=BB15_7 Depth=2
	move	$s7, $zero
	mul.d	$s8, $t6, $t4
	add.d	$ra, $s8, $s3
	move	$t3, $s1
	b	.LBB15_10
	.p2align	4, , 16
.LBB15_9:                               # %for.cond90.for.inc103_crit_edge.us.us
                                        #   in Loop: Header=BB15_10 Depth=3
	addi.w	$s7, $s7, 1
	add.w	$t3, $t3, $t5
	beq	$s7, $t2, .LBB15_6
.LBB15_10:                              # %for.cond90.preheader.us.us
                                        #   Parent Loop BB15_3 Depth=1
                                        #     Parent Loop BB15_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB15_18 Depth 4
                                        #         Child Loop BB15_13 Depth 4
	bgeu	$t7, $a7, .LBB15_14
# %bb.11:                               #   in Loop: Header=BB15_10 Depth=3
	move	$s5, $zero
.LBB15_12:                              # %for.body93.us.us.preheader
                                        #   in Loop: Header=BB15_10 Depth=3
	add.w	$fp, $t3, $s5
	sub.d	$s5, $t7, $s5
	.p2align	4, , 16
.LBB15_13:                              # %for.body93.us.us
                                        #   Parent Loop BB15_3 Depth=1
                                        #     Parent Loop BB15_7 Depth=2
                                        #       Parent Loop BB15_10 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$a5, $fp, 3
	fldx.d	$fa1, $s2, $a5
	fmul.d	$fa1, $fa3, $fa1
	fstx.d	$fa1, $t8, $a5
	addi.d	$s5, $s5, -1
	addi.w	$fp, $fp, 1
	bnez	$s5, .LBB15_13
	b	.LBB15_9
	.p2align	4, , 16
.LBB15_14:                              # %vector.scevcheck
                                        #   in Loop: Header=BB15_10 Depth=3
	mul.d	$fp, $t5, $s7
	add.w	$a5, $s8, $fp
	add.w	$fp, $fp, $ra
	move	$s5, $zero
	blt	$fp, $a5, .LBB15_12
# %bb.15:                               # %vector.scevcheck
                                        #   in Loop: Header=BB15_10 Depth=3
	srli.d	$a5, $s3, 32
	bnez	$a5, .LBB15_12
# %bb.16:                               # %vector.scevcheck
                                        #   in Loop: Header=BB15_10 Depth=3
	bltu	$s4, $t0, .LBB15_12
# %bb.17:                               # %vector.body.preheader
                                        #   in Loop: Header=BB15_10 Depth=3
	move	$s5, $t3
	move	$fp, $s0
	.p2align	4, , 16
.LBB15_18:                              # %vector.body
                                        #   Parent Loop BB15_3 Depth=1
                                        #     Parent Loop BB15_7 Depth=2
                                        #       Parent Loop BB15_10 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	alsl.d	$a5, $s5, $s2, 3
	slli.d	$a6, $s5, 3
	xvldx	$xr1, $s2, $a6
	xvld	$xr2, $a5, 32
	xvfmul.d	$xr1, $xr0, $xr1
	xvfmul.d	$xr2, $xr0, $xr2
	alsl.d	$a5, $s5, $t8, 3
	xvstx	$xr1, $t8, $a6
	xvst	$xr2, $a5, 32
	addi.d	$fp, $fp, -8
	addi.w	$s5, $s5, 8
	bnez	$fp, .LBB15_18
# %bb.19:                               # %middle.block
                                        #   in Loop: Header=BB15_10 Depth=3
	move	$s5, $s0
	beq	$s0, $t7, .LBB15_9
	b	.LBB15_12
.LBB15_20:                              # %for.end111
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a2, 3
	ld.d	$a2, $a1, 960
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a2
	st.d	$a0, $a1, 960
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
.Lfunc_end15:
	.size	scale_grid, .Lfunc_end15-scale_grid
                                        # -- End function
	.globl	dot                             # -- Begin function dot
	.p2align	5
	.type	dot,@function
dot:                                    # @dot
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
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	move	$s2, $a3
	move	$s3, $a2
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 1600
	ori	$a2, $zero, 1
	move	$s1, $a0
	blt	$a1, $a2, .LBB16_12
# %bb.1:                                # %for.body.lr.ph
	move	$a0, $zero
	ld.d	$a3, $s0, 1776
	movgr2fr.d	$fa0, $zero
	ori	$a4, $zero, 216
	mul.d	$a4, $fp, $a4
	slli.d	$a5, $s3, 3
	slli.d	$a6, $s2, 3
	fmov.d	$fs0, $fa0
	b	.LBB16_3
	.p2align	4, , 16
.LBB16_2:                               # %for.end108
                                        #   in Loop: Header=BB16_3 Depth=1
	addi.d	$a0, $a0, 1
	fadd.d	$fs0, $fs0, $fa1
	beq	$a0, $a1, .LBB16_13
.LBB16_3:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_7 Depth 2
                                        #       Child Loop BB16_9 Depth 3
                                        #         Child Loop BB16_10 Depth 4
	slli.d	$a7, $a0, 8
	add.d	$a7, $a3, $a7
	ld.d	$a7, $a7, 248
	add.d	$t5, $a7, $a4
	ld.w	$a7, $t5, 28
	fmov.d	$fa1, $fa0
	blt	$a7, $a2, .LBB16_2
# %bb.4:                                # %for.cond86.preheader.lr.ph
                                        #   in Loop: Header=BB16_3 Depth=1
	ld.w	$t0, $t5, 24
	fmov.d	$fa1, $fa0
	blt	$t0, $a2, .LBB16_2
# %bb.5:                                # %for.cond86.preheader.us.preheader
                                        #   in Loop: Header=BB16_3 Depth=1
	move	$t1, $zero
	move	$t2, $zero
	ld.w	$t3, $t5, 48
	ld.d	$t6, $t5, 176
	ld.w	$t4, $t5, 52
	ld.w	$t7, $t5, 44
	ld.wu	$t5, $t5, 20
	ldx.d	$t8, $t6, $a5
	add.d	$s2, $t3, $t4
	ldx.d	$s3, $t6, $a6
	addi.d	$t6, $s2, 1
	mul.w	$t7, $t7, $t6
	alsl.d	$t6, $t7, $t8, 3
	alsl.d	$t7, $t7, $s3, 3
	addi.w	$t8, $t5, 0
	fmov.d	$fa1, $fa0
	b	.LBB16_7
	.p2align	4, , 16
.LBB16_6:                               # %for.cond86.for.inc106_crit_edge.us
                                        #   in Loop: Header=BB16_7 Depth=2
	addi.w	$t2, $t2, 1
	add.w	$t1, $t1, $t4
	beq	$t2, $a7, .LBB16_2
.LBB16_7:                               # %for.cond86.preheader.us
                                        #   Parent Loop BB16_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_9 Depth 3
                                        #         Child Loop BB16_10 Depth 4
	blt	$t8, $a2, .LBB16_6
# %bb.8:                                # %for.cond90.preheader.us.us.preheader
                                        #   in Loop: Header=BB16_7 Depth=2
	move	$s2, $zero
	move	$s3, $t1
	.p2align	4, , 16
.LBB16_9:                               # %for.cond90.preheader.us.us
                                        #   Parent Loop BB16_3 Depth=1
                                        #     Parent Loop BB16_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB16_10 Depth 4
	move	$s4, $t5
	move	$s5, $s3
	.p2align	4, , 16
.LBB16_10:                              # %for.body93.us.us
                                        #   Parent Loop BB16_3 Depth=1
                                        #     Parent Loop BB16_7 Depth=2
                                        #       Parent Loop BB16_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$s6, $s5, 3
	fldx.d	$fa2, $t6, $s6
	fldx.d	$fa3, $t7, $s6
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	addi.d	$s4, $s4, -1
	addi.w	$s5, $s5, 1
	bnez	$s4, .LBB16_10
# %bb.11:                               # %for.cond90.for.inc103_crit_edge.us.us
                                        #   in Loop: Header=BB16_9 Depth=3
	addi.w	$s2, $s2, 1
	add.w	$s3, $s3, $t3
	bne	$s2, $t0, .LBB16_9
	b	.LBB16_6
.LBB16_12:
	movgr2fr.d	$fs0, $zero
.LBB16_13:                              # %for.end112
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	alsl.d	$a1, $fp, $s0, 3
	ld.d	$a2, $a1, 960
	sub.d	$a0, $a0, $s1
	add.d	$a0, $a0, $a2
	st.d	$a0, $a1, 960
	fmov.d	$fa0, $fs0
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
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
.Lfunc_end16:
	.size	dot, .Lfunc_end16-dot
                                        # -- End function
	.globl	norm                            # -- Begin function norm
	.p2align	5
	.type	norm,@function
norm:                                   # @norm
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	move	$s2, $a2
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 1600
	ori	$a2, $zero, 1
	move	$s1, $a0
	blt	$a1, $a2, .LBB17_12
# %bb.1:                                # %for.body.lr.ph
	move	$a0, $zero
	ld.d	$a3, $s0, 1776
	movgr2fr.d	$fa0, $zero
	ori	$a4, $zero, 216
	mul.d	$a4, $fp, $a4
	slli.d	$a5, $s2, 3
	fmov.d	$fs0, $fa0
	b	.LBB17_3
	.p2align	4, , 16
.LBB17_2:                               # %for.end93
                                        #   in Loop: Header=BB17_3 Depth=1
	fcmp.clt.d	$fcc0, $fs0, $fa1
	addi.d	$a0, $a0, 1
	fsel	$fs0, $fs0, $fa1, $fcc0
	beq	$a0, $a1, .LBB17_13
.LBB17_3:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_7 Depth 2
                                        #       Child Loop BB17_9 Depth 3
                                        #         Child Loop BB17_10 Depth 4
	slli.d	$a6, $a0, 8
	add.d	$a6, $a3, $a6
	ld.d	$a6, $a6, 248
	add.d	$t5, $a6, $a4
	ld.w	$a6, $t5, 28
	fmov.d	$fa1, $fa0
	blt	$a6, $a2, .LBB17_2
# %bb.4:                                # %for.cond72.preheader.lr.ph
                                        #   in Loop: Header=BB17_3 Depth=1
	ld.w	$a7, $t5, 24
	fmov.d	$fa1, $fa0
	blt	$a7, $a2, .LBB17_2
# %bb.5:                                # %for.cond72.preheader.us.preheader
                                        #   in Loop: Header=BB17_3 Depth=1
	move	$t0, $zero
	move	$t1, $zero
	ld.w	$t2, $t5, 48
	ld.wu	$t3, $t5, 20
	ld.d	$t6, $t5, 176
	ld.w	$t4, $t5, 52
	ld.w	$t7, $t5, 44
	addi.w	$t5, $t3, 0
	ldx.d	$t6, $t6, $a5
	add.d	$t8, $t2, $t4
	addi.d	$t8, $t8, 1
	mul.w	$t7, $t7, $t8
	alsl.d	$t6, $t7, $t6, 3
	fmov.d	$fa1, $fa0
	b	.LBB17_7
	.p2align	4, , 16
.LBB17_6:                               # %for.cond72.for.inc91_crit_edge.us
                                        #   in Loop: Header=BB17_7 Depth=2
	addi.w	$t1, $t1, 1
	add.w	$t0, $t0, $t4
	beq	$t1, $a6, .LBB17_2
.LBB17_7:                               # %for.cond72.preheader.us
                                        #   Parent Loop BB17_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB17_9 Depth 3
                                        #         Child Loop BB17_10 Depth 4
	blt	$t5, $a2, .LBB17_6
# %bb.8:                                # %for.cond76.preheader.us.us.preheader
                                        #   in Loop: Header=BB17_7 Depth=2
	move	$t7, $zero
	move	$t8, $t0
	.p2align	4, , 16
.LBB17_9:                               # %for.cond76.preheader.us.us
                                        #   Parent Loop BB17_3 Depth=1
                                        #     Parent Loop BB17_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB17_10 Depth 4
	move	$s2, $t3
	move	$s3, $t8
	.p2align	4, , 16
.LBB17_10:                              # %for.body79.us.us
                                        #   Parent Loop BB17_3 Depth=1
                                        #     Parent Loop BB17_7 Depth=2
                                        #       Parent Loop BB17_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$s4, $s3, 3
	fldx.d	$fa2, $t6, $s4
	fabs.d	$fa2, $fa2
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	addi.d	$s2, $s2, -1
	addi.w	$s3, $s3, 1
	bnez	$s2, .LBB17_10
# %bb.11:                               # %for.cond76.for.inc88_crit_edge.us.us
                                        #   in Loop: Header=BB17_9 Depth=3
	addi.w	$t7, $t7, 1
	add.w	$t8, $t8, $t2
	bne	$t7, $a7, .LBB17_9
	b	.LBB17_6
.LBB17_12:
	movgr2fr.d	$fs0, $zero
.LBB17_13:                              # %for.end100
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	alsl.d	$a1, $fp, $s0, 3
	ld.d	$a2, $a1, 960
	sub.d	$a0, $a0, $s1
	add.d	$a0, $a0, $a2
	st.d	$a0, $a1, 960
	fmov.d	$fa0, $fs0
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end17:
	.size	norm, .Lfunc_end17-norm
                                        # -- End function
	.globl	mean                            # -- Begin function mean
	.p2align	5
	.type	mean,@function
mean:                                   # @mean
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	move	$s2, $a2
	move	$s0, $a1
	move	$fp, $a0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 1600
	ori	$a2, $zero, 1
	move	$s1, $a0
	blt	$a1, $a2, .LBB18_12
# %bb.1:                                # %for.body.lr.ph
	move	$a0, $zero
	ld.d	$a3, $fp, 1776
	movgr2fr.d	$fa0, $zero
	ori	$a4, $zero, 216
	mul.d	$a4, $s0, $a4
	slli.d	$a5, $s2, 3
	fmov.d	$fs0, $fa0
	b	.LBB18_3
	.p2align	4, , 16
.LBB18_2:                               # %for.end92
                                        #   in Loop: Header=BB18_3 Depth=1
	addi.d	$a0, $a0, 1
	fadd.d	$fs0, $fs0, $fa1
	beq	$a0, $a1, .LBB18_13
.LBB18_3:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_7 Depth 2
                                        #       Child Loop BB18_9 Depth 3
                                        #         Child Loop BB18_10 Depth 4
	slli.d	$a6, $a0, 8
	add.d	$a6, $a3, $a6
	ld.d	$a6, $a6, 248
	add.d	$t5, $a6, $a4
	ld.w	$a6, $t5, 28
	fmov.d	$fa1, $fa0
	blt	$a6, $a2, .LBB18_2
# %bb.4:                                # %for.cond72.preheader.lr.ph
                                        #   in Loop: Header=BB18_3 Depth=1
	ld.w	$a7, $t5, 24
	fmov.d	$fa1, $fa0
	blt	$a7, $a2, .LBB18_2
# %bb.5:                                # %for.cond72.preheader.us.preheader
                                        #   in Loop: Header=BB18_3 Depth=1
	move	$t0, $zero
	move	$t1, $zero
	ld.w	$t2, $t5, 48
	ld.wu	$t3, $t5, 20
	ld.d	$t6, $t5, 176
	ld.w	$t4, $t5, 52
	ld.w	$t7, $t5, 44
	addi.w	$t5, $t3, 0
	ldx.d	$t6, $t6, $a5
	add.d	$t8, $t2, $t4
	addi.d	$t8, $t8, 1
	mul.w	$t7, $t7, $t8
	alsl.d	$t6, $t7, $t6, 3
	fmov.d	$fa1, $fa0
	b	.LBB18_7
	.p2align	4, , 16
.LBB18_6:                               # %for.cond72.for.inc90_crit_edge.us
                                        #   in Loop: Header=BB18_7 Depth=2
	addi.w	$t1, $t1, 1
	add.w	$t0, $t0, $t4
	beq	$t1, $a6, .LBB18_2
.LBB18_7:                               # %for.cond72.preheader.us
                                        #   Parent Loop BB18_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB18_9 Depth 3
                                        #         Child Loop BB18_10 Depth 4
	blt	$t5, $a2, .LBB18_6
# %bb.8:                                # %for.cond76.preheader.us.us.preheader
                                        #   in Loop: Header=BB18_7 Depth=2
	move	$t7, $zero
	move	$t8, $t0
	.p2align	4, , 16
.LBB18_9:                               # %for.cond76.preheader.us.us
                                        #   Parent Loop BB18_3 Depth=1
                                        #     Parent Loop BB18_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB18_10 Depth 4
	move	$s2, $t3
	move	$s3, $t8
	.p2align	4, , 16
.LBB18_10:                              # %for.body79.us.us
                                        #   Parent Loop BB18_3 Depth=1
                                        #     Parent Loop BB18_7 Depth=2
                                        #       Parent Loop BB18_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$s4, $s3, 3
	fldx.d	$fa2, $t6, $s4
	fadd.d	$fa1, $fa1, $fa2
	addi.d	$s2, $s2, -1
	addi.w	$s3, $s3, 1
	bnez	$s2, .LBB18_10
# %bb.11:                               # %for.cond76.for.inc87_crit_edge.us.us
                                        #   in Loop: Header=BB18_9 Depth=3
	addi.w	$t7, $t7, 1
	add.w	$t8, $t8, $t2
	bne	$t7, $a7, .LBB18_9
	b	.LBB18_6
.LBB18_12:
	movgr2fr.d	$fs0, $zero
.LBB18_13:                              # %for.end96
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	alsl.d	$a1, $s0, $fp, 3
	ld.d	$a2, $a1, 960
	ld.w	$a3, $fp, 1536
	sub.d	$a0, $a0, $s1
	add.d	$a0, $a0, $a2
	ld.w	$a2, $fp, 1540
	movgr2fr.w	$fa0, $a3
	ffint.d.w	$fa0, $fa0
	ld.w	$a3, $fp, 1544
	movgr2fr.w	$fa1, $a2
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	fdiv.d	$fa0, $fs0, $fa0
	st.d	$a0, $a1, 960
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end18:
	.size	mean, .Lfunc_end18-mean
                                        # -- End function
	.globl	shift_grid                      # -- Begin function shift_grid
	.p2align	5
	.type	shift_grid,@function
shift_grid:                             # @shift_grid
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
                                        # kill: def $f0_64 killed $f0_64 def $xr0
	xvst	$xr0, $sp, 16                   # 32-byte Folded Spill
	move	$s2, $a3
	move	$s3, $a2
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	xvld	$xr3, $sp, 16                   # 32-byte Folded Reload
	st.d	$fp, $sp, 56                    # 8-byte Folded Spill
	ld.w	$a1, $fp, 1600
	ori	$a2, $zero, 1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	blt	$a1, $a2, .LBB19_20
# %bb.1:                                # %for.body.lr.ph
	move	$a0, $zero
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a3, $a3, 1776
	xvreplve0.d	$xr0, $xr3
	ori	$a4, $zero, 216
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
	mul.d	$a4, $a5, $a4
	slli.d	$a5, $s3, 3
	st.d	$a5, $sp, 80                    # 8-byte Folded Spill
	slli.d	$a5, $s2, 3
	st.d	$a5, $sp, 72                    # 8-byte Folded Spill
	ori	$a7, $zero, 8
	ori	$t0, $zero, 64
	b	.LBB19_3
	.p2align	4, , 16
.LBB19_2:                               # %for.end108
                                        #   in Loop: Header=BB19_3 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $a1, .LBB19_20
.LBB19_3:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_7 Depth 2
                                        #       Child Loop BB19_10 Depth 3
                                        #         Child Loop BB19_18 Depth 4
                                        #         Child Loop BB19_13 Depth 4
	slli.d	$t1, $a0, 8
	add.d	$t1, $a3, $t1
	ld.d	$t1, $t1, 248
	add.d	$t3, $t1, $a4
	ld.w	$t1, $t3, 28
	blt	$t1, $a2, .LBB19_2
# %bb.4:                                # %for.cond86.preheader.lr.ph
                                        #   in Loop: Header=BB19_3 Depth=1
	ld.w	$t2, $t3, 24
	blt	$t2, $a2, .LBB19_2
# %bb.5:                                # %for.cond86.preheader.us.preheader
                                        #   in Loop: Header=BB19_3 Depth=1
	move	$s1, $zero
	move	$t4, $zero
	ld.w	$t5, $t3, 48
	ld.d	$t8, $t3, 176
	ld.w	$t6, $t3, 52
	ld.w	$fp, $t3, 44
	ld.wu	$t7, $t3, 20
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	ldx.d	$t3, $t8, $a5
	add.d	$s0, $t5, $t6
	ld.d	$a5, $sp, 72                    # 8-byte Folded Reload
	ldx.d	$s4, $t8, $a5
	addi.d	$t8, $s0, 1
	mul.w	$fp, $fp, $t8
	alsl.d	$t8, $fp, $t3, 3
	alsl.d	$s2, $fp, $s4, 3
	addi.d	$s3, $t7, -1
	sub.d	$s4, $t3, $s4
	bstrpick.d	$t3, $t7, 30, 3
	slli.d	$s0, $t3, 3
	addi.w	$s6, $t7, 0
	b	.LBB19_7
	.p2align	4, , 16
.LBB19_6:                               # %for.cond86.for.inc106_crit_edge.us
                                        #   in Loop: Header=BB19_7 Depth=2
	addi.w	$t4, $t4, 1
	add.w	$s1, $s1, $t6
	beq	$t4, $t1, .LBB19_2
.LBB19_7:                               # %for.cond86.preheader.us
                                        #   Parent Loop BB19_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB19_10 Depth 3
                                        #         Child Loop BB19_18 Depth 4
                                        #         Child Loop BB19_13 Depth 4
	blt	$s6, $a2, .LBB19_6
# %bb.8:                                # %for.cond90.preheader.us.us.preheader
                                        #   in Loop: Header=BB19_7 Depth=2
	move	$s7, $zero
	mul.d	$s8, $t6, $t4
	add.d	$ra, $s8, $s3
	move	$t3, $s1
	b	.LBB19_10
	.p2align	4, , 16
.LBB19_9:                               # %for.cond90.for.inc103_crit_edge.us.us
                                        #   in Loop: Header=BB19_10 Depth=3
	addi.w	$s7, $s7, 1
	add.w	$t3, $t3, $t5
	beq	$s7, $t2, .LBB19_6
.LBB19_10:                              # %for.cond90.preheader.us.us
                                        #   Parent Loop BB19_3 Depth=1
                                        #     Parent Loop BB19_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB19_18 Depth 4
                                        #         Child Loop BB19_13 Depth 4
	bgeu	$t7, $a7, .LBB19_14
# %bb.11:                               #   in Loop: Header=BB19_10 Depth=3
	move	$s5, $zero
.LBB19_12:                              # %for.body93.us.us.preheader
                                        #   in Loop: Header=BB19_10 Depth=3
	add.w	$fp, $t3, $s5
	sub.d	$s5, $t7, $s5
	.p2align	4, , 16
.LBB19_13:                              # %for.body93.us.us
                                        #   Parent Loop BB19_3 Depth=1
                                        #     Parent Loop BB19_7 Depth=2
                                        #       Parent Loop BB19_10 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$a5, $fp, 3
	fldx.d	$fa1, $s2, $a5
	fadd.d	$fa1, $fa3, $fa1
	fstx.d	$fa1, $t8, $a5
	addi.d	$s5, $s5, -1
	addi.w	$fp, $fp, 1
	bnez	$s5, .LBB19_13
	b	.LBB19_9
	.p2align	4, , 16
.LBB19_14:                              # %vector.scevcheck
                                        #   in Loop: Header=BB19_10 Depth=3
	mul.d	$fp, $t5, $s7
	add.w	$a5, $s8, $fp
	add.w	$fp, $fp, $ra
	move	$s5, $zero
	blt	$fp, $a5, .LBB19_12
# %bb.15:                               # %vector.scevcheck
                                        #   in Loop: Header=BB19_10 Depth=3
	srli.d	$a5, $s3, 32
	bnez	$a5, .LBB19_12
# %bb.16:                               # %vector.scevcheck
                                        #   in Loop: Header=BB19_10 Depth=3
	bltu	$s4, $t0, .LBB19_12
# %bb.17:                               # %vector.body.preheader
                                        #   in Loop: Header=BB19_10 Depth=3
	move	$s5, $t3
	move	$fp, $s0
	.p2align	4, , 16
.LBB19_18:                              # %vector.body
                                        #   Parent Loop BB19_3 Depth=1
                                        #     Parent Loop BB19_7 Depth=2
                                        #       Parent Loop BB19_10 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	alsl.d	$a5, $s5, $s2, 3
	slli.d	$a6, $s5, 3
	xvldx	$xr1, $s2, $a6
	xvld	$xr2, $a5, 32
	xvfadd.d	$xr1, $xr0, $xr1
	xvfadd.d	$xr2, $xr0, $xr2
	alsl.d	$a5, $s5, $t8, 3
	xvstx	$xr1, $t8, $a6
	xvst	$xr2, $a5, 32
	addi.d	$fp, $fp, -8
	addi.w	$s5, $s5, 8
	bnez	$fp, .LBB19_18
# %bb.19:                               # %middle.block
                                        #   in Loop: Header=BB19_10 Depth=3
	move	$s5, $s0
	beq	$s0, $t7, .LBB19_9
	b	.LBB19_12
.LBB19_20:                              # %for.end111
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a2, 3
	ld.d	$a2, $a1, 960
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a2
	st.d	$a0, $a1, 960
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
.Lfunc_end19:
	.size	shift_grid, .Lfunc_end19-shift_grid
                                        # -- End function
	.globl	project_cell_to_face            # -- Begin function project_cell_to_face
	.p2align	5
	.type	project_cell_to_face,@function
project_cell_to_face:                   # @project_cell_to_face
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
	move	$s1, $a4
	move	$s3, $a3
	move	$s4, $a2
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a1, $fp, 1600
	ori	$a2, $zero, 1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	blt	$a1, $a2, .LBB20_23
# %bb.1:                                # %for.body.lr.ph
	move	$a0, $zero
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 1776
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	ori	$a2, $zero, 216
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	mul.d	$a4, $a1, $a2
	slli.d	$a1, $s4, 3
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	slli.d	$a1, $s3, 3
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ori	$t0, $zero, 7
	vldi	$vr0, -928
	lu52i.d	$a2, $zero, 1022
	xvreplgr2vr.d	$xr1, $a2
                                        # implicit-def: $r13
	b	.LBB20_3
	.p2align	4, , 16
.LBB20_2:                               # %for.end113
                                        #   in Loop: Header=BB20_3 Depth=1
	addi.d	$a0, $a0, 1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB20_23
.LBB20_3:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_12 Depth 2
                                        #       Child Loop BB20_14 Depth 3
                                        #         Child Loop BB20_20 Depth 4
                                        #         Child Loop BB20_18 Depth 4
	slli.d	$a2, $a0, 8
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	add.d	$a2, $a1, $a2
	ld.d	$a2, $a2, 248
	add.d	$a7, $a2, $a4
	ld.w	$t2, $a7, 48
	ld.w	$t3, $a7, 52
	ori	$a1, $zero, 2
	beq	$s1, $a1, .LBB20_22
# %bb.4:                                # %for.body
                                        #   in Loop: Header=BB20_3 Depth=1
	move	$a2, $t1
	move	$t1, $t2
	ori	$a1, $zero, 1
	beq	$s1, $a1, .LBB20_7
# %bb.5:                                # %for.body
                                        #   in Loop: Header=BB20_3 Depth=1
	move	$t1, $a2
	bnez	$s1, .LBB20_7
# %bb.6:                                # %sw.bb
                                        #   in Loop: Header=BB20_3 Depth=1
	ori	$t1, $zero, 1
.LBB20_7:                               # %sw.epilog
                                        #   in Loop: Header=BB20_3 Depth=1
	ld.w	$t4, $a7, 28
	bltz	$t4, .LBB20_2
.LBB20_8:                               # %sw.epilog
                                        #   in Loop: Header=BB20_3 Depth=1
	ld.w	$t5, $a7, 24
	bltz	$t5, .LBB20_2
# %bb.9:                                # %sw.epilog
                                        #   in Loop: Header=BB20_3 Depth=1
	ld.w	$t6, $a7, 20
	bltz	$t6, .LBB20_2
# %bb.10:                               # %for.cond88.preheader.preheader
                                        #   in Loop: Header=BB20_3 Depth=1
	ld.d	$a5, $a7, 176
	move	$a2, $zero
	move	$t7, $zero
	ld.w	$a6, $a7, 44
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ldx.d	$a7, $a5, $a1
	add.d	$t8, $t2, $t3
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ldx.d	$a5, $a5, $a1
	addi.d	$t8, $t8, 1
	mul.w	$a6, $a6, $t8
	alsl.d	$t8, $a6, $a7, 3
	alsl.d	$s3, $a6, $a5, 3
	addi.d	$a6, $t6, 1
	bstrpick.d	$s4, $a6, 31, 0
	addi.w	$fp, $t1, 0
	alsl.d	$fp, $fp, $a5, 3
	sub.d	$a5, $a5, $a7
	sub.d	$a7, $fp, $a7
	sltui	$a5, $a5, 64
	sltui	$a7, $a7, 64
	or	$s5, $a5, $a7
	bstrpick.d	$a5, $a6, 31, 3
	sub.d	$s6, $zero, $t1
	slli.d	$a6, $a5, 3
	move	$s0, $s6
	b	.LBB20_12
	.p2align	4, , 16
.LBB20_11:                              # %for.cond88.for.inc111_crit_edge.split
                                        #   in Loop: Header=BB20_12 Depth=2
	addi.w	$t7, $ra, 1
	add.w	$a2, $a2, $t3
	add.d	$s0, $s0, $t3
	beq	$ra, $t4, .LBB20_2
.LBB20_12:                              # %for.cond88.preheader
                                        #   Parent Loop BB20_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB20_14 Depth 3
                                        #         Child Loop BB20_20 Depth 4
                                        #         Child Loop BB20_18 Depth 4
	move	$a5, $zero
	move	$ra, $t7
	mul.d	$s2, $t3, $t7
	add.d	$fp, $s2, $t6
	move	$s8, $s0
	move	$t7, $a2
	b	.LBB20_14
	.p2align	4, , 16
.LBB20_13:                              # %for.cond92.for.inc108_crit_edge
                                        #   in Loop: Header=BB20_14 Depth=3
	addi.w	$a5, $a7, 1
	add.w	$t7, $t7, $t2
	add.d	$s8, $s8, $t2
	beq	$a7, $t5, .LBB20_11
.LBB20_14:                              # %for.cond92.preheader
                                        #   Parent Loop BB20_3 Depth=1
                                        #     Parent Loop BB20_12 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB20_20 Depth 4
                                        #         Child Loop BB20_18 Depth 4
	move	$a7, $a5
	bltu	$t6, $t0, .LBB20_16
# %bb.15:                               # %vector.scevcheck
                                        #   in Loop: Header=BB20_14 Depth=3
	mul.d	$a5, $t2, $a7
	add.w	$s7, $s2, $a5
	add.w	$a5, $a5, $fp
	slt	$a5, $a5, $s7
	or	$a5, $a5, $s5
	andi	$a5, $a5, 1
	beqz	$a5, .LBB20_19
.LBB20_16:                              #   in Loop: Header=BB20_14 Depth=3
	move	$s7, $zero
.LBB20_17:                              # %for.body95.preheader
                                        #   in Loop: Header=BB20_14 Depth=3
	sub.d	$a5, $s4, $s7
	.p2align	4, , 16
.LBB20_18:                              # %for.body95
                                        #   Parent Loop BB20_3 Depth=1
                                        #     Parent Loop BB20_12 Depth=2
                                        #       Parent Loop BB20_14 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.w	$a1, $t7, $s7
	add.w	$a3, $s8, $s7
	slli.d	$a3, $a3, 3
	fldx.d	$fa2, $t8, $a3
	slli.d	$a1, $a1, 3
	fldx.d	$fa3, $t8, $a1
	fadd.d	$fa2, $fa2, $fa3
	fmul.d	$fa2, $fa2, $fa0
	fstx.d	$fa2, $s3, $a1
	addi.d	$a5, $a5, -1
	addi.d	$s7, $s7, 1
	bnez	$a5, .LBB20_18
	b	.LBB20_13
	.p2align	4, , 16
.LBB20_19:                              # %vector.body.preheader
                                        #   in Loop: Header=BB20_14 Depth=3
	move	$s7, $t7
	move	$a5, $a6
	.p2align	4, , 16
.LBB20_20:                              # %vector.body
                                        #   Parent Loop BB20_3 Depth=1
                                        #     Parent Loop BB20_12 Depth=2
                                        #       Parent Loop BB20_14 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.w	$a1, $s6, $s7
	alsl.d	$a3, $a1, $t8, 3
	slli.d	$a1, $a1, 3
	xvldx	$xr2, $t8, $a1
	xvld	$xr3, $a3, 32
	alsl.d	$a1, $s7, $t8, 3
	slli.d	$a3, $s7, 3
	xvldx	$xr4, $t8, $a3
	xvld	$xr5, $a1, 32
	xvfadd.d	$xr2, $xr2, $xr4
	xvfadd.d	$xr3, $xr3, $xr5
	xvfmul.d	$xr2, $xr2, $xr1
	xvfmul.d	$xr3, $xr3, $xr1
	alsl.d	$a1, $s7, $s3, 3
	xvstx	$xr2, $s3, $a3
	xvst	$xr3, $a1, 32
	addi.d	$a5, $a5, -8
	addi.w	$s7, $s7, 8
	bnez	$a5, .LBB20_20
# %bb.21:                               # %middle.block
                                        #   in Loop: Header=BB20_14 Depth=3
	move	$s7, $a6
	beq	$a6, $s4, .LBB20_13
	b	.LBB20_17
	.p2align	4, , 16
.LBB20_22:                              # %sw.bb83
                                        #   in Loop: Header=BB20_3 Depth=1
	move	$t1, $t3
	ld.w	$t4, $a7, 28
	bgez	$t4, .LBB20_8
	b	.LBB20_2
.LBB20_23:                              # %for.end116
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a2, 3
	ld.d	$a2, $a1, 960
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a2
	st.d	$a0, $a1, 960
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
.Lfunc_end20:
	.size	project_cell_to_face, .Lfunc_end20-project_cell_to_face
                                        # -- End function
	.globl	matmul_grids                    # -- Begin function matmul_grids
	.p2align	5
	.type	matmul_grids,@function
matmul_grids:                           # @matmul_grids
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
	move	$s2, $a6
	move	$s3, $a5
	st.d	$a4, $sp, 56                    # 8-byte Folded Spill
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	move	$s0, $a0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	blez	$s3, .LBB21_21
# %bb.1:                                # %for.cond1.preheader.lr.ph
	ori	$a0, $zero, 1
	blt	$s2, $a0, .LBB21_21
# %bb.2:                                # %for.cond1.preheader.us.preheader
	move	$a1, $zero
	movgr2fr.d	$fa0, $zero
	ori	$a2, $zero, 216
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	mul.d	$a2, $a3, $a2
	b	.LBB21_4
	.p2align	4, , 16
.LBB21_3:                               # %for.cond1.for.inc118_crit_edge.us
                                        #   in Loop: Header=BB21_4 Depth=1
	addi.d	$a1, $a1, 1
	beq	$a1, $s3, .LBB21_21
.LBB21_4:                               # %for.cond1.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_6 Depth 2
                                        #       Child Loop BB21_10 Depth 3
                                        #         Child Loop BB21_14 Depth 4
                                        #           Child Loop BB21_16 Depth 5
                                        #             Child Loop BB21_17 Depth 6
	move	$a3, $zero
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	alsl.d	$a4, $a1, $a4, 2
	st.d	$a4, $sp, 64                    # 8-byte Folded Spill
	mul.d	$a5, $a1, $s2
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$a5, $a5, $a4, 3
	alsl.d	$a4, $a1, $a4, 3
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	b	.LBB21_6
	.p2align	4, , 16
.LBB21_5:                               # %for.inc115.us
                                        #   in Loop: Header=BB21_6 Depth=2
	addi.d	$a3, $a3, 1
	beq	$a3, $s2, .LBB21_3
.LBB21_6:                               # %for.body3.us
                                        #   Parent Loop BB21_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB21_10 Depth 3
                                        #         Child Loop BB21_14 Depth 4
                                        #           Child Loop BB21_16 Depth 5
                                        #             Child Loop BB21_17 Depth 6
	bltu	$a3, $a1, .LBB21_5
# %bb.7:                                # %for.cond5.preheader.us
                                        #   in Loop: Header=BB21_6 Depth=2
	ld.w	$a7, $s0, 1600
	fmov.d	$fa1, $fa0
	blez	$a7, .LBB21_19
# %bb.8:                                # %for.body7.lr.ph.us
                                        #   in Loop: Header=BB21_6 Depth=2
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a4, $a4, 0
	slli.d	$a6, $a3, 2
	ld.d	$t0, $sp, 56                    # 8-byte Folded Reload
	ldx.w	$a6, $t0, $a6
	ld.d	$t0, $s0, 1776
	move	$t1, $zero
	slli.d	$t2, $a4, 3
	slli.d	$t3, $a6, 3
	fmov.d	$fa1, $fa0
	b	.LBB21_10
	.p2align	4, , 16
.LBB21_9:                               # %for.end98.us
                                        #   in Loop: Header=BB21_10 Depth=3
	addi.d	$t1, $t1, 1
	fadd.d	$fa1, $fa1, $fa2
	beq	$t1, $a7, .LBB21_19
.LBB21_10:                              # %for.body7.us
                                        #   Parent Loop BB21_4 Depth=1
                                        #     Parent Loop BB21_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB21_14 Depth 4
                                        #           Child Loop BB21_16 Depth 5
                                        #             Child Loop BB21_17 Depth 6
	slli.d	$a6, $t1, 8
	add.d	$a6, $t0, $a6
	ld.d	$a6, $a6, 248
	add.d	$t6, $a6, $a2
	ld.w	$t4, $t6, 28
	fmov.d	$fa2, $fa0
	blez	$t4, .LBB21_9
# %bb.11:                               # %for.cond78.preheader.lr.ph.us
                                        #   in Loop: Header=BB21_10 Depth=3
	ld.w	$t5, $t6, 24
	fmov.d	$fa2, $fa0
	blt	$t5, $a0, .LBB21_9
# %bb.12:                               # %for.cond78.preheader.us.us.preheader
                                        #   in Loop: Header=BB21_10 Depth=3
	move	$a6, $zero
	move	$t7, $zero
	ld.w	$t8, $t6, 48
	ld.d	$fp, $t6, 176
	ld.w	$s7, $t6, 52
	ld.w	$s1, $t6, 44
	ld.wu	$s4, $t6, 20
	ldx.d	$t6, $fp, $t2
	add.d	$s5, $t8, $s7
	ldx.d	$fp, $fp, $t3
	addi.d	$s5, $s5, 1
	mul.w	$s1, $s1, $s5
	alsl.d	$ra, $s1, $t6, 3
	alsl.d	$s1, $s1, $fp, 3
	addi.w	$fp, $s4, 0
	fmov.d	$fa2, $fa0
	b	.LBB21_14
	.p2align	4, , 16
.LBB21_13:                              # %for.cond78.for.inc96_crit_edge.us.us
                                        #   in Loop: Header=BB21_14 Depth=4
	addi.w	$t7, $t7, 1
	add.w	$a6, $a6, $s7
	beq	$t7, $t4, .LBB21_9
.LBB21_14:                              # %for.cond78.preheader.us.us
                                        #   Parent Loop BB21_4 Depth=1
                                        #     Parent Loop BB21_6 Depth=2
                                        #       Parent Loop BB21_10 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB21_16 Depth 5
                                        #             Child Loop BB21_17 Depth 6
	blt	$fp, $a0, .LBB21_13
# %bb.15:                               # %for.cond81.preheader.us.us.us.preheader
                                        #   in Loop: Header=BB21_14 Depth=4
	move	$s5, $zero
	move	$s6, $a6
	.p2align	4, , 16
.LBB21_16:                              # %for.cond81.preheader.us.us.us
                                        #   Parent Loop BB21_4 Depth=1
                                        #     Parent Loop BB21_6 Depth=2
                                        #       Parent Loop BB21_10 Depth=3
                                        #         Parent Loop BB21_14 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB21_17 Depth 6
	move	$s8, $s4
	move	$t6, $s6
	.p2align	4, , 16
.LBB21_17:                              # %for.body83.us.us.us
                                        #   Parent Loop BB21_4 Depth=1
                                        #     Parent Loop BB21_6 Depth=2
                                        #       Parent Loop BB21_10 Depth=3
                                        #         Parent Loop BB21_14 Depth=4
                                        #           Parent Loop BB21_16 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	slli.d	$a4, $t6, 3
	fldx.d	$fa3, $ra, $a4
	fldx.d	$fa4, $s1, $a4
	fmadd.d	$fa2, $fa3, $fa4, $fa2
	addi.d	$s8, $s8, -1
	addi.w	$t6, $t6, 1
	bnez	$s8, .LBB21_17
# %bb.18:                               # %for.cond81.for.inc93_crit_edge.us.us.us
                                        #   in Loop: Header=BB21_16 Depth=5
	addi.w	$s5, $s5, 1
	add.w	$s6, $s6, $t8
	bne	$s5, $t5, .LBB21_16
	b	.LBB21_13
	.p2align	4, , 16
.LBB21_19:                              # %for.end102.us
                                        #   in Loop: Header=BB21_6 Depth=2
	slli.d	$a6, $a3, 3
	fstx.d	$fa1, $a5, $a6
	bgeu	$a3, $s3, .LBB21_5
# %bb.20:                               # %if.then109.us
                                        #   in Loop: Header=BB21_6 Depth=2
	mul.d	$a6, $a3, $s2
	slli.d	$a6, $a6, 3
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	fstx.d	$fa1, $a4, $a6
	b	.LBB21_5
.LBB21_21:                              # %for.end120
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$a1, $a1, $s0, 3
	ld.d	$a2, $a1, 1040
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a2
	st.d	$a0, $a1, 1040
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
.Lfunc_end21:
	.size	matmul_grids, .Lfunc_end21-matmul_grids
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function initialize_problem
.LCPI22_0:
	.dword	0x4046800000000000              # double 45
.LCPI22_1:
	.dword	0x401921fb54442d18              # double 6.2831853071795862
.LCPI22_2:
	.dword	0xc044000000000000              # double -40
.LCPI22_3:
	.dword	0x4043bd3cc9be45de              # double 39.478417604357432
	.text
	.globl	initialize_problem
	.p2align	5
	.type	initialize_problem,@function
initialize_problem:                     # @initialize_problem
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -400
	st.d	$ra, $sp, 392                   # 8-byte Folded Spill
	st.d	$fp, $sp, 384                   # 8-byte Folded Spill
	st.d	$s0, $sp, 376                   # 8-byte Folded Spill
	st.d	$s1, $sp, 368                   # 8-byte Folded Spill
	st.d	$s2, $sp, 360                   # 8-byte Folded Spill
	st.d	$s3, $sp, 352                   # 8-byte Folded Spill
	st.d	$s4, $sp, 344                   # 8-byte Folded Spill
	st.d	$s5, $sp, 336                   # 8-byte Folded Spill
	st.d	$s6, $sp, 328                   # 8-byte Folded Spill
	st.d	$s7, $sp, 320                   # 8-byte Folded Spill
	st.d	$s8, $sp, 312                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 304                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 296                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 288                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 280                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 272                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 264                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 256                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 248                  # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 1600
	ori	$s1, $zero, 1
	fmov.d	$fs0, $fa1
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	blt	$a0, $s1, .LBB22_16
# %bb.1:                                # %for.body.lr.ph
	fmov.d	$fs2, $fa0
	move	$a2, $zero
	ori	$a0, $zero, 216
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	mul.d	$s3, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI22_0)
	fld.d	$fs3, $a0, %pc_lo12(.LCPI22_0)
	pcalau12i	$a0, %pc_hi20(.LCPI22_1)
	fld.d	$fs4, $a0, %pc_lo12(.LCPI22_1)
	pcalau12i	$a0, %pc_hi20(.LCPI22_2)
	fld.d	$fs5, $a0, %pc_lo12(.LCPI22_2)
	pcalau12i	$a0, %pc_hi20(.LCPI22_3)
	fld.d	$fs6, $a0, %pc_lo12(.LCPI22_3)
	lu52i.d	$s4, $zero, 1023
	fst.d	$fs0, $sp, 160                  # 8-byte Folded Spill
	fst.d	$fa2, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fa0, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 208                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 200                  # 8-byte Folded Spill
	b	.LBB22_3
	.p2align	4, , 16
.LBB22_2:                               # %for.end415
                                        #   in Loop: Header=BB22_3 Depth=1
	ld.w	$a0, $fp, 1600
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	bge	$a2, $a0, .LBB22_16
.LBB22_3:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_8 Depth 2
                                        #       Child Loop BB22_12 Depth 3
                                        #         Child Loop BB22_14 Depth 4
	ld.d	$a0, $fp, 1776
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	slli.d	$s0, $a2, 8
	add.d	$a0, $a0, $s0
	ld.d	$a0, $a0, 248
	add.d	$a0, $a0, $s3
	ld.d	$a1, $a0, 176
	ld.w	$a2, $a0, 56
	ld.d	$a0, $a1, 88
	slli.d	$a2, $a2, 3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1776
	add.d	$a0, $a0, $s0
	ld.d	$a0, $a0, 248
	add.d	$a0, $a0, $s3
	ld.d	$a1, $a0, 176
	ld.w	$a2, $a0, 56
	ld.d	$a0, $a1, 8
	slli.d	$a2, $a2, 3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1776
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	add.d	$a0, $a0, $s0
	ld.d	$a0, $a0, 248
	add.d	$s6, $a0, $s3
	ld.w	$a1, $s6, 28
	blt	$a1, $s1, .LBB22_2
# %bb.4:                                # %for.cond39.preheader.lr.ph
                                        #   in Loop: Header=BB22_3 Depth=1
	ld.w	$a0, $s6, 24
	blt	$a0, $s1, .LBB22_2
# %bb.5:                                # %for.cond39.preheader.preheader
                                        #   in Loop: Header=BB22_3 Depth=1
	move	$s7, $zero
	addi.d	$a2, $s6, 28
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	addi.d	$s0, $s6, 24
	b	.LBB22_8
	.p2align	4, , 16
.LBB22_6:                               # %for.inc413.loopexit
                                        #   in Loop: Header=BB22_8 Depth=2
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
.LBB22_7:                               # %for.inc413
                                        #   in Loop: Header=BB22_8 Depth=2
	addi.w	$s7, $s7, 1
	bge	$s7, $a1, .LBB22_2
.LBB22_8:                               # %for.cond39.preheader
                                        #   Parent Loop BB22_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB22_12 Depth 3
                                        #         Child Loop BB22_14 Depth 4
	blt	$a0, $s1, .LBB22_7
# %bb.9:                                # %for.cond51.preheader.lr.ph
                                        #   in Loop: Header=BB22_8 Depth=2
	ld.w	$a2, $s6, 20
	blt	$a2, $s1, .LBB22_7
# %bb.10:                               # %for.cond51.preheader.preheader
                                        #   in Loop: Header=BB22_8 Depth=2
	move	$s8, $zero
	b	.LBB22_12
	.p2align	4, , 16
.LBB22_11:                              # %for.inc410
                                        #   in Loop: Header=BB22_12 Depth=3
	addi.w	$s8, $s8, 1
	bge	$s8, $a0, .LBB22_6
.LBB22_12:                              # %for.cond51.preheader
                                        #   Parent Loop BB22_3 Depth=1
                                        #     Parent Loop BB22_8 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB22_14 Depth 4
	blt	$a2, $s1, .LBB22_11
# %bb.13:                               # %for.body62.lr.ph
                                        #   in Loop: Header=BB22_12 Depth=3
	move	$s5, $fp
	ld.d	$a0, $fp, 1776
	move	$s2, $zero
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	addi.d	$fp, $a0, 248
	.p2align	4, , 16
.LBB22_14:                              # %for.body62
                                        #   Parent Loop BB22_3 Depth=1
                                        #     Parent Loop BB22_8 Depth=2
                                        #       Parent Loop BB22_12 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a0, $s6, 8
	add.d	$a0, $s2, $a0
	movgr2fr.w	$fa0, $a0
	ld.w	$a0, $s6, 12
	ffint.d.w	$fa0, $fa0
	vldi	$vr2, -928
	fadd.d	$fa0, $fa0, $fa2
	fmul.d	$fa1, $fs2, $fa0
	fst.d	$fa1, $sp, 184                  # 8-byte Folded Spill
	add.d	$a0, $a0, $s8
	movgr2fr.w	$fa0, $a0
	ld.w	$a0, $s6, 16
	ffint.d.w	$fa0, $fa0
	fadd.d	$fa0, $fa0, $fa2
	fmul.d	$fs6, $fs2, $fa0
	add.d	$a0, $a0, $s7
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fadd.d	$fa0, $fa0, $fa2
	ld.w	$a0, $s6, 44
	ld.w	$a1, $s6, 52
	fmul.d	$fs1, $fs2, $fa0
	ld.w	$a2, $s6, 48
	add.d	$a3, $s7, $a0
	mul.d	$a1, $a1, $a3
	add.d	$a1, $a0, $a1
	add.d	$a0, $s8, $a0
	mul.d	$a0, $a2, $a0
	add.d	$a0, $a1, $a0
	add.w	$s1, $s2, $a0
	vldi	$vr4, -800
	fadd.d	$fa0, $fa1, $fa4
	fmul.d	$fa1, $fa0, $fa0
	fadd.d	$fa2, $fs6, $fa4
	fmul.d	$fa3, $fa2, $fa2
	fadd.d	$fa1, $fa1, $fa3
	fadd.d	$fa3, $fs1, $fa4
	fmul.d	$fa4, $fa3, $fa3
	fadd.d	$fs3, $fa1, $fa4
	fadd.d	$fs2, $fa0, $fa0
	fadd.d	$fs7, $fa2, $fa2
	fst.d	$fs7, $sp, 192                  # 8-byte Folded Spill
	fadd.d	$fs0, $fa3, $fa3
	fst.d	$fs0, $sp, 120                  # 8-byte Folded Spill
	vldi	$vr1, -928
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	vldi	$vr0, -928
	fmul.d	$fs5, $fs2, $fa0
	vldi	$vr1, -800
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	fmul.d	$fs5, $fs5, $fa0
	vldi	$vr2, -928
	fmul.d	$fa1, $fs7, $fa2
	fmul.d	$fs7, $fa0, $fa1
	fmul.d	$fa1, $fs0, $fa2
	fmul.d	$fs0, $fa0, $fa1
	vldi	$vr1, -776
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	vldi	$vr1, -800
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	vldi	$vr1, -776
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	vldi	$vr1, -800
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	vldi	$vr1, -776
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	vldi	$vr0, -816
	fadd.d	$fa0, $fs4, $fa0
	vldi	$vr1, -988
	fmul.d	$fa0, $fa0, $fa1
	pcaddu18i	$ra, %call36(tanh)
	jirl	$ra, $ra, 0
	vldi	$vr1, -1002
	vldi	$vr2, -1006
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	fst.d	$fa1, $sp, 152                  # 8-byte Folded Spill
	fld.d	$fa2, $sp, 40                   # 8-byte Folded Reload
	fmul.d	$fa1, $fs5, $fa2
	fmul.d	$fa0, $fa0, $fa0
	vldi	$vr3, -912
	fsub.d	$fa0, $fa3, $fa0
	fmul.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $sp, 144                  # 8-byte Folded Spill
	fmul.d	$fa1, $fs7, $fa2
	fmul.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $sp, 136                  # 8-byte Folded Spill
	fmul.d	$fa1, $fs0, $fa2
	fmul.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 128                  # 8-byte Folded Spill
	vldi	$vr0, -844
	fmul.d	$fs7, $fs3, $fa0
	fmov.d	$fa0, $fs7
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs5, $fa0
	fld.d	$fs3, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fa0, $sp, 184                  # 8-byte Folded Reload
	fmul.d	$fa0, $fa0, $fs3
	fst.d	$fa0, $sp, 72                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fs0, $fs5, $fa0
	fmul.d	$fs6, $fs6, $fs3
	fmov.d	$fa0, $fs6
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fs0, $fs0, $fa0
	fmul.d	$fa0, $fs1, $fs3
	fst.d	$fa0, $sp, 168                  # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fs0, $fs0, $fa0
	vldi	$vr0, -844
	fmul.d	$fs4, $fs2, $fa0
	fst.d	$fs4, $sp, 88                   # 8-byte Folded Spill
	fmov.d	$fa0, $fs7
	fmov.d	$fs2, $fs7
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fs1, $fa0, $fs3
	fld.d	$fs5, $sp, 72                   # 8-byte Folded Reload
	fmov.d	$fa0, $fs5
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmul.d	$fs1, $fs1, $fa0
	fmov.d	$fa0, $fs6
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fs1, $fs1, $fa0
	fld.d	$fa0, $sp, 168                  # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fs1, $fa0
	fmadd.d	$fa0, $fs4, $fs0, $fa0
	fst.d	$fa0, $sp, 184                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 192                  # 8-byte Folded Reload
	vldi	$vr1, -844
	fmul.d	$fs7, $fa0, $fa1
	fst.d	$fs7, $sp, 96                   # 8-byte Folded Spill
	fmov.d	$fa0, $fs2
	fmov.d	$fs1, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fs2, $fa0, $fs3
	fmov.d	$fs4, $fs5
	fmov.d	$fa0, $fs5
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fs2, $fs2, $fa0
	fmov.d	$fs5, $fs6
	fmov.d	$fa0, $fs6
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmul.d	$fs2, $fs2, $fa0
	fld.d	$fs6, $sp, 168                  # 8-byte Folded Reload
	fmov.d	$fa0, $fs6
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fs2, $fa0
	fmadd.d	$fa0, $fs7, $fs0, $fa0
	fst.d	$fa0, $sp, 192                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 120                  # 8-byte Folded Reload
	vldi	$vr1, -844
	fmul.d	$fs7, $fa0, $fa1
	fst.d	$fs7, $sp, 104                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fs2, $fa0, $fs3
	fmov.d	$fa0, $fs4
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fs2, $fs2, $fa0
	fmov.d	$fa0, $fs5
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fs2, $fs2, $fa0
	fmov.d	$fa0, $fs6
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fs2, $fa0
	fmadd.d	$fa0, $fs7, $fs0, $fa0
	fst.d	$fa0, $sp, 112                  # 8-byte Folded Spill
	fld.d	$fa2, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fa0, $sp, 184                  # 8-byte Folded Reload
	fmul.d	$fa0, $fa2, $fa0
	fld.d	$fa1, $sp, 200                  # 8-byte Folded Reload
	fmadd.d	$fs2, $fs0, $fa1, $fa0
	fst.d	$fs0, $sp, 176                  # 8-byte Folded Spill
	fmul.d	$fs7, $fa2, $fs3
	fst.d	$fs1, $sp, 80                   # 8-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fs7, $fs7, $fa0
	fmov.d	$fa0, $fs4
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmul.d	$fs7, $fs7, $fa0
	fmov.d	$fa0, $fs5
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fs7, $fs7, $fa0
	fmov.d	$fa0, $fs6
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmadd.d	$fs2, $fs7, $fa0, $fs2
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $sp, 208                  # 8-byte Folded Reload
	fmul.d	$fs7, $fa0, $fa1
	fmov.d	$fa0, $fs4
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fs1, $fs7, $fa0
	fmov.d	$fa0, $fs5
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmov.d	$fs7, $fa0
	fmov.d	$fa0, $fs6
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fneg.d	$fa1, $fs7
	fmul.d	$fa1, $fs1, $fa1
	fmadd.d	$fa0, $fa1, $fa0, $fs2
	fst.d	$fa0, $sp, 120                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 192                  # 8-byte Folded Reload
	fld.d	$fa1, $sp, 96                   # 8-byte Folded Reload
	fmul.d	$fa0, $fa1, $fa0
	fld.d	$fa2, $sp, 200                  # 8-byte Folded Reload
	fmadd.d	$fs1, $fs0, $fa2, $fa0
	fmul.d	$fs2, $fa1, $fs3
	fld.d	$fs0, $sp, 80                   # 8-byte Folded Reload
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fs2, $fs2, $fa0
	fmov.d	$fa0, $fs4
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fs2, $fs2, $fa0
	fmov.d	$fa0, $fs5
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmul.d	$fs2, $fs2, $fa0
	fmov.d	$fa0, $fs6
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmadd.d	$fs1, $fs2, $fa0, $fs1
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $sp, 208                  # 8-byte Folded Reload
	fmul.d	$fs2, $fa0, $fa1
	fmov.d	$fa0, $fs4
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fs2, $fs2, $fa0
	fmov.d	$fa0, $fs5
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmov.d	$fs7, $fa0
	fmov.d	$fa0, $fs6
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fneg.d	$fa1, $fs7
	fmul.d	$fa1, $fs2, $fa1
	fmadd.d	$fa0, $fa1, $fa0, $fs1
	fst.d	$fa0, $sp, 96                   # 8-byte Folded Spill
	fld.d	$fs1, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fa1, $sp, 104                  # 8-byte Folded Reload
	fmul.d	$fa0, $fa1, $fs1
	fld.d	$fa2, $sp, 176                  # 8-byte Folded Reload
	fld.d	$fa3, $sp, 200                  # 8-byte Folded Reload
	fmadd.d	$fs2, $fa2, $fa3, $fa0
	fmul.d	$fs7, $fa1, $fs3
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fs7, $fs7, $fa0
	fmov.d	$fa0, $fs4
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fs7, $fs7, $fa0
	fmov.d	$fa0, $fs5
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fs7, $fs7, $fa0
	fmov.d	$fa0, $fs6
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmadd.d	$fs2, $fs7, $fa0, $fs2
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $sp, 208                  # 8-byte Folded Reload
	fmul.d	$fs3, $fa0, $fa1
	fmov.d	$fa0, $fs4
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fs4, $fs3, $fa0
	fmov.d	$fa0, $fs5
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmov.d	$fs3, $fa0
	fmov.d	$fa0, $fs6
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	add.d	$a0, $a0, $s3
	ld.d	$a0, $a0, 176
	fneg.d	$fa1, $fs3
	ld.d	$a1, $a0, 16
	fmul.d	$fa1, $fs4, $fa1
	fmadd.d	$fa0, $fa1, $fa0, $fs2
	fld.d	$fs2, $sp, 56                   # 8-byte Folded Reload
	slli.d	$a3, $s1, 3
	stx.d	$s4, $a1, $a3
	ld.d	$a1, $a0, 24
	fld.d	$fa1, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fa2, $sp, 192                  # 8-byte Folded Reload
	fmul.d	$fa1, $fa1, $fa2
	fld.d	$fa2, $sp, 144                  # 8-byte Folded Reload
	fld.d	$fa3, $sp, 184                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fld.d	$fa2, $sp, 128                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $fs1, $fa1
	fld.d	$fa3, $sp, 152                  # 8-byte Folded Reload
	fstx.d	$fa3, $a1, $a3
	ld.d	$a1, $a0, 88
	fld.d	$fa2, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fa4, $sp, 96                   # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa4
	fld.d	$fs1, $sp, 64                   # 8-byte Folded Reload
	fadd.d	$fa0, $fa2, $fa0
	fnmadd.d	$fa0, $fa3, $fa0, $fa1
	fld.d	$fa2, $sp, 176                  # 8-byte Folded Reload
	fstx.d	$fa2, $a1, $a3
	ld.d	$a0, $a0, 8
	ld.w	$a2, $s6, 20
	fmul.d	$fa0, $fs1, $fa0
	fld.d	$fa1, $sp, 160                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fld.d	$fs0, $sp, 160                  # 8-byte Folded Reload
	addi.w	$s2, $s2, 1
	fstx.d	$fa0, $a0, $a3
	blt	$s2, $a2, .LBB22_14
# %bb.15:                               # %for.inc410.loopexit
                                        #   in Loop: Header=BB22_12 Depth=3
	ld.w	$a0, $s0, 0
	move	$fp, $s5
	ori	$s1, $zero, 1
	b	.LBB22_11
.LBB22_16:                              # %for.end418
	ori	$a2, $zero, 1
	move	$a0, $fp
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(mean)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 1596
                                        # kill: def $f0_64 killed $f0_64 def $xr0
	xvst	$xr0, $sp, 208                  # 32-byte Folded Spill
	bnez	$a0, .LBB22_18
# %bb.17:                               # %if.then
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
.LBB22_18:                              # %if.end
	movgr2fr.d	$fa0, $zero
	fcmp.ceq.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB22_58
# %bb.19:                               # %if.then426
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	xvld	$xr3, $sp, 208                  # 32-byte Folded Reload
	move	$s8, $fp
	ld.w	$a1, $fp, 1600
	ori	$s0, $zero, 1
	move	$s1, $a0
	blt	$a1, $s0, .LBB22_38
# %bb.20:                               # %for.body.lr.ph.i
	move	$a0, $zero
	ld.d	$a2, $s8, 1776
	xvreplve0.d	$xr0, $xr3
	ori	$a3, $zero, 216
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	mul.d	$a3, $a4, $a3
	ori	$a4, $zero, 8
	b	.LBB22_22
	.p2align	4, , 16
.LBB22_21:                              # %for.end108.i
                                        #   in Loop: Header=BB22_22 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $a1, .LBB22_38
.LBB22_22:                              # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_26 Depth 2
                                        #       Child Loop BB22_29 Depth 3
                                        #         Child Loop BB22_36 Depth 4
                                        #         Child Loop BB22_32 Depth 4
	slli.d	$a5, $a0, 8
	add.d	$a5, $a2, $a5
	ld.d	$a5, $a5, 248
	add.d	$t3, $a5, $a3
	ld.w	$a5, $t3, 28
	blt	$a5, $s0, .LBB22_21
# %bb.23:                               # %for.cond86.preheader.lr.ph.i
                                        #   in Loop: Header=BB22_22 Depth=1
	ld.w	$a6, $t3, 24
	blt	$a6, $s0, .LBB22_21
# %bb.24:                               # %for.cond86.preheader.us.preheader.i
                                        #   in Loop: Header=BB22_22 Depth=1
	move	$a7, $zero
	move	$t0, $zero
	ld.w	$t1, $t3, 48
	ld.d	$t4, $t3, 176
	ld.w	$t2, $t3, 52
	ld.w	$t5, $t3, 44
	ld.wu	$t3, $t3, 20
	ld.d	$t4, $t4, 8
	add.d	$t6, $t1, $t2
	addi.d	$t6, $t6, 1
	mul.w	$t5, $t5, $t6
	alsl.d	$t4, $t5, $t4, 3
	addi.d	$t5, $t3, -1
	bstrpick.d	$t6, $t3, 30, 3
	slli.d	$t6, $t6, 3
	addi.w	$t7, $t3, 0
	b	.LBB22_26
	.p2align	4, , 16
.LBB22_25:                              # %for.cond86.for.inc106_crit_edge.us.i
                                        #   in Loop: Header=BB22_26 Depth=2
	addi.w	$t0, $t0, 1
	add.w	$a7, $a7, $t2
	beq	$t0, $a5, .LBB22_21
.LBB22_26:                              # %for.cond86.preheader.us.i
                                        #   Parent Loop BB22_22 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB22_29 Depth 3
                                        #         Child Loop BB22_36 Depth 4
                                        #         Child Loop BB22_32 Depth 4
	blt	$t7, $s0, .LBB22_25
# %bb.27:                               # %for.cond90.preheader.us.us.i.preheader
                                        #   in Loop: Header=BB22_26 Depth=2
	move	$t8, $zero
	mul.d	$fp, $t2, $t0
	add.d	$s2, $fp, $t5
	move	$s3, $a7
	b	.LBB22_29
	.p2align	4, , 16
.LBB22_28:                              # %for.cond90.for.inc103_crit_edge.us.us.i
                                        #   in Loop: Header=BB22_29 Depth=3
	addi.w	$t8, $t8, 1
	add.w	$s3, $s3, $t1
	beq	$t8, $a6, .LBB22_25
.LBB22_29:                              # %for.cond90.preheader.us.us.i
                                        #   Parent Loop BB22_22 Depth=1
                                        #     Parent Loop BB22_26 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB22_36 Depth 4
                                        #         Child Loop BB22_32 Depth 4
	bgeu	$t3, $a4, .LBB22_33
# %bb.30:                               #   in Loop: Header=BB22_29 Depth=3
	move	$s4, $zero
.LBB22_31:                              # %for.body93.us.us.i.preheader
                                        #   in Loop: Header=BB22_29 Depth=3
	sub.d	$s5, $t3, $s4
	add.w	$s4, $s3, $s4
	.p2align	4, , 16
.LBB22_32:                              # %for.body93.us.us.i
                                        #   Parent Loop BB22_22 Depth=1
                                        #     Parent Loop BB22_26 Depth=2
                                        #       Parent Loop BB22_29 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$s6, $s4, 3
	fldx.d	$fa1, $t4, $s6
	fsub.d	$fa1, $fa1, $fa3
	fstx.d	$fa1, $t4, $s6
	addi.d	$s5, $s5, -1
	addi.w	$s4, $s4, 1
	bnez	$s5, .LBB22_32
	b	.LBB22_28
	.p2align	4, , 16
.LBB22_33:                              # %vector.scevcheck
                                        #   in Loop: Header=BB22_29 Depth=3
	mul.d	$s4, $t1, $t8
	add.w	$s5, $fp, $s4
	add.w	$s6, $s4, $s2
	move	$s4, $zero
	blt	$s6, $s5, .LBB22_31
# %bb.34:                               # %vector.scevcheck
                                        #   in Loop: Header=BB22_29 Depth=3
	srli.d	$s5, $t5, 32
	bnez	$s5, .LBB22_31
# %bb.35:                               # %vector.body.preheader
                                        #   in Loop: Header=BB22_29 Depth=3
	move	$s4, $s3
	move	$s5, $t6
	.p2align	4, , 16
.LBB22_36:                              # %vector.body
                                        #   Parent Loop BB22_22 Depth=1
                                        #     Parent Loop BB22_26 Depth=2
                                        #       Parent Loop BB22_29 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	alsl.d	$s6, $s4, $t4, 3
	slli.d	$s7, $s4, 3
	xvldx	$xr1, $t4, $s7
	xvld	$xr2, $s6, 32
	xvfsub.d	$xr1, $xr1, $xr0
	xvfsub.d	$xr2, $xr2, $xr0
	xvstx	$xr1, $t4, $s7
	xvst	$xr2, $s6, 32
	addi.d	$s5, $s5, -8
	addi.w	$s4, $s4, 8
	bnez	$s5, .LBB22_36
# %bb.37:                               # %middle.block
                                        #   in Loop: Header=BB22_29 Depth=3
	move	$s4, $t6
	beq	$t6, $t3, .LBB22_28
	b	.LBB22_31
.LBB22_38:                              # %shift_grid.exit
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	alsl.d	$a1, $s2, $s8, 3
	ld.d	$a2, $a1, 960
	sub.d	$a0, $a0, $s1
	addi.d	$fp, $a1, 960
	add.d	$a0, $a0, $a2
	st.d	$a0, $a1, 960
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s8, 1600
	move	$s1, $a0
	blt	$a1, $s0, .LBB22_57
# %bb.39:                               # %for.body.lr.ph.i255
	move	$a0, $zero
	ld.d	$a2, $s8, 1776
	xvld	$xr0, $sp, 208                  # 32-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fs0
	xvreplve0.d	$xr1, $xr0
	ori	$a3, $zero, 216
	mul.d	$a3, $s2, $a3
	ori	$a4, $zero, 1
	ori	$a5, $zero, 8
	b	.LBB22_41
	.p2align	4, , 16
.LBB22_40:                              # %for.end108.i278
                                        #   in Loop: Header=BB22_41 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $a1, .LBB22_57
.LBB22_41:                              # %for.body.i258
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_45 Depth 2
                                        #       Child Loop BB22_48 Depth 3
                                        #         Child Loop BB22_55 Depth 4
                                        #         Child Loop BB22_51 Depth 4
	slli.d	$a6, $a0, 8
	add.d	$a6, $a2, $a6
	ld.d	$a6, $a6, 248
	add.d	$t4, $a6, $a3
	ld.w	$a6, $t4, 28
	blt	$a6, $a4, .LBB22_40
# %bb.42:                               # %for.cond86.preheader.lr.ph.i281
                                        #   in Loop: Header=BB22_41 Depth=1
	ld.w	$a7, $t4, 24
	blt	$a7, $a4, .LBB22_40
# %bb.43:                               # %for.cond86.preheader.us.preheader.i284
                                        #   in Loop: Header=BB22_41 Depth=1
	move	$t0, $zero
	move	$t1, $zero
	ld.w	$t2, $t4, 48
	ld.d	$t5, $t4, 176
	ld.w	$t3, $t4, 52
	ld.w	$t6, $t4, 44
	ld.wu	$t4, $t4, 20
	ld.d	$t5, $t5, 88
	add.d	$t7, $t2, $t3
	addi.d	$t7, $t7, 1
	mul.w	$t6, $t6, $t7
	alsl.d	$t5, $t6, $t5, 3
	addi.d	$t6, $t4, -1
	bstrpick.d	$t7, $t4, 30, 3
	slli.d	$t7, $t7, 3
	addi.w	$t8, $t4, 0
	b	.LBB22_45
	.p2align	4, , 16
.LBB22_44:                              # %for.cond86.for.inc106_crit_edge.us.i289
                                        #   in Loop: Header=BB22_45 Depth=2
	addi.w	$t1, $t1, 1
	add.w	$t0, $t0, $t3
	beq	$t1, $a6, .LBB22_40
.LBB22_45:                              # %for.cond86.preheader.us.i286
                                        #   Parent Loop BB22_41 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB22_48 Depth 3
                                        #         Child Loop BB22_55 Depth 4
                                        #         Child Loop BB22_51 Depth 4
	blt	$t8, $a4, .LBB22_44
# %bb.46:                               # %for.cond90.preheader.us.us.i292.preheader
                                        #   in Loop: Header=BB22_45 Depth=2
	move	$s0, $zero
	mul.d	$s2, $t3, $t1
	add.d	$s3, $s2, $t6
	move	$s4, $t0
	b	.LBB22_48
	.p2align	4, , 16
.LBB22_47:                              # %for.cond90.for.inc103_crit_edge.us.us.i305
                                        #   in Loop: Header=BB22_48 Depth=3
	addi.w	$s0, $s0, 1
	add.w	$s4, $s4, $t2
	beq	$s0, $a7, .LBB22_44
.LBB22_48:                              # %for.cond90.preheader.us.us.i292
                                        #   Parent Loop BB22_41 Depth=1
                                        #     Parent Loop BB22_45 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB22_55 Depth 4
                                        #         Child Loop BB22_51 Depth 4
	bgeu	$t4, $a5, .LBB22_52
# %bb.49:                               #   in Loop: Header=BB22_48 Depth=3
	move	$s5, $zero
.LBB22_50:                              # %for.body93.us.us.i296.preheader
                                        #   in Loop: Header=BB22_48 Depth=3
	sub.d	$s6, $t4, $s5
	add.w	$s5, $s4, $s5
	.p2align	4, , 16
.LBB22_51:                              # %for.body93.us.us.i296
                                        #   Parent Loop BB22_41 Depth=1
                                        #     Parent Loop BB22_45 Depth=2
                                        #       Parent Loop BB22_48 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$s7, $s5, 3
	fldx.d	$fa2, $t5, $s7
	fsub.d	$fa2, $fa2, $fa0
	fstx.d	$fa2, $t5, $s7
	addi.d	$s6, $s6, -1
	addi.w	$s5, $s5, 1
	bnez	$s6, .LBB22_51
	b	.LBB22_47
	.p2align	4, , 16
.LBB22_52:                              # %vector.scevcheck324
                                        #   in Loop: Header=BB22_48 Depth=3
	mul.d	$s5, $t2, $s0
	add.w	$s6, $s2, $s5
	add.w	$s7, $s5, $s3
	move	$s5, $zero
	blt	$s7, $s6, .LBB22_50
# %bb.53:                               # %vector.scevcheck324
                                        #   in Loop: Header=BB22_48 Depth=3
	srli.d	$s6, $t6, 32
	bnez	$s6, .LBB22_50
# %bb.54:                               # %vector.body332.preheader
                                        #   in Loop: Header=BB22_48 Depth=3
	move	$s5, $s4
	move	$s6, $t7
	.p2align	4, , 16
.LBB22_55:                              # %vector.body332
                                        #   Parent Loop BB22_41 Depth=1
                                        #     Parent Loop BB22_45 Depth=2
                                        #       Parent Loop BB22_48 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	alsl.d	$s7, $s5, $t5, 3
	slli.d	$s8, $s5, 3
	xvldx	$xr2, $t5, $s8
	xvld	$xr3, $s7, 32
	xvfsub.d	$xr2, $xr2, $xr1
	xvfsub.d	$xr3, $xr3, $xr1
	xvstx	$xr2, $t5, $s8
	xvst	$xr3, $s7, 32
	addi.d	$s6, $s6, -8
	addi.w	$s5, $s5, 8
	bnez	$s6, .LBB22_55
# %bb.56:                               # %middle.block337
                                        #   in Loop: Header=BB22_48 Depth=3
	move	$s5, $t7
	beq	$t7, $t4, .LBB22_47
	b	.LBB22_50
.LBB22_57:                              # %shift_grid.exit308
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	sub.d	$a0, $a0, $s1
	add.d	$a0, $a0, $a1
	st.d	$a0, $fp, 0
.LBB22_58:                              # %if.end429
	fld.d	$fs7, $sp, 248                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 256                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 264                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 272                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 280                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 288                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 296                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 304                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 384                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 392                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 400
	ret
.Lfunc_end22:
	.size	initialize_problem, .Lfunc_end22-initialize_problem
                                        # -- End function
	.type	.L__const.exchange_boundary.edges,@object # @__const.exchange_boundary.edges
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.L__const.exchange_boundary.edges:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.size	.L__const.exchange_boundary.edges, 108

	.type	.L__const.exchange_boundary.corners,@object # @__const.exchange_boundary.corners
	.p2align	2, 0x0
.L__const.exchange_boundary.corners:
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.size	.L__const.exchange_boundary.corners, 108

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"  level=%2d, eigenvalue_max ~= %e\n"
	.size	.L.str.1, 35

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"\n  average value of f = %20.12e\n"
	.size	.L.str.2, 33

	.section	".note.GNU-stack","",@progbits
	.addrsig
