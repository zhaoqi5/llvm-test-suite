	.file	"dp_dec.c"
	.text
	.globl	unpc_block                      # -- Begin function unpc_block
	.p2align	5
	.type	unpc_block,@function
unpc_block:                             # @unpc_block
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
	beqz	$a4, .LBB0_5
# %bb.1:                                # %entry
	move	$t4, $a4
	ori	$a4, $zero, 32
	ori	$t0, $zero, 31
	sub.d	$a5, $a4, $a5
	bne	$t4, $t0, .LBB0_8
# %bb.2:                                # %for.cond.preheader
	ori	$a3, $zero, 2
	blt	$a2, $a3, .LBB0_75
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
	b	.LBB0_75
.LBB0_5:                                # %if.then
	beq	$a0, $a1, .LBB0_75
# %bb.6:                                # %if.then
	ori	$a3, $zero, 2
	blt	$a2, $a3, .LBB0_75
# %bb.7:                                # %if.then5
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
.LBB0_8:                                # %for.cond21.preheader
	addi.d	$a7, $a6, -1
	ori	$a4, $zero, 1
	addi.w	$t7, $t4, 1
	blez	$t4, .LBB0_11
# %bb.9:                                # %for.body24.preheader
	bstrpick.d	$t3, $t7, 31, 0
	ld.w	$t2, $a1, 0
	addi.d	$t0, $a0, 4
	addi.d	$t1, $a1, 4
	addi.d	$t3, $t3, -1
	.p2align	4, , 16
.LBB0_10:                               # %for.body24
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t5, $t0, 0
	add.d	$t2, $t2, $t5
	sll.w	$t2, $t2, $a5
	sra.w	$t2, $t2, $a5
	st.w	$t2, $t1, 0
	addi.d	$t0, $t0, 4
	addi.d	$t3, $t3, -1
	addi.d	$t1, $t1, 4
	bnez	$t3, .LBB0_10
.LBB0_11:                               # %for.end37
	ori	$t0, $zero, 4
	sll.w	$a7, $a4, $a7
	beq	$t4, $t0, .LBB0_35
# %bb.12:                               # %for.end37
	ori	$a4, $zero, 8
	bne	$t4, $a4, .LBB0_49
# %bb.13:                               # %if.then192
	ld.hu	$a4, $a3, 0
	ld.hu	$t0, $a3, 2
	ld.hu	$t1, $a3, 4
	ld.hu	$t2, $a3, 6
	ld.hu	$t6, $a3, 8
	ld.hu	$t5, $a3, 10
	ld.hu	$t4, $a3, 12
	ld.hu	$t3, $a3, 14
	ori	$t8, $zero, 10
	blt	$a2, $t8, .LBB0_34
# %bb.14:                               # %for.body204.preheader
	ld.w	$t8, $a1, 32
	slli.d	$t7, $t7, 2
	sub.d	$t7, $zero, $t7
	st.d	$t7, $sp, 16                    # 8-byte Folded Spill
	addi.d	$a1, $a1, 36
	addi.d	$a0, $a0, 36
	addi.d	$a2, $a2, -9
	b	.LBB0_17
	.p2align	4, , 16
.LBB0_15:                               # %if.else351
                                        #   in Loop: Header=BB0_17 Depth=1
	bltz	$s7, .LBB0_26
