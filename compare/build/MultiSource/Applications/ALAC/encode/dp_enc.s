	.file	"dp_enc.c"
	.text
	.globl	init_coefs                      # -- Begin function init_coefs
	.p2align	5
	.type	init_coefs,@function
init_coefs:                             # @init_coefs
# %bb.0:                                # %entry
	ori	$a3, $zero, 38
	sll.w	$a3, $a3, $a1
	srli.d	$a3, $a3, 4
	st.h	$a3, $a0, 0
	addi.d	$a3, $zero, -29
	sll.w	$a3, $a3, $a1
	srli.d	$a3, $a3, 4
	st.h	$a3, $a0, 2
	addi.d	$a3, $zero, -2
	sll.w	$a1, $a3, $a1
	srli.d	$a1, $a1, 4
	ori	$a3, $zero, 4
	st.h	$a1, $a0, 4
	blt	$a2, $a3, .LBB0_2
# %bb.1:                                # %for.body.preheader
	addi.d	$a0, $a0, 6
	slli.d	$a1, $a2, 1
	addi.d	$a2, $a1, -6
	move	$a1, $zero
	pcaddu18i	$t8, %call36(memset)
	jr	$t8
.LBB0_2:                                # %for.end
	ret
.Lfunc_end0:
	.size	init_coefs, .Lfunc_end0-init_coefs
                                        # -- End function
	.globl	copy_coefs                      # -- Begin function copy_coefs
	.p2align	5
	.type	copy_coefs,@function
copy_coefs:                             # @copy_coefs
# %bb.0:                                # %entry
	blez	$a2, .LBB1_14
# %bb.1:                                # %iter.check
	ori	$a4, $zero, 8
	move	$a3, $zero
	bltu	$a2, $a4, .LBB1_12
# %bb.2:                                # %iter.check
	sub.d	$a4, $a1, $a0
	ori	$a5, $zero, 64
	bltu	$a4, $a5, .LBB1_12
# %bb.3:                                # %vector.main.loop.iter.check
	ori	$a3, $zero, 32
	bgeu	$a2, $a3, .LBB1_5
# %bb.4:
	move	$a3, $zero
	b	.LBB1_9
.LBB1_5:                                # %vector.ph
	andi	$a4, $a2, 24
	bstrpick.d	$a3, $a2, 30, 5
	slli.d	$a3, $a3, 5
	addi.d	$a5, $a1, 32
	addi.d	$a6, $a0, 32
	move	$a7, $a3
	.p2align	4, , 16
.LBB1_6:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a6, -32
	xvld	$xr1, $a6, 0
	xvst	$xr0, $a5, -32
	xvst	$xr1, $a5, 0
	addi.d	$a7, $a7, -32
	addi.d	$a5, $a5, 64
	addi.d	$a6, $a6, 64
	bnez	$a7, .LBB1_6
# %bb.7:                                # %middle.block
	beq	$a3, $a2, .LBB1_14
# %bb.8:                                # %vec.epilog.iter.check
	beqz	$a4, .LBB1_12
.LBB1_9:                                # %vec.epilog.ph
	move	$a6, $a3
	bstrpick.d	$a3, $a2, 30, 3
	slli.d	$a3, $a3, 3
	sub.d	$a4, $a6, $a3
	alsl.d	$a5, $a6, $a1, 1
	alsl.d	$a6, $a6, $a0, 1
	.p2align	4, , 16
.LBB1_10:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a6, 0
	vst	$vr0, $a5, 0
	addi.d	$a4, $a4, 8
	addi.d	$a5, $a5, 16
	addi.d	$a6, $a6, 16
	bnez	$a4, .LBB1_10
# %bb.11:                               # %vec.epilog.middle.block
	beq	$a3, $a2, .LBB1_14
.LBB1_12:                               # %for.body.preheader
	alsl.d	$a1, $a3, $a1, 1
	alsl.d	$a0, $a3, $a0, 1
	sub.d	$a2, $a2, $a3
	.p2align	4, , 16
.LBB1_13:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a3, $a0, 0
	st.h	$a3, $a1, 0
	addi.d	$a1, $a1, 2
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 2
	bnez	$a2, .LBB1_13
.LBB1_14:                               # %for.end
	ret
.Lfunc_end1:
	.size	copy_coefs, .Lfunc_end1-copy_coefs
                                        # -- End function
	.globl	pc_block                        # -- Begin function pc_block
	.p2align	5
	.type	pc_block,@function
pc_block:                               # @pc_block
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
	ld.w	$a7, $a0, 0
	st.w	$a7, $a1, 0
	beqz	$a4, .LBB2_8
# %bb.1:                                # %entry
	move	$s3, $a4
	ori	$a4, $zero, 32
	ori	$a7, $zero, 31
	sub.d	$a5, $a4, $a5
	bne	$s3, $a7, .LBB2_11
# %bb.2:                                # %for.cond.preheader
	ori	$a3, $zero, 2
	blt	$a2, $a3, .LBB2_99
# %bb.3:                                # %iter.check
	ori	$a3, $zero, 5
	ori	$a6, $zero, 1
	bltu	$a2, $a3, .LBB2_97
# %bb.4:                                # %vector.memcheck
	addi.d	$a3, $a1, 4
	alsl.d	$a4, $a2, $a0, 2
	bgeu	$a3, $a4, .LBB2_6
# %bb.5:                                # %vector.memcheck
	alsl.d	$a3, $a2, $a1, 2
	bltu	$a0, $a3, .LBB2_97
.LBB2_6:                                # %vector.main.loop.iter.check
	ori	$a4, $zero, 17
	addi.d	$a3, $a2, -1
	bgeu	$a2, $a4, .LBB2_90
