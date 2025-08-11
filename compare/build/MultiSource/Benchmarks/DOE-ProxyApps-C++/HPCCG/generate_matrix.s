	.file	"generate_matrix.cpp"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.globl	_Z15generate_matrixiiiPP24HPC_Sparse_Matrix_STRUCTPPdS3_S3_ # -- Begin function _Z15generate_matrixiiiPP24HPC_Sparse_Matrix_STRUCTPPdS3_S3_
	.p2align	5
	.type	_Z15generate_matrixiiiPP24HPC_Sparse_Matrix_STRUCTPPdS3_S3_,@function
_Z15generate_matrixiiiPP24HPC_Sparse_Matrix_STRUCTPPdS3_S3_: # @_Z15generate_matrixiiiPP24HPC_Sparse_Matrix_STRUCTPPdS3_S3_
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -304
	.cfi_def_cfa_offset 304
	st.d	$ra, $sp, 296                   # 8-byte Folded Spill
	st.d	$fp, $sp, 288                   # 8-byte Folded Spill
	st.d	$s0, $sp, 280                   # 8-byte Folded Spill
	st.d	$s1, $sp, 272                   # 8-byte Folded Spill
	st.d	$s2, $sp, 264                   # 8-byte Folded Spill
	st.d	$s3, $sp, 256                   # 8-byte Folded Spill
	st.d	$s4, $sp, 248                   # 8-byte Folded Spill
	st.d	$s5, $sp, 240                   # 8-byte Folded Spill
	st.d	$s6, $sp, 232                   # 8-byte Folded Spill
	st.d	$s7, $sp, 224                   # 8-byte Folded Spill
	st.d	$s8, $sp, 216                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 30, -80
	.cfi_offset 31, -88
	st.d	$a6, $sp, 208                   # 8-byte Folded Spill
	st.d	$a5, $sp, 40                    # 8-byte Folded Spill
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
	move	$s0, $a3
	move	$fp, $a2
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	move	$s3, $a1
	move	$s4, $a0
	ori	$a0, $zero, 96
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	st.d	$a0, $s0, 0
	st.d	$zero, $a0, 0
	mul.d	$s2, $s3, $s4
	mul.d	$s1, $s2, $fp
	alsl.d	$a0, $s1, $s1, 1
	alsl.d	$a0, $a0, $a0, 3
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	addi.w	$fp, $s1, 0
	slti	$s6, $fp, 0
	slli.d	$a0, $fp, 2
	masknez	$a0, $a0, $s6
	addi.w	$s5, $zero, -1
	maskeqz	$s7, $s5, $s6
	or	$a0, $s7, $a0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	st.d	$a0, $s8, 48
	slli.d	$a0, $fp, 3
	masknez	$a0, $a0, $s6
	or	$s0, $s7, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	st.d	$a0, $s8, 56
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	st.d	$a0, $s8, 64
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	st.d	$a0, $s8, 72
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.d	$a0, $a1, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $a1, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	st.d	$a0, $a1, 0
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	alsl.w	$a0, $s1, $s1, 1
	alsl.w	$s0, $a0, $a0, 3
	slli.d	$a0, $s0, 3
	masknez	$a0, $a0, $s6
	or	$a0, $s7, $a0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$a0, $s8, 80
	slli.d	$a0, $s0, 2
	masknez	$a0, $a0, $s6
	or	$a0, $s7, $a0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	st.d	$a0, $s8, 88
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	blt	$a2, $a1, .LBB0_70
# %bb.1:                                # %for.cond26.preheader.lr.ph
	blt	$s3, $a1, .LBB0_70
# %bb.2:                                # %for.cond26.preheader.us.preheader
	move	$a3, $zero
	bstrpick.d	$a2, $s4, 31, 0
	ori	$a1, $zero, 1
	sub.d	$a1, $a1, $s3
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	mul.d	$a1, $s4, $a1
	sub.w	$a1, $zero, $a1
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	addi.d	$a1, $s3, -1
	mul.d	$a1, $s4, $a1
	sub.d	$a5, $zero, $a1
	sub.d	$a1, $zero, $s2
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	sub.d	$a1, $zero, $s3
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	nor	$a1, $s3, $zero
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	mul.d	$a1, $s4, $a1
	sub.w	$a1, $zero, $a1
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	addi.d	$a1, $s3, 1
	mul.d	$a1, $s4, $a1
	sub.d	$a1, $zero, $a1
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	vldi	$vr0, -965
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_3:                                # %for.cond26.for.cond.cleanup28_crit_edge.us
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	addi.w	$a3, $a3, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	add.d	$a1, $a1, $s3
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	add.d	$a1, $a1, $s3
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	add.d	$a1, $a1, $s3
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	beq	$a3, $a1, .LBB0_70
.LBB0_4:                                # %for.cond26.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
                                        #       Child Loop BB0_9 Depth 3
                                        #         Child Loop BB0_13 Depth 4
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	blez	$s4, .LBB0_3
# %bb.5:                                # %for.cond30.preheader.lr.ph.split.us.us
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	move	$t7, $zero
	mul.d	$a1, $a3, $s3
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	b	.LBB0_7
	.p2align	4, , 16
