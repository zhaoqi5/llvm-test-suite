	.file	"dp_dec.c"
	.text
	.globl	unpc_block                      # -- Begin function unpc_block
	.p2align	5
	.type	unpc_block,@function
unpc_block:                             # @unpc_block
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
	ld.w	$a7, $a0, 0
	st.w	$a7, $a1, 0
	beqz	$a4, .LBB0_5
# %bb.1:                                # %entry
	move	$s4, $a4
	ori	$a4, $zero, 32
	ori	$t0, $zero, 31
	sub.d	$a5, $a4, $a5
	bne	$s4, $t0, .LBB0_8
# %bb.2:                                # %for.cond.preheader
	ori	$a3, $zero, 2
	blt	$a2, $a3, .LBB0_76
# %bb.3:                                # %for.body.preheader
	addi.d	$a1, $a1, 4
	addi.d	$a0, $a0, 4
	addi.d	$a2, $a2, -1
	.p2align	4, , 16
.LBB0_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a0, 0
	add.d	$a3, $a3, $a7
	sll.w	$a3, $a3, $a5
	sra.w	$a7, $a3, $a5
	st.w	$a7, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	bnez	$a2, .LBB0_4
	b	.LBB0_76
.LBB0_5:                                # %if.then
	beq	$a0, $a1, .LBB0_76
# %bb.6:                                # %if.then
	ori	$a3, $zero, 2
	blt	$a2, $a3, .LBB0_76
# %bb.7:                                # %if.then5
	addi.d	$a3, $a1, 4
	addi.d	$a1, $a0, 4
	slli.d	$a0, $a2, 2
	addi.d	$a2, $a0, -4
	move	$a0, $a3
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
	pcaddu18i	$t8, %call36(memcpy)
	jr	$t8
.LBB0_8:                                # %for.cond21.preheader
	addi.d	$a7, $a6, -1
	ori	$t0, $zero, 1
	ori	$a4, $zero, 1
	addi.w	$t7, $s4, 1
	blt	$s4, $a4, .LBB0_11
# %bb.9:                                # %for.body24.preheader
	bstrpick.d	$t3, $t7, 31, 0
	ld.w	$t2, $a1, 0
	addi.d	$a4, $a0, 4
	addi.d	$t1, $a1, 4
	addi.d	$t3, $t3, -1
	.p2align	4, , 16
.LBB0_10:                               # %for.body24
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t4, $a4, 0
	add.d	$t2, $t2, $t4
	sll.w	$t2, $t2, $a5
	sra.w	$t2, $t2, $a5
	st.w	$t2, $t1, 0
	addi.d	$a4, $a4, 4
	addi.d	$t3, $t3, -1
	addi.d	$t1, $t1, 4
	bnez	$t3, .LBB0_10
.LBB0_11:                               # %for.end37
	ori	$a4, $zero, 4
	sll.w	$a7, $t0, $a7
	beq	$s4, $a4, .LBB0_36
# %bb.12:                               # %for.end37
	ori	$a4, $zero, 8
	bne	$s4, $a4, .LBB0_50
# %bb.13:                               # %if.then192
	ld.hu	$a4, $a3, 0
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
	ld.hu	$t0, $a3, 2
	ld.hu	$t1, $a3, 4
	ld.hu	$t2, $a3, 6
	ld.hu	$t6, $a3, 8
	ld.hu	$t5, $a3, 10
	ld.hu	$t4, $a3, 12
	ld.hu	$t3, $a3, 14
	ori	$t8, $zero, 10
	blt	$a2, $t8, .LBB0_35
# %bb.14:                               # %for.body204.preheader
	ld.w	$fp, $a1, 32
	slli.d	$t7, $t7, 2
	sub.d	$a4, $zero, $t7
	st.d	$a4, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a1, $a1, 36
	addi.d	$a0, $a0, 36
	addi.d	$a2, $a2, -9
	ori	$t8, $zero, 1
	b	.LBB0_17
	.p2align	4, , 16
.LBB0_15:                               # %if.else351
                                        #   in Loop: Header=BB0_17 Depth=1
	addi.w	$s6, $zero, -1
	bge	$s6, $t7, .LBB0_27
