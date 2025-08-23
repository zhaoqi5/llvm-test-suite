	.file	"memset-3.c"
	.text
	.globl	reset                           # -- Begin function reset
	.p2align	5
	.type	reset,@function
reset:                                  # @reset
# %bb.0:                                # %entry
	pcalau12i	$a0, %pc_hi20(u)
	addi.d	$a0, $a0, %pc_lo12(u)
	lu12i.w	$a1, 398870
	ori	$a1, $a1, 353
	bstrins.d	$a1, $a1, 62, 32
	st.d	$a1, $a0, 23
	st.d	$a1, $a0, 16
	st.d	$a1, $a0, 8
	st.d	$a1, $a0, 0
	ret
.Lfunc_end0:
	.size	reset, .Lfunc_end0-reset
                                        # -- End function
	.globl	check                           # -- Begin function check
	.p2align	5
	.type	check,@function
check:                                  # @check
# %bb.0:                                # %entry
	ori	$a4, $zero, 1
	blt	$a0, $a4, .LBB1_5
# %bb.1:                                # %for.body.preheader
	pcalau12i	$a3, %pc_hi20(u)
	addi.d	$a5, $a3, %pc_lo12(u)
	add.d	$a3, $a5, $a0
	ori	$a6, $zero, 97
	.p2align	4, , 16
.LBB1_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a7, $a5, 0
	bne	$a7, $a6, .LBB1_19
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB1_2 Depth=1
	addi.d	$a0, $a0, -1
	addi.d	$a5, $a5, 1
	bnez	$a0, .LBB1_2
# %bb.4:                                # %for.cond3.preheader
	bge	$a1, $a4, .LBB1_6
	b	.LBB1_10
.LBB1_5:
	pcalau12i	$a0, %pc_hi20(u)
	addi.d	$a3, $a0, %pc_lo12(u)
	blt	$a1, $a4, .LBB1_10
.LBB1_6:                                # %for.body6.preheader
	add.d	$a0, $a3, $a1
	.p2align	4, , 16
.LBB1_7:                                # %for.body6
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a3, 0
	bne	$a2, $a4, .LBB1_19
# %bb.8:                                # %for.inc12
                                        #   in Loop: Header=BB1_7 Depth=1
	addi.w	$a1, $a1, -1
	addi.d	$a3, $a3, 1
	bnez	$a1, .LBB1_7
# %bb.9:
	move	$a3, $a0
.LBB1_10:                               # %for.cond16.preheader
	ld.bu	$a1, $a3, 0
	ori	$a0, $zero, 97
	bne	$a1, $a0, .LBB1_19
# %bb.11:                               # %for.inc26
	ld.bu	$a1, $a3, 1
	bne	$a1, $a0, .LBB1_19
# %bb.12:                               # %for.inc26.1
	ld.bu	$a1, $a3, 2
	ori	$a0, $zero, 97
	bne	$a1, $a0, .LBB1_19
# %bb.13:                               # %for.inc26.2
	ld.bu	$a1, $a3, 3
	bne	$a1, $a0, .LBB1_19
# %bb.14:                               # %for.inc26.3
	ld.bu	$a1, $a3, 4
	ori	$a0, $zero, 97
	bne	$a1, $a0, .LBB1_19
# %bb.15:                               # %for.inc26.4
	ld.bu	$a1, $a3, 5
	bne	$a1, $a0, .LBB1_19
# %bb.16:                               # %for.inc26.5
	ld.bu	$a1, $a3, 6
	ori	$a0, $zero, 97
	bne	$a1, $a0, .LBB1_19
# %bb.17:                               # %for.inc26.6
	ld.bu	$a1, $a3, 7
	bne	$a1, $a0, .LBB1_19
# %bb.18:                               # %for.inc26.7
	ret
.LBB1_19:                               # %if.then
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	check, .Lfunc_end1-check
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
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
	move	$s0, $zero
	pcalau12i	$s4, %pc_hi20(A)
	ld.bu	$fp, $s4, %pc_lo12(A)
	pcalau12i	$a0, %pc_hi20(u)
	addi.d	$s1, $a0, %pc_lo12(u)
	lu12i.w	$a0, 398870
	ori	$s2, $a0, 353
	bstrins.d	$s2, $s2, 62, 32
	ori	$s3, $zero, 97
	ori	$s5, $zero, 66
	ori	$s6, $zero, 15
	ori	$s7, $zero, 65
	.p2align	4, , 16
.LBB2_1:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_3 Depth 2
                                        #     Child Loop BB2_15 Depth 2
                                        #     Child Loop BB2_27 Depth 2
	st.d	$s2, $s1, 23
	st.d	$s2, $s1, 16
	st.d	$s2, $s1, 8
	st.d	$s2, $s1, 0
	move	$a0, $s1
	move	$a1, $zero
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	beqz	$s0, .LBB2_5
# %bb.2:                                # %for.body6.preheader.i
                                        #   in Loop: Header=BB2_1 Depth=1
	move	$a1, $zero
	add.d	$a0, $s1, $s0
	.p2align	4, , 16
.LBB2_3:                                # %for.body6.i
                                        #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a2, $s1, $a1
	bnez	$a2, .LBB2_305
# %bb.4:                                # %for.inc12.i
                                        #   in Loop: Header=BB2_3 Depth=2
	addi.d	$a1, $a1, 1
	bne	$s0, $a1, .LBB2_3
.LBB2_5:                                # %for.cond16.preheader.i
                                        #   in Loop: Header=BB2_1 Depth=1
	ld.bu	$a1, $a0, 0
	bne	$a1, $s3, .LBB2_305
# %bb.6:                                # %for.inc26.i
                                        #   in Loop: Header=BB2_1 Depth=1
	ld.bu	$a1, $a0, 1
	bne	$a1, $s3, .LBB2_305
# %bb.7:                                # %for.inc26.1.i
                                        #   in Loop: Header=BB2_1 Depth=1
	ld.bu	$a1, $a0, 2
	bne	$a1, $s3, .LBB2_305
# %bb.8:                                # %for.inc26.2.i
                                        #   in Loop: Header=BB2_1 Depth=1
	ld.bu	$a1, $a0, 3
	bne	$a1, $s3, .LBB2_305
# %bb.9:                                # %for.inc26.3.i
                                        #   in Loop: Header=BB2_1 Depth=1
	ld.bu	$a1, $a0, 4
	bne	$a1, $s3, .LBB2_305
# %bb.10:                               # %for.inc26.4.i
                                        #   in Loop: Header=BB2_1 Depth=1
	ld.bu	$a1, $a0, 5
	bne	$a1, $s3, .LBB2_305
# %bb.11:                               # %for.inc26.5.i
                                        #   in Loop: Header=BB2_1 Depth=1
	ld.bu	$a1, $a0, 6
	bne	$a1, $s3, .LBB2_305
# %bb.12:                               # %for.inc26.6.i
                                        #   in Loop: Header=BB2_1 Depth=1
	ld.bu	$a0, $a0, 7
	bne	$a0, $s3, .LBB2_305
# %bb.13:                               # %check.exit
                                        #   in Loop: Header=BB2_1 Depth=1
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	beqz	$s0, .LBB2_17
# %bb.14:                               # %for.body6.preheader.i113
                                        #   in Loop: Header=BB2_1 Depth=1
	move	$a1, $zero
	add.d	$a0, $s1, $s0
	.p2align	4, , 16
.LBB2_15:                               # %for.body6.i115
                                        #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a2, $s1, $a1
	bne	$a2, $s7, .LBB2_305
# %bb.16:                               # %for.inc12.i121
                                        #   in Loop: Header=BB2_15 Depth=2
	addi.d	$a1, $a1, 1
	bne	$s0, $a1, .LBB2_15
.LBB2_17:                               # %for.cond16.preheader.i88
                                        #   in Loop: Header=BB2_1 Depth=1
	ld.bu	$a1, $a0, 0
	bne	$a1, $s3, .LBB2_305
# %bb.18:                               # %for.inc26.i92
                                        #   in Loop: Header=BB2_1 Depth=1
	ld.bu	$a1, $a0, 1
	bne	$a1, $s3, .LBB2_305
# %bb.19:                               # %for.inc26.1.i95
                                        #   in Loop: Header=BB2_1 Depth=1
	ld.bu	$a1, $a0, 2
	bne	$a1, $s3, .LBB2_305
# %bb.20:                               # %for.inc26.2.i98
                                        #   in Loop: Header=BB2_1 Depth=1
	ld.bu	$a1, $a0, 3
	bne	$a1, $s3, .LBB2_305
# %bb.21:                               # %for.inc26.3.i101
                                        #   in Loop: Header=BB2_1 Depth=1
	ld.bu	$a1, $a0, 4
	bne	$a1, $s3, .LBB2_305