# %bb.7:
	move	$a4, $zero
	b	.LBB2_94
.LBB2_8:                                # %if.then
	beq	$a0, $a1, .LBB2_99
# %bb.9:                                # %if.then
	ori	$a3, $zero, 2
	blt	$a2, $a3, .LBB2_99
# %bb.10:                               # %if.then5
	addi.d	$a3, $a1, 4
	addi.d	$a1, $a0, 4
	slli.d	$a0, $a2, 2
	addi.d	$a2, $a0, -4
	move	$a0, $a3
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
	pcaddu18i	$t8, %call36(memcpy)
	jr	$t8
.LBB2_11:                               # %for.cond24.preheader
	addi.d	$a7, $a6, -1
	ori	$t1, $zero, 1
	addi.w	$t0, $s3, 1
	blez	$s3, .LBB2_26
# %bb.12:                               # %iter.check582
	bstrpick.d	$t2, $t0, 31, 0
	ori	$a4, $zero, 5
	ori	$t5, $zero, 1
	bltu	$t0, $a4, .LBB2_24
# %bb.13:                               # %vector.memcheck573
	addi.d	$a4, $a1, 4
	alsl.d	$t3, $t2, $a0, 2
	bgeu	$a4, $t3, .LBB2_15
# %bb.14:                               # %vector.memcheck573
	alsl.d	$a4, $t2, $a1, 2
	bltu	$a0, $a4, .LBB2_24
.LBB2_15:                               # %vector.main.loop.iter.check584
	ori	$a4, $zero, 17
	addi.d	$t3, $t2, -1
	bgeu	$t0, $a4, .LBB2_17
# %bb.16:
	move	$t4, $zero
	b	.LBB2_21
.LBB2_17:                               # %vector.ph585
	andi	$a4, $t3, 12
	move	$t4, $t3
	bstrins.d	$t4, $zero, 3, 0
	xvreplgr2vr.w	$xr0, $a5
	addi.d	$t5, $a0, 32
	addi.d	$t6, $a1, 36
	move	$t7, $t4
	.p2align	4, , 16
.LBB2_18:                               # %vector.body590
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $t5, -28
	xvld	$xr2, $t5, 4
	xvld	$xr3, $t5, -32
	xvld	$xr4, $t5, 0
	xvsub.w	$xr1, $xr1, $xr3
	xvsub.w	$xr2, $xr2, $xr4
	xvsll.w	$xr1, $xr1, $xr0
	xvsll.w	$xr2, $xr2, $xr0
	xvsra.w	$xr1, $xr1, $xr0
	xvsra.w	$xr2, $xr2, $xr0
	xvst	$xr1, $t6, -32
	xvst	$xr2, $t6, 0
	addi.d	$t5, $t5, 64
	addi.d	$t7, $t7, -16
	addi.d	$t6, $t6, 64
	bnez	$t7, .LBB2_18
# %bb.19:                               # %middle.block597
	beq	$t3, $t4, .LBB2_26
# %bb.20:                               # %vec.epilog.iter.check601
	beqz	$a4, .LBB2_100
.LBB2_21:                               # %vec.epilog.ph603
	move	$a4, $t3
	bstrins.d	$a4, $zero, 1, 0
	ori	$t6, $zero, 1
	move	$t5, $t3
	bstrins.d	$t5, $t6, 1, 0
	vreplgr2vr.w	$vr0, $a5
	slli.d	$t6, $t4, 2
	addi.d	$t7, $t6, 4
	add.d	$t6, $a0, $t7
	add.d	$t7, $a1, $t7
	sub.d	$t4, $t4, $a4
	.p2align	4, , 16
.LBB2_22:                               # %vec.epilog.vector.body608
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $t6, 0
	vld	$vr2, $t6, -4
	vsub.w	$vr1, $vr1, $vr2
	vsll.w	$vr1, $vr1, $vr0
	vsra.w	$vr1, $vr1, $vr0
	vst	$vr1, $t7, 0
	addi.d	$t6, $t6, 16
	addi.d	$t4, $t4, 4
	addi.d	$t7, $t7, 16
	bnez	$t4, .LBB2_22
# %bb.23:                               # %vec.epilog.middle.block614
	beq	$t3, $a4, .LBB2_26
.LBB2_24:                               # %for.body27.preheader
	alsl.d	$a4, $t5, $a1, 2
	alsl.d	$t3, $t5, $a0, 2
	sub.d	$t2, $t2, $t5
	.p2align	4, , 16
.LBB2_25:                               # %for.body27
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t4, $t3, 0
	ld.w	$t5, $t3, -4
	sub.d	$t4, $t4, $t5
	sll.w	$t4, $t4, $a5
	sra.w	$t4, $t4, $a5
	st.w	$t4, $a4, 0
	addi.d	$a4, $a4, 4
	addi.d	$t2, $t2, -1
	addi.d	$t3, $t3, 4
	bnez	$t2, .LBB2_25
.LBB2_26:                               # %for.end40
	ori	$a4, $zero, 4
	sll.w	$a7, $t1, $a7
	beq	$s3, $a4, .LBB2_50
# %bb.27:                               # %for.end40
	ori	$a4, $zero, 8
	bne	$s3, $a4, .LBB2_64
# %bb.28:                               # %if.then186
	ld.hu	$a4, $a3, 0
	ld.hu	$t1, $a3, 2
	ld.hu	$t2, $a3, 4
	ld.hu	$t3, $a3, 6
	ld.hu	$t7, $a3, 8
	ld.hu	$t6, $a3, 10
	ld.hu	$t5, $a3, 12
	ld.hu	$t4, $a3, 14
	ori	$t8, $zero, 10
	blt	$a2, $t8, .LBB2_49