.LBB0_16:                               # %for.inc452
                                        #   in Loop: Header=BB0_17 Depth=1
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	beqz	$a2, .LBB0_35
.LBB0_17:                               # %for.body204
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	ldx.w	$s6, $a1, $a4
	ld.w	$t7, $a1, -8
	ld.w	$s2, $a1, -12
	ld.w	$s3, $a1, -16
	sub.w	$s0, $s6, $fp
	sub.w	$s1, $s6, $t7
	sub.w	$s2, $s6, $s2
	sub.w	$s3, $s6, $s3
	ld.w	$t7, $a1, -20
	ld.w	$fp, $a1, -24
	ld.w	$s7, $a1, -28
	ld.w	$s8, $a1, -32
	sub.w	$s4, $s6, $t7
	sub.w	$s5, $s6, $fp
	sub.w	$s7, $s6, $s7
	sub.w	$s8, $s6, $s8
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	ext.w.h	$t7, $a4
	ext.w.h	$fp, $t0
	ext.w.h	$ra, $t1
	mul.d	$t7, $s0, $t7
	mul.d	$fp, $s1, $fp
	add.d	$t7, $fp, $t7
	ext.w.h	$fp, $t2
	mul.d	$ra, $s2, $ra
	add.d	$t7, $t7, $ra
	ext.w.h	$ra, $t6
	mul.d	$fp, $s3, $fp
	add.d	$t7, $t7, $fp
	ext.w.h	$fp, $t5
	mul.d	$ra, $s4, $ra
	add.d	$t7, $t7, $ra
	ext.w.h	$ra, $t4
	mul.d	$fp, $s5, $fp
	add.d	$t7, $t7, $fp
	ext.w.h	$fp, $t3
	mul.d	$ra, $s7, $ra
	mul.d	$fp, $s8, $fp
	add.d	$t7, $t7, $ra
	ld.w	$ra, $a0, 0
	add.d	$t7, $t7, $fp
	sub.d	$t7, $a7, $t7
	sra.w	$t7, $t7, $a6
	slt	$fp, $zero, $ra
	add.d	$s6, $ra, $s6
	add.d	$s6, $s6, $t7
	srai.d	$t7, $ra, 31
	or	$a4, $t7, $fp
	sll.w	$fp, $s6, $a5
	sra.w	$fp, $fp, $a5
	st.w	$fp, $a1, 0
	blt	$a4, $t8, .LBB0_15
# %bb.18:                               # %if.then262
                                        #   in Loop: Header=BB0_17 Depth=1
	slt	$a4, $zero, $s8
	srai.d	$t7, $s8, 31
	or	$a4, $t7, $a4
	mul.d	$t7, $a4, $s8
	sra.w	$t7, $t7, $a6
	sub.w	$s6, $ra, $t7
	sub.d	$t3, $t3, $a4
	blt	$s6, $t8, .LBB0_16
# %bb.19:                               # %if.end274
                                        #   in Loop: Header=BB0_17 Depth=1
	slt	$a4, $zero, $s7
	srai.d	$t7, $s7, 31
	or	$a4, $t7, $a4
	mul.d	$t7, $a4, $s7
	sra.w	$t7, $t7, $a6
	slli.d	$t7, $t7, 1
	sub.w	$s6, $s6, $t7
	sub.d	$t4, $t4, $a4
	blt	$s6, $t8, .LBB0_16
# %bb.20:                               # %if.end286
                                        #   in Loop: Header=BB0_17 Depth=1
	slt	$a4, $zero, $s5
	srai.d	$t7, $s5, 31
	or	$a4, $t7, $a4
	mul.d	$t7, $a4, $s5
	sra.w	$t7, $t7, $a6
	alsl.d	$t7, $t7, $t7, 1
	sub.w	$s5, $s6, $t7
	sub.d	$t5, $t5, $a4
	blt	$s5, $t8, .LBB0_16
# %bb.21:                               # %if.end298
                                        #   in Loop: Header=BB0_17 Depth=1
	slt	$a4, $zero, $s4
	srai.d	$t7, $s4, 31
	or	$a4, $t7, $a4
	mul.d	$t7, $a4, $s4
	sra.w	$t7, $t7, $a6
	slli.d	$t7, $t7, 2
	sub.w	$s4, $s5, $t7
	sub.d	$t6, $t6, $a4
	blt	$s4, $t8, .LBB0_16