# %bb.22:                               # %for.inc26.4.i104
                                        #   in Loop: Header=BB2_1 Depth=1
	ld.bu	$a1, $a0, 5
	bne	$a1, $s3, .LBB2_305
# %bb.23:                               # %for.inc26.5.i107
                                        #   in Loop: Header=BB2_1 Depth=1
	ld.bu	$a1, $a0, 6
	bne	$a1, $s3, .LBB2_305
# %bb.24:                               # %for.inc26.6.i110
                                        #   in Loop: Header=BB2_1 Depth=1
	ld.bu	$a0, $a0, 7
	bne	$a0, $s3, .LBB2_305
# %bb.25:                               # %check.exit125
                                        #   in Loop: Header=BB2_1 Depth=1
	ori	$a1, $zero, 66
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	beqz	$s0, .LBB2_29
# %bb.26:                               # %for.body6.preheader.i152
                                        #   in Loop: Header=BB2_1 Depth=1
	move	$a1, $zero
	add.d	$a0, $s1, $s0
	.p2align	4, , 16
.LBB2_27:                               # %for.body6.i154
                                        #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a2, $s1, $a1
	bne	$a2, $s5, .LBB2_305
# %bb.28:                               # %for.inc12.i160
                                        #   in Loop: Header=BB2_27 Depth=2
	addi.d	$a1, $a1, 1
	bne	$s0, $a1, .LBB2_27
.LBB2_29:                               # %for.cond16.preheader.i127
                                        #   in Loop: Header=BB2_1 Depth=1
	ld.bu	$a1, $a0, 0
	bne	$a1, $s3, .LBB2_305
# %bb.30:                               # %for.inc26.i131
                                        #   in Loop: Header=BB2_1 Depth=1
	ld.bu	$a1, $a0, 1
	bne	$a1, $s3, .LBB2_305
# %bb.31:                               # %for.inc26.1.i134
                                        #   in Loop: Header=BB2_1 Depth=1
	ld.bu	$a1, $a0, 2
	bne	$a1, $s3, .LBB2_305
# %bb.32:                               # %for.inc26.2.i137
                                        #   in Loop: Header=BB2_1 Depth=1
	ld.bu	$a1, $a0, 3
	bne	$a1, $s3, .LBB2_305
# %bb.33:                               # %for.inc26.3.i140
                                        #   in Loop: Header=BB2_1 Depth=1
	ld.bu	$a1, $a0, 4
	bne	$a1, $s3, .LBB2_305
# %bb.34:                               # %for.inc26.4.i143
                                        #   in Loop: Header=BB2_1 Depth=1
	ld.bu	$a1, $a0, 5
	bne	$a1, $s3, .LBB2_305
# %bb.35:                               # %for.inc26.5.i146
                                        #   in Loop: Header=BB2_1 Depth=1
	ld.bu	$a1, $a0, 6
	bne	$a1, $s3, .LBB2_305
# %bb.36:                               # %for.inc26.6.i149
                                        #   in Loop: Header=BB2_1 Depth=1
	ld.bu	$a0, $a0, 7
	bne	$a0, $s3, .LBB2_305
# %bb.37:                               # %for.cond
                                        #   in Loop: Header=BB2_1 Depth=1
	addi.d	$s0, $s0, 1
	bne	$s0, $s6, .LBB2_1
# %bb.38:                               # %for.cond3.preheader.i.preheader
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
	move	$s0, $zero
	pcalau12i	$a0, %pc_hi20(u)
	addi.d	$s3, $a0, %pc_lo12(u)
	addi.d	$s1, $s3, 1
	ori	$s5, $zero, 97
	ori	$s6, $zero, 66
	ori	$s7, $zero, 15
	ori	$s8, $zero, 65
	.p2align	4, , 16
.LBB2_39:                               # %for.cond3.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_41 Depth 2
                                        #     Child Loop BB2_53 Depth 2
                                        #     Child Loop BB2_65 Depth 2
	st.d	$s2, $s3, 23
	st.d	$s2, $s3, 16
	st.d	$s2, $s3, 8
	st.d	$s2, $s3, 0
	move	$a0, $s1
	move	$a1, $zero
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$s4, $s3, $s0
	move	$a0, $s1
	beqz	$s0, .LBB2_43
# %bb.40:                               # %for.body6.preheader.i191
                                        #   in Loop: Header=BB2_39 Depth=1
	move	$a1, $zero
	addi.d	$a0, $s4, 1
	.p2align	4, , 16
.LBB2_41:                               # %for.body6.i193
                                        #   Parent Loop BB2_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a2, $s3, $a1
	ld.bu	$a2, $a2, 1
	bnez	$a2, .LBB2_305
# %bb.42:                               # %for.inc12.i199
                                        #   in Loop: Header=BB2_41 Depth=2
	addi.d	$a1, $a1, 1
	bne	$s0, $a1, .LBB2_41
.LBB2_43:                               # %for.cond16.preheader.i166
                                        #   in Loop: Header=BB2_39 Depth=1
	ld.bu	$a1, $a0, 0
	bne	$a1, $s5, .LBB2_305
# %bb.44:                               # %for.inc26.i170
                                        #   in Loop: Header=BB2_39 Depth=1
	ld.bu	$a1, $a0, 1
	bne	$a1, $s5, .LBB2_305
# %bb.45:                               # %for.inc26.1.i173
                                        #   in Loop: Header=BB2_39 Depth=1
	ld.bu	$a1, $a0, 2
	bne	$a1, $s5, .LBB2_305
# %bb.46:                               # %for.inc26.2.i176
                                        #   in Loop: Header=BB2_39 Depth=1
	ld.bu	$a1, $a0, 3
	bne	$a1, $s5, .LBB2_305
# %bb.47:                               # %for.inc26.3.i179
                                        #   in Loop: Header=BB2_39 Depth=1
	ld.bu	$a1, $a0, 4
	bne	$a1, $s5, .LBB2_305
# %bb.48:                               # %for.inc26.4.i182
                                        #   in Loop: Header=BB2_39 Depth=1
	ld.bu	$a1, $a0, 5
	bne	$a1, $s5, .LBB2_305
# %bb.49:                               # %for.inc26.5.i185
                                        #   in Loop: Header=BB2_39 Depth=1
	ld.bu	$a1, $a0, 6
	bne	$a1, $s5, .LBB2_305
# %bb.50:                               # %for.inc26.6.i188
                                        #   in Loop: Header=BB2_39 Depth=1
	ld.bu	$a0, $a0, 7
	bne	$a0, $s5, .LBB2_305
# %bb.51:                               # %for.inc.i208
                                        #   in Loop: Header=BB2_39 Depth=1
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	beqz	$s0, .LBB2_55
# %bb.52:                               # %for.body6.preheader.i238
                                        #   in Loop: Header=BB2_39 Depth=1
	move	$a1, $zero
	addi.d	$a0, $s4, 1
	.p2align	4, , 16
.LBB2_53:                               # %for.body6.i240
                                        #   Parent Loop BB2_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a2, $s3, $a1
	ld.bu	$a2, $a2, 1
	bne	$a2, $s8, .LBB2_305
# %bb.54:                               # %for.inc12.i246
                                        #   in Loop: Header=BB2_53 Depth=2
	addi.d	$a1, $a1, 1
	bne	$s0, $a1, .LBB2_53
.LBB2_55:                               # %for.cond16.preheader.i213
                                        #   in Loop: Header=BB2_39 Depth=1
	ld.bu	$a1, $a0, 0
	bne	$a1, $s5, .LBB2_305
# %bb.56:                               # %for.inc26.i217
                                        #   in Loop: Header=BB2_39 Depth=1
	ld.bu	$a1, $a0, 1
	bne	$a1, $s5, .LBB2_305
# %bb.57:                               # %for.inc26.1.i220
                                        #   in Loop: Header=BB2_39 Depth=1
	ld.bu	$a1, $a0, 2
	bne	$a1, $s5, .LBB2_305
# %bb.58:                               # %for.inc26.2.i223
                                        #   in Loop: Header=BB2_39 Depth=1
	ld.bu	$a1, $a0, 3
	bne	$a1, $s5, .LBB2_305
# %bb.59:                               # %for.inc26.3.i226
                                        #   in Loop: Header=BB2_39 Depth=1
	ld.bu	$a1, $a0, 4
	bne	$a1, $s5, .LBB2_305
# %bb.60:                               # %for.inc26.4.i229
                                        #   in Loop: Header=BB2_39 Depth=1
	ld.bu	$a1, $a0, 5
	bne	$a1, $s5, .LBB2_305
# %bb.61:                               # %for.inc26.5.i232
                                        #   in Loop: Header=BB2_39 Depth=1
	ld.bu	$a1, $a0, 6
	bne	$a1, $s5, .LBB2_305