# %bb.29:                               # %for.body198.preheader
	slli.d	$t0, $t0, 2
	sub.d	$t0, $zero, $t0
	addi.d	$a0, $a0, 36
	addi.d	$a1, $a1, 36
	addi.d	$a2, $a2, -9
	b	.LBB2_32
	.p2align	4, , 16
.LBB2_30:                               # %if.else345
                                        #   in Loop: Header=BB2_32 Depth=1
	bltz	$s7, .LBB2_41
.LBB2_31:                               # %for.inc446
                                        #   in Loop: Header=BB2_32 Depth=1
	addi.d	$a0, $a0, 4
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	beqz	$a2, .LBB2_49
.LBB2_32:                               # %for.body198
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$s6, $a0, $t0
	ld.w	$t8, $a0, -4
	ld.w	$fp, $a0, -8
	ld.w	$s0, $a0, -12
	ld.w	$s1, $a0, -16
	sub.w	$t8, $s6, $t8
	sub.w	$fp, $s6, $fp
	sub.w	$s0, $s6, $s0
	sub.w	$s1, $s6, $s1
	ld.w	$s2, $a0, -20
	ld.w	$s3, $a0, -24
	ld.w	$s4, $a0, -28
	ld.w	$s5, $a0, -32
	sub.w	$s2, $s6, $s2
	sub.w	$s3, $s6, $s3
	sub.w	$s4, $s6, $s4
	sub.w	$s5, $s6, $s5
	ext.w.h	$s7, $a4
	ext.w.h	$s8, $t1
	mul.d	$s7, $t8, $s7
	mul.d	$s8, $fp, $s8
	add.d	$s7, $s8, $s7
	ext.w.h	$s8, $t2
	mul.d	$s8, $s0, $s8
	add.d	$s7, $s7, $s8
	ext.w.h	$s8, $t3
	mul.d	$s8, $s1, $s8
	add.d	$s7, $s7, $s8
	ext.w.h	$s8, $t7
	mul.d	$s8, $s2, $s8
	add.d	$s7, $s7, $s8
	ext.w.h	$s8, $t6
	mul.d	$s8, $s3, $s8
	add.d	$s7, $s7, $s8
	ext.w.h	$s8, $t5
	mul.d	$s8, $s4, $s8
	add.d	$s7, $s7, $s8
	ext.w.h	$s8, $t4
	mul.d	$s8, $s5, $s8
	add.d	$s7, $s7, $s8
	ld.w	$s8, $a0, 0
	sub.d	$s7, $a7, $s7
	sra.w	$s7, $s7, $a6
	add.d	$s6, $s6, $s7
	sub.d	$s6, $s8, $s6
	sll.w	$s6, $s6, $a5
	sra.w	$s6, $s6, $a5
	slt	$s8, $zero, $s6
	srai.d	$s7, $s6, 31
	or	$s8, $s7, $s8
	st.w	$s6, $a1, 0
	blez	$s8, .LBB2_30
# %bb.33:                               # %if.then256
                                        #   in Loop: Header=BB2_32 Depth=1
	slt	$s7, $zero, $s5
	srai.d	$s8, $s5, 31
	or	$s7, $s8, $s7
	mul.d	$s5, $s7, $s5
	sra.w	$s5, $s5, $a6
	sub.w	$s5, $s6, $s5
	sub.d	$t4, $t4, $s7
	blez	$s5, .LBB2_31
# %bb.34:                               # %if.end268
                                        #   in Loop: Header=BB2_32 Depth=1
	slt	$s6, $zero, $s4
	srai.d	$s7, $s4, 31
	or	$s6, $s7, $s6
	mul.d	$s4, $s6, $s4
	sra.w	$s4, $s4, $a6
	slli.d	$s4, $s4, 1
	sub.w	$s4, $s5, $s4
	sub.d	$t5, $t5, $s6
	blez	$s4, .LBB2_31
# %bb.35:                               # %if.end280
                                        #   in Loop: Header=BB2_32 Depth=1
	slt	$s5, $zero, $s3
	srai.d	$s6, $s3, 31
	or	$s5, $s6, $s5
	mul.d	$s3, $s5, $s3
	sra.w	$s3, $s3, $a6
	alsl.d	$s3, $s3, $s3, 1
	sub.w	$s3, $s4, $s3
	sub.d	$t6, $t6, $s5
	blez	$s3, .LBB2_31
# %bb.36:                               # %if.end292
                                        #   in Loop: Header=BB2_32 Depth=1
	slt	$s4, $zero, $s2
	srai.d	$s5, $s2, 31
	or	$s4, $s5, $s4
	mul.d	$s2, $s4, $s2
	sra.w	$s2, $s2, $a6
	slli.d	$s2, $s2, 2
	sub.w	$s2, $s3, $s2
	sub.d	$t7, $t7, $s4
	blez	$s2, .LBB2_31
# %bb.37:                               # %if.end304
                                        #   in Loop: Header=BB2_32 Depth=1
	slt	$s3, $zero, $s1
	srai.d	$s4, $s1, 31
	or	$s3, $s4, $s3
	mul.d	$s1, $s3, $s1
	sra.w	$s1, $s1, $a6
	alsl.d	$s1, $s1, $s1, 2
	sub.w	$s1, $s2, $s1
	sub.d	$t3, $t3, $s3
	blez	$s1, .LBB2_31
# %bb.38:                               # %if.end316
                                        #   in Loop: Header=BB2_32 Depth=1
	slt	$s2, $zero, $s0
	srai.d	$s3, $s0, 31
	or	$s2, $s3, $s2
	mul.d	$s0, $s2, $s0
	sra.w	$s0, $s0, $a6
	addi.d	$s3, $zero, -6
	mul.d	$s0, $s0, $s3
	add.w	$s0, $s1, $s0
	sub.d	$t2, $t2, $s2
	blez	$s0, .LBB2_31