# %bb.22:                               # %if.end310
                                        #   in Loop: Header=BB0_17 Depth=1
	slt	$a4, $zero, $s3
	srai.d	$t7, $s3, 31
	or	$a4, $t7, $a4
	mul.d	$t7, $a4, $s3
	sra.w	$t7, $t7, $a6
	alsl.d	$t7, $t7, $t7, 2
	sub.w	$s3, $s4, $t7
	sub.d	$t2, $t2, $a4
	blt	$s3, $t8, .LBB0_16
# %bb.23:                               # %if.end322
                                        #   in Loop: Header=BB0_17 Depth=1
	slt	$a4, $zero, $s2
	srai.d	$t7, $s2, 31
	or	$a4, $t7, $a4
	mul.d	$t7, $a4, $s2
	sra.w	$t7, $t7, $a6
	addi.d	$s2, $zero, -6
	mul.d	$t7, $t7, $s2
	add.w	$s2, $s3, $t7
	sub.d	$t1, $t1, $a4
	blt	$s2, $t8, .LBB0_16
# %bb.24:                               # %if.end334
                                        #   in Loop: Header=BB0_17 Depth=1
	slt	$a4, $zero, $s1
	srai.d	$t7, $s1, 31
	or	$a4, $t7, $a4
	mul.d	$t7, $a4, $s1
	sra.w	$t7, $t7, $a6
	slli.d	$s1, $t7, 3
	sub.d	$t7, $t7, $s1
	add.w	$t7, $s2, $t7
	sub.d	$t0, $t0, $a4
	blt	$t7, $t8, .LBB0_16
# %bb.25:                               # %if.end346
                                        #   in Loop: Header=BB0_17 Depth=1
	slt	$a4, $zero, $s0
	srai.d	$t7, $s0, 31
	or	$a4, $t7, $a4
	ld.d	$t7, $sp, 32                    # 8-byte Folded Reload
	sub.d	$t7, $t7, $a4
.LBB0_26:                               # %for.inc452
                                        #   in Loop: Header=BB0_17 Depth=1
	st.d	$t7, $sp, 32                    # 8-byte Folded Spill
	b	.LBB0_16
.LBB0_27:                               # %if.then354
                                        #   in Loop: Header=BB0_17 Depth=1
	slt	$a4, $zero, $s8
	srai.d	$t7, $s8, 31
	or	$a4, $t7, $a4
	mul.d	$t7, $s8, $a4
	sub.d	$t7, $zero, $t7
	sra.w	$t7, $t7, $a6
	sub.w	$s8, $ra, $t7
	add.d	$t3, $t3, $a4
	blt	$s6, $s8, .LBB0_16
# %bb.28:                               # %if.end367
                                        #   in Loop: Header=BB0_17 Depth=1
	slt	$a4, $zero, $s7
	srai.d	$t7, $s7, 31
	or	$a4, $t7, $a4
	mul.d	$t7, $s7, $a4
	sub.d	$t7, $zero, $t7
	sra.w	$t7, $t7, $a6
	slli.d	$t7, $t7, 1
	sub.w	$s7, $s8, $t7
	add.d	$t4, $t4, $a4
	blt	$s6, $s7, .LBB0_16
# %bb.29:                               # %if.end380
                                        #   in Loop: Header=BB0_17 Depth=1
	slt	$a4, $zero, $s5
	srai.d	$t7, $s5, 31
	or	$a4, $t7, $a4
	mul.d	$t7, $s5, $a4
	sub.d	$t7, $zero, $t7
	sra.w	$t7, $t7, $a6
	alsl.d	$t7, $t7, $t7, 1
	sub.w	$s5, $s7, $t7
	add.d	$t5, $t5, $a4
	blt	$s6, $s5, .LBB0_16
# %bb.30:                               # %if.end393
                                        #   in Loop: Header=BB0_17 Depth=1
	slt	$a4, $zero, $s4
	srai.d	$t7, $s4, 31
	or	$a4, $t7, $a4
	mul.d	$t7, $s4, $a4
	sub.d	$t7, $zero, $t7
	sra.w	$t7, $t7, $a6
	slli.d	$t7, $t7, 2
	sub.w	$s4, $s5, $t7
	add.d	$t6, $t6, $a4
	blt	$s6, $s4, .LBB0_16