# %bb.62:                               # %for.inc26.6.i235
                                        #   in Loop: Header=BB2_39 Depth=1
	ld.bu	$a0, $a0, 7
	bne	$a0, $s5, .LBB2_305
# %bb.63:                               # %for.inc.i255
                                        #   in Loop: Header=BB2_39 Depth=1
	ori	$a1, $zero, 66
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	beqz	$s0, .LBB2_67
# %bb.64:                               # %for.body6.preheader.i285
                                        #   in Loop: Header=BB2_39 Depth=1
	move	$a1, $zero
	addi.d	$a0, $s4, 1
	.p2align	4, , 16
.LBB2_65:                               # %for.body6.i287
                                        #   Parent Loop BB2_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a2, $s3, $a1
	ld.bu	$a2, $a2, 1
	bne	$a2, $s6, .LBB2_305
# %bb.66:                               # %for.inc12.i293
                                        #   in Loop: Header=BB2_65 Depth=2
	addi.d	$a1, $a1, 1
	bne	$s0, $a1, .LBB2_65
.LBB2_67:                               # %for.cond16.preheader.i260
                                        #   in Loop: Header=BB2_39 Depth=1
	ld.bu	$a1, $a0, 0
	bne	$a1, $s5, .LBB2_305
# %bb.68:                               # %for.inc26.i264
                                        #   in Loop: Header=BB2_39 Depth=1
	ld.bu	$a1, $a0, 1
	bne	$a1, $s5, .LBB2_305
# %bb.69:                               # %for.inc26.1.i267
                                        #   in Loop: Header=BB2_39 Depth=1
	ld.bu	$a1, $a0, 2
	bne	$a1, $s5, .LBB2_305
# %bb.70:                               # %for.inc26.2.i270
                                        #   in Loop: Header=BB2_39 Depth=1
	ld.bu	$a1, $a0, 3
	bne	$a1, $s5, .LBB2_305
# %bb.71:                               # %for.inc26.3.i273
                                        #   in Loop: Header=BB2_39 Depth=1
	ld.bu	$a1, $a0, 4
	bne	$a1, $s5, .LBB2_305
# %bb.72:                               # %for.inc26.4.i276
                                        #   in Loop: Header=BB2_39 Depth=1
	ld.bu	$a1, $a0, 5
	bne	$a1, $s5, .LBB2_305
# %bb.73:                               # %for.inc26.5.i279
                                        #   in Loop: Header=BB2_39 Depth=1
	ld.bu	$a1, $a0, 6
	bne	$a1, $s5, .LBB2_305
# %bb.74:                               # %for.inc26.6.i282
                                        #   in Loop: Header=BB2_39 Depth=1
	ld.bu	$a0, $a0, 7
	bne	$a0, $s5, .LBB2_305
# %bb.75:                               # %for.cond14
                                        #   in Loop: Header=BB2_39 Depth=1
	addi.d	$s0, $s0, 1
	bne	$s0, $s7, .LBB2_39
# %bb.76:                               # %for.cond3.preheader.i305.preheader
	move	$s0, $zero
	addi.d	$s1, $s3, 2
	ori	$s5, $zero, 97
	ori	$s6, $zero, 66
	ori	$s7, $zero, 15
	ori	$s8, $zero, 65
	.p2align	4, , 16
.LBB2_77:                               # %for.cond3.preheader.i305
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_79 Depth 2
                                        #     Child Loop BB2_91 Depth 2
                                        #     Child Loop BB2_103 Depth 2
	st.d	$s2, $s3, 23
	st.d	$s2, $s3, 16
	st.d	$s2, $s3, 8
	st.d	$s2, $s3, 0
	move	$a0, $s1
	move	$a1, $zero
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$s4, $s3, $s0
	move	$a0, $s1
	beqz	$s0, .LBB2_81
# %bb.78:                               # %for.body6.preheader.i332
                                        #   in Loop: Header=BB2_77 Depth=1
	move	$a1, $zero
	addi.d	$a0, $s4, 2
	.p2align	4, , 16
.LBB2_79:                               # %for.body6.i334
                                        #   Parent Loop BB2_77 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a2, $s3, $a1
	ld.bu	$a2, $a2, 2
	bnez	$a2, .LBB2_305
# %bb.80:                               # %for.inc12.i340
                                        #   in Loop: Header=BB2_79 Depth=2
	addi.d	$a1, $a1, 1
	bne	$s0, $a1, .LBB2_79
.LBB2_81:                               # %for.cond16.preheader.i307
                                        #   in Loop: Header=BB2_77 Depth=1
	ld.bu	$a1, $a0, 0
	bne	$a1, $s5, .LBB2_305
# %bb.82:                               # %for.inc26.i311
                                        #   in Loop: Header=BB2_77 Depth=1
	ld.bu	$a1, $a0, 1
	bne	$a1, $s5, .LBB2_305
# %bb.83:                               # %for.inc26.1.i314
                                        #   in Loop: Header=BB2_77 Depth=1
	ld.bu	$a1, $a0, 2
	bne	$a1, $s5, .LBB2_305
# %bb.84:                               # %for.inc26.2.i317
                                        #   in Loop: Header=BB2_77 Depth=1
	ld.bu	$a1, $a0, 3
	bne	$a1, $s5, .LBB2_305
# %bb.85:                               # %for.inc26.3.i320
                                        #   in Loop: Header=BB2_77 Depth=1
	ld.bu	$a1, $a0, 4
	bne	$a1, $s5, .LBB2_305
# %bb.86:                               # %for.inc26.4.i323
                                        #   in Loop: Header=BB2_77 Depth=1
	ld.bu	$a1, $a0, 5
	bne	$a1, $s5, .LBB2_305
# %bb.87:                               # %for.inc26.5.i326
                                        #   in Loop: Header=BB2_77 Depth=1
	ld.bu	$a1, $a0, 6
	bne	$a1, $s5, .LBB2_305
# %bb.88:                               # %for.inc26.6.i329
                                        #   in Loop: Header=BB2_77 Depth=1
	ld.bu	$a0, $a0, 7
	bne	$a0, $s5, .LBB2_305
# %bb.89:                               # %for.inc.i349.1
                                        #   in Loop: Header=BB2_77 Depth=1
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	beqz	$s0, .LBB2_93
# %bb.90:                               # %for.body6.preheader.i379
                                        #   in Loop: Header=BB2_77 Depth=1
	move	$a1, $zero
	addi.d	$a0, $s4, 2
	.p2align	4, , 16
.LBB2_91:                               # %for.body6.i381
                                        #   Parent Loop BB2_77 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a2, $s3, $a1
	ld.bu	$a2, $a2, 2
	bne	$a2, $s8, .LBB2_305
# %bb.92:                               # %for.inc12.i387
                                        #   in Loop: Header=BB2_91 Depth=2
	addi.d	$a1, $a1, 1
	bne	$s0, $a1, .LBB2_91
.LBB2_93:                               # %for.cond16.preheader.i354
                                        #   in Loop: Header=BB2_77 Depth=1
	ld.bu	$a1, $a0, 0
	bne	$a1, $s5, .LBB2_305
# %bb.94:                               # %for.inc26.i358
                                        #   in Loop: Header=BB2_77 Depth=1
	ld.bu	$a1, $a0, 1
	bne	$a1, $s5, .LBB2_305
# %bb.95:                               # %for.inc26.1.i361
                                        #   in Loop: Header=BB2_77 Depth=1
	ld.bu	$a1, $a0, 2
	bne	$a1, $s5, .LBB2_305
# %bb.96:                               # %for.inc26.2.i364
                                        #   in Loop: Header=BB2_77 Depth=1
	ld.bu	$a1, $a0, 3
	bne	$a1, $s5, .LBB2_305
# %bb.97:                               # %for.inc26.3.i367
                                        #   in Loop: Header=BB2_77 Depth=1
	ld.bu	$a1, $a0, 4
	bne	$a1, $s5, .LBB2_305
# %bb.98:                               # %for.inc26.4.i370
                                        #   in Loop: Header=BB2_77 Depth=1
	ld.bu	$a1, $a0, 5
	bne	$a1, $s5, .LBB2_305
# %bb.99:                               # %for.inc26.5.i373
                                        #   in Loop: Header=BB2_77 Depth=1
	ld.bu	$a1, $a0, 6
	bne	$a1, $s5, .LBB2_305
# %bb.100:                              # %for.inc26.6.i376
                                        #   in Loop: Header=BB2_77 Depth=1
	ld.bu	$a0, $a0, 7
	bne	$a0, $s5, .LBB2_305
# %bb.101:                              # %for.inc.i396.1
                                        #   in Loop: Header=BB2_77 Depth=1
	ori	$a1, $zero, 66
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	beqz	$s0, .LBB2_105
# %bb.102:                              # %for.body6.preheader.i426
                                        #   in Loop: Header=BB2_77 Depth=1
	move	$a1, $zero
	addi.d	$a0, $s4, 2
	.p2align	4, , 16