.LBB0_16:                               # %for.inc452
                                        #   in Loop: Header=BB0_17 Depth=1
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	beqz	$a2, .LBB0_34
.LBB0_17:                               # %for.body204
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t7, $sp, 16                    # 8-byte Folded Reload
	ldx.w	$s7, $a1, $t7
	ld.w	$s0, $a1, -8
	ld.w	$s1, $a1, -12
	ld.w	$s2, $a1, -16
	sub.w	$fp, $s7, $t8
	sub.w	$s0, $s7, $s0
	sub.w	$s1, $s7, $s1
	sub.w	$s2, $s7, $s2
	ld.w	$t8, $a1, -20
	ld.w	$s4, $a1, -24
	ld.w	$s5, $a1, -28
	ld.w	$s6, $a1, -32
	sub.w	$s3, $s7, $t8
	sub.w	$s4, $s7, $s4
	sub.w	$s5, $s7, $s5
	sub.w	$s6, $s7, $s6
	ext.w.h	$t8, $a4
	ext.w.h	$s8, $t0
	ext.w.h	$ra, $t1
	mul.d	$t8, $fp, $t8
	mul.d	$s8, $s0, $s8
	add.d	$t8, $s8, $t8
	ext.w.h	$s8, $t2
	mul.d	$ra, $s1, $ra
	add.d	$t8, $t8, $ra
	ext.w.h	$ra, $t6
	mul.d	$s8, $s2, $s8
	add.d	$t8, $t8, $s8
	ext.w.h	$s8, $t5
	mul.d	$ra, $s3, $ra
	add.d	$t8, $t8, $ra
	ext.w.h	$ra, $t4
	mul.d	$s8, $s4, $s8
	add.d	$t8, $t8, $s8
	ext.w.h	$s8, $t3
	mul.d	$ra, $s5, $ra
	mul.d	$t7, $s6, $s8
	add.d	$t8, $t8, $ra
	ld.w	$s8, $a0, 0
	add.d	$t7, $t8, $t7
	sub.d	$t7, $a7, $t7
	sra.w	$t7, $t7, $a6
	slt	$t8, $zero, $s8
	add.d	$s7, $s8, $s7
	add.d	$t7, $s7, $t7
	srai.d	$s7, $s8, 31
	or	$ra, $s7, $t8
	sll.w	$t7, $t7, $a5
	sra.w	$t8, $t7, $a5
	st.w	$t8, $a1, 0
	blez	$ra, .LBB0_15
# %bb.18:                               # %if.then262
                                        #   in Loop: Header=BB0_17 Depth=1
	slt	$t7, $zero, $s6
	srai.d	$s7, $s6, 31
	or	$t7, $s7, $t7
	mul.d	$s6, $t7, $s6
	sra.w	$s6, $s6, $a6
	sub.w	$s6, $s8, $s6
	sub.d	$t3, $t3, $t7
	blez	$s6, .LBB0_16
# %bb.19:                               # %if.end274
                                        #   in Loop: Header=BB0_17 Depth=1
	slt	$t7, $zero, $s5
	srai.d	$s7, $s5, 31
	or	$t7, $s7, $t7
	mul.d	$s5, $t7, $s5
	sra.w	$s5, $s5, $a6
	slli.d	$s5, $s5, 1
	sub.w	$s5, $s6, $s5
	sub.d	$t4, $t4, $t7
	blez	$s5, .LBB0_16
# %bb.20:                               # %if.end286
                                        #   in Loop: Header=BB0_17 Depth=1
	slt	$t7, $zero, $s4
	srai.d	$s6, $s4, 31
	or	$t7, $s6, $t7
	mul.d	$s4, $t7, $s4
	sra.w	$s4, $s4, $a6
	alsl.d	$s4, $s4, $s4, 1
	sub.w	$s4, $s5, $s4
	sub.d	$t5, $t5, $t7
	blez	$s4, .LBB0_16
# %bb.21:                               # %if.end298
                                        #   in Loop: Header=BB0_17 Depth=1
	slt	$t7, $zero, $s3
	srai.d	$s5, $s3, 31
	or	$t7, $s5, $t7
	mul.d	$s3, $t7, $s3
	sra.w	$s3, $s3, $a6
	slli.d	$s3, $s3, 2
	sub.w	$s3, $s4, $s3
	sub.d	$t6, $t6, $t7
	blez	$s3, .LBB0_16
# %bb.22:                               # %if.end310
                                        #   in Loop: Header=BB0_17 Depth=1
	slt	$t7, $zero, $s2
	srai.d	$s4, $s2, 31
	or	$t7, $s4, $t7
	mul.d	$s2, $t7, $s2
	sra.w	$s2, $s2, $a6
	alsl.d	$s2, $s2, $s2, 2
	sub.w	$s2, $s3, $s2
	sub.d	$t2, $t2, $t7
	blez	$s2, .LBB0_16
# %bb.23:                               # %if.end322
                                        #   in Loop: Header=BB0_17 Depth=1
	slt	$t7, $zero, $s1
	srai.d	$s3, $s1, 31
	or	$t7, $s3, $t7
	mul.d	$s1, $t7, $s1
	sra.w	$s1, $s1, $a6
	addi.d	$s3, $zero, -6
	mul.d	$s1, $s1, $s3
	add.w	$s1, $s2, $s1
	sub.d	$t1, $t1, $t7
	blez	$s1, .LBB0_16
