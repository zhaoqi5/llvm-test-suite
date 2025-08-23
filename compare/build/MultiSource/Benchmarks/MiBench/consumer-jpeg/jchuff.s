	.file	"jchuff.c"
	.text
	.globl	jpeg_make_c_derived_tbl         # -- Begin function jpeg_make_c_derived_tbl
	.p2align	5
	.type	jpeg_make_c_derived_tbl,@function
jpeg_make_c_derived_tbl:                # @jpeg_make_c_derived_tbl
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -1344
	st.d	$ra, $sp, 1336                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1328                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1320                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1312                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1304                  # 8-byte Folded Spill
	ld.d	$fp, $a2, 0
	move	$s0, $a1
	beqz	$fp, .LBB0_43
# %bb.1:                                # %if.end
	ld.bu	$s1, $s0, 1
	beqz	$s1, .LBB0_44
.LBB0_2:                                # %for.body5.lr.ph
	addi.d	$a0, $sp, 1040
	ori	$a1, $zero, 1
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.bu	$s2, $s0, 2
	beqz	$s2, .LBB0_4
.LBB0_3:                                # %for.body5.lr.ph.1
	addi.d	$a0, $sp, 1040
	add.d	$a0, $a0, $s1
	ori	$a1, $zero, 2
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$s1, $s1, $s2
.LBB0_4:                                # %for.inc10.1
	ld.bu	$s2, $s0, 3
	beqz	$s2, .LBB0_6
# %bb.5:                                # %for.body5.lr.ph.2
	addi.d	$a0, $sp, 1040
	add.d	$a0, $a0, $s1
	ori	$a1, $zero, 3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$s1, $s1, $s2
.LBB0_6:                                # %for.inc10.2
	ld.bu	$s2, $s0, 4
	beqz	$s2, .LBB0_8
# %bb.7:                                # %for.body5.lr.ph.3
	addi.d	$a0, $sp, 1040
	add.d	$a0, $a0, $s1
	ori	$a1, $zero, 4
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$s1, $s1, $s2
.LBB0_8:                                # %for.inc10.3
	ld.bu	$s2, $s0, 5
	beqz	$s2, .LBB0_10
# %bb.9:                                # %for.body5.lr.ph.4
	addi.d	$a0, $sp, 1040
	add.d	$a0, $a0, $s1
	ori	$a1, $zero, 5
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$s1, $s1, $s2
.LBB0_10:                               # %for.inc10.4
	ld.bu	$s2, $s0, 6
	beqz	$s2, .LBB0_12
# %bb.11:                               # %for.body5.lr.ph.5
	addi.d	$a0, $sp, 1040
	add.d	$a0, $a0, $s1
	ori	$a1, $zero, 6
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$s1, $s1, $s2
.LBB0_12:                               # %for.inc10.5
	ld.bu	$s2, $s0, 7
	beqz	$s2, .LBB0_14
# %bb.13:                               # %for.body5.lr.ph.6
	addi.d	$a0, $sp, 1040
	add.d	$a0, $a0, $s1
	ori	$a1, $zero, 7
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$s1, $s1, $s2
.LBB0_14:                               # %for.inc10.6
	ld.bu	$s2, $s0, 8
	beqz	$s2, .LBB0_16
# %bb.15:                               # %for.body5.lr.ph.7
	addi.d	$a0, $sp, 1040
	add.d	$a0, $a0, $s1
	ori	$a1, $zero, 8
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$s1, $s1, $s2
.LBB0_16:                               # %for.inc10.7
	ld.bu	$s2, $s0, 9
	beqz	$s2, .LBB0_18
# %bb.17:                               # %for.body5.lr.ph.8
	addi.d	$a0, $sp, 1040
	add.d	$a0, $a0, $s1
	ori	$a1, $zero, 9
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$s1, $s1, $s2
.LBB0_18:                               # %for.inc10.8
	ld.bu	$s2, $s0, 10
	beqz	$s2, .LBB0_20
# %bb.19:                               # %for.body5.lr.ph.9
	addi.d	$a0, $sp, 1040
	add.d	$a0, $a0, $s1
	ori	$a1, $zero, 10
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$s1, $s1, $s2
.LBB0_20:                               # %for.inc10.9
	ld.bu	$s2, $s0, 11
	beqz	$s2, .LBB0_22
# %bb.21:                               # %for.body5.lr.ph.10
	addi.d	$a0, $sp, 1040
	add.d	$a0, $a0, $s1
	ori	$a1, $zero, 11
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$s1, $s1, $s2
.LBB0_22:                               # %for.inc10.10
	ld.bu	$s2, $s0, 12
	beqz	$s2, .LBB0_24
# %bb.23:                               # %for.body5.lr.ph.11
	addi.d	$a0, $sp, 1040
	add.d	$a0, $a0, $s1
	ori	$a1, $zero, 12
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$s1, $s1, $s2
.LBB0_24:                               # %for.inc10.11
	ld.bu	$s2, $s0, 13
	beqz	$s2, .LBB0_26
# %bb.25:                               # %for.body5.lr.ph.12
	addi.d	$a0, $sp, 1040
	add.d	$a0, $a0, $s1
	ori	$a1, $zero, 13
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$s1, $s1, $s2
.LBB0_26:                               # %for.inc10.12
	ld.bu	$s2, $s0, 14
	beqz	$s2, .LBB0_28
# %bb.27:                               # %for.body5.lr.ph.13
	addi.d	$a0, $sp, 1040
	add.d	$a0, $a0, $s1
	ori	$a1, $zero, 14
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$s1, $s1, $s2
.LBB0_28:                               # %for.inc10.13
	ld.bu	$s2, $s0, 15
	beqz	$s2, .LBB0_30
# %bb.29:                               # %for.body5.lr.ph.14
	addi.d	$a0, $sp, 1040
	add.d	$a0, $a0, $s1
	ori	$a1, $zero, 15
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$s1, $s1, $s2
.LBB0_30:                               # %for.inc10.14
	ld.bu	$s2, $s0, 16
	beqz	$s2, .LBB0_32
# %bb.31:                               # %for.body5.lr.ph.15
	addi.d	$a0, $sp, 1040
	add.d	$a0, $a0, $s1
	ori	$a1, $zero, 16
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$s1, $s1, $s2
.LBB0_32:                               # %for.inc10.15
	addi.d	$a0, $sp, 1040
	stx.b	$zero, $s1, $a0
	ld.bu	$a7, $sp, 1040
	beqz	$a7, .LBB0_39
# %bb.33:                               # %while.cond19.preheader.preheader
	move	$a1, $zero
	move	$a2, $zero
	ext.w.b	$a3, $a7
	addi.d	$a4, $sp, 1041
	addi.d	$a5, $sp, 12
	ori	$a6, $zero, 0
	lu32i.d	$a6, 1
	b	.LBB0_35
	.p2align	4, , 16
.LBB0_34:                               # %while.end
                                        #   in Loop: Header=BB0_35 Depth=1
	slli.d	$a1, $a1, 1
	andi	$t0, $a7, 255
	addi.w	$a3, $a3, 1
	beqz	$t0, .LBB0_39
.LBB0_35:                               # %while.cond19.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_37 Depth 2
	ext.w.b	$t0, $a7
	bne	$a3, $t0, .LBB0_34
# %bb.36:                               # %while.body25.preheader
                                        #   in Loop: Header=BB0_35 Depth=1
	alsl.d	$t0, $a2, $a5, 2
	slli.d	$a7, $a2, 32
	add.d	$t1, $a4, $a2
	.p2align	4, , 16
.LBB0_37:                               # %while.body25
                                        #   Parent Loop BB0_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a1, $t0, 0
	addi.d	$a1, $a1, 1
	ld.b	$t2, $t1, 0
	addi.d	$t0, $t0, 4
	add.d	$a7, $a7, $a6
	addi.w	$a2, $a2, 1
	addi.d	$t1, $t1, 1
	beq	$a3, $t2, .LBB0_37
# %bb.38:                               # %while.end.loopexit
                                        #   in Loop: Header=BB0_35 Depth=1
	srai.d	$a7, $a7, 32
	ldx.bu	$a7, $a7, $a0
	b	.LBB0_34
.LBB0_39:                               # %while.end31
	addi.d	$s2, $fp, 1024
	ori	$a2, $zero, 256
	move	$a0, $s2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB0_42
# %bb.40:                               # %for.body35.lr.ph
	move	$a0, $zero
	addi.d	$a1, $s0, 17
	addi.d	$a2, $sp, 12
	addi.d	$a3, $sp, 1040
	.p2align	4, , 16
.LBB0_41:                               # %for.body35
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a4, $a1, $a0
	ld.w	$a5, $a2, 0
	slli.d	$a4, $a4, 2
	stx.w	$a5, $fp, $a4
	ldx.b	$a4, $a0, $a3
	ldx.bu	$a5, $a1, $a0
	stx.b	$a4, $s2, $a5
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 4
	bltu	$a0, $s1, .LBB0_41
.LBB0_42:                               # %for.end52
	ld.d	$s2, $sp, 1304                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1312                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1320                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1328                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1336                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1344
	ret
.LBB0_43:                               # %if.then
	move	$s1, $a2
	ld.d	$a1, $a0, 8
	ld.d	$a3, $a1, 0
	ori	$a1, $zero, 1
	ori	$a2, $zero, 1280
	jirl	$ra, $a3, 0
	move	$fp, $a0
	st.d	$a0, $s1, 0
	ld.bu	$s1, $s0, 1
	bnez	$s1, .LBB0_2
.LBB0_44:
	move	$s1, $zero
	ld.bu	$s2, $s0, 2
	bnez	$s2, .LBB0_3
	b	.LBB0_4
.Lfunc_end0:
	.size	jpeg_make_c_derived_tbl, .Lfunc_end0-jpeg_make_c_derived_tbl
                                        # -- End function
	.globl	jpeg_gen_optimal_table          # -- Begin function jpeg_gen_optimal_table
	.p2align	5
	.type	jpeg_gen_optimal_table,@function