.LBB2_103:                              # %for.body6.i428
                                        #   Parent Loop BB2_77 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a2, $s3, $a1
	ld.bu	$a2, $a2, 2
	bne	$a2, $s6, .LBB2_305
# %bb.104:                              # %for.inc12.i434
                                        #   in Loop: Header=BB2_103 Depth=2
	addi.d	$a1, $a1, 1
	bne	$s0, $a1, .LBB2_103
.LBB2_105:                              # %for.cond16.preheader.i401
                                        #   in Loop: Header=BB2_77 Depth=1
	ld.bu	$a1, $a0, 0
	bne	$a1, $s5, .LBB2_305
# %bb.106:                              # %for.inc26.i405
                                        #   in Loop: Header=BB2_77 Depth=1
	ld.bu	$a1, $a0, 1
	bne	$a1, $s5, .LBB2_305
# %bb.107:                              # %for.inc26.1.i408
                                        #   in Loop: Header=BB2_77 Depth=1
	ld.bu	$a1, $a0, 2
	bne	$a1, $s5, .LBB2_305
# %bb.108:                              # %for.inc26.2.i411
                                        #   in Loop: Header=BB2_77 Depth=1
	ld.bu	$a1, $a0, 3
	bne	$a1, $s5, .LBB2_305
# %bb.109:                              # %for.inc26.3.i414
                                        #   in Loop: Header=BB2_77 Depth=1
	ld.bu	$a1, $a0, 4
	bne	$a1, $s5, .LBB2_305
# %bb.110:                              # %for.inc26.4.i417
                                        #   in Loop: Header=BB2_77 Depth=1
	ld.bu	$a1, $a0, 5
	bne	$a1, $s5, .LBB2_305
# %bb.111:                              # %for.inc26.5.i420
                                        #   in Loop: Header=BB2_77 Depth=1
	ld.bu	$a1, $a0, 6
	bne	$a1, $s5, .LBB2_305
# %bb.112:                              # %for.inc26.6.i423
                                        #   in Loop: Header=BB2_77 Depth=1
	ld.bu	$a0, $a0, 7
	bne	$a0, $s5, .LBB2_305
# %bb.113:                              # %for.cond37
                                        #   in Loop: Header=BB2_77 Depth=1
	addi.d	$s0, $s0, 1
	bne	$s0, $s7, .LBB2_77
# %bb.114:                              # %for.cond3.preheader.i446.preheader
	move	$s0, $zero
	addi.d	$s1, $s3, 3
	ori	$s5, $zero, 97
	ori	$s6, $zero, 66
	ori	$s7, $zero, 15
	ori	$s8, $zero, 65
.LBB2_115:                              # %for.cond3.preheader.i446
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_117 Depth 2
                                        #     Child Loop BB2_129 Depth 2
                                        #     Child Loop BB2_141 Depth 2
	st.d	$s2, $s3, 23
	st.d	$s2, $s3, 16
	st.d	$s2, $s3, 8
	st.d	$s2, $s3, 0
	move	$a0, $s1
	move	$a1, $zero
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$s4, $s3, $s0
	move	$a0, $s1
	beqz	$s0, .LBB2_119
# %bb.116:                              # %for.body6.preheader.i473
                                        #   in Loop: Header=BB2_115 Depth=1
	move	$a1, $zero
	addi.d	$a0, $s4, 3
	.p2align	4, , 16
.LBB2_117:                              # %for.body6.i475
                                        #   Parent Loop BB2_115 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a2, $s3, $a1
	ld.bu	$a2, $a2, 3
	bnez	$a2, .LBB2_305
# %bb.118:                              # %for.inc12.i481
                                        #   in Loop: Header=BB2_117 Depth=2
	addi.d	$a1, $a1, 1
	bne	$s0, $a1, .LBB2_117
.LBB2_119:                              # %for.cond16.preheader.i448
                                        #   in Loop: Header=BB2_115 Depth=1
	ld.bu	$a1, $a0, 0
	bne	$a1, $s5, .LBB2_305
# %bb.120:                              # %for.inc26.i452
                                        #   in Loop: Header=BB2_115 Depth=1
	ld.bu	$a1, $a0, 1
	bne	$a1, $s5, .LBB2_305
# %bb.121:                              # %for.inc26.1.i455
                                        #   in Loop: Header=BB2_115 Depth=1
	ld.bu	$a1, $a0, 2
	bne	$a1, $s5, .LBB2_305
# %bb.122:                              # %for.inc26.2.i458
                                        #   in Loop: Header=BB2_115 Depth=1
	ld.bu	$a1, $a0, 3
	bne	$a1, $s5, .LBB2_305
# %bb.123:                              # %for.inc26.3.i461
                                        #   in Loop: Header=BB2_115 Depth=1
	ld.bu	$a1, $a0, 4
	bne	$a1, $s5, .LBB2_305
# %bb.124:                              # %for.inc26.4.i464
                                        #   in Loop: Header=BB2_115 Depth=1
	ld.bu	$a1, $a0, 5
	bne	$a1, $s5, .LBB2_305
# %bb.125:                              # %for.inc26.5.i467
                                        #   in Loop: Header=BB2_115 Depth=1
	ld.bu	$a1, $a0, 6
	bne	$a1, $s5, .LBB2_305
# %bb.126:                              # %for.inc26.6.i470
                                        #   in Loop: Header=BB2_115 Depth=1
	ld.bu	$a0, $a0, 7
	bne	$a0, $s5, .LBB2_305
# %bb.127:                              # %for.inc.i490.2
                                        #   in Loop: Header=BB2_115 Depth=1
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	beqz	$s0, .LBB2_131
# %bb.128:                              # %for.body6.preheader.i520
                                        #   in Loop: Header=BB2_115 Depth=1
	move	$a1, $zero
	addi.d	$a0, $s4, 3
	.p2align	4, , 16
.LBB2_129:                              # %for.body6.i522
                                        #   Parent Loop BB2_115 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a2, $s3, $a1
	ld.bu	$a2, $a2, 3
	bne	$a2, $s8, .LBB2_305
# %bb.130:                              # %for.inc12.i528
                                        #   in Loop: Header=BB2_129 Depth=2
	addi.d	$a1, $a1, 1
	bne	$s0, $a1, .LBB2_129
.LBB2_131:                              # %for.cond16.preheader.i495
                                        #   in Loop: Header=BB2_115 Depth=1
	ld.bu	$a1, $a0, 0
	bne	$a1, $s5, .LBB2_305
# %bb.132:                              # %for.inc26.i499
                                        #   in Loop: Header=BB2_115 Depth=1
	ld.bu	$a1, $a0, 1
	bne	$a1, $s5, .LBB2_305
# %bb.133:                              # %for.inc26.1.i502
                                        #   in Loop: Header=BB2_115 Depth=1
	ld.bu	$a1, $a0, 2
	bne	$a1, $s5, .LBB2_305
# %bb.134:                              # %for.inc26.2.i505
                                        #   in Loop: Header=BB2_115 Depth=1
	ld.bu	$a1, $a0, 3
	bne	$a1, $s5, .LBB2_305
# %bb.135:                              # %for.inc26.3.i508
                                        #   in Loop: Header=BB2_115 Depth=1
	ld.bu	$a1, $a0, 4
	bne	$a1, $s5, .LBB2_305
# %bb.136:                              # %for.inc26.4.i511
                                        #   in Loop: Header=BB2_115 Depth=1
	ld.bu	$a1, $a0, 5
	bne	$a1, $s5, .LBB2_305
# %bb.137:                              # %for.inc26.5.i514
                                        #   in Loop: Header=BB2_115 Depth=1
	ld.bu	$a1, $a0, 6
	bne	$a1, $s5, .LBB2_305
# %bb.138:                              # %for.inc26.6.i517
                                        #   in Loop: Header=BB2_115 Depth=1
	ld.bu	$a0, $a0, 7
	bne	$a0, $s5, .LBB2_305
# %bb.139:                              # %for.inc.i537.2
                                        #   in Loop: Header=BB2_115 Depth=1
	ori	$a1, $zero, 66
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	beqz	$s0, .LBB2_143
# %bb.140:                              # %for.body6.preheader.i567
                                        #   in Loop: Header=BB2_115 Depth=1
	move	$a1, $zero
	addi.d	$a0, $s4, 3
	.p2align	4, , 16
.LBB2_141:                              # %for.body6.i569
                                        #   Parent Loop BB2_115 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a2, $s3, $a1
	ld.bu	$a2, $a2, 3
	bne	$a2, $s6, .LBB2_305
# %bb.142:                              # %for.inc12.i575
                                        #   in Loop: Header=BB2_141 Depth=2
	addi.d	$a1, $a1, 1
	bne	$s0, $a1, .LBB2_141