# %bb.24:                               # %if.end334
                                        #   in Loop: Header=BB0_17 Depth=1
	slt	$t7, $zero, $s0
	srai.d	$s2, $s0, 31
	or	$t7, $s2, $t7
	mul.d	$s0, $t7, $s0
	sra.w	$s0, $s0, $a6
	slli.d	$s2, $s0, 3
	sub.d	$s0, $s0, $s2
	add.w	$s0, $s1, $s0
	sub.d	$t0, $t0, $t7
	blez	$s0, .LBB0_16
# %bb.25:                               # %if.end346
                                        #   in Loop: Header=BB0_17 Depth=1
	slt	$t7, $zero, $fp
	srai.d	$fp, $fp, 31
	or	$t7, $fp, $t7
	sub.d	$a4, $a4, $t7
	b	.LBB0_16
.LBB0_26:                               # %if.then354
                                        #   in Loop: Header=BB0_17 Depth=1
	slt	$t7, $zero, $s6
	srai.d	$s7, $s6, 31
	or	$t7, $s7, $t7
	mul.d	$s6, $s6, $t7
	sub.d	$s6, $zero, $s6
	sra.w	$s6, $s6, $a6
	sub.w	$s6, $s8, $s6
	add.d	$t3, $t3, $t7
	bgez	$s6, .LBB0_16
# %bb.27:                               # %if.end367
                                        #   in Loop: Header=BB0_17 Depth=1
	slt	$t7, $zero, $s5
	srai.d	$s7, $s5, 31
	or	$t7, $s7, $t7
	mul.d	$s5, $s5, $t7
	sub.d	$s5, $zero, $s5
	sra.w	$s5, $s5, $a6
	slli.d	$s5, $s5, 1
	sub.w	$s5, $s6, $s5
	add.d	$t4, $t4, $t7
	bgez	$s5, .LBB0_16
# %bb.28:                               # %if.end380
                                        #   in Loop: Header=BB0_17 Depth=1
	slt	$t7, $zero, $s4
	srai.d	$s6, $s4, 31
	or	$t7, $s6, $t7
	mul.d	$s4, $s4, $t7
	sub.d	$s4, $zero, $s4
	sra.w	$s4, $s4, $a6
	alsl.d	$s4, $s4, $s4, 1
	sub.w	$s4, $s5, $s4
	add.d	$t5, $t5, $t7
	bgez	$s4, .LBB0_16
# %bb.29:                               # %if.end393
                                        #   in Loop: Header=BB0_17 Depth=1
	slt	$t7, $zero, $s3
	srai.d	$s5, $s3, 31
	or	$t7, $s5, $t7
	mul.d	$s3, $s3, $t7
	sub.d	$s3, $zero, $s3
	sra.w	$s3, $s3, $a6
	slli.d	$s3, $s3, 2
	sub.w	$s3, $s4, $s3
	add.d	$t6, $t6, $t7
	bgez	$s3, .LBB0_16
# %bb.30:                               # %if.end406
                                        #   in Loop: Header=BB0_17 Depth=1
	slt	$t7, $zero, $s2
	srai.d	$s4, $s2, 31
	or	$t7, $s4, $t7
	mul.d	$s2, $s2, $t7
	sub.d	$s2, $zero, $s2
	sra.w	$s2, $s2, $a6
	alsl.d	$s2, $s2, $s2, 2
	sub.w	$s2, $s3, $s2
	add.d	$t2, $t2, $t7
	bgez	$s2, .LBB0_16
# %bb.31:                               # %if.end419
                                        #   in Loop: Header=BB0_17 Depth=1
	slt	$t7, $zero, $s1
	srai.d	$s3, $s1, 31
	or	$t7, $s3, $t7
	mul.d	$s1, $s1, $t7
	sub.d	$s1, $zero, $s1
	sra.w	$s1, $s1, $a6
	addi.d	$s3, $zero, -6
	mul.d	$s1, $s1, $s3
	add.w	$s1, $s2, $s1
	add.d	$t1, $t1, $t7
	bgez	$s1, .LBB0_16