jpeg_gen_optimal_table:                 # @jpeg_gen_optimal_table
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	addi.d	$sp, $sp, -160
	move	$s1, $a2
	move	$fp, $a1
	move	$s0, $a0
	xvrepli.b	$xr0, 0
	ori	$a0, $zero, 2072
	add.d	$a0, $sp, $a0
	xvst	$xr0, $a0, 0
	ori	$a0, $zero, 2104
	add.d	$a0, $sp, $a0
	st.b	$zero, $a0, 0
	addi.d	$a0, $sp, 1040
	ori	$a2, $zero, 1028
	addi.d	$s2, $sp, 1040
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 255
	ori	$a2, $zero, 1028
	addi.d	$s3, $sp, 8
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a4, $zero
	ori	$a0, $zero, 1
	stptr.d	$a0, $s1, 2048
	addi.w	$a0, $zero, -1
	lu12i.w	$a1, 244140
	ori	$a1, $a1, 2560
	ori	$a2, $zero, 257
	move	$a5, $a1
	move	$a3, $a0
	.p2align	4, , 16
.LBB1_1:                                # %for.body6
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
                                        #     Child Loop BB1_6 Depth 2
                                        #     Child Loop BB1_8 Depth 2
	slli.d	$a6, $a4, 3
	ldx.d	$a6, $s1, $a6
	sltui	$a7, $a6, 1
	slt	$t0, $a5, $a6
	or	$a7, $a7, $t0
	masknez	$t0, $a4, $a7
	maskeqz	$a3, $a3, $a7
	or	$a3, $a3, $t0
	masknez	$a6, $a6, $a7
	maskeqz	$a5, $a5, $a7
	addi.d	$a4, $a4, 1
	or	$a5, $a5, $a6
	bne	$a4, $a2, .LBB1_1
# %bb.2:                                # %for.cond17.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	move	$a5, $zero
	move	$a6, $zero
	bstrpick.d	$a7, $a3, 31, 0
	move	$t0, $s1
	move	$t1, $a1
	move	$a4, $a0
	.p2align	4, , 16
.LBB1_3:                                # %for.body19
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t2, $t0, 0
	sltui	$t3, $t2, 1
	slt	$t4, $t1, $t2
	xor	$t5, $a7, $a6
	sltui	$t5, $t5, 1
	or	$t3, $t3, $t5
	or	$t3, $t3, $t4
	masknez	$t4, $a5, $t3
	maskeqz	$a4, $a4, $t3
	or	$a4, $a4, $t4
	masknez	$t2, $t2, $t3
	maskeqz	$t1, $t1, $t3
	or	$t1, $t1, $t2
	addi.d	$a6, $a6, 1
	addi.d	$t0, $t0, 8
	addi.w	$a5, $a5, 1
	bne	$a6, $a2, .LBB1_3
# %bb.4:                                # %for.end35
                                        #   in Loop: Header=BB1_1 Depth=1
	bge	$a0, $a4, .LBB1_10
# %bb.5:                                # %if.end38
                                        #   in Loop: Header=BB1_1 Depth=1
	slli.d	$a6, $a4, 3
	ldx.d	$a5, $s1, $a6
	addi.w	$a3, $a3, 0
	slli.d	$a7, $a3, 3
	ldx.d	$t0, $s1, $a7
	add.d	$t0, $t0, $a5
	slli.d	$t1, $a3, 2
	ldx.w	$t2, $t1, $s2
	ldx.wu	$a5, $t1, $s3
	stx.d	$t0, $s1, $a7
	stx.d	$zero, $s1, $a6
	addi.d	$a6, $t2, 1
	addi.w	$a7, $a5, 0
	stx.w	$a6, $t1, $s2
	bltz	$a7, .LBB1_7
	.p2align	4, , 16
.LBB1_6:                                # %while.body
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a3, $a5
	slli.d	$a6, $a5, 2
	ldx.w	$a7, $a6, $s2
	ldx.wu	$a5, $a6, $s3
	addi.d	$a7, $a7, 1
	addi.w	$t0, $a5, 0
	addi.w	$t1, $zero, -1
	stx.w	$a7, $a6, $s2
	blt	$t1, $t0, .LBB1_6
.LBB1_7:                                #   in Loop: Header=BB1_1 Depth=1
	alsl.d	$a3, $a3, $s3, 2
	st.w	$a4, $a3, 0
	slli.d	$a3, $a4, 2
	ldx.w	$a5, $a3, $s2
	ldx.wu	$a6, $a3, $s3
	move	$a4, $zero
	addi.d	$a5, $a5, 1
	addi.w	$a7, $a6, 0
	stx.w	$a5, $a3, $s2
	move	$a5, $a1
	move	$a3, $a0
	bltz	$a7, .LBB1_1
	.p2align	4, , 16
.LBB1_8:                                # %while.body65
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a4, $a6, 2
	ldx.w	$a3, $a4, $s2
	ldx.wu	$a6, $a4, $s3
	addi.d	$a5, $a3, 1
	addi.w	$a7, $a6, 0
	addi.w	$a3, $zero, -1
	stx.w	$a5, $a4, $s2
	blt	$a3, $a7, .LBB1_8
# %bb.9:                                #   in Loop: Header=BB1_1 Depth=1
	move	$a4, $zero
	move	$a5, $a1
	b	.LBB1_1
.LBB1_10:                               # %for.body75.preheader
	move	$s1, $zero
	addi.d	$s2, $sp, 1040
	ori	$s3, $zero, 1028
	ori	$s4, $zero, 33
	ori	$s5, $zero, 38
	ori	$a0, $zero, 2072
	add.d	$s6, $sp, $a0
	b	.LBB1_13
	.p2align	4, , 16
.LBB1_11:                               # %if.end85
                                        #   in Loop: Header=BB1_13 Depth=1
	ldx.b	$a0, $s7, $s6
	addi.d	$a0, $a0, 1
	stx.b	$a0, $s7, $s6
.LBB1_12:                               # %for.inc92
                                        #   in Loop: Header=BB1_13 Depth=1
	addi.d	$s1, $s1, 4
	beq	$s1, $s3, .LBB1_16
.LBB1_13:                               # %for.body75
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$s7, $s1, $s2
	beqz	$s7, .LBB1_12
# %bb.14:                               # %if.then79
                                        #   in Loop: Header=BB1_13 Depth=1
	blt	$s7, $s4, .LBB1_11
# %bb.15:                               # %if.then83
                                        #   in Loop: Header=BB1_13 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	st.w	$s5, $a0, 40
	move	$a0, $s0
	jirl	$ra, $a1, 0
	b	.LBB1_11
.LBB1_16:                               # %while.cond98.preheader.preheader
	ori	$a3, $zero, 32
	ori	$a0, $zero, 2103
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 0
	ori	$a2, $zero, 0
	lu32i.d	$a2, 32
	ori	$a4, $zero, 2072
	add.d	$a4, $sp, $a4
	lu32i.d	$a1, -1
	ori	$a5, $zero, 17
	b	.LBB1_18
	.p2align	4, , 16
.LBB1_17:                               # %for.inc131
                                        #   in Loop: Header=BB1_18 Depth=1
	addi.d	$a0, $a0, -1
	add.d	$a2, $a2, $a1
	bgeu	$a5, $a6, .LBB1_22
.LBB1_18:                               # %while.cond98.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_19 Depth 2
                                        #       Child Loop BB1_20 Depth 3
	move	$a6, $a3
	ldx.bu	$a7, $a3, $a4
	addi.d	$a3, $a3, -1
	beqz	$a7, .LBB1_17
	.p2align	4, , 16
.LBB1_19:                               # %while.body103
                                        #   Parent Loop BB1_18 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_20 Depth 3
	move	$t1, $a2
	move	$t0, $a0
	.p2align	4, , 16
.LBB1_20:                               # %while.cond104
                                        #   Parent Loop BB1_18 Depth=1
                                        #     Parent Loop BB1_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$t2, $t0, -1
	addi.d	$t0, $t0, -1
	add.d	$t1, $t1, $a1
	beqz	$t2, .LBB1_20
# %bb.21:                               # %while.end111
                                        #   in Loop: Header=BB1_19 Depth=2
	ldx.b	$t2, $a3, $a4
	addi.d	$a7, $a7, -2
	stx.b	$a7, $a6, $a4
	addi.d	$a7, $t2, 1
	stx.b	$a7, $a3, $a4
	srai.d	$a7, $t1, 32
	ldx.b	$t1, $a7, $a4
	addi.d	$t1, $t1, 2
	stx.b	$t1, $a7, $a4
	ld.b	$a7, $t0, 0
	addi.d	$a7, $a7, -1
	st.b	$a7, $t0, 0
	ldx.bu	$a7, $a6, $a4
	bnez	$a7, .LBB1_19
	b	.LBB1_17
.LBB1_22:                               # %while.cond134.preheader
	ori	$a0, $zero, 2089
	add.d	$a0, $sp, $a0
	.p2align	4, , 16
.LBB1_23:                               # %while.cond134
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $a0, -1
	addi.d	$a0, $a0, -1
	beqz	$a1, .LBB1_23
# %bb.24:                               # %while.end142
	addi.d	$a1, $a1, -1
	st.b	$a1, $a0, 0
	ori	$a0, $zero, 2072
	add.d	$a0, $sp, $a0
	vld	$vr0, $a0, 0
	ori	$a0, $zero, 2088
	add.d	$a0, $sp, $a0
	ld.b	$a1, $a0, 0
	move	$a0, $zero
	vst	$vr0, $fp, 0
	st.b	$a1, $fp, 16
	addi.d	$a1, $fp, 17
	ori	$a2, $zero, 1
	ori	$a3, $zero, 256
	ori	$a4, $zero, 33
	b	.LBB1_26
	.p2align	4, , 16
.LBB1_25:                               # %for.inc170
                                        #   in Loop: Header=BB1_26 Depth=1
	addi.w	$a2, $a2, 1
	beq	$a2, $a4, .LBB1_30
.LBB1_26:                               # %for.cond153.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_28 Depth 2
	move	$a5, $zero
	addi.d	$a6, $sp, 1040
	b	.LBB1_28
	.p2align	4, , 16