.LBB2_143:                              # %for.cond16.preheader.i542
                                        #   in Loop: Header=BB2_115 Depth=1
	ld.bu	$a1, $a0, 0
	bne	$a1, $s5, .LBB2_305
# %bb.144:                              # %for.inc26.i546
                                        #   in Loop: Header=BB2_115 Depth=1
	ld.bu	$a1, $a0, 1
	bne	$a1, $s5, .LBB2_305
# %bb.145:                              # %for.inc26.1.i549
                                        #   in Loop: Header=BB2_115 Depth=1
	ld.bu	$a1, $a0, 2
	bne	$a1, $s5, .LBB2_305
# %bb.146:                              # %for.inc26.2.i552
                                        #   in Loop: Header=BB2_115 Depth=1
	ld.bu	$a1, $a0, 3
	bne	$a1, $s5, .LBB2_305
# %bb.147:                              # %for.inc26.3.i555
                                        #   in Loop: Header=BB2_115 Depth=1
	ld.bu	$a1, $a0, 4
	bne	$a1, $s5, .LBB2_305
# %bb.148:                              # %for.inc26.4.i558
                                        #   in Loop: Header=BB2_115 Depth=1
	ld.bu	$a1, $a0, 5
	bne	$a1, $s5, .LBB2_305
# %bb.149:                              # %for.inc26.5.i561
                                        #   in Loop: Header=BB2_115 Depth=1
	ld.bu	$a1, $a0, 6
	bne	$a1, $s5, .LBB2_305
# %bb.150:                              # %for.inc26.6.i564
                                        #   in Loop: Header=BB2_115 Depth=1
	ld.bu	$a0, $a0, 7
	bne	$a0, $s5, .LBB2_305
# %bb.151:                              # %for.cond60
                                        #   in Loop: Header=BB2_115 Depth=1
	addi.d	$s0, $s0, 1
	bne	$s0, $s7, .LBB2_115
# %bb.152:                              # %for.cond3.preheader.i587.preheader
	move	$s0, $zero
	addi.d	$s1, $s3, 4
	ori	$s5, $zero, 97
	ori	$s6, $zero, 66
	ori	$s7, $zero, 15
	ori	$s8, $zero, 65
.LBB2_153:                              # %for.cond3.preheader.i587
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_155 Depth 2
                                        #     Child Loop BB2_167 Depth 2
                                        #     Child Loop BB2_179 Depth 2
	st.d	$s2, $s3, 23
	st.d	$s2, $s3, 16
	st.d	$s2, $s3, 8
	st.d	$s2, $s3, 0
	move	$a0, $s1
	move	$a1, $zero
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$s4, $s3, $s0
	move	$a0, $s1
	beqz	$s0, .LBB2_157
# %bb.154:                              # %for.body6.preheader.i614
                                        #   in Loop: Header=BB2_153 Depth=1
	move	$a1, $zero
	addi.d	$a0, $s4, 4
.LBB2_155:                              # %for.body6.i616
                                        #   Parent Loop BB2_153 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a2, $s3, $a1
	ld.bu	$a2, $a2, 4
	bnez	$a2, .LBB2_305
# %bb.156:                              # %for.inc12.i622
                                        #   in Loop: Header=BB2_155 Depth=2
	addi.d	$a1, $a1, 1
	bne	$s0, $a1, .LBB2_155
.LBB2_157:                              # %for.cond16.preheader.i589
                                        #   in Loop: Header=BB2_153 Depth=1
	ld.bu	$a1, $a0, 0
	bne	$a1, $s5, .LBB2_305
# %bb.158:                              # %for.inc26.i593
                                        #   in Loop: Header=BB2_153 Depth=1
	ld.bu	$a1, $a0, 1
	bne	$a1, $s5, .LBB2_305
# %bb.159:                              # %for.inc26.1.i596
                                        #   in Loop: Header=BB2_153 Depth=1
	ld.bu	$a1, $a0, 2
	bne	$a1, $s5, .LBB2_305
# %bb.160:                              # %for.inc26.2.i599
                                        #   in Loop: Header=BB2_153 Depth=1
	ld.bu	$a1, $a0, 3
	bne	$a1, $s5, .LBB2_305
# %bb.161:                              # %for.inc26.3.i602
                                        #   in Loop: Header=BB2_153 Depth=1
	ld.bu	$a1, $a0, 4
	bne	$a1, $s5, .LBB2_305
# %bb.162:                              # %for.inc26.4.i605
                                        #   in Loop: Header=BB2_153 Depth=1
	ld.bu	$a1, $a0, 5
	bne	$a1, $s5, .LBB2_305
# %bb.163:                              # %for.inc26.5.i608
                                        #   in Loop: Header=BB2_153 Depth=1
	ld.bu	$a1, $a0, 6
	bne	$a1, $s5, .LBB2_305
# %bb.164:                              # %for.inc26.6.i611
                                        #   in Loop: Header=BB2_153 Depth=1
	ld.bu	$a0, $a0, 7
	bne	$a0, $s5, .LBB2_305
# %bb.165:                              # %for.inc.i631.3
                                        #   in Loop: Header=BB2_153 Depth=1
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	beqz	$s0, .LBB2_169
# %bb.166:                              # %for.body6.preheader.i661
                                        #   in Loop: Header=BB2_153 Depth=1
	move	$a1, $zero
	addi.d	$a0, $s4, 4
.LBB2_167:                              # %for.body6.i663
                                        #   Parent Loop BB2_153 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a2, $s3, $a1
	ld.bu	$a2, $a2, 4
	bne	$a2, $s8, .LBB2_305
# %bb.168:                              # %for.inc12.i669
                                        #   in Loop: Header=BB2_167 Depth=2
	addi.d	$a1, $a1, 1
	bne	$s0, $a1, .LBB2_167
.LBB2_169:                              # %for.cond16.preheader.i636
                                        #   in Loop: Header=BB2_153 Depth=1
	ld.bu	$a1, $a0, 0
	bne	$a1, $s5, .LBB2_305
# %bb.170:                              # %for.inc26.i640
                                        #   in Loop: Header=BB2_153 Depth=1
	ld.bu	$a1, $a0, 1
	bne	$a1, $s5, .LBB2_305
# %bb.171:                              # %for.inc26.1.i643
                                        #   in Loop: Header=BB2_153 Depth=1
	ld.bu	$a1, $a0, 2
	bne	$a1, $s5, .LBB2_305
# %bb.172:                              # %for.inc26.2.i646
                                        #   in Loop: Header=BB2_153 Depth=1
	ld.bu	$a1, $a0, 3
	bne	$a1, $s5, .LBB2_305
# %bb.173:                              # %for.inc26.3.i649
                                        #   in Loop: Header=BB2_153 Depth=1
	ld.bu	$a1, $a0, 4
	bne	$a1, $s5, .LBB2_305
# %bb.174:                              # %for.inc26.4.i652
                                        #   in Loop: Header=BB2_153 Depth=1
	ld.bu	$a1, $a0, 5
	bne	$a1, $s5, .LBB2_305
# %bb.175:                              # %for.inc26.5.i655
                                        #   in Loop: Header=BB2_153 Depth=1
	ld.bu	$a1, $a0, 6
	bne	$a1, $s5, .LBB2_305
# %bb.176:                              # %for.inc26.6.i658
                                        #   in Loop: Header=BB2_153 Depth=1
	ld.bu	$a0, $a0, 7
	bne	$a0, $s5, .LBB2_305
# %bb.177:                              # %for.inc.i678.3
                                        #   in Loop: Header=BB2_153 Depth=1
	ori	$a1, $zero, 66
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	beqz	$s0, .LBB2_181
# %bb.178:                              # %for.body6.preheader.i708
                                        #   in Loop: Header=BB2_153 Depth=1
	move	$a1, $zero
	addi.d	$a0, $s4, 4
.LBB2_179:                              # %for.body6.i710
                                        #   Parent Loop BB2_153 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a2, $s3, $a1
	ld.bu	$a2, $a2, 4
	bne	$a2, $s6, .LBB2_305
# %bb.180:                              # %for.inc12.i716
                                        #   in Loop: Header=BB2_179 Depth=2
	addi.d	$a1, $a1, 1
	bne	$s0, $a1, .LBB2_179
.LBB2_181:                              # %for.cond16.preheader.i683
                                        #   in Loop: Header=BB2_153 Depth=1
	ld.bu	$a1, $a0, 0
	bne	$a1, $s5, .LBB2_305
# %bb.182:                              # %for.inc26.i687
                                        #   in Loop: Header=BB2_153 Depth=1
	ld.bu	$a1, $a0, 1
	bne	$a1, $s5, .LBB2_305
# %bb.183:                              # %for.inc26.1.i690
                                        #   in Loop: Header=BB2_153 Depth=1
	ld.bu	$a1, $a0, 2
	bne	$a1, $s5, .LBB2_305