# %bb.31:                               # %if.end406
                                        #   in Loop: Header=BB0_17 Depth=1
	slt	$a4, $zero, $s3
	srai.d	$t7, $s3, 31
	or	$a4, $t7, $a4
	mul.d	$t7, $s3, $a4
	sub.d	$t7, $zero, $t7
	sra.w	$t7, $t7, $a6
	alsl.d	$t7, $t7, $t7, 2
	sub.w	$s3, $s4, $t7
	add.d	$t2, $t2, $a4
	blt	$s6, $s3, .LBB0_16
# %bb.32:                               # %if.end419
                                        #   in Loop: Header=BB0_17 Depth=1
	slt	$a4, $zero, $s2
	srai.d	$t7, $s2, 31
	or	$a4, $t7, $a4
	mul.d	$t7, $s2, $a4
	sub.d	$t7, $zero, $t7
	sra.w	$t7, $t7, $a6
	addi.d	$s2, $zero, -6
	mul.d	$t7, $t7, $s2
	add.w	$s2, $s3, $t7
	add.d	$t1, $t1, $a4
	blt	$s6, $s2, .LBB0_16
# %bb.33:                               # %if.end432
                                        #   in Loop: Header=BB0_17 Depth=1
	slt	$a4, $zero, $s1
	srai.d	$t7, $s1, 31
	or	$a4, $t7, $a4
	mul.d	$t7, $s1, $a4
	sub.d	$t7, $zero, $t7
	sra.w	$t7, $t7, $a6
	slli.d	$s1, $t7, 3
	sub.d	$t7, $t7, $s1
	add.w	$t7, $s2, $t7
	add.d	$t0, $t0, $a4
	blt	$s6, $t7, .LBB0_16
# %bb.34:                               # %if.end445
                                        #   in Loop: Header=BB0_17 Depth=1
	slt	$a4, $zero, $s0
	srai.d	$t7, $s0, 31
	or	$a4, $t7, $a4
	ld.d	$t7, $sp, 32                    # 8-byte Folded Reload
	add.d	$t7, $t7, $a4
	b	.LBB0_26
.LBB0_35:                               # %for.end454
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.h	$a0, $a3, 0
	st.h	$t0, $a3, 2
	st.h	$t1, $a3, 4
	st.h	$t2, $a3, 6
	st.h	$t6, $a3, 8
	st.h	$t5, $a3, 10
	st.h	$t4, $a3, 12
	st.h	$t3, $a3, 14
	b	.LBB0_76
.LBB0_36:                               # %if.then41
	ld.hu	$t2, $a3, 0
	ld.hu	$t1, $a3, 2
	ld.hu	$t0, $a3, 4
	ld.hu	$a4, $a3, 6
	ori	$t3, $zero, 6
	blt	$a2, $t3, .LBB0_49
# %bb.37:                               # %for.body57.preheader
	ld.w	$t5, $a1, 16
	slli.d	$t3, $t7, 2
	sub.d	$t3, $zero, $t3
	addi.d	$a1, $a1, 20
	addi.d	$a0, $a0, 20
	addi.d	$a2, $a2, -5
	ori	$t4, $zero, 1
	b	.LBB0_40
	.p2align	4, , 16
.LBB0_38:                               # %if.else
                                        #   in Loop: Header=BB0_40 Depth=1
	addi.w	$s0, $zero, -1
	bge	$s0, $s2, .LBB0_45
.LBB0_39:                               # %for.inc182
                                        #   in Loop: Header=BB0_40 Depth=1
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	beqz	$a2, .LBB0_49
.LBB0_40:                               # %for.body57
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$s0, $a1, $t3
	ld.w	$t7, $a1, -8
	ld.w	$t8, $a1, -12
	ld.w	$fp, $a1, -16
	sub.w	$t6, $s0, $t5
	sub.w	$t7, $s0, $t7
	sub.w	$t8, $s0, $t8
	sub.w	$fp, $s0, $fp
	ext.w.h	$t5, $t2
	ext.w.h	$s1, $t1
	ext.w.h	$s2, $t0
	ext.w.h	$s3, $a4
	mul.d	$t5, $t6, $t5
	mul.d	$s1, $t7, $s1
	mul.d	$s2, $t8, $s2
	mul.d	$s3, $fp, $s3
	add.d	$t5, $s1, $t5
	add.d	$t5, $t5, $s2
	ld.w	$s1, $a0, 0
	add.d	$t5, $t5, $s3
	sub.d	$t5, $a7, $t5
	sra.w	$t5, $t5, $a6
	slt	$s3, $zero, $s1
	srai.d	$s2, $s1, 31
	or	$s3, $s2, $s3
	add.d	$s0, $s1, $s0
	add.d	$t5, $s0, $t5
	sll.w	$t5, $t5, $a5
	sra.w	$t5, $t5, $a5
	st.w	$t5, $a1, 0
	blt	$s3, $t4, .LBB0_38