.LBB0_6:                                # %for.cond30.for.cond.cleanup32_crit_edge.us.us
                                        #   in Loop: Header=BB0_7 Depth=2
	move	$t7, $t8
	beq	$t8, $s3, .LBB0_3
.LBB0_7:                                # %for.cond30.preheader.us.us
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_9 Depth 3
                                        #         Child Loop BB0_13 Depth 4
	move	$ra, $zero
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	add.d	$a1, $t7, $a1
	mul.d	$a1, $a1, $s4
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	addi.w	$t6, $t7, -1
	addi.w	$t8, $t7, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	add.d	$a1, $a1, $t7
	mul.d	$a3, $s4, $a1
	addi.d	$a7, $a3, -1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	add.d	$a1, $a1, $t7
	mul.d	$t0, $s4, $a1
	addi.d	$t3, $t0, -1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	add.d	$a1, $a1, $t7
	mul.d	$s6, $s4, $a1
	addi.d	$a1, $s6, -1
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	b	.LBB0_9
	.p2align	4, , 16
.LBB0_8:                                # %for.cond.cleanup51.us.us
                                        #   in Loop: Header=BB0_9 Depth=3
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 2
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	stx.w	$s0, $a4, $a1
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 168                   # 8-byte Folded Reload
	stx.d	$zero, $a1, $a6
	addi.d	$a1, $s0, -1
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fsub.d	$fa1, $fa0, $fa1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	fstx.d	$fa1, $a1, $a6
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	lu52i.d	$a4, $zero, 1023
	stx.d	$a4, $a1, $a6
	addi.d	$a7, $a7, 1
	addi.d	$a3, $a3, 1
	addi.d	$t3, $t3, 1
	addi.d	$t0, $t0, 1
	addi.d	$s6, $s6, 1
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	beq	$ra, $a2, .LBB0_6
.LBB0_9:                                # %for.body33.us.us
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_13 Depth 4
	move	$t4, $zero
	move	$s0, $zero
	slt	$a4, $t7, $s3
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	add.w	$t1, $a1, $ra
	slli.d	$a6, $t1, 3
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	stx.d	$s1, $a1, $a6
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.d	$a6, $sp, 168                   # 8-byte Folded Spill
	stx.d	$a0, $a1, $a6
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.d	$t1, $sp, 160                   # 8-byte Folded Spill
	alsl.d	$a1, $t1, $a1, 3
	addi.w	$t5, $ra, -1
	addi.d	$ra, $ra, 1
	sltu	$t1, $t5, $s4
	sltu	$t2, $ra, $a2
	and	$t1, $t1, $a4
	and	$a4, $t2, $a4
	ori	$s8, $zero, 3
	xori	$t1, $t1, 1
	xori	$a4, $a4, 1
	b	.LBB0_13
.LBB0_10:                               # %if.then89.us.us.us.2.2
                                        #   in Loop: Header=BB0_13 Depth=4
	st.d	$s1, $a1, 0
	vldi	$vr1, -965
.LBB0_11:                               # %if.end.us.us.us.2.2
                                        #   in Loop: Header=BB0_13 Depth=4
	fst.d	$fa1, $s1, 0
	addi.d	$s1, $s1, 8
	st.w	$s7, $a0, 0
	addi.d	$a0, $a0, 4
	addi.w	$s0, $s0, 1
.LBB0_12:                               # %for.cond.cleanup59.us.us.2
                                        #   in Loop: Header=BB0_13 Depth=4
	addi.w	$s8, $s8, -1
	add.w	$t4, $t4, $s2
	beqz	$s8, .LBB0_8
.LBB0_13:                               # %for.cond53.preheader.us.us
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_7 Depth=2
                                        #       Parent Loop BB0_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	bge	$s5, $t6, .LBB0_32