# %bb.184:                              # %for.inc26.2.i693
                                        #   in Loop: Header=BB2_153 Depth=1
	ld.bu	$a1, $a0, 3
	bne	$a1, $s5, .LBB2_305
# %bb.185:                              # %for.inc26.3.i696
                                        #   in Loop: Header=BB2_153 Depth=1
	ld.bu	$a1, $a0, 4
	bne	$a1, $s5, .LBB2_305
# %bb.186:                              # %for.inc26.4.i699
                                        #   in Loop: Header=BB2_153 Depth=1
	ld.bu	$a1, $a0, 5
	bne	$a1, $s5, .LBB2_305
# %bb.187:                              # %for.inc26.5.i702
                                        #   in Loop: Header=BB2_153 Depth=1
	ld.bu	$a1, $a0, 6
	bne	$a1, $s5, .LBB2_305
# %bb.188:                              # %for.inc26.6.i705
                                        #   in Loop: Header=BB2_153 Depth=1
	ld.bu	$a0, $a0, 7
	bne	$a0, $s5, .LBB2_305
# %bb.189:                              # %for.cond83
                                        #   in Loop: Header=BB2_153 Depth=1
	addi.d	$s0, $s0, 1
	bne	$s0, $s7, .LBB2_153
# %bb.190:                              # %for.cond106.preheader
	move	$s0, $zero
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.bu	$fp, $a0, %pc_lo12(A)
	addi.d	$s1, $s3, 5
	ori	$s4, $zero, 97
	ori	$s5, $zero, 66
	ori	$s6, $zero, 15
	ori	$s7, $zero, 65
.LBB2_191:                              # %for.cond3.preheader.i728
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_193 Depth 2
                                        #     Child Loop BB2_205 Depth 2
                                        #     Child Loop BB2_217 Depth 2
	st.d	$s2, $s3, 23
	st.d	$s2, $s3, 16
	st.d	$s2, $s3, 8
	st.d	$s2, $s3, 0
	move	$a0, $s1
	move	$a1, $zero
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$s8, $s3, $s0
	move	$a0, $s1
	beqz	$s0, .LBB2_195
# %bb.192:                              # %for.body6.preheader.i755
                                        #   in Loop: Header=BB2_191 Depth=1
	move	$a1, $zero
	addi.d	$a0, $s8, 5
.LBB2_193:                              # %for.body6.i757
                                        #   Parent Loop BB2_191 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a2, $s3, $a1
	ld.bu	$a2, $a2, 5
	bnez	$a2, .LBB2_305
# %bb.194:                              # %for.inc12.i763
                                        #   in Loop: Header=BB2_193 Depth=2
	addi.d	$a1, $a1, 1
	bne	$s0, $a1, .LBB2_193
.LBB2_195:                              # %for.cond16.preheader.i730
                                        #   in Loop: Header=BB2_191 Depth=1
	ld.bu	$a1, $a0, 0
	bne	$a1, $s4, .LBB2_305
# %bb.196:                              # %for.inc26.i734
                                        #   in Loop: Header=BB2_191 Depth=1
	ld.bu	$a1, $a0, 1
	bne	$a1, $s4, .LBB2_305
# %bb.197:                              # %for.inc26.1.i737
                                        #   in Loop: Header=BB2_191 Depth=1
	ld.bu	$a1, $a0, 2
	bne	$a1, $s4, .LBB2_305
# %bb.198:                              # %for.inc26.2.i740
                                        #   in Loop: Header=BB2_191 Depth=1
	ld.bu	$a1, $a0, 3
	bne	$a1, $s4, .LBB2_305
# %bb.199:                              # %for.inc26.3.i743
                                        #   in Loop: Header=BB2_191 Depth=1
	ld.bu	$a1, $a0, 4
	bne	$a1, $s4, .LBB2_305
# %bb.200:                              # %for.inc26.4.i746
                                        #   in Loop: Header=BB2_191 Depth=1
	ld.bu	$a1, $a0, 5
	bne	$a1, $s4, .LBB2_305
# %bb.201:                              # %for.inc26.5.i749
                                        #   in Loop: Header=BB2_191 Depth=1
	ld.bu	$a1, $a0, 6
	bne	$a1, $s4, .LBB2_305
# %bb.202:                              # %for.inc26.6.i752
                                        #   in Loop: Header=BB2_191 Depth=1
	ld.bu	$a0, $a0, 7
	bne	$a0, $s4, .LBB2_305
# %bb.203:                              # %for.inc.i772.4
                                        #   in Loop: Header=BB2_191 Depth=1
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	beqz	$s0, .LBB2_207
# %bb.204:                              # %for.body6.preheader.i802
                                        #   in Loop: Header=BB2_191 Depth=1
	move	$a1, $zero
	addi.d	$a0, $s8, 5
.LBB2_205:                              # %for.body6.i804
                                        #   Parent Loop BB2_191 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a2, $s3, $a1
	ld.bu	$a2, $a2, 5
	bne	$a2, $s7, .LBB2_305
# %bb.206:                              # %for.inc12.i810
                                        #   in Loop: Header=BB2_205 Depth=2
	addi.d	$a1, $a1, 1
	bne	$s0, $a1, .LBB2_205
.LBB2_207:                              # %for.cond16.preheader.i777
                                        #   in Loop: Header=BB2_191 Depth=1
	ld.bu	$a1, $a0, 0
	bne	$a1, $s4, .LBB2_305
# %bb.208:                              # %for.inc26.i781
                                        #   in Loop: Header=BB2_191 Depth=1
	ld.bu	$a1, $a0, 1
	bne	$a1, $s4, .LBB2_305
# %bb.209:                              # %for.inc26.1.i784
                                        #   in Loop: Header=BB2_191 Depth=1
	ld.bu	$a1, $a0, 2
	bne	$a1, $s4, .LBB2_305
# %bb.210:                              # %for.inc26.2.i787
                                        #   in Loop: Header=BB2_191 Depth=1
	ld.bu	$a1, $a0, 3
	bne	$a1, $s4, .LBB2_305
# %bb.211:                              # %for.inc26.3.i790
                                        #   in Loop: Header=BB2_191 Depth=1
	ld.bu	$a1, $a0, 4
	bne	$a1, $s4, .LBB2_305
# %bb.212:                              # %for.inc26.4.i793
                                        #   in Loop: Header=BB2_191 Depth=1
	ld.bu	$a1, $a0, 5
	bne	$a1, $s4, .LBB2_305
# %bb.213:                              # %for.inc26.5.i796
                                        #   in Loop: Header=BB2_191 Depth=1
	ld.bu	$a1, $a0, 6
	bne	$a1, $s4, .LBB2_305
# %bb.214:                              # %for.inc26.6.i799
                                        #   in Loop: Header=BB2_191 Depth=1
	ld.bu	$a0, $a0, 7
	bne	$a0, $s4, .LBB2_305
# %bb.215:                              # %for.inc.i819.4
                                        #   in Loop: Header=BB2_191 Depth=1
	ori	$a1, $zero, 66
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	beqz	$s0, .LBB2_219
# %bb.216:                              # %for.body6.preheader.i849
                                        #   in Loop: Header=BB2_191 Depth=1
	move	$a1, $zero
	addi.d	$a0, $s8, 5
.LBB2_217:                              # %for.body6.i851
                                        #   Parent Loop BB2_191 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a2, $s3, $a1
	ld.bu	$a2, $a2, 5
	bne	$a2, $s5, .LBB2_305
# %bb.218:                              # %for.inc12.i857
                                        #   in Loop: Header=BB2_217 Depth=2
	addi.d	$a1, $a1, 1
	bne	$s0, $a1, .LBB2_217
.LBB2_219:                              # %for.cond16.preheader.i824
                                        #   in Loop: Header=BB2_191 Depth=1
	ld.bu	$a1, $a0, 0
	bne	$a1, $s4, .LBB2_305
# %bb.220:                              # %for.inc26.i828
                                        #   in Loop: Header=BB2_191 Depth=1
	ld.bu	$a1, $a0, 1
	bne	$a1, $s4, .LBB2_305
# %bb.221:                              # %for.inc26.1.i831
                                        #   in Loop: Header=BB2_191 Depth=1
	ld.bu	$a1, $a0, 2
	bne	$a1, $s4, .LBB2_305
# %bb.222:                              # %for.inc26.2.i834
                                        #   in Loop: Header=BB2_191 Depth=1
	ld.bu	$a1, $a0, 3
	bne	$a1, $s4, .LBB2_305
# %bb.223:                              # %for.inc26.3.i837
                                        #   in Loop: Header=BB2_191 Depth=1
	ld.bu	$a1, $a0, 4
	bne	$a1, $s4, .LBB2_305
# %bb.224:                              # %for.inc26.4.i840
                                        #   in Loop: Header=BB2_191 Depth=1
	ld.bu	$a1, $a0, 5
	bne	$a1, $s4, .LBB2_305