# %bb.39:                               # %if.end328
                                        #   in Loop: Header=BB2_32 Depth=1
	slt	$s1, $zero, $fp
	srai.d	$s2, $fp, 31
	or	$s1, $s2, $s1
	mul.d	$fp, $s1, $fp
	sra.w	$fp, $fp, $a6
	slli.d	$s2, $fp, 3
	sub.d	$fp, $fp, $s2
	add.w	$fp, $s0, $fp
	sub.d	$t1, $t1, $s1
	blez	$fp, .LBB2_31
# %bb.40:                               # %if.end340
                                        #   in Loop: Header=BB2_32 Depth=1
	slt	$fp, $zero, $t8
	srai.d	$t8, $t8, 31
	or	$t8, $t8, $fp
	sub.d	$a4, $a4, $t8
	b	.LBB2_31
.LBB2_41:                               # %if.then348
                                        #   in Loop: Header=BB2_32 Depth=1
	slt	$s7, $zero, $s5
	srai.d	$s8, $s5, 31
	or	$s7, $s8, $s7
	mul.d	$s5, $s5, $s7
	sub.d	$s5, $zero, $s5
	sra.w	$s5, $s5, $a6
	sub.w	$s5, $s6, $s5
	add.d	$t4, $t4, $s7
	bgez	$s5, .LBB2_31
# %bb.42:                               # %if.end361
                                        #   in Loop: Header=BB2_32 Depth=1
	slt	$s6, $zero, $s4
	srai.d	$s7, $s4, 31
	or	$s6, $s7, $s6
	mul.d	$s4, $s4, $s6
	sub.d	$s4, $zero, $s4
	sra.w	$s4, $s4, $a6
	slli.d	$s4, $s4, 1
	sub.w	$s4, $s5, $s4
	add.d	$t5, $t5, $s6
	bgez	$s4, .LBB2_31
# %bb.43:                               # %if.end374
                                        #   in Loop: Header=BB2_32 Depth=1
	slt	$s5, $zero, $s3
	srai.d	$s6, $s3, 31
	or	$s5, $s6, $s5
	mul.d	$s3, $s3, $s5
	sub.d	$s3, $zero, $s3
	sra.w	$s3, $s3, $a6
	alsl.d	$s3, $s3, $s3, 1
	sub.w	$s3, $s4, $s3
	add.d	$t6, $t6, $s5
	bgez	$s3, .LBB2_31
# %bb.44:                               # %if.end387
                                        #   in Loop: Header=BB2_32 Depth=1
	slt	$s4, $zero, $s2
	srai.d	$s5, $s2, 31
	or	$s4, $s5, $s4
	mul.d	$s2, $s2, $s4
	sub.d	$s2, $zero, $s2
	sra.w	$s2, $s2, $a6
	slli.d	$s2, $s2, 2
	sub.w	$s2, $s3, $s2
	add.d	$t7, $t7, $s4
	bgez	$s2, .LBB2_31
# %bb.45:                               # %if.end400
                                        #   in Loop: Header=BB2_32 Depth=1
	slt	$s3, $zero, $s1
	srai.d	$s4, $s1, 31
	or	$s3, $s4, $s3
	mul.d	$s1, $s1, $s3
	sub.d	$s1, $zero, $s1
	sra.w	$s1, $s1, $a6
	alsl.d	$s1, $s1, $s1, 2
	sub.w	$s1, $s2, $s1
	add.d	$t3, $t3, $s3
	bgez	$s1, .LBB2_31
# %bb.46:                               # %if.end413
                                        #   in Loop: Header=BB2_32 Depth=1
	slt	$s2, $zero, $s0
	srai.d	$s3, $s0, 31
	or	$s2, $s3, $s2
	mul.d	$s0, $s0, $s2
	sub.d	$s0, $zero, $s0
	sra.w	$s0, $s0, $a6
	addi.d	$s3, $zero, -6
	mul.d	$s0, $s0, $s3
	add.w	$s0, $s1, $s0
	add.d	$t2, $t2, $s2
	bgez	$s0, .LBB2_31
# %bb.47:                               # %if.end426
                                        #   in Loop: Header=BB2_32 Depth=1
	slt	$s1, $zero, $fp
	srai.d	$s2, $fp, 31
	or	$s1, $s2, $s1
	mul.d	$fp, $fp, $s1
	sub.d	$fp, $zero, $fp
	sra.w	$fp, $fp, $a6
	slli.d	$s2, $fp, 3
	sub.d	$fp, $fp, $s2
	add.w	$fp, $s0, $fp
	add.d	$t1, $t1, $s1
	bgez	$fp, .LBB2_31
# %bb.48:                               # %if.end439
                                        #   in Loop: Header=BB2_32 Depth=1
	slt	$fp, $zero, $t8
	srai.d	$t8, $t8, 31
	or	$t8, $t8, $fp
	add.d	$a4, $a4, $t8
	b	.LBB2_31
.LBB2_49:                               # %for.end448
	st.h	$a4, $a3, 0
	st.h	$t1, $a3, 2
	st.h	$t2, $a3, 4
	st.h	$t3, $a3, 6
	st.h	$t7, $a3, 8
	st.h	$t6, $a3, 10
	st.h	$t5, $a3, 12
	st.h	$t4, $a3, 14
	b	.LBB2_99
.LBB2_50:                               # %if.then43
	ld.hu	$a4, $a3, 0
	ld.hu	$t1, $a3, 2
	ld.hu	$t2, $a3, 4
	ld.hu	$t3, $a3, 6
	ori	$t4, $zero, 6
	blt	$a2, $t4, .LBB2_63