# %bb.14:                               # %for.body60.us.us.us.preheader
                                        #   in Loop: Header=BB0_13 Depth=4
	ld.d	$a6, $sp, 200                   # 8-byte Folded Reload
	add.w	$t2, $a6, $t4
	bgeu	$t5, $s4, .LBB0_21
# %bb.15:                               # %for.body60.us.us.us.preheader
                                        #   in Loop: Header=BB0_13 Depth=4
	bge	$t6, $s3, .LBB0_21
# %bb.16:                               # %for.body60.us.us.us.preheader
                                        #   in Loop: Header=BB0_13 Depth=4
	ld.d	$a6, $sp, 192                   # 8-byte Folded Reload
	add.w	$s7, $a6, $t4
	bgeu	$s7, $fp, .LBB0_21
# %bb.17:                               # %if.then87.us.us.us
                                        #   in Loop: Header=BB0_13 Depth=4
	addi.w	$a6, $t2, -1
	beqz	$a6, .LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_13 Depth=4
	vldi	$vr1, -784
	b	.LBB0_20
.LBB0_19:                               # %if.then89.us.us.us
                                        #   in Loop: Header=BB0_13 Depth=4
	st.d	$s1, $a1, 0
	vldi	$vr1, -965
.LBB0_20:                               # %if.end.us.us.us
                                        #   in Loop: Header=BB0_13 Depth=4
	fst.d	$fa1, $s1, 0
	addi.d	$s1, $s1, 8
	st.w	$s7, $a0, 0
	addi.d	$a0, $a0, 4
	addi.w	$s0, $s0, 1
.LBB0_21:                               # %land.lhs.true71.us.us.us.1
                                        #   in Loop: Header=BB0_13 Depth=4
	add.w	$s7, $s6, $t4
	bge	$t6, $s3, .LBB0_27
# %bb.22:                               # %land.lhs.true71.us.us.us.1
                                        #   in Loop: Header=BB0_13 Depth=4
	bgeu	$s7, $fp, .LBB0_27
# %bb.23:                               # %if.then87.us.us.us.1
                                        #   in Loop: Header=BB0_13 Depth=4
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
	bne	$a6, $t4, .LBB0_25
# %bb.24:                               # %if.then89.us.us.us.1
                                        #   in Loop: Header=BB0_13 Depth=4
	st.d	$s1, $a1, 0
	vldi	$vr1, -965
	b	.LBB0_26
.LBB0_25:                               #   in Loop: Header=BB0_13 Depth=4
	vldi	$vr1, -784
.LBB0_26:                               # %if.end.us.us.us.1
                                        #   in Loop: Header=BB0_13 Depth=4
	fst.d	$fa1, $s1, 0
	addi.d	$s1, $s1, 8
	st.w	$s7, $a0, 0
	addi.d	$a0, $a0, 4
	addi.w	$s0, $s0, 1
.LBB0_27:                               # %if.end96.us.us.us.1
                                        #   in Loop: Header=BB0_13 Depth=4
	bgeu	$ra, $a2, .LBB0_32
# %bb.28:                               # %if.end96.us.us.us.1
                                        #   in Loop: Header=BB0_13 Depth=4
	bge	$t6, $s3, .LBB0_32
# %bb.29:                               # %if.end96.us.us.us.1
                                        #   in Loop: Header=BB0_13 Depth=4
	addi.w	$s7, $s7, 1
	bgeu	$s7, $fp, .LBB0_32
# %bb.30:                               # %if.then87.us.us.us.2
                                        #   in Loop: Header=BB0_13 Depth=4
	beq	$t2, $s5, .LBB0_33
# %bb.31:                               #   in Loop: Header=BB0_13 Depth=4
	vldi	$vr1, -784
	b	.LBB0_34
	.p2align	4, , 16
.LBB0_32:                               # %for.cond.cleanup59.us.us
                                        #   in Loop: Header=BB0_13 Depth=4
	bgez	$t7, .LBB0_35
	b	.LBB0_49
.LBB0_33:                               # %if.then89.us.us.us.2
                                        #   in Loop: Header=BB0_13 Depth=4
	st.d	$s1, $a1, 0
	vldi	$vr1, -965
.LBB0_34:                               # %for.cond.cleanup59.us.us.thread
                                        #   in Loop: Header=BB0_13 Depth=4
	fst.d	$fa1, $s1, 0
	addi.d	$s1, $s1, 8
	st.w	$s7, $a0, 0
	addi.d	$a0, $a0, 4
	addi.w	$s0, $s0, 1