# %bb.225:                              # %for.inc26.5.i843
                                        #   in Loop: Header=BB2_191 Depth=1
	ld.bu	$a1, $a0, 6
	bne	$a1, $s4, .LBB2_305
# %bb.226:                              # %for.inc26.6.i846
                                        #   in Loop: Header=BB2_191 Depth=1
	ld.bu	$a0, $a0, 7
	bne	$a0, $s4, .LBB2_305
# %bb.227:                              # %for.cond106
                                        #   in Loop: Header=BB2_191 Depth=1
	addi.d	$s0, $s0, 1
	bne	$s0, $s6, .LBB2_191
# %bb.228:                              # %for.cond3.preheader.i869.preheader
	move	$s0, $zero
	addi.d	$s1, $s3, 6
	ori	$s4, $zero, 97
	ori	$s5, $zero, 66
	ori	$s6, $zero, 15
	ori	$s7, $zero, 65
.LBB2_229:                              # %for.cond3.preheader.i869
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_231 Depth 2
                                        #     Child Loop BB2_243 Depth 2
                                        #     Child Loop BB2_255 Depth 2
	st.d	$s2, $s3, 23
	st.d	$s2, $s3, 16
	st.d	$s2, $s3, 8
	st.d	$s2, $s3, 0
	move	$a0, $s1
	move	$a1, $zero
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$s8, $s3, $s0
	move	$a0, $s1
	beqz	$s0, .LBB2_233
# %bb.230:                              # %for.body6.preheader.i896
                                        #   in Loop: Header=BB2_229 Depth=1
	move	$a1, $zero
	addi.d	$a0, $s8, 6
.LBB2_231:                              # %for.body6.i898
                                        #   Parent Loop BB2_229 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a2, $s3, $a1
	ld.bu	$a2, $a2, 6
	bnez	$a2, .LBB2_305
# %bb.232:                              # %for.inc12.i904
                                        #   in Loop: Header=BB2_231 Depth=2
	addi.d	$a1, $a1, 1
	bne	$s0, $a1, .LBB2_231
.LBB2_233:                              # %for.cond16.preheader.i871
                                        #   in Loop: Header=BB2_229 Depth=1
	ld.bu	$a1, $a0, 0
	bne	$a1, $s4, .LBB2_305
# %bb.234:                              # %for.inc26.i875
                                        #   in Loop: Header=BB2_229 Depth=1
	ld.bu	$a1, $a0, 1
	bne	$a1, $s4, .LBB2_305
# %bb.235:                              # %for.inc26.1.i878
                                        #   in Loop: Header=BB2_229 Depth=1
	ld.bu	$a1, $a0, 2
	bne	$a1, $s4, .LBB2_305
# %bb.236:                              # %for.inc26.2.i881
                                        #   in Loop: Header=BB2_229 Depth=1
	ld.bu	$a1, $a0, 3
	bne	$a1, $s4, .LBB2_305
# %bb.237:                              # %for.inc26.3.i884
                                        #   in Loop: Header=BB2_229 Depth=1
	ld.bu	$a1, $a0, 4
	bne	$a1, $s4, .LBB2_305
# %bb.238:                              # %for.inc26.4.i887
                                        #   in Loop: Header=BB2_229 Depth=1
	ld.bu	$a1, $a0, 5
	bne	$a1, $s4, .LBB2_305
# %bb.239:                              # %for.inc26.5.i890
                                        #   in Loop: Header=BB2_229 Depth=1
	ld.bu	$a1, $a0, 6
	bne	$a1, $s4, .LBB2_305
# %bb.240:                              # %for.inc26.6.i893
                                        #   in Loop: Header=BB2_229 Depth=1
	ld.bu	$a0, $a0, 7
	bne	$a0, $s4, .LBB2_305
# %bb.241:                              # %for.inc.i913.5
                                        #   in Loop: Header=BB2_229 Depth=1
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	beqz	$s0, .LBB2_245
# %bb.242:                              # %for.body6.preheader.i943
                                        #   in Loop: Header=BB2_229 Depth=1
	move	$a1, $zero
	addi.d	$a0, $s8, 6
.LBB2_243:                              # %for.body6.i945
                                        #   Parent Loop BB2_229 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a2, $s3, $a1
	ld.bu	$a2, $a2, 6
	bne	$a2, $s7, .LBB2_305
# %bb.244:                              # %for.inc12.i951
                                        #   in Loop: Header=BB2_243 Depth=2
	addi.d	$a1, $a1, 1
	bne	$s0, $a1, .LBB2_243
.LBB2_245:                              # %for.cond16.preheader.i918
                                        #   in Loop: Header=BB2_229 Depth=1
	ld.bu	$a1, $a0, 0
	bne	$a1, $s4, .LBB2_305
# %bb.246:                              # %for.inc26.i922
                                        #   in Loop: Header=BB2_229 Depth=1
	ld.bu	$a1, $a0, 1
	bne	$a1, $s4, .LBB2_305
# %bb.247:                              # %for.inc26.1.i925
                                        #   in Loop: Header=BB2_229 Depth=1
	ld.bu	$a1, $a0, 2
	bne	$a1, $s4, .LBB2_305
# %bb.248:                              # %for.inc26.2.i928
                                        #   in Loop: Header=BB2_229 Depth=1
	ld.bu	$a1, $a0, 3
	bne	$a1, $s4, .LBB2_305
# %bb.249:                              # %for.inc26.3.i931
                                        #   in Loop: Header=BB2_229 Depth=1
	ld.bu	$a1, $a0, 4
	bne	$a1, $s4, .LBB2_305
# %bb.250:                              # %for.inc26.4.i934
                                        #   in Loop: Header=BB2_229 Depth=1
	ld.bu	$a1, $a0, 5
	bne	$a1, $s4, .LBB2_305
# %bb.251:                              # %for.inc26.5.i937
                                        #   in Loop: Header=BB2_229 Depth=1
	ld.bu	$a1, $a0, 6
	bne	$a1, $s4, .LBB2_305
# %bb.252:                              # %for.inc26.6.i940
                                        #   in Loop: Header=BB2_229 Depth=1
	ld.bu	$a0, $a0, 7
	bne	$a0, $s4, .LBB2_305
# %bb.253:                              # %for.inc.i960.5
                                        #   in Loop: Header=BB2_229 Depth=1
	ori	$a1, $zero, 66
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	beqz	$s0, .LBB2_257
# %bb.254:                              # %for.body6.preheader.i990
                                        #   in Loop: Header=BB2_229 Depth=1
	move	$a1, $zero
	addi.d	$a0, $s8, 6
.LBB2_255:                              # %for.body6.i992
                                        #   Parent Loop BB2_229 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a2, $s3, $a1
	ld.bu	$a2, $a2, 6
	bne	$a2, $s5, .LBB2_305
# %bb.256:                              # %for.inc12.i998
                                        #   in Loop: Header=BB2_255 Depth=2
	addi.d	$a1, $a1, 1
	bne	$s0, $a1, .LBB2_255
.LBB2_257:                              # %for.cond16.preheader.i965
                                        #   in Loop: Header=BB2_229 Depth=1
	ld.bu	$a1, $a0, 0
	bne	$a1, $s4, .LBB2_305
# %bb.258:                              # %for.inc26.i969
                                        #   in Loop: Header=BB2_229 Depth=1
	ld.bu	$a1, $a0, 1
	bne	$a1, $s4, .LBB2_305
# %bb.259:                              # %for.inc26.1.i972
                                        #   in Loop: Header=BB2_229 Depth=1
	ld.bu	$a1, $a0, 2
	bne	$a1, $s4, .LBB2_305
# %bb.260:                              # %for.inc26.2.i975
                                        #   in Loop: Header=BB2_229 Depth=1
	ld.bu	$a1, $a0, 3
	bne	$a1, $s4, .LBB2_305
# %bb.261:                              # %for.inc26.3.i978
                                        #   in Loop: Header=BB2_229 Depth=1
	ld.bu	$a1, $a0, 4
	bne	$a1, $s4, .LBB2_305
# %bb.262:                              # %for.inc26.4.i981
                                        #   in Loop: Header=BB2_229 Depth=1
	ld.bu	$a1, $a0, 5
	bne	$a1, $s4, .LBB2_305
# %bb.263:                              # %for.inc26.5.i984
                                        #   in Loop: Header=BB2_229 Depth=1
	ld.bu	$a1, $a0, 6
	bne	$a1, $s4, .LBB2_305
# %bb.264:                              # %for.inc26.6.i987
                                        #   in Loop: Header=BB2_229 Depth=1
	ld.bu	$a0, $a0, 7
	bne	$a0, $s4, .LBB2_305