# %bb.32:                               # %if.end432
                                        #   in Loop: Header=BB0_17 Depth=1
	slt	$t7, $zero, $s0
	srai.d	$s2, $s0, 31
	or	$t7, $s2, $t7
	mul.d	$s0, $s0, $t7
	sub.d	$s0, $zero, $s0
	sra.w	$s0, $s0, $a6
	slli.d	$s2, $s0, 3
	sub.d	$s0, $s0, $s2
	add.w	$s0, $s1, $s0
	add.d	$t0, $t0, $t7
	bgez	$s0, .LBB0_16
# %bb.33:                               # %if.end445
                                        #   in Loop: Header=BB0_17 Depth=1
	slt	$t7, $zero, $fp
	srai.d	$fp, $fp, 31
	or	$t7, $fp, $t7
	add.d	$a4, $a4, $t7
	b	.LBB0_16
.LBB0_34:                               # %for.end454
	st.h	$a4, $a3, 0
	st.h	$t0, $a3, 2
	st.h	$t1, $a3, 4
	st.h	$t2, $a3, 6
	st.h	$t6, $a3, 8
	st.h	$t5, $a3, 10
	st.h	$t4, $a3, 12
	st.h	$t3, $a3, 14
	b	.LBB0_75
.LBB0_35:                               # %if.then41
	ld.hu	$t2, $a3, 0
	ld.hu	$t1, $a3, 2
	ld.hu	$t0, $a3, 4
	ld.hu	$a4, $a3, 6
	ori	$t3, $zero, 6
	blt	$a2, $t3, .LBB0_48
# %bb.36:                               # %for.body57.preheader
	ld.w	$t4, $a1, 16
	slli.d	$t3, $t7, 2
	sub.d	$t3, $zero, $t3
	addi.d	$a1, $a1, 20
	addi.d	$a0, $a0, 20
	addi.d	$a2, $a2, -5
	b	.LBB0_39
	.p2align	4, , 16
.LBB0_37:                               # %if.else
                                        #   in Loop: Header=BB0_39 Depth=1
	bltz	$s0, .LBB0_44
.LBB0_38:                               # %for.inc182
                                        #   in Loop: Header=BB0_39 Depth=1
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	beqz	$a2, .LBB0_48
.LBB0_39:                               # %for.body57
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$s1, $a1, $t3
	ld.w	$t6, $a1, -8
	ld.w	$t7, $a1, -12
	ld.w	$t8, $a1, -16
	sub.w	$t5, $s1, $t4
	sub.w	$t6, $s1, $t6
	sub.w	$t7, $s1, $t7
	sub.w	$t8, $s1, $t8
	ext.w.h	$t4, $t2
	ext.w.h	$fp, $t1
	ext.w.h	$s0, $t0
	ext.w.h	$s2, $a4
	mul.d	$t4, $t5, $t4
	mul.d	$fp, $t6, $fp
	mul.d	$s0, $t7, $s0
	mul.d	$s2, $t8, $s2
	add.d	$t4, $fp, $t4
	add.d	$t4, $t4, $s0
	ld.w	$fp, $a0, 0
	add.d	$t4, $t4, $s2
	sub.d	$t4, $a7, $t4
	sra.w	$t4, $t4, $a6
	slt	$s2, $zero, $fp
	srai.d	$s0, $fp, 31
	or	$s2, $s0, $s2
	add.d	$s1, $fp, $s1
	add.d	$t4, $s1, $t4
	sll.w	$t4, $t4, $a5
	sra.w	$t4, $t4, $a5
	st.w	$t4, $a1, 0
	blez	$s2, .LBB0_37
# %bb.40:                               # %if.then93
                                        #   in Loop: Header=BB0_39 Depth=1
	slt	$s0, $zero, $t8
	srai.d	$s1, $t8, 31
	or	$s0, $s1, $s0
	mul.d	$t8, $s0, $t8
	sra.w	$t8, $t8, $a6
	sub.w	$t8, $fp, $t8
	sub.d	$a4, $a4, $s0
	blez	$t8, .LBB0_38