.LBB0_35:                               # %for.body60.us.us.us.preheader.1
                                        #   in Loop: Header=BB0_13 Depth=4
	add.w	$s7, $t3, $t4
	sltu	$t2, $s7, $fp
	xori	$t2, $t2, 1
	or	$a6, $t2, $t1
	ld.d	$t2, $sp, 208                   # 8-byte Folded Reload
	add.w	$t2, $t2, $t4
	bnez	$a6, .LBB0_40
# %bb.36:                               # %if.then87.us.us.us.1178
                                        #   in Loop: Header=BB0_13 Depth=4
	addi.w	$a6, $t2, -1
	beqz	$a6, .LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_13 Depth=4
	vldi	$vr1, -784
	b	.LBB0_39
.LBB0_38:                               # %if.then89.us.us.us.1179
                                        #   in Loop: Header=BB0_13 Depth=4
	st.d	$s1, $a1, 0
	vldi	$vr1, -965
.LBB0_39:                               # %if.end.us.us.us.1184
                                        #   in Loop: Header=BB0_13 Depth=4
	fst.d	$fa1, $s1, 0
	addi.d	$s1, $s1, 8
	st.w	$s7, $a0, 0
	addi.d	$a0, $a0, 4
	addi.w	$s0, $s0, 1
.LBB0_40:                               # %land.lhs.true71.us.us.us.1.1
                                        #   in Loop: Header=BB0_13 Depth=4
	add.w	$s7, $t0, $t4
	bge	$t7, $s3, .LBB0_46
# %bb.41:                               # %land.lhs.true71.us.us.us.1.1
                                        #   in Loop: Header=BB0_13 Depth=4
	bgeu	$s7, $fp, .LBB0_46
# %bb.42:                               # %if.then87.us.us.us.1.1
                                        #   in Loop: Header=BB0_13 Depth=4
	beqz	$t2, .LBB0_44
# %bb.43:                               #   in Loop: Header=BB0_13 Depth=4
	vldi	$vr1, -784
	b	.LBB0_45
.LBB0_44:                               # %if.then89.us.us.us.1.1
                                        #   in Loop: Header=BB0_13 Depth=4
	st.d	$s1, $a1, 0
	vldi	$vr1, -965
.LBB0_45:                               # %if.end.us.us.us.1.1
                                        #   in Loop: Header=BB0_13 Depth=4
	fst.d	$fa1, $s1, 0
	addi.d	$s1, $s1, 8
	st.w	$s7, $a0, 0
	addi.d	$a0, $a0, 4
	addi.w	$s0, $s0, 1
.LBB0_46:                               # %if.end96.us.us.us.1.1
                                        #   in Loop: Header=BB0_13 Depth=4
	addi.w	$s7, $s7, 1
	sltu	$a6, $s7, $fp
	xori	$a6, $a6, 1
	or	$a6, $a6, $a4
	bnez	$a6, .LBB0_49
# %bb.47:                               # %if.then87.us.us.us.2.1
                                        #   in Loop: Header=BB0_13 Depth=4
	beq	$t2, $s5, .LBB0_51
# %bb.48:                               #   in Loop: Header=BB0_13 Depth=4
	vldi	$vr1, -784
	b	.LBB0_52
	.p2align	4, , 16
.LBB0_49:                               # %for.cond.cleanup59.us.us.1
                                        #   in Loop: Header=BB0_13 Depth=4
	bltz	$t8, .LBB0_12
# %bb.50:                               # %for.body60.us.us.us.preheader.2
                                        #   in Loop: Header=BB0_13 Depth=4
	add.w	$t2, $a5, $t4
	bltu	$t5, $s4, .LBB0_53
	b	.LBB0_59
.LBB0_51:                               # %if.then89.us.us.us.2.1
                                        #   in Loop: Header=BB0_13 Depth=4
	st.d	$s1, $a1, 0
	vldi	$vr1, -965
.LBB0_52:                               # %for.cond.cleanup59.us.us.1.thread
                                        #   in Loop: Header=BB0_13 Depth=4
	fst.d	$fa1, $s1, 0
	addi.d	$s1, $s1, 8
	st.w	$s7, $a0, 0
	addi.d	$a0, $a0, 4
	addi.w	$s0, $s0, 1
	add.w	$t2, $a5, $t4
	bgeu	$t5, $s4, .LBB0_59