# %bb.51:                               # %for.body51.preheader
	slli.d	$t0, $t0, 2
	sub.d	$t0, $zero, $t0
	addi.d	$a0, $a0, 20
	addi.d	$a1, $a1, 20
	addi.d	$a2, $a2, -5
	b	.LBB2_54
	.p2align	4, , 16
.LBB2_52:                               # %if.else
                                        #   in Loop: Header=BB2_54 Depth=1
	bltz	$fp, .LBB2_59
.LBB2_53:                               # %for.inc176
                                        #   in Loop: Header=BB2_54 Depth=1
	addi.d	$a0, $a0, 4
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	beqz	$a2, .LBB2_63
.LBB2_54:                               # %for.body51
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$t8, $a0, $t0
	ld.w	$t4, $a0, -4
	ld.w	$t5, $a0, -8
	ld.w	$t6, $a0, -12
	ld.w	$t7, $a0, -16
	sub.w	$t4, $t8, $t4
	sub.w	$t5, $t8, $t5
	sub.w	$t6, $t8, $t6
	sub.w	$t7, $t8, $t7
	ext.w.h	$fp, $a4
	ext.w.h	$s0, $t1
	ext.w.h	$s1, $t2
	ext.w.h	$s2, $t3
	mul.d	$fp, $t4, $fp
	mul.d	$s0, $t5, $s0
	mul.d	$s1, $t6, $s1
	mul.d	$s2, $t7, $s2
	add.d	$fp, $s0, $fp
	add.d	$fp, $fp, $s1
	add.d	$fp, $fp, $s2
	ld.w	$s0, $a0, 0
	sub.d	$fp, $a7, $fp
	sra.w	$fp, $fp, $a6
	add.d	$t8, $t8, $fp
	sub.d	$t8, $s0, $t8
	sll.w	$t8, $t8, $a5
	sra.w	$t8, $t8, $a5
	slt	$s0, $zero, $t8
	srai.d	$fp, $t8, 31
	or	$s0, $fp, $s0
	st.w	$t8, $a1, 0
	blez	$s0, .LBB2_52
# %bb.55:                               # %if.then87
                                        #   in Loop: Header=BB2_54 Depth=1
	slt	$fp, $zero, $t7
	srai.d	$s0, $t7, 31
	or	$fp, $s0, $fp
	mul.d	$t7, $fp, $t7
	sra.w	$t7, $t7, $a6
	sub.w	$t7, $t8, $t7
	sub.d	$t3, $t3, $fp
	blez	$t7, .LBB2_53
# %bb.56:                               # %if.end99
                                        #   in Loop: Header=BB2_54 Depth=1
	slt	$t8, $zero, $t6
	srai.d	$fp, $t6, 31
	or	$t8, $fp, $t8
	mul.d	$t6, $t8, $t6
	sra.w	$t6, $t6, $a6
	slli.d	$t6, $t6, 1
	sub.w	$t6, $t7, $t6
	sub.d	$t2, $t2, $t8
	blez	$t6, .LBB2_53
# %bb.57:                               # %if.end111
                                        #   in Loop: Header=BB2_54 Depth=1
	slt	$t7, $zero, $t5
	srai.d	$t8, $t5, 31
	or	$t7, $t8, $t7
	mul.d	$t5, $t7, $t5
	sra.w	$t5, $t5, $a6
	alsl.d	$t5, $t5, $t5, 1
	sub.w	$t5, $t6, $t5
	sub.d	$t1, $t1, $t7
	blez	$t5, .LBB2_53
# %bb.58:                               # %if.end123
                                        #   in Loop: Header=BB2_54 Depth=1
	slt	$t5, $zero, $t4
	srai.d	$t4, $t4, 31
	or	$t4, $t4, $t5
	sub.d	$a4, $a4, $t4
	b	.LBB2_53
.LBB2_59:                               # %if.then130
                                        #   in Loop: Header=BB2_54 Depth=1
	slt	$fp, $zero, $t7
	srai.d	$s0, $t7, 31
	or	$fp, $s0, $fp
	mul.d	$t7, $t7, $fp
	sub.d	$t7, $zero, $t7
	sra.w	$t7, $t7, $a6
	sub.w	$t7, $t8, $t7
	add.d	$t3, $t3, $fp
	bgez	$t7, .LBB2_53
# %bb.60:                               # %if.end143
                                        #   in Loop: Header=BB2_54 Depth=1
	slt	$t8, $zero, $t6
	srai.d	$fp, $t6, 31
	or	$t8, $fp, $t8
	mul.d	$t6, $t6, $t8
	sub.d	$t6, $zero, $t6
	sra.w	$t6, $t6, $a6
	slli.d	$t6, $t6, 1
	sub.w	$t6, $t7, $t6
	add.d	$t2, $t2, $t8
	bgez	$t6, .LBB2_53
# %bb.61:                               # %if.end156
                                        #   in Loop: Header=BB2_54 Depth=1
	slt	$t7, $zero, $t5
	srai.d	$t8, $t5, 31
	or	$t7, $t8, $t7
	mul.d	$t5, $t5, $t7
	sub.d	$t5, $zero, $t5
	sra.w	$t5, $t5, $a6
	alsl.d	$t5, $t5, $t5, 1
	sub.w	$t5, $t6, $t5
	add.d	$t1, $t1, $t7
	bgez	$t5, .LBB2_53
# %bb.62:                               # %if.end169
                                        #   in Loop: Header=BB2_54 Depth=1
	slt	$t5, $zero, $t4
	srai.d	$t4, $t4, 31
	or	$t4, $t4, $t5
	add.d	$a4, $a4, $t4
	b	.LBB2_53