# %bb.41:                               # %if.end105
                                        #   in Loop: Header=BB0_39 Depth=1
	slt	$fp, $zero, $t7
	srai.d	$s0, $t7, 31
	or	$fp, $s0, $fp
	mul.d	$t7, $fp, $t7
	sra.w	$t7, $t7, $a6
	slli.d	$t7, $t7, 1
	sub.w	$t7, $t8, $t7
	sub.d	$t0, $t0, $fp
	blez	$t7, .LBB0_38
# %bb.42:                               # %if.end117
                                        #   in Loop: Header=BB0_39 Depth=1
	slt	$t8, $zero, $t6
	srai.d	$fp, $t6, 31
	or	$t8, $fp, $t8
	mul.d	$t6, $t8, $t6
	sra.w	$t6, $t6, $a6
	alsl.d	$t6, $t6, $t6, 1
	sub.w	$t6, $t7, $t6
	sub.d	$t1, $t1, $t8
	blez	$t6, .LBB0_38
# %bb.43:                               # %if.end129
                                        #   in Loop: Header=BB0_39 Depth=1
	slt	$t6, $zero, $t5
	srai.d	$t5, $t5, 31
	or	$t5, $t5, $t6
	sub.d	$t2, $t2, $t5
	b	.LBB0_38
.LBB0_44:                               # %if.then136
                                        #   in Loop: Header=BB0_39 Depth=1
	slt	$s0, $zero, $t8
	srai.d	$s1, $t8, 31
	or	$s0, $s1, $s0
	mul.d	$t8, $t8, $s0
	sub.d	$t8, $zero, $t8
	sra.w	$t8, $t8, $a6
	sub.w	$t8, $fp, $t8
	add.d	$a4, $a4, $s0
	bgez	$t8, .LBB0_38
# %bb.45:                               # %if.end149
                                        #   in Loop: Header=BB0_39 Depth=1
	slt	$fp, $zero, $t7
	srai.d	$s0, $t7, 31
	or	$fp, $s0, $fp
	mul.d	$t7, $t7, $fp
	sub.d	$t7, $zero, $t7
	sra.w	$t7, $t7, $a6
	slli.d	$t7, $t7, 1
	sub.w	$t7, $t8, $t7
	add.d	$t0, $t0, $fp
	bgez	$t7, .LBB0_38
# %bb.46:                               # %if.end162
                                        #   in Loop: Header=BB0_39 Depth=1
	slt	$t8, $zero, $t6
	srai.d	$fp, $t6, 31
	or	$t8, $fp, $t8
	mul.d	$t6, $t6, $t8
	sub.d	$t6, $zero, $t6
	sra.w	$t6, $t6, $a6
	alsl.d	$t6, $t6, $t6, 1
	sub.w	$t6, $t7, $t6
	add.d	$t1, $t1, $t8
	bgez	$t6, .LBB0_38
# %bb.47:                               # %if.end175
                                        #   in Loop: Header=BB0_39 Depth=1
	slt	$t6, $zero, $t5
	srai.d	$t5, $t5, 31
	or	$t5, $t5, $t6
	add.d	$t2, $t2, $t5
	b	.LBB0_38
.LBB0_48:                               # %for.end184
	st.h	$t2, $a3, 0
	st.h	$t1, $a3, 2
	st.h	$t0, $a3, 4
	st.h	$a4, $a3, 6
	b	.LBB0_75
.LBB0_49:                               # %for.cond464.preheader
	bge	$t7, $a2, .LBB0_75
# %bb.50:                               # %for.body467.lr.ph
	bstrpick.d	$t0, $t4, 31, 0
	andi	$a4, $t4, 12
	st.d	$a4, $sp, 8                     # 8-byte Folded Spill
	bstrpick.d	$a4, $t4, 30, 4
	slli.d	$t2, $a4, 4
	bstrpick.d	$a4, $t4, 30, 2
	slli.d	$t3, $a4, 2
	slli.d	$a4, $t7, 2
	alsl.d	$fp, $t7, $a1, 2
	addi.d	$t5, $fp, -32
	sub.d	$t1, $zero, $t3
	st.d	$t1, $sp, 16                    # 8-byte Folded Spill
	addi.d	$t8, $fp, -16
	addi.d	$fp, $fp, -4
	alsl.d	$s0, $t4, $a3, 1
	addi.d	$s0, $s0, -2
	slli.d	$s1, $t4, 2
	sub.d	$a4, $a4, $s1
	add.d	$s1, $a1, $a4
	vrepli.b	$vr0, 0
	xvrepli.b	$xr1, 0
	move	$s4, $t7
	b	.LBB0_53
	.p2align	4, , 16