.LBB0_53:                               # %for.body60.us.us.us.preheader.2
                                        #   in Loop: Header=BB0_13 Depth=4
	bge	$t8, $s3, .LBB0_59
# %bb.54:                               # %for.body60.us.us.us.preheader.2
                                        #   in Loop: Header=BB0_13 Depth=4
	add.w	$s7, $a7, $t4
	bgeu	$s7, $fp, .LBB0_59
# %bb.55:                               # %if.then87.us.us.us.2195
                                        #   in Loop: Header=BB0_13 Depth=4
	addi.w	$a6, $t2, -1
	beqz	$a6, .LBB0_57
# %bb.56:                               #   in Loop: Header=BB0_13 Depth=4
	vldi	$vr1, -784
	b	.LBB0_58
.LBB0_57:                               # %if.then89.us.us.us.2196
                                        #   in Loop: Header=BB0_13 Depth=4
	st.d	$s1, $a1, 0
	vldi	$vr1, -965
.LBB0_58:                               # %if.end.us.us.us.2201
                                        #   in Loop: Header=BB0_13 Depth=4
	fst.d	$fa1, $s1, 0
	addi.d	$s1, $s1, 8
	st.w	$s7, $a0, 0
	addi.d	$a0, $a0, 4
	addi.w	$s0, $s0, 1
.LBB0_59:                               # %land.lhs.true71.us.us.us.1.2
                                        #   in Loop: Header=BB0_13 Depth=4
	add.w	$s7, $a3, $t4
	bge	$t8, $s3, .LBB0_65
# %bb.60:                               # %land.lhs.true71.us.us.us.1.2
                                        #   in Loop: Header=BB0_13 Depth=4
	bgeu	$s7, $fp, .LBB0_65
# %bb.61:                               # %if.then87.us.us.us.1.2
                                        #   in Loop: Header=BB0_13 Depth=4
	ld.d	$a6, $sp, 184                   # 8-byte Folded Reload
	bne	$a6, $t4, .LBB0_63
# %bb.62:                               # %if.then89.us.us.us.1.2
                                        #   in Loop: Header=BB0_13 Depth=4
	st.d	$s1, $a1, 0
	vldi	$vr1, -965
	b	.LBB0_64
.LBB0_63:                               #   in Loop: Header=BB0_13 Depth=4
	vldi	$vr1, -784
.LBB0_64:                               # %if.end.us.us.us.1.2
                                        #   in Loop: Header=BB0_13 Depth=4
	fst.d	$fa1, $s1, 0
	addi.d	$s1, $s1, 8
	st.w	$s7, $a0, 0
	addi.d	$a0, $a0, 4
	addi.w	$s0, $s0, 1
.LBB0_65:                               # %if.end96.us.us.us.1.2
                                        #   in Loop: Header=BB0_13 Depth=4
	bgeu	$ra, $a2, .LBB0_12
# %bb.66:                               # %if.end96.us.us.us.1.2
                                        #   in Loop: Header=BB0_13 Depth=4
	bge	$t8, $s3, .LBB0_12
# %bb.67:                               # %if.end96.us.us.us.1.2
                                        #   in Loop: Header=BB0_13 Depth=4
	addi.w	$s7, $s7, 1
	bgeu	$s7, $fp, .LBB0_12
# %bb.68:                               # %if.then87.us.us.us.2.2
                                        #   in Loop: Header=BB0_13 Depth=4
	beq	$t2, $s5, .LBB0_10
# %bb.69:                               #   in Loop: Header=BB0_13 Depth=4
	vldi	$vr1, -784
	b	.LBB0_11
.LBB0_70:                               # %if.end153
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	addi.d	$a0, $a3, -1
	alsl.d	$a1, $fp, $fp, 1
	alsl.d	$a1, $a1, $a1, 3
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	st.w	$zero, $a2, 8
	st.w	$a0, $a2, 12
	st.w	$a3, $a2, 16
	st.d	$a1, $a2, 24
	st.w	$a3, $a2, 32
	st.w	$a3, $a2, 36
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	st.w	$a0, $a2, 40
	ld.d	$s8, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 288                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 296                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 304
	ret
.Lfunc_end0:
	.size	_Z15generate_matrixiiiPP24HPC_Sparse_Matrix_STRUCTPPdS3_S3_, .Lfunc_end0-_Z15generate_matrixiiiPP24HPC_Sparse_Matrix_STRUCTPPdS3_S3_
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