.LBB1_27:                               # %for.inc167
                                        #   in Loop: Header=BB1_28 Depth=2
	addi.d	$a5, $a5, 1
	addi.d	$a6, $a6, 4
	beq	$a5, $a3, .LBB1_25
.LBB1_28:                               # %for.body156
                                        #   Parent Loop BB1_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a7, $a6, 0
	bne	$a7, $a2, .LBB1_27
# %bb.29:                               # %if.then161
                                        #   in Loop: Header=BB1_28 Depth=2
	stx.b	$a5, $a1, $a0
	addi.w	$a0, $a0, 1
	b	.LBB1_27
.LBB1_30:                               # %for.end172
	st.w	$zero, $fp, 276
	addi.d	$sp, $sp, 160
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end1:
	.size	jpeg_gen_optimal_table, .Lfunc_end1-jpeg_gen_optimal_table
                                        # -- End function
	.globl	jinit_huff_encoder              # -- Begin function jinit_huff_encoder
	.p2align	5
	.type	jinit_huff_encoder,@function
jinit_huff_encoder:                     # @jinit_huff_encoder
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	ld.d	$a3, $a0, 0
	ori	$a1, $zero, 1
	ori	$a2, $zero, 192
	move	$a0, $fp
	jirl	$ra, $a3, 0
	st.d	$a0, $fp, 488
	pcalau12i	$a1, %pc_hi20(start_pass_huff)
	addi.d	$a3, $a1, %pc_lo12(start_pass_huff)
	addi.d	$a1, $a0, 64
	ori	$a2, $zero, 128
	st.d	$a3, $a0, 0
	move	$a0, $a1
	move	$a1, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(memset)
	jr	$t8
.Lfunc_end2:
	.size	jinit_huff_encoder, .Lfunc_end2-jinit_huff_encoder
                                        # -- End function
	.p2align	5                               # -- Begin function start_pass_huff
	.type	start_pass_huff,@function
start_pass_huff:                        # @start_pass_huff
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
	move	$fp, $a0
	ld.d	$a3, $a0, 488
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	beqz	$a1, .LBB3_12
# %bb.1:                                # %if.end.thread
	pcalau12i	$a0, %pc_hi20(encode_mcu_gather)
	addi.d	$a0, $a0, %pc_lo12(encode_mcu_gather)
	st.d	$a0, $a3, 8
	ld.w	$a0, $fp, 316
	pcalau12i	$a1, %pc_hi20(finish_pass_gather)
	addi.d	$a1, $a1, %pc_lo12(finish_pass_gather)
	ori	$a2, $zero, 1
	st.d	$a1, $a3, 16
	blt	$a0, $a2, .LBB3_21
# %bb.2:                                # %for.body.us.preheader
	move	$s1, $zero
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	addi.d	$s2, $a0, 128
	addi.d	$s3, $a0, 160
	addi.d	$s4, $a0, 36
	ori	$s5, $zero, 320
	ori	$s6, $zero, 4
	ori	$s7, $zero, 49
	b	.LBB3_4
	.p2align	4, , 16
.LBB3_3:                                # %if.end60.us
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a2, $zero, 2056
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.w	$zero, $s4, 0
	ld.w	$a0, $fp, 316
	addi.d	$s1, $s1, 1
	addi.d	$s5, $s5, 8
	addi.d	$s4, $s4, 4
	bge	$s1, $a0, .LBB3_21
.LBB3_4:                                # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$a0, $fp, $s5
	ld.w	$s8, $a0, 20
	ld.w	$s0, $a0, 24
	bgeu	$s8, $s6, .LBB3_9
# %bb.5:                                # %if.end18.us
                                        #   in Loop: Header=BB3_4 Depth=1
	bgeu	$s0, $s6, .LBB3_10
.LBB3_6:                                # %if.end36.us
                                        #   in Loop: Header=BB3_4 Depth=1
	slli.d	$a0, $s8, 3
	ldx.d	$a0, $s2, $a0
	beqz	$a0, .LBB3_11
.LBB3_7:                                # %if.end46.us
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a2, $zero, 2056
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s0, 3
	ldx.d	$a0, $s3, $a0
	bnez	$a0, .LBB3_3
# %bb.8:                                # %if.then53.us
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $fp, 8
	ld.d	$a3, $a0, 0
	alsl.d	$s0, $s0, $s3, 3
	ori	$a1, $zero, 1
	ori	$a2, $zero, 2056
	move	$a0, $fp
	jirl	$ra, $a3, 0
	st.d	$a0, $s0, 0
	b	.LBB3_3
	.p2align	4, , 16
.LBB3_9:                                # %if.then14.us
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $fp, 0
	st.w	$s8, $a0, 44
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 0
	st.w	$s7, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bltu	$s0, $s6, .LBB3_6
.LBB3_10:                               # %if.then28.us
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $fp, 0
	st.w	$s0, $a0, 44
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 0
	st.w	$s7, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	slli.d	$a0, $s8, 3
	ldx.d	$a0, $s2, $a0
	bnez	$a0, .LBB3_7
.LBB3_11:                               # %if.then42.us
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $fp, 8
	ld.d	$a3, $a0, 0
	alsl.d	$s8, $s8, $s2, 3
	ori	$a1, $zero, 1
	ori	$a2, $zero, 2056
	move	$a0, $fp
	jirl	$ra, $a3, 0
	st.d	$a0, $s8, 0
	b	.LBB3_7
.LBB3_12:                               # %if.end
	pcalau12i	$a0, %pc_hi20(encode_mcu_huff)
	addi.d	$a0, $a0, %pc_lo12(encode_mcu_huff)
	ld.w	$a1, $fp, 316
	st.d	$a0, $a3, 8
	pcalau12i	$a0, %pc_hi20(finish_pass_huff)
	addi.d	$a0, $a0, %pc_lo12(finish_pass_huff)
	st.d	$a0, $a3, 16
	blez	$a1, .LBB3_21
# %bb.13:                               # %for.body.preheader
	move	$s1, $zero
	addi.d	$s2, $fp, 120
	addi.d	$s3, $fp, 152
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	addi.d	$a1, $a0, 64
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s5, $a0, 96
	addi.d	$s6, $a0, 36
	ori	$s7, $zero, 320
	ori	$s8, $zero, 3
	b	.LBB3_16
	.p2align	4, , 16
.LBB3_14:                               # %if.then28
                                        #   in Loop: Header=BB3_16 Depth=1
	ld.d	$a0, $fp, 0
	st.w	$s0, $a0, 44
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 49
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB3_15:                               # %if.end36
                                        #   in Loop: Header=BB3_16 Depth=1
	slli.d	$a0, $s4, 3
	ldx.d	$a1, $s2, $a0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$a2, $s4, $a0, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(jpeg_make_c_derived_tbl)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s0, 3
	ldx.d	$a1, $s3, $a0
	alsl.d	$a2, $s0, $s5, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(jpeg_make_c_derived_tbl)
	jirl	$ra, $ra, 0
	st.w	$zero, $s6, 0
	ld.w	$a0, $fp, 316
	addi.d	$s1, $s1, 1
	addi.d	$s6, $s6, 4
	addi.d	$s7, $s7, 8
	bge	$s1, $a0, .LBB3_21
.LBB3_16:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$a0, $fp, $s7
	ld.w	$s4, $a0, 20
	ld.w	$s0, $a0, 24
	bltu	$s8, $s4, .LBB3_18
# %bb.17:                               # %lor.lhs.false9
                                        #   in Loop: Header=BB3_16 Depth=1
	slli.d	$a0, $s4, 3
	ldx.d	$a0, $s2, $a0
	bnez	$a0, .LBB3_19
.LBB3_18:                               # %if.then14
                                        #   in Loop: Header=BB3_16 Depth=1
	ld.d	$a0, $fp, 0
	st.w	$s4, $a0, 44
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 49
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB3_19:                               # %if.end18
                                        #   in Loop: Header=BB3_16 Depth=1
	bltu	$s8, $s0, .LBB3_14
# %bb.20:                               # %lor.lhs.false22
                                        #   in Loop: Header=BB3_16 Depth=1
	slli.d	$a0, $s0, 3
	ldx.d	$a0, $s3, $a0
	bnez	$a0, .LBB3_15
	b	.LBB3_14
.LBB3_21:                               # %for.end
	ld.w	$a0, $fp, 272
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	st.d	$zero, $a1, 24
	st.w	$zero, $a1, 32
	st.w	$a0, $a1, 56
	st.w	$zero, $a1, 60
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
.Lfunc_end3:
	.size	start_pass_huff, .Lfunc_end3-start_pass_huff
                                        # -- End function
	.p2align	5                               # -- Begin function encode_mcu_gather
	.type	encode_mcu_gather,@function
encode_mcu_gather:                      # @encode_mcu_gather
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	st.d	$fp, $sp, 56                    # 8-byte Folded Spill
	st.d	$s0, $sp, 48                    # 8-byte Folded Spill
	st.d	$s1, $sp, 40                    # 8-byte Folded Spill
	st.d	$s2, $sp, 32                    # 8-byte Folded Spill
	st.d	$s3, $sp, 24                    # 8-byte Folded Spill
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
	st.d	$s5, $sp, 8                     # 8-byte Folded Spill
	ld.w	$a2, $a0, 272
	ld.d	$t0, $a0, 488
	beqz	$a2, .LBB4_7
# %bb.1:                                # %if.then
	ld.w	$a3, $t0, 56
	bnez	$a3, .LBB4_6
# %bb.2:                                # %for.cond.preheader
	ld.w	$a4, $a0, 316
	ori	$a5, $zero, 1
	move	$a3, $a2
	blt	$a4, $a5, .LBB4_6
# %bb.3:                                # %for.body.lr.ph
	move	$a2, $zero
	addi.d	$a3, $t0, 36
	.p2align	4, , 16
.LBB4_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a3, 0
	ld.w	$a4, $a0, 316
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 4
	blt	$a2, $a4, .LBB4_4
# %bb.5:                                # %for.end.loopexit
	ld.w	$a3, $a0, 272