.LBB2_63:                               # %for.end178
	st.h	$a4, $a3, 0
	st.h	$t1, $a3, 2
	st.h	$t2, $a3, 4
	st.h	$t3, $a3, 6
	b	.LBB2_99
.LBB2_64:                               # %for.cond458.preheader
	bge	$t0, $a2, .LBB2_99
# %bb.65:                               # %for.body461.lr.ph
	bstrpick.d	$t1, $s3, 31, 0
	andi	$a4, $s3, 12
	st.d	$a4, $sp, 8                     # 8-byte Folded Spill
	bstrpick.d	$a4, $s3, 30, 4
	slli.d	$t3, $a4, 4
	bstrpick.d	$a4, $s3, 30, 2
	slli.d	$t4, $a4, 2
	slli.d	$a4, $t0, 2
	alsl.d	$t5, $t0, $a0, 2
	addi.d	$t6, $t5, -32
	sub.d	$t2, $zero, $t4
	st.d	$t2, $sp, 16                    # 8-byte Folded Spill
	addi.d	$t8, $t5, -16
	addi.d	$fp, $t5, -4
	alsl.d	$t5, $s3, $a3, 1
	addi.d	$s0, $t5, -2
	slli.d	$t5, $s3, 2
	sub.d	$a4, $a4, $t5
	add.d	$s1, $a0, $a4
	vrepli.b	$vr0, 0
	xvrepli.b	$xr1, 0
	move	$s4, $t0
	b	.LBB2_68
	.p2align	4, , 16
.LBB2_66:                               # %if.else524
                                        #   in Loop: Header=BB2_68 Depth=1
	bltz	$a4, .LBB2_87
.LBB2_67:                               # %for.inc558
                                        #   in Loop: Header=BB2_68 Depth=1
	addi.d	$s4, $s4, 1
	addi.w	$a4, $s4, 0
	addi.d	$t6, $t6, 4
	addi.d	$t8, $t8, 4
	addi.d	$fp, $fp, 4
	addi.d	$s1, $s1, 4
	beq	$a2, $a4, .LBB2_99
.LBB2_68:                               # %for.body461
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_75 Depth 2
                                        #     Child Loop BB2_79 Depth 2
                                        #     Child Loop BB2_82 Depth 2
                                        #     Child Loop BB2_88 Depth 2
                                        #     Child Loop BB2_85 Depth 2
	sub.d	$a4, $s4, $t0
	slli.d	$a4, $a4, 2
	ldx.w	$s5, $a0, $a4
	blez	$s3, .LBB2_71
# %bb.69:                               # %iter.check620
                                        #   in Loop: Header=BB2_68 Depth=1
	ori	$a4, $zero, 4
	bgeu	$s3, $a4, .LBB2_72
# %bb.70:                               #   in Loop: Header=BB2_68 Depth=1
	move	$s8, $zero
	move	$s6, $zero
	b	.LBB2_81
	.p2align	4, , 16
.LBB2_71:                               #   in Loop: Header=BB2_68 Depth=1
	move	$s6, $zero
	b	.LBB2_83
	.p2align	4, , 16
.LBB2_72:                               # %vector.main.loop.iter.check622
                                        #   in Loop: Header=BB2_68 Depth=1
	ori	$a4, $zero, 16
	bgeu	$s3, $a4, .LBB2_74
# %bb.73:                               #   in Loop: Header=BB2_68 Depth=1
	move	$s7, $zero
	move	$s6, $zero
	b	.LBB2_78
.LBB2_74:                               # %vector.ph623
                                        #   in Loop: Header=BB2_68 Depth=1
	xvreplgr2vr.w	$xr2, $s5
	move	$s6, $t6
	addi.d	$s7, $a3, 16
	move	$s8, $t3
	xvori.b	$xr3, $xr1, 0
	xvori.b	$xr4, $xr1, 0
	.p2align	4, , 16
.LBB2_75:                               # %vector.body628
                                        #   Parent Loop BB2_68 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr5, $s7, -16
	vld	$vr6, $s7, 0
	vpickve2gr.h	$a4, $vr5, 4
	ext.w.h	$a4, $a4
	vinsgr2vr.w	$vr7, $a4, 0
	vpickve2gr.h	$a4, $vr5, 5
	ext.w.h	$a4, $a4
	vinsgr2vr.w	$vr7, $a4, 1
	vpickve2gr.h	$a4, $vr5, 6
	ext.w.h	$a4, $a4
	vinsgr2vr.w	$vr7, $a4, 2
	vpickve2gr.h	$a4, $vr5, 7
	ext.w.h	$a4, $a4
	vinsgr2vr.w	$vr7, $a4, 3
	vpickve2gr.h	$a4, $vr5, 0
	ext.w.h	$a4, $a4
	vinsgr2vr.w	$vr8, $a4, 0
	vpickve2gr.h	$a4, $vr5, 1
	ext.w.h	$a4, $a4
	vinsgr2vr.w	$vr8, $a4, 1
	vpickve2gr.h	$a4, $vr5, 2
	ext.w.h	$a4, $a4
	vinsgr2vr.w	$vr8, $a4, 2
	vpickve2gr.h	$a4, $vr5, 3
	ext.w.h	$a4, $a4
	vinsgr2vr.w	$vr8, $a4, 3
	xvpermi.q	$xr8, $xr7, 2
	vpickve2gr.h	$a4, $vr6, 4
	ext.w.h	$a4, $a4
	vinsgr2vr.w	$vr5, $a4, 0
	vpickve2gr.h	$a4, $vr6, 5
	ext.w.h	$a4, $a4
	vinsgr2vr.w	$vr5, $a4, 1
	vpickve2gr.h	$a4, $vr6, 6
	ext.w.h	$a4, $a4
	vinsgr2vr.w	$vr5, $a4, 2
	vpickve2gr.h	$a4, $vr6, 7
	ext.w.h	$a4, $a4
	vinsgr2vr.w	$vr5, $a4, 3
	vpickve2gr.h	$a4, $vr6, 0
	ext.w.h	$a4, $a4
	vinsgr2vr.w	$vr7, $a4, 0
	vpickve2gr.h	$a4, $vr6, 1
	ext.w.h	$a4, $a4
	vinsgr2vr.w	$vr7, $a4, 1
	vpickve2gr.h	$a4, $vr6, 2
	ext.w.h	$a4, $a4
	vinsgr2vr.w	$vr7, $a4, 2
	vpickve2gr.h	$a4, $vr6, 3
	ext.w.h	$a4, $a4
	xvld	$xr6, $s6, 0
	vinsgr2vr.w	$vr7, $a4, 3
	xvld	$xr9, $s6, -32
	xvpermi.q	$xr7, $xr5, 2
	xvpermi.d	$xr5, $xr6, 78
	xvshuf4i.w	$xr5, $xr5, 27
	xvpermi.d	$xr6, $xr9, 78
	xvshuf4i.w	$xr6, $xr6, 27
	xvsub.w	$xr5, $xr5, $xr2
	xvsub.w	$xr6, $xr6, $xr2
	xvmadd.w	$xr3, $xr5, $xr8
	xvmadd.w	$xr4, $xr6, $xr7
	addi.d	$s8, $s8, -16
	addi.d	$s7, $s7, 32
	addi.d	$s6, $s6, -64
	bnez	$s8, .LBB2_75
