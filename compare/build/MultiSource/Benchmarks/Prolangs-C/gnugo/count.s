	.file	"count.c"
	.text
	.globl	count                           # -- Begin function count
	.p2align	5
	.type	count,@function
count:                                  # @count
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
	move	$fp, $a1
	move	$a5, $a0
	move	$s5, $zero
	addi.w	$a3, $a0, -1
	pcalau12i	$a0, %got_pc_hi20(p)
	ld.d	$a0, $a0, %got_pc_lo12(p)
	pcalau12i	$a1, %got_pc_hi20(ml)
	ld.d	$a1, $a1, %got_pc_lo12(ml)
	ori	$a4, $zero, 19
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	mul.d	$a3, $a3, $a4
	add.d	$s6, $a0, $a3
	add.d	$s7, $a1, $a3
	addi.w	$a3, $a5, 1
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	mul.d	$a3, $a3, $a4
	add.d	$s2, $a0, $a3
	add.d	$s3, $a1, $a3
	mul.d	$a3, $a5, $a4
	addi.d	$a3, $a3, 1
	add.d	$s1, $a0, $a3
	add.d	$s8, $a1, $a3
	move	$s4, $fp
	ori	$s0, $zero, 18
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	st.d	$a5, $sp, 32                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB0_1:                                # %tailrecurse
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $s8, $fp
	st.b	$zero, $a3, -1
	beqz	$a5, .LBB0_7
# %bb.2:                                # %if.then
                                        #   in Loop: Header=BB0_1 Depth=1
	ldx.bu	$a0, $s6, $fp
	beqz	$a0, .LBB0_13
.LBB0_3:                                # %if.else
                                        #   in Loop: Header=BB0_1 Depth=1
	bne	$a2, $a0, .LBB0_6
# %bb.4:                                # %land.lhs.true29
                                        #   in Loop: Header=BB0_1 Depth=1
	ldx.bu	$a0, $s7, $fp
	beqz	$a0, .LBB0_6
# %bb.5:                                # %if.then37
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $s4
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(count)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
.LBB0_6:                                # %if.end40
                                        #   in Loop: Header=BB0_1 Depth=1
	ori	$a0, $zero, 18
	beq	$a5, $a0, .LBB0_15
.LBB0_7:                                # %if.then43
                                        #   in Loop: Header=BB0_1 Depth=1
	ldx.bu	$a0, $s2, $fp
	beqz	$a0, .LBB0_11
.LBB0_8:                                # %if.else66
                                        #   in Loop: Header=BB0_1 Depth=1
	bne	$a2, $a0, .LBB0_15
# %bb.9:                                # %land.lhs.true75
                                        #   in Loop: Header=BB0_1 Depth=1
	ldx.bu	$a0, $s3, $fp
	beqz	$a0, .LBB0_15
# %bb.10:                               # %if.then83
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	move	$a1, $s4
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(count)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	b	.LBB0_15
	.p2align	4, , 16
.LBB0_11:                               # %land.lhs.true51
                                        #   in Loop: Header=BB0_1 Depth=1
	ldx.bu	$a1, $s3, $fp
	beqz	$a1, .LBB0_8
# %bb.12:                               # %if.then59
                                        #   in Loop: Header=BB0_1 Depth=1
	pcalau12i	$a0, %got_pc_hi20(lib)
	ld.d	$a0, $a0, %got_pc_lo12(lib)
	ld.w	$a1, $a0, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 0
	stx.b	$zero, $s3, $fp
	b	.LBB0_15
	.p2align	4, , 16
.LBB0_13:                               # %land.lhs.true
                                        #   in Loop: Header=BB0_1 Depth=1
	ldx.bu	$a1, $s7, $fp
	beqz	$a1, .LBB0_3
# %bb.14:                               # %if.then15
                                        #   in Loop: Header=BB0_1 Depth=1
	pcalau12i	$a0, %got_pc_hi20(lib)
	ld.d	$a0, $a0, %got_pc_lo12(lib)
	ld.w	$a1, $a0, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 0
	stx.b	$zero, $s7, $fp
	ori	$a0, $zero, 18
	bne	$a5, $a0, .LBB0_7
	.p2align	4, , 16
.LBB0_15:                               # %if.end87
                                        #   in Loop: Header=BB0_1 Depth=1
	beq	$fp, $s5, .LBB0_21
# %bb.16:                               # %if.then90
                                        #   in Loop: Header=BB0_1 Depth=1
	add.d	$a0, $s1, $fp
	ld.bu	$a0, $a0, -2
	beqz	$a0, .LBB0_25
.LBB0_17:                               # %if.else114
                                        #   in Loop: Header=BB0_1 Depth=1
	bne	$a2, $a0, .LBB0_20
# %bb.18:                               # %land.lhs.true123
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.bu	$a0, $a3, -2
	beqz	$a0, .LBB0_20
# %bb.19:                               # %if.then131
                                        #   in Loop: Header=BB0_1 Depth=1
	addi.w	$a1, $s4, -1
	move	$a0, $a5
	pcaddu18i	$ra, %call36(count)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
.LBB0_20:                               # %if.end135
                                        #   in Loop: Header=BB0_1 Depth=1
	beq	$fp, $s0, .LBB0_28
.LBB0_21:                               # %if.then138
                                        #   in Loop: Header=BB0_1 Depth=1
	ldx.bu	$a0, $s1, $fp
	bnez	$a0, .LBB0_23
# %bb.22:                               # %land.lhs.true147
                                        #   in Loop: Header=BB0_1 Depth=1
	ldx.bu	$a1, $s8, $fp
	bnez	$a1, .LBB0_27
.LBB0_23:                               # %if.else162
                                        #   in Loop: Header=BB0_1 Depth=1
	bne	$a2, $a0, .LBB0_28
# %bb.24:                               # %land.lhs.true171
                                        #   in Loop: Header=BB0_1 Depth=1
	ldx.bu	$a0, $s8, $fp
	addi.d	$s0, $s0, -1
	addi.d	$s5, $s5, -1
	addi.w	$s4, $s4, 1
	addi.d	$s6, $s6, 1
	addi.d	$s7, $s7, 1
	addi.d	$s2, $s2, 1
	addi.d	$s3, $s3, 1
	addi.d	$s1, $s1, 1
	addi.d	$s8, $s8, 1
	bnez	$a0, .LBB0_1
	b	.LBB0_28
.LBB0_25:                               # %land.lhs.true99
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.bu	$a1, $a3, -2
	beqz	$a1, .LBB0_17
# %bb.26:                               # %if.then107
                                        #   in Loop: Header=BB0_1 Depth=1
	pcalau12i	$a0, %got_pc_hi20(lib)
	ld.d	$a0, $a0, %got_pc_lo12(lib)
	ld.w	$a1, $a0, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 0
	st.b	$zero, $a3, -2
	bne	$fp, $s0, .LBB0_21
	b	.LBB0_28
.LBB0_27:                               # %if.then155
	pcalau12i	$a0, %got_pc_hi20(lib)
	ld.d	$a0, $a0, %got_pc_lo12(lib)
	ld.w	$a1, $a0, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 0
	stx.b	$zero, $s8, $fp
.LBB0_28:                               # %if.end183
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
	.size	count, .Lfunc_end0-count
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