.LBB4_6:                                # %if.end
	addi.d	$a2, $a3, -1
	st.w	$a2, $t0, 56
.LBB4_7:                                # %if.end7
	ld.w	$a3, $a0, 360
	ori	$a2, $zero, 1
	blt	$a3, $a2, .LBB4_25
# %bb.8:                                # %for.body10.lr.ph
	move	$a3, $zero
	addi.d	$a4, $a0, 364
	addi.d	$a5, $a0, 320
	addi.d	$a6, $t0, 36
	addi.d	$a7, $t0, 128
	addi.d	$t0, $t0, 160
	pcalau12i	$t1, %got_pc_hi20(jpeg_natural_order)
	ld.d	$t1, $t1, %got_pc_lo12(jpeg_natural_order)
	ori	$t2, $zero, 64
	ori	$t3, $zero, 16
	ori	$t4, $zero, 2
	ori	$t5, $zero, 4
	b	.LBB4_10
	.p2align	4, , 16
.LBB4_9:                                # %htest_one_block.exit
                                        #   in Loop: Header=BB4_10 Depth=1
	st.w	$t6, $fp, 0
	ld.w	$t6, $a0, 360
	addi.d	$a3, $a3, 1
	bge	$a3, $t6, .LBB4_25
.LBB4_10:                               # %for.body10
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_13 Depth 2
                                        #     Child Loop BB4_16 Depth 2
                                        #       Child Loop BB4_21 Depth 3
	slli.d	$t6, $a3, 2
	ldx.w	$fp, $a4, $t6
	slli.d	$t6, $a3, 3
	ldx.d	$t7, $a1, $t6
	slli.d	$t6, $fp, 2
	ldx.w	$s0, $a6, $t6
	ld.h	$t6, $t7, 0
	bne	$t6, $s0, .LBB4_12
# %bb.11:                               #   in Loop: Header=BB4_10 Depth=1
	move	$t8, $zero
	b	.LBB4_14
	.p2align	4, , 16
.LBB4_12:                               # %while.body.preheader.i
                                        #   in Loop: Header=BB4_10 Depth=1
	move	$t8, $zero
	sub.w	$s0, $t6, $s0
	srai.d	$s1, $s0, 31
	xor	$s0, $s0, $s1
	sub.w	$s0, $s0, $s1
	.p2align	4, , 16
.LBB4_13:                               # %while.body.i
                                        #   Parent Loop BB4_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$s1, $s0, 0
	bstrpick.d	$s0, $s0, 31, 1
	addi.d	$t8, $t8, 1
	bltu	$a2, $s1, .LBB4_13
.LBB4_14:                               # %while.end.i
                                        #   in Loop: Header=BB4_10 Depth=1
	slli.d	$s0, $fp, 3
	ldx.d	$s0, $a5, $s0
	ld.w	$s1, $s0, 20
	slli.d	$s1, $s1, 3
	ldx.d	$s1, $a7, $s1
	ld.w	$s0, $s0, 24
	slli.d	$s2, $t8, 3
	ldx.d	$s4, $s1, $s2
	move	$s3, $zero
	slli.d	$t8, $s0, 3
	ldx.d	$t8, $t0, $t8
	addi.d	$s0, $s4, 1
	stx.d	$s0, $s1, $s2
	alsl.d	$fp, $fp, $a6, 2
	ori	$s0, $zero, 1
	b	.LBB4_16
	.p2align	4, , 16
.LBB4_15:                               # %for.inc.thread.i
                                        #   in Loop: Header=BB4_16 Depth=2
	alsl.w	$s1, $s1, $s2, 4
	slli.d	$s1, $s1, 3
	ldx.d	$s2, $t8, $s1
	move	$s3, $zero
	addi.d	$s0, $s0, 1
	addi.d	$s2, $s2, 1
	stx.d	$s2, $t8, $s1
	beq	$s0, $t2, .LBB4_9
.LBB4_16:                               # %for.body.i
                                        #   Parent Loop BB4_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_21 Depth 3
	slli.d	$s1, $s0, 2
	ldx.w	$s1, $t1, $s1
	slli.d	$s1, $s1, 1
	ldx.hu	$s2, $t7, $s1
	move	$s1, $s3
	beqz	$s2, .LBB4_22
# %bb.17:                               # %while.cond16.preheader.i
                                        #   in Loop: Header=BB4_16 Depth=2
	blt	$s1, $t3, .LBB4_19
# %bb.18:                               # %while.body19.lr.ph.i
                                        #   in Loop: Header=BB4_16 Depth=2
	ld.d	$s3, $t8, 1920
	addi.d	$s4, $s1, -31
	sltu	$s5, $s1, $s4
	masknez	$s4, $s4, $s5
	addi.d	$s4, $s4, 15
	bstrpick.d	$s5, $s4, 31, 4
	add.d	$s3, $s5, $s3
	addi.d	$s3, $s3, 1
	bstrpick.d	$s4, $s4, 30, 4
	slli.d	$s4, $s4, 4
	sub.d	$s1, $s1, $s4
	addi.d	$s1, $s1, -16
	st.d	$s3, $t8, 1920
.LBB4_19:                               # %while.end23.i
                                        #   in Loop: Header=BB4_16 Depth=2
	ext.w.h	$s3, $s2
	srai.d	$s3, $s3, 15
	xor	$s2, $s2, $s3
	sub.d	$s2, $s2, $s3
	bstrpick.d	$s3, $s2, 15, 0
	ori	$s2, $zero, 1
	bltu	$s3, $t4, .LBB4_15
# %bb.20:                               # %while.body32.preheader.i
                                        #   in Loop: Header=BB4_16 Depth=2
	ori	$s2, $zero, 1
	.p2align	4, , 16
.LBB4_21:                               # %while.body32.i
                                        #   Parent Loop BB4_10 Depth=1
                                        #     Parent Loop BB4_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.w	$s4, $s3, 0
	bstrpick.d	$s3, $s3, 31, 1
	addi.d	$s2, $s2, 1
	bgeu	$s4, $t5, .LBB4_21
	b	.LBB4_15
	.p2align	4, , 16
.LBB4_22:                               # %for.inc.i
                                        #   in Loop: Header=BB4_16 Depth=2
	addi.d	$s0, $s0, 1
	addi.w	$s3, $s1, 1
	bne	$s0, $t2, .LBB4_16
# %bb.23:                               # %for.end.i
                                        #   in Loop: Header=BB4_10 Depth=1
	bltz	$s1, .LBB4_9
# %bb.24:                               # %if.then42.i
                                        #   in Loop: Header=BB4_10 Depth=1
	ld.d	$t7, $t8, 0
	addi.d	$t7, $t7, 1
	st.d	$t7, $t8, 0
	b	.LBB4_9
.LBB4_25:                               # %for.end36
	ori	$a0, $zero, 1
	ld.d	$s5, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end4:
	.size	encode_mcu_gather, .Lfunc_end4-encode_mcu_gather
                                        # -- End function
	.p2align	5                               # -- Begin function finish_pass_gather
	.type	finish_pass_gather,@function
finish_pass_gather:                     # @finish_pass_gather
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
	move	$fp, $a0
	ld.d	$a0, $a0, 488
	ld.w	$a1, $fp, 316
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 56
	ori	$s5, $zero, 1
	vst	$vr0, $sp, 40
	blt	$a1, $s5, .LBB5_11
# %bb.1:                                # %for.body.lr.ph
	move	$s1, $zero
	addi.d	$a1, $fp, 120
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a1, $a0, 128
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	addi.d	$s4, $fp, 152
	addi.d	$a0, $a0, 160
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$s6, $zero, 320
	addi.d	$s7, $sp, 56
	addi.d	$s8, $sp, 40
	b	.LBB5_4
	.p2align	4, , 16
.LBB5_2:                                # %if.end23
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ldx.d	$a2, $a0, $s3
	alsl.d	$s0, $s0, $s8, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(jpeg_gen_optimal_table)
	jirl	$ra, $ra, 0
	st.w	$s5, $s0, 0
.LBB5_3:                                # %for.inc
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.w	$a0, $fp, 316
	addi.d	$s1, $s1, 1
	addi.d	$s6, $s6, 8
	bge	$s1, $a0, .LBB5_11
.LBB5_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$a0, $fp, $s6
	ld.w	$s3, $a0, 20
	slli.d	$a1, $s3, 2
	ldx.w	$a1, $a1, $s7
	ld.w	$s0, $a0, 24
	beqz	$a1, .LBB5_6
# %bb.5:                                # %if.end13
                                        #   in Loop: Header=BB5_4 Depth=1
	slli.d	$a0, $s0, 2
	ldx.w	$a0, $a0, $s8
	bnez	$a0, .LBB5_3
	b	.LBB5_9
	.p2align	4, , 16
.LBB5_6:                                # %if.then
                                        #   in Loop: Header=BB5_4 Depth=1
	slli.d	$s5, $s3, 3
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ldx.d	$a1, $a0, $s5
	bnez	$a1, .LBB5_8
# %bb.7:                                # %if.then8
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$s2, $s3, $a0, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(jpeg_alloc_huff_table)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$a0, $s2, 0
.LBB5_8:                                # %if.end
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ldx.d	$a2, $a0, $s5
	alsl.d	$s2, $s3, $s7, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(jpeg_gen_optimal_table)
	jirl	$ra, $ra, 0
	ori	$s5, $zero, 1
	st.w	$s5, $s2, 0
	slli.d	$a0, $s0, 2
	ldx.w	$a0, $a0, $s8
	bnez	$a0, .LBB5_3
.LBB5_9:                                # %if.then17
                                        #   in Loop: Header=BB5_4 Depth=1
	slli.d	$s3, $s0, 3
	ldx.d	$a1, $s4, $s3
	bnez	$a1, .LBB5_2
# %bb.10:                               # %if.then21
                                        #   in Loop: Header=BB5_4 Depth=1
	alsl.d	$s2, $s0, $s4, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(jpeg_alloc_huff_table)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$a0, $s2, 0
	b	.LBB5_2