# %bb.76:                               # %middle.block637
                                        #   in Loop: Header=BB2_68 Depth=1
	xvadd.w	$xr2, $xr4, $xr3
	xvhaddw.d.w	$xr2, $xr2, $xr2
	xvhaddw.q.d	$xr2, $xr2, $xr2
	xvpermi.d	$xr3, $xr2, 2
	xvadd.d	$xr2, $xr3, $xr2
	xvpickve2gr.d	$s6, $xr2, 0
	beq	$t3, $t1, .LBB2_83
# %bb.77:                               # %vec.epilog.iter.check641
                                        #   in Loop: Header=BB2_68 Depth=1
	move	$s7, $t3
	move	$s8, $t3
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	beqz	$a4, .LBB2_81
.LBB2_78:                               # %vec.epilog.ph643
                                        #   in Loop: Header=BB2_68 Depth=1
	vori.b	$vr2, $vr0, 0
	vinsgr2vr.w	$vr2, $s6, 0
	vreplgr2vr.w	$vr3, $s5
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	add.d	$a4, $a4, $s7
	slli.d	$s6, $s7, 2
	sub.d	$s6, $t8, $s6
	alsl.d	$s7, $s7, $a3, 1
	.p2align	4, , 16
.LBB2_79:                               # %vec.epilog.vector.body648
                                        #   Parent Loop BB2_68 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s8, $s7, 0
	vinsgr2vr.d	$vr4, $s8, 0
	vld	$vr5, $s6, 0
	vilvl.h	$vr4, $vr4, $vr4
	vslli.w	$vr4, $vr4, 16
	vsrai.w	$vr4, $vr4, 16
	vshuf4i.w	$vr5, $vr5, 27
	vsub.w	$vr5, $vr5, $vr3
	vmadd.w	$vr2, $vr5, $vr4
	addi.d	$a4, $a4, 4
	addi.d	$s6, $s6, -16
	addi.d	$s7, $s7, 8
	bnez	$a4, .LBB2_79
# %bb.80:                               # %vec.epilog.middle.block655
                                        #   in Loop: Header=BB2_68 Depth=1
	vhaddw.d.w	$vr2, $vr2, $vr2
	vhaddw.q.d	$vr2, $vr2, $vr2
	vpickve2gr.d	$s6, $vr2, 0
	move	$s8, $t4
	beq	$t4, $t1, .LBB2_83
.LBB2_81:                               # %for.body471.preheader
                                        #   in Loop: Header=BB2_68 Depth=1
	slli.d	$a4, $s8, 2
	sub.d	$a4, $fp, $a4
	alsl.d	$s7, $s8, $a3, 1
	sub.d	$s8, $t1, $s8
	.p2align	4, , 16
.LBB2_82:                               # %for.body471
                                        #   Parent Loop BB2_68 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$ra, $a4, 0
	ld.h	$t2, $s7, 0
	sub.d	$ra, $ra, $s5
	mul.d	$t2, $ra, $t2
	add.d	$s6, $t2, $s6
	addi.d	$a4, $a4, -4
	addi.d	$s8, $s8, -1
	addi.d	$s7, $s7, 2
	bnez	$s8, .LBB2_82
.LBB2_83:                               # %for.end483
                                        #   in Loop: Header=BB2_68 Depth=1
	alsl.d	$a4, $s4, $a0, 2
	ld.w	$a4, $a4, 0
	add.d	$t2, $s6, $a7
	sra.w	$t2, $t2, $a6
	add.d	$t2, $t2, $s5
	sub.d	$a4, $a4, $t2
	sll.w	$a4, $a4, $a5
	sra.w	$s6, $a4, $a5
	slli.d	$t2, $s4, 2
	slt	$s7, $zero, $s6
	srai.d	$a4, $s6, 31
	or	$s7, $a4, $s7
	stx.w	$s6, $a1, $t2
	blez	$s7, .LBB2_66
# %bb.84:                               # %for.cond499.preheader
                                        #   in Loop: Header=BB2_68 Depth=1
	move	$s7, $zero
	addi.d	$s8, $zero, -1
	move	$ra, $s0
	move	$a4, $s3
	.p2align	4, , 16