# %bb.265:                              # %for.cond129
                                        #   in Loop: Header=BB2_229 Depth=1
	addi.d	$s0, $s0, 1
	bne	$s0, $s6, .LBB2_229
# %bb.266:                              # %for.cond3.preheader.i1010.preheader
	move	$s0, $zero
	addi.d	$s1, $s3, 7
	ori	$s4, $zero, 97
	ori	$s5, $zero, 66
	ori	$s6, $zero, 15
	ori	$s7, $zero, 65
.LBB2_267:                              # %for.cond3.preheader.i1010
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_269 Depth 2
                                        #     Child Loop BB2_281 Depth 2
                                        #     Child Loop BB2_293 Depth 2
	st.d	$s2, $s3, 23
	st.d	$s2, $s3, 16
	st.d	$s2, $s3, 8
	st.d	$s2, $s3, 0
	move	$a0, $s1
	move	$a1, $zero
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$s8, $s3, $s0
	move	$a0, $s1
	beqz	$s0, .LBB2_271
# %bb.268:                              # %for.body6.preheader.i1037
                                        #   in Loop: Header=BB2_267 Depth=1
	move	$a1, $zero
	addi.d	$a0, $s8, 7
.LBB2_269:                              # %for.body6.i1039
                                        #   Parent Loop BB2_267 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a2, $s3, $a1
	ld.bu	$a2, $a2, 7
	bnez	$a2, .LBB2_305
# %bb.270:                              # %for.inc12.i1045
                                        #   in Loop: Header=BB2_269 Depth=2
	addi.d	$a1, $a1, 1
	bne	$s0, $a1, .LBB2_269
.LBB2_271:                              # %for.cond16.preheader.i1012
                                        #   in Loop: Header=BB2_267 Depth=1
	ld.bu	$a1, $a0, 0
	bne	$a1, $s4, .LBB2_305
# %bb.272:                              # %for.inc26.i1016
                                        #   in Loop: Header=BB2_267 Depth=1
	ld.bu	$a1, $a0, 1
	bne	$a1, $s4, .LBB2_305
# %bb.273:                              # %for.inc26.1.i1019
                                        #   in Loop: Header=BB2_267 Depth=1
	ld.bu	$a1, $a0, 2
	bne	$a1, $s4, .LBB2_305
# %bb.274:                              # %for.inc26.2.i1022
                                        #   in Loop: Header=BB2_267 Depth=1
	ld.bu	$a1, $a0, 3
	bne	$a1, $s4, .LBB2_305
# %bb.275:                              # %for.inc26.3.i1025
                                        #   in Loop: Header=BB2_267 Depth=1
	ld.bu	$a1, $a0, 4
	bne	$a1, $s4, .LBB2_305
# %bb.276:                              # %for.inc26.4.i1028
                                        #   in Loop: Header=BB2_267 Depth=1
	ld.bu	$a1, $a0, 5
	bne	$a1, $s4, .LBB2_305
# %bb.277:                              # %for.inc26.5.i1031
                                        #   in Loop: Header=BB2_267 Depth=1
	ld.bu	$a1, $a0, 6
	bne	$a1, $s4, .LBB2_305
# %bb.278:                              # %for.inc26.6.i1034
                                        #   in Loop: Header=BB2_267 Depth=1
	ld.bu	$a0, $a0, 7
	bne	$a0, $s4, .LBB2_305
# %bb.279:                              # %for.inc.i1054.6
                                        #   in Loop: Header=BB2_267 Depth=1
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	beqz	$s0, .LBB2_283
# %bb.280:                              # %for.body6.preheader.i1084
                                        #   in Loop: Header=BB2_267 Depth=1
	move	$a1, $zero
	addi.d	$a0, $s8, 7
.LBB2_281:                              # %for.body6.i1086
                                        #   Parent Loop BB2_267 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a2, $s3, $a1
	ld.bu	$a2, $a2, 7
	bne	$a2, $s7, .LBB2_305
# %bb.282:                              # %for.inc12.i1092
                                        #   in Loop: Header=BB2_281 Depth=2
	addi.d	$a1, $a1, 1
	bne	$s0, $a1, .LBB2_281
.LBB2_283:                              # %for.cond16.preheader.i1059
                                        #   in Loop: Header=BB2_267 Depth=1
	ld.bu	$a1, $a0, 0
	bne	$a1, $s4, .LBB2_305
# %bb.284:                              # %for.inc26.i1063
                                        #   in Loop: Header=BB2_267 Depth=1
	ld.bu	$a1, $a0, 1
	bne	$a1, $s4, .LBB2_305
# %bb.285:                              # %for.inc26.1.i1066
                                        #   in Loop: Header=BB2_267 Depth=1
	ld.bu	$a1, $a0, 2
	bne	$a1, $s4, .LBB2_305
# %bb.286:                              # %for.inc26.2.i1069
                                        #   in Loop: Header=BB2_267 Depth=1
	ld.bu	$a1, $a0, 3
	bne	$a1, $s4, .LBB2_305
# %bb.287:                              # %for.inc26.3.i1072
                                        #   in Loop: Header=BB2_267 Depth=1
	ld.bu	$a1, $a0, 4
	bne	$a1, $s4, .LBB2_305
# %bb.288:                              # %for.inc26.4.i1075
                                        #   in Loop: Header=BB2_267 Depth=1
	ld.bu	$a1, $a0, 5
	bne	$a1, $s4, .LBB2_305
# %bb.289:                              # %for.inc26.5.i1078
                                        #   in Loop: Header=BB2_267 Depth=1
	ld.bu	$a1, $a0, 6
	bne	$a1, $s4, .LBB2_305
# %bb.290:                              # %for.inc26.6.i1081
                                        #   in Loop: Header=BB2_267 Depth=1
	ld.bu	$a0, $a0, 7
	bne	$a0, $s4, .LBB2_305
# %bb.291:                              # %for.inc.i1101.6
                                        #   in Loop: Header=BB2_267 Depth=1
	ori	$a1, $zero, 66
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	beqz	$s0, .LBB2_295
# %bb.292:                              # %for.body6.preheader.i1131
                                        #   in Loop: Header=BB2_267 Depth=1
	move	$a1, $zero
	addi.d	$a0, $s8, 7
.LBB2_293:                              # %for.body6.i1133
                                        #   Parent Loop BB2_267 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a2, $s3, $a1
	ld.bu	$a2, $a2, 7
	bne	$a2, $s5, .LBB2_305
# %bb.294:                              # %for.inc12.i1139
                                        #   in Loop: Header=BB2_293 Depth=2
	addi.d	$a1, $a1, 1
	bne	$s0, $a1, .LBB2_293
.LBB2_295:                              # %for.cond16.preheader.i1106
                                        #   in Loop: Header=BB2_267 Depth=1
	ld.bu	$a1, $a0, 0
	bne	$a1, $s4, .LBB2_305
# %bb.296:                              # %for.inc26.i1110
                                        #   in Loop: Header=BB2_267 Depth=1
	ld.bu	$a1, $a0, 1
	bne	$a1, $s4, .LBB2_305
# %bb.297:                              # %for.inc26.1.i1113
                                        #   in Loop: Header=BB2_267 Depth=1
	ld.bu	$a1, $a0, 2
	bne	$a1, $s4, .LBB2_305
# %bb.298:                              # %for.inc26.2.i1116
                                        #   in Loop: Header=BB2_267 Depth=1
	ld.bu	$a1, $a0, 3
	bne	$a1, $s4, .LBB2_305
# %bb.299:                              # %for.inc26.3.i1119
                                        #   in Loop: Header=BB2_267 Depth=1
	ld.bu	$a1, $a0, 4
	bne	$a1, $s4, .LBB2_305
# %bb.300:                              # %for.inc26.4.i1122
                                        #   in Loop: Header=BB2_267 Depth=1
	ld.bu	$a1, $a0, 5
	bne	$a1, $s4, .LBB2_305
# %bb.301:                              # %for.inc26.5.i1125
                                        #   in Loop: Header=BB2_267 Depth=1
	ld.bu	$a1, $a0, 6
	bne	$a1, $s4, .LBB2_305
# %bb.302:                              # %for.inc26.6.i1128
                                        #   in Loop: Header=BB2_267 Depth=1
	ld.bu	$a0, $a0, 7
	bne	$a0, $s4, .LBB2_305
# %bb.303:                              # %for.cond152
                                        #   in Loop: Header=BB2_267 Depth=1
	addi.d	$s0, $s0, 1
	bne	$s0, $s6, .LBB2_267
# %bb.304:                              # %for.end174
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB2_305:                              # %if.then10.i
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
                                        # -- End function
	.type	A,@object                       # @A
	.data
	.globl	A
A:
	.byte	65                              # 0x41
	.size	A, 1

	.type	u,@object                       # @u
	.local	u
	.comm	u,32,16
	.section	".note.GNU-stack","",@progbits
	.addrsig