.LBB5_11:                               # %for.end
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
.Lfunc_end5:
	.size	finish_pass_gather, .Lfunc_end5-finish_pass_gather
                                        # -- End function
	.p2align	5                               # -- Begin function encode_mcu_huff
	.type	encode_mcu_huff,@function
encode_mcu_huff:                        # @encode_mcu_huff
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -272
	st.d	$ra, $sp, 264                   # 8-byte Folded Spill
	st.d	$fp, $sp, 256                   # 8-byte Folded Spill
	st.d	$s0, $sp, 248                   # 8-byte Folded Spill
	st.d	$s1, $sp, 240                   # 8-byte Folded Spill
	st.d	$s2, $sp, 232                   # 8-byte Folded Spill
	st.d	$s3, $sp, 224                   # 8-byte Folded Spill
	st.d	$s4, $sp, 216                   # 8-byte Folded Spill
	st.d	$s5, $sp, 208                   # 8-byte Folded Spill
	st.d	$s6, $sp, 200                   # 8-byte Folded Spill
	st.d	$s7, $sp, 192                   # 8-byte Folded Spill
	st.d	$s8, $sp, 184                   # 8-byte Folded Spill
	move	$s2, $a0
	ld.d	$a2, $a0, 32
	ld.d	$s5, $a0, 488
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a0, $a2, 0
	ld.d	$s6, $a2, 8
	xvld	$xr0, $s5, 24
	ld.w	$a1, $s2, 272
	st.d	$a0, $sp, 128
	st.d	$s6, $sp, 136
	xvst	$xr0, $sp, 144
	st.d	$s2, $sp, 176
	beqz	$a1, .LBB6_2
# %bb.1:                                # %if.then
	ld.w	$a1, $s5, 56
	beqz	$a1, .LBB6_85
.LBB6_2:                                # %if.end10
	ld.w	$a1, $s2, 360
	ori	$a0, $zero, 1
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	blt	$a1, $a0, .LBB6_81
# %bb.3:                                # %for.body.lr.ph
	move	$a2, $zero
	addi.d	$a3, $s2, 364
	addi.d	$a4, $s2, 320
	addi.d	$a5, $sp, 156
	addi.d	$a6, $s5, 64
	addi.d	$a7, $s5, 96
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	lu12i.w	$s7, 4080
	ori	$s8, $zero, 15
	ori	$t0, $zero, 1
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	st.d	$a6, $sp, 32                    # 8-byte Folded Spill
	st.d	$a7, $sp, 24                    # 8-byte Folded Spill
.LBB6_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_6 Depth 2
                                        #     Child Loop BB6_15 Depth 2
                                        #     Child Loop BB6_23 Depth 2
                                        #     Child Loop BB6_31 Depth 2
                                        #       Child Loop BB6_32 Depth 3
                                        #       Child Loop BB6_49 Depth 3
                                        #         Child Loop BB6_54 Depth 4
                                        #       Child Loop BB6_41 Depth 3
                                        #       Child Loop BB6_62 Depth 3
                                        #     Child Loop BB6_75 Depth 2
	slli.d	$a0, $a2, 2
	ldx.w	$s3, $a3, $a0
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ldx.d	$s0, $a1, $a0
	slli.d	$a0, $s3, 2
	ldx.w	$a0, $a5, $a0
	ld.h	$a1, $s0, 0
	sub.w	$fp, $a1, $a0
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	move	$s4, $zero
	beq	$a1, $a0, .LBB6_7
# %bb.5:                                # %while.body.preheader.i
                                        #   in Loop: Header=BB6_4 Depth=1
	srai.d	$a0, $fp, 31
	xor	$a1, $fp, $a0
	sub.w	$a0, $a1, $a0
	.p2align	4, , 16
.LBB6_6:                                # %while.body.i
                                        #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a1, $a0, 0
	bstrpick.d	$a0, $a0, 31, 1
	addi.w	$s4, $s4, 1
	bltu	$t0, $a1, .LBB6_6
.LBB6_7:                                # %while.end.i
                                        #   in Loop: Header=BB6_4 Depth=1
	slli.d	$a0, $s3, 3
	ldx.d	$a0, $a4, $a0
	ld.w	$a1, $a0, 20
	ld.w	$a0, $a0, 24
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a6, $a1
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a7, $a0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	slli.d	$a0, $s4, 2
	ldx.wu	$s5, $a1, $a0
	add.d	$a0, $a1, $s4
	ld.b	$s1, $a0, 1024
	ld.w	$s2, $sp, 152
	bnez	$s1, .LBB6_9
# %bb.8:                                # %if.then.i.i
                                        #   in Loop: Header=BB6_4 Depth=1
	ld.d	$a0, $sp, 176
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 0
	ori	$a3, $zero, 39
	st.w	$a3, $a1, 40
	jirl	$ra, $a2, 0
.LBB6_9:                                # %if.end.i.i
                                        #   in Loop: Header=BB6_4 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	sll.d	$a0, $a0, $s1
	andn	$a0, $s5, $a0
	ld.d	$a1, $sp, 144
	add.w	$s1, $s2, $s1
	ori	$a2, $zero, 24
	sub.d	$a2, $a2, $s1
	sll.d	$a0, $a0, $a2
	or	$s2, $a1, $a0
	ori	$a0, $zero, 8
	bge	$s1, $a0, .LBB6_15
.LBB6_10:                               # %if.end9.i
                                        #   in Loop: Header=BB6_4 Depth=1
	st.d	$s2, $sp, 144
	st.w	$s1, $sp, 152
	beqz	$s4, .LBB6_29
# %bb.11:                               # %if.end.i41.i
                                        #   in Loop: Header=BB6_4 Depth=1
	srli.d	$a0, $fp, 31
	add.w	$a0, $a0, $fp
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	sll.d	$a1, $a1, $s4
	andn	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 31, 0
	add.w	$s1, $s1, $s4
	ori	$a1, $zero, 24
	sub.d	$a1, $a1, $s1
	sll.d	$a0, $a0, $a1
	or	$s2, $a0, $s2
	ori	$a0, $zero, 8
	ori	$s5, $zero, 65
	bge	$s1, $a0, .LBB6_23
.LBB6_12:                               # %emit_bits.exit93.i
                                        #   in Loop: Header=BB6_4 Depth=1
	st.d	$s2, $sp, 144
	st.w	$s1, $sp, 152
	b	.LBB6_30
.LBB6_13:                               # %dump_buffer.exit34.i.i
                                        #   in Loop: Header=BB6_15 Depth=2
	ld.d	$a0, $s1, 0
	ld.d	$s6, $s1, 8
	st.d	$a0, $sp, 128
	st.d	$s6, $sp, 136
	.p2align	4, , 16
.LBB6_14:                               # %if.end37.i.i
                                        #   in Loop: Header=BB6_15 Depth=2
	slli.d	$s2, $s2, 8
	addi.w	$s1, $s5, -8
	bge	$s8, $s5, .LBB6_10
.LBB6_15:                               # %while.body.i.i
                                        #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $sp, 128
	srli.d	$a1, $s2, 16
	addi.d	$a2, $a0, 1
	st.d	$a2, $sp, 128
	st.b	$a1, $a0, 0
	ld.d	$a0, $sp, 136
	move	$s5, $s1
	addi.d	$s6, $a0, -1
	st.d	$s6, $sp, 136
	beqz	$s6, .LBB6_17
# %bb.16:                               # %if.end21.i.i
                                        #   in Loop: Header=BB6_15 Depth=2
	and	$a0, $s2, $s7
	bne	$a0, $s7, .LBB6_14
	b	.LBB6_19
	.p2align	4, , 16
.LBB6_17:                               # %if.then18.i.i
                                        #   in Loop: Header=BB6_15 Depth=2
	ld.d	$a0, $sp, 176
	ld.d	$s1, $a0, 32
	ld.d	$a1, $s1, 24
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB6_106
# %bb.18:                               # %dump_buffer.exit.i.i
                                        #   in Loop: Header=BB6_15 Depth=2
	ld.d	$a0, $s1, 0
	ld.d	$s6, $s1, 8
	st.d	$a0, $sp, 128
	st.d	$s6, $sp, 136
	and	$a0, $s2, $s7
	bne	$a0, $s7, .LBB6_14
.LBB6_19:                               # %if.then24.i.i
                                        #   in Loop: Header=BB6_15 Depth=2
	ld.d	$a0, $sp, 128
	addi.d	$a1, $a0, 1
	st.d	$a1, $sp, 128
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 136
	addi.d	$s6, $a0, -1
	st.d	$s6, $sp, 136
	bnez	$s6, .LBB6_14
# %bb.20:                               # %if.then31.i.i
                                        #   in Loop: Header=BB6_15 Depth=2
	ld.d	$a0, $sp, 176
	ld.d	$s1, $a0, 32
	ld.d	$a1, $s1, 24
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB6_13
	b	.LBB6_106
.LBB6_21:                               # %dump_buffer.exit34.i81.i
                                        #   in Loop: Header=BB6_23 Depth=2
	ld.d	$a0, $s1, 0
	ld.d	$s6, $s1, 8
	st.d	$a0, $sp, 128
	st.d	$s6, $sp, 136
	.p2align	4, , 16
.LBB6_22:                               # %if.end37.i68.i
                                        #   in Loop: Header=BB6_23 Depth=2
	slli.d	$s2, $s2, 8
	addi.w	$s1, $fp, -8
	bge	$s8, $fp, .LBB6_12
.LBB6_23:                               # %while.body.i59.i
                                        #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $sp, 128
	srli.d	$a1, $s2, 16
	addi.d	$a2, $a0, 1
	st.d	$a2, $sp, 128
	st.b	$a1, $a0, 0
	ld.d	$a0, $sp, 136
	move	$fp, $s1
	addi.d	$s6, $a0, -1
	st.d	$s6, $sp, 136
	beqz	$s6, .LBB6_25
# %bb.24:                               # %if.end21.i66.i
                                        #   in Loop: Header=BB6_23 Depth=2
	and	$a0, $s2, $s7
	bne	$a0, $s7, .LBB6_22
	b	.LBB6_27
	.p2align	4, , 16