# %bb.41:                               # %if.then93
                                        #   in Loop: Header=BB0_40 Depth=1
	slt	$s0, $zero, $fp
	srai.d	$s2, $fp, 31
	or	$s0, $s2, $s0
	mul.d	$fp, $s0, $fp
	sra.w	$fp, $fp, $a6
	sub.w	$fp, $s1, $fp
	sub.d	$a4, $a4, $s0
	blt	$fp, $t4, .LBB0_39
# %bb.42:                               # %if.end105
                                        #   in Loop: Header=BB0_40 Depth=1
	slt	$s0, $zero, $t8
	srai.d	$s1, $t8, 31
	or	$s0, $s1, $s0
	mul.d	$t8, $s0, $t8
	sra.w	$t8, $t8, $a6
	slli.d	$t8, $t8, 1
	sub.w	$t8, $fp, $t8
	sub.d	$t0, $t0, $s0
	blt	$t8, $t4, .LBB0_39
# %bb.43:                               # %if.end117
                                        #   in Loop: Header=BB0_40 Depth=1
	slt	$fp, $zero, $t7
	srai.d	$s0, $t7, 31
	or	$fp, $s0, $fp
	mul.d	$t7, $fp, $t7
	sra.w	$t7, $t7, $a6
	alsl.d	$t7, $t7, $t7, 1
	sub.w	$t7, $t8, $t7
	sub.d	$t1, $t1, $fp
	blt	$t7, $t4, .LBB0_39
# %bb.44:                               # %if.end129
                                        #   in Loop: Header=BB0_40 Depth=1
	slt	$t7, $zero, $t6
	srai.d	$t6, $t6, 31
	or	$t6, $t6, $t7
	sub.d	$t2, $t2, $t6
	b	.LBB0_39
.LBB0_45:                               # %if.then136
                                        #   in Loop: Header=BB0_40 Depth=1
	slt	$s2, $zero, $fp
	srai.d	$s3, $fp, 31
	or	$s2, $s3, $s2
	mul.d	$fp, $fp, $s2
	sub.d	$fp, $zero, $fp
	sra.w	$fp, $fp, $a6
	sub.w	$fp, $s1, $fp
	add.d	$a4, $a4, $s2
	blt	$s0, $fp, .LBB0_39
# %bb.46:                               # %if.end149
                                        #   in Loop: Header=BB0_40 Depth=1
	slt	$s1, $zero, $t8
	srai.d	$s2, $t8, 31
	or	$s1, $s2, $s1
	mul.d	$t8, $t8, $s1
	sub.d	$t8, $zero, $t8
	sra.w	$t8, $t8, $a6
	slli.d	$t8, $t8, 1
	sub.w	$t8, $fp, $t8
	add.d	$t0, $t0, $s1
	blt	$s0, $t8, .LBB0_39
# %bb.47:                               # %if.end162
                                        #   in Loop: Header=BB0_40 Depth=1
	slt	$fp, $zero, $t7
	srai.d	$s1, $t7, 31
	or	$fp, $s1, $fp
	mul.d	$t7, $t7, $fp
	sub.d	$t7, $zero, $t7
	sra.w	$t7, $t7, $a6
	alsl.d	$t7, $t7, $t7, 1
	sub.w	$t7, $t8, $t7
	add.d	$t1, $t1, $fp
	blt	$s0, $t7, .LBB0_39
# %bb.48:                               # %if.end175
                                        #   in Loop: Header=BB0_40 Depth=1
	slt	$t7, $zero, $t6
	srai.d	$t6, $t6, 31
	or	$t6, $t6, $t7
	add.d	$t2, $t2, $t6
	b	.LBB0_39