.LBB0_51:                               # %if.else530
                                        #   in Loop: Header=BB0_53 Depth=1
	bltz	$a4, .LBB0_72
.LBB0_52:                               # %for.inc564
                                        #   in Loop: Header=BB0_53 Depth=1
	addi.d	$s4, $s4, 1
	addi.w	$a4, $s4, 0
	addi.d	$t5, $t5, 4
	addi.d	$t8, $t8, 4
	addi.d	$fp, $fp, 4
	addi.d	$s1, $s1, 4
	beq	$a2, $a4, .LBB0_75
.LBB0_53:                               # %for.body467
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_60 Depth 2
                                        #     Child Loop BB0_64 Depth 2
                                        #     Child Loop BB0_67 Depth 2
                                        #     Child Loop BB0_73 Depth 2
                                        #     Child Loop BB0_70 Depth 2
	sub.d	$a4, $s4, $t7
	slli.d	$a4, $a4, 2
	ldx.w	$s5, $a1, $a4
	blez	$t4, .LBB0_56
# %bb.54:                               # %iter.check
                                        #   in Loop: Header=BB0_53 Depth=1
	ori	$a4, $zero, 4
	bgeu	$t4, $a4, .LBB0_57
# %bb.55:                               #   in Loop: Header=BB0_53 Depth=1
	move	$ra, $zero
	move	$s7, $zero
	b	.LBB0_66
	.p2align	4, , 16
.LBB0_56:                               #   in Loop: Header=BB0_53 Depth=1
	move	$s7, $zero
	b	.LBB0_68
	.p2align	4, , 16
.LBB0_57:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB0_53 Depth=1
	ori	$a4, $zero, 16
	bgeu	$t4, $a4, .LBB0_59
# %bb.58:                               #   in Loop: Header=BB0_53 Depth=1
	move	$s8, $zero
	move	$s7, $zero
	b	.LBB0_63
.LBB0_59:                               # %vector.ph
                                        #   in Loop: Header=BB0_53 Depth=1
	xvreplgr2vr.w	$xr2, $s5
	move	$s6, $t5
	addi.d	$s7, $a3, 16
	move	$s8, $t2
	xvori.b	$xr3, $xr1, 0
	xvori.b	$xr4, $xr1, 0
	.p2align	4, , 16
.LBB0_60:                               # %vector.body
                                        #   Parent Loop BB0_53 Depth=1
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
	bnez	$s8, .LBB0_60
# %bb.61:                               # %middle.block
                                        #   in Loop: Header=BB0_53 Depth=1
	xvadd.w	$xr2, $xr4, $xr3
	xvhaddw.d.w	$xr2, $xr2, $xr2
	xvhaddw.q.d	$xr2, $xr2, $xr2
	xvpermi.d	$xr3, $xr2, 2
	xvadd.d	$xr2, $xr3, $xr2
	xvpickve2gr.d	$s7, $xr2, 0
	beq	$t2, $t0, .LBB0_68
# %bb.62:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB0_53 Depth=1
	move	$s8, $t2
	move	$ra, $t2
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	beqz	$a4, .LBB0_66
.LBB0_63:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB0_53 Depth=1
	vori.b	$vr2, $vr0, 0
	vinsgr2vr.w	$vr2, $s7, 0
	vreplgr2vr.w	$vr3, $s5
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	add.d	$a4, $a4, $s8
	slli.d	$s6, $s8, 2
	sub.d	$s6, $t8, $s6
	alsl.d	$s7, $s8, $a3, 1
	.p2align	4, , 16
.LBB0_64:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB0_53 Depth=1
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
	bnez	$a4, .LBB0_64
# %bb.65:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB0_53 Depth=1
	vhaddw.d.w	$vr2, $vr2, $vr2
	vhaddw.q.d	$vr2, $vr2, $vr2
	vpickve2gr.d	$s7, $vr2, 0
	move	$ra, $t3
	beq	$t3, $t0, .LBB0_68