.LBB6_25:                               # %if.then18.i83.i
                                        #   in Loop: Header=BB6_23 Depth=2
	ld.d	$a0, $sp, 176
	ld.d	$s1, $a0, 32
	ld.d	$a1, $s1, 24
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB6_106
# %bb.26:                               # %dump_buffer.exit.i88.i
                                        #   in Loop: Header=BB6_23 Depth=2
	ld.d	$a0, $s1, 0
	ld.d	$s6, $s1, 8
	st.d	$a0, $sp, 128
	st.d	$s6, $sp, 136
	and	$a0, $s2, $s7
	bne	$a0, $s7, .LBB6_22
.LBB6_27:                               # %if.then24.i72.i
                                        #   in Loop: Header=BB6_23 Depth=2
	ld.d	$a0, $sp, 128
	addi.d	$a1, $a0, 1
	st.d	$a1, $sp, 128
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 136
	addi.d	$s6, $a0, -1
	st.d	$s6, $sp, 136
	bnez	$s6, .LBB6_22
# %bb.28:                               # %if.then31.i76.i
                                        #   in Loop: Header=BB6_23 Depth=2
	ld.d	$a0, $sp, 176
	ld.d	$s1, $a0, 32
	ld.d	$a1, $s1, 24
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB6_21
	b	.LBB6_106
	.p2align	4, , 16
.LBB6_29:                               #   in Loop: Header=BB6_4 Depth=1
	ori	$s5, $zero, 65
.LBB6_30:                               # %if.end16.i
                                        #   in Loop: Header=BB6_4 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 3
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	addi.d	$a0, $sp, 156
	alsl.d	$a0, $s3, $a0, 2
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 1024
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$s3, $zero, 1
.LBB6_31:                               # %for.body.outer.i
                                        #   Parent Loop BB6_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_32 Depth 3
                                        #       Child Loop BB6_49 Depth 3
                                        #         Child Loop BB6_54 Depth 4
                                        #       Child Loop BB6_41 Depth 3
                                        #       Child Loop BB6_62 Depth 3
	pcalau12i	$a0, %got_pc_hi20(jpeg_natural_order)
	ld.d	$a1, $a0, %got_pc_lo12(jpeg_natural_order)
	move	$a0, $zero
	addi.d	$a2, $s3, 1
	alsl.d	$a1, $s3, $a1, 2
	move	$s3, $a2
	.p2align	4, , 16
.LBB6_32:                               # %for.body.i31
                                        #   Parent Loop BB6_4 Depth=1
                                        #     Parent Loop BB6_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a2, $a1, 0
	slli.d	$a2, $a2, 1
	ldx.hu	$fp, $s0, $a2
	bnez	$fp, .LBB6_34
# %bb.33:                               # %for.inc.i
                                        #   in Loop: Header=BB6_32 Depth=3
	addi.w	$a0, $a0, 1
	addi.d	$s3, $s3, 1
	addi.d	$a1, $a1, 4
	bne	$s3, $s5, .LBB6_32
	b	.LBB6_68
	.p2align	4, , 16
.LBB6_34:                               # %while.cond28.preheader.i
                                        #   in Loop: Header=BB6_31 Depth=2
	ori	$a1, $zero, 16
	bgeu	$a0, $a1, .LBB6_49
.LBB6_35:                               # %while.end42.i
                                        #   in Loop: Header=BB6_31 Depth=2
	ext.w.h	$fp, $fp
	srai.d	$a1, $fp, 31
	xor	$a2, $fp, $a1
	sub.w	$a1, $a2, $a1
	slli.d	$a2, $a1, 32
	clz.d	$a2, $a2
	ori	$a3, $zero, 32
	sub.d	$a2, $a3, $a2
	ori	$a3, $zero, 1
	sltu	$a1, $a3, $a1
	maskeqz	$a2, $a2, $a1
	masknez	$a1, $a3, $a1
	or	$a1, $a2, $a1
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	alsl.w	$a0, $a0, $a1, 4
	slli.d	$a1, $a0, 2
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ldx.b	$s5, $a2, $a0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ldx.wu	$s4, $a0, $a1
	bnez	$s5, .LBB6_37
# %bb.36:                               # %if.then.i204.i
                                        #   in Loop: Header=BB6_31 Depth=2
	ld.d	$a0, $sp, 176
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 0
	ori	$a3, $zero, 39
	st.w	$a3, $a1, 40
	jirl	$ra, $a2, 0
.LBB6_37:                               # %if.end.i155.i
                                        #   in Loop: Header=BB6_31 Depth=2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	sll.d	$a0, $a0, $s5
	andn	$a1, $s4, $a0
	add.w	$a0, $s1, $s5
	ori	$a2, $zero, 24
	sub.d	$a2, $a2, $a0
	sll.d	$a1, $a1, $a2
	or	$s2, $s2, $a1
	ori	$s5, $zero, 65
	ori	$a1, $zero, 8
	bge	$a0, $a1, .LBB6_41
.LBB6_38:                               # %if.end65.i
                                        #   in Loop: Header=BB6_31 Depth=2
	srai.d	$a1, $fp, 15
	add.d	$a1, $a1, $fp
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	sll.d	$a2, $a2, $a3
	andn	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 31, 0
	add.w	$s1, $a0, $a3
	ori	$a0, $zero, 24
	sub.d	$a0, $a0, $s1
	sll.d	$a0, $a1, $a0
	or	$s2, $a0, $s2
	ori	$a0, $zero, 8
	bge	$s1, $a0, .LBB6_62
.LBB6_39:                               # %for.inc.thread.i
                                        #   in Loop: Header=BB6_31 Depth=2
	st.d	$s2, $sp, 144
	st.w	$s1, $sp, 152
	ori	$a0, $zero, 64
	bne	$s3, $a0, .LBB6_31
	b	.LBB6_72
	.p2align	4, , 16
.LBB6_40:                               # %if.end37.i182.i
                                        #   in Loop: Header=BB6_41 Depth=3
	slli.d	$s2, $s2, 8
	addi.w	$a0, $s1, -8
	bge	$s8, $s1, .LBB6_38
.LBB6_41:                               # %while.body.i173.i
                                        #   Parent Loop BB6_4 Depth=1
                                        #     Parent Loop BB6_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $sp, 128
	srli.d	$a2, $s2, 16
	addi.d	$a3, $a1, 1
	st.d	$a3, $sp, 128
	st.b	$a2, $a1, 0
	ld.d	$a1, $sp, 136
	move	$s1, $a0
	addi.d	$s6, $a1, -1
	st.d	$s6, $sp, 136
	beqz	$s6, .LBB6_43
# %bb.42:                               # %if.end21.i180.i
                                        #   in Loop: Header=BB6_41 Depth=3
	and	$a0, $s2, $s7
	bne	$a0, $s7, .LBB6_40
	b	.LBB6_45
	.p2align	4, , 16
.LBB6_43:                               # %if.then18.i197.i
                                        #   in Loop: Header=BB6_41 Depth=3
	ld.d	$a0, $sp, 176
	ld.d	$s4, $a0, 32
	ld.d	$a1, $s4, 24
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB6_106
# %bb.44:                               # %dump_buffer.exit.i202.i
                                        #   in Loop: Header=BB6_41 Depth=3
	ld.d	$a0, $s4, 0
	ld.d	$s6, $s4, 8
	st.d	$a0, $sp, 128
	st.d	$s6, $sp, 136
	and	$a0, $s2, $s7
	bne	$a0, $s7, .LBB6_40
.LBB6_45:                               # %if.then24.i186.i
                                        #   in Loop: Header=BB6_41 Depth=3
	ld.d	$a0, $sp, 128
	addi.d	$a1, $a0, 1
	st.d	$a1, $sp, 128
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 136
	addi.d	$s6, $a0, -1
	st.d	$s6, $sp, 136
	bnez	$s6, .LBB6_40
# %bb.46:                               # %if.then31.i190.i
                                        #   in Loop: Header=BB6_41 Depth=3
	ld.d	$a0, $sp, 176
	ld.d	$s4, $a0, 32
	ld.d	$a1, $s4, 24
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB6_106
# %bb.47:                               # %dump_buffer.exit34.i195.i
                                        #   in Loop: Header=BB6_41 Depth=3
	ld.d	$a0, $s4, 0
	ld.d	$s6, $s4, 8
	st.d	$a0, $sp, 128
	st.d	$s6, $sp, 136
	b	.LBB6_40
	.p2align	4, , 16
.LBB6_48:                               # %if.end40.i
                                        #   in Loop: Header=BB6_49 Depth=3
	st.d	$s2, $sp, 144
	st.w	$s1, $sp, 152
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	addi.w	$a0, $a2, -16
	ori	$a1, $zero, 31
	bge	$a1, $a2, .LBB6_35
.LBB6_49:                               # %while.body31.i
                                        #   Parent Loop BB6_4 Depth=1
                                        #     Parent Loop BB6_31 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB6_54 Depth 4
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.b	$s5, $a1, 1264
	ld.wu	$s4, $a1, 960
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	bnez	$s5, .LBB6_51
# %bb.50:                               # %if.then.i147.i
                                        #   in Loop: Header=BB6_49 Depth=3
	ld.d	$a0, $sp, 176
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 0
	ori	$a3, $zero, 39
	st.w	$a3, $a1, 40
	jirl	$ra, $a2, 0
.LBB6_51:                               # %if.end.i98.i
                                        #   in Loop: Header=BB6_49 Depth=3
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	sll.d	$a0, $a0, $s5
	andn	$a0, $s4, $a0
	add.w	$s1, $s1, $s5
	ori	$a1, $zero, 24
	sub.d	$a1, $a1, $s1
	sll.d	$a0, $a0, $a1
	or	$s2, $s2, $a0
	ori	$a0, $zero, 8
	bge	$s1, $a0, .LBB6_54
	b	.LBB6_48
.LBB6_52:                               # %dump_buffer.exit34.i138.i
                                        #   in Loop: Header=BB6_54 Depth=4
	ld.d	$a0, $s1, 0
	ld.d	$s6, $s1, 8
	st.d	$a0, $sp, 128
	st.d	$s6, $sp, 136
	.p2align	4, , 16