.LBB0_49:                               # %for.end184
	st.h	$t2, $a3, 0
	st.h	$t1, $a3, 2
	st.h	$t0, $a3, 4
	st.h	$a4, $a3, 6
	b	.LBB0_76
.LBB0_50:                               # %for.cond464.preheader
	bge	$t7, $a2, .LBB0_76
# %bb.51:                               # %for.body467.lr.ph
	bstrpick.d	$t0, $s4, 31, 0
	bstrpick.d	$a4, $s4, 30, 4
	slli.d	$t1, $a4, 4
	andi	$a4, $s4, 12
	st.d	$a4, $sp, 8                     # 8-byte Folded Spill
	bstrpick.d	$a4, $s4, 30, 2
	slli.d	$t3, $a4, 2
	addi.d	$a4, $a3, 16
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	slli.d	$a4, $t7, 2
	alsl.d	$t2, $t7, $a1, 2
	addi.d	$t5, $t2, -32
	st.d	$t3, $sp, 32                    # 8-byte Folded Spill
	sub.d	$t3, $zero, $t3
	st.d	$t3, $sp, 24                    # 8-byte Folded Spill
	addi.d	$t8, $t2, -16
	addi.d	$fp, $t2, -4
	alsl.d	$t2, $s4, $a3, 1
	addi.d	$t2, $t2, -2
	slli.d	$s0, $s4, 2
	sub.d	$a4, $a4, $s0
	add.d	$s1, $a1, $a4
	ori	$s2, $zero, 1
	vrepli.b	$vr0, 0
	xvrepli.b	$xr1, 0
	move	$s5, $t7
	b	.LBB0_54
	.p2align	4, , 16
.LBB0_52:                               # %if.else530
                                        #   in Loop: Header=BB0_54 Depth=1
	addi.w	$s8, $zero, -1
	bge	$s8, $a4, .LBB0_73
.LBB0_53:                               # %for.inc564
                                        #   in Loop: Header=BB0_54 Depth=1
	addi.d	$s5, $s5, 1
	addi.w	$a4, $s5, 0
	addi.d	$t5, $t5, 4
	addi.d	$t8, $t8, 4
	addi.d	$fp, $fp, 4
	addi.d	$s1, $s1, 4
	beq	$a2, $a4, .LBB0_76
.LBB0_54:                               # %for.body467
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_61 Depth 2
                                        #     Child Loop BB0_65 Depth 2
                                        #     Child Loop BB0_68 Depth 2
                                        #     Child Loop BB0_74 Depth 2
                                        #     Child Loop BB0_71 Depth 2
	sub.d	$a4, $s5, $t7
	slli.d	$a4, $a4, 2
	ldx.w	$s6, $a1, $a4
	blt	$s4, $s2, .LBB0_57
# %bb.55:                               # %iter.check
                                        #   in Loop: Header=BB0_54 Depth=1
	ori	$a4, $zero, 4
	bgeu	$s4, $a4, .LBB0_58
# %bb.56:                               #   in Loop: Header=BB0_54 Depth=1
	move	$ra, $zero
	move	$s8, $zero
	b	.LBB0_67
	.p2align	4, , 16
.LBB0_57:                               #   in Loop: Header=BB0_54 Depth=1
	move	$s8, $zero
	b	.LBB0_69
	.p2align	4, , 16
.LBB0_58:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB0_54 Depth=1
	ori	$a4, $zero, 16
	bgeu	$s4, $a4, .LBB0_60
# %bb.59:                               #   in Loop: Header=BB0_54 Depth=1
	move	$s7, $zero
	move	$s8, $zero
	b	.LBB0_64
.LBB0_60:                               # %vector.ph
                                        #   in Loop: Header=BB0_54 Depth=1
	xvreplgr2vr.w	$xr2, $s6
	move	$s7, $t5
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	move	$ra, $t1
	xvori.b	$xr3, $xr1, 0
	xvori.b	$xr4, $xr1, 0
	.p2align	4, , 16