.LBB0_66:                               # %for.body477.preheader
                                        #   in Loop: Header=BB0_53 Depth=1
	slli.d	$a4, $ra, 2
	sub.d	$a4, $fp, $a4
	alsl.d	$s6, $ra, $a3, 1
	sub.d	$s8, $t0, $ra
	.p2align	4, , 16
.LBB0_67:                               # %for.body477
                                        #   Parent Loop BB0_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$ra, $a4, 0
	ld.h	$t1, $s6, 0
	sub.d	$ra, $ra, $s5
	mul.d	$t1, $ra, $t1
	add.d	$s7, $t1, $s7
	addi.d	$a4, $a4, -4
	addi.d	$s8, $s8, -1
	addi.d	$s6, $s6, 2
	bnez	$s8, .LBB0_67
.LBB0_68:                               # %for.end489
                                        #   in Loop: Header=BB0_53 Depth=1
	slli.d	$a4, $s4, 2
	ldx.w	$s6, $a0, $a4
	alsl.d	$t1, $s4, $a1, 2
	slt	$s8, $zero, $s6
	srai.d	$a4, $s6, 31
	or	$s8, $a4, $s8
	add.d	$s7, $s7, $a7
	sra.w	$s7, $s7, $a6
	add.d	$s7, $s7, $s5
	add.d	$s7, $s7, $s6
	sll.w	$s7, $s7, $a5
	sra.w	$s7, $s7, $a5
	st.w	$s7, $t1, 0
	blez	$s8, .LBB0_51
# %bb.69:                               # %for.cond505.preheader
                                        #   in Loop: Header=BB0_53 Depth=1
	move	$s7, $zero
	addi.d	$s8, $zero, -1
	move	$ra, $s0
	move	$a4, $t4
	.p2align	4, , 16
.LBB0_70:                               # %for.cond505
                                        #   Parent Loop BB0_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	blez	$a4, .LBB0_52
# %bb.71:                               # %for.body508
                                        #   in Loop: Header=BB0_70 Depth=2
	ldx.w	$t1, $s1, $s7
	sub.w	$t1, $s5, $t1
	slt	$s3, $zero, $t1
	ld.h	$t6, $ra, 0
	srai.d	$s2, $t1, 31
	or	$s2, $s2, $s3
	addi.d	$a4, $a4, -1
	sub.d	$t6, $t6, $s2
	st.h	$t6, $ra, 0
	mul.d	$t1, $s2, $t1
	sra.w	$t1, $t1, $a6
	mul.d	$t1, $t1, $s8
	add.w	$s6, $t1, $s6
	addi.d	$s8, $s8, -1
	addi.d	$ra, $ra, -2
	addi.d	$s7, $s7, 4
	bgtz	$s6, .LBB0_70
	b	.LBB0_52
.LBB0_72:                               # %for.cond535.preheader
                                        #   in Loop: Header=BB0_53 Depth=1
	addi.d	$s7, $zero, -1
	move	$s8, $s1
	move	$ra, $s0
	move	$a4, $t4
	.p2align	4, , 16
.LBB0_73:                               # %for.cond535
                                        #   Parent Loop BB0_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	blez	$a4, .LBB0_52
# %bb.74:                               # %for.body538
                                        #   in Loop: Header=BB0_73 Depth=2
	ld.w	$t1, $s8, 0
	sub.w	$t1, $s5, $t1
	slt	$t6, $zero, $t1
	ld.h	$s2, $ra, 0
	srai.d	$s3, $t1, 31
	or	$t6, $s3, $t6
	addi.d	$a4, $a4, -1
	add.d	$s2, $s2, $t6
	st.h	$s2, $ra, 0
	mul.d	$t1, $t1, $t6
	sub.d	$t1, $zero, $t1
	sra.w	$t1, $t1, $a6
	mul.d	$t1, $t1, $s7
	add.w	$s6, $t1, $s6
	addi.d	$s7, $s7, -1
	addi.d	$ra, $ra, -2
	addi.d	$s8, $s8, 4
	bltz	$s6, .LBB0_73
	b	.LBB0_52
.LBB0_75:                               # %cleanup
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
.Lfunc_end0:
	.size	unpc_block, .Lfunc_end0-unpc_block
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