.LBB6_53:                               # %if.end37.i125.i
                                        #   in Loop: Header=BB6_54 Depth=4
	slli.d	$s2, $s2, 8
	addi.w	$s1, $s5, -8
	bgeu	$s8, $s5, .LBB6_48
.LBB6_54:                               # %while.body.i116.i
                                        #   Parent Loop BB6_4 Depth=1
                                        #     Parent Loop BB6_31 Depth=2
                                        #       Parent Loop BB6_49 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a0, $sp, 128
	srli.d	$a1, $s2, 16
	addi.d	$a2, $a0, 1
	st.d	$a2, $sp, 128
	st.b	$a1, $a0, 0
	ld.d	$a0, $sp, 136
	move	$s5, $s1
	addi.d	$s6, $a0, -1
	st.d	$s6, $sp, 136
	beqz	$s6, .LBB6_56
# %bb.55:                               # %if.end21.i123.i
                                        #   in Loop: Header=BB6_54 Depth=4
	and	$a0, $s2, $s7
	bne	$a0, $s7, .LBB6_53
	b	.LBB6_58
	.p2align	4, , 16
.LBB6_56:                               # %if.then18.i140.i
                                        #   in Loop: Header=BB6_54 Depth=4
	ld.d	$a0, $sp, 176
	ld.d	$s1, $a0, 32
	ld.d	$a1, $s1, 24
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB6_106
# %bb.57:                               # %dump_buffer.exit.i145.i
                                        #   in Loop: Header=BB6_54 Depth=4
	ld.d	$a0, $s1, 0
	ld.d	$s6, $s1, 8
	st.d	$a0, $sp, 128
	st.d	$s6, $sp, 136
	and	$a0, $s2, $s7
	bne	$a0, $s7, .LBB6_53
.LBB6_58:                               # %if.then24.i129.i
                                        #   in Loop: Header=BB6_54 Depth=4
	ld.d	$a0, $sp, 128
	addi.d	$a1, $a0, 1
	st.d	$a1, $sp, 128
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 136
	addi.d	$s6, $a0, -1
	st.d	$s6, $sp, 136
	bnez	$s6, .LBB6_53
# %bb.59:                               # %if.then31.i133.i
                                        #   in Loop: Header=BB6_54 Depth=4
	ld.d	$a0, $sp, 176
	ld.d	$s1, $a0, 32
	ld.d	$a1, $s1, 24
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB6_52
	b	.LBB6_106
.LBB6_60:                               # %dump_buffer.exit34.i252.i
                                        #   in Loop: Header=BB6_62 Depth=3
	ld.d	$a0, $s1, 0
	ld.d	$s6, $s1, 8
	st.d	$a0, $sp, 128
	st.d	$s6, $sp, 136
	.p2align	4, , 16
.LBB6_61:                               # %if.end37.i239.i
                                        #   in Loop: Header=BB6_62 Depth=3
	slli.d	$s2, $s2, 8
	addi.w	$s1, $fp, -8
	bge	$s8, $fp, .LBB6_39
.LBB6_62:                               # %while.body.i230.i
                                        #   Parent Loop BB6_4 Depth=1
                                        #     Parent Loop BB6_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $sp, 128
	srli.d	$a1, $s2, 16
	addi.d	$a2, $a0, 1
	st.d	$a2, $sp, 128
	st.b	$a1, $a0, 0
	ld.d	$a0, $sp, 136
	move	$fp, $s1
	addi.d	$s6, $a0, -1
	st.d	$s6, $sp, 136
	beqz	$s6, .LBB6_64
# %bb.63:                               # %if.end21.i237.i
                                        #   in Loop: Header=BB6_62 Depth=3
	and	$a0, $s2, $s7
	bne	$a0, $s7, .LBB6_61
	b	.LBB6_66
	.p2align	4, , 16
.LBB6_64:                               # %if.then18.i254.i
                                        #   in Loop: Header=BB6_62 Depth=3
	ld.d	$a0, $sp, 176
	ld.d	$s1, $a0, 32
	ld.d	$a1, $s1, 24
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB6_106
# %bb.65:                               # %dump_buffer.exit.i259.i
                                        #   in Loop: Header=BB6_62 Depth=3
	ld.d	$a0, $s1, 0
	ld.d	$s6, $s1, 8
	st.d	$a0, $sp, 128
	st.d	$s6, $sp, 136
	and	$a0, $s2, $s7
	bne	$a0, $s7, .LBB6_61
.LBB6_66:                               # %if.then24.i243.i
                                        #   in Loop: Header=BB6_62 Depth=3
	ld.d	$a0, $sp, 128
	addi.d	$a1, $a0, 1
	st.d	$a1, $sp, 128
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 136
	addi.d	$s6, $a0, -1
	st.d	$s6, $sp, 136
	bnez	$s6, .LBB6_61
# %bb.67:                               # %if.then31.i247.i
                                        #   in Loop: Header=BB6_62 Depth=3
	ld.d	$a0, $sp, 176
	ld.d	$s1, $a0, 32
	ld.d	$a1, $s1, 24
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB6_60
	b	.LBB6_106
	.p2align	4, , 16
.LBB6_68:                               # %for.end.i
                                        #   in Loop: Header=BB6_4 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.b	$fp, $a0, 1024
	ld.wu	$s0, $a0, 0
	bnez	$fp, .LBB6_70
# %bb.69:                               # %if.then.i318.i
                                        #   in Loop: Header=BB6_4 Depth=1
	ld.d	$a0, $sp, 176
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 0
	ori	$a3, $zero, 39
	st.w	$a3, $a1, 40
	jirl	$ra, $a2, 0
.LBB6_70:                               # %if.end.i269.i
                                        #   in Loop: Header=BB6_4 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	sll.d	$a0, $a0, $fp
	andn	$a1, $s0, $a0
	add.w	$a0, $s1, $fp
	ori	$a2, $zero, 24
	sub.d	$a2, $a2, $a0
	sll.d	$a1, $a1, $a2
	or	$fp, $s2, $a1
	ori	$a1, $zero, 8
	bge	$a0, $a1, .LBB6_75
.LBB6_71:                               # %emit_bits.exit321.i
                                        #   in Loop: Header=BB6_4 Depth=1
	st.d	$fp, $sp, 144
	st.w	$a0, $sp, 152
.LBB6_72:                               # %if.end27
                                        #   in Loop: Header=BB6_4 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.h	$a0, $a0, 0
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a1, $s2, 360
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	st.w	$a0, $a3, 0
	ori	$a0, $zero, 1
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a5, $sp, 156
	ld.d	$a6, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 24                    # 8-byte Folded Reload
	ori	$t0, $zero, 1
	blt	$a2, $a1, .LBB6_4
	b	.LBB6_81
.LBB6_73:                               # %dump_buffer.exit34.i309.i
                                        #   in Loop: Header=BB6_75 Depth=2
	ld.d	$a0, $s1, 0
	ld.d	$s6, $s1, 8
	st.d	$a0, $sp, 128
	st.d	$s6, $sp, 136
	.p2align	4, , 16
.LBB6_74:                               # %if.end37.i296.i
                                        #   in Loop: Header=BB6_75 Depth=2
	slli.d	$fp, $fp, 8
	addi.w	$a0, $s0, -8
	bge	$s8, $s0, .LBB6_71
.LBB6_75:                               # %while.body.i287.i
                                        #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $sp, 128
	srli.d	$a2, $fp, 16
	addi.d	$a3, $a1, 1
	st.d	$a3, $sp, 128
	st.b	$a2, $a1, 0
	ld.d	$a1, $sp, 136
	move	$s0, $a0
	addi.d	$s6, $a1, -1
	st.d	$s6, $sp, 136
	beqz	$s6, .LBB6_77
# %bb.76:                               # %if.end21.i294.i
                                        #   in Loop: Header=BB6_75 Depth=2
	and	$a0, $fp, $s7
	bne	$a0, $s7, .LBB6_74
	b	.LBB6_79
	.p2align	4, , 16
.LBB6_77:                               # %if.then18.i311.i
                                        #   in Loop: Header=BB6_75 Depth=2
	ld.d	$a0, $sp, 176
	ld.d	$s1, $a0, 32
	ld.d	$a1, $s1, 24
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB6_106
# %bb.78:                               # %dump_buffer.exit.i316.i
                                        #   in Loop: Header=BB6_75 Depth=2
	ld.d	$a0, $s1, 0
	ld.d	$s6, $s1, 8
	st.d	$a0, $sp, 128
	st.d	$s6, $sp, 136
	and	$a0, $fp, $s7
	bne	$a0, $s7, .LBB6_74
.LBB6_79:                               # %if.then24.i300.i
                                        #   in Loop: Header=BB6_75 Depth=2
	ld.d	$a0, $sp, 128
	addi.d	$a1, $a0, 1
	st.d	$a1, $sp, 128
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 136
	addi.d	$s6, $a0, -1
	st.d	$s6, $sp, 136
	bnez	$s6, .LBB6_74
# %bb.80:                               # %if.then31.i304.i
                                        #   in Loop: Header=BB6_75 Depth=2
	ld.d	$a0, $sp, 176
	ld.d	$s1, $a0, 32
	ld.d	$a1, $s1, 24
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB6_73
	b	.LBB6_106
.LBB6_81:                               # %for.end
	ld.d	$a3, $sp, 128
	ld.d	$a1, $s2, 32
	addi.d	$a2, $sp, 144
	st.d	$a3, $a1, 0
	st.d	$s6, $a1, 8
	xvld	$xr0, $a2, 0
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	addi.d	$a1, $a2, 24
	xvst	$xr0, $a1, 0
	ld.w	$a3, $s2, 272
	beqz	$a3, .LBB6_107
# %bb.82:                               # %if.then46
	ld.w	$a1, $a2, 56
	bnez	$a1, .LBB6_84
# %bb.83:                               # %if.then50
	ld.w	$a1, $a2, 60
	addi.d	$a1, $a1, 1
	andi	$a1, $a1, 7
	st.w	$a1, $a2, 60
	move	$a1, $a3