.LBB0_61:                               # %vector.body
                                        #   Parent Loop BB0_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr6, $s8, -16
	vld	$vr7, $s8, 0
	vpickve2gr.h	$a4, $vr6, 0
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr5, $a4, 0
	vpickve2gr.h	$a4, $vr6, 1
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr5, $a4, 1
	vpickve2gr.h	$a4, $vr6, 2
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr5, $a4, 2
	vpickve2gr.h	$a4, $vr6, 3
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr5, $a4, 3
	vpickve2gr.h	$a4, $vr6, 4
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr5, $a4, 4
	vpickve2gr.h	$a4, $vr6, 5
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr5, $a4, 5
	vpickve2gr.h	$a4, $vr6, 6
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr5, $a4, 6
	vpickve2gr.h	$a4, $vr6, 7
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr5, $a4, 7
	vpickve2gr.h	$a4, $vr7, 0
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr6, $a4, 0
	vpickve2gr.h	$a4, $vr7, 1
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr6, $a4, 1
	vpickve2gr.h	$a4, $vr7, 2
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr6, $a4, 2
	vpickve2gr.h	$a4, $vr7, 3
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr6, $a4, 3
	vpickve2gr.h	$a4, $vr7, 4
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr6, $a4, 4
	vpickve2gr.h	$a4, $vr7, 5
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr6, $a4, 5
	vpickve2gr.h	$a4, $vr7, 6
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr6, $a4, 6
	vpickve2gr.h	$a4, $vr7, 7
	xvld	$xr7, $s7, 0
	ext.w.h	$a4, $a4
	xvld	$xr8, $s7, -32
	xvinsgr2vr.w	$xr6, $a4, 7
	xvpermi.d	$xr7, $xr7, 78
	xvshuf4i.w	$xr7, $xr7, 27
	xvpermi.d	$xr8, $xr8, 78
	xvshuf4i.w	$xr8, $xr8, 27
	xvsub.w	$xr7, $xr7, $xr2
	xvsub.w	$xr8, $xr8, $xr2
	xvmadd.w	$xr3, $xr7, $xr5
	xvmadd.w	$xr4, $xr8, $xr6
	addi.d	$ra, $ra, -16
	addi.d	$s8, $s8, 32
	addi.d	$s7, $s7, -64
	bnez	$ra, .LBB0_61
# %bb.62:                               # %middle.block
                                        #   in Loop: Header=BB0_54 Depth=1
	xvadd.w	$xr2, $xr4, $xr3
	xvpermi.d	$xr3, $xr2, 78
	xvshuf4i.w	$xr3, $xr3, 228
	xvadd.w	$xr2, $xr2, $xr3
	xvpermi.d	$xr3, $xr2, 68
	xvshuf4i.w	$xr3, $xr3, 14
	xvadd.w	$xr2, $xr2, $xr3
	xvpermi.d	$xr3, $xr2, 68
	xvrepl128vei.w	$xr3, $xr3, 1
	xvadd.w	$xr2, $xr2, $xr3
	xvpickve2gr.w	$s8, $xr2, 0
	beq	$t1, $t0, .LBB0_69
# %bb.63:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB0_54 Depth=1
	move	$s7, $t1
	move	$ra, $t1
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	beqz	$a4, .LBB0_67
.LBB0_64:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB0_54 Depth=1
	vori.b	$vr2, $vr0, 0
	vinsgr2vr.w	$vr2, $s8, 0
	vreplgr2vr.w	$vr3, $s6
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	add.d	$a4, $a4, $s7
	slli.d	$s0, $s7, 2
	sub.d	$s0, $t8, $s0
	alsl.d	$s7, $s7, $a3, 1
	.p2align	4, , 16
.LBB0_65:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB0_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s8, $s7, 0
	vinsgr2vr.d	$vr4, $s8, 0
	vld	$vr5, $s0, 0
	vilvl.h	$vr4, $vr4, $vr4
	vslli.w	$vr4, $vr4, 16
	vsrai.w	$vr4, $vr4, 16
	vshuf4i.w	$vr5, $vr5, 27
	vsub.w	$vr5, $vr5, $vr3
	vmadd.w	$vr2, $vr5, $vr4
	addi.d	$a4, $a4, 4
	addi.d	$s0, $s0, -16
	addi.d	$s7, $s7, 8
	bnez	$a4, .LBB0_65
# %bb.66:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB0_54 Depth=1
	vshuf4i.w	$vr3, $vr2, 14
	vadd.w	$vr2, $vr2, $vr3
	vreplvei.w	$vr3, $vr2, 1
	vadd.w	$vr2, $vr2, $vr3
	vpickve2gr.w	$s8, $vr2, 0
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	move	$ra, $a4
	beq	$a4, $t0, .LBB0_69