.LBB2_85:                               # %for.cond499
                                        #   Parent Loop BB2_68 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	blez	$a4, .LBB2_67
# %bb.86:                               # %for.body502
                                        #   in Loop: Header=BB2_85 Depth=2
	ldx.w	$t2, $s1, $s7
	sub.w	$t2, $s5, $t2
	slt	$t5, $zero, $t2
	ld.h	$t7, $ra, 0
	srai.d	$s2, $t2, 31
	or	$t5, $s2, $t5
	addi.d	$a4, $a4, -1
	sub.d	$t7, $t7, $t5
	st.h	$t7, $ra, 0
	mul.d	$t2, $t5, $t2
	sra.w	$t2, $t2, $a6
	mul.d	$t2, $t2, $s8
	add.w	$s6, $t2, $s6
	addi.d	$s8, $s8, -1
	addi.d	$ra, $ra, -2
	addi.d	$s7, $s7, 4
	bgtz	$s6, .LBB2_85
	b	.LBB2_67
.LBB2_87:                               # %for.cond529.preheader
                                        #   in Loop: Header=BB2_68 Depth=1
	addi.d	$s7, $zero, -1
	move	$s8, $s1
	move	$ra, $s0
	move	$a4, $s3
	.p2align	4, , 16
.LBB2_88:                               # %for.cond529
                                        #   Parent Loop BB2_68 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	blez	$a4, .LBB2_67
# %bb.89:                               # %for.body532
                                        #   in Loop: Header=BB2_88 Depth=2
	ld.w	$t2, $s8, 0
	sub.w	$t2, $s5, $t2
	slt	$t5, $zero, $t2
	ld.h	$t7, $ra, 0
	srai.d	$s2, $t2, 31
	or	$t5, $s2, $t5
	addi.d	$a4, $a4, -1
	add.d	$t7, $t7, $t5
	st.h	$t7, $ra, 0
	mul.d	$t2, $t2, $t5
	sub.d	$t2, $zero, $t2
	sra.w	$t2, $t2, $a6
	mul.d	$t2, $t2, $s7
	add.w	$s6, $t2, $s6
	addi.d	$s7, $s7, -1
	addi.d	$ra, $ra, -2
	addi.d	$s8, $s8, 4
	bltz	$s6, .LBB2_88
	b	.LBB2_67
.LBB2_90:                               # %vector.ph
	andi	$a6, $a3, 12
	move	$a4, $a3
	bstrins.d	$a4, $zero, 3, 0
	xvreplgr2vr.w	$xr0, $a5
	addi.d	$a7, $a0, 32
	addi.d	$t0, $a1, 36
	move	$t1, $a4
	.p2align	4, , 16
.LBB2_91:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a7, -28
	xvld	$xr2, $a7, 4
	xvld	$xr3, $a7, -32
	xvld	$xr4, $a7, 0
	xvsub.w	$xr1, $xr1, $xr3
	xvsub.w	$xr2, $xr2, $xr4
	xvsll.w	$xr1, $xr1, $xr0
	xvsll.w	$xr2, $xr2, $xr0
	xvsra.w	$xr1, $xr1, $xr0
	xvsra.w	$xr2, $xr2, $xr0
	xvst	$xr1, $t0, -32
	xvst	$xr2, $t0, 0
	addi.d	$a7, $a7, 64
	addi.d	$t1, $t1, -16
	addi.d	$t0, $t0, 64
	bnez	$t1, .LBB2_91
# %bb.92:                               # %middle.block
	beq	$a3, $a4, .LBB2_99
# %bb.93:                               # %vec.epilog.iter.check
	beqz	$a6, .LBB2_101
.LBB2_94:                               # %vec.epilog.ph
	move	$a7, $a3
	bstrins.d	$a7, $zero, 1, 0
	ori	$t0, $zero, 1
	move	$a6, $a3
	bstrins.d	$a6, $t0, 1, 0
	vreplgr2vr.w	$vr0, $a5
	slli.d	$t0, $a4, 2
	addi.d	$t1, $t0, 4
	add.d	$t0, $a0, $t1
	add.d	$t1, $a1, $t1
	sub.d	$a4, $a4, $a7
	.p2align	4, , 16
.LBB2_95:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $t0, 0
	vld	$vr2, $t0, -4
	vsub.w	$vr1, $vr1, $vr2
	vsll.w	$vr1, $vr1, $vr0
	vsra.w	$vr1, $vr1, $vr0
	vst	$vr1, $t1, 0
	addi.d	$t0, $t0, 16
	addi.d	$a4, $a4, 4
	addi.d	$t1, $t1, 16
	bnez	$a4, .LBB2_95
# %bb.96:                               # %vec.epilog.middle.block
	beq	$a3, $a7, .LBB2_99
.LBB2_97:                               # %for.body.preheader
	alsl.d	$a1, $a6, $a1, 2
	alsl.d	$a0, $a6, $a0, 2
	sub.d	$a2, $a2, $a6
	.p2align	4, , 16
.LBB2_98:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a0, 0
	ld.w	$a4, $a0, -4
	sub.d	$a3, $a3, $a4
	sll.w	$a3, $a3, $a5
	sra.w	$a3, $a3, $a5
	st.w	$a3, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	bnez	$a2, .LBB2_98
.LBB2_99:                               # %cleanup
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
.LBB2_100:
	addi.d	$t5, $t4, 1
	b	.LBB2_24
.LBB2_101:
	addi.d	$a6, $a4, 1
	b	.LBB2_97
.Lfunc_end2:
	.size	pc_block, .Lfunc_end2-pc_block
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