.LBB6_84:                               # %if.end56
	addi.d	$a1, $a1, -1
	st.w	$a1, $a2, 56
	b	.LBB6_107
.LBB6_85:                               # %if.then6
	ld.w	$a1, $sp, 152
	ld.w	$fp, $s5, 60
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB6_96
# %bb.86:                               # %while.body.lr.ph.i.i.i
	move	$s6, $s2
	ori	$a0, $zero, 17
	ld.d	$a2, $sp, 144
	sub.d	$a0, $a0, $a1
	ori	$a3, $zero, 127
	sll.d	$a0, $a3, $a0
	or	$s0, $a2, $a0
	addi.d	$s1, $a1, 15
	lu12i.w	$s2, 4080
	ori	$s3, $zero, 15
	b	.LBB6_88
	.p2align	4, , 16
.LBB6_87:                               # %if.end37.i.i.i
                                        #   in Loop: Header=BB6_88 Depth=1
	addi.w	$s1, $s1, -8
	slli.d	$s0, $s0, 8
	bge	$s3, $s1, .LBB6_95
.LBB6_88:                               # %while.body.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 128
	srli.d	$a1, $s0, 16
	addi.d	$a2, $a0, 1
	st.d	$a2, $sp, 128
	st.b	$a1, $a0, 0
	ld.d	$a0, $sp, 136
	addi.d	$a0, $a0, -1
	st.d	$a0, $sp, 136
	beqz	$a0, .LBB6_90
# %bb.89:                               # %if.end21.i.i.i
                                        #   in Loop: Header=BB6_88 Depth=1
	and	$a0, $s0, $s2
	bne	$a0, $s2, .LBB6_87
	b	.LBB6_92
	.p2align	4, , 16
.LBB6_90:                               # %if.then18.i.i.i
                                        #   in Loop: Header=BB6_88 Depth=1
	ld.d	$a0, $sp, 176
	ld.d	$s4, $a0, 32
	ld.d	$a1, $s4, 24
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB6_106
# %bb.91:                               # %dump_buffer.exit.i.i.i
                                        #   in Loop: Header=BB6_88 Depth=1
	vld	$vr0, $s4, 0
	vst	$vr0, $sp, 128
	and	$a0, $s0, $s2
	bne	$a0, $s2, .LBB6_87
.LBB6_92:                               # %if.then24.i.i.i
                                        #   in Loop: Header=BB6_88 Depth=1
	ld.d	$a0, $sp, 128
	addi.d	$a1, $a0, 1
	st.d	$a1, $sp, 128
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 136
	addi.d	$a0, $a0, -1
	st.d	$a0, $sp, 136
	bnez	$a0, .LBB6_87
# %bb.93:                               # %if.then31.i.i.i
                                        #   in Loop: Header=BB6_88 Depth=1
	ld.d	$a0, $sp, 176
	ld.d	$s4, $a0, 32
	ld.d	$a1, $s4, 24
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB6_106
# %bb.94:                               # %dump_buffer.exit34.i.i.i
                                        #   in Loop: Header=BB6_88 Depth=1
	vld	$vr0, $s4, 0
	vst	$vr0, $sp, 128
	b	.LBB6_87
.LBB6_95:                               # %if.end.i.loopexit
	ld.d	$a0, $sp, 128
	move	$s2, $s6
.LBB6_96:                               # %if.end.i
	st.d	$zero, $sp, 144
	st.w	$zero, $sp, 152
	addi.d	$a1, $a0, 1
	st.d	$a1, $sp, 128
	ori	$a1, $zero, 255
	st.b	$a1, $a0, 0
	ld.d	$a0, $sp, 136
	addi.d	$a0, $a0, -1
	st.d	$a0, $sp, 136
	beqz	$a0, .LBB6_98
# %bb.97:                               # %if.end.if.end6_crit_edge.i
	ld.d	$a0, $sp, 128
	b	.LBB6_100
.LBB6_98:                               # %if.then1.i
	ld.d	$a0, $sp, 176
	ld.d	$s0, $a0, 32
	ld.d	$a1, $s0, 24
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB6_106
# %bb.99:                               # %dump_buffer.exit.i
	ld.d	$a1, $s0, 8
	ld.d	$a0, $s0, 0
	st.d	$a1, $sp, 136
.LBB6_100:                              # %if.end6.i
	addi.d	$a1, $fp, -48
	addi.d	$a2, $a0, 1
	st.d	$a2, $sp, 128
	st.b	$a1, $a0, 0
	ld.d	$a0, $sp, 136
	ld.d	$s1, $sp, 176
	addi.d	$s6, $a0, -1
	st.d	$s6, $sp, 136
	bnez	$s6, .LBB6_103
# %bb.101:                              # %if.then13.i
	ld.d	$fp, $s1, 32
	ld.d	$a1, $fp, 24
	move	$a0, $s1
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB6_106
# %bb.102:                              # %dump_buffer.exit22.i
	ld.d	$a0, $fp, 0
	ld.d	$s6, $fp, 8
	st.d	$a0, $sp, 128
	st.d	$s6, $sp, 136
.LBB6_103:                              # %if.end18.i
	ld.w	$a0, $s1, 316
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB6_2
# %bb.104:                              # %for.body.lr.ph.i
	move	$a0, $zero
	addi.d	$a1, $sp, 156
	.p2align	4, , 16
.LBB6_105:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a1, 0
	ld.w	$a2, $s1, 316
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 4
	blt	$a0, $a2, .LBB6_105
	b	.LBB6_2
.LBB6_106:
	move	$a0, $zero
.LBB6_107:                              # %cleanup
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 264                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 272
	ret
.Lfunc_end6:
	.size	encode_mcu_huff, .Lfunc_end6-encode_mcu_huff
                                        # -- End function
	.p2align	5                               # -- Begin function finish_pass_huff
	.type	finish_pass_huff,@function
finish_pass_huff:                       # @finish_pass_huff
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
	move	$fp, $a0
	ld.d	$a0, $a0, 32
	ld.d	$s0, $fp, 488
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a0, 8
	ld.d	$s2, $s0, 24
	vld	$vr0, $s0, 36
	ld.w	$s3, $s0, 32
	ld.w	$a2, $s0, 52
	addi.d	$a4, $s0, 36
	vst	$vr0, $sp, 16
	ori	$a3, $zero, 1
	st.w	$a2, $sp, 32
	blt	$s3, $a3, .LBB7_12
# %bb.1:                                # %while.body.lr.ph.i.i
	st.d	$a4, $sp, 8                     # 8-byte Folded Spill
	ori	$a2, $zero, 17
	sub.d	$a2, $a2, $s3
	ori	$a3, $zero, 127
	sll.d	$a2, $a3, $a2
	or	$s4, $a2, $s2
	addi.d	$s5, $s3, 15
	lu12i.w	$s6, 4080
	ori	$s7, $zero, 15
	b	.LBB7_4
	.p2align	4, , 16
.LBB7_2:                                #   in Loop: Header=BB7_4 Depth=1
	move	$a1, $s8
.LBB7_3:                                # %if.end37.i.i
                                        #   in Loop: Header=BB7_4 Depth=1
	addi.w	$s5, $s5, -8
	slli.d	$s4, $s4, 8
	bge	$s7, $s5, .LBB7_11
.LBB7_4:                                # %while.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	srli.d	$a2, $s4, 16
	addi.d	$s8, $a1, 1
	addi.d	$a0, $a0, -1
	st.b	$a2, $a1, 0
	beqz	$a0, .LBB7_6
# %bb.5:                                #   in Loop: Header=BB7_4 Depth=1
	move	$a1, $s8
	and	$a2, $s4, $s6
	bne	$a2, $s6, .LBB7_3
	b	.LBB7_8
	.p2align	4, , 16
.LBB7_6:                                # %if.then18.i.i
                                        #   in Loop: Header=BB7_4 Depth=1
	ld.d	$s1, $fp, 32
	ld.d	$a1, $s1, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB7_13
# %bb.7:                                # %dump_buffer.exit.i.i
                                        #   in Loop: Header=BB7_4 Depth=1
	ld.d	$a1, $s1, 0
	ld.d	$a0, $s1, 8
	and	$a2, $s4, $s6
	bne	$a2, $s6, .LBB7_3
.LBB7_8:                                # %if.then24.i.i
                                        #   in Loop: Header=BB7_4 Depth=1
	addi.d	$s8, $a1, 1
	addi.d	$a0, $a0, -1
	st.b	$zero, $a1, 0
	bnez	$a0, .LBB7_2
# %bb.9:                                # %if.then31.i.i
                                        #   in Loop: Header=BB7_4 Depth=1
	ld.d	$s1, $fp, 32
	ld.d	$a1, $s1, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB7_13
# %bb.10:                               # %dump_buffer.exit34.i.i
                                        #   in Loop: Header=BB7_4 Depth=1
	ld.d	$a1, $s1, 0
	ld.d	$a0, $s1, 8
	b	.LBB7_3
.LBB7_11:
	move	$s2, $zero
	move	$s3, $zero
	b	.LBB7_14
.LBB7_12:
	move	$s2, $zero
	move	$s3, $zero
	b	.LBB7_15
.LBB7_13:                               # %if.then
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	move	$a0, $zero
	move	$a1, $s8
.LBB7_14:                               # %if.end
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
.LBB7_15:                               # %if.end
	ld.d	$a2, $fp, 32
	st.d	$a1, $a2, 0
	st.d	$a0, $a2, 8
	vld	$vr0, $sp, 16
	ld.w	$a0, $sp, 32
	st.d	$s2, $s0, 24
	st.w	$s3, $s0, 32
	vst	$vr0, $a4, 0
	st.w	$a0, $a4, 16
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
.Lfunc_end7:
	.size	finish_pass_huff, .Lfunc_end7-finish_pass_huff
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym start_pass_huff
	.addrsig_sym encode_mcu_gather
	.addrsig_sym finish_pass_gather
	.addrsig_sym encode_mcu_huff
	.addrsig_sym finish_pass_huff