.LBB0_67:                               # %for.body477.preheader
                                        #   in Loop: Header=BB0_54 Depth=1
	slli.d	$a4, $ra, 2
	sub.d	$a4, $fp, $a4
	alsl.d	$s0, $ra, $a3, 1
	sub.d	$s7, $t0, $ra
	.p2align	4, , 16
.LBB0_68:                               # %for.body477
                                        #   Parent Loop BB0_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$ra, $a4, 0
	ld.h	$t4, $s0, 0
	sub.d	$ra, $ra, $s6
	mul.d	$t4, $ra, $t4
	add.d	$s8, $t4, $s8
	addi.d	$a4, $a4, -4
	addi.d	$s7, $s7, -1
	addi.d	$s0, $s0, 2
	bnez	$s7, .LBB0_68
.LBB0_69:                               # %for.end489
                                        #   in Loop: Header=BB0_54 Depth=1
	slli.d	$a4, $s5, 2
	ldx.w	$s7, $a0, $a4
	alsl.d	$t4, $s5, $a1, 2
	slt	$s0, $zero, $s7
	srai.d	$a4, $s7, 31
	or	$s0, $a4, $s0
	add.d	$s8, $s8, $a7
	sra.w	$s8, $s8, $a6
	add.d	$s8, $s8, $s6
	add.d	$s8, $s8, $s7
	sll.w	$s8, $s8, $a5
	sra.w	$s8, $s8, $a5
	st.w	$s8, $t4, 0
	blt	$s0, $s2, .LBB0_52
# %bb.70:                               # %for.cond505.preheader
                                        #   in Loop: Header=BB0_54 Depth=1
	move	$s8, $zero
	addi.d	$ra, $zero, -1
	move	$s0, $t2
	move	$a4, $s4
	.p2align	4, , 16
.LBB0_71:                               # %for.cond505
                                        #   Parent Loop BB0_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	blt	$a4, $s2, .LBB0_53
# %bb.72:                               # %for.body508
                                        #   in Loop: Header=BB0_71 Depth=2
	ldx.w	$t4, $s1, $s8
	sub.w	$t4, $s6, $t4
	slt	$t6, $zero, $t4
	ld.h	$s3, $s0, 0
	srai.d	$t3, $t4, 31
	or	$t3, $t3, $t6
	addi.d	$a4, $a4, -1
	sub.d	$t6, $s3, $t3
	st.h	$t6, $s0, 0
	mul.d	$t3, $t3, $t4
	sra.w	$t3, $t3, $a6
	mul.d	$t3, $t3, $ra
	add.w	$s7, $t3, $s7
	addi.d	$ra, $ra, -1
	addi.d	$s0, $s0, -2
	addi.d	$s8, $s8, 4
	bge	$s7, $s2, .LBB0_71
	b	.LBB0_53
.LBB0_73:                               # %for.cond535.preheader
                                        #   in Loop: Header=BB0_54 Depth=1
	move	$ra, $s1
	move	$s0, $t2
	move	$a4, $s4
	.p2align	4, , 16
.LBB0_74:                               # %for.cond535
                                        #   Parent Loop BB0_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	blt	$a4, $s2, .LBB0_53
# %bb.75:                               # %for.body538
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.w	$t3, $ra, 0
	sub.w	$t3, $s6, $t3
	slt	$t4, $zero, $t3
	ld.h	$t6, $s0, 0
	srai.d	$s3, $t3, 31
	or	$t4, $s3, $t4
	addi.d	$a4, $a4, -1
	add.d	$t6, $t6, $t4
	st.h	$t6, $s0, 0
	mul.d	$t3, $t3, $t4
	sub.d	$t3, $zero, $t3
	sra.w	$t3, $t3, $a6
	mul.d	$t3, $t3, $s8
	add.w	$s7, $t3, $s7
	addi.d	$s8, $s8, -1
	addi.d	$s0, $s0, -2
	addi.d	$ra, $ra, 4
	bltz	$s7, .LBB0_74
	b	.LBB0_53
.LBB0_76:                               # %cleanup
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
.Lfunc_end0:
	.size	unpc_block, .Lfunc_end0-unpc_block
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
